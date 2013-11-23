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

    public class DeliveryFactionGiftWindow extends PopupWindow implements IBindingClient
    {
        public var _DeliveryFactionGiftWindow_TextArea1:TextArea;
        public var _DeliveryFactionGiftWindow_TextArea3:TextArea;
        private var _232169286decideButton:Image;
        public var _DeliveryFactionGiftWindow_TextArea2:TextArea;
        public var _DeliveryFactionGiftWindow_Image1:Image;
        public var _DeliveryFactionGiftWindow_Text1:Text;
        private var _1075873300_swf_window:MovieClipLoaderAsset;
        var _watchers:Array;
        private var _1623844508_swf_decide:MovieClipLoaderAsset;
        private var _1136057241_giftCountLeft:int;
        private var _1893554479stepper:NumericStepper;
        private var _1398870693_currentGiftCount:int;
        private var _125249616_maxQuantity:int;
        var _bindingsByDestination:Object;
        var _bindingsBeginWithWord:Object;
        private var _1193840764_swf_close:MovieClipLoaderAsset;
        var _bindings:Array;
        private var _documentDescriptor_:UIComponentDescriptor;
        private var _312699062closeButton:Image;
        public static const DELIVERY:String = NAME + "delivery";
        private static var _watcherSetupUtil:IWatcherSetupUtil;
        public static const NAME:String = "deliveryFactionGiftWindow";

        public function DeliveryFactionGiftWindow()
        {
            _documentDescriptor_ = new UIComponentDescriptor({type:PopupWindow, propertiesFactory:function () : Object
            {
                return {childDescriptors:[new UIComponentDescriptor({type:Canvas, propertiesFactory:function () : Object
                {
                    return {childDescriptors:[new UIComponentDescriptor({type:Image, id:"_DeliveryFactionGiftWindow_Image1"}), new UIComponentDescriptor({type:Text, id:"_DeliveryFactionGiftWindow_Text1", propertiesFactory:function () : Object
                    {
                        return {x:365, y:147, styleName:"PanelBaseTitle"};
                    }// end function
                    }), new UIComponentDescriptor({type:NumericStepper, id:"stepper", stylesFactory:function () : void
                    {
                        this.cornerRadius = 0;
                        this.borderColor = 10058583;
                        this.iconColor = 5318420;
                        this.color = 734012;
                        this.themeColor = 16737843;
                        return;
                    }// end function
                    , propertiesFactory:function () : Object
                    {
                        return {x:258, y:305, minimum:1, value:1};
                    }// end function
                    }), new UIComponentDescriptor({type:TextArea, id:"_DeliveryFactionGiftWindow_TextArea1", stylesFactory:function () : void
                    {
                        this.fontSize = 12;
                        this.backgroundAlpha = 0;
                        this.borderStyle = "none";
                        return;
                    }// end function
                    , propertiesFactory:function () : Object
                    {
                        return {x:250, y:190, width:200, height:50, editable:false};
                    }// end function
                    }), new UIComponentDescriptor({type:TextArea, id:"_DeliveryFactionGiftWindow_TextArea2", stylesFactory:function () : void
                    {
                        this.fontSize = 15;
                        this.backgroundAlpha = 0;
                        this.borderStyle = "none";
                        return;
                    }// end function
                    , propertiesFactory:function () : Object
                    {
                        return {x:250, y:230, width:200, height:30, editable:false};
                    }// end function
                    }), new UIComponentDescriptor({type:TextArea, id:"_DeliveryFactionGiftWindow_TextArea3", stylesFactory:function () : void
                    {
                        this.fontSize = 15;
                        this.backgroundAlpha = 0;
                        this.borderStyle = "none";
                        return;
                    }// end function
                    , propertiesFactory:function () : Object
                    {
                        return {x:250, y:260, width:250, height:30, editable:false};
                    }// end function
                    }), new UIComponentDescriptor({type:Image, id:"decideButton", events:{click:"__decideButton_click"}, propertiesFactory:function () : Object
                    {
                        return {x:260, y:350};
                    }// end function
                    }), new UIComponentDescriptor({type:Image, id:"closeButton", events:{click:"__closeButton_click"}, propertiesFactory:function () : Object
                    {
                        return {x:390, y:350};
                    }// end function
                    })]};
                }// end function
                })]};
            }// end function
            });
            _1075873300_swf_window = new Viking.EmbedSwfWindowCommon();
            _1623844508_swf_decide = new Viking.EmbedSwfButtonCommon();
            _1193840764_swf_close = new Viking.EmbedSwfButtonCommon();
            _bindings = [];
            _watchers = [];
            _bindingsByDestination = {};
            _bindingsBeginWithWord = {};
            mx_internal::_document = this;
            this.addEventListener("creationComplete", ___DeliveryFactionGiftWindow_PopupWindow1_creationComplete);
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

        private function _DeliveryFactionGiftWindow_bindingsSetup() : Array
        {
            var binding:Binding;
            var result:Array;
            binding = new Binding(this, function () : Object
            {
                return _swf_window;
            }// end function
            , function (param1:Object) : void
            {
                _DeliveryFactionGiftWindow_Image1.source = param1;
                return;
            }// end function
            , "_DeliveryFactionGiftWindow_Image1.source");
            result[0] = binding;
            binding = new Binding(this, function () : String
            {
                var _loc_1:* = Utils.i18n("deliver");
                var _loc_2:* = _loc_1 == undefined ? (null) : (String(_loc_1));
                return _loc_2;
            }// end function
            , function (param1:String) : void
            {
                _DeliveryFactionGiftWindow_Text1.text = param1;
                return;
            }// end function
            , "_DeliveryFactionGiftWindow_Text1.text");
            result[1] = binding;
            binding = new Binding(this, function () : Number
            {
                return _maxQuantity;
            }// end function
            , function (param1:Number) : void
            {
                stepper.maximum = param1;
                return;
            }// end function
            , "stepper.maximum");
            result[2] = binding;
            binding = new Binding(this, function () : String
            {
                var _loc_1:* = Utils.i18n("deliveryFactionGift");
                var _loc_2:* = _loc_1 == undefined ? (null) : (String(_loc_1));
                return _loc_2;
            }// end function
            , function (param1:String) : void
            {
                _DeliveryFactionGiftWindow_TextArea1.text = param1;
                return;
            }// end function
            , "_DeliveryFactionGiftWindow_TextArea1.text");
            result[3] = binding;
            binding = new Binding(this, function () : String
            {
                var _loc_1:* = Utils.i18n("currentFactionGift") + "" + _currentGiftCount;
                var _loc_2:* = _loc_1 == undefined ? (null) : (String(_loc_1));
                return _loc_2;
            }// end function
            , function (param1:String) : void
            {
                _DeliveryFactionGiftWindow_TextArea2.text = param1;
                return;
            }// end function
            , "_DeliveryFactionGiftWindow_TextArea2.text");
            result[4] = binding;
            binding = new Binding(this, function () : String
            {
                var _loc_1:* = Utils.i18n("factionGiftNeeded") + "" + _giftCountLeft;
                var _loc_2:* = _loc_1 == undefined ? (null) : (String(_loc_1));
                return _loc_2;
            }// end function
            , function (param1:String) : void
            {
                _DeliveryFactionGiftWindow_TextArea3.text = param1;
                return;
            }// end function
            , "_DeliveryFactionGiftWindow_TextArea3.text");
            result[5] = binding;
            return result;
        }// end function

        public function set currentGiftCount(param1:int) : void
        {
            _currentGiftCount = param1;
            return;
        }// end function

        public function set maxQuantity(param1:int) : void
        {
            _maxQuantity = param1;
            return;
        }// end function

        override public function initialize() : void
        {
            var target:DeliveryFactionGiftWindow;
            var watcherSetupUtilClass:Object;
            .mx_internal::setDocumentDescriptor(_documentDescriptor_);
            var bindings:* = _DeliveryFactionGiftWindow_bindingsSetup();
            var watchers:Array;
            target;
            if (_watcherSetupUtil == null)
            {
                watcherSetupUtilClass = getDefinitionByName("_com_kbmj_viking_view_city_DeliveryFactionGiftWindowWatcherSetupUtil");
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

        private function set _maxQuantity(param1:int) : void
        {
            var _loc_2:* = this._125249616_maxQuantity;
            if (_loc_2 !== param1)
            {
                this._125249616_maxQuantity = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "_maxQuantity", _loc_2, param1));
            }
            return;
        }// end function

        private function addSwf() : void
        {
            MovieClip(Loader(_swf_window.getChildAt(0)).content).gotoAndPlay("center_300x270");
            MovieClip(Loader(_swf_decide.getChildAt(0)).content).gotoAndPlay("button_decide");
            MovieClip(Loader(_swf_close.getChildAt(0)).content).gotoAndPlay("button_close");
            decideButton.addChild(_swf_decide);
            closeButton.addChild(_swf_close);
            return;
        }// end function

        public function __decideButton_click(event:MouseEvent) : void
        {
            decide();
            return;
        }// end function

        public function ___DeliveryFactionGiftWindow_PopupWindow1_creationComplete(event:FlexEvent) : void
        {
            addSwf();
            return;
        }// end function

        private function get _currentGiftCount() : int
        {
            return this._1398870693_currentGiftCount;
        }// end function

        public function set stepper(param1:NumericStepper) : void
        {
            var _loc_2:* = this._1893554479stepper;
            if (_loc_2 !== param1)
            {
                this._1893554479stepper = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "stepper", _loc_2, param1));
            }
            return;
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

        public function get decideButton() : Image
        {
            return this._232169286decideButton;
        }// end function

        private function set _swf_decide(param1:MovieClipLoaderAsset) : void
        {
            var _loc_2:* = this._1623844508_swf_decide;
            if (_loc_2 !== param1)
            {
                this._1623844508_swf_decide = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "_swf_decide", _loc_2, param1));
            }
            return;
        }// end function

        private function set _giftCountLeft(param1:int) : void
        {
            var _loc_2:* = this._1136057241_giftCountLeft;
            if (_loc_2 !== param1)
            {
                this._1136057241_giftCountLeft = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "_giftCountLeft", _loc_2, param1));
            }
            return;
        }// end function

        private function _DeliveryFactionGiftWindow_bindingExprs() : void
        {
            var _loc_1:* = undefined;
            _loc_1 = _swf_window;
            _loc_1 = Utils.i18n("deliver");
            _loc_1 = _maxQuantity;
            _loc_1 = Utils.i18n("deliveryFactionGift");
            _loc_1 = Utils.i18n("currentFactionGift") + "" + _currentGiftCount;
            _loc_1 = Utils.i18n("factionGiftNeeded") + "" + _giftCountLeft;
            return;
        }// end function

        private function get _maxQuantity() : int
        {
            return this._125249616_maxQuantity;
        }// end function

        public function get closeButton() : Image
        {
            return this._312699062closeButton;
        }// end function

        public function get stepper() : NumericStepper
        {
            return this._1893554479stepper;
        }// end function

        private function set _currentGiftCount(param1:int) : void
        {
            var _loc_2:* = this._1398870693_currentGiftCount;
            if (_loc_2 !== param1)
            {
                this._1398870693_currentGiftCount = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "_currentGiftCount", _loc_2, param1));
            }
            return;
        }// end function

        public function set giftCountLeft(param1:int) : void
        {
            _giftCountLeft = param1;
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

        private function get _swf_decide() : MovieClipLoaderAsset
        {
            return this._1623844508_swf_decide;
        }// end function

        private function get _giftCountLeft() : int
        {
            return this._1136057241_giftCountLeft;
        }// end function

        private function decide() : void
        {
            sendPopupEvent(DELIVERY, stepper.value);
            close();
            return;
        }// end function

        public function __closeButton_click(event:MouseEvent) : void
        {
            close();
            return;
        }// end function

        public function set decideButton(param1:Image) : void
        {
            var _loc_2:* = this._232169286decideButton;
            if (_loc_2 !== param1)
            {
                this._232169286decideButton = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "decideButton", _loc_2, param1));
            }
            return;
        }// end function

        private function close() : void
        {
            onClose();
            return;
        }// end function

        private function get _swf_window() : MovieClipLoaderAsset
        {
            return this._1075873300_swf_window;
        }// end function

        private function get _swf_close() : MovieClipLoaderAsset
        {
            return this._1193840764_swf_close;
        }// end function

        public static function set watcherSetupUtil(param1:IWatcherSetupUtil) : void
        {
            _watcherSetupUtil = param1;
            return;
        }// end function

    }
}
