package com.kbmj.viking.view.home
{
    import flash.utils.*;
    import mx.core.*;

    public class DispatchDownIconRenderer_EmbedSwfCommandIcon extends MovieClipLoaderAsset
    {
        public var dataClass:Class;
        private static var bytes:ByteArray = null;

        public function DispatchDownIconRenderer_EmbedSwfCommandIcon()
        {
            dataClass = DispatchDownIconRenderer_EmbedSwfCommandIcon_dataClass;
            initialWidth = 1700 / 20;
            initialHeight = 1400 / 20;
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
