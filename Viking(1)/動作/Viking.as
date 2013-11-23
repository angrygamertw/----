package 
{
    import com.kbmj.viking.*;
    import com.kbmj.viking.view.*;
    import flash.display.*;
    import flash.events.*;
    import mx.containers.*;
    import mx.controls.*;
    import mx.core.*;
    import mx.events.*;
    import mx.managers.*;
    import mx.styles.*;

    public class Viking extends Application
    {
        private var _1655921504selectUnit:SelectUnit;
        private var _embed_css_images_button_instant_100_off_png_1757446729:Class;
        private var _embed_css_images_vscbar_down_png_336445035:Class;
        private var _1740372462tutMarkEquipment:Image;
        private var LoadingCursor:Class;
        private var facade:ApplicationFacade;
        private var _1414904837allMap:AllMap;
        private var _embed_css_images_vscbar_up_png_582051551:Class;
        private var _embed__font_Colton_medium_normal_315587977:Class;
        private var _1232967208initialForm:InitialForm;
        private var _embed_mxml__images_black_jpg_491440297:Class;
        private var _embed_css_images_button_instant_50_on_png_1941540573:Class;
        private var loading:Boolean = false;
        private var _embed_css_images_st_btn_delete_png_692291931:Class;
        private var loadingWindow:LoadingWindow;
        private var _embed_css_images_button_instant_100_on_png_849915229:Class;
        private var _embed_css_images_vscbar_thumb_png_890898163:Class;
        private var _embed_css_images_vscbar_thumb_png_890898164:Class;
        private var _embed_css_images_button_instant_50_off_png_978280789:Class;
        private var _embed_css_images_button_instant_200_on_png_1645818321:Class;
        private var _1551739333tactics:Tactics;
        private var _1066951919gameViewStack:ViewStack;
        private var _3053931city:City;
        private var _embed_css_images_button_instant_200_off_png_819313217:Class;
        private var _3208415home:Home;
        private var statsUI:UIComponent;
        private var _documentDescriptor_:UIComponentDescriptor;
        private var _embed_mxml_images_tutorialMarkRight_png_932702652:Class;
        private var _embed_css_images_vscbar_track_png_275221189:Class;
        public static const HOME_CEREMONY:String = NAME + "/home/action/ceremony";
        public static const HOME_ACTION_GOTO_EXPEDITION2:String = NAME + "/home/action/gotoExpedition2";
        public static const HOME_SAMPLE_BUTTON:String = NAME + "home/action/sumpleButton";
        public static const ENTER_ROOM:String = NAME + "/action/enterRoom";
        public static const SHOW_UTILITY:String = NAME + "/selectUnit/action/showUtility";
        public static const ACTION_GOTO_ALL_MAP:String = NAME + "/actions/gotoAllMap";
        public static const HOME_SHOW_TUTORIAL_WINDOW:String = NAME + "/home/action/showTutorialWindow";
        public static const HOME_MAIN_VIEW:String = NAME + "/home/action/homeMainView";
        public static const HOME_PRODUCTION:String = NAME + "/home/view_ProductionWindow";
        public static const ACTION_CLICK:String = NAME + "/actions/click";
        public static const ALL_MAP_BATTLE_REPORT_LIST:String = NAME + "/allMap/action/battleReportList";
        public static const HOME_ACTION_RESEARCH:String = NAME + "/home/action/research";
        public static const CHAT_WINDOW_SIZE_CHANGE:String = NAME + "/home/action/chatWindowSizeChange";
        public static const HOME_ACTION_OPEN_RESEARCH_WINDOW:String = NAME + "/home/action/openResearchWindow";
        public static const HOME_FINISH_TUTORIAL:String = NAME + "/home/action/finishTutorial";
        public static const CITY_ACTION_REMOVE_GUILD_MEMBER:String = NAME + "/city/action/removeGuildMMember";
        public static const HOME_ACTION_GOTO_COLONY:String = NAME + "/home/action/gotoColony";
        public static var EmbedSwfButtonPower:Class = Viking_EmbedSwfButtonPower;
        private static var _362049569buyPaymentItemsEnabled:Boolean = false;
        public static const VIEW_INDEX_HOME:int = 0;
        public static const SELECT_ENEMY_LIST:String = NAME + "/selectUnit/action/view_EnemyList";
        static var _Viking_StylesInit_done:Boolean = false;
        public static const CHANGE_ITEM:String = NAME + "/selectUnit/action/changeItem";
        public static const CITY_ACTION_SHOW_REMOVE_MEMBER_WINDOW:String = NAME + "/city/action/showRemoveMemberWindow";
        public static const HOME_GET_EQUIPABLE_RESOURCE:String = NAME + "/home/action/getEquipableResource";
        public static const CREATE_ROOM:String = NAME + "/action/createRoom";
        public static const HOME_ACTION_GOTO_EXPEDITION_PORTAL:String = NAME + "/home/action/gotoExpeditionPortal";
        public static const CITY_ACTION_SHOW_BUY_GOODS_TO_EDINBURGH:String = NAME + "/city/action/showBuyGoodsToEdinburgh";
        public static const LOCATIONWINDOW_GO_CLICK:String = NAME + "/locationwindow/go/click";
        public static var EmbedSwfIconRank:Class = Viking_EmbedSwfIconRank;
        public static const ACTION_ATTACK:String = NAME + "/actions/attack";
        public static const CITY_ACTION_GOLD_DEAL:String = NAME + "/city/action/dealGold";
        public static const TACTICS_FAST_ON:String = NAME + "/tactics/action/fastOn";
        public static const LOCAL_COMMAND_WINDOW_COLONY_BATTLE_CLICK:String = NAME + "/localcommandwindow/colonyBattle/click";
        public static const HOME_RAID_COMMAND_SELECT:String = NAME + "/home/view_RaidWindow";
        public static const CITY_ACTION_SHOW_MARKET:String = NAME + "/city/action/showMarket";
        public static const NAME:String = "Viking";
        public static const TACTICS_FAST_OFF:String = NAME + "/tactics/action/fastOff";
        public static const HOME_REPORT:String = NAME + "/home/view_ReportWindow";
        public static const CITY_ACTION_SHOW_TEMPLE:String = NAME + "/city/action/showTemple";
        public static const SELECT_UNIT_ACTION_START_MOVIE:String = NAME + "/selectUnit/actions/startMovie";
        public static const ALL_MAP_MAIL_LIST:String = NAME + "/allMap/action/mailList";
        public static const HOME_JUDGE_UNITS:String = NAME + "/home/action/judgeUnitsHeart";
        public static const HOME_LORDUNIT_SELECT:String = NAME + "/home/lordUnit/select";
        public static const HOME_ACTION_GOTO_ALL_MAP:String = NAME + "/home/action/gotoAllMap";
        public static const CITY_ACTION_SHOW_BUY_GOODS:String = NAME + "/city/action/showBuyGoods";
        public static const HOME_ACTION_GOTO_EXPEDITION:String = NAME + "/home/action/gotoExpedition";
        public static const LOCAL_COMMAND_WINDOW_GO_CLICK:String = NAME + "/localcommandwindow/go/click";
        public static const LOCATIONWINDOW_BACK_CLICK:String = NAME + "/locationwindow/Back/click";
        public static const HOME_ACTION_DEGRADATION:String = NAME + " home/action/degradation";
        public static const VIEW_INDEX_CITY:int = 3;
        public static const HOME_RESTORE_BUILDING:String = NAME + "/home/action/restoreBuilding";
        public static const HOME_MAIL_LIST:String = NAME + "/home/action/homeMailListShow";
        public static const SELECT_ITEM_LIST:String = NAME + "/selectUnit/action/view_ItemList";
        public static const HOME_SHOW_NEXT_TUTORIAL:String = NAME + "/home/action/showNextTutorial";
        public static const CITY_ACTION_BACK_HOME:String = NAME + "/city/action/backHome";
        public static var pvpPort:int = 9998;
        public static const HOME_EMPLOY_MERCENARY:String = NAME + "/home/action/hireMercenary";
        public static const CHANGE_ARMS:String = NAME + "/selectUnit/action/changeArms";
        public static const REJUVENATE:String = NAME + "/home/action/rejuvenate";
        public static const TACTICS_SOUND_ON:String = NAME + "/tactics/action/soundOn";
        public static const HOME_ACTION_GOTO_SUBJUGATION:String = NAME + "/home/action/gotoSubjugation";
        public static var version:String = "";
        public static const HOME_DESTROY_BUILDING:String = NAME + "/home/action/destroyBuilding";
        public static const HOME_LEAVE_FORT:String = NAME + "/home/action/leavefort";
        public static const TACTICS_SOUND_OFF:String = NAME + "/tactics/action/soundOff";
        public static const SHOW_DETAILS:String = NAME + "/show/details";
        public static const HOME_ALL_SLEEP_UNIT_VIEW:String = NAME + "/home/action/homeAllSleepUnitView";
        public static const HOME_SUMMON_BRAVE:String = NAME + "/home/action/summonBrave";
        public static const HOME_PRODUCE_OK_CLICKED:String = NAME + "/home/action/produceOKClicked";
        public static const LEVELUP_WITH_SELECTED_SKILL:String = NAME + "/action/levelUpWithSelectedSkill";
        public static const CITY_ACTION_SHOW_BAR:String = NAME + "/city/action/showBar";
        public static const HOME_SHOW_GATHERING_WINDOW:String = NAME + "/home/action/showGatheringWindow";
        public static const FADE_OUT:String = NAME + "/home/fadeOut";
        public static const HOME_SHOW_PRODUCTION_WINDOW:String = NAME + "/home/action/showProductionWindow";
        public static const CITY_ACTION_CHANGE_GUILD_INFORMATION:String = NAME + "/city/action/changeGuildInformation:";
        public static const HOME_BUILD:String = NAME + "/home/view_BuildWindow";
        public static const HOME_ALL_GALLERY_VIEW:String = NAME + "/home/action/homeAllGalleryView";
        public static var apiHost:String = "";
        public static const HOME_REFRESH_MERCENARY:String = NAME + "/home/action/refreshMercenary";
        public static const HOME_CHANGEJOB_SELECT:String = NAME + "/home/action/changeJobSelect";
        public static const SELECT_UNIT_LIST:String = NAME + "/selectUnit/action/view_UnitList";
        public static const HOME_UPGRADE_BUILDING:String = NAME + "/home/view_BuildWindow";
        public static const VIEW_INDEX_ALL_MAP:int = 4;
        private static var _794229178summonHeroEnabled:Boolean = true;
        public static var EmbedSwfIconFaction:Class = Viking_EmbedSwfIconFaction;
        public static const HOME_PLAYERDATA_DELETE:String = NAME + "/home/action/playerDataDelete";
        public static const INITIAL_FORM_ACTION_SUBMIT:String = NAME + "/initialForm/action/submit";
        public static const LOCAL_COMMAND_WINDOW_BATTLE_CLICK:String = NAME + "/localcommandwindow/battle/click";
        public static const CITY_ACTION_DELIVERY_FACTION_GIFT:String = NAME + "/city/action/deliveryFactionGift";
        public static const HOME_SAMPLE_BUTTON2:String = NAME + "home/action/sumpleButton2";
        public static const CITY_ACTION_MANAGE_GUILD:String = NAME + "/city/action/manageGuild";
        public static var EmbedSwfTabCommon:Class = Viking_EmbedSwfTabCommon;
        public static const HOME_DISMISS:String = NAME + "/home/action/unitDismiss";
        public static const INITIAL_FORM_ACTION_VALIDATE_NAME:String = NAME + "/initialForm/action/validateName";
        public static const ACTION_ITEM_SELECT:String = NAME + "/actions/item/select";
        public static const HOME_FORT_UNIT:String = NAME + "/home/action/fortUnit";
        public static const HOME_BATTLE_REPORT_LIST:String = NAME + "/home/action/homeBattleReportList";
        public static const SELECT_UNIT_ACTION_START_TACTICS:String = NAME + "/selectUnit/actions/startTactics";
        public static const CITY_ACTION_SILVER_DEAL:String = NAME + "/city/action/dealSilver";
        public static const CITY_ACTION_APPOINT_GUILDMASTER:String = NAME + "/city/action/appointGuildMaster";
        public static const CITY_ACTION_SEARCH_GUILD:String = NAME + "/city/action/searchGuild";
        public static const IMAGE_CHANGE:String = NAME + "/home/action/imageChange";
        public static const HOME_LOAD_LORDUNIT_CANDIDATE:String = NAME + "/home/load/lordUnit/candidate";
        public static const DISCARD_SKILL:String = NAME + "/action/discardSkill";
        public static const HOME_SUMMON_HERO:String = NAME + "/home/action/summonHero";
        public static const HOME_ACTION_GOTO_MATCH_PORTAL:String = NAME + "/home/action/gotoMatchPortal";
        public static var EmbedSwfButtonPaginator:Class = Viking_EmbedSwfButtonPaginator;
        public static const RENAME:String = NAME + "/home/action/rename";
        public static const HOME_ACTION_OPEN_SHAM_BATTLE_WINDOW:String = NAME + "/home/action/openShamBattleWindow";
        public static const VIEW_INDEX_INITIAL_FORM:int = 5;
        public static const CITY_ACTION_FOOD_DEAL:String = NAME + "/city/action/dealFood";
        public static const CITY_ACTION_ADMISSION_GUILD:String = NAME + "/city/action/admissionGuild";
        public static const CITY_ACTION_SOUL_CRYSTAL_DEAL:String = NAME + "/city/action/buySoulCrystal";
        public static const HOME_ESTABLISHMENT_VIEW:String = NAME + "/home/action/homeEstablishmentView";
        public static const ACTION_BACK:String = NAME + "/actions/back";
        public static const ACTION_ITEM_CLOSE:String = NAME + "/actions/item/close";
        public static const FINISH_TASK_IMMEDIATELY:String = NAME + "/home/action/finishTaskImmediately";
        public static const ACTION_RETURN:String = NAME + "/actions/gotoReturn";
        public static const HOME_GATHER:String = NAME + "/home/action/gather";
        public static const TACTICS_UNIT_LIST:String = NAME + "/tactics/action/view_UnitList";
        public static const MOVE_RETURN:String = NAME + "/selectUnit/action/returnUnit";
        public static const HOME_PRODUCE:String = NAME + "/home/action/produce";
        public static const HOME_ACTION_OPEN_CEREMONY_WINDOW:String = NAME + "/home/action/openCeremonyWindow";
        public static const START_BATTLE:String = NAME + "/action/startBattle";
        public static const LEVEL_UP:String = NAME + "/selectUnit/action/levelUp";
        public static const MOVE_SORTIE:String = NAME + "/selectUnit/action/selectUnit";
        public static const ASSISTANT_UPDATE:String = NAME + "/home/assistantUpdate";
        public static const CITY_ACTION_APPLICATION_CANCEL:String = NAME + "/city/action/applicationCancel";
        public static const CITY_ACTION_CREATE_GUILD:String = NAME + "/city/action/createGuild";
        public static var EmbedSwfButtonCommon:Class = Viking_EmbedSwfButtonCommon;
        public static const PROTECT_FROM_RAID:String = NAME + "/home/action/protectFromRaid";
        public static const VIEW_INDEX_TACTICS:int = 2;
        public static const ACTION_ITEM:String = NAME + "/actions/item";
        public static const ENTER_LOBBY:String = NAME + "/action/enterLobby";
        public static const START_GUILD_BATTLE:String = NAME + "/action/startGuildBattle";
        public static const ARM_EQUIPPED:String = NAME + "/actions/armEquipped";
        public static const HOME_EQUIPMENT_DUMP:String = NAME + "/home/action/equipmentDump";
        public static const REINCARNATE:String = NAME + "/home/action/reincarnate";
        private static var _staticBindingEventDispatcher:EventDispatcher = new EventDispatcher();
        public static const HOME_ACTION_START_SEND_ARMY:String = NAME + "/home/action/startSendArmy";
        public static const CITY_ACTION_BUY_INDULGENCE:String = NAME + "/city/action/buyIndulgence";
        public static var EmbedSwfButtonCloseWindow:Class = Viking_EmbedSwfButtonCloseWindow;
        public static const HOME_LEAVE_UNIT:String = NAME + "/home/action/leaveUnit";
        public static const HOME_INCREASE_MAX_UNIT:String = NAME + "/home/action/homeIncreaseMaxUnit";
        public static const HOME_COLLECT:String = NAME + "/home/view_CollectWindow";
        public static const ACTION_RESTART_GAME:String = NAME + "/actions/restartGame";
        public static const CITY_ACTION_BUY_GOODS:String = NAME + "/city/action/buyGoods";
        public static const HOME_BUILD_START:String = NAME + "/home/buildStart";
        public static const HOME_ALL_ITEM_VIEW:String = NAME + "/home/action/homeAllItemView";
        public static const CITY_ACTION_SHOW_PAYMENT_COMMODITY_WINDOW:String = NAME + "/city/action/showPaymentCommodityWindow";
        public static const CITY_ACTION_QUIT_GUILD:String = NAME + "/city/action/quitGuild";
        public static const CITY_ACTION_GUILD_ARMYES_BACK:String = NAME + "/city/action/guildArmyesBack";
        public static var EmbedSwfTmark:Class = Viking_EmbedSwfTmark;
        public static const HOME_CLOSE_NOW_WINDOW:String = NAME + "/home/action/closeNowWindow";
        public static const VIEW_INDEX_SELECT_UNIT:int = 1;
        public static const FADE_IN_COMPLETE:String = NAME + "expedition/actions/dafeInComplete";
        public static const ASSISTANT_FACE_CHANGE:String = NAME + "/home/assistantFaceChange";
        public static const HOME_UPDATE_TASK:String = NAME + "/home/action/updateTask";
        public static const CITY_ACTION_SHOW_SELL_GOODS:String = NAME + "/city/action/showSellGoods";
        public static const ACTION_WAIT:String = NAME + "/actions/wait";
        public static const HOME_ALL_UNIT_VIEW:String = NAME + "/home/action/homeAllUnitView";
        public static const CITY_ACTION_SELL_GOODS:String = NAME + "/city/action/sellGoods";
        public static const HOME_SHOW_ANNOUNCEMENT:String = NAME + "/home/action/finishActivity";
        public static var EmbedSwfWindowCommon:Class = Viking_EmbedSwfWindowCommon;
        public static var sessionKey:String = "";
        public static var pvpHost:String = "";
        public static const INCREMENT_MAX_TASK_CONFIRM:String = "incrementMaxTaskConfirm";
        public static const HOME_ENTER_CITY:String = NAME + "/home/action/enterCity";
        public static const HOME_LIVING_UNIT:String = NAME + "/home/action/livingUnit";
        public static const SELECT_UNIT_ACTION_BACK:String = NAME + "/selectUnit/actions/back";

        public function Viking()
        {
            _documentDescriptor_ = new UIComponentDescriptor({type:Application, propertiesFactory:function () : Object
            {
                return {width:760, height:560, childDescriptors:[new UIComponentDescriptor({type:VBox, propertiesFactory:function () : Object
                {
                    return {childDescriptors:[new UIComponentDescriptor({type:ViewStack, id:"gameViewStack", propertiesFactory:function () : Object
                    {
                        return {width:760, height:560, selectedIndex:7, creationPolicy:"all", horizontalScrollPolicy:"off", verticalScrollPolicy:"off", childDescriptors:[new UIComponentDescriptor({type:Home, id:"home", propertiesFactory:function () : Object
                        {
                            return {horizontalScrollPolicy:"off", verticalScrollPolicy:"off"};
                        }// end function
                        }), new UIComponentDescriptor({type:SelectUnit, id:"selectUnit", propertiesFactory:function () : Object
                        {
                            return {horizontalScrollPolicy:"off", verticalScrollPolicy:"off"};
                        }// end function
                        }), new UIComponentDescriptor({type:Tactics, id:"tactics", propertiesFactory:function () : Object
                        {
                            return {horizontalScrollPolicy:"off", verticalScrollPolicy:"off"};
                        }// end function
                        }), new UIComponentDescriptor({type:City, id:"city", propertiesFactory:function () : Object
                        {
                            return {horizontalScrollPolicy:"off", verticalScrollPolicy:"off"};
                        }// end function
                        }), new UIComponentDescriptor({type:AllMap, id:"allMap", propertiesFactory:function () : Object
                        {
                            return {horizontalScrollPolicy:"off", verticalScrollPolicy:"off"};
                        }// end function
                        }), new UIComponentDescriptor({type:InitialForm, id:"initialForm", propertiesFactory:function () : Object
                        {
                            return {horizontalScrollPolicy:"off", verticalScrollPolicy:"off"};
                        }// end function
                        }), new UIComponentDescriptor({type:Canvas, propertiesFactory:function () : Object
                        {
                            return {childDescriptors:[new UIComponentDescriptor({type:Image, propertiesFactory:function () : Object
                            {
                                return {source:_embed_mxml__images_black_jpg_491440297};
                            }// end function
                            })]};
                        }// end function
                        }), new UIComponentDescriptor({type:Canvas, propertiesFactory:function () : Object
                        {
                            return {childDescriptors:[new UIComponentDescriptor({type:Image, id:"tutMarkEquipment", propertiesFactory:function () : Object
                            {
                                return {source:_embed_mxml_images_tutorialMarkRight_png_932702652, visible:false, width:25, height:32, y:150};
                            }// end function
                            })]};
                        }// end function
                        })]};
                    }// end function
                    })]};
                }// end function
                })]};
            }// end function
            });
            LoadingCursor = Viking_LoadingCursor;
            facade = ApplicationFacade.getInstance();
            loadingWindow = new LoadingWindow();
            statsUI = new UIComponent();
            _embed__font_Colton_medium_normal_315587977 = Viking__embed__font_Colton_medium_normal_315587977;
            _embed_css_images_button_instant_100_off_png_1757446729 = Viking__embed_css_images_button_instant_100_off_png_1757446729;
            _embed_css_images_button_instant_100_on_png_849915229 = Viking__embed_css_images_button_instant_100_on_png_849915229;
            _embed_css_images_button_instant_200_off_png_819313217 = Viking__embed_css_images_button_instant_200_off_png_819313217;
            _embed_css_images_button_instant_200_on_png_1645818321 = Viking__embed_css_images_button_instant_200_on_png_1645818321;
            _embed_css_images_button_instant_50_off_png_978280789 = Viking__embed_css_images_button_instant_50_off_png_978280789;
            _embed_css_images_button_instant_50_on_png_1941540573 = Viking__embed_css_images_button_instant_50_on_png_1941540573;
            _embed_css_images_st_btn_delete_png_692291931 = Viking__embed_css_images_st_btn_delete_png_692291931;
            _embed_css_images_vscbar_down_png_336445035 = Viking__embed_css_images_vscbar_down_png_336445035;
            _embed_css_images_vscbar_thumb_png_890898163 = Viking__embed_css_images_vscbar_thumb_png_890898163;
            _embed_css_images_vscbar_thumb_png_890898164 = Viking__embed_css_images_vscbar_thumb_png_890898164;
            _embed_css_images_vscbar_track_png_275221189 = Viking__embed_css_images_vscbar_track_png_275221189;
            _embed_css_images_vscbar_up_png_582051551 = Viking__embed_css_images_vscbar_up_png_582051551;
            _embed_mxml__images_black_jpg_491440297 = Viking__embed_mxml__images_black_jpg_491440297;
            _embed_mxml_images_tutorialMarkRight_png_932702652 = Viking__embed_mxml_images_tutorialMarkRight_png_932702652;
            mx_internal::_document = this;
            .mx_internal::_Viking_StylesInit();
            this.width = 760;
            this.height = 560;
            this.layout = "absolute";
            this.horizontalScrollPolicy = "off";
            this.verticalScrollPolicy = "off";
            this.addEventListener("creationComplete", ___Viking_Application1_creationComplete);
            return;
        }// end function

        public function get allMap() : AllMap
        {
            return this._1414904837allMap;
        }// end function

        public function get tutMarkEquipment() : Image
        {
            return this._1740372462tutMarkEquipment;
        }// end function

        public function set allMap(param1:AllMap) : void
        {
            var _loc_2:* = this._1414904837allMap;
            if (_loc_2 !== param1)
            {
                this._1414904837allMap = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "allMap", _loc_2, param1));
            }
            return;
        }// end function

        override public function initialize() : void
        {
            .mx_internal::setDocumentDescriptor(_documentDescriptor_);
            super.initialize();
            return;
        }// end function

        public function ___Viking_Application1_creationComplete(event:FlexEvent) : void
        {
            start();
            return;
        }// end function

        public function set tactics(param1:Tactics) : void
        {
            var _loc_2:* = this._1551739333tactics;
            if (_loc_2 !== param1)
            {
                this._1551739333tactics = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "tactics", _loc_2, param1));
            }
            return;
        }// end function

        public function removeLoadingWindow() : void
        {
            if (loading)
            {
                loading = false;
                cursorManager.removeCursor(CursorManager.currentCursorID);
                PopUpManager.removePopUp(loadingWindow);
            }
            return;
        }// end function

        function _Viking_StylesInit() : void
        {
            var style:CSSStyleDeclaration;
            var effects:Array;
            if (mx_internal::_Viking_StylesInit_done)
            {
                return;
            }
            mx_internal::_Viking_StylesInit_done = true;
            style = StyleManager.getStyleDeclaration(".DealText2");
            if (!style)
            {
                style = new CSSStyleDeclaration();
                StyleManager.setStyleDeclaration(".DealText2", style, false);
            }
            if (style.factory == null)
            {
                style.factory = function () : void
            {
                this.color = 0;
                this.textAlign = "right";
                this.fontSize = 12;
                return;
            }// end function
            ;
            }
            style = StyleManager.getStyleDeclaration(".mailText");
            if (!style)
            {
                style = new CSSStyleDeclaration();
                StyleManager.setStyleDeclaration(".mailText", style, false);
            }
            if (style.factory == null)
            {
                style.factory = function () : void
            {
                this.color = 0;
                this.fontSize = 14;
                return;
            }// end function
            ;
            }
            style = StyleManager.getStyleDeclaration(".ClickStructureBody");
            if (!style)
            {
                style = new CSSStyleDeclaration();
                StyleManager.setStyleDeclaration(".ClickStructureBody", style, false);
            }
            if (style.factory == null)
            {
                style.factory = function () : void
            {
                this.leading = 4;
                this.letterSpacing = 0.6;
                this.color = 0;
                this.fontSize = 12;
                return;
            }// end function
            ;
            }
            style = StyleManager.getStyleDeclaration(".AllyDataTitle");
            if (!style)
            {
                style = new CSSStyleDeclaration();
                StyleManager.setStyleDeclaration(".AllyDataTitle", style, false);
            }
            if (style.factory == null)
            {
                style.factory = function () : void
            {
                this.fontWeight = "bold";
                this.color = 16777215;
                this.textAlign = "center";
                this.fontSize = 14;
                return;
            }// end function
            ;
            }
            style = StyleManager.getStyleDeclaration(".DealText3");
            if (!style)
            {
                style = new CSSStyleDeclaration();
                StyleManager.setStyleDeclaration(".DealText3", style, false);
            }
            if (style.factory == null)
            {
                style.factory = function () : void
            {
                this.color = 0;
                this.textAlign = "left";
                this.fontSize = 14;
                this.textIndent = 8;
                return;
            }// end function
            ;
            }
            style = StyleManager.getStyleDeclaration(".ConditionsBtn");
            if (!style)
            {
                style = new CSSStyleDeclaration();
                StyleManager.setStyleDeclaration(".ConditionsBtn", style, false);
            }
            style = StyleManager.getStyleDeclaration(".SortieEqpBox");
            if (!style)
            {
                style = new CSSStyleDeclaration();
                StyleManager.setStyleDeclaration(".SortieEqpBox", style, false);
            }
            if (style.factory == null)
            {
                style.factory = function () : void
            {
                this.paddingTop = 4;
                return;
            }// end function
            ;
            }
            style = StyleManager.getStyleDeclaration(".FinishTask200Button");
            if (!style)
            {
                style = new CSSStyleDeclaration();
                StyleManager.setStyleDeclaration(".FinishTask200Button", style, false);
            }
            if (style.factory == null)
            {
                style.factory = function () : void
            {
                this.upSkin = _embed_css_images_button_instant_200_off_png_819313217;
                this.downSkin = _embed_css_images_button_instant_200_on_png_1645818321;
                this.overSkin = _embed_css_images_button_instant_200_on_png_1645818321;
                return;
            }// end function
            ;
            }
            style = StyleManager.getStyleDeclaration(".cancelBtn");
            if (!style)
            {
                style = new CSSStyleDeclaration();
                StyleManager.setStyleDeclaration(".cancelBtn", style, false);
            }
            if (style.factory == null)
            {
                style.factory = function () : void
            {
                this.upSkin = _embed_css_images_st_btn_delete_png_692291931;
                this.downSkin = _embed_css_images_st_btn_delete_png_692291931;
                this.overSkin = _embed_css_images_st_btn_delete_png_692291931;
                return;
            }// end function
            ;
            }
            style = StyleManager.getStyleDeclaration(".BuildingPrice");
            if (!style)
            {
                style = new CSSStyleDeclaration();
                StyleManager.setStyleDeclaration(".BuildingPrice", style, false);
            }
            if (style.factory == null)
            {
                style.factory = function () : void
            {
                this.color = 16777215;
                this.fontSize = 12;
                return;
            }// end function
            ;
            }
            style = StyleManager.getStyleDeclaration(".GildWindowInfo");
            if (!style)
            {
                style = new CSSStyleDeclaration();
                StyleManager.setStyleDeclaration(".GildWindowInfo", style, false);
            }
            if (style.factory == null)
            {
                style.factory = function () : void
            {
                this.color = 0;
                this.fontSize = 14;
                return;
            }// end function
            ;
            }
            style = StyleManager.getStyleDeclaration(".PanelBaseTitle");
            if (!style)
            {
                style = new CSSStyleDeclaration();
                StyleManager.setStyleDeclaration(".PanelBaseTitle", style, false);
            }
            if (style.factory == null)
            {
                style.factory = function () : void
            {
                this.fontWeight = "bold";
                this.color = 16777215;
                this.textAlign = "center";
                this.fontSize = 14;
                return;
            }// end function
            ;
            }
            style = StyleManager.getStyleDeclaration(".VacantlotName");
            if (!style)
            {
                style = new CSSStyleDeclaration();
                StyleManager.setStyleDeclaration(".VacantlotName", style, false);
            }
            if (style.factory == null)
            {
                style.factory = function () : void
            {
                this.fontWeight = "bold";
                this.color = 16776960;
                this.fontSize = 13;
                return;
            }// end function
            ;
            }
            style = StyleManager.getStyleDeclaration(".ProcuctionQtyBg");
            if (!style)
            {
                style = new CSSStyleDeclaration();
                StyleManager.setStyleDeclaration(".ProcuctionQtyBg", style, false);
            }
            style = StyleManager.getStyleDeclaration(".FinishTask50Button");
            if (!style)
            {
                style = new CSSStyleDeclaration();
                StyleManager.setStyleDeclaration(".FinishTask50Button", style, false);
            }
            if (style.factory == null)
            {
                style.factory = function () : void
            {
                this.upSkin = _embed_css_images_button_instant_50_off_png_978280789;
                this.downSkin = _embed_css_images_button_instant_50_on_png_1941540573;
                this.overSkin = _embed_css_images_button_instant_50_on_png_1941540573;
                return;
            }// end function
            ;
            }
            style = StyleManager.getStyleDeclaration(".BaseTit");
            if (!style)
            {
                style = new CSSStyleDeclaration();
                StyleManager.setStyleDeclaration(".BaseTit", style, false);
            }
            if (style.factory == null)
            {
                style.factory = function () : void
            {
                this.textAlign = "center";
                this.fontSize = 14;
                return;
            }// end function
            ;
            }
            style = StyleManager.getStyleDeclaration(".GatheringName");
            if (!style)
            {
                style = new CSSStyleDeclaration();
                StyleManager.setStyleDeclaration(".GatheringName", style, false);
            }
            if (style.factory == null)
            {
                style.factory = function () : void
            {
                this.paddingTop = 5;
                this.color = 16777215;
                this.paddingBottom = 5;
                this.paddingLeft = 5;
                this.paddingRight = 5;
                return;
            }// end function
            ;
            }
            style = StyleManager.getStyleDeclaration(".CostMaterial");
            if (!style)
            {
                style = new CSSStyleDeclaration();
                StyleManager.setStyleDeclaration(".CostMaterial", style, false);
            }
            if (style.factory == null)
            {
                style.factory = function () : void
            {
                this.borderSides = "bottom right";
                this.borderStyle = "outset";
                this.borderColor = 2829099;
                this.backgroundColor = 14803650;
                return;
            }// end function
            ;
            }
            style = StyleManager.getStyleDeclaration(".ItemDetailLabel");
            if (!style)
            {
                style = new CSSStyleDeclaration();
                StyleManager.setStyleDeclaration(".ItemDetailLabel", style, false);
            }
            if (style.factory == null)
            {
                style.factory = function () : void
            {
                this.fontWeight = "bold";
                this.color = 0;
                this.fontSize = 16;
                return;
            }// end function
            ;
            }
            style = StyleManager.getStyleDeclaration(".DialogText");
            if (!style)
            {
                style = new CSSStyleDeclaration();
                StyleManager.setStyleDeclaration(".DialogText", style, false);
            }
            if (style.factory == null)
            {
                style.factory = function () : void
            {
                this.color = 0;
                this.fontSize = 14;
                return;
            }// end function
            ;
            }
            style = StyleManager.getStyleDeclaration(".BuildingButtonMouseOver");
            if (!style)
            {
                style = new CSSStyleDeclaration();
                StyleManager.setStyleDeclaration(".BuildingButtonMouseOver", style, false);
            }
            if (style.factory == null)
            {
                style.factory = function () : void
            {
                this.borderStyle = "none";
                this.backgroundColor = 6179904;
                this.cornerRadius = 20;
                this.backgroundAlpha = 0.85;
                return;
            }// end function
            ;
            }
            style = StyleManager.getStyleDeclaration(".BuildingMouseOverText");
            if (!style)
            {
                style = new CSSStyleDeclaration();
                StyleManager.setStyleDeclaration(".BuildingMouseOverText", style, false);
            }
            if (style.factory == null)
            {
                style.factory = function () : void
            {
                this.paddingTop = 5;
                this.color = 16777215;
                this.fontSize = 12;
                this.paddingLeft = 5;
                this.paddingBottom = 5;
                this.paddingRight = 5;
                return;
            }// end function
            ;
            }
            style = StyleManager.getStyleDeclaration(".ProductionPanel");
            if (!style)
            {
                style = new CSSStyleDeclaration();
                StyleManager.setStyleDeclaration(".ProductionPanel", style, false);
            }
            if (style.factory == null)
            {
                style.factory = function () : void
            {
                this.titleStyleName = "ProductionTitle";
                this.borderStyle = "none";
                this.dropShadowEnabled = false;
                this.headerHeight = 40;
                this.highlightAlphas = [0, 0];
                this.fontSize = 12;
                this.backgroundAlpha = 0;
                return;
            }// end function
            ;
            }
            style = StyleManager.getStyleDeclaration(".UnitBuildingHeaderStyle");
            if (!style)
            {
                style = new CSSStyleDeclaration();
                StyleManager.setStyleDeclaration(".UnitBuildingHeaderStyle", style, false);
            }
            if (style.factory == null)
            {
                style.factory = function () : void
            {
                this.fontWeight = "bold";
                this.textDecoration = "none";
                this.color = 16777215;
                this.textAlign = "center";
                this.fontSize = 12;
                this.selectionColor = 16771259;
                return;
            }// end function
            ;
            }
            style = StyleManager.getStyleDeclaration(".BuildingName");
            if (!style)
            {
                style = new CSSStyleDeclaration();
                StyleManager.setStyleDeclaration(".BuildingName", style, false);
            }
            if (style.factory == null)
            {
                style.factory = function () : void
            {
                this.fontWeight = "bold";
                this.color = 0;
                this.textAlign = "center";
                this.fontSize = 14;
                return;
            }// end function
            ;
            }
            style = StyleManager.getStyleDeclaration(".ChangeEquipmentBtn");
            if (!style)
            {
                style = new CSSStyleDeclaration();
                StyleManager.setStyleDeclaration(".ChangeEquipmentBtn", style, false);
            }
            if (style.factory == null)
            {
                style.factory = function () : void
            {
                this.height = 22;
                this.width = 84;
                return;
            }// end function
            ;
            }
            style = StyleManager.getStyleDeclaration(".GuildComboBox");
            if (!style)
            {
                style = new CSSStyleDeclaration();
                StyleManager.setStyleDeclaration(".GuildComboBox", style, false);
            }
            if (style.factory == null)
            {
                style.factory = function () : void
            {
                this.fontWeight = "normal";
                this.color = 0;
                this.cornerRadius = 0;
                this.fontSize = 12;
                this.themeColor = 10066329;
                return;
            }// end function
            ;
            }
            style = StyleManager.getStyleDeclaration(".TempleText2");
            if (!style)
            {
                style = new CSSStyleDeclaration();
                StyleManager.setStyleDeclaration(".TempleText2", style, false);
            }
            if (style.factory == null)
            {
                style.factory = function () : void
            {
                this.color = 0;
                this.textAlign = "right";
                this.fontSize = 12;
                return;
            }// end function
            ;
            }
            style = StyleManager.getStyleDeclaration("ToolTip");
            if (!style)
            {
                style = new CSSStyleDeclaration();
                StyleManager.setStyleDeclaration("ToolTip", style, false);
            }
            if (style.factory == null)
            {
                style.factory = function () : void
            {
                this.paddingTop = 5;
                this.color = 16777215;
                this.backgroundColor = 3163220;
                this.cornerRadius = 0;
                this.textAlign = "center";
                this.fontSize = 12;
                this.paddingBottom = 4;
                this.paddingLeft = 10;
                this.backgroundAlpha = 0.85;
                this.paddingRight = 10;
                return;
            }// end function
            ;
            }
            style = StyleManager.getStyleDeclaration(".DataGridBase");
            if (!style)
            {
                style = new CSSStyleDeclaration();
                StyleManager.setStyleDeclaration(".DataGridBase", style, false);
            }
            if (style.factory == null)
            {
                style.factory = function () : void
            {
                this.borderColor = 993820;
                this.backgroundColor = 14803650;
                this.horizontalGridLines = true;
                this.horizontalGridLineColor = 7567467;
                this.rollOverColor = 993820;
                this.useRollOver = false;
                this.headerStyleName = "AllyDataHeader";
                this.iconColor = 16777215;
                this.verticalAlign = "middle";
                this.fontSize = 11;
                this.selectionColor = 16624526;
                this.verticalGridLineColor = 7567467;
                this.alternatingItemColors = [14803650, 16119005];
                this.headerColors = [2115121, 993820];
                return;
            }// end function
            ;
            }
            style = StyleManager.getStyleDeclaration("VScrollBar");
            if (!style)
            {
                style = new CSSStyleDeclaration();
                StyleManager.setStyleDeclaration("VScrollBar", style, false);
            }
            if (style.factory == null)
            {
                style.factory = function () : void
            {
                this.trackSkin = _embed_css_images_vscbar_track_png_275221189;
                this.downArrowSkin = _embed_css_images_vscbar_down_png_336445035;
                this.upArrowSkin = _embed_css_images_vscbar_up_png_582051551;
                this.thumbSkin = _embed_css_images_vscbar_thumb_png_890898163;
                return;
            }// end function
            ;
            }
            style = StyleManager.getStyleDeclaration(".UnitBuilding");
            if (!style)
            {
                style = new CSSStyleDeclaration();
                StyleManager.setStyleDeclaration(".UnitBuilding", style, false);
            }
            if (style.factory == null)
            {
                style.factory = function () : void
            {
                this.borderColor = 993820;
                this.backgroundColor = 14803650;
                this.horizontalGridLines = true;
                this.horizontalGridLineColor = 7567467;
                this.rollOverColor = 993820;
                this.useRollOver = false;
                this.headerStyleName = "UnitBuildingHeaderStyle";
                this.iconColor = 16777215;
                this.fontSize = 11;
                this.selectionColor = 16624526;
                this.verticalGridLineColor = 7567467;
                this.alternatingItemColors = [14803650, 16119005];
                this.headerColors = [2115121, 993820];
                return;
            }// end function
            ;
            }
            style = StyleManager.getStyleDeclaration(".InfoTxt");
            if (!style)
            {
                style = new CSSStyleDeclaration();
                StyleManager.setStyleDeclaration(".InfoTxt", style, false);
            }
            if (style.factory == null)
            {
                style.factory = function () : void
            {
                this.color = 16777215;
                this.fontSize = 13;
                return;
            }// end function
            ;
            }
            style = StyleManager.getStyleDeclaration(".GetItemListHeader");
            if (!style)
            {
                style = new CSSStyleDeclaration();
                StyleManager.setStyleDeclaration(".GetItemListHeader", style, false);
            }
            if (style.factory == null)
            {
                style.factory = function () : void
            {
                this.useRollOver = false;
                this.borderThickness = 0.2;
                this.verticalGridLines = false;
                this.backgroundAlpha = 0;
                return;
            }// end function
            ;
            }
            style = StyleManager.getStyleDeclaration(".BaseVacantLot");
            if (!style)
            {
                style = new CSSStyleDeclaration();
                StyleManager.setStyleDeclaration(".BaseVacantLot", style, false);
            }
            if (style.factory == null)
            {
                style.factory = function () : void
            {
                this.height = 32;
                this.width = 64;
                return;
            }// end function
            ;
            }
            style = StyleManager.getStyleDeclaration(".ClickStructureName");
            if (!style)
            {
                style = new CSSStyleDeclaration();
                StyleManager.setStyleDeclaration(".ClickStructureName", style, false);
            }
            if (style.factory == null)
            {
                style.factory = function () : void
            {
                this.fontWeight = "bold";
                this.paddingTop = 20;
                this.letterSpacing = -2;
                this.color = 0;
                this.fontSize = 15;
                this.paddingLeft = 160;
                return;
            }// end function
            ;
            }
            style = StyleManager.getStyleDeclaration(".GulidEstablishmentText");
            if (!style)
            {
                style = new CSSStyleDeclaration();
                StyleManager.setStyleDeclaration(".GulidEstablishmentText", style, false);
            }
            if (style.factory == null)
            {
                style.factory = function () : void
            {
                this.color = 0;
                this.fontSize = 12;
                return;
            }// end function
            ;
            }
            style = StyleManager.getStyleDeclaration(".ProductionTitle");
            if (!style)
            {
                style = new CSSStyleDeclaration();
                StyleManager.setStyleDeclaration(".ProductionTitle", style, false);
            }
            if (style.factory == null)
            {
                style.factory = function () : void
            {
                this.fontWeight = "bold";
                this.color = 16777215;
                this.textAlign = "center";
                this.fontSize = 14;
                return;
            }// end function
            ;
            }
            style = StyleManager.getStyleDeclaration(".PanelBase");
            if (!style)
            {
                style = new CSSStyleDeclaration();
                StyleManager.setStyleDeclaration(".PanelBase", style, false);
            }
            if (style.factory == null)
            {
                style.factory = function () : void
            {
                this.titleStyleName = "PanelBaseTitle";
                this.borderStyle = "none";
                this.dropShadowEnabled = false;
                this.headerHeight = 40;
                this.highlightAlphas = [0, 0];
                this.backgroundAlpha = 0;
                return;
            }// end function
            ;
            }
            style = StyleManager.getStyleDeclaration(".BiginnerTitle");
            if (!style)
            {
                style = new CSSStyleDeclaration();
                StyleManager.setStyleDeclaration(".BiginnerTitle", style, false);
            }
            if (style.factory == null)
            {
                style.factory = function () : void
            {
                this.fontWeight = "bold";
                this.fontSize = 14;
                return;
            }// end function
            ;
            }
            style = StyleManager.getStyleDeclaration(".CostQuantity");
            if (!style)
            {
                style = new CSSStyleDeclaration();
                StyleManager.setStyleDeclaration(".CostQuantity", style, false);
            }
            if (style.factory == null)
            {
                style.factory = function () : void
            {
                this.borderSides = "bottom right";
                this.borderStyle = "outset";
                this.borderColor = 2829099;
                this.backgroundColor = 16119005;
                return;
            }// end function
            ;
            }
            style = StyleManager.getStyleDeclaration("HScrollBar");
            if (!style)
            {
                style = new CSSStyleDeclaration();
                StyleManager.setStyleDeclaration("HScrollBar", style, false);
            }
            if (style.factory == null)
            {
                style.factory = function () : void
            {
                this.trackSkin = _embed_css_images_vscbar_track_png_275221189;
                this.downArrowSkin = _embed_css_images_vscbar_down_png_336445035;
                this.upArrowSkin = _embed_css_images_vscbar_up_png_582051551;
                this.thumbSkin = _embed_css_images_vscbar_thumb_png_890898164;
                return;
            }// end function
            ;
            }
            style = StyleManager.getStyleDeclaration(".ProcuctionConditionsBg");
            if (!style)
            {
                style = new CSSStyleDeclaration();
                StyleManager.setStyleDeclaration(".ProcuctionConditionsBg", style, false);
            }
            style = StyleManager.getStyleDeclaration(".ItemDetailText");
            if (!style)
            {
                style = new CSSStyleDeclaration();
                StyleManager.setStyleDeclaration(".ItemDetailText", style, false);
            }
            if (style.factory == null)
            {
                style.factory = function () : void
            {
                this.color = 0;
                this.fontSize = 12;
                return;
            }// end function
            ;
            }
            style = StyleManager.getStyleDeclaration(".ProductionGrid");
            if (!style)
            {
                style = new CSSStyleDeclaration();
                StyleManager.setStyleDeclaration(".ProductionGrid", style, false);
            }
            if (style.factory == null)
            {
                style.factory = function () : void
            {
                this.borderColor = 993820;
                this.backgroundColor = 14803650;
                this.horizontalGridLines = true;
                this.horizontalGridLineColor = 7567467;
                this.rollOverColor = 993820;
                this.useRollOver = false;
                this.headerStyleName = "ProductionGridHeaderStyle";
                this.iconColor = 16777215;
                this.fontSize = 11;
                this.selectionColor = 16624526;
                this.verticalGridLineColor = 7567467;
                this.alternatingItemColors = [14803650, 16119005];
                this.headerColors = [2115121, 993820];
                return;
            }// end function
            ;
            }
            style = StyleManager.getStyleDeclaration(".GuildApprovalTxt");
            if (!style)
            {
                style = new CSSStyleDeclaration();
                StyleManager.setStyleDeclaration(".GuildApprovalTxt", style, false);
            }
            if (style.factory == null)
            {
                style.factory = function () : void
            {
                this.color = 0;
                this.fontSize = 13;
                return;
            }// end function
            ;
            }
            style = StyleManager.getStyleDeclaration(".OvStarLevel");
            if (!style)
            {
                style = new CSSStyleDeclaration();
                StyleManager.setStyleDeclaration(".OvStarLevel", style, false);
            }
            if (style.factory == null)
            {
                style.factory = function () : void
            {
                this.letterSpacing = -1;
                this.color = 0;
                this.fontSize = 13;
                this.paddingLeft = 18;
                return;
            }// end function
            ;
            }
            style = StyleManager.getStyleDeclaration(".GuildSearchText");
            if (!style)
            {
                style = new CSSStyleDeclaration();
                StyleManager.setStyleDeclaration(".GuildSearchText", style, false);
            }
            if (style.factory == null)
            {
                style.factory = function () : void
            {
                this.color = 0;
                this.fontSize = 12;
                return;
            }// end function
            ;
            }
            style = StyleManager.getStyleDeclaration(".PossibleClass");
            if (!style)
            {
                style = new CSSStyleDeclaration();
                StyleManager.setStyleDeclaration(".PossibleClass", style, false);
            }
            if (style.factory == null)
            {
                style.factory = function () : void
            {
                this.color = 0;
                this.fontSize = 12;
                return;
            }// end function
            ;
            }
            style = StyleManager.getStyleDeclaration(".DealText");
            if (!style)
            {
                style = new CSSStyleDeclaration();
                StyleManager.setStyleDeclaration(".DealText", style, false);
            }
            if (style.factory == null)
            {
                style.factory = function () : void
            {
                this.fontWeight = "bold";
                this.color = 0;
                this.textAlign = "left";
                this.fontSize = 14;
                return;
            }// end function
            ;
            }
            style = StyleManager.getStyleDeclaration(".ScrollBar");
            if (!style)
            {
                style = new CSSStyleDeclaration();
                StyleManager.setStyleDeclaration(".ScrollBar", style, false);
            }
            if (style.factory == null)
            {
                style.factory = function () : void
            {
                this.borderColor = 5588792;
                this.trackColors = [8611652, 11177836];
                this.fillColors = [12625797, 13408614, 13408614, 15260092];
                this.fillAlphas = [1, 1, 1, 1];
                this.themeColor = 16299345;
                return;
            }// end function
            ;
            }
            style = StyleManager.getStyleDeclaration(".DataGridBaseHeader");
            if (!style)
            {
                style = new CSSStyleDeclaration();
                StyleManager.setStyleDeclaration(".DataGridBaseHeader", style, false);
            }
            if (style.factory == null)
            {
                style.factory = function () : void
            {
                this.fontWeight = "bold";
                this.textDecoration = "none";
                this.color = 16777215;
                this.textAlign = "center";
                this.fontSize = 12;
                this.selectionColor = 16771259;
                return;
            }// end function
            ;
            }
            style = StyleManager.getStyleDeclaration(".Gathering");
            if (!style)
            {
                style = new CSSStyleDeclaration();
                StyleManager.setStyleDeclaration(".Gathering", style, false);
            }
            if (style.factory == null)
            {
                style.factory = function () : void
            {
                this.fontWeight = "bold";
                this.color = 16777215;
                this.headerHeight = 40;
                this.textAlign = "center";
                this.verticalAlign = "bottom";
                this.fontSize = 14;
                return;
            }// end function
            ;
            }
            style = StyleManager.getStyleDeclaration(".BuildingButtonMouseOverTitle");
            if (!style)
            {
                style = new CSSStyleDeclaration();
                StyleManager.setStyleDeclaration(".BuildingButtonMouseOverTitle", style, false);
            }
            if (style.factory == null)
            {
                style.factory = function () : void
            {
                this.fontWeight = "bold";
                this.paddingTop = 5;
                this.color = 16776960;
                this.fontSize = 14;
                this.paddingLeft = 5;
                this.paddingBottom = 5;
                this.paddingRight = 5;
                return;
            }// end function
            ;
            }
            style = StyleManager.getStyleDeclaration(".ProductionBtn");
            if (!style)
            {
                style = new CSSStyleDeclaration();
                StyleManager.setStyleDeclaration(".ProductionBtn", style, false);
            }
            style = StyleManager.getStyleDeclaration(".GridDecideBtn");
            if (!style)
            {
                style = new CSSStyleDeclaration();
                StyleManager.setStyleDeclaration(".GridDecideBtn", style, false);
            }
            style = StyleManager.getStyleDeclaration(".GildWindowTitle");
            if (!style)
            {
                style = new CSSStyleDeclaration();
                StyleManager.setStyleDeclaration(".GildWindowTitle", style, false);
            }
            if (style.factory == null)
            {
                style.factory = function () : void
            {
                this.fontWeight = "bold";
                this.color = 16777215;
                this.textAlign = "center";
                this.fontSize = 14;
                return;
            }// end function
            ;
            }
            style = StyleManager.getStyleDeclaration(".UnitListGrid");
            if (!style)
            {
                style = new CSSStyleDeclaration();
                StyleManager.setStyleDeclaration(".UnitListGrid", style, false);
            }
            if (style.factory == null)
            {
                style.factory = function () : void
            {
                this.borderColor = 993820;
                this.backgroundColor = 14803650;
                this.horizontalGridLines = true;
                this.horizontalGridLineColor = 7567467;
                this.rollOverColor = 993820;
                this.useRollOver = false;
                this.headerStyleName = "AllyDataHeader";
                this.iconColor = 16777215;
                this.fontSize = 11;
                this.selectionColor = 16624526;
                this.verticalGridLineColor = 7567467;
                this.alternatingItemColors = [14803650, 16119005];
                this.headerColors = [2115121, 993820];
                return;
            }// end function
            ;
            }
            style = StyleManager.getStyleDeclaration(".LevelUpBtn");
            if (!style)
            {
                style = new CSSStyleDeclaration();
                StyleManager.setStyleDeclaration(".LevelUpBtn", style, false);
            }
            if (style.factory == null)
            {
                style.factory = function () : void
            {
                this.height = 22;
                this.width = 84;
                return;
            }// end function
            ;
            }
            style = StyleManager.getStyleDeclaration(".TempleText");
            if (!style)
            {
                style = new CSSStyleDeclaration();
                StyleManager.setStyleDeclaration(".TempleText", style, false);
            }
            if (style.factory == null)
            {
                style.factory = function () : void
            {
                this.fontWeight = "bold";
                this.color = 0;
                this.textAlign = "left";
                this.fontSize = 14;
                return;
            }// end function
            ;
            }
            style = StyleManager.getStyleDeclaration(".DealTitle");
            if (!style)
            {
                style = new CSSStyleDeclaration();
                StyleManager.setStyleDeclaration(".DealTitle", style, false);
            }
            if (style.factory == null)
            {
                style.factory = function () : void
            {
                this.fontWeight = "bold";
                this.color = 16777215;
                this.textAlign = "center";
                this.fontSize = 16;
                return;
            }// end function
            ;
            }
            style = StyleManager.getStyleDeclaration(".BuildingMouseOver");
            if (!style)
            {
                style = new CSSStyleDeclaration();
                StyleManager.setStyleDeclaration(".BuildingMouseOver", style, false);
            }
            if (style.factory == null)
            {
                style.factory = function () : void
            {
                this.borderStyle = "none";
                this.backgroundColor = 6179904;
                this.cornerRadius = 20;
                this.backgroundAlpha = 0.85;
                return;
            }// end function
            ;
            }
            style = StyleManager.getStyleDeclaration(".GetItemList");
            if (!style)
            {
                style = new CSSStyleDeclaration();
                StyleManager.setStyleDeclaration(".GetItemList", style, false);
            }
            if (style.factory == null)
            {
                style.factory = function () : void
            {
                this.headerStyleName = "GetItemListHeader";
                this.useRollOver = false;
                this.borderThickness = 0;
                this.verticalGridLines = false;
                this.fontSize = 13;
                this.paddingBottom = 1;
                this.backgroundAlpha = 0;
                return;
            }// end function
            ;
            }
            style = StyleManager.getStyleDeclaration(".CenterText");
            if (!style)
            {
                style = new CSSStyleDeclaration();
                StyleManager.setStyleDeclaration(".CenterText", style, false);
            }
            if (style.factory == null)
            {
                style.factory = function () : void
            {
                this.color = 0;
                this.textAlign = "center";
                this.fontSize = 14;
                return;
            }// end function
            ;
            }
            style = StyleManager.getStyleDeclaration(".InfoBoxTab");
            if (!style)
            {
                style = new CSSStyleDeclaration();
                StyleManager.setStyleDeclaration(".InfoBoxTab", style, false);
            }
            if (style.factory == null)
            {
                style.factory = function () : void
            {
                this.borderStyle = "none";
                this.backgroundColor = 3484453;
                this.tabWidth = 68;
                this.tabHeight = 20;
                this.horizontalGap = 2;
                this.backgroundAlpha = 0.6;
                return;
            }// end function
            ;
            }
            style = StyleManager.getStyleDeclaration(".BuildingDetail");
            if (!style)
            {
                style = new CSSStyleDeclaration();
                StyleManager.setStyleDeclaration(".BuildingDetail", style, false);
            }
            if (style.factory == null)
            {
                style.factory = function () : void
            {
                this.backgroundColor = 9273720;
                this.horizontalGridLines = true;
                this.horizontalGridLineColor = 12040892;
                this.useRollOver = true;
                this.headerStyleName = "BuildingDetailHeaderStyle";
                this.verticalGridLines = true;
                this.fontSize = 12;
                this.verticalGridLineColor = 12040892;
                this.fontWeight = "normal";
                this.color = 0;
                this.alternatingItemColors = [14539222, 14539222];
                this.borderThickness = 0;
                this.headerColors = [15921391, 15921391];
                return;
            }// end function
            ;
            }
            style = StyleManager.getStyleDeclaration(".ItemName");
            if (!style)
            {
                style = new CSSStyleDeclaration();
                StyleManager.setStyleDeclaration(".ItemName", style, false);
            }
            if (style.factory == null)
            {
                style.factory = function () : void
            {
                this.fontWeight = "bold";
                this.color = 0;
                this.fontSize = 16;
                return;
            }// end function
            ;
            }
            style = StyleManager.getStyleDeclaration(".GulidMembershipText");
            if (!style)
            {
                style = new CSSStyleDeclaration();
                StyleManager.setStyleDeclaration(".GulidMembershipText", style, false);
            }
            if (style.factory == null)
            {
                style.factory = function () : void
            {
                this.color = 0;
                this.fontSize = 12;
                return;
            }// end function
            ;
            }
            style = StyleManager.getStyleDeclaration(".ItemDetail");
            if (!style)
            {
                style = new CSSStyleDeclaration();
                StyleManager.setStyleDeclaration(".ItemDetail", style, false);
            }
            if (style.factory == null)
            {
                style.factory = function () : void
            {
                this.leading = 4;
                this.letterSpacing = 2;
                this.color = 0;
                this.fontSize = 12;
                return;
            }// end function
            ;
            }
            style = StyleManager.getStyleDeclaration(".SkillAndTime");
            if (!style)
            {
                style = new CSSStyleDeclaration();
                StyleManager.setStyleDeclaration(".SkillAndTime", style, false);
            }
            if (style.factory == null)
            {
                style.factory = function () : void
            {
                this.color = 16777215;
                this.fontSize = 12;
                return;
            }// end function
            ;
            }
            style = StyleManager.getStyleDeclaration(".OvStarName");
            if (!style)
            {
                style = new CSSStyleDeclaration();
                StyleManager.setStyleDeclaration(".OvStarName", style, false);
            }
            if (style.factory == null)
            {
                style.factory = function () : void
            {
                this.fontWeight = "bold";
                this.paddingTop = 11;
                this.color = 16776960;
                this.letterSpacing = -1;
                this.fontSize = 13;
                this.paddingLeft = 13;
                this.paddingBottom = 10;
                return;
            }// end function
            ;
            }
            style = StyleManager.getStyleDeclaration(".SortieEqpTab");
            if (!style)
            {
                style = new CSSStyleDeclaration();
                StyleManager.setStyleDeclaration(".SortieEqpTab", style, false);
            }
            if (style.factory == null)
            {
                style.factory = function () : void
            {
                this.firstTabStyleName = "SortieEqpTabBg";
                this.borderStyle = "none";
                this.tabStyleName = "SortieEqpTabBg";
                this.color = 16777215;
                this.lastTabStyleName = "SortieEqpTabBg";
                this.tabWidth = 105;
                this.tabHeight = 30;
                this.fontSize = 12;
                this.horizontalGap = 3;
                this.paddingBottom = 0;
                return;
            }// end function
            ;
            }
            style = StyleManager.getStyleDeclaration(".ProductionQtyText");
            if (!style)
            {
                style = new CSSStyleDeclaration();
                StyleManager.setStyleDeclaration(".ProductionQtyText", style, false);
            }
            if (style.factory == null)
            {
                style.factory = function () : void
            {
                this.color = 0;
                this.fontSize = 13;
                return;
            }// end function
            ;
            }
            style = StyleManager.getStyleDeclaration(".GildWindowPanel");
            if (!style)
            {
                style = new CSSStyleDeclaration();
                StyleManager.setStyleDeclaration(".GildWindowPanel", style, false);
            }
            if (style.factory == null)
            {
                style.factory = function () : void
            {
                this.titleStyleName = "GildWindowTitle";
                this.borderStyle = "none";
                this.dropShadowEnabled = false;
                this.headerHeight = 40;
                this.highlightAlphas = [0, 0];
                this.backgroundAlpha = 0;
                return;
            }// end function
            ;
            }
            style = StyleManager.getStyleDeclaration(".InfoTxtBox");
            if (!style)
            {
                style = new CSSStyleDeclaration();
                StyleManager.setStyleDeclaration(".InfoTxtBox", style, false);
            }
            if (style.factory == null)
            {
                style.factory = function () : void
            {
                this.paddingTop = -5;
                this.paddingLeft = 5;
                return;
            }// end function
            ;
            }
            style = StyleManager.getStyleDeclaration(".ProductionTab");
            if (!style)
            {
                style = new CSSStyleDeclaration();
                StyleManager.setStyleDeclaration(".ProductionTab", style, false);
            }
            if (style.factory == null)
            {
                style.factory = function () : void
            {
                this.firstTabStyleName = "ProductionTabBg";
                this.borderStyle = "none";
                this.tabStyleName = "ProductionTabBg";
                this.color = 16777215;
                this.lastTabStyleName = "ProductionTabBg";
                this.tabWidth = 89;
                this.tabHeight = 30;
                this.fontSize = 12;
                this.horizontalGap = 3;
                this.paddingBottom = 0;
                return;
            }// end function
            ;
            }
            style = StyleManager.getStyleDeclaration(".GuildAreaList");
            if (!style)
            {
                style = new CSSStyleDeclaration();
                StyleManager.setStyleDeclaration(".GuildAreaList", style, false);
            }
            if (style.factory == null)
            {
                style.factory = function () : void
            {
                this.borderColor = 993820;
                this.alternatingItemColors = [14343083, 16119005, 14343083, 16119005, 14343083, 16119005];
                this.rollOverColor = 993820;
                this.headerStyleName = "AllyDataHeader";
                this.useRollOver = false;
                this.iconColor = 16777215;
                this.verticalAlign = "middle";
                this.selectionColor = 16624526;
                return;
            }// end function
            ;
            }
            style = StyleManager.getStyleDeclaration(".JobName");
            if (!style)
            {
                style = new CSSStyleDeclaration();
                StyleManager.setStyleDeclaration(".JobName", style, false);
            }
            if (style.factory == null)
            {
                style.factory = function () : void
            {
                this.fontWeight = "bold";
                this.fontSize = 14;
                return;
            }// end function
            ;
            }
            style = StyleManager.getStyleDeclaration(".TownDescriptionText");
            if (!style)
            {
                style = new CSSStyleDeclaration();
                StyleManager.setStyleDeclaration(".TownDescriptionText", style, false);
            }
            if (style.factory == null)
            {
                style.factory = function () : void
            {
                this.color = 0;
                this.fontSize = 12;
                return;
            }// end function
            ;
            }
            style = StyleManager.getStyleDeclaration(".NameTextArea");
            if (!style)
            {
                style = new CSSStyleDeclaration();
                StyleManager.setStyleDeclaration(".NameTextArea", style, false);
            }
            if (style.factory == null)
            {
                style.factory = function () : void
            {
                this.paddingTop = 7;
                this.focusAlpha = 0;
                this.fontSize = 14;
                this.paddingLeft = 6;
                this.backgroundAlpha = 0;
                return;
            }// end function
            ;
            }
            style = StyleManager.getStyleDeclaration(".AllyDataHeader");
            if (!style)
            {
                style = new CSSStyleDeclaration();
                StyleManager.setStyleDeclaration(".AllyDataHeader", style, false);
            }
            if (style.factory == null)
            {
                style.factory = function () : void
            {
                this.fontWeight = "bold";
                this.color = 16777215;
                this.textAlign = "center";
                this.fontSize = 12;
                this.selectionColor = 16771259;
                this.paddingLeft = 0;
                this.paddingRight = 0;
                return;
            }// end function
            ;
            }
            style = StyleManager.getStyleDeclaration(".closeBtn");
            if (!style)
            {
                style = new CSSStyleDeclaration();
                StyleManager.setStyleDeclaration(".closeBtn", style, false);
            }
            style = StyleManager.getStyleDeclaration(".BuildingDetailHeaderStyle");
            if (!style)
            {
                style = new CSSStyleDeclaration();
                StyleManager.setStyleDeclaration(".BuildingDetailHeaderStyle", style, false);
            }
            if (style.factory == null)
            {
                style.factory = function () : void
            {
                this.fontWeight = "normal";
                this.textDecoration = "none";
                this.color = 0;
                this.fontStyle = "normal";
                this.fontSize = 12;
                return;
            }// end function
            ;
            }
            style = StyleManager.getStyleDeclaration(".ProductionGridHeaderStyle");
            if (!style)
            {
                style = new CSSStyleDeclaration();
                StyleManager.setStyleDeclaration(".ProductionGridHeaderStyle", style, false);
            }
            if (style.factory == null)
            {
                style.factory = function () : void
            {
                this.color = 16777215;
                this.textAlign = "center";
                this.fontSize = 14;
                this.selectionColor = 16771259;
                return;
            }// end function
            ;
            }
            style = StyleManager.getStyleDeclaration(".CrystalQtyBg");
            if (!style)
            {
                style = new CSSStyleDeclaration();
                StyleManager.setStyleDeclaration(".CrystalQtyBg", style, false);
            }
            style = StyleManager.getStyleDeclaration(".HToolTip");
            if (!style)
            {
                style = new CSSStyleDeclaration();
                StyleManager.setStyleDeclaration(".HToolTip", style, false);
            }
            if (style.factory == null)
            {
                style.factory = function () : void
            {
                this.paddingTop = 5;
                this.backgroundColor = 6179904;
                this.cornerRadius = 0;
                this.textAlign = "center";
                this.fontSize = 13;
                this.paddingBottom = 4;
                this.paddingLeft = 10;
                this.backgroundAlpha = 0.7;
                this.paddingRight = 10;
                return;
            }// end function
            ;
            }
            style = StyleManager.getStyleDeclaration(".GuildListDataGrid");
            if (!style)
            {
                style = new CSSStyleDeclaration();
                StyleManager.setStyleDeclaration(".GuildListDataGrid", style, false);
            }
            if (style.factory == null)
            {
                style.factory = function () : void
            {
                this.borderColor = 993820;
                this.horizontalGridLines = true;
                this.horizontalGridLineColor = 7567467;
                this.rollOverColor = 993820;
                this.useRollOver = false;
                this.headerStyleName = "AllyDataHeader";
                this.iconColor = 16777215;
                this.fontSize = 10;
                this.verticalAlign = "middle";
                this.selectionColor = 16624526;
                this.backgroundAlpha = 0;
                this.verticalGridLineColor = 7567467;
                this.headerColors = [2115121, 993820];
                return;
            }// end function
            ;
            }
            style = StyleManager.getStyleDeclaration(".Info");
            if (!style)
            {
                style = new CSSStyleDeclaration();
                StyleManager.setStyleDeclaration(".Info", style, false);
            }
            if (style.factory == null)
            {
                style.factory = function () : void
            {
                this.color = 0;
                this.fontSize = 13;
                return;
            }// end function
            ;
            }
            style = StyleManager.getStyleDeclaration(".FinishTask100Button");
            if (!style)
            {
                style = new CSSStyleDeclaration();
                StyleManager.setStyleDeclaration(".FinishTask100Button", style, false);
            }
            if (style.factory == null)
            {
                style.factory = function () : void
            {
                this.upSkin = _embed_css_images_button_instant_100_off_png_1757446729;
                this.downSkin = _embed_css_images_button_instant_100_on_png_849915229;
                this.overSkin = _embed_css_images_button_instant_100_on_png_849915229;
                return;
            }// end function
            ;
            }
            style = StyleManager.getStyleDeclaration(".UnitSelectText");
            if (!style)
            {
                style = new CSSStyleDeclaration();
                StyleManager.setStyleDeclaration(".UnitSelectText", style, false);
            }
            if (style.factory == null)
            {
                style.factory = function () : void
            {
                this.color = 0;
                this.fontSize = 11;
                return;
            }// end function
            ;
            }
            style = StyleManager.getStyleDeclaration(".DataGridBase2");
            if (!style)
            {
                style = new CSSStyleDeclaration();
                StyleManager.setStyleDeclaration(".DataGridBase2", style, false);
            }
            if (style.factory == null)
            {
                style.factory = function () : void
            {
                this.borderColor = 993820;
                this.backgroundColor = 14803650;
                this.horizontalGridLines = true;
                this.horizontalGridLineColor = 7567467;
                this.rollOverColor = 993820;
                this.useRollOver = false;
                this.headerStyleName = "AllyDataHeader";
                this.iconColor = 16777215;
                this.verticalAlign = "middle";
                this.fontSize = 11;
                this.selectionColor = 16624526;
                this.verticalGridLineColor = 7567467;
                this.alternatingItemColors = [16624526, 14803650];
                this.headerColors = [2115121, 993820];
                return;
            }// end function
            ;
            }
            style = StyleManager.getStyleDeclaration(".UnitListPanel");
            if (!style)
            {
                style = new CSSStyleDeclaration();
                StyleManager.setStyleDeclaration(".UnitListPanel", style, false);
            }
            if (style.factory == null)
            {
                style.factory = function () : void
            {
                this.titleStyleName = "AllyDataTitle";
                this.borderStyle = "none";
                this.dropShadowEnabled = false;
                this.headerHeight = 40;
                this.highlightAlphas = [0, 0];
                this.backgroundAlpha = 0;
                return;
            }// end function
            ;
            }
            var _loc_2:* = StyleManager;
            _loc_2.mx_internal::initProtoChainRoots();
            return;
        }// end function

        public function set gameViewStack(param1:ViewStack) : void
        {
            var _loc_2:* = this._1066951919gameViewStack;
            if (_loc_2 !== param1)
            {
                this._1066951919gameViewStack = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "gameViewStack", _loc_2, param1));
            }
            return;
        }// end function

        public function get initialForm() : InitialForm
        {
            return this._1232967208initialForm;
        }// end function

        public function get tactics() : Tactics
        {
            return this._1551739333tactics;
        }// end function

        public function popupWindow(param1:Canvas, param2:Boolean = true, param3:Boolean = false) : void
        {
            if (!this.systemManager.contains(DisplayObject(param1)))
            {
                param1.setStyle("modalTransparencyBlur", 0);
                param1.setStyle("modalTransparency", param3 ? (0) : (0.4));
                param1.setStyle("modalTransparencyColor", 16777215);
                param1.setStyle("modalTransparencyDuration", param3 ? (0) : (10));
                PopUpManager.addPopUp(param1, this, true);
                if (param2)
                {
                    PopUpManager.centerPopUp(param1);
                }
            }
            return;
        }// end function

        public function set selectUnit(param1:SelectUnit) : void
        {
            var _loc_2:* = this._1655921504selectUnit;
            if (_loc_2 !== param1)
            {
                this._1655921504selectUnit = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "selectUnit", _loc_2, param1));
            }
            return;
        }// end function

        public function get selectUnit() : SelectUnit
        {
            return this._1655921504selectUnit;
        }// end function

        public function get gameViewStack() : ViewStack
        {
            return this._1066951919gameViewStack;
        }// end function

        public function showLoadingWindow(param1:Boolean = true) : void
        {
            if (!loading)
            {
                loading = true;
                cursorManager.setCursor(LoadingCursor);
                loadingWindow.setStyle("modalTransparencyBlur", 0);
                loadingWindow.setStyle("modalTransparency", param1 ? (0) : (0.4));
                loadingWindow.setStyle("modalTransparencyColor", 16777215);
                loadingWindow.setStyle("modalTransparencyDuration", param1 ? (0) : (10));
                PopUpManager.addPopUp(loadingWindow, this, true);
                PopUpManager.centerPopUp(loadingWindow);
            }
            return;
        }// end function

        public function set initialForm(param1:InitialForm) : void
        {
            var _loc_2:* = this._1232967208initialForm;
            if (_loc_2 !== param1)
            {
                this._1232967208initialForm = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "initialForm", _loc_2, param1));
            }
            return;
        }// end function

        public function get home() : Home
        {
            return this._3208415home;
        }// end function

        public function set home(param1:Home) : void
        {
            var _loc_2:* = this._3208415home;
            if (_loc_2 !== param1)
            {
                this._3208415home = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "home", _loc_2, param1));
            }
            return;
        }// end function

        private function start() : void
        {
            init();
            facade.startup(this);
            return;
        }// end function

        public function set city(param1:City) : void
        {
            var _loc_2:* = this._3053931city;
            if (_loc_2 !== param1)
            {
                this._3053931city = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "city", _loc_2, param1));
            }
            return;
        }// end function

        private function sendEvent(param1:String) : void
        {
            this.dispatchEvent(new Event(param1));
            return;
        }// end function

        public function set tutMarkEquipment(param1:Image) : void
        {
            var _loc_2:* = this._1740372462tutMarkEquipment;
            if (_loc_2 !== param1)
            {
                this._1740372462tutMarkEquipment = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "tutMarkEquipment", _loc_2, param1));
            }
            return;
        }// end function

        public function get city() : City
        {
            return this._3053931city;
        }// end function

        public static function get buyPaymentItemsEnabled() : Boolean
        {
            return Viking._362049569buyPaymentItemsEnabled;
        }// end function

        public static function set buyPaymentItemsEnabled(param1:Boolean) : void
        {
            var _loc_3:IEventDispatcher = null;
            var _loc_2:* = Viking._362049569buyPaymentItemsEnabled;
            if (_loc_2 !== param1)
            {
                Viking._362049569buyPaymentItemsEnabled = param1;
                _loc_3 = Viking.staticEventDispatcher;
                if (_loc_3 != null)
                {
                    _loc_3.dispatchEvent(PropertyChangeEvent.createUpdateEvent(Viking, "buyPaymentItemsEnabled", _loc_2, param1));
                }
            }
            return;
        }// end function

        public static function get summonHeroEnabled() : Boolean
        {
            return Viking._794229178summonHeroEnabled;
        }// end function

        public static function set summonHeroEnabled(param1:Boolean) : void
        {
            var _loc_3:IEventDispatcher = null;
            var _loc_2:* = Viking._794229178summonHeroEnabled;
            if (_loc_2 !== param1)
            {
                Viking._794229178summonHeroEnabled = param1;
                _loc_3 = Viking.staticEventDispatcher;
                if (_loc_3 != null)
                {
                    _loc_3.dispatchEvent(PropertyChangeEvent.createUpdateEvent(Viking, "summonHeroEnabled", _loc_2, param1));
                }
            }
            return;
        }// end function

        public static function get staticEventDispatcher() : IEventDispatcher
        {
            return _staticBindingEventDispatcher;
        }// end function

    }
}
