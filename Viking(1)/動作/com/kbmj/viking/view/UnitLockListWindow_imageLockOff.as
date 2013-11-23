package com.kbmj.viking.view
{
    import flash.utils.*;
    import mx.core.*;

    public class UnitLockListWindow_imageLockOff extends MovieClipLoaderAsset
    {
        public var dataClass:Class;
        private static var bytes:ByteArray = null;

        public function UnitLockListWindow_imageLockOff()
        {
            dataClass = UnitLockListWindow_imageLockOff_dataClass;
            initialWidth = 1000 / 20;
            initialHeight = 460 / 20;
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
