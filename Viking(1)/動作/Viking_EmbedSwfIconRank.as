package 
{
    import flash.utils.*;
    import mx.core.*;

    public class Viking_EmbedSwfIconRank extends MovieClipLoaderAsset
    {
        public var dataClass:Class;
        private static var bytes:ByteArray = null;

        public function Viking_EmbedSwfIconRank()
        {
            dataClass = Viking_EmbedSwfIconRank_dataClass;
            initialWidth = 320 / 20;
            initialHeight = 320 / 20;
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
