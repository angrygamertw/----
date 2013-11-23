package com.kbmj.viking.view.home
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
    import mx.managers.*;

    public class ConfirmIncrementMaxTasksCountWindow extends PopupWindow implements IBindingClient
    {
        private var _embed_mxml__images_icon_power_png_227571469:Class;
        private var _2009475207_swf_ok_button:MovieClipLoaderAsset;
        public var _ConfirmIncrementMaxTasksCountWindow_Image1:Image;
        public var _ConfirmIncrementMaxTasksCountWindow_Image3:Image;
        public var _ConfirmIncrementMaxTasksCountWindow_Image4:Image;
        var _bindingsBeginWithWord:Object;
        public var _ConfirmIncrementMaxTasksCountWindow_Label1:Label;
        var _watchers:Array;
        private var _1818888257_swf_bg:MovieClipLoaderAsset;
        private var _487487717_swf_cancel_button:MovieClipLoaderAsset;
        var _bindings:Array;
        private var _documentDescriptor_:UIComponentDescriptor;
        var _bindingsByDestination:Object;
        private static var _watcherSetupUtil:IWatcherSetupUtil;
        public static const CONFIRMED:String = "ConfirmIncrementMaxTasksCountWindow/Confirmed";

        public function ConfirmIncrementMaxTasksCountWindow()
        {
            _documentDescriptor_ = new UIComponentDescriptor({type:PopupWindow, propertiesFactory:function () : Object
            {
                return {childDescriptors:[new UIComponentDescriptor({type:Image, id:"_ConfirmIncrementMaxTasksCountWindow_Image1"}), new UIComponentDescriptor({type:VBox, propertiesFactory:function () : Object
                {
                    return {x:235, y:225, childDescriptors:[new UIComponentDescriptor({type:Spacer, propertiesFactory:function () : Object
                    {
                        return {percentHeight:100};
                    }// end function
                    }), new UIComponentDescriptor({type:VBox, stylesFactory:function () : void
                    {
                        this.horizontalCenter = "20";
                        this.top = "100";
                        return;
                    }// end function
                    , propertiesFactory:function () : Object
                    {
                        return {childDescriptors:[new UIComponentDescriptor({type:HBox, stylesFactory:function () : void
                        {
                            this.horizontalGap = 2;
                            return;
                        }// end function
                        , propertiesFactory:function () : Object
                        {
                            return {childDescriptors:[new UIComponentDescriptor({type:Image, propertiesFactory:function () : Object
                            {
                                return {source:_embed_mxml__images_icon_power_png_227571469};
                            }// end function
                            }), new UIComponentDescriptor({type:Label, id:"_ConfirmIncrementMaxTasksCountWindow_Label1", stylesFactory:function () : void
                            {
                                this.fontSize = 12;
                                return;
                            }// end function
                            })]};
                        }// end function
                        })]};
                    }// end function
                    }), new UIComponentDescriptor({type:Spacer, propertiesFactory:function () : Object
                    {
                        return {percentHeight:100};
                    }// end function
                    })]};
                }// end function
                }), new UIComponentDescriptor({type:Image, id:"_ConfirmIncrementMaxTasksCountWindow_Image3", events:{click:"___ConfirmIncrementMaxTasksCountWindow_Image3_click"}, propertiesFactory:function () : Object
                {
                    return {x:265, y:310};
                }// end function
                }), new UIComponentDescriptor({type:Image, id:"_ConfirmIncrementMaxTasksCountWindow_Image4", events:{click:"___ConfirmIncrementMaxTasksCountWindow_Image4_click"}, propertiesFactory:function () : Object
                {
                    return {x:395, y:310};
                }// end function
                })]};
            }// end function
            });
            _1818888257_swf_bg = new Viking.EmbedSwfWindowCommon();
            _2009475207_swf_ok_button = new Viking.EmbedSwfButtonCommon();
            _487487717_swf_cancel_button = new Viking.EmbedSwfButtonCommon();
            _embed_mxml__images_icon_power_png_227571469 = ConfirmIncrementMaxTasksCountWindow__embed_mxml__images_icon_power_png_227571469;
            _bindings = [];
            _watchers = [];
            _bindingsByDestination = {};
            _bindingsBeginWithWord = {};
            mx_internal::_document = this;
            this.addEventListener("creationComplete", ___ConfirmIncrementMaxTasksCountWindow_PopupWindow1_creationComplete);
            return;
        }// end function

        private function get _swf_ok_button() : MovieClipLoaderAsset
        {
            return this._2009475207_swf_ok_button;
        }// end function

        private function get _swf_bg() : MovieClipLoaderAsset
        {
            return this._1818888257_swf_bg;
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

        public function ___ConfirmIncrementMaxTasksCountWindow_PopupWindow1_creationComplete(event:FlexEvent) : void
        {
            init();
            return;
        }// end function

        override public function initialize() : void
        {
            var target:ConfirmIncrementMaxTasksCountWindow;
            var watcherSetupUtilClass:Object;
            .mx_internal::setDocumentDescriptor(_documentDescriptor_);
            var bindings:* = _ConfirmIncrementMaxTasksCountWindow_bindingsSetup();
            var watchers:Array;
            target;
            if (_watcherSetupUtil == null)
            {
                watcherSetupUtilClass = getDefinitionByName("_com_kbmj_viking_view_home_ConfirmIncrementMaxTasksCountWindowWatcherSetupUtil");
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

        private function get _swf_cancel_button() : MovieClipLoaderAsset
        {
            return this._487487717_swf_cancel_button;
        }// end function

        private function _ConfirmIncrementMaxTasksCountWindow_bindingsSetup() : Array
        {
            var binding:Binding;
            var result:Array;
            binding = new Binding(this, function () : Object
            {
                return _swf_bg;
            }// end function
            , function (param1:Object) : void
            {
                _ConfirmIncrementMaxTasksCountWindow_Image1.source = param1;
                return;
            }// end function
            , "_ConfirmIncrementMaxTasksCountWindow_Image1.source");
            result[0] = binding;
            binding = new Binding(this, function () : String
            {
                var _loc_1:* = Utils.i18n("localize116");
                var _loc_2:* = _loc_1 == undefined ? (null) : (String(_loc_1));
                return _loc_2;
            }// end function
            , function (param1:String) : void
            {
                _ConfirmIncrementMaxTasksCountWindow_Label1.text = param1;
                return;
            }// end function
            , "_ConfirmIncrementMaxTasksCountWindow_Label1.text");
            result[1] = binding;
            binding = new Binding(this, function () : Object
            {
                return _swf_ok_button;
            }// end function
            , function (param1:Object) : void
            {
                _ConfirmIncrementMaxTasksCountWindow_Image3.source = param1;
                return;
            }// end function
            , "_ConfirmIncrementMaxTasksCountWindow_Image3.source");
            result[2] = binding;
            binding = new Binding(this, function () : Object
            {
                return _swf_cancel_button;
            }// end function
            , function (param1:Object) : void
            {
                _ConfirmIncrementMaxTasksCountWindow_Image4.source = param1;
                return;
            }// end function
            , "_ConfirmIncrementMaxTasksCountWindow_Image4.source");
            result[3] = binding;
            return result;
        }// end function

        public function init() : void
        {
            MovieClip(Loader(_swf_bg.getChildAt(0)).content).gotoAndPlay("center_300x200");
            MovieClip(Loader(_swf_ok_button.getChildAt(0)).content).gotoAndPlay("button_yes");
            MovieClip(Loader(_swf_cancel_button.getChildAt(0)).content).gotoAndPlay("button_no");
            return;
        }// end function

        private function onConfirm() : void
        {
            sendEvent(CONFIRMED);
            PopUpManager.removePopUp(this);
            return;
        }// end function

        private function _ConfirmIncrementMaxTasksCountWindow_bindingExprs() : void
        {
            var _loc_1:* = undefined;
            _loc_1 = _swf_bg;
            _loc_1 = Utils.i18n("localize116");
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

        public function ___ConfirmIncrementMaxTasksCountWindow_Image3_click(event:MouseEvent) : void
        {
            onConfirm();
            return;
        }// end function

        public function ___ConfirmIncrementMaxTasksCountWindow_Image4_click(event:MouseEvent) : void
        {
            onClose();
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

        public static function set watcherSetupUtil(param1:IWatcherSetupUtil) : void
        {
            ConfirmIncrementMaxTasksCountWindow._watcherSetupUtil = param1;
            return;
        }// end function

    }
}
