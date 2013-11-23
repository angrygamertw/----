package com.kbmj.viking.proxy
{
    import com.kbmj.viking.lib.*;
    import com.kbmj.viking.proxy.tactics.*;
    import com.kbmj.viking.vo.*;
    import com.kbmj.viking.vo.home.*;
    import mx.collections.*;

    public class MasterProxy extends LoaderProxy
    {
        private var _masters:Object;
        public static const BUILDING_MASTER_LOAD_COMPLETE:String = NAME + "/notes/BuildingMasterLoadComplete";
        public static const ITEM_MASTER_LOAD_COMPLETE:String = NAME + "/notes/ItemMasterLoadComplete";
        public static const ACCESSORY_MASTER_LOAD_COMPLETE:String = NAME + "/notes/AccessoryMasterLoadComplete";
        public static const ASSISTANT_MASTER:String = "AssistantMaster";
        public static const GUILD_FEATURE_MASTER_LOAD_COMPLETE:String = NAME + "/notes/GuildFeatureMasterLoadComplete";
        public static const NAME:String = "MasterProxy";
        public static const PAYMENT_COMMODITY_MASTER:String = "paymentCommodityMaster";
        public static const ITEM_MASTER:String = "ItemMaster";
        public static const GALLERY_MASTER:String = "GalleryMaster";
        public static const ARMOR_MASTER:String = "ArmorMaster";
        public static const COLONY_MASTER_LOAD_COMPLETE:String = NAME + "/notes/ColonyMasterLoadComplete";
        public static const WEAPON_MASTER_LOAD_COMPLETE:String = NAME + "/notes/WeaponMasterLoadComplete";
        public static const PRODUCTION_MASTER_LOAD_COMPLETE:String = NAME + "/notes/ProductionMasterLoadComplete";
        public static const PRODUCTION_MASTER:String = "ProductionMaster";
        public static const RECIPE_MASTER:String = "RecipeMaster";
        public static const ASSISTANT_MASTER_LOAD_COMPLETE:String = NAME + "/notes/AssistantMasterLoadComplete";
        public static const JOB_MASTER_LOAD_COMPLETE:String = NAME + "/notes/JobMasterLoadComplete";
        public static const GALLERY_MASTER_LOAD_COMPLETE:String = NAME + "/notes/GalleryMasterLoadComplete";
        public static const JOB_MASTER:String = "JobMaster";
        public static const COLONY_MASTER:String = "ColonyMaster";
        public static const BUILDING_MASTER:String = "BuildingMaster";
        public static const ACCESSORY_MASTER:String = "AccessoryMaster";
        public static const GUILD_FEATURE_MASTER:String = "guildFeatureMaster";
        public static const UNION_MASTER_LOAD_COMPLETE:String = NAME + "/notes/UnionMasterLoadComplete";
        public static const RECIPE_MASTER_LOAD_COMPLETE:String = NAME + "/notes/RecipeMasterLoadComplete";
        public static const PAYMENT_COMMODITY_LOAD_COMPLETE:String = NAME + "/notes/paymentCommodityLoadComplete";
        public static const WEAPON_MASTER:String = "WeaponMaster";
        public static const MATERIAL_MASTER_LOAD_COMPLETE:String = NAME + "/notes/MaterialMasterLoadComplete";
        public static const AWAKE_MASTER_LOAD_COMPLETE:String = NAME + "/notes/AwakeMasterLoadComplete";
        public static const UNION_MASTER:String = "UnionMaster";
        public static const ARMOR_MASTER_LOAD_COMPLETE:String = NAME + "/notes/ArmorMasterLoadComplete";
        public static const MATERIAL_MASTER:String = "MaterialMaster";
        public static const AWAKE_MASTER:String = "AwakeMaster";

        public function MasterProxy()
        {
            _masters = new Object();
            super(NAME);
            return;
        }// end function

        public function loadProductionMaster() : void
        {
            load("/api/masters/productions", PRODUCTION_MASTER_LOAD_COMPLETE, function (param1:Array) : Object
            {
                var rawObject:Object;
                var master:Object;
                var productionMasterVO:ProductionMasterVO;
                var buildingMasterVO:*;
                var commodity:*;
                var masterVO:*;
                var requirement:*;
                var response:* = param1;
                var PRODUCT_TYPE:Object;
                var _loc_3:int = 0;
                var _loc_4:* = response;
                while (_loc_4 in _loc_3)
                {
                    
                    rawObject = _loc_4[_loc_3];
                    master = rawObject.production;
                    productionMasterVO = new ProductionMasterVO();
                    var _loc_5:* = productionMasterVO;
                    with (productionMasterVO)
                    {
                        masterId = master.id;
                        productType = PRODUCT_TYPE[master.product_type];
                        reproduction = master.reproduction;
                        successRate = master.success_rate;
                        product = getMasterVO(master.product.type, master.product.id);
                        if (master.building)
                        {
                            buildingMasterVO = getMasterVO(MasterProxy.BUILDING_MASTER, master.building.id) as BuildingMasterVO;
                            building = {level:master.building.level, quantity:master.building.number, buildingMasterVO:buildingMasterVO};
                        }
                        if (master.materials)
                        {
                            commodities = new Array();
                            var _loc_6:int = 0;
                            var _loc_7:* = master.materials;
                            while (_loc_7 in _loc_6)
                            {
                                
                                commodity = _loc_7[_loc_6];
                                masterVO = getMasterVO(commodity.material.type, commodity.material.id);
                                if (masterVO.masterType != "MaterialMaster")
                                {
                                    requiredBelongingMaster = masterVO;
                                }
                                requirement = new ProductionRequirementVO();
                                requirement.masterVO = masterVO;
                                requirement.quantity = commodity.material.quantity;
                                commodities.push(requirement);
                            }
                        }
                        index = 0;
                    }
                    setMasterVO(PRODUCTION_MASTER, productionMasterVO);
                }
                return null;
            }// end function
            );
            return;
        }// end function

        public function loadColonyMaster() : void
        {
            load("/api/masters/colonies", COLONY_MASTER_LOAD_COMPLETE, function (param1:Array) : Object
            {
                var _loc_2:Object = null;
                var _loc_3:Object = null;
                var _loc_4:ColonyMasterVO = null;
                var _loc_5:Object = null;
                var _loc_6:Object = null;
                var _loc_7:Object = null;
                for each (_loc_2 in param1)
                {
                    
                    _loc_3 = _loc_2.colony;
                    _loc_4 = new ColonyMasterVO();
                    _loc_4.name = _loc_3.name;
                    _loc_4.maxLevel = _loc_3.max_level;
                    _loc_4.gold = _loc_3.gold;
                    _loc_4.masterId = _loc_3.id;
                    _loc_4.description = _loc_3.description;
                    _loc_4.newDescription = _loc_3.new_description;
                    _loc_4.offensiveReinforcements = _loc_3.offensive_reinforcements;
                    _loc_4.newOffensiveReinforcements = _loc_3.new_coilony_player_unit_count;
                    _loc_4.loots = new Array();
                    for each (_loc_5 in _loc_3.colony_loots)
                    {
                        
                        _loc_6 = new Object();
                        _loc_7 = getMasterVO(_loc_5.loot_item_type, _loc_5.loot_item_id);
                        _loc_6.mvp = _loc_5.mvp;
                        _loc_6.name = _loc_7.nameLabel;
                        _loc_6.quantity = _loc_5.quantity;
                        _loc_4.loots.push(_loc_6);
                    }
                    setMasterVO(COLONY_MASTER, _loc_4);
                }
                return null;
            }// end function
            );
            return;
        }// end function

        public function loadRecipeMaster() : void
        {
            load("/api/masters/recipes", RECIPE_MASTER_LOAD_COMPLETE, function (param1:Array) : Object
            {
                var _loc_2:Object = null;
                var _loc_3:UnitProxy = null;
                var _loc_4:Object = null;
                var _loc_5:RecipesMasterVO = null;
                var _loc_6:int = 0;
                var _loc_7:Object = null;
                var _loc_8:Object = null;
                for each (_loc_2 in param1)
                {
                    
                    _loc_3 = UnitProxy(facade.retrieveProxy(UnitProxy.NAME));
                    _loc_4 = _loc_2.recipe_master;
                    _loc_5 = new RecipesMasterVO();
                    _loc_5.masterId = _loc_4.id;
                    Utils.copyPropertiesFromRemoteObject(_loc_5, _loc_4);
                    _loc_5.yangUnit = _loc_4.compound.compound_units[0].compound_unit;
                    _loc_5.yinUnit = _loc_4.compound.compound_units[1].compound_unit;
                    if (_loc_4.level_materials.length > 0)
                    {
                        _loc_5.items = new ArrayCollection(new Array(_loc_4.level_materials.length));
                        _loc_6 = 0;
                        while (_loc_6 < _loc_4.level_materials.length)
                        {
                            
                            _loc_7 = _loc_4.level_materials[_loc_6];
                            _loc_8 = new Object();
                            _loc_8.itemId = _loc_7.material_master_id;
                            _loc_8.name = _loc_7.name;
                            _loc_8.quantity = _loc_7.quantity;
                            _loc_5.items.setItemAt(_loc_8, _loc_6);
                            _loc_6++;
                        }
                    }
                    setMasterVO(RECIPE_MASTER, _loc_5);
                }
                return null;
            }// end function
            );
            return;
        }// end function

        public function loadWeaponMaster() : void
        {
            load("/api/masters/weapons", WEAPON_MASTER_LOAD_COMPLETE, function (param1:Array) : Object
            {
                var _loc_2:Object = null;
                var _loc_3:UnitProxy = null;
                var _loc_4:Object = null;
                var _loc_5:WeaponsMasterVO = null;
                var _loc_6:SkillProxy = null;
                for each (_loc_2 in param1)
                {
                    
                    _loc_3 = UnitProxy(facade.retrieveProxy(UnitProxy.NAME));
                    _loc_4 = _loc_2.weapon_master;
                    _loc_5 = new WeaponsMasterVO();
                    _loc_5.masterId = _loc_4.id;
                    Utils.copyPropertiesFromRemoteObject(_loc_5, _loc_4);
                    if (_loc_4.skill_id)
                    {
                        _loc_6 = SkillProxy(facade.retrieveProxy(SkillProxy.NAME));
                        _loc_5.skill = _loc_6.getCodeToSkills(_loc_4.skill_id) as SkillVO;
                    }
                    _loc_3.setEquipabilityJobName(_loc_5);
                    setMasterVO(WEAPON_MASTER, _loc_5);
                }
                return null;
            }// end function
            );
            return;
        }// end function

        public function loadAwakeMaster() : void
        {
            load("/api/masters/awake_masters", AWAKE_MASTER_LOAD_COMPLETE, function (param1:Array) : Object
            {
                var _loc_2:Object = null;
                var _loc_3:Object = null;
                var _loc_4:AwakeMasterVO = null;
                for each (_loc_2 in param1)
                {
                    
                    _loc_3 = _loc_2.awake_master;
                    _loc_4 = new AwakeMasterVO();
                    Utils.copyPropertiesFromRemoteObject(_loc_4, _loc_3);
                    _loc_4.masterId = _loc_3.id;
                    setMasterVO(AWAKE_MASTER, _loc_4);
                }
                return null;
            }// end function
            );
            return;
        }// end function

        public function loadArmorMaster() : void
        {
            load("/api/masters/armors", ARMOR_MASTER_LOAD_COMPLETE, function (param1:Array) : Object
            {
                var _loc_2:Object = null;
                var _loc_3:UnitProxy = null;
                var _loc_4:Object = null;
                var _loc_5:ArmorsMasterVO = null;
                var _loc_6:SkillProxy = null;
                for each (_loc_2 in param1)
                {
                    
                    _loc_3 = UnitProxy(facade.retrieveProxy(UnitProxy.NAME));
                    _loc_4 = _loc_2.armor_master;
                    _loc_5 = new ArmorsMasterVO();
                    _loc_5.masterId = _loc_4.id;
                    Utils.copyPropertiesFromRemoteObject(_loc_5, _loc_4);
                    if (_loc_4.skill_id)
                    {
                        _loc_6 = SkillProxy(facade.retrieveProxy(SkillProxy.NAME));
                        _loc_5.skill = _loc_6.getCodeToSkills(_loc_4.skill_id) as SkillVO;
                    }
                    _loc_3.setEquipabilityJobName(_loc_5);
                    setMasterVO(ARMOR_MASTER, _loc_5);
                }
                return null;
            }// end function
            );
            return;
        }// end function

        public function loadUnionMaster() : void
        {
            load("/api/masters/compounds", UNION_MASTER_LOAD_COMPLETE, function (param1:Object) : Object
            {
                var _loc_2:Object = null;
                var _loc_3:Object = null;
                var _loc_4:UnionMasterVO = null;
                for each (_loc_2 in param1.compounds)
                {
                    
                    _loc_3 = _loc_2.compound;
                    _loc_4 = new UnionMasterVO();
                    _loc_4.masterId = _loc_3.id;
                    setMasterVO(UNION_MASTER, _loc_4);
                }
                return null;
            }// end function
            );
            return;
        }// end function

        public function loadGuildFeaturesMaster() : void
        {
            load("/api/masters/guild_features", GUILD_FEATURE_MASTER_LOAD_COMPLETE, function (param1:Array) : Object
            {
                var guildFeature:Object;
                var master:Object;
                var guildFeatureMasterVO:GuildFeatureMasterVO;
                var response:* = param1;
                var _loc_3:int = 0;
                var _loc_4:* = response;
                while (_loc_4 in _loc_3)
                {
                    
                    guildFeature = _loc_4[_loc_3];
                    master = guildFeature.guild_feature_master;
                    guildFeatureMasterVO = new GuildFeatureMasterVO();
                    var _loc_5:* = guildFeatureMasterVO;
                    with (guildFeatureMasterVO)
                    {
                        masterId = master.id;
                        name = master.name;
                    }
                    setMasterVO(GUILD_FEATURE_MASTER, guildFeatureMasterVO);
                }
                return null;
            }// end function
            );
            return;
        }// end function

        public function loadPaymentCommodity() : void
        {
            load("/api/masters/payment_commodities", PAYMENT_COMMODITY_LOAD_COMPLETE, function (param1:Array) : Object
            {
                var rawObject:Object;
                var master:Object;
                var paymentCommodityVO:PaymentCommodityVO;
                var response:* = param1;
                var _loc_3:int = 0;
                var _loc_4:* = response;
                while (_loc_4 in _loc_3)
                {
                    
                    rawObject = _loc_4[_loc_3];
                    master = rawObject.payment_commodity;
                    paymentCommodityVO = new PaymentCommodityVO();
                    var _loc_5:* = paymentCommodityVO;
                    with (paymentCommodityVO)
                    {
                        masterId = master.id;
                        quantity = master.quantity;
                        power = master.power;
                        gold = master.gold;
                        point = master.point;
                        commodity = getMasterVO(master.commodity_type, master.commodity_id);
                    }
                    setMasterVO(PAYMENT_COMMODITY_MASTER, paymentCommodityVO);
                }
                return null;
            }// end function
            );
            return;
        }// end function

        public function loadAccessoryMaster() : void
        {
            load("/api/masters/accessories", ACCESSORY_MASTER_LOAD_COMPLETE, function (param1:Array) : Object
            {
                var _loc_4:Object = null;
                var _loc_5:Object = null;
                var _loc_6:AccessoriesMasterVO = null;
                var _loc_2:* = SkillProxy(facade.retrieveProxy(SkillProxy.NAME));
                var _loc_3:* = UnitProxy(facade.retrieveProxy(UnitProxy.NAME));
                for each (_loc_4 in param1)
                {
                    
                    _loc_5 = _loc_4.accessory_master;
                    _loc_6 = new AccessoriesMasterVO();
                    _loc_6.masterId = _loc_5.id;
                    Utils.copyPropertiesFromRemoteObject(_loc_6, _loc_5);
                    if (_loc_5.skill_id)
                    {
                        _loc_6.skill = _loc_2.getCodeToSkills(_loc_5.skill_id) as SkillVO;
                    }
                    _loc_3.setEquipabilityJobName(_loc_6);
                    setMasterVO(ACCESSORY_MASTER, _loc_6);
                }
                return null;
            }// end function
            );
            return;
        }// end function

        public function loadMaterialMaster() : void
        {
            load("/api/masters/materials", MATERIAL_MASTER_LOAD_COMPLETE, function (param1:Array) : Object
            {
                var _loc_2:Object = null;
                var _loc_3:Object = null;
                var _loc_4:MaterialMasterVO = null;
                for each (_loc_2 in param1)
                {
                    
                    _loc_3 = _loc_2.material_master;
                    _loc_4 = new MaterialMasterVO();
                    Utils.copyPropertiesFromRemoteObject(_loc_4, _loc_3);
                    _loc_4.masterId = _loc_3.id;
                    setMasterVO(MATERIAL_MASTER, _loc_4);
                }
                return null;
            }// end function
            );
            return;
        }// end function

        public function loadGalleryMaster() : void
        {
            load("/api/masters/gallery_masters", GALLERY_MASTER_LOAD_COMPLETE, function (param1:Array) : Object
            {
                var _loc_2:Object = null;
                var _loc_3:Object = null;
                var _loc_4:GalleriesMasterVO = null;
                for each (_loc_2 in param1)
                {
                    
                    _loc_3 = _loc_2.gallery_prize;
                    _loc_4 = new GalleriesMasterVO();
                    _loc_4.masterId = _loc_3.id;
                    Utils.copyPropertiesFromRemoteObject(_loc_4, _loc_3);
                    setMasterVO(GALLERY_MASTER, _loc_4);
                }
                return null;
            }// end function
            );
            return;
        }// end function

        public function getMasterVO(param1:String, param2:int) : Object
        {
            if (_masters[param1] && _masters[param1][param2])
            {
                return _masters[param1][param2];
            }
            return null;
        }// end function

        public function getMasterVOByCode(param1:String, param2:String) : Object
        {
            var _loc_3:Object = null;
            for each (_loc_3 in _masters[param1])
            {
                
                if (_loc_3.code == param2)
                {
                    return _loc_3;
                }
            }
            return null;
        }// end function

        public function getMasterAsArray(param1:String) : Array
        {
            var _loc_3:Object = null;
            var _loc_2:* = new Array();
            for each (_loc_3 in _masters[param1])
            {
                
                _loc_2.push(_loc_3);
            }
            return _loc_2;
        }// end function

        public function loadDependentMasters() : void
        {
            loadProductionMaster();
            return;
        }// end function

        public function loadJobMaster() : void
        {
            var unitProxy:UnitProxy;
            unitProxy = UnitProxy(facade.retrieveProxy(UnitProxy.NAME));
            load("/api/masters/jobs", JOB_MASTER_LOAD_COMPLETE, function (param1:Array) : Object
            {
                var _loc_2:Object = null;
                var _loc_3:Object = null;
                var _loc_4:JobMasterVO = null;
                var _loc_5:Object = null;
                var _loc_6:Object = null;
                var _loc_7:String = null;
                for each (_loc_2 in param1)
                {
                    
                    _loc_3 = _loc_2.job;
                    _loc_4 = new JobMasterVO();
                    Utils.copyPropertiesFromRemoteObject(_loc_4, _loc_3);
                    _loc_4.masterId = _loc_3.id;
                    unitProxy.setEquipabilityById(_loc_3.id, _loc_3.name_label);
                    _loc_5 = new Object();
                    for each (_loc_6 in _loc_3.equipabilities)
                    {
                        
                        var _loc_12:* = _loc_6.equipment_type.toLowerCase().replace("master", "");
                        _loc_7 = _loc_12._loc_6.equipment_type.toLowerCase().replace("master", "")["pluralize"]();
                        if (!_loc_5[_loc_7])
                        {
                            _loc_5[_loc_7] = new Object();
                        }
                        _loc_5[_loc_7][_loc_6.equipment_id] = _loc_6;
                    }
                    _loc_4.equipabilities = _loc_5;
                    setMasterVO(JOB_MASTER, _loc_4);
                }
                return null;
            }// end function
            );
            return;
        }// end function

        public function loadAssistantMaster() : void
        {
            load("/api/masters/assistants", ASSISTANT_MASTER_LOAD_COMPLETE, function (param1:Object) : Object
            {
                var _loc_2:Object = null;
                var _loc_3:Object = null;
                var _loc_4:AssistantMasterVO = null;
                for each (_loc_2 in param1)
                {
                    
                    _loc_3 = _loc_2.assistant_master;
                    _loc_4 = new AssistantMasterVO();
                    Utils.copyPropertiesFromRemoteObject(_loc_4, _loc_3);
                    _loc_4.masterId = _loc_3.id;
                    setMasterVO(ASSISTANT_MASTER, _loc_4);
                }
                return null;
            }// end function
            );
            return;
        }// end function

        public function loadItemMaster() : void
        {
            load("/api/masters/items", ITEM_MASTER_LOAD_COMPLETE, function (param1:Array) : Object
            {
                var _loc_2:Object = null;
                var _loc_3:Object = null;
                var _loc_4:ItemsMasterVO = null;
                for each (_loc_2 in param1)
                {
                    
                    _loc_3 = _loc_2.item_master;
                    _loc_4 = new ItemsMasterVO();
                    Utils.copyPropertiesFromRemoteObject(_loc_4, _loc_3);
                    _loc_4.masterId = _loc_3.id;
                    setMasterVO(ITEM_MASTER, _loc_4);
                }
                return null;
            }// end function
            );
            return;
        }// end function

        public function loadBuildingMaster() : void
        {
            load("/api/masters/buildings", BUILDING_MASTER_LOAD_COMPLETE, function (param1:Array) : Object
            {
                var building:Object;
                var master:Object;
                var buildingMasterVO:BuildingMasterVO;
                var imageProxy:ImageProxy;
                var response:* = param1;
                var kentiku:* = response.shift().building_master;
                var _loc_3:int = 0;
                var _loc_4:* = response;
                while (_loc_4 in _loc_3)
                {
                    
                    building = _loc_4[_loc_3];
                    master = building.building_master;
                    buildingMasterVO = new BuildingMasterVO();
                    Utils.copyPropertiesFromRemoteObject(buildingMasterVO, master);
                    var _loc_5:* = buildingMasterVO;
                    with (buildingMasterVO)
                    {
                        masterId = master.id;
                        imageURLIncomp = "/swf/buildings/" + kentiku.swf;
                        imageURL = "/swf/buildings/" + master.swf;
                    }
                    imageProxy = ImageProxy(facade.retrieveProxy(ImageProxy.NAME));
                    setMasterVO(BUILDING_MASTER, buildingMasterVO);
                }
                return null;
            }// end function
            );
            return;
        }// end function

        public function setMasterVO(param1:String, param2:Object) : void
        {
            if (!_masters[param1])
            {
                _masters[param1] = new Object();
            }
            _masters[param1][param2.masterId] = param2;
            return;
        }// end function

        public function getMaster(param1:String) : Object
        {
            return _masters[param1];
        }// end function

    }
}
