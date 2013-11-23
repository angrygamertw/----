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

    public class PaymentTypeSelectWindow extends PopupWindow implements IBindingClient
    {
        var _bindings:Array;
        private var EmbedSwfPoint:Class;
        private var EmbedSwfGold:Class;
        private var _1075873300_swf_window:MovieClipLoaderAsset;
        var _watchers:Array;
        private const TYPE_POWER:int = 1;
        private var _99914404_swf_gold:MovieClipLoaderAsset;
        public var _PaymentTypeSelectWindow_Image1:Image;
        public var _PaymentTypeSelectWindow_Image2:Image;
        public var _PaymentTypeSelectWindow_Image3:Image;
        private const TYPE_POINT:int = 3;
        public var _PaymentTypeSelectWindow_Image4:Image;
        public var _PaymentTypeSelectWindow_Image5:Image;
        private const TYPE_GOLD:int = 2;
        var _bindingsByDestination:Object;
        var _bindingsBeginWithWord:Object;
        public var _PaymentTypeSelectWindow_TextArea1:TextArea;
        public var _PaymentTypeSelectWindow_TextArea3:TextArea;
        public var _PaymentTypeSelectWindow_TextArea2:TextArea;
        private var _1193840764_swf_close:MovieClipLoaderAsset;
        public var _PaymentTypeSelectWindow_Text1:Text;
        public var _PaymentTypeSelectWindow_Text2:Text;
        public var _PaymentTypeSelectWindow_Text3:Text;
        public var _PaymentTypeSelectWindow_Text4:Text;
        private var _documentDescriptor_:UIComponentDescriptor;
        private var _1205930004_swf_point:MovieClipLoaderAsset;
        private var EmbedSwfPower:Class;
        private var _1205943177_swf_power:MovieClipLoaderAsset;
        private static var _watcherSetupUtil:IWatcherSetupUtil;
        public static const NAME:String = "paymentTypeSelectWindow";
        public static const SELECT_PAYMENT_TYPE:String = NAME + "selectPaymentType";

        public function PaymentTypeSelectWindow()
        {
            _documentDescriptor_ = new UIComponentDescriptor({type:PopupWindow, propertiesFactory:function () : Object
            {
                return {childDescriptors:[new UIComponentDescriptor({type:Canvas, propertiesFactory:function () : Object
                {
                    return {childDescriptors:[new UIComponentDescriptor({type:Image, id:"_PaymentTypeSelectWindow_Image1"}), new UIComponentDescriptor({type:Text, id:"_PaymentTypeSelectWindow_Text1", propertiesFactory:function () : Object
                    {
                        return {x:335, y:147, styleName:"PanelBaseTitle"};
                    }// end function
                    }), new UIComponentDescriptor({type:VBox, propertiesFactory:function () : Object
                    {
                        return {x:190, y:182, height:300, childDescriptors:[new UIComponentDescriptor({type:Canvas, propertiesFactory:function () : Object
                        {
                            return {height:55, verticalScrollPolicy:"off", horizontalScrollPolicy:"off", childDescriptors:[new UIComponentDescriptor({type:Image, id:"_PaymentTypeSelectWindow_Image2", events:{click:"___PaymentTypeSelectWindow_Image2_click"}, propertiesFactory:function () : Object
                            {
                                return {x:25, y:5};
                            }// end function
                            }), new UIComponentDescriptor({type:Text, id:"_PaymentTypeSelectWindow_Text2", propertiesFactory:function () : Object
                            {
                                return {x:160, y:0, styleName:"BuildingName"};
                            }// end function
                            }), new UIComponentDescriptor({type:TextArea, id:"_PaymentTypeSelectWindow_TextArea1", stylesFactory:function () : void
                            {
                                this.fontSize = 12;
                                this.backgroundAlpha = 0;
                                this.borderStyle = "none";
                                return;
                            }// end function
                            , propertiesFactory:function () : Object
                            {
                                return {x:160, y:20, width:220, height:35, editable:false};
                            }// end function
                            })]};
                        }// end function
                        }), new UIComponentDescriptor({type:Canvas, propertiesFactory:function () : Object
                        {
                            return {height:55, verticalScrollPolicy:"off", horizontalScrollPolicy:"off", childDescriptors:[new UIComponentDescriptor({type:Image, id:"_PaymentTypeSelectWindow_Image3", events:{click:"___PaymentTypeSelectWindow_Image3_click"}, propertiesFactory:function () : Object
                            {
                                return {x:25, y:5};
                            }// end function
                            }), new UIComponentDescriptor({type:Text, id:"_PaymentTypeSelectWindow_Text3", propertiesFactory:function () : Object
                            {
                                return {x:160, y:0, styleName:"BuildingName"};
                            }// end function
                            }), new UIComponentDescriptor({type:TextArea, id:"_PaymentTypeSelectWindow_TextArea2", stylesFactory:function () : void
                            {
                                this.fontSize = 12;
                                this.backgroundAlpha = 0;
                                this.borderStyle = "none";
                                return;
                            }// end function
                            , propertiesFactory:function () : Object
                            {
                                return {x:160, y:20, width:220, height:35, editable:false};
                            }// end function
                            })]};
                        }// end function
                        }), new UIComponentDescriptor({type:Canvas, propertiesFactory:function () : Object
                        {
                            return {height:60, verticalScrollPolicy:"off", horizontalScrollPolicy:"off", childDescriptors:[new UIComponentDescriptor({type:Image, id:"_PaymentTypeSelectWindow_Image4", events:{click:"___PaymentTypeSelectWindow_Image4_click"}, propertiesFactory:function () : Object
                            {
                                return {x:25, y:10};
                            }// end function
                            }), new UIComponentDescriptor({type:Text, id:"_PaymentTypeSelectWindow_Text4", propertiesFactory:function () : Object
                            {
                                return {x:160, y:0, styleName:"BuildingName"};
                            }// end function
                            }), new UIComponentDescriptor({type:TextArea, id:"_PaymentTypeSelectWindow_TextArea3", stylesFactory:function () : void
                            {
                                this.fontSize = 12;
                                this.backgroundAlpha = 0;
                                this.borderStyle = "none";
                                return;
                            }// end function
                            , propertiesFactory:function () : Object
                            {
                                return {x:160, y:20, width:220, height:40, editable:false};
                            }// end function
                            })]};
                        }// end function
                        })]};
                    }// end function
                    }), new UIComponentDescriptor({type:Image, id:"_PaymentTypeSelectWindow_Image5", events:{click:"___PaymentTypeSelectWindow_Image5_click"}, propertiesFactory:function () : Object
                    {
                        return {x:325, y:370};
                    }// end function
                    })]};
                }// end function
                })]};
            }// end function
            });
            EmbedSwfPower = PaymentTypeSelectWindow_EmbedSwfPower;
            EmbedSwfGold = PaymentTypeSelectWindow_EmbedSwfGold;
            EmbedSwfPoint = PaymentTypeSelectWindow_EmbedSwfPoint;
            _1075873300_swf_window = new Viking.EmbedSwfWindowCommon();
            _1193840764_swf_close = new Viking.EmbedSwfButtonCommon();
            _1205943177_swf_power = new EmbedSwfPower();
            _99914404_swf_gold = new EmbedSwfGold();
            _1205930004_swf_point = new EmbedSwfPoint();
            _bindings = [];
            _watchers = [];
            _bindingsByDestination = {};
            _bindingsBeginWithWord = {};
            mx_internal::_document = this;
            this.addEventListener("creationComplete", ___PaymentTypeSelectWindow_PopupWindow1_creationComplete);
            return;
        }// end function

        private function selectType(param1:int) : void
        {
            sendPopupEvent(SELECT_PAYMENT_TYPE, param1);
            close();
            return;
        }// end function

        private function _PaymentTypeSelectWindow_bindingsSetup() : Array
        {
            var binding:Binding;
            var result:Array;
            binding = new Binding(this, function () : Object
            {
                return _swf_window;
            }// end function
            , function (param1:Object) : void
            {
                _PaymentTypeSelectWindow_Image1.source = param1;
                return;
            }// end function
            , "_PaymentTypeSelectWindow_Image1.source");
            result[0] = binding;
            binding = new Binding(this, function () : String
            {
                var _loc_1:* = Utils.i18n("paymentTypeSelect");
                var _loc_2:* = _loc_1 == undefined ? (null) : (String(_loc_1));
                return _loc_2;
            }// end function
            , function (param1:String) : void
            {
                _PaymentTypeSelectWindow_Text1.text = param1;
                return;
            }// end function
            , "_PaymentTypeSelectWindow_Text1.text");
            result[1] = binding;
            binding = new Binding(this, function () : Object
            {
                return _swf_power;
            }// end function
            , function (param1:Object) : void
            {
                _PaymentTypeSelectWindow_Image2.source = param1;
                return;
            }// end function
            , "_PaymentTypeSelectWindow_Image2.source");
            result[2] = binding;
            binding = new Binding(this, function () : String
            {
                var _loc_1:* = Utils.i18n("generalPower");
                var _loc_2:* = _loc_1 == undefined ? (null) : (String(_loc_1));
                return _loc_2;
            }// end function
            , function (param1:String) : void
            {
                _PaymentTypeSelectWindow_Text2.text = param1;
                return;
            }// end function
            , "_PaymentTypeSelectWindow_Text2.text");
            result[3] = binding;
            binding = new Binding(this, function () : String
            {
                var _loc_1:* = Utils.i18n("buyPaymentCommodityPower");
                var _loc_2:* = _loc_1 == undefined ? (null) : (String(_loc_1));
                return _loc_2;
            }// end function
            , function (param1:String) : void
            {
                _PaymentTypeSelectWindow_TextArea1.text = param1;
                return;
            }// end function
            , "_PaymentTypeSelectWindow_TextArea1.text");
            result[4] = binding;
            binding = new Binding(this, function () : Object
            {
                return _swf_gold;
            }// end function
            , function (param1:Object) : void
            {
                _PaymentTypeSelectWindow_Image3.source = param1;
                return;
            }// end function
            , "_PaymentTypeSelectWindow_Image3.source");
            result[5] = binding;
            binding = new Binding(this, function () : String
            {
                var _loc_1:* = Utils.i18n("generalMoneyUnit");
                var _loc_2:* = _loc_1 == undefined ? (null) : (String(_loc_1));
                return _loc_2;
            }// end function
            , function (param1:String) : void
            {
                _PaymentTypeSelectWindow_Text3.text = param1;
                return;
            }// end function
            , "_PaymentTypeSelectWindow_Text3.text");
            result[6] = binding;
            binding = new Binding(this, function () : String
            {
                var _loc_1:* = Utils.i18n("buyPaymentCommodityCash");
                var _loc_2:* = _loc_1 == undefined ? (null) : (String(_loc_1));
                return _loc_2;
            }// end function
            , function (param1:String) : void
            {
                _PaymentTypeSelectWindow_TextArea2.text = param1;
                return;
            }// end function
            , "_PaymentTypeSelectWindow_TextArea2.text");
            result[7] = binding;
            binding = new Binding(this, function () : Object
            {
                return _swf_point;
            }// end function
            , function (param1:Object) : void
            {
                _PaymentTypeSelectWindow_Image4.source = param1;
                return;
            }// end function
            , "_PaymentTypeSelectWindow_Image4.source");
            result[8] = binding;
            binding = new Binding(this, function () : String
            {
                var _loc_1:* = Utils.i18n("rewardPoint");
                var _loc_2:* = _loc_1 == undefined ? (null) : (String(_loc_1));
                return _loc_2;
            }// end function
            , function (param1:String) : void
            {
                _PaymentTypeSelectWindow_Text4.text = param1;
                return;
            }// end function
            , "_PaymentTypeSelectWindow_Text4.text");
            result[9] = binding;
            binding = new Binding(this, function () : String
            {
                var _loc_1:* = Utils.i18n("buyPaymentCommodityRewardPoint");
                var _loc_2:* = _loc_1 == undefined ? (null) : (String(_loc_1));
                return _loc_2;
            }// end function
            , function (param1:String) : void
            {
                _PaymentTypeSelectWindow_TextArea3.text = param1;
                return;
            }// end function
            , "_PaymentTypeSelectWindow_TextArea3.text");
            result[10] = binding;
            binding = new Binding(this, function () : Object
            {
                return _swf_close;
            }// end function
            , function (param1:Object) : void
            {
                _PaymentTypeSelectWindow_Image5.source = param1;
                return;
            }// end function
            , "_PaymentTypeSelectWindow_Image5.source");
            result[11] = binding;
            return result;
        }// end function

        private function get _swf_close() : MovieClipLoaderAsset
        {
            return this._1193840764_swf_close;
        }// end function

        override public function initialize() : void
        {
            var target:PaymentTypeSelectWindow;
            var watcherSetupUtilClass:Object;
            .mx_internal::setDocumentDescriptor(_documentDescriptor_);
            var bindings:* = _PaymentTypeSelectWindow_bindingsSetup();
            var watchers:Array;
            target;
            if (_watcherSetupUtil == null)
            {
                watcherSetupUtilClass = getDefinitionByName("_com_kbmj_viking_view_city_PaymentTypeSelectWindowWatcherSetupUtil");
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

        public function ___PaymentTypeSelectWindow_Image4_click(event:MouseEvent) : void
        {
            selectType(TYPE_POINT);
            return;
        }// end function

        public function ___PaymentTypeSelectWindow_Image2_click(event:MouseEvent) : void
        {
            selectType(TYPE_POWER);
            return;
        }// end function

        private function close() : void
        {
            onClose();
            return;
        }// end function

        private function get _swf_point() : MovieClipLoaderAsset
        {
            return this._1205930004_swf_point;
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

        private function set _swf_point(param1:MovieClipLoaderAsset) : void
        {
            var _loc_2:* = this._1205930004_swf_point;
            if (_loc_2 !== param1)
            {
                this._1205930004_swf_point = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "_swf_point", _loc_2, param1));
            }
            return;
        }// end function

        private function addSwf() : void
        {
            MovieClip(Loader(_swf_window.getChildAt(0)).content).gotoAndPlay("center_400x270");
            MovieClip(Loader(_swf_close.getChildAt(0)).content).gotoAndPlay("button_back");
            return;
        }// end function

        private function set _swf_power(param1:MovieClipLoaderAsset) : void
        {
            var _loc_2:* = this._1205943177_swf_power;
            if (_loc_2 !== param1)
            {
                this._1205943177_swf_power = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "_swf_power", _loc_2, param1));
            }
            return;
        }// end function

        private function get _swf_power() : MovieClipLoaderAsset
        {
            return this._1205943177_swf_power;
        }// end function

        private function set _swf_gold(param1:MovieClipLoaderAsset) : void
        {
            var _loc_2:* = this._99914404_swf_gold;
            if (_loc_2 !== param1)
            {
                this._99914404_swf_gold = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "_swf_gold", _loc_2, param1));
            }
            return;
        }// end function

        public function ___PaymentTypeSelectWindow_Image3_click(event:MouseEvent) : void
        {
            selectType(TYPE_GOLD);
            return;
        }// end function

        public function ___PaymentTypeSelectWindow_Image5_click(event:MouseEvent) : void
        {
            close();
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

        private function get _swf_gold() : MovieClipLoaderAsset
        {
            return this._99914404_swf_gold;
        }// end function

        private function _PaymentTypeSelectWindow_bindingExprs() : void
        {
            var _loc_1:* = undefined;
            _loc_1 = _swf_window;
            _loc_1 = Utils.i18n("paymentTypeSelect");
            _loc_1 = _swf_power;
            _loc_1 = Utils.i18n("generalPower");
            _loc_1 = Utils.i18n("buyPaymentCommodityPower");
            _loc_1 = _swf_gold;
            _loc_1 = Utils.i18n("generalMoneyUnit");
            _loc_1 = Utils.i18n("buyPaymentCommodityCash");
            _loc_1 = _swf_point;
            _loc_1 = Utils.i18n("rewardPoint");
            _loc_1 = Utils.i18n("buyPaymentCommodityRewardPoint");
            _loc_1 = _swf_close;
            return;
        }// end function

        public function ___PaymentTypeSelectWindow_PopupWindow1_creationComplete(event:FlexEvent) : void
        {
            addSwf();
            return;
        }// end function

        private function get _swf_window() : MovieClipLoaderAsset
        {
            return this._1075873300_swf_window;
        }// end function

        public static function set watcherSetupUtil(param1:IWatcherSetupUtil) : void
        {
            _watcherSetupUtil = param1;
            return;
        }// end function

    }
}
