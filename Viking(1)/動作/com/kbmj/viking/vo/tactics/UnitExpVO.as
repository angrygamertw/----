package com.kbmj.viking.vo.tactics
{
    import flash.events.*;
    import mx.events.*;

    public class UnitExpVO extends Object implements IEventDispatcher
    {
        private var _bindingEventDispatcher:EventDispatcher;
        private var _levelUp:Boolean;
        private var _unitVO:UnitVO;
        private var _exp:String;

        public function UnitExpVO(param1:UnitVO, param2:String, param3:Boolean)
        {
            _bindingEventDispatcher = new EventDispatcher(IEventDispatcher(this));
            _unitVO = param1;
            _exp = param2;
            _levelUp = param3;
            return;
        }// end function

        public function set unitVO(param1:UnitVO) : void
        {
            var _loc_2:* = this.unitVO;
            if (_loc_2 !== param1)
            {
                this._840527043unitVO = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "unitVO", _loc_2, param1));
            }
            return;
        }// end function

        public function willTrigger(param1:String) : Boolean
        {
            return _bindingEventDispatcher.willTrigger(param1);
        }// end function

        private function set _100893exp(param1:String) : void
        {
            _exp = param1;
            return;
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

        private function set _840527043unitVO(param1:UnitVO) : void
        {
            _unitVO = param1;
            return;
        }// end function

        public function dispatchEvent(event:Event) : Boolean
        {
            return _bindingEventDispatcher.dispatchEvent(event);
        }// end function

        public function get exp() : String
        {
            return _exp;
        }// end function

        private function set _69784895levelUp(param1:Boolean) : void
        {
            _levelUp = param1;
            return;
        }// end function

        public function set exp(param1:String) : void
        {
            var _loc_2:* = this.exp;
            if (_loc_2 !== param1)
            {
                this._100893exp = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "exp", _loc_2, param1));
            }
            return;
        }// end function

        public function hasEventListener(param1:String) : Boolean
        {
            return _bindingEventDispatcher.hasEventListener(param1);
        }// end function

        public function get unitVO() : UnitVO
        {
            return _unitVO;
        }// end function

        public function set levelUp(param1:Boolean) : void
        {
            var _loc_2:* = this.levelUp;
            if (_loc_2 !== param1)
            {
                this._69784895levelUp = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "levelUp", _loc_2, param1));
            }
            return;
        }// end function

        public function get levelUp() : Boolean
        {
            return _levelUp;
        }// end function

    }
}
