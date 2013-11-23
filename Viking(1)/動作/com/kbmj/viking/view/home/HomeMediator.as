package com.kbmj.viking.view.home
{
    import com.kbmj.viking.controller.*;
    import com.kbmj.viking.controller.home.*;
    import com.kbmj.viking.controller.raid.*;
    import com.kbmj.viking.controller.sendArmy.*;
    import com.kbmj.viking.controller.tactics.*;
    import com.kbmj.viking.lib.*;
    import com.kbmj.viking.proxy.*;
    import com.kbmj.viking.proxy.home.*;
    import com.kbmj.viking.proxy.selectUnit.*;
    import com.kbmj.viking.proxy.tactics.*;
    import com.kbmj.viking.view.*;
    import com.kbmj.viking.view.city.*;
    import com.kbmj.viking.vo.*;
    import com.kbmj.viking.vo.home.*;
    import com.kbmj.viking.vo.tactics.*;
    import flash.display.*;
    import flash.events.*;
    import flash.geom.*;
    import flash.utils.*;
    import mx.collections.*;
    import mx.core.*;
    import mx.events.*;
    import mx.managers.*;
    import org.puremvc.as3.interfaces.*;

    public class HomeMediator extends BaseMediator
    {
        private var tutorialFinishedWindow:TutorialFinishedWindow;
        private var buildWindow:BuildWindow;
        private var productionWindow:ProductionWindow;
        private var levelUpWindow:LevelUpWindow;
        private var loader:Loader;
        private var shamBattleTargetListWindow:ShamBattleTargetListWindow;
        private var buildingWindow:BaseBuildingWindow;
        private var confirmStartContinuationWindow:ConfirmStartContinuationWindow;
        private var selectSleepUnitWindow:SelectSleepUnitWindow;
        private var sampleWindow:SampleWindow;
        private var galleryDetail:GalleryDetail;
        private var ceremonyUnitUI:UIComponent;
        private var expeditionWindow:ExpeditionWindow;
        private var noGuildAlertWindow:NoGuildAlertWindow;
        private var confirmPassYearWindow:ConfirmPassYearWindow;
        private var homeAllItem:HomeAllItem;
        private var randomAssistants:Array;
        private var galleryMasterProxy:MasterProxy;
        private var sacrificeWindow:SacrificeWindow;
        private var buildLevelRenderer:BuildLevelRenderer;
        private var ui:UIComponent;
        private var expedition2Window:Expedition2Window;
        private var homeAllGallery:HomeAllGallery;
        private var sacrificeConfirmedWindow:SacrificeConfirmedWindow;
        private var openingDialog:OpeningDialog;
        private var confirmDoubleExpWindow:ConfirmDoubleExpWindow;
        private var playFrameName:String;
        private var researchTutFlg:Boolean = false;
        private var homeAllSleepUnit:HomeAllSleepUnit;
        private var assistant:String;
        private var prohibitionPullUnitWindow:ProhibitionPullUnitWindow;
        private var guildApprovalWindow:GuildApprovalWindow;
        private var unitLevelUpWindow:UnitLevelUpWindow;
        private var homeAllUnit:HomeAllUnit;
        private var raidReportWindow:RaidReportWindow;
        private var eventMapWindow:EventMapWindow;
        private var ritualWindow:RitualWindow;
        private var mailDetailWindow:MailDetailWindow;
        private var galleryMastersArray:Array;
        private var tutorialWindow:TutorialWindow;
        private var fadeInTimer:Timer;
        private var continuationWindow:ContinuationWindow;
        private var replyMailWindow:ReplyMailWindow;
        private var ceremonyWindow:CeremonyWindow;
        private var reversePlayStartNum:int;
        private var expeditionPortalWindow:ExpeditionPortalWindow;
        private var confirmBuildWindow:ConfirmBuildWindow;
        private var playerRankLoader:Loader;
        private var actionButtonTimer:Timer;
        private var factionWindow:FactionWindow;
        private var confirmStartMatchWindow:ConfirmStartMatchWindow;
        private var equipmentDumpWindow:EquipmentDumpWindow;
        private var loginItemWindow:LoginItemWindow;
        private var commandEventNameArray:Array;
        private var unitListLoaderInfo:Object;
        private var mailListWindow:MailListWindow;
        private var checkQuestWindow:CheckQuestWindow;
        private var confirmDoubleDropWindow:ConfirmDoubleDropWindow;
        private var raidReportDitail:RaidReportDitail;
        private var changeImageWindow:ChangeImageWindow;
        private var collectUnitWindow:CollectUnitWindow;
        private var tutorialLoaderInfo:LoaderInfo;
        private var researchWindow:ResearchWindow;
        private var reversePlayStartName:String;
        private var homeEstablishment:HomeEstablishment;
        private var confirmAddAreaWindow:ConfirmAddAreaWindow;
        private var subjugationWindow:SubjugationWindow;
        private var colonyWindow:ColonyWindow;
        private var assistantMasterVO:AssistantMasterVO;
        private var dataDeleteCancelWindow:DataDeleteCancelWindow;
        private var galleryIndexArray:Array;
        private var admissionFactionWindow:AdmissionFactionWindow;
        private var nowDate:Date;
        private var reversePlayTimer:Timer;
        private var raidCommandWindow:RaidCommandWindow;
        private var unitIndex:int = -1;
        private var itemsDegradationWindow:ItemsDegradationWindow;
        private var homeAllUnitListWindow:HomeAllUnitListWindow;
        private var matchBattleDefenceReport:MatchBattleDefenceReport;
        private var confirmItemSummonWindow:ConfirmItemSummonWindow;
        private var reversePlayFrame:int;
        private var chengeIceCheckWindow:ChengeIceCheckWindow;
        private var confirmFinishContinuationWindow:ConfirmFinishContinuationWindow;
        private var adminNoticeWindow:AdminNoticeWindow;
        private var matchPortalWindow:MatchPortalWindow;
        private var expedition3Window:Expedition3Window;
        private var eventRegisterBool:Boolean = true;
        private var pullUnitCheckWindow:PullUnitCheckWindow;
        private var confirmCollectiveDumpWindow:ConfirmCollectiveDumpWindow;
        private var ritualCheckWindow:RitualCheckWindow;
        private var commandWindowArray:Array;
        public static const LOAD_ANNOUNCEMENT:String = NAME + "/notes/loadAnnouncement";
        public static const PREPARE_BUILDING_WINDOW:String = NAME + "/notes/prepareBuildingWindow";
        public static const RELOAD_AWAKE_UNIT:String = NAME + "notes/reloadAwakeUnit";
        public static const RELOAD_UNITS_AND_RESOURCES:String = NAME + "/notes/reloadUnitsAndResources";
        public static const NAME:String = "HomeMediator";
        public static const HOME_GARRISON_WINDOW_OPEN:String = NAME + "/notes/homeGarrisonWindowOpen";
        public static const RELOAD_HOME_UNITS_FROM_CEREMONY:String = NAME + "/notes/reloadHomeUnitsFromCeremony";
        public static const HOME_UNIT_SORT_LIST:String = NAME + "/notes/homeUnitSortList";
        public static const CONFIRM_CONTINUATION_FINISH:String = NAME + "/notes/confirmContinuationFinish";
        public static const HOME_UNIT_LOCK_LIST:String = NAME + "/notes/homeUnitLockList";
        public static const REINCARNATE:String = NAME + "/notes/reincarnate";
        public static const ENTER_CITY:String = NAME + "/notes/enterCityByHome";
        public static const CONFIRM_ITEM_SUMMON:String = NAME + "/notes/confirmItemSummon";
        public static const CONFIRM_EVENT_MAP_FINISH:String = NAME + "/notes/confirmEventMapFinish";
        public static const CHANGE_EQUIPMENT_LOADED:String = NAME + "/notes/changeEquipmentLoaded";
        public static const TUTORIAL_ID_MAX:int = 16;
        public static const GOTO_ALL_MAP:String = NAME + "/notes/gotoAllMap";
        public static const LOAD_RAID_EXPIRATION:String = NAME + "/notes/loadRaidExpiration";
        public static const EQUIPMENT_DUMP:String = "HomeAllItem/EquipmentDump";
        public static const LOAD_UNIT_AND_RESOURCE_OF_SACRIFICE:String = NAME + "/loadUnitAndResourceOfSacrifice";
        public static const PLAYER_LOADED_BY_HOME:String = "PlayerProxy/PlayerLoadedByHome";
        public static const IMAGE_CHANGE:String = NAME + "/notes/imageChange";
        public static const SET_EQUIPABILITY_JOB:String = "HomeAllItem/SetEquipabilityJob";
        public static const START_SEND_ARMY:String = NAME + "/notes/startSendArmy";
        public static const UPDATE_TASK:String = NAME + "/notes/updateTask";
        public static const LOAD_UNITS_FOR_BUILDING_WINDOW:String = NAME + "/notes/LoadUnitsForBuildingWindow";
        public static const RENAME:String = NAME + "/notes/rename";
        public static const PRODUCE_MAX_QUANTITY:String = "produceMaxQuantity";
        public static const RELOAD_HOME_RESOURCE:String = NAME + "/notes/reloadHomeResource";
        public static const LOAD_COFFINS:String = NAME + "/notes/loadCoffins";
        public static const RELOAD_HOME_UNITS:String = NAME + "/notes/reloadHomeUnits";
        public static const REJUVENATE:String = NAME + "/notes/rejuvenate";
        public static const SHOW_ALERT_WINDOW:String = NAME + "/notes/showAlertWindow";
        public static const NEXT_APPLICATION:String = NAME + "notes/nextApplication";
        public static const START_RAID:String = NAME + "/notes/startRaid";
        public static const PLAYER_LOADED_BY_BACK_HOME:String = "PlayerProxy/PlayerLoadedByBackHome";
        public static const UPDATE_POWER:String = NAME + "/notes/updatePower";
        public static const RELOAD_SLEEP_UNIT:String = NAME + "notes/reloadSleepunit";
        public static const SHOW_LOADING_WINDOW:String = NAME + "/notes/showLoadingWindow";
        public static const HOME_GUILD_DETAIL_ADD_MEMBER:String = NAME + "/guildDetailAddMember";
        public static const LOAD_GUILD_DETAIL:String = NAME + "/notes/loadGuildDetail";
        public static const LEVELUP:String = NAME + "HomeAllUnit/levelUp";

        public function HomeMediator(param1:Viking)
        {
            buildWindow = new BuildWindow();
            confirmBuildWindow = new ConfirmBuildWindow();
            productionWindow = new ProductionWindow();
            checkQuestWindow = new CheckQuestWindow();
            homeAllUnit = new HomeAllUnit();
            homeAllGallery = new HomeAllGallery();
            galleryDetail = new GalleryDetail();
            homeAllSleepUnit = new HomeAllSleepUnit();
            tutorialWindow = new TutorialWindow();
            factionWindow = new FactionWindow();
            admissionFactionWindow = new AdmissionFactionWindow();
            tutorialFinishedWindow = new TutorialFinishedWindow();
            levelUpWindow = new LevelUpWindow();
            openingDialog = new OpeningDialog();
            equipmentDumpWindow = new EquipmentDumpWindow();
            guildApprovalWindow = new GuildApprovalWindow();
            raidCommandWindow = new RaidCommandWindow();
            buildLevelRenderer = new BuildLevelRenderer();
            dataDeleteCancelWindow = new DataDeleteCancelWindow();
            confirmItemSummonWindow = new ConfirmItemSummonWindow();
            confirmAddAreaWindow = new ConfirmAddAreaWindow();
            confirmDoubleExpWindow = new ConfirmDoubleExpWindow();
            mailListWindow = new MailListWindow();
            confirmPassYearWindow = new ConfirmPassYearWindow();
            confirmDoubleDropWindow = new ConfirmDoubleDropWindow();
            confirmStartContinuationWindow = new ConfirmStartContinuationWindow();
            confirmStartMatchWindow = new ConfirmStartMatchWindow();
            confirmFinishContinuationWindow = new ConfirmFinishContinuationWindow();
            confirmCollectiveDumpWindow = new ConfirmCollectiveDumpWindow();
            mailDetailWindow = new MailDetailWindow();
            replyMailWindow = new ReplyMailWindow();
            chengeIceCheckWindow = new ChengeIceCheckWindow();
            selectSleepUnitWindow = new SelectSleepUnitWindow();
            pullUnitCheckWindow = new PullUnitCheckWindow();
            prohibitionPullUnitWindow = new ProhibitionPullUnitWindow();
            buildingWindow = new BaseBuildingWindow();
            ritualWindow = new RitualWindow();
            ritualCheckWindow = new RitualCheckWindow();
            sacrificeWindow = new SacrificeWindow();
            sacrificeConfirmedWindow = new SacrificeConfirmedWindow();
            noGuildAlertWindow = new NoGuildAlertWindow();
            itemsDegradationWindow = new ItemsDegradationWindow();
            sampleWindow = new SampleWindow();
            ceremonyWindow = new CeremonyWindow();
            homeEstablishment = new HomeEstablishment();
            homeAllItem = new HomeAllItem();
            unitLevelUpWindow = new UnitLevelUpWindow();
            researchWindow = new ResearchWindow();
            collectUnitWindow = new CollectUnitWindow();
            subjugationWindow = new SubjugationWindow();
            colonyWindow = new ColonyWindow();
            matchPortalWindow = new MatchPortalWindow();
            expeditionPortalWindow = new ExpeditionPortalWindow();
            expeditionWindow = new ExpeditionWindow();
            expedition2Window = new Expedition2Window();
            expedition3Window = new Expedition3Window();
            continuationWindow = new ContinuationWindow();
            eventMapWindow = new EventMapWindow();
            loginItemWindow = new LoginItemWindow();
            matchBattleDefenceReport = new MatchBattleDefenceReport();
            raidReportWindow = new RaidReportWindow();
            adminNoticeWindow = new AdminNoticeWindow();
            raidReportDitail = new RaidReportDitail();
            shamBattleTargetListWindow = new ShamBattleTargetListWindow();
            changeImageWindow = new ChangeImageWindow();
            homeAllUnitListWindow = new HomeAllUnitListWindow();
            nowDate = new Date();
            galleryIndexArray = new Array();
            commandWindowArray = [homeAllItem, homeAllUnit, homeEstablishment, productionWindow, tutorialWindow, mailListWindow, checkQuestWindow, researchWindow, raidReportWindow, homeAllGallery, shamBattleTargetListWindow];
            commandEventNameArray = [MailListWindow.CLOSED_MAIL_LIST_WINDOW];
            unitListLoaderInfo = new Object();
            actionButtonTimer = new Timer(50);
            reversePlayTimer = new Timer(30);
            fadeInTimer = new Timer(50);
            randomAssistants = ["secondDaughter"];
            super(NAME, param1);
            return;
        }// end function

        private function addAssistantSwf() : void
        {
            var animationProxy:AnimationProxy;
            var playerProxy:PlayerProxy;
            var homeProxy:* = HomeProxy(facade.retrieveProxy(HomeProxy.NAME));
            animationProxy = AnimationProxy(facade.retrieveProxy(AnimationProxy.NAME));
            playerProxy = PlayerProxy(facade.retrieveProxy(PlayerProxy.NAME));
            var labelName:String;
            if (homeProxy.firstTimeFlag)
            {
                labelName;
            }
            animationProxy.generalAnimationLoaded("assistants", assistant, labelName, app.home.assistantLayer, 0, 75);
            animationProxy.generalLoaders["assistants"][assistant].contentLoaderInfo.addEventListener(Event.COMPLETE, function (event:Event) : void
            {
                var e:* = event;
                playerProxy.loadAssistantRemark();
                playerProxy.assistantVO.periodicTimer.addEventListener(TimerEvent.TIMER, periodicRemark);
                animationProxy.generalLoaders["assistants"][assistant].content.addEventListener("ENLARGE_END", function () : void
                {
                    animationProxy.generalLoaders["assistants"][assistant].content.removeEventListener("ENLARGE_END", arguments.callee);
                    setAssistantRemark();
                    app.home.firstTimeCanvas.visible = true;
                    return;
                }// end function
                );
                return;
            }// end function
            );
            return;
        }// end function

        private function assistantRemark(event:Event) : void
        {
            app.home.onDescriptionOpen();
            return;
        }// end function

        private function handleSacrificePopupEvent(event:PopupEvent) : void
        {
            var _loc_2:* = HomeProxy(facade.retrieveProxy(HomeProxy.NAME));
            switch(event.type)
            {
                case SacrificeWindow.SACRIFICE:
                {
                    sacrificeConfirmedWindow.unit = event.param as UnitVO;
                    app.home.popupWindow(sacrificeConfirmedWindow);
                    break;
                }
                case SacrificeConfirmedWindow.SACRIFICE_UNIT_CONFIRMED:
                {
                    break;
                }
                default:
                {
                    break;
                }
            }
            return;
        }// end function

        private function checkAddChild() : void
        {
            var _loc_2:int = 0;
            var _loc_1:* = AnimationProxy(facade.retrieveProxy(AnimationProxy.NAME));
            while (_loc_2 < commandWindowArray.length)
            {
                
                if (app.home.contains(commandWindowArray[_loc_2]))
                {
                    if (commandWindowArray[_loc_2] == homeAllUnit)
                    {
                        removeHomeAllUnit();
                    }
                    else if (commandWindowArray[_loc_2] == tutorialWindow)
                    {
                        tutorialWindow.destructSWF();
                        _loc_1.generalRemoveAnimation("window", "common", commandWindowArray[_loc_2].windowLayer);
                        app.home.windowLayer.removeChild(commandWindowArray[_loc_2]);
                    }
                    else if (commandWindowArray[_loc_2] == researchWindow)
                    {
                        researchWindow.close();
                    }
                    else
                    {
                        app.home.windowLayer.removeChild(commandWindowArray[_loc_2]);
                        _loc_1.generalRemoveAnimation("window", "common", commandWindowArray[_loc_2].windowLayer);
                    }
                }
                _loc_2++;
            }
            app.home.actionButton.x = 490;
            app.home.notPressed.visible = false;
            return;
        }// end function

        private function setUnits() : void
        {
            var _loc_2:UnitProxy = null;
            app.removeLoadingWindow();
            resetAllUnitView();
            setAllUnitView();
            setAllUnitEquipment();
            if (!app.home.contains(commandWindowArray[1]))
            {
                return;
            }
            var _loc_1:* = SakuraProxy(facade.retrieveProxy(SakuraProxy.NAME));
            if (_loc_1.sakura)
            {
                _loc_1.sakura.close();
                _loc_2 = UnitProxy(facade.retrieveProxy(UnitProxy.NAME));
                _loc_2.homeUnitLoadedBool = true;
            }
            return;
        }// end function

        private function removeCommand(event:PopupEvent) : void
        {
            var _loc_2:* = AnimationProxy(facade.retrieveProxy(AnimationProxy.NAME));
            _loc_2.generalRemoveAnimation("window", "common", event.param.window.windowLayer);
            app.home.windowLayer.removeChild(event.param.window);
            app.home.notPressed.visible = false;
            app.home.removeButtons();
            return;
        }// end function

        private function windowAddSwf(param1, param2:Function, param3:String = "purpose_window", param4:int = 0, param5:int = 0) : void
        {
            var _loc_6:* = AnimationProxy(facade.retrieveProxy(AnimationProxy.NAME));
            AnimationProxy(facade.retrieveProxy(AnimationProxy.NAME)).generalAnimationLoaded("window", "general", param3, param1, param4, param5);
            _loc_6.generalLoaders["window"]["general"].contentLoaderInfo.addEventListener(Event.COMPLETE, param2);
            return;
        }// end function

        private function setCeremonySummonUnit(param1:UnitVO) : void
        {
            var homeProxy:HomeProxy;
            var summonUnit:* = param1;
            homeProxy = HomeProxy(facade.retrieveProxy(HomeProxy.NAME));
            var animationProxy:* = AnimationProxy(facade.retrieveProxy(AnimationProxy.NAME));
            var unitProxy:* = UnitProxy(facade.retrieveProxy(UnitProxy.NAME));
            ceremonyUnitUI = new UIComponent();
            loader = new Loader();
            loader.contentLoaderInfo.addEventListener(Event.COMPLETE, function (event:Event) : void
            {
                var e:* = event;
                var loaderInfo:* = LoaderInfo(e.target);
                MovieClip(loaderInfo.content).gotoAndStop("item_f_l");
                ceremonyWindow.finishAnimation(function () : void
                {
                    ceremonyWindow.addChildMessage(summonUnit, CeremonyMessageWindow.SUMMON_MESSAGE, homeProxy.homeVO.resourceVO);
                    return;
                }// end function
                );
                return;
            }// end function
            );
            loader.loadBytes(animationProxy.getUnitAnimation(summonUnit.jobMasterVO.code, 0));
            ceremonyUnitUI.addChild(loader);
            ceremonyWindow.unitLayer.addChild(ceremonyUnitUI);
            return;
        }// end function

        public function resetAllUnitView() : void
        {
            if (!app.home.contains(commandWindowArray[1]))
            {
                return;
            }
            var _loc_1:* = PlayerProxy(facade.retrieveProxy(PlayerProxy.NAME));
            if (_loc_1.playerVO.tutorialId < 4)
            {
                _loc_1.loadTutorial(PlayerProxy.INIT_TUTORIAL_STATE);
            }
            var _loc_2:* = HomeAllUnitProxy(facade.retrieveProxy(HomeAllUnitProxy.NAME));
            _loc_2.resetAllUnitView();
            homeAllUnit.commandWindowClose();
            return;
        }// end function

        private function setConfig(param1:ConfigVO) : void
        {
            app.allMap.config = param1;
            return;
        }// end function

        private function addFactionSwf(param1) : void
        {
            param1.removeAllChildren();
            var _loc_2:* = AnimationProxy(facade.retrieveProxy(AnimationProxy.NAME));
            var _loc_3:* = PlayerProxy(facade.retrieveProxy(PlayerProxy.NAME));
            _loc_2.generalAnimationLoaded("ui", "faction", "faction_0" + _loc_3.playerVO.factionId, param1);
            return;
        }// end function

        private function removeHomeAllGallery() : void
        {
            var _loc_1:* = HomeAllUnitProxy(facade.retrieveProxy(HomeAllUnitProxy.NAME));
            resetAllUnitView();
            if (app.home.windowLayer.contains(homeAllGallery))
            {
                app.home.windowLayer.removeChild(homeAllGallery);
            }
            return;
        }// end function

        private function removeHomeAllGalleryCommand(event:PopupEvent) : void
        {
            var _loc_2:* = HomeAllUnitProxy(facade.retrieveProxy(HomeAllUnitProxy.NAME));
            app.home.actionButton.x = 490;
            app.home.windowLayer.removeChild(event.param.window);
            app.home.notPressedShikihime.visible = false;
            app.home.removeButtons();
            removeHomeAllGallery();
            return;
        }// end function

        private function removeCollectWindowButton(event:PopupEvent) : void
        {
            var _loc_2:* = AnimationProxy(facade.retrieveProxy(AnimationProxy.NAME));
            _loc_2.generalRemoveAnimation("buttons", "mine", homeAllUnit.collectWindow.buttonLayer);
            _loc_2.generalRemoveAnimation("buttons", "train", homeAllUnit.collectWindow.buttonLayer);
            _loc_2.childRemoveAnimation("buttons", "common", "collectWindow", homeAllUnit.collectWindow.buttonLayer);
            removeCommand(event);
            return;
        }// end function

        private function getGalleryPosition(param1:int, param2:int) : Point
        {
            var _loc_3:* = param1 % homeAllGallery.perUnit;
            var _loc_4:int = 6;
            var _loc_5:* = Math.floor(_loc_3 / 6);
            var _loc_6:* = _loc_3 % 6;
            var _loc_7:* = new Point(0, 0);
            new Point(0, 0).y = _loc_5 * 87 + 30;
            _loc_7.x = _loc_6 * 90 + 115;
            return _loc_7;
        }// end function

        private function getLimitTime(param1:PlayerVO) : String
        {
            var _loc_2:String = "";
            var _loc_3:* = param1.deletedAt;
            if (_loc_3)
            {
                _loc_2 = _loc_3.slice(0, 10) + "  " + _loc_3.slice(11, 16);
            }
            return _loc_2;
        }// end function

        private function handleDegradationEvent(event:PopupEvent) : void
        {
            var _loc_2:* = HomeProxy(facade.retrieveProxy(HomeProxy.NAME));
            app.showLoadingWindow();
            _loc_2.degradation(event.param.params.production, event.param.params.quantity, event.param.nameArray);
            return;
        }// end function

        private function handleSampleWindow(event:Event) : void
        {
            ui.removeChild(loader);
            sampleWindow.windowLayer.removeChild(ui);
            return;
        }// end function

        private function addShikihimeList() : void
        {
            var animationProxy:* = AnimationProxy(facade.retrieveProxy(AnimationProxy.NAME));
            animationProxy.generalAnimationLoaded("ui", "shikihimeList", "w_1st_start", homeAllUnit.listCanvas, 0, -10, "ENLARGE_END", AnimationProxy.SHIKIHIME_LIST_LOAD_COMPLETE);
            animationProxy.generalLoaders["ui"]["shikihimeList"].contentLoaderInfo.addEventListener(Event.COMPLETE, function () : void
            {
                homeAllUnit.unitsCanvas.alpha = 0;
                actionButtonTimer.start();
                return;
            }// end function
            );
            return;
        }// end function

        private function initializeHome() : void
        {
            var homeProxy:HomeProxy;
            homeProxy = HomeProxy(facade.retrieveProxy(HomeProxy.NAME));
            var playerProxy:* = PlayerProxy(facade.retrieveProxy(PlayerProxy.NAME));
            var homeAllUnitProxy:* = HomeAllUnitProxy(facade.retrieveProxy(HomeAllUnitProxy.NAME));
            var homeAllSleepUnitProxy:* = HomeAllSleepUnitProxy(facade.retrieveProxy(HomeAllSleepUnitProxy.NAME));
            var skillProxy:* = SkillProxy(facade.retrieveProxy(SkillProxy.NAME));
            var taskProxy:* = TaskProxy(facade.retrieveProxy(TaskProxy.NAME));
            var configProxy:* = ConfigProxy(facade.retrieveProxy(ConfigProxy.NAME));
            playerProxy.loadPlayer(PLAYER_LOADED_BY_HOME);
            playerProxy.loadPlayerRank("initializePlayerRank");
            homeAllUnitProxy.allUnitInitialize(homeAllUnit);
            setBuildings();
            setPlayerProperties();
            setRandomAssistant();
            if (homeProxy.firstTimeFlag)
            {
                fadeInTimer.start();
                app.home.windowLayer.addChild(openingDialog);
                app.home.firstTimeBG.visible = true;
                app.home.fade.visible = true;
                openingDialog.addEventListener(OpeningDialog.CLOSE_WINDOW, function () : void
            {
                openingDialog.removeEventListener(OpeningDialog.CLOSE_WINDOW, arguments.callee);
                app.home.windowLayer.removeChild(openingDialog);
                app.home.firstTimeBG.visible = false;
                homeProxy.firstTimeFlag = false;
                return;
            }// end function
            );
                playerProxy.drawLoginItem();
                app.removeLoadingWindow();
            }
            else
            {
                app.home.fade.visible = false;
                app.home.firstTimeBG.visible = false;
                app.gameViewStack.selectedIndex = Viking.VIEW_INDEX_HOME;
                if (playerProxy.playerVO.tutorialId > 15 && playerProxy.playerVO.guild == null)
                {
                    playerProxy.loadSelectFaction(PlayerProxy.GET_FACTION_WITHOUT_TUTORIAL_COMPLETE);
                }
                else if (playerProxy.playerVO.tutorialId < 15)
                {
                    playerProxy.loadTutorial();
                }
                else
                {
                    playerProxy.drawLoginItem();
                    app.removeLoadingWindow();
                }
            }
            sendNotification(UPDATE_TASK);
            taskProxy.resumeTimer();
            addAssistantSwf();
            app.home.changeFaction("faction_0" + playerProxy.playerVO.factionId);
            var labelName:String;
            if (playerProxy.playerVO.playerRankId < 10)
            {
                labelName;
            }
            app.home.changeRank("rank_" + labelName + playerProxy.playerVO.playerRankId);
            app.home.remarkStart();
            addInfoWindow();
            app.home.firstHome = false;
            return;
        }// end function

        private function showRitualWindow() : void
        {
            var units:Array;
            var alertWindow:AlertWindow;
            var unitProxy:* = UnitProxy(facade.retrieveProxy(UnitProxy.NAME));
            units = unitProxy.unitsForRitual;
            if (units.length <= 0)
            {
                alertWindow = AlertWindow.show(Utils.i18n("homeMediatorUnitsCanNotCeremony"));
                app.home.popupWindow(alertWindow, false);
                return;
            }
            ritualWindow.callLater(function () : void
            {
                ritualWindow.units = units;
                ritualWindow.init();
                return;
            }// end function
            );
            app.home.popupWindow(ritualWindow);
            return;
        }// end function

        private function handleGalleryMouseEvent(event:Event) : void
        {
            var _loc_2:* = HomeProxy(facade.retrieveProxy(HomeProxy.NAME));
            var _loc_3:* = galleryIndexArray.indexOf(event.target);
            switch(event.type)
            {
                case MouseEvent.MOUSE_OVER:
                {
                    if (_loc_3 == unitIndex || _loc_3 == -1)
                    {
                        break;
                    }
                    if (unitIndex != -1)
                    {
                        MovieClip(galleryMastersArray[unitIndex].loader.contentLoaderInfo.content).gotoAndStop("item_f_l");
                    }
                    MovieClip(galleryMastersArray[_loc_3].loader.contentLoaderInfo.content).gotoAndPlay("walk_f_l");
                    unitIndex = _loc_3;
                    break;
                }
                case MouseEvent.MOUSE_OUT:
                {
                    MovieClip(galleryMastersArray[_loc_3].loader.contentLoaderInfo.content).gotoAndStop("item_f_l");
                    break;
                }
                default:
                {
                    break;
                }
            }
            return;
        }// end function

        private function handleTutorialEvent(event:PopupEvent) : void
        {
            var _loc_5:UnitVO = null;
            var _loc_6:Sakura = null;
            var _loc_2:* = UnitProxy(facade.retrieveProxy(UnitProxy.NAME));
            var _loc_3:* = HomeProxy(facade.retrieveProxy(HomeProxy.NAME));
            var _loc_4:* = PlayerProxy(facade.retrieveProxy(PlayerProxy.NAME));
            switch(event.type)
            {
                case HomeAllUnit.INIT_SAKURA_TMARK:
                {
                    _loc_5 = event.param.unit as UnitVO;
                    _loc_6 = event.param.sakura as Sakura;
                    if (_loc_4.playerVO.tutorialId <= 3)
                    {
                        initSakuraTmarks(_loc_5, _loc_6);
                    }
                    break;
                }
                default:
                {
                    break;
                }
            }
            return;
        }// end function

        private function setRandomAssistant() : void
        {
            trace("setRandomAssistant");
            trace(randomAssistants.length);
            var _loc_1:* = Math.random() * randomAssistants.length;
            trace("random value");
            trace(_loc_1);
            assistant = randomAssistants[_loc_1];
            trace("Assistant NAME?");
            trace(assistant);
            return;
        }// end function

        private function handleDumpPopupEvent(event:PopupEvent) : void
        {
            var _loc_2:* = HomeProxy(facade.retrieveProxy(HomeProxy.NAME));
            app.showLoadingWindow();
            _loc_2.collectiveDump(event.param as Array);
            return;
        }// end function

        private function setAnnouncements(param1:Array) : void
        {
            app.home.announcements = param1;
            return;
        }// end function

        public function setAllUnitEquipment() : void
        {
            var _loc_1:* = SakuraProxy(facade.retrieveProxy(SakuraProxy.NAME));
            var _loc_2:* = HomeProxy(facade.retrieveProxy(HomeProxy.NAME));
            if (_loc_1.sakura)
            {
                _loc_1.sakura.homeResource = _loc_2.homeVO.resourceVO;
            }
            return;
        }// end function

        public function allUnitEvent(event:Event) : void
        {
            var _loc_5:HomeProxy = null;
            var _loc_2:* = UnitProxy(facade.retrieveProxy(UnitProxy.NAME));
            var _loc_3:* = PlayerProxy(facade.retrieveProxy(PlayerProxy.NAME));
            var _loc_4:* = SkillProxy(facade.retrieveProxy(SkillProxy.NAME));
            switch(event.type)
            {
                case HomeAllUnit.DISMISS:
                {
                    _loc_5 = HomeProxy(facade.retrieveProxy(HomeProxy.NAME));
                    _loc_5.unitDismiss(homeAllUnit.unitDismissWindow.unit.unitId, HomeProxy.HOME_UNIT_DISMISS);
                    break;
                }
                default:
                {
                    break;
                }
            }
            return;
        }// end function

        private function shikihimeListChangeAnimation(event:PopupEvent) : void
        {
            var _loc_2:* = AnimationProxy(facade.retrieveProxy(AnimationProxy.NAME));
            homeAllUnit.unitAlphaTimer.stop();
            homeAllUnit.unitAlphaTimer.reset();
            var _loc_3:String = "End1";
            homeAllUnit.unitsCanvas.alpha = 0;
            if (event.param.frame == "start2")
            {
                _loc_3 = "End2";
            }
            else if (event.param.frame == "start3")
            {
                _loc_3 = "End3";
            }
            _loc_2.generalAnimationChange("ui", "shikihimeList", event.param.frame, _loc_3, AnimationProxy.SHIKIHIME_LIST_CHANGE_PAGE_COMPLETE);
            return;
        }// end function

        private function handleChatEvent(event:Event) : void
        {
            app.home.infoChat.visible = true;
            switch(event.type)
            {
                case "BUTTON_WORLD":
                {
                    app.home.chatButtonsAnimation("b_world");
                    app.home.guildChatWindow.chatsViewStack.selectedIndex = 3;
                    app.home.guildChatWindow.inputBox.visible = true;
                    app.home.guildChatWindow.enterButton.visible = false;
                    break;
                }
                case "BUTTON_GUILD":
                {
                    app.home.chatButtonsAnimation("b_guild");
                    app.home.guildChatWindow.chatsViewStack.selectedIndex = 0;
                    app.home.guildChatWindow.inputBox.visible = true;
                    break;
                }
                case "BUTTON_SYSTEM":
                {
                    app.home.chatButtonsAnimation("b_system");
                    app.home.guildChatWindow.chatsViewStack.selectedIndex = 2;
                    app.home.guildChatWindow.inputBox.visible = false;
                    break;
                }
                case "BUTTON_ALL":
                {
                    app.home.chatButtonsAnimation("b_all");
                    app.home.guildChatWindow.chatsViewStack.selectedIndex = 1;
                    app.home.guildChatWindow.inputBox.visible = false;
                    break;
                }
                default:
                {
                    break;
                }
            }
            return;
        }// end function

        private function handleIcePopupEvent(event:PopupEvent) : void
        {
            var _loc_4:UnitProxy = null;
            var _loc_2:* = HomeAllSleepUnitProxy(facade.retrieveProxy(HomeAllSleepUnitProxy.NAME));
            var _loc_3:* = HomeProxy(facade.retrieveProxy(HomeProxy.NAME));
            switch(event.type)
            {
                case HomeAllSleepUnit.CHECK_ICE:
                {
                    chengeIceCheckWindow.coffin = event.param.coffin as CoffinVO;
                    app.home.popupWindow(chengeIceCheckWindow, false);
                    chengeIceCheckWindow.init(_loc_3.homeVO.resourceVO);
                    break;
                }
                case HomeAllSleepUnit.UNIT_ICING_SLEEP:
                {
                    _loc_4 = UnitProxy(facade.retrieveProxy(UnitProxy.NAME));
                    selectSleepUnitWindow.units = _loc_4.homeWaitingUnits;
                    selectSleepUnitWindow.coffinId = int(event.param.coffinId);
                    app.home.popupWindow(selectSleepUnitWindow, false);
                    break;
                }
                case ChengeIceCheckWindow.CHANGE_ICE_OK:
                {
                    _loc_2.activateCoffin(int(event.param));
                    app.showLoadingWindow();
                    sendNotification(RELOAD_HOME_RESOURCE);
                    break;
                }
                case SelectSleepUnitWindow.SELECT_SLEEPING_UNIT:
                {
                    _loc_2.sleepUnit(int(event.param.coffinId), int(event.param.unitId));
                    break;
                }
                case HomeAllSleepUnit.AWAKE_UNIT:
                {
                    pullUnitCheckWindow.coffin = event.param.coffin as CoffinVO;
                    app.home.popupWindow(pullUnitCheckWindow, false);
                    break;
                }
                case PullUnitCheckWindow.AWAKE_UNIT_CONFIRMED:
                {
                    _loc_2.awakeUnit(event.param.coffinId);
                    break;
                }
                default:
                {
                    break;
                }
            }
            return;
        }// end function

        private function unitTimerEvent(event:Event) : void
        {
            homeAllUnit.unitsCanvas.alpha = homeAllUnit.unitsCanvas.alpha + 0.1;
            actionButtonTimer.stop();
            actionButtonTimer.reset();
            if (homeAllUnit.unitsCanvas.alpha >= 1)
            {
                homeAllUnit.unitAlphaTimer.stop();
                homeAllUnit.unitAlphaTimer.reset();
            }
            return;
        }// end function

        private function allUnitSkillPopupEvent(event:PopupEvent) : void
        {
            var _loc_2:* = UnitProxy(facade.retrieveProxy(UnitProxy.NAME));
            _loc_2.learnSkill(event.param.unitId, event.param.skill.skillId);
            return;
        }// end function

        private function shikihimeChangeAnimationTimer() : void
        {
            homeAllUnit.unitAlphaTimer.start();
            return;
        }// end function

        private function addSakuraSwf() : void
        {
            var homeAllUnitProxy:HomeAllUnitProxy;
            var sakuraProxy:SakuraProxy;
            var animationProxy:* = AnimationProxy(facade.retrieveProxy(AnimationProxy.NAME));
            homeAllUnitProxy = HomeAllUnitProxy(facade.retrieveProxy(HomeAllUnitProxy.NAME));
            sakuraProxy = SakuraProxy(facade.retrieveProxy(SakuraProxy.NAME));
            sakuraProxy.addSakuraSwf(homeAllUnit.sakura, HomeMediator, "home");
            Loader(sakuraProxy.sakura._swf_sakura.getChildAt(0)).contentLoaderInfo.addEventListener(Event.COMPLETE, function () : void
            {
                Loader(sakuraProxy.sakura._swf_sakura.getChildAt(0)).contentLoaderInfo.removeEventListener(Event.COMPLETE, arguments.callee);
                Loader(sakuraProxy.sakura._swf_sakura.getChildAt(0)).content.addEventListener("CLOSE", homeAllUnitProxy.handleIconEvents);
                return;
            }// end function
            );
            return;
        }// end function

        private function removeCommandCommon(event:PopupEvent) : void
        {
            var _loc_2:* = AnimationProxy(facade.retrieveProxy(AnimationProxy.NAME));
            _loc_2.generalRemoveAnimation("window", "common", event.param.window.windowLayer);
            app.home.windowLayer.removeChild(event.param.window);
            app.home.notPressed.visible = false;
            app.home.removeButtons();
            return;
        }// end function

        private function handleEstablishmentEvent(event:PopupEvent) : void
        {
            var _loc_2:* = HomeProxy(facade.retrieveProxy(HomeProxy.NAME));
            switch(event.type)
            {
                case ConfirmAddAreaWindow.CONFIRMED:
                {
                    _loc_2.addArea(int(event.param));
                    break;
                }
                case ConfirmDoubleExpWindow.CONFIRMED:
                {
                    app.showLoadingWindow();
                    _loc_2.startDoubleExp();
                    break;
                }
                case ConfirmPassYearWindow.CONFIRMED:
                {
                    app.showLoadingWindow();
                    _loc_2.passYear();
                    break;
                }
                case ConfirmDoubleDropWindow.CONFIRMED:
                {
                    app.showLoadingWindow();
                    _loc_2.doubleDrop();
                    break;
                }
                default:
                {
                    break;
                }
            }
            return;
        }// end function

        private function handleGalleryMouseClickEvent(event:Event) : void
        {
            var _loc_2:HomeProxy = null;
            var _loc_3:Array = null;
            var _loc_4:int = 0;
            _loc_2 = HomeProxy(facade.retrieveProxy(HomeProxy.NAME));
            switch(event.type)
            {
                case MouseEvent.CLICK:
                {
                    _loc_3 = _loc_2.homeVO.resourceVO.galleries;
                    galleryDetail.fireMaterialIconVisible = false;
                    galleryDetail.earthMaterialIconVisible = false;
                    galleryDetail.waterMaterialIconVisible = false;
                    galleryDetail.goldMaterialIconVisible = false;
                    galleryDetail.plantMaterialIconVisible = false;
                    _loc_4 = 0;
                    while (_loc_4 < _loc_3.length)
                    {
                        
                        if (_loc_3[_loc_4].masterVO.masterId == galleryMastersArray[unitIndex].masterId)
                        {
                            galleryDetail.fireMaterialIconVisible = _loc_3[_loc_4].fireMaterialFlag;
                            galleryDetail.earthMaterialIconVisible = _loc_3[_loc_4].earthMaterialFlag;
                            galleryDetail.waterMaterialIconVisible = _loc_3[_loc_4].waterMaterialFlag;
                            galleryDetail.goldMaterialIconVisible = _loc_3[_loc_4].goldMaterialFlag;
                            galleryDetail.plantMaterialIconVisible = _loc_3[_loc_4].plantMaterialFlag;
                            break;
                        }
                        _loc_4++;
                    }
                    galleryDetail.setDetailFrame(galleryMastersArray[unitIndex].code);
                    galleryDetail.gallery = galleryMastersArray[unitIndex];
                    app.home.popupWindow(galleryDetail, false);
                    MovieClip(galleryMastersArray[unitIndex].loader.contentLoaderInfo.content).gotoAndStop("item_f_l");
                    unitIndex = -1;
                    break;
                }
                default:
                {
                    break;
                }
            }
            return;
        }// end function

        private function alertWaitingUnitsCount() : Boolean
        {
            var _loc_2:AlertWindow = null;
            var _loc_1:* = UnitProxy(facade.retrieveProxy(UnitProxy.NAME));
            if (_loc_1.homeWaitingUnits.length <= 0)
            {
                _loc_2 = AlertWindow.show(Utils.i18n("homeMediatorUnitsCanNotBattle"));
                app.home.popupWindow(_loc_2, false);
                return true;
            }
            return false;
        }// end function

        private function shikihimeListTimer() : void
        {
            homeAllUnit.unitAlphaTimer.start();
            homeAllUnit.unitsCanvas.visible = true;
            homeAllUnit.unitStatus.visible = true;
            homeAllUnit.gatheringImage.visible = true;
            homeAllUnit.trainImage.visible = true;
            homeAllUnit.closeButton.visible = true;
            homeAllUnit.allUnitCommandImage.visible = true;
            return;
        }// end function

        private function removeHomeAllUnitCommand(event:PopupEvent) : void
        {
            var _loc_2:* = AnimationProxy(facade.retrieveProxy(AnimationProxy.NAME));
            var _loc_3:* = HomeAllUnitProxy(facade.retrieveProxy(HomeAllUnitProxy.NAME));
            var _loc_4:* = SakuraProxy(facade.retrieveProxy(SakuraProxy.NAME));
            var _loc_5:* = PlayerProxy(facade.retrieveProxy(PlayerProxy.NAME));
            if (PlayerProxy(facade.retrieveProxy(PlayerProxy.NAME)).playerVO.tutorialId <= TUTORIAL_ID_MAX)
            {
                _loc_5.loadTutorial(PlayerProxy.INIT_TUTORIAL_STATE);
            }
            _loc_2.generalRemoveAnimation("ui", "shikihimeList", homeAllUnit.listCanvas);
            _loc_4.removeSakuraSwf(homeAllUnit.sakura);
            app.home.actionButton.x = 490;
            app.home.windowLayer.removeChild(event.param.window);
            app.home.notPressedShikihime.visible = false;
            app.home.removeButtons();
            removeHomeAllUnit();
            return;
        }// end function

        private function actionTimerEvent(event:Event) : void
        {
            app.home.actionButton.x = app.home.actionButton.x + 16;
            return;
        }// end function

        private function handleRitualPopupEvent(event:PopupEvent) : void
        {
            var _loc_5:UnitVO = null;
            var _loc_2:* = HomeProxy(facade.retrieveProxy(HomeProxy.NAME));
            var _loc_3:* = UnitProxy(facade.retrieveProxy(UnitProxy.NAME));
            var _loc_4:* = SkillProxy(facade.retrieveProxy(SkillProxy.NAME));
            switch(event.type)
            {
                case RitualWindow.RITUAL_CHECK:
                {
                    ritualCheckWindow.setUnitAndItemName(event.param.unit);
                    app.home.popupWindow(ritualCheckWindow);
                    break;
                }
                case RitualWindow.RITUAL_WITH_UNLEARN_SKILL:
                {
                    ritualWindow.close();
                    app.showLoadingWindow();
                    _loc_2.useCrystal(event.param.unitId, event.param.unlearnSkillId);
                    break;
                }
                case RitualCheckWindow.RITUAL:
                {
                    _loc_5 = event.param.unit;
                    if (_loc_4.isSkillSlotAvailableForCrystal(_loc_5, _loc_5.item.masterVO.name))
                    {
                        ritualWindow.close();
                        app.showLoadingWindow();
                        _loc_2.useCrystal(_loc_5.unitId);
                    }
                    else
                    {
                        ritualWindow.selectSkill(_loc_5);
                    }
                    break;
                }
                default:
                {
                    break;
                }
            }
            return;
        }// end function

        private function reversePlay(event:Event) : void
        {
            var _loc_2:* = AnimationProxy(facade.retrieveProxy(AnimationProxy.NAME));
            _loc_2.generalAnimationReverse("ui", "shikihimeList");
            return;
        }// end function

        override public function handleNotification(param1:INotification) : void
        {
            var homeProxy:HomeProxy;
            var unitProxy:UnitProxy;
            var playerProxy:PlayerProxy;
            var animationProxy:AnimationProxy;
            var alertWindow:AlertWindow;
            var labelName:String;
            var tutorial:Object;
            var factionData:Object;
            var finishTutorial:Array;
            var guildData:Object;
            var guildPlayers:Array;
            var loadedObjects:Object;
            var res:Array;
            var error:Object;
            var announcements:Array;
            var product:Object;
            var playerVO:PlayerVO;
            var limitTime:String;
            var mercenaries:Array;
            var _homeAllUnitProxy:HomeAllUnitProxy;
            var summonUnit:UnitVO;
            var messageType:String;
            var unionUnit:UnitVO;
            var alertText:String;
            var reunionAlertText:String;
            var reunionError:Object;
            var renameAlertText:String;
            var renameError:Object;
            var message:String;
            var msg:String;
            var players:Array;
            var homeAllUnitProxy:HomeAllUnitProxy;
            var pages:Object;
            var unread:Boolean;
            var sacriceResult:Object;
            var products:Object;
            var matelials:String;
            var ceremony:Object;
            var response:Object;
            var coffins:Array;
            var summonResult:String;
            var unreadNoticeResult:Object;
            var result:Object;
            var report:Object;
            var tut:Object;
            var initData:Object;
            var window:BaseBuildingWindow;
            var mat:Object;
            var note:* = param1;
            var configProxy:* = ConfigProxy(facade.retrieveProxy(ConfigProxy.NAME));
            homeProxy = HomeProxy(facade.retrieveProxy(HomeProxy.NAME));
            unitProxy = UnitProxy(facade.retrieveProxy(UnitProxy.NAME));
            playerProxy = PlayerProxy(facade.retrieveProxy(PlayerProxy.NAME));
            var guildProxy:* = GuildProxy(facade.retrieveProxy(GuildProxy.NAME));
            var skillProxy:* = SkillProxy(facade.retrieveProxy(SkillProxy.NAME));
            var announcementProxy:* = AnnouncementProxy(facade.retrieveProxy(AnnouncementProxy.NAME));
            animationProxy = AnimationProxy(facade.retrieveProxy(AnimationProxy.NAME));
            var homeAllSleepUnitProxy:* = HomeAllSleepUnitProxy(facade.retrieveProxy(HomeAllSleepUnitProxy.NAME));
            var sakuraProxy:* = SakuraProxy(facade.retrieveProxy(SakuraProxy.NAME));
            var taskProxy:* = TaskProxy(facade.retrieveProxy(TaskProxy.NAME));
            var productionProxy:* = ProductionProxy(facade.retrieveProxy(ProductionProxy.NAME));
            trace(note.getName());
            switch(note.getName())
            {
                case ContinuationBattleFinishCommand.REMOVE_CONTINUATION_WINDOW:
                {
                    app.removeLoadingWindow();
                    app.home.windowLayer.removeChild(expeditionPortalWindow);
                    app.home.windowLayer.removeChild(continuationWindow);
                    taskProxy.resumeTimer();
                    break;
                }
                case ContinuationBattleFinishCommand.REMOVE_EVENT_MAP_WINDOW:
                {
                    app.removeLoadingWindow();
                    app.home.windowLayer.removeChild(expeditionPortalWindow);
                    app.home.windowLayer.removeChild(eventMapWindow);
                    taskProxy.resumeTimer();
                    break;
                }
                case ContinuationBattleFinishCommand.RELOAD_CONTINUATION_LEVEL:
                {
                    app.removeLoadingWindow();
                    continuationWindow.setContinuationLevel(playerProxy.playerVO.lastContinuationLevel, playerProxy.playerVO.continuationBattleRecord);
                    break;
                }
                case ContinuationBattleFinishCommand.RELOAD_EVENT_MAP_LEVEL:
                {
                    app.removeLoadingWindow();
                    eventMapWindow.setLevel(playerProxy.playerVO.lastEventMapLevel, playerProxy.playerVO.eventMapBattleRecord);
                    break;
                }
                case LoadFirstTierMastersCommand.FIRST_TIER_MASTERS_LOAD_COMPLETE:
                {
                    setConfig(configProxy.configVO);
                    break;
                }
                case HomeInitialLoadCompleteCommand.START_HOME:
                {
                    initializeHome();
                    break;
                }
                case ActivityStartCommand.ACTIVITY_STARTED:
                {
                    playerProxy.loadPlayer(PLAYER_LOADED_BY_HOME);
                    setPlayerProperties();
                    setBuildings();
                    setUnits();
                    break;
                }
                case ReloadHomeBuildingsCommand.HOME_BUILDINGS_RELOADED:
                {
                    setPlayer(playerProxy.playerVO);
                    setBuildings();
                    app.removeLoadingWindow();
                    break;
                }
                case TaskUpdateCommand.HOME_DATA_LOADED:
                case HomeProxy.HOME_DATA_LOADED:
                {
                    setBuildings();
                    sendNotification(RELOAD_HOME_UNITS);
                    break;
                }
                case PlayerProxy.PLAYER_LOADED_BY_BACK_HOME:
                {
                    app.home.changeFaction("faction_0" + playerProxy.playerVO.factionId);
                    if (playerProxy.playerVO.tutorialId <= TUTORIAL_ID_MAX)
                    {
                        playerProxy.loadTutorial(PlayerProxy.INIT_TUTORIAL_STATE);
                    }
                    labelName;
                    if (playerProxy.playerVO.playerRankId < 10)
                    {
                        labelName;
                    }
                    app.home.changeRank("rank_" + labelName + playerProxy.playerVO.playerRankId);
                    if (app.home.firstHome)
                    {
                        initializeHome();
                    }
                }
                case PlayerProxy.PLAYER_LOADED_BY_HOME:
                {
                    if (playerProxy.playerVO.tutorialId <= TUTORIAL_ID_MAX)
                    {
                        playerProxy.loadTutorial(PlayerProxy.INIT_TUTORIAL_STATE);
                    }
                    if (playerProxy.playerVO.guild)
                    {
                        app.showLoadingWindow();
                        guildProxy.updateChat();
                        guildProxy.getGuildDetail(playerProxy.playerVO.guild.id, GuildProxy.GUILD_DATA_LOADED);
                    }
                    setPlayer(playerProxy.playerVO);
                    app.home.tasks = taskProxy.getTasks();
                    app.home.questButton.visible = playerProxy.playerVO.tutorialId > TUTORIAL_ID_MAX ? (true) : (false);
                    app.home.tribulationButton.visible = playerProxy.playerVO.tutorialId > TUTORIAL_ID_MAX ? (false) : (true);
                    app.home.notPressedShikihime.visible = false;
                    break;
                }
                case PlayerProxy.PLAYER_LOADED_BY_TUTORIAL:
                {
                    if (playerProxy.playerVO.tutorialId <= TUTORIAL_ID_MAX)
                    {
                        playerProxy.loadTutorial(PlayerProxy.INIT_TUTORIAL_STATE);
                    }
                    app.home.questButton.visible = playerProxy.playerVO.tutorialId > TUTORIAL_ID_MAX ? (true) : (false);
                    app.home.tribulationButton.visible = playerProxy.playerVO.tutorialId > TUTORIAL_ID_MAX ? (false) : (true);
                    break;
                }
                case PlayerProxy.PLAYER_LOADED_CASE_BY_DOUBLE_EXP:
                case PlayerProxy.PLAYER_LOADED_CASE_BY_DOUBLE_DROP:
                {
                    app.home.homeEstablishment.player = playerProxy.playerVO;
                    app.removeLoadingWindow();
                    break;
                }
                case PlayerProxy.GET_FACTION_COMPLETE:
                case PlayerProxy.GET_TUTORIAL_COMPLETE:
                {
                    app.removeLoadingWindow();
                    tutorial = note.getBody() as Object;
                    app.home.windowLayer.addChild(tutorialWindow);
                    tutorialWindow.playerVO = playerProxy.playerVO;
                    app.home.notPressed.visible = true;
                    tutorialWindow.init(tutorial);
                    tutorialWindow.tutorialCanvas.visible = false;
                    windowAddSwfCommon(tutorialWindow.windowLayer, function (event:Event) : void
            {
                var e:* = event;
                var animationProxy:* = AnimationProxy(facade.retrieveProxy(AnimationProxy.NAME));
                animationProxy.generalLoaders["window"]["common"].content.addEventListener("ENLARGE_END", function (event:Event) : void
                {
                    tutorialWindow.tutorialCanvas.visible = true;
                    return;
                }// end function
                );
                return;
            }// end function
            , "right_400x460");
                    break;
                }
                case PlayerProxy.GET_FACTION_WITHOUT_TUTORIAL_COMPLETE:
                {
                    app.removeLoadingWindow();
                    factionData = note.getBody();
                    if (!factionData.forcedFactionArea)
                    {
                        factionWindow.init(factionData);
                        app.home.popupWindow(factionWindow);
                    }
                    else
                    {
                        playerProxy.admissionFaction(0, PlayerProxy.ADMISSION_FACTION_WITHOUT_TUTORIAL_COMPLETE, PlayerProxy.ADMISSION_FACTION_WITHOUT_TUTORIAL_ERROR);
                    }
                    break;
                }
                case PlayerProxy.GET_FACTION_WITHOUT_TUTORIAL_RETRY_COMPLETE:
                {
                    factionWindow.init(note.getBody());
                    break;
                }
                case PlayerProxy.LOAD_CURRENT_QUEST_COMPLETE:
                {
                    app.home.windowLayer.addChild(checkQuestWindow);
                    app.home.notPressed.visible = true;
                    checkQuestWindow.setQuest(playerProxy.currentQuest);
                    checkQuestWindow.questCanvas.visible = false;
                    windowAddSwfCommon(checkQuestWindow.windowLayer, function (event:Event) : void
            {
                var e:* = event;
                var animationProxy:* = AnimationProxy(facade.retrieveProxy(AnimationProxy.NAME));
                animationProxy.generalLoaders["window"]["common"].content.addEventListener("ENLARGE_END", function (event:Event) : void
                {
                    checkQuestWindow.questCanvas.visible = true;
                    return;
                }// end function
                );
                return;
            }// end function
            , "center_400x270");
                    if (!playerProxy.currentQuest)
                    {
                        checkQuestWindow.orderNot.visible = true;
                        checkQuestWindow.orderQuest.visible = false;
                    }
                    else
                    {
                        checkQuestWindow.orderNot.visible = false;
                        checkQuestWindow.orderQuest.visible = true;
                        if (playerProxy.currentQuest.subjugation_unit_quantity > 0)
                        {
                            checkQuestWindow.killsText.visible = true;
                        }
                        else
                        {
                            checkQuestWindow.killsText.visible = false;
                        }
                    }
                    break;
                }
                case PlayerProxy.ADMISSION_FACTION_COMPLETE:
                {
                    playerProxy.playerVO.factionId = note.getBody().factionId;
                    app.home.changeFaction("faction_0" + playerProxy.playerVO.factionId);
                    if (note.getBody().forcedFactionArea)
                    {
                        app.home.popupWindow(admissionFactionWindow);
                        admissionFactionWindow.factionId = playerProxy.playerVO.factionId;
                        admissionFactionWindow.addEventListener(AdmissionFactionWindow.CLOSE_WINDOW, function (event:Event) : void
            {
                admissionFactionWindow.removeEventListener(AdmissionFactionWindow.CLOSE_WINDOW, arguments.callee);
                tutorialWindow.selectFactionButton.visible = false;
                tutorialWindow.finishTutorial();
                return;
            }// end function
            );
                    }
                    else
                    {
                        tutorialWindow.selectFactionButton.visible = false;
                        tutorialWindow.finishTutorial();
                    }
                    break;
                }
                case PlayerProxy.ADMISSION_FACTION_WITHOUT_TUTORIAL_COMPLETE:
                {
                    PopUpManager.removePopUp(factionWindow);
                    playerProxy.playerVO.factionId = note.getBody().factionId;
                    app.home.changeFaction("faction_0" + playerProxy.playerVO.factionId);
                    app.removeLoadingWindow();
                    if (note.getBody().forcedFactionArea)
                    {
                        app.home.popupWindow(admissionFactionWindow);
                        admissionFactionWindow.factionId = playerProxy.playerVO.factionId;
                        admissionFactionWindow.addEventListener(AdmissionFactionWindow.CLOSE_WINDOW, function (event:Event) : void
            {
                admissionFactionWindow.removeEventListener(AdmissionFactionWindow.CLOSE_WINDOW, arguments.callee);
                playerProxy.drawLoginItem();
                return;
            }// end function
            );
                    }
                    else
                    {
                        playerProxy.drawLoginItem();
                    }
                    break;
                }
                case PlayerProxy.FINISH_TUTORIAL_COMPLETE:
                {
                    finishTutorial = note.getBody() as Array;
                    playerProxy.loadPlayer(PlayerProxy.PLAYER_LOADED_BY_TUTORIAL);
                    if (playerProxy.playerVO.tutorialId >= 16)
                    {
                        tutorialWindow.tutMarkClearTutorial.visible = false;
                        homeProxy.updatePower();
                    }
                    break;
                }
                case TutorialFinishedCommand.RELOAD_AFTER_TUTORIAL_FINISHED:
                {
                    app.removeLoadingWindow();
                    setPlayerProperties();
                    tutorialWindow.initClear();
                    tutorialWindow.visible = true;
                    break;
                }
                case GuildProxy.GUILD_DATA_LOADED:
                {
                    guildData = note.getBody() as Object;
                    guildPlayers = guildData.guild.players;
                    guildProxy.setGuildData(guildPlayers);
                    break;
                }
                case HomeProxy.HOME_CHANGELORD_START:
                {
                    app.removeLoadingWindow();
                    alertWindow = AlertWindow.show(Utils.i18n("localize171"));
                    app.home.popupWindow(alertWindow, false);
                    sendNotification(RELOAD_UNITS_AND_RESOURCES);
                    break;
                }
                case ReloadAfterPassingYearsCommand.RELOADED:
                case ReloadUnitsAndResourcesCommand.RELOADED:
                {
                    loadedObjects = note.getBody();
                    setAnnouncements(loadedObjects[AnnouncementProxy.ANNOUNCEMENT_LOADED] as Array);
                    setUnits();
                    setPlayerProperties();
                    app.removeLoadingWindow();
                    break;
                }
                case ReloadSleepUnitCommand.RELOADED:
                {
                    setUnits();
                    setPlayerProperties();
                    break;
                }
                case ReloadAwakeUnitCommand.RELOADED:
                {
                    setUnits();
                    setPlayerProperties();
                    break;
                }
                case HomeProxy.HOME_CHANGEJOB_START:
                {
                    alertWindow = AlertWindow.show(Utils.i18n("homeMediatorJobChengeComplete"));
                    app.home.popupWindow(alertWindow, false);
                    AlthingDescriptionWindow(buildingWindow).unitSelectedCloseWindow();
                    unitProxy.loadHomeUnits();
                    announcementProxy.loadAnnouncement();
                    sendNotification(RELOAD_HOME_RESOURCE);
                    break;
                }
                case HomeProxy.HOME_LORDUNITCANDIDATE_LOADED:
                {
                    res = note.getBody() as Array;
                    LordHouseDescriptionWindow(buildingWindow).lordUnitWindow(res);
                    break;
                }
                case LoadGuildDetailCommand.NO_GUILD_ALERT:
                {
                    app.home.popupWindow(noGuildAlertWindow);
                    break;
                }
                case HomeProxy.NORMAL_SUMMON_ERROR:
                case HomeProxy.NORMAL_UNION_ERROR:
                case HomeProxy.RECIPE_UNION_ERROR:
                case HomeProxy.AWAKE_UNION_ERROR:
                case HomeProxy.SACRIFICE_UNIT_ERROR:
                case HomeProxy.SUMMON_HERO_ERROR:
                {
                    ceremonyWindow.addChildCeremonyType();
                    ceremonyWindow.stopSummonAnimation();
                    ceremonyWindow.removeSacrificeUnit();
                }
                case HomeProxy.SUMMON_ITEM_ERROR:
                case HomeProxy.HOME_RAIDTARGET_LOAD_ERROR:
                case HomeProxy.HOME_UNIT_DISMISS_ERROR:
                case HomeProxy.HOME_CHANGEJOB_START_ERROR:
                case HomeProxy.HOME_CHANGELORD_START_ERROR:
                case HomeProxy.REFRESH_MERCENARY_ERROR:
                case HomeProxy.REAINCARNATE_ERROR:
                case HomeProxy.REJUVENATE_ERROR:
                case HomeProxy.IMAGE_CHANGE_ERROR:
                case HomeProxy.PLAYER_DATA_DELETE_ERROR:
                case HomeProxy.RENAME_ERROR:
                case HomeProxy.HOME_GUILDMEMBER_RAIDREPORT_ERROR:
                case HomeProxy.MAIL_SEND_ERROR:
                case HomeProxy.HOME_ADD_AREA_ERROR:
                case HomeProxy.DOUBLE_EXP_COMPLETE_ERROR:
                case HomeProxy.DOUBLE_DROP_COMPLETE_ERROR:
                case HomeProxy.USE_CRYSTAL_ERROR:
                case HomeProxy.INCREMENT_MAX_TASKS_ERROR:
                case HomeProxy.INCREMENT_MAX_UNITS_ERROR:
                case HomeProxy.UPGRADE_ITEM_ERROR:
                case BuildingProxy.ACTIVITY_START_ERROR:
                case ProductionProxy.PRODUCE_ERROR:
                case GatheringProxy.GATHERING_START_ERROR:
                case BuildingProxy.UPGRADE_ERROR:
                case BuildingProxy.RESTORATION_ERROR:
                case GuildProxy.CHAT_CREATE_ERROR:
                case GuildProxy.CHAT_UPDATE_ERROR:
                case UnitProxy.CHANGE_EQUIPMENT_ERROR:
                case UnitProxy.CHARGE_RECOVERY_ERROR:
                case PlayerProxy.FINISH_TUTORIAL_ERROR:
                case PlayerProxy.GET_TUTORIAL_ERROR:
                case PlayerProxy.ADMISSION_FACTION_ERROR:
                case HomeProxy.PROTECT_FROM_RAID_ERROR:
                case TaskProxy.FINISH_TASK_IMMEDIATELY_ERROR:
                case HomeAllSleepUnitProxy.COFFIN_ACTIVATED_ERROR:
                case HomeAllSleepUnitProxy.SET_SLEEPING_UNIT_ERROR:
                case HomeAllSleepUnitProxy.AWAKE_UNIT_ERROR:
                case HomeProxy.SUMMON_UNIT_ERROR:
                {
                    app.removeLoadingWindow();
                    error = note.getBody() as Object;
                    alertWindow = AlertWindow.show(error.head.error_message);
                    app.home.popupWindow(alertWindow, false);
                    break;
                }
                case UnitProxy.UNIT_RECOVERY_ERROR:
                {
                    app.removeLoadingWindow();
                    alertWindow = AlertWindow.show(note.getBody().head.error_message);
                    app.home.popupWindow(alertWindow, false);
                    sendNotification(RELOAD_HOME_RESOURCE);
                    break;
                }
                case PlayerProxy.ADMISSION_FACTION_WITHOUT_TUTORIAL_ERROR:
                {
                    playerProxy.loadSelectFaction(PlayerProxy.GET_FACTION_WITHOUT_TUTORIAL_RETRY_COMPLETE);
                    app.removeLoadingWindow();
                    alertWindow = AlertWindow.show(note.getBody().head.error_message);
                    app.home.popupWindow(alertWindow, false);
                    break;
                }
                case TaskUpdateCommand.TASK_UPDATED:
                {
                    app.home.tasks = note.getBody() as Array;
                    break;
                }
                case HomeProxy.HOME_RESOURCE_LOADED:
                {
                    setPlayerProperties();
                    app.removeLoadingWindow();
                    break;
                }
                case HomeProxy.PRODUCE_RESOURCE_LOADED:
                {
                    setPlayerProperties();
                    productionWindow.productions = productionProxy.productionsWithoutCache.find("reproduction", false);
                    productionWindow.reproductions = new ArrayCollection(productionProxy.reproductions);
                    productionWindow.upgradeItems = new ArrayCollection(productionProxy.upgradeItems);
                    productionWindow.maxProductQuantity = homeProxy.getLordHouseLevel();
                    app.removeLoadingWindow();
                    break;
                }
                case AnnouncementProxy.ANNOUNCEMENT_LOADED:
                {
                    announcements = note.getBody() as Array;
                    app.home.announcements = announcements;
                    break;
                }
                case MasterProxy.ASSISTANT_MASTER:
                {
                    assistantMasterVO = note.getBody() as AssistantMasterVO;
                    break;
                }
                case ProductionProxy.PRODUCE:
                {
                    product = note.getBody();
                    if (playerProxy.playerVO.tutorialId <= TUTORIAL_ID_MAX)
                    {
                        playerProxy.loadTutorial(PlayerProxy.INIT_TUTORIAL_STATE);
                    }
                    AlertWindow.show(product.result ? (Utils.i18n("homeMediatorProductionComplete", product.name, product.quantity)) : (Utils.i18n("homeMediatorProductionError", product.name)), "", AlertWindow.OK, app.home, function (event:CloseEvent) : void
            {
                sendNotification(RELOAD_HOME_RESOURCE, {eventName:HomeProxy.PRODUCE_RESOURCE_LOADED});
                return;
            }// end function
            );
                    break;
                }
                case ChangeEquipmentCommand.CHANGE_EQUIPMENT_LOADED:
                {
                    setUnits();
                    break;
                }
                case PrepareBuildingWindowCommand.SHOW_BUILDING_WINDOW:
                {
                    if (!app.home.systemManager.contains(buildingWindow))
                    {
                        window = note.getBody() as BaseBuildingWindow;
                        buildingWindow = window;
                        if (window is SquareDescriptionWindow)
                        {
                            sendNotification(LOAD_UNITS_FOR_BUILDING_WINDOW, window.buildingVO);
                        }
                        else
                        {
                            if (buildingWindow is LordHouseDescriptionWindow)
                            {
                                buildingWindow.windowLabel = "center_400x180";
                            }
                            else if (buildingWindow is UpgradableBuildingWindow)
                            {
                                buildingWindow.windowLabel = "center_400x270";
                            }
                            else
                            {
                                buildingWindow.windowLabel = "center_400x180";
                            }
                            app.home.popupWindow(buildingWindow);
                            resetAllUnitViewIfNecessary();
                        }
                    }
                    break;
                }
                case PrepareBuildingWindowCommand.UPDATE_DELAY_TIME:
                {
                    playerVO = note.getBody() as PlayerVO;
                    limitTime = getLimitTime(playerVO);
                    dataDeleteCancelWindow.delayTime = limitTime;
                    dataDeleteCancelWindow.addEventListener(DataDeleteCancelWindow.DELETE_CANCEL, deleteCancelHandler);
                    app.home.popupWindow(dataDeleteCancelWindow, false);
                    break;
                }
                case PrepareBuildingWindowCommand.SHOW_RITUAL_WINDOW:
                {
                    homeProxy.summonUnit();
                    break;
                }
                case PrepareBuildingWindowCommand.SHOW_EINHERJARIZE_WINDOW:
                {
                    showSacrificeWindow();
                    break;
                }
                case PrepareBuildingWindowCommand.SHOW_RITUAL_BTN:
                {
                    buttonAddSwf("buttons", "common", buildingWindow.windowLayer, function () : void
            {
                animationProxy.generalLoaders["buttons"]["common"].content.addEventListener(MouseEvent.CLICK, function () : void
                {
                    buildingWindow.onRitual();
                    return;
                }// end function
                );
                return;
            }// end function
            , "button_ceremony", 210, 240);
                    break;
                }
                case PrepareBuildingWindowCommand.CLOSE_RESERCH_WINDOW:
                {
                    researchWindow.clickCloseButton();
                    break;
                }
                case HomeProxy.MERCENARIES_LOADED:
                {
                    mercenaries = note.getBody() as Array;
                    SquareDescriptionWindow(buildingWindow).mercenaries = mercenaries;
                    app.home.popupWindow(buildingWindow);
                    break;
                }
                case HomeProxy.MERCENARIES_RELOADED:
                {
                    mercenaries = note.getBody() as Array;
                    SquareDescriptionWindow(buildingWindow).mercenaries = mercenaries;
                    app.removeLoadingWindow();
                    break;
                }
                case HomeProxy.EMPLOY_MERCENARY_COMPLETE:
                {
                    app.showLoadingWindow();
                    sendNotification(RELOAD_HOME_RESOURCE);
                    break;
                }
                case HomeProxy.EMPLOY_MERCENARY_COMPLETE:
                {
                    mercenaries = note.getBody() as Array;
                    SquareDescriptionWindow(buildingWindow).mercenaries = mercenaries;
                    app.removeLoadingWindow();
                    break;
                }
                case HomeProxy.HOME_UNIT_DISMISS:
                {
                    app.showLoadingWindow();
                    playerProxy.loadPlayer(PLAYER_LOADED_BY_HOME);
                    sendNotification(RELOAD_HOME_UNITS);
                    break;
                }
                case HomeProxy.HOME_UNIT_DISMISS_FROM_CEREMONY:
                {
                    app.showLoadingWindow();
                    playerProxy.loadPlayer(PLAYER_LOADED_BY_HOME);
                    sendNotification(RELOAD_HOME_UNITS_FROM_CEREMONY, UnitProxy.HOME_UNITS_LOADED_FROM_CEREMONY);
                    break;
                }
                case HomeProxy.DOUBLE_EXP_COMPLETE:
                {
                    playerProxy.loadPlayer(PlayerProxy.PLAYER_LOADED_CASE_BY_DOUBLE_EXP);
                    break;
                }
                case HomeProxy.DOUBLE_DROP_COMPLETE:
                {
                    playerProxy.loadPlayer(PlayerProxy.PLAYER_LOADED_CASE_BY_DOUBLE_DROP);
                    break;
                }
                case HomeProxy.EVIL_POINT_COMPLETE:
                {
                    app.removeLoadingWindow();
                    subjugationWindow.evilPoints = note.getBody() as Array;
                    app.home.windowLayer.addChild(subjugationWindow);
                    subjugationWindow.playerStatus.playerVO = playerProxy.playerVO;
                    subjugationWindow.productionInfoWindow.playerVO = playerProxy.playerVO;
                    addFactionSwf(subjugationWindow.factionLayer);
                    addPlayerRankSwf(subjugationWindow.rankLayer);
                    break;
                }
                case HomeProxy.COLONY_COMPLETE:
                {
                    app.removeLoadingWindow();
                    colonyWindow.colonies = note.getBody().colonies;
                    colonyWindow.guild = note.getBody().guild;
                    colonyWindow.forcedFactionArea = note.getBody().forcedFactionArea;
                    colonyWindow.playerVO = playerProxy.playerVO;
                    app.home.windowLayer.addChild(colonyWindow);
                    colonyWindow.playerStatus.playerVO = playerProxy.playerVO;
                    colonyWindow.productionInfoWindow.playerVO = playerProxy.playerVO;
                    addFactionSwf(colonyWindow.factionLayer);
                    addPlayerRankSwf(colonyWindow.rankLayer);
                    break;
                }
                case HomeProxy.COLONY_RELOADED:
                {
                    colonyWindow.colonies = note.getBody().colonies;
                    colonyWindow.guild = note.getBody().guild;
                    break;
                }
                case HomeProxy.EXPEDITION_POINT_COMPLETE:
                {
                    app.removeLoadingWindow();
                    if (playerProxy.playerVO.playerRankId < ExpeditionWindow.MINIMUM_RANK)
                    {
                        alertWindow = AlertWindow.show(Utils.i18n("localize172"));
                        app.home.popupWindow(alertWindow, false);
                        break;
                    }
                    expeditionWindow.evilPoints = note.getBody() as Array;
                    app.home.windowLayer.addChild(expeditionWindow);
                    expeditionWindow.playerStatus.playerVO = playerProxy.playerVO;
                    expeditionWindow.productionInfoWindow.playerVO = playerProxy.playerVO;
                    expeditionWindow.setExpeditionRank(playerProxy.playerVO.playerRankId);
                    addFactionSwf(expeditionWindow.factionLayer);
                    addPlayerRankSwf(expeditionWindow.rankLayer);
                    break;
                }
                case HomeProxy.EXPEDITION2_POINT_COMPLETE:
                {
                    app.removeLoadingWindow();
                    if (playerProxy.playerVO.playerRankId < Expedition2Window.MINIMUM_RANK)
                    {
                        alertWindow = AlertWindow.show(Utils.i18n("localize172"));
                        app.home.popupWindow(alertWindow, false);
                        break;
                    }
                    expedition2Window.evilPoints = note.getBody() as Array;
                    app.home.windowLayer.addChild(expedition2Window);
                    expedition2Window.playerStatus.playerVO = playerProxy.playerVO;
                    expedition2Window.productionInfoWindow.playerVO = playerProxy.playerVO;
                    expedition2Window.setExpeditionRank(playerProxy.playerVO.playerRankId);
                    addFactionSwf(expedition2Window.factionLayer);
                    addPlayerRankSwf(expedition2Window.rankLayer);
                    break;
                }
                case HomeProxy.EXPEDITION3_POINT_COMPLETE:
                {
                    app.removeLoadingWindow();
                    if (playerProxy.playerVO.playerRankId < Expedition3Window.MINIMUM_RANK)
                    {
                        alertWindow = AlertWindow.show(Utils.i18n("localize172"));
                        app.home.popupWindow(alertWindow, false);
                        break;
                    }
                    expedition3Window.evilPoints = note.getBody() as Array;
                    app.home.windowLayer.addChild(expedition3Window);
                    expedition3Window.setPlayerStatus(playerProxy.playerVO);
                    addFactionSwf(expedition3Window.factionLayer);
                    addPlayerRankSwf(expedition3Window.rankLayer);
                    break;
                }
                case HomeProxy.CONTINUATION_POINT_COMPLETE:
                {
                    app.removeLoadingWindow();
                    continuationWindow.evilPoints = note.getBody() as Array;
                    app.home.windowLayer.addChild(continuationWindow);
                    continuationWindow.setPlayerStatus(playerProxy.playerVO);
                    addFactionSwf(continuationWindow.factionLayer);
                    addPlayerRankSwf(continuationWindow.rankLayer);
                    break;
                }
                case HomeProxy.EVENT_MAP_POINT_COMPLETE:
                {
                    app.removeLoadingWindow();
                    eventMapWindow.evilPoints = note.getBody() as Array;
                    app.home.windowLayer.addChild(eventMapWindow);
                    eventMapWindow.setPlayerStatus(playerProxy.playerVO);
                    addFactionSwf(eventMapWindow.factionLayer);
                    addPlayerRankSwf(eventMapWindow.rankLayer);
                    break;
                }
                case HomeProxy.INCREMENT_MAX_TASKS_COMPLETE:
                {
                    app.showLoadingWindow();
                    playerProxy.loadPlayer(PLAYER_LOADED_BY_HOME);
                    sendNotification(UPDATE_POWER);
                    break;
                }
                case HomeProxy.INCREMENT_MAX_UNITS_COMPLETE:
                {
                    app.showLoadingWindow();
                    alertWindow = AlertWindow.show("式姫枠を増加しました。");
                    app.home.popupWindow(alertWindow, false);
                    playerProxy.loadPlayer(PLAYER_LOADED_BY_HOME);
                    sendNotification(UPDATE_POWER);
                    break;
                }
                case HomeProxy.UPGRADE_ITEM_COMPLETE:
                {
                    app.showLoadingWindow();
                    alertWindow = AlertWindow.show(note.getBody() as String);
                    app.home.popupWindow(alertWindow, false);
                    sendNotification(RELOAD_HOME_RESOURCE, {eventName:HomeProxy.PRODUCE_RESOURCE_LOADED});
                    break;
                }
                case LevelUpCommand.HOME_LEVELUP_FINISHED:
                case UnitProxy.HOME_LEVELUP_FINISH:
                {
                    animationProxy.playLvUpAnimation(sakuraProxy.sakura.lvUpAnimeCanvas, sakuraProxy.sakura.unit);
                    unitLevelUpWindow.init();
                    unitLevelUpWindow.preUnit = sakuraProxy.sakura.unit;
                    unitLevelUpWindow.runLevelUp = true;
                    break;
                }
                case UnitProxy.HOME_UNITS_LOADED:
                {
                    setUnits();
                    if (unitLevelUpWindow.runLevelUp)
                    {
                        unitLevelUpWindow.afterUnit = unitProxy.getHomeUnitById(unitLevelUpWindow.preUnit.unitId);
                        app.home.popupWindow(unitLevelUpWindow, false);
                        unitLevelUpWindow.runLevelUp = false;
                    }
                    break;
                }
                case UnitProxy.HOME_UNITS_LOADED_FROM_CEREMONY:
                {
                    setUnits();
                    ceremonyWindow.homeAllUnits = unitProxy.homeWaitingUnits;
                    ceremonyWindow.addChildDismissMessage();
                    break;
                }
                case UnitProxy.RELOAD_HP_BAR_DRAW:
                {
                    _homeAllUnitProxy = HomeAllUnitProxy(facade.retrieveProxy(HomeAllUnitProxy.NAME));
                    _homeAllUnitProxy.resetHpBar();
                    break;
                }
                case ReloadHomeUnitsFromCeremonyCommand.LOADED_COMPLETE_BY_SUMMON:
                {
                    setUnits();
                    ceremonyWindow.homeAllUnits = unitProxy.homeWaitingUnits;
                    setCeremonySummonUnit(homeProxy.summonedUnit);
                    break;
                }
                case ReloadHomeUnitsFromCeremonyCommand.LOADED_COMPLETE_BY_NORMAL_SUMMON:
                {
                    setUnits();
                    ceremonyWindow.homeAllUnits = unitProxy.homeWaitingUnits;
                    summonUnit = new UnitVO();
                    summonUnit = unitProxy.homeWaitingUnits[(unitProxy.homeWaitingUnits.length - 1)];
                    ceremonyUnitUI = new UIComponent();
                    loader = new Loader();
                    loader.contentLoaderInfo.addEventListener(Event.COMPLETE, function (event:Event) : void
            {
                var e:* = event;
                var loaderInfo:* = LoaderInfo(e.target);
                MovieClip(loaderInfo.content).gotoAndStop("item_f_l");
                ceremonyWindow.finishAnimation(function () : void
                {
                    ceremonyWindow.addChildMessage(summonUnit, CeremonyMessageWindow.NORMAL_SUMMON_MESSAGE, homeProxy.homeVO.resourceVO);
                    return;
                }// end function
                );
                return;
            }// end function
            );
                    loader.loadBytes(animationProxy.getUnitAnimation(summonUnit.jobMasterVO.code, 0));
                    ceremonyUnitUI.addChild(loader);
                    ceremonyWindow.unitLayer.addChild(ceremonyUnitUI);
                    break;
                }
                case ReloadHomeUnitsFromCeremonyCommand.LOADED_COMPLETE_BY_AWAKE_UNION:
                {
                    messageType = CeremonyMessageWindow.AWAKE_UNION_MESSAGE;
                }
                case ReloadHomeUnitsFromCeremonyCommand.LOADED_COMPLETE_BY_UNION:
                {
                    if (!messageType)
                    {
                        messageType = CeremonyMessageWindow.UNION_MESSAGE;
                    }
                    setUnits();
                    ceremonyWindow.homeAllUnits = unitProxy.homeWaitingUnits;
                    unionUnit = new UnitVO();
                    unionUnit = unitProxy.homeWaitingUnits[(unitProxy.homeWaitingUnits.length - 1)];
                    ceremonyUnitUI = new UIComponent();
                    loader = new Loader();
                    loader.contentLoaderInfo.addEventListener(Event.COMPLETE, function (event:Event) : void
            {
                var e:* = event;
                var loaderInfo:* = LoaderInfo(e.target);
                MovieClip(loaderInfo.content).gotoAndStop("item_f_l");
                ceremonyWindow.finishAnimation(function () : void
                {
                    ceremonyWindow.addChildMessage(unionUnit, messageType, homeProxy.homeVO.resourceVO);
                    return;
                }// end function
                );
                return;
            }// end function
            );
                    loader.loadBytes(animationProxy.getUnitAnimation(unionUnit.jobMasterVO.code, 0));
                    ceremonyUnitUI.addChild(loader);
                    ceremonyWindow.unitLayer.addChild(ceremonyUnitUI);
                    break;
                }
                case UnitProxy.LEARN_SKILL_COMPLETE:
                {
                    app.removeLoadingWindow();
                    alertText;
                    if (note.getBody().old_skill_id)
                    {
                        alertText = Utils.i18n("homeMediatorSkillLearnForget", skillProxy.skills[note.getBody().old_skill_id].nameLabel);
                    }
                    alertText = alertText + Utils.i18n("homeMediatorSkillLearn", skillProxy.skills[note.getBody().new_skill_id].nameLabel);
                    alertWindow = AlertWindow.show(alertText);
                    app.home.popupWindow(alertWindow, false);
                    sendNotification(RELOAD_HOME_UNITS);
                    break;
                }
                case ReunionCommand.REUNION_LOADED:
                {
                    app.removeLoadingWindow();
                    reunionAlertText;
                    reunionAlertText = Utils.i18n("localize173");
                    alertWindow = AlertWindow.show(reunionAlertText);
                    app.home.popupWindow(alertWindow, false);
                    break;
                }
                case UnitProxy.REUNION_ERROR:
                {
                    app.removeLoadingWindow();
                    reunionError = note.getBody() as Object;
                    alertWindow = AlertWindow.show(reunionError.head.error_message);
                    app.home.popupWindow(alertWindow, false);
                    break;
                }
                case RenameCommand.RENAME_LOADED:
                {
                    app.removeLoadingWindow();
                    renameAlertText;
                    renameAlertText = Utils.i18n("localize174");
                    alertWindow = AlertWindow.show(renameAlertText);
                    app.home.popupWindow(alertWindow, false);
                    break;
                }
                case UnitProxy.RENAME_ERROR:
                {
                    app.removeLoadingWindow();
                    renameError = note.getBody() as Object;
                    alertWindow = AlertWindow.show(renameError.head.error_message);
                    app.home.popupWindow(alertWindow, false);
                    break;
                }
                case ChargeRecoveryCommand.CHARGE_RECOVERY_LOADED:
                {
                    app.removeLoadingWindow();
                    alertWindow = AlertWindow.show(Utils.i18n("localize175") + "HP" + Utils.i18n("localize176"));
                    app.home.popupWindow(alertWindow, false);
                    break;
                }
                case UnitProxy.UNIT_RECOVERY_COMPLETE:
                {
                    message = note.getBody() as String;
                    if (message)
                    {
                        alertWindow = AlertWindow.show(message);
                        app.home.popupWindow(alertWindow, false);
                    }
                    sendNotification(RELOAD_HOME_UNITS);
                    setPlayerProperties();
                    break;
                }
                case TaskUpdateCommand.SHOW_LOADING_WINDOW:
                {
                    if (playerProxy.playerVO.tutorialId == 11 && researchWindow)
                    {
                        playerProxy.loadTutorial(PlayerProxy.INIT_TUTORIAL_STATE);
                    }
                    app.showLoadingWindow(note.getBody());
                    break;
                }
                case TutorialFinishedCommand.SHOW_LOADING_WINDOW:
                case TaskUpdateCommand.SHOW_LOADING_WINDOW:
                case PrepareBuildingWindowCommand.SHOW_LOADING_WINDOW:
                case LevelUpCommand.SHOW_LOADING_WINDOW:
                case SHOW_LOADING_WINDOW:
                {
                    app.showLoadingWindow(note.getBody());
                    break;
                }
                case SHOW_ALERT_WINDOW:
                {
                    alertText = note.getBody() as String;
                    alertWindow = AlertWindow.show(alertText);
                    app.home.popupWindow(alertWindow, false);
                    break;
                }
                case LevelUpCommand.HOME_SELECT_SKILL:
                {
                    levelUpWindow.unit = sakuraProxy.sakura.unit;
                    levelUpWindow.skills = new ArrayCollection(note.getBody() as Array);
                    app.popupWindow(levelUpWindow);
                    break;
                }
                case HomeProxy.HOME_EQUIPMENT_COLLECTIVE_DUMP_ERROR:
                {
                    alertWindow = AlertWindow.show(Utils.i18n("homeMediatorCollectiveDumpError"));
                    app.home.popupWindow(alertWindow, false);
                }
                case HomeProxy.HOME_EQUIPMENT_COLLECTIVE_DUMP:
                case HomeProxy.HOME_EQUIPMENT_DUMP:
                {
                    sendNotification(RELOAD_HOME_RESOURCE);
                    break;
                }
                case AnimationProxy.LEVELUP_ANIMATION_FINISH:
                {
                    msg = unitProxy.unitLvCap(animationProxy.lvUpUnit);
                    if (msg != null)
                    {
                        alertWindow = AlertWindow.show(msg);
                        app.home.popupWindow(alertWindow, false);
                    }
                    sendNotification(RELOAD_HOME_UNITS);
                    break;
                }
                case AnimationProxy.SHIKIHIME_LIST_LOAD_COMPLETE:
                {
                    shikihimeListTimer();
                    break;
                }
                case AnimationProxy.SHIKIHIME_LIST_CHANGE_PAGE_COMPLETE:
                {
                    shikihimeChangeAnimationTimer();
                    break;
                }
                case HomeProxy.HOME_RAIDTARGET_NOTORIETY:
                {
                    players = note.getBody() as Array;
                    raidCommandWindow.raidSelectTargetWindow.targetNotoriety = players;
                    raidCommandWindow.setRaidTarget();
                    break;
                }
                case HomeProxy.HOME_RAIDTARGET_RIVAL:
                {
                    players = note.getBody() as Array;
                    raidCommandWindow.raidSelectTargetWindow.targetRival = players;
                    raidCommandWindow.setRaidTarget();
                    break;
                }
                case HomeProxy.HOME_RAIDTARGET_REVENGE:
                {
                    players = note.getBody() as Array;
                    raidCommandWindow.raidSelectTargetWindow.targetRevenge = players;
                    raidCommandWindow.setRaidTarget();
                    break;
                }
                case HomeProxy.PLAYER_DATA_DELETED:
                {
                    alertWindow = AlertWindow.show(Utils.i18n("homeMediatorDeleteGameData"));
                    app.home.popupWindow(alertWindow, false);
                    sendNotification(RELOAD_HOME_RESOURCE);
                    break;
                }
                case HomeProxy.PLAYER_DATA_DELETE_CANCEL:
                {
                    alertWindow = AlertWindow.show(Utils.i18n("homeMediatorDeleteGameDataCancel"));
                    app.home.popupWindow(alertWindow, false);
                    sendNotification(RELOAD_HOME_RESOURCE);
                    break;
                }
                case LoadRaidExpirationCommand.RAID_EXPIRATION_LOADED:
                {
                    raidCommandWindow.player = note.getBody() as PlayerVO;
                    app.home.popupWindow(raidCommandWindow);
                    break;
                }
                case LoadRaidExpirationCommand.RAID_EXPIRATION_RELOADED:
                {
                    raidCommandWindow.player = note.getBody() as PlayerVO;
                    app.removeLoadingWindow();
                    break;
                }
                case StartSelectUnitForSendArmyCommand.NO_UNITS_FOR_SEND_ARMY:
                {
                    alertWindow = AlertWindow.show(Utils.i18n("homeMediatorDeleteGameDataCancel"));
                    app.home.popupWindow(alertWindow, false);
                    break;
                }
                case BackHomeCommand.BACK_HOME:
                {
                    homeAllUnitProxy = HomeAllUnitProxy(facade.retrieveProxy(HomeAllUnitProxy.NAME));
                    if (playerProxy.playerVO.tutorialId <= TUTORIAL_ID_MAX)
                    {
                        playerProxy.loadTutorial(PlayerProxy.INIT_TUTORIAL_STATE);
                    }
                    playerProxy.loadPlayer(PLAYER_LOADED_BY_BACK_HOME);
                    playerProxy.loadPlayerRank("initializePlayerRank");
                    homeAllUnitProxy.allUnitInitialize(homeAllUnit);
                    taskProxy.resumeTimer();
                    homeProxy.loadHomeResource();
                    break;
                }
                case HomeProxy.REJUVENATE_COMPLETE:
                case HomeProxy.REAINCARNATE_COMPLETE:
                case HomeProxy.IMAGE_CHANGE_COMPLETE:
                case HomeProxy.RENAME_COMPLETE:
                {
                    sendNotification(RELOAD_HOME_UNITS);
                    break;
                }
                case HomeProxy.PROTECT_FROM_RAID_COMPLETE:
                {
                    sendNotification(LOAD_RAID_EXPIRATION, false);
                    break;
                }
                case HomeProxy.MAIL_LIST_LOADED:
                {
                    pages = note.getBody() as Object;
                    app.removeLoadingWindow();
                    checkAddChild();
                    mailListWindow.setMails(homeProxy.mails, pages);
                    app.home.windowLayer.addChild(mailListWindow);
                    app.home.notPressed.visible = true;
                    mailListWindow.mailCanvas.visible = false;
                    windowAddSwfCommon(mailListWindow.windowLayer, function (event:Event) : void
            {
                var e:* = event;
                var animationProxy:* = AnimationProxy(facade.retrieveProxy(AnimationProxy.NAME));
                animationProxy.generalLoaders["window"]["common"].content.addEventListener("ENLARGE_END", function (event:Event) : void
                {
                    mailListWindow.mailCanvas.visible = true;
                    return;
                }// end function
                );
                return;
            }// end function
            , "right_670x460");
                    break;
                }
                case HomeProxy.HOME_RAIDREPORT_LOADED:
                {
                    app.removeLoadingWindow();
                    checkAddChild();
                    raidReportWindow.init(note.getBody() as Array, playerProxy.playerVO, true);
                    app.home.windowLayer.addChild(raidReportWindow);
                    app.home.notPressed.visible = true;
                    raidReportWindow.ReportList.visible = false;
                    raidReportWindow.ReportViewStack.visible = false;
                    raidReportWindow.ReportViewStack.selectedIndex = 0;
                    windowAddSwfCommon(raidReportWindow.windowLayer, function (event:Event) : void
            {
                var animationProxy:AnimationProxy;
                var e:* = event;
                animationProxy = AnimationProxy(facade.retrieveProxy(AnimationProxy.NAME));
                animationProxy.generalLoaders["window"]["common"].content.addEventListener("ENLARGE_END", function (event:Event) : void
                {
                    var e:* = event;
                    raidReportWindow.ReportList.visible = true;
                    raidReportWindow.ReportViewStack.visible = true;
                    buttonAddSwf("buttons", "common_tab", raidReportWindow.ReportList, function () : void
                    {
                        animationProxy.generalLoaders["buttons"]["common_tab"].content.addEventListener("TAB_REPORT_MAP", function () : void
                        {
                            raidReportWindow.ReportViewStack.selectedIndex = 0;
                            return;
                        }// end function
                        );
                        animationProxy.generalLoaders["buttons"]["common_tab"].content.addEventListener("TAB_REPORT_COLONY", function () : void
                        {
                            raidReportWindow.ReportViewStack.selectedIndex = 1;
                            return;
                        }// end function
                        );
                        animationProxy.generalLoaders["buttons"]["common_tab"].content.addEventListener("TAB_REPORT_GUILD_MEMBER", function () : void
                        {
                            raidReportWindow.ReportViewStack.selectedIndex = 2;
                            return;
                        }// end function
                        );
                        return;
                    }// end function
                    , "tab_report_map");
                    return;
                }// end function
                );
                return;
            }// end function
            , "right_670x460");
                    break;
                }
                case HomeProxy.HOME_SHAM_BATTLE_TARGET_LIST_LOADED:
                {
                    app.removeLoadingWindow();
                    checkAddChild();
                    shamBattleTargetListWindow.init(note.getBody() as Array, playerProxy.playerVO);
                    app.home.windowLayer.addChild(shamBattleTargetListWindow);
                    break;
                }
                case HomeProxy.MAIL_DETAIL_LOADED:
                {
                    unread = (note.getBody() as Object).unread_mail;
                    app.home.unreadMail = unread;
                    app.allMap.unreadMail = unread;
                    mailListWindow.detailWindowPopup(homeProxy.mailDetail);
                    break;
                }
                case HomeProxy.MAIL_SEND_COMPLETE:
                {
                    mailListWindow.closeTransmitWindow();
                    alertWindow = AlertWindow.show(Utils.i18n("homeMediatorSendComplete"));
                    app.home.popupWindow(alertWindow, false);
                    break;
                }
                case HomeProxy.REPLY_MAIL_SEND_COMPLETE:
                {
                    replyMailWindow.closeWindow();
                    alertWindow = AlertWindow.show(Utils.i18n("homeMediatorSendComplete"));
                    app.home.popupWindow(alertWindow, false);
                    break;
                }
                case HomeProxy.PASS_YEAR_COMPLETE:
                {
                    alertWindow = AlertWindow.show(Utils.i18n("homeMediatorYearPassage"));
                    app.home.popupWindow(alertWindow, false);
                    break;
                }
                case HomeProxy.LOAD_PLAYER_FOR_NEXT_YEAR:
                {
                    setPlayerProperties();
                    break;
                }
                case HomeProxy.USE_CRYSTAL_COMPLETE:
                {
                    app.removeLoadingWindow();
                    AlertWindow.show(note.getBody() as String, "", AlertWindow.OK, app.home, function (event:CloseEvent) : void
            {
                sendNotification(RELOAD_UNITS_AND_RESOURCES);
                return;
            }// end function
            );
                    break;
                }
                case HomeProxy.SACRIFICE_UNIT_COMPLETE:
                {
                    sacriceResult = note.getBody() as Object;
                    ceremonyWindow.removeSacrificeUnit();
                    ceremonyWindow.finishAnimation(function () : void
            {
                AlertWindow.show(Utils.i18n("homeMediatorSacrificeComplete", sacriceResult.unitName, sacriceResult.materials), "", AlertWindow.OK, app.home, function (event:CloseEvent) : void
                {
                    app.showLoadingWindow();
                    ceremonyWindow.initAnimation();
                    sendNotification(LOAD_UNIT_AND_RESOURCE_OF_SACRIFICE);
                    ceremonyWindow.addChildCeremonyType();
                    return;
                }// end function
                );
                return;
            }// end function
            );
                    break;
                }
                case HomeProxy.DEGRADATION_COMPLETE:
                {
                    products = note.getBody() as Object;
                    app.removeLoadingWindow();
                    matelials = new String();
                    var _loc_3:int = 0;
                    var _loc_4:* = products.nameLabel;
                    while (_loc_4 in _loc_3)
                    {
                        
                        mat = _loc_4[_loc_3];
                        matelials = matelials + Utils.i18n("homeMediatorDegrationLength", products.nameLabel[mat], products.result[mat].production_material.quantity);
                    }
                    AlertWindow.show(products.result[0] ? (Utils.i18n("homeMediatorDegrationComplete", products.name, products.quantity, matelials)) : (Utils.i18n("homeMediatorDegrationError", products.name)), "", AlertWindow.OK, app.home, function (event:CloseEvent) : void
            {
                sendNotification(RELOAD_HOME_RESOURCE);
                return;
            }// end function
            );
                    break;
                }
                case HomeProxy.ASSISTANT_UPDATE_COMPLETE:
                {
                    assistantMasterVO = note.getBody() as AssistantMasterVO;
                    break;
                }
                case HomeProxy.SUMMON_UNIT_COMPLETE:
                {
                    app.removeLoadingWindow();
                    ceremony = note.getBody() as Object;
                    app.home.popupWindow(ceremonyWindow);
                    ceremonyWindow.windowCanvas.visible = false;
                    windowAddSwfCommon(ceremonyWindow.windowLayer, function (event:Event) : void
            {
                var animationProxy:AnimationProxy;
                var e:* = event;
                animationProxy = AnimationProxy(facade.retrieveProxy(AnimationProxy.NAME));
                animationProxy.generalLoaders["window"]["common"].content.addEventListener("ENLARGE_END", function (event:Event) : void
                {
                    animationProxy.generalLoaders["window"]["common"].content.removeEventListener("ENLARGE_END", arguments.callee);
                    ceremonyWindow.windowCanvas.visible = true;
                    ceremonyWindow.init(ceremony, unitProxy.homeWaitingUnits, playerProxy.playerVO, homeProxy.homeVO.resourceVO, playerProxy.playerVO.hasLeyLine(4));
                    addFactionSwf(ceremonyWindow.factionLayer);
                    addPlayerRankSwf(ceremonyWindow.rankLayer);
                    ceremonyWindow.playerStatus.playerVO = playerProxy.playerVO;
                    ceremonyWindow.productionInfoWindow.playerVO = playerProxy.playerVO;
                    return;
                }// end function
                );
                return;
            }// end function
            , "bottom_600x200");
                    break;
                }
                case HomeProxy.NORMAL_SUMMON_COMPLETE:
                {
                    app.showLoadingWindow();
                    playerProxy.loadPlayer(PLAYER_LOADED_BY_HOME);
                    sendNotification(RELOAD_HOME_UNITS_FROM_CEREMONY, "ByNormalSummon");
                    break;
                }
                case HomeProxy.SUMMON_ITEM_COMPLETE:
                {
                    app.removeLoadingWindow();
                    response = note.getBody() as Object;
                    ceremonyWindow.itemSummonFinish(response);
                    sendNotification(RELOAD_HOME_RESOURCE);
                    break;
                }
                case HomeProxy.SUMMON_HERO_COMPLETE:
                case HomeProxy.SUMMON_BRAVE_COMPLETE:
                {
                    app.showLoadingWindow();
                    playerProxy.loadPlayer(PLAYER_LOADED_BY_HOME);
                    sendNotification(RELOAD_HOME_UNITS_FROM_CEREMONY, "BySummon");
                    break;
                }
                case HomeProxy.AWAKE_UNION_COMPLETE:
                {
                    app.showLoadingWindow();
                    playerProxy.loadPlayer(PLAYER_LOADED_BY_HOME);
                    sendNotification(RELOAD_HOME_UNITS_FROM_CEREMONY, "ByAwakeUnion");
                    break;
                }
                case HomeProxy.RECIPE_UNION_COMPLETE:
                case HomeProxy.NORMAL_UNION_COMPLETE:
                {
                    app.showLoadingWindow();
                    playerProxy.loadPlayer(PLAYER_LOADED_BY_HOME);
                    sendNotification(RELOAD_HOME_UNITS_FROM_CEREMONY, "ByUnion");
                    break;
                }
                case ReloadSacrificeCommand.RELOADED:
                {
                    app.removeLoadingWindow();
                    ceremonyWindow.homeAllUnits = unitProxy.homeWaitingUnits;
                    setUnits();
                    setPlayerProperties();
                    break;
                }
                case BuildingProxy.RESTORATION:
                {
                    sendNotification(HomeProxy.RELOAD_HOME_PLAYER_AND_BUILDINGS);
                    break;
                }
                case HomeAllSleepUnitProxy.COFFINS_LOADED:
                {
                    coffins = note.getBody() as Array;
                    homeAllSleepUnit.setCoffins(coffins);
                    app.removeLoadingWindow();
                    break;
                }
                case ReloadMercenariesCommand.NOTIFY_SUMMON_RESULT:
                {
                    summonResult = note.getBody() as String;
                    if (summonResult)
                    {
                        alertWindow = AlertWindow.show(Utils.i18n("homeMediatorMercenariesResults", summonResult));
                        app.home.popupWindow(alertWindow, false);
                    }
                    break;
                }
                case PlayerProxy.UNREAD_MAIL_LOADED:
                {
                    unread = (note.getBody() as Object).unread_mail;
                    app.home.unreadMail = unread;
                    app.allMap.unreadMail = unread;
                    break;
                }
                case PlayerProxy.UNREAD_NOTICE_LOADED:
                {
                    unreadNoticeResult = note.getBody() as Object;
                    if (unreadNoticeResult && unreadNoticeResult.notice_present)
                    {
                        adminNoticeWindow.notice = unreadNoticeResult.notice;
                        app.home.popupWindow(adminNoticeWindow, false);
                    }
                    break;
                }
                case PlayerProxy.SHOW_LOGIN_ITEM:
                {
                    result = note.getBody() as Object;
                    if (result && result.draw)
                    {
                        loginItemWindow.setDrawItem(result.item);
                        loginItemWindow.setConsecutiveLoginItem(result.consecutive_login_item);
                        loginItemWindow.setRemainingCountLabel(result.remaining_count);
                        app.home.popupWindow(loginItemWindow, false);
                    }
                    else
                    {
                        playerProxy.matchBattleDefenceReport();
                    }
                    break;
                }
                case PlayerProxy.LOAD_MATCH_BATTLE_DEFENCE_REPORT:
                {
                    result = note.getBody() as Object;
                    if (result && result.defenced_report)
                    {
                        matchBattleDefenceReport.setDefenceReport(result.defenced_report);
                        app.home.popupWindow(matchBattleDefenceReport, false);
                    }
                    break;
                }
                case RaidDitailReportCommand.SHOW_REPORT:
                {
                    app.removeLoadingWindow();
                    report = note.getBody() as Object;
                    app.home.popupWindow(raidReportDitail, false);
                    raidReportDitail.init(report, playerProxy.playerVO);
                    childWindowAddSwfCommon(raidReportDitail.windowLayer, function (event:Event) : void
            {
                var e:* = event;
                var animationProxy:* = AnimationProxy(facade.retrieveProxy(AnimationProxy.NAME));
                animationProxy.childLoaders["window"]["common"]["reportDitail"].content.addEventListener("ENLARGE_END", function (event:Event) : void
                {
                    return;
                }// end function
                );
                return;
            }// end function
            , "reportDitail", "center_720x460");
                    break;
                }
                case PlayerProxy.INIT_TUTORIAL_STATE:
                {
                    tut = note.getBody() as Object;
                    initTutorialMarks(tut.flg);
                    break;
                }
                case PlayerProxy.INIT_PRODUCTION_TMARK:
                {
                    tut = note.getBody() as Object;
                    if (playerProxy.playerVO.tutorialId <= TUTORIAL_ID_MAX)
                    {
                        productionWindow.initProductionTmarks(playerProxy.playerVO.tutorialId, tut.flg);
                    }
                    break;
                }
                case PlayerProxy.INIT_RESEARCH_TMARK:
                {
                    tut = note.getBody() as Object;
                    trace(tut.flg);
                    if (!tut.flg && playerProxy.playerVO.tutorialId == 11)
                    {
                        researchWindow.initResearchTmarks();
                    }
                    else
                    {
                        researchWindow.initResearchTmarks(true);
                    }
                    break;
                }
                case HomeProxy.HOME_COLONY_DITAIL_REPORT_LOADED:
                {
                    app.removeLoadingWindow();
                    report = note.getBody() as Object;
                    app.home.popupWindow(raidReportDitail, false);
                    raidReportDitail.init(report, playerProxy.playerVO);
                    childWindowAddSwfCommon(raidReportDitail.windowLayer, function (event:Event) : void
            {
                var e:* = event;
                var animationProxy:* = AnimationProxy(facade.retrieveProxy(AnimationProxy.NAME));
                animationProxy.childLoaders["window"]["common"]["reportDitail"].content.addEventListener("ENLARGE_END", function (event:Event) : void
                {
                    return;
                }// end function
                );
                return;
            }// end function
            , "reportDitail", "center_720x460");
                    break;
                }
                case PlayerProxy.RESUME_CONTINUATION_LEVEL:
                {
                    app.removeLoadingWindow();
                    continuationWindow.setContinuationLevel(playerProxy.playerVO.lastContinuationLevel, playerProxy.playerVO.continuationBattleRecord);
                    break;
                }
                case PlayerProxy.RESUME_EVENT_MAP_LEVEL:
                {
                    app.removeLoadingWindow();
                    eventMapWindow.setLevel(playerProxy.playerVO.lastEventMapLevel, playerProxy.playerVO.eventMapBattleRecord);
                    break;
                }
                case ConfirmItemSummonCommand.CONFIRM_ITEM_SUMMON:
                {
                    initData = note.getBody() as Object;
                    confirmItemSummonWindow.summonNum = initData.quantity;
                    confirmItemSummonWindow.summonType = initData.summonType;
                    app.home.popupWindow(confirmItemSummonWindow);
                    confirmItemSummonWindow.y = 220;
                    break;
                }
                default:
                {
                    break;
                }
            }
            return;
        }// end function

        private function setAssistantRemark() : void
        {
            var _loc_1:* = PlayerProxy(facade.retrieveProxy(PlayerProxy.NAME));
            var _loc_2:* = AnimationProxy(facade.retrieveProxy(AnimationProxy.NAME));
            var _loc_3:* = _loc_1.assistantVO;
            _loc_1.setAssistantRemark();
            if (_loc_3.remark.length > 0)
            {
                app.home.remarkStart();
                _loc_2.generalAnimationChange("assistants", assistant, _loc_3.face);
                app.home.assistantText.text = _loc_3.remark;
                _loc_1.assistantVO.periodicTimer.stop();
                _loc_1.assistantVO.periodicTimer.reset();
                _loc_1.assistantVO.periodicTimer.start();
            }
            return;
        }// end function

        private function handleInfoEvent(event:Event) : void
        {
            var _loc_2:* = AnimationProxy(facade.retrieveProxy(AnimationProxy.NAME));
            var _loc_3:Object = {b_moving:1, b_report:2, b_chat:3};
            var _loc_4:* = event.type;
            app.home.infoButtonCanvas.visible = true;
            app.home.nowInfoId = _loc_3[event.type];
            app.home.nowInfo = event.type;
            app.home.taskBox.visible = false;
            app.home.infoBox.visible = false;
            app.home.chatBox.visible = false;
            switch(event.type)
            {
                case "b_report":
                {
                    app.home.infoBox.visible = false;
                    app.home.infoChat.visible = false;
                    app.home.savedInfo = "b_report";
                    chatChangeSize();
                    break;
                }
                case "b_moving":
                {
                    app.home.taskBox.visible = false;
                    app.home.infoChat.visible = false;
                    app.home.savedInfo = "b_moving";
                    chatChangeSize();
                    break;
                }
                case "b_chat":
                {
                    app.home.chatBox.visible = true;
                    app.home.infoChat.visible = true;
                    app.home.savedInfo = "b_chat";
                    app.home.chatBox.x = 225;
                    app.home.chatBox.y = 382;
                    app.home.guildChatWindow.width = 495;
                    app.home.guildChatWindow.height = 178;
                    chatChangeSize();
                    break;
                }
                case "w_small_large":
                {
                    app.home.chatBox.visible = false;
                    app.home.savedInfo = "b_chat_small_large";
                    app.home.nowInfo = "b_chat";
                    app.home.chatBox.x = 7;
                    app.home.chatBox.y = 140;
                    app.home.guildChatWindow.width = 730;
                    app.home.guildChatWindow.height = 420;
                    app.home.guildChatWindow.changeSize();
                    break;
                }
                case "w_large_small_chat":
                {
                    app.home.savedInfo = "b_chat_large_small_l";
                }
                case "w_large_small":
                {
                    app.home.chatBox.visible = false;
                    app.home.nowInfo = "b_chat";
                    app.home.chatBox.x = 225;
                    app.home.chatBox.y = 382;
                    app.home.guildChatWindow.width = 495;
                    app.home.guildChatWindow.height = 178;
                    app.home.guildChatWindow.changeSize();
                    break;
                }
                case "w_small_minimization":
                {
                    app.home.infoButtonCanvas.visible = false;
                    app.home.infoChat.visible = false;
                    app.home.nowInfo = "b_null";
                    break;
                }
                case "w_large_minimization":
                {
                    app.home.infoButtonCanvas.visible = false;
                    app.home.infoChat.visible = false;
                    app.home.nowInfo = "b_null";
                    break;
                }
                case "w_minimization_small":
                case "w_minimization_small_chat":
                {
                    app.home.infoButtonCanvas.visible = false;
                    app.home.infoChat.visible = false;
                    app.home.nowInfo = app.home.savedInfo;
                    break;
                }
                case "w_small_minimization_chat":
                {
                    app.home.infoButtonCanvas.visible = false;
                    app.home.infoChat.visible = false;
                    app.home.nowInfo = "b_null";
                    break;
                }
                default:
                {
                    break;
                }
            }
            if (app.home.infoButtonCanvas.visible)
            {
                _loc_2.childAnimationChange("ui", "infoButton", "home", app.home.nowInfo);
            }
            return;
        }// end function

        private function chatChangeSize() : void
        {
            app.home.guildChatWindow.guildChatViewStack.selectedIndex = 1;
            app.home.guildChatWindow.guildChatViewStackAll.selectedIndex = 1;
            app.home.guildChatWindow.guildChatViewStackSys.selectedIndex = 1;
            app.home.guildChatWindow.guildChatViewStackFct.selectedIndex = 1;
            app.home.guildChatWindow.changeSize();
            return;
        }// end function

        private function removeChilremoveChildWindowSWF(param1, param2:String, param3:String, param4:String) : void
        {
            var _loc_5:* = AnimationProxy(facade.retrieveProxy(AnimationProxy.NAME));
            AnimationProxy(facade.retrieveProxy(AnimationProxy.NAME)).childRemoveAnimation(param2, param3, param4, param1);
            return;
        }// end function

        private function setAllUnitView() : void
        {
            if (!homeAllUnit.unitsCanvas)
            {
                return;
            }
            var _loc_1:* = HomeAllUnitProxy(facade.retrieveProxy(HomeAllUnitProxy.NAME));
            var _loc_2:* = _loc_1.setHomeAllUnits();
            _loc_1.setAllUnit();
            return;
        }// end function

        private function handleEvent(event:Event) : void
        {
            var homeProxy:HomeProxy;
            var unitProxy:UnitProxy;
            var animationProxy:AnimationProxy;
            var playerProxy:PlayerProxy;
            var masterProxy:MasterProxy;
            var alertWindow:AlertWindow;
            var homeMapVO:HomeMapVO;
            var buildingVO:BuildingVO;
            var homeAllUnitProxy:HomeAllUnitProxy;
            var unitArray:Array;
            var galleries:Array;
            var galleryAnimationProxy:AnimationProxy;
            var position:Point;
            var galleryPage:int;
            var galleryMaxPage:int;
            var galleryPerUnit:int;
            var galleryPreviewPage:int;
            var galleryNextPage:int;
            var tId:int;
            var param:Array;
            var awakeMasters:Array;
            var units:Array;
            var j:int;
            var playerMaterials:Array;
            var currentMaterial:MaterialVO;
            var jobData:Object;
            var i:int;
            var enableGalleryFlag:Boolean;
            var k:int;
            var resultColorTransform:ColorTransform;
            var l:int;
            var m:int;
            var n:int;
            var event:* = event;
            homeProxy = HomeProxy(facade.retrieveProxy(HomeProxy.NAME));
            var buildingProxy:* = BuildingProxy(facade.retrieveProxy(BuildingProxy.NAME));
            var guildProxy:* = GuildProxy(facade.retrieveProxy(GuildProxy.NAME));
            var constructionProxy:* = ConstructionProxy(facade.retrieveProxy(ConstructionProxy.NAME));
            unitProxy = UnitProxy(facade.retrieveProxy(UnitProxy.NAME));
            animationProxy = AnimationProxy(facade.retrieveProxy(AnimationProxy.NAME));
            var skillProxy:* = SkillProxy(facade.retrieveProxy(SkillProxy.NAME));
            playerProxy = PlayerProxy(facade.retrieveProxy(PlayerProxy.NAME));
            var taskProxy:* = TaskProxy(facade.retrieveProxy(TaskProxy.NAME));
            var configProxy:* = ConfigProxy(facade.retrieveProxy(ConfigProxy.NAME));
            var productionProxy:* = ProductionProxy(facade.retrieveProxy(ProductionProxy.NAME));
            masterProxy = MasterProxy(facade.retrieveProxy(MasterProxy.NAME));
            switch(event.type)
            {
                case Viking.HOME_BUILD:
                {
                    homeMapVO = homeProxy.homemaps[(app.home.landID - 1)] as HomeMapVO;
                    j;
                    while (j < unitProxy.homeUnits.length)
                    {
                        
                        unitProxy.loadAnimation(unitProxy.homeUnits[j]);
                        j = (j + 1);
                    }
                    buildingVO = homeMapVO.buildingVO;
                    if (buildingVO)
                    {
                        sendNotification(PREPARE_BUILDING_WINDOW, homeMapVO);
                    }
                    else
                    {
                        buildWindow.units = unitProxy.homeWaitingUnits;
                        app.home.popupBuildWindow(buildWindow, constructionProxy.constructions, playerProxy.playerVO.playerRankId, masterProxy.getMaster(MasterProxy.BUILDING_MASTER));
                        buildWindow.buildingsCanvas.visible = false;
                        windowAddSwfCommon(buildWindow.windowLayer, function (event:Event) : void
            {
                var e:* = event;
                var animationProxy:* = AnimationProxy(facade.retrieveProxy(AnimationProxy.NAME));
                animationProxy.generalLoaders["window"]["common"].content.addEventListener("ENLARGE_END", function (event:Event) : void
                {
                    buildWindow.buildingsCanvas.visible = true;
                    return;
                }// end function
                );
                return;
            }// end function
            , "center_720x460");
                    }
                    break;
                }
                case BuildWindow.SELECT_BUILDING_CLOSE:
                {
                    animationProxy.generalRemoveAnimation("window", "common", buildWindow.windowLayer);
                    break;
                }
                case BuildWindow.OPEN_UNIT_LIST:
                {
                    buildWindow.buildUnitWindow.unitCanvas.visible = false;
                    childWindowAddSwfCommon(buildWindow.buildUnitWindow.windowLayer, function (event:Event) : void
            {
                var e:* = event;
                var animationProxy:* = AnimationProxy(facade.retrieveProxy(AnimationProxy.NAME));
                animationProxy.childLoaders["window"]["common"]["unitList"].content.addEventListener("ENLARGE_END", function (event:Event) : void
                {
                    buildWindow.buildUnitWindow.unitCanvas.visible = true;
                    return;
                }// end function
                );
                return;
            }// end function
            , "unitList", "center_720x460", 5);
                    buttonAddSwf("buttons", "common", buildWindow.buildUnitWindow.buttonLayer, function () : void
            {
                animationProxy.generalLoaders["buttons"]["common"].content.addEventListener(MouseEvent.CLICK, function () : void
                {
                    buildWindow.buildUnitWindow.onClose();
                    return;
                }// end function
                );
                return;
            }// end function
            , "button_cancel", 325, 470);
                    break;
                }
                case BuildWindow.CLOSE_UNIT_LIST:
                {
                    animationProxy.childRemoveAnimation("window", "common", "unitList", buildWindow.buildUnitWindow.windowLayer);
                    break;
                }
                case BuildWindow.OPEN_WINDOW:
                {
                    buildWindow.confirmBuildWindow.confirmCanvas.visible = false;
                    childWindowAddSwfCommon(buildWindow.confirmBuildWindow.windowLayer, function (event:Event) : void
            {
                var e:* = event;
                var animationProxy:* = AnimationProxy(facade.retrieveProxy(AnimationProxy.NAME));
                animationProxy.childLoaders["window"]["common"]["confirm"].content.addEventListener("ENLARGE_END", function (event:Event) : void
                {
                    buildWindow.confirmBuildWindow.confirmCanvas.visible = true;
                    return;
                }// end function
                );
                return;
            }// end function
            , "confirm", "center_300x200");
                    commonButtonAddSwf("buttons", "common", "ok", buildWindow.confirmBuildWindow.buttonLayer, function () : void
            {
                animationProxy.childLoaders["buttons"]["common"]["ok"].content.addEventListener(MouseEvent.CLICK, function () : void
                {
                    animationProxy.childLoaders["buttons"]["common"]["ok"].content.removeEventListener(MouseEvent.CLICK, arguments.callee);
                    buildWindow.confirmBuildWindow.onConfirm();
                    return;
                }// end function
                );
                return;
            }// end function
            , "button_decide", 260, 330);
                    commonButtonAddSwf("buttons", "common", "cancel", buildWindow.confirmBuildWindow.buttonLayer, function () : void
            {
                animationProxy.childLoaders["buttons"]["common"]["cancel"].content.addEventListener(MouseEvent.CLICK, function () : void
                {
                    animationProxy.childLoaders["buttons"]["common"]["cancel"].content.removeEventListener(MouseEvent.CLICK, arguments.callee);
                    buildWindow.confirmBuildWindow.onClose();
                    return;
                }// end function
                );
                return;
            }// end function
            , "button_cancel", 390, 330);
                    break;
                }
                case ConfirmBuildWindow.CLOSE_WINDOW:
                {
                    animationProxy.childRemoveAnimation("window", "common", "unitList", confirmBuildWindow.windowLayer);
                    break;
                }
                case ProductionWindow.OPEN_QUANTITY_WINDOW:
                {
                    productionWindow.productionQuantityWindow.smallerCanvas.visible = false;
                    childWindowAddSwfCommon(productionWindow.productionQuantityWindow.windowLayer, function (event:Event) : void
            {
                var e:* = event;
                var animationProxy:* = AnimationProxy(facade.retrieveProxy(AnimationProxy.NAME));
                animationProxy.childLoaders["window"]["common"]["product"].content.addEventListener("ENLARGE_END", function (event:Event) : void
                {
                    productionWindow.productionQuantityWindow.smallerCanvas.visible = true;
                    return;
                }// end function
                );
                return;
            }// end function
            , "product", "center_400x360");
                    commonButtonAddSwf("buttons", "common", "ok", productionWindow.productionQuantityWindow.buttonLayer, function () : void
            {
                animationProxy.childLoaders["buttons"]["common"]["ok"].content.addEventListener(MouseEvent.CLICK, function () : void
                {
                    animationProxy.childLoaders["buttons"]["common"]["ok"].content.removeEventListener(MouseEvent.CLICK, arguments.callee);
                    productionWindow.productionQuantityWindow.produce();
                    return;
                }// end function
                );
                return;
            }// end function
            , "button_decide", 80, 290);
                    commonButtonAddSwf("buttons", "common", "cancel", productionWindow.productionQuantityWindow.buttonLayer, function () : void
            {
                animationProxy.childLoaders["buttons"]["common"]["cancel"].content.addEventListener(MouseEvent.CLICK, function () : void
                {
                    animationProxy.childLoaders["buttons"]["common"]["cancel"].content.removeEventListener(MouseEvent.CLICK, arguments.callee);
                    productionWindow.productionQuantityWindow.onClose();
                    return;
                }// end function
                );
                return;
            }// end function
            , "button_cancel", 200, 290);
                    break;
                }
                case ProductionWindow.OPEN_CONDITION_WINDOW:
                {
                    productionWindow.productionConditionWindow.smallerCanvas.visible = false;
                    childWindowAddSwfCommon(productionWindow.productionConditionWindow.windowLayer, function (event:Event) : void
            {
                var e:* = event;
                var animationProxy:* = AnimationProxy(facade.retrieveProxy(AnimationProxy.NAME));
                animationProxy.childLoaders["window"]["common"]["condition"].content.addEventListener("ENLARGE_END", function (event:Event) : void
                {
                    productionWindow.productionConditionWindow.smallerCanvas.visible = true;
                    return;
                }// end function
                );
                return;
            }// end function
            , "condition", "center_400x360");
                    commonButtonAddSwf("buttons", "common", "cancel", productionWindow.productionConditionWindow.buttonLayer, function () : void
            {
                animationProxy.childLoaders["buttons"]["common"]["cancel"].content.addEventListener(MouseEvent.CLICK, function () : void
                {
                    animationProxy.childLoaders["buttons"]["common"]["cancel"].content.removeEventListener(MouseEvent.CLICK, arguments.callee);
                    productionWindow.productionConditionWindow.onClose();
                    return;
                }// end function
                );
                return;
            }// end function
            , "button_cancel", 140, 270);
                    break;
                }
                case ResearchWindow.CLICK_CLOSE_BUTTON:
                {
                    app.home.notPressed.visible = false;
                    app.home.removeButtons();
                    checkAddChild();
                    break;
                }
                case ResearchWindow.CLOSE_RESEARCH_WINDOW:
                {
                    app.home.windowLayer.removeChild(researchWindow);
                    break;
                }
                case Viking.HOME_ACTION_GOTO_ALL_MAP:
                {
                    app.showLoadingWindow();
                    sendNotification(GOTO_ALL_MAP);
                    break;
                }
                case Viking.HOME_ACTION_GOTO_SUBJUGATION:
                {
                    if (alertWaitingUnitsCount())
                    {
                        return;
                    }
                    if (playerProxy.playerVO.tutorialId == 9 && subjugationWindow)
                    {
                        playerMaterials = homeProxy.homeVO.resourceVO.materials.filter(function (param1, param2:int, param3:Array) : Boolean
            {
                return param1.quantity > 0;
            }// end function
            );
                        var _loc_3:int = 0;
                        var _loc_4:* = playerMaterials;
                        while (_loc_4 in _loc_3)
                        {
                            
                            currentMaterial = _loc_4[_loc_3];
                            if (currentMaterial.masterVO.code == 1054)
                            {
                                subjugationWindow.initSubTmarks(false);
                                break;
                                continue;
                            }
                            subjugationWindow.initSubTmarks(true);
                        }
                    }
                    app.showLoadingWindow();
                    homeProxy.evilPoint();
                    taskProxy.suspendTimer();
                    break;
                }
                case Viking.HOME_ACTION_GOTO_COLONY:
                {
                    if (alertWaitingUnitsCount())
                    {
                        return;
                    }
                    app.showLoadingWindow();
                    homeProxy.colony();
                    taskProxy.suspendTimer();
                    break;
                }
                case Viking.HOME_ACTION_GOTO_MATCH_PORTAL:
                {
                    taskProxy.suspendTimer();
                    matchPortalWindow.addEvent();
                    matchPortalWindow.specialMatch = configProxy.configVO.specialMatchStart;
                    app.home.windowLayer.addChild(matchPortalWindow);
                    break;
                }
                case MatchPortalWindow.HOME_ACTION_GOTO_MATCH:
                {
                    confirmStartMatchWindow.matchTicket = playerProxy.playerVO.matchBattleTicket;
                    app.home.popupWindow(confirmStartMatchWindow, false);
                    break;
                }
                case MatchPortalWindow.HOME_ACTION_GOTO_SPECIAL_MATCH:
                {
                    confirmStartMatchWindow.setSpecialMatchTicket(playerProxy.playerVO.specialMatchBattleTicket);
                    app.home.popupWindow(confirmStartMatchWindow, false);
                    break;
                }
                case MatchPortalWindow.MATCH_GARRISON_WINDOW_OPEN:
                {
                    app.showLoadingWindow();
                    homeProxy.startSelectGarrisonUnit(HOME_GARRISON_WINDOW_OPEN, 0);
                    break;
                }
                case MatchPortalWindow.HOME_ACTION_GOTO_SHAM:
                {
                    if (alertWaitingUnitsCount())
                    {
                        return;
                    }
                    app.showLoadingWindow();
                    homeProxy.loadShamBattleTargetList();
                    break;
                }
                case ConfirmStartMatchWindow.SELECT_MATCH_BATTLE:
                {
                    app.showLoadingWindow();
                    homeProxy.startSelectUnitForMatchBattle();
                    break;
                }
                case ConfirmStartMatchWindow.SELECT_SPECIAL_MATCH_BATTLE:
                {
                    app.showLoadingWindow();
                    homeProxy.startSelectUnitForSpecialMatchBattle();
                    break;
                }
                case Viking.HOME_ACTION_GOTO_EXPEDITION_PORTAL:
                {
                    taskProxy.suspendTimer();
                    expeditionPortalWindow.addEvent();
                    app.home.windowLayer.addChild(expeditionPortalWindow);
                    break;
                }
                case ExpeditionPortalWindow.HOME_ACTION_GOTO_EXPEDITION:
                {
                    if (alertWaitingUnitsCount())
                    {
                        return;
                    }
                    app.showLoadingWindow();
                    homeProxy.expeditionEvilPoint();
                    taskProxy.suspendTimer();
                    break;
                }
                case ExpeditionPortalWindow.HOME_ACTION_GOTO_EXPEDITION2:
                {
                    if (alertWaitingUnitsCount())
                    {
                        return;
                    }
                    app.showLoadingWindow();
                    homeProxy.expedition2EvilPoint();
                    taskProxy.suspendTimer();
                    break;
                }
                case ExpeditionPortalWindow.HOME_ACTION_GOTO_EXPEDITION3NORMAL:
                {
                    if (alertWaitingUnitsCount())
                    {
                        return;
                    }
                    app.showLoadingWindow();
                    homeProxy.expedition3EvilPoint("normal");
                    taskProxy.suspendTimer();
                    break;
                }
                case ExpeditionPortalWindow.HOME_ACTION_GOTO_EXPEDITION3HARD:
                {
                    if (alertWaitingUnitsCount())
                    {
                        return;
                    }
                    app.showLoadingWindow();
                    homeProxy.expedition3EvilPoint("hard");
                    taskProxy.suspendTimer();
                    break;
                }
                case ExpeditionPortalWindow.HOME_ACTION_GOTO_CONTINUATION:
                {
                    if (alertWaitingUnitsCount())
                    {
                        return;
                    }
                    app.home.popupWindow(confirmStartContinuationWindow, false);
                    confirmStartContinuationWindow.continuationTicket = playerProxy.playerVO.continuationBattleTicket;
                    confirmStartContinuationWindow.battleType = "continuation";
                    break;
                }
                case ExpeditionPortalWindow.HOME_ACTION_GOTO_EVENT_MAP:
                {
                    if (alertWaitingUnitsCount())
                    {
                        return;
                    }
                    app.home.popupWindow(confirmStartContinuationWindow, false);
                    confirmStartContinuationWindow.continuationTicket = playerProxy.playerVO.eventMapBattleTicket;
                    confirmStartContinuationWindow.battleType = "eventMap";
                    break;
                }
                case Viking.HOME_ACTION_DEGRADATION:
                {
                    if (!app.home.systemManager.contains(itemsDegradationWindow))
                    {
                        itemsDegradationWindow.productions = productionProxy.productionsWithoutCache.find("reproduction", false);
                        itemsDegradationWindow.reproductions = new ArrayCollection(productionProxy.reproductions);
                        itemsDegradationWindow.maxProductQuantity = homeProxy.getLordHouseLevel();
                        app.home.popupWindow(itemsDegradationWindow);
                    }
                    break;
                }
                case Viking.HOME_ACTION_START_SEND_ARMY:
                {
                    if (playerProxy.playerVO.guild)
                    {
                        sendNotification(START_SEND_ARMY);
                    }
                    else
                    {
                        app.home.popupWindow(noGuildAlertWindow);
                    }
                    break;
                }
                case Viking.HOME_RAID_COMMAND_SELECT:
                {
                    sendNotification(LOAD_RAID_EXPIRATION);
                    break;
                }
                case Viking.HOME_SHOW_ANNOUNCEMENT:
                {
                    sendNotification(LOAD_ANNOUNCEMENT);
                    break;
                }
                case Viking.HOME_SHOW_PRODUCTION_WINDOW:
                {
                    if (playerProxy.playerVO.tutorialId <= TUTORIAL_ID_MAX)
                    {
                        playerProxy.loadTutorial(PlayerProxy.INIT_PRODUCTION_TMARK);
                    }
                    if (!app.home.systemManager.contains(productionWindow))
                    {
                        jobData = masterProxy.getMaster(MasterProxy.JOB_MASTER);
                        checkAddChild();
                        productionWindow.productions = productionProxy.productionsWithoutCache.find("reproduction", false);
                        productionWindow.setJobMasterData(jobData);
                        productionWindow.reproductions = new ArrayCollection(productionProxy.reproductions);
                        productionWindow.upgradeItems = new ArrayCollection(productionProxy.upgradeItems);
                        productionWindow.maxProductQuantity = homeProxy.getLordHouseLevel();
                        app.home.windowLayer.addChild(productionWindow);
                        app.home.notPressed.visible = true;
                        productionWindow.itemList.visible = false;
                        windowAddSwfCommon(productionWindow.windowLayer, function (event:Event) : void
            {
                var e:* = event;
                var animationProxy:* = AnimationProxy(facade.retrieveProxy(AnimationProxy.NAME));
                animationProxy.generalLoaders["window"]["common"].content.addEventListener("ENLARGE_END", function (event:Event) : void
                {
                    productionWindow.itemList.visible = true;
                    return;
                }// end function
                );
                return;
            }// end function
            , "right_670x460");
                        buttonAddSwf("buttons", "common_tab", productionWindow.tabCanvas, function () : void
            {
                animationProxy.generalLoaders["buttons"]["common_tab"].content.addEventListener("TAB_PRODUCTION_BLACKSMITH", function () : void
                {
                    productionWindow.itemList.selectedIndex = 0;
                    return;
                }// end function
                );
                animationProxy.generalLoaders["buttons"]["common_tab"].content.addEventListener("TAB_PRODUCTION_LEATHER", function () : void
                {
                    productionWindow.itemList.selectedIndex = 1;
                    return;
                }// end function
                );
                animationProxy.generalLoaders["buttons"]["common_tab"].content.addEventListener("TAB_PRODUCTION_CLOTH", function () : void
                {
                    productionWindow.itemList.selectedIndex = 2;
                    return;
                }// end function
                );
                animationProxy.generalLoaders["buttons"]["common_tab"].content.addEventListener("TAB_PRODUCTION_MAGIC", function () : void
                {
                    productionWindow.itemList.selectedIndex = 3;
                    return;
                }// end function
                );
                animationProxy.generalLoaders["buttons"]["common_tab"].content.addEventListener("TAB_PRODUCTION_ACCESSORY", function () : void
                {
                    productionWindow.itemList.selectedIndex = 4;
                    return;
                }// end function
                );
                animationProxy.generalLoaders["buttons"]["common_tab"].content.addEventListener("TAB_COMPOUND_SOUL", function () : void
                {
                    productionWindow.itemList.selectedIndex = 5;
                    return;
                }// end function
                );
                animationProxy.generalLoaders["buttons"]["common_tab"].content.addEventListener("TAB_COMPOUND_STRENGTHEN", function () : void
                {
                    productionWindow.itemList.selectedIndex = 6;
                    return;
                }// end function
                );
                return;
            }// end function
            , ProductionWindow.TAB_LABEL[productionWindow.itemList.selectedIndex]);
                        commonButtonAddSwf("buttons", "common", "close", productionWindow.buttonLayer, function () : void
            {
                animationProxy.childLoaders["buttons"]["common"]["close"].content.addEventListener(MouseEvent.CLICK, function () : void
                {
                    animationProxy.childLoaders["buttons"]["common"]["close"].content.removeEventListener(MouseEvent.CLICK, arguments.callee);
                    productionWindow.onClose();
                    return;
                }// end function
                );
                return;
            }// end function
            , "button_cancel", 300, 480);
                    }
                    break;
                }
                case Viking.HOME_SHOW_NEXT_TUTORIAL:
                {
                    if (playerProxy.playerVO.tutorialId <= TUTORIAL_ID_MAX)
                    {
                        if (playerProxy.playerVO.tutorialId == 15)
                        {
                            playerProxy.loadSelectFaction();
                        }
                        else
                        {
                            playerProxy.loadTutorial();
                        }
                    }
                    else
                    {
                        checkAddChild();
                    }
                    break;
                }
                case Viking.HOME_SHOW_TUTORIAL_WINDOW:
                {
                    if (!app.home.systemManager.contains(tutorialWindow))
                    {
                        checkAddChild();
                        if (playerProxy.playerVO.tutorialId <= TUTORIAL_ID_MAX)
                        {
                            app.showLoadingWindow();
                            if (playerProxy.playerVO.tutorialId == (TUTORIAL_ID_MAX - 1))
                            {
                                playerProxy.loadSelectFaction();
                            }
                            else
                            {
                                playerProxy.loadTutorial();
                            }
                        }
                        else
                        {
                            playerProxy.loadCurrentQuest();
                        }
                    }
                    break;
                }
                case TutorialWindow.CHANGE_SWF:
                {
                    break;
                }
                case TutorialWindow.REMOVE_SWF:
                {
                    break;
                }
                case CeremonyWindow.LOCK_UNIT_LIST:
                {
                    sendNotification(HOME_UNIT_LOCK_LIST, unitProxy.homeUnits);
                    break;
                }
                case CeremonyWindow.SORT_UNIT_LIST:
                {
                    sendNotification(HOME_UNIT_SORT_LIST, unitProxy.homeUnits);
                    break;
                }
                case HomeAllUnit.OPEN_UNIT_LIST:
                {
                    collectUnitWindow.units = unitProxy.homeWaitingUnits;
                    collectUnitWindow.init();
                    app.popupWindow(collectUnitWindow, false);
                    collectUnitWindow.x = 30;
                    collectUnitWindow.y = -30;
                    collectUnitWindow.listText.text = Utils.i18n("homeMediatorSelectTrainingUnit");
                    collectUnitWindow.listTitle.text = Utils.i18n("generalTraining");
                    collectUnitWindow.training(true);
                    collectUnitWindow.unitCanvas.visible = false;
                    childWindowAddSwfCommon(collectUnitWindow.windowLayer, function (event:Event) : void
            {
                var e:* = event;
                var animationProxy:* = AnimationProxy(facade.retrieveProxy(AnimationProxy.NAME));
                animationProxy.childLoaders["window"]["common"]["unitList"].content.addEventListener("ENLARGE_END", function (event:Event) : void
                {
                    collectUnitWindow.unitCanvas.visible = true;
                    return;
                }// end function
                );
                return;
            }// end function
            , "unitList", "right_670x460");
                    if (!collectUnitWindow.hasEventListener(CollectUnitWindow.SELECTED))
                    {
                        collectUnitWindow.addEventListener(CollectUnitWindow.SELECTED, function (event:PopupEvent) : void
            {
                var _loc_2:* = GatheringProxy(facade.retrieveProxy(GatheringProxy.NAME));
                app.showLoadingWindow();
                _loc_2.gather("training", event.param.unitId, 1);
                resetAllUnitViewIfNecessary();
                collectUnitWindow.onClose();
                return;
            }// end function
            );
                        collectUnitWindow.addEventListener(CollectUnitWindow.CLOSE_UNIT_LIST, function () : void
            {
                animationProxy.childRemoveAnimation("window", "common", "unitList", collectUnitWindow.windowLayer);
                return;
            }// end function
            );
                    }
                    break;
                }
                case CollectWindow.OPEN_UNIT_LIST:
                {
                    homeAllUnit.collectWindow.collectUnitWindow.unitCanvas.visible = false;
                    childWindowAddSwfCommon(homeAllUnit.collectWindow.collectUnitWindow.windowLayer, function (event:Event) : void
            {
                var e:* = event;
                var animationProxy:* = AnimationProxy(facade.retrieveProxy(AnimationProxy.NAME));
                animationProxy.childLoaders["window"]["common"]["unitList"].content.addEventListener("ENLARGE_END", function (event:Event) : void
                {
                    homeAllUnit.collectWindow.collectUnitWindow.unitCanvas.visible = true;
                    return;
                }// end function
                );
                return;
            }// end function
            , "unitList", "right_670x460");
                    break;
                }
                case CollectWindow.CLOSE_UNIT_LIST:
                {
                    animationProxy.childRemoveAnimation("window", "common", "unitList", homeAllUnit.collectWindow.collectUnitWindow.windowLayer);
                    break;
                }
                case CollectWindow.NO_UNIT:
                {
                    alertWindow = AlertWindow.show(Utils.i18n("localize177"));
                    app.home.popupWindow(alertWindow, false);
                    break;
                }
                case Viking.HOME_SHOW_GATHERING_WINDOW:
                {
                    homeAllUnit.collectWindow.units = unitProxy.homeWaitingUnits;
                    homeAllUnit.popupWindow(homeAllUnit.collectWindow, false);
                    homeAllUnit.collectWindow.commandCanvas.visible = false;
                    homeAllUnit.collectWindow.buttonLayer.visible = false;
                    windowAddSwfCommon(homeAllUnit.collectWindow.windowLayer, function (event:Event) : void
            {
                var e:* = event;
                var animationProxy:* = AnimationProxy(facade.retrieveProxy(AnimationProxy.NAME));
                animationProxy.generalLoaders["window"]["common"].content.addEventListener("ENLARGE_END", function (event:Event) : void
                {
                    homeAllUnit.collectWindow.commandCanvas.visible = true;
                    homeAllUnit.collectWindow.buttonLayer.visible = true;
                    return;
                }// end function
                );
                return;
            }// end function
            , "right_200x250");
                    buttonAddSwf("buttons", "fire", homeAllUnit.collectWindow.buttonLayer, function () : void
            {
                animationProxy.generalLoaders["buttons"]["fire"].content.addEventListener(MouseEvent.CLICK, function () : void
                {
                    homeAllUnit.collectWindow.showUnits(0);
                    return;
                }// end function
                );
                return;
            }// end function
            , 1, 550, 160);
                    buttonAddSwf("buttons", "water", homeAllUnit.collectWindow.buttonLayer, function () : void
            {
                animationProxy.generalLoaders["buttons"]["water"].content.addEventListener(MouseEvent.CLICK, function () : void
                {
                    homeAllUnit.collectWindow.showUnits(1);
                    return;
                }// end function
                );
                return;
            }// end function
            , 1, 460, 160);
                    buttonAddSwf("buttons", "ground", homeAllUnit.collectWindow.buttonLayer, function () : void
            {
                animationProxy.generalLoaders["buttons"]["ground"].content.addEventListener(MouseEvent.CLICK, function () : void
                {
                    homeAllUnit.collectWindow.showUnits(2);
                    return;
                }// end function
                );
                return;
            }// end function
            , 1, 460, 80);
                    buttonAddSwf("buttons", "silver", homeAllUnit.collectWindow.buttonLayer, function () : void
            {
                animationProxy.generalLoaders["buttons"]["silver"].content.addEventListener(MouseEvent.CLICK, function () : void
                {
                    homeAllUnit.collectWindow.showUnits(3);
                    return;
                }// end function
                );
                return;
            }// end function
            , 1, 550, 80);
                    commonButtonAddSwf("buttons", "common", "collectWindow", homeAllUnit.collectWindow.buttonLayer, function () : void
            {
                animationProxy.childLoaders["buttons"]["common"]["collectWindow"].content.addEventListener(MouseEvent.CLICK, function () : void
                {
                    animationProxy.childLoaders["buttons"]["common"]["collectWindow"].content.removeEventListener(MouseEvent.CLICK, arguments.callee);
                    homeAllUnit.collectWindow.onClose();
                    return;
                }// end function
                );
                return;
            }// end function
            , "button_close", 485, 235);
                    break;
                }
                case Viking.FADE_OUT:
                {
                    homeProxy.fadeInTimerStart();
                    break;
                }
                case Viking.HOME_REPORT:
                {
                    sendNotification(LOAD_GUILD_DETAIL);
                    break;
                }
                case Viking.CHAT_WINDOW_SIZE_CHANGE:
                {
                    break;
                }
                case Viking.HOME_MAIN_VIEW:
                {
                    break;
                }
                case Viking.HOME_ALL_UNIT_VIEW:
                {
                    homeAllUnit.playerVO = playerProxy.playerVO;
                    setPlayerProperties();
                    homeAllUnitProxy = HomeAllUnitProxy(facade.retrieveProxy(HomeAllUnitProxy.NAME));
                    checkAddChild();
                    app.home.windowLayer.addChild(homeAllUnit);
                    app.home.notPressedShikihime.visible = true;
                    app.home.removeButtons();
                    addShikihimeList();
                    homeAllUnit.unitsCanvas.visible = false;
                    homeAllUnit.unitStatus.visible = false;
                    homeAllUnit.gatheringImage.visible = false;
                    homeAllUnit.trainImage.visible = false;
                    homeAllUnit.closeButton.visible = false;
                    homeAllUnit.allUnitCommandImage.visible = false;
                    homeAllUnitProxy.resetAllUnitView();
                    unitArray = homeAllUnitProxy.setHomeAllUnits();
                    homeAllUnitProxy.setAllUnit();
                    addSakuraSwf();
                    if (playerProxy.playerVO.tutorialId <= TUTORIAL_ID_MAX)
                    {
                        playerProxy.loadTutorial(PlayerProxy.INIT_TUTORIAL_STATE);
                    }
                    break;
                }
                case Viking.HOME_ALL_GALLERY_VIEW:
                {
                    setPlayerProperties();
                    galleryMasterProxy = MasterProxy(facade.retrieveProxy(MasterProxy.NAME));
                    galleryMastersArray = galleryMasterProxy.getMasterAsArray(MasterProxy.GALLERY_MASTER);
                    galleryMastersArray.sortOn(["code"], [null]);
                    galleries = homeProxy.homeVO.resourceVO.galleries;
                    checkAddChild();
                    app.home.windowLayer.addChild(homeAllGallery);
                    app.home.notPressedShikihime.visible = true;
                    app.home.removeButtons();
                    galleryAnimationProxy = AnimationProxy(facade.retrieveProxy(AnimationProxy.NAME));
                    position = new Point();
                    i;
                    while (i < galleryMastersArray.length)
                    {
                        
                        position = getGalleryPosition(i, galleryMastersArray.length);
                        galleryMastersArray[i].loader.x = position.x;
                        galleryMastersArray[i].loader.y = position.y;
                        galleryMastersArray[i].loader.contentLoaderInfo.addEventListener(Event.COMPLETE, function (event:Event) : void
            {
                var _loc_2:* = LoaderInfo(event.target);
                MovieClip(_loc_2.content).gotoAndStop("item_f_l");
                return;
            }// end function
            );
                        galleryMastersArray[i].loader.loadBytes(galleryAnimationProxy.getUnitAnimation(galleryMastersArray[i].jobCode, 0));
                        enableGalleryFlag;
                        k;
                        while (k < galleries.length)
                        {
                            
                            if (galleries[k].masterVO.masterId == galleryMastersArray[i].masterId)
                            {
                                enableGalleryFlag;
                                break;
                            }
                            k = (k + 1);
                        }
                        resultColorTransform = new ColorTransform();
                        resultColorTransform.redMultiplier = 1;
                        resultColorTransform.greenMultiplier = 1;
                        resultColorTransform.blueMultiplier = 1;
                        if (enableGalleryFlag)
                        {
                            galleryMastersArray[i].loader.addEventListener(MouseEvent.CLICK, handleGalleryMouseClickEvent);
                            galleryMastersArray[i].loader.addEventListener(MouseEvent.MOUSE_OVER, handleGalleryMouseEvent);
                        }
                        else
                        {
                            resultColorTransform.redMultiplier = 0;
                            resultColorTransform.greenMultiplier = 0;
                            resultColorTransform.blueMultiplier = 0;
                        }
                        galleryMastersArray[i].loader.transform.colorTransform = resultColorTransform;
                        galleryMastersArray[i].uic.addChild(galleryMastersArray[i].loader);
                        galleryIndexArray.push(galleryMastersArray[i].loader);
                        i = (i + 1);
                    }
                    homeAllGallery.galleryNum = galleries.length;
                    homeAllGallery.allGalleryNum = galleryMastersArray.length;
                    homeAllGallery.maxPage = Math.ceil(galleryMastersArray.length / homeAllGallery.perUnit);
                    galleryPage = homeAllGallery.page;
                    galleryMaxPage = homeAllGallery.maxPage;
                    galleryPerUnit = homeAllGallery.perUnit;
                    l = (galleryPage - 1) * galleryPerUnit;
                    while (l < galleryPage * galleryPerUnit)
                    {
                        
                        if (l >= galleryMastersArray.length)
                        {
                        }
                        else
                        {
                            homeAllGallery.unitsCanvas.addChild(galleryMastersArray[l].uic);
                        }
                        l = (l + 1);
                    }
                    homeAllGallery.adjustPaginatorButton();
                    break;
                }
                case HomeAllGallery.MOVE_PREVIEW_PAGE:
                {
                    if (homeAllGallery.page <= 1)
                    {
                        break;
                    }
                    while (homeAllGallery.unitsCanvas.numChildren > 0)
                    {
                        
                        homeAllGallery.unitsCanvas.removeChildAt(0);
                    }
                    galleryPreviewPage = (homeAllGallery.page - 1);
                    m = (galleryPreviewPage - 1) * homeAllGallery.perUnit;
                    while (m < galleryPreviewPage * homeAllGallery.perUnit)
                    {
                        
                        if (m >= galleryMastersArray.length)
                        {
                        }
                        else
                        {
                            homeAllGallery.unitsCanvas.addChild(galleryMastersArray[m].uic);
                        }
                        m = (m + 1);
                    }
                    homeAllGallery.page = galleryPreviewPage;
                    homeAllGallery.adjustPaginatorButton();
                    break;
                }
                case HomeAllGallery.MOVE_NEXT_PAGE:
                {
                    if (homeAllGallery.maxPage <= homeAllGallery.page)
                    {
                        break;
                    }
                    while (homeAllGallery.unitsCanvas.numChildren > 0)
                    {
                        
                        homeAllGallery.unitsCanvas.removeChildAt(0);
                    }
                    galleryNextPage = (homeAllGallery.page + 1);
                    n = (galleryNextPage - 1) * homeAllGallery.perUnit;
                    while (n < galleryNextPage * homeAllGallery.perUnit)
                    {
                        
                        if (n >= galleryMastersArray.length)
                        {
                        }
                        else
                        {
                            homeAllGallery.unitsCanvas.addChild(galleryMastersArray[n].uic);
                        }
                        n = (n + 1);
                    }
                    homeAllGallery.page = galleryNextPage;
                    homeAllGallery.adjustPaginatorButton();
                    break;
                }
                case Viking.HOME_ALL_ITEM_VIEW:
                {
                    checkAddChild();
                    app.home.windowLayer.addChild(homeAllItem);
                    app.home.notPressed.visible = true;
                    setPlayerProperties();
                    homeAllItem.itemList.visible = false;
                    homeAllItem.myViewStack.visible = false;
                    homeAllItem.myViewStack.selectedIndex = 4;
                    windowAddSwfCommon(homeAllItem.windowLayer, function (event:Event) : void
            {
                var animationProxy:AnimationProxy;
                var e:* = event;
                animationProxy = AnimationProxy(facade.retrieveProxy(AnimationProxy.NAME));
                animationProxy.generalLoaders["window"]["common"].content.addEventListener("ENLARGE_END", function (event:Event) : void
                {
                    var e:* = event;
                    homeAllItem.itemList.visible = true;
                    homeAllItem.myViewStack.visible = true;
                    buttonAddSwf("buttons", "common_tab", homeAllItem.itemList, function () : void
                    {
                        animationProxy.generalLoaders["buttons"]["common_tab"].content.addEventListener("TAB_ITEM_ARMS", function () : void
                        {
                            homeAllItem.myViewStack.selectedIndex = 0;
                            return;
                        }// end function
                        );
                        animationProxy.generalLoaders["buttons"]["common_tab"].content.addEventListener("TAB_ITEM_GUARDS", function () : void
                        {
                            homeAllItem.myViewStack.selectedIndex = 1;
                            return;
                        }// end function
                        );
                        animationProxy.generalLoaders["buttons"]["common_tab"].content.addEventListener("TAB_ITEM_ACCESSORIES", function () : void
                        {
                            homeAllItem.myViewStack.selectedIndex = 2;
                            return;
                        }// end function
                        );
                        animationProxy.generalLoaders["buttons"]["common_tab"].content.addEventListener("TAB_ITEM_ITEMS", function () : void
                        {
                            homeAllItem.myViewStack.selectedIndex = 3;
                            return;
                        }// end function
                        );
                        animationProxy.generalLoaders["buttons"]["common_tab"].content.addEventListener("TAB_ITEM_MATERIALS", function () : void
                        {
                            homeAllItem.myViewStack.selectedIndex = 4;
                            return;
                        }// end function
                        );
                        return;
                    }// end function
                    , "tab_item_materials");
                    return;
                }// end function
                );
                return;
            }// end function
            , "right_670x460");
                    commonButtonAddSwf("buttons", "common", "close", homeAllItem.buttonLayer, function () : void
            {
                animationProxy.childLoaders["buttons"]["common"]["close"].content.addEventListener(MouseEvent.CLICK, function () : void
                {
                    animationProxy.childLoaders["buttons"]["common"]["close"].content.removeEventListener(MouseEvent.CLICK, arguments.callee);
                    animationProxy.childLoaders["buttons"]["common"]["dump"].content.removeEventListener(MouseEvent.CLICK, arguments.callee);
                    homeAllItem.close();
                    return;
                }// end function
                );
                return;
            }// end function
            , "button_cancel", 200, 480);
                    commonButtonAddSwf("buttons", "common", "dump", homeAllItem.buttonLayer, function () : void
            {
                animationProxy.childLoaders["buttons"]["common"]["dump"].content.addEventListener(MouseEvent.CLICK, function () : void
                {
                    homeAllItem.collectiveDump();
                    return;
                }// end function
                );
                return;
            }// end function
            , "button_delete", 400, 480);
                    break;
                }
                case Viking.HOME_ESTABLISHMENT_VIEW:
                {
                    checkAddChild();
                    app.home.windowLayer.addChild(homeEstablishment);
                    app.home.notPressed.visible = true;
                    homeEstablishment.player = playerProxy.playerVO;
                    windowAddSwfCommon(homeEstablishment.windowLayer, function (event:Event) : void
            {
                var e:* = event;
                var animationProxy:* = AnimationProxy(facade.retrieveProxy(AnimationProxy.NAME));
                animationProxy.generalLoaders["window"]["common"].content.addEventListener("ENLARGE_END", function (event:Event) : void
                {
                    return;
                }// end function
                );
                return;
            }// end function
            , "right_670x460");
                    break;
                }
                case Viking.HOME_ALL_SLEEP_UNIT_VIEW:
                {
                    sendNotification(LOAD_COFFINS);
                    app.home.windowLayer.addChild(homeAllSleepUnit);
                    break;
                }
                case Viking.HOME_FINISH_TUTORIAL:
                {
                    tutorialWindow.visible = false;
                    playerProxy.finishTutorial();
                    break;
                }
                case Viking.HOME_PRODUCE_OK_CLICKED:
                {
                    sendNotification(RELOAD_HOME_RESOURCE);
                    break;
                }
                case Viking.HOME_MAIL_LIST:
                {
                    app.showLoadingWindow();
                    homeProxy.loadMailList();
                    break;
                }
                case Viking.HOME_BATTLE_REPORT_LIST:
                {
                    app.showLoadingWindow();
                    homeProxy.loadRaidReport();
                    break;
                }
                case Viking.HOME_CLOSE_NOW_WINDOW:
                {
                    checkAddChild();
                    app.home.notPressed.visible = false;
                    app.home.removeButtons();
                    break;
                }
                case Viking.HOME_ACTION_OPEN_CEREMONY_WINDOW:
                {
                    tId = playerProxy.playerVO.tutorialId;
                    app.showLoadingWindow();
                    homeProxy.summonUnit();
                    if (tId == 4 || tId == 8 || tId == 12)
                    {
                        playerProxy.loadTutorial(PlayerProxy.INIT_TUTORIAL_STATE);
                    }
                    break;
                }
                case Viking.HOME_ACTION_OPEN_SHAM_BATTLE_WINDOW:
                {
                    if (alertWaitingUnitsCount())
                    {
                        return;
                    }
                    app.showLoadingWindow();
                    homeProxy.loadShamBattleTargetList();
                    break;
                }
                case Viking.HOME_ACTION_OPEN_RESEARCH_WINDOW:
                {
                    checkAddChild();
                    researchWindow.homeMaps = homeProxy.homemaps;
                    app.home.windowLayer.addChild(researchWindow);
                    app.home.notPressed.visible = true;
                    break;
                }
                case EQUIPMENT_DUMP:
                {
                    equipmentDumpWindow.dumpEqipment = homeAllItem.dumpData;
                    app.home.popupWindow(equipmentDumpWindow, false);
                    break;
                }
                case RaidCommandWindow.START_RAID:
                {
                    param = new Array();
                    if (playerProxy.playerVO.food <= 0)
                    {
                    }
                    else
                    {
                        param.push(raidCommandWindow.raidSelectTargetWindow.selectTargetId);
                        param.push(raidCommandWindow.raidSelectTargetWindow.selectTargetName);
                        sendNotification(START_RAID, param);
                        taskProxy.suspendTimer();
                    }
                    break;
                }
                case RaidCommandWindow.LOAD_TARGET:
                {
                    homeProxy.loadRaidTarget("notoriety", HomeProxy.HOME_RAIDTARGET_NOTORIETY);
                    homeProxy.loadRaidTarget("rival", HomeProxy.HOME_RAIDTARGET_RIVAL);
                    homeProxy.loadRaidTarget("revenge", HomeProxy.HOME_RAIDTARGET_REVENGE);
                    break;
                }
                case RaidCommandWindow.LOAD_REPORT:
                {
                    homeProxy.loadRaidReport();
                    break;
                }
                case Viking.PROTECT_FROM_RAID:
                {
                    app.showLoadingWindow();
                    homeProxy.protectFromRaid();
                    break;
                }
                case HomeEstablishment.INCREMENT_MAX_TASKS:
                {
                    app.showLoadingWindow();
                    homeProxy.incrementMaxTasksCount();
                    break;
                }
                case CeremonyWindow.MESSAGE_WINDOW_END:
                {
                    ceremonyWindow.unitLayer.removeChild(ceremonyUnitUI);
                    break;
                }
                case CeremonyWindow.INIT_AWAKE_UNION_UNIT_LIST:
                {
                    awakeMasters = masterProxy.getMasterAsArray(MasterProxy.AWAKE_MASTER);
                    units = unitProxy.homeWaitingUnits.filter(function (param1:UnitVO, param2:int, param3:Array) : Boolean
            {
                return awakeMasters.getOne("beforeGalleryCode", param1.galleryCode);
            }// end function
            );
                    if (units.length <= 0)
                    {
                        alertWindow = AlertWindow.show(Utils.i18n("homeMediatorCannotAwake"));
                        app.home.popupWindow(alertWindow, false);
                    }
                    else
                    {
                        ceremonyWindow.initAwakeUnionWindow(units, awakeMasters, homeProxy.homeVO.resourceVO);
                    }
                    break;
                }
                case CeremonyWindow.OPEN_UNIT_WINDOW_FROM_CEREMONY:
                {
                    ceremonyWindow.checkUnitFromCeremony.unitCanvas.visible = false;
                    childWindowAddSwfCommon(ceremonyWindow.checkUnitFromCeremony.windowLayer, function (event:Event) : void
            {
                var e:* = event;
                var animationProxy:* = AnimationProxy(facade.retrieveProxy(AnimationProxy.NAME));
                animationProxy.childLoaders["window"]["common"]["ceremonyUnitList"].content.addEventListener("ENLARGE_END", function (event:Event) : void
                {
                    ceremonyWindow.checkUnitFromCeremony.unitCanvas.visible = true;
                    return;
                }// end function
                );
                return;
            }// end function
            , "ceremonyUnitList", "center_720x460");
                    break;
                }
                case CeremonyWindow.NO_SACRIFIE_UNITS:
                {
                    alertWindow = AlertWindow.show(Utils.i18n("homeMediatorUnitsCanNotSacrifice"));
                    app.home.popupWindow(alertWindow, false);
                    break;
                }
                case SubjugationWindow.CLOSE_SUBJUGATION_WINDOW:
                {
                    app.home.windowLayer.removeChild(subjugationWindow);
                    taskProxy.resumeTimer();
                    break;
                }
                case ColonyWindow.CLOSE_COLONY_WINDOW:
                {
                    app.home.windowLayer.removeChild(colonyWindow);
                    taskProxy.resumeTimer();
                    break;
                }
                case MatchPortalWindow.CLOSE_MATCH_PORTAL_WINDOW:
                {
                    app.home.windowLayer.removeChild(matchPortalWindow);
                    taskProxy.resumeTimer();
                    break;
                }
                case ShamBattleTargetListWindow.CLOSED_SHAM_BATTLE_TARGET_LIST:
                {
                    app.home.windowLayer.removeChild(shamBattleTargetListWindow);
                    break;
                }
                case ExpeditionPortalWindow.CLOSE_EXPEDITION_PORTAL_WINDOW:
                {
                    app.home.windowLayer.removeChild(expeditionPortalWindow);
                    taskProxy.resumeTimer();
                    break;
                }
                case ExpeditionWindow.CLOSE_EXPEDITION_WINDOW:
                {
                    app.home.windowLayer.removeChild(expeditionPortalWindow);
                    app.home.windowLayer.removeChild(expeditionWindow);
                    taskProxy.resumeTimer();
                    break;
                }
                case Expedition2Window.CLOSE_EXPEDITION_WINDOW:
                {
                    app.home.windowLayer.removeChild(expeditionPortalWindow);
                    app.home.windowLayer.removeChild(expedition2Window);
                    taskProxy.resumeTimer();
                    break;
                }
                case Expedition3Window.CLOSE_EXPEDITION_WINDOW:
                {
                    app.home.windowLayer.removeChild(expeditionPortalWindow);
                    app.home.windowLayer.removeChild(expedition3Window);
                    taskProxy.resumeTimer();
                    break;
                }
                case ContinuationWindow.CLOSE_EXPEDITION_WINDOW:
                {
                    app.home.popupWindow(confirmFinishContinuationWindow, false);
                    confirmFinishContinuationWindow.battleText = Utils.i18n("continuationBattle");
                    confirmFinishContinuationWindow.confirmedEvent = CONFIRM_CONTINUATION_FINISH;
                    break;
                }
                case EventMapWindow.CLOSE_EXPEDITION_WINDOW:
                {
                    app.home.popupWindow(confirmFinishContinuationWindow, false);
                    confirmFinishContinuationWindow.battleText = Utils.i18n("continuationEventMap");
                    confirmFinishContinuationWindow.confirmedEvent = CONFIRM_EVENT_MAP_FINISH;
                    break;
                }
                case CONFIRM_CONTINUATION_FINISH:
                {
                    app.home.windowLayer.removeChild(expeditionPortalWindow);
                    app.home.windowLayer.removeChild(continuationWindow);
                    taskProxy.resumeTimer();
                    playerProxy.resetContinuationLevel();
                    break;
                }
                case CONFIRM_EVENT_MAP_FINISH:
                {
                    app.home.windowLayer.removeChild(expeditionPortalWindow);
                    app.home.windowLayer.removeChild(eventMapWindow);
                    taskProxy.resumeTimer();
                    playerProxy.resetEventMapLevel("");
                    break;
                }
                case LoginItemWindow.LOGIN_ANIMATION_END:
                {
                    playerProxy.matchBattleDefenceReport();
                    sendNotification(RELOAD_HOME_RESOURCE);
                    break;
                }
                case HomeAllSleepUnit.SLEEP_UNIT_WINDOW_BACK:
                {
                    app.home.windowLayer.removeChild(homeAllSleepUnit);
                    break;
                }
                case RaidReportWindow.CLOSED_BATTLE_REPORT_LIST:
                {
                    animationProxy.generalRemoveAnimation("buttons", "common_tab", raidReportWindow.ReportList);
                    break;
                }
                default:
                {
                    break;
                }
            }
            return;
        }// end function

        private function initTutorialMarks(param1:Boolean) : void
        {
            var _loc_2:* = PlayerProxy(facade.retrieveProxy(PlayerProxy.NAME));
            app.home.removeTutMarks();
            if (param1 && _loc_2.playerVO.tutorialId <= TUTORIAL_ID_MAX)
            {
                app.home.tutMarkTutorial.visible = true;
            }
            else
            {
                app.home.tutMarkTutorial.visible = false;
            }
            switch(_loc_2.playerVO.tutorialId)
            {
                case 1:
                {
                    trace("set tutorial:1");
                    if (!param1)
                    {
                        app.home.tutMarkShikihime.visible = true;
                        homeAllUnit.tutMarkUnit.visible = true;
                        homeAllUnit.tutMarkClose.visible = false;
                    }
                    else
                    {
                        homeAllUnit.tutMarkUnit.visible = false;
                        homeAllUnit.tutMarkClose.visible = true;
                    }
                    break;
                }
                case 2:
                {
                    trace("set tutorial:2");
                    if (!param1)
                    {
                        app.home.tutMarkShikihime.visible = true;
                        homeAllUnit.tutMarkUnit.visible = true;
                        homeAllUnit.tutMarkClose.visible = false;
                    }
                    else
                    {
                        homeAllUnit.tutMarkUnit.visible = false;
                        homeAllUnit.tutMarkClose.visible = true;
                    }
                    break;
                }
                case 3:
                {
                    trace("set tutorial:3");
                    if (!param1)
                    {
                        app.home.tutMarkShikihime.visible = true;
                        homeAllUnit.tutMarkUnit.visible = true;
                        homeAllUnit.tutMarkClose.visible = false;
                    }
                    else
                    {
                        homeAllUnit.tutMarkUnit.visible = false;
                        homeAllUnit.tutMarkClose.visible = true;
                    }
                    break;
                }
                case 4:
                {
                    trace("set tutorial:4");
                    if (ceremonyWindow)
                    {
                        ceremonyWindow.initNormalSummonTmarks(param1);
                    }
                    if (!param1)
                    {
                        app.home.tutMarkCeremony.visible = true;
                        if (ceremonyWindow)
                        {
                            ceremonyWindow.showTutMarkSummon();
                            ceremonyWindow.showTutMarkNormalSummon();
                        }
                    }
                    else if (ceremonyWindow)
                    {
                        ceremonyWindow.removeTutMarks();
                    }
                    break;
                }
                case 5:
                {
                    trace("set tutorial:5");
                    break;
                }
                case 6:
                {
                    trace("set tutorial:6");
                    if (!param1)
                    {
                        app.home.tutMarkAllMap.visible = true;
                    }
                    break;
                }
                case 7:
                {
                    trace("set tutorial:7");
                    break;
                }
                case 8:
                {
                    trace("set tutorial:8");
                    if (!param1)
                    {
                        app.home.tutMarkCeremony.visible = true;
                        if (ceremonyWindow)
                        {
                            ceremonyWindow.showTutMarkSummon();
                            ceremonyWindow.showTutMarkNormalSummon();
                        }
                    }
                    else if (ceremonyWindow)
                    {
                        ceremonyWindow.removeTutMarks();
                    }
                    break;
                }
                case 9:
                {
                    trace("set tutorial:9");
                    if (!param1)
                    {
                        app.home.tutMarkSubjugation.visible = true;
                        if (subjugationWindow)
                        {
                            subjugationWindow.initSubTmarks(true);
                        }
                    }
                    else if (subjugationWindow)
                    {
                        subjugationWindow.initSubTmarks(false);
                    }
                    break;
                }
                case 10:
                {
                    trace("set tutorial:10");
                    if (!param1)
                    {
                        app.home.tutMarkProduction.visible = true;
                    }
                    break;
                }
                case 11:
                {
                    trace("set tutorial:11");
                    if (!param1 && !researchTutFlg)
                    {
                        app.home.tutMarkResearch.visible = true;
                        if (researchWindow)
                        {
                            researchWindow.initResearchTmarks(true);
                        }
                    }
                    else if (researchWindow)
                    {
                        researchWindow.initResearchTmarks();
                    }
                    break;
                }
                case 12:
                {
                    trace("set tutorial:12");
                    if (ceremonyWindow)
                    {
                        ceremonyWindow.initRecipeUnionTmarks(param1);
                    }
                    if (!param1)
                    {
                        app.home.tutMarkCeremony.visible = true;
                        if (ceremonyWindow)
                        {
                            ceremonyWindow.showTutMarkUnion();
                            ceremonyWindow.showTutMarkRecipeUnion();
                        }
                    }
                    else if (ceremonyWindow)
                    {
                        ceremonyWindow.removeTutMarks();
                    }
                    break;
                }
                case 13:
                {
                    trace("set tutorial:13");
                    break;
                }
                case 14:
                {
                    trace("set tutorial:14");
                    if (!param1)
                    {
                        app.home.tutMarkAllMap.visible = true;
                    }
                    break;
                }
                case 15:
                {
                    trace("set tutorial:15");
                    app.home.tutMarkTutorial.visible = true;
                    break;
                }
                default:
                {
                    app.home.tutMarkTutorial.visible = false;
                    break;
                    break;
                }
            }
            return;
        }// end function

        private function childWindowAddSwf(param1, param2:Function, param3:String, param4:String = "purpose_window", param5:int = 0, param6:int = 0) : void
        {
            var _loc_7:* = AnimationProxy(facade.retrieveProxy(AnimationProxy.NAME));
            AnimationProxy(facade.retrieveProxy(AnimationProxy.NAME)).childAnimationLoaded("window", "general", param3, param4, param1, param5, param6);
            _loc_7.childLoaders["window"]["general"][param3].contentLoaderInfo.addEventListener(Event.COMPLETE, param2);
            return;
        }// end function

        private function addPlayerRankSwf(param1) : void
        {
            param1.removeAllChildren();
            var _loc_2:* = AnimationProxy(facade.retrieveProxy(AnimationProxy.NAME));
            var _loc_3:* = PlayerProxy(facade.retrieveProxy(PlayerProxy.NAME));
            var _loc_4:String = "";
            if (_loc_3.playerVO.playerRankId < 10)
            {
                _loc_4 = "0";
            }
            _loc_2.generalAnimationLoaded("ui", "rank", "rank_" + _loc_4 + _loc_3.playerVO.playerRankId, param1);
            return;
        }// end function

        private function setPlayerProperties() : void
        {
            var homeProxy:* = HomeProxy(facade.retrieveProxy(HomeProxy.NAME));
            homeAllItem.setEquipment(homeProxy.homeVO.resourceVO);
            homeAllItem.setMaterials(homeProxy.homeVO.resourceVO.materials.filter(function (param1, param2:int, param3:Array) : Boolean
            {
                return param1.quantity > 0;
            }// end function
            ));
            return;
        }// end function

        private function windowAddSwfCommon(param1, param2:Function, param3:String = "purpose_window", param4:int = 0, param5:int = 0) : void
        {
            var _loc_6:* = AnimationProxy(facade.retrieveProxy(AnimationProxy.NAME));
            AnimationProxy(facade.retrieveProxy(AnimationProxy.NAME)).generalAnimationLoaded("window", "common", param3, param1, param4, param5);
            _loc_6.generalLoaders["window"]["common"].contentLoaderInfo.addEventListener(Event.COMPLETE, param2);
            return;
        }// end function

        private function deleteCancelHandler(event:Event) : void
        {
            dataDeleteCancelWindow.removeEventListener(DataDeleteCancelWindow.DELETE_CANCEL, deleteCancelHandler);
            var _loc_2:* = HomeProxy(facade.retrieveProxy(HomeProxy.NAME));
            _loc_2.playerDataDeleteCancel();
            return;
        }// end function

        private function resetAllUnitViewIfNecessary() : void
        {
            if (homeAllUnit.createBool)
            {
                resetAllUnitView();
                homeAllUnit.createBool = false;
            }
            return;
        }// end function

        private function commonButtonAddSwf(param1:String, param2:String, param3:String, param4, param5:Function, param6, param7:int = 0, param8:int = 0) : void
        {
            var _loc_9:* = AnimationProxy(facade.retrieveProxy(AnimationProxy.NAME));
            AnimationProxy(facade.retrieveProxy(AnimationProxy.NAME)).childAnimationLoaded(param1, param2, param3, param6, param4, param7, param8);
            _loc_9.childLoaders[param1][param2][param3].contentLoaderInfo.addEventListener(Event.COMPLETE, param5);
            return;
        }// end function

        private function handleInfoEndEvent(event:Event) : void
        {
            app.home.infoButtonCanvas.visible = true;
            switch(app.home.savedInfo)
            {
                case "b_report":
                {
                    app.home.infoBox.visible = true;
                    break;
                }
                case "b_moving":
                {
                    app.home.taskBox.visible = true;
                    break;
                }
                case "b_chat":
                {
                    app.home.chatBox.visible = true;
                    app.home.infoChat.visible = true;
                    break;
                }
                case "b_chat_small_large":
                {
                    app.home.chatBox.visible = true;
                    break;
                }
                case "b_chat_large_small_l":
                {
                    app.home.chatBox.visible = true;
                    break;
                }
                default:
                {
                    break;
                }
            }
            return;
        }// end function

        private function handlePopupEvent(event:PopupEvent) : void
        {
            var homeProxy:HomeProxy;
            var unitImageMasterProxy:UnitImageMasterProxy;
            var productionProxy:ProductionProxy;
            var masterProxy:MasterProxy;
            var gatheringProxy:GatheringProxy;
            var homeMapVO:HomeMapVO;
            var buildingVO:BuildingVO;
            var buildingProxy:BuildingProxy;
            var areaId:int;
            var unit:UnitVO;
            var sakura:Sakura;
            var resourceProxy:ResourceProxy;
            var equipableResource:ResourceVO;
            var sakuraProxy:SakuraProxy;
            var mailId:int;
            var replyMail:Object;
            var mail:Object;
            var errorText:String;
            var selectUnit:UnitVO;
            var window:*;
            var u:UnitVO;
            var w:*;
            var j:int;
            var event:* = event;
            var unitProxy:* = UnitProxy(facade.retrieveProxy(UnitProxy.NAME));
            var selectUnitProxy:* = SelectUnitProxy(facade.retrieveProxy(SelectUnitProxy.NAME));
            homeProxy = HomeProxy(facade.retrieveProxy(HomeProxy.NAME));
            var taskProxy:* = TaskProxy(facade.retrieveProxy(TaskProxy.NAME));
            unitImageMasterProxy = UnitImageMasterProxy(facade.retrieveProxy(UnitImageMasterProxy.NAME));
            var imageProxy:* = ImageProxy(facade.retrieveProxy(ImageProxy.NAME));
            var animationProxy:* = AnimationProxy(facade.retrieveProxy(AnimationProxy.NAME));
            var playerProxy:* = PlayerProxy(facade.retrieveProxy(PlayerProxy.NAME));
            switch(event.type)
            {
                case Viking.HOME_PRODUCE:
                {
                    productionProxy = ProductionProxy(facade.retrieveProxy(ProductionProxy.NAME));
                    productionProxy.produce(event.param.production, event.param.quantity, event.param.instance_id);
                    break;
                }
                case ProductionWindow.UPGRADE_ITEM:
                {
                    homeProxy.upgrade(event.param.materialCode, event.param.upgradeItemId, event.param.type);
                    break;
                }
                case PRODUCE_MAX_QUANTITY:
                {
                    AlertWindow.show(Utils.i18n("homeMediatorProduceMaxQuantity", event.param), "", AlertWindow.OK, app.home);
                    break;
                }
                case ProductionWindow.OPEN_UPGRADE_WINDOW:
                {
                    masterProxy = MasterProxy(facade.retrieveProxy(MasterProxy.NAME));
                    productionWindow.upgradeItemWindow.smallerCanvas.visible = false;
                    productionWindow.upgradeItemWindow.materialItems = homeProxy.getItemUpgradeMaterialsByType(event.param.masterType);
                    productionWindow.upgradeItemWindow.upgradeItem = event.param;
                    productionWindow.upgradeItemWindow.upgradedMaster = masterProxy.getMasterVOByCode(event.param.masterType, event.param.masterVO.upgradeCode);
                    childWindowAddSwfCommon(productionWindow.upgradeItemWindow.windowLayer, function (event:Event) : void
            {
                var e:* = event;
                var animationProxy:* = AnimationProxy(facade.retrieveProxy(AnimationProxy.NAME));
                animationProxy.childLoaders["window"]["common"]["condition"].content.addEventListener("ENLARGE_END", function (event:Event) : void
                {
                    productionWindow.upgradeItemWindow.smallerCanvas.visible = true;
                    return;
                }// end function
                );
                return;
            }// end function
            , "condition", "center_400x360");
                    break;
                }
                case Viking.HOME_GATHER:
                {
                    gatheringProxy = GatheringProxy(facade.retrieveProxy(GatheringProxy.NAME));
                    app.showLoadingWindow();
                    gatheringProxy.gather(event.param.activity, event.param.unitId, event.param.quantity);
                    resetAllUnitViewIfNecessary();
                    break;
                }
                case Viking.HOME_ENTER_CITY:
                {
                    sendNotification(ENTER_CITY, [event.param, app.home.player.factionId]);
                    break;
                }
                case Viking.HOME_ACTION_RESEARCH:
                {
                    homeMapVO = homeProxy.homemaps[(int(event.param.researchId) - 1)] as HomeMapVO;
                    j;
                    while (j < unitProxy.homeUnits.length)
                    {
                        
                        unitProxy.loadAnimation(unitProxy.homeUnits[j]);
                        j = (j + 1);
                    }
                    buildingVO = homeMapVO.buildingVO;
                    sendNotification(PREPARE_BUILDING_WINDOW, homeMapVO);
                    break;
                }
                case Viking.HOME_BUILD_START:
                {
                    trace("build start");
                    buildingProxy = BuildingProxy(facade.retrieveProxy(BuildingProxy.NAME));
                    areaId = homeProxy.homemaps[(app.home.landID - 1)].id;
                    if (playerProxy.playerVO.tutorialId == 11)
                    {
                        researchTutFlg = true;
                        trace("研究開始");
                        app.home.tutMarkResearch.visible = false;
                    }
                    buildingProxy.build(event.param.buildingName, event.param.unitId, areaId, event.param.buildingCode);
                    break;
                }
                case Viking.HOME_GET_EQUIPABLE_RESOURCE:
                {
                    unit = event.param.unit as UnitVO;
                    sakura = event.param.sakura as Sakura;
                    resourceProxy = ResourceProxy(facade.retrieveProxy(ResourceProxy.NAME));
                    equipableResource = resourceProxy.equipableResource(unit.jobMasterVO, homeProxy.homeVO.resourceVO);
                    break;
                }
                case HomeAllItem.CLOSED_HOME_ALL_ITEM:
                {
                    animationProxy.generalRemoveAnimation("buttons", "common_tab", homeAllItem.itemList);
                    removeCommand(event);
                    break;
                }
                case TutorialWindow.SELECT_FACTION:
                {
                    app.showLoadingWindow();
                    playerProxy.admissionFaction(event.param as int);
                    break;
                }
                case FactionWindow.SELECT_FACTION:
                {
                    app.showLoadingWindow();
                    playerProxy.admissionFaction(event.param as int, PlayerProxy.ADMISSION_FACTION_WITHOUT_TUTORIAL_COMPLETE, PlayerProxy.ADMISSION_FACTION_WITHOUT_TUTORIAL_ERROR);
                    break;
                }
                case Viking.LEVELUP_WITH_SELECTED_SKILL:
                {
                    sakuraProxy = SakuraProxy(facade.retrieveProxy(SakuraProxy.NAME));
                    sendNotification(LEVELUP, [sakuraProxy.sakura.unit, "home", event.param]);
                    break;
                }
                case Viking.HOME_EQUIPMENT_DUMP:
                {
                    homeProxy.dumpEquipment(equipmentDumpWindow.dumpEqipment);
                    break;
                }
                case Viking.REINCARNATE:
                {
                    app.showLoadingWindow();
                    sendNotification(REINCARNATE, event.param);
                    break;
                }
                case Viking.REJUVENATE:
                {
                    app.showLoadingWindow();
                    sendNotification(REJUVENATE, event.param);
                    break;
                }
                case Viking.RENAME:
                {
                    app.showLoadingWindow();
                    sendNotification(RENAME, event.param);
                    break;
                }
                case HomeAllUnit.IMAGE_CHANGE:
                {
                    unit = event.param as UnitVO;
                    unitImageMasterProxy.loadImages(unit.imageKind);
                    imageProxy.callAfterImageLoaded(function () : void
            {
                changeImageWindow.unit = unit;
                changeImageWindow.setImages(unitImageMasterProxy.getImagesByType(unit.imageKind));
                app.home.popupWindow(changeImageWindow);
                return;
            }// end function
            );
                    break;
                }
                case Viking.IMAGE_CHANGE:
                {
                    app.showLoadingWindow();
                    sendNotification(IMAGE_CHANGE, event.param);
                    break;
                }
                case Viking.FINISH_TASK_IMMEDIATELY:
                {
                    app.showLoadingWindow();
                    taskProxy.finishTaskImmediately(int(event.param));
                    break;
                }
                case Viking.ASSISTANT_FACE_CHANGE:
                {
                    animationProxy.generalAnimationChange("assistants", assistant, event.param as String);
                    break;
                }
                case HomeAllItem.EQUIPMENT_COLLECTIVE_DUMP:
                {
                    app.home.popupWindow(confirmCollectiveDumpWindow, false);
                    confirmCollectiveDumpWindow.smallerCanvas.visible = false;
                    confirmCollectiveDumpWindow.dumpItems = event.param as Array;
                    childWindowAddSwfCommon(confirmCollectiveDumpWindow.windowLayer, function (event:Event) : void
            {
                var e:* = event;
                var animationProxy:* = AnimationProxy(facade.retrieveProxy(AnimationProxy.NAME));
                animationProxy.childLoaders["window"]["common"]["collectiveDump"].content.addEventListener("ENLARGE_END", function (event:Event) : void
                {
                    confirmCollectiveDumpWindow.smallerCanvas.visible = true;
                    return;
                }// end function
                );
                return;
            }// end function
            , "collectiveDump", "center_400x360");
                    break;
                }
                case MailListWindow.MAIL_DETAIL:
                {
                    mailId = int(event.param);
                    homeProxy.loadMailDetail(mailId);
                    break;
                }
                case ReplyMailWindow.REPLY_MAIL_SEND:
                {
                    replyMail = Object(event.param);
                    homeProxy.sendMail(replyMail, HomeProxy.REPLY_MAIL_SEND_COMPLETE);
                    break;
                }
                case MailListWindow.MAIL_SEND:
                {
                    mail = Object(event.param);
                    homeProxy.sendMail(mail, HomeProxy.MAIL_SEND_COMPLETE);
                    break;
                }
                case MailListWindow.LOAD_MAIL_LIST_WITH_PAGE:
                {
                    homeProxy.loadMailList(int(event.param));
                    break;
                }
                case MailListWindow.REPLY_MAIL:
                {
                    app.home.popupWindow(replyMailWindow, false);
                    replyMailWindow.setLetter(Object(event.param));
                    break;
                }
                case CeremonyWindow.CONFIRM_ITEM_SUMMON:
                {
                    sendNotification(CONFIRM_ITEM_SUMMON, event.param);
                    break;
                }
                case CeremonyWindow.NORMAL_SUMMON_NEW_UNIT:
                {
                    homeProxy.normalSummon(Object(event.param.summon));
                    break;
                }
                case CeremonyWindow.SHOW_ALERT_CEREMONY_ERROR:
                {
                    errorText = event.param as String;
                    AlertWindow.show(errorText, "", AlertWindow.OK, app.home);
                    break;
                }
                case CeremonyWindow.SPECIAL_SUMMON_NEW_UNIT:
                {
                    if (event.param.type == "rainbow")
                    {
                        homeProxy.summonRainbow();
                    }
                    else if (event.param.type == "hero")
                    {
                        homeProxy.summonHero();
                    }
                    else if (event.param.type == "sky")
                    {
                        homeProxy.summonSky();
                    }
                    else if (event.param.type == "campaign1")
                    {
                        homeProxy.summonCampaign();
                    }
                    else if (event.param.type == "campaign2")
                    {
                        homeProxy.summonCampaign2();
                    }
                    else if (event.param.type == "campaign3")
                    {
                        homeProxy.summonCampaign3();
                    }
                    else if (event.param.type == "racial1" || event.param.type == "racial2" || event.param.type == "racial3")
                    {
                        homeProxy.summonRacial(event.param.type);
                    }
                    else
                    {
                        homeProxy.summonBrave();
                    }
                    break;
                }
                case CeremonyWindow.CEREMONY_WINDOW_ANIMATION_CHANGE:
                {
                    animationProxy.generalAnimationChange("window", "common", event.param.animationName);
                    break;
                }
                case CeremonyWindow.ADD_UNIT_SWF:
                {
                    selectUnit = event.param.unit;
                    window = event.param.window;
                    selectUnit.loader.x = 300;
                    selectUnit.loader.y = 185;
                    if (event.param.type == "yin")
                    {
                        selectUnit.loader.x = selectUnit.loader.x + 78;
                        selectUnit.loader.y = selectUnit.loader.y + 27;
                    }
                    else if (event.param.type == "center")
                    {
                        selectUnit.loader.x = selectUnit.loader.x + 39;
                        selectUnit.loader.y = selectUnit.loader.y + 13;
                    }
                    else if (event.param.type == "sacrifice")
                    {
                        selectUnit.loader.x = 0;
                        selectUnit.loader.y = 0;
                        window = ceremonyWindow;
                    }
                    selectUnit.loader.contentLoaderInfo.addEventListener(Event.COMPLETE, function (event:Event) : void
            {
                selectUnit.loader.contentLoaderInfo.removeEventListener(Event.COMPLETE, arguments.callee);
                arguments = LoaderInfo(event.target);
                MovieClip(arguments.content).gotoAndStop("item_f_l");
                return;
            }// end function
            );
                    selectUnit.loader.loadBytes(animationProxy.getUnitAnimation(selectUnit.jobMasterVO.code, 0));
                    selectUnit.uic.addChild(selectUnit.loader);
                    window.unitLayer.addChild(selectUnit.uic);
                    break;
                }
                case CeremonyWindow.REMOVE_UNIT_SWF:
                {
                    u = event.param.unit;
                    w = event.param.window;
                    w.unitLayer.removeChild(u.uic);
                    break;
                }
                case CeremonyWindow.NORMAL_UNION_NEW_UNIT:
                {
                    homeProxy.normalUnion(UnitVO(event.param.yangUnit), UnitVO(event.param.yinUnit));
                    break;
                }
                case CeremonyWindow.RECIPE_UNION_NEW_UNIT:
                {
                    homeProxy.recipeUnion(UnitVO(event.param.yangUnit), UnitVO(event.param.yinUnit), int(event.param.recipeId));
                    break;
                }
                case CeremonyWindow.AWAKE_UNION_NEW_UNIT:
                {
                    homeProxy.awakeUnion(UnitVO(event.param.unit));
                    break;
                }
                case CeremonyWindow.SACRIFICE_RUN:
                {
                    animationProxy.changeAnime(event.param.unit, "item", null, null);
                    homeProxy.sacrifice(UnitVO(event.param.unit));
                    break;
                }
                case CeremonyWindow.DISMISSION_UNIT_FROM_CEREMONY:
                {
                    app.showLoadingWindow();
                    homeProxy.unitDismiss(int(event.param.unit.unitId), HomeProxy.HOME_UNIT_DISMISS_FROM_CEREMONY);
                    break;
                }
                case ChangeImageWindow.IMAGE_SELECTED:
                {
                    homeProxy.changeImage(UnitVO(event.param.unit), event.param.path);
                    break;
                }
                case SubjugationWindow.SELECT_LEVEL_COMPLETE:
                {
                    app.showLoadingWindow();
                    homeProxy.startSelectUnitForEvilPoint(event.param.topographyId, event.param.level);
                    break;
                }
                case ShamBattleTargetListWindow.SELECT_SHAM_BATTLE_TARGET_COMPLETE:
                {
                    app.showLoadingWindow();
                    homeProxy.startSelectUnitForShamBattle(event.param.id);
                    break;
                }
                case ShamBattleTargetListWindow.SELECT_RANDOM_SHAM_BATTLE:
                {
                    app.showLoadingWindow();
                    homeProxy.startSelectUnitForShamBattle();
                    break;
                }
                case ColonyWindow.SELECT_COLONY_COMPLETE:
                {
                    app.showLoadingWindow();
                    homeProxy.startSelectUnitForColony(event.param.colonyId, event.param.type);
                    break;
                }
                case ExpeditionWindow.DESCRIPTION_COMPLETE:
                {
                    app.showLoadingWindow();
                    selectUnitProxy.forbiddenJobIds = event.param.forbiddenJobIds;
                    homeProxy.startExpeditionSelectUnit(event.param.topographyId, event.param.level, event.param.evilPointId);
                    break;
                }
                case Expedition2Window.DESCRIPTION_COMPLETE:
                {
                    app.showLoadingWindow();
                    selectUnitProxy.forbiddenJobIds = event.param.forbiddenJobIds;
                    homeProxy.startExpeditionSelectUnit(event.param.topographyId, event.param.level, event.param.evilPointId, HomeProxy.START_EXPEDITION2_SELECT_UNIT);
                    break;
                }
                case Expedition3Window.DESCRIPTION_COMPLETE:
                {
                    app.showLoadingWindow();
                    selectUnitProxy.forbiddenJobIds = event.param.forbiddenJobIds;
                    homeProxy.startExpeditionSelectUnit(event.param.topographyId, event.param.level, event.param.evilPointId, HomeProxy.START_EXPEDITION3_SELECT_UNIT, event.param.evilPointType);
                    break;
                }
                case EventMapWindow.DESCRIPTION_COMPLETE:
                case ContinuationWindow.DESCRIPTION_COMPLETE:
                {
                    app.showLoadingWindow();
                    selectUnitProxy.forbiddenJobIds = event.param.forbiddenJobIds;
                    homeProxy.startExpeditionSelectUnit(event.param.topographyId, event.param.level, event.param.evilPointId, HomeProxy.START_CONTINUATION_SELECT_UNIT, event.param.evilPointType);
                    break;
                }
                case ContinuationWindow.RESUME_POINT:
                {
                    app.showLoadingWindow();
                    playerProxy.resetContinuationLevel(PlayerProxy.RESUME_CONTINUATION_LEVEL, int(event.param));
                    break;
                }
                case RaidReportWindow.RAID_DITAIL_REPORT:
                {
                    app.showLoadingWindow();
                    homeProxy.loadDitailReport(event.param as int);
                    break;
                }
                case RaidReportWindow.COLONY_DITAIL_REPORT:
                {
                    app.showLoadingWindow();
                    homeProxy.loadColonyDitailReport(event.param as int);
                    break;
                }
                case Viking.HOME_INCREASE_MAX_UNIT:
                {
                    homeProxy.incrementMaxUnitsCount(event.param as int);
                    break;
                }
                case ConfirmItemSummonWindow.CONFIRMED:
                {
                    app.showLoadingWindow();
                    homeProxy.itemSummon(event.param as String);
                    break;
                }
                case ConfirmStartContinuationWindow.CONFIRMED:
                {
                    app.showLoadingWindow();
                    if (event.param == "eventMap")
                    {
                        homeProxy.eventMapEvilPoint();
                        playerProxy.resetEventMapLevel(PlayerProxy.RESUME_EVENT_MAP_LEVEL);
                    }
                    else
                    {
                        homeProxy.continuationEvilPoint();
                        playerProxy.resetContinuationLevel(PlayerProxy.RESUME_CONTINUATION_LEVEL);
                    }
                    taskProxy.suspendTimer();
                    break;
                }
                default:
                {
                    break;
                }
            }
            return;
        }// end function

        private function shikihimeListChangeReverseAnimation(event:PopupEvent) : void
        {
            var animationProxy:AnimationProxy;
            var e:* = event;
            animationProxy = AnimationProxy(facade.retrieveProxy(AnimationProxy.NAME));
            homeAllUnit.unitAlphaTimer.stop();
            homeAllUnit.unitAlphaTimer.reset();
            var endFrame:String;
            homeAllUnit.unitsCanvas.alpha = 0;
            if (e.param.frame == "start3")
            {
                endFrame;
            }
            reversePlayTimer.start();
            reversePlayFrame = 0;
            animationProxy.generalLoaders["ui"]["shikihimeList"].content.addEventListener("End1", function (event:Event) : void
            {
                animationProxy.generalLoaders["ui"]["shikihimeList"].content.removeEventListener("End1", arguments.callee);
                animationProxy.generalLoaders["ui"]["shikihimeList"].content.removeEventListener("End2", arguments.callee);
                reversePlayTimer.stop();
                reversePlayTimer.reset();
                return;
            }// end function
            );
            animationProxy.generalLoaders["ui"]["shikihimeList"].content.addEventListener("End2", function (event:Event) : void
            {
                animationProxy.generalLoaders["ui"]["shikihimeList"].content.removeEventListener("End1", arguments.callee);
                animationProxy.generalLoaders["ui"]["shikihimeList"].content.removeEventListener("End2", arguments.callee);
                reversePlayTimer.stop();
                reversePlayTimer.reset();
                return;
            }// end function
            );
            return;
        }// end function

        override public function onRegister() : void
        {
            app.showLoadingWindow();
            addEventListeners([[app.home, Viking.HOME_COLLECT, handleEvent], [app.home, Viking.HOME_PRODUCTION, handleEvent], [app.city, Viking.HOME_REPORT, handleEvent], [app.home, Viking.FADE_OUT, handleEvent], [app.home, Viking.ASSISTANT_UPDATE, handleEvent], [app.home, Viking.HOME_BUILD, handleEvent], [app.home, Viking.HOME_ACTION_GOTO_ALL_MAP, handleEvent], [app.home, Viking.HOME_ACTION_GOTO_SUBJUGATION, handleEvent], [app.home, Viking.HOME_ACTION_GOTO_COLONY, handleEvent], [app.home, Viking.HOME_ACTION_GOTO_MATCH_PORTAL, handleEvent], [matchPortalWindow, MatchPortalWindow.HOME_ACTION_GOTO_MATCH, handleEvent], [matchPortalWindow, MatchPortalWindow.HOME_ACTION_GOTO_SHAM, handleEvent], [matchPortalWindow, MatchPortalWindow.HOME_ACTION_GOTO_SPECIAL_MATCH, handleEvent], [matchPortalWindow, MatchPortalWindow.MATCH_GARRISON_WINDOW_OPEN, handleEvent], [app.home, Viking.HOME_ACTION_GOTO_EXPEDITION_PORTAL, handleEvent], [expeditionPortalWindow, ExpeditionPortalWindow.HOME_ACTION_GOTO_EXPEDITION, handleEvent], [expeditionPortalWindow, ExpeditionPortalWindow.HOME_ACTION_GOTO_EXPEDITION2, handleEvent], [expeditionPortalWindow, ExpeditionPortalWindow.HOME_ACTION_GOTO_EXPEDITION3NORMAL, handleEvent], [expeditionPortalWindow, ExpeditionPortalWindow.HOME_ACTION_GOTO_EXPEDITION3HARD, handleEvent], [expeditionPortalWindow, ExpeditionPortalWindow.HOME_ACTION_GOTO_CONTINUATION, handleEvent], [expeditionPortalWindow, ExpeditionPortalWindow.HOME_ACTION_GOTO_EVENT_MAP, handleEvent], [app.home, Viking.HOME_ACTION_DEGRADATION, handleEvent], [app.home, Viking.HOME_SAMPLE_BUTTON, handleEvent], [app.home, Viking.HOME_SAMPLE_BUTTON2, handleEvent], [app.home, Viking.HOME_ACTION_START_SEND_ARMY, handleEvent], [app.home, Viking.HOME_RAID_COMMAND_SELECT, handleEvent], [app.home, Viking.HOME_SHOW_PRODUCTION_WINDOW, handleEvent], [homeAllUnit, Viking.HOME_SHOW_GATHERING_WINDOW, handleEvent], [app.home, Viking.HOME_SHOW_ANNOUNCEMENT, handleEvent], [app.home, Viking.HOME_SHOW_TUTORIAL_WINDOW, handleEvent], [app.home, Viking.HOME_MAIL_LIST, handleEvent], [app.home, Viking.HOME_BATTLE_REPORT_LIST, handleEvent], [app.home, Viking.HOME_CLOSE_NOW_WINDOW, handleEvent], [app.home, Viking.HOME_ENTER_CITY, handlePopupEvent], [app.home, Viking.HOME_ACTION_OPEN_CEREMONY_WINDOW, handleEvent], [app.home, Viking.HOME_ACTION_OPEN_RESEARCH_WINDOW, handleEvent], [app.home, Viking.HOME_ACTION_OPEN_SHAM_BATTLE_WINDOW, handleEvent], [app.home, Viking.HOME_CEREMONY, handleEvent], [app.home, Viking.FINISH_TASK_IMMEDIATELY, handlePopupEvent], [homeEstablishment, HomeEstablishment.INCREMENT_MAX_TASKS, handleEvent], [homeEstablishment, HomeEstablishment.CLOSED_HOME_ESTABLISHMENT, removeCommand], [app.home, "chatLog", handleEvent], [app.home, "chatUpdate", handleEvent], [app.home, Viking.CHAT_WINDOW_SIZE_CHANGE, handleEvent], [app.home, Viking.HOME_MAIN_VIEW, handleEvent], [app.home, Viking.HOME_ALL_UNIT_VIEW, handleEvent], [app.home, Viking.HOME_ALL_ITEM_VIEW, handleEvent], [app.home, Viking.HOME_ALL_GALLERY_VIEW, handleEvent], [app.home, Viking.HOME_ESTABLISHMENT_VIEW, handleEvent], [app.home, Viking.ASSISTANT_FACE_CHANGE, handlePopupEvent], [homeAllItem, EQUIPMENT_DUMP, handleEvent], [homeAllItem, HomeAllItem.EQUIPMENT_COLLECTIVE_DUMP, handlePopupEvent], [homeAllItem, SET_EQUIPABILITY_JOB, handleEvent], [homeAllItem, HomeAllItem.CLOSED_HOME_ALL_ITEM, handlePopupEvent], [homeAllUnit, Viking.HOME_ALL_SLEEP_UNIT_VIEW, handleEvent], [homeAllUnit, Viking.HOME_INCREASE_MAX_UNIT, handlePopupEvent], [homeAllUnit, HomeAllUnit.DISMISS, allUnitEvent], [homeAllUnit, HomeAllUnit.CLOSED_HOME_ALL_UNIT, removeHomeAllUnitCommand], [homeAllUnit, HomeAllUnit.NEXT_PAGE, shikihimeListChangeAnimation], [homeAllUnit, HomeAllUnit.PREVIOS_PAGE, shikihimeListChangeReverseAnimation], [homeAllUnit, HomeAllUnit.IMAGE_CHANGE, handlePopupEvent], [homeAllGallery, HomeAllGallery.CLOSED_HOME_ALL_GALLERY, removeHomeAllGalleryCommand], [homeAllGallery, HomeAllGallery.MOVE_PREVIEW_PAGE, handleEvent], [homeAllGallery, HomeAllGallery.MOVE_NEXT_PAGE, handleEvent], [homeAllUnit.unitAlphaTimer, TimerEvent.TIMER, unitTimerEvent], [homeAllUnit, Viking.HOME_GET_EQUIPABLE_RESOURCE, handlePopupEvent], [homeAllUnit, Viking.REINCARNATE, handlePopupEvent], [homeAllUnit, Viking.REJUVENATE, handlePopupEvent], [homeAllUnit, Viking.RENAME, handlePopupEvent], [homeAllUnit, HomeAllUnit.OPEN_UNIT_LIST, handleEvent], [buildWindow, Viking.HOME_BUILD_START, handlePopupEvent], [buildWindow, BuildWindow.SELECT_BUILDING_CLOSE, handleEvent], [buildWindow, BuildWindow.OPEN_UNIT_LIST, handleEvent], [buildWindow, BuildWindow.CLOSE_UNIT_LIST, handleEvent], [buildWindow, BuildWindow.OPEN_WINDOW, handleEvent], [confirmBuildWindow, ConfirmBuildWindow.CLOSE_WINDOW, handleEvent], [productionWindow, Viking.HOME_PRODUCE, handlePopupEvent], [productionWindow, ProductionWindow.UPGRADE_ITEM, handlePopupEvent], [productionWindow, PRODUCE_MAX_QUANTITY, handlePopupEvent], [productionWindow, ProductionWindow.OPEN_UPGRADE_WINDOW, handlePopupEvent], [productionWindow, ProductionWindow.OPEN_QUANTITY_WINDOW, handleEvent], [productionWindow, ProductionWindow.OPEN_CONDITION_WINDOW, handleEvent], [productionWindow, ProductionWindow.CLOSED_PRODUCTION_WINDOW, removeCommand], [homeAllUnit.collectWindow, Viking.HOME_GATHER, handlePopupEvent], [researchWindow, Viking.HOME_ACTION_RESEARCH, handlePopupEvent], [researchWindow, ResearchWindow.CLOSE_RESEARCH_WINDOW, handleEvent], [researchWindow, ResearchWindow.CLICK_CLOSE_BUTTON, handleEvent], [homeAllUnit.collectWindow, CollectWindow.OPEN_UNIT_LIST, handleEvent], [homeAllUnit.collectWindow, CollectWindow.CLOSE_UNIT_LIST, handleEvent], [homeAllUnit.collectWindow, CollectWindow.CLOSED_COLLECT_WINDOW, removeCollectWindowButton], [homeAllUnit.collectWindow, CollectWindow.NO_UNIT, handleEvent], [tutorialWindow, TutorialWindow.CLOSED_TUTORIAL_WINDOW, removeCommand], [tutorialWindow, TutorialWindow.CHANGE_SWF, handleEvent], [tutorialWindow, TutorialWindow.REMOVE_SWF, handleEvent], [tutorialWindow, TutorialWindow.SELECT_FACTION, handlePopupEvent], [tutorialWindow, Viking.HOME_FINISH_TUTORIAL, handleEvent], [tutorialWindow, Viking.HOME_SHOW_NEXT_TUTORIAL, handleEvent], [factionWindow, FactionWindow.SELECT_FACTION, handlePopupEvent], [checkQuestWindow, CheckQuestWindow.CLOSE_CHECK_QUEST_WINDOW, removeCommandCommon], [unitLevelUpWindow, UnitLevelUpWindow.CLOSED_UNITLEVELUP_WINDOW, removeCommand], [levelUpWindow, Viking.LEVELUP_WITH_SELECTED_SKILL, handlePopupEvent], [equipmentDumpWindow, Viking.HOME_EQUIPMENT_DUMP, handlePopupEvent], [guildApprovalWindow, "allowApplication", handleEvent], [guildApprovalWindow, "rejectApplication", handleEvent], [raidCommandWindow, RaidCommandWindow.START_RAID, handleEvent], [raidCommandWindow, RaidCommandWindow.LOAD_TARGET, handleEvent], [raidCommandWindow, RaidCommandWindow.LOAD_REPORT, handleEvent], [raidCommandWindow, Viking.PROTECT_FROM_RAID, handleEvent], [mailListWindow, MailListWindow.MAIL_DETAIL, handlePopupEvent], [mailListWindow, MailListWindow.MAIL_SEND, handlePopupEvent], [mailListWindow, MailListWindow.REPLY_MAIL, handlePopupEvent], [mailListWindow, MailListWindow.CLOSED_MAIL_LIST_WINDOW, removeCommand], [raidReportWindow, RaidReportWindow.CLOSED_BATTLE_REPORT_LIST, removeCommand], [raidReportWindow, RaidReportWindow.CLOSED_BATTLE_REPORT_LIST, handleEvent], [shamBattleTargetListWindow, ShamBattleTargetListWindow.SELECT_SHAM_BATTLE_TARGET_COMPLETE, handlePopupEvent], [shamBattleTargetListWindow, ShamBattleTargetListWindow.SELECT_RANDOM_SHAM_BATTLE, handlePopupEvent], [raidReportWindow, RaidReportWindow.RAID_DITAIL_REPORT, handlePopupEvent], [raidReportWindow, RaidReportWindow.COLONY_DITAIL_REPORT, handlePopupEvent], [raidReportWindow, RaidReportWindow.GUILD_MEMBER_RAID_DITAIL_REPORT, handlePopupEvent], [mailListWindow, MailListWindow.LOAD_MAIL_LIST_WITH_PAGE, handlePopupEvent], [replyMailWindow, ReplyMailWindow.REPLY_MAIL_SEND, handlePopupEvent], [confirmAddAreaWindow, ConfirmAddAreaWindow.CONFIRMED, handleEstablishmentEvent], [confirmDoubleExpWindow, ConfirmDoubleExpWindow.CONFIRMED, handleEstablishmentEvent], [confirmPassYearWindow, ConfirmPassYearWindow.CONFIRMED, handleEstablishmentEvent], [confirmDoubleDropWindow, ConfirmDoubleDropWindow.CONFIRMED, handleEstablishmentEvent], [homeAllSleepUnit, HomeAllSleepUnit.CHECK_ICE, handleIcePopupEvent], [homeAllSleepUnit, HomeAllSleepUnit.UNIT_ICING_SLEEP, handleIcePopupEvent], [homeAllSleepUnit, HomeAllSleepUnit.AWAKE_UNIT, handleIcePopupEvent], [homeAllSleepUnit, HomeAllSleepUnit.SLEEP_UNIT_WINDOW_BACK, handleEvent], [chengeIceCheckWindow, HomeAllSleepUnit.AWAKE_UNIT, handleIcePopupEvent], [chengeIceCheckWindow, ChengeIceCheckWindow.CHANGE_ICE_OK, handleIcePopupEvent], [selectSleepUnitWindow, SelectSleepUnitWindow.SELECT_SLEEPING_UNIT, handleIcePopupEvent], [pullUnitCheckWindow, PullUnitCheckWindow.AWAKE_UNIT_CONFIRMED, handleIcePopupEvent], [sacrificeWindow, SacrificeWindow.SACRIFICE, handleSacrificePopupEvent], [sacrificeConfirmedWindow, SacrificeConfirmedWindow.SACRIFICE_UNIT_CONFIRMED, handleSacrificePopupEvent], [confirmStartMatchWindow, ConfirmStartMatchWindow.CONFIRMED, handleEvent], [confirmStartMatchWindow, ConfirmStartMatchWindow.SELECT_MATCH_BATTLE, handleEvent], [confirmStartMatchWindow, ConfirmStartMatchWindow.SELECT_SPECIAL_MATCH_BATTLE, handleEvent], [confirmStartContinuationWindow, ConfirmStartContinuationWindow.CONFIRMED, handlePopupEvent], [confirmFinishContinuationWindow, CONFIRM_CONTINUATION_FINISH, handleEvent], [confirmFinishContinuationWindow, CONFIRM_EVENT_MAP_FINISH, handleEvent], [confirmItemSummonWindow, ConfirmItemSummonWindow.CONFIRMED, handlePopupEvent], [confirmCollectiveDumpWindow, ConfirmCollectiveDumpWindow.CONFIRMED, handleDumpPopupEvent], [ritualWindow, RitualWindow.RITUAL_CHECK, handleRitualPopupEvent], [ritualWindow, RitualWindow.RITUAL_WITH_UNLEARN_SKILL, handleRitualPopupEvent], [ritualCheckWindow, RitualCheckWindow.RITUAL, handleRitualPopupEvent], [itemsDegradationWindow, ItemsDegradationWindow.DEGRADATION_ITEM, handleDegradationEvent], [sampleWindow, SampleWindow.FINISH_WINDOW, handleSampleWindow], [loginItemWindow, LoginItemWindow.LOGIN_ANIMATION_END, handleEvent], [adminNoticeWindow, AdminNoticeWindow.ADMIN_NOTICE_END, handleEvent], [ceremonyWindow, CeremonyWindow.CONFIRM_ITEM_SUMMON, handlePopupEvent], [ceremonyWindow, CeremonyWindow.NORMAL_SUMMON_NEW_UNIT, handlePopupEvent], [ceremonyWindow, CeremonyWindow.SPECIAL_SUMMON_NEW_UNIT, handlePopupEvent], [ceremonyWindow, CeremonyWindow.CEREMONY_WINDOW_ANIMATION_CHANGE, handlePopupEvent], [ceremonyWindow, CeremonyWindow.ADD_UNIT_SWF, handlePopupEvent], [ceremonyWindow, CeremonyWindow.REMOVE_UNIT_SWF, handlePopupEvent], [ceremonyWindow, CeremonyWindow.NORMAL_UNION_NEW_UNIT, handlePopupEvent], [ceremonyWindow, CeremonyWindow.RECIPE_UNION_NEW_UNIT, handlePopupEvent], [ceremonyWindow, CeremonyWindow.AWAKE_UNION_NEW_UNIT, handlePopupEvent], [ceremonyWindow, CeremonyWindow.SACRIFICE_RUN, handlePopupEvent], [ceremonyWindow, CeremonyWindow.DISMISSION_UNIT_FROM_CEREMONY, handlePopupEvent], [ceremonyWindow, CeremonyWindow.OPEN_UNIT_WINDOW_FROM_CEREMONY, handleEvent], [ceremonyWindow, CeremonyWindow.LOCK_UNIT_LIST, handleEvent], [ceremonyWindow, CeremonyWindow.SORT_UNIT_LIST, handleEvent], [ceremonyWindow, CeremonyWindow.NO_SACRIFIE_UNITS, handleEvent], [ceremonyWindow, CeremonyWindow.MESSAGE_WINDOW_END, handleEvent], [ceremonyWindow, CeremonyWindow.SHOW_ALERT_CEREMONY_ERROR, handlePopupEvent], [ceremonyWindow, CeremonyWindow.INIT_AWAKE_UNION_UNIT_LIST, handleEvent], [changeImageWindow, ChangeImageWindow.IMAGE_SELECTED, handlePopupEvent], [subjugationWindow, SubjugationWindow.SELECT_LEVEL_COMPLETE, handlePopupEvent], [subjugationWindow, SubjugationWindow.CLOSE_SUBJUGATION_WINDOW, handleEvent], [colonyWindow, ColonyWindow.SELECT_COLONY_COMPLETE, handlePopupEvent], [colonyWindow, ColonyWindow.CLOSE_COLONY_WINDOW, handleEvent], [expeditionPortalWindow, ExpeditionPortalWindow.CLOSE_EXPEDITION_PORTAL_WINDOW, handleEvent], [expeditionWindow, ExpeditionWindow.DESCRIPTION_COMPLETE, handlePopupEvent], [expeditionWindow, ExpeditionWindow.CLOSE_EXPEDITION_WINDOW, handleEvent], [expedition2Window, Expedition2Window.DESCRIPTION_COMPLETE, handlePopupEvent], [expedition2Window, Expedition2Window.CLOSE_EXPEDITION_WINDOW, handleEvent], [expedition3Window, Expedition3Window.DESCRIPTION_COMPLETE, handlePopupEvent], [expedition3Window, Expedition3Window.CLOSE_EXPEDITION_WINDOW, handleEvent], [continuationWindow, ContinuationWindow.DESCRIPTION_COMPLETE, handlePopupEvent], [continuationWindow, ContinuationWindow.CLOSE_EXPEDITION_WINDOW, handleEvent], [continuationWindow, ContinuationWindow.RESUME_POINT, handlePopupEvent], [eventMapWindow, EventMapWindow.DESCRIPTION_COMPLETE, handlePopupEvent], [eventMapWindow, EventMapWindow.CLOSE_EXPEDITION_WINDOW, handleEvent], [matchPortalWindow, MatchPortalWindow.CLOSE_MATCH_PORTAL_WINDOW, handleEvent], [shamBattleTargetListWindow, ShamBattleTargetListWindow.CLOSED_SHAM_BATTLE_TARGET_LIST, handleEvent], [actionButtonTimer, TimerEvent.TIMER, actionTimerEvent], [reversePlayTimer, TimerEvent.TIMER, reversePlay], [fadeInTimer, TimerEvent.TIMER, initFadeIn], [homeAllUnit, HomeAllUnit.INIT_SAKURA_TMARK, handleTutorialEvent]]);
            return;
        }// end function

        private function setAllGalleryView() : void
        {
            if (!homeAllGallery.unitsCanvas)
            {
                trace("canvas!");
                return;
            }
            var _loc_1:* = HomeAllUnitProxy(facade.retrieveProxy(HomeAllUnitProxy.NAME));
            _loc_1.setAllUnit();
            return;
        }// end function

        private function childWindowAddSwfCommon(param1, param2:Function, param3:String, param4:String = "purpose_window", param5:int = 0, param6:int = 0) : void
        {
            var _loc_7:* = AnimationProxy(facade.retrieveProxy(AnimationProxy.NAME));
            AnimationProxy(facade.retrieveProxy(AnimationProxy.NAME)).childAnimationLoaded("window", "common", param3, param4, param1, param5, param6);
            _loc_7.childLoaders["window"]["common"][param3].contentLoaderInfo.addEventListener(Event.COMPLETE, param2);
            return;
        }// end function

        private function addInfoWindow() : void
        {
            var animationProxy:AnimationProxy;
            animationProxy = AnimationProxy(facade.retrieveProxy(AnimationProxy.NAME));
            animationProxy.generalAnimationLoaded("ui", "info", "w_small", app.home.infoCanvas);
            animationProxy.childAnimationLoaded("ui", "infoButton", "home", "b_moving", app.home.infoButtonCanvas);
            animationProxy.generalLoaders["ui"]["info"].contentLoaderInfo.addEventListener(Event.COMPLETE, function (event:Event) : void
            {
                animationProxy.generalLoaders["ui"]["info"].removeEventListener(Event.COMPLETE, arguments.callee);
                animationProxy.generalLoaders["ui"]["info"].content.addEventListener("b_report", handleInfoEvent);
                animationProxy.generalLoaders["ui"]["info"].content.addEventListener("b_moving", handleInfoEvent);
                animationProxy.generalLoaders["ui"]["info"].content.addEventListener("b_chat", handleInfoEvent);
                animationProxy.generalLoaders["ui"]["info"].content.addEventListener("enlargeEnd", handleInfoEndEvent);
                animationProxy.generalLoaders["ui"]["info"].content.addEventListener("w_small_minimization", handleInfoEvent);
                animationProxy.generalLoaders["ui"]["info"].content.addEventListener("w_large_minimization", handleInfoEvent);
                animationProxy.generalLoaders["ui"]["info"].content.addEventListener("w_minimization_small", handleInfoEvent);
                animationProxy.generalLoaders["ui"]["info"].content.addEventListener("w_minimization_small_chat", handleInfoEvent);
                animationProxy.generalLoaders["ui"]["info"].content.addEventListener("w_small_minimization_chat", handleInfoEvent);
                animationProxy.generalLoaders["ui"]["info"].content.addEventListener("w_small_large", handleInfoEvent);
                animationProxy.generalLoaders["ui"]["info"].content.addEventListener("w_large_small_chat", handleInfoEvent);
                animationProxy.generalLoaders["ui"]["info"].content.addEventListener("w_large_small", handleInfoEvent);
                animationProxy.generalLoaders["ui"]["info"].content.addEventListener("BUTTON_WORLD", handleChatEvent);
                animationProxy.generalLoaders["ui"]["info"].content.addEventListener("BUTTON_GUILD", handleChatEvent);
                animationProxy.generalLoaders["ui"]["info"].content.addEventListener("BUTTON_SYSTEM", handleChatEvent);
                animationProxy.generalLoaders["ui"]["info"].content.addEventListener("BUTTON_ALL", handleChatEvent);
                return;
            }// end function
            );
            app.home.taskBox.visible = false;
            app.home.infoChat.visible = false;
            app.home.savedInfo = "b_moving";
            chatChangeSize();
            app.home.taskBox.visible = true;
            app.home.infoButtonCanvas.visible = true;
            return;
        }// end function

        private function removeHomeAllUnit() : void
        {
            var _loc_1:* = HomeAllUnitProxy(facade.retrieveProxy(HomeAllUnitProxy.NAME));
            resetAllUnitView();
            if (app.home.windowLayer.contains(homeAllUnit))
            {
                app.home.windowLayer.removeChild(homeAllUnit);
            }
            return;
        }// end function

        private function showSacrificeWindow() : void
        {
            var unitProxy:UnitProxy;
            var homeProxy:* = HomeProxy(facade.retrieveProxy(HomeProxy.NAME));
            unitProxy = UnitProxy(facade.retrieveProxy(UnitProxy.NAME));
            sacrificeWindow.callLater(function () : void
            {
                sacrificeWindow.units = unitProxy.unitForSacrifice;
                sacrificeWindow.init();
                return;
            }// end function
            );
            app.home.popupWindow(sacrificeWindow);
            return;
        }// end function

        private function initSakuraTmarks(param1:UnitVO, param2:Sakura) : void
        {
            var _loc_3:* = PlayerProxy(facade.retrieveProxy(PlayerProxy.NAME));
            var _loc_4:* = SakuraProxy(facade.retrieveProxy(SakuraProxy.NAME));
            param2.removeSakuraTmarks();
            param2.tutMarkSakura.visible = true;
            if (param1.jobMasterId == 31)
            {
                switch(_loc_3.playerVO.tutorialId)
                {
                    case 1:
                    {
                        trace("sakura tutorial:1");
                        if (!param1.weapon)
                        {
                            param2.tutMarkSakuraEquip.visible = true;
                        }
                        else if (param1.weapon.code == "2058")
                        {
                            param2.removeSakuraTmarks();
                        }
                        else
                        {
                            param2.tutMarkSakuraEquip.visible = true;
                        }
                        break;
                    }
                    case 2:
                    {
                        trace("sakura tutorial:2");
                        if (param2.unit.canLevelUp && param2.unit.level == 1)
                        {
                            param2.tutMarkSakuraLv.visible = true;
                        }
                        else if (!param2.unit.canLevelUp && param2.unit.level == 1)
                        {
                            param2.tutMarkSakuraItem.visible = true;
                        }
                        else
                        {
                            param2.removeSakuraTmarks();
                        }
                        break;
                    }
                    case 3:
                    {
                        trace("tutorial:3");
                        if (!param1.hasSkill(18) && param1.level == 3)
                        {
                            param2.tutMarkSakuraSkill.visible = true;
                        }
                        else if (param2.unit.level == 2 && param2.unit.canLevelUp)
                        {
                            param2.tutMarkSakuraLv.visible = true;
                        }
                        else if (param2.unit.level == 2 && !param2.unit.canLevelUp)
                        {
                            param2.tutMarkSakuraItem.visible = true;
                        }
                        else
                        {
                            param2.removeSakuraTmarks();
                        }
                        break;
                    }
                    default:
                    {
                        break;
                        break;
                    }
                }
            }
            return;
        }// end function

        override public function listNotificationInterests() : Array
        {
            return [HomeInitialLoadCompleteCommand.START_HOME, HomeProxy.HOME_DATA_LOADED, HomeProxy.HOME_RESOURCE_LOADED, HomeProxy.HOME_CHANGEJOB_START, HomeProxy.HOME_CHANGEJOB_START_ERROR, HomeProxy.HOME_CHANGELORD_START, HomeProxy.HOME_CHANGELORD_START_ERROR, HomeProxy.HOME_LORDUNITCANDIDATE_LOADED, HomeProxy.MERCENARIES_LOADED, HomeProxy.MERCENARIES_RELOADED, HomeProxy.EMPLOY_MERCENARY_COMPLETE, HomeProxy.REFRESH_MERCENARY_COMPLETE, HomeProxy.REFRESH_MERCENARY_ERROR, HomeProxy.SUMMON_HERO_ERROR, HomeProxy.SUMMON_ITEM_ERROR, HomeProxy.DOUBLE_EXP_COMPLETE, HomeProxy.DOUBLE_EXP_COMPLETE_ERROR, HomeProxy.DOUBLE_DROP_COMPLETE_ERROR, HomeProxy.HOME_UNIT_DISMISS, HomeProxy.HOME_UNIT_DISMISS_FROM_CEREMONY, HomeProxy.HOME_EQUIPMENT_DUMP, HomeProxy.HOME_EQUIPMENT_COLLECTIVE_DUMP, HomeProxy.HOME_EQUIPMENT_COLLECTIVE_DUMP_ERROR, HomeProxy.HOME_UNIT_DISMISS_ERROR, HomeProxy.HOME_RAIDTARGET_NOTORIETY, HomeProxy.HOME_RAIDTARGET_RIVAL, HomeProxy.HOME_RAIDTARGET_REVENGE, HomeProxy.HOME_RAIDTARGET_LOAD_ERROR, HomeProxy.HOME_GUILDMEMBER_RAIDREPORT_ERROR, HomeProxy.PLAYER_DATA_DELETED, HomeProxy.PLAYER_DATA_DELETE_ERROR, HomeProxy.PLAYER_DATA_DELETE_CANCEL, HomeProxy.REAINCARNATE_COMPLETE, HomeProxy.REAINCARNATE_ERROR, HomeProxy.RENAME_COMPLETE, HomeProxy.RENAME_ERROR, HomeProxy.REJUVENATE_COMPLETE, HomeProxy.REJUVENATE_ERROR, HomeProxy.IMAGE_CHANGE_COMPLETE, HomeProxy.IMAGE_CHANGE_ERROR, HomeProxy.PROTECT_FROM_RAID_COMPLETE, HomeProxy.PROTECT_FROM_RAID_ERROR, HomeProxy.HOME_ADD_AREA_ERROR, HomeProxy.MAIL_LIST_LOADED, HomeProxy.HOME_RAIDREPORT_LOADED, HomeProxy.HOME_SHAM_BATTLE_TARGET_LIST_LOADED, HomeProxy.START_SHAM_SELECT_UNIT, HomeProxy.MAIL_DETAIL_LOADED, HomeProxy.MAIL_SEND_COMPLETE, HomeProxy.REPLY_MAIL_SEND_COMPLETE, HomeProxy.MAIL_SEND_ERROR, HomeProxy.PASS_YEAR_COMPLETE, HomeProxy.DOUBLE_DROP_COMPLETE, HomeProxy.LOAD_PLAYER_FOR_NEXT_YEAR, HomeProxy.USE_CRYSTAL_COMPLETE, HomeProxy.USE_CRYSTAL_ERROR, HomeProxy.SACRIFICE_UNIT_COMPLETE, HomeProxy.SACRIFICE_UNIT_ERROR, HomeProxy.DEGRADATION_COMPLETE, HomeProxy.DEGRADATION_ERROR, HomeProxy.ASSISTANT_UPDATE_COMPLETE, HomeProxy.SUMMON_UNIT_COMPLETE, HomeProxy.SUMMON_UNIT_ERROR, HomeProxy.NORMAL_SUMMON_COMPLETE, HomeProxy.SUMMON_ITEM_COMPLETE, HomeProxy.SUMMON_HERO_COMPLETE, HomeProxy.SUMMON_BRAVE_COMPLETE, HomeProxy.NORMAL_SUMMON_ERROR, HomeProxy.NORMAL_UNION_COMPLETE, HomeProxy.NORMAL_UNION_ERROR, HomeProxy.RECIPE_UNION_COMPLETE, HomeProxy.RECIPE_UNION_ERROR, HomeProxy.AWAKE_UNION_COMPLETE, HomeProxy.AWAKE_UNION_ERROR, HomeProxy.EVIL_POINT_COMPLETE, HomeProxy.COLONY_COMPLETE, HomeProxy.COLONY_RELOADED, HomeProxy.EXPEDITION_POINT_COMPLETE, HomeProxy.EXPEDITION2_POINT_COMPLETE, HomeProxy.EXPEDITION3_POINT_COMPLETE, HomeProxy.CONTINUATION_POINT_COMPLETE, HomeProxy.EVENT_MAP_POINT_COMPLETE, HomeProxy.INCREMENT_MAX_TASKS_COMPLETE, HomeProxy.INCREMENT_MAX_TASKS_ERROR, HomeProxy.INCREMENT_MAX_UNITS_COMPLETE, HomeProxy.INCREMENT_MAX_UNITS_ERROR, HomeProxy.UPGRADE_ITEM_COMPLETE, HomeProxy.UPGRADE_ITEM_ERROR, HomeProxy.HOME_COLONY_DITAIL_REPORT_LOADED, ActivityStartCommand.ACTIVITY_STARTED, BuildingProxy.ACTIVITY_START_ERROR, BuildingProxy.ACTIVITY_FINISH, BuildingProxy.UPGRADE_ERROR, BuildingProxy.RESTORATION_ERROR, BuildingProxy.RESTORATION, MasterProxy.ASSISTANT_MASTER, LoadGuildDetailCommand.NO_GUILD_ALERT, HomeProxy.PRODUCE_RESOURCE_LOADED, ProductionProxy.PRODUCE, ProductionProxy.PRODUCE_ERROR, GatheringProxy.GATHERING_START_ERROR, AnnouncementProxy.ANNOUNCEMENT_LOADED, PlayerProxy.PLAYER_LOADED_BY_HOME, PlayerProxy.PLAYER_LOADED_BY_BACK_HOME, PlayerProxy.PLAYER_LOADED_BY_TUTORIAL, PlayerProxy.FINISH_TUTORIAL_COMPLETE, PlayerProxy.FINISH_TUTORIAL_ERROR, PlayerProxy.PLAYER_LOADED_CASE_BY_DOUBLE_EXP, PlayerProxy.PLAYER_LOADED_CASE_BY_DOUBLE_DROP, PlayerProxy.SHOW_LOGIN_ITEM, PlayerProxy.LOAD_MATCH_BATTLE_DEFENCE_REPORT, PlayerProxy.GET_TUTORIAL_COMPLETE, PlayerProxy.GET_FACTION_COMPLETE, PlayerProxy.GET_TUTORIAL_ERROR, PlayerProxy.LOAD_CURRENT_QUEST_COMPLETE, PlayerProxy.ADMISSION_FACTION_COMPLETE, PlayerProxy.ADMISSION_FACTION_WITHOUT_TUTORIAL_COMPLETE, PlayerProxy.ADMISSION_FACTION_ERROR, PlayerProxy.ADMISSION_FACTION_WITHOUT_TUTORIAL_ERROR, PlayerProxy.UNREAD_MAIL_LOADED, PlayerProxy.UNREAD_NOTICE_LOADED, PlayerProxy.RESUME_CONTINUATION_LEVEL, PlayerProxy.RESUME_EVENT_MAP_LEVEL, PlayerProxy.GET_FACTION_WITHOUT_TUTORIAL_COMPLETE, PlayerProxy.GET_FACTION_WITHOUT_TUTORIAL_RETRY_COMPLETE, LoadRaidExpirationCommand.RAID_EXPIRATION_LOADED, LoadRaidExpirationCommand.RAID_EXPIRATION_RELOADED, PrepareBuildingWindowCommand.SHOW_BUILDING_WINDOW, PrepareBuildingWindowCommand.UPDATE_DELAY_TIME, PrepareBuildingWindowCommand.UPPER_JOB_SELECT, PrepareBuildingWindowCommand.SHOW_LOADING_WINDOW, PrepareBuildingWindowCommand.SHOW_RITUAL_WINDOW, PrepareBuildingWindowCommand.SHOW_EINHERJARIZE_WINDOW, PrepareBuildingWindowCommand.SHOW_RITUAL_BTN, PrepareBuildingWindowCommand.CLOSE_RESERCH_WINDOW, TaskUpdateCommand.TASK_UPDATED, TaskUpdateCommand.HOME_DATA_LOADED, TaskUpdateCommand.SHOW_LOADING_WINDOW, LevelUpCommand.SHOW_LOADING_WINDOW, TutorialFinishedCommand.RELOAD_AFTER_TUTORIAL_FINISHED, TutorialFinishedCommand.SHOW_LOADING_WINDOW, ReloadHomeUnitsFromCeremonyCommand.LOADED_COMPLETE_BY_SUMMON, ReloadHomeUnitsFromCeremonyCommand.LOADED_COMPLETE_BY_NORMAL_SUMMON, ReloadHomeUnitsFromCeremonyCommand.LOADED_COMPLETE_BY_UNION, ReloadHomeUnitsFromCeremonyCommand.LOADED_COMPLETE_BY_AWAKE_UNION, GuildProxy.CHAT_CREATE, GuildProxy.CHAT_CREATE_ERROR, GuildProxy.CHAT_UPDATE_ERROR, GuildProxy.GUILD_DATA_LOADED, GuildProxy.HOME_GUILD_DETAIL_ADD_MEMBER, UnitProxy.HOME_LEVELUP_FINISH, UnitProxy.CHANGE_EQUIPMENT_ERROR, UnitProxy.UNIT_RECOVERY_ERROR, UnitProxy.HOME_UNITS_LOADED, UnitProxy.HOME_UNITS_LOADED_FROM_CEREMONY, UnitProxy.LEARN_SKILL_COMPLETE, UnitProxy.RELOAD_HP_BAR_DRAW, ReunionCommand.REUNION_LOADED, ChargeRecoveryCommand.CHARGE_RECOVERY_LOADED, UnitProxy.REUNION_ERROR, RenameCommand.RENAME_LOADED, UnitProxy.RENAME_ERROR, UnitProxy.UNIT_RECOVERY_COMPLETE, UnitProxy.CHARGE_RECOVERY_ERROR, TaskProxy.FINISH_TASK_IMMEDIATELY_ERROR, HomeAllSleepUnitProxy.COFFIN_ACTIVATED_ERROR, HomeAllSleepUnitProxy.SET_SLEEPING_UNIT_ERROR, HomeAllSleepUnitProxy.AWAKE_UNIT_ERROR, HomeAllSleepUnitProxy.COFFINS_LOADED, ChangeEquipmentCommand.CHANGE_EQUIPMENT_LOADED, RaidDitailReportCommand.SHOW_REPORT, AnimationProxy.LEVELUP_ANIMATION_FINISH, AnimationProxy.SHIKIHIME_LIST_LOAD_COMPLETE, AnimationProxy.SHIKIHIME_LIST_CHANGE_PAGE_COMPLETE, LevelUpCommand.HOME_SELECT_SKILL, LevelUpCommand.HOME_LEVELUP_FINISHED, ReloadHomeBuildingsCommand.HOME_BUILDINGS_RELOADED, StartSelectUnitForSendArmyCommand.NO_UNITS_FOR_SEND_ARMY, BackHomeCommand.BACK_HOME, ReloadUnitsAndResourcesCommand.RELOADED, ReloadMercenariesCommand.NOTIFY_SUMMON_RESULT, LoadCoffinsCommand.RELOADED, ReloadSleepUnitCommand.RELOADED, ReloadAwakeUnitCommand.RELOADED, ReloadAfterPassingYearsCommand.RELOADED, ReloadSacrificeCommand.RELOADED, ContinuationBattleFinishCommand.REMOVE_CONTINUATION_WINDOW, ContinuationBattleFinishCommand.REMOVE_EVENT_MAP_WINDOW, ContinuationBattleFinishCommand.RELOAD_CONTINUATION_LEVEL, ContinuationBattleFinishCommand.RELOAD_EVENT_MAP_LEVEL, LoadFirstTierMastersCommand.FIRST_TIER_MASTERS_LOAD_COMPLETE, ConfirmItemSummonCommand.CONFIRM_ITEM_SUMMON, CHANGE_EQUIPMENT_LOADED, SHOW_ALERT_WINDOW, SHOW_LOADING_WINDOW, PlayerProxy.INIT_TUTORIAL_STATE, PlayerProxy.INIT_PRODUCTION_TMARK, PlayerProxy.INIT_RESEARCH_TMARK];
        }// end function

        private function setPlayer(param1:PlayerVO) : void
        {
            app.home.homeEstablishment.player = param1;
            app.home.productionInfoWindow.playerVO = param1;
            app.home.playerStatus.playerVO = param1;
            app.home.player = param1;
            app.allMap.player = param1;
            app.home.guildChatWindow.player = param1;
            app.allMap.guildChatWindow.player = param1;
            return;
        }// end function

        public function resetAllGalleryView() : void
        {
            if (!app.home.contains(commandWindowArray[7]))
            {
                return;
            }
            var _loc_1:* = HomeAllUnitProxy(facade.retrieveProxy(HomeAllUnitProxy.NAME));
            _loc_1.resetAllUnitView();
            homeAllGallery.commandWindowClose();
            return;
        }// end function

        private function initFadeIn(event:Event) : void
        {
            if (app.home.fade.alpha <= 0)
            {
                fadeInTimer.stop();
                fadeInTimer.reset();
                app.home.fade.visible = false;
            }
            else
            {
                app.home.fade.alpha = app.home.fade.alpha - 0.1;
                app.gameViewStack.selectedIndex = Viking.VIEW_INDEX_HOME;
            }
            return;
        }// end function

        private function buttonAddSwf(param1:String, param2:String, param3, param4:Function, param5, param6:int = 0, param7:int = 0) : void
        {
            var _loc_8:* = AnimationProxy(facade.retrieveProxy(AnimationProxy.NAME));
            AnimationProxy(facade.retrieveProxy(AnimationProxy.NAME)).generalAnimationLoaded(param1, param2, param5, param3, param6, param7);
            _loc_8.generalLoaders[param1][param2].contentLoaderInfo.addEventListener(Event.COMPLETE, param4);
            return;
        }// end function

        private function periodicRemark(event:Event) : void
        {
            var _loc_2:* = PlayerProxy(facade.retrieveProxy(PlayerProxy.NAME));
            var _loc_3:* = AnimationProxy(facade.retrieveProxy(AnimationProxy.NAME));
            var _loc_4:* = UnitProxy(facade.retrieveProxy(UnitProxy.NAME));
            var _loc_5:* = _loc_2.assistantVO;
            app.home.assistantText.text = "";
            app.home.remarkStart();
            _loc_3.generalAnimationChange("assistants", assistant, "normal");
            app.home.assistantText.text = _loc_2.assistantPeriodicRemark(_loc_4.homeUnits);
            app.home.assistantText.text = _loc_5.remark;
            _loc_2.assistantVO.periodicTimer.stop();
            _loc_2.assistantVO.periodicTimer.reset();
            _loc_2.assistantVO.periodicTimer.start();
            return;
        }// end function

        private function setBuildings() : void
        {
            var _loc_1:* = HomeProxy(facade.retrieveProxy(HomeProxy.NAME));
            var _loc_2:* = AnimationProxy(facade.retrieveProxy(AnimationProxy.NAME));
            app.home.homeMaps = _loc_1.homemaps;
            if (app.home.buildingLevelIcon)
            {
                app.home.buildingLevelIcon.removeAllChildren();
            }
            var _loc_3:int = 0;
            while (_loc_3 < app.home.homeMaps.length)
            {
                
                if (app.home.homeMaps[_loc_3].buildingVO)
                {
                    buildLevelRenderer = new BuildLevelRenderer();
                    if (buildLevelRenderer.setIcon(app.home.homeMaps[_loc_3].buildingVO, app.home.getBuildingPosition(_loc_3)))
                    {
                        _loc_2.childAnimationLoaded("ui", "buiding_levels", _loc_3, app.home.homeMaps[_loc_3].buildingVO.level + "_" + app.home.homeMaps[_loc_3].buildingVO.repeatCount, app.home.buildingLevelIcon, app.home.getBuildingPosition(_loc_3).x, app.home.getBuildingPosition(_loc_3).y);
                    }
                }
                _loc_3++;
            }
            return;
        }// end function

    }
}
