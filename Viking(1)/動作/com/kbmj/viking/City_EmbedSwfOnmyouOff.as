package com.kbmj.viking
{
    import flash.utils.*;
    import mx.core.*;

    public class City_EmbedSwfOnmyouOff extends MovieClipLoaderAsset
    {
        public var dataClass:Class;
        private static var bytes:ByteArray = null;

        public function City_EmbedSwfOnmyouOff()
        {
            dataClass = City_EmbedSwfOnmyouOff_dataClass;
            initialWidth = 2520 / 20;
            initialHeight = 460 / 20;
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
