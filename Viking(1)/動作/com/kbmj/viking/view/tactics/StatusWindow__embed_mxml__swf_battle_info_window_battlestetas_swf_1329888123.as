package com.kbmj.viking.view.tactics
{
    import flash.utils.*;
    import mx.core.*;

    public class StatusWindow__embed_mxml__swf_battle_info_window_battlestetas_swf_1329888123 extends MovieClipLoaderAsset
    {
        public var dataClass:Class;
        private static var bytes:ByteArray = null;

        public function StatusWindow__embed_mxml__swf_battle_info_window_battlestetas_swf_1329888123()
        {
            dataClass = StatusWindow__embed_mxml__swf_battle_info_window_battlestetas_swf_1329888123_dataClass;
            initialWidth = 15200 / 20;
            initialHeight = 3040 / 20;
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
