package com.kbmj.viking.proxy
{
    import com.adobe.serialization.json.*;
    import com.kbmj.viking.vo.*;
    import flash.system.*;

    public class ErrorReportProxy extends LoaderProxy
    {
        public static const REPORT_ERROR:String = NAME + "notes/reportError";
        public static const REPORT_ERROR_ERROR:String = NAME + "notes/reportErrorError";
        public static const REPORT_ERROR_COMPLETE:String = NAME + "notes/reportErrorComplete";
        public static const NAME:String = "ErrorReportProxy";

        public function ErrorReportProxy()
        {
            super(NAME);
            return;
        }// end function

        public function reportError(param1:ErrorReportVO) : void
        {
            var errorReport:* = param1;
            var json:* = JSON.encode({error_type:errorReport.errorType, body:errorReport.body, flash_version:Capabilities.version});
            loadWithJson("/api/player/report_error", REPORT_ERROR_COMPLETE, REPORT_ERROR_ERROR, function () : void
            {
                return;
            }// end function
            , json);
            return;
        }// end function

    }
}
