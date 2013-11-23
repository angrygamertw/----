package com.kbmj.viking.view
{
    import com.kbmj.viking.controller.*;
    import com.kbmj.viking.controller.home.*;
    import com.kbmj.viking.lib.*;
    import com.kbmj.viking.proxy.*;
    import com.kbmj.viking.proxy.home.*;
    import com.kbmj.viking.proxy.selectUnit.*;
    import com.kbmj.viking.proxy.tactics.*;
    import com.kbmj.viking.view.allMap.*;
    import com.kbmj.viking.view.city.*;
    import com.kbmj.viking.view.home.*;
    import com.kbmj.viking.view.tactics.*;
    import com.kbmj.viking.vo.*;
    import com.kbmj.viking.vo.tactics.*;
    import flash.events.*;
    import mx.managers.*;
    import org.puremvc.as3.interfaces.*;

    public class ApplicationMediator extends BaseMediator
    {
        protected var guildWindow:GuildWindow;
        protected var unitSortListWindow:UnitSortListWindow;
        protected var unitListWindow:UnitListWindow;
        protected var garrisonUnitWindow:GarrisonUnitWindow;
        protected var unitLockListWindow:UnitLockListWindow;
        private var confirmWindow:ConfirmWindow;
        private var confirmIncrementMaxTasksCountWindow:ConfirmIncrementMaxTasksCountWindow;
        private var unitLevelUpWindow:UnitLevelUpWindow;
        protected var raidReportWindow:RaidReportWindow;
        protected var guildChatWindow:GuildChatWindow;
        private var guildChatVO:GuildChatVO;
        public static const UNIT_IN:String = NAME + "/notes/unitInByApplicationMediator";
        public static const RELOAD_GUILD_DETAIL:String = NAME + "/ReloadGuildDetail";
        public static const SHOW_ALERT_WINDOW:String = NAME + "/notes/showAlertWindow";
        public static const ALL_UNIT_RECOVERY_COMPLETE:String = NAME + "/notes/allUnitRecoveryComplete";
        public static const NAME:String = "ApplicationMediator";
        public static const ALL_UNIT_RECOVERY:String = NAME + "/notes/allUnitRecovery";
        public static const UNIT_OUT:String = NAME + "/notes/unitOutByApplicationMediator";
        public static const SHOW_LOADING_WINDOW:String = NAME + "/notes/showLoadingWindow";
        public static const RELOAD_APPLICATION_MEDIATOR_UNITS:String = NAME + "/notes/reloadApplicationMediatorUnits";
        public static const RELOAD_HOME_UNITS:String = NAME + "/notes/reloadHomeUnits";
        public static const LEVELUP:String = NAME + "/notes/levelUp";

        public function ApplicationMediator(param1:Viking)
        {
            guildWindow = new GuildWindow();
            unitListWindow = new UnitListWindow();
            unitLockListWindow = new UnitLockListWindow();
            unitSortListWindow = new UnitSortListWindow();
            raidReportWindow = new RaidReportWindow();
            guildChatWindow = new GuildChatWindow();
            confirmIncrementMaxTasksCountWindow = new ConfirmIncrementMaxTasksCountWindow();
            garrisonUnitWindow = new GarrisonUnitWindow();
            unitLevelUpWindow = new UnitLevelUpWindow();
            confirmWindow = new ConfirmWindow();
            guildChatVO = new GuildChatVO();
            super(NAME, param1);
            var _loc_2:* = GuildProxy(facade.retrieveProxy(GuildProxy.NAME));
            var _loc_3:* = HomeProxy(facade.retrieveProxy(HomeProxy.NAME));
            addEventListeners([[app.selectUnit, Viking.SELECT_UNIT_LIST, handleBaseEvent], [app.tactics, Viking.TACTICS_UNIT_LIST, handleBaseEvent], [app.tactics, Viking.TACTICS_SOUND_ON, handleBaseEvent], [app.tactics, Viking.TACTICS_SOUND_OFF, handleBaseEvent], [app.home.guildChatWindow, GuildChatWindow.GUILD_CHAT_UPDATE, handleBasePopupEvent], [app.home, Viking.INCREMENT_MAX_TASK_CONFIRM, handleBaseEvent], [app.allMap, Viking.INCREMENT_MAX_TASK_CONFIRM, handleBaseEvent], [app.allMap.guildChatWindow, GuildChatWindow.GUILD_CHAT_UPDATE, handleBasePopupEvent], [guildWindow, GuildWindow.SHOW_RAID_REPORT, handleBasePopupEvent], [guildWindow, GuildWindow.LOAD_APPLICATION_DETAIL, handleBasePopupEvent], [guildWindow, GuildApprovalWindow.ALLOW_APPLICATION, handleBasePopupEvent], [guildWindow, GuildApprovalWindow.REJECT_APPLICATION, handleBasePopupEvent], [guildWindow, GuildWindow.SHOW_PLAYERS_ARMY, handleBasePopupEvent], [_loc_2.chatUpdateTimer, TimerEvent.TIMER, handleTimerEvent], [unitLockListWindow, UnitLockListWindow.DECIDE_UNIT_LOCK, handleBasePopupEvent], [unitSortListWindow, UnitSortListWindow.DECIDE_UNIT_SORT, handleBasePopupEvent], [garrisonUnitWindow, GarrisonUnitWindow.UNIT_SELECT_OK, handleBasePopupEvent], [garrisonUnitWindow, GarrisonUnitWindow.UNIT_SELECT_CANCEL, handleBaseEvent], [garrisonUnitWindow, GarrisonUnitWindow.ALL_UNIT_RECOVERY, handleBaseEvent], [confirmWindow, ConfirmWindow.CONFIRMED, handleBasePopupEvent]]);
            return;
        }// end function

        protected function handleBaseEvent(event:Event) : void
        {
            var _loc_6:SakuraProxy = null;
            var _loc_2:* = SelectUnitProxy(facade.retrieveProxy(SelectUnitProxy.NAME));
            var _loc_3:* = TacticsProxy(facade.retrieveProxy(TacticsProxy.NAME));
            var _loc_4:* = UnitProxy(facade.retrieveProxy(UnitProxy.NAME));
            var _loc_5:* = GuildProxy(facade.retrieveProxy(GuildProxy.NAME));
            switch(event.type)
            {
                case Viking.SELECT_UNIT_LIST:
                {
                    unitListWindow.units = _loc_2.units;
                    unitListWindow.statusVisible = true;
                    app.popupWindow(unitListWindow, false);
                    break;
                }
                case Viking.INCREMENT_MAX_TASK_CONFIRM:
                {
                    confirmIncrementMaxTasksCountWindow.addEventListener(ConfirmIncrementMaxTasksCountWindow.CONFIRMED, incrementMaxTasks);
                    app.popupWindow(confirmIncrementMaxTasksCountWindow, false);
                    break;
                }
                case GarrisonUnitWindow.UNIT_SELECT_CANCEL:
                {
                    PopUpManager.removePopUp(garrisonUnitWindow);
                    _loc_6 = SakuraProxy(facade.retrieveProxy(SakuraProxy.NAME));
                    _loc_6.removeSakuraSwf(garrisonUnitWindow.sakura);
                    break;
                }
                case GarrisonUnitWindow.ALL_UNIT_RECOVERY:
                {
                    sendNotification(ALL_UNIT_RECOVERY, ALL_UNIT_RECOVERY_COMPLETE);
                    break;
                }
                default:
                {
                    break;
                }
            }
            return;
        }// end function

        override public function handleNotification(param1:INotification) : void
        {
            var _loc_4:UnitProxy = null;
            var _loc_6:AnimationProxy = null;
            var _loc_8:Array = null;
            var _loc_9:String = null;
            var _loc_10:String = null;
            var _loc_11:Array = null;
            var _loc_12:Object = null;
            var _loc_13:Array = null;
            var _loc_14:UnitVO = null;
            var _loc_2:* = PlayerProxy(facade.retrieveProxy(PlayerProxy.NAME));
            var _loc_3:* = GuildProxy(facade.retrieveProxy(GuildProxy.NAME));
            _loc_4 = UnitProxy(facade.retrieveProxy(UnitProxy.NAME));
            var _loc_5:* = SakuraProxy(facade.retrieveProxy(SakuraProxy.NAME));
            _loc_6 = AnimationProxy(facade.retrieveProxy(AnimationProxy.NAME));
            var _loc_7:* = SkillProxy(facade.retrieveProxy(SkillProxy.NAME));
            switch(param1.getName())
            {
                case LoadGuildDetailCommand.LOAD_AFTER_GUILD_DETAIL:
                {
                    guildWindow.init(_loc_3.guildDetail, _loc_2.playerVO);
                    guildWindow.guildArmyUnits = _loc_3.armiseUnit;
                    guildWindow.applicationData = _loc_3.applicationQueue;
                    guildWindow.setArmyUnitPlayer();
                    app.popupWindow(guildWindow);
                    if (!_loc_2.playerVO.guildMaster)
                    {
                        guildWindow.disappearTab([2, 3]);
                    }
                    else
                    {
                        guildWindow.disappearTab([2]);
                    }
                    break;
                }
                case GuildProxy.HOME_GUILD_DETAIL_ADD_MEMBER:
                {
                    guildWindow.init(_loc_3.guildDetail, _loc_2.playerVO);
                    break;
                }
                case LoadGuildDetailCommand.GUILD_DETAIL_LOADED_BY_CITY:
                {
                    guildWindow.init(_loc_3.guildDetail, _loc_2.playerVO);
                    app.popupWindow(guildWindow);
                    if (!_loc_2.playerVO.guildMaster)
                    {
                        guildWindow.disappearTab([2, 3]);
                    }
                    else
                    {
                        guildWindow.disappearTab([2]);
                    }
                    break;
                }
                case LoadGuildDetailCommand.RELOAD_GUILD_DETAIL:
                {
                    guildWindow.init(_loc_3.guildDetail, _loc_2.playerVO);
                    guildWindow.applicationData = _loc_3.applicationQueue;
                    app.removeLoadingWindow();
                    break;
                }
                case LevelUpCommand.APPLICATION_MEDIATOR_LEVELUP_FINISHED:
                {
                    _loc_6.playLvUpAnimation(_loc_5.sakura.lvUpAnimeCanvas, _loc_5.sakura.unit, AnimationProxy.LEVELUP_ANIMATION_FINISH_BY_APPLICATION_MEDIATOR);
                    unitLevelUpWindow.init();
                    unitLevelUpWindow.preUnit = _loc_5.sakura.unit;
                    unitLevelUpWindow.runLevelUp = true;
                    break;
                }
                case ConfirmAllUnitRecoveryCommand.CONFIRM_ALL_UNIT_RECOVERY:
                {
                    _loc_8 = param1.getBody() as Array;
                    confirmWindow.confirmText = _loc_8[0];
                    confirmWindow.completeEvent = _loc_8[1];
                    app.popupWindow(confirmWindow);
                    break;
                }
                case AnimationProxy.LEVELUP_ANIMATION_FINISH_BY_APPLICATION_MEDIATOR:
                {
                    _loc_9 = _loc_4.unitLvCap(_loc_6.lvUpUnit);
                    if (_loc_9 != null)
                    {
                        showAlert(_loc_9);
                    }
                    sendNotification(RELOAD_APPLICATION_MEDIATOR_UNITS);
                    break;
                }
                case UnitProxy.LEARN_SKILL_COMPLETE_BY_APPLICATION_MEDIATOR:
                {
                    app.removeLoadingWindow();
                    _loc_10 = "";
                    if (param1.getBody().old_skill_id)
                    {
                        _loc_10 = Utils.i18n("applicationForgetSkill", _loc_7.skills[param1.getBody().old_skill_id].nameLabel);
                    }
                    _loc_10 = _loc_10 + Utils.i18n("applicationLearnSkill", _loc_7.skills[param1.getBody().new_skill_id].nameLabel);
                    showAlert(_loc_10);
                }
                case UnitProxy.UNIT_RECOVERY_COMPLETE_BY_APPLICATION_MEDIATOR:
                case RELOAD_HOME_UNITS:
                case ALL_UNIT_RECOVERY_COMPLETE:
                {
                    sendNotification(RELOAD_APPLICATION_MEDIATOR_UNITS);
                    break;
                }
                case SHOW_ALERT_WINDOW:
                {
                    showAlert(param1.getBody() as String);
                    break;
                }
                case UnitProxy.HOME_UNITS_LOADED_BY_APPLICATION_MEDIATOR:
                {
                    _loc_11 = _loc_4.homeUnits;
                    for each (_loc_14 in _loc_11)
                    {
                        
                        _loc_14.loader.loadBytes(_loc_6.getUnitAnimation(_loc_14.jobMasterVO.code, 0));
                    }
                    garrisonUnitWindow.resetUnits(_loc_11);
                    if (unitLevelUpWindow.runLevelUp)
                    {
                        unitLevelUpWindow.afterUnit = _loc_4.getHomeUnitById(unitLevelUpWindow.preUnit.unitId);
                        app.allMap.popupWindow(unitLevelUpWindow, false);
                        unitLevelUpWindow.runLevelUp = false;
                    }
                    app.removeLoadingWindow();
                    break;
                }
                case UNIT_IN:
                case UNIT_OUT:
                {
                    garrisonUnitWindow.unitInOut();
                    break;
                }
                case HomeProxy.LOCK_UNITS_ERROR:
                {
                    sendNotification(HomeMediator.RELOAD_HOME_UNITS);
                    showAlert(Utils.i18n("applicationLockFail"));
                    break;
                }
                case HomeProxy.SORT_UNITS_ERROR:
                {
                    sendNotification(HomeMediator.RELOAD_HOME_UNITS);
                    showAlert(Utils.i18n("applicationSortFail"));
                    unitSortListWindow.closeWindow();
                    break;
                }
                case GuildProxy.ALLOW_APPLICATION_ERROR:
                case LoaderProxy.LOGGED_IN_ERROR:
                {
                    app.removeLoadingWindow();
                    _loc_12 = param1.getBody() as Object;
                    showAlert(_loc_12.head.error_message);
                    break;
                }
                case GuildProxy.APPLICATION_DETAIL_LOADED:
                {
                    guildWindow.showApprovalWindow(_loc_3.applicationVO, _loc_2.playerVO);
                    break;
                }
                case GuildProxy.CHAT_UPDATED:
                {
                    app.removeLoadingWindow();
                    app.home.guildChatWindow.setGuildChatText(param1.getBody() as Array);
                    app.allMap.guildChatWindow.setGuildChatText(param1.getBody() as Array);
                    break;
                }
                case GuildProxy.SET_GUILD_CHAT:
                {
                    app.showLoadingWindow();
                    _loc_3.updateChat();
                    break;
                }
                case GuildProxy.SET_GUILD_CHAT_ERROR:
                {
                    app.home.guildChatWindow.setGuildChatError();
                }
                case GuildProxy.UPDATE_CHAT_ERROR:
                {
                    break;
                }
                case UnitProxy.GUILD_MAMBER_UNITS:
                {
                    guildWindow.unitListPopUp(_loc_4.guildMamberUnits);
                    break;
                }
                case HomeProxy.HOME_GUILDMEMBER_RAIDREPORT:
                {
                    handleRaidReportLoaded(param1.getBody() as Array, guildWindow.selectedPlayer, false);
                    break;
                }
                case HomeProxy.LOCK_UNITS_COMPLETE:
                {
                    showAlert(Utils.i18n("applicationLock"));
                    app.removeLoadingWindow();
                    break;
                }
                case HomeProxy.SORT_UNITS_COMPLETE:
                {
                    app.removeLoadingWindow();
                    break;
                }
                case TacticsMediator.TACTICS_UNIT_LIST:
                {
                    unitListWindow.units = param1.getBody() as Array;
                    unitListWindow.statusVisible = true;
                    app.popupWindow(unitListWindow, false);
                    break;
                }
                case SHOW_LOADING_WINDOW:
                {
                    app.showLoadingWindow(param1.getBody());
                    break;
                }
                case HomeMediator.HOME_UNIT_LOCK_LIST:
                {
                    unitLockListWindow.units = param1.getBody() as Array;
                    app.popupWindow(unitLockListWindow, false);
                    break;
                }
                case HomeMediator.HOME_UNIT_SORT_LIST:
                {
                    unitSortListWindow.units = param1.getBody() as Array;
                    app.popupWindow(unitSortListWindow, false);
                    break;
                }
                case HomeMediator.HOME_GARRISON_WINDOW_OPEN:
                {
                    app.removeLoadingWindow();
                    _loc_13 = param1.getBody() as Array;
                    startUnitSelectGarrison(_loc_13[0], _loc_13[1], _loc_13[2]);
                    break;
                }
                default:
                {
                    break;
                }
            }
            return;
        }// end function

        protected function handleBasePopupEvent(event:PopupEvent) : void
        {
            var _loc_5:int = 0;
            var _loc_6:int = 0;
            var _loc_7:int = 0;
            var _loc_8:Array = null;
            var _loc_9:SakuraProxy = null;
            var _loc_10:UnitVO = null;
            var _loc_2:* = HomeProxy(facade.retrieveProxy(HomeProxy.NAME));
            var _loc_3:* = UnitProxy(facade.retrieveProxy(UnitProxy.NAME));
            var _loc_4:* = GuildProxy(facade.retrieveProxy(GuildProxy.NAME));
            switch(event.type)
            {
                case GuildWindow.SHOW_RAID_REPORT:
                {
                    _loc_5 = int(event.param);
                    _loc_2.guildMemberRaidReport(_loc_5);
                    break;
                }
                case GuildWindow.SHOW_PLAYERS_ARMY:
                {
                    _loc_6 = int(event.param);
                    _loc_3.loadGuildMamberUnits(_loc_6);
                    break;
                }
                case GuildWindow.LOAD_APPLICATION_DETAIL:
                {
                    _loc_7 = int(event.param);
                    _loc_4.loadApplicationDetail(_loc_7);
                    break;
                }
                case GuildApprovalWindow.ALLOW_APPLICATION:
                {
                    app.showLoadingWindow();
                    _loc_7 = int(event.param);
                    _loc_4.allowApplication(_loc_7);
                    break;
                }
                case GuildApprovalWindow.REJECT_APPLICATION:
                {
                    app.showLoadingWindow();
                    _loc_7 = int(event.param);
                    _loc_4.rejectApplication(_loc_7);
                    break;
                }
                case GuildChatWindow.GUILD_CHAT_UPDATE:
                {
                    _loc_4.postChat(event.param as String);
                    break;
                }
                case UnitLockListWindow.DECIDE_UNIT_LOCK:
                {
                    app.showLoadingWindow();
                    _loc_2.lockUnits(event.param as Array);
                    break;
                }
                case UnitSortListWindow.DECIDE_UNIT_SORT:
                {
                    app.showLoadingWindow();
                    _loc_2.switchSortUnits(event.param as Array);
                    _loc_3.sortUnits(event.param as Array);
                    break;
                }
                case GarrisonUnitWindow.UNIT_SELECT_OK:
                {
                    _loc_8 = new Array();
                    for each (_loc_10 in event.param.units)
                    {
                        
                        if (_loc_10.name != "")
                        {
                            _loc_8.push(_loc_10.unitId);
                        }
                    }
                    PopUpManager.removePopUp(garrisonUnitWindow);
                    _loc_9 = SakuraProxy(facade.retrieveProxy(SakuraProxy.NAME));
                    _loc_9.removeSakuraSwf(garrisonUnitWindow.sakura);
                    _loc_2.selectGarrisonUnit(_loc_8, 0);
                    break;
                }
                case ConfirmWindow.CONFIRMED:
                {
                    app.showLoadingWindow();
                    _loc_3.allUnitRecovery(event.param as String);
                    break;
                }
                default:
                {
                    break;
                }
            }
            return;
        }// end function

        private function incrementMaxTasks(event:Event) : void
        {
            confirmIncrementMaxTasksCountWindow.removeEventListener(ConfirmIncrementMaxTasksCountWindow.CONFIRMED, incrementMaxTasks);
            var _loc_2:* = HomeProxy(facade.retrieveProxy(HomeProxy.NAME));
            app.showLoadingWindow();
            _loc_2.incrementMaxTasksCount();
            return;
        }// end function

        protected function handleRaidReportLoaded(param1:Array, param2:PlayerVO, param3:Boolean) : void
        {
            raidReportWindow.init(param1, param2, param3);
            app.popupWindow(raidReportWindow);
            return;
        }// end function

        public function startUnitSelectGarrison(param1:Array, param2:Array, param3:int) : void
        {
            var _loc_5:UnitVO = null;
            var _loc_6:SakuraProxy = null;
            var _loc_4:* = UnitProxy(facade.retrieveProxy(UnitProxy.NAME));
            for each (_loc_5 in param1)
            {
                
                _loc_4.loadAnimation(_loc_5);
            }
            for each (_loc_5 in param2)
            {
                
                _loc_4.loadAnimation(_loc_5);
            }
            garrisonUnitWindow.waitingUnits = param1;
            garrisonUnitWindow.selectedUnits = param2;
            garrisonUnitWindow.callLater(garrisonUnitWindow.init);
            app.popupWindow(garrisonUnitWindow, false);
            _loc_6 = SakuraProxy(facade.retrieveProxy(SakuraProxy.NAME));
            _loc_6.addSakuraSwf(garrisonUnitWindow.sakura, ApplicationMediator, "applicationMediator");
            return;
        }// end function

        private function handleTimerEvent(event:Event) : void
        {
            var _loc_2:* = GuildProxy(facade.retrieveProxy(GuildProxy.NAME));
            return;
        }// end function

        override public function listNotificationInterests() : Array
        {
            return [LoadGuildDetailCommand.LOAD_AFTER_GUILD_DETAIL, LoadGuildDetailCommand.GUILD_DETAIL_LOADED_BY_CITY, LoadGuildDetailCommand.RELOAD_GUILD_DETAIL, LevelUpCommand.APPLICATION_MEDIATOR_LEVELUP_FINISHED, ConfirmAllUnitRecoveryCommand.CONFIRM_ALL_UNIT_RECOVERY, UnitProxy.GUILD_MAMBER_UNITS, UnitProxy.HOME_UNITS_LOADED_BY_APPLICATION_MEDIATOR, UnitProxy.LEARN_SKILL_COMPLETE_BY_APPLICATION_MEDIATOR, UnitProxy.UNIT_RECOVERY_COMPLETE_BY_APPLICATION_MEDIATOR, GuildProxy.GUILD_DETAIL_BY_CITY, GuildProxy.ALLOW_APPLICATION_ERROR, GuildProxy.APPLICATION_DETAIL_LOADED, GuildProxy.CHAT_UPDATED, GuildProxy.SET_GUILD_CHAT, GuildProxy.SET_GUILD_CHAT_ERROR, HomeProxy.HOME_GUILDMEMBER_RAIDREPORT, HomeProxy.LOCK_UNITS_COMPLETE, HomeProxy.LOCK_UNITS_ERROR, HomeProxy.SORT_UNITS_COMPLETE, HomeProxy.SORT_UNITS_ERROR, AnimationProxy.LEVELUP_ANIMATION_FINISH_BY_APPLICATION_MEDIATOR, SHOW_LOADING_WINDOW, RELOAD_HOME_UNITS, ALL_UNIT_RECOVERY_COMPLETE, SHOW_ALERT_WINDOW, UNIT_IN, UNIT_OUT, TacticsMediator.TACTICS_UNIT_LIST, HomeMediator.HOME_UNIT_LOCK_LIST, HomeMediator.HOME_UNIT_SORT_LIST, HomeMediator.HOME_GARRISON_WINDOW_OPEN, LoaderProxy.LOGGED_IN_ERROR];
        }// end function

        protected function showAlert(param1:String) : void
        {
            var _loc_2:* = AlertWindow.show(param1);
            app.popupWindow(_loc_2, false);
            return;
        }// end function

    }
}
