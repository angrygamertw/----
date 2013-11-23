package com.kbmj.viking.vo
{
    import flash.events.*;
    import mx.events.*;

    public class GoodsVO extends Object implements IEventDispatcher
    {
        private var _bindingEventDispatcher:EventDispatcher;
        private var _quantity:int;
        private var _vo:Object;

        public function GoodsVO()
        {
            _bindingEventDispatcher = new EventDispatcher(IEventDispatcher(this));
            return;
        }// end function

        public function dispatchEvent(event:Event) : Boolean
        {
            return _bindingEventDispatcher.dispatchEvent(event);
        }// end function

        public function hasEventListener(param1:String) : Boolean
        {
            return _bindingEventDispatcher.hasEventListener(param1);
        }// end function

        public function willTrigger(param1:String) : Boolean
        {
            return _bindingEventDispatcher.willTrigger(param1);
        }// end function

        public function get quantity() : int
        {
            return _quantity;
        }// end function

        public function addEventListener(param1:String, param2:Function, param3:Boolean = false, param4:int = 0, param5:Boolean = false) : void
        {
            _bindingEventDispatcher.addEventListener(param1, param2, param3, param4, param5);
            return;
        }// end function

        public function removeEventListener(param1:String, param2:Function, param3:Boolean = false) : void
        {
            _bindingEventDispatcher.removeEventListener(param1, param2, param3);
            return;
        }// end function

        public function set vo(param1:Object) : void
        {
            var _loc_2:* = this.vo;
            if (_loc_2 !== param1)
            {
                this._3769vo = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "vo", _loc_2, param1));
            }
            return;
        }// end function

        private function set _1285004149quantity(param1:int) : void
        {
            _quantity = param1;
            return;
        }// end function

        public function get vo() : Object
        {
            return _vo;
        }// end function

        public function set quantity(param1:int) : void
        {
            var _loc_2:* = this.quantity;
            if (_loc_2 !== param1)
            {
                this._1285004149quantity = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "quantity", _loc_2, param1));
            }
            return;
        }// end function

        private function set _3769vo(param1:Object) : void
        {
            _vo = param1;
            return;
        }// end function

    }
}
