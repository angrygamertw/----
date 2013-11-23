package com.kbmj.viking.proxy.home
{
    import com.adobe.serialization.json.*;
    import com.kbmj.viking.lib.*;
    import com.kbmj.viking.proxy.*;
    import com.kbmj.viking.proxy.tactics.*;
    import com.kbmj.viking.vo.*;
    import com.kbmj.viking.vo.home.*;
    import com.kbmj.viking.vo.tactics.*;
    import flash.events.*;
    import flash.utils.*;

    public class TaskProxy extends LoaderProxy
    {
        private var _taskFor:int;
        private var updateTimeTimer:Timer;
        private var taskFinished:Boolean;
        private var tasks:Array;
        private var updateTaskTimer:Timer;
        public static const LOAD_ANNOUNCEMENT:String = "TaskProxy/notes/loadAnnouncement";
        public static const TASK_UPDATED:String = "TaskProxy/notes/taskUpdated";
        public static const FINISH_TASK_IMMEDIATELY_COMPLETE:String = "TaskProxy/notes/finishTaskImmediatelyComplete";
        public static const NAME:String = "TaskProxy";
        public static const UPDATE_POWER:String = "TaskProxy/notes/updatePower";
        public static const FOR_HOME:int = 0;
        public static const FINISH_TASK_IMMEDIATELY_ERROR:String = "TaskProxy/notes/finishTaskImmediatelyError";
        public static const TUTORIAL_UPDATED:String = "TaskProxy/notes/tutorialUpdated";
        public static const FOR_WORLD:int = 1;

        public function TaskProxy()
        {
            updateTimeTimer = new Timer(1000);
            tasks = new Array();
            super(NAME);
            return;
        }// end function

        override public function onRegister() : void
        {
            updateTimeTimer.addEventListener(TimerEvent.TIMER, updateTime);
            updateTimeTimer.start();
            return;
        }// end function

        public function get taskFor() : int
        {
            return _taskFor;
        }// end function

        public function updateTask(param1:Boolean = false) : void
        {
            var forceReload:* = param1;
            load("/api/activities/finish", TASK_UPDATED, function (param1:Object) : Object
            {
                var task:Object;
                var nextTime:int;
                var finished:Object;
                var unit:UnitVO;
                var taskVO:TaskVO;
                var tutorial:TutorialVO;
                var res:* = param1;
                tasks = new Array();
                var unitProxy:* = UnitProxy(facade.retrieveProxy(UnitProxy.NAME));
                var buildingProxy:* = BuildingProxy(facade.retrieveProxy(BuildingProxy.NAME));
                taskFinished = false;
                var remainingTimes:* = new Array();
                var _loc_3:int = 0;
                var _loc_4:* = res.tasks;
                while (_loc_4 in _loc_3)
                {
                    
                    task = _loc_4[_loc_3];
                    unit = unitProxy.getHomeUnitById(task.task.unit_id);
                    taskVO = new TaskVO();
                    taskVO.unitName = unit.name;
                    taskVO.taskId = task.task.id;
                    taskVO.activityName = task.task.activity_name;
                    taskVO.remainingTime = task.task.remaining_time;
                    taskVO.activityType = task.task.activity_type;
                    taskVO.executionCount = task.task.execution_count;
                    taskVO.tier = task.task.tier;
                    switch(taskVO.activityType)
                    {
                        case TaskVO.ACITIVITY_TYPE_CONSTRUCTION:
                        {
                            taskVO.buildingVO = buildingProxy.buildingFactory(task.task.area.building);
                            break;
                        }
                        case TaskVO.ACITIVITY_TYPE_LEVEL_UP:
                        case TaskVO.ACITIVITY_TYPE_FORT:
                        {
                            taskVO.allMap = task.task.all_map;
                            break;
                        }
                        default:
                        {
                            break;
                        }
                    }
                    remainingTimes.push(task.task.remaining_time);
                    taskVO.taskText = Utils.buildTaskText(taskVO);
                    tasks.push(taskVO);
                }
                nextTime = remainingTimes.sort(Array.NUMERIC)[0];
                if (remainingTimes.length > 0)
                {
                    if (nextTime <= 0)
                    {
                        updateTask();
                    }
                    else
                    {
                        if (updateTaskTimer && updateTaskTimer.running)
                        {
                            updateTaskTimer.stop();
                        }
                        updateTaskTimer = new Timer(nextTime * 1000 + 1000, 1);
                        updateTaskTimer.addEventListener(TimerEvent.TIMER_COMPLETE, function () : void
                {
                    updateTask();
                    return;
                }// end function
                );
                        updateTaskTimer.start();
                    }
                }
                var _loc_3:int = 0;
                var _loc_4:* = res.finished_tasks;
                while (_loc_4 in _loc_3)
                {
                    
                    finished = _loc_4[_loc_3];
                    if (finished)
                    {
                        taskFinished = true;
                    }
                }
                if (res.tutorial.current_tutorial)
                {
                    tutorial = new TutorialVO(res.tutorial.current_tutorial);
                    sendNotification(TUTORIAL_UPDATED, tutorial);
                }
                sendNotification(LOAD_ANNOUNCEMENT);
                taskFinished = forceReload || taskFinished;
                return [tasks, taskFinished];
            }// end function
            );
            return;
        }// end function

        public function resumeTimer() : void
        {
            var _loc_1:* = GuildProxy(facade.retrieveProxy(GuildProxy.NAME));
            _loc_1.timerStart();
            updateTimeTimer.start();
            var _loc_2:* = PlayerProxy(facade.retrieveProxy(PlayerProxy.NAME));
            if (_loc_2.playerVO.guild)
            {
                _loc_1.timerStart();
            }
            updateTask();
            return;
        }// end function

        public function set taskFor(param1:int) : void
        {
            _taskFor = param1;
            return;
        }// end function

        public function suspendTimer() : void
        {
            var _loc_1:* = GuildProxy(facade.retrieveProxy(GuildProxy.NAME));
            _loc_1.timerStop();
            updateTimeTimer.stop();
            if (updateTaskTimer)
            {
                updateTaskTimer.stop();
            }
            return;
        }// end function

        private function updateTime(event:TimerEvent) : void
        {
            var e:* = event;
            if (tasks.length == 0)
            {
                return;
            }
            tasks.forEach(function (param1, param2:int, param3:Array) : void
            {
                if (param1.remainingTime > 0)
                {
                    var _loc_4:* = param1;
                    var _loc_5:* = param1.remainingTime - 1;
                    _loc_4.remainingTime = _loc_5;
                }
                return;
            }// end function
            );
            sendNotification(TASK_UPDATED, [tasks, false]);
            return;
        }// end function

        public function getTasks() : Array
        {
            return tasks;
        }// end function

        public function finishTaskImmediately(param1:int) : void
        {
            var taskId:* = param1;
            var json:* = JSON.encode({task_id:taskId});
            loadWithJson("/api/player/immediately_finish_task", FINISH_TASK_IMMEDIATELY_COMPLETE, FINISH_TASK_IMMEDIATELY_ERROR, function (param1:Object) : Object
            {
                sendNotification(UPDATE_POWER);
                updateTask(true);
                return param1;
            }// end function
            , json);
            return;
        }// end function

    }
}
