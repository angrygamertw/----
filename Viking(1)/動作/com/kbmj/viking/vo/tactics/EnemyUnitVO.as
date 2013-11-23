package com.kbmj.viking.vo.tactics
{

    public class EnemyUnitVO extends UnitVO
    {
        private var _avoidance:int;

        public function EnemyUnitVO()
        {
            return;
        }// end function

        public function set avoidance(param1:int) : void
        {
            _avoidance = param1;
            return;
        }// end function

        override public function get avoidance() : int
        {
            return _avoidance;
        }// end function

    }
}
