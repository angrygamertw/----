﻿package com.kbmj.viking.view.city
{
    import flash.utils.*;
    import mx.core.*;

    public class GuildMasterWindowButtonRenderer_remove_swf extends MovieClipLoaderAsset
    {
        public var dataClass:Class;
        private static var bytes:ByteArray = null;

        public function GuildMasterWindowButtonRenderer_remove_swf()
        {
            dataClass = GuildMasterWindowButtonRenderer_remove_swf_dataClass;
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
