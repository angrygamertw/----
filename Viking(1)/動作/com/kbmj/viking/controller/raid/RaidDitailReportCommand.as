package com.kbmj.viking.controller.raid
{
    import org.puremvc.as3.interfaces.*;
    import org.puremvc.as3.patterns.command.*;

    public class RaidDitailReportCommand extends SimpleCommand
    {
        public static const NAME:String = "RaidDitailReportCommand";
        public static const SHOW_REPORT:String = NAME + "/notes/showReport";

        public function RaidDitailReportCommand()
        {
            return;
        }// end function

        override public function execute(param1:INotification) : void
        {
            var _loc_2:* = new Object();
            _loc_2 = param1.getBody() as Object;
            sendNotification(SHOW_REPORT, _loc_2);
            return;
        }// end function

    }
}
