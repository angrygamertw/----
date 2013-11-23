package com.kbmj.viking.proxy
{
    import com.kbmj.viking.lib.*;
    import flash.display.*;
    import flash.events.*;
    import flash.net.*;
    import flash.utils.*;
    import org.puremvc.as3.patterns.proxy.*;

    public class ImageProxy extends Proxy
    {
        private var loadingImages:Array;
        private var images:Dictionary;
        private var toBeCalled:Array;
        public static const IMAGE_LOADED:String = NAME + "/notes/imageLoaded";
        public static const NAME:String = "ImageProxy";

        public function ImageProxy()
        {
            super(NAME);
            return;
        }// end function

        public function callAfterImageLoaded(param1:Function, param2:Array = null) : void
        {
            if (loadingImages.length == 0)
            {
                call(param1, param2);
            }
            else
            {
                toBeCalled.push({func:param1, params:param2});
            }
            return;
        }// end function

        public function callAll() : void
        {
            var _loc_2:Object = null;
            var _loc_1:* = toBeCalled.concat();
            toBeCalled = new Array();
            for each (_loc_2 in _loc_1)
            {
                
                call(_loc_2.func, _loc_2.params);
            }
            return;
        }// end function

        override public function onRegister() : void
        {
            images = new Dictionary();
            loadingImages = new Array();
            toBeCalled = new Array();
            return;
        }// end function

        private function imageLoadedHandler(param1:Object, param2:String, param3:Loader, param4:String) : Function
        {
            var vo:* = param1;
            var property:* = param2;
            var loader:* = param3;
            var url:* = param4;
            return function (event:Event) : void
            {
                var _loc_2:* = Utils.createImage(loader.content);
                vo[property] = _loc_2;
                if (!images[url])
                {
                    images[url] = Utils.createImage(loader.content);
                }
                if (loadingImages.indexOf(url) >= 0)
                {
                    loadingImages.splice(loadingImages.indexOf(url), 1);
                }
                if (loadingImages.length == 0)
                {
                    callAll();
                }
                return;
            }// end function
            ;
        }// end function

        public function loadImage(param1:Object, param2:String, param3:String) : void
        {
            var _loc_5:Bitmap = null;
            param3 = param3 + ("?" + Viking.version);
            if (images[param3])
            {
                _loc_5 = new Bitmap(images[param3].bitmapData);
                param1[param2] = _loc_5;
                return;
            }
            var _loc_4:* = new Loader();
            new Loader().contentLoaderInfo.addEventListener(Event.COMPLETE, imageLoadedHandler(param1, param2, _loc_4, param3));
            loadingImages.push(param3);
            _loc_4.load(new URLRequest(LoaderProxy.host + param3));
            return;
        }// end function

        private function call(param1:Function, param2:Array) : void
        {
            if (param2 && param2.length > 0)
            {
                param1.apply(param2);
            }
            else
            {
                this.param1();
            }
            return;
        }// end function

    }
}
