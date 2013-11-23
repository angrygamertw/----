package com.kbmj.viking
{
    import flash.utils.*;
    import mx.core.*;

    public class Home__embed_mxml__swf_home_buttons_button_item_swf_924773449 extends MovieClipLoaderAsset
    {
        public var dataClass:Class;
        private static var bytes:ByteArray = null;

        public function Home__embed_mxml__swf_home_buttons_button_item_swf_924773449()
        {
            dataClass = Home__embed_mxml__swf_home_buttons_button_item_swf_924773449_dataClass;
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
