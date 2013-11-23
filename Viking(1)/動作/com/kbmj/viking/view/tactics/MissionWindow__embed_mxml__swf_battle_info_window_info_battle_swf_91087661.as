package com.kbmj.viking.view.tactics
{
    import flash.utils.*;
    import mx.core.*;

    public class MissionWindow__embed_mxml__swf_battle_info_window_info_battle_swf_91087661 extends MovieClipLoaderAsset
    {
        public var dataClass:Class;
        private static var bytes:ByteArray = null;

        public function MissionWindow__embed_mxml__swf_battle_info_window_info_battle_swf_91087661()
        {
            dataClass = MissionWindow__embed_mxml__swf_battle_info_window_info_battle_swf_91087661_dataClass;
            initialWidth = 6100 / 20;
            initialHeight = 1200 / 20;
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
