package com.kbmj.viking.view.tactics
{
    import flash.utils.*;
    import mx.core.*;

    public class MultiPlayerTimerWindow__embed_mxml__swf_battle_info_window_info_time_swf_965184187 extends MovieClipLoaderAsset
    {
        public var dataClass:Class;
        private static var bytes:ByteArray = null;

        public function MultiPlayerTimerWindow__embed_mxml__swf_battle_info_window_info_time_swf_965184187()
        {
            dataClass = MultiPlayerTimerWindow__embed_mxml__swf_battle_info_window_info_time_swf_965184187_dataClass;
            initialWidth = 4000 / 20;
            initialHeight = 2200 / 20;
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
