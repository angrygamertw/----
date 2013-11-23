package com.kbmj.viking.proxy.home
{
    import com.adobe.serialization.json.*;
    import com.kbmj.viking.lib.*;
    import com.kbmj.viking.proxy.*;
    import com.kbmj.viking.proxy.tactics.*;
    import com.kbmj.viking.view.*;
    import com.kbmj.viking.view.allMap.*;
    import com.kbmj.viking.vo.*;
    import com.kbmj.viking.vo.home.*;
    import com.kbmj.viking.vo.tactics.*;
    import flash.display.*;
    import flash.events.*;
    import flash.external.*;
    import flash.geom.*;
    import flash.net.*;
    import flash.utils.*;
    import mx.collections.*;
    import mx.core.*;

    public class HomeProxy extends LoaderProxy
    {
        private var _colonyBattleType:int = 0;
        private var _colonyId:int = 0;
        private var materialsById:Object;
        private var _topographyLevel:int = 0;
        private var _fadeInTimer:Timer;
        private var _mailListTimer:Timer;
        private var _homemaps:Array;
        private var _app:Viking;
        private var _mailDetail:MailVO;
        private var _mails:Array;
        private var _unreadNoticeTimer:Timer;
        private var _firstTimeFlag:Boolean = false;
        private var _evilPointType:int = 0;
        private var _blackOutTimer:Timer;
        private var _summonedUnit:UnitVO;
        private var _sacrificeParams:Object;
        private var _buildCount:Object;
        private var _targetId:int = 0;
        private var _homeVO:HomeVO;
        private var _topographyId:int = 0;
        public static const LOCK_UNITS_ERROR:String = NAME + "/lockUnitsError";
        public static const SUMMON_ITEM_COMPLETE:String = NAME + "/summonItemComplete";
        public static const PROTECT_FROM_RAID_COMPLETE:String = NAME + "/protectFromRaidComplete";
        public static const HOME_ADD_AREA_COMPLETE:String = NAME + "/homeAddAreaComplete";
        public static const HOME_UNIT_DISMISS:String = NAME + "/unitDismiss";
        public static const HOME_CHANGEJOB_START:String = NAME + "/homeChangeJobStart";
        public static const USE_CRYSTAL_COMPLETE:String = NAME + "/useCrystalComplete";
        public static const EXPEDITION_POINT_COMPLETE:String = "HomeProxy/expeditionPointComplete";
        public static const INCREMENT_MAX_TASKS_COMPLETE:String = NAME + "/incrementMaxTasksComplete";
        public static const CONTINUATION_POINT_COMPLETE:String = "HomeProxy/continuationPointComplete";
        public static const START_CONTINUATION_SELECT_UNIT:String = "/startContinuationSelectUnit";
        public static const MAIL_LIST_LOADED:String = NAME + "/mailListLoaded";
        public static const START_COLONY_SELECT_UNIT:String = NAME + "/startColonySelectUnit";
        public static const DEGRADATION_ERROR:String = NAME + "/degradationError";
        public static const HOME_TRANSFER_RESOURCE_COMPLETE:String = NAME + "/homeTransferResourceComplete";
        public static const START_SELECT_UNIT:String = NAME + "/startSelectUnit";
        public static const INCREMENT_MAX_TASKS_ERROR:String = NAME + "/incrementMaxTasksError";
        public static const ASSISTANT_UPDATE_COMPLETE:String = NAME + "/assistantUpdateComplete";
        public static const EVENT_MAP_POINT_COMPLETE:String = "HomeProxy/eventMapPointComplete";
        public static const HOME_CHANGELORD_START_ERROR:String = NAME + "/homeChangeLordStartError";
        public static const START_EXPEDITION3_SELECT_UNIT:String = "/startExpedition3SelectUnit";
        public static const AWAKE_UNION_ERROR:String = NAME + "/awakeUnionError";
        public static const REFRESH_MERCENARY_COMPLETE:String = NAME + "/refreshMercenaryComplete";
        public static const NAME:String = "HomeProxy";
        public static const EMPLOY_MERCENARY_ERROR:String = NAME + "/employMercenaryError";
        public static const START_MATCH_SELECT_UNIT:String = NAME + "/startMatchSelectUnit";
        public static const ENTER_CITY:String = NAME + "/enterCity";
        public static const REAINCARNATE_COMPLETE:String = NAME + "/reaincarnateComplete";
        public static const DOUBLE_DROP_COMPLETE:String = NAME + "/doubleDropComplete";
        public static const WAIT_UNTIL_IMAGES_LOADED:String = NAME + "/waitUntilImagesLoaded";
        public static const MAX_UNITS:int = 15;
        public static const USE_CRYSTAL_ERROR:String = NAME + "/useCrystalError";
        public static const HOME_EQUIPMENT_DUMP_ERROR:String = NAME + "/equipmentDumpError";
        public static const MERCENARIES_LOADED:String = "HomeProxy/mercenariesLoaded";
        public static const SUMMON_UNIT_COMPLETE:String = NAME + "/summonUnitComplete";
        public static const SET_BATTLE_REINFORCEMENTS_COMPLETE:String = NAME + "/setBattleReinforcementsComplete";
        public static const HOME_RAIDREPORT_LOADED:String = NAME + "/raidReportLoaded";
        public static const LOAD_PLAYER_FOR_NEXT_YEAR:String = NAME + "/loadPlayerForNextYear";
        public static const EMPLOY_MERCENARY_COMPLETE:String = NAME + "/employMercenaryComplete";
        public static const REAINCARNATE_ERROR:String = NAME + "/reaincarnateError";
        public static const HOME_GUILDMEMBER_RAIDREPORT_ERROR:String = NAME + "/guildMemberRaidReportError";
        public static const HOME_DATA_LOADED:String = NAME + "/homedataloded";
        public static const COLONY_COMPLETE:String = "HomeProxy/colonyComplete";
        public static const AWAKE_UNION_COMPLETE:String = NAME + "/awakeUnionComplete";
        public static const SACRIFICE_UNIT_COMPLETE:String = NAME + "/sacrificeUnitComplete";
        public static const REJUVENATE_COMPLETE:String = NAME + "/rejuvenateUnitComplete";
        public static const DOUBLE_EXP_COMPLETE:String = NAME + "/doubleExpComplete";
        public static const SORT_UNITS_COMPLETE:String = NAME + "/sortUnitsComplete";
        public static const PLAYER_DATA_DELETE_ERROR:String = NAME + "/playerDataDeleteError";
        public static const RELOAD_HOME_PLAYER_AND_BUILDINGS:String = NAME + "/reloadHomePlayerAndBuildings";
        public static const ASSISTANT_UPDATE_ERROR:String = NAME + "assistantUpdateError";
        public static const HOME_RESOURCES_LOADED_BY_ALL_MAP:String = "HomeProxy/homeResouceLoadedByAllMap";
        public static const HOME_CHANGEJOB_START_ERROR:String = NAME + "/homeChangeJobStartError";
        public static const REJUVENATE_ERROR:String = NAME + "/rejuvenateUnitError";
        public static const SUMMON_HERO_COMPLETE:String = NAME + "/summonHeroComplete";
        public static const PLAYER_DATA_DELETED:String = NAME + "/playerDataDeleted";
        public static const HOME_RAIDTARGET_REVENGE:String = NAME + "/raidTargetRevenge";
        public static const NORMAL_UNION_ERROR:String = NAME + "/normalUnionError";
        public static const DOUBLE_EXP_COMPLETE_ERROR:String = NAME + "/doubleExpCompleteError";
        public static const HOME_RAIDTARGET_LOAD_ERROR:String = NAME + "/raidTargetLoadError";
        public static const PROTECT_FROM_RAID_ERROR:String = NAME + "/protectFromRaidError";
        public static const RENAME_COMPLETE:String = NAME + "/renameComplete";
        public static const IMAGE_CHANGE_ERROR:String = NAME + "/imageChangeError";
        public static const NORMAL_UNION_COMPLETE:String = NAME + "/normalUnionComplete";
        public static const REPLY_MAIL_SEND_COMPLETE:String = NAME + "/replyMailSendComplete";
        public static const HOME_RAIDTARGET_RIVAL:String = NAME + "/raidTargetRival";
        public static const RECIPE_UNION_ERROR:String = NAME + "/recipeUnionError";
        public static const HOME_ADD_AREA_OF_QUEST_COMPLETE:String = NAME + "/homeAddAreaOfQuestComplete";
        public static const MAIL_DETAIL_LOADED:String = NAME + "/mailDetailLoaded";
        public static const HOME_RAIDTARGET_NOTORIETY:String = NAME + "/raidTargetNotoriety";
        public static const EVIL_POINT_COMPLETE:String = "HomeProxy/evilPointComplete";
        public static const POWER_UPDATED:String = NAME + "/powerUpdated";
        public static const DOUBLE_DROP_COMPLETE_ERROR:String = NAME + "/doubleDropCompleteError";
        public static const START_EXPEDITION_SELECT_UNIT:String = "/startExpeditionSelectUnit";
        public static const HOME_UNIT_DISMISS_FROM_CEREMONY:String = NAME + "/unitDismissFromCeremony";
        public static const START_EVIL_POINT_SELECT_UNIT:String = NAME + "/startEvilPointSelectUnit";
        public static const PASS_YEAR_COMPLETE:String = NAME + "/passYearComplete";
        public static const SUMMON_BRAVE_COMPLETE:String = NAME + "/summonBraveComplete";
        public static const SACRIFICE_UNIT_ERROR:String = NAME + "/sacrificeUnitError";
        public static const START_SHAM_SELECT_UNIT:String = NAME + "/startShamSelectUnit";
        public static const NORMAL_SUMMON_ERROR:String = NAME + "/normalSummonError";
        public static const SELECT_GARRISON_UNIT_ERROR:String = NAME + "/selectGarrisonUnitError";
        public static const ASSISTANT_UPDATE:String = NAME + "/assistantUpdate";
        public static const DEGRADATION_COMPLETE:String = NAME + "/degradationComplete";
        public static const SET_BATTLE_REINFORCEMENTS_ERROR:String = NAME + "/setBattleReinforcementsError";
        public static const START_SPECIAL_MATCH_SELECT_UNIT:String = NAME + "/startSpecialMatchSelectUnit";
        public static const INCREMENT_MAX_UNITS_COMPLETE:String = NAME + "/incrementMaxUnitsComplete";
        public static const NORMAL_SUMMON_COMPLETE:String = NAME + "/normalSummonComplete";
        public static const SUMMON_HERO_ERROR:String = NAME + "/summonHeroError";
        public static const HOME_EQUIPMENT_DUMP:String = NAME + "/equipmentDump";
        public static const HOME_CHANGELORD_START:String = NAME + "/homeChangeLordStart";
        public static const SUMMON_UNIT_ERROR:String = NAME + "/summonUnitError";
        public static const INCREMENT_MAX_UNITS_ERROR:String = NAME + "/incrementMaxUnitsError";
        public static const MAIL_SEND_COMPLETE:String = NAME + "/mailSendComplete";
        public static const HOME_ADD_AREA_ERROR:String = NAME + "/homeAddAreaError";
        public static const HOME_ADD_AREA_OF_QUEST_ERROR:String = NAME + "/homeAddAreaOfQuestComplete";
        public static const RECIPE_UNION_COMPLETE:String = NAME + "/recipeUnionComplete";
        public static const COLONY_RELOADED:String = "HomeProxy/colonyReloaded";
        public static const RENAME_ERROR:String = NAME + "/renameError";
        public static const EXPEDITION3_POINT_COMPLETE:String = "HomeProxy/expedition3PointComplete";
        public static const HOME_UNIT_DISMISS_ERROR:String = NAME + "/unitDismissError";
        public static const REFRESH_MERCENARY_ERROR:String = NAME + "/refreshMercenaryError";
        public static const HOME_LORDUNITCANDIDATE_LOADED:String = NAME + "/homeLordUnitCandidateLoaded";
        public static const HOME_COLONY_DITAIL_REPORT_LOADED:String = NAME + "/colonyDitailReportLoaded";
        public static const MAIL_DETAIL_LOADED_ERROR:String = NAME + "/mailDetailLoadedError";
        public static const LOCK_UNITS_COMPLETE:String = NAME + "/lockUnitsComplete";
        public static const PLAYER_DATA_DELETE_CANCEL:String = NAME + "/playerDataDeletedCancrl";
        public static const SUMMON_ITEM_ERROR:String = NAME + "/summonItemError";
        public static const HOME_DITAILREPORT_LOADED:String = NAME + "/DitailReportLoaded";
        public static const HOME_EQUIPMENT_COLLECTIVE_DUMP_ERROR:String = NAME + "/equipmentCollectiveDumpError";
        public static const PRODUCE_RESOURCE_LOADED:String = "HomeProxy/produceResouceLoaded";
        public static const UPGRADE_ITEM_ERROR:String = NAME + "/upgradeItemError";
        public static const HOME_SHAM_BATTLE_TARGET_LIST_LOADED:String = NAME + "/shamBattleTargetListLoaded";
        public static const UPGRADE_ITEM_COMPLETE:String = NAME + "/upgradeItemComplete";
        public static const MERCENARIES_RELOADED:String = "HomeProxy/mercenariesReloaded";
        public static const IMAGE_CHANGE_COMPLETE:String = NAME + "/imageChangeComplete";
        public static const HOME_TRANSFER_RESOURCE_ERROR:String = NAME + "/homeTransferResourceComplete";
        public static const EXPEDITION2_POINT_COMPLETE:String = "HomeProxy/expedition2PointComplete";
        public static const SORT_UNITS_ERROR:String = NAME + "/sortUnitsError";
        public static const HOME_GUILDMEMBER_RAIDREPORT:String = NAME + "/guildMemberRaidReport";
        public static const HOME_EQUIPMENT_COLLECTIVE_DUMP:String = NAME + "/equipmentCollectiveDump";
        public static const HOME_RESOURCE_LOADED:String = "HomeProxy/homeResouceLoaded";
        public static const MAIL_SEND_ERROR:String = NAME + "/mailSendError";
        public static const START_EXPEDITION2_SELECT_UNIT:String = "/startExpedition2SelectUnit";

        public function HomeProxy(param1:Viking)
        {
            _homeVO = new HomeVO();
            _mails = new Array();
            _mailDetail = new MailVO();
            _homemaps = new Array();
            _buildCount = new Object();
            _sacrificeParams = new Object();
            _summonedUnit = new UnitVO();
            _fadeInTimer = new Timer(10, 100);
            _blackOutTimer = new Timer(500, 1);
            _mailListTimer = new Timer(60000, 0);
            _unreadNoticeTimer = new Timer(300000, 0);
            super(NAME);
            _app = param1;
            return;
        }// end function

        public function set sacrificeUnitName(param1:String) : void
        {
            _sacrificeParams.unitName = param1;
            return;
        }// end function

        public function summonRacial(param1:String) : void
        {
            var summonType:* = param1;
            var json:* = JSON.encode({type:summonType});
            loadWithJson("/api/homes/summon_racial", SUMMON_HERO_COMPLETE, SUMMON_HERO_ERROR, function (param1:Object) : void
            {
                updatePower();
                var _loc_2:* = UnitProxy(facade.retrieveProxy(UnitProxy.NAME));
                _summonedUnit = _loc_2.unitFactory(param1.unit);
                return;
            }// end function
            , json);
            return;
        }// end function

        public function startExpeditionSelectUnit(param1:int, param2:int, param3:int, param4:String = "/startExpeditionSelectUnit", param5:int = 0) : void
        {
            var id:* = param1;
            var level:* = param2;
            var evilPointId:* = param3;
            var eventName:* = param4;
            var evilPointType:* = param5;
            _topographyId = id;
            _topographyLevel = level;
            _evilPointType = evilPointType;
            load("/api/units?status=0&evilPointId=" + String(evilPointId), eventName, function (param1:Array) : Array
            {
                var _loc_4:Object = null;
                var _loc_2:* = UnitProxy(facade.retrieveProxy(UnitProxy.NAME));
                var _loc_3:* = new Array();
                for each (_loc_4 in param1)
                {
                    
                    _loc_3.push(_loc_2.unitFactory(_loc_4.unit));
                }
                _loc_3.sortOn(["sortId", "unitId"], Array.NUMERIC);
                return _loc_3;
            }// end function
            );
            return;
        }// end function

        public function get fadeInTimer() : Timer
        {
            return _fadeInTimer;
        }// end function

        public function summonUnit() : void
        {
            var masterProxy:MasterProxy;
            var summons:Array;
            var unions:Array;
            var ceremony:Object;
            masterProxy = MasterProxy(facade.retrieveProxy(MasterProxy.NAME));
            summons = new Array();
            unions = new Array();
            ceremony = new Object();
            load("/api/masters/summons", SUMMON_UNIT_COMPLETE, function (param1:Object) : Object
            {
                var _loc_2:Object = null;
                var _loc_3:int = 0;
                var _loc_4:Object = null;
                var _loc_5:int = 0;
                var _loc_6:Object = null;
                var _loc_7:Object = null;
                for each (_loc_2 in param1)
                {
                    
                    _loc_4 = new Object();
                    _loc_4.id = _loc_2.summon_master.id;
                    _loc_4.name = _loc_2.summon_master.name;
                    _loc_4.code = _loc_2.summon_master.code;
                    _loc_4.level = _loc_2.summon_master.level;
                    _loc_4.rank = _loc_2.summon_master.rank;
                    _loc_4.soulCrystal = _loc_2.summon_master.soul_crystal;
                    _loc_4.leyLine = _loc_2.summon_master.ley_line;
                    if (_loc_2.summon_master.level_materials.length > 0)
                    {
                        _loc_4.items = new ArrayCollection(new Array(_loc_2.summon_master.level_materials.length));
                        _loc_5 = 0;
                        while (_loc_5 < _loc_2.summon_master.level_materials.length)
                        {
                            
                            _loc_6 = _loc_2.summon_master.level_materials[_loc_5];
                            _loc_7 = new Object();
                            _loc_7.itemId = _loc_6.material_master_id;
                            _loc_7.nameLabel = _loc_6.name_label;
                            _loc_7.quantity = _loc_6.quantity;
                            _loc_4.items.setItemAt(_loc_7, _loc_5);
                            _loc_5++;
                        }
                    }
                    summons.push(_loc_4);
                }
                _loc_3 = 1;
                while (_loc_3 < 7)
                {
                    
                    unions.push(masterProxy.getMasterVO(MasterProxy.UNION_MASTER, _loc_3));
                    _loc_3++;
                }
                ceremony.summon = summons;
                ceremony.union = unions;
                return ceremony;
            }// end function
            , SUMMON_UNIT_ERROR);
            return;
        }// end function

        public function degradation(param1:Object, param2:int, param3:Array) : void
        {
            var item:* = param1;
            var count:* = param2;
            var nameLabel:* = param3;
            var json:* = JSON.encode({item_id:item.masterId, count:count});
            loadWithJson("/api/activities/degradation_item", DEGRADATION_COMPLETE, DEGRADATION_ERROR, function (param1:Object) : Object
            {
                return {name:item.masterVO.product.nameLabel, quantity:count, result:param1.result, nameLabel:nameLabel};
            }// end function
            , json);
            return;
        }// end function

        public function employMercenary(param1:MercenaryVO) : void
        {
            var mercenary:* = param1;
            var json:* = JSON.encode({mercenary_id:mercenary.mercenaryId});
            loadWithJson("/api/home/employ_mercenary", EMPLOY_MERCENARY_COMPLETE, EMPLOY_MERCENARY_ERROR, function (param1:Object) : void
            {
                return;
            }// end function
            , json);
            return;
        }// end function

        public function colony(param1:String = "HomeProxy/colonyComplete") : void
        {
            var eventName:* = param1;
            load("/api/homes/colony", eventName, function (param1:Object) : Object
            {
                var masterVO:ColonyMasterVO;
                var colony:ColonyVO;
                var points:Array;
                var topPoints:Array;
                var occupations:Array;
                var response:* = param1;
                var masterProxy:* = MasterProxy(facade.retrieveProxy(MasterProxy.NAME));
                var colonyMasters:* = masterProxy.getMasterAsArray(MasterProxy.COLONY_MASTER);
                var object:* = new Object();
                var colonies:* = new Array();
                var _loc_3:int = 0;
                var _loc_4:* = colonyMasters;
                while (_loc_4 in _loc_3)
                {
                    
                    masterVO = _loc_4[_loc_3];
                    colony = new ColonyVO();
                    colony.colonyId = masterVO.masterId;
                    points = response.colony_points.filter(function (param1:Object, param2:int, param3:Array) : Boolean
                {
                    return param1.colony_point.colony_id == colony.colonyId;
                }// end function
                );
                    if (points.length > 0)
                    {
                        colony.point = points[0].colony_point.point;
                    }
                    topPoints = response.top_colony_points.filter(function (param1:Object, param2:int, param3:Array) : Boolean
                {
                    return param1.colony_point.colony_id == colony.colonyId;
                }// end function
                );
                    if (topPoints.length > 0)
                    {
                        colony.topPoint = topPoints[0].colony_point.max_point;
                    }
                    occupations = response.colony_occupations.filter(function (param1:Object, param2:int, param3:Array) : Boolean
                {
                    return param1.colony_occupation.colony_id == colony.colonyId;
                }// end function
                );
                    if (occupations.length > 0 && occupations[0].colony_occupation.guild)
                    {
                        colony.ownerGuildName = occupations[0].colony_occupation.guild.name;
                    }
                    else
                    {
                        colony.ownerGuildName = Utils.i18n("localize8");
                    }
                    colony.masterVO = masterVO;
                    colony.isOpen = response.colony_opened;
                    colonies.push(colony);
                }
                object.colonies = colonies;
                object.guild = response.guild ? (response.guild.guild) : (null);
                object.forcedFactionArea = response.forced_faction_area;
                return object;
            }// end function
            );
            return;
        }// end function

        public function getLordHouseLevel() : int
        {
            return 999;
        }// end function

        public function summonCampaign() : void
        {
            load("/api/homes/summon_campaign", SUMMON_HERO_COMPLETE, function (param1:Object) : void
            {
                updatePower();
                var _loc_2:* = UnitProxy(facade.retrieveProxy(UnitProxy.NAME));
                _summonedUnit = _loc_2.unitFactory(param1.unit);
                return;
            }// end function
            , SUMMON_HERO_ERROR);
            return;
        }// end function

        public function expedition2EvilPoint(param1:String = "HomeProxy/expedition2PointComplete") : void
        {
            load("/api/homes/expedition2_evil_point", param1, handleEvilPointLoad);
            return;
        }// end function

        public function loadHomeResource(param1:String = "HomeProxy/homeResouceLoaded") : void
        {
            var eventName:* = param1;
            var masterProxy:* = MasterProxy(facade.retrieveProxy(MasterProxy.NAME));
            load("/api/home/resource", eventName, function (param1:Object) : ResourceVO
            {
                var _loc_3:MaterialVO = null;
                var _loc_2:* = ResourceProxy(facade.retrieveProxy(ResourceProxy.NAME));
                _homeVO.resourceVO = _loc_2.resourceFactory(param1.home_resource);
                materialsById = new Object();
                for each (_loc_3 in homeVO.resourceVO.materials)
                {
                    
                    if (_loc_3.masterVO)
                    {
                        materialsById[_loc_3.masterVO.masterId] = _loc_3;
                    }
                }
                return _homeVO.resourceVO;
            }// end function
            );
            return;
        }// end function

        public function loadShamBattleTargetList() : void
        {
            load("/api/raids/list", HOME_SHAM_BATTLE_TARGET_LIST_LOADED, function (param1:Array) : Array
            {
                return param1;
            }// end function
            );
            return;
        }// end function

        public function get sacrificeParams() : Object
        {
            return _sacrificeParams;
        }// end function

        public function transferResource(param1:GoodsBundleVO) : void
        {
            var type:String;
            var materialVO:Object;
            var json:String;
            var vo:BaseBelongingVO;
            var shipGoodsBundle:* = param1;
            var goodsProxy:* = GoodsProxy(facade.retrieveProxy(GoodsProxy.NAME));
            var shipResource:* = goodsProxy.createResourceFromGoodsBundle(shipGoodsBundle);
            var param:* = new Object();
            var _loc_3:int = 0;
            var _loc_4:* = ["weapons", "armors", "items", "accessories"];
            while (_loc_4 in _loc_3)
            {
                
                type = _loc_4[_loc_3];
                param[type] = new Array();
                var _loc_5:int = 0;
                var _loc_6:* = shipResource[type];
                while (_loc_6 in _loc_5)
                {
                    
                    vo = _loc_6[_loc_5];
                    param[type].push(vo.belongingId);
                }
            }
            param.materials = new Array();
            var _loc_3:int = 0;
            var _loc_4:* = shipGoodsBundle.materials;
            while (_loc_4 in _loc_3)
            {
                
                materialVO = _loc_4[_loc_3];
                param.materials.push({id:materialVO.vo.masterId, quantity:materialVO.quantity});
            }
            json = JSON.encode(param);
            loadWithJson("/api/home/transfer_resource", HOME_TRANSFER_RESOURCE_COMPLETE, HOME_TRANSFER_RESOURCE_ERROR, function (param1:Object) : Object
            {
                return param1;
            }// end function
            , json);
            return;
        }// end function

        public function eventMapEvilPoint(param1:String = "HomeProxy/eventMapPointComplete") : void
        {
            load("/api/homes/event_map_evil_point", param1, handleEvilPointLoad);
            return;
        }// end function

        public function upgrade(param1:String, param2:int, param3:String) : void
        {
            var materialCode:* = param1;
            var upgradeItemId:* = param2;
            var type:* = param3;
            var json:* = JSON.encode({material_code:materialCode, upgrade_id:upgradeItemId, upgrade_type:type});
            loadWithJson("/api/homes/upgrade_item", UPGRADE_ITEM_COMPLETE, UPGRADE_ITEM_ERROR, function (param1:Object) : Object
            {
                return param1;
            }// end function
            , json);
            return;
        }// end function

        public function timerStart() : void
        {
            _mailListTimer.start();
            return;
        }// end function

        public function summonBrave() : void
        {
            load("/api/homes/summon_brave", SUMMON_BRAVE_COMPLETE, function (param1:Object) : void
            {
                updatePower();
                var _loc_2:* = UnitProxy(facade.retrieveProxy(UnitProxy.NAME));
                _summonedUnit = _loc_2.unitFactory(param1.unit);
                return;
            }// end function
            , SUMMON_HERO_ERROR);
            return;
        }// end function

        public function get app() : Viking
        {
            return _app;
        }// end function

        public function loadLordUnitCandidate() : void
        {
            load("/api/home/heirs", HOME_LORDUNITCANDIDATE_LOADED, function (param1:Array) : Array
            {
                return param1;
            }// end function
            );
            return;
        }// end function

        public function fadeInTimerStop() : void
        {
            _fadeInTimer.stop();
            _fadeInTimer.reset();
            blackOutTimerStop();
            return;
        }// end function

        public function get topographyId() : int
        {
            return _topographyId;
        }// end function

        private function handleEvilPointLoad(param1:Object) : Array
        {
            var _loc_3:Object = null;
            var _loc_2:* = new Array();
            for each (_loc_3 in param1)
            {
                
                _loc_2.push(_loc_3.evil_point);
            }
            return _loc_2;
        }// end function

        public function expedition3EvilPoint(param1:String = "normal", param2:String = "HomeProxy/expedition3PointComplete") : void
        {
            load("/api/homes/expedition3_" + param1 + "_evil_point", param2, handleEvilPointLoad);
            return;
        }// end function

        public function loadHomeDatas() : void
        {
            load("/api/home", HOME_DATA_LOADED, function (param1:Object) : Array
            {
                var _loc_3:Object = null;
                var _loc_4:HomeMapVO = null;
                var _loc_2:* = BuildingProxy(facade.retrieveProxy(BuildingProxy.NAME));
                _homemaps = new Array();
                _buildCount = new Object();
                for each (_loc_3 in param1.home.areas)
                {
                    
                    _loc_4 = new HomeMapVO();
                    _loc_4.id = _loc_3.id;
                    _loc_4.homeId = _loc_3.home_id;
                    _loc_4.buildingId = _loc_3.building_id;
                    if (_loc_3.building)
                    {
                        _loc_4.buildingVO = _loc_2.buildingFactory(_loc_3.building);
                        _loc_4.buildingMasterId = _loc_4.buildingVO.buildingMasterId;
                        if (_buildCount[_loc_4.buildingMasterId])
                        {
                            (_buildCount[_loc_4.buildingMasterId] + 1);
                        }
                        else
                        {
                            _buildCount[_loc_4.buildingMasterId] = 1;
                        }
                    }
                    _loc_4.landform = _loc_3.landform;
                    _loc_4.mapx = _loc_3.mapx;
                    _loc_4.mapy = _loc_3.mapy;
                    _homemaps.push(_loc_4);
                }
                return homemaps;
            }// end function
            );
            return;
        }// end function

        public function getHomeEquipmentQuantityByMaster(param1:Object, param2:int) : int
        {
            var _loc_4:Object = null;
            var _loc_3:int = 0;
            for each (_loc_4 in param1)
            {
                
                if (_loc_4.masterId == param2)
                {
                    _loc_3++;
                }
            }
            return _loc_3;
        }// end function

        public function normalUnion(param1:UnitVO, param2:UnitVO) : void
        {
            var yangUnit:* = param1;
            var yinUnit:* = param2;
            var json:* = JSON.encode({yang_id:yangUnit.unitId, yin_id:yinUnit.unitId});
            loadWithJson("/api/homes/normal_union", NORMAL_UNION_COMPLETE, NORMAL_UNION_ERROR, function (param1:Object) : void
            {
                return;
            }// end function
            , json);
            return;
        }// end function

        public function getCommodityByMaster(param1:Object) : Object
        {
            return homeVO.resourceVO[Utils.pluralizeMasterName(param1.masterType)].getOne("masterId", param1.masterId);
        }// end function

        public function sacrifice(param1:UnitVO) : void
        {
            var unit:* = param1;
            var json:* = JSON.encode({unit_id:unit.unitId});
            loadWithJson("/api/homes/sacrifice_unit", SACRIFICE_UNIT_COMPLETE, SACRIFICE_UNIT_ERROR, function (param1:Object) : Object
            {
                return {unitName:unit.name, materials:param1.materials};
            }// end function
            , json);
            return;
        }// end function

        public function incrementMaxUnitsCount(param1:int) : void
        {
            var incrementCount:* = param1;
            var json:* = JSON.encode({incrementCount:incrementCount});
            loadWithJson("/api/homes/increment_max_unit_count", INCREMENT_MAX_UNITS_COMPLETE, INCREMENT_MAX_UNITS_ERROR, function (param1:Object) : Object
            {
                return param1;
            }// end function
            , json);
            return;
        }// end function

        public function updateTime(event:TimerEvent) : void
        {
            var _loc_2:* = PlayerProxy(facade.retrieveProxy(PlayerProxy.NAME));
            _loc_2.updateUnreadMail();
            return;
        }// end function

        public function getBuildCount(param1:int) : int
        {
            return _buildCount[param1] ? (_buildCount[param1]) : (0);
        }// end function

        public function lockUnits(param1:Array) : void
        {
            var lockUnitIds:* = param1;
            var json:* = JSON.encode({unit_ids:lockUnitIds});
            loadWithJson("/api/homes/lock_units", LOCK_UNITS_COMPLETE, LOCK_UNITS_ERROR, function (param1:Object) : Object
            {
                return param1;
            }// end function
            , json);
            return;
        }// end function

        public function rename(param1:UnitVO, param2:String) : void
        {
            var unit:* = param1;
            var newName:* = param2;
            var json:* = JSON.encode({unit_id:unit.unitId, new_name:newName});
            loadWithJson("/api/homes/change_unit_name", RENAME_COMPLETE, RENAME_ERROR, function (param1:Object) : void
            {
                updatePower();
                return;
            }// end function
            , json);
            return;
        }// end function

        public function summonCampaign2() : void
        {
            load("/api/homes/summon_campaign2", SUMMON_HERO_COMPLETE, function (param1:Object) : void
            {
                updatePower();
                var _loc_2:* = UnitProxy(facade.retrieveProxy(UnitProxy.NAME));
                _summonedUnit = _loc_2.unitFactory(param1.unit);
                return;
            }// end function
            , SUMMON_HERO_ERROR);
            return;
        }// end function

        public function summonCampaign3() : void
        {
            load("/api/homes/summon_campaign3", SUMMON_HERO_COMPLETE, function (param1:Object) : void
            {
                updatePower();
                var _loc_2:* = UnitProxy(facade.retrieveProxy(UnitProxy.NAME));
                _summonedUnit = _loc_2.unitFactory(param1.unit);
                return;
            }// end function
            , SUMMON_HERO_ERROR);
            return;
        }// end function

        public function protectFromRaid() : void
        {
            load("/api/home/extend_raid_protection", PROTECT_FROM_RAID_COMPLETE, function (param1:Object) : void
            {
                updatePower();
                return;
            }// end function
            , PROTECT_FROM_RAID_ERROR);
            return;
        }// end function

        public function unreadNoticeTimerStop() : void
        {
            _unreadNoticeTimer.stop();
            return;
        }// end function

        public function loadRaidTarget(param1:String, param2:String) : void
        {
            var targetType:* = param1;
            var eventName:* = param2;
            var json:* = JSON.encode({type:targetType});
            loadWithJson("/api/raids/targets", eventName, HOME_RAIDTARGET_LOAD_ERROR, function (param1:Array) : Array
            {
                var _loc_2:* = new Array();
                var _loc_3:int = 0;
                while (_loc_3 < param1.length)
                {
                    
                    _loc_2.push(param1[_loc_3].player);
                    _loc_3++;
                }
                return _loc_2;
            }// end function
            , json);
            return;
        }// end function

        public function startDoubleExp() : void
        {
            load("/api/home/start_double_exp", DOUBLE_EXP_COMPLETE, function (param1:Object) : void
            {
                updatePower();
                return;
            }// end function
            , DOUBLE_EXP_COMPLETE_ERROR);
            return;
        }// end function

        public function loadMercenaries(param1:String = "HomeProxy/mercenariesLoaded") : void
        {
            var eventName:* = param1;
            load("/api/home/mercenaries", null, function (param1:Array) : void
            {
                var result:* = param1;
                var imageProxy:* = ImageProxy(facade.retrieveProxy(ImageProxy.NAME));
                imageProxy.callAfterImageLoaded(function () : void
                {
                    sendNotification(eventName, buildMercenaries(result));
                    return;
                }// end function
                );
                return;
            }// end function
            );
            return;
        }// end function

        public function set firstTimeFlag(param1:Boolean) : void
        {
            _firstTimeFlag = param1;
            return;
        }// end function

        private function blackOutTimerStart() : void
        {
            _blackOutTimer.start();
            return;
        }// end function

        public function decreaseItemEndurance(param1:int, param2:int = 1) : void
        {
            var _loc_4:int = 0;
            var _loc_3:* = homeVO.resourceVO.items.find("itemId", param1)[0];
            if (!_loc_3)
            {
                trace("アイテムがみつかりません。item_id:", param1);
                return;
            }
            _loc_3.endurance = _loc_3.endurance - param2;
            if (_loc_3.endurance <= 0)
            {
                _loc_4 = homeVO.resourceVO.items.indexOf(_loc_3);
                homeVO.resourceVO.items.splice(_loc_4, 1);
            }
            return;
        }// end function

        public function awakeUnion(param1:UnitVO) : void
        {
            var unit:* = param1;
            var json:* = JSON.encode({unit_id:unit.unitId});
            loadWithJson("/api/homes/awake_unit", AWAKE_UNION_COMPLETE, AWAKE_UNION_ERROR, function (param1:Object) : void
            {
                return;
            }// end function
            , json);
            return;
        }// end function

        public function refreshMercenary() : void
        {
            load("/api/home/update_mercenaries", REFRESH_MERCENARY_COMPLETE, function (param1:Object) : void
            {
                updatePower();
                return;
            }// end function
            , REFRESH_MERCENARY_ERROR);
            return;
        }// end function

        public function evilPoint(param1:String = "HomeProxy/evilPointComplete") : void
        {
            load("/api/homes/evil_point", param1, handleEvilPointLoad);
            return;
        }// end function

        public function nowBuildingLevel(param1:int, param2:int = 1) : int
        {
            var obj:Object;
            var buildingMasterId:* = param1;
            var level:* = param2;
            var buildings:* = homemaps.filter(function (param1:HomeMapVO, param2:int, param3:Array) : Boolean
            {
                return param1.buildingVO && param1.buildingVO.buildingMasterVO.masterId == buildingMasterId;
            }// end function
            );
            var num:int;
            var _loc_4:int = 0;
            var _loc_5:* = buildings;
            while (_loc_5 in _loc_4)
            {
                
                obj = _loc_5[_loc_4];
                if (num < obj.buildingVO.level)
                {
                    num = obj.buildingVO.level;
                }
            }
            return num;
        }// end function

        public function sendMail(param1:Object, param2:String) : void
        {
            var mail:* = param1;
            var event:* = param2;
            var json:* = JSON.encode(mail);
            loadWithJson("/api/in_game_mails/create", event, MAIL_SEND_ERROR, function (param1:Object) : Object
            {
                return param1;
            }// end function
            , json);
            return;
        }// end function

        public function doubleDrop() : void
        {
            load("/api/homes/start_double_drop_rate", DOUBLE_DROP_COMPLETE, function (param1:Object) : void
            {
                updatePower();
                return;
            }// end function
            , DOUBLE_DROP_COMPLETE_ERROR);
            return;
        }// end function

        public function enterCity(param1:Array) : void
        {
            var params:* = param1;
            load("/api/homes/enter_city", ENTER_CITY, function (param1:Object) : Array
            {
                return params;
            }// end function
            );
            return;
        }// end function

        public function startSelectUnitForEvilPoint(param1:int, param2:int) : void
        {
            _topographyId = param1;
            _topographyLevel = param2;
            startSelectUnit(START_EVIL_POINT_SELECT_UNIT);
            return;
        }// end function

        public function startSelectGarrisonUnit(param1:String, param2:int) : void
        {
            var eventName:* = param1;
            var battleType:* = param2;
            var json:* = JSON.encode({battle_type:battleType});
            loadWithJson("/api/units/reinforcements", eventName, SELECT_GARRISON_UNIT_ERROR, function (param1:Object) : Array
            {
                var _loc_4:Object = null;
                var _loc_5:Array = null;
                var _loc_2:* = UnitProxy(facade.retrieveProxy(UnitProxy.NAME));
                var _loc_3:* = new Array();
                for each (_loc_4 in param1.units)
                {
                    
                    _loc_3.push(_loc_2.unitFactory(_loc_4.unit));
                }
                _loc_5 = new Array();
                for each (_loc_4 in param1.selected_units)
                {
                    
                    _loc_5.push(_loc_2.unitFactory(_loc_4.unit));
                }
                return [_loc_3, _loc_5, param1.select_count];
            }// end function
            , json);
            return;
        }// end function

        public function unitDismiss(param1:int, param2:String) : void
        {
            var unitId:* = param1;
            var eventName:* = param2;
            var json:* = JSON.encode({unit_id:unitId});
            loadWithJson("/api/home/dismiss_unit", eventName, HOME_UNIT_DISMISS_ERROR, function (param1:Object) : void
            {
                return;
            }// end function
            , json);
            return;
        }// end function

        public function numBuildings(param1:int, param2:int = 1) : int
        {
            var buildingMasterId:* = param1;
            var level:* = param2;
            return homemaps.filter(function (param1:HomeMapVO, param2:int, param3:Array) : Boolean
            {
                return param1.buildingVO && param1.buildingVO.buildingMasterVO.masterId == buildingMasterId && param1.buildingVO.level >= level;
            }// end function
            ).length;
        }// end function

        public function expeditionEvilPoint(param1:String = "HomeProxy/expeditionPointComplete") : void
        {
            load("/api/homes/expedition_evil_point", param1, handleEvilPointLoad);
            return;
        }// end function

        public function loadMailDetail(param1:int) : void
        {
            var mailId:* = param1;
            var json:* = JSON.encode({reception_id:mailId});
            loadWithJson("/api/in_game_mails/read", MAIL_DETAIL_LOADED, MAIL_DETAIL_LOADED_ERROR, function (param1:Object) : Object
            {
                _mailDetail = new MailVO();
                var _loc_2:* = param1.mail.reception.reception.in_game_mail;
                _mailDetail.mailId = param1.mail.reception.reception.id;
                _mailDetail.senderName = _loc_2.sender_name;
                _mailDetail.subject = _loc_2.subject;
                _mailDetail.sentAt = _loc_2.sent_at_label;
                _mailDetail.readAt = param1.mail.reception.reception.read_at_label;
                _mailDetail.body = param1.mail.body;
                return param1;
            }// end function
            , json);
            return;
        }// end function

        public function selectGarrisonUnit(param1:Array, param2:int) : void
        {
            var unitIds:* = param1;
            var battleType:* = param2;
            var json:* = JSON.encode({unit_ids:unitIds, battle_type:battleType});
            loadWithJson("/api/units/set_battle_reinforcements", SET_BATTLE_REINFORCEMENTS_COMPLETE, SET_BATTLE_REINFORCEMENTS_ERROR, function (param1:Object) : Object
            {
                return param1;
            }// end function
            , json);
            return;
        }// end function

        public function incrementMaxTasksCount() : void
        {
            loadWithJson("/api/homes/increment_max_tasks_count", INCREMENT_MAX_TASKS_COMPLETE, INCREMENT_MAX_TASKS_ERROR, function (param1:Object) : Object
            {
                return param1;
            }// end function
            , "");
            return;
        }// end function

        public function get topographyLevel() : int
        {
            return _topographyLevel;
        }// end function

        public function summonHero() : void
        {
            load("/api/homes/summon_hero", SUMMON_HERO_COMPLETE, function (param1:Object) : void
            {
                updatePower();
                var _loc_2:* = UnitProxy(facade.retrieveProxy(UnitProxy.NAME));
                _summonedUnit = _loc_2.unitFactory(param1.unit);
                return;
            }// end function
            , SUMMON_HERO_ERROR);
            return;
        }// end function

        public function summonSky() : void
        {
            load("/api/homes/summon_sky", SUMMON_HERO_COMPLETE, function (param1:Object) : void
            {
                updatePower();
                var _loc_2:* = UnitProxy(facade.retrieveProxy(UnitProxy.NAME));
                _summonedUnit = _loc_2.unitFactory(param1.unit);
                return;
            }// end function
            , SUMMON_HERO_ERROR);
            return;
        }// end function

        public function collectiveDump(param1:Array) : void
        {
            var item:Object;
            var json:String;
            var dumpItems:* = param1;
            var params:Object;
            var _loc_3:int = 0;
            var _loc_4:* = dumpItems;
            while (_loc_4 in _loc_3)
            {
                
                item = _loc_4[_loc_3];
                if (!params[item.belongingType])
                {
                    params[item.belongingType] = [];
                }
                params[item.belongingType].push(item.belongingId);
            }
            json = JSON.encode(params);
            loadWithJson("/api/home/collective_destroy_instance", HOME_EQUIPMENT_COLLECTIVE_DUMP, HOME_EQUIPMENT_COLLECTIVE_DUMP_ERROR, function (param1:Object) : Object
            {
                return param1;
            }// end function
            , json);
            return;
        }// end function

        public function loadColonyDitailReport(param1:int) : void
        {
            var id:* = param1;
            var str:* = "/api/colony_battles/show/" + id;
            load(str, HOME_COLONY_DITAIL_REPORT_LOADED, function (param1:Object) : Object
            {
                var _loc_3:Object = null;
                var _loc_2:* = PlayerProxy(facade.retrieveProxy(PlayerProxy.NAME));
                for each (_loc_3 in param1.enemy_units as Array)
                {
                    
                    if (_loc_3.image_url)
                    {
                        loadReportImage(_loc_3, _loc_3.image_url, true);
                    }
                }
                for each (_loc_3 in param1.ally_units as Array)
                {
                    
                    if (_loc_3.image_url)
                    {
                        loadReportImage(_loc_3, _loc_3.image_url, false);
                    }
                }
                if (param1.player_home_x && param1.player_home_y)
                {
                    param1.playerHomePoint = AllMapMediator.hexPosToGamePos(new Point(param1.player_home_x, param1.player_home_y));
                }
                param1.isTarget = true;
                param1.type = "colonyReport";
                return param1;
            }// end function
            );
            return;
        }// end function

        public function changeImage(param1:UnitVO, param2:String) : void
        {
            var unit:* = param1;
            var path:* = param2;
            var json:* = JSON.encode({unit_id:unit.unitId, url:path});
            loadWithJson("/api/home/change_unit_image", IMAGE_CHANGE_COMPLETE, IMAGE_CHANGE_ERROR, function (param1:Object) : void
            {
                updatePower();
                return;
            }// end function
            , json);
            return;
        }// end function

        public function get targetId() : int
        {
            return _targetId;
        }// end function

        public function getHomeMaterialById(param1:int) : MaterialVO
        {
            return materialsById[param1];
        }// end function

        public function startSelectUnitForShamBattle(param1:int = 0) : void
        {
            _targetId = param1;
            startSelectUnit(START_SHAM_SELECT_UNIT);
            return;
        }// end function

        public function startSelectUnitForSpecialMatchBattle(param1:int = 0) : void
        {
            _targetId = param1;
            startSelectUnit(START_SPECIAL_MATCH_SELECT_UNIT);
            return;
        }// end function

        public function summonRainbow() : void
        {
            load("/api/homes/summon_rainbow", SUMMON_HERO_COMPLETE, function (param1:Object) : void
            {
                updatePower();
                var _loc_2:* = UnitProxy(facade.retrieveProxy(UnitProxy.NAME));
                _summonedUnit = _loc_2.unitFactory(param1.unit);
                return;
            }// end function
            , SUMMON_HERO_ERROR);
            return;
        }// end function

        public function startSelectUnitForMatchBattle(param1:int = 0) : void
        {
            _targetId = param1;
            startSelectUnit(START_MATCH_SELECT_UNIT);
            return;
        }// end function

        public function get mails() : Array
        {
            return _mails;
        }// end function

        public function reincarnate(param1:UnitVO) : void
        {
            var unit:* = param1;
            var json:* = JSON.encode({unit_id:unit.unitId});
            loadWithJson("/api/home/remake_child", REAINCARNATE_COMPLETE, REAINCARNATE_ERROR, function (param1:Object) : void
            {
                updatePower();
                return;
            }// end function
            , json);
            return;
        }// end function

        public function startSelectUnitForColony(param1:int, param2:int) : void
        {
            _colonyId = param1;
            _colonyBattleType = param2;
            startSelectUnit(START_COLONY_SELECT_UNIT);
            return;
        }// end function

        public function switchSortUnits(param1:Array) : void
        {
            var sortUnitIds:* = param1;
            var json:* = JSON.encode({unit_ids:sortUnitIds});
            loadWithJson("/api/homes/sort_units", SORT_UNITS_COMPLETE, SORT_UNITS_ERROR, function (param1:Object) : Object
            {
                return param1;
            }// end function
            , json);
            return;
        }// end function

        public function normalSummon(param1:Object) : void
        {
            var summon:* = param1;
            var json:* = JSON.encode({code:summon.id});
            loadWithJson("/api/homes/normal_summon", NORMAL_SUMMON_COMPLETE, NORMAL_SUMMON_ERROR, function (param1:Object) : void
            {
                return;
            }// end function
            , json);
            return;
        }// end function

        override public function onRegister() : void
        {
            _mailListTimer.addEventListener(TimerEvent.TIMER, updateTime);
            _mailListTimer.start();
            _unreadNoticeTimer.addEventListener(TimerEvent.TIMER, updateUnreadNotice);
            _unreadNoticeTimer.start();
            return;
        }// end function

        public function guildMemberRaidReport(param1:int) : void
        {
            var playerId:* = param1;
            var json:* = JSON.encode({player_id:playerId});
            loadWithJson("/api/raids/another_player_list", HOME_GUILDMEMBER_RAIDREPORT, HOME_GUILDMEMBER_RAIDREPORT_ERROR, function (param1:Object) : Object
            {
                return param1;
            }// end function
            , json);
            return;
        }// end function

        public function get colonyBattleType() : int
        {
            return _colonyBattleType;
        }// end function

        public function useCrystal(param1:int, param2:int = 0) : void
        {
            var unitId:* = param1;
            var unlearnSkillId:* = param2;
            var params:Object;
            if (unlearnSkillId)
            {
                params.old_skill_id = unlearnSkillId;
            }
            var json:* = JSON.encode(params);
            loadWithJson("/api/home/use_crystal", USE_CRYSTAL_COMPLETE, USE_CRYSTAL_ERROR, function (param1:Object) : String
            {
                return param1.result;
            }// end function
            , json);
            return;
        }// end function

        public function get colonyId() : int
        {
            return _colonyId;
        }// end function

        public function get blackOutTimer() : Timer
        {
            return _blackOutTimer;
        }// end function

        public function get firstTimeFlag() : Boolean
        {
            return _firstTimeFlag;
        }// end function

        public function getItemUpgradeMaterialsByType(param1:String) : Array
        {
            var _loc_5:String = null;
            var _loc_2:Object = {WeaponMaster:["1447", "1586"], ArmorMaster:["1448", "1587"], AccessoryMaster:["1449", "1610"]};
            var _loc_3:* = _loc_2[param1];
            var _loc_4:Array = [];
            for each (_loc_5 in _loc_3)
            {
                
                _loc_4 = _loc_4.concat(homeVO.resourceVO.materials.find("code", _loc_5));
            }
            return _loc_4;
        }// end function

        public function updatePower() : void
        {
            load("/api/player", POWER_UPDATED, function (param1:Object) : void
            {
                var _loc_2:* = param1.player.point;
                var _loc_3:* = PlayerProxy(facade.retrieveProxy(PlayerProxy.NAME));
                _loc_3.playerVO.power = _loc_2;
                if (!ExternalInterface.available || !ExternalInterface.call("updatePower", _loc_2))
                {
                    AlertWindow.show(Utils.i18n("homeProxyPowerNoChangeView"), "", AlertWindow.OK, app);
                }
                return;
            }// end function
            );
            return;
        }// end function

        public function get evilPointType() : int
        {
            return _evilPointType;
        }// end function

        public function loadReportImage(param1:Object, param2:String, param3:Boolean) : void
        {
            var obj:* = param1;
            var url:* = param2;
            var isMyUnit:* = param3;
            obj.faceimage = new UIComponent();
            var faceURLLoader:* = new URLLoader();
            faceURLLoader.dataFormat = URLLoaderDataFormat.BINARY;
            faceURLLoader.addEventListener(Event.COMPLETE, function (event:Event) : void
            {
                var faceLoader:Loader;
                var e:* = event;
                var bytes:* = e.target.data;
                faceLoader = new Loader();
                faceLoader.contentLoaderInfo.addEventListener(Event.COMPLETE, function (event:Event) : void
                {
                    obj.faceimage.addChild(faceLoader);
                    MovieClip(faceLoader.content).gotoAndPlay(isMyUnit ? ("img_battle_left_red") : ("img_battle_right_blue"));
                    faceLoader.content.scaleX = 0.28;
                    faceLoader.content.scaleY = 0.28;
                    return;
                }// end function
                );
                faceLoader.loadBytes(bytes);
                return;
            }// end function
            );
            faceURLLoader.load(new URLRequest(LoaderProxy.host + url));
            return;
        }// end function

        public function fadeInTimerStart() : void
        {
            _fadeInTimer.start();
            blackOutTimerStart();
            return;
        }// end function

        private function buildMercenaries(param1:Array) : Array
        {
            var _loc_5:Object = null;
            var _loc_6:MercenaryVO = null;
            var _loc_7:MaterialMasterVO = null;
            var _loc_8:PlayerProxy = null;
            var _loc_2:* = UnitProxy(facade.retrieveProxy(UnitProxy.NAME));
            var _loc_3:* = MasterProxy(facade.retrieveProxy(MasterProxy.NAME));
            var _loc_4:* = new Array();
            for each (_loc_5 in param1)
            {
                
                _loc_6 = new MercenaryVO();
                _loc_6.mercenaryId = _loc_5.mercenary.id;
                _loc_6.unit = _loc_2.unitFactory(_loc_5.mercenary.unit);
                _loc_6.price = _loc_5.mercenary.price;
                _loc_7 = null;
                if (_loc_6.unit.jobMasterVO.masterId == JobMasterVO.SISTER)
                {
                    _loc_7 = _loc_3.getMasterVO(MasterProxy.MATERIAL_MASTER, MaterialMasterVO.GOSPEL_BOOK) as MaterialMasterVO;
                }
                else if (_loc_6.unit.jobMasterVO.masterId == JobMasterVO.HALF_ELF)
                {
                    _loc_7 = _loc_3.getMasterVO(MasterProxy.MATERIAL_MASTER, MaterialMasterVO.YUGGDRASILL_BRANCH) as MaterialMasterVO;
                }
                if (_loc_7)
                {
                    _loc_6.requirement = _loc_7;
                    _loc_6.numRequiredMaterial = materialsById[_loc_6.requirement.masterId].quantity;
                }
                _loc_8 = PlayerProxy(facade.retrieveProxy(PlayerProxy.NAME));
                _loc_6.canEmploy = _loc_6.price <= _loc_8.playerVO.gold && (!_loc_6.requirement || _loc_6.numRequiredMaterial > 0);
                _loc_4.push(_loc_6);
            }
            return _loc_4;
        }// end function

        public function jobChange(param1:int, param2:int) : void
        {
            var unitId:* = param1;
            var jobId:* = param2;
            var json:* = JSON.encode({unit_id:unitId, job_id:jobId});
            loadWithJson("/api/home/change_job", HOME_CHANGEJOB_START, HOME_CHANGEJOB_START_ERROR, function (param1:Object) : Object
            {
                return param1;
            }// end function
            , json);
            return;
        }// end function

        public function playerDataDelete() : void
        {
            loadWithJson("/api/player/destroy", PLAYER_DATA_DELETED, PLAYER_DATA_DELETE_ERROR, function (param1:Object) : Object
            {
                return param1;
            }// end function
            , null);
            return;
        }// end function

        private function startSelectUnit(param1:String) : void
        {
            var eventName:* = param1;
            load("/api/units?status=0", eventName, function (param1:Array) : Array
            {
                var _loc_4:Object = null;
                var _loc_2:* = UnitProxy(facade.retrieveProxy(UnitProxy.NAME));
                var _loc_3:* = new Array();
                for each (_loc_4 in param1)
                {
                    
                    _loc_3.push(_loc_2.unitFactory(_loc_4.unit));
                }
                _loc_3.sortOn(["sortId", "unitId"], Array.NUMERIC);
                return _loc_3;
            }// end function
            );
            return;
        }// end function

        public function updateUnreadNotice(event:TimerEvent) : void
        {
            var _loc_2:* = PlayerProxy(facade.retrieveProxy(PlayerProxy.NAME));
            _loc_2.updateUnreadNotice();
            return;
        }// end function

        public function itemSummon(param1:String) : void
        {
            var summonType:* = param1;
            var json:* = JSON.encode({type:summonType});
            loadWithJson("/api/homes/draw_lots", SUMMON_ITEM_COMPLETE, SUMMON_ITEM_ERROR, function (param1:Object) : Object
            {
                return param1;
            }// end function
            , json);
            return;
        }// end function

        public function addArea(param1:int = 1) : void
        {
            var tier:* = param1;
            var json:* = JSON.encode({tier:tier});
            loadWithJson("/api/home/add_area", HOME_ADD_AREA_COMPLETE, HOME_ADD_AREA_ERROR, function (param1:Object) : Object
            {
                updatePower();
                sendNotification(RELOAD_HOME_PLAYER_AND_BUILDINGS);
                return param1;
            }// end function
            , json);
            return;
        }// end function

        public function playerDataDeleteCancel() : void
        {
            loadWithJson("/api/player/cancel_destroy", PLAYER_DATA_DELETE_CANCEL, "", function (param1:Object) : Object
            {
                return param1;
            }// end function
            , null);
            return;
        }// end function

        public function getCommodityQuantityByMaster(param1:Object) : Object
        {
            var _loc_2:Object = {quantity:homeVO.resourceVO[Utils.pluralizeMasterName(param1.masterType)].find("masterId", param1.masterId).length};
            return _loc_2;
        }// end function

        private function blackOutTimerStop() : void
        {
            _blackOutTimer.stop();
            _blackOutTimer.reset();
            return;
        }// end function

        public function recipeUnion(param1:UnitVO, param2:UnitVO, param3:int) : void
        {
            var yangUnit:* = param1;
            var yinUnit:* = param2;
            var recipeId:* = param3;
            var json:* = JSON.encode({yang_id:yangUnit.unitId, yin_id:yinUnit.unitId, recipe_id:recipeId});
            loadWithJson("/api/homes/recipe_union", RECIPE_UNION_COMPLETE, RECIPE_UNION_ERROR, function (param1:Object) : void
            {
                return;
            }// end function
            , json);
            return;
        }// end function

        public function loadRaidReport() : void
        {
            load("/api/tactics/list", HOME_RAIDREPORT_LOADED, function (param1:Array) : Array
            {
                return param1;
            }// end function
            );
            return;
        }// end function

        public function continuationEvilPoint(param1:String = "HomeProxy/continuationPointComplete") : void
        {
            load("/api/homes/continuation_evil_point", param1, handleEvilPointLoad);
            return;
        }// end function

        public function timerStop() : void
        {
            _mailListTimer.stop();
            return;
        }// end function

        public function get mailDetail() : MailVO
        {
            return _mailDetail;
        }// end function

        public function changeLordUnit(param1:int) : void
        {
            var unitId:* = param1;
            var json:* = JSON.encode({new_lord_id:unitId});
            loadWithJson("/api/home/change_lord", HOME_CHANGELORD_START, HOME_CHANGELORD_START_ERROR, function (param1:Object) : Object
            {
                return param1;
            }// end function
            , json);
            return;
        }// end function

        public function get summonedUnit() : UnitVO
        {
            return _summonedUnit;
        }// end function

        public function loadDitailReport(param1:int) : void
        {
            var id:* = param1;
            var str:* = "/api/tactics/show/" + id;
            load(str, HOME_DITAILREPORT_LOADED, function (param1:Object) : Object
            {
                var _loc_3:Boolean = false;
                var _loc_4:Object = null;
                var _loc_2:* = PlayerProxy(facade.retrieveProxy(PlayerProxy.NAME));
                if (_loc_2.playerVO.playerName == param1.player_name || _loc_2.playerVO.playerName == param1.player_name)
                {
                    _loc_3 = _loc_2.playerVO.playerName != param1.player_name;
                    param1.type = "raidReport";
                }
                else
                {
                    _loc_3 = _loc_2.playerVO.guild.id == param1.target_guild_id;
                    param1.type = "raidGuildReport";
                }
                for each (_loc_4 in param1.enemy_units as Array)
                {
                    
                    if (_loc_4.image_url)
                    {
                        loadReportImage(_loc_4, _loc_4.image_url, _loc_3 ? (true) : (false));
                    }
                }
                for each (_loc_4 in param1.ally_units as Array)
                {
                    
                    if (_loc_4.image_url)
                    {
                        loadReportImage(_loc_4, _loc_4.image_url, _loc_3 ? (false) : (true));
                    }
                }
                if (param1.player_home_x && param1.player_home_y)
                {
                    param1.playerHomePoint = AllMapMediator.hexPosToGamePos(new Point(param1.player_home_x, param1.player_home_y));
                }
                if (param1.target_home_x && param1.target_home_y)
                {
                    param1.targetHomePoint = AllMapMediator.hexPosToGamePos(new Point(param1.target_home_x, param1.target_home_y));
                }
                param1.isTarget = _loc_3;
                return param1;
            }// end function
            );
            return;
        }// end function

        public function get homeVO() : HomeVO
        {
            return _homeVO;
        }// end function

        public function unreadNoticeTimerStart() : void
        {
            _unreadNoticeTimer.start();
            return;
        }// end function

        public function rejuvenateUnit(param1:UnitVO) : void
        {
            var unit:* = param1;
            var json:* = JSON.encode({unit_id:unit.unitId});
            loadWithJson("/api/home/rejuvenate_unit", REJUVENATE_COMPLETE, REJUVENATE_ERROR, function (param1:Object) : void
            {
                updatePower();
                return;
            }// end function
            , json);
            return;
        }// end function

        public function get homemaps() : Array
        {
            return _homemaps;
        }// end function

        public function dumpEquipment(param1:Object) : void
        {
            var dumpData:* = param1;
            var json:* = JSON.encode({instance_type:dumpData.belongingType, instance_id:dumpData.belongingId});
            loadWithJson("/api/home/destroy_instance", HOME_EQUIPMENT_DUMP, HOME_EQUIPMENT_DUMP_ERROR, function (param1:Object) : Object
            {
                return param1;
            }// end function
            , json);
            return;
        }// end function

        public function loadMailList(param1:int = 1) : void
        {
            var page:* = param1;
            var data:* = "page=" + page.toString();
            load("/api/in_game_mails", MAIL_LIST_LOADED, function (param1:Object) : Object
            {
                var _loc_2:Object = null;
                var _loc_3:Object = null;
                var _loc_4:MailVO = null;
                _mails = new Array();
                for each (_loc_2 in param1.receptions)
                {
                    
                    _loc_3 = _loc_2.reception.in_game_mail;
                    _loc_4 = new MailVO();
                    _loc_4.mailId = _loc_2.reception.id;
                    _loc_4.senderName = _loc_3.sender_name;
                    _loc_4.subject = _loc_3.subject;
                    _loc_4.sentAt = _loc_3.sent_at_label;
                    _loc_4.readAt = _loc_2.reception.read_at;
                    _mails.push(_loc_4);
                }
                return param1.pages;
            }// end function
            , "", data);
            return;
        }// end function

        public function passYear() : void
        {
            load("/api/home/next_year", PASS_YEAR_COMPLETE, function (param1:Object) : void
            {
                updatePower();
                return;
            }// end function
            );
            return;
        }// end function

    }
}
