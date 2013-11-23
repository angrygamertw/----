package com.kbmj.viking.vo
{

    public class CityVO extends Object
    {
        private var _description:String;
        private var _goldPrice:int;
        private var _foodPrice:int;
        private var _cityType:int;
        private var _resourceVO:ResourceVO;
        private var _name:String;
        private var _indulgencePrice:int;
        private var _merchandises:Object;
        private var _silverPrice:int;

        public function CityVO()
        {
            return;
        }// end function

        public function get description() : String
        {
            return _description;
        }// end function

        public function get cityType() : int
        {
            return _cityType;
        }// end function

        public function get resourceVO() : ResourceVO
        {
            return _resourceVO;
        }// end function

        public function get goldPrice() : int
        {
            return _goldPrice;
        }// end function

        public function get foodPrice() : int
        {
            return _foodPrice;
        }// end function

        public function set resourceVO(param1:ResourceVO) : void
        {
            _resourceVO = param1;
            return;
        }// end function

        public function get merchandises() : Object
        {
            return _merchandises;
        }// end function

        public function set cityType(param1:int) : void
        {
            _cityType = param1;
            return;
        }// end function

        public function get name() : String
        {
            return _name;
        }// end function

        public function set name(param1:String) : void
        {
            _name = param1;
            return;
        }// end function

        public function set goldPrice(param1:int) : void
        {
            _goldPrice = param1;
            return;
        }// end function

        public function set indulgencePrice(param1:int) : void
        {
            _indulgencePrice = param1;
            return;
        }// end function

        public function set foodPrice(param1:int) : void
        {
            _foodPrice = param1;
            return;
        }// end function

        public function set merchandises(param1:Object) : void
        {
            _merchandises = param1;
            return;
        }// end function

        public function get indulgencePrice() : int
        {
            return _indulgencePrice;
        }// end function

        public function set silverPrice(param1:int) : void
        {
            _silverPrice = param1;
            return;
        }// end function

        public function get silverPrice() : int
        {
            return _silverPrice;
        }// end function

        public function set description(param1:String) : void
        {
            _description = param1;
            return;
        }// end function

    }
}
