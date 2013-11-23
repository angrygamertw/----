package com.kbmj.viking.view
{
    import flash.utils.*;
    import mx.core.*;

    public class UnitSortListWindow_imageSortOff extends MovieClipLoaderAsset
    {
        public var dataClass:Class;
        private static var bytes:ByteArray = null;

        public function UnitSortListWindow_imageSortOff()
        {
            dataClass = UnitSortListWindow_imageSortOff_dataClass;
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
