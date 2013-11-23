package com.kbmj.viking.vo.tactics
{

    public class OrderVO extends Object
    {
        private var _detail:Object;

        public function OrderVO(param1:Object)
        {
            _detail = param1;
            return;
        }// end function

        public function get detail() : Object
        {
            return _detail;
        }// end function

        public function set detail(param1:Object) : void
        {
            _detail = param1;
            return;
        }// end function

    }
}
