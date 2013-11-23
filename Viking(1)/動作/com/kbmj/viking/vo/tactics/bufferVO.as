package com.kbmj.viking.vo.tactics
{

    public class bufferVO extends Object
    {
        private var _type:String;
        private var _dispell:Boolean;
        private var _value:int;
        private var _remaining:int;

        public function bufferVO(param1:String, param2:int, param3:int, param4:Boolean)
        {
            _type = param1;
            _value = param2;
            _remaining = param3;
            _dispell = param4;
            return;
        }// end function

        public function set value(param1:int) : void
        {
            _value = param1;
            return;
        }// end function

        public function get dispell() : Boolean
        {
            return _dispell;
        }// end function

        public function set dispell(param1:Boolean) : void
        {
            _dispell = param1;
            return;
        }// end function

        public function set remaining(param1:int) : void
        {
            _remaining = param1;
            return;
        }// end function

        public function get value() : int
        {
            return _value;
        }// end function

        public function set type(param1:String) : void
        {
            _type = param1;
            return;
        }// end function

        public function get remaining() : int
        {
            return _remaining;
        }// end function

        public function get type() : String
        {
            return _type;
        }// end function

    }
}
