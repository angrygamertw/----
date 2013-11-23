package com.kbmj.viking.view.home
{
    import flash.utils.*;
    import mx.core.*;

    public class RaidReportDitail__embed_mxml__swf_battle_report_window_report_swf_144807557 extends MovieClipLoaderAsset
    {
        public var dataClass:Class;
        private static var bytes:ByteArray = null;

        public function RaidReportDitail__embed_mxml__swf_battle_report_window_report_swf_144807557()
        {
            dataClass = RaidReportDitail__embed_mxml__swf_battle_report_window_report_swf_144807557_dataClass;
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
