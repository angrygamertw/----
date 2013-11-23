package com.kbmj.viking.view
{
    import flash.utils.*;
    import mx.core.*;

    public class Sakura__embed_mxml__swf_common_arrow_left_swf_534170583 extends MovieClipLoaderAsset
    {
        public var dataClass:Class;
        private static var bytes:ByteArray = null;

        public function Sakura__embed_mxml__swf_common_arrow_left_swf_534170583()
        {
            dataClass = Sakura__embed_mxml__swf_common_arrow_left_swf_534170583_dataClass;
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
