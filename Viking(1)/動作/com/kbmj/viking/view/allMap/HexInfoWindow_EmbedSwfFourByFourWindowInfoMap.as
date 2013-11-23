package com.kbmj.viking.view.allMap
{
    import flash.utils.*;
    import mx.core.*;

    public class HexInfoWindow_EmbedSwfFourByFourWindowInfoMap extends MovieClipLoaderAsset
    {
        public var dataClass:Class;
        private static var bytes:ByteArray = null;

        public function HexInfoWindow_EmbedSwfFourByFourWindowInfoMap()
        {
            dataClass = HexInfoWindow_EmbedSwfFourByFourWindowInfoMap_dataClass;
            initialWidth = 4340 / 20;
            initialHeight = 6000 / 20;
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
