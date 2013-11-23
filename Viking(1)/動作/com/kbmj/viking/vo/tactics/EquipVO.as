package com.kbmj.viking.vo.tactics
{
    import com.kbmj.viking.vo.*;

    public class EquipVO extends Object
    {
        private var _unit:UnitVO;
        private var _weapon:WeaponVO;

        public function EquipVO(param1:UnitVO, param2:WeaponVO)
        {
            _unit = param1;
            _weapon = param2;
            return;
        }// end function

        public function get unit() : UnitVO
        {
            return _unit;
        }// end function

        public function set unit(param1:UnitVO) : void
        {
            _unit = param1;
            return;
        }// end function

        public function get weapon() : WeaponVO
        {
            return _weapon;
        }// end function

        public function set weapon(param1:WeaponVO) : void
        {
            _weapon = param1;
            return;
        }// end function

    }
}
