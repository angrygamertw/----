package com.kbmj.viking.vo
{
    import flash.events.*;
    import mx.events.*;

    public class QuestVO extends Object implements IEventDispatcher
    {
        private var _rank:int;
        private var _questNumber:int;
        private var _questName:String;
        private var _repeatable:int;
        private var _clientName:String;
        private var _qualified:Boolean;
        private var _condition:String;
        private var _upperLimitRank:int;
        private var _bindingEventDispatcher:EventDispatcher;
        private var _description:String;
        private var _parentId:int;
        private var _clientType:String;
        private var _code:String;
        private var _reward:Array;
        private var _kills:int;
        private var _questId:int;
        private var _questType:int;

        public function QuestVO()
        {
            _bindingEventDispatcher = new EventDispatcher(IEventDispatcher(this));
            return;
        }// end function

        private function set _1783052659questName(param1:String) : void
        {
            _questName = param1;
            return;
        }// end function

        public function get upperLimitRank() : int
        {
            return _upperLimitRank;
        }// end function

        public function willTrigger(param1:String) : Boolean
        {
            return _bindingEventDispatcher.willTrigger(param1);
        }// end function

        private function set _861311717condition(param1:String) : void
        {
            _condition = param1;
            return;
        }// end function

        private function set _196816587questNumber(param1:int) : void
        {
            _questNumber = param1;
            return;
        }// end function

        public function get questName() : String
        {
            return _questName;
        }// end function

        private function set _1472271365upperLimitRank(param1:int) : void
        {
            _upperLimitRank = param1;
            return;
        }// end function

        public function set upperLimitRank(param1:int) : void
        {
            var _loc_2:* = this.upperLimitRank;
            if (_loc_2 !== param1)
            {
                this._1472271365upperLimitRank = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "upperLimitRank", _loc_2, param1));
            }
            return;
        }// end function

        private function set _1247940452qualified(param1:Boolean) : void
        {
            _qualified = param1;
            return;
        }// end function

        public function set reward(param1:Array) : void
        {
            var _loc_2:* = this.reward;
            if (_loc_2 !== param1)
            {
                this._934326481reward = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "reward", _loc_2, param1));
            }
            return;
        }// end function

        public function set questName(param1:String) : void
        {
            var _loc_2:* = this.questName;
            if (_loc_2 !== param1)
            {
                this._1783052659questName = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "questName", _loc_2, param1));
            }
            return;
        }// end function

        public function get condition() : String
        {
            return _condition;
        }// end function

        private function set _1159953781repeatable(param1:int) : void
        {
            _repeatable = param1;
            return;
        }// end function

        public function get clientType() : String
        {
            return _clientType;
        }// end function

        public function set questNumber(param1:int) : void
        {
            var _loc_2:* = this.questNumber;
            if (_loc_2 !== param1)
            {
                this._196816587questNumber = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "questNumber", _loc_2, param1));
            }
            return;
        }// end function

        public function get reward() : Array
        {
            return _reward;
        }// end function

        private function set _1782850756questType(param1:int) : void
        {
            _questType = param1;
            return;
        }// end function

        public function set kills(param1:int) : void
        {
            var _loc_2:* = this.kills;
            if (_loc_2 !== param1)
            {
                this._102052053kills = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "kills", _loc_2, param1));
            }
            return;
        }// end function

        public function get rank() : int
        {
            return _rank;
        }// end function

        public function get qualified() : Boolean
        {
            return _qualified;
        }// end function

        public function get questId() : int
        {
            return _questId;
        }// end function

        public function set condition(param1:String) : void
        {
            var _loc_2:* = this.condition;
            if (_loc_2 !== param1)
            {
                this._861311717condition = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "condition", _loc_2, param1));
            }
            return;
        }// end function

        private function set _1724546052description(param1:String) : void
        {
            _description = param1;
            return;
        }// end function

        public function set qualified(param1:Boolean) : void
        {
            var _loc_2:* = this.qualified;
            if (_loc_2 !== param1)
            {
                this._1247940452qualified = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "qualified", _loc_2, param1));
            }
            return;
        }// end function

        private function set _934326481reward(param1:Array) : void
        {
            _reward = param1;
            return;
        }// end function

        public function set questId(param1:int) : void
        {
            var _loc_2:* = this.questId;
            if (_loc_2 !== param1)
            {
                this._655126941questId = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "questId", _loc_2, param1));
            }
            return;
        }// end function

        public function get questType() : int
        {
            return _questType;
        }// end function

        private function set _102052053kills(param1:int) : void
        {
            _kills = param1;
            return;
        }// end function

        private function set _655126941questId(param1:int) : void
        {
            _questId = param1;
            return;
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

        public function set parentId(param1:int) : void
        {
            var _loc_2:* = this.parentId;
            if (_loc_2 !== param1)
            {
                this._1175162725parentId = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "parentId", _loc_2, param1));
            }
            return;
        }// end function

        public function get questNumber() : int
        {
            return _questNumber;
        }// end function

        public function get kills() : int
        {
            return _kills;
        }// end function

        public function set rank(param1:int) : void
        {
            var _loc_2:* = this.rank;
            if (_loc_2 !== param1)
            {
                this._3492908rank = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "rank", _loc_2, param1));
            }
            return;
        }// end function

        public function set clientType(param1:String) : void
        {
            var _loc_2:* = this.clientType;
            if (_loc_2 !== param1)
            {
                this._1102453157clientType = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "clientType", _loc_2, param1));
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

        private function set _1102453157clientType(param1:String) : void
        {
            _clientType = param1;
            return;
        }// end function

        private function set _1175162725parentId(param1:int) : void
        {
            _parentId = param1;
            return;
        }// end function

        private function set _3492908rank(param1:int) : void
        {
            _rank = param1;
            return;
        }// end function

        public function set repeatable(param1:int) : void
        {
            var _loc_2:* = this.repeatable;
            if (_loc_2 !== param1)
            {
                this._1159953781repeatable = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "repeatable", _loc_2, param1));
            }
            return;
        }// end function

        public function get parentId() : int
        {
            return _parentId;
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

        public function set clientName(param1:String) : void
        {
            var _loc_2:* = this.clientName;
            if (_loc_2 !== param1)
            {
                this._1102251254clientName = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "clientName", _loc_2, param1));
            }
            return;
        }// end function

        private function set _1102251254clientName(param1:String) : void
        {
            _clientName = param1;
            return;
        }// end function

        public function get repeatable() : int
        {
            return _repeatable;
        }// end function

        public function get clientName() : String
        {
            return _clientName;
        }// end function

        public function removeEventListener(param1:String, param2:Function, param3:Boolean = false) : void
        {
            _bindingEventDispatcher.removeEventListener(param1, param2, param3);
            return;
        }// end function

        public function set questType(param1:int) : void
        {
            var _loc_2:* = this.questType;
            if (_loc_2 !== param1)
            {
                this._1782850756questType = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "questType", _loc_2, param1));
            }
            return;
        }// end function

        public function hasEventListener(param1:String) : Boolean
        {
            return _bindingEventDispatcher.hasEventListener(param1);
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
