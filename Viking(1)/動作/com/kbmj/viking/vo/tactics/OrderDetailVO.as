package com.kbmj.viking.vo.tactics
{

    public class OrderDetailVO extends Object
    {
        private var _unit:UnitVO;

        public function OrderDetailVO(param1:UnitVO)
        {
            _unit = param1;
            return;
        }// end function

        public function set unit(param1:UnitVO) : void
        {
            _unit = param1;
            return;
        }// end function

        public function get unit() : UnitVO
        {
            return _unit;
        }// end function

    }
}
