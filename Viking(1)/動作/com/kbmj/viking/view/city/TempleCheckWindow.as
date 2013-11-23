package com.kbmj.viking.view.city
{
    import com.kbmj.viking.lib.*;
    import flash.display.*;
    import flash.events.*;
    import flash.utils.*;
    import mx.binding.*;
    import mx.containers.*;
    import mx.controls.*;
    import mx.core.*;
    import mx.events.*;
    import mx.managers.*;

    public class TempleCheckWindow extends Canvas implements IBindingClient
    {
        public var _TempleCheckWindow_Text9:Text;
        public var _TempleCheckWindow_Image1:Image;
        public var _TempleCheckWindow_Image2:Image;
        public var _TempleCheckWindow_Image3:Image;
        public var _TempleCheckWindow_Image4:Image;
        private var _1075873300_swf_window:MovieClipLoaderAsset;
        var _watchers:Array;
        private var _550983275_swf_yes:MovieClipLoaderAsset;
        private var _1896677185windowLayer:Canvas;
        private var _957543327_guildName:String;
        private var _292905088checkCanvas:Canvas;
        private var _eventName:String;
        var _bindingsByDestination:Object;
        private var ViewStackIndex:int;
        var _bindingsBeginWithWord:Object;
        private var _1818888637_swf_no:MovieClipLoaderAsset;
        private var _2059123688messegeViewStack:ViewStack;
        private var _1218643219_swf_close_window:MovieClipLoaderAsset;
        private var _91291148_text:String;
        var _bindings:Array;
        public var _TempleCheckWindow_Text3:Text;
        public var _TempleCheckWindow_Text4:Text;
        public var _TempleCheckWindow_Text5:Text;
        public var _TempleCheckWindow_Text6:Text;
        public var _TempleCheckWindow_Text7:Text;
        public var _TempleCheckWindow_Text1:Text;
        public var _TempleCheckWindow_Text2:Text;
        private var create:Boolean = false;
        private var _documentDescriptor_:UIComponentDescriptor;
        public var _TempleCheckWindow_Text8:Text;
        public static const INDEX_GUILD_APPLICATION_CANCEL:int = 1;
        private static const WINDOW_X:int = 230;
        private static const WINDOW_Y:int = 180;
        private static const BUTTON_X:int = 325;
        private static const BUTTON_Y:int = 330;
        private static const WINDOW_HT:int = 200;
        public static const INDEX_GUILD_MEMBER_REMOVE:int = 7;
        public static const INDEX_GUILD_CHECK_ALLOW:int = 5;
        public static const INDEX_GUILD_MASTER_APPOINTMENT:int = 3;
        public static const INDEX_GUILD_COMPULSION_RETURN_CHARACTER:int = 4;
        public static const INDEX_GUILD_QUIT:int = 0;
        private static var _watcherSetupUtil:IWatcherSetupUtil;
        public static const CLOSE_CHECK_WINDOW:String = "closeCheckWIndow";
        public static const INDEX_GUILD_MASTER_RESIGN:int = 2;
        public static const GUILD_QUIT:String = "guildQuit";
        private static const WINDOW_WD:int = 300;
        public static const INDEX_GUILD_CHECK_REJECT:int = 6;

        public function TempleCheckWindow()
        {
            _documentDescriptor_ = new UIComponentDescriptor({type:Canvas, propertiesFactory:function () : Object
            {
                return {width:760, height:560, childDescriptors:[new UIComponentDescriptor({type:Canvas, id:"windowLayer"}), new UIComponentDescriptor({type:Image, id:"_TempleCheckWindow_Image1"}), new UIComponentDescriptor({type:Text, id:"_TempleCheckWindow_Text1", propertiesFactory:function () : Object
                {
                    return {styleName:"DealTitle"};
                }// end function
                }), new UIComponentDescriptor({type:Image, id:"_TempleCheckWindow_Image2", events:{click:"___TempleCheckWindow_Image2_click"}}), new UIComponentDescriptor({type:Canvas, id:"checkCanvas", propertiesFactory:function () : Object
                {
                    return {childDescriptors:[new UIComponentDescriptor({type:ViewStack, id:"messegeViewStack", propertiesFactory:function () : Object
                    {
                        return {selectedIndex:0, childDescriptors:[new UIComponentDescriptor({type:Box, stylesFactory:function () : void
                        {
                            this.horizontalAlign = "center";
                            return;
                        }// end function
                        , propertiesFactory:function () : Object
                        {
                            return {childDescriptors:[new UIComponentDescriptor({type:Text, id:"_TempleCheckWindow_Text2", stylesFactory:function () : void
                            {
                                this.leading = 0;
                                return;
                            }// end function
                            , propertiesFactory:function () : Object
                            {
                                return {styleName:"CenterText"};
                            }// end function
                            })]};
                        }// end function
                        }), new UIComponentDescriptor({type:Box, stylesFactory:function () : void
                        {
                            this.horizontalAlign = "center";
                            return;
                        }// end function
                        , propertiesFactory:function () : Object
                        {
                            return {childDescriptors:[new UIComponentDescriptor({type:Text, id:"_TempleCheckWindow_Text3", stylesFactory:function () : void
                            {
                                this.leading = 0;
                                return;
                            }// end function
                            , propertiesFactory:function () : Object
                            {
                                return {styleName:"CenterText"};
                            }// end function
                            })]};
                        }// end function
                        }), new UIComponentDescriptor({type:Box, stylesFactory:function () : void
                        {
                            this.horizontalAlign = "center";
                            return;
                        }// end function
                        , propertiesFactory:function () : Object
                        {
                            return {childDescriptors:[new UIComponentDescriptor({type:Text, id:"_TempleCheckWindow_Text4", stylesFactory:function () : void
                            {
                                this.leading = 0;
                                return;
                            }// end function
                            , propertiesFactory:function () : Object
                            {
                                return {styleName:"CenterText"};
                            }// end function
                            })]};
                        }// end function
                        }), new UIComponentDescriptor({type:Box, stylesFactory:function () : void
                        {
                            this.horizontalAlign = "center";
                            return;
                        }// end function
                        , propertiesFactory:function () : Object
                        {
                            return {childDescriptors:[new UIComponentDescriptor({type:Text, id:"_TempleCheckWindow_Text5", stylesFactory:function () : void
                            {
                                this.leading = 0;
                                return;
                            }// end function
                            , propertiesFactory:function () : Object
                            {
                                return {styleName:"CenterText"};
                            }// end function
                            })]};
                        }// end function
                        }), new UIComponentDescriptor({type:Box, stylesFactory:function () : void
                        {
                            this.horizontalAlign = "center";
                            return;
                        }// end function
                        , propertiesFactory:function () : Object
                        {
                            return {childDescriptors:[new UIComponentDescriptor({type:Text, id:"_TempleCheckWindow_Text6", stylesFactory:function () : void
                            {
                                this.leading = 0;
                                return;
                            }// end function
                            , propertiesFactory:function () : Object
                            {
                                return {styleName:"CenterText"};
                            }// end function
                            })]};
                        }// end function
                        }), new UIComponentDescriptor({type:Box, stylesFactory:function () : void
                        {
                            this.horizontalAlign = "center";
                            return;
                        }// end function
                        , propertiesFactory:function () : Object
                        {
                            return {childDescriptors:[new UIComponentDescriptor({type:Text, id:"_TempleCheckWindow_Text7", stylesFactory:function () : void
                            {
                                this.leading = 0;
                                return;
                            }// end function
                            , propertiesFactory:function () : Object
                            {
                                return {styleName:"CenterText"};
                            }// end function
                            })]};
                        }// end function
                        }), new UIComponentDescriptor({type:Box, stylesFactory:function () : void
                        {
                            this.horizontalAlign = "center";
                            return;
                        }// end function
                        , propertiesFactory:function () : Object
                        {
                            return {childDescriptors:[new UIComponentDescriptor({type:Text, id:"_TempleCheckWindow_Text8", stylesFactory:function () : void
                            {
                                this.leading = 0;
                                return;
                            }// end function
                            , propertiesFactory:function () : Object
                            {
                                return {styleName:"CenterText"};
                            }// end function
                            })]};
                        }// end function
                        }), new UIComponentDescriptor({type:Box, stylesFactory:function () : void
                        {
                            this.horizontalAlign = "center";
                            return;
                        }// end function
                        , propertiesFactory:function () : Object
                        {
                            return {childDescriptors:[new UIComponentDescriptor({type:Text, id:"_TempleCheckWindow_Text9", stylesFactory:function () : void
                            {
                                this.leading = 0;
                                return;
                            }// end function
                            , propertiesFactory:function () : Object
                            {
                                return {styleName:"CenterText"};
                            }// end function
                            })]};
                        }// end function
                        })]};
                    }// end function
                    }), new UIComponentDescriptor({type:Image, id:"_TempleCheckWindow_Image3", events:{click:"___TempleCheckWindow_Image3_click"}}), new UIComponentDescriptor({type:Image, id:"_TempleCheckWindow_Image4", events:{click:"___TempleCheckWindow_Image4_click"}})]};
                }// end function
                })]};
            }// end function
            });
            _1075873300_swf_window = new Viking.EmbedSwfWindowCommon();
            _550983275_swf_yes = new Viking.EmbedSwfButtonCommon();
            _1818888637_swf_no = new Viking.EmbedSwfButtonCommon();
            _1218643219_swf_close_window = new Viking.EmbedSwfButtonCloseWindow();
            _bindings = [];
            _watchers = [];
            _bindingsByDestination = {};
            _bindingsBeginWithWord = {};
            mx_internal::_document = this;
            this.width = 760;
            this.height = 560;
            this.addEventListener("creationComplete", ___TempleCheckWindow_Canvas1_creationComplete);
            return;
        }// end function

        private function onOK() : void
        {
            dispatchEvent(new Event(_eventName));
            close();
            MovieClip(Loader(_swf_yes.getChildAt(0)).content).gotoAndPlay(0);
            MovieClip(Loader(_swf_yes.getChildAt(0)).content).gotoAndPlay("button_yes");
            return;
        }// end function

        public function ___TempleCheckWindow_Image3_click(event:MouseEvent) : void
        {
            onOK();
            return;
        }// end function

        private function get _swf_window() : MovieClipLoaderAsset
        {
            return this._1075873300_swf_window;
        }// end function

        public function get checkCanvas() : Canvas
        {
            return this._292905088checkCanvas;
        }// end function

        override public function initialize() : void
        {
            var target:TempleCheckWindow;
            var watcherSetupUtilClass:Object;
            .mx_internal::setDocumentDescriptor(_documentDescriptor_);
            var bindings:* = _TempleCheckWindow_bindingsSetup();
            var watchers:Array;
            target;
            if (_watcherSetupUtil == null)
            {
                watcherSetupUtilClass = getDefinitionByName("_com_kbmj_viking_view_city_TempleCheckWindowWatcherSetupUtil");
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

        public function set eventName(param1:String) : void
        {
            _eventName = param1;
            return;
        }// end function

        private function close() : void
        {
            dispatchEvent(new Event(CLOSE_CHECK_WINDOW));
            PopUpManager.removePopUp(this);
            MovieClip(Loader(_swf_no.getChildAt(0)).content).gotoAndPlay(0);
            MovieClip(Loader(_swf_no.getChildAt(0)).content).gotoAndPlay("button_no");
            MovieClip(Loader(_swf_close_window.getChildAt(0)).content).gotoAndPlay(1);
            return;
        }// end function

        private function _TempleCheckWindow_bindingExprs() : void
        {
            var _loc_1:* = undefined;
            _loc_1 = _swf_window;
            _loc_1 = WINDOW_X;
            _loc_1 = WINDOW_Y;
            _loc_1 = WINDOW_WD;
            _loc_1 = Utils.i18n("generalConfirmation");
            _loc_1 = WINDOW_X + WINDOW_WD - 25;
            _loc_1 = WINDOW_Y;
            _loc_1 = _swf_close_window;
            _loc_1 = WINDOW_X + 20;
            _loc_1 = WINDOW_Y + 35;
            _loc_1 = WINDOW_WD - 40;
            _loc_1 = WINDOW_HT - 35 - 50 - 10;
            _loc_1 = Utils.i18n("templeCheckWithdrawalConf", _guildName);
            _loc_1 = Utils.i18n("templeCheckAdmissionRemoveConf", _guildName);
            _loc_1 = Utils.i18n("templeCheckResignationConf", _guildName);
            _loc_1 = Utils.i18n("templeCheckAppointmentConf", _guildName);
            _loc_1 = Utils.i18n("templeCheckForcingPeriodConf", _guildName);
            _loc_1 = Utils.i18n("templeCheckAdmissionPermitConf", _guildName);
            _loc_1 = Utils.i18n("templeCheckAdmissionRejectionConf", _guildName);
            _loc_1 = Utils.i18n("templeCheckExpulsionConf", _guildName);
            _loc_1 = BUTTON_X - 65;
            _loc_1 = BUTTON_Y;
            _loc_1 = _swf_yes;
            _loc_1 = BUTTON_X + 65;
            _loc_1 = BUTTON_Y;
            _loc_1 = _swf_no;
            return;
        }// end function

        public function ___TempleCheckWindow_Canvas1_creationComplete(event:FlexEvent) : void
        {
            init();
            return;
        }// end function

        public function set windowLayer(param1:Canvas) : void
        {
            var _loc_2:* = this._1896677185windowLayer;
            if (_loc_2 !== param1)
            {
                this._1896677185windowLayer = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "windowLayer", _loc_2, param1));
            }
            return;
        }// end function

        private function init() : void
        {
            messegeViewStack.selectedIndex = ViewStackIndex;
            create = true;
            MovieClip(Loader(_swf_window.getChildAt(0)).content).gotoAndPlay("center_300x200");
            MovieClip(Loader(_swf_yes.getChildAt(0)).content).gotoAndPlay("button_yes");
            MovieClip(Loader(_swf_no.getChildAt(0)).content).gotoAndPlay("button_no");
            return;
        }// end function

        private function _TempleCheckWindow_bindingsSetup() : Array
        {
            var binding:Binding;
            var result:Array;
            binding = new Binding(this, function () : Object
            {
                return _swf_window;
            }// end function
            , function (param1:Object) : void
            {
                _TempleCheckWindow_Image1.source = param1;
                return;
            }// end function
            , "_TempleCheckWindow_Image1.source");
            result[0] = binding;
            binding = new Binding(this, function () : Number
            {
                return WINDOW_X;
            }// end function
            , function (param1:Number) : void
            {
                _TempleCheckWindow_Text1.x = param1;
                return;
            }// end function
            , "_TempleCheckWindow_Text1.x");
            result[1] = binding;
            binding = new Binding(this, function () : Number
            {
                return WINDOW_Y;
            }// end function
            , function (param1:Number) : void
            {
                _TempleCheckWindow_Text1.y = param1;
                return;
            }// end function
            , "_TempleCheckWindow_Text1.y");
            result[2] = binding;
            binding = new Binding(this, function () : Number
            {
                return WINDOW_WD;
            }// end function
            , function (param1:Number) : void
            {
                _TempleCheckWindow_Text1.width = param1;
                return;
            }// end function
            , "_TempleCheckWindow_Text1.width");
            result[3] = binding;
            binding = new Binding(this, function () : String
            {
                var _loc_1:* = Utils.i18n("generalConfirmation");
                var _loc_2:* = _loc_1 == undefined ? (null) : (String(_loc_1));
                return _loc_2;
            }// end function
            , function (param1:String) : void
            {
                _TempleCheckWindow_Text1.text = param1;
                return;
            }// end function
            , "_TempleCheckWindow_Text1.text");
            result[4] = binding;
            binding = new Binding(this, function () : Number
            {
                return WINDOW_X + WINDOW_WD - 25;
            }// end function
            , function (param1:Number) : void
            {
                _TempleCheckWindow_Image2.x = param1;
                return;
            }// end function
            , "_TempleCheckWindow_Image2.x");
            result[5] = binding;
            binding = new Binding(this, function () : Number
            {
                return WINDOW_Y;
            }// end function
            , function (param1:Number) : void
            {
                _TempleCheckWindow_Image2.y = param1;
                return;
            }// end function
            , "_TempleCheckWindow_Image2.y");
            result[6] = binding;
            binding = new Binding(this, function () : Object
            {
                return _swf_close_window;
            }// end function
            , function (param1:Object) : void
            {
                _TempleCheckWindow_Image2.source = param1;
                return;
            }// end function
            , "_TempleCheckWindow_Image2.source");
            result[7] = binding;
            binding = new Binding(this, function () : Number
            {
                return WINDOW_X + 20;
            }// end function
            , function (param1:Number) : void
            {
                messegeViewStack.x = param1;
                return;
            }// end function
            , "messegeViewStack.x");
            result[8] = binding;
            binding = new Binding(this, function () : Number
            {
                return WINDOW_Y + 35;
            }// end function
            , function (param1:Number) : void
            {
                messegeViewStack.y = param1;
                return;
            }// end function
            , "messegeViewStack.y");
            result[9] = binding;
            binding = new Binding(this, function () : Number
            {
                return WINDOW_WD - 40;
            }// end function
            , function (param1:Number) : void
            {
                messegeViewStack.width = param1;
                return;
            }// end function
            , "messegeViewStack.width");
            result[10] = binding;
            binding = new Binding(this, function () : Number
            {
                return WINDOW_HT - 35 - 50 - 10;
            }// end function
            , function (param1:Number) : void
            {
                messegeViewStack.height = param1;
                return;
            }// end function
            , "messegeViewStack.height");
            result[11] = binding;
            binding = new Binding(this, function () : String
            {
                var _loc_1:* = Utils.i18n("templeCheckWithdrawalConf", _guildName);
                var _loc_2:* = _loc_1 == undefined ? (null) : (String(_loc_1));
                return _loc_2;
            }// end function
            , function (param1:String) : void
            {
                _TempleCheckWindow_Text2.text = param1;
                return;
            }// end function
            , "_TempleCheckWindow_Text2.text");
            result[12] = binding;
            binding = new Binding(this, function () : String
            {
                var _loc_1:* = Utils.i18n("templeCheckAdmissionRemoveConf", _guildName);
                var _loc_2:* = _loc_1 == undefined ? (null) : (String(_loc_1));
                return _loc_2;
            }// end function
            , function (param1:String) : void
            {
                _TempleCheckWindow_Text3.text = param1;
                return;
            }// end function
            , "_TempleCheckWindow_Text3.text");
            result[13] = binding;
            binding = new Binding(this, function () : String
            {
                var _loc_1:* = Utils.i18n("templeCheckResignationConf", _guildName);
                var _loc_2:* = _loc_1 == undefined ? (null) : (String(_loc_1));
                return _loc_2;
            }// end function
            , function (param1:String) : void
            {
                _TempleCheckWindow_Text4.text = param1;
                return;
            }// end function
            , "_TempleCheckWindow_Text4.text");
            result[14] = binding;
            binding = new Binding(this, function () : String
            {
                var _loc_1:* = Utils.i18n("templeCheckAppointmentConf", _guildName);
                var _loc_2:* = _loc_1 == undefined ? (null) : (String(_loc_1));
                return _loc_2;
            }// end function
            , function (param1:String) : void
            {
                _TempleCheckWindow_Text5.text = param1;
                return;
            }// end function
            , "_TempleCheckWindow_Text5.text");
            result[15] = binding;
            binding = new Binding(this, function () : String
            {
                var _loc_1:* = Utils.i18n("templeCheckForcingPeriodConf", _guildName);
                var _loc_2:* = _loc_1 == undefined ? (null) : (String(_loc_1));
                return _loc_2;
            }// end function
            , function (param1:String) : void
            {
                _TempleCheckWindow_Text6.text = param1;
                return;
            }// end function
            , "_TempleCheckWindow_Text6.text");
            result[16] = binding;
            binding = new Binding(this, function () : String
            {
                var _loc_1:* = Utils.i18n("templeCheckAdmissionPermitConf", _guildName);
                var _loc_2:* = _loc_1 == undefined ? (null) : (String(_loc_1));
                return _loc_2;
            }// end function
            , function (param1:String) : void
            {
                _TempleCheckWindow_Text7.text = param1;
                return;
            }// end function
            , "_TempleCheckWindow_Text7.text");
            result[17] = binding;
            binding = new Binding(this, function () : String
            {
                var _loc_1:* = Utils.i18n("templeCheckAdmissionRejectionConf", _guildName);
                var _loc_2:* = _loc_1 == undefined ? (null) : (String(_loc_1));
                return _loc_2;
            }// end function
            , function (param1:String) : void
            {
                _TempleCheckWindow_Text8.text = param1;
                return;
            }// end function
            , "_TempleCheckWindow_Text8.text");
            result[18] = binding;
            binding = new Binding(this, function () : String
            {
                var _loc_1:* = Utils.i18n("templeCheckExpulsionConf", _guildName);
                var _loc_2:* = _loc_1 == undefined ? (null) : (String(_loc_1));
                return _loc_2;
            }// end function
            , function (param1:String) : void
            {
                _TempleCheckWindow_Text9.text = param1;
                return;
            }// end function
            , "_TempleCheckWindow_Text9.text");
            result[19] = binding;
            binding = new Binding(this, function () : Number
            {
                return BUTTON_X - 65;
            }// end function
            , function (param1:Number) : void
            {
                _TempleCheckWindow_Image3.x = param1;
                return;
            }// end function
            , "_TempleCheckWindow_Image3.x");
            result[20] = binding;
            binding = new Binding(this, function () : Number
            {
                return BUTTON_Y;
            }// end function
            , function (param1:Number) : void
            {
                _TempleCheckWindow_Image3.y = param1;
                return;
            }// end function
            , "_TempleCheckWindow_Image3.y");
            result[21] = binding;
            binding = new Binding(this, function () : Object
            {
                return _swf_yes;
            }// end function
            , function (param1:Object) : void
            {
                _TempleCheckWindow_Image3.source = param1;
                return;
            }// end function
            , "_TempleCheckWindow_Image3.source");
            result[22] = binding;
            binding = new Binding(this, function () : Number
            {
                return BUTTON_X + 65;
            }// end function
            , function (param1:Number) : void
            {
                _TempleCheckWindow_Image4.x = param1;
                return;
            }// end function
            , "_TempleCheckWindow_Image4.x");
            result[23] = binding;
            binding = new Binding(this, function () : Number
            {
                return BUTTON_Y;
            }// end function
            , function (param1:Number) : void
            {
                _TempleCheckWindow_Image4.y = param1;
                return;
            }// end function
            , "_TempleCheckWindow_Image4.y");
            result[24] = binding;
            binding = new Binding(this, function () : Object
            {
                return _swf_no;
            }// end function
            , function (param1:Object) : void
            {
                _TempleCheckWindow_Image4.source = param1;
                return;
            }// end function
            , "_TempleCheckWindow_Image4.source");
            result[25] = binding;
            return result;
        }// end function

        private function get _swf_close_window() : MovieClipLoaderAsset
        {
            return this._1218643219_swf_close_window;
        }// end function

        public function set checkCanvas(param1:Canvas) : void
        {
            var _loc_2:* = this._292905088checkCanvas;
            if (_loc_2 !== param1)
            {
                this._292905088checkCanvas = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "checkCanvas", _loc_2, param1));
            }
            return;
        }// end function

        public function get _text() : String
        {
            return this._91291148_text;
        }// end function

        public function ___TempleCheckWindow_Image4_click(event:MouseEvent) : void
        {
            close();
            return;
        }// end function

        public function set messegeViewStack(param1:ViewStack) : void
        {
            var _loc_2:* = this._2059123688messegeViewStack;
            if (_loc_2 !== param1)
            {
                this._2059123688messegeViewStack = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "messegeViewStack", _loc_2, param1));
            }
            return;
        }// end function

        private function get _swf_no() : MovieClipLoaderAsset
        {
            return this._1818888637_swf_no;
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

        public function get windowLayer() : Canvas
        {
            return this._1896677185windowLayer;
        }// end function

        public function get messegeViewStack() : ViewStack
        {
            return this._2059123688messegeViewStack;
        }// end function

        public function ___TempleCheckWindow_Image2_click(event:MouseEvent) : void
        {
            close();
            return;
        }// end function

        public function set _guildName(param1:String) : void
        {
            var _loc_2:* = this._957543327_guildName;
            if (_loc_2 !== param1)
            {
                this._957543327_guildName = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "_guildName", _loc_2, param1));
            }
            return;
        }// end function

        public function set _text(param1:String) : void
        {
            var _loc_2:* = this._91291148_text;
            if (_loc_2 !== param1)
            {
                this._91291148_text = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "_text", _loc_2, param1));
            }
            return;
        }// end function

        private function set _swf_yes(param1:MovieClipLoaderAsset) : void
        {
            var _loc_2:* = this._550983275_swf_yes;
            if (_loc_2 !== param1)
            {
                this._550983275_swf_yes = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "_swf_yes", _loc_2, param1));
            }
            return;
        }// end function

        private function set _swf_window(param1:MovieClipLoaderAsset) : void
        {
            var _loc_2:* = this._1075873300_swf_window;
            if (_loc_2 !== param1)
            {
                this._1075873300_swf_window = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "_swf_window", _loc_2, param1));
            }
            return;
        }// end function

        public function setGuildName(param1:String, param2:int) : void
        {
            _guildName = param1;
            if (create)
            {
                messegeViewStack.selectedIndex = param2;
            }
            else
            {
                ViewStackIndex = param2;
            }
            return;
        }// end function

        public function get _guildName() : String
        {
            return this._957543327_guildName;
        }// end function

        private function get _swf_yes() : MovieClipLoaderAsset
        {
            return this._550983275_swf_yes;
        }// end function

        private function set _swf_no(param1:MovieClipLoaderAsset) : void
        {
            var _loc_2:* = this._1818888637_swf_no;
            if (_loc_2 !== param1)
            {
                this._1818888637_swf_no = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "_swf_no", _loc_2, param1));
            }
            return;
        }// end function

        public static function set watcherSetupUtil(param1:IWatcherSetupUtil) : void
        {
            TempleCheckWindow._watcherSetupUtil = param1;
            return;
        }// end function

    }
}
