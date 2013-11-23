package com.kbmj.viking.vo.tactics
{
    import com.kbmj.viking.vo.*;

    public class UseItemVO extends OrderDetailVO
    {
        private var _newHp:int;
        private var _effect:int;
        private var _item:ItemVO;

        public function UseItemVO(param1:UnitVO, param2:ItemVO, param3:int = 0)
        {
            super(param1);
            _item = param2;
            _effect = param3;
            return;
        }// end function

        public function set effect(param1:int) : void
        {
            _effect = param1;
            return;
        }// end function

        public function set item(param1:ItemVO) : void
        {
            _item = param1;
            return;
        }// end function

        public function get newHp() : int
        {
            return _newHp;
        }// end function

        public function get effect() : int
        {
            return _effect;
        }// end function

        public function set newHp(param1:int) : void
        {
            _newHp = param1;
            return;
        }// end function

        public function get item() : ItemVO
        {
            return _item;
        }// end function

    }
}
