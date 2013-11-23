package com.kbmj.viking.view.home
{
    import flash.utils.*;
    import mx.core.*;

    public class ProductionWindow__embed_mxml__swf_common_arrow_bottom_swf_1091498217 extends MovieClipLoaderAsset
    {
        public var dataClass:Class;
        private static var bytes:ByteArray = null;

        public function ProductionWindow__embed_mxml__swf_common_arrow_bottom_swf_1091498217()
        {
            dataClass = ProductionWindow__embed_mxml__swf_common_arrow_bottom_swf_1091498217_dataClass;
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
