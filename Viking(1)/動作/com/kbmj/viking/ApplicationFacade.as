package com.kbmj.viking
{
    import com.kbmj.viking.controller.*;
    import com.kbmj.viking.controller.allMap.*;
    import com.kbmj.viking.controller.city.*;
    import com.kbmj.viking.controller.home.*;
    import com.kbmj.viking.controller.initialForm.*;
    import com.kbmj.viking.controller.raid.*;
    import com.kbmj.viking.controller.selectUnit.*;
    import com.kbmj.viking.controller.sendArmy.*;
    import com.kbmj.viking.controller.tactics.*;
    import com.kbmj.viking.proxy.*;
    import com.kbmj.viking.proxy.allMap.*;
    import com.kbmj.viking.proxy.city.*;
    import com.kbmj.viking.proxy.home.*;
    import com.kbmj.viking.proxy.selectUnit.*;
    import com.kbmj.viking.proxy.tactics.*;
    import com.kbmj.viking.view.*;
    import com.kbmj.viking.view.allMap.*;
    import com.kbmj.viking.view.city.*;
    import com.kbmj.viking.view.home.*;
    import com.kbmj.viking.view.initialForm.*;
    import com.kbmj.viking.view.selectUnit.*;
    import com.kbmj.viking.view.tactics.*;
    import mx.managers.*;
    import org.puremvc.as3.patterns.facade.*;

    public class ApplicationFacade extends Facade
    {
        public static const ENSURE_TIMER:String = "ensureTimer";
        public static const STOP_TIMER:String = "stopTimer";
        public static const RESET_DISPLAY:String = "resetDisplay";
        public static const DRAW:String = "draw";
        public static const FREEZE_DISPLAY:String = "freezeDisplay";
        public static const SELECT:String = "select";
        public static const STARTUP:String = "startup";

        public function ApplicationFacade()
        {
            return;
        }// end function

        private function defineAdditionalMethods() : void
        {
            Array.prototype.find = function (param1:String, param2:Object) : Object
            {
                var property:* = param1;
                var value:* = param2;
                return this.filter(function (param1, param2:int, param3:Array) : Boolean
                {
                    return param1[property] == value;
                }// end function
                );
            }// end function
            ;
            Array.prototype.setPropertyIsEnumerable("find", false);
            Array.prototype.getOne = function (param1:String, param2:Object) : Object
            {
                var _loc_3:* = this.find(param1, param2);
                return _loc_3 ? (_loc_3[0]) : (null);
            }// end function
            ;
            Array.prototype.setPropertyIsEnumerable("getOne", false);
            Array.prototype.removeSame = function (param1:String) : Array
            {
                var saveArray:Array;
                var property:* = param1;
                saveArray = new Array();
                return this.filter(function (param1, param2:int, param3:Array) : Boolean
                {
                    var _loc_4:* = undefined;
                    for each (_loc_4 in saveArray)
                    {
                        
                        if (param1[property] == _loc_4[property])
                        {
                            return false;
                        }
                    }
                    saveArray.push(param1);
                    return true;
                }// end function
                );
            }// end function
            ;
            Array.prototype.setPropertyIsEnumerable("removeSame", false);
            String.prototype.camelize = function () : String
            {
                var _loc_2:String = null;
                var _loc_1:String = "";
                for each (_loc_2 in this.split("_"))
                {
                    
                    _loc_1 = _loc_1 + (_loc_2.charAt(0).toUpperCase() + _loc_2.substr(1));
                }
                return _loc_1;
            }// end function
            ;
            String.prototype.setPropertyIsEnumerable("camelize", false);
            String.prototype.lowerCamelize = function () : String
            {
                var _loc_2:String = this;
                var _loc_1:* = _loc_2.this["camelize"]();
                _loc_1 = _loc_1.charAt(0).toLowerCase() + _loc_1.substr(1);
                return _loc_1;
            }// end function
            ;
            String.prototype.setPropertyIsEnumerable("lowerCamelize", false);
            String.prototype.pluralize = function () : String
            {
                if (this == "accessory")
                {
                    return "accessories";
                }
                return this + "s";
            }// end function
            ;
            String.prototype.setPropertyIsEnumerable("pluralize", false);
            return;
        }// end function

        override protected function initializeController() : void
        {
            super.initializeController();
            registerCommand(STARTUP, StartupCommand);
            registerCommand(ErrorReportProxy.REPORT_ERROR, ReportErrorCommand);
            registerCommand(HomeMediator.GOTO_ALL_MAP, GotoAllMapCommand);
            registerCommand(HomeMediator.START_RAID, PrepareSelectUnitForRaidCommand);
            registerCommand(HomeMediator.START_SEND_ARMY, StartSelectUnitForSendArmyCommand);
            registerCommand(HomeMediator.PREPARE_BUILDING_WINDOW, PrepareBuildingWindowCommand);
            registerCommand(HomeMediator.LOAD_UNITS_FOR_BUILDING_WINDOW, LoadUnitsForBuildingWindowCommand);
            registerCommand(HomeMediator.RELOAD_HOME_UNITS, ReloadHomeUnitsCommand);
            registerCommand(HomeMediator.RELOAD_HOME_UNITS_FROM_CEREMONY, ReloadHomeUnitsFromCeremonyCommand);
            registerCommand(HomeMediator.RELOAD_HOME_RESOURCE, ReloadHomeResourceCommand);
            registerCommand(HomeMediator.LOAD_ANNOUNCEMENT, LoadAnnouncementCommand);
            registerCommand(HomeMediator.LOAD_GUILD_DETAIL, LoadGuildDetailCommand);
            registerCommand(HomeMediator.LEVELUP, LevelUpCommand);
            registerCommand(HomeMediator.NEXT_APPLICATION, NextApplicationCommand);
            registerCommand(HomeMediator.UPDATE_TASK, UpdateTaskCommand);
            registerCommand(HomeMediator.LOAD_RAID_EXPIRATION, LoadRaidExpirationCommand);
            registerCommand(HomeMediator.REINCARNATE, ReincarnateCommand);
            registerCommand(HomeMediator.REJUVENATE, RejuvenateCommand);
            registerCommand(HomeMediator.RENAME, RenameCommand);
            registerCommand(HomeMediator.IMAGE_CHANGE, ImageChangeCommand);
            registerCommand(HomeMediator.RELOAD_UNITS_AND_RESOURCES, ReloadUnitsAndResourcesCommand);
            registerCommand(HomeMediator.LOAD_COFFINS, LoadCoffinsCommand);
            registerCommand(HomeMediator.LOAD_UNIT_AND_RESOURCE_OF_SACRIFICE, ReloadSacrificeCommand);
            registerCommand(HomeMediator.ENTER_CITY, EnterCityCommand);
            registerCommand(HomeMediator.UPDATE_POWER, UpdatePowerCommand);
            registerCommand(HomeMediator.CONFIRM_ITEM_SUMMON, ConfirmItemSummonCommand);
            registerCommand(SelectUnitMediator.PREPARE_TACTICS, PrepareTacticsCommand);
            registerCommand(SelectUnitMediator.PREPARE_RAID, PrepareRaidCommand);
            registerCommand(SelectUnitMediator.PREPARE_COLONY_BATTLE, PrepareColonyBattleCommand);
            registerCommand(SelectUnitMediator.CLICK, SelectClickCommand);
            registerCommand(SelectUnitMediator.REMOVE, SelectClickCommand);
            registerCommand(SelectUnitMediator.LEVELUP, LevelUpCommand);
            registerCommand(SelectUnitMediator.RELOAD_HOME_UNITS, ReloadHomeUnitsCommand);
            registerCommand(SelectUnitMediator.RELOAD_RESOURCE, ReloadResourceCommand);
            registerCommand(SelectUnitMediator.RELOAD_UNITS, ReloadUnitCommand);
            registerCommand(SelectUnitMediator.ALL_UNIT_RECOVERY, ConfirmAllUnitRecoveryCommand);
            registerCommand(CityMediator.BACK_HOME, BackHomeCommand);
            registerCommand(CityMediator.LOAD_GUILD_DETAIL, LoadGuildDetailCommand);
            registerCommand(CityMediator.NPC_LOAD_COMPLETE, NpcLoadCompleteCommand);
            registerCommand(CityMediator.GUILD_ARMISE_LOAD, GuildArmiseLoadCommand);
            registerCommand(CityMediator.PLAYER_RANK_UP, PlayerRankUpCommand);
            registerCommand(CityMediator.GUILD_LEVEL_UP, GuildLevelUpCommand);
            registerCommand(CityMediator.BUY_SOUL_CRYSTAL_LOADING, BuySoulCrystalCommand);
            registerCommand(TacticsMediator.CLICK, ClickCommand);
            registerCommand(TacticsMediator.GOTO_ALL_MAP, GotoAllMapCommand);
            registerCommand(TacticsMediator.BACK_HOME, BackHomeCommand);
            registerCommand(TacticsMediator.START_HOME, HomeInitialLoadCommand);
            registerCommand(TacticsMediator.WALK_VIEW, WalkUnitCommand);
            registerCommand(TacticsMediator.RESTART_GAME, InitializeCommand);
            registerCommand(TacticsMediator.START_RAID_TIMER, StartRaidTimerCommand);
            registerCommand(TacticsMediator.TIME_OVER, TimeOverCommand);
            registerCommand(TacticsMediator.CONTINUATION_BATTLE_FINISH, ContinuationBattleFinishCommand);
            registerCommand(InitialFormMediator.SUBMIT_INITIAL_FORM, SubmitInitialFormCommand);
            registerCommand(InitialFormMediator.VALIDATE_INITIAL_FORM, ValidateInitialFormCommand);
            registerCommand(InitialFormMediator.INIT_HOME_ALL_MAP, InitHomeAllMapCommand);
            registerCommand(ApplicationMediator.LEVELUP, LevelUpCommand);
            registerCommand(ApplicationMediator.RELOAD_APPLICATION_MEDIATOR_UNITS, ReloadApplicationMediatorUnitsCommand);
            registerCommand(ApplicationMediator.ALL_UNIT_RECOVERY, ConfirmAllUnitRecoveryCommand);
            registerCommand(AllMapMediator.BACK_HOME, BackHomeCommand);
            registerCommand(AllMapMediator.GET_COMMAND, GetCommandAllMapCommand);
            registerCommand(AllMapMediator.ATTACK, AttackAllMapCommand);
            registerCommand(AllMapMediator.SURRENDER, SurrenderAllMapCommand);
            registerCommand(AllMapMediator.RECLAIM, ReclaimAllMapCommand);
            registerCommand(AllMapMediator.FOUND, FoundAllMapCommand);
            registerCommand(AllMapMediator.REPAIR, RepairAllMapCommand);
            registerCommand(AllMapMediator.LOAD_ANIMATION, LoadAnimationAllMapCommand);
            registerCommand(AllMapMediator.GARRISON, GarrisonAllMapCommand);
            registerCommand(AllMapMediator.DESTROY, DestroyAllMapCommand);
            registerCommand(AllMapMediator.REMOVE, RemoveAllMapCommand);
            registerCommand(AllMapMediator.CHARGE_REMOVE, ChargeRemoveAllMapCommand);
            registerCommand(AllMapMediator.CHANGE_ALL_MAP, ChangeAllMapCommand);
            registerCommand(AllMapMediator.LEVELUP, LevelUpCommand);
            registerCommand(AllMapMediator.RELOAD_ALL_MAP_UNITS, ReloadAllMapUnitsCommand);
            registerCommand(AllMapMediator.RELOAD_ALL_MAP_RESOURCES, ReloadAllMapResourcesCommand);
            registerCommand(AllMapMediator.ALL_UNIT_RECOVERY, ConfirmAllUnitRecoveryCommand);
            registerCommand(AllMapProxy.CHANGE_ALL_MAP, ChangeAllMapCommand);
            registerCommand(AllMapProxy.START_SELECT_UNIT, StartSelectUnitForAllMapCommand);
            registerCommand(MultipleLoadProxy.ONE_OF_LOADS_COMPLETE, MultipleLoadCommand);
            registerCommand(BuildingProxy.ACTIVITY_START, ActivityStartCommand);
            registerCommand(BuildingProxy.UPGRADE, ActivityStartCommand);
            registerCommand(BuildingProxy.DESTROY_BUILDING_COMPLETE, ReloadHomeBuildingsCommand);
            registerCommand(GatheringProxy.GATHERING_START, ActivityStartCommand);
            registerCommand(WarriorHouseProxy.HOUSE_LIVING, WarriorHouseCommand);
            registerCommand(WarriorHouseProxy.NOW_LIVING, WarriorHouseCommand);
            registerCommand(WarriorHouseProxy.NOW_LIVING_ALL, WarriorHouseCommand);
            registerCommand(WarriorHouseProxy.LEAVE_HOUSE, WarriorHouseCommand);
            registerCommand(FortProxy.FORT_UNIT, FortCommand);
            registerCommand(FortProxy.NOW_FORT, FortCommand);
            registerCommand(FortProxy.LEAVE_FORT, FortCommand);
            registerCommand(TacticsProxy.START_COMPLETE, PrepareTacticsCompleteCommand);
            registerCommand(TacticsProxy.START_CONTINUATION_TACTICS, PrepareContinuationTacticsCompleteCommand);
            registerCommand(TacticsProxy.START_PVP_BATTLE_COMPLETE, PreparePvPBattleCompleteCommand);
            registerCommand(TacticsProxy.FINISH_RAID_FORCELY, TimeOverCommand);
            registerCommand(UnitProxy.CHANGE_EQUIPMENT, ChangeEquipmentCommand);
            registerCommand(UnitProxy.REUNION_COMPLETE, ReunionCommand);
            registerCommand(UnitProxy.RENAME_COMPLETE, RenameCommand);
            registerCommand(UnitProxy.CHARGE_RECOVERY_COMPLETE, ChargeRecoveryCommand);
            registerCommand(TacticsMediator.ITEM_ANIMATION, ItemAnimationCommand);
            registerCommand(RaidTimerProxy.TIME_OVER, TimeOverCommand);
            registerCommand(MarketProxy.SELL_TRADE_GOODS, ReloadGoodsCommand);
            registerCommand(MarketProxy.EXHIBIT_CANCEL, ReloadGoodsCommand);
            registerCommand(MarketProxy.BUY_TRADE_GOODS, TradeGoodsCommand);
            registerCommand(InitializeFinishedCommand.START_GAME, StartGameCommand);
            registerCommand(InitialFormMediator.LOAD_AND_MOVIE_COMPLETE, InitializeFinishedCommand);
            registerCommand(PlayerProxy.PLAYER_INITIALIZED, InitializeFinishedCommand);
            registerCommand(PlayerProxy.PLAYER_SUBMIT_COMPLETE, InitializeCommand);
            registerCommand(PlayerProxy.FINISH_TUTORIAL_COMPLETE, TutorialFinishedCommand);
            registerCommand(TaskProxy.TASK_UPDATED, TaskUpdateCommand);
            registerCommand(TaskProxy.TUTORIAL_UPDATED, CheckTutorialCommand);
            registerCommand(TaskProxy.LOAD_ANNOUNCEMENT, LoadAnnouncementCommand);
            registerCommand(TaskProxy.UPDATE_POWER, UpdatePowerCommand);
            registerCommand(HomeProxy.EMPLOY_MERCENARY_COMPLETE, ReloadHomeUnitsCommand);
            registerCommand(HomeProxy.REFRESH_MERCENARY_COMPLETE, ReloadMercenariesCommand);
            registerCommand(HomeProxy.HOME_DITAILREPORT_LOADED, RaidDitailReportCommand);
            registerCommand(HomeProxy.RELOAD_HOME_PLAYER_AND_BUILDINGS, ReloadHomeBuildingsCommand);
            registerCommand(HomeProxy.PASS_YEAR_COMPLETE, ReloadAfterPassingYearsCommand);
            registerCommand(HomeProxy.START_EVIL_POINT_SELECT_UNIT, StartSelectUnitForEvilPointCommand);
            registerCommand(HomeProxy.START_COLONY_SELECT_UNIT, StartSelectUnitForColonyCommand);
            registerCommand(HomeProxy.START_SHAM_SELECT_UNIT, StartSelectUnitForShamBattleCommand);
            registerCommand(HomeProxy.START_MATCH_SELECT_UNIT, StartSelectUnitForMatchBattleCommand);
            registerCommand(HomeProxy.START_SPECIAL_MATCH_SELECT_UNIT, StartSelectUnitForSpecialMatchBattleCommand);
            registerCommand(HomeProxy.START_EXPEDITION_SELECT_UNIT, StartSelectUnitForExpeditionCommand);
            registerCommand(HomeProxy.START_EXPEDITION2_SELECT_UNIT, StartSelectUnitForExpeditionCommand);
            registerCommand(HomeProxy.START_EXPEDITION3_SELECT_UNIT, StartSelectUnitForExpeditionCommand);
            registerCommand(HomeProxy.START_CONTINUATION_SELECT_UNIT, StartSelectUnitForContinuationCommand);
            registerCommand(HomeAllSleepUnitProxy.UPDATE_POWER, UpdatePowerCommand);
            registerCommand(SelectUnitProxy.LOAD_RESOURCE_FOR_SELECT_UNIT, LoadResourceCompleteCommand);
            registerCommand(BarProxy.QUEST_COMPLETE, QuestCompleteCommand);
            registerCommand(ProductionProxy.TUTORIAL_UPDATED, CheckTutorialCommand);
            registerCommand(GuildProxy.ALLOW_APPLICATION, LoadGuildDetailCommand);
            registerCommand(GuildProxy.REJECT_APPLICATION, LoadGuildDetailCommand);
            registerCommand(HomeAllSleepUnitProxy.SET_SLEEPING_UNIT, ReloadSleepUnitCommand);
            registerCommand(HomeAllSleepUnitProxy.AWAKE_UNIT, ReloadAwakeUnitCommand);
            registerCommand(LoadFirstTierMastersCommand.FIRST_TIER_MASTERS_LOAD_COMPLETE, LoadSecondTierMastersCommand);
            registerCommand(LoadSecondTierMastersCommand.SECOND_TIER_MASTERS_LOAD_COMPLETE, LoadThirdTierMastersCommand);
            registerCommand(LoadThirdTierMastersCommand.MASTERS_LOAD_COMPLETE, InitializeCommand);
            registerCommand(StartGameCommand.START_HOME, HomeInitialLoadCommand);
            registerCommand(WalkUnitCommand.WALK_FINISHED, WalkFinishCommand);
            registerCommand(ActionAnimationCommand.ACTION_ANIMATION_FINISHED, AttackFinishCommand);
            registerCommand(ItemAnimationCommand.ITEM_ANIMATION_FINISHED, ItemFinishCommand);
            registerCommand(HomeInitialLoadCommand.HOME_INITIAL_LOAD_COMPLETE, HomeInitialLoadCompleteCommand);
            registerCommand(PrepareSelectUnitForRaidCommand.PREPARE_RAID_COMPLETE, StartSelectUnitForRaidCommand);
            registerCommand(StartSelectUnitCommand.START_SELECT_UNIT, StartSelectUnitCompleteCommand);
            registerCommand(StartSelectUnitForRaidCommand.START_SELECT_UNIT, StartSelectUnitCompleteCommand);
            registerCommand(StartSelectUnitForAllMapCommand.START_SELECT_UNIT, StartSelectUnitCompleteCommand);
            registerCommand(StartSelectUnitForEvilPointCommand.START_SELECT_UNIT, StartSelectUnitCompleteCommand);
            registerCommand(StartSelectUnitForColonyCommand.START_SELECT_UNIT, StartSelectUnitCompleteCommand);
            registerCommand(StartSelectUnitForExpeditionCommand.START_SELECT_UNIT, StartSelectUnitCompleteCommand);
            registerCommand(StartSelectUnitForContinuationCommand.START_SELECT_UNIT, StartSelectUnitCompleteCommand);
            registerCommand(StartSelectUnitForShamBattleCommand.START_SELECT_UNIT, StartSelectUnitCompleteCommand);
            registerCommand(StartSelectUnitForMatchBattleCommand.START_SELECT_UNIT, StartSelectUnitCompleteCommand);
            registerCommand(StartSelectUnitForSpecialMatchBattleCommand.START_SELECT_UNIT, StartSelectUnitCompleteCommand);
            registerCommand(CityMediator.SELL_SILVER_LOADING, SellSilverCommand);
            registerCommand(CityMediator.SELL_GOLD_LOADING, SellGoldCommand);
            registerCommand(HomeProxy.ENTER_CITY, StartCityCommand);
            registerCommand(TacticsMediator.ACTION_ANIMATION, ActionAnimationCommand);
            registerCommand(BaseBattleLogicProxy.ENQUEUE_ORDER, EnqueueOrderCommand);
            registerCommand(AttackFinishCommand.ENQUEUE_ORDER, EnqueueOrderCommand);
            return;
        }// end function

        public function startup(param1:Viking) : void
        {
            Viking.version = param1.parameters.swfVersion || "";
            Viking.apiHost = param1.parameters.apiHost || "";
            Viking.pvpHost = param1.parameters.pvpHost || "";
            Viking.pvpPort = param1.parameters.pvpPort ? (parseInt(param1.parameters.pvpPort)) : (9998);
            Viking.sessionKey = param1.parameters.sessionKey || "";
            Viking.summonHeroEnabled = param1.parameters.summonUnitEnabled;
            Viking.buyPaymentItemsEnabled = param1.parameters.buyPaymentItemsEnabled;
            ToolTipManager.showDelay = 100;
            sendNotification(STARTUP, param1);
            defineAdditionalMethods();
            return;
        }// end function

        public static function getInstance() : ApplicationFacade
        {
            if (instance == null)
            {
                instance = new ApplicationFacade;
            }
            return instance as ApplicationFacade;
        }// end function

    }
}
