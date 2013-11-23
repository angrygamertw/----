package com.kbmj.viking.view.city
{
    import flash.utils.*;
    import mx.core.*;

    public class GuildMasterWindowButtonRenderer_appointment_swf extends MovieClipLoaderAsset
    {
        public var dataClass:Class;
        private static var bytes:ByteArray = null;

        public function GuildMasterWindowButtonRenderer_appointment_swf()
        {
            dataClass = GuildMasterWindowButtonRenderer_appointment_swf_dataClass;
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
