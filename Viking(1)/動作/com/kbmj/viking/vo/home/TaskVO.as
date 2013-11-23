package com.kbmj.viking.vo.home
{
    import flash.events.*;
    import mx.events.*;

    public class TaskVO extends Object implements IEventDispatcher
    {
        private var _buildingVO:BuildingVO;
        private var _unitName:String;
        private var _activityName:String;
        private var _taskId:int;
        private var _allMap:Object;
        private var _taskText:String;
        private var _bindingEventDispatcher:EventDispatcher;
        private var _tier:int;
        private var _activityType:String;
        private var _remainingTime:int;
        private var _executionCount:int;
        public static const ACITIVITY_TYPE_LEVEL_UP:String = "LevelUp";
        public static const ACITIVITY_TYPE_FORT:String = "Fort";
        public static const MAX_TASKS_INCREMENT_VIEW:String = "maxTasksIncrementView";
        public static const ACITIVITY_TYPE_CONSTRUCTION:String = "Construction";
        public static const ACITIVITY_TYPE_GATHERING:String = "Gathering";

        public function TaskVO()
        {
            _bindingEventDispatcher = new EventDispatcher(IEventDispatcher(this));
            return;
        }// end function

        public function get taskId() : int
        {
            return _taskId;
        }// end function

        public function hasEventListener(param1:String) : Boolean
        {
            return _bindingEventDispatcher.hasEventListener(param1);
        }// end function

        public function willTrigger(param1:String) : Boolean
        {
            return _bindingEventDispatcher.willTrigger(param1);
        }// end function

        public function set taskId(param1:int) : void
        {
            var _loc_2:* = this.taskId;
            if (_loc_2 !== param1)
            {
                this._880873088taskId = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "taskId", _loc_2, param1));
            }
            return;
        }// end function

        private function set _461356947buildingVO(param1:BuildingVO) : void
        {
            _buildingVO = param1;
            return;
        }// end function

        private function set _460098019remainingTime(param1:int) : void
        {
            _remainingTime = param1;
            return;
        }// end function

        private function set _880873088taskId(param1:int) : void
        {
            _taskId = param1;
            return;
        }// end function

        private function set _1628821225activityType(param1:String) : void
        {
            _activityType = param1;
            return;
        }// end function

        public function set taskText(param1:String) : void
        {
            var _loc_2:* = this.taskText;
            if (_loc_2 !== param1)
            {
                this._410147758taskText = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "taskText", _loc_2, param1));
            }
            return;
        }// end function

        private function set _410147758taskText(param1:String) : void
        {
            _taskText = param1;
            return;
        }// end function

        public function set executionCount(param1:int) : void
        {
            var _loc_2:* = this.executionCount;
            if (_loc_2 !== param1)
            {
                this._1496415017executionCount = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "executionCount", _loc_2, param1));
            }
            return;
        }// end function

        public function get unitName() : String
        {
            return _unitName;
        }// end function

        private function set _1628619322activityName(param1:String) : void
        {
            _activityName = param1;
            return;
        }// end function

        private function set _3559906tier(param1:int) : void
        {
            _tier = param1;
            return;
        }// end function

        public function get activityName() : String
        {
            return _activityName;
        }// end function

        private function set _1414904837allMap(param1:Object) : void
        {
            _allMap = param1;
            return;
        }// end function

        public function dispatchEvent(event:Event) : Boolean
        {
            return _bindingEventDispatcher.dispatchEvent(event);
        }// end function

        public function set tier(param1:int) : void
        {
            var _loc_2:* = this.tier;
            if (_loc_2 !== param1)
            {
                this._3559906tier = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "tier", _loc_2, param1));
            }
            return;
        }// end function

        public function set remainingTime(param1:int) : void
        {
            var _loc_2:* = this.remainingTime;
            if (_loc_2 !== param1)
            {
                this._460098019remainingTime = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "remainingTime", _loc_2, param1));
            }
            return;
        }// end function

        public function removeEventListener(param1:String, param2:Function, param3:Boolean = false) : void
        {
            _bindingEventDispatcher.removeEventListener(param1, param2, param3);
            return;
        }// end function

        public function addEventListener(param1:String, param2:Function, param3:Boolean = false, param4:int = 0, param5:Boolean = false) : void
        {
            _bindingEventDispatcher.addEventListener(param1, param2, param3, param4, param5);
            return;
        }// end function

        public function get taskText() : String
        {
            return _taskText;
        }// end function

        public function get executionCount() : int
        {
            return _executionCount;
        }// end function

        public function set activityType(param1:String) : void
        {
            var _loc_2:* = this.activityType;
            if (_loc_2 !== param1)
            {
                this._1628821225activityType = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "activityType", _loc_2, param1));
            }
            return;
        }// end function

        public function set buildingVO(param1:BuildingVO) : void
        {
            var _loc_2:* = this.buildingVO;
            if (_loc_2 !== param1)
            {
                this._461356947buildingVO = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "buildingVO", _loc_2, param1));
            }
            return;
        }// end function

        public function set unitName(param1:String) : void
        {
            var _loc_2:* = this.unitName;
            if (_loc_2 !== param1)
            {
                this._292854225unitName = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "unitName", _loc_2, param1));
            }
            return;
        }// end function

        public function get tier() : int
        {
            return _tier;
        }// end function

        public function get remainingTime() : int
        {
            return _remainingTime;
        }// end function

        private function set _1496415017executionCount(param1:int) : void
        {
            _executionCount = param1;
            return;
        }// end function

        public function get buildingVO() : BuildingVO
        {
            return _buildingVO;
        }// end function

        public function get activityType() : String
        {
            return _activityType;
        }// end function

        private function set _292854225unitName(param1:String) : void
        {
            _unitName = param1;
            return;
        }// end function

        public function set activityName(param1:String) : void
        {
            var _loc_2:* = this.activityName;
            if (_loc_2 !== param1)
            {
                this._1628619322activityName = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "activityName", _loc_2, param1));
            }
            return;
        }// end function

        public function get allMap() : Object
        {
            return _allMap;
        }// end function

        public function set allMap(param1:Object) : void
        {
            var _loc_2:* = this.allMap;
            if (_loc_2 !== param1)
            {
                this._1414904837allMap = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "allMap", _loc_2, param1));
            }
            return;
        }// end function

    }
}
