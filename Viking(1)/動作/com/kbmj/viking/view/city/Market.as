package com.kbmj.viking.view.city
{
    import com.kbmj.viking.lib.*;
    import com.kbmj.viking.view.*;
    import com.kbmj.viking.vo.*;
    import flash.events.*;
    import flash.utils.*;
    import mx.binding.*;
    import mx.containers.*;
    import mx.controls.*;
    import mx.core.*;
    import mx.events.*;

    public class Market extends CanvasWithPopUp implements IBindingClient
    {
        private var haveLeyLine9:Boolean = false;
        private var _embed_mxml__images_city_onmyo_market_jpg_1365704105:Class;
        private var _1471415882_menu4:Class;
        private var _marketConfirmWindow:MarketConfirmWindow;
        private var _sellExhibitWindow:SellExhibitWindow;
        private var _sellTradeGoodsWindow:SellTradeGoodsWindow;
        private var _3016401base:Image;
        private var _homeMaterialData:Object;
        var _bindingsByDestination:Object;
        public var _Market_Button9:Button;
        private var _1471415883_menu3:Class;
        private var sellResource:ResourceVO;
        private var _maxMaterialCount:int;
        var _watchers:Array;
        private var _1471415884_menu2:Class;
        private var _604321667menuBar1:Image;
        private var _604321666menuBar2:Image;
        private var _buyTradeGoodsWindow:BuyTradeGoodsWindow;
        private var _604321664menuBar4:Image;
        private var haveLeyLine12:Boolean = false;
        private var _buyTradeGoodsSearchWindow:BuyTradeGoodsSearchWindow;
        var _bindingsBeginWithWord:Object;
        var _bindings:Array;
        private var _1471415885_menu1:Class;
        private var _documentDescriptor_:UIComponentDescriptor;
        private var _homeResource:Object;
        public static const EXHIBIT_CANCEL:String = NAME + "/exhibitCancel";
        public static const GOODS_BUY:String = "goodsBuy";
        public static const INSUFFICIENCY_MONEY:String = "insufficiencyMoney";
        private static var _watcherSetupUtil:IWatcherSetupUtil;
        public static const NAME:String = "Market";
        public static const GOODS_SELL:String = "goodsSell";
        public static const SEARCH_GOODS:String = "searchGoods";

        public function Market()
        {
            _documentDescriptor_ = new UIComponentDescriptor({type:CanvasWithPopUp, propertiesFactory:function () : Object
            {
                return {width:760, height:560, childDescriptors:[new UIComponentDescriptor({type:Box, propertiesFactory:function () : Object
                {
                    return {childDescriptors:[new UIComponentDescriptor({type:Canvas, propertiesFactory:function () : Object
                    {
                        return {label:"Base", width:760, height:560, childDescriptors:[new UIComponentDescriptor({type:Image, id:"base", propertiesFactory:function () : Object
                        {
                            return {source:_embed_mxml__images_city_onmyo_market_jpg_1365704105};
                        }// end function
                        }), new UIComponentDescriptor({type:Image, id:"menuBar4", propertiesFactory:function () : Object
                        {
                            return {x:599, y:66};
                        }// end function
                        }), new UIComponentDescriptor({type:Image, id:"menuBar2", propertiesFactory:function () : Object
                        {
                            return {x:599, y:211};
                        }// end function
                        }), new UIComponentDescriptor({type:Image, id:"menuBar1", propertiesFactory:function () : Object
                        {
                            return {x:599, y:321};
                        }// end function
                        }), new UIComponentDescriptor({type:VBox, stylesFactory:function () : void
                        {
                            this.right = "30";
                            return;
                        }// end function
                        , propertiesFactory:function () : Object
                        {
                            return {y:84, childDescriptors:[new UIComponentDescriptor({type:Button, events:{click:"___Market_Button1_click"}, propertiesFactory:function () : Object
                            {
                                return {label:"", styleName:"SilverButton", buttonMode:true};
                            }// end function
                            }), new UIComponentDescriptor({type:Button, events:{click:"___Market_Button2_click"}, propertiesFactory:function () : Object
                            {
                                return {label:"", styleName:"FoodButton", buttonMode:true};
                            }// end function
                            }), new UIComponentDescriptor({type:Button, events:{click:"___Market_Button3_click"}, propertiesFactory:function () : Object
                            {
                                return {label:"", styleName:"TradeGoodsBuyButton", buttonMode:true};
                            }// end function
                            }), new UIComponentDescriptor({type:Button, events:{click:"___Market_Button4_click"}, propertiesFactory:function () : Object
                            {
                                return {label:"", styleName:"TradeGoodsSellButton", buttonMode:true};
                            }// end function
                            })]};
                        }// end function
                        }), new UIComponentDescriptor({type:VBox, stylesFactory:function () : void
                        {
                            this.right = "30";
                            return;
                        }// end function
                        , propertiesFactory:function () : Object
                        {
                            return {y:227, childDescriptors:[new UIComponentDescriptor({type:Button, events:{click:"___Market_Button5_click"}, propertiesFactory:function () : Object
                            {
                                return {label:"", styleName:"BarButton", buttonMode:true};
                            }// end function
                            }), new UIComponentDescriptor({type:Button, events:{click:"___Market_Button6_click"}, propertiesFactory:function () : Object
                            {
                                return {label:"", styleName:"TempleButton", buttonMode:true};
                            }// end function
                            }), new UIComponentDescriptor({type:Button, events:{click:"___Market_Button7_click"}, propertiesFactory:function () : Object
                            {
                                return {label:"", styleName:"ColosseumButton", buttonMode:true};
                            }// end function
                            })]};
                        }// end function
                        }), new UIComponentDescriptor({type:Button, events:{click:"___Market_Button8_click"}, stylesFactory:function () : void
                        {
                            this.right = "30";
                            return;
                        }// end function
                        , propertiesFactory:function () : Object
                        {
                            return {label:"", styleName:"Home", y:310, buttonMode:true};
                        }// end function
                        }), new UIComponentDescriptor({type:Button, id:"_Market_Button9", events:{click:"___Market_Button9_click"}, stylesFactory:function () : void
                        {
                            this.right = "60";
                            return;
                        }// end function
                        , propertiesFactory:function () : Object
                        {
                            return {y:350, buttonMode:true, mouseChildren:false};
                        }// end function
                        })]};
                    }// end function
                    })]};
                }// end function
                })]};
            }// end function
            });
            _buyTradeGoodsWindow = new BuyTradeGoodsWindow();
            _buyTradeGoodsSearchWindow = new BuyTradeGoodsSearchWindow();
            _sellTradeGoodsWindow = new SellTradeGoodsWindow();
            _sellExhibitWindow = new SellExhibitWindow();
            _marketConfirmWindow = new MarketConfirmWindow();
            _embed_mxml__images_city_onmyo_market_jpg_1365704105 = Market__embed_mxml__images_city_onmyo_market_jpg_1365704105;
            _bindings = [];
            _watchers = [];
            _bindingsByDestination = {};
            _bindingsBeginWithWord = {};
            mx_internal::_document = this;
            this.width = 760;
            this.height = 560;
            this.addEventListener("creationComplete", ___Market_CanvasWithPopUp1_creationComplete);
            return;
        }// end function

        public function ___Market_Button2_click(event:MouseEvent) : void
        {
            sendEvent(Viking.CITY_ACTION_FOOD_DEAL);
            return;
        }// end function

        public function set menuBar4(param1:Image) : void
        {
            var _loc_2:* = this._604321664menuBar4;
            if (_loc_2 !== param1)
            {
                this._604321664menuBar4 = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "menuBar4", _loc_2, param1));
            }
            return;
        }// end function

        public function ___Market_Button6_click(event:MouseEvent) : void
        {
            sendEvent(Viking.CITY_ACTION_SHOW_TEMPLE);
            return;
        }// end function

        private function init() : void
        {
            _sellExhibitWindow.addEventListener(SellExhibitWindow.GOODS_EXHIBIT, handleEvent);
            _sellExhibitWindow.addEventListener(SellExhibitWindow.EXHIBIT_LIMIT, handleEvent);
            _sellExhibitWindow.addEventListener(SellExhibitWindow.EXHIBIT_CANCEL, handleEvent);
            _sellTradeGoodsWindow.addEventListener(SellTradeGoodsWindow.GOODS_SELL, handleEvent);
            _marketConfirmWindow.addEventListener(MarketConfirmWindow.EXHIBIT_CANCEL, handleEvent);
            _marketConfirmWindow.addEventListener(MarketConfirmWindow.BUY_TRADE_GOODS, handleEvent);
            _buyTradeGoodsSearchWindow.addEventListener(BuyTradeGoodsSearchWindow.SEARCH_GOODS, handleEvent);
            _buyTradeGoodsWindow.addEventListener(BuyTradeGoodsWindow.BUY_TRADE_GOODS, handleEvent);
            _buyTradeGoodsWindow.addEventListener(BuyTradeGoodsWindow.INSUFFICIENCY_MONEY, handleEvent);
            return;
        }// end function

        public function get sellPrice() : int
        {
            return _sellTradeGoodsWindow.sellPrice;
        }// end function

        public function set homeResource(param1:Object) : void
        {
            _homeResource = param1;
            return;
        }// end function

        public function get sellData() : Object
        {
            return _sellTradeGoodsWindow.sellData;
        }// end function

        public function get sellMaterialQuantity() : int
        {
            return _sellTradeGoodsWindow.sellMaterialQuantity;
        }// end function

        public function ___Market_Button3_click(event:MouseEvent) : void
        {
            sendEvent(Viking.CITY_ACTION_SHOW_BUY_GOODS);
            return;
        }// end function

        public function set maxMaterialCount(param1:int) : void
        {
            _maxMaterialCount = param1;
            return;
        }// end function

        public function ___Market_Button7_click(event:MouseEvent) : void
        {
            sendEvent(Viking.ENTER_LOBBY);
            return;
        }// end function

        public function showBuyTradeGoodsWindow(param1:Array, param2:Object, param3:Boolean) : void
        {
            haveLeyLine9 = param3;
            if (param1[0])
            {
                _buyTradeGoodsWindow.setView(_buyTradeGoodsSearchWindow.viewStackIndex);
                _buyTradeGoodsWindow.haveMoney = _buyTradeGoodsSearchWindow.gold;
                _buyTradeGoodsWindow.haveLeyLine = param3;
                _buyTradeGoodsWindow.buyGoods = param1;
                _buyTradeGoodsWindow.pages = param2;
                countGoodsCount(param1[0].masterVO.masterType);
                this.popupWindow(_buyTradeGoodsWindow);
            }
            else
            {
                _marketConfirmWindow.init("alreadyBuy");
                _marketConfirmWindow.leyLine = param3;
                this.popupWindow(_marketConfirmWindow);
                _buyTradeGoodsSearchWindow.closeWindow();
            }
            return;
        }// end function

        public function get buyTradeGoodsSearchWindow() : BuyTradeGoodsSearchWindow
        {
            return _buyTradeGoodsSearchWindow;
        }// end function

        private function handleEvent(event:Event) : void
        {
            switch(event.type)
            {
                case SellExhibitWindow.GOODS_EXHIBIT:
                {
                    _sellTradeGoodsWindow.sellableResource = sellResource;
                    _sellTradeGoodsWindow.clearValue();
                    _sellTradeGoodsWindow.gold = _sellExhibitWindow.gold;
                    this.popupWindow(_sellTradeGoodsWindow);
                    break;
                }
                case SellExhibitWindow.EXHIBIT_LIMIT:
                {
                    _marketConfirmWindow.init("errExhibit");
                    _marketConfirmWindow.leyLine = haveLeyLine12;
                    this.popupWindow(_marketConfirmWindow);
                    break;
                }
                case SellExhibitWindow.EXHIBIT_CANCEL:
                {
                    materialQuantityJudge(_sellExhibitWindow.cancelData);
                    _marketConfirmWindow.init("exhibitCancel");
                    _marketConfirmWindow.commodityData = _sellExhibitWindow.cancelData;
                    _marketConfirmWindow.leyLine = haveLeyLine12;
                    this.popupWindow(_marketConfirmWindow);
                    break;
                }
                case MarketConfirmWindow.EXHIBIT_CANCEL:
                {
                    materialQuantityJudge(_sellExhibitWindow.cancelData);
                    dispatchEvent(new Event(EXHIBIT_CANCEL));
                    break;
                }
                case MarketConfirmWindow.BUY_TRADE_GOODS:
                {
                    _buyTradeGoodsWindow.onCloseWindow();
                    dispatchEvent(new Event(GOODS_BUY));
                    break;
                }
                case SellTradeGoodsWindow.GOODS_SELL:
                {
                    dispatchEvent(new Event(GOODS_SELL));
                    break;
                }
                case BuyTradeGoodsSearchWindow.SEARCH_GOODS:
                {
                    dispatchEvent(new Event(SEARCH_GOODS));
                    break;
                }
                case BuyTradeGoodsWindow.BUY_TRADE_GOODS:
                {
                    materialQuantityJudge(buyTradeGoodsWindow.buyData);
                    _marketConfirmWindow.init("buyTradeGoodsConfirm");
                    _marketConfirmWindow.buyData = buyTradeGoodsWindow.buyData;
                    _marketConfirmWindow.leyLine = haveLeyLine9;
                    this.popupWindow(_marketConfirmWindow);
                    break;
                }
                case BuyTradeGoodsWindow.INSUFFICIENCY_MONEY:
                {
                    dispatchEvent(new Event(INSUFFICIENCY_MONEY));
                    break;
                }
                default:
                {
                    break;
                }
            }
            return;
        }// end function

        public function get cancelData() : Object
        {
            return _sellExhibitWindow.cancelData;
        }// end function

        public function get sellTradeGoodsWindow() : SellTradeGoodsWindow
        {
            return _sellTradeGoodsWindow;
        }// end function

        public function get buyData() : Object
        {
            return _buyTradeGoodsWindow.buyData;
        }// end function

        public function set menu1(param1:Class) : void
        {
            _menu1 = param1;
            return;
        }// end function

        private function materialQuantityJudge(param1:Object) : void
        {
            if (param1.instanceType != "Material")
            {
                _marketConfirmWindow.materialMax = false;
                return;
            }
            var _loc_2:* = _homeMaterialData[param1.masterId];
            if (!_loc_2)
            {
                return;
            }
            var _loc_3:* = _loc_2.quantity;
            if (param1.quantity + _loc_3 > _maxMaterialCount)
            {
                _marketConfirmWindow.materialDumpCount = param1.quantity + _loc_3 - _maxMaterialCount;
                _marketConfirmWindow.materialMax = true;
            }
            else
            {
                _marketConfirmWindow.materialMax = false;
            }
            return;
        }// end function

        public function set menu2(param1:Class) : void
        {
            _menu2 = param1;
            return;
        }// end function

        public function set menu3(param1:Class) : void
        {
            _menu3 = param1;
            return;
        }// end function

        public function set menu4(param1:Class) : void
        {
            _menu4 = param1;
            return;
        }// end function

        private function set _menu2(param1:Class) : void
        {
            var _loc_2:* = this._1471415884_menu2;
            if (_loc_2 !== param1)
            {
                this._1471415884_menu2 = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "_menu2", _loc_2, param1));
            }
            return;
        }// end function

        public function set commoditySummary(param1:Object) : void
        {
            _buyTradeGoodsSearchWindow.commoditySummary = param1;
            return;
        }// end function

        private function set _menu4(param1:Class) : void
        {
            var _loc_2:* = this._1471415882_menu4;
            if (_loc_2 !== param1)
            {
                this._1471415882_menu4 = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "_menu4", _loc_2, param1));
            }
            return;
        }// end function

        private function set _menu1(param1:Class) : void
        {
            var _loc_2:* = this._1471415885_menu1;
            if (_loc_2 !== param1)
            {
                this._1471415885_menu1 = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "_menu1", _loc_2, param1));
            }
            return;
        }// end function

        public function ___Market_CanvasWithPopUp1_creationComplete(event:FlexEvent) : void
        {
            init();
            return;
        }// end function

        private function set _menu3(param1:Class) : void
        {
            var _loc_2:* = this._1471415883_menu3;
            if (_loc_2 !== param1)
            {
                this._1471415883_menu3 = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "_menu3", _loc_2, param1));
            }
            return;
        }// end function

        public function get menuBar1() : Image
        {
            return this._604321667menuBar1;
        }// end function

        public function get menuBar2() : Image
        {
            return this._604321666menuBar2;
        }// end function

        public function ___Market_Button4_click(event:MouseEvent) : void
        {
            sendEvent(Viking.CITY_ACTION_SHOW_SELL_GOODS);
            return;
        }// end function

        public function get buyTradeGoodsWindow() : BuyTradeGoodsWindow
        {
            return _buyTradeGoodsWindow;
        }// end function

        public function resetSellData(param1:ResourceVO, param2:Array, param3:Boolean) : void
        {
            _sellExhibitWindow.init(param2, param3);
            sellResource = param1;
            return;
        }// end function

        public function get menuBar4() : Image
        {
            return this._604321664menuBar4;
        }// end function

        override public function initialize() : void
        {
            var target:Market;
            var watcherSetupUtilClass:Object;
            .mx_internal::setDocumentDescriptor(_documentDescriptor_);
            var bindings:* = _Market_bindingsSetup();
            var watchers:Array;
            target;
            if (_watcherSetupUtil == null)
            {
                watcherSetupUtilClass = getDefinitionByName("_com_kbmj_viking_view_city_MarketWatcherSetupUtil");
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

        public function ___Market_Button8_click(event:MouseEvent) : void
        {
            sendEvent(Viking.CITY_ACTION_BACK_HOME);
            return;
        }// end function

        public function set base(param1:Image) : void
        {
            var _loc_2:* = this._3016401base;
            if (_loc_2 !== param1)
            {
                this._3016401base = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "base", _loc_2, param1));
            }
            return;
        }// end function

        public function refreshBuyTradeGoodsWindow(param1:Array, param2:Object) : void
        {
            _buyTradeGoodsWindow.buyGoods = param1;
            _buyTradeGoodsWindow.pages = param2;
            return;
        }// end function

        private function get _menu1() : Class
        {
            return this._1471415885_menu1;
        }// end function

        private function get _menu2() : Class
        {
            return this._1471415884_menu2;
        }// end function

        public function get searchCode() : int
        {
            return _buyTradeGoodsSearchWindow.buyCode;
        }// end function

        private function get _menu4() : Class
        {
            return this._1471415882_menu4;
        }// end function

        public function get sellExhibitWindow() : SellExhibitWindow
        {
            return _sellExhibitWindow;
        }// end function

        private function get _menu3() : Class
        {
            return this._1471415883_menu3;
        }// end function

        public function ___Market_Button5_click(event:MouseEvent) : void
        {
            sendEvent(Viking.CITY_ACTION_SHOW_BAR);
            return;
        }// end function

        private function _Market_bindingsSetup() : Array
        {
            var binding:Binding;
            var result:Array;
            binding = new Binding(this, function () : Object
            {
                return _menu4;
            }// end function
            , function (param1:Object) : void
            {
                menuBar4.source = param1;
                return;
            }// end function
            , "menuBar4.source");
            result[0] = binding;
            binding = new Binding(this, function () : Object
            {
                return _menu3;
            }// end function
            , function (param1:Object) : void
            {
                menuBar2.source = param1;
                return;
            }// end function
            , "menuBar2.source");
            result[1] = binding;
            binding = new Binding(this, function () : Object
            {
                return _menu1;
            }// end function
            , function (param1:Object) : void
            {
                menuBar1.source = param1;
                return;
            }// end function
            , "menuBar1.source");
            result[2] = binding;
            binding = new Binding(this, function () : String
            {
                var _loc_1:* = Utils.i18n("marketGoldDeal");
                var _loc_2:* = _loc_1 == undefined ? (null) : (String(_loc_1));
                return _loc_2;
            }// end function
            , function (param1:String) : void
            {
                _Market_Button9.label = param1;
                return;
            }// end function
            , "_Market_Button9.label");
            result[3] = binding;
            return result;
        }// end function

        private function countGoodsCount(param1:String) : void
        {
            var _loc_3:Object = null;
            var _loc_4:Object = null;
            var _loc_5:Object = null;
            var _loc_6:Object = null;
            var _loc_2:int = 0;
            switch(param1)
            {
                case "WeaponMaster":
                {
                    for each (_loc_3 in _homeResource.weapons)
                    {
                        
                        if (_loc_3.masterVO.masterId == _buyTradeGoodsWindow.buyGoods[0].masterVO.masterId)
                        {
                            _loc_2++;
                        }
                    }
                    break;
                }
                case "ArmorMaster":
                {
                    for each (_loc_4 in _homeResource.armors)
                    {
                        
                        if (_loc_4.masterVO.masterId == _buyTradeGoodsWindow.buyGoods[0].masterVO.masterId)
                        {
                            _loc_2++;
                        }
                    }
                    break;
                }
                case "AccessoryMaster":
                {
                    for each (_loc_5 in _homeResource.accessories)
                    {
                        
                        if (_loc_5.masterVO.masterId == _buyTradeGoodsWindow.buyGoods[0].masterVO.masterId)
                        {
                            _loc_2++;
                        }
                    }
                    break;
                }
                case "ItemMaster":
                {
                    for each (_loc_6 in _homeResource.items)
                    {
                        
                        if (_loc_6.masterVO.masterId == _buyTradeGoodsWindow.buyGoods[0].masterVO.masterId)
                        {
                            _loc_2++;
                        }
                    }
                    break;
                }
                case "MaterialMaster":
                {
                    _loc_2 = _homeMaterialData[_buyTradeGoodsWindow.buyGoods[0].masterVO.masterId].quantity;
                    break;
                }
                default:
                {
                    break;
                }
            }
            _buyTradeGoodsWindow.goodsHaveCount = _loc_2;
            return;
        }// end function

        public function showBuyTradeGoodsSearchWindow(param1:int) : void
        {
            _buyTradeGoodsSearchWindow.gold = param1;
            _buyTradeGoodsSearchWindow.init();
            this.popupWindow(_buyTradeGoodsSearchWindow);
            return;
        }// end function

        public function ___Market_Button9_click(event:MouseEvent) : void
        {
            sendEvent(Viking.CITY_ACTION_GOLD_DEAL);
            return;
        }// end function

        public function ___Market_Button1_click(event:MouseEvent) : void
        {
            sendEvent(Viking.CITY_ACTION_SILVER_DEAL);
            return;
        }// end function

        private function _Market_bindingExprs() : void
        {
            var _loc_1:* = undefined;
            _loc_1 = _menu4;
            _loc_1 = _menu3;
            _loc_1 = _menu1;
            _loc_1 = Utils.i18n("marketGoldDeal");
            return;
        }// end function

        public function set homeMaterialData(param1:Object) : void
        {
            _homeMaterialData = param1;
            return;
        }// end function

        public function get base() : Image
        {
            return this._3016401base;
        }// end function

        public function showSellTradeGoodsWindow(param1:ResourceVO, param2:int, param3:Array, param4:Boolean) : void
        {
            haveLeyLine12 = param4;
            sellResource = param1;
            _sellExhibitWindow.init(param3, param4);
            _sellExhibitWindow.gold = param2;
            this.popupWindow(_sellExhibitWindow);
            return;
        }// end function

        public function set menuBar1(param1:Image) : void
        {
            var _loc_2:* = this._604321667menuBar1;
            if (_loc_2 !== param1)
            {
                this._604321667menuBar1 = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "menuBar1", _loc_2, param1));
            }
            return;
        }// end function

        public function set menuBar2(param1:Image) : void
        {
            var _loc_2:* = this._604321666menuBar2;
            if (_loc_2 !== param1)
            {
                this._604321666menuBar2 = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "menuBar2", _loc_2, param1));
            }
            return;
        }// end function

        public static function set watcherSetupUtil(param1:IWatcherSetupUtil) : void
        {
            Market._watcherSetupUtil = param1;
            return;
        }// end function

    }
}
