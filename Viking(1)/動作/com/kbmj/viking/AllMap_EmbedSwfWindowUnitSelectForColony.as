package com.kbmj.viking
{
    import flash.utils.*;
    import mx.core.*;

    public class AllMap_EmbedSwfWindowUnitSelectForColony extends MovieClipLoaderAsset
    {
        public var dataClass:Class;
        private static var bytes:ByteArray = null;

        public function AllMap_EmbedSwfWindowUnitSelectForColony()
        {
            dataClass = AllMap_EmbedSwfWindowUnitSelectForColony_dataClass;
            initialWidth = 15200 / 20;
            initialHeight = 11200 / 20;
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
