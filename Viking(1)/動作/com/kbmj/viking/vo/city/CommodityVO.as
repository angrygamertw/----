package com.kbmj.viking.vo.city
{
    import flash.events.*;
    import mx.events.*;

    public class CommodityVO extends Object implements IEventDispatcher
    {
        private var _masterVO:Object;
        private var _endurance:int;
        private var _nameLabel:String;
        private var _instanceVO:Object;
        private var _instanceId:int;
        private var _bindingEventDispatcher:EventDispatcher;
        private var _price:int;
        private var _instanceType:String;
        private var _commodityId:int;
        private var _quantity:int;
        private var _masterId:int;

        public function CommodityVO()
        {
            _bindingEventDispatcher = new EventDispatcher(IEventDispatcher(this));
            return;
        }// end function

        public function willTrigger(param1:String) : Boolean
        {
            return _bindingEventDispatcher.willTrigger(param1);
        }// end function

        public function get endurance() : int
        {
            return _endurance;
        }// end function

        public function get quantity() : int
        {
            return _quantity;
        }// end function

        public function get instanceVO() : Object
        {
            return _instanceVO;
        }// end function

        private function set _283911323masterVO(param1:Object) : void
        {
            _masterVO = param1;
            return;
        }// end function

        public function set price(param1:int) : void
        {
            var _loc_2:* = this.price;
            if (_loc_2 !== param1)
            {
                this._106934601price = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "price", _loc_2, param1));
            }
            return;
        }// end function

        private function set _1215755049nameLabel(param1:String) : void
        {
            _nameLabel = param1;
            return;
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

        public function get instanceId() : int
        {
            return _instanceId;
        }// end function

        public function get masterVO() : Object
        {
            return _masterVO;
        }// end function

        public function get masterId() : int
        {
            return _masterId;
        }// end function

        public function set instanceId(param1:int) : void
        {
            var _loc_2:* = this.instanceId;
            if (_loc_2 !== param1)
            {
                this._902024336instanceId = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "instanceId", _loc_2, param1));
            }
            return;
        }// end function

        public function set instanceVO(param1:Object) : void
        {
            var _loc_2:* = this.instanceVO;
            if (_loc_2 !== param1)
            {
                this._902024718instanceVO = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "instanceVO", _loc_2, param1));
            }
            return;
        }// end function

        public function set endurance(param1:int) : void
        {
            var _loc_2:* = this.endurance;
            if (_loc_2 !== param1)
            {
                this._1714720249endurance = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "endurance", _loc_2, param1));
            }
            return;
        }// end function

        public function get commodityId() : int
        {
            return _commodityId;
        }// end function

        public function get nameLabel() : String
        {
            return _nameLabel;
        }// end function

        private function set _1285004149quantity(param1:int) : void
        {
            _quantity = param1;
            return;
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

        private function set _106934601price(param1:int) : void
        {
            _price = param1;
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

        public function dispatchEvent(event:Event) : Boolean
        {
            return _bindingEventDispatcher.dispatchEvent(event);
        }// end function

        public function get price() : int
        {
            return _price;
        }// end function

        private function set _737655441instanceType(param1:String) : void
        {
            _instanceType = param1;
            return;
        }// end function

        public function addEventListener(param1:String, param2:Function, param3:Boolean = false, param4:int = 0, param5:Boolean = false) : void
        {
            _bindingEventDispatcher.addEventListener(param1, param2, param3, param4, param5);
            return;
        }// end function

        public function set commodityId(param1:int) : void
        {
            var _loc_2:* = this.commodityId;
            if (_loc_2 !== param1)
            {
                this._2093156648commodityId = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "commodityId", _loc_2, param1));
            }
            return;
        }// end function

        public function removeEventListener(param1:String, param2:Function, param3:Boolean = false) : void
        {
            _bindingEventDispatcher.removeEventListener(param1, param2, param3);
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

        private function set _902024336instanceId(param1:int) : void
        {
            _instanceId = param1;
            return;
        }// end function

        private function set _283910941masterId(param1:int) : void
        {
            _masterId = param1;
            return;
        }// end function

        public function set instanceType(param1:String) : void
        {
            var _loc_2:* = this.instanceType;
            if (_loc_2 !== param1)
            {
                this._737655441instanceType = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "instanceType", _loc_2, param1));
            }
            return;
        }// end function

        private function set _2093156648commodityId(param1:int) : void
        {
            _commodityId = param1;
            return;
        }// end function

        private function set _902024718instanceVO(param1:Object) : void
        {
            _instanceVO = param1;
            return;
        }// end function

        public function get instanceType() : String
        {
            return _instanceType;
        }// end function

        private function set _1714720249endurance(param1:int) : void
        {
            _endurance = param1;
            return;
        }// end function

        public function hasEventListener(param1:String) : Boolean
        {
            return _bindingEventDispatcher.hasEventListener(param1);
        }// end function

    }
}
