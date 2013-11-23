package com.kbmj.viking.view.home
{
    import flash.utils.*;
    import mx.core.*;

    public class HomeAllGallery_EmbedSwfWindowGalleryList extends MovieClipLoaderAsset
    {
        public var dataClass:Class;
        private static var bytes:ByteArray = null;

        public function HomeAllGallery_EmbedSwfWindowGalleryList()
        {
            dataClass = HomeAllGallery_EmbedSwfWindowGalleryList_dataClass;
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
