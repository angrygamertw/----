package com.kbmj.viking
{
    import flash.utils.*;
    import mx.core.*;

    public class AllMap__embed_mxml__swf_all_map_button_back_swf_2104410221 extends MovieClipLoaderAsset
    {
        public var dataClass:Class;
        private static var bytes:ByteArray = null;

        public function AllMap__embed_mxml__swf_all_map_button_back_swf_2104410221()
        {
            dataClass = AllMap__embed_mxml__swf_all_map_button_back_swf_2104410221_dataClass;
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
