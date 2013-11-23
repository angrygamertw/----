package com.kbmj.viking.vo.tactics
{

    public class RewardVO extends Object
    {
        private var _items:Array;
        private var _unitExps:Array;

        public function RewardVO(param1:Array, param2:Array)
        {
            _items = param1;
            _unitExps = param2;
            return;
        }// end function

        public function get items() : Array
        {
            return _items;
        }// end function

        public function set unitExps(param1:Array) : void
        {
            _unitExps = param1;
            return;
        }// end function

        public function set items(param1:Array) : void
        {
            _items = param1;
            return;
        }// end function

        public function get unitExps() : Array
        {
            return _unitExps;
        }// end function

    }
}
