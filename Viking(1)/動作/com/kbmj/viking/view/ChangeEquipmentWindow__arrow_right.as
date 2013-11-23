package com.kbmj.viking.view
{
    import flash.utils.*;
    import mx.core.*;

    public class ChangeEquipmentWindow__arrow_right extends MovieClipLoaderAsset
    {
        public var dataClass:Class;
        private static var bytes:ByteArray = null;

        public function ChangeEquipmentWindow__arrow_right()
        {
            dataClass = ChangeEquipmentWindow__arrow_right_dataClass;
            initialWidth = 800 / 20;
            initialHeight = 800 / 20;
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
