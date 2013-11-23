package com.kbmj.viking
{
    import com.kbmj.viking.view.*;
    import com.kbmj.viking.view.tactics.*;
    import flash.display.*;
    import flash.events.*;
    import flash.utils.*;
    import mx.binding.*;
    import mx.containers.*;
    import mx.controls.*;
    import mx.core.*;
    import mx.events.*;

    public class Tactics extends CanvasWithPopUp implements IBindingClient
    {
        private var _1769370511gameMenu:GameMenu;
        private var _1485409750enemyStatusWindow:TargetStatusWindow;
        private var _1962485555_swf_button_fast:MovieClipLoaderAsset;
        private var _1587841125cursorLayer:Canvas;
        public var _Tactics_Image3:Image;
        public var _Tactics_Image4:Image;
        private var _2105229539hitRateWindow:HitRateWindow;
        private var _2104518883itemWindow:ItemWindow;
        private var _695085378_swf_button_sound:MovieClipLoaderAsset;
        private var _275170075commandWindow:CommandWindow;
        private var EmbedSwfButtonSpeedUp:Class;
        private var _961999926raidPlayerName:Label;
        private var _embed_mxml__swf_battle_info_button_shikihime_50_swf_1296993453:Class;
        private var EmbedSwfButtonSound:Class;
        private var _1641065996controlLayer:Canvas;
        var _bindingsByDestination:Object;
        private var _118725436areaLayer:Canvas;
        private var _1295290030objectLayer:Canvas;
        private var _1268445380blockLayer:Canvas;
        private var _845504934mapImageSource:Bitmap;
        private var _2096407934statusWindow:StatusWindow;
        private var _995135013raidTimer:RaidTimer;
        private var _1643150912effectLayer:Canvas;
        var _watchers:Array;
        private var _107868map:Canvas;
        private var _671290935raidEnemyName:Label;
        private var _1847548927movieLayer:Canvas;
        private var _273578091timerWindow:MultiPlayerTimerWindow;
        private var _1093677551stageClear:StageClear;
        var _bindingsBeginWithWord:Object;
        private var _991538786playerTargetWindow:TargetStatusWindow;
        private var _2056064868missionWindow:MissionWindow;
        var _bindings:Array;
        private var _110473549targetStatusWindow:TargetStatusWindow;
        private var _1496125741itemEffectLayer:Canvas;
        private var _documentDescriptor_:UIComponentDescriptor;
        private var _158535007mapImage:Image;
        private static var _watcherSetupUtil:IWatcherSetupUtil;

        public function Tactics()
        {
            _documentDescriptor_ = new UIComponentDescriptor({type:CanvasWithPopUp, propertiesFactory:function () : Object
            {
                return {width:760, height:560, childDescriptors:[new UIComponentDescriptor({type:Canvas, id:"map", propertiesFactory:function () : Object
                {
                    return {childDescriptors:[new UIComponentDescriptor({type:Image, id:"mapImage"}), new UIComponentDescriptor({type:Canvas, id:"blockLayer"}), new UIComponentDescriptor({type:Canvas, id:"areaLayer"}), new UIComponentDescriptor({type:Canvas, id:"cursorLayer"}), new UIComponentDescriptor({type:Canvas, id:"effectLayer"}), new UIComponentDescriptor({type:Canvas, id:"objectLayer"})]};
                }// end function
                }), new UIComponentDescriptor({type:StatusWindow, id:"statusWindow"}), new UIComponentDescriptor({type:TargetStatusWindow, id:"playerTargetWindow", propertiesFactory:function () : Object
                {
                    return {visible:false};
                }// end function
                }), new UIComponentDescriptor({type:TargetStatusWindow, id:"targetStatusWindow", propertiesFactory:function () : Object
                {
                    return {visible:false};
                }// end function
                }), new UIComponentDescriptor({type:TargetStatusWindow, id:"enemyStatusWindow", propertiesFactory:function () : Object
                {
                    return {visible:false, x:-380};
                }// end function
                }), new UIComponentDescriptor({type:HitRateWindow, id:"hitRateWindow", propertiesFactory:function () : Object
                {
                    return {visible:false};
                }// end function
                }), new UIComponentDescriptor({type:MissionWindow, id:"missionWindow"}), new UIComponentDescriptor({type:MultiPlayerTimerWindow, id:"timerWindow", propertiesFactory:function () : Object
                {
                    return {visible:false};
                }// end function
                }), new UIComponentDescriptor({type:Canvas, id:"controlLayer", propertiesFactory:function () : Object
                {
                    return {width:760, height:560};
                }// end function
                }), new UIComponentDescriptor({type:RaidTimer, id:"raidTimer", stylesFactory:function () : void
                {
                    this.top = "10";
                    this.right = "80";
                    return;
                }// end function
                , propertiesFactory:function () : Object
                {
                    return {width:117, height:49};
                }// end function
                }), new UIComponentDescriptor({type:Image, events:{click:"___Tactics_Image2_click"}, propertiesFactory:function () : Object
                {
                    return {x:590, y:10, source:_embed_mxml__swf_battle_info_button_shikihime_50_swf_1296993453};
                }// end function
                }), new UIComponentDescriptor({type:Image, id:"_Tactics_Image3", propertiesFactory:function () : Object
                {
                    return {x:645, y:10};
                }// end function
                }), new UIComponentDescriptor({type:Image, id:"_Tactics_Image4", propertiesFactory:function () : Object
                {
                    return {x:700, y:10};
                }// end function
                }), new UIComponentDescriptor({type:GameMenu, id:"gameMenu", propertiesFactory:function () : Object
                {
                    return {visible:false};
                }// end function
                }), new UIComponentDescriptor({type:CommandWindow, id:"commandWindow", propertiesFactory:function () : Object
                {
                    return {visible:false};
                }// end function
                }), new UIComponentDescriptor({type:ItemWindow, id:"itemWindow", propertiesFactory:function () : Object
                {
                    return {visible:false};
                }// end function
                }), new UIComponentDescriptor({type:StageClear, id:"stageClear", propertiesFactory:function () : Object
                {
                    return {visible:false};
                }// end function
                }), new UIComponentDescriptor({type:Canvas, id:"movieLayer", propertiesFactory:function () : Object
                {
                    return {width:760, height:560};
                }// end function
                }), new UIComponentDescriptor({type:Canvas, id:"itemEffectLayer"}), new UIComponentDescriptor({type:Label, id:"raidPlayerName", stylesFactory:function () : void
                {
                    this.fontSize = 30;
                    this.color = 16777215;
                    return;
                }// end function
                , propertiesFactory:function () : Object
                {
                    return {x:64, y:528, text:"", mouseChildren:false, visible:false};
                }// end function
                }), new UIComponentDescriptor({type:Label, id:"raidEnemyName", stylesFactory:function () : void
                {
                    this.fontSize = 30;
                    this.color = 16777215;
                    return;
                }// end function
                , propertiesFactory:function () : Object
                {
                    return {x:419, y:65, text:"", mouseChildren:false, visible:false};
                }// end function
                })]};
            }// end function
            });
            EmbedSwfButtonSound = Tactics_EmbedSwfButtonSound;
            _695085378_swf_button_sound = new EmbedSwfButtonSound();
            EmbedSwfButtonSpeedUp = Tactics_EmbedSwfButtonSpeedUp;
            _1962485555_swf_button_fast = new EmbedSwfButtonSpeedUp();
            _embed_mxml__swf_battle_info_button_shikihime_50_swf_1296993453 = Tactics__embed_mxml__swf_battle_info_button_shikihime_50_swf_1296993453;
            _bindings = [];
            _watchers = [];
            _bindingsByDestination = {};
            _bindingsBeginWithWord = {};
            mx_internal::_document = this;
            this.width = 760;
            this.height = 560;
            this.horizontalScrollPolicy = "off";
            this.verticalScrollPolicy = "off";
            this.addEventListener("creationComplete", ___Tactics_CanvasWithPopUp1_creationComplete);
            return;
        }// end function

        public function get movieLayer() : Canvas
        {
            return this._1847548927movieLayer;
        }// end function

        public function set movieLayer(param1:Canvas) : void
        {
            var _loc_2:* = this._1847548927movieLayer;
            if (_loc_2 !== param1)
            {
                this._1847548927movieLayer = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "movieLayer", _loc_2, param1));
            }
            return;
        }// end function

        public function set statusWindow(param1:StatusWindow) : void
        {
            var _loc_2:* = this._2096407934statusWindow;
            if (_loc_2 !== param1)
            {
                this._2096407934statusWindow = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "statusWindow", _loc_2, param1));
            }
            return;
        }// end function

        public function get commandWindow() : CommandWindow
        {
            return this._275170075commandWindow;
        }// end function

        public function get enemyStatusWindow() : TargetStatusWindow
        {
            return this._1485409750enemyStatusWindow;
        }// end function

        private function _Tactics_bindingExprs() : void
        {
            var _loc_1:* = undefined;
            _loc_1 = mapImageSource;
            _loc_1 = _swf_button_fast;
            _loc_1 = _swf_button_sound;
            return;
        }// end function

        public function get itemEffectLayer() : Canvas
        {
            return this._1496125741itemEffectLayer;
        }// end function

        public function set timerWindow(param1:MultiPlayerTimerWindow) : void
        {
            var _loc_2:* = this._273578091timerWindow;
            if (_loc_2 !== param1)
            {
                this._273578091timerWindow = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "timerWindow", _loc_2, param1));
            }
            return;
        }// end function

        public function get effectLayer() : Canvas
        {
            return this._1643150912effectLayer;
        }// end function

        public function set commandWindow(param1:CommandWindow) : void
        {
            var _loc_2:* = this._275170075commandWindow;
            if (_loc_2 !== param1)
            {
                this._275170075commandWindow = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "commandWindow", _loc_2, param1));
            }
            return;
        }// end function

        public function set missionWindow(param1:MissionWindow) : void
        {
            var _loc_2:* = this._2056064868missionWindow;
            if (_loc_2 !== param1)
            {
                this._2056064868missionWindow = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "missionWindow", _loc_2, param1));
            }
            return;
        }// end function

        public function ___Tactics_CanvasWithPopUp1_creationComplete(event:FlexEvent) : void
        {
            initApp();
            return;
        }// end function

        public function ___Tactics_Image2_click(event:MouseEvent) : void
        {
            sendEvent(Viking.TACTICS_UNIT_LIST);
            return;
        }// end function

        public function set enemyStatusWindow(param1:TargetStatusWindow) : void
        {
            var _loc_2:* = this._1485409750enemyStatusWindow;
            if (_loc_2 !== param1)
            {
                this._1485409750enemyStatusWindow = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "enemyStatusWindow", _loc_2, param1));
            }
            return;
        }// end function

        public function set cursorLayer(param1:Canvas) : void
        {
            var _loc_2:* = this._1587841125cursorLayer;
            if (_loc_2 !== param1)
            {
                this._1587841125cursorLayer = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "cursorLayer", _loc_2, param1));
            }
            return;
        }// end function

        public function set itemEffectLayer(param1:Canvas) : void
        {
            var _loc_2:* = this._1496125741itemEffectLayer;
            if (_loc_2 !== param1)
            {
                this._1496125741itemEffectLayer = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "itemEffectLayer", _loc_2, param1));
            }
            return;
        }// end function

        public function get mapImage() : Image
        {
            return this._158535007mapImage;
        }// end function

        public function get objectLayer() : Canvas
        {
            return this._1295290030objectLayer;
        }// end function

        public function get playerTargetWindow() : TargetStatusWindow
        {
            return this._991538786playerTargetWindow;
        }// end function

        public function get map() : Canvas
        {
            return this._107868map;
        }// end function

        public function get mapImageSource() : Bitmap
        {
            return this._845504934mapImageSource;
        }// end function

        private function _Tactics_bindingsSetup() : Array
        {
            var binding:Binding;
            var result:Array;
            binding = new Binding(this, function () : Object
            {
                return mapImageSource;
            }// end function
            , function (param1:Object) : void
            {
                mapImage.source = param1;
                return;
            }// end function
            , "mapImage.source");
            result[0] = binding;
            binding = new Binding(this, function () : Object
            {
                return _swf_button_fast;
            }// end function
            , function (param1:Object) : void
            {
                _Tactics_Image3.source = param1;
                return;
            }// end function
            , "_Tactics_Image3.source");
            result[1] = binding;
            binding = new Binding(this, function () : Object
            {
                return _swf_button_sound;
            }// end function
            , function (param1:Object) : void
            {
                _Tactics_Image4.source = param1;
                return;
            }// end function
            , "_Tactics_Image4.source");
            result[2] = binding;
            return result;
        }// end function

        public function set targetStatusWindow(param1:TargetStatusWindow) : void
        {
            var _loc_2:* = this._110473549targetStatusWindow;
            if (_loc_2 !== param1)
            {
                this._110473549targetStatusWindow = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "targetStatusWindow", _loc_2, param1));
            }
            return;
        }// end function

        public function get gameMenu() : GameMenu
        {
            return this._1769370511gameMenu;
        }// end function

        public function set raidPlayerName(param1:Label) : void
        {
            var _loc_2:* = this._961999926raidPlayerName;
            if (_loc_2 !== param1)
            {
                this._961999926raidPlayerName = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "raidPlayerName", _loc_2, param1));
            }
            return;
        }// end function

        public function get raidPlayerName() : Label
        {
            return this._961999926raidPlayerName;
        }// end function

        public function set effectLayer(param1:Canvas) : void
        {
            var _loc_2:* = this._1643150912effectLayer;
            if (_loc_2 !== param1)
            {
                this._1643150912effectLayer = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "effectLayer", _loc_2, param1));
            }
            return;
        }// end function

        public function get statusWindow() : StatusWindow
        {
            return this._2096407934statusWindow;
        }// end function

        private function set _swf_button_sound(param1:MovieClipLoaderAsset) : void
        {
            var _loc_2:* = this._695085378_swf_button_sound;
            if (_loc_2 !== param1)
            {
                this._695085378_swf_button_sound = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "_swf_button_sound", _loc_2, param1));
            }
            return;
        }// end function

        public function set areaLayer(param1:Canvas) : void
        {
            var _loc_2:* = this._118725436areaLayer;
            if (_loc_2 !== param1)
            {
                this._118725436areaLayer = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "areaLayer", _loc_2, param1));
            }
            return;
        }// end function

        override public function initialize() : void
        {
            var target:Tactics;
            var watcherSetupUtilClass:Object;
            .mx_internal::setDocumentDescriptor(_documentDescriptor_);
            var bindings:* = _Tactics_bindingsSetup();
            var watchers:Array;
            target;
            if (_watcherSetupUtil == null)
            {
                watcherSetupUtilClass = getDefinitionByName("_com_kbmj_viking_TacticsWatcherSetupUtil");
                var _loc_2:* = watcherSetupUtilClass;
                _loc_2.watcherSetupUtilClass["init"](null);
            }
            _watcherSetupUtil.setup(this, function (param1:String)
            {
                return target[param1];
            }// end function
            , bindings, watchers);
            var i:uint;
            while (i < bindings.length)
            {
                
                Binding(bindings[i]).execute();
                i = (i + 1);
            }
            mx_internal::_bindings = mx_internal::_bindings.concat(bindings);
            mx_internal::_watchers = mx_internal::_watchers.concat(watchers);
            super.initialize();
            return;
        }// end function

        public function set raidEnemyName(param1:Label) : void
        {
            var _loc_2:* = this._671290935raidEnemyName;
            if (_loc_2 !== param1)
            {
                this._671290935raidEnemyName = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "raidEnemyName", _loc_2, param1));
            }
            return;
        }// end function

        public function get timerWindow() : MultiPlayerTimerWindow
        {
            return this._273578091timerWindow;
        }// end function

        private function set _swf_button_fast(param1:MovieClipLoaderAsset) : void
        {
            var _loc_2:* = this._1962485555_swf_button_fast;
            if (_loc_2 !== param1)
            {
                this._1962485555_swf_button_fast = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "_swf_button_fast", _loc_2, param1));
            }
            return;
        }// end function

        public function set blockLayer(param1:Canvas) : void
        {
            var _loc_2:* = this._1268445380blockLayer;
            if (_loc_2 !== param1)
            {
                this._1268445380blockLayer = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "blockLayer", _loc_2, param1));
            }
            return;
        }// end function

        public function get cursorLayer() : Canvas
        {
            return this._1587841125cursorLayer;
        }// end function

        public function get missionWindow() : MissionWindow
        {
            return this._2056064868missionWindow;
        }// end function

        public function set objectLayer(param1:Canvas) : void
        {
            var _loc_2:* = this._1295290030objectLayer;
            if (_loc_2 !== param1)
            {
                this._1295290030objectLayer = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "objectLayer", _loc_2, param1));
            }
            return;
        }// end function

        public function set raidTimer(param1:RaidTimer) : void
        {
            var _loc_2:* = this._995135013raidTimer;
            if (_loc_2 !== param1)
            {
                this._995135013raidTimer = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "raidTimer", _loc_2, param1));
            }
            return;
        }// end function

        public function get targetStatusWindow() : TargetStatusWindow
        {
            return this._110473549targetStatusWindow;
        }// end function

        public function set mapImageSource(param1:Bitmap) : void
        {
            var _loc_2:* = this._845504934mapImageSource;
            if (_loc_2 !== param1)
            {
                this._845504934mapImageSource = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "mapImageSource", _loc_2, param1));
            }
            return;
        }// end function

        public function set mapImage(param1:Image) : void
        {
            var _loc_2:* = this._158535007mapImage;
            if (_loc_2 !== param1)
            {
                this._158535007mapImage = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "mapImage", _loc_2, param1));
            }
            return;
        }// end function

        public function set map(param1:Canvas) : void
        {
            var _loc_2:* = this._107868map;
            if (_loc_2 !== param1)
            {
                this._107868map = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "map", _loc_2, param1));
            }
            return;
        }// end function

        public function get areaLayer() : Canvas
        {
            return this._118725436areaLayer;
        }// end function

        private function get _swf_button_sound() : MovieClipLoaderAsset
        {
            return this._695085378_swf_button_sound;
        }// end function

        public function set hitRateWindow(param1:HitRateWindow) : void
        {
            var _loc_2:* = this._2105229539hitRateWindow;
            if (_loc_2 !== param1)
            {
                this._2105229539hitRateWindow = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "hitRateWindow", _loc_2, param1));
            }
            return;
        }// end function

        public function get raidEnemyName() : Label
        {
            return this._671290935raidEnemyName;
        }// end function

        public function get blockLayer() : Canvas
        {
            return this._1268445380blockLayer;
        }// end function

        public function set itemWindow(param1:ItemWindow) : void
        {
            var _loc_2:* = this._2104518883itemWindow;
            if (_loc_2 !== param1)
            {
                this._2104518883itemWindow = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "itemWindow", _loc_2, param1));
            }
            return;
        }// end function

        public function set playerTargetWindow(param1:TargetStatusWindow) : void
        {
            var _loc_2:* = this._991538786playerTargetWindow;
            if (_loc_2 !== param1)
            {
                this._991538786playerTargetWindow = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "playerTargetWindow", _loc_2, param1));
            }
            return;
        }// end function

        private function get _swf_button_fast() : MovieClipLoaderAsset
        {
            return this._1962485555_swf_button_fast;
        }// end function

        public function get raidTimer() : RaidTimer
        {
            return this._995135013raidTimer;
        }// end function

        public function set stageClear(param1:StageClear) : void
        {
            var _loc_2:* = this._1093677551stageClear;
            if (_loc_2 !== param1)
            {
                this._1093677551stageClear = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "stageClear", _loc_2, param1));
            }
            return;
        }// end function

        public function initSound(param1:Boolean, param2:Boolean) : void
        {
            MovieClip(Loader(_swf_button_sound.getChildAt(0)).content).gotoAndStop(0);
            MovieClip(Loader(_swf_button_sound.getChildAt(0)).content).gotoAndPlay(param1 ? ("button_sound_on") : ("button_sound_off"));
            MovieClip(Loader(_swf_button_fast.getChildAt(0)).content).gotoAndPlay(param2 ? ("button_speed_up_on") : ("button_speed_up_off"));
            return;
        }// end function

        public function set gameMenu(param1:GameMenu) : void
        {
            var _loc_2:* = this._1769370511gameMenu;
            if (_loc_2 !== param1)
            {
                this._1769370511gameMenu = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "gameMenu", _loc_2, param1));
            }
            return;
        }// end function

        public function get hitRateWindow() : HitRateWindow
        {
            return this._2105229539hitRateWindow;
        }// end function

        public function set controlLayer(param1:Canvas) : void
        {
            var _loc_2:* = this._1641065996controlLayer;
            if (_loc_2 !== param1)
            {
                this._1641065996controlLayer = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "controlLayer", _loc_2, param1));
            }
            return;
        }// end function

        public function get itemWindow() : ItemWindow
        {
            return this._2104518883itemWindow;
        }// end function

        private function initApp() : void
        {
            Loader(_swf_button_sound.getChildAt(0)).content.addEventListener("BUTTON_SOUND_OFF", function (event:Event) : void
            {
                sendEvent(Viking.TACTICS_SOUND_OFF);
                return;
            }// end function
            );
            Loader(_swf_button_sound.getChildAt(0)).content.addEventListener("BUTTON_SOUND_ON", function (event:Event) : void
            {
                sendEvent(Viking.TACTICS_SOUND_ON);
                return;
            }// end function
            );
            MovieClip(Loader(_swf_button_sound.getChildAt(0)).content).gotoAndPlay("button_sound_off");
            Loader(_swf_button_fast.getChildAt(0)).content.addEventListener("BUTTON_SPEED_UP_OFF", function (event:Event) : void
            {
                sendEvent(Viking.TACTICS_FAST_OFF);
                return;
            }// end function
            );
            Loader(_swf_button_fast.getChildAt(0)).content.addEventListener("BUTTON_SPEED_UP_ON", function (event:Event) : void
            {
                sendEvent(Viking.TACTICS_FAST_ON);
                return;
            }// end function
            );
            MovieClip(Loader(_swf_button_fast.getChildAt(0)).content).gotoAndPlay("button_speed_up_off");
            return;
        }// end function

        public function get controlLayer() : Canvas
        {
            return this._1641065996controlLayer;
        }// end function

        public function get stageClear() : StageClear
        {
            return this._1093677551stageClear;
        }// end function

        public static function set watcherSetupUtil(param1:IWatcherSetupUtil) : void
        {
            Tactics._watcherSetupUtil = param1;
            return;
        }// end function

    }
}
