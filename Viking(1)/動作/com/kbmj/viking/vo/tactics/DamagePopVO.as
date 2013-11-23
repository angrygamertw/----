package com.kbmj.viking.vo.tactics
{

    public class DamagePopVO extends OrderDetailVO
    {
        private var _damage:int;

        public function DamagePopVO(param1:UnitVO, param2:int)
        {
            super(param1);
            _damage = param2;
            return;
        }// end function

        public function set damage(param1:int) : void
        {
            _damage = param1;
            return;
        }// end function

        public function get damage() : int
        {
            return _damage;
        }// end function

    }
}
