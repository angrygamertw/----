package com.kbmj.viking.vo.tactics
{

    public class CancelWalkVO extends OrderDetailVO
    {
        private var _x:int;
        private var _y:int;

        public function CancelWalkVO(param1:UnitVO, param2:int = 0, param3:int = 0)
        {
            super(param1);
            _x = param2;
            _y = param3;
            return;
        }// end function

        public function get y() : int
        {
            return _y;
        }// end function

        public function set y(param1:int) : void
        {
            _y = param1;
            return;
        }// end function

        public function set x(param1:int) : void
        {
            _x = param1;
            return;
        }// end function

        public function get x() : int
        {
            return _x;
        }// end function

    }
}
