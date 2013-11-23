package com.kbmj.viking.vo
{
    import flash.events.*;
    import mx.events.*;

    public class MerchandiseVO extends Object implements IEventDispatcher
    {
        private var _masterVO:Object;
        private var _merchandiseId:int;
        private var _buyingPrice:int;
        private var _masterType:String;
        private var _bindingEventDispatcher:EventDispatcher;
        private var _sellingPrice:int;

        public function MerchandiseVO()
        {
            _bindingEventDispatcher = new EventDispatcher(IEventDispatcher(this));
            return;
        }// end function

        public function dispatchEvent(event:Event) : Boolean
        {
            return _bindingEventDispatcher.dispatchEvent(event);
        }// end function

        public function set merchandiseId(param1:int) : void
        {
            var _loc_2:* = this.merchandiseId;
            if (_loc_2 !== param1)
            {
                this._1624045630merchandiseId = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "merchandiseId", _loc_2, param1));
            }
            return;
        }// end function

        private function set _2039141188masterType(param1:String) : void
        {
            _masterType = param1;
            return;
        }// end function

        public function get merchandiseId() : int
        {
            return _merchandiseId;
        }// end function

        private function set _283911323masterVO(param1:Object) : void
        {
            _masterVO = param1;
            return;
        }// end function

        public function removeEventListener(param1:String, param2:Function, param3:Boolean = false) : void
        {
            _bindingEventDispatcher.removeEventListener(param1, param2, param3);
            return;
        }// end function

        public function hasEventListener(param1:String) : Boolean
        {
            return _bindingEventDispatcher.hasEventListener(param1);
        }// end function

        public function get buyingPrice() : int
        {
            return _buyingPrice;
        }// end function

        public function addEventListener(param1:String, param2:Function, param3:Boolean = false, param4:int = 0, param5:Boolean = false) : void
        {
            _bindingEventDispatcher.addEventListener(param1, param2, param3, param4, param5);
            return;
        }// end function

        private function set _1004642547buyingPrice(param1:int) : void
        {
            _buyingPrice = param1;
            return;
        }// end function

        public function get sellingPrice() : int
        {
            return _sellingPrice;
        }// end function

        public function set buyingPrice(param1:int) : void
        {
            var _loc_2:* = this.buyingPrice;
            if (_loc_2 !== param1)
            {
                this._1004642547buyingPrice = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "buyingPrice", _loc_2, param1));
            }
            return;
        }// end function

        public function get masterVO() : Object
        {
            return _masterVO;
        }// end function

        public function get masterId() : int
        {
            return masterVO.masterId;
        }// end function

        public function willTrigger(param1:String) : Boolean
        {
            return _bindingEventDispatcher.willTrigger(param1);
        }// end function

        private function set _1624045630merchandiseId(param1:int) : void
        {
            _merchandiseId = param1;
            return;
        }// end function

        public function set sellingPrice(param1:int) : void
        {
            var _loc_2:* = this.sellingPrice;
            if (_loc_2 !== param1)
            {
                this._645192743sellingPrice = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "sellingPrice", _loc_2, param1));
            }
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

        public function set masterType(param1:String) : void
        {
            var _loc_2:* = this.masterType;
            if (_loc_2 !== param1)
            {
                this._2039141188masterType = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "masterType", _loc_2, param1));
            }
            return;
        }// end function

        private function set _645192743sellingPrice(param1:int) : void
        {
            _sellingPrice = param1;
            return;
        }// end function

        public function get masterType() : String
        {
            return _masterType;
        }// end function

    }
}
