package com.kbmj.viking
{
    import flash.utils.*;
    import mx.core.*;

    public class Tactics_EmbedSwfButtonSpeedUp extends MovieClipLoaderAsset
    {
        public var dataClass:Class;
        private static var bytes:ByteArray = null;

        public function Tactics_EmbedSwfButtonSpeedUp()
        {
            dataClass = Tactics_EmbedSwfButtonSpeedUp_dataClass;
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
