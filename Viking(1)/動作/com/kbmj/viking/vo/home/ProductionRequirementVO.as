package com.kbmj.viking.vo.home
{

    public class ProductionRequirementVO extends Object
    {
        private var _masterVO:Object;
        private var _quantity:int;

        public function ProductionRequirementVO()
        {
            return;
        }// end function

        public function get masterVO() : Object
        {
            return _masterVO;
        }// end function

        public function get quantity() : int
        {
            return _quantity;
        }// end function

        public function set masterVO(param1:Object) : void
        {
            _masterVO = param1;
            return;
        }// end function

        public function set quantity(param1:int) : void
        {
            _quantity = param1;
            return;
        }// end function

    }
}
