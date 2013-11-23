package com.kbmj.viking.view.allMap
{
    import flash.utils.*;
    import mx.core.*;

    public class InitHomeWindow_notSelectableThreeByThreeImage extends MovieClipLoaderAsset
    {
        public var dataClass:Class;
        private static var bytes:ByteArray = null;

        public function InitHomeWindow_notSelectableThreeByThreeImage()
        {
            dataClass = InitHomeWindow_notSelectableThreeByThreeImage_dataClass;
            initialWidth = 2020 / 20;
            initialHeight = 2020 / 20;
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
