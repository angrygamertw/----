package com.kbmj.viking.view.tactics
{
    import flash.utils.*;
    import mx.core.*;

    public class MissionWindow__embed_mxml__swf_battle_info_icon_skull_swf_121990859 extends MovieClipLoaderAsset
    {
        public var dataClass:Class;
        private static var bytes:ByteArray = null;

        public function MissionWindow__embed_mxml__swf_battle_info_icon_skull_swf_121990859()
        {
            dataClass = MissionWindow__embed_mxml__swf_battle_info_icon_skull_swf_121990859_dataClass;
            initialWidth = 320 / 20;
            initialHeight = 320 / 20;
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
