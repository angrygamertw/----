package 
{
    import flash.utils.*;
    import mx.core.*;

    public class Viking_EmbedSwfButtonCommon extends MovieClipLoaderAsset
    {
        public var dataClass:Class;
        private static var bytes:ByteArray = null;

        public function Viking_EmbedSwfButtonCommon()
        {
            dataClass = Viking_EmbedSwfButtonCommon_dataClass;
            initialWidth = 2200 / 20;
            initialHeight = 600 / 20;
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
