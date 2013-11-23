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

    public class ConfirmItemSummonWindow extends PopupWindow implements IBindingClient
    {
        public var _ConfirmItemSummonWindow_Image3:Image;
        var _watchers:Array;
        private var _487487717_swf_cancel_button:MovieClipLoaderAsset;
        private var _2009475207_swf_ok_button:MovieClipLoaderAsset;
        private var _37696870_summonNum:int = 0;
        var _bindingsByDestination:Object;
        var _bindingsBeginWithWord:Object;
        private var _1168785754_summonType:String = "ticket";
        private var _1818888257_swf_bg:MovieClipLoaderAsset;
        var _bindings:Array;
        public var _ConfirmItemSummonWindow_Image1:Image;
        public var _ConfirmItemSummonWindow_Image2:Image;
        private var _documentDescriptor_:UIComponentDescriptor;
        public var _ConfirmItemSummonWindow_Label1:Label;
        public var _ConfirmItemSummonWindow_Label2:Label;
        private static var _watcherSetupUtil:IWatcherSetupUtil;
        public static const CONFIRMED:String = "ConfirmReunionWindow/Confirmed";

        public function ConfirmItemSummonWindow()
        {
            _documentDescriptor_ = new UIComponentDescriptor({type:PopupWindow, propertiesFactory:function () : Object
            {
                return {childDescriptors:[new UIComponentDescriptor({type:Image, id:"_ConfirmItemSummonWindow_Image1"}), new UIComponentDescriptor({type:VBox, propertiesFactory:function () : Object
                {
                    return {childDescriptors:[new UIComponentDescriptor({type:Label, id:"_ConfirmItemSummonWindow_Label1", stylesFactory:function () : void
                    {
                        this.fontSize = 14;
                        return;
                    }// end function
                    }), new UIComponentDescriptor({type:Spacer, propertiesFactory:function () : Object
                    {
                        return {percentHeight:100};
                    }// end function
                    }), new UIComponentDescriptor({type:Label, id:"_ConfirmItemSummonWindow_Label2", stylesFactory:function () : void
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
                    return {x:25, y:75, childDescriptors:[new UIComponentDescriptor({type:Image, id:"_ConfirmItemSummonWindow_Image2", events:{click:"___ConfirmItemSummonWindow_Image2_click"}}), new UIComponentDescriptor({type:Spacer, propertiesFactory:function () : Object
                    {
                        return {width:110};
                    }// end function
                    }), new UIComponentDescriptor({type:Image, id:"_ConfirmItemSummonWindow_Image3", events:{click:"___ConfirmItemSummonWindow_Image3_click"}})]};
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
            this.addEventListener("creationComplete", ___ConfirmItemSummonWindow_PopupWindow1_creationComplete);
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
            var target:ConfirmItemSummonWindow;
            var watcherSetupUtilClass:Object;
            .mx_internal::setDocumentDescriptor(_documentDescriptor_);
            var bindings:* = _ConfirmItemSummonWindow_bindingsSetup();
            var watchers:Array;
            target;
            if (_watcherSetupUtil == null)
            {
                watcherSetupUtilClass = getDefinitionByName("_com_kbmj_viking_view_home_ConfirmItemSummonWindowWatcherSetupUtil");
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

        public function ___ConfirmItemSummonWindow_Image3_click(event:MouseEvent) : void
        {
            onClose();
            return;
        }// end function

        public function init() : void
        {
            MovieClip(Loader(_swf_bg.getChildAt(0)).content).gotoAndPlay("center_300x200");
            MovieClip(Loader(_swf_bg.getChildAt(0)).content).x = -240;
            MovieClip(Loader(_swf_bg.getChildAt(0)).content).y = -240;
            MovieClip(Loader(_swf_ok_button.getChildAt(0)).content).gotoAndPlay("button_yes");
            MovieClip(Loader(_swf_cancel_button.getChildAt(0)).content).gotoAndPlay("button_no");
            return;
        }// end function

        private function get _swf_cancel_button() : MovieClipLoaderAsset
        {
            return this._487487717_swf_cancel_button;
        }// end function

        public function ___ConfirmItemSummonWindow_PopupWindow1_creationComplete(event:FlexEvent) : void
        {
            init();
            return;
        }// end function

        private function set _summonType(param1:String) : void
        {
            var _loc_2:* = this._1168785754_summonType;
            if (_loc_2 !== param1)
            {
                this._1168785754_summonType = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "_summonType", _loc_2, param1));
            }
            return;
        }// end function

        private function _ConfirmItemSummonWindow_bindingsSetup() : Array
        {
            var binding:Binding;
            var result:Array;
            binding = new Binding(this, function () : Object
            {
                return _swf_bg;
            }// end function
            , function (param1:Object) : void
            {
                _ConfirmItemSummonWindow_Image1.source = param1;
                return;
            }// end function
            , "_ConfirmItemSummonWindow_Image1.source");
            result[0] = binding;
            binding = new Binding(this, function () : String
            {
                var _loc_1:* = Utils.i18n("summonItemSelectMethod", _summonType == "ticket" ? (Utils.i18n("summonItemGoldCoin")) : ("10000文"));
                var _loc_2:* = _loc_1 == undefined ? (null) : (String(_loc_1));
                return _loc_2;
            }// end function
            , function (param1:String) : void
            {
                _ConfirmItemSummonWindow_Label1.text = param1;
                return;
            }// end function
            , "_ConfirmItemSummonWindow_Label1.text");
            result[1] = binding;
            binding = new Binding(this, function () : String
            {
                var _loc_1:* = Utils.i18n("summonItemRemaining") + "" + (_summonType == "ticket" ? (Utils.i18n("summonItemTicketQuantity")) : ("")) + "：" + _summonNum + "" + (_summonType == "ticket" ? ("") : ("文"));
                var _loc_2:* = _loc_1 == undefined ? (null) : (String(_loc_1));
                return _loc_2;
            }// end function
            , function (param1:String) : void
            {
                _ConfirmItemSummonWindow_Label2.text = param1;
                return;
            }// end function
            , "_ConfirmItemSummonWindow_Label2.text");
            result[2] = binding;
            binding = new Binding(this, function () : Object
            {
                return _swf_ok_button;
            }// end function
            , function (param1:Object) : void
            {
                _ConfirmItemSummonWindow_Image2.source = param1;
                return;
            }// end function
            , "_ConfirmItemSummonWindow_Image2.source");
            result[3] = binding;
            binding = new Binding(this, function () : Object
            {
                return _swf_cancel_button;
            }// end function
            , function (param1:Object) : void
            {
                _ConfirmItemSummonWindow_Image3.source = param1;
                return;
            }// end function
            , "_ConfirmItemSummonWindow_Image3.source");
            result[4] = binding;
            return result;
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

        private function _ConfirmItemSummonWindow_bindingExprs() : void
        {
            var _loc_1:* = undefined;
            _loc_1 = _swf_bg;
            _loc_1 = Utils.i18n("summonItemSelectMethod", _summonType == "ticket" ? (Utils.i18n("summonItemGoldCoin")) : ("10000文"));
            _loc_1 = Utils.i18n("summonItemRemaining") + "" + (_summonType == "ticket" ? (Utils.i18n("summonItemTicketQuantity")) : ("")) + "：" + _summonNum + "" + (_summonType == "ticket" ? ("") : ("文"));
            _loc_1 = _swf_ok_button;
            _loc_1 = _swf_cancel_button;
            return;
        }// end function

        private function get _swf_bg() : MovieClipLoaderAsset
        {
            return this._1818888257_swf_bg;
        }// end function

        public function set summonNum(param1:int) : void
        {
            _summonNum = param1;
            return;
        }// end function

        private function set _summonNum(param1:int) : void
        {
            var _loc_2:* = this._37696870_summonNum;
            if (_loc_2 !== param1)
            {
                this._37696870_summonNum = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "_summonNum", _loc_2, param1));
            }
            return;
        }// end function

        private function get _summonType() : String
        {
            return this._1168785754_summonType;
        }// end function

        public function ___ConfirmItemSummonWindow_Image2_click(event:MouseEvent) : void
        {
            onConfirm();
            return;
        }// end function

        private function get _summonNum() : int
        {
            return this._37696870_summonNum;
        }// end function

        private function onConfirm() : void
        {
            sendPopupEvent(CONFIRMED, _summonType);
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

        private function get _swf_ok_button() : MovieClipLoaderAsset
        {
            return this._2009475207_swf_ok_button;
        }// end function

        public function set summonType(param1:String) : void
        {
            _summonType = param1;
            return;
        }// end function

        public static function set watcherSetupUtil(param1:IWatcherSetupUtil) : void
        {
            _watcherSetupUtil = param1;
            return;
        }// end function

    }
}
