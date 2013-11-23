package com.kbmj.viking.view
{
    import flash.utils.*;
    import mx.core.*;

    public class GuildChatWindow__embed_mxml__swf_guild_chat_button_info_chatenter_swf_162954869 extends MovieClipLoaderAsset
    {
        public var dataClass:Class;
        private static var bytes:ByteArray = null;

        public function GuildChatWindow__embed_mxml__swf_guild_chat_button_info_chatenter_swf_162954869()
        {
            dataClass = GuildChatWindow__embed_mxml__swf_guild_chat_button_info_chatenter_swf_162954869_dataClass;
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
