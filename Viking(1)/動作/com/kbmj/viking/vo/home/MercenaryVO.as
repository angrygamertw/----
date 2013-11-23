package com.kbmj.viking.vo.home
{
    import com.kbmj.viking.vo.*;
    import com.kbmj.viking.vo.tactics.*;
    import flash.events.*;
    import mx.events.*;

    public class MercenaryVO extends Object implements IEventDispatcher
    {
        private var _requirement:MaterialMasterVO;
        private var _price:int;
        private var _numRequiredMaterial:int;
        private var _unit:UnitVO;
        private var _mercenaryId:int;
        private var _bindingEventDispatcher:EventDispatcher;
        private var _canEmploy:Boolean;

        public function MercenaryVO()
        {
            _bindingEventDispatcher = new EventDispatcher(IEventDispatcher(this));
            return;
        }// end function

        public function dispatchEvent(event:Event) : Boolean
        {
            return _bindingEventDispatcher.dispatchEvent(event);
        }// end function

        public function get requirement() : MaterialMasterVO
        {
            return _requirement;
        }// end function

        public function get price() : int
        {
            return _price;
        }// end function

        public function get unit() : UnitVO
        {
            return _unit;
        }// end function

        public function get numRequiredMaterial() : int
        {
            return _numRequiredMaterial;
        }// end function

        private function set _3594628unit(param1:UnitVO) : void
        {
            _unit = param1;
            return;
        }// end function

        public function removeEventListener(param1:String, param2:Function, param3:Boolean = false) : void
        {
            _bindingEventDispatcher.removeEventListener(param1, param2, param3);
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

        public function get voType() : String
        {
            return "MercenaryVO";
        }// end function

        private function set _1728150351mercenaryId(param1:int) : void
        {
            _mercenaryId = param1;
            return;
        }// end function

        public function set unit(param1:UnitVO) : void
        {
            var _loc_2:* = this.unit;
            if (_loc_2 !== param1)
            {
                this._3594628unit = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "unit", _loc_2, param1));
            }
            return;
        }// end function

        public function set numRequiredMaterial(param1:int) : void
        {
            var _loc_2:* = this.numRequiredMaterial;
            if (_loc_2 !== param1)
            {
                this._832632436numRequiredMaterial = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "numRequiredMaterial", _loc_2, param1));
            }
            return;
        }// end function

        public function addEventListener(param1:String, param2:Function, param3:Boolean = false, param4:int = 0, param5:Boolean = false) : void
        {
            _bindingEventDispatcher.addEventListener(param1, param2, param3, param4, param5);
            return;
        }// end function

        public function set requirement(param1:MaterialMasterVO) : void
        {
            var _loc_2:* = this.requirement;
            if (_loc_2 !== param1)
            {
                this._363387971requirement = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "requirement", _loc_2, param1));
            }
            return;
        }// end function

        private function set _363387971requirement(param1:MaterialMasterVO) : void
        {
            _requirement = param1;
            return;
        }// end function

        private function set _106934601price(param1:int) : void
        {
            _price = param1;
            return;
        }// end function

        public function set mercenaryId(param1:int) : void
        {
            var _loc_2:* = this.mercenaryId;
            if (_loc_2 !== param1)
            {
                this._1728150351mercenaryId = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "mercenaryId", _loc_2, param1));
            }
            return;
        }// end function

        private function set _832632436numRequiredMaterial(param1:int) : void
        {
            _numRequiredMaterial = param1;
            return;
        }// end function

        public function get mercenaryId() : int
        {
            return _mercenaryId;
        }// end function

        private function set _374778498canEmploy(param1:Boolean) : void
        {
            _canEmploy = param1;
            return;
        }// end function

        public function hasEventListener(param1:String) : Boolean
        {
            return _bindingEventDispatcher.hasEventListener(param1);
        }// end function

        public function willTrigger(param1:String) : Boolean
        {
            return _bindingEventDispatcher.willTrigger(param1);
        }// end function

        public function set canEmploy(param1:Boolean) : void
        {
            var _loc_2:* = this.canEmploy;
            if (_loc_2 !== param1)
            {
                this._374778498canEmploy = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "canEmploy", _loc_2, param1));
            }
            return;
        }// end function

        public function get canEmploy() : Boolean
        {
            return _canEmploy;
        }// end function

    }
}
