package com.kbmj.viking.vo
{
    import flash.events.*;
    import mx.events.*;

    public class ColonyVO extends Object implements IEventDispatcher
    {
        private var _ownerGuildName:String;
        private var _point:int = -1;
        private var _bindingEventDispatcher:EventDispatcher;
        private var _colonyId:int;
        private var _topPoint:int;
        private var _isOpen:Boolean;
        private var _masterVO:Object;

        public function ColonyVO()
        {
            _bindingEventDispatcher = new EventDispatcher(IEventDispatcher(this));
            return;
        }// end function

        private function set _106845584point(param1:int) : void
        {
            _point = param1;
            return;
        }// end function

        public function get topPoint() : int
        {
            return _topPoint;
        }// end function

        public function hasEventListener(param1:String) : Boolean
        {
            return _bindingEventDispatcher.hasEventListener(param1);
        }// end function

        public function willTrigger(param1:String) : Boolean
        {
            return _bindingEventDispatcher.willTrigger(param1);
        }// end function

        private function set _1399160917ownerGuildName(param1:String) : void
        {
            _ownerGuildName = param1;
            return;
        }// end function

        private function set _1180237164isOpen(param1:Boolean) : void
        {
            _isOpen = param1;
            return;
        }// end function

        public function get name() : String
        {
            return _masterVO.name;
        }// end function

        public function addEventListener(param1:String, param2:Function, param3:Boolean = false, param4:int = 0, param5:Boolean = false) : void
        {
            _bindingEventDispatcher.addEventListener(param1, param2, param3, param4, param5);
            return;
        }// end function

        private function set _283911323masterVO(param1:Object) : void
        {
            _masterVO = param1;
            return;
        }// end function

        public function get point() : int
        {
            return _point;
        }// end function

        public function get loots() : Array
        {
            return _masterVO.loots;
        }// end function

        public function set ownerGuildName(param1:String) : void
        {
            var _loc_2:* = this.ownerGuildName;
            if (_loc_2 !== param1)
            {
                this._1399160917ownerGuildName = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "ownerGuildName", _loc_2, param1));
            }
            return;
        }// end function

        public function dispatchEvent(event:Event) : Boolean
        {
            return _bindingEventDispatcher.dispatchEvent(event);
        }// end function

        public function removeEventListener(param1:String, param2:Function, param3:Boolean = false) : void
        {
            _bindingEventDispatcher.removeEventListener(param1, param2, param3);
            return;
        }// end function

        public function get isOpen() : Boolean
        {
            return _isOpen;
        }// end function

        private function set _980012741topPoint(param1:int) : void
        {
            _topPoint = param1;
            return;
        }// end function

        public function set point(param1:int) : void
        {
            var _loc_2:* = this.point;
            if (_loc_2 !== param1)
            {
                this._106845584point = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "point", _loc_2, param1));
            }
            return;
        }// end function

        public function get masterVO() : Object
        {
            return _masterVO;
        }// end function

        public function get ownerGuildName() : String
        {
            return _ownerGuildName;
        }// end function

        private function set _628920395colonyId(param1:int) : void
        {
            _colonyId = param1;
            return;
        }// end function

        public function set isOpen(param1:Boolean) : void
        {
            var _loc_2:* = this.isOpen;
            if (_loc_2 !== param1)
            {
                this._1180237164isOpen = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "isOpen", _loc_2, param1));
            }
            return;
        }// end function

        public function set colonyId(param1:int) : void
        {
            var _loc_2:* = this.colonyId;
            if (_loc_2 !== param1)
            {
                this._628920395colonyId = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "colonyId", _loc_2, param1));
            }
            return;
        }// end function

        public function get colonyId() : int
        {
            return _colonyId;
        }// end function

        public function set masterVO(param1:Object) : void
        {
            var _loc_2:* = this.masterVO;
            if (_loc_2 !== param1)
            {
                this._283911323masterVO = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "masterVO", _loc_2, param1));
            }
            return;
        }// end function

        public function get description() : String
        {
            return _masterVO.description;
        }// end function

        public function set topPoint(param1:int) : void
        {
            var _loc_2:* = this.topPoint;
            if (_loc_2 !== param1)
            {
                this._980012741topPoint = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "topPoint", _loc_2, param1));
            }
            return;
        }// end function

    }
}
