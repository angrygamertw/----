package com.kbmj.viking.view.tactics
{
    import flash.utils.*;
    import mx.core.*;

    public class MatchMovieWindow_EmbedSwfWindowComment extends MovieClipLoaderAsset
    {
        public var dataClass:Class;
        private static var bytes:ByteArray = null;

        public function MatchMovieWindow_EmbedSwfWindowComment()
        {
            dataClass = MatchMovieWindow_EmbedSwfWindowComment_dataClass;
            initialWidth = 6700 / 20;
            initialHeight = 2040 / 20;
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
