package com.kbmj.viking.vo.tactics
{

    public class AiVO extends Object
    {
        private var _weakpoint:int = 0;
        private var _state:int;
        private var _type:int = 0;
        public static const TYPE_AGGRESSIVE:int = 0;
        public static const WEAKPOINT_FIRST_TURN:int = 4;
        public static const TYPE_PASSIVE:int = 1;
        public static const WEAKPOINT_LOW_MAGIC_DEFENCE:int = 2;
        public static const STATE_ATTACK:int = 1;
        public static const STATE_WALK:int = 0;
        public static const WEAKPOINT_INDISCRIMINATE:int = 0;
        public static const WEAKPOINT_LOW_HP:int = 3;
        public static const WEAKPOINT_LOW_DEFENCE:int = 1;

        public function AiVO(param1:int = 0) : void
        {
            weakpoint = param1;
            return;
        }// end function

        public function set state(param1:int) : void
        {
            _state = param1;
            return;
        }// end function

        public function set weakpoint(param1:int) : void
        {
            _weakpoint = param1;
            return;
        }// end function

        public function get state() : int
        {
            return _state;
        }// end function

        public function set type(param1:int) : void
        {
            _type = param1;
            return;
        }// end function

        public function get weakpoint() : int
        {
            return _weakpoint;
        }// end function

        public function get type() : int
        {
            return _type;
        }// end function

    }
}
