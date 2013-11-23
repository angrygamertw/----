package com.kbmj.viking.controller
{
    import com.kbmj.viking.proxy.*;
    import com.kbmj.viking.vo.*;
    import org.puremvc.as3.interfaces.*;
    import org.puremvc.as3.patterns.command.*;

    public class ReportErrorCommand extends SimpleCommand
    {

        public function ReportErrorCommand()
        {
            return;
        }// end function

        override public function execute(param1:INotification) : void
        {
            var _loc_2:* = ErrorReportProxy(facade.retrieveProxy(ErrorReportProxy.NAME));
            var _loc_3:* = param1.getBody() as ErrorReportVO;
            _loc_2.reportError(_loc_3);
            return;
        }// end function

    }
}
