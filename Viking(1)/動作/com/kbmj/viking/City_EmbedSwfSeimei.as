package com.kbmj.viking
{
    import flash.utils.*;
    import mx.core.*;

    public class City_EmbedSwfSeimei extends MovieClipLoaderAsset
    {
        public var dataClass:Class;
        private static var bytes:ByteArray = null;

        public function City_EmbedSwfSeimei()
        {
            dataClass = City_EmbedSwfSeimei_dataClass;
            initialWidth = 7200 / 20;
            initialHeight = 9700 / 20;
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
