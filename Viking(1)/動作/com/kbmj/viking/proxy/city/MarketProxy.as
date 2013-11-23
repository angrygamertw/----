package com.kbmj.viking.proxy.city
{
    import com.adobe.serialization.json.*;
    import com.kbmj.viking.proxy.*;
    import com.kbmj.viking.view.city.*;
    import com.kbmj.viking.vo.city.*;

    public class MarketProxy extends LoaderProxy
    {
        private var _myCommodities:Array;
        private var _searchCommodities:Array;
        private var _commoditySummary:Object;
        private var _masterDataSeted:Boolean;
        public static const EXHIBIT_CANCEL:String = NAME + "/exhibitCancel";
        public static const SELL_SILVER_ERROR:String = "sellSilverError";
        public static const NAME:String = "MarketProxy";
        public static const SELL_TRADE_GOODS:String = NAME + "/sellTradeGoods";
        public static const BUY_FOOD_ERROR:String = "buyFoodError";
        public static const BUY_PAYMENT_COMMODITY_ERROR:String = "buyPaymentCommodityError";
        public static const BUY_FOOD:String = "buyFood";
        public static const BUY_PAYMENT_COMMODITY:String = "buyPaymentCommodity";
        public static const BUY_GOODS:String = NAME + "/buyGoods";
        public static const BUY_TRADE_GOODS:String = NAME + "/buyTradeGoods";
        public static const SELL_GOLD_ERROR:String = "sellGoldError";
        public static const SELL_GOLD:String = "sellGold";
        public static const COMMODITY_SUMMARIES_LOADED:String = NAME + "/commoditySummariesLoaded";
        public static const TRADE_GOODS_ERROR:String = NAME + "/sellTradeGoodsError";
        public static const MY_COMMODITY_LOAD_COMPLETE:String = NAME + "/myCommodityLoadComplete";
        public static const GET_TRADE_GOODS:String = "MarketProxy/getTradeGoods";
        public static const SELL_SILVER:String = "sellSilver";

        public function MarketProxy()
        {
            super(NAME);
            _masterDataSeted = false;
            return;
        }// end function

        private function getSellParameter(param1:int, param2:int, param3:int) : Object
        {
            return {instance_id:param1, merchandise_id:param2, quantity:param3};
        }// end function

        public function get searchCommodities() : Array
        {
            return _searchCommodities;
        }// end function

        public function buy(param1:Array) : void
        {
            var merchandises:* = param1;
            trace(JSON.encode({merchandises:merchandises}));
            var json:* = JSON.encode({merchandises:merchandises});
            loadWithJson("/api/markets/buy", BUY_GOODS, TRADE_GOODS_ERROR, function (param1:Object) : Object
            {
                return param1;
            }// end function
            , json);
            return;
        }// end function

        public function buyFood(param1:int) : void
        {
            var quantity:* = param1;
            var json:* = JSON.encode({quantity:quantity});
            loadWithJson("/api/markets/buy_food", BUY_FOOD, BUY_FOOD_ERROR, function (param1:Object) : Object
            {
                return param1;
            }// end function
            , json);
            return;
        }// end function

        public function get myCommodities() : Array
        {
            return _myCommodities;
        }// end function

        public function getTradeGoods(param1:int, param2:int, param3:String = "MarketProxy/getTradeGoods") : void
        {
            var page:* = param1;
            var code:* = param2;
            var eventName:* = param3;
            var json:* = JSON.encode({page:page, code:code});
            loadWithJson("/api/markets/commodities", eventName, TRADE_GOODS_ERROR, function (param1:Object) : Object
            {
                var _loc_2:Object = null;
                var _loc_3:CommodityVO = null;
                _searchCommodities = new Array();
                for each (_loc_2 in param1.commodities)
                {
                    
                    _loc_3 = commodityFactory(_loc_2, true);
                    _searchCommodities.push(_loc_3);
                }
                return param1;
            }// end function
            , json);
            return;
        }// end function

        public function sellGold(param1:int) : void
        {
            var quantity:* = param1;
            var json:* = JSON.encode({quantity:quantity});
            loadWithJson("/api/markets/sell_gold", SELL_GOLD, SELL_GOLD_ERROR, function (param1:Object) : Object
            {
                return param1;
            }// end function
            , json);
            return;
        }// end function

        public function sellTradeGoods(param1:Object, param2:int, param3:int) : void
        {
            var sellData:* = param1;
            var sellPrice:* = param2;
            var sellQuantity:* = param3;
            var quantity:* = new Object();
            quantity = sellQuantity == 0 ? (null) : (sellQuantity);
            var json:* = JSON.encode({instance_type:sellData.belongingType, instance_id:sellData.belongingId, price:sellPrice, quantity:quantity});
            loadWithJson("/api/markets/sell_commodity", SELL_TRADE_GOODS, TRADE_GOODS_ERROR, function (param1:Object) : Object
            {
                return param1;
            }// end function
            , json);
            return;
        }// end function

        private function commodityInstanceFactory(param1:CommodityVO, param2:Object) : void
        {
            var _loc_3:* = MasterProxy(facade.retrieveProxy(MasterProxy.NAME));
            var _loc_4:* = ResourceProxy(facade.retrieveProxy(ResourceProxy.NAME));
            switch(param1.instanceType)
            {
                case "Weapon":
                {
                    param1.masterId = param2.weapon_master_id;
                    param1.masterVO = _loc_3.getMasterVO(MasterProxy.WEAPON_MASTER, param1.masterId);
                    param1.instanceVO = _loc_4.weaponFactory(param2);
                    break;
                }
                case "Armor":
                {
                    param1.masterId = param2.armor_master_id;
                    param1.masterVO = _loc_3.getMasterVO(MasterProxy.ARMOR_MASTER, param1.masterId);
                    break;
                }
                case "Accessory":
                {
                    param1.masterId = param2.accessory_master_id;
                    param1.masterVO = _loc_3.getMasterVO(MasterProxy.ACCESSORY_MASTER, param1.masterId);
                    break;
                }
                case "Item":
                {
                    param1.masterId = param2.item_master_id;
                    param1.masterVO = _loc_3.getMasterVO(MasterProxy.ITEM_MASTER, param1.masterId);
                    break;
                }
                case "Material":
                {
                    param1.masterId = param2.material_master_id;
                    param1.masterVO = _loc_3.getMasterVO(MasterProxy.MATERIAL_MASTER, param1.masterId);
                    break;
                }
                default:
                {
                    break;
                }
            }
            return;
        }// end function

        private function commodityFactory(param1:Object, param2:Boolean) : CommodityVO
        {
            var _loc_3:* = new CommodityVO();
            var _loc_4:* = param1.commodity;
            _loc_3.price = _loc_4.price;
            _loc_3.quantity = _loc_4.quantity == 0 ? (1) : (_loc_4.quantity);
            _loc_3.instanceId = _loc_4.instance_id;
            _loc_3.commodityId = _loc_4.id;
            _loc_3.instanceType = _loc_4.instance_type;
            _loc_3.nameLabel = _loc_4.name_label;
            _loc_3.endurance = _loc_4.endurance;
            if (param2)
            {
                commodityInstanceFactory(_loc_3, _loc_4.instance);
            }
            else
            {
                _loc_3.masterId = _loc_4.commodity_summary_id;
            }
            return _loc_3;
        }// end function

        public function set masterDataSeted(param1:Boolean) : void
        {
            _masterDataSeted = param1;
            return;
        }// end function

        public function getMyCommodity() : void
        {
            load("/api/markets/my_commodities", MY_COMMODITY_LOAD_COMPLETE, function (param1:Object) : Object
            {
                var _loc_2:Object = null;
                var _loc_3:CommodityVO = null;
                _myCommodities = new Array();
                for each (_loc_2 in param1)
                {
                    
                    _loc_3 = commodityFactory(_loc_2, false);
                    _myCommodities.push(_loc_3);
                }
                return param1;
            }// end function
            );
            return;
        }// end function

        public function buyPaymentCommodity(param1:int, param2:int) : void
        {
            var commodityId:* = param1;
            var type:* = param2;
            var json:* = JSON.encode({payment_commodity_id:commodityId, type:type});
            loadWithJson("/api/markets/buy_payment_commodity", BUY_PAYMENT_COMMODITY, BUY_PAYMENT_COMMODITY_ERROR, function (param1:Object) : Object
            {
                return param1;
            }// end function
            , json);
            return;
        }// end function

        public function getTradeGoodsStock() : void
        {
            _commoditySummary = new Object();
            load("/api/markets/commodity_summaries", COMMODITY_SUMMARIES_LOADED, function (param1:Object) : Object
            {
                var _loc_2:Object = null;
                for each (_loc_2 in param1)
                {
                    
                    _commoditySummary[_loc_2.commodity_summary.code] = _loc_2.commodity_summary.stock;
                }
                return param1;
            }// end function
            );
            return;
        }// end function

        public function exhibitCancel(param1:int) : void
        {
            var commodityId:* = param1;
            var json:* = JSON.encode({commodity_id:commodityId});
            loadWithJson("/api/markets/cancel_selling_commodity", EXHIBIT_CANCEL, TRADE_GOODS_ERROR, function (param1:Object) : Object
            {
                return param1;
            }// end function
            , json);
            return;
        }// end function

        public function get masterDataSeted() : Boolean
        {
            return _masterDataSeted;
        }// end function

        public function buyTradeGoods(param1:int) : void
        {
            var commodityId:* = param1;
            var json:* = JSON.encode({commodity_id:commodityId});
            loadWithJson("/api/markets/buy_commodity", BUY_TRADE_GOODS, TRADE_GOODS_ERROR, function (param1:Object) : Object
            {
                return param1;
            }// end function
            , json);
            return;
        }// end function

        public function get commoditySummary() : Object
        {
            return _commoditySummary;
        }// end function

        public function setTradeMasterData(param1:BuyTradeGoodsSearchWindow) : void
        {
            var _loc_2:* = PlayerProxy(facade.retrieveProxy(PlayerProxy.NAME));
            var _loc_3:* = MasterProxy(facade.retrieveProxy(MasterProxy.NAME));
            var _loc_4:* = _loc_3.getMaster(MasterProxy.JOB_MASTER);
            var _loc_5:* = _loc_3.getMaster(MasterProxy.WEAPON_MASTER);
            var _loc_6:* = _loc_3.getMaster(MasterProxy.ARMOR_MASTER);
            var _loc_7:* = _loc_3.getMaster(MasterProxy.ACCESSORY_MASTER);
            var _loc_8:* = _loc_3.getMaster(MasterProxy.ITEM_MASTER);
            var _loc_9:* = _loc_3.getMaster(MasterProxy.MATERIAL_MASTER);
            param1.playerRank = _loc_2.playerVO.playerRankId;
            param1.setJobMasterData(_loc_4);
            param1.setWeaponMasterData(_loc_5);
            param1.setArmorMasterData(_loc_6);
            param1.setAccessoryMasterData(_loc_7);
            param1.setItemMasterData(_loc_8);
            param1.setMaterialMasterData(_loc_9);
            _masterDataSeted = true;
            return;
        }// end function

        public function sellSilver(param1:int) : void
        {
            var quantity:* = param1;
            var json:* = JSON.encode({quantity:quantity});
            loadWithJson("/api/markets/sell_silver", SELL_SILVER, SELL_SILVER_ERROR, function (param1:Object) : Object
            {
                return param1;
            }// end function
            , json);
            return;
        }// end function

    }
}
