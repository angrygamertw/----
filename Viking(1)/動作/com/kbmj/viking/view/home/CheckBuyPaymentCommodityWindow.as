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

    public class CheckBuyPaymentCommodityWindow extends PopupWindow implements IBindingClient
    {
        private var _550961674_swf_buy:MovieClipLoaderAsset;
        private var _1075873300_swf_window:MovieClipLoaderAsset;
        var _watchers:Array;
        private var _987664805_typeLabel:String;
        public var _CheckBuyPaymentCommodityWindow_Image1:Image;
        public var _CheckBuyPaymentCommodityWindow_Image2:Image;
        public var _CheckBuyPaymentCommodityWindow_Image3:Image;
        private const TYPE_LABELS:Array;
        private var _1692215791_buyData:Object;
        public var _CheckBuyPaymentCommodityWindow_Label1:Label;
        public var _CheckBuyPaymentCommodityWindow_Label2:Label;
        public var _CheckBuyPaymentCommodityWindow_Label3:Label;
        private const PROPERTIES:Array;
        private var _902623436_property:String;
        var _bindingsByDestination:Object;
        var _bindingsBeginWithWord:Object;
        var _bindings:Array;
        private var _100077085_swf_back:MovieClipLoaderAsset;
        private var _documentDescriptor_:UIComponentDescriptor;
        private static var _watcherSetupUtil:IWatcherSetupUtil;
        public static const BUY_PAYMENT_COMMODITY:String = "CheckUnionWindow/buyPaymentCommodity";

        public function CheckBuyPaymentCommodityWindow()
        {
            _documentDescriptor_ = new UIComponentDescriptor({type:PopupWindow, propertiesFactory:function () : Object
            {
                return {childDescriptors:[new UIComponentDescriptor({type:Image, id:"_CheckBuyPaymentCommodityWindow_Image1"}), new UIComponentDescriptor({type:VBox, stylesFactory:function () : void
                {
                    this.verticalGap = 3;
                    return;
                }// end function
                , propertiesFactory:function () : Object
                {
                    return {x:247, y:225, childDescriptors:[new UIComponentDescriptor({type:HBox, propertiesFactory:function () : Object
                    {
                        return {childDescriptors:[new UIComponentDescriptor({type:Label, id:"_CheckBuyPaymentCommodityWindow_Label1", stylesFactory:function () : void
                        {
                            this.fontSize = 14;
                            this.textAlign = "center";
                            return;
                        }// end function
                        , propertiesFactory:function () : Object
                        {
                            return {width:260, height:25};
                        }// end function
                        })]};
                    }// end function
                    }), new UIComponentDescriptor({type:HBox, propertiesFactory:function () : Object
                    {
                        return {childDescriptors:[new UIComponentDescriptor({type:Label, id:"_CheckBuyPaymentCommodityWindow_Label2", stylesFactory:function () : void
                        {
                            this.fontSize = 14;
                            this.textAlign = "center";
                            return;
                        }// end function
                        , propertiesFactory:function () : Object
                        {
                            return {width:260, height:30};
                        }// end function
                        })]};
                    }// end function
                    }), new UIComponentDescriptor({type:HBox, propertiesFactory:function () : Object
                    {
                        return {childDescriptors:[new UIComponentDescriptor({type:Label, id:"_CheckBuyPaymentCommodityWindow_Label3", stylesFactory:function () : void
                        {
                            this.fontSize = 14;
                            this.textAlign = "center";
                            return;
                        }// end function
                        , propertiesFactory:function () : Object
                        {
                            return {width:260, height:30};
                        }// end function
                        })]};
                    }// end function
                    }), new UIComponentDescriptor({type:Spacer, propertiesFactory:function () : Object
                    {
                        return {height:10};
                    }// end function
                    }), new UIComponentDescriptor({type:HBox, propertiesFactory:function () : Object
                    {
                        return {childDescriptors:[new UIComponentDescriptor({type:Spacer, propertiesFactory:function () : Object
                        {
                            return {width:5};
                        }// end function
                        }), new UIComponentDescriptor({type:Image, id:"_CheckBuyPaymentCommodityWindow_Image2", events:{click:"___CheckBuyPaymentCommodityWindow_Image2_click"}}), new UIComponentDescriptor({type:Spacer, propertiesFactory:function () : Object
                        {
                            return {width:120};
                        }// end function
                        }), new UIComponentDescriptor({type:Image, id:"_CheckBuyPaymentCommodityWindow_Image3", events:{click:"___CheckBuyPaymentCommodityWindow_Image3_click"}})]};
                    }// end function
                    })]};
                }// end function
                })]};
            }// end function
            });
            _1075873300_swf_window = new Viking.EmbedSwfWindowCommon();
            _550961674_swf_buy = new Viking.EmbedSwfButtonCommon();
            _100077085_swf_back = new Viking.EmbedSwfButtonCommon();
            TYPE_LABELS = ["神力", "文", "恩賞點數"];
            PROPERTIES = ["power", "gold", "point"];
            _bindings = [];
            _watchers = [];
            _bindingsByDestination = {};
            _bindingsBeginWithWord = {};
            mx_internal::_document = this;
            this.addEventListener("creationComplete", ___CheckBuyPaymentCommodityWindow_PopupWindow1_creationComplete);
            return;
        }// end function

        private function get _swf_buy() : MovieClipLoaderAsset
        {
            return this._550961674_swf_buy;
        }// end function

        public function ___CheckBuyPaymentCommodityWindow_Image2_click(event:MouseEvent) : void
        {
            throwEvent(BUY_PAYMENT_COMMODITY);
            return;
        }// end function

        override public function initialize() : void
        {
            var target:CheckBuyPaymentCommodityWindow;
            var watcherSetupUtilClass:Object;
            .mx_internal::setDocumentDescriptor(_documentDescriptor_);
            var bindings:* = _CheckBuyPaymentCommodityWindow_bindingsSetup();
            var watchers:Array;
            target;
            if (_watcherSetupUtil == null)
            {
                watcherSetupUtilClass = getDefinitionByName("_com_kbmj_viking_view_home_CheckBuyPaymentCommodityWindowWatcherSetupUtil");
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

        public function ___CheckBuyPaymentCommodityWindow_PopupWindow1_creationComplete(event:FlexEvent) : void
        {
            init();
            return;
        }// end function

        private function set _swf_buy(param1:MovieClipLoaderAsset) : void
        {
            var _loc_2:* = this._550961674_swf_buy;
            if (_loc_2 !== param1)
            {
                this._550961674_swf_buy = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "_swf_buy", _loc_2, param1));
            }
            return;
        }// end function

        private function get _buyData() : Object
        {
            return this._1692215791_buyData;
        }// end function

        private function _CheckBuyPaymentCommodityWindow_bindingExprs() : void
        {
            var _loc_1:* = undefined;
            _loc_1 = _swf_window;
            _loc_1 = getBuyDataLabel("nameLabel") + "" + getBuyDataLabel("quantity") + "" + Utils.i18n("localize37") + "、";
            _loc_1 = Utils.i18n("buyPaymentCommodityConfirm", getBuyDataLabel(_property), _typeLabel);
            _loc_1 = Utils.i18n("normalSummonCreateConfirm3");
            _loc_1 = _swf_buy;
            _loc_1 = _swf_back;
            return;
        }// end function

        public function setbuyData(param1:Object, param2:int) : void
        {
            _buyData = param1;
            _typeLabel = TYPE_LABELS[(param2 - 1)];
            _property = PROPERTIES[(param2 - 1)];
            return;
        }// end function

        public function init() : void
        {
            MovieClip(Loader(_swf_window.getChildAt(0)).content).gotoAndPlay("center_300x200");
            MovieClip(Loader(_swf_buy.getChildAt(0)).content).gotoAndPlay("button_yes");
            MovieClip(Loader(_swf_back.getChildAt(0)).content).gotoAndPlay("button_no");
            return;
        }// end function

        private function get _property() : String
        {
            return this._902623436_property;
        }// end function

        private function set _typeLabel(param1:String) : void
        {
            var _loc_2:* = this._987664805_typeLabel;
            if (_loc_2 !== param1)
            {
                this._987664805_typeLabel = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "_typeLabel", _loc_2, param1));
            }
            return;
        }// end function

        public function ___CheckBuyPaymentCommodityWindow_Image3_click(event:MouseEvent) : void
        {
            onClose();
            return;
        }// end function

        private function set _swf_back(param1:MovieClipLoaderAsset) : void
        {
            var _loc_2:* = this._100077085_swf_back;
            if (_loc_2 !== param1)
            {
                this._100077085_swf_back = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "_swf_back", _loc_2, param1));
            }
            return;
        }// end function

        private function set _buyData(param1:Object) : void
        {
            var _loc_2:* = this._1692215791_buyData;
            if (_loc_2 !== param1)
            {
                this._1692215791_buyData = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "_buyData", _loc_2, param1));
            }
            return;
        }// end function

        public function get buyData() : Object
        {
            return _buyData;
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

        private function throwEvent(param1:String) : void
        {
            sendPopupEvent(param1, _buyData.masterId);
            onClose();
            return;
        }// end function

        private function get _typeLabel() : String
        {
            return this._987664805_typeLabel;
        }// end function

        private function get _swf_back() : MovieClipLoaderAsset
        {
            return this._100077085_swf_back;
        }// end function

        private function _CheckBuyPaymentCommodityWindow_bindingsSetup() : Array
        {
            var binding:Binding;
            var result:Array;
            binding = new Binding(this, function () : Object
            {
                return _swf_window;
            }// end function
            , function (param1:Object) : void
            {
                _CheckBuyPaymentCommodityWindow_Image1.source = param1;
                return;
            }// end function
            , "_CheckBuyPaymentCommodityWindow_Image1.source");
            result[0] = binding;
            binding = new Binding(this, function () : String
            {
                var _loc_1:* = getBuyDataLabel("nameLabel") + "" + getBuyDataLabel("quantity") + "" + Utils.i18n("localize37") + "、";
                var _loc_2:* = _loc_1 == undefined ? (null) : (String(_loc_1));
                return _loc_2;
            }// end function
            , function (param1:String) : void
            {
                _CheckBuyPaymentCommodityWindow_Label1.text = param1;
                return;
            }// end function
            , "_CheckBuyPaymentCommodityWindow_Label1.text");
            result[1] = binding;
            binding = new Binding(this, function () : String
            {
                var _loc_1:* = Utils.i18n("buyPaymentCommodityConfirm", getBuyDataLabel(_property), _typeLabel);
                var _loc_2:* = _loc_1 == undefined ? (null) : (String(_loc_1));
                return _loc_2;
            }// end function
            , function (param1:String) : void
            {
                _CheckBuyPaymentCommodityWindow_Label2.text = param1;
                return;
            }// end function
            , "_CheckBuyPaymentCommodityWindow_Label2.text");
            result[2] = binding;
            binding = new Binding(this, function () : String
            {
                var _loc_1:* = Utils.i18n("normalSummonCreateConfirm3");
                var _loc_2:* = _loc_1 == undefined ? (null) : (String(_loc_1));
                return _loc_2;
            }// end function
            , function (param1:String) : void
            {
                _CheckBuyPaymentCommodityWindow_Label3.text = param1;
                return;
            }// end function
            , "_CheckBuyPaymentCommodityWindow_Label3.text");
            result[3] = binding;
            binding = new Binding(this, function () : Object
            {
                return _swf_buy;
            }// end function
            , function (param1:Object) : void
            {
                _CheckBuyPaymentCommodityWindow_Image2.source = param1;
                return;
            }// end function
            , "_CheckBuyPaymentCommodityWindow_Image2.source");
            result[4] = binding;
            binding = new Binding(this, function () : Object
            {
                return _swf_back;
            }// end function
            , function (param1:Object) : void
            {
                _CheckBuyPaymentCommodityWindow_Image3.source = param1;
                return;
            }// end function
            , "_CheckBuyPaymentCommodityWindow_Image3.source");
            result[5] = binding;
            return result;
        }// end function

        private function set _property(param1:String) : void
        {
            var _loc_2:* = this._902623436_property;
            if (_loc_2 !== param1)
            {
                this._902623436_property = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "_property", _loc_2, param1));
            }
            return;
        }// end function

        private function get _swf_window() : MovieClipLoaderAsset
        {
            return this._1075873300_swf_window;
        }// end function

        public function getBuyDataLabel(param1:String) : String
        {
            return buyData && buyData[param1] ? (buyData[param1]) : ("");
        }// end function

        public static function set watcherSetupUtil(param1:IWatcherSetupUtil) : void
        {
            CheckBuyPaymentCommodityWindow._watcherSetupUtil = param1;
            return;
        }// end function

    }
}
