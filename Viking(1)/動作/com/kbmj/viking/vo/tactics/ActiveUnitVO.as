package com.kbmj.viking.vo.tactics
{

    public class ActiveUnitVO extends Object
    {
        private var _unit:UnitVO;
        private var _playerName:String;

        public function ActiveUnitVO(param1:UnitVO, param2:String) : void
        {
            _unit = param1;
            _playerName = param2;
            return;
        }// end function

        public function get unit() : UnitVO
        {
            return _unit;
        }// end function

        public function get playerName() : String
        {
            return _playerName;
        }// end function

    }
}
