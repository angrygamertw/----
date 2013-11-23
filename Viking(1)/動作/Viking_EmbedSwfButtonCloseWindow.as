package 
{
    import flash.utils.*;
    import mx.core.*;

    public class Viking_EmbedSwfButtonCloseWindow extends MovieClipLoaderAsset
    {
        public var dataClass:Class;
        private static var bytes:ByteArray = null;

        public function Viking_EmbedSwfButtonCloseWindow()
        {
            dataClass = Viking_EmbedSwfButtonCloseWindow_dataClass;
            initialWidth = 500 / 20;
            initialHeight = 500 / 20;
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
