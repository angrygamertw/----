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

    public class ConfirmFinishContinuationWindow extends PopupWindow implements IBindingClient
    {
        private var _1152957532_battleText:String;
        var _watchers:Array;
        private var _487487717_swf_cancel_button:MovieClipLoaderAsset;
        public var _ConfirmFinishContinuationWindow_Image1:Image;
        public var _ConfirmFinishContinuationWindow_Image3:Image;
        public var _ConfirmFinishContinuationWindow_Label1:Label;
        public var _ConfirmFinishContinuationWindow_Image2:Image;
        public var _ConfirmFinishContinuationWindow_Label2:Label;
        private var _1100222310_confirmedEvent:String;
        public var _ConfirmFinishContinuationWindow_Text1:Text;
        private var _2009475207_swf_ok_button:MovieClipLoaderAsset;
        var _bindingsByDestination:Object;
        var _bindingsBeginWithWord:Object;
        private var _1818888257_swf_bg:MovieClipLoaderAsset;
        var _bindings:Array;
        private var _documentDescriptor_:UIComponentDescriptor;
        private static var _watcherSetupUtil:IWatcherSetupUtil;

        public function ConfirmFinishContinuationWindow()
        {
            _documentDescriptor_ = new UIComponentDescriptor({type:PopupWindow, propertiesFactory:function () : Object
            {
                return {childDescriptors:[new UIComponentDescriptor({type:Image, id:"_ConfirmFinishContinuationWindow_Image1"}), new UIComponentDescriptor({type:VBox, propertiesFactory:function () : Object
                {
                    return {x:240, y:225, childDescriptors:[new UIComponentDescriptor({type:VBox, stylesFactory:function () : void
                    {
                        this.horizontalCenter = "20";
                        this.top = "100";
                        return;
                    }// end function
                    , propertiesFactory:function () : Object
                    {
                        return {childDescriptors:[new UIComponentDescriptor({type:Label, id:"_ConfirmFinishContinuationWindow_Label1", stylesFactory:function () : void
                        {
                            this.fontSize = 14;
                            return;
                        }// end function
                        }), new UIComponentDescriptor({type:VBox, propertiesFactory:function () : Object
                        {
                            return {x:300, y:245, childDescriptors:[new UIComponentDescriptor({type:Label, id:"_ConfirmFinishContinuationWindow_Label2", stylesFactory:function () : void
                            {
                                this.fontSize = 14;
                                return;
                            }// end function
                            }), new UIComponentDescriptor({type:Text, id:"_ConfirmFinishContinuationWindow_Text1", stylesFactory:function () : void
                            {
                                this.fontSize = 14;
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
                }), new UIComponentDescriptor({type:HBox, stylesFactory:function () : void
                {
                    this.horizontalGap = 130;
                    return;
                }// end function
                , propertiesFactory:function () : Object
                {
                    return {y:337, x:265, childDescriptors:[new UIComponentDescriptor({type:Image, id:"_ConfirmFinishContinuationWindow_Image2", events:{click:"___ConfirmFinishContinuationWindow_Image2_click"}}), new UIComponentDescriptor({type:Image, id:"_ConfirmFinishContinuationWindow_Image3", events:{click:"___ConfirmFinishContinuationWindow_Image3_click"}})]};
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
            this.addEventListener("creationComplete", ___ConfirmFinishContinuationWindow_PopupWindow1_creationComplete);
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

        public function ___ConfirmFinishContinuationWindow_Image2_click(event:MouseEvent) : void
        {
            onConfirm();
            return;
        }// end function

        public function set battleText(param1:String) : void
        {
            _battleText = param1;
            return;
        }// end function

        override public function initialize() : void
        {
            var target:ConfirmFinishContinuationWindow;
            var watcherSetupUtilClass:Object;
            .mx_internal::setDocumentDescriptor(_documentDescriptor_);
            var bindings:* = _ConfirmFinishContinuationWindow_bindingsSetup();
            var watchers:Array;
            target;
            if (_watcherSetupUtil == null)
            {
                watcherSetupUtilClass = getDefinitionByName("_com_kbmj_viking_view_home_ConfirmFinishContinuationWindowWatcherSetupUtil");
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

        public function init() : void
        {
            MovieClip(Loader(_swf_bg.getChildAt(0)).content).gotoAndPlay("center_300x200");
            MovieClip(Loader(_swf_ok_button.getChildAt(0)).content).gotoAndPlay("button_yes");
            MovieClip(Loader(_swf_cancel_button.getChildAt(0)).content).gotoAndPlay("button_no");
            return;
        }// end function

        private function get _battleText() : String
        {
            return this._1152957532_battleText;
        }// end function

        private function set _confirmedEvent(param1:String) : void
        {
            var _loc_2:* = this._1100222310_confirmedEvent;
            if (_loc_2 !== param1)
            {
                this._1100222310_confirmedEvent = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "_confirmedEvent", _loc_2, param1));
            }
            return;
        }// end function

        private function get _confirmedEvent() : String
        {
            return this._1100222310_confirmedEvent;
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

        public function ___ConfirmFinishContinuationWindow_PopupWindow1_creationComplete(event:FlexEvent) : void
        {
            init();
            return;
        }// end function

        private function get _swf_bg() : MovieClipLoaderAsset
        {
            return this._1818888257_swf_bg;
        }// end function

        public function ___ConfirmFinishContinuationWindow_Image3_click(event:MouseEvent) : void
        {
            onClose();
            return;
        }// end function

        private function set _battleText(param1:String) : void
        {
            var _loc_2:* = this._1152957532_battleText;
            if (_loc_2 !== param1)
            {
                this._1152957532_battleText = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "_battleText", _loc_2, param1));
            }
            return;
        }// end function

        private function _ConfirmFinishContinuationWindow_bindingsSetup() : Array
        {
            var binding:Binding;
            var result:Array;
            binding = new Binding(this, function () : Object
            {
                return _swf_bg;
            }// end function
            , function (param1:Object) : void
            {
                _ConfirmFinishContinuationWindow_Image1.source = param1;
                return;
            }// end function
            , "_ConfirmFinishContinuationWindow_Image1.source");
            result[0] = binding;
            binding = new Binding(this, function () : String
            {
                var _loc_1:* = Utils.i18n("continuationBattleEnd", _battleText);
                var _loc_2:* = _loc_1 == undefined ? (null) : (String(_loc_1));
                return _loc_2;
            }// end function
            , function (param1:String) : void
            {
                _ConfirmFinishContinuationWindow_Label1.text = param1;
                return;
            }// end function
            , "_ConfirmFinishContinuationWindow_Label1.text");
            result[1] = binding;
            binding = new Binding(this, function () : String
            {
                var _loc_1:* = Utils.i18n("continuationBattleLoseTicket");
                var _loc_2:* = _loc_1 == undefined ? (null) : (String(_loc_1));
                return _loc_2;
            }// end function
            , function (param1:String) : void
            {
                _ConfirmFinishContinuationWindow_Label2.text = param1;
                return;
            }// end function
            , "_ConfirmFinishContinuationWindow_Label2.text");
            result[2] = binding;
            binding = new Binding(this, function () : String
            {
                var _loc_1:* = Utils.i18n("generalConfirm");
                var _loc_2:* = _loc_1 == undefined ? (null) : (String(_loc_1));
                return _loc_2;
            }// end function
            , function (param1:String) : void
            {
                _ConfirmFinishContinuationWindow_Text1.text = param1;
                return;
            }// end function
            , "_ConfirmFinishContinuationWindow_Text1.text");
            result[3] = binding;
            binding = new Binding(this, function () : Object
            {
                return _swf_ok_button;
            }// end function
            , function (param1:Object) : void
            {
                _ConfirmFinishContinuationWindow_Image2.source = param1;
                return;
            }// end function
            , "_ConfirmFinishContinuationWindow_Image2.source");
            result[4] = binding;
            binding = new Binding(this, function () : Object
            {
                return _swf_cancel_button;
            }// end function
            , function (param1:Object) : void
            {
                _ConfirmFinishContinuationWindow_Image3.source = param1;
                return;
            }// end function
            , "_ConfirmFinishContinuationWindow_Image3.source");
            result[5] = binding;
            return result;
        }// end function

        private function _ConfirmFinishContinuationWindow_bindingExprs() : void
        {
            var _loc_1:* = undefined;
            _loc_1 = _swf_bg;
            _loc_1 = Utils.i18n("continuationBattleEnd", _battleText);
            _loc_1 = Utils.i18n("continuationBattleLoseTicket");
            _loc_1 = Utils.i18n("generalConfirm");
            _loc_1 = _swf_ok_button;
            _loc_1 = _swf_cancel_button;
            return;
        }// end function

        private function onConfirm() : void
        {
            sendEvent(_confirmedEvent);
            onClose();
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

        public function set confirmedEvent(param1:String) : void
        {
            _confirmedEvent = param1;
            return;
        }// end function

        private function get _swf_ok_button() : MovieClipLoaderAsset
        {
            return this._2009475207_swf_ok_button;
        }// end function

        public static function set watcherSetupUtil(param1:IWatcherSetupUtil) : void
        {
            _watcherSetupUtil = param1;
            return;
        }// end function

    }
}
