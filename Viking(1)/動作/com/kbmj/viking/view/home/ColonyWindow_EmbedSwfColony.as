package com.kbmj.viking.view.home
{
    import flash.utils.*;
    import mx.core.*;

    public class ColonyWindow_EmbedSwfColony extends MovieClipLoaderAsset
    {
        public var dataClass:Class;
        private static var bytes:ByteArray = null;

        public function ColonyWindow_EmbedSwfColony()
        {
            dataClass = ColonyWindow_EmbedSwfColony_dataClass;
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
