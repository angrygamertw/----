package com.kbmj.viking.view.home
{
    import flash.utils.*;
    import mx.core.*;

    public class RecipeUnionWindow_selectImage extends MovieClipLoaderAsset
    {
        public var dataClass:Class;
        private static var bytes:ByteArray = null;

        public function RecipeUnionWindow_selectImage()
        {
            dataClass = RecipeUnionWindow_selectImage_dataClass;
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
