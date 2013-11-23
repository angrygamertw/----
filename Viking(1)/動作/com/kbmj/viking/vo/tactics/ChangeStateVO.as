package com.kbmj.viking.vo.tactics
{

    public class ChangeStateVO extends Object
    {
        private var _newState:int;
        private var _params:Object;

        public function ChangeStateVO(param1:int, param2:Object)
        {
            _newState = param1;
            _params = param2;
            return;
        }// end function

        public function get newState() : int
        {
            return _newState;
        }// end function

        public function set newState(param1:int) : void
        {
            _newState = param1;
            return;
        }// end function

        public function get params() : Object
        {
            return _params;
        }// end function

        public function set params(param1:Object) : void
        {
            _params = param1;
            return;
        }// end function

    }
}
