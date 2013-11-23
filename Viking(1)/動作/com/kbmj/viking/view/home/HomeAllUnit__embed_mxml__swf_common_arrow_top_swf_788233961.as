package com.kbmj.viking.view.home
{
    import flash.utils.*;
    import mx.core.*;

    public class HomeAllUnit__embed_mxml__swf_common_arrow_top_swf_788233961 extends MovieClipLoaderAsset
    {
        public var dataClass:Class;
        private static var bytes:ByteArray = null;

        public function HomeAllUnit__embed_mxml__swf_common_arrow_top_swf_788233961()
        {
            dataClass = HomeAllUnit__embed_mxml__swf_common_arrow_top_swf_788233961_dataClass;
            initialWidth = 800 / 20;
            initialHeight = 800 / 20;
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
