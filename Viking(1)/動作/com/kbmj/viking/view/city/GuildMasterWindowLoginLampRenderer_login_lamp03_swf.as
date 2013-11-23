package com.kbmj.viking.view.city
{
    import flash.utils.*;
    import mx.core.*;

    public class GuildMasterWindowLoginLampRenderer_login_lamp03_swf extends MovieClipLoaderAsset
    {
        public var dataClass:Class;
        private static var bytes:ByteArray = null;

        public function GuildMasterWindowLoginLampRenderer_login_lamp03_swf()
        {
            dataClass = GuildMasterWindowLoginLampRenderer_login_lamp03_swf_dataClass;
            initialWidth = 480 / 20;
            initialHeight = 480 / 20;
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
