package com.kbmj.viking.view.allMap
{
    import flash.utils.*;
    import mx.core.*;

    public class GuildMemberListWindow_ListSwf extends MovieClipLoaderAsset
    {
        public var dataClass:Class;
        private static var bytes:ByteArray = null;

        public function GuildMemberListWindow_ListSwf()
        {
            dataClass = GuildMemberListWindow_ListSwf_dataClass;
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
