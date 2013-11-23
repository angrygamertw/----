package com.kbmj.viking.view
{
    import flash.utils.*;
    import mx.core.*;

    public class PlayerStatus__embed_mxml__swf_home_unit_status_icon_icon_battle_swf_561096717 extends MovieClipLoaderAsset
    {
        public var dataClass:Class;
        private static var bytes:ByteArray = null;

        public function PlayerStatus__embed_mxml__swf_home_unit_status_icon_icon_battle_swf_561096717()
        {
            dataClass = PlayerStatus__embed_mxml__swf_home_unit_status_icon_icon_battle_swf_561096717_dataClass;
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
