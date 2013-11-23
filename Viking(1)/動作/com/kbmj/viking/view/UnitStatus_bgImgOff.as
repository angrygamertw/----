package com.kbmj.viking.view
{
    import flash.utils.*;
    import mx.core.*;

    public class UnitStatus_bgImgOff extends MovieClipLoaderAsset
    {
        public var dataClass:Class;
        private static var bytes:ByteArray = null;

        public function UnitStatus_bgImgOff()
        {
            dataClass = UnitStatus_bgImgOff_dataClass;
            initialWidth = 15200 / 20;
            initialHeight = 4800 / 20;
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
