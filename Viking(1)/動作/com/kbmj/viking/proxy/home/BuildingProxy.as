package com.kbmj.viking.proxy.home
{
    import com.adobe.serialization.json.*;
    import com.kbmj.viking.proxy.*;
    import com.kbmj.viking.vo.*;
    import com.kbmj.viking.vo.home.*;

    public class BuildingProxy extends LoaderProxy
    {
        private var _constructions:Array;
        private var constructionNames:Array;
        public static const ACTIVITY_FINISH:String = NAME + "/notes/activityFinish";
        public static const UPGRADE_ERROR:String = NAME + "/notes/upgradeError";
        public static const RESTORATION_ERROR:String = NAME + "/notes/restorationError";
        public static const DESTROY_BUILDING_ERROR:String = NAME + "/notes/destroyBuildingError";
        public static const CONSTRUCTION_LOAD_COMPLETE:String = NAME + "/constructionLoadComplete";
        public static const ACTIVITY_START:String = NAME + "/notes/activetiyStart";
        public static const NAME:String = "BuildingProxy";
        public static const ACTIVITY_START_ERROR:String = NAME + "/notes/activityStartError";
        public static const UPGRADE:String = NAME + "/notes/upgrade";
        public static const RESTORATION:String = NAME + "/notes/restoration";
        public static const DESTROY_BUILDING_COMPLETE:String = NAME + "/notes/destroyBuildingComplete";

        public function BuildingProxy()
        {
            _constructions = new Array();
            constructionNames = new Array("StonePit", "LeatherTechnology", "AccessoryTechnology", "CeremonyHouse", "CottonFarm", "MagicTechnology", "Shrine", "RegenerationTechnology", "Warehouse", "Hospital", "BlacksmithTechnology", "LoadHouse", "Mine", "Market", "LumberMill", "ClothTechnology");
            super(NAME);
            return;
        }// end function

        public function getConstructionsOfLevel(param1:int) : Array
        {
            var level:* = param1;
            return _constructions.filter(function (param1:ConstructionVO, param2:int, param3:Array) : Boolean
            {
                return param1.level == level;
            }// end function
            );
        }// end function

        override public function onRegister() : void
        {
            return;
        }// end function

        public function set constructions(param1:Array) : void
        {
            _constructions = param1;
            return;
        }// end function

        public function getConstructionByNameAndLevel(param1:String, param2:int = 1) : ConstructionVO
        {
            var name:* = param1;
            var level:* = param2;
            return _constructions.filter(function (param1:ConstructionVO, param2:int, param3:Array) : Boolean
            {
                return param1.name == name && param1.level == level;
            }// end function
            ).pop();
        }// end function

        public function loadConstructions() : void
        {
            load("/api/activities/constructions", CONSTRUCTION_LOAD_COMPLETE, function (param1:Object) : void
            {
                var _loc_2:ConstructionVO = null;
                var _loc_4:Object = null;
                constructions = new Array();
                var _loc_3:int = 0;
                while (_loc_3 < constructionNames.length)
                {
                    
                    for each (_loc_4 in param1[constructionNames[_loc_3]])
                    {
                        
                        constructions.push(constructionFactory(_loc_4));
                    }
                    _loc_3++;
                }
                return;
            }// end function
            );
            return;
        }// end function

        public function destroyBuilding(param1:int) : void
        {
            var buildingId:* = param1;
            var json:* = JSON.encode({building_id:buildingId});
            loadWithJson("/api/home/destroy_building", DESTROY_BUILDING_COMPLETE, DESTROY_BUILDING_ERROR, function (param1:Object) : Object
            {
                return param1;
            }// end function
            , json);
            return;
        }// end function

        public function get constructions() : Array
        {
            return _constructions;
        }// end function

        public function build(param1:String, param2:int, param3:int, param4:int) : void
        {
            var buildingName:* = param1;
            var unitId:* = param2;
            var areaId:* = param3;
            var buildingId:* = param4;
            var json:* = JSON.encode({activity:buildingName, unit_id:unitId, area_id:areaId, code:buildingId, execution_count:1});
            loadWithJson("/api/activities/start", ACTIVITY_START, ACTIVITY_START_ERROR, function (param1:Object) : Object
            {
                return param1.task;
            }// end function
            , json);
            return;
        }// end function

        public function buildingFactory(param1:Object) : BuildingVO
        {
            var obj:* = param1;
            var masterProxy:* = MasterProxy(facade.retrieveProxy(MasterProxy.NAME));
            var buildingVO:* = new BuildingVO();
            var buildingMaster:* = masterProxy.getMasterVO(MasterProxy.BUILDING_MASTER, obj.building_master_id);
            buildingVO.buildingMasterVO = buildingMaster as BuildingMasterVO;
            var _loc_3:* = buildingVO;
            with (buildingVO)
            {
                buildingId = obj.id;
                imageUrl = obj.image_url;
                underConstruction = obj.under_construction;
                repeatCount = obj.repeat_count;
                level = obj.level;
                buildingMasterId = obj.building_master_id;
                areaId = obj.area_id;
                constructedAt = obj.constructed_at;
                broken = obj.broken;
            }
            return buildingVO;
        }// end function

        public function getConstructionByName(param1:String) : Array
        {
            var name:* = param1;
            return _constructions.filter(function (param1:ConstructionVO, param2:int, param3:Array) : Boolean
            {
                return param1.name == name;
            }// end function
            );
        }// end function

        public function constructionFactory(param1:Object) : ConstructionVO
        {
            var material:*;
            var materialMasterVO:*;
            var materialVO:*;
            var obj:* = param1;
            var masterProxy:* = MasterProxy(facade.retrieveProxy(MasterProxy.NAME));
            var constructionVO:* = new ConstructionVO();
            var _loc_3:* = constructionVO;
            with (constructionVO)
            {
                name = obj.name;
                nameLabel = obj.name_label;
                code = obj.code;
                minutes = obj.terms;
                gold = obj.money;
                rank = obj.rank;
                level = obj.level;
                abilities = obj.abilities;
                maxBuild = obj.max_num;
                playerRank = obj.rank;
                if (obj.materials)
                {
                    materials = new Array();
                    var _loc_4:int = 0;
                    var _loc_5:* = obj.materials;
                    while (_loc_5 in _loc_4)
                    {
                        
                        material = _loc_5[_loc_4];
                        materialMasterVO = masterProxy.getMasterVO(MasterProxy.MATERIAL_MASTER, material.id);
                        materialVO = new MaterialVO();
                        materialVO.masterVO = materialMasterVO;
                        materialVO.quantity = material.quantity;
                        materialVO.name = material.name;
                        materials.push(materialVO);
                    }
                }
                buildingMasterVO = masterProxy.getMasterVO(MasterProxy.BUILDING_MASTER, code);
            }
            return constructionVO;
        }// end function

        public function upgrade(param1:String, param2:int, param3:int, param4:int, param5:int) : void
        {
            var buildingName:* = param1;
            var unitId:* = param2;
            var areaId:* = param3;
            var count:* = param4;
            var buildingId:* = param5;
            var json:* = JSON.encode({activity:buildingName, unit_id:unitId, area_id:areaId, code:buildingId, execution_count:count});
            loadWithJson("/api/activities/start", UPGRADE, UPGRADE_ERROR, function (param1:Object) : Object
            {
                return param1.task;
            }// end function
            , json);
            return;
        }// end function

        public function restore(param1:int) : void
        {
            var buildingId:* = param1;
            var json:* = JSON.encode({building_id:buildingId});
            loadWithJson("/api/home/repair_fort", RESTORATION, RESTORATION_ERROR, function (param1:Object) : Object
            {
                return param1;
            }// end function
            , json);
            return;
        }// end function

    }
}
