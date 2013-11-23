package com.kbmj.viking.vo.tactics
{
    import flash.geom.*;

    public class DirectionVO extends OrderDetailVO
    {
        private var _point:Point;
        private var _newDirection:int;

        public function DirectionVO(param1:UnitVO, param2:Point, param3:int = 3)
        {
            super(param1);
            _point = param2;
            _newDirection = param3;
            return;
        }// end function

        public function get point() : Point
        {
            return _point;
        }// end function

        public function set newDirection(param1:int) : void
        {
            _newDirection = param1;
            return;
        }// end function

        public function set point(param1:Point) : void
        {
            _point = param1;
            return;
        }// end function

        public function get newDirection() : int
        {
            return _newDirection;
        }// end function

    }
}
