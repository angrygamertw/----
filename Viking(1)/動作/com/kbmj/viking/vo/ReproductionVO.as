package com.kbmj.viking.vo
{

    public class ReproductionVO extends Object
    {
        private var _productionVO:ProductionVO;
        private var _belongingVO:BaseBelongingVO;

        public function ReproductionVO(param1:BaseBelongingVO = null, param2:ProductionVO = null)
        {
            _belongingVO = param1;
            _productionVO = param2;
            return;
        }// end function

        public function set productionVO(param1:ProductionVO) : void
        {
            _productionVO = param1;
            return;
        }// end function

        public function set belongingVO(param1:BaseBelongingVO) : void
        {
            _belongingVO = param1;
            return;
        }// end function

        public function get productionVO() : ProductionVO
        {
            return _productionVO;
        }// end function

        public function get belongingVO() : BaseBelongingVO
        {
            return _belongingVO;
        }// end function

    }
}
