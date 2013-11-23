package com.kbmj.viking.proxy
{
    import flash.display.*;
    import flash.events.*;
    import flash.media.*;
    import flash.net.*;
    import flash.system.*;
    import flash.utils.*;
    import org.puremvc.as3.patterns.proxy.*;

    public class SoundProxy extends Proxy
    {
        private var bgm:Sound;
        private var _soundType:int;
        private var currentBgm:int;
        private var bgmChannel:SoundChannel;
        private var tacticsBgm:Array;
        private static const loopPoints:Array = [44735, 59192, 19674];
        public static const BGM_SIKI:int = 0;
        private static const fileNames:Array = ["siki.swf", "bossbattle.swf", "battleSound.swf"];
        private static const classNames:Array = ["siki", "bossbattle", "BattleSound"];
        public static const BGM_RAIDBATTLE:int = 2;
        public static const NAME:String = "SoundProxy";
        public static const BGM_BOSSBATTLE:int = 1;

        public function SoundProxy()
        {
            tacticsBgm = new Array();
            super(NAME);
            return;
        }// end function

        public function playTacticsBgm() : void
        {
            var configProxy:* = ConfigProxy(facade.retrieveProxy(ConfigProxy.NAME));
            if (configProxy.configVO.playSound)
            {
                stopBgm();
                loadTacticsBgm(function (param1:Sound) : void
            {
                currentBgm = _soundType;
                bgm = param1;
                bgmChannel = bgm.play();
                bgmChannel.addEventListener(Event.SOUND_COMPLETE, onSoundComplete);
                return;
            }// end function
            );
            }
            setVolume(1);
            return;
        }// end function

        override public function onRegister() : void
        {
            return;
        }// end function

        private function setVolume(param1:Number) : void
        {
            var _loc_2:* = SoundMixer.soundTransform;
            _loc_2.volume = param1;
            SoundMixer.soundTransform = _loc_2;
            return;
        }// end function

        public function stopBgm() : void
        {
            setVolume(0);
            if (bgmChannel)
            {
                bgmChannel.stop();
            }
            return;
        }// end function

        private function loadTacticsBgm(param1:Function) : void
        {
            var bgm:Loader;
            var req:URLRequest;
            var bgmContext:LoaderContext;
            var callback:* = param1;
            if (tacticsBgm[_soundType])
            {
                this.callback(tacticsBgm[_soundType]);
            }
            else
            {
                bgm = new Loader();
                req = new URLRequest(LoaderProxy.CDN_HOST + "/sounds/" + fileNames[_soundType]);
                bgmContext = new LoaderContext();
                bgmContext.checkPolicyFile = true;
                bgmContext.applicationDomain = ApplicationDomain.currentDomain;
                bgmContext.securityDomain = SecurityDomain.currentDomain;
                bgm.contentLoaderInfo.addEventListener(Event.COMPLETE, function (event:Event) : void
            {
                var _loc_2:* = bgm.contentLoaderInfo.applicationDomain.getDefinition(classNames[_soundType]) as Class;
                tacticsBgm[_soundType] = new _loc_2 as Sound;
                callback(tacticsBgm[_soundType]);
                return;
            }// end function
            );
                bgm.load(req, bgmContext);
            }
            return;
        }// end function

        public function get loopPosition() : int
        {
            return loopPoints[_soundType];
        }// end function

        public function set soundType(param1:int) : void
        {
            _soundType = Math.min(Math.max(param1, BGM_SIKI), BGM_RAIDBATTLE);
            return;
        }// end function

        private function onSoundComplete(event:Event) : void
        {
            bgmChannel = bgm.play(loopPosition);
            if (!bgmChannel.hasEventListener(Event.SOUND_COMPLETE))
            {
                bgmChannel.addEventListener(Event.SOUND_COMPLETE, onSoundComplete);
            }
            return;
        }// end function

        public function fadeoutBgm() : void
        {
            var fadeoutTimer:Timer;
            if (bgmChannel)
            {
                fadeoutTimer = new Timer(20, 100);
                fadeoutTimer.addEventListener(TimerEvent.TIMER, function () : void
            {
                var _loc_3:SoundTransform = null;
                arguments = bgmChannel.soundTransform.volume - 0.005;
                if (arguments <= 0.01)
                {
                    bgmChannel.stop();
                    fadeoutTimer.removeEventListener(TimerEvent.TIMER, arguments.callee);
                }
                else
                {
                    _loc_3 = bgmChannel.soundTransform;
                    _loc_3.volume = arguments;
                    bgmChannel.soundTransform = _loc_3;
                }
                return;
            }// end function
            );
                fadeoutTimer.start();
            }
            return;
        }// end function

    }
}
