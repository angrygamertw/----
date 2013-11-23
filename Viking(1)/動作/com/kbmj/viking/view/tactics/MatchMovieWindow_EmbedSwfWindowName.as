package com.kbmj.viking.view.tactics
{
    import flash.utils.*;
    import mx.core.*;

    public class MatchMovieWindow_EmbedSwfWindowName extends MovieClipLoaderAsset
    {
        public var dataClass:Class;
        private static var bytes:ByteArray = null;

        public function MatchMovieWindow_EmbedSwfWindowName()
        {
            dataClass = MatchMovieWindow_EmbedSwfWindowName_dataClass;
            initialWidth = 5200 / 20;
            initialHeight = 1700 / 20;
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
