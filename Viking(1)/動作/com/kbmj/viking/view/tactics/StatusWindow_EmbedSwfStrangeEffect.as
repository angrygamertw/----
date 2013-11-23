package com.kbmj.viking.view.tactics
{
    import flash.utils.*;
    import mx.core.*;

    public class StatusWindow_EmbedSwfStrangeEffect extends MovieClipLoaderAsset
    {
        public var dataClass:Class;
        private static var bytes:ByteArray = null;

        public function StatusWindow_EmbedSwfStrangeEffect()
        {
            dataClass = StatusWindow_EmbedSwfStrangeEffect_dataClass;
            initialWidth = 480 / 20;
            initialHeight = 480 / 20;
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
