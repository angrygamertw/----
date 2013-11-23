package com.kbmj.viking
{
    import flash.utils.*;
    import mx.core.*;

    public class Home_EmbedSwfResearch extends MovieClipLoaderAsset
    {
        public var dataClass:Class;
        private static var bytes:ByteArray = null;

        public function Home_EmbedSwfResearch()
        {
            dataClass = Home_EmbedSwfResearch_dataClass;
            initialWidth = 4400 / 20;
            initialHeight = 11200 / 20;
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
