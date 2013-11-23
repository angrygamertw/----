package com.kbmj.viking.proxy.home
{
    import com.adobe.serialization.json.*;
    import com.kbmj.viking.proxy.*;
    import com.kbmj.viking.vo.*;
    import com.kbmj.viking.vo.home.*;

    public class ProductionProxy extends LoaderProxy
    {
        private var _productionsByType:Object;
        private var _productions:Array;
        public static const PRODUCE:String = NAME + "/notes/produce";
        public static const PRODUCE_ERROR:String = NAME + "/notes/produceError";
        public static const TUTORIAL_UPDATED:String = NAME + "/notes/tutorialUpdated";
        public static const NAME:String = "ProductionProxy";

        public function ProductionProxy()
        {
            super(NAME);
            return;
        }// end function

        public function produce(param1:Object, param2:int, param3:int = 0) : void
        {
            var production:* = param1;
            var quantity:* = param2;
            var instanceId:* = param3;
            var param:Object;
            if (instanceId)
            {
                param.instance_id = instanceId;
            }
            var json:* = JSON.encode(param);
            loadWithJson("/api/activities/produce", PRODUCE, PRODUCE_ERROR, function (param1:Object) : Object
            {
                var _loc_2:TutorialVO = null;
                if (param1.tutorial.current_tutorial.tutorial)
                {
                    _loc_2 = new TutorialVO(param1.tutorial.current_tutorial);
                    sendNotification(TUTORIAL_UPDATED, _loc_2);
                }
                return {name:production.masterVO.product.nameLabel, quantity:quantity, result:param1.result};
            }// end function
            , json);
            return;
        }// end function

        override public function onRegister() : void
        {
            return;
        }// end function

        public function get upgradeItems() : Array
        {
            var key:String;
            var ownBelongings:Array;
            var upgradeItems:Array;
            var homeProxy:* = HomeProxy(facade.retrieveProxy(HomeProxy.NAME));
            var result:* = new Array();
            var typeTable:Object;
            var _loc_2:int = 0;
            var _loc_3:* = typeTable;
            while (_loc_3 in _loc_2)
            {
                
                key = _loc_3[_loc_2];
                var _loc_4:* = key;
                ownBelongings = homeProxy.homeVO.resourceVO[_loc_4.key["pluralize"]()];
                if (!ownBelongings)
                {
                    continue;
                }
                upgradeItems = ownBelongings.filter(function (param1:BaseBelongingVO, param2:int, param3:Array) : Boolean
            {
                return param1.masterVO.upgradeCode;
            }// end function
            );
                result = result.concat(upgradeItems);
            }
            return result;
        }// end function

        public function get reproductions() : Array
        {
            var _loc_5:String = null;
            var _loc_6:Array = null;
            var _loc_7:BaseBelongingVO = null;
            var _loc_8:Array = null;
            var _loc_9:ProductionVO = null;
            var _loc_10:ReproductionVO = null;
            var _loc_1:* = productions.find("reproduction", true);
            var _loc_2:* = HomeProxy(facade.retrieveProxy(HomeProxy.NAME));
            var _loc_3:* = new Array();
            var _loc_4:Object = {weapon:"WeaponMaster", item:"ItemMaster", armor:"ArmorMaster", accessory:"AccessoryMaster"};
            for (_loc_5 in _loc_4)
            {
                
                var _loc_13:* = _loc_5;
                _loc_6 = _loc_2.homeVO.resourceVO[_loc_13._loc_5["pluralize"]()];
                if (!_loc_6)
                {
                    continue;
                }
                for each (_loc_7 in _loc_6)
                {
                    
                    _loc_8 = _loc_1.find("masterType", _loc_4[_loc_5]).find("requiredBelongingMasterId", _loc_7.masterId);
                    if (_loc_8)
                    {
                        for each (_loc_9 in _loc_8)
                        {
                            
                            _loc_10 = new ReproductionVO(_loc_7, _loc_9);
                            _loc_3.push(_loc_10);
                        }
                    }
                }
            }
            return _loc_3;
        }// end function

        public function get productionsByType() : Object
        {
            var _loc_1:ProductionVO = null;
            _productionsByType = {blacksmith:[], leather:[], cloth:[], magic_catalyst:[], accessory:[], althing:[]};
            for each (_loc_1 in this.productions)
            {
                
                _productionsByType[_loc_1.masterVO.productType].push(_loc_1);
            }
            return _productionsByType;
        }// end function

        public function get productionsWithoutCache() : Object
        {
            var _loc_3:ProductionMasterVO = null;
            var _loc_4:ProductionVO = null;
            _productions = new Array();
            var _loc_1:* = MasterProxy(facade.retrieveProxy(MasterProxy.NAME));
            var _loc_2:* = _loc_1.getMaster(MasterProxy.PRODUCTION_MASTER);
            for each (_loc_3 in _loc_2)
            {
                
                _loc_4 = new ProductionVO();
                _loc_4.masterVO = _loc_3;
                checkForProduceCondition(_loc_4);
                _productions.push(_loc_4);
            }
            return _productions;
        }// end function

        public function checkAllForRequirement() : void
        {
            var _loc_1:ProductionVO = null;
            for each (_loc_1 in productions)
            {
                
                checkForProduceCondition(_loc_1);
            }
            return;
        }// end function

        public function get productions() : Object
        {
            if (_productions)
            {
                return _productions;
            }
            return productionsWithoutCache;
        }// end function

        private function checkForProduceCondition(param1:ProductionVO) : void
        {
            var _loc_3:HomeProxy = null;
            var _loc_7:int = 0;
            var _loc_8:Boolean = false;
            var _loc_9:Array = null;
            var _loc_10:int = 0;
            var _loc_11:ProductionRequirementVO = null;
            var _loc_12:Object = null;
            var _loc_13:MaterialVO = null;
            var _loc_2:* = new Object();
            _loc_2.canProduce = true;
            _loc_2.levelLimit = true;
            _loc_3 = HomeProxy(facade.retrieveProxy(HomeProxy.NAME));
            var _loc_4:* = param1.masterVO;
            if (param1.masterVO.building)
            {
                _loc_7 = _loc_3.numBuildings(_loc_4.building.buildingMasterVO.masterId, _loc_4.building.level);
                _loc_8 = _loc_4.building.quantity > _loc_7;
                _loc_2.building = {vo:_loc_4.building, required:_loc_4.building.quantity, current:_loc_7, level:_loc_4.building.level, isShort:_loc_8};
                if (_loc_8)
                {
                    _loc_2.canProduce = false;
                }
                if (_loc_3.nowBuildingLevel(_loc_4.building.buildingMasterVO.masterId) < (_loc_4.building.level - 1) && _loc_4.building.level > 1)
                {
                    _loc_2.levelLimit = false;
                }
            }
            if (_loc_4.commodities)
            {
                _loc_9 = new Array();
                _loc_10 = 999;
                for each (_loc_11 in _loc_4.commodities)
                {
                    
                    if (_loc_11.masterVO is MaterialMasterVO)
                    {
                        _loc_12 = _loc_3.getHomeMaterialById(_loc_11.masterVO.masterId);
                    }
                    else
                    {
                        _loc_12 = _loc_3.getCommodityQuantityByMaster(_loc_11.masterVO);
                    }
                    _loc_8 = !(_loc_12 && _loc_11.quantity <= _loc_12.quantity);
                    _loc_9.push({vo:_loc_11.masterVO, required:_loc_11.quantity, current:_loc_12 ? (_loc_12.quantity) : (0), isShort:_loc_8});
                    if (_loc_8)
                    {
                        _loc_2.canProduce = false;
                    }
                    if (!_loc_12)
                    {
                        _loc_10 = 0;
                        continue;
                    }
                    if (_loc_10 > int(_loc_12.quantity / _loc_11.quantity))
                    {
                        _loc_10 = int(_loc_12.quantity / _loc_11.quantity);
                    }
                }
                _loc_2.maxQuantity = _loc_10;
            }
            _loc_2.commodities = _loc_9;
            param1.requirement = _loc_2;
            var _loc_5:* = _loc_3.homeVO.resourceVO;
            var _loc_6:int = 0;
            switch(param1.masterVO.product.masterType)
            {
                case "MaterialMaster":
                {
                    _loc_13 = _loc_3.getHomeMaterialById(param1.masterVO.product.masterId);
                    if (_loc_13)
                    {
                        _loc_6 = _loc_13.quantity;
                    }
                    else
                    {
                        _loc_6 = 0;
                    }
                    break;
                }
                case "WeaponMaster":
                {
                    _loc_6 = _loc_3.getHomeEquipmentQuantityByMaster(_loc_5.weapons, param1.masterVO.product.masterId);
                    break;
                }
                case "ArmorMaster":
                {
                    _loc_6 = _loc_3.getHomeEquipmentQuantityByMaster(_loc_5.armors, param1.masterVO.product.masterId);
                    break;
                }
                case "AccessoryMaster":
                {
                    _loc_6 = _loc_3.getHomeEquipmentQuantityByMaster(_loc_5.accessories, param1.masterVO.product.masterId);
                    break;
                }
                case "ItemMaster":
                {
                    _loc_6 = _loc_3.getHomeEquipmentQuantityByMaster(_loc_5.items, param1.masterVO.product.masterId);
                    break;
                }
                default:
                {
                    break;
                }
            }
            param1.resourceQuantity = _loc_6;
            return;
        }// end function

    }
}
