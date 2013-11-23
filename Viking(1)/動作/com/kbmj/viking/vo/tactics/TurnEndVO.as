package com.kbmj.viking.vo.tactics
{

    public class TurnEndVO extends Object
    {
        private var _turn:int;

        public function TurnEndVO(param1:int)
        {
            _turn = param1;
            return;
        }// end function

        public function set turn(param1:int) : void
        {
            _turn = param1;
            return;
        }// end function

        public function get turn() : int
        {
            return _turn;
        }// end function

    }
}
