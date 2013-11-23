package com.kbmj.viking.vo.allMap
{
    import flash.geom.*;

    public class AllMapUpdateVO extends Object
    {
        private var _forceLoad:Boolean;
        private var _setView:Boolean;
        private var _setHomePos:Boolean;
        private var _center:Point;
        private var _updateInf:Boolean;

        public function AllMapUpdateVO(param1:Point, param2:Boolean, param3:Boolean = false, param4:Boolean = false, param5:Boolean = false) : void
        {
            _center = param1;
            _forceLoad = param2;
            _setHomePos = param3;
            _setView = param4;
            _updateInf = param5;
            return;
        }// end function

        public function get setView() : Boolean
        {
            return _setView;
        }// end function

        public function get forceLoad() : Boolean
        {
            return _forceLoad;
        }// end function

        public function get setHomePos() : Boolean
        {
            return _setHomePos;
        }// end function

        public function get center() : Point
        {
            return _center;
        }// end function

        public function get updateInf() : Boolean
        {
            return _updateInf;
        }// end function

    }
}
