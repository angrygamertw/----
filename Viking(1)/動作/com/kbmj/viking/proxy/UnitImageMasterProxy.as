package com.kbmj.viking.proxy
{
    import com.kbmj.viking.vo.home.*;

    public class UnitImageMasterProxy extends LoaderProxy
    {
        private var _imagesHf:Array;
        private var _images:Object;
        public static const NAME:String = "UnitImageMasterProxy";
        public static const UNIT_IMAGE_LOADED_COMPLETE:String = NAME + "/notes/unitImageLoadedComplete";

        public function UnitImageMasterProxy()
        {
            _imagesHf = new Array();
            super(NAME);
            return;
        }// end function

        override public function onRegister() : void
        {
            return;
        }// end function

        public function get imagesHf() : Array
        {
            return _imagesHf;
        }// end function

        public function loadImages(param1:String) : void
        {
            var _loc_3:UnitImageVO = null;
            var _loc_2:* = ImageProxy(facade.retrieveProxy(ImageProxy.NAME));
            for each (_loc_3 in _images[param1])
            {
                
                _loc_2.loadImage(_loc_3, "image", _loc_3.path);
            }
            return;
        }// end function

        public function getImagesByType(param1:String) : Array
        {
            return _images[param1];
        }// end function

    }
}
