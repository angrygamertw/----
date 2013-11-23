package com.kbmj.viking.view
{
    import flash.utils.*;
    import mx.core.*;

    public class PlayerStatus_platina extends MovieClipLoaderAsset
    {
        public var dataClass:Class;
        private static var bytes:ByteArray = null;

        public function PlayerStatus_platina()
        {
            dataClass = PlayerStatus_platina_dataClass;
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
