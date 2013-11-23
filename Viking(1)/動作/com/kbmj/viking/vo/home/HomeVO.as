package com.kbmj.viking.vo.home
{
    import com.kbmj.viking.vo.*;
    import com.kbmj.viking.vo.tactics.*;

    public class HomeVO extends Object
    {
        private var _resourceVO:ResourceVO;
        private var _stageName:String;
        private var _grids:Array;
        private var _units:Array;
        private var _mapVO:MapVO;

        public function HomeVO()
        {
            _units = new Array();
            _grids = new Array();
            return;
        }// end function

        public function get resourceVO() : ResourceVO
        {
            return _resourceVO;
        }// end function

        public function get stageName() : String
        {
            return _stageName;
        }// end function

        public function get grids() : Array
        {
            return _grids;
        }// end function

        public function get units() : Array
        {
            return _units;
        }// end function

        public function set mapVO(param1:MapVO) : void
        {
            _mapVO = param1;
            return;
        }// end function

        public function set stageName(param1:String) : void
        {
            _stageName = param1;
            return;
        }// end function

        public function get mapVO() : MapVO
        {
            return _mapVO;
        }// end function

        public function set grids(param1:Array) : void
        {
            _grids = param1;
            return;
        }// end function

        public function set resourceVO(param1:ResourceVO) : void
        {
            _resourceVO = param1;
            return;
        }// end function

        public function set units(param1:Array) : void
        {
            _units = param1;
            return;
        }// end function

    }
}
