package com.kbmj.viking.lib.error
{
    import com.kbmj.viking.vo.tactics.*;

    public class InvalidActionError extends Error
    {
        private var _unit:UnitVO;

        public function InvalidActionError(param1:UnitVO, param2:String = "")
        {
            _unit = param1;
            super(param2);
            return;
        }// end function

        public function get unit() : UnitVO
        {
            return _unit;
        }// end function

    }
}
