package com.kbmj.viking.vo
{
    import flash.events.*;
    import mx.events.*;

    public class ColonyMasterVO extends Object implements IEventDispatcher
    {
        private var _bindingEventDispatcher:EventDispatcher;
        private var _description:String;
        private var _gold:int;
        private var _loots:Array;
        private var _maxLevel:int;
        private var _newDescription:String;
        private var _offensiveReinforcements:int;
        private var _name:String;
        private var _masterId:int;
        private var _newOffensiveReinforcements:int;

        public function ColonyMasterVO()
        {
            _bindingEventDispatcher = new EventDispatcher(IEventDispatcher(this));
            return;
        }// end function

        public function get maxLevel() : int
        {
            return _maxLevel;
        }// end function

        public function get description() : String
        {
            return _description;
        }// end function

        public function willTrigger(param1:String) : Boolean
        {
            return _bindingEventDispatcher.willTrigger(param1);
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

        public function get name() : String
        {
            return _name;
        }// end function

        public function set loots(param1:Array) : void
        {
            var _loc_2:* = this.loots;
            if (_loc_2 !== param1)
            {
                this._103157451loots = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "loots", _loc_2, param1));
            }
            return;
        }// end function

        private function set _1221509572newDescription(param1:String) : void
        {
            _newDescription = param1;
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

        public function get offensiveReinforcements() : int
        {
            return _offensiveReinforcements;
        }// end function

        private function set _390120576maxLevel(param1:int) : void
        {
            _maxLevel = param1;
            return;
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

        private function set _3178592gold(param1:int) : void
        {
            _gold = param1;
            return;
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

        public function get newDescription() : String
        {
            return _newDescription;
        }// end function

        public function set offensiveReinforcements(param1:int) : void
        {
            var _loc_2:* = this.offensiveReinforcements;
            if (_loc_2 !== param1)
            {
                this._109971809offensiveReinforcements = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "offensiveReinforcements", _loc_2, param1));
            }
            return;
        }// end function

        public function set gold(param1:int) : void
        {
            var _loc_2:* = this.gold;
            if (_loc_2 !== param1)
            {
                this._3178592gold = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "gold", _loc_2, param1));
            }
            return;
        }// end function

        public function removeEventListener(param1:String, param2:Function, param3:Boolean = false) : void
        {
            _bindingEventDispatcher.removeEventListener(param1, param2, param3);
            return;
        }// end function

        public function get loots() : Array
        {
            return _loots;
        }// end function

        public function addEventListener(param1:String, param2:Function, param3:Boolean = false, param4:int = 0, param5:Boolean = false) : void
        {
            _bindingEventDispatcher.addEventListener(param1, param2, param3, param4, param5);
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

        private function set _1724546052description(param1:String) : void
        {
            _description = param1;
            return;
        }// end function

        public function get gold() : int
        {
            return _gold;
        }// end function

        public function get newOffensiveReinforcements() : int
        {
            return _newOffensiveReinforcements;
        }// end function

        private function set _899133217newOffensiveReinforcements(param1:int) : void
        {
            _newOffensiveReinforcements = param1;
            return;
        }// end function

        private function set _109971809offensiveReinforcements(param1:int) : void
        {
            _offensiveReinforcements = param1;
            return;
        }// end function

        private function set _103157451loots(param1:Array) : void
        {
            _loots = param1;
            return;
        }// end function

        public function hasEventListener(param1:String) : Boolean
        {
            return _bindingEventDispatcher.hasEventListener(param1);
        }// end function

        public function set newOffensiveReinforcements(param1:int) : void
        {
            var _loc_2:* = this.newOffensiveReinforcements;
            if (_loc_2 !== param1)
            {
                this._899133217newOffensiveReinforcements = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "newOffensiveReinforcements", _loc_2, param1));
            }
            return;
        }// end function

        public function set newDescription(param1:String) : void
        {
            var _loc_2:* = this.newDescription;
            if (_loc_2 !== param1)
            {
                this._1221509572newDescription = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "newDescription", _loc_2, param1));
            }
            return;
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
