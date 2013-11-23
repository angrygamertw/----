package com.kbmj.viking.vo.tactics
{
    import flash.geom.*;

    public class WalkVO extends OrderDetailVO
    {
        private var _route:Array;
        private var _destination:Point;

        public function WalkVO(param1:UnitVO, param2:Point)
        {
            super(param1);
            _destination = param2;
            return;
        }// end function

        public function set route(param1:Array) : void
        {
            _route = param1;
            return;
        }// end function

        public function get route() : Array
        {
            return _route;
        }// end function

        public function set destination(param1:Point) : void
        {
            _destination = param1;
            return;
        }// end function

        public function get destination() : Point
        {
            return _destination;
        }// end function

    }
}
