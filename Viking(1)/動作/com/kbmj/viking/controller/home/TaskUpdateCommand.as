package com.kbmj.viking.controller.home
{
    import com.kbmj.viking.proxy.*;
    import com.kbmj.viking.proxy.home.*;
    import com.kbmj.viking.proxy.tactics.*;
    import com.kbmj.viking.vo.*;
    import org.puremvc.as3.interfaces.*;
    import org.puremvc.as3.patterns.command.*;

    public class TaskUpdateCommand extends SimpleCommand
    {
        public static const TASK_UPDATED:String = "TaskUpdated";
        public static const TASK_FINISHED_FOR_WORLD:String = "TaskFinishedForWorld";
        public static const NAME:String = "TaskUpdateCommand";
        public static const SHOW_LOADING_WINDOW:String = "ShowLoadingWindow";
        public static const HOME_DATA_LOADED:String = "HomeDataLoaded";
        public static const LOAD_ANNOUNCEMENT_FOR_WORLD:String = "loadAnnouncementForWorld";
        public static const TASK_UPDATED_FOR_WORLD:String = "TaskUpdatedForWorld";

        public function TaskUpdateCommand()
        {
            return;
        }// end function

        override public function execute(param1:INotification) : void
        {
            var _loc_4:UnitProxy = null;
            var _loc_5:HomeProxy = null;
            var _loc_6:PlayerProxy = null;
            var _loc_7:MultipleLoadProxy = null;
            var _loc_2:* = param1.getBody();
            var _loc_3:* = TaskProxy(facade.retrieveProxy(TaskProxy.NAME));
            switch(_loc_3.taskFor)
            {
                case TaskProxy.FOR_HOME:
                {
                    if (_loc_2[1])
                    {
                        _loc_4 = UnitProxy(facade.retrieveProxy(UnitProxy.NAME));
                        _loc_5 = HomeProxy(facade.retrieveProxy(HomeProxy.NAME));
                        _loc_6 = PlayerProxy(facade.retrieveProxy(PlayerProxy.NAME));
                        _loc_7 = MultipleLoadProxy(facade.retrieveProxy(MultipleLoadProxy.NAME));
                        sendNotification(SHOW_LOADING_WINDOW);
                        _loc_7.loadMultiple("reloadHomeAfterTaskUpdate", HOME_DATA_LOADED, [new LoadDetailVO(_loc_5, "loadHomeDatas", HomeProxy.HOME_DATA_LOADED), new LoadDetailVO(_loc_5, "loadHomeResource", HomeProxy.HOME_RESOURCE_LOADED), new LoadDetailVO(_loc_6, "loadPlayer", PlayerProxy.PLAYER_LOADED)]);
                    }
                    sendNotification(TASK_UPDATED, _loc_2[0]);
                    break;
                }
                case TaskProxy.FOR_WORLD:
                {
                    if (_loc_2[1])
                    {
                        sendNotification(LOAD_ANNOUNCEMENT_FOR_WORLD);
                        sendNotification(TASK_FINISHED_FOR_WORLD, _loc_2[0]);
                    }
                    else
                    {
                        sendNotification(TASK_UPDATED_FOR_WORLD, _loc_2[0]);
                    }
                    break;
                }
                default:
                {
                    break;
                }
            }
            return;
        }// end function

    }
}
