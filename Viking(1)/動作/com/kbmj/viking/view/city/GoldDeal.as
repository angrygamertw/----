package com.kbmj.viking.view.city
{
    import com.kbmj.viking.lib.*;
    import com.kbmj.viking.vo.*;
    import flash.display.*;
    import flash.events.*;
    import flash.utils.*;
    import mx.binding.*;
    import mx.containers.*;
    import mx.controls.*;
    import mx.core.*;
    import mx.events.*;
    import mx.managers.*;

    public class GoldDeal extends Canvas implements IBindingClient
    {
        private var _499465228_sumGold:int = 0;
        var _watchers:Array;
        private var _1436550923_pocketMoney:int = 0;
        private var _1896677185windowLayer:Canvas;
        public var _GoldDeal_Image1:Image;
        public var _GoldDeal_Image2:Image;
        public var _GoldDeal_Text1:Text;
        public var _GoldDeal_Text2:Text;
        public var _GoldDeal_Label2:Label;
        public var _GoldDeal_Label5:Label;
        public var _GoldDeal_Label6:Label;
        public var _GoldDeal_Label7:Label;
        public var _GoldDeal_Label1:Label;
        private var _playerVO:PlayerVO;
        public var _GoldDeal_Image3:Image;
        public var _GoldDeal_Label3:Label;
        public var _GoldDeal_Label4:Label;
        private var _2012866088goldCanvas:Canvas;
        private var _99566514_swf_sell:MovieClipLoaderAsset;
        private var _1312025001_pureGoldRate:int = 0;
        private var _401559445numStepper:NumericStepper;
        private var _1193840764_swf_close:MovieClipLoaderAsset;
        private var _1218643219_swf_close_window:MovieClipLoaderAsset;
        private var _quantity:int = 0;
        var _bindings:Array;
        private var _documentDescriptor_:UIComponentDescriptor;
        var _bindingsByDestination:Object;
        var _bindingsBeginWithWord:Object;
        private var _1388615695_pureGoldAmount:int = 0;
        public static const CLOSE_GOLD_DEAL:String = "closeGoldDeal";
        private static var _watcherSetupUtil:IWatcherSetupUtil;
        public static const SELL_PURE_GOLD:String = "sellPureGold";

        public function GoldDeal()
        {
            _documentDescriptor_ = new UIComponentDescriptor({type:Canvas, propertiesFactory:function () : Object
            {
                return {width:760, height:560, childDescriptors:[new UIComponentDescriptor({type:Canvas, id:"windowLayer"}), new UIComponentDescriptor({type:Canvas, id:"goldCanvas", propertiesFactory:function () : Object
                {
                    return {childDescriptors:[new UIComponentDescriptor({type:Text, id:"_GoldDeal_Text1", propertiesFactory:function () : Object
                    {
                        return {styleName:"DealTitle", x:180, y:145, width:400};
                    }// end function
                    }), new UIComponentDescriptor({type:Text, id:"_GoldDeal_Text2", propertiesFactory:function () : Object
                    {
                        return {styleName:"DealText", x:280, y:190};
                    }// end function
                    }), new UIComponentDescriptor({type:Grid, stylesFactory:function () : void
                    {
                        this.horizontalGap = -1;
                        this.verticalGap = -1;
                        return;
                    }// end function
                    , propertiesFactory:function () : Object
                    {
                        return {x:197, y:230, childDescriptors:[new UIComponentDescriptor({type:GridRow, propertiesFactory:function () : Object
                        {
                            return {childDescriptors:[new UIComponentDescriptor({type:GridItem, stylesFactory:function () : void
                            {
                                this.borderStyle = "outset";
                                this.borderColor = 2829099;
                                this.borderSides = "bottom right";
                                this.backgroundColor = 2115121;
                                return;
                            }// end function
                            , propertiesFactory:function () : Object
                            {
                                return {childDescriptors:[new UIComponentDescriptor({type:Label, id:"_GoldDeal_Label1", stylesFactory:function () : void
                                {
                                    this.fontSize = 14;
                                    this.textIndent = 8;
                                    this.color = 15658734;
                                    return;
                                }// end function
                                , propertiesFactory:function () : Object
                                {
                                    return {width:180};
                                }// end function
                                })]};
                            }// end function
                            }), new UIComponentDescriptor({type:GridItem, stylesFactory:function () : void
                            {
                                this.borderStyle = "outset";
                                this.borderColor = 2829099;
                                this.borderSides = "bottom right";
                                this.backgroundColor = 14803650;
                                return;
                            }// end function
                            , propertiesFactory:function () : Object
                            {
                                return {childDescriptors:[new UIComponentDescriptor({type:Label, id:"_GoldDeal_Label2", stylesFactory:function () : void
                                {
                                    this.fontSize = 14;
                                    this.textAlign = "right";
                                    this.color = 0;
                                    return;
                                }// end function
                                , propertiesFactory:function () : Object
                                {
                                    return {width:180};
                                }// end function
                                })]};
                            }// end function
                            })]};
                        }// end function
                        }), new UIComponentDescriptor({type:GridRow, propertiesFactory:function () : Object
                        {
                            return {childDescriptors:[new UIComponentDescriptor({type:GridItem, stylesFactory:function () : void
                            {
                                this.borderStyle = "outset";
                                this.borderColor = 2829099;
                                this.borderSides = "bottom right";
                                this.backgroundColor = 2115121;
                                return;
                            }// end function
                            , propertiesFactory:function () : Object
                            {
                                return {childDescriptors:[new UIComponentDescriptor({type:Label, id:"_GoldDeal_Label3", stylesFactory:function () : void
                                {
                                    this.fontSize = 14;
                                    this.textIndent = 8;
                                    this.color = 15658734;
                                    return;
                                }// end function
                                , propertiesFactory:function () : Object
                                {
                                    return {width:180};
                                }// end function
                                })]};
                            }// end function
                            }), new UIComponentDescriptor({type:GridItem, stylesFactory:function () : void
                            {
                                this.borderStyle = "outset";
                                this.borderColor = 2829099;
                                this.borderSides = "bottom right";
                                this.backgroundColor = 16119005;
                                return;
                            }// end function
                            , propertiesFactory:function () : Object
                            {
                                return {childDescriptors:[new UIComponentDescriptor({type:Label, id:"_GoldDeal_Label4", stylesFactory:function () : void
                                {
                                    this.fontSize = 14;
                                    this.textAlign = "right";
                                    this.color = 0;
                                    return;
                                }// end function
                                , propertiesFactory:function () : Object
                                {
                                    return {width:180};
                                }// end function
                                })]};
                            }// end function
                            })]};
                        }// end function
                        }), new UIComponentDescriptor({type:GridRow, propertiesFactory:function () : Object
                        {
                            return {childDescriptors:[new UIComponentDescriptor({type:GridItem, stylesFactory:function () : void
                            {
                                this.borderStyle = "outset";
                                this.borderColor = 2829099;
                                this.borderSides = "bottom right";
                                this.backgroundColor = 2115121;
                                return;
                            }// end function
                            , propertiesFactory:function () : Object
                            {
                                return {childDescriptors:[new UIComponentDescriptor({type:Label, id:"_GoldDeal_Label5", stylesFactory:function () : void
                                {
                                    this.fontSize = 14;
                                    this.textIndent = 8;
                                    this.color = 15658734;
                                    return;
                                }// end function
                                , propertiesFactory:function () : Object
                                {
                                    return {width:180};
                                }// end function
                                })]};
                            }// end function
                            }), new UIComponentDescriptor({type:GridItem, stylesFactory:function () : void
                            {
                                this.borderStyle = "outset";
                                this.borderColor = 2829099;
                                this.borderSides = "bottom right";
                                this.backgroundColor = 14803650;
                                return;
                            }// end function
                            , propertiesFactory:function () : Object
                            {
                                return {childDescriptors:[new UIComponentDescriptor({type:NumericStepper, id:"numStepper", events:{change:"__numStepper_change"}, stylesFactory:function () : void
                                {
                                    this.fontSize = 14;
                                    this.textAlign = "right";
                                    this.borderStyle = "solid";
                                    this.borderSides = "";
                                    this.backgroundColor = 14803650;
                                    this.cornerRadius = 0;
                                    return;
                                }// end function
                                , propertiesFactory:function () : Object
                                {
                                    return {width:180, minimum:0, value:0};
                                }// end function
                                })]};
                            }// end function
                            })]};
                        }// end function
                        }), new UIComponentDescriptor({type:GridRow, propertiesFactory:function () : Object
                        {
                            return {childDescriptors:[new UIComponentDescriptor({type:GridItem, stylesFactory:function () : void
                            {
                                this.borderStyle = "outset";
                                this.borderColor = 2829099;
                                this.borderSides = "bottom right";
                                this.backgroundColor = 2115121;
                                return;
                            }// end function
                            , propertiesFactory:function () : Object
                            {
                                return {childDescriptors:[new UIComponentDescriptor({type:Label, id:"_GoldDeal_Label6", stylesFactory:function () : void
                                {
                                    this.fontSize = 14;
                                    this.textIndent = 8;
                                    this.color = 15658734;
                                    return;
                                }// end function
                                , propertiesFactory:function () : Object
                                {
                                    return {width:180};
                                }// end function
                                })]};
                            }// end function
                            }), new UIComponentDescriptor({type:GridItem, stylesFactory:function () : void
                            {
                                this.borderStyle = "outset";
                                this.borderColor = 2829099;
                                this.borderSides = "bottom right";
                                this.backgroundColor = 16119005;
                                return;
                            }// end function
                            , propertiesFactory:function () : Object
                            {
                                return {childDescriptors:[new UIComponentDescriptor({type:Label, id:"_GoldDeal_Label7", stylesFactory:function () : void
                                {
                                    this.fontSize = 14;
                                    this.textAlign = "right";
                                    this.color = 0;
                                    return;
                                }// end function
                                , propertiesFactory:function () : Object
                                {
                                    return {width:180};
                                }// end function
                                })]};
                            }// end function
                            })]};
                        }// end function
                        })]};
                    }// end function
                    }), new UIComponentDescriptor({type:Image, id:"_GoldDeal_Image1", events:{click:"___GoldDeal_Image1_click"}, propertiesFactory:function () : Object
                    {
                        return {y:365};
                    }// end function
                    }), new UIComponentDescriptor({type:Image, id:"_GoldDeal_Image2", events:{click:"___GoldDeal_Image2_click"}, propertiesFactory:function () : Object
                    {
                        return {y:365};
                    }// end function
                    }), new UIComponentDescriptor({type:Image, id:"_GoldDeal_Image3", events:{click:"___GoldDeal_Image3_click"}, propertiesFactory:function () : Object
                    {
                        return {x:555, y:145};
                    }// end function
                    })]};
                }// end function
                })]};
            }// end function
            });
            _99566514_swf_sell = new Viking.EmbedSwfButtonCommon();
            _1193840764_swf_close = new Viking.EmbedSwfButtonCommon();
            _1218643219_swf_close_window = new Viking.EmbedSwfButtonCloseWindow();
            _bindings = [];
            _watchers = [];
            _bindingsByDestination = {};
            _bindingsBeginWithWord = {};
            mx_internal::_document = this;
            this.width = 760;
            this.height = 560;
            this.addEventListener("creationComplete", ___GoldDeal_Canvas1_creationComplete);
            return;
        }// end function

        public function set windowLayer(param1:Canvas) : void
        {
            var _loc_2:* = this._1896677185windowLayer;
            if (_loc_2 !== param1)
            {
                this._1896677185windowLayer = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "windowLayer", _loc_2, param1));
            }
            return;
        }// end function

        public function set numStepper(param1:NumericStepper) : void
        {
            var _loc_2:* = this._401559445numStepper;
            if (_loc_2 !== param1)
            {
                this._401559445numStepper = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "numStepper", _loc_2, param1));
            }
            return;
        }// end function

        private function setup() : void
        {
            MovieClip(Loader(_swf_sell.getChildAt(0)).content).gotoAndPlay("button_sell");
            MovieClip(Loader(_swf_close.getChildAt(0)).content).gotoAndPlay("button_close");
            return;
        }// end function

        private function closeWindow() : void
        {
            dispatchEvent(new Event(CLOSE_GOLD_DEAL));
            numStepper.value = 0;
            PopUpManager.removePopUp(this);
            MovieClip(Loader(_swf_close.getChildAt(0)).content).gotoAndPlay(0);
            MovieClip(Loader(_swf_close.getChildAt(0)).content).gotoAndPlay("button_close");
            MovieClip(Loader(_swf_close_window.getChildAt(0)).content).gotoAndPlay(1);
            return;
        }// end function

        public function get quantity() : int
        {
            return _quantity;
        }// end function

        private function get _pureGoldAmount() : int
        {
            return this._1388615695_pureGoldAmount;
        }// end function

        override public function initialize() : void
        {
            var target:GoldDeal;
            var watcherSetupUtilClass:Object;
            .mx_internal::setDocumentDescriptor(_documentDescriptor_);
            var bindings:* = _GoldDeal_bindingsSetup();
            var watchers:Array;
            target;
            if (_watcherSetupUtil == null)
            {
                watcherSetupUtilClass = getDefinitionByName("_com_kbmj_viking_view_city_GoldDealWatcherSetupUtil");
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

        private function get _pocketMoney() : int
        {
            return this._1436550923_pocketMoney;
        }// end function

        public function ___GoldDeal_Image1_click(event:MouseEvent) : void
        {
            onSell();
            return;
        }// end function

        public function ___GoldDeal_Image3_click(event:MouseEvent) : void
        {
            closeWindow();
            return;
        }// end function

        private function get _sumGold() : int
        {
            return this._499465228_sumGold;
        }// end function

        private function set _pocketMoney(param1:int) : void
        {
            var _loc_2:* = this._1436550923_pocketMoney;
            if (_loc_2 !== param1)
            {
                this._1436550923_pocketMoney = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "_pocketMoney", _loc_2, param1));
            }
            return;
        }// end function

        private function set _pureGoldAmount(param1:int) : void
        {
            var _loc_2:* = this._1388615695_pureGoldAmount;
            if (_loc_2 !== param1)
            {
                this._1388615695_pureGoldAmount = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "_pureGoldAmount", _loc_2, param1));
            }
            return;
        }// end function

        private function get _swf_close_window() : MovieClipLoaderAsset
        {
            return this._1218643219_swf_close_window;
        }// end function

        private function set _swf_sell(param1:MovieClipLoaderAsset) : void
        {
            var _loc_2:* = this._99566514_swf_sell;
            if (_loc_2 !== param1)
            {
                this._99566514_swf_sell = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "_swf_sell", _loc_2, param1));
            }
            return;
        }// end function

        public function __numStepper_change(event:NumericStepperEvent) : void
        {
            calc_sumGold();
            return;
        }// end function

        private function set _sumGold(param1:int) : void
        {
            var _loc_2:* = this._499465228_sumGold;
            if (_loc_2 !== param1)
            {
                this._499465228_sumGold = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "_sumGold", _loc_2, param1));
            }
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

        private function set _pureGoldRate(param1:int) : void
        {
            var _loc_2:* = this._1312025001_pureGoldRate;
            if (_loc_2 !== param1)
            {
                this._1312025001_pureGoldRate = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "_pureGoldRate", _loc_2, param1));
            }
            return;
        }// end function

        public function set goldCanvas(param1:Canvas) : void
        {
            var _loc_2:* = this._2012866088goldCanvas;
            if (_loc_2 !== param1)
            {
                this._2012866088goldCanvas = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "goldCanvas", _loc_2, param1));
            }
            return;
        }// end function

        public function ___GoldDeal_Canvas1_creationComplete(event:FlexEvent) : void
        {
            setup();
            return;
        }// end function

        public function setData(param1:PlayerVO, param2:CityVO, param3:int) : void
        {
            _playerVO = param1;
            _pocketMoney = _playerVO.gold;
            _pureGoldRate = param2.goldPrice;
            _pureGoldAmount = param3;
            if (numStepper)
            {
                numStepper.value = 0;
            }
            _sumGold = 0;
            return;
        }// end function

        public function get windowLayer() : Canvas
        {
            return this._1896677185windowLayer;
        }// end function

        private function _GoldDeal_bindingsSetup() : Array
        {
            var binding:Binding;
            var result:Array;
            binding = new Binding(this, function () : String
            {
                var _loc_1:* = Utils.i18n("goldDealGoldDeal");
                var _loc_2:* = _loc_1 == undefined ? (null) : (String(_loc_1));
                return _loc_2;
            }// end function
            , function (param1:String) : void
            {
                _GoldDeal_Text1.text = param1;
                return;
            }// end function
            , "_GoldDeal_Text1.text");
            result[0] = binding;
            binding = new Binding(this, function () : String
            {
                var _loc_1:* = Utils.i18n("goldDealDealPrice", _pureGoldRate);
                var _loc_2:* = _loc_1 == undefined ? (null) : (String(_loc_1));
                return _loc_2;
            }// end function
            , function (param1:String) : void
            {
                _GoldDeal_Text2.text = param1;
                return;
            }// end function
            , "_GoldDeal_Text2.text");
            result[1] = binding;
            binding = new Binding(this, function () : String
            {
                var _loc_1:* = Utils.i18n("generalPossessionMoney");
                var _loc_2:* = _loc_1 == undefined ? (null) : (String(_loc_1));
                return _loc_2;
            }// end function
            , function (param1:String) : void
            {
                _GoldDeal_Label1.text = param1;
                return;
            }// end function
            , "_GoldDeal_Label1.text");
            result[2] = binding;
            binding = new Binding(this, function () : String
            {
                var _loc_1:* = _pocketMoney;
                var _loc_2:* = _loc_1 == undefined ? (null) : (String(_loc_1));
                return _loc_2;
            }// end function
            , function (param1:String) : void
            {
                _GoldDeal_Label2.text = param1;
                return;
            }// end function
            , "_GoldDeal_Label2.text");
            result[3] = binding;
            binding = new Binding(this, function () : String
            {
                var _loc_1:* = Utils.i18n("goldDealGoldPossession");
                var _loc_2:* = _loc_1 == undefined ? (null) : (String(_loc_1));
                return _loc_2;
            }// end function
            , function (param1:String) : void
            {
                _GoldDeal_Label3.text = param1;
                return;
            }// end function
            , "_GoldDeal_Label3.text");
            result[4] = binding;
            binding = new Binding(this, function () : String
            {
                var _loc_1:* = _pureGoldAmount;
                var _loc_2:* = _loc_1 == undefined ? (null) : (String(_loc_1));
                return _loc_2;
            }// end function
            , function (param1:String) : void
            {
                _GoldDeal_Label4.text = param1;
                return;
            }// end function
            , "_GoldDeal_Label4.text");
            result[5] = binding;
            binding = new Binding(this, function () : String
            {
                var _loc_1:* = Utils.i18n("goldDealBuyGoldCount");
                var _loc_2:* = _loc_1 == undefined ? (null) : (String(_loc_1));
                return _loc_2;
            }// end function
            , function (param1:String) : void
            {
                _GoldDeal_Label5.text = param1;
                return;
            }// end function
            , "_GoldDeal_Label5.text");
            result[6] = binding;
            binding = new Binding(this, function () : Number
            {
                return _pureGoldAmount;
            }// end function
            , function (param1:Number) : void
            {
                numStepper.maximum = param1;
                return;
            }// end function
            , "numStepper.maximum");
            result[7] = binding;
            binding = new Binding(this, function () : String
            {
                var _loc_1:* = Utils.i18n("goldDealAddMoneyCount");
                var _loc_2:* = _loc_1 == undefined ? (null) : (String(_loc_1));
                return _loc_2;
            }// end function
            , function (param1:String) : void
            {
                _GoldDeal_Label6.text = param1;
                return;
            }// end function
            , "_GoldDeal_Label6.text");
            result[8] = binding;
            binding = new Binding(this, function () : String
            {
                var _loc_1:* = _sumGold;
                var _loc_2:* = _loc_1 == undefined ? (null) : (String(_loc_1));
                return _loc_2;
            }// end function
            , function (param1:String) : void
            {
                _GoldDeal_Label7.text = param1;
                return;
            }// end function
            , "_GoldDeal_Label7.text");
            result[9] = binding;
            binding = new Binding(this, function () : Number
            {
                return 325 - 65;
            }// end function
            , function (param1:Number) : void
            {
                _GoldDeal_Image1.x = param1;
                return;
            }// end function
            , "_GoldDeal_Image1.x");
            result[10] = binding;
            binding = new Binding(this, function () : Object
            {
                return _swf_sell;
            }// end function
            , function (param1:Object) : void
            {
                _GoldDeal_Image1.source = param1;
                return;
            }// end function
            , "_GoldDeal_Image1.source");
            result[11] = binding;
            binding = new Binding(this, function () : Number
            {
                return 325 + 65;
            }// end function
            , function (param1:Number) : void
            {
                _GoldDeal_Image2.x = param1;
                return;
            }// end function
            , "_GoldDeal_Image2.x");
            result[12] = binding;
            binding = new Binding(this, function () : Object
            {
                return _swf_close;
            }// end function
            , function (param1:Object) : void
            {
                _GoldDeal_Image2.source = param1;
                return;
            }// end function
            , "_GoldDeal_Image2.source");
            result[13] = binding;
            binding = new Binding(this, function () : Object
            {
                return _swf_close_window;
            }// end function
            , function (param1:Object) : void
            {
                _GoldDeal_Image3.source = param1;
                return;
            }// end function
            , "_GoldDeal_Image3.source");
            result[14] = binding;
            return result;
        }// end function

        private function onSell() : void
        {
            if (numStepper.value)
            {
                _quantity = numStepper.value;
                dispatchEvent(new Event(SELL_PURE_GOLD));
                MovieClip(Loader(_swf_sell.getChildAt(0)).content).gotoAndPlay(0);
                MovieClip(Loader(_swf_sell.getChildAt(0)).content).gotoAndPlay("button_sell");
            }
            return;
        }// end function

        private function get _pureGoldRate() : int
        {
            return this._1312025001_pureGoldRate;
        }// end function

        public function get goldCanvas() : Canvas
        {
            return this._2012866088goldCanvas;
        }// end function

        private function calc_sumGold() : void
        {
            _sumGold = numStepper.value * _pureGoldRate;
            return;
        }// end function

        public function ___GoldDeal_Image2_click(event:MouseEvent) : void
        {
            closeWindow();
            return;
        }// end function

        public function get numStepper() : NumericStepper
        {
            return this._401559445numStepper;
        }// end function

        private function _GoldDeal_bindingExprs() : void
        {
            var _loc_1:* = undefined;
            _loc_1 = Utils.i18n("goldDealGoldDeal");
            _loc_1 = Utils.i18n("goldDealDealPrice", _pureGoldRate);
            _loc_1 = Utils.i18n("generalPossessionMoney");
            _loc_1 = _pocketMoney;
            _loc_1 = Utils.i18n("goldDealGoldPossession");
            _loc_1 = _pureGoldAmount;
            _loc_1 = Utils.i18n("goldDealBuyGoldCount");
            _loc_1 = _pureGoldAmount;
            _loc_1 = Utils.i18n("goldDealAddMoneyCount");
            _loc_1 = _sumGold;
            _loc_1 = 325 - 65;
            _loc_1 = _swf_sell;
            _loc_1 = 325 + 65;
            _loc_1 = _swf_close;
            _loc_1 = _swf_close_window;
            return;
        }// end function

        private function get _swf_sell() : MovieClipLoaderAsset
        {
            return this._99566514_swf_sell;
        }// end function

        public function get pureGoldRate() : int
        {
            return _pureGoldRate;
        }// end function

        private function get _swf_close() : MovieClipLoaderAsset
        {
            return this._1193840764_swf_close;
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

        public static function set watcherSetupUtil(param1:IWatcherSetupUtil) : void
        {
            _watcherSetupUtil = param1;
            return;
        }// end function

    }
}
