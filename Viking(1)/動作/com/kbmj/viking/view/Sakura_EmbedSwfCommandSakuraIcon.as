﻿package com.kbmj.viking.view
{
    import flash.utils.*;
    import mx.core.*;

    public class Sakura_EmbedSwfCommandSakuraIcon extends MovieClipLoaderAsset
    {
        public var dataClass:Class;
        private static var bytes:ByteArray = null;

        public function Sakura_EmbedSwfCommandSakuraIcon()
        {
            dataClass = Sakura_EmbedSwfCommandSakuraIcon_dataClass;
            initialWidth = 1700 / 20;
            initialHeight = 1400 / 20;
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
