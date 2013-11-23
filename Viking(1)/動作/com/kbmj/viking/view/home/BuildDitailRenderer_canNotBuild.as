package com.kbmj.viking.view.home
{
    import flash.utils.*;
    import mx.core.*;

    public class BuildDitailRenderer_canNotBuild extends MovieClipLoaderAsset
    {
        public var dataClass:Class;
        private static var bytes:ByteArray = null;

        public function BuildDitailRenderer_canNotBuild()
        {
            dataClass = BuildDitailRenderer_canNotBuild_dataClass;
            initialWidth = 1500 / 20;
            initialHeight = 1500 / 20;
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
