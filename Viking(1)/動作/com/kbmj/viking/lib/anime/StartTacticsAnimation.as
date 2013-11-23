package com.kbmj.viking.lib.anime
{
    import com.kbmj.viking.proxy.*;
    import flash.events.*;
    import flash.net.*;
    import flash.utils.*;

    public class StartTacticsAnimation extends EventDispatcher
    {
        private var loadQueue:Array;
        private var animations:Array;
        private var loadingCount:int;

        public function StartTacticsAnimation()
        {
            loadingCount = new int();
            animations = new Array();
            loadQueue = new Array();
            return;
        }// end function

        public function getArray() : Object
        {
            return animations;
        }// end function

        public function load() : void
        {
            enqueueAnimation("StartTactics", "/swf/animation/BattleStart.swf");
            loadAnimations();
            return;
        }// end function

        public function getAnimation(param1:String) : ByteArray
        {
            return animations[param1];
        }// end function

        protected function loadAnimations() : void
        {
            var _loc_1:Object = null;
            loadingCount = loadQueue.length;
            do
            {
                
                loadAnimation(_loc_1.id, _loc_1.url);
                var _loc_2:* = loadQueue.pop();
                _loc_1 = loadQueue.pop();
            }while (_loc_2)
            return;
        }// end function

        protected function enqueueAnimation(param1:String, param2:String) : void
        {
            var _loc_3:* = new Object();
            _loc_3.id = param1;
            _loc_3.url = param2;
            loadQueue.unshift(_loc_3);
            return;
        }// end function

        private function loadAnimation(param1:String, param2:String) : void
        {
            var id:* = param1;
            var url:* = param2;
            var urlLoader:* = new URLLoader();
            var req:* = new URLRequest(LoaderProxy.host + url);
            urlLoader.dataFormat = URLLoaderDataFormat.BINARY;
            urlLoader.addEventListener(Event.COMPLETE, function (event:Event) : void
            {
                var _loc_4:* = loadingCount - 1;
                loadingCount = _loc_4;
                var _loc_2:* = event.target.data;
                animations[id] = event.target.data;
                if (loadingCount == 0)
                {
                    dispatchEvent(new Event("LoadFinish"));
                }
                return;
            }// end function
            );
            urlLoader.addEventListener(IOErrorEvent.IO_ERROR, function (event:IOErrorEvent) : void
            {
                trace(event.text);
                return;
            }// end function
            );
            urlLoader.load(req);
            return;
        }// end function

    }
}
