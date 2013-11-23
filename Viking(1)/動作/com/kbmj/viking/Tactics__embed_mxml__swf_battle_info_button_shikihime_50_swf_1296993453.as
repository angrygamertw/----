package com.kbmj.viking
{
    import flash.utils.*;
    import mx.core.*;

    public class Tactics__embed_mxml__swf_battle_info_button_shikihime_50_swf_1296993453 extends MovieClipLoaderAsset
    {
        public var dataClass:Class;
        private static var bytes:ByteArray = null;

        public function Tactics__embed_mxml__swf_battle_info_button_shikihime_50_swf_1296993453()
        {
            dataClass = Tactics__embed_mxml__swf_battle_info_button_shikihime_50_swf_1296993453_dataClass;
            initialWidth = 1000 / 20;
            initialHeight = 1000 / 20;
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
