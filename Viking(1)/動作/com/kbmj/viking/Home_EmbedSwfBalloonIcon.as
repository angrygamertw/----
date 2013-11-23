package com.kbmj.viking
{
    import flash.utils.*;
    import mx.core.*;

    public class Home_EmbedSwfBalloonIcon extends MovieClipLoaderAsset
    {
        public var dataClass:Class;
        private static var bytes:ByteArray = null;

        public function Home_EmbedSwfBalloonIcon()
        {
            dataClass = Home_EmbedSwfBalloonIcon_dataClass;
            initialWidth = 9500 / 20;
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
