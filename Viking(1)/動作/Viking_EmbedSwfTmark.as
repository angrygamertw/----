package 
{
    import flash.utils.*;
    import mx.core.*;

    public class Viking_EmbedSwfTmark extends MovieClipLoaderAsset
    {
        public var dataClass:Class;
        private static var bytes:ByteArray = null;

        public function Viking_EmbedSwfTmark()
        {
            dataClass = Viking_EmbedSwfTmark_dataClass;
            initialWidth = 540 / 20;
            initialHeight = 720 / 20;
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
