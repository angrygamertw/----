package com.kbmj.viking.vo
{
    import flash.events.*;
    import mx.events.*;

    public class TutorialVO extends Object implements IEventDispatcher
    {
        private var _qualified:Boolean;
        private var _condition:String;
        private var _animationName:String;
        private var _bindingEventDispatcher:EventDispatcher;
        private var _description:String;
        private var _code:int;
        private var _reward:String;
        private var _name:String;
        private var _page:int;

        public function TutorialVO(param1:Object = null)
        {
            _bindingEventDispatcher = new EventDispatcher(IEventDispatcher(this));
            if (param1)
            {
                _name = param1.tutorial.tutorial.name;
                _condition = param1.tutorial.tutorial.condition;
                _description = param1.tutorial.tutorial.description;
                _reward = param1.tutorial.tutorial.reward;
                _qualified = param1.qualified;
            }
            return;
        }// end function

        private function set _1247940452qualified(param1:Boolean) : void
        {
            _qualified = param1;
            return;
        }// end function

        public function willTrigger(param1:String) : Boolean
        {
            return _bindingEventDispatcher.willTrigger(param1);
        }// end function

        public function get name() : String
        {
            return _name;
        }// end function

        public function get page() : int
        {
            return _page;
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

        public function get condition() : String
        {
            return _condition;
        }// end function

        private function set _3373707name(param1:String) : void
        {
            _name = param1;
            return;
        }// end function

        public function set page(param1:int) : void
        {
            var _loc_2:* = this.page;
            if (_loc_2 !== param1)
            {
                this._3433103page = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "page", _loc_2, param1));
            }
            return;
        }// end function

        public function get qualified() : Boolean
        {
            return _qualified;
        }// end function

        public function get reward() : String
        {
            return _reward;
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

        public function get animationName() : String
        {
            return _animationName;
        }// end function

        private function set _934326481reward(param1:String) : void
        {
            _reward = param1;
            return;
        }// end function

        private function set _1724546052description(param1:String) : void
        {
            _description = param1;
            return;
        }// end function

        private function set _3433103page(param1:int) : void
        {
            _page = param1;
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

        public function addEventListener(param1:String, param2:Function, param3:Boolean = false, param4:int = 0, param5:Boolean = false) : void
        {
            _bindingEventDispatcher.addEventListener(param1, param2, param3, param4, param5);
            return;
        }// end function

        public function set code(param1:int) : void
        {
            var _loc_2:* = this.code;
            if (_loc_2 !== param1)
            {
                this._3059181code = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "code", _loc_2, param1));
            }
            return;
        }// end function

        public function set animationName(param1:String) : void
        {
            var _loc_2:* = this.animationName;
            if (_loc_2 !== param1)
            {
                this._2031003695animationName = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "animationName", _loc_2, param1));
            }
            return;
        }// end function

        public function set reward(param1:String) : void
        {
            var _loc_2:* = this.reward;
            if (_loc_2 !== param1)
            {
                this._934326481reward = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "reward", _loc_2, param1));
            }
            return;
        }// end function

        public function get code() : int
        {
            return _code;
        }// end function

        private function set _2031003695animationName(param1:String) : void
        {
            _animationName = param1;
            return;
        }// end function

        public function hasEventListener(param1:String) : Boolean
        {
            return _bindingEventDispatcher.hasEventListener(param1);
        }// end function

        private function set _3059181code(param1:int) : void
        {
            _code = param1;
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

        private function set _861311717condition(param1:String) : void
        {
            _condition = param1;
            return;
        }// end function

        public function get description() : String
        {
            return _description;
        }// end function

    }
}
