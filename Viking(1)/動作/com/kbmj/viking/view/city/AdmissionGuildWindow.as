package com.kbmj.viking.view.city
{
    import com.kbmj.viking.lib.*;
    import com.kbmj.viking.view.*;
    import flash.display.*;
    import flash.events.*;
    import flash.utils.*;
    import mx.binding.*;
    import mx.containers.*;
    import mx.controls.*;
    import mx.core.*;
    import mx.events.*;
    import mx.utils.*;

    public class AdmissionGuildWindow extends PopupWindow implements IBindingClient
    {
        private var _1075873300_swf_window:MovieClipLoaderAsset;
        private var _550983275_swf_yes:MovieClipLoaderAsset;
        private var _957245630_guildData:ObjectProxy;
        var _watchers:Array;
        public var _AdmissionGuildWindow_Text1:Text;
        public var _AdmissionGuildWindow_Text2:Text;
        var _bindingsByDestination:Object;
        var _bindingsBeginWithWord:Object;
        private var _1818888637_swf_no:MovieClipLoaderAsset;
        public var _AdmissionGuildWindow_Image1:Image;
        public var _AdmissionGuildWindow_Image2:Image;
        public var _AdmissionGuildWindow_Image3:Image;
        public var _AdmissionGuildWindow_Image4:Image;
        private var _1218643219_swf_close_window:MovieClipLoaderAsset;
        public var _AdmissionGuildWindow_Box1:Box;
        var _bindings:Array;
        private var _admissionComment:String;
        private var _documentDescriptor_:UIComponentDescriptor;
        private var _588961665listRenderer:ClassFactory;
        private static const WINDOW_X:int = 230;
        private static const WINDOW_Y:int = 180;
        private static const BUTTON_X:int = 325;
        private static const BUTTON_Y:int = 330;
        public static const ADMISSION:String = "admission";
        private static var _watcherSetupUtil:IWatcherSetupUtil;
        private static const WINDOW_HT:int = 200;
        private static const WINDOW_WD:int = 300;

        public function AdmissionGuildWindow()
        {
            _documentDescriptor_ = new UIComponentDescriptor({type:PopupWindow, propertiesFactory:function () : Object
            {
                return {width:760, height:560, childDescriptors:[new UIComponentDescriptor({type:Image, id:"_AdmissionGuildWindow_Image1"}), new UIComponentDescriptor({type:Text, id:"_AdmissionGuildWindow_Text1", propertiesFactory:function () : Object
                {
                    return {styleName:"DealTitle"};
                }// end function
                }), new UIComponentDescriptor({type:Image, id:"_AdmissionGuildWindow_Image2", events:{click:"___AdmissionGuildWindow_Image2_click"}}), new UIComponentDescriptor({type:Box, id:"_AdmissionGuildWindow_Box1", stylesFactory:function () : void
                {
                    this.horizontalAlign = "center";
                    return;
                }// end function
                , propertiesFactory:function () : Object
                {
                    return {childDescriptors:[new UIComponentDescriptor({type:Text, id:"_AdmissionGuildWindow_Text2", stylesFactory:function () : void
                    {
                        this.textAlign = "center";
                        return;
                    }// end function
                    , propertiesFactory:function () : Object
                    {
                        return {styleName:"CenterText"};
                    }// end function
                    })]};
                }// end function
                }), new UIComponentDescriptor({type:Image, id:"_AdmissionGuildWindow_Image3", events:{click:"___AdmissionGuildWindow_Image3_click"}}), new UIComponentDescriptor({type:Image, id:"_AdmissionGuildWindow_Image4", events:{click:"___AdmissionGuildWindow_Image4_click"}})]};
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
            _AdmissionGuildWindow_ClassFactory1_i();
            this.addEventListener("creationComplete", ___AdmissionGuildWindow_PopupWindow1_creationComplete);
            return;
        }// end function

        public function get listRenderer() : ClassFactory
        {
            return this._588961665listRenderer;
        }// end function

        public function set listRenderer(param1:ClassFactory) : void
        {
            var _loc_2:* = this._588961665listRenderer;
            if (_loc_2 !== param1)
            {
                this._588961665listRenderer = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "listRenderer", _loc_2, param1));
            }
            return;
        }// end function

        public function ___AdmissionGuildWindow_PopupWindow1_creationComplete(event:FlexEvent) : void
        {
            setup();
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

        public function ___AdmissionGuildWindow_Image2_click(event:MouseEvent) : void
        {
            closeWindow();
            return;
        }// end function

        public function closeWindow() : void
        {
            onClose();
            MovieClip(Loader(_swf_no.getChildAt(0)).content).gotoAndPlay(0);
            MovieClip(Loader(_swf_no.getChildAt(0)).content).gotoAndPlay("button_no");
            MovieClip(Loader(_swf_close_window.getChildAt(0)).content).gotoAndPlay(1);
            return;
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

        private function set _guildData(param1:ObjectProxy) : void
        {
            var _loc_2:* = this._957245630_guildData;
            if (_loc_2 !== param1)
            {
                this._957245630_guildData = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "_guildData", _loc_2, param1));
            }
            return;
        }// end function

        public function ___AdmissionGuildWindow_Image4_click(event:MouseEvent) : void
        {
            closeWindow();
            return;
        }// end function

        override public function initialize() : void
        {
            var target:AdmissionGuildWindow;
            var watcherSetupUtilClass:Object;
            .mx_internal::setDocumentDescriptor(_documentDescriptor_);
            var bindings:* = _AdmissionGuildWindow_bindingsSetup();
            var watchers:Array;
            target;
            if (_watcherSetupUtil == null)
            {
                watcherSetupUtilClass = getDefinitionByName("_com_kbmj_viking_view_city_AdmissionGuildWindowWatcherSetupUtil");
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

        public function get admissionComment() : String
        {
            return _admissionComment;
        }// end function

        private function _AdmissionGuildWindow_bindingExprs() : void
        {
            var _loc_1:* = undefined;
            _loc_1 = _swf_window;
            _loc_1 = WINDOW_X;
            _loc_1 = WINDOW_Y;
            _loc_1 = WINDOW_WD;
            _loc_1 = Utils.i18n("admissionGuildRequest");
            _loc_1 = WINDOW_X + WINDOW_WD - 25;
            _loc_1 = WINDOW_Y;
            _loc_1 = _swf_close_window;
            _loc_1 = WINDOW_X + 20;
            _loc_1 = WINDOW_Y + 35;
            _loc_1 = WINDOW_WD - 40;
            _loc_1 = Utils.i18n("admissionGuildSendRequest", _guildData.name);
            _loc_1 = BUTTON_X - 65;
            _loc_1 = BUTTON_Y;
            _loc_1 = _swf_yes;
            _loc_1 = BUTTON_X + 65;
            _loc_1 = BUTTON_Y;
            _loc_1 = _swf_no;
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

        public function init() : void
        {
            return;
        }// end function

        private function onRequest() : void
        {
            _admissionComment = "";
            dispatchEvent(new Event(ADMISSION));
            onClose();
            MovieClip(Loader(_swf_yes.getChildAt(0)).content).gotoAndPlay(0);
            MovieClip(Loader(_swf_yes.getChildAt(0)).content).gotoAndPlay("button_yes");
            return;
        }// end function

        public function get guildData() : Object
        {
            return _guildData;
        }// end function

        private function _AdmissionGuildWindow_ClassFactory1_i() : ClassFactory
        {
            var _loc_1:* = new ClassFactory();
            listRenderer = _loc_1;
            _loc_1.generator = AdmissionGuildWindow_inlineComponent1;
            _loc_1.properties = {outerDocument:this};
            return _loc_1;
        }// end function

        private function get _swf_no() : MovieClipLoaderAsset
        {
            return this._1818888637_swf_no;
        }// end function

        public function ___AdmissionGuildWindow_Image3_click(event:MouseEvent) : void
        {
            onRequest();
            return;
        }// end function

        private function _AdmissionGuildWindow_bindingsSetup() : Array
        {
            var binding:Binding;
            var result:Array;
            binding = new Binding(this, function () : Object
            {
                return _swf_window;
            }// end function
            , function (param1:Object) : void
            {
                _AdmissionGuildWindow_Image1.source = param1;
                return;
            }// end function
            , "_AdmissionGuildWindow_Image1.source");
            result[0] = binding;
            binding = new Binding(this, function () : Number
            {
                return WINDOW_X;
            }// end function
            , function (param1:Number) : void
            {
                _AdmissionGuildWindow_Text1.x = param1;
                return;
            }// end function
            , "_AdmissionGuildWindow_Text1.x");
            result[1] = binding;
            binding = new Binding(this, function () : Number
            {
                return WINDOW_Y;
            }// end function
            , function (param1:Number) : void
            {
                _AdmissionGuildWindow_Text1.y = param1;
                return;
            }// end function
            , "_AdmissionGuildWindow_Text1.y");
            result[2] = binding;
            binding = new Binding(this, function () : Number
            {
                return WINDOW_WD;
            }// end function
            , function (param1:Number) : void
            {
                _AdmissionGuildWindow_Text1.width = param1;
                return;
            }// end function
            , "_AdmissionGuildWindow_Text1.width");
            result[3] = binding;
            binding = new Binding(this, function () : String
            {
                var _loc_1:* = Utils.i18n("admissionGuildRequest");
                var _loc_2:* = _loc_1 == undefined ? (null) : (String(_loc_1));
                return _loc_2;
            }// end function
            , function (param1:String) : void
            {
                _AdmissionGuildWindow_Text1.text = param1;
                return;
            }// end function
            , "_AdmissionGuildWindow_Text1.text");
            result[4] = binding;
            binding = new Binding(this, function () : Number
            {
                return WINDOW_X + WINDOW_WD - 25;
            }// end function
            , function (param1:Number) : void
            {
                _AdmissionGuildWindow_Image2.x = param1;
                return;
            }// end function
            , "_AdmissionGuildWindow_Image2.x");
            result[5] = binding;
            binding = new Binding(this, function () : Number
            {
                return WINDOW_Y;
            }// end function
            , function (param1:Number) : void
            {
                _AdmissionGuildWindow_Image2.y = param1;
                return;
            }// end function
            , "_AdmissionGuildWindow_Image2.y");
            result[6] = binding;
            binding = new Binding(this, function () : Object
            {
                return _swf_close_window;
            }// end function
            , function (param1:Object) : void
            {
                _AdmissionGuildWindow_Image2.source = param1;
                return;
            }// end function
            , "_AdmissionGuildWindow_Image2.source");
            result[7] = binding;
            binding = new Binding(this, function () : Number
            {
                return WINDOW_X + 20;
            }// end function
            , function (param1:Number) : void
            {
                _AdmissionGuildWindow_Box1.x = param1;
                return;
            }// end function
            , "_AdmissionGuildWindow_Box1.x");
            result[8] = binding;
            binding = new Binding(this, function () : Number
            {
                return WINDOW_Y + 35;
            }// end function
            , function (param1:Number) : void
            {
                _AdmissionGuildWindow_Box1.y = param1;
                return;
            }// end function
            , "_AdmissionGuildWindow_Box1.y");
            result[9] = binding;
            binding = new Binding(this, function () : Number
            {
                return WINDOW_WD - 40;
            }// end function
            , function (param1:Number) : void
            {
                _AdmissionGuildWindow_Box1.width = param1;
                return;
            }// end function
            , "_AdmissionGuildWindow_Box1.width");
            result[10] = binding;
            binding = new Binding(this, function () : String
            {
                var _loc_1:* = Utils.i18n("admissionGuildSendRequest", _guildData.name);
                var _loc_2:* = _loc_1 == undefined ? (null) : (String(_loc_1));
                return _loc_2;
            }// end function
            , function (param1:String) : void
            {
                _AdmissionGuildWindow_Text2.text = param1;
                return;
            }// end function
            , "_AdmissionGuildWindow_Text2.text");
            result[11] = binding;
            binding = new Binding(this, function () : Number
            {
                return BUTTON_X - 65;
            }// end function
            , function (param1:Number) : void
            {
                _AdmissionGuildWindow_Image3.x = param1;
                return;
            }// end function
            , "_AdmissionGuildWindow_Image3.x");
            result[12] = binding;
            binding = new Binding(this, function () : Number
            {
                return BUTTON_Y;
            }// end function
            , function (param1:Number) : void
            {
                _AdmissionGuildWindow_Image3.y = param1;
                return;
            }// end function
            , "_AdmissionGuildWindow_Image3.y");
            result[13] = binding;
            binding = new Binding(this, function () : Object
            {
                return _swf_yes;
            }// end function
            , function (param1:Object) : void
            {
                _AdmissionGuildWindow_Image3.source = param1;
                return;
            }// end function
            , "_AdmissionGuildWindow_Image3.source");
            result[14] = binding;
            binding = new Binding(this, function () : Number
            {
                return BUTTON_X + 65;
            }// end function
            , function (param1:Number) : void
            {
                _AdmissionGuildWindow_Image4.x = param1;
                return;
            }// end function
            , "_AdmissionGuildWindow_Image4.x");
            result[15] = binding;
            binding = new Binding(this, function () : Number
            {
                return BUTTON_Y;
            }// end function
            , function (param1:Number) : void
            {
                _AdmissionGuildWindow_Image4.y = param1;
                return;
            }// end function
            , "_AdmissionGuildWindow_Image4.y");
            result[16] = binding;
            binding = new Binding(this, function () : Object
            {
                return _swf_no;
            }// end function
            , function (param1:Object) : void
            {
                _AdmissionGuildWindow_Image4.source = param1;
                return;
            }// end function
            , "_AdmissionGuildWindow_Image4.source");
            result[17] = binding;
            return result;
        }// end function

        private function get _guildData() : ObjectProxy
        {
            return this._957245630_guildData;
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

        public function featureNameList(param1:int) : String
        {
            var _loc_2:* = new String();
            switch(param1)
            {
                case 1:
                {
                    _loc_2 = GuildWindow.FEATURE_1;
                    break;
                }
                case 2:
                {
                    _loc_2 = GuildWindow.FEATURE_2;
                    break;
                }
                case 3:
                {
                    _loc_2 = GuildWindow.FEATURE_3;
                    break;
                }
                case 4:
                {
                    _loc_2 = GuildWindow.FEATURE_4;
                    break;
                }
                case 5:
                {
                    _loc_2 = GuildWindow.FEATURE_5;
                    break;
                }
                case 6:
                {
                    _loc_2 = GuildWindow.FEATURE_6;
                    break;
                }
                case 7:
                {
                    _loc_2 = GuildWindow.FEATURE_7;
                    break;
                }
                case 8:
                {
                    _loc_2 = GuildWindow.FEATURE_8;
                    break;
                }
                case 9:
                {
                    _loc_2 = GuildWindow.FEATURE_9;
                    break;
                }
                default:
                {
                    break;
                }
            }
            return _loc_2;
        }// end function

        private function get _swf_yes() : MovieClipLoaderAsset
        {
            return this._550983275_swf_yes;
        }// end function

        public function set guildData(param1:Object) : void
        {
            _guildData = new ObjectProxy({name:param1.name, featureArray:param1.featureArray});
            return;
        }// end function

        private function get _swf_window() : MovieClipLoaderAsset
        {
            return this._1075873300_swf_window;
        }// end function

        private function setup() : void
        {
            MovieClip(Loader(_swf_window.getChildAt(0)).content).gotoAndPlay("center_300x200");
            MovieClip(Loader(_swf_yes.getChildAt(0)).content).gotoAndPlay("button_yes");
            MovieClip(Loader(_swf_no.getChildAt(0)).content).gotoAndPlay("button_no");
            return;
        }// end function

        public static function set watcherSetupUtil(param1:IWatcherSetupUtil) : void
        {
            AdmissionGuildWindow._watcherSetupUtil = param1;
            return;
        }// end function

    }
}
