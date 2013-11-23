package com.kbmj.viking.vo
{
    import flash.events.*;
    import mx.events.*;

    public class ProductionMasterVO extends Object implements IEventDispatcher
    {
        private var _productType:String;
        private var _reproduction:Boolean;
        private var _building:Object;
        private var _requiredBelongingMaster:Object;
        private var _product:Object;
        private var _bindingEventDispatcher:EventDispatcher;
        private var _phonetic:String;
        private var _successRate:int;
        private var _commodities:Array;
        private var _masterId:int;

        public function ProductionMasterVO()
        {
            _bindingEventDispatcher = new EventDispatcher(IEventDispatcher(this));
            return;
        }// end function

        public function get successRate() : int
        {
            return _successRate;
        }// end function

        public function set successRate(param1:int) : void
        {
            var _loc_2:* = this.successRate;
            if (_loc_2 !== param1)
            {
                this._1268365437successRate = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "successRate", _loc_2, param1));
            }
            return;
        }// end function

        public function willTrigger(param1:String) : Boolean
        {
            return _bindingEventDispatcher.willTrigger(param1);
        }// end function

        public function get commodities() : Array
        {
            return _commodities;
        }// end function

        public function set productType(param1:String) : void
        {
            var _loc_2:* = this.productType;
            if (_loc_2 !== param1)
            {
                this._1491615543productType = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "productType", _loc_2, param1));
            }
            return;
        }// end function

        public function get masterId() : int
        {
            return _masterId;
        }// end function

        private function set _1814881492reproduction(param1:Boolean) : void
        {
            _reproduction = param1;
            return;
        }// end function

        public function set commodities(param1:Array) : void
        {
            var _loc_2:* = this.commodities;
            if (_loc_2 !== param1)
            {
                this._2093142155commodities = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "commodities", _loc_2, param1));
            }
            return;
        }// end function

        private function set _309474065product(param1:Object) : void
        {
            _product = param1;
            return;
        }// end function

        private function set _1491615543productType(param1:String) : void
        {
            _productType = param1;
            return;
        }// end function

        public function get reproduction() : Boolean
        {
            return _reproduction;
        }// end function

        public function get building() : Object
        {
            return _building;
        }// end function

        private function set _1268365437successRate(param1:int) : void
        {
            _successRate = param1;
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

        public function set phonetic(param1:String) : void
        {
            var _loc_2:* = this.phonetic;
            if (_loc_2 !== param1)
            {
                this._1280088992phonetic = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "phonetic", _loc_2, param1));
            }
            return;
        }// end function

        public function dispatchEvent(event:Event) : Boolean
        {
            return _bindingEventDispatcher.dispatchEvent(event);
        }// end function

        private function set _1430646092building(param1:Object) : void
        {
            _building = param1;
            return;
        }// end function

        public function get productType() : String
        {
            return _productType;
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

        private function set _566473958requiredBelongingMaster(param1:Object) : void
        {
            _requiredBelongingMaster = param1;
            return;
        }// end function

        private function set _283910941masterId(param1:int) : void
        {
            _masterId = param1;
            return;
        }// end function

        public function set requiredBelongingMaster(param1:Object) : void
        {
            var _loc_2:* = this.requiredBelongingMaster;
            if (_loc_2 !== param1)
            {
                this._566473958requiredBelongingMaster = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "requiredBelongingMaster", _loc_2, param1));
            }
            return;
        }// end function

        public function set reproduction(param1:Boolean) : void
        {
            var _loc_2:* = this.reproduction;
            if (_loc_2 !== param1)
            {
                this._1814881492reproduction = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "reproduction", _loc_2, param1));
            }
            return;
        }// end function

        public function set product(param1:Object) : void
        {
            var _loc_2:* = this.product;
            if (_loc_2 !== param1)
            {
                this._309474065product = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "product", _loc_2, param1));
            }
            return;
        }// end function

        private function set _2093142155commodities(param1:Array) : void
        {
            _commodities = param1;
            return;
        }// end function

        public function get requiredBelongingMaster() : Object
        {
            return _requiredBelongingMaster;
        }// end function

        public function get phonetic() : String
        {
            return _phonetic;
        }// end function

        public function set building(param1:Object) : void
        {
            var _loc_2:* = this.building;
            if (_loc_2 !== param1)
            {
                this._1430646092building = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "building", _loc_2, param1));
            }
            return;
        }// end function

        public function get product() : Object
        {
            return _product;
        }// end function

        private function set _1280088992phonetic(param1:String) : void
        {
            _phonetic = param1;
            return;
        }// end function

        public function hasEventListener(param1:String) : Boolean
        {
            return _bindingEventDispatcher.hasEventListener(param1);
        }// end function

    }
}
