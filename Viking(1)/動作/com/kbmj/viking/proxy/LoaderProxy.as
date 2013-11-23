package com.kbmj.viking.proxy
{
    import com.adobe.serialization.json.*;
    import com.kbmj.viking.lib.*;
    import flash.display.*;
    import flash.events.*;
    import flash.net.*;
    import org.puremvc.as3.patterns.proxy.*;

    public class LoaderProxy extends Proxy
    {
        private var _redirections:Object;
        public static var host:String = "";
        public static const IMAGE_LOADED:String = NAME + "/notes/imageLoaded";
        public static const LOGGED_IN_ERROR:String = NAME + "/notes/loggedInError";
        public static const NAME:String = "LoaderProxy";
        public static const CDN_HOST:String = "https://cdn.funmily.com/sk";

        public function LoaderProxy(param1:String)
        {
            _redirections = new Object();
            ;
            ;
            "http://localhost:3000".host = Viking.apiHost;
            super(param1);
            return;
        }// end function

        public function loadWithJson(param1:String, param2:String, param3:String, param4:Function, param5:String, param6:String = "POST") : void
        {
            var _loc_7:* = param5 ? (JSON.decode(param5)) : ({});
            var _loc_8:* = PlayerProxy(facade.retrieveProxy(PlayerProxy.NAME));
            _loc_7["client_id"] = _loc_8.clientId;
            load(param1, param2, param4, param3, JSON.encode(_loc_7), param6, "application/json");
            return;
        }// end function

        protected function loadImage(param1:Object, param2:String, param3:String, param4:String = "") : void
        {
            var _loc_5:* = new Loader();
            new Loader().contentLoaderInfo.addEventListener(Event.COMPLETE, imageLoadedHandler(param1, param2, _loc_5, param4));
            _loc_5.load(new URLRequest(host + param3));
            return;
        }// end function

        public function load(param1:String, param2:String, param3:Function, param4:String = null, param5:String = null, param6:String = null, param7:String = null) : void
        {
            var url:* = param1;
            var eventName:* = param2;
            var converter:* = param3;
            var errorEventName:* = param4;
            var data:* = param5;
            var method:* = param6;
            var contentType:* = param7;
            url = host + url;
            var urlLoader:* = new URLLoader();
            var request:* = new URLRequest(url);
            if (data)
            {
                request.data = data;
            }
            if (method)
            {
                request.method = method;
            }
            if (contentType)
            {
                request.contentType = "application/json";
            }
            urlLoader.addEventListener(Event.COMPLETE, function (event:Event) : void
            {
                var additionalBody:Object;
                var redirectTo:String;
                var event:* = event;
                var rawData:* = String(event.target.data);
                var jsonObject:* = JSON.decode(rawData) as Object;
                if (jsonObject.response.head.status == "error")
                {
                    if (jsonObject.response.head.error_code == "200" && errorEventName)
                    {
                        sendNotification(errorEventName, jsonObject.response);
                    }
                    else if (jsonObject.response.head.error_code == "300")
                    {
                        sendNotification(LOGGED_IN_ERROR, jsonObject.response);
                    }
                    return;
                }
                try
                {
                    if (redirections[eventName])
                    {
                        additionalBody = redirections[eventName].body;
                        redirectTo = redirections[eventName].redirectTo;
                        delete redirections[eventName];
                        sendNotification(redirectTo, [additionalBody, converter.call(null, jsonObject.response.body), eventName]);
                    }
                    else if (jsonObject.response.body is Array)
                    {
                        sendNotification(eventName, converter.call(null, jsonObject.response.body as Array));
                    }
                    else
                    {
                        sendNotification(eventName, converter.call(null, jsonObject.response.body));
                    }
                }
                catch (e:Error)
                {
                    trace("error occurred while converting the response from " + url);
                    trace(e);
                }
                return;
            }// end function
            );
            urlLoader.addEventListener(IOErrorEvent.IO_ERROR, function (event:IOErrorEvent) : void
            {
                return;
            }// end function
            );
            urlLoader.load(request);
            return;
        }// end function

        public function get redirections() : Object
        {
            return _redirections;
        }// end function

        protected function imageLoadedHandler(param1:Object, param2:String, param3:Loader, param4:String) : Function
        {
            var vo:* = param1;
            var property:* = param2;
            var loader:* = param3;
            var loadIdentifier:* = param4;
            return function (event:Event) : void
            {
                vo[property] = Utils.createImage(loader.content);
                sendNotification(IMAGE_LOADED, loadIdentifier);
                return;
            }// end function
            ;
        }// end function

        public function set redirections(param1:Object) : void
        {
            _redirections = param1;
            return;
        }// end function

    }
}
