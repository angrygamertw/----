package com.kbmj.viking.proxy
{
    import com.kbmj.viking.vo.*;
    import org.puremvc.as3.patterns.proxy.*;

    public class MultipleLoadProxy extends Proxy
    {
        private var _loadsInProgress:Object;
        private var _responseCache:Object;
        public static const ONE_OF_LOADS_COMPLETE:String = NAME + "/notes/OneOfLoadsComplete";
        public static const NAME:String = "MultipleLoadProxy";

        public function MultipleLoadProxy()
        {
            _loadsInProgress = new Object();
            _responseCache = new Object();
            super(NAME);
            return;
        }// end function

        public function get responseCache() : Object
        {
            return _responseCache;
        }// end function

        public function loadMultiple(param1:String, param2:String, param3:Array) : void
        {
            var _loc_4:LoadDetailVO = null;
            var _loc_5:LoaderProxy = null;
            loadsInProgress[param1] = {count:param3.length, completeEventName:param2};
            for each (_loc_4 in param3)
            {
                
                _loc_5 = _loc_4.proxy;
                _loc_5.redirections[_loc_4.redirectFrom] = {redirectTo:ONE_OF_LOADS_COMPLETE, body:param1};
                if (_loc_4.params && _loc_4.params.length > 0)
                {
                    _loc_5[_loc_4.functionName].apply(_loc_5, _loc_4.params);
                    continue;
                }
                var _loc_8:* = _loc_5;
                _loc_8._loc_5[_loc_4.functionName]();
            }
            return;
        }// end function

        public function loadComplete(param1:String, param2:Object, param3:String) : void
        {
            var _loc_5:Object = null;
            var _loc_4:* = loadsInProgress[param1];
            if (!_responseCache[param1])
            {
                _responseCache[param1] = new Object();
            }
            _responseCache[param1][param3] = param2;
            var _loc_6:* = _loc_4;
            _loc_6.count = _loc_4.count - 1;
            if (_loc_4 && --_loc_4.count == 0)
            {
                _loc_5 = _responseCache[param1];
                delete _responseCache[param1];
                sendNotification(_loc_4.completeEventName, _loc_5);
            }
            return;
        }// end function

        public function set loadsInProgress(param1:Object) : void
        {
            _loadsInProgress = param1;
            return;
        }// end function

        public function get loadsInProgress() : Object
        {
            return _loadsInProgress;
        }// end function

    }
}
