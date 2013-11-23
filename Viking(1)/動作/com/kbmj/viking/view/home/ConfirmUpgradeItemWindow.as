﻿package com.kbmj.viking.view.home
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

    public class ConfirmUpgradeItemWindow extends PopupWindow implements IBindingClient
    {
        private var _1683808197_upgradeItemName:String;
        var _watchers:Array;
        private var _487487717_swf_cancel_button:MovieClipLoaderAsset;
        private var _679824020_upgradedMasterName:String;
        private var _2009475207_swf_ok_button:MovieClipLoaderAsset;
        var _bindingsByDestination:Object;
        var _bindingsBeginWithWord:Object;
        private var _1818888257_swf_bg:MovieClipLoaderAsset;
        private var _952919601_upgradeMaterialName:String;
        var _bindings:Array;
        private var _documentDescriptor_:UIComponentDescriptor;
        public var _ConfirmUpgradeItemWindow_Image1:Image;
        public var _ConfirmUpgradeItemWindow_Image2:Image;
        public var _ConfirmUpgradeItemWindow_Image3:Image;
        public var _ConfirmUpgradeItemWindow_Label1:Label;
        public var _ConfirmUpgradeItemWindow_Label2:Label;
        private static var _watcherSetupUtil:IWatcherSetupUtil;
        public static const CONFIRMED:String = "ConfirmUpgradeItemWindow/Confirmed";

        public function ConfirmUpgradeItemWindow()
        {
            _documentDescriptor_ = new UIComponentDescriptor({type:PopupWindow, propertiesFactory:function () : Object
            {
                return {childDescriptors:[new UIComponentDescriptor({type:Image, id:"_ConfirmUpgradeItemWindow_Image1"}), new UIComponentDescriptor({type:VBox, propertiesFactory:function () : Object
                {
                    return {x:240, y:225, childDescriptors:[new UIComponentDescriptor({type:Spacer, propertiesFactory:function () : Object
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
                        return {childDescriptors:[new UIComponentDescriptor({type:Label, id:"_ConfirmUpgradeItemWindow_Label1", stylesFactory:function () : void
                        {
                            this.fontSize = 14;
                            return;
                        }// end function
                        , propertiesFactory:function () : Object
                        {
                            return {styleName:"UnitSelectText"};
                        }// end function
                        }), new UIComponentDescriptor({type:Label, id:"_ConfirmUpgradeItemWindow_Label2", stylesFactory:function () : void
                        {
                            this.fontSize = 14;
                            return;
                        }// end function
                        , propertiesFactory:function () : Object
                        {
                            return {styleName:"UnitSelectText"};
                        }// end function
                        })]};
                    }// end function
                    }), new UIComponentDescriptor({type:Spacer, propertiesFactory:function () : Object
                    {
                        return {percentHeight:100};
                    }// end function
                    })]};
                }// end function
                }), new UIComponentDescriptor({type:Image, id:"_ConfirmUpgradeItemWindow_Image2", events:{click:"___ConfirmUpgradeItemWindow_Image2_click"}, propertiesFactory:function () : Object
                {
                    return {x:265, y:307};
                }// end function
                }), new UIComponentDescriptor({type:Image, id:"_ConfirmUpgradeItemWindow_Image3", events:{click:"___ConfirmUpgradeItemWindow_Image3_click"}, propertiesFactory:function () : Object
                {
                    return {x:395, y:307};
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
            this.addEventListener("creationComplete", ___ConfirmUpgradeItemWindow_PopupWindow1_creationComplete);
            return;
        }// end function

        private function get _swf_ok_button() : MovieClipLoaderAsset
        {
            return this._2009475207_swf_ok_button;
        }// end function

        public function ___ConfirmUpgradeItemWindow_PopupWindow1_creationComplete(event:FlexEvent) : void
        {
            init();
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

        override public function initialize() : void
        {
            var target:ConfirmUpgradeItemWindow;
            var watcherSetupUtilClass:Object;
            .mx_internal::setDocumentDescriptor(_documentDescriptor_);
            var bindings:* = _ConfirmUpgradeItemWindow_bindingsSetup();
            var watchers:Array;
            target;
            if (_watcherSetupUtil == null)
            {
                watcherSetupUtilClass = getDefinitionByName("_com_kbmj_viking_view_home_ConfirmUpgradeItemWindowWatcherSetupUtil");
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

        public function set upgradeMaterialName(param1:String) : void
        {
            _upgradeMaterialName = param1;
            return;
        }// end function

        private function set _upgradeMaterialName(param1:String) : void
        {
            var _loc_2:* = this._952919601_upgradeMaterialName;
            if (_loc_2 !== param1)
            {
                this._952919601_upgradeMaterialName = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "_upgradeMaterialName", _loc_2, param1));
            }
            return;
        }// end function

        public function init() : void
        {
            MovieClip(Loader(_swf_bg.getChildAt(0)).content).gotoAndPlay("center_300x200");
            MovieClip(Loader(_swf_ok_button.getChildAt(0)).content).gotoAndPlay(0);
            MovieClip(Loader(_swf_cancel_button.getChildAt(0)).content).gotoAndPlay(0);
            MovieClip(Loader(_swf_ok_button.getChildAt(0)).content).gotoAndPlay("button_yes");
            MovieClip(Loader(_swf_cancel_button.getChildAt(0)).content).gotoAndPlay("button_no");
            return;
        }// end function

        public function ___ConfirmUpgradeItemWindow_Image3_click(event:MouseEvent) : void
        {
            onClose();
            return;
        }// end function

        private function get _upgradedMasterName() : String
        {
            return this._679824020_upgradedMasterName;
        }// end function

        private function set _upgradedMasterName(param1:String) : void
        {
            var _loc_2:* = this._679824020_upgradedMasterName;
            if (_loc_2 !== param1)
            {
                this._679824020_upgradedMasterName = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "_upgradedMasterName", _loc_2, param1));
            }
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

        private function get _upgradeItemName() : String
        {
            return this._1683808197_upgradeItemName;
        }// end function

        private function get _swf_bg() : MovieClipLoaderAsset
        {
            return this._1818888257_swf_bg;
        }// end function

        private function get _upgradeMaterialName() : String
        {
            return this._952919601_upgradeMaterialName;
        }// end function

        private function _ConfirmUpgradeItemWindow_bindingsSetup() : Array
        {
            var binding:Binding;
            var result:Array;
            binding = new Binding(this, function () : Object
            {
                return _swf_bg;
            }// end function
            , function (param1:Object) : void
            {
                _ConfirmUpgradeItemWindow_Image1.source = param1;
                return;
            }// end function
            , "_ConfirmUpgradeItemWindow_Image1.source");
            result[0] = binding;
            binding = new Binding(this, function () : String
            {
                var _loc_1:* = Utils.i18n("itemUpgradeConfirm1", _upgradeMaterialName);
                var _loc_2:* = _loc_1 == undefined ? (null) : (String(_loc_1));
                return _loc_2;
            }// end function
            , function (param1:String) : void
            {
                _ConfirmUpgradeItemWindow_Label1.text = param1;
                return;
            }// end function
            , "_ConfirmUpgradeItemWindow_Label1.text");
            result[1] = binding;
            binding = new Binding(this, function () : String
            {
                var _loc_1:* = Utils.i18n("itemUpgradeConfirm2", _upgradeItemName, _upgradedMasterName);
                var _loc_2:* = _loc_1 == undefined ? (null) : (String(_loc_1));
                return _loc_2;
            }// end function
            , function (param1:String) : void
            {
                _ConfirmUpgradeItemWindow_Label2.text = param1;
                return;
            }// end function
            , "_ConfirmUpgradeItemWindow_Label2.text");
            result[2] = binding;
            binding = new Binding(this, function () : Object
            {
                return _swf_ok_button;
            }// end function
            , function (param1:Object) : void
            {
                _ConfirmUpgradeItemWindow_Image2.source = param1;
                return;
            }// end function
            , "_ConfirmUpgradeItemWindow_Image2.source");
            result[3] = binding;
            binding = new Binding(this, function () : Object
            {
                return _swf_cancel_button;
            }// end function
            , function (param1:Object) : void
            {
                _ConfirmUpgradeItemWindow_Image3.source = param1;
                return;
            }// end function
            , "_ConfirmUpgradeItemWindow_Image3.source");
            result[4] = binding;
            return result;
        }// end function

        private function onConfirm() : void
        {
            sendEvent(CONFIRMED);
            onClose();
            return;
        }// end function

        public function ___ConfirmUpgradeItemWindow_Image2_click(event:MouseEvent) : void
        {
            onConfirm();
            return;
        }// end function

        public function set upgradedMasterName(param1:String) : void
        {
            _upgradedMasterName = param1;
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

        public function set upgradeItemName(param1:String) : void
        {
            _upgradeItemName = param1;
            return;
        }// end function

        private function _ConfirmUpgradeItemWindow_bindingExprs() : void
        {
            var _loc_1:* = undefined;
            _loc_1 = _swf_bg;
            _loc_1 = Utils.i18n("itemUpgradeConfirm1", _upgradeMaterialName);
            _loc_1 = Utils.i18n("itemUpgradeConfirm2", _upgradeItemName, _upgradedMasterName);
            _loc_1 = _swf_ok_button;
            _loc_1 = _swf_cancel_button;
            return;
        }// end function

        private function set _upgradeItemName(param1:String) : void
        {
            var _loc_2:* = this._1683808197_upgradeItemName;
            if (_loc_2 !== param1)
            {
                this._1683808197_upgradeItemName = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "_upgradeItemName", _loc_2, param1));
            }
            return;
        }// end function

        public static function set watcherSetupUtil(param1:IWatcherSetupUtil) : void
        {
            ConfirmUpgradeItemWindow._watcherSetupUtil = param1;
            return;
        }// end function

    }
}
