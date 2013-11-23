package com.kbmj.viking
{
    import flash.utils.*;
    import mx.core.*;

    public class Tactics_EmbedSwfButtonSound extends MovieClipLoaderAsset
    {
        public var dataClass:Class;
        private static var bytes:ByteArray = null;

        public function Tactics_EmbedSwfButtonSound()
        {
            dataClass = Tactics_EmbedSwfButtonSound_dataClass;
            initialWidth = 1000 / 20;
            initialHeight = 1000 / 20;
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
