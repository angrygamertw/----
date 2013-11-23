package com.kbmj.viking.vo
{
    import flash.events.*;
    import mx.events.*;

    public class ProductionVO extends Object implements IEventDispatcher
    {
        private var _requirement:Object;
        private var _skill:String;
        private var _resourceQuantity:int;
        private var _masterVO:ProductionMasterVO;
        private var _bindingEventDispatcher:EventDispatcher;

        public function ProductionVO()
        {
            _bindingEventDispatcher = new EventDispatcher(IEventDispatcher(this));
            return;
        }// end function

        public function dispatchEvent(event:Event) : Boolean
        {
            return _bindingEventDispatcher.dispatchEvent(event);
        }// end function

        public function get requirement() : Object
        {
            return _requirement;
        }// end function

        public function set requirement(param1:Object) : void
        {
            var _loc_2:* = this.requirement;
            if (_loc_2 !== param1)
            {
                this._363387971requirement = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "requirement", _loc_2, param1));
            }
            return;
        }// end function

        private function set _283911323masterVO(param1:ProductionMasterVO) : void
        {
            _masterVO = param1;
            return;
        }// end function

        public function get productType() : String
        {
            return masterVO.productType;
        }// end function

        public function get successRate() : int
        {
            return masterVO.successRate;
        }// end function

        public function hasEventListener(param1:String) : Boolean
        {
            return _bindingEventDispatcher.hasEventListener(param1);
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

        public function get skill() : String
        {
            return _skill;
        }// end function

        public function addEventListener(param1:String, param2:Function, param3:Boolean = false, param4:int = 0, param5:Boolean = false) : void
        {
            _bindingEventDispatcher.addEventListener(param1, param2, param3, param4, param5);
            return;
        }// end function

        public function willTrigger(param1:String) : Boolean
        {
            return _bindingEventDispatcher.willTrigger(param1);
        }// end function

        private function set _1219010233resourceQuantity(param1:int) : void
        {
            _resourceQuantity = param1;
            return;
        }// end function

        public function removeEventListener(param1:String, param2:Function, param3:Boolean = false) : void
        {
            _bindingEventDispatcher.removeEventListener(param1, param2, param3);
            return;
        }// end function

        public function get masterVO() : ProductionMasterVO
        {
            return _masterVO;
        }// end function

        public function get masterId() : int
        {
            return masterVO.masterId;
        }// end function

        private function set _109496913skill(param1:String) : void
        {
            _skill = param1;
            return;
        }// end function

        public function get phonetic() : String
        {
            return _masterVO.phonetic;
        }// end function

        public function get requiredBelongingMasterId() : int
        {
            return masterVO.requiredBelongingMaster.masterId;
        }// end function

        private function set _363387971requirement(param1:Object) : void
        {
            _requirement = param1;
            return;
        }// end function

        public function set skill(param1:String) : void
        {
            var _loc_2:* = this.skill;
            if (_loc_2 !== param1)
            {
                this._109496913skill = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "skill", _loc_2, param1));
            }
            return;
        }// end function

        public function get productId() : int
        {
            return masterVO.product.masterId;
        }// end function

        public function get isCrystal() : Boolean
        {
            return productType == "althing";
        }// end function

        public function set resourceQuantity(param1:int) : void
        {
            var _loc_2:* = this.resourceQuantity;
            if (_loc_2 !== param1)
            {
                this._1219010233resourceQuantity = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "resourceQuantity", _loc_2, param1));
            }
            return;
        }// end function

        public function get reproduction() : Boolean
        {
            return masterVO.reproduction;
        }// end function

        private function set _1268365437successRate(param1:int) : void
        {
            masterVO.successRate = param1;
            return;
        }// end function

        public function get resourceQuantity() : int
        {
            return _resourceQuantity;
        }// end function

        public function get masterType() : String
        {
            return masterVO.product.masterType;
        }// end function

        public function set masterVO(param1:ProductionMasterVO) : void
        {
            var _loc_2:* = this.masterVO;
            if (_loc_2 !== param1)
            {
                this._283911323masterVO = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "masterVO", _loc_2, param1));
            }
            return;
        }// end function

    }
}
