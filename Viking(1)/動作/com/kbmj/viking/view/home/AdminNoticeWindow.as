package com.kbmj.viking.view.home
{
    import com.kbmj.viking.lib.*;
    import com.kbmj.viking.view.*;
    import flash.display.*;
    import flash.events.*;
    import flash.utils.*;
    import mx.binding.*;
    import mx.controls.*;
    import mx.core.*;
    import mx.events.*;

    public class AdminNoticeWindow extends PopupWindow implements IBindingClient
    {
        private var _90763905_body:String;
        var _watchers:Array;
        private var _1641788370okButton:Image;
        private var EmbedSwfWindowCommon:Class;
        private var _1665809106_swf_button:MovieClipLoaderAsset;
        public var _AdminNoticeWindow_Image1:Image;
        var _bindingsBeginWithWord:Object;
        var _bindingsByDestination:Object;
        private var _1818888257_swf_bg:MovieClipLoaderAsset;
        private var _1767290383BodyText:TextArea;
        private var _628707413_swf_close_button:MovieClipLoaderAsset;
        var _bindings:Array;
        private var _131788923TitleText:Text;
        private var _1464826535_title:String;
        private var _documentDescriptor_:UIComponentDescriptor;
        private var _notice:Object;
        private var _312699062closeButton:Image;
        private static var _watcherSetupUtil:IWatcherSetupUtil;
        public static const ADMIN_NOTICE_END:String = "adminNoticeEnd";

        public function AdminNoticeWindow()
        {
            _documentDescriptor_ = new UIComponentDescriptor({type:PopupWindow, propertiesFactory:function () : Object
            {
                return {childDescriptors:[new UIComponentDescriptor({type:Image, id:"_AdminNoticeWindow_Image1"}), new UIComponentDescriptor({type:Text, id:"TitleText", stylesFactory:function () : void
                {
                    this.textAlign = "center";
                    this.fontSize = 18;
                    this.color = 16777215;
                    return;
                }// end function
                , propertiesFactory:function () : Object
                {
                    return {x:225, y:145, width:300, height:30};
                }// end function
                }), new UIComponentDescriptor({type:TextArea, id:"BodyText", stylesFactory:function () : void
                {
                    this.fontSize = 15;
                    this.backgroundAlpha = 0;
                    this.borderStyle = "none";
                    return;
                }// end function
                , propertiesFactory:function () : Object
                {
                    return {x:210, y:175, width:330, height:170, editable:false};
                }// end function
                }), new UIComponentDescriptor({type:Image, id:"okButton", events:{click:"__okButton_click"}, propertiesFactory:function () : Object
                {
                    return {x:320, y:355};
                }// end function
                }), new UIComponentDescriptor({type:Image, id:"closeButton", events:{click:"__closeButton_click"}, propertiesFactory:function () : Object
                {
                    return {x:555, y:145};
                }// end function
                })]};
            }// end function
            });
            EmbedSwfWindowCommon = AdminNoticeWindow_EmbedSwfWindowCommon;
            _1818888257_swf_bg = new Viking.EmbedSwfWindowCommon();
            _1665809106_swf_button = new Viking.EmbedSwfButtonCommon();
            _628707413_swf_close_button = new Viking.EmbedSwfButtonCloseWindow();
            _bindings = [];
            _watchers = [];
            _bindingsByDestination = {};
            _bindingsBeginWithWord = {};
            mx_internal::_document = this;
            this.addEventListener("creationComplete", ___AdminNoticeWindow_PopupWindow1_creationComplete);
            return;
        }// end function

        public function get TitleText() : Text
        {
            return this._131788923TitleText;
        }// end function

        public function closeWindow() : void
        {
            dispatchEvent(new Event(ADMIN_NOTICE_END));
            onClose();
            return;
        }// end function

        private function set _swf_bg(param1:MovieClipLoaderAsset) : void
        {
            var _loc_2:* = this._1818888257_swf_bg;
            if (_loc_2 !== param1)
            {
                this._1818888257_swf_bg = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "_swf_bg", _loc_2, param1));
            }
            return;
        }// end function

        public function set TitleText(param1:Text) : void
        {
            var _loc_2:* = this._131788923TitleText;
            if (_loc_2 !== param1)
            {
                this._131788923TitleText = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "TitleText", _loc_2, param1));
            }
            return;
        }// end function

        public function get BodyText() : TextArea
        {
            return this._1767290383BodyText;
        }// end function

        override public function initialize() : void
        {
            var target:AdminNoticeWindow;
            var watcherSetupUtilClass:Object;
            .mx_internal::setDocumentDescriptor(_documentDescriptor_);
            var bindings:* = _AdminNoticeWindow_bindingsSetup();
            var watchers:Array;
            target;
            if (_watcherSetupUtil == null)
            {
                watcherSetupUtilClass = getDefinitionByName("_com_kbmj_viking_view_home_AdminNoticeWindowWatcherSetupUtil");
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

        private function set _body(param1:String) : void
        {
            var _loc_2:* = this._90763905_body;
            if (_loc_2 !== param1)
            {
                this._90763905_body = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "_body", _loc_2, param1));
            }
            return;
        }// end function

        private function get _body() : String
        {
            return this._90763905_body;
        }// end function

        public function set closeButton(param1:Image) : void
        {
            var _loc_2:* = this._312699062closeButton;
            if (_loc_2 !== param1)
            {
                this._312699062closeButton = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "closeButton", _loc_2, param1));
            }
            return;
        }// end function

        public function __okButton_click(event:MouseEvent) : void
        {
            closeWindow();
            return;
        }// end function

        public function init() : void
        {
            MovieClip(Loader(_swf_bg.getChildAt(0)).content).gotoAndPlay("center_400x270");
            MovieClip(Loader(_swf_button.getChildAt(0)).content).gotoAndPlay("button_ok");
            return;
        }// end function

        public function set BodyText(param1:TextArea) : void
        {
            var _loc_2:* = this._1767290383BodyText;
            if (_loc_2 !== param1)
            {
                this._1767290383BodyText = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "BodyText", _loc_2, param1));
            }
            return;
        }// end function

        private function set _swf_close_button(param1:MovieClipLoaderAsset) : void
        {
            var _loc_2:* = this._628707413_swf_close_button;
            if (_loc_2 !== param1)
            {
                this._628707413_swf_close_button = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "_swf_close_button", _loc_2, param1));
            }
            return;
        }// end function

        public function get okButton() : Image
        {
            return this._1641788370okButton;
        }// end function

        public function set notice(param1:Object) : void
        {
            _notice = param1;
            if (_notice.title)
            {
                _title = _notice.title;
            }
            if (_notice.body)
            {
                _body = _notice.body;
            }
            return;
        }// end function

        private function set _title(param1:String) : void
        {
            var _loc_2:* = this._1464826535_title;
            if (_loc_2 !== param1)
            {
                this._1464826535_title = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "_title", _loc_2, param1));
            }
            return;
        }// end function

        public function ___AdminNoticeWindow_PopupWindow1_creationComplete(event:FlexEvent) : void
        {
            init();
            return;
        }// end function

        private function get _swf_bg() : MovieClipLoaderAsset
        {
            return this._1818888257_swf_bg;
        }// end function

        public function set body(param1:String) : void
        {
            if (_body)
            {
                _body = param1;
            }
            return;
        }// end function

        private function get _swf_button() : MovieClipLoaderAsset
        {
            return this._1665809106_swf_button;
        }// end function

        private function _AdminNoticeWindow_bindingExprs() : void
        {
            var _loc_1:* = undefined;
            _loc_1 = _swf_bg;
            _loc_1 = Utils.i18n("generalEmergency");
            _loc_1 = _body;
            _loc_1 = _swf_button;
            _loc_1 = _swf_close_button;
            return;
        }// end function

        public function get closeButton() : Image
        {
            return this._312699062closeButton;
        }// end function

        private function get _swf_close_button() : MovieClipLoaderAsset
        {
            return this._628707413_swf_close_button;
        }// end function

        private function _AdminNoticeWindow_bindingsSetup() : Array
        {
            var binding:Binding;
            var result:Array;
            binding = new Binding(this, function () : Object
            {
                return _swf_bg;
            }// end function
            , function (param1:Object) : void
            {
                _AdminNoticeWindow_Image1.source = param1;
                return;
            }// end function
            , "_AdminNoticeWindow_Image1.source");
            result[0] = binding;
            binding = new Binding(this, function () : String
            {
                var _loc_1:* = Utils.i18n("generalEmergency");
                var _loc_2:* = _loc_1 == undefined ? (null) : (String(_loc_1));
                return _loc_2;
            }// end function
            , function (param1:String) : void
            {
                TitleText.text = param1;
                return;
            }// end function
            , "TitleText.text");
            result[1] = binding;
            binding = new Binding(this, function () : String
            {
                var _loc_1:* = _body;
                var _loc_2:* = _loc_1 == undefined ? (null) : (String(_loc_1));
                return _loc_2;
            }// end function
            , function (param1:String) : void
            {
                BodyText.htmlText = param1;
                return;
            }// end function
            , "BodyText.htmlText");
            result[2] = binding;
            binding = new Binding(this, function () : Object
            {
                return _swf_button;
            }// end function
            , function (param1:Object) : void
            {
                okButton.source = param1;
                return;
            }// end function
            , "okButton.source");
            result[3] = binding;
            binding = new Binding(this, function () : Object
            {
                return _swf_close_button;
            }// end function
            , function (param1:Object) : void
            {
                closeButton.source = param1;
                return;
            }// end function
            , "closeButton.source");
            result[4] = binding;
            return result;
        }// end function

        private function get _title() : String
        {
            return this._1464826535_title;
        }// end function

        public function set okButton(param1:Image) : void
        {
            var _loc_2:* = this._1641788370okButton;
            if (_loc_2 !== param1)
            {
                this._1641788370okButton = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "okButton", _loc_2, param1));
            }
            return;
        }// end function

        private function set _swf_button(param1:MovieClipLoaderAsset) : void
        {
            var _loc_2:* = this._1665809106_swf_button;
            if (_loc_2 !== param1)
            {
                this._1665809106_swf_button = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "_swf_button", _loc_2, param1));
            }
            return;
        }// end function

        public function __closeButton_click(event:MouseEvent) : void
        {
            closeWindow();
            return;
        }// end function

        public static function set watcherSetupUtil(param1:IWatcherSetupUtil) : void
        {
            _watcherSetupUtil = param1;
            return;
        }// end function

    }
}
