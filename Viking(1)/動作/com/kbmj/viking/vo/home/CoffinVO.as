package com.kbmj.viking.vo.home
{
    import com.kbmj.viking.vo.tactics.*;

    public class CoffinVO extends Object
    {
        private var _unit:UnitVO;
        private var _coffinId:int;
        private var _isActive:Boolean;
        private var _state:int;
        private var _expiredAtLabel:String;
        public static const STATE_ACTIVE:int = 1;
        public static const STATE_INACTIVE:int = 0;
        public static const STATE_UNIT_IN:int = 2;

        public function CoffinVO()
        {
            return;
        }// end function

        public function set isActive(param1:Boolean) : void
        {
            _isActive = param1;
            return;
        }// end function

        public function set unit(param1:UnitVO) : void
        {
            _unit = param1;
            return;
        }// end function

        public function get coffinId() : int
        {
            return _coffinId;
        }// end function

        public function get isActive() : Boolean
        {
            return _isActive;
        }// end function

        public function get state() : int
        {
            return _isActive ? (unit ? (STATE_UNIT_IN) : (STATE_ACTIVE)) : (STATE_INACTIVE);
        }// end function

        public function get unit() : UnitVO
        {
            return _unit;
        }// end function

        public function set coffinId(param1:int) : void
        {
            _coffinId = param1;
            return;
        }// end function

        public function get expiredAtLabel() : String
        {
            return _expiredAtLabel;
        }// end function

        public function set expiredAtLabel(param1:String) : void
        {
            _expiredAtLabel = param1;
            return;
        }// end function

    }
}
