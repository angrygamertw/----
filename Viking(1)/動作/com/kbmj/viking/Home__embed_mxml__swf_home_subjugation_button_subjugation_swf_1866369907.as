package com.kbmj.viking
{
    import flash.utils.*;
    import mx.core.*;

    public class Home__embed_mxml__swf_home_subjugation_button_subjugation_swf_1866369907 extends MovieClipLoaderAsset
    {
        public var dataClass:Class;
        private static var bytes:ByteArray = null;

        public function Home__embed_mxml__swf_home_subjugation_button_subjugation_swf_1866369907()
        {
            dataClass = Home__embed_mxml__swf_home_subjugation_button_subjugation_swf_1866369907_dataClass;
            initialWidth = 2800 / 20;
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
