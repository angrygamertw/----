package com.kbmj.viking.view.allMap
{
    import com.kbmj.viking.lib.*;
    import com.kbmj.viking.proxy.allMap.*;
    import com.kbmj.viking.view.*;
    import flash.display.*;
    import flash.events.*;
    import flash.geom.*;
    import flash.utils.*;
    import mx.binding.*;
    import mx.containers.*;
    import mx.controls.*;
    import mx.core.*;
    import mx.events.*;
    import mx.managers.*;

    public class ChargeRemoveWindow extends Canvas implements IBindingClient
    {
        private var _embed_mxml__images_icon_power_png_227571469:Class;
        public var _ChargeRemoveWindow_Text2:Text;
        public var _ChargeRemoveWindow_Text3:Text;
        var _watchers:Array;
        var _bindingsByDestination:Object;
        var _bindingsBeginWithWord:Object;
        private var _1193840764_swf_close:MovieClipLoaderAsset;
        private var _1218643219_swf_close_window:MovieClipLoaderAsset;
        var _bindings:Array;
        public var _ChargeRemoveWindow_Image1:Image;
        public var _ChargeRemoveWindow_Image2:Image;
        public var _ChargeRemoveWindow_Text1:Text;
        public var frame:UIComponent;
        private var defaultArea:int = 1;
        private var _documentDescriptor_:UIComponentDescriptor;
        private var _114306swf:MovieClipLoaderAsset;
        public static const CHARGE_REMOVE_CANCEL:String = NAME + "/cancel";
        public static const NAME:String = "ChargeRemoveWindow";
        public static const CHARGE_REMOVE_OK:String = NAME + "/oK";
        public static var EmbedSwfWindowChargeRemove:Class = ChargeRemoveWindow_EmbedSwfWindowChargeRemove;
        public static const MINI_MAP_HEIGHT:int = 303;
        private static var br:Array = new Array(new Point(-101, -101), new Point(-1, -101), new Point(99, -101), new Point(200, -101), new Point(-101, -1), new Point(-1, -1), new Point(99, -1), new Point(200, -1), new Point(-101, 99), new Point(-1, 99), new Point(99, 99), new Point(200, 99), new Point(-101, 200), new Point(-1, 200), new Point(99, 200), new Point(200, 200));
        private static var _watcherSetupUtil:IWatcherSetupUtil;
        public static const MINI_MAP_WIDTH:int = 303;
        private static var tl:Array = new Array(new Point(-200, -200), new Point(-100, -200), new Point(0, -200), new Point(100, -200), new Point(-200, -100), new Point(-100, -100), new Point(0, -100), new Point(100, -100), new Point(-200, 0), new Point(-100, 0), new Point(0, 0), new Point(100, 0), new Point(-200, 100), new Point(-100, 100), new Point(0, 100), new Point(100, 100));

        public function ChargeRemoveWindow()
        {
            _documentDescriptor_ = new UIComponentDescriptor({type:Canvas, propertiesFactory:function () : Object
            {
                return {width:760, height:560, childDescriptors:[new UIComponentDescriptor({type:Image, id:"_ChargeRemoveWindow_Image1"}), new UIComponentDescriptor({type:Image, id:"_ChargeRemoveWindow_Image2", events:{click:"___ChargeRemoveWindow_Image2_click"}, propertiesFactory:function () : Object
                {
                    return {x:555, y:82};
                }// end function
                }), new UIComponentDescriptor({type:Text, id:"_ChargeRemoveWindow_Text1", stylesFactory:function () : void
                {
                    this.fontSize = 16;
                    this.textAlign = "center";
                    this.color = 16777215;
                    return;
                }// end function
                , propertiesFactory:function () : Object
                {
                    return {x:205, y:82, width:350};
                }// end function
                }), new UIComponentDescriptor({type:Text, id:"_ChargeRemoveWindow_Text2", stylesFactory:function () : void
                {
                    this.fontSize = 14;
                    this.textAlign = "left";
                    return;
                }// end function
                , propertiesFactory:function () : Object
                {
                    return {x:224, y:114, width:340};
                }// end function
                }), new UIComponentDescriptor({type:Text, id:"_ChargeRemoveWindow_Text3", stylesFactory:function () : void
                {
                    this.fontSize = 14;
                    this.textAlign = "left";
                    return;
                }// end function
                , propertiesFactory:function () : Object
                {
                    return {x:205, y:135, width:360};
                }// end function
                }), new UIComponentDescriptor({type:Image, propertiesFactory:function () : Object
                {
                    return {x:208, y:116, width:16, height:16, source:_embed_mxml__images_icon_power_png_227571469};
                }// end function
                })]};
            }// end function
            });
            _114306swf = new EmbedSwfWindowChargeRemove();
            _1193840764_swf_close = new Viking.EmbedSwfButtonCommon();
            _1218643219_swf_close_window = new Viking.EmbedSwfButtonCloseWindow();
            frame = new UIComponent();
            _embed_mxml__images_icon_power_png_227571469 = ChargeRemoveWindow__embed_mxml__images_icon_power_png_227571469;
            _bindings = [];
            _watchers = [];
            _bindingsByDestination = {};
            _bindingsBeginWithWord = {};
            mx_internal::_document = this;
            this.width = 760;
            this.height = 560;
            this.horizontalScrollPolicy = "off";
            this.verticalScrollPolicy = "off";
            this.addEventListener("creationComplete", ___ChargeRemoveWindow_Canvas1_creationComplete);
            return;
        }// end function

        private function set swf(param1:MovieClipLoaderAsset) : void
        {
            var _loc_2:* = this._114306swf;
            if (_loc_2 !== param1)
            {
                this._114306swf = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "swf", _loc_2, param1));
            }
            return;
        }// end function

        private function closeWindow() : void
        {
            MovieClip(Loader(_swf_close.getChildAt(0)).content).gotoAndPlay(0);
            MovieClip(Loader(_swf_close.getChildAt(0)).content).gotoAndPlay("button_close");
            MovieClip(Loader(_swf_close_window.getChildAt(0)).content).gotoAndPlay(1);
            PopUpManager.removePopUp(this);
            return;
        }// end function

        private function get swf() : MovieClipLoaderAsset
        {
            return this._114306swf;
        }// end function

        override public function initialize() : void
        {
            var target:ChargeRemoveWindow;
            var watcherSetupUtilClass:Object;
            .mx_internal::setDocumentDescriptor(_documentDescriptor_);
            var bindings:* = _ChargeRemoveWindow_bindingsSetup();
            var watchers:Array;
            target;
            if (_watcherSetupUtil == null)
            {
                watcherSetupUtilClass = getDefinitionByName("_com_kbmj_viking_view_allMap_ChargeRemoveWindowWatcherSetupUtil");
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

        private function get _swf_close_window() : MovieClipLoaderAsset
        {
            return this._1218643219_swf_close_window;
        }// end function

        public function ___ChargeRemoveWindow_Image2_click(event:MouseEvent) : void
        {
            closeWindow();
            return;
        }// end function

        public function init() : void
        {
            Loader(swf.getChildAt(0)).content.addEventListener("BUTTON_1", function () : void
            {
                onOK(1);
                return;
            }// end function
            );
            Loader(swf.getChildAt(0)).content.addEventListener("BUTTON_2", function () : void
            {
                onOK(2);
                return;
            }// end function
            );
            Loader(swf.getChildAt(0)).content.addEventListener("BUTTON_3", function () : void
            {
                onOK(3);
                return;
            }// end function
            );
            Loader(swf.getChildAt(0)).content.addEventListener("BUTTON_4", function () : void
            {
                onOK(4);
                return;
            }// end function
            );
            Loader(swf.getChildAt(0)).content.addEventListener("BUTTON_5", function () : void
            {
                onOK(5);
                return;
            }// end function
            );
            Loader(swf.getChildAt(0)).content.addEventListener("BUTTON_6", function () : void
            {
                onOK(6);
                return;
            }// end function
            );
            Loader(swf.getChildAt(0)).content.addEventListener("BUTTON_7", function () : void
            {
                onOK(7);
                return;
            }// end function
            );
            Loader(swf.getChildAt(0)).content.addEventListener("BUTTON_8", function () : void
            {
                onOK(8);
                return;
            }// end function
            );
            Loader(swf.getChildAt(0)).content.addEventListener("BUTTON_9", function () : void
            {
                onOK(9);
                return;
            }// end function
            );
            Loader(swf.getChildAt(0)).content.addEventListener("BUTTON_10", function () : void
            {
                onOK(10);
                return;
            }// end function
            );
            Loader(swf.getChildAt(0)).content.addEventListener("BUTTON_11", function () : void
            {
                onOK(11);
                return;
            }// end function
            );
            Loader(swf.getChildAt(0)).content.addEventListener("BUTTON_12", function () : void
            {
                onOK(12);
                return;
            }// end function
            );
            Loader(swf.getChildAt(0)).content.addEventListener("BUTTON_13", function () : void
            {
                onOK(13);
                return;
            }// end function
            );
            Loader(swf.getChildAt(0)).content.addEventListener("BUTTON_14", function () : void
            {
                onOK(14);
                return;
            }// end function
            );
            Loader(swf.getChildAt(0)).content.addEventListener("BUTTON_15", function () : void
            {
                onOK(15);
                return;
            }// end function
            );
            Loader(swf.getChildAt(0)).content.addEventListener("BUTTON_16", function () : void
            {
                onOK(16);
                return;
            }// end function
            );
            Loader(swf.getChildAt(0)).content.addEventListener("BUTTON_BACK", function () : void
            {
                onCancel();
                return;
            }// end function
            );
            frame.width = this.int(MINI_MAP_WIDTH / (AllMapProxy.BG_WIDTH / AllMapProxy.SCR_WIDTH));
            frame.height = this.int(MINI_MAP_HEIGHT / (AllMapProxy.BG_HEIGHT / AllMapProxy.SCR_HEIGHT));
            frame.graphics.lineStyle(1, 16729088);
            frame.graphics.drawRect(0, 0, frame.width, frame.height);
            addChild(frame);
            return;
        }// end function

        private function set _swf_close_window(param1:MovieClipLoaderAsset) : void
        {
            var _loc_2:* = this._1218643219_swf_close_window;
            if (_loc_2 !== param1)
            {
                this._1218643219_swf_close_window = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "_swf_close_window", _loc_2, param1));
            }
            return;
        }// end function

        private function _ChargeRemoveWindow_bindingExprs() : void
        {
            var _loc_1:* = undefined;
            _loc_1 = swf;
            _loc_1 = _swf_close_window;
            _loc_1 = Utils.i18n("localize23");
            _loc_1 = Utils.i18n("localize24");
            _loc_1 = Utils.i18n("localize25");
            return;
        }// end function

        public function setDefaultArea(param1:Point) : void
        {
            var _loc_2:* = param1.x - 200;
            var _loc_3:* = param1.y - 200;
            defaultArea = 0;
            while (defaultArea < tl.length)
            {
                
                if (_loc_2 >= tl[defaultArea].x && _loc_3 >= tl[defaultArea].y && _loc_2 <= br[defaultArea].x && _loc_3 <= br[defaultArea].y)
                {
                    (defaultArea + 1);
                    break;
                }
                var _loc_5:* = defaultArea + 1;
                defaultArea = _loc_5;
            }
            MovieClip(Loader(swf.getChildAt(0)).content).gotoAndPlay("w_" + defaultArea.toString());
            return;
        }// end function

        private function onCancel() : void
        {
            dispatchEvent(new Event(CHARGE_REMOVE_CANCEL));
            return;
        }// end function

        public function updateMiniMapFrame(param1:Point) : void
        {
            frame.x = param1.x / (AllMapProxy.BG_WIDTH / MINI_MAP_WIDTH);
            frame.y = param1.y / (AllMapProxy.BG_HEIGHT / MINI_MAP_HEIGHT);
            frame.x = frame.x + 231;
            frame.y = frame.y + 174;
            frame.x = frame.x - frame.width / 2;
            frame.y = frame.y - frame.height / 2;
            return;
        }// end function

        public function ___ChargeRemoveWindow_Canvas1_creationComplete(event:FlexEvent) : void
        {
            init();
            return;
        }// end function

        private function _ChargeRemoveWindow_bindingsSetup() : Array
        {
            var binding:Binding;
            var result:Array;
            binding = new Binding(this, function () : Object
            {
                return swf;
            }// end function
            , function (param1:Object) : void
            {
                _ChargeRemoveWindow_Image1.source = param1;
                return;
            }// end function
            , "_ChargeRemoveWindow_Image1.source");
            result[0] = binding;
            binding = new Binding(this, function () : Object
            {
                return _swf_close_window;
            }// end function
            , function (param1:Object) : void
            {
                _ChargeRemoveWindow_Image2.source = param1;
                return;
            }// end function
            , "_ChargeRemoveWindow_Image2.source");
            result[1] = binding;
            binding = new Binding(this, function () : String
            {
                var _loc_1:* = Utils.i18n("localize23");
                var _loc_2:* = _loc_1 == undefined ? (null) : (String(_loc_1));
                return _loc_2;
            }// end function
            , function (param1:String) : void
            {
                _ChargeRemoveWindow_Text1.text = param1;
                return;
            }// end function
            , "_ChargeRemoveWindow_Text1.text");
            result[2] = binding;
            binding = new Binding(this, function () : String
            {
                var _loc_1:* = Utils.i18n("localize24");
                var _loc_2:* = _loc_1 == undefined ? (null) : (String(_loc_1));
                return _loc_2;
            }// end function
            , function (param1:String) : void
            {
                _ChargeRemoveWindow_Text2.text = param1;
                return;
            }// end function
            , "_ChargeRemoveWindow_Text2.text");
            result[3] = binding;
            binding = new Binding(this, function () : String
            {
                var _loc_1:* = Utils.i18n("localize25");
                var _loc_2:* = _loc_1 == undefined ? (null) : (String(_loc_1));
                return _loc_2;
            }// end function
            , function (param1:String) : void
            {
                _ChargeRemoveWindow_Text3.text = param1;
                return;
            }// end function
            , "_ChargeRemoveWindow_Text3.text");
            result[4] = binding;
            return result;
        }// end function

        private function set _swf_close(param1:MovieClipLoaderAsset) : void
        {
            var _loc_2:* = this._1193840764_swf_close;
            if (_loc_2 !== param1)
            {
                this._1193840764_swf_close = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "_swf_close", _loc_2, param1));
            }
            return;
        }// end function

        private function onOK(param1:int) : void
        {
            var area:* = param1;
            var msg:* = Utils.i18n("localize21") + "[ " + tl[(area - 1)].x.toString() + ", " + tl[(area - 1)].y.toString() + " ] - [ " + br[(area - 1)].x.toString() + ", " + br[(area - 1)].y.toString() + " ]" + Utils.i18n("localize22");
            AlertWindow.show(msg, "", AlertWindow.YES | AlertWindow.NO | AlertWindow.POINT, this, function (event:CloseEvent) : void
            {
                if (event.detail == AlertWindow.YES)
                {
                    dispatchEvent(new PopupEvent(CHARGE_REMOVE_OK, {area:area}));
                }
                return;
            }// end function
            );
            return;
        }// end function

        private function get _swf_close() : MovieClipLoaderAsset
        {
            return this._1193840764_swf_close;
        }// end function

        public static function set watcherSetupUtil(param1:IWatcherSetupUtil) : void
        {
            ChargeRemoveWindow._watcherSetupUtil = param1;
            return;
        }// end function

    }
}
