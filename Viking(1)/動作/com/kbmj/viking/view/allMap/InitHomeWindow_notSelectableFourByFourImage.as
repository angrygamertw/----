package com.kbmj.viking.view.allMap
{
    import flash.utils.*;
    import mx.core.*;

    public class InitHomeWindow_notSelectableFourByFourImage extends MovieClipLoaderAsset
    {
        public var dataClass:Class;
        private static var bytes:ByteArray = null;

        public function InitHomeWindow_notSelectableFourByFourImage()
        {
            dataClass = InitHomeWindow_notSelectableFourByFourImage_dataClass;
            initialWidth = 1400 / 20;
            initialHeight = 1400 / 20;
            return;
        }// end function

        override public function get movieClipData() : ByteArray
        {
            if (bytes == null)
            {
                bytes = ByteArray(new dataClass());
            }
            return bytes;
        }// end function

    }
}
