package com.kbmj.viking
{
    import flash.utils.*;
    import mx.core.*;

    public class Home__embed_mxml__swf_window_info_home_swf_1388347787 extends MovieClipLoaderAsset
    {
        public var dataClass:Class;
        private static var bytes:ByteArray = null;

        public function Home__embed_mxml__swf_window_info_home_swf_1388347787()
        {
            dataClass = Home__embed_mxml__swf_window_info_home_swf_1388347787_dataClass;
            initialWidth = 7600 / 20;
            initialHeight = 1500 / 20;
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
