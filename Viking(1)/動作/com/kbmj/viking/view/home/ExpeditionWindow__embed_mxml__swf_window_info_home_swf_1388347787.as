package com.kbmj.viking.view.home
{
    import flash.utils.*;
    import mx.core.*;

    public class ExpeditionWindow__embed_mxml__swf_window_info_home_swf_1388347787 extends MovieClipLoaderAsset
    {
        public var dataClass:Class;
        private static var bytes:ByteArray = null;

        public function ExpeditionWindow__embed_mxml__swf_window_info_home_swf_1388347787()
        {
            dataClass = ExpeditionWindow__embed_mxml__swf_window_info_home_swf_1388347787_dataClass;
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
