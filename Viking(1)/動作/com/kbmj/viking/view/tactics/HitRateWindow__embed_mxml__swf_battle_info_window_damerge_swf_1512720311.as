package com.kbmj.viking.view.tactics
{
    import flash.utils.*;
    import mx.core.*;

    public class HitRateWindow__embed_mxml__swf_battle_info_window_damerge_swf_1512720311 extends MovieClipLoaderAsset
    {
        public var dataClass:Class;
        private static var bytes:ByteArray = null;

        public function HitRateWindow__embed_mxml__swf_battle_info_window_damerge_swf_1512720311()
        {
            dataClass = HitRateWindow__embed_mxml__swf_battle_info_window_damerge_swf_1512720311_dataClass;
            initialWidth = 5400 / 20;
            initialHeight = 1220 / 20;
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
