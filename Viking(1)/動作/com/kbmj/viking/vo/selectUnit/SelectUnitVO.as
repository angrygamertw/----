package com.kbmj.viking.vo.selectUnit
{
    import com.kbmj.viking.vo.tactics.*;

    public class SelectUnitVO extends Object
    {
        private var _mapVO:MapVO;
        private var _missionStatement:String;
        private var _selectedUnit:UnitVO;
        private var _enemies:Array;
        private var _stageName:String;
        private var _grids:Array;
        private var _units:Array;

        public function SelectUnitVO(param1:Array = null, param2:Array = null)
        {
            _units = new Array();
            _grids = new Array();
            _enemies = new Array();
            return;
        }// end function

        public function get missionStatement() : String
        {
            return _missionStatement;
        }// end function

        public function set missionStatement(param1:String) : void
        {
            _missionStatement = param1;
            return;
        }// end function

        public function set enemies(param1:Array) : void
        {
            _enemies = param1;
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

        public function set units(param1:Array) : void
        {
            _units = param1;
            return;
        }// end function

        public function get enemies() : Array
        {
            return _enemies;
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

        public function set selectedUnit(param1:UnitVO) : void
        {
            _selectedUnit = param1;
            return;
        }// end function

        public function get selectedUnit() : UnitVO
        {
            return _selectedUnit;
        }// end function

    }
}
