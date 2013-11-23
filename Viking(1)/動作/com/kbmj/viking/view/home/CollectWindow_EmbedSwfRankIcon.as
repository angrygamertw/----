package com.kbmj.viking.view.home
{
    import flash.utils.*;
    import mx.core.*;

    public class CollectWindow_EmbedSwfRankIcon extends MovieClipLoaderAsset
    {
        public var dataClass:Class;
        private static var bytes:ByteArray = null;

        public function CollectWindow_EmbedSwfRankIcon()
        {
            dataClass = CollectWindow_EmbedSwfRankIcon_dataClass;
            initialWidth = 320 / 20;
            initialHeight = 320 / 20;
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
