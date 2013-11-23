package 
{
    import flash.utils.*;
    import mx.core.*;

    public class Viking_EmbedSwfTabCommon extends MovieClipLoaderAsset
    {
        public var dataClass:Class;
        private static var bytes:ByteArray = null;

        public function Viking_EmbedSwfTabCommon()
        {
            dataClass = Viking_EmbedSwfTabCommon_dataClass;
            initialWidth = 12000 / 20;
            initialHeight = 560 / 20;
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
