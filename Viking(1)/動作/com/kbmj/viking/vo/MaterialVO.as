package com.kbmj.viking.vo
{

    public class MaterialVO extends BaseBelongingVO
    {
        private var _materialId:int;
        private var _name:String;
        private var _quantity:int;
        public static const BELONGING_TYPE:String = "material";

        public function MaterialVO()
        {
            _name = new String();
            return;
        }// end function

        public function get phonetic() : String
        {
            return _masterVO.phonetic;
        }// end function

        public function set materialId(param1:int) : void
        {
            _materialId = param1;
            return;
        }// end function

        public function set name(param1:String) : void
        {
            _name = param1;
            return;
        }// end function

        public function set phonetic(param1:String) : void
        {
            return;
        }// end function

        public function get materialId() : int
        {
            return _materialId;
        }// end function

        public function get quantity() : int
        {
            return _quantity;
        }// end function

        public function get code() : String
        {
            return _masterVO.code;
        }// end function

        public function get name() : String
        {
            return _name;
        }// end function

        public function set quantity(param1:int) : void
        {
            _quantity = param1;
            return;
        }// end function

        public function get rarity() : int
        {
            return _masterVO.rarity;
        }// end function

        public function get description() : String
        {
            return _masterVO.description;
        }// end function

        override public function get belongingType() : String
        {
            return BELONGING_TYPE;
        }// end function

        override public function get belongingId() : int
        {
            return _materialId;
        }// end function

    }
}
