package com.kbmj.viking.vo
{

    public class ErrorReportVO extends Object
    {
        private var _body:String;
        private var _errorType:String;

        public function ErrorReportVO(param1:String, param2:String)
        {
            _errorType = param1;
            _body = param2;
            return;
        }// end function

        public function get body() : String
        {
            return _body;
        }// end function

        public function get errorType() : String
        {
            return _errorType;
        }// end function

    }
}
