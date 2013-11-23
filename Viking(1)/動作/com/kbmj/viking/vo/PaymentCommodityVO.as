package com.kbmj.viking.vo
{
    import flash.events.*;
    import mx.events.*;

    public class PaymentCommodityVO extends Object implements IEventDispatcher
    {
        private var _masterId:int;
        private var _power:int;
        private var _point:int;
        private var _quantity:int;
        private var _commodity:Object;
        private var _bindingEventDispatcher:EventDispatcher;
        private var _gold:int;

        public function PaymentCommodityVO()
        {
            _bindingEventDispatcher = new EventDispatcher(IEventDispatcher(this));
            return;
        }// end function

        private function set _106845584point(param1:int) : void
        {
            _point = param1;
            return;
        }// end function

        public function get pointLabel() : String
        {
            return _point ? (String(_point)) : ("-");
        }// end function

        public function get power() : int
        {
            return _power;
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

        public function set power(param1:int) : void
        {
            var _loc_2:* = this.power;
            if (_loc_2 !== param1)
            {
                this._106858757power = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "power", _loc_2, param1));
            }
            return;
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

        public function dispatchEvent(event:Event) : Boolean
        {
            return _bindingEventDispatcher.dispatchEvent(event);
        }// end function

        public function get point() : int
        {
            return _point;
        }// end function

        private function set _283910941masterId(param1:int) : void
        {
            _masterId = param1;
            return;
        }// end function

        private function set _1486088403commodity(param1:Object) : void
        {
            _commodity = param1;
            return;
        }// end function

        public function willTrigger(param1:String) : Boolean
        {
            return _bindingEventDispatcher.willTrigger(param1);
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

        public function removeEventListener(param1:String, param2:Function, param3:Boolean = false) : void
        {
            _bindingEventDispatcher.removeEventListener(param1, param2, param3);
            return;
        }// end function

        public function set commodity(param1:Object) : void
        {
            var _loc_2:* = this.commodity;
            if (_loc_2 !== param1)
            {
                this._1486088403commodity = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "commodity", _loc_2, param1));
            }
            return;
        }// end function

        private function set _1285004149quantity(param1:int) : void
        {
            _quantity = param1;
            return;
        }// end function

        public function get masterId() : int
        {
            return _masterId;
        }// end function

        private function set _106858757power(param1:int) : void
        {
            _power = param1;
            return;
        }// end function

        public function get gold() : int
        {
            return _gold;
        }// end function

        public function hasEventListener(param1:String) : Boolean
        {
            return _bindingEventDispatcher.hasEventListener(param1);
        }// end function

        private function set _3178592gold(param1:int) : void
        {
            _gold = param1;
            return;
        }// end function

        public function get nameLabel() : String
        {
            return commodity.nameLabel;
        }// end function

        public function get commodity() : Object
        {
            return _commodity;
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

        public function get goldLabel() : String
        {
            return _gold ? (String(_gold)) : ("-");
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

        public function get masterType() : String
        {
            return commodity.masterType;
        }// end function

    }
}
