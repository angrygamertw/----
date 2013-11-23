package com.kbmj.viking.view.tactics
{
    import flash.utils.*;
    import mx.core.*;

    public class MatchMovieWindow_EmbedSwfWindowBg extends MovieClipLoaderAsset
    {
        public var dataClass:Class;
        private static var bytes:ByteArray = null;

        public function MatchMovieWindow_EmbedSwfWindowBg()
        {
            dataClass = MatchMovieWindow_EmbedSwfWindowBg_dataClass;
            initialWidth = 15200 / 20;
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
