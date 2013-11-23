package 
{
    import flash.utils.*;
    import mx.core.*;

    public class Viking_LoadingCursor extends MovieClipLoaderAsset
    {
        public var dataClass:Class;
        private static var bytes:ByteArray = null;

        public function Viking_LoadingCursor()
        {
            dataClass = Viking_LoadingCursor_dataClass;
            initialWidth = 400 / 20;
            initialHeight = 400 / 20;
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
