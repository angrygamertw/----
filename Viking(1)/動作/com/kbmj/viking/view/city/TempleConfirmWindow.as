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

    public class TempleConfirmWindow extends Canvas implements IBindingClient
    {
        private var _1075873300_swf_window:MovieClipLoaderAsset;
        var _watchers:Array;
        public var _TempleConfirmWindow_Text1:Text;
        public var _TempleConfirmWindow_Text2:Text;
        public var _TempleConfirmWindow_Text3:Text;
        public var _TempleConfirmWindow_Text4:Text;
        public var _TempleConfirmWindow_Text5:Text;
        public var _TempleConfirmWindow_Text6:Text;
        public var _TempleConfirmWindow_Text7:Text;
        public var _TempleConfirmWindow_Text8:Text;
        private var _957543327_guildName:String;
        private var _eventName:String;
        var _bindingsByDestination:Object;
        var _bindingsBeginWithWord:Object;
        private var ViewStackIndex:int;
        public var _TempleConfirmWindow_Image1:Image;
        public var _TempleConfirmWindow_Image2:Image;
        public var _TempleConfirmWindow_Image3:Image;
        private var _2059123688messegeViewStack:ViewStack;
        private var _1193840764_swf_close:MovieClipLoaderAsset;
        private var _91291148_text:String;
        var _bindings:Array;
        private var _1218643219_swf_close_window:MovieClipLoaderAsset;
        private var _documentDescriptor_:UIComponentDescriptor;
        private var create:Boolean = false;
        public static const INDEX_GUILD_ADMISSION_FINISH:int = 2;
        private static const WINDOW_X:int = 230;
        private static const WINDOW_Y:int = 180;
        private static const BUTTON_X:int = 325;
        private static const BUTTON_Y:int = 330;
        public static const INDEX_GUILD_QUIT_FINISH:int = 1;
        public static const GUILD_QUIT_FINISH:String = "guildQuitFinish";
        public static const INDEX_APPLICATION_CANCEL_FINISH:int = 3;
        private static var _watcherSetupUtil:IWatcherSetupUtil;
        public static const INDEX_GUILD_LEVEL_UP_FINISH:int = 6;
        public static const INDEX_GUILD_MASTER_RESIGN:int = 4;
        public static const INDEX_GUILD_DISSOLUTION:int = 5;
        private static const WINDOW_HT:int = 200;
        private static const WINDOW_WD:int = 300;
        public static const INDEX_GUILD_CREATE_FINISH:int = 0;

        public function TempleConfirmWindow()
        {
            _documentDescriptor_ = new UIComponentDescriptor({type:Canvas, propertiesFactory:function () : Object
            {
                return {width:760, height:560, childDescriptors:[new UIComponentDescriptor({type:Image, id:"_TempleConfirmWindow_Image1"}), new UIComponentDescriptor({type:Text, id:"_TempleConfirmWindow_Text1", propertiesFactory:function () : Object
                {
                    return {styleName:"DealTitle"};
                }// end function
                }), new UIComponentDescriptor({type:Image, id:"_TempleConfirmWindow_Image2", events:{click:"___TempleConfirmWindow_Image2_click"}}), new UIComponentDescriptor({type:Canvas, propertiesFactory:function () : Object
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
                            return {childDescriptors:[new UIComponentDescriptor({type:Text, id:"_TempleConfirmWindow_Text2", propertiesFactory:function () : Object
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
                            return {childDescriptors:[new UIComponentDescriptor({type:Text, id:"_TempleConfirmWindow_Text3", propertiesFactory:function () : Object
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
                            return {childDescriptors:[new UIComponentDescriptor({type:Text, id:"_TempleConfirmWindow_Text4", propertiesFactory:function () : Object
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
                            return {childDescriptors:[new UIComponentDescriptor({type:Text, id:"_TempleConfirmWindow_Text5", propertiesFactory:function () : Object
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
                            return {childDescriptors:[new UIComponentDescriptor({type:Text, id:"_TempleConfirmWindow_Text6", propertiesFactory:function () : Object
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
                            return {childDescriptors:[new UIComponentDescriptor({type:Text, id:"_TempleConfirmWindow_Text7", propertiesFactory:function () : Object
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
                            return {childDescriptors:[new UIComponentDescriptor({type:Text, id:"_TempleConfirmWindow_Text8", propertiesFactory:function () : Object
                            {
                                return {styleName:"CenterText"};
                            }// end function
                            })]};
                        }// end function
                        })]};
                    }// end function
                    }), new UIComponentDescriptor({type:Image, id:"_TempleConfirmWindow_Image3", events:{click:"___TempleConfirmWindow_Image3_click"}})]};
                }// end function
                })]};
            }// end function
            });
            _1075873300_swf_window = new Viking.EmbedSwfWindowCommon();
            _1218643219_swf_close_window = new Viking.EmbedSwfButtonCloseWindow();
            _1193840764_swf_close = new Viking.EmbedSwfButtonCommon();
            _bindings = [];
            _watchers = [];
            _bindingsByDestination = {};
            _bindingsBeginWithWord = {};
            mx_internal::_document = this;
            this.width = 760;
            this.height = 560;
            this.addEventListener("creationComplete", ___TempleConfirmWindow_Canvas1_creationComplete);
            return;
        }// end function

        private function _TempleConfirmWindow_bindingExprs() : void
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
            _loc_1 = Utils.i18n("templeConfirmEstablishment", _guildName);
            _loc_1 = Utils.i18n("templeConfirmWithdrawal", _guildName);
            _loc_1 = Utils.i18n("templeConfirmRequest", _guildName);
            _loc_1 = Utils.i18n("templeConfirmRequestCancel", _guildName);
            _loc_1 = Utils.i18n("templeconfirmResignation", _guildName);
            _loc_1 = Utils.i18n("templeConfirmDismantling", _guildName);
            _loc_1 = Utils.i18n("templeConfirmLevelUp", _guildName);
            _loc_1 = BUTTON_X;
            _loc_1 = BUTTON_Y;
            _loc_1 = _swf_close;
            return;
        }// end function

        public function ___TempleConfirmWindow_Image2_click(event:MouseEvent) : void
        {
            onOK();
            return;
        }// end function

        private function get _swf_close() : MovieClipLoaderAsset
        {
            return this._1193840764_swf_close;
        }// end function

        public function set eventName(param1:String) : void
        {
            _eventName = param1;
            return;
        }// end function

        override public function initialize() : void
        {
            var target:TempleConfirmWindow;
            var watcherSetupUtilClass:Object;
            .mx_internal::setDocumentDescriptor(_documentDescriptor_);
            var bindings:* = _TempleConfirmWindow_bindingsSetup();
            var watchers:Array;
            target;
            if (_watcherSetupUtil == null)
            {
                watcherSetupUtilClass = getDefinitionByName("_com_kbmj_viking_view_city_TempleConfirmWindowWatcherSetupUtil");
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

        public function get _text() : String
        {
            return this._91291148_text;
        }// end function

        public function get messegeViewStack() : ViewStack
        {
            return this._2059123688messegeViewStack;
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

        private function _TempleConfirmWindow_bindingsSetup() : Array
        {
            var binding:Binding;
            var result:Array;
            binding = new Binding(this, function () : Object
            {
                return _swf_window;
            }// end function
            , function (param1:Object) : void
            {
                _TempleConfirmWindow_Image1.source = param1;
                return;
            }// end function
            , "_TempleConfirmWindow_Image1.source");
            result[0] = binding;
            binding = new Binding(this, function () : Number
            {
                return WINDOW_X;
            }// end function
            , function (param1:Number) : void
            {
                _TempleConfirmWindow_Text1.x = param1;
                return;
            }// end function
            , "_TempleConfirmWindow_Text1.x");
            result[1] = binding;
            binding = new Binding(this, function () : Number
            {
                return WINDOW_Y;
            }// end function
            , function (param1:Number) : void
            {
                _TempleConfirmWindow_Text1.y = param1;
                return;
            }// end function
            , "_TempleConfirmWindow_Text1.y");
            result[2] = binding;
            binding = new Binding(this, function () : Number
            {
                return WINDOW_WD;
            }// end function
            , function (param1:Number) : void
            {
                _TempleConfirmWindow_Text1.width = param1;
                return;
            }// end function
            , "_TempleConfirmWindow_Text1.width");
            result[3] = binding;
            binding = new Binding(this, function () : String
            {
                var _loc_1:* = Utils.i18n("generalConfirmation");
                var _loc_2:* = _loc_1 == undefined ? (null) : (String(_loc_1));
                return _loc_2;
            }// end function
            , function (param1:String) : void
            {
                _TempleConfirmWindow_Text1.text = param1;
                return;
            }// end function
            , "_TempleConfirmWindow_Text1.text");
            result[4] = binding;
            binding = new Binding(this, function () : Number
            {
                return WINDOW_X + WINDOW_WD - 25;
            }// end function
            , function (param1:Number) : void
            {
                _TempleConfirmWindow_Image2.x = param1;
                return;
            }// end function
            , "_TempleConfirmWindow_Image2.x");
            result[5] = binding;
            binding = new Binding(this, function () : Number
            {
                return WINDOW_Y;
            }// end function
            , function (param1:Number) : void
            {
                _TempleConfirmWindow_Image2.y = param1;
                return;
            }// end function
            , "_TempleConfirmWindow_Image2.y");
            result[6] = binding;
            binding = new Binding(this, function () : Object
            {
                return _swf_close_window;
            }// end function
            , function (param1:Object) : void
            {
                _TempleConfirmWindow_Image2.source = param1;
                return;
            }// end function
            , "_TempleConfirmWindow_Image2.source");
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
            binding = new Binding(this, function () : String
            {
                var _loc_1:* = Utils.i18n("templeConfirmEstablishment", _guildName);
                var _loc_2:* = _loc_1 == undefined ? (null) : (String(_loc_1));
                return _loc_2;
            }// end function
            , function (param1:String) : void
            {
                _TempleConfirmWindow_Text2.text = param1;
                return;
            }// end function
            , "_TempleConfirmWindow_Text2.text");
            result[11] = binding;
            binding = new Binding(this, function () : String
            {
                var _loc_1:* = Utils.i18n("templeConfirmWithdrawal", _guildName);
                var _loc_2:* = _loc_1 == undefined ? (null) : (String(_loc_1));
                return _loc_2;
            }// end function
            , function (param1:String) : void
            {
                _TempleConfirmWindow_Text3.text = param1;
                return;
            }// end function
            , "_TempleConfirmWindow_Text3.text");
            result[12] = binding;
            binding = new Binding(this, function () : String
            {
                var _loc_1:* = Utils.i18n("templeConfirmRequest", _guildName);
                var _loc_2:* = _loc_1 == undefined ? (null) : (String(_loc_1));
                return _loc_2;
            }// end function
            , function (param1:String) : void
            {
                _TempleConfirmWindow_Text4.text = param1;
                return;
            }// end function
            , "_TempleConfirmWindow_Text4.text");
            result[13] = binding;
            binding = new Binding(this, function () : String
            {
                var _loc_1:* = Utils.i18n("templeConfirmRequestCancel", _guildName);
                var _loc_2:* = _loc_1 == undefined ? (null) : (String(_loc_1));
                return _loc_2;
            }// end function
            , function (param1:String) : void
            {
                _TempleConfirmWindow_Text5.text = param1;
                return;
            }// end function
            , "_TempleConfirmWindow_Text5.text");
            result[14] = binding;
            binding = new Binding(this, function () : String
            {
                var _loc_1:* = Utils.i18n("templeconfirmResignation", _guildName);
                var _loc_2:* = _loc_1 == undefined ? (null) : (String(_loc_1));
                return _loc_2;
            }// end function
            , function (param1:String) : void
            {
                _TempleConfirmWindow_Text6.text = param1;
                return;
            }// end function
            , "_TempleConfirmWindow_Text6.text");
            result[15] = binding;
            binding = new Binding(this, function () : String
            {
                var _loc_1:* = Utils.i18n("templeConfirmDismantling", _guildName);
                var _loc_2:* = _loc_1 == undefined ? (null) : (String(_loc_1));
                return _loc_2;
            }// end function
            , function (param1:String) : void
            {
                _TempleConfirmWindow_Text7.text = param1;
                return;
            }// end function
            , "_TempleConfirmWindow_Text7.text");
            result[16] = binding;
            binding = new Binding(this, function () : String
            {
                var _loc_1:* = Utils.i18n("templeConfirmLevelUp", _guildName);
                var _loc_2:* = _loc_1 == undefined ? (null) : (String(_loc_1));
                return _loc_2;
            }// end function
            , function (param1:String) : void
            {
                _TempleConfirmWindow_Text8.text = param1;
                return;
            }// end function
            , "_TempleConfirmWindow_Text8.text");
            result[17] = binding;
            binding = new Binding(this, function () : Number
            {
                return BUTTON_X;
            }// end function
            , function (param1:Number) : void
            {
                _TempleConfirmWindow_Image3.x = param1;
                return;
            }// end function
            , "_TempleConfirmWindow_Image3.x");
            result[18] = binding;
            binding = new Binding(this, function () : Number
            {
                return BUTTON_Y;
            }// end function
            , function (param1:Number) : void
            {
                _TempleConfirmWindow_Image3.y = param1;
                return;
            }// end function
            , "_TempleConfirmWindow_Image3.y");
            result[19] = binding;
            binding = new Binding(this, function () : Object
            {
                return _swf_close;
            }// end function
            , function (param1:Object) : void
            {
                _TempleConfirmWindow_Image3.source = param1;
                return;
            }// end function
            , "_TempleConfirmWindow_Image3.source");
            result[20] = binding;
            return result;
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

        public function ___TempleConfirmWindow_Image3_click(event:MouseEvent) : void
        {
            onOK();
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

        public function get _guildName() : String
        {
            return this._957543327_guildName;
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

        public function ___TempleConfirmWindow_Canvas1_creationComplete(event:FlexEvent) : void
        {
            setup();
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

        private function get _swf_window() : MovieClipLoaderAsset
        {
            return this._1075873300_swf_window;
        }// end function

        private function onOK() : void
        {
            if (_eventName)
            {
                dispatchEvent(new Event(_eventName));
            }
            PopUpManager.removePopUp(this);
            MovieClip(Loader(_swf_close.getChildAt(0)).content).gotoAndPlay(0);
            MovieClip(Loader(_swf_close.getChildAt(0)).content).gotoAndPlay("button_close");
            MovieClip(Loader(_swf_close_window.getChildAt(0)).content).gotoAndPlay(1);
            return;
        }// end function

        private function setup() : void
        {
            MovieClip(Loader(_swf_window.getChildAt(0)).content).gotoAndPlay("center_300x200");
            MovieClip(Loader(_swf_close.getChildAt(0)).content).gotoAndPlay("button_close");
            messegeViewStack.selectedIndex = ViewStackIndex;
            create = true;
            return;
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

        public static function set watcherSetupUtil(param1:IWatcherSetupUtil) : void
        {
            _watcherSetupUtil = param1;
            return;
        }// end function

    }
}
