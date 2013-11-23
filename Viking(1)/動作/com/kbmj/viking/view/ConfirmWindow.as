package com.kbmj.viking.view
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

    public class ConfirmWindow extends PopupWindow implements IBindingClient
    {
        var _watchers:Array;
        private var _487487717_swf_cancel_button:MovieClipLoaderAsset;
        public var _ConfirmWindow_Image1:Image;
        public var _ConfirmWindow_Image2:Image;
        public var _ConfirmWindow_Image3:Image;
        public var _ConfirmWindow_Label1:Label;
        private var _622395678_completeEvent:String = "";
        private var _277635506_confirmText:String = "";
        private var _2009475207_swf_ok_button:MovieClipLoaderAsset;
        var _bindingsByDestination:Object;
        var _bindingsBeginWithWord:Object;
        private var _1818888257_swf_bg:MovieClipLoaderAsset;
        var _bindings:Array;
        private var _documentDescriptor_:UIComponentDescriptor;
        public var _ConfirmWindow_Text1:Text;
        private static var _watcherSetupUtil:IWatcherSetupUtil;
        public static const CONFIRMED:String = "ConfirmWindow/Confirmed";

        public function ConfirmWindow()
        {
            _documentDescriptor_ = new UIComponentDescriptor({type:PopupWindow, propertiesFactory:function () : Object
            {
                return {childDescriptors:[new UIComponentDescriptor({type:Image, id:"_ConfirmWindow_Image1"}), new UIComponentDescriptor({type:VBox, propertiesFactory:function () : Object
                {
                    return {childDescriptors:[new UIComponentDescriptor({type:Text, id:"_ConfirmWindow_Text1", stylesFactory:function () : void
                    {
                        this.fontSize = 14;
                        return;
                    }// end function
                    }), new UIComponentDescriptor({type:Spacer, propertiesFactory:function () : Object
                    {
                        return {percentHeight:100};
                    }// end function
                    }), new UIComponentDescriptor({type:Label, id:"_ConfirmWindow_Label1", stylesFactory:function () : void
                    {
                        this.fontSize = 14;
                        return;
                    }// end function
                    }), new UIComponentDescriptor({type:Spacer, propertiesFactory:function () : Object
                    {
                        return {percentHeight:100};
                    }// end function
                    })]};
                }// end function
                }), new UIComponentDescriptor({type:HBox, propertiesFactory:function () : Object
                {
                    return {x:25, y:95, childDescriptors:[new UIComponentDescriptor({type:Image, id:"_ConfirmWindow_Image2", events:{click:"___ConfirmWindow_Image2_click"}}), new UIComponentDescriptor({type:Spacer, propertiesFactory:function () : Object
                    {
                        return {width:110};
                    }// end function
                    }), new UIComponentDescriptor({type:Image, id:"_ConfirmWindow_Image3", events:{click:"___ConfirmWindow_Image3_click"}})]};
                }// end function
                })]};
            }// end function
            });
            _1818888257_swf_bg = new Viking.EmbedSwfWindowCommon();
            _2009475207_swf_ok_button = new Viking.EmbedSwfButtonCommon();
            _487487717_swf_cancel_button = new Viking.EmbedSwfButtonCommon();
            _bindings = [];
            _watchers = [];
            _bindingsByDestination = {};
            _bindingsBeginWithWord = {};
            mx_internal::_document = this;
            this.addEventListener("creationComplete", ___ConfirmWindow_PopupWindow1_creationComplete);
            return;
        }// end function

        private function _ConfirmWindow_bindingsSetup() : Array
        {
            var binding:Binding;
            var result:Array;
            binding = new Binding(this, function () : Object
            {
                return _swf_bg;
            }// end function
            , function (param1:Object) : void
            {
                _ConfirmWindow_Image1.source = param1;
                return;
            }// end function
            , "_ConfirmWindow_Image1.source");
            result[0] = binding;
            binding = new Binding(this, function () : String
            {
                var _loc_1:* = _confirmText;
                var _loc_2:* = _loc_1 == undefined ? (null) : (String(_loc_1));
                return _loc_2;
            }// end function
            , function (param1:String) : void
            {
                _ConfirmWindow_Text1.text = param1;
                return;
            }// end function
            , "_ConfirmWindow_Text1.text");
            result[1] = binding;
            binding = new Binding(this, function () : String
            {
                var _loc_1:* = Utils.i18n("generalConfirm");
                var _loc_2:* = _loc_1 == undefined ? (null) : (String(_loc_1));
                return _loc_2;
            }// end function
            , function (param1:String) : void
            {
                _ConfirmWindow_Label1.text = param1;
                return;
            }// end function
            , "_ConfirmWindow_Label1.text");
            result[2] = binding;
            binding = new Binding(this, function () : Object
            {
                return _swf_ok_button;
            }// end function
            , function (param1:Object) : void
            {
                _ConfirmWindow_Image2.source = param1;
                return;
            }// end function
            , "_ConfirmWindow_Image2.source");
            result[3] = binding;
            binding = new Binding(this, function () : Object
            {
                return _swf_cancel_button;
            }// end function
            , function (param1:Object) : void
            {
                _ConfirmWindow_Image3.source = param1;
                return;
            }// end function
            , "_ConfirmWindow_Image3.source");
            result[4] = binding;
            return result;
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

        public function ___ConfirmWindow_Image2_click(event:MouseEvent) : void
        {
            onConfirm();
            return;
        }// end function

        override public function initialize() : void
        {
            var target:ConfirmWindow;
            var watcherSetupUtilClass:Object;
            .mx_internal::setDocumentDescriptor(_documentDescriptor_);
            var bindings:* = _ConfirmWindow_bindingsSetup();
            var watchers:Array;
            target;
            if (_watcherSetupUtil == null)
            {
                watcherSetupUtilClass = getDefinitionByName("_com_kbmj_viking_view_ConfirmWindowWatcherSetupUtil");
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

        public function set confirmText(param1:String) : void
        {
            _confirmText = param1;
            return;
        }// end function

        private function get _swf_cancel_button() : MovieClipLoaderAsset
        {
            return this._487487717_swf_cancel_button;
        }// end function

        private function set _confirmText(param1:String) : void
        {
            var _loc_2:* = this._277635506_confirmText;
            if (_loc_2 !== param1)
            {
                this._277635506_confirmText = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "_confirmText", _loc_2, param1));
            }
            return;
        }// end function

        public function init() : void
        {
            MovieClip(Loader(_swf_bg.getChildAt(0)).content).gotoAndPlay("center_300x200");
            MovieClip(Loader(_swf_bg.getChildAt(0)).content).x = -240;
            MovieClip(Loader(_swf_bg.getChildAt(0)).content).y = -220;
            MovieClip(Loader(_swf_ok_button.getChildAt(0)).content).gotoAndPlay("button_yes");
            MovieClip(Loader(_swf_cancel_button.getChildAt(0)).content).gotoAndPlay("button_no");
            return;
        }// end function

        private function set _swf_cancel_button(param1:MovieClipLoaderAsset) : void
        {
            var _loc_2:* = this._487487717_swf_cancel_button;
            if (_loc_2 !== param1)
            {
                this._487487717_swf_cancel_button = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "_swf_cancel_button", _loc_2, param1));
            }
            return;
        }// end function

        public function set completeEvent(param1:String) : void
        {
            _completeEvent = param1;
            return;
        }// end function

        private function set _completeEvent(param1:String) : void
        {
            var _loc_2:* = this._622395678_completeEvent;
            if (_loc_2 !== param1)
            {
                this._622395678_completeEvent = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "_completeEvent", _loc_2, param1));
            }
            return;
        }// end function

        private function get _confirmText() : String
        {
            return this._277635506_confirmText;
        }// end function

        public function ___ConfirmWindow_Image3_click(event:MouseEvent) : void
        {
            onClose();
            return;
        }// end function

        private function get _swf_bg() : MovieClipLoaderAsset
        {
            return this._1818888257_swf_bg;
        }// end function

        private function onConfirm() : void
        {
            sendPopupEvent(CONFIRMED, _completeEvent);
            onClose();
            return;
        }// end function

        private function get _completeEvent() : String
        {
            return this._622395678_completeEvent;
        }// end function

        private function _ConfirmWindow_bindingExprs() : void
        {
            var _loc_1:* = undefined;
            _loc_1 = _swf_bg;
            _loc_1 = _confirmText;
            _loc_1 = Utils.i18n("generalConfirm");
            _loc_1 = _swf_ok_button;
            _loc_1 = _swf_cancel_button;
            return;
        }// end function

        private function set _swf_ok_button(param1:MovieClipLoaderAsset) : void
        {
            var _loc_2:* = this._2009475207_swf_ok_button;
            if (_loc_2 !== param1)
            {
                this._2009475207_swf_ok_button = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "_swf_ok_button", _loc_2, param1));
            }
            return;
        }// end function

        public function ___ConfirmWindow_PopupWindow1_creationComplete(event:FlexEvent) : void
        {
            init();
            return;
        }// end function

        private function get _swf_ok_button() : MovieClipLoaderAsset
        {
            return this._2009475207_swf_ok_button;
        }// end function

        public static function set watcherSetupUtil(param1:IWatcherSetupUtil) : void
        {
            ConfirmWindow._watcherSetupUtil = param1;
            return;
        }// end function

    }
}
