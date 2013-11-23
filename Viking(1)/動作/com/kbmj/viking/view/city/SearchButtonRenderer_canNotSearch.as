package com.kbmj.viking.view.city
{
    import flash.utils.*;
    import mx.core.*;

    public class SearchButtonRenderer_canNotSearch extends MovieClipLoaderAsset
    {
        public var dataClass:Class;
        private static var bytes:ByteArray = null;

        public function SearchButtonRenderer_canNotSearch()
        {
            dataClass = SearchButtonRenderer_canNotSearch_dataClass;
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
