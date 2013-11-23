package com.kbmj.viking.vo
{

    public class AwakeMasterVO extends Object
    {
        private var _beforeGalleryCode:String;
        private var _itemCode:String;
        private var _afterGalleryCode:String;
        private var _itemType:String;
        private var _masterId:int;

        public function AwakeMasterVO()
        {
            return;
        }// end function

        public function get beforeGalleryCode() : String
        {
            return _beforeGalleryCode;
        }// end function

        public function get afterGalleryCode() : String
        {
            return _afterGalleryCode;
        }// end function

        public function get itemCode() : String
        {
            return _itemCode;
        }// end function

        public function get itemType() : String
        {
            return _itemType;
        }// end function

        public function set beforeGalleryCode(param1:String) : void
        {
            _beforeGalleryCode = param1;
            return;
        }// end function

        public function set itemType(param1:String) : void
        {
            _itemType = param1;
            return;
        }// end function

        public function set afterGalleryCode(param1:String) : void
        {
            _afterGalleryCode = param1;
            return;
        }// end function

        public function set itemCode(param1:String) : void
        {
            _itemCode = param1;
            return;
        }// end function

        public function set masterId(param1:int) : void
        {
            _masterId = param1;
            return;
        }// end function

        public function get masterId() : int
        {
            return _masterId;
        }// end function

    }
}
