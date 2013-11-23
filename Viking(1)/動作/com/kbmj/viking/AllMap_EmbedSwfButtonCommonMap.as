package com.kbmj.viking
{
    import flash.utils.*;
    import mx.core.*;

    public class AllMap_EmbedSwfButtonCommonMap extends MovieClipLoaderAsset
    {
        public var dataClass:Class;
        private static var bytes:ByteArray = null;

        public function AllMap_EmbedSwfButtonCommonMap()
        {
            dataClass = AllMap_EmbedSwfButtonCommonMap_dataClass;
            initialWidth = 1800 / 20;
            initialHeight = 400 / 20;
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
