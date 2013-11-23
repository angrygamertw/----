package com.kbmj.viking.view.home
{
    import flash.utils.*;
    import mx.core.*;

    public class HomeAllItem__embed_mxml__swf_common_button_close_window_swf_1370265653 extends MovieClipLoaderAsset
    {
        public var dataClass:Class;
        private static var bytes:ByteArray = null;

        public function HomeAllItem__embed_mxml__swf_common_button_close_window_swf_1370265653()
        {
            dataClass = HomeAllItem__embed_mxml__swf_common_button_close_window_swf_1370265653_dataClass;
            initialWidth = 500 / 20;
            initialHeight = 500 / 20;
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
