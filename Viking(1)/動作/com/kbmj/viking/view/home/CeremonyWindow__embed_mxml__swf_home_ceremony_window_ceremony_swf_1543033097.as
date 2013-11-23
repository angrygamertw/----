package com.kbmj.viking.view.home
{
    import flash.utils.*;
    import mx.core.*;

    public class CeremonyWindow__embed_mxml__swf_home_ceremony_window_ceremony_swf_1543033097 extends MovieClipLoaderAsset
    {
        public var dataClass:Class;
        private static var bytes:ByteArray = null;

        public function CeremonyWindow__embed_mxml__swf_home_ceremony_window_ceremony_swf_1543033097()
        {
            dataClass = CeremonyWindow__embed_mxml__swf_home_ceremony_window_ceremony_swf_1543033097_dataClass;
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
