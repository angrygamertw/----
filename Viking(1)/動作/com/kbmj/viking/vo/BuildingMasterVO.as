package com.kbmj.viking.vo
{
    import flash.events.*;
    import mx.events.*;

    public class BuildingMasterVO extends Object implements IEventDispatcher
    {
        private var _masterId:int;
        private var _code:String;
        private var _repeatable:Boolean;
        private var _maxLevel:int;
        private var _nameLabel:String;
        private var _name:String;
        private var _bindingEventDispatcher:EventDispatcher;
        private var _description:String;
        public static const ALTHING:int = 3;
        public static const WARRIOR_HOUSE:int = 21;
        public static const FORT:int = 22;
        public static const SQUARE:int = 7;
        public static const LORD_HOUSE:int = 2;

        public function BuildingMasterVO()
        {
            _bindingEventDispatcher = new EventDispatcher(IEventDispatcher(this));
            return;
        }// end function

        public function get maxLevel() : int
        {
            return _maxLevel;
        }// end function

        public function set masterId(param1:int) : void
        {
            var _loc_2:* = this.masterId;
            if (_loc_2 !== param1)
            {
                this._283910941masterId = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "masterId", _loc_2, param1));
            }
            return;
        }// end function

        private function set _1724546052description(param1:String) : void
        {
            _description = param1;
            return;
        }// end function

        public function set maxLevel(param1:int) : void
        {
            var _loc_2:* = this.maxLevel;
            if (_loc_2 !== param1)
            {
                this._390120576maxLevel = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "maxLevel", _loc_2, param1));
            }
            return;
        }// end function

        public function removeEventListener(param1:String, param2:Function, param3:Boolean = false) : void
        {
            _bindingEventDispatcher.removeEventListener(param1, param2, param3);
            return;
        }// end function

        public function get name() : String
        {
            return _name;
        }// end function

        public function addEventListener(param1:String, param2:Function, param3:Boolean = false, param4:int = 0, param5:Boolean = false) : void
        {
            _bindingEventDispatcher.addEventListener(param1, param2, param3, param4, param5);
            return;
        }// end function

        private function set _1215755049nameLabel(param1:String) : void
        {
            _nameLabel = param1;
            return;
        }// end function

        public function dispatchEvent(event:Event) : Boolean
        {
            return _bindingEventDispatcher.dispatchEvent(event);
        }// end function

        private function set _283910941masterId(param1:int) : void
        {
            _masterId = param1;
            return;
        }// end function

        public function willTrigger(param1:String) : Boolean
        {
            return _bindingEventDispatcher.willTrigger(param1);
        }// end function

        public function set name(param1:String) : void
        {
            var _loc_2:* = this.name;
            if (_loc_2 !== param1)
            {
                this._3373707name = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "name", _loc_2, param1));
            }
            return;
        }// end function

        public function set nameLabel(param1:String) : void
        {
            var _loc_2:* = this.nameLabel;
            if (_loc_2 !== param1)
            {
                this._1215755049nameLabel = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "nameLabel", _loc_2, param1));
            }
            return;
        }// end function

        public function set code(param1:String) : void
        {
            var _loc_2:* = this.code;
            if (_loc_2 !== param1)
            {
                this._3059181code = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "code", _loc_2, param1));
            }
            return;
        }// end function

        private function set _3373707name(param1:String) : void
        {
            _name = param1;
            return;
        }// end function

        public function get masterId() : int
        {
            return _masterId;
        }// end function

        private function set _390120576maxLevel(param1:int) : void
        {
            _maxLevel = param1;
            return;
        }// end function

        private function set _1159953781repeatable(param1:Boolean) : void
        {
            _repeatable = param1;
            return;
        }// end function

        public function get nameLabel() : String
        {
            return _nameLabel;
        }// end function

        public function get code() : String
        {
            return _code;
        }// end function

        private function set _3059181code(param1:String) : void
        {
            _code = param1;
            return;
        }// end function

        public function hasEventListener(param1:String) : Boolean
        {
            return _bindingEventDispatcher.hasEventListener(param1);
        }// end function

        public function get repeatable() : Boolean
        {
            return _repeatable;
        }// end function

        public function set repeatable(param1:Boolean) : void
        {
            var _loc_2:* = this.repeatable;
            if (_loc_2 !== param1)
            {
                this._1159953781repeatable = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "repeatable", _loc_2, param1));
            }
            return;
        }// end function

        public function get description() : String
        {
            return _description;
        }// end function

        public function set description(param1:String) : void
        {
            var _loc_2:* = this.description;
            if (_loc_2 !== param1)
            {
                this._1724546052description = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "description", _loc_2, param1));
            }
            return;
        }// end function

    }
}
