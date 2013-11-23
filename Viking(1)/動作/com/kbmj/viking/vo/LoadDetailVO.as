package com.kbmj.viking.vo
{
    import com.kbmj.viking.proxy.*;

    public class LoadDetailVO extends Object
    {
        private var _functionName:String;
        private var _redirectFrom:String;
        private var _params:Array;
        private var _proxy:LoaderProxy;

        public function LoadDetailVO(param1:LoaderProxy, param2:String, param3:String, param4:Array = null)
        {
            _proxy = param1;
            _functionName = param2;
            _redirectFrom = param3;
            _params = param4;
            return;
        }// end function

        public function get functionName() : String
        {
            return _functionName;
        }// end function

        public function get redirectFrom() : String
        {
            return _redirectFrom;
        }// end function

        public function get params() : Array
        {
            return _params;
        }// end function

        public function get proxy() : LoaderProxy
        {
            return _proxy;
        }// end function

    }
}
