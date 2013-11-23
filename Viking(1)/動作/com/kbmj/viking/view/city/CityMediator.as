package com.kbmj.viking.view.city
{
    import com.kbmj.viking.controller.city.*;
    import com.kbmj.viking.lib.*;
    import com.kbmj.viking.proxy.*;
    import com.kbmj.viking.proxy.city.*;
    import com.kbmj.viking.proxy.home.*;
    import com.kbmj.viking.view.*;
    import com.kbmj.viking.view.home.*;
    import com.kbmj.viking.vo.*;
    import flash.display.*;
    import flash.events.*;
    import mx.containers.*;
    import mx.managers.*;
    import org.puremvc.as3.interfaces.*;

    public class CityMediator extends BaseMediator
    {
        private var templeConfirmWindow:TempleConfirmWindow;
        private var guildMasterWindow:GuildMasterWindow;
        private var armiesListWindow:ArmiesListWindow;
        private var templeCheckWindow:TempleCheckWindow;
        private var paymentTypeSelectWindow:PaymentTypeSelectWindow;
        private var paymentCommodityWindow:PaymentCommodityWindow;
        private var silverDeal:SilverDeal;
        private var guildRemoveMemberWindow:GuildRemoveMemberWindow;
        private var guildManagementWindow:GuildManagementWindow;
        private var createGuildWindow:CreateGuildWindow;
        private var sellExhibitWindow:SellExhibitWindow;
        private var buyTradeGoodsSearchWindow:BuyTradeGoodsSearchWindow;
        private var deliveryFactionGiftWindow:DeliveryFactionGiftWindow;
        private var foodDeal:FoodDeal;
        private var goldDeal:GoldDeal;
        private var buyIndulgenceWindow:BuyIndulgenceWindow;
        private var searchGuildWindow:SearchGuildWindow;
        public static const GUILD_MASTER_RESIGN:String = "guildMasterResign";
        public static const RELOADED_MARKET_DATA:String = "reloadedMarketData";
        public static const PLAYER_LOADED_BY_MARKET:String = NAME + "/playerLoadedByMarket";
        public static const SELL_GOLD_LOADING:String = NAME + "/sellGoldLoading";
        public static const NAME:String = "CityMediator";
        public static const GUILD_MASTER_APPOINTMENT:String = "guildMasterAppointMent";
        public static const GUILD_ADMISSION_FINISH:String = "guildAdmissionFinish";
        public static const GUILD_QUIT_FINISH:String = "guildQuitFinish";
        public static const GUILD_DETAIL_CASEBY_MASTER:String = "guildDetailCaseByMaster";
        public static const PLAYER_LOADED_BY_TEMPLE:String = NAME + "/playerLoadedByTemple";
        public static const GUILD_ARMISE_LOAD:String = NAME + "/guildArmiseLoad";
        public static const GUILD_DETAIL_FOR_REMOVE_MEMBER:String = "guildDetailForRemoveMember";
        public static const VIEW_INDEX_ENTRANCE:int = 0;
        public static const MATERIAL_ID_SILVER:int = 5;
        public static const RELOAD_GUILD_DETAIL:String = NAME + "notes/reloadGuildDetail";
        public static const VIEW_INDEX_EDINBURGH:int = 4;
        public static const PLAYER_LOADED_BY_BAR:String = NAME + "/playerLoadedByBar";
        public static const APPLICATION_CANCEL_FINISH:String = "applicationCancelFinish";
        public static const GUILD_LEVEL_UP_FINISH:String = "guildLevelUpFinish";
        public static const PLAYER_LOADED_BY_CITY:String = NAME + "/playerLoadedByCity";
        public static const GUILD_QUIT:String = "guildQuit";
        public static const TRADE_GOODS_RELOADED:String = NAME + "notes/tradeGoodsReloaded";
        public static const BACK_HOME:String = NAME + "/backHome";
        public static const GUILD_LEVEL_UP:String = NAME + "/guildLevelUp";
        public static const VIEW_INDEX_MARKET:int = 1;
        public static const GUILD_CREATE_FINISH:String = "guildCreateFinish";
        public static const PLAYER_LOADED_BY_CITY_GUILD:String = NAME + "playerLoadedByCityGuild";
        public static const VIEW_INDEX_BAR:int = 3;
        public static const VIEW_INDEX_TEMPLE:int = 2;
        public static const GUILD_APPLICATION_CANCEL:String = "guildApplicationCancel";
        public static const SEARCH_PLAYER:String = NAME + "/searchPlayer";
        public static const GUILD_MEMBER_REMOVE:String = "guildMemberRemove";
        public static const NEXT_APPLICATION:String = NAME + "notes/nextApplication";
        public static const BUY_SOUL_CRYSTAL_LOADING:String = NAME + "/buySoulCrystalLoading";
        public static const PLAYER_RANK_UP:String = NAME + "/playerRankUp";
        private static const COMMON_EVENTS:Array = [Viking.CITY_ACTION_SHOW_MARKET, Viking.CITY_ACTION_SHOW_BAR, Viking.CITY_ACTION_SHOW_TEMPLE, Viking.CITY_ACTION_BACK_HOME];
        public static const GUILD_COMPULSION_RETURN_CHARACTER:String = "guildCompulsionReturnCharacter";
        public static const MATERIAL_ID_GOLD:int = 6;
        public static const PROGRESS_QUEST_LOADED:String = "BarProxy/progressQuestLoad";
        public static const LOAD_GUILD_DETAIL:String = NAME + "/loadGuildDetail";
        public static const SELL_SILVER_LOADING:String = NAME + "/sellSilverLoading";
        public static const NPC_LOAD_COMPLETE:String = NAME + "/npcLoadComplete";
        public static const SHOW_LOADING_WINDOW:String = "showLoadingWindow";

        public function CityMediator(param1:Viking)
        {
            createGuildWindow = new CreateGuildWindow();
            searchGuildWindow = new SearchGuildWindow();
            guildMasterWindow = new GuildMasterWindow();
            guildRemoveMemberWindow = new GuildRemoveMemberWindow();
            guildManagementWindow = new GuildManagementWindow();
            armiesListWindow = new ArmiesListWindow();
            silverDeal = new SilverDeal();
            goldDeal = new GoldDeal();
            foodDeal = new FoodDeal();
            buyIndulgenceWindow = new BuyIndulgenceWindow();
            templeConfirmWindow = new TempleConfirmWindow();
            templeCheckWindow = new TempleCheckWindow();
            buyTradeGoodsSearchWindow = new BuyTradeGoodsSearchWindow();
            sellExhibitWindow = new SellExhibitWindow();
            paymentCommodityWindow = new PaymentCommodityWindow();
            paymentTypeSelectWindow = new PaymentTypeSelectWindow();
            deliveryFactionGiftWindow = new DeliveryFactionGiftWindow();
            super(NAME, param1);
            return;
        }// end function

        private function initializeListeners() : void
        {
            initializeCommonListeners();
            app.city.addEventListener(Viking.CITY_ACTION_SILVER_DEAL, handleEvent);
            app.city.addEventListener(Viking.CITY_ACTION_GOLD_DEAL, handleEvent);
            app.city.addEventListener(Viking.CITY_ACTION_SHOW_BUY_GOODS, handleEvent);
            app.city.addEventListener(Viking.CITY_ACTION_SHOW_SELL_GOODS, handleEvent);
            app.city.market.addEventListener(Viking.CITY_ACTION_FOOD_DEAL, handleEvent);
            app.city.market.addEventListener(Market.GOODS_SELL, marketEvent);
            app.city.market.addEventListener(Market.GOODS_BUY, marketEvent);
            app.city.market.addEventListener(Market.EXHIBIT_CANCEL, marketEvent);
            app.city.market.addEventListener(Market.SEARCH_GOODS, marketEvent);
            app.city.market.addEventListener(Market.INSUFFICIENCY_MONEY, marketEvent);
            app.city.market.buyTradeGoodsWindow.addEventListener(BuyTradeGoodsWindow.LOAD_TRADE_GOODS_WITH_PAGE, marketEvent);
            app.city.addEventListener(Viking.CITY_ACTION_CREATE_GUILD, handleEvent);
            app.city.addEventListener(Viking.CITY_ACTION_SEARCH_GUILD, handleEvent);
            app.city.addEventListener(Viking.CITY_ACTION_BUY_INDULGENCE, handleEvent);
            app.city.addEventListener(Viking.CITY_ACTION_QUIT_GUILD, handleEvent);
            app.city.addEventListener(Viking.CITY_ACTION_MANAGE_GUILD, handleEvent);
            app.city.addEventListener(Viking.CITY_ACTION_APPLICATION_CANCEL, handleEvent);
            app.city.addEventListener(Bar.BAR_ACCEPT_QUEST, barEvent);
            app.city.addEventListener(Bar.BAR_CONFIRM_QUEST, barEvent);
            app.city.addEventListener(Bar.BAR_CANCEL_QUEST, barEvent);
            app.city.addEventListener(Bar.BAR_QUEST_CLEAR, barEvent);
            app.city.bar.addEventListener(Bar.CHANGE_CHARACTER_FINISH, barEvent);
            app.city.bar.addEventListener(Bar.QUEST_ACCEPT_CANCEL, barEvent);
            app.city.bar.addEventListener(Bar.QUEST_ACCEPT, barEvent);
            app.city.addEventListener(Bar.PLAYER_RANK_UP, barEvent);
            app.city.addEventListener(Viking.CITY_ACTION_SHOW_PAYMENT_COMMODITY_WINDOW, handleEvent);
            app.city.addEventListener(Viking.CITY_ACTION_DELIVERY_FACTION_GIFT, handleEvent);
            guildManagementWindow.addEventListener(GuildManagementWindow.GUILD_LEVEL_UP, templeEvent);
            app.city.questAcceptWindow.addEventListener(QuestAcceptWindow.QUEST_ACCEPT_FINISH, barEvent);
            app.city.questAcceptWindow.addEventListener(QuestAcceptWindow.CHANGE_CHARACTER, barEvent);
            app.city.questAcceptWindow.addEventListener(QuestAcceptWindow.ACCEPT_CANCEL_INTO_MARIA, barEvent);
            app.city.questAcceptWindow.addEventListener(QuestAcceptWindow.ACCEPT_INTO_MARIA, barEvent);
            app.city.questAcceptWindow.addEventListener(QuestAcceptWindow.BUTTON_ENABLE, barEvent);
            app.city.questAcceptWindow.addEventListener(QuestAcceptWindow.REMOVE_SWF, barEvent);
            app.city.questConfirmWindow.addEventListener(QuestConfirmWindow.REMOVE_SWF, barEvent);
            app.city.questConfirmWindow.addEventListener(QuestConfirmWindow.QUEST_DECLINE_FINISH, barEvent);
            app.city.questConfirmWindow.addEventListener(QuestConfirmWindow.QUEST_COMPLETE_FINISH, barEvent);
            app.city.questConfirmWindow.addEventListener(QuestConfirmWindow.QUEST_CANCEL_FINISH, barEvent);
            app.city.questConfirmWindow.addEventListener(QuestConfirmWindow.BUTTON_ENABLE, barEvent);
            createGuildWindow.addEventListener(CreateGuildWindow.CREATE_GUILD, templeEvent);
            createGuildWindow.addEventListener(CreateGuildWindow.CHANGE_GUILD_INFO, templeEvent);
            createGuildWindow.addEventListener(CreateGuildWindow.CLOSE_CREATE_GUILD, templeEvent);
            searchGuildWindow.addEventListener(SearchGuildWindow.ADMISSION_GUILD, templeEvent);
            searchGuildWindow.addEventListener("detailGuilds", templeEvent);
            searchGuildWindow.addEventListener(SearchGuildWindow.CLOSE_SEARCH_GUILD_WINDOW, templeEvent);
            searchGuildWindow.addEventListener(SearchGuildWindow.SEARCH_PLAYER, templeEvent);
            templeCheckWindow.addEventListener("guildQuit", templeEvent);
            templeCheckWindow.addEventListener(GUILD_APPLICATION_CANCEL, templeEvent);
            templeCheckWindow.addEventListener(GUILD_MASTER_RESIGN, templeEvent);
            templeCheckWindow.addEventListener(GUILD_MASTER_APPOINTMENT, templeEvent);
            templeCheckWindow.addEventListener(GUILD_MEMBER_REMOVE, templeEvent);
            templeCheckWindow.addEventListener("guildCompulsionReturnCharacter", templeEvent);
            templeCheckWindow.addEventListener(TempleCheckWindow.CLOSE_CHECK_WINDOW, templeEvent);
            templeConfirmWindow.addEventListener(GUILD_CREATE_FINISH, templeEvent);
            templeConfirmWindow.addEventListener(GUILD_LEVEL_UP_FINISH, templeEvent);
            templeConfirmWindow.addEventListener("guildQuitFinish", templeEvent);
            templeConfirmWindow.addEventListener(GUILD_ADMISSION_FINISH, templeEvent);
            templeConfirmWindow.addEventListener(APPLICATION_CANCEL_FINISH, templeEvent);
            guildManagementWindow.addEventListener(Viking.CITY_ACTION_APPOINT_GUILDMASTER, handleEvent);
            guildManagementWindow.addEventListener(Viking.CITY_ACTION_SHOW_REMOVE_MEMBER_WINDOW, handleEvent);
            guildManagementWindow.addEventListener(Viking.CITY_ACTION_QUIT_GUILD, handleEvent);
            guildManagementWindow.addEventListener(Viking.CITY_ACTION_QUIT_GUILD, handleEvent);
            guildManagementWindow.addEventListener(Viking.CITY_ACTION_CHANGE_GUILD_INFORMATION, handleEvent);
            guildManagementWindow.addEventListener(Viking.CITY_ACTION_GUILD_ARMYES_BACK, handleEvent);
            guildMasterWindow.addEventListener(GuildMasterWindow.APPOINTMENT_MASTER, templeEvent);
            guildMasterWindow.addEventListener(GuildMasterWindow.RESIGN_MASTER, templeEvent);
            guildRemoveMemberWindow.addEventListener(GuildRemoveMemberWindow.REMOVE_MEMBER, templeEvent);
            guildRemoveMemberWindow.addEventListener(Viking.CITY_ACTION_REMOVE_GUILD_MEMBER, handlePopupEvent);
            guildManagementWindow.addEventListener(GuildManagementWindow.CLOSE_GUILD_MANAGEMENT_WINDOW, handleEvent);
            paymentCommodityWindow.addEventListener(PaymentCommodityWindow.BUY_PAYMENT_COMMODITY, handlePopupEvent);
            paymentTypeSelectWindow.addEventListener(PaymentTypeSelectWindow.SELECT_PAYMENT_TYPE, handlePopupEvent);
            deliveryFactionGiftWindow.addEventListener(DeliveryFactionGiftWindow.DELIVERY, handlePopupEvent);
            armiesListWindow.addEventListener(ArmiesListWindow.SEARCH_UNITS, templeEvent);
            buyIndulgenceWindow.addEventListener(BuyIndulgenceWindow.BUY_INDULGENCE, templeEvent);
            buyIndulgenceWindow.addEventListener(BuyIndulgenceWindow.CLOSE_BUY_INDULGENCE, templeEvent);
            silverDeal.addEventListener(SilverDeal.SELL_SILVER, marketEvent);
            silverDeal.addEventListener(SilverDeal.CLOSE_SILVER_DEAL, marketEvent);
            goldDeal.addEventListener(GoldDeal.SELL_PURE_GOLD, marketEvent);
            goldDeal.addEventListener(GoldDeal.CLOSE_GOLD_DEAL, marketEvent);
            foodDeal.addEventListener(FoodDeal.BUY_FOOD, marketEvent);
            app.city.market.buyTradeGoodsSearchWindow.addEventListener(BuyTradeGoodsSearchWindow.CLOSE_SEARCH_GOODS, marketEvent);
            app.city.market.sellExhibitWindow.addEventListener(SellExhibitWindow.CLOSE_GOODS_EXHIBIT, marketEvent);
            return;
        }// end function

        private function getSilver() : int
        {
            var _loc_1:* = CityProxy(facade.retrieveProxy(CityProxy.NAME));
            var _loc_2:* = _loc_1.getHomeMaterialById(MATERIAL_ID_SILVER);
            return _loc_2.quantity;
        }// end function

        private function handlePopupEvent(event:PopupEvent) : void
        {
            var _loc_3:MarketProxy = null;
            var _loc_4:MasterProxy = null;
            var _loc_5:PlayerProxy = null;
            var _loc_2:* = GuildProxy(facade.retrieveProxy(GuildProxy.NAME));
            switch(event.type)
            {
                case Viking.CITY_ACTION_REMOVE_GUILD_MEMBER:
                {
                    app.showLoadingWindow();
                    _loc_2.dismissGuildMember(int(event.param));
                    break;
                }
                case PaymentCommodityWindow.BUY_PAYMENT_COMMODITY:
                {
                    app.showLoadingWindow();
                    _loc_3 = MarketProxy(facade.retrieveProxy(MarketProxy.NAME));
                    _loc_3.buyPaymentCommodity(event.param.master_id, event.param.type);
                    break;
                }
                case PaymentTypeSelectWindow.SELECT_PAYMENT_TYPE:
                {
                    _loc_4 = MasterProxy(facade.retrieveProxy(MasterProxy.NAME));
                    _loc_5 = PlayerProxy(facade.retrieveProxy(PlayerProxy.NAME));
                    app.city.popupWindow(paymentCommodityWindow, false);
                    paymentCommodityWindow.setCommodities(_loc_4.getMasterAsArray(MasterProxy.PAYMENT_COMMODITY_MASTER), int(event.param), _loc_5.playerVO);
                    break;
                }
                case DeliveryFactionGiftWindow.DELIVERY:
                {
                    app.showLoadingWindow();
                    _loc_5 = PlayerProxy(facade.retrieveProxy(PlayerProxy.NAME));
                    _loc_5.deliveryFactionGift(int(event.param));
                    _loc_2.getGuildDetail(_loc_5.playerVO.guild.id);
                    break;
                }
                default:
                {
                    break;
                }
            }
            return;
        }// end function

        override public function onRegister() : void
        {
            initializeListeners();
            return;
        }// end function

        private function setPlayerData() : void
        {
            var _loc_1:* = PlayerProxy(facade.retrieveProxy(PlayerProxy.NAME));
            var _loc_2:* = GuildProxy(facade.retrieveProxy(GuildProxy.NAME));
            app.city.playerVO = _loc_1.playerVO;
            app.city.guildDetailVO = _loc_2.guildDetail;
            app.city.changeGuildMenu();
            return;
        }// end function

        private function windowAddSwf(param1, param2:Function, param3:String = "purpose_window", param4:int = 0, param5:int = 0) : void
        {
            var _loc_6:* = AnimationProxy(facade.retrieveProxy(AnimationProxy.NAME));
            AnimationProxy(facade.retrieveProxy(AnimationProxy.NAME)).generalAnimationLoaded("window", "city", param3, param1, param4, param5);
            _loc_6.generalLoaders["window"]["city"].contentLoaderInfo.addEventListener(Event.COMPLETE, param2);
            return;
        }// end function

        private function getFactionGift(param1:int) : int
        {
            var _loc_2:Object = {2:514, 3:515, 4:516, 5:517};
            var _loc_3:* = _loc_2[param1];
            var _loc_4:* = CityProxy(facade.retrieveProxy(CityProxy.NAME));
            var _loc_5:* = CityProxy(facade.retrieveProxy(CityProxy.NAME)).getHomeMaterialById(_loc_3);
            return CityProxy(facade.retrieveProxy(CityProxy.NAME)).getHomeMaterialById(_loc_3).quantity;
        }// end function

        private function marketEvent(event:Event) : void
        {
            var _loc_5:Object = null;
            var _loc_6:AlertWindow = null;
            var _loc_7:int = 0;
            var _loc_2:* = MarketProxy(facade.retrieveProxy(MarketProxy.NAME));
            var _loc_3:* = SkillProxy(facade.retrieveProxy(SkillProxy.NAME));
            var _loc_4:* = AnimationProxy(facade.retrieveProxy(AnimationProxy.NAME));
            switch(event.type)
            {
                case Market.GOODS_SELL:
                {
                    _loc_5 = app.city.market.sellData;
                    _loc_2.sellTradeGoods(_loc_5, app.city.market.sellPrice, app.city.market.sellMaterialQuantity);
                    break;
                }
                case Market.GOODS_BUY:
                {
                    _loc_2.buyTradeGoods(app.city.market.buyData.commodityId);
                    break;
                }
                case Market.EXHIBIT_CANCEL:
                {
                    _loc_2.exhibitCancel(app.city.market.cancelData.commodityId);
                    break;
                }
                case Market.SEARCH_GOODS:
                {
                    _loc_2.getTradeGoods(1, app.city.market.searchCode);
                    break;
                }
                case SilverDeal.SELL_SILVER:
                {
                    _loc_2.sellSilver(silverDeal.quantity);
                    break;
                }
                case SilverDeal.CLOSE_SILVER_DEAL:
                {
                    removeChildWindowSWF(silverDeal.windowLayer, "window", "city", "silver");
                    break;
                }
                case GoldDeal.SELL_PURE_GOLD:
                {
                    _loc_2.sellGold(goldDeal.quantity);
                    break;
                }
                case GoldDeal.CLOSE_GOLD_DEAL:
                {
                    removeChildWindowSWF(goldDeal.windowLayer, "window", "city", "gold");
                    break;
                }
                case FoodDeal.BUY_FOOD:
                {
                    _loc_2.buyFood(foodDeal.quantity);
                    break;
                }
                case BuyTradeGoodsSearchWindow.CLOSE_SEARCH_GOODS:
                {
                    removeChildWindowSWF(app.city.market.buyTradeGoodsSearchWindow.windowLayer, "window", "city", "buyTradeGoodsSearchWindow");
                    break;
                }
                case SellExhibitWindow.CLOSE_GOODS_EXHIBIT:
                {
                    removeChildWindowSWF(app.city.market.sellExhibitWindow.windowLayer, "window", "city", "sellExhibitWindow");
                    break;
                }
                case Market.INSUFFICIENCY_MONEY:
                {
                    _loc_6 = AlertWindow.show(Utils.i18n("cityMediatorShortageMoney"));
                    app.city.popupWindow(_loc_6, false);
                    break;
                }
                case BuyTradeGoodsWindow.LOAD_TRADE_GOODS_WITH_PAGE:
                {
                    app.showLoadingWindow();
                    _loc_7 = PopupEvent(event).param.page;
                    _loc_2.getTradeGoods(_loc_7, app.city.market.searchCode, TRADE_GOODS_RELOADED);
                    break;
                }
                default:
                {
                    break;
                }
            }
            return;
        }// end function

        private function barEvent(event:Event) : void
        {
            var _loc_4:AlertWindow = null;
            var _loc_2:* = BarProxy(facade.retrieveProxy(BarProxy.NAME));
            var _loc_3:* = PlayerProxy(facade.retrieveProxy(PlayerProxy.NAME));
            trace(event.type);
            switch(event.type)
            {
                case Bar.BAR_ACCEPT_QUEST:
                {
                    app.city.questAcceptWindow.playerRank = _loc_3.playerVO.playerRankId;
                    app.city.questAcceptWindow.factionId = _loc_3.playerVO.factionId;
                    app.city.questAcceptWindow.setQuest(_loc_2.questList, _loc_2.completeQuests);
                    app.city.questAcceptWindow.visible = true;
                    app.city.questAcceptWindow.windowStage.visible = false;
                    app.city.bar.onDisabled(false);
                    app.city.questAcceptWindow.windowStage.visible = true;
                    break;
                }
                case Bar.BAR_CONFIRM_QUEST:
                {
                    app.city.questConfirmWindow.factionId = _loc_3.playerVO.factionId;
                    app.city.questConfirmWindow.init("questConfirm", _loc_2.currentQuestVO);
                    app.city.questConfirmWindow.visible = true;
                    app.city.questConfirmWindow.confirmCanvas.visible = false;
                    app.city.bar.onDisabled(false);
                    app.city.questConfirmWindow.confirmCanvas.visible = true;
                    break;
                }
                case Bar.BAR_CANCEL_QUEST:
                {
                    app.city.questConfirmWindow.factionId = _loc_3.playerVO.factionId;
                    app.city.questConfirmWindow.init("questDecline", _loc_2.currentQuestVO);
                    app.city.questConfirmWindow.visible = true;
                    app.city.questConfirmWindow.confirmCanvas.visible = false;
                    app.city.bar.onDisabled(false);
                    app.city.questConfirmWindow.confirmCanvas.visible = true;
                    break;
                }
                case Bar.BAR_QUEST_CLEAR:
                {
                    app.city.questConfirmWindow.factionId = _loc_3.playerVO.factionId;
                    app.city.questConfirmWindow.init("questClear", _loc_2.currentQuestVO);
                    app.city.questConfirmWindow.visible = true;
                    app.city.questConfirmWindow.confirmCanvas.visible = false;
                    app.city.bar.onDisabled(false);
                    app.city.questConfirmWindow.confirmCanvas.visible = true;
                    break;
                }
                case Bar.CHANGE_CHARACTER_FINISH:
                {
                    app.city.questAcceptWindow.questDetail();
                    break;
                }
                case Bar.QUEST_ACCEPT_CANCEL:
                {
                    app.city.questAcceptWindow.onVisible();
                    app.city.bar.onDisabled(false);
                    break;
                }
                case Bar.QUEST_ACCEPT:
                {
                    app.city.questAcceptWindow.onAcceptConfirm(_loc_3.playerVO.factionId);
                    break;
                }
                case QuestAcceptWindow.CHANGE_CHARACTER:
                {
                    app.city.bar.onLeave(Bar.CHANGE_CHARACTER_FINISH);
                    break;
                }
                case QuestAcceptWindow.ACCEPT_INTO_MARIA:
                {
                    app.city.bar.onLeave(Bar.QUEST_ACCEPT);
                    break;
                }
                case QuestAcceptWindow.ACCEPT_CANCEL_INTO_MARIA:
                {
                    app.city.bar.onLeave(Bar.QUEST_ACCEPT_CANCEL);
                    break;
                }
                case QuestAcceptWindow.QUEST_ACCEPT_FINISH:
                {
                    app.showLoadingWindow();
                    _loc_2.questAccept(app.city.questAcceptWindow.questData.questId);
                    app.city.bar.onDisabled(true);
                    break;
                }
                case QuestConfirmWindow.QUEST_DECLINE_FINISH:
                {
                    _loc_2.questAbort();
                    app.city.bar.onDisabled(true);
                    break;
                }
                case QuestConfirmWindow.QUEST_COMPLETE_FINISH:
                {
                    app.showLoadingWindow();
                    _loc_2.questComplete();
                    app.city.bar.onDisabled(true);
                    break;
                }
                case QuestConfirmWindow.QUEST_CANCEL_FINISH:
                {
                    _loc_4 = AlertWindow.show(Utils.i18n("cityMediatorQuestCancel"));
                    app.city.popupWindow(_loc_4, false);
                    break;
                }
                case QuestAcceptWindow.BUTTON_ENABLE:
                case QuestConfirmWindow.BUTTON_ENABLE:
                {
                    app.city.bar.onDisabled(true);
                    break;
                }
                case QuestAcceptWindow.REMOVE_SWF:
                {
                    removeChildWindowSWF(app.city.questAcceptWindow.windowLayer, "window", "city", "bar_accept_quest");
                    break;
                }
                case QuestConfirmWindow.REMOVE_SWF:
                {
                    removeChildWindowSWF(app.city.questConfirmWindow.windowLayer, "window", "city", "bar_confirm_quest");
                    break;
                }
                case Bar.PLAYER_RANK_UP:
                {
                    app.showLoadingWindow();
                    sendNotification(PLAYER_RANK_UP);
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
            var alertWindow:AlertWindow;
            var error:Object;
            var guilds:Array;
            var pages:Object;
            var homeProxy:HomeProxy;
            var player:Object;
            var alertText:String;
            var note:* = param1;
            var playerProxy:* = PlayerProxy(facade.retrieveProxy(PlayerProxy.NAME));
            var guildProxy:* = GuildProxy(facade.retrieveProxy(GuildProxy.NAME));
            var cityProxy:* = CityProxy(facade.retrieveProxy(CityProxy.NAME));
            var barProxy:* = BarProxy(facade.retrieveProxy(BarProxy.NAME));
            var marketProxy:* = MarketProxy(facade.retrieveProxy(MarketProxy.NAME));
            var configProxy:* = ConfigProxy(facade.retrieveProxy(ConfigProxy.NAME));
            switch(note.getName())
            {
                case StartCityCommand.SHOW_CITY:
                {
                    app.city.setLocation(cityProxy.location, cityProxy.playerFactionId, configProxy.configVO);
                    app.gameViewStack.selectedIndex = Viking.VIEW_INDEX_CITY;
                    playerProxy.loadPlayer(PLAYER_LOADED_BY_CITY);
                    app.city.changeFaction("faction_0" + playerProxy.playerVO.factionId);
                    app.city.playerRank = playerProxy.playerVO.playerRankId;
                    app.city.playerExp = playerProxy.playerVO.exp;
                    app.city.nextRankExp = playerProxy.playerVO.nextRankExp;
                    app.city.setButtonEnabled(barProxy.questStatus);
                    cityProxy.loadCity();
                    break;
                }
                case StartCityCommand.SHOW_LOADING_WINDOW:
                {
                    app.showLoadingWindow();
                    break;
                }
                case PLAYER_LOADED_BY_CITY:
                {
                    if (playerProxy.playerVO.guild)
                    {
                        guildProxy.getGuildDetail(playerProxy.playerVO.guild.id);
                    }
                    else
                    {
                        setPlayerData();
                    }
                    if (!app.city.playerStatus.playerVO)
                    {
                        app.city.playerStatus.playerVO = playerProxy.playerVO;
                        app.city.productionInfoWindow.playerVO = playerProxy.playerVO;
                    }
                    app.city.playerVO = playerProxy.playerVO;
                    app.city.silver = getSilver();
                    app.city.pureGold = getPureGold();
                    app.city.guildDetailVO = guildProxy.guildDetail;
                    guildManagementWindow.playerVO = playerProxy.playerVO;
                    guildManagementWindow.guildDetailVO = guildProxy.guildDetail;
                    playerProxy.loadGuildApplication();
                    app.removeLoadingWindow();
                    break;
                }
                case PLAYER_LOADED_BY_CITY_GUILD:
                {
                    setPlayerData();
                    break;
                }
                case PlayerProxy.GUILD_APPLICATION_LOADED:
                {
                    setPlayerData();
                    break;
                }
                case PlayerProxy.PLAYER_RANK:
                {
                    app.city.playerRank = playerProxy.playerVO.playerRankId;
                    app.city.playerExp = playerProxy.playerVO.exp;
                    app.city.nextRankExp = playerProxy.playerVO.nextRankExp;
                    break;
                }
                case GuildProxy.CREATE_GUILD_ERROR:
                case GuildProxy.GUILD_INFOMATION_CHANGE_ERROR:
                {
                    app.removeLoadingWindow();
                    createGuildWindow.errorMessage = this.Object(note.getBody()).head.error_message;
                    break;
                }
                case GuildProxy.SEARCH_GUILD_ERROR:
                case GuildProxy.ADMISSION_GUILD_ERROR:
                case GuildProxy.GUILD_DETAIL_ERROR:
                case GuildProxy.GUILD_ASSIGN_ERROR:
                case GuildProxy.REJECT_APPLICATION_ERROR:
                case GuildProxy.GUILD_QUIT_ERROR:
                case GuildProxy.DISMISS_GUILD_MEMBER_ERROR:
                case TempleProxy.BUY_INDULGENCE_ERROR:
                case MarketProxy.TRADE_GOODS_ERROR:
                case GuildProxy.GUILD_BACK_UNIT_ERROR:
                case PlayerProxy.PLAYER_RANK_UP_ERROR:
                case PlayerProxy.DELIVERY_FACTION_GIFT_ERROR:
                case BarProxy.QUEST_ACCEPT_ERROR:
                {
                    app.removeLoadingWindow();
                    error = note.getBody() as Object;
                    alertWindow = AlertWindow.show(error.head.error_message);
                    app.city.popupWindow(alertWindow, false);
                    break;
                }
                case GuildProxy.CREATE_GUILD:
                {
                    createGuildWindow.close();
                    app.removeLoadingWindow();
                    playerProxy.loadPlayer(PLAYER_LOADED_BY_CITY);
                    app.city.temple.popupWindow(templeConfirmWindow);
                    templeConfirmWindow.eventName = GUILD_CREATE_FINISH;
                    templeConfirmWindow.setGuildName(createGuildWindow.createGuildName, TempleConfirmWindow.INDEX_GUILD_CREATE_FINISH);
                    break;
                }
                case GuildProxy.GUILD_INFOMATION_CHANGE:
                {
                    createGuildWindow.close();
                    app.removeLoadingWindow();
                    alertWindow = AlertWindow.show(Utils.i18n("cityMediatorUpdateGuildInfo"));
                    app.city.popupWindow(alertWindow, false);
                    guildProxy.getGuildDetail(playerProxy.playerVO.guild.id);
                    break;
                }
                case GuildProxy.SEARCH_GUILD:
                {
                    guilds = note.getBody() as Array;
                    searchGuildWindow.init(guilds, playerProxy.playerVO);
                    app.city.temple.popupWindow(searchGuildWindow);
                    searchGuildWindow.searchGuildCanvas.visible = false;
                    windowAddSwfCommon(searchGuildWindow.windowLayer, function (event:Event) : void
            {
                var e:* = event;
                var animationProxy:* = AnimationProxy(facade.retrieveProxy(AnimationProxy.NAME));
                animationProxy.generalLoaders["window"]["common"].content.addEventListener("ENLARGE_END", function (event:Event) : void
                {
                    searchGuildWindow.searchGuildCanvas.visible = true;
                    return;
                }// end function
                );
                return;
            }// end function
            , "left_560x460");
                    break;
                }
                case GuildProxy.ADMISSION_GUILD:
                {
                    templeConfirmWindow.eventName = GUILD_ADMISSION_FINISH;
                    templeConfirmWindow.setGuildName(searchGuildWindow.admissionGuildName, TempleConfirmWindow.INDEX_GUILD_ADMISSION_FINISH);
                    app.city.temple.popupWindow(templeConfirmWindow);
                    playerProxy.loadPlayer(PLAYER_LOADED_BY_CITY);
                    break;
                }
                case RELOAD_GUILD_DETAIL:
                case GuildApprovalWindow.RELOAD_GUILD_DETAIL:
                {
                    setGuildDetail(note.getBody());
                    sendNotification(NEXT_APPLICATION);
                    break;
                }
                case GuildProxy.GUILD_DETAIL:
                {
                    setGuildDetail(note.getBody());
                    break;
                }
                case GuildProxy.GUILD_DETAIL_CASEBY_MASTER:
                {
                    guildMasterWindow.init(playerProxy.playerVO, note.getBody().guild);
                    app.city.temple.popupWindow(guildMasterWindow);
                    break;
                }
                case GUILD_DETAIL_FOR_REMOVE_MEMBER:
                {
                    guildRemoveMemberWindow.init(playerProxy.playerVO, note.getBody().guild);
                    app.city.temple.popupWindow(guildRemoveMemberWindow);
                    break;
                }
                case GuildProxy.GUILD_MASTER_RESIGN:
                {
                    templeConfirmWindow.setGuildName(playerProxy.playerVO.guild.name, TempleConfirmWindow.INDEX_GUILD_MASTER_RESIGN);
                    app.city.temple.popupWindow(templeConfirmWindow);
                    guildMasterWindow.closeWindow();
                    guildManagementWindow.closeWindow();
                    playerProxy.loadPlayer(PLAYER_LOADED_BY_CITY);
                    break;
                }
                case GuildProxy.GUILD_ASSIGN:
                {
                    app.removeLoadingWindow();
                    alertWindow = AlertWindow.show(Utils.i18n("cityMediatorNominationGuildMaster"));
                    app.city.popupWindow(alertWindow, false);
                    guildMasterWindow.closeWindow();
                    break;
                }
                case GuildProxy.GUILD_QUIT:
                {
                    app.city.temple.popupWindow(templeConfirmWindow);
                    playerProxy.loadPlayer(PLAYER_LOADED_BY_CITY);
                    break;
                }
                case GuildProxy.APPLICATION_CANCEL:
                {
                    templeConfirmWindow.eventName = APPLICATION_CANCEL_FINISH;
                    templeConfirmWindow.setGuildName(playerProxy.playerVO.application.guildName, TempleConfirmWindow.INDEX_APPLICATION_CANCEL_FINISH);
                    app.city.temple.popupWindow(templeConfirmWindow);
                    playerProxy.loadPlayer(PLAYER_LOADED_BY_CITY);
                    break;
                }
                case GuildProxy.DISMISS_GUILD_MEMBER_COMPLETE:
                {
                    app.removeLoadingWindow();
                    alertWindow = AlertWindow.show(Utils.i18n("cityMediatorExpulsion"));
                    app.city.popupWindow(alertWindow, false);
                    guildRemoveMemberWindow.closeWindow();
                    break;
                }
                case TempleProxy.BUY_INDULGENCE:
                {
                    playerProxy.loadPlayer(PLAYER_LOADED_BY_TEMPLE);
                    break;
                }
                case MarketProxy.SELL_SILVER:
                {
                    PopUpManager.removePopUp(silverDeal);
                    app.showLoadingWindow();
                    sendNotification(SELL_SILVER_LOADING);
                    break;
                }
                case MarketProxy.SELL_GOLD:
                {
                    PopUpManager.removePopUp(goldDeal);
                    app.showLoadingWindow();
                    sendNotification(SELL_GOLD_LOADING);
                    break;
                }
                case MarketProxy.SELL_SILVER_ERROR:
                {
                    error = note.getBody() as Object;
                    alertWindow = AlertWindow.show(error.head.error_message);
                    app.city.popupWindow(alertWindow, false);
                    break;
                }
                case MarketProxy.SELL_GOLD_ERROR:
                {
                    error = note.getBody() as Object;
                    alertWindow = AlertWindow.show(error.head.error_message);
                    app.city.popupWindow(alertWindow, false);
                    break;
                }
                case MarketProxy.BUY_FOOD:
                {
                    playerProxy.loadPlayer(PLAYER_LOADED_BY_MARKET);
                    PopUpManager.removePopUp(foodDeal);
                    break;
                }
                case MarketProxy.BUY_FOOD_ERROR:
                {
                    error = note.getBody() as Object;
                    alertWindow = AlertWindow.show(error.head.error_message);
                    app.city.popupWindow(alertWindow, false);
                    break;
                }
                case MarketProxy.MY_COMMODITY_LOAD_COMPLETE:
                {
                    app.city.market.showSellTradeGoodsWindow(cityProxy.cityResource, playerProxy.playerVO.gold, marketProxy.myCommodities, playerProxy.playerVO.hasLeyLine(12));
                    app.city.market.sellExhibitWindow.exhibitCanvas.visible = false;
                    windowAddSwfCommon(app.city.market.sellExhibitWindow.windowLayer, function (event:Event) : void
            {
                var e:* = event;
                var animationProxy:* = AnimationProxy(facade.retrieveProxy(AnimationProxy.NAME));
                animationProxy.generalLoaders["window"]["common"].content.addEventListener("ENLARGE_END", function (event:Event) : void
                {
                    app.city.market.sellExhibitWindow.exhibitCanvas.visible = true;
                    return;
                }// end function
                );
                return;
            }// end function
            , "left_560x460");
                    break;
                }
                case MarketProxy.COMMODITY_SUMMARIES_LOADED:
                {
                    app.removeLoadingWindow();
                    app.city.market.commoditySummary = marketProxy.commoditySummary;
                    app.city.market.showBuyTradeGoodsSearchWindow(playerProxy.playerVO.gold);
                    app.city.market.buyTradeGoodsSearchWindow.goodsSearchCanvas.visible = false;
                    windowAddSwfCommon(app.city.market.buyTradeGoodsSearchWindow.windowLayer, function (event:Event) : void
            {
                var e:* = event;
                var animationProxy:* = AnimationProxy(facade.retrieveProxy(AnimationProxy.NAME));
                animationProxy.generalLoaders["window"]["common"].content.addEventListener("ENLARGE_END", function (event:Event) : void
                {
                    app.city.market.buyTradeGoodsSearchWindow.goodsSearchCanvas.visible = true;
                    return;
                }// end function
                );
                return;
            }// end function
            , "center_720x520");
                    break;
                }
                case MarketProxy.GET_TRADE_GOODS:
                {
                    pages = note.getBody().pages;
                    app.city.market.showBuyTradeGoodsWindow(marketProxy.searchCommodities, pages, playerProxy.playerVO.hasLeyLine(9));
                    break;
                }
                case TRADE_GOODS_RELOADED:
                {
                    pages = note.getBody().pages;
                    app.city.market.refreshBuyTradeGoodsWindow(marketProxy.searchCommodities, pages);
                    app.removeLoadingWindow();
                    break;
                }
                case MarketProxy.BUY_GOODS:
                {
                    playerProxy.loadPlayer(PLAYER_LOADED_BY_CITY);
                }
                case MarketProxy.BUY_TRADE_GOODS:
                {
                    alertWindow = AlertWindow.show(Utils.i18n("cityMediatorBuyComplete"));
                    app.city.popupWindow(alertWindow, false);
                    break;
                }
                case BarProxy.QUEST_LOADED:
                {
                    app.city.questAcceptWindow.setQuest(barProxy.questList, barProxy.completeQuests);
                    app.removeLoadingWindow();
                    break;
                }
                case BarProxy.QUEST_ACCEPT:
                {
                    barProxy.progressQuest(PROGRESS_QUEST_LOADED);
                    break;
                }
                case BarProxy.PROGRESS_QUEST_LOADED:
                {
                    app.city.setButtonEnabled(barProxy.questStatus);
                    app.removeLoadingWindow();
                    break;
                }
                case BarProxy.QUEST_ABORT:
                {
                    app.city.setButtonEnabled("Accept");
                    break;
                }
                case ReloadGoodsCommand.SHOW_LOADING_WINDOW:
                {
                    app.showLoadingWindow();
                    break;
                }
                case TradeGoodsCommand.SHOW_LOADING_WINDOW:
                {
                    app.showLoadingWindow();
                    break;
                }
                case SellSilverCommand.SELL_SILVER_COMPLETE:
                {
                    app.city.market.homeMaterialData = cityProxy.HomeMaterialData;
                    app.city.market.homeResource = cityProxy.cityResource;
                    app.removeLoadingWindow();
                    alertWindow = AlertWindow.show(Utils.i18n("cityMediatorBuySilverComplete", silverDeal.quantity, silverDeal.silverRate * silverDeal.quantity));
                    app.city.popupWindow(alertWindow, false);
                    app.city.silver = getSilver();
                    break;
                }
                case SellGoldCommand.SELL_GOLD_COMPLETE:
                {
                    app.city.market.homeMaterialData = cityProxy.HomeMaterialData;
                    app.city.market.homeResource = cityProxy.cityResource;
                    app.removeLoadingWindow();
                    alertWindow = AlertWindow.show(Utils.i18n("cityMediatorBuyGoldComplete", goldDeal.quantity, goldDeal.pureGoldRate * goldDeal.quantity));
                    app.city.popupWindow(alertWindow, false);
                    app.city.pureGold = getPureGold();
                    break;
                }
                case ReloadGoodsCommand.RELOADED_MARKET_DATA:
                {
                    app.city.market.homeMaterialData = cityProxy.HomeMaterialData;
                    app.city.market.homeResource = cityProxy.cityResource;
                    app.city.market.resetSellData(cityProxy.cityResource, marketProxy.myCommodities, playerProxy.playerVO.hasLeyLine(9));
                    app.removeLoadingWindow();
                    break;
                }
                case TradeGoodsCommand.RELOADED_MARKET_DATA:
                {
                    app.city.market.homeMaterialData = cityProxy.HomeMaterialData;
                    app.city.market.homeResource = cityProxy.cityResource;
                    app.city.market.resetSellData(cityProxy.cityResource, marketProxy.myCommodities, playerProxy.playerVO.hasLeyLine(9));
                    if (!marketProxy.masterDataSeted)
                    {
                        marketProxy.setTradeMasterData(app.city.market.buyTradeGoodsSearchWindow);
                    }
                    marketProxy.getTradeGoodsStock();
                    app.removeLoadingWindow();
                    break;
                }
                case QuestCompleteCommand.QUEST_COMPLETE_LOADED:
                {
                    app.city.setButtonEnabled("Accept");
                    break;
                }
                case NpcLoadCompleteCommand.START_BAR:
                {
                    app.city.setButtonEnabled(barProxy.questStatus);
                    app.city.cityViewStack.selectedIndex = VIEW_INDEX_BAR;
                    break;
                }
                case GuildArmiseLoadCommand.GuildBackUnitLoaded:
                {
                    armiesListWindow.setUnits(guildProxy.armiseUnit, guildProxy.guildDetail.players);
                    if (armiesListWindow.units.length == 0)
                    {
                        armiesListWindow.unitNon();
                    }
                    else
                    {
                        app.city.temple.popupWindow(armiesListWindow, false);
                    }
                    break;
                }
                case PlayerRankUpCommand.PLAYER_RANK_UP:
                {
                    playerProxy.loadPlayerRank(PlayerProxy.CHANGE_PLAYER_RANK_VIEW);
                    barProxy.completeQuest();
                    barProxy.loadQuest();
                    break;
                }
                case PlayerProxy.CHANGE_PLAYER_RANK_VIEW:
                {
                    app.city.playerRank = playerProxy.playerVO.playerRankId;
                    app.city.playerExp = playerProxy.playerVO.exp;
                    app.city.nextRankExp = playerProxy.playerVO.nextRankExp;
                    app.city.announcementWindow();
                    app.removeLoadingWindow();
                    break;
                }
                case GuildLevelUpCommand.GUILD_LEVEL_UP:
                {
                    trace("CityMediator:GuildLevelUpCommand.GUILD_LEVEL_UP");
                    app.city.temple.popupWindow(templeConfirmWindow);
                    templeConfirmWindow.eventName = GUILD_LEVEL_UP_FINISH;
                    templeConfirmWindow.setGuildName(playerProxy.playerVO.guild.name, TempleConfirmWindow.INDEX_GUILD_LEVEL_UP_FINISH);
                    app.city.guildDetailVO = guildProxy.guildDetail;
                    app.city.changeGuildMenu();
                    guildManagementWindow.guildDetailVO = guildProxy.guildDetail;
                    app.removeLoadingWindow();
                    break;
                }
                case GuildProxy.GUILD_BACK_UNIT:
                {
                    guildProxy.getGuildArmyUnits();
                    break;
                }
                case BuySoulCrystalCommand.BUY_SOUL_CRYSTAL_COMPLETE:
                {
                    app.city.market.homeMaterialData = cityProxy.HomeMaterialData;
                    app.city.market.homeResource = cityProxy.cityResource;
                    homeProxy = HomeProxy(facade.retrieveProxy(HomeProxy.NAME));
                    homeProxy.updatePower();
                    break;
                }
                case MarketProxy.BUY_PAYMENT_COMMODITY:
                {
                    app.removeLoadingWindow();
                    sendNotification(BUY_SOUL_CRYSTAL_LOADING);
                    alertWindow = AlertWindow.show(Utils.i18n("cityMediatorBuyCommodityComplete"));
                    app.city.popupWindow(alertWindow, false);
                    break;
                }
                case MarketProxy.BUY_PAYMENT_COMMODITY_ERROR:
                {
                    app.removeLoadingWindow();
                    error = note.getBody() as Object;
                    alertWindow = AlertWindow.show(error.head.error_message);
                    app.city.popupWindow(alertWindow, false);
                    break;
                }
                case PlayerProxy.SEARCH_PLAYER_COMPLETE:
                {
                    player = note.getBody() as Object;
                    if (player)
                    {
                        if (!player.guild)
                        {
                            player.guild = Utils.i18n("cityMediatorSearchPlayerNoGuild");
                        }
                        alertWindow = AlertWindow.show(Utils.i18n("guildMemberListPlayerName") + "：" + player.name + "\n" + Utils.i18n("generalGuild") + "：" + player.guild);
                        searchGuildWindow.popupWindow(alertWindow, false);
                    }
                    else
                    {
                        alertWindow = AlertWindow.show(Utils.i18n("cityMediatorSearchPlayerNotFound", searchGuildWindow.strSearch.text));
                        searchGuildWindow.popupWindow(alertWindow, false);
                    }
                    app.removeLoadingWindow();
                    break;
                }
                case PlayerProxy.SEARCH_PLAYER_ERROR:
                {
                    app.removeLoadingWindow();
                    error = note.getBody() as Object;
                    alertWindow = AlertWindow.show(error.head.error_message);
                    searchGuildWindow.popupWindow(alertWindow, false);
                    break;
                }
                case PlayerProxy.DELIVERY_FACTION_GIFT:
                {
                    app.removeLoadingWindow();
                    alertText = Utils.i18n("cityMediatorDeliverConfirm", note.getBody().delivery_prize);
                    if (note.getBody().faction_enemy_entity && note.getBody().faction_enemy_entity.faction_enemy_entity)
                    {
                        alertText = Utils.i18n("cityMediatorFactionEnemy", note.getBody().faction_enemy_entity.faction_enemy_entity.name);
                    }
                    sendNotification(HomeMediator.RELOAD_HOME_RESOURCE);
                    alertWindow = AlertWindow.show(alertText);
                    app.city.popupWindow(alertWindow, false);
                    break;
                }
                default:
                {
                    break;
                }
            }
            return;
        }// end function

        private function templeEvent(event:Event) : void
        {
            var _loc_2:* = GuildProxy(facade.retrieveProxy(GuildProxy.NAME));
            var _loc_3:* = TempleProxy(facade.retrieveProxy(TempleProxy.NAME));
            var _loc_4:* = PlayerProxy(facade.retrieveProxy(PlayerProxy.NAME));
            var _loc_5:* = AnimationProxy(facade.retrieveProxy(AnimationProxy.NAME));
            switch(event.type)
            {
                case CreateGuildWindow.CREATE_GUILD:
                {
                    app.showLoadingWindow();
                    _loc_2.createGuild(createGuildWindow.createGuildName, createGuildWindow.createGuildComment, createGuildWindow.createGuildFeatures);
                    break;
                }
                case GUILD_CREATE_FINISH:
                {
                    _loc_4.loadPlayer(PLAYER_LOADED_BY_CITY);
                    break;
                }
                case GUILD_LEVEL_UP_FINISH:
                {
                    break;
                }
                case SearchGuildWindow.ADMISSION_GUILD:
                {
                    app.showLoadingWindow();
                    _loc_2.admissionGuild(searchGuildWindow.selectGuildId, searchGuildWindow.admissionComment);
                    break;
                }
                case GUILD_ADMISSION_FINISH:
                {
                    break;
                }
                case GuildMasterWindow.RESIGN_MASTER:
                {
                    templeCheckWindow.eventName = GUILD_MASTER_RESIGN;
                    templeCheckWindow.setGuildName(_loc_4.playerVO.guild.name, TempleCheckWindow.INDEX_GUILD_MASTER_RESIGN);
                    app.city.temple.popupWindow(templeCheckWindow);
                    templeCheckWidnowAddSwf();
                    break;
                }
                case GUILD_MASTER_RESIGN:
                {
                    app.showLoadingWindow();
                    _loc_2.masterResign();
                    break;
                }
                case GuildMasterWindow.APPOINTMENT_MASTER:
                {
                    templeCheckWindow.eventName = GUILD_MASTER_APPOINTMENT;
                    templeCheckWindow.setGuildName(guildMasterWindow.appointmentPlayerName, TempleCheckWindow.INDEX_GUILD_MASTER_APPOINTMENT);
                    app.city.temple.popupWindow(templeCheckWindow);
                    templeCheckWidnowAddSwf();
                    break;
                }
                case GuildRemoveMemberWindow.REMOVE_MEMBER:
                {
                    templeCheckWindow.eventName = GUILD_MEMBER_REMOVE;
                    templeCheckWindow.setGuildName(guildRemoveMemberWindow.appointmentPlayerName, TempleCheckWindow.INDEX_GUILD_MEMBER_REMOVE);
                    app.city.temple.popupWindow(templeCheckWindow);
                    templeCheckWidnowAddSwf();
                    break;
                }
                case GUILD_MASTER_APPOINTMENT:
                {
                    app.showLoadingWindow();
                    _loc_2.assignGuild(guildMasterWindow.appointmentPlayerId, 2);
                    break;
                }
                case GUILD_MEMBER_REMOVE:
                {
                    app.showLoadingWindow();
                    _loc_2.dismissGuildMember(guildRemoveMemberWindow.appointmentPlayerId);
                    break;
                }
                case GUILD_APPLICATION_CANCEL:
                {
                    app.showLoadingWindow();
                    _loc_2.applicationCancel(_loc_4.playerVO.application.applicationId);
                    break;
                }
                case APPLICATION_CANCEL_FINISH:
                {
                    break;
                }
                case "detailGuilds":
                {
                    sendNotification(LOAD_GUILD_DETAIL, searchGuildWindow.selectGuildId);
                    break;
                }
                case TempleCheckWindow.GUILD_QUIT:
                {
                    templeConfirmWindow.eventName = GUILD_QUIT_FINISH;
                    templeConfirmWindow.setGuildName(_loc_4.playerVO.guild.name, TempleConfirmWindow.INDEX_GUILD_QUIT_FINISH);
                    app.showLoadingWindow();
                    _loc_2.guildQuit();
                    guildManagementWindow.closeWindow();
                    break;
                }
                case TempleConfirmWindow.GUILD_QUIT_FINISH:
                {
                    break;
                }
                case BuyIndulgenceWindow.BUY_INDULGENCE:
                {
                    _loc_3.buyIndulgence(buyIndulgenceWindow.quantity);
                    break;
                }
                case BuyIndulgenceWindow.CLOSE_BUY_INDULGENCE:
                {
                    removeChildWindowSWF(buyIndulgenceWindow.windowLayer, "window", "city", "buyIndulgence");
                    break;
                }
                case CreateGuildWindow.CHANGE_GUILD_INFO:
                {
                    app.showLoadingWindow();
                    _loc_2.changeGuildInfomation(createGuildWindow.createGuildComment, createGuildWindow.createGuildFeatures);
                    break;
                }
                case CreateGuildWindow.CLOSE_CREATE_GUILD:
                {
                    removeChildWindowSWF(createGuildWindow.windowLayer, "window", "city", "createGuild");
                    break;
                }
                case ArmiesListWindow.SEARCH_UNITS:
                {
                    templeCheckWindow.eventName = GUILD_COMPULSION_RETURN_CHARACTER;
                    templeCheckWindow.setGuildName(armiesListWindow.backUnitName, TempleCheckWindow.INDEX_GUILD_COMPULSION_RETURN_CHARACTER);
                    app.city.temple.popupWindow(templeCheckWindow);
                    templeCheckWidnowAddSwf();
                    break;
                }
                case GUILD_COMPULSION_RETURN_CHARACTER:
                {
                    _loc_2.guildBackUnit(armiesListWindow.unitID);
                    armiesListWindow.closeWindow();
                    break;
                }
                case SearchGuildWindow.CLOSE_SEARCH_GUILD_WINDOW:
                {
                    removeChildWindowSWF(searchGuildWindow.windowLayer, "window", "city", "searchGuild");
                    break;
                }
                case TempleCheckWindow.CLOSE_CHECK_WINDOW:
                {
                    removeChildWindowSWF(templeCheckWindow.windowLayer, "window", "city", "templeCheck");
                    break;
                }
                case GuildManagementWindow.GUILD_LEVEL_UP:
                {
                    trace("CityMediator:GuildManagementWindow.GUILD_LEVEL_UP");
                    app.showLoadingWindow();
                    sendNotification(GUILD_LEVEL_UP);
                    break;
                }
                case SearchGuildWindow.SEARCH_PLAYER:
                {
                    app.showLoadingWindow();
                    _loc_4.searchPlayer(searchGuildWindow.strSearch.text);
                    break;
                }
                default:
                {
                    break;
                }
            }
            return;
        }// end function

        private function handleEvent(event:Event) : void
        {
            var playerProxy:PlayerProxy;
            var animationProxy:AnimationProxy;
            var maxGiftQuantity:*;
            var e:* = event;
            var masterProxy:* = MasterProxy(facade.retrieveProxy(MasterProxy.NAME));
            playerProxy = PlayerProxy(facade.retrieveProxy(PlayerProxy.NAME));
            var guildProxy:* = GuildProxy(facade.retrieveProxy(GuildProxy.NAME));
            var cityProxy:* = CityProxy(facade.retrieveProxy(CityProxy.NAME));
            var marketProxy:* = MarketProxy(facade.retrieveProxy(MarketProxy.NAME));
            var templeProxy:* = TempleProxy(facade.retrieveProxy(TempleProxy.NAME));
            var barProxy:* = BarProxy(facade.retrieveProxy(BarProxy.NAME));
            switch(e.type)
            {
                case Viking.CITY_ACTION_SHOW_MARKET:
                {
                    app.city.market.maxMaterialCount = playerProxy.playerVO.maxMaterialQuantity;
                    app.city.market.homeMaterialData = cityProxy.HomeMaterialData;
                    app.city.market.homeResource = cityProxy.cityResource;
                    break;
                }
                case Viking.CITY_ACTION_SHOW_BAR:
                {
                    sendNotification(NPC_LOAD_COMPLETE);
                    break;
                }
                case Viking.CITY_ACTION_SHOW_TEMPLE:
                {
                    playerProxy.loadPlayer(PLAYER_LOADED_BY_CITY_GUILD);
                    break;
                }
                case Viking.CITY_ACTION_SILVER_DEAL:
                {
                    silverDeal.setData(playerProxy.playerVO, cityProxy.cityVO, getSilver());
                    app.city.market.popupWindow(silverDeal);
                    silverDeal.silverCanvas.visible = false;
                    windowAddSwfCommon(silverDeal.windowLayer, function (event:Event) : void
            {
                var e:* = event;
                var animationProxy:* = AnimationProxy(facade.retrieveProxy(AnimationProxy.NAME));
                animationProxy.generalLoaders["window"]["common"].content.addEventListener("ENLARGE_END", function (event:Event) : void
                {
                    silverDeal.silverCanvas.visible = true;
                    return;
                }// end function
                );
                return;
            }// end function
            , "center_400x270");
                    break;
                }
                case Viking.CITY_ACTION_FOOD_DEAL:
                case Viking.CITY_ACTION_GOLD_DEAL:
                {
                    goldDeal.setData(playerProxy.playerVO, cityProxy.cityVO, getPureGold());
                    app.city.market.popupWindow(goldDeal);
                    goldDeal.goldCanvas.visible = false;
                    windowAddSwfCommon(goldDeal.windowLayer, function (event:Event) : void
            {
                var e:* = event;
                var animationProxy:* = AnimationProxy(facade.retrieveProxy(AnimationProxy.NAME));
                animationProxy.generalLoaders["window"]["common"].content.addEventListener("ENLARGE_END", function (event:Event) : void
                {
                    goldDeal.goldCanvas.visible = true;
                    return;
                }// end function
                );
                return;
            }// end function
            , "center_400x270");
                    break;
                }
                case Viking.CITY_ACTION_BACK_HOME:
                {
                    app.gameViewStack.selectedIndex = Viking.VIEW_INDEX_HOME;
                    sendNotification(BACK_HOME);
                    break;
                }
                case Viking.CITY_ACTION_SHOW_SELL_GOODS:
                {
                    marketProxy.getMyCommodity();
                    break;
                }
                case Viking.CITY_ACTION_SHOW_BUY_GOODS:
                {
                    if (!marketProxy.masterDataSeted)
                    {
                        marketProxy.setTradeMasterData(app.city.market.buyTradeGoodsSearchWindow);
                    }
                    marketProxy.getTradeGoodsStock();
                    app.showLoadingWindow();
                    break;
                }
                case Viking.CITY_ACTION_CREATE_GUILD:
                {
                    app.city.temple.popupWindow(createGuildWindow, false);
                    createGuildWindow.myGuildData = null;
                    templeProxy.setWindowData(createGuildWindow);
                    createGuildWindow.createGuildCanvas.visible = false;
                    windowAddSwfCommon(createGuildWindow.windowLayer, function (event:Event) : void
            {
                var e:* = event;
                var animationProxy:* = AnimationProxy(facade.retrieveProxy(AnimationProxy.NAME));
                animationProxy.generalLoaders["window"]["common"].content.addEventListener("ENLARGE_END", function (event:Event) : void
                {
                    createGuildWindow.createGuildCanvas.visible = true;
                    return;
                }// end function
                );
                return;
            }// end function
            , "left_560x460");
                    break;
                }
                case Viking.CITY_ACTION_QUIT_GUILD:
                {
                    templeCheckWindow.eventName = GUILD_QUIT;
                    templeCheckWindow.setGuildName(playerProxy.playerVO.guild.name, TempleCheckWindow.INDEX_GUILD_QUIT);
                    app.city.temple.popupWindow(templeCheckWindow);
                    templeCheckWidnowAddSwf();
                    break;
                }
                case Viking.CITY_ACTION_APPLICATION_CANCEL:
                {
                    templeCheckWindow.eventName = GUILD_APPLICATION_CANCEL;
                    templeCheckWindow.setGuildName(playerProxy.playerVO.application.guildName, TempleCheckWindow.INDEX_GUILD_APPLICATION_CANCEL);
                    app.city.temple.popupWindow(templeCheckWindow);
                    templeCheckWidnowAddSwf();
                    break;
                }
                case Viking.CITY_ACTION_SEARCH_GUILD:
                {
                    guildProxy.searchGuild();
                    break;
                }
                case Viking.CITY_ACTION_MANAGE_GUILD:
                {
                    app.city.temple.popupWindow(guildManagementWindow);
                    guildManagementWindow.masterCanvas.visible = false;
                    windowAddSwfCommon(guildManagementWindow.windowLayer, function (event:Event) : void
            {
                var e:* = event;
                var animationProxy:* = AnimationProxy(facade.retrieveProxy(AnimationProxy.NAME));
                animationProxy.generalLoaders["window"]["common"].content.addEventListener("ENLARGE_END", function (event:Event) : void
                {
                    guildManagementWindow.masterCanvas.visible = true;
                    return;
                }// end function
                );
                return;
            }// end function
            , "left_560x460");
                    break;
                }
                case GuildManagementWindow.CLOSE_GUILD_MANAGEMENT_WINDOW:
                {
                    animationProxy = AnimationProxy(facade.retrieveProxy(AnimationProxy.NAME));
                    animationProxy.childRemoveAnimation("window", "city", "guildManagement", guildManagementWindow.windowLayer);
                    break;
                }
                case Viking.CITY_ACTION_APPOINT_GUILDMASTER:
                {
                    guildProxy.getGuildDetail(playerProxy.playerVO.guild.id, GUILD_DETAIL_CASEBY_MASTER);
                    break;
                }
                case Viking.CITY_ACTION_SHOW_REMOVE_MEMBER_WINDOW:
                {
                    guildProxy.getGuildDetail(playerProxy.playerVO.guild.id, GUILD_DETAIL_FOR_REMOVE_MEMBER);
                    break;
                }
                case Viking.CITY_ACTION_BUY_INDULGENCE:
                {
                    buyIndulgenceWindow.init(playerProxy.playerVO, cityProxy.cityVO.indulgencePrice);
                    app.city.temple.popupWindow(buyIndulgenceWindow);
                    buyIndulgenceWindow.indulgenceCanvas.visible = false;
                    windowAddSwfCommon(buyIndulgenceWindow.windowLayer, function (event:Event) : void
            {
                var e:* = event;
                var animationProxy:* = AnimationProxy(facade.retrieveProxy(AnimationProxy.NAME));
                animationProxy.generalLoaders["window"]["common"].content.addEventListener("ENLARGE_END", function (event:Event) : void
                {
                    buyIndulgenceWindow.indulgenceCanvas.visible = true;
                    return;
                }// end function
                );
                return;
            }// end function
            , "center_400x270");
                    break;
                }
                case Viking.CITY_ACTION_CHANGE_GUILD_INFORMATION:
                {
                    app.city.temple.popupWindow(createGuildWindow, false);
                    templeProxy.setWindowData(createGuildWindow);
                    break;
                }
                case Viking.CITY_ACTION_GUILD_ARMYES_BACK:
                {
                    sendNotification(GUILD_ARMISE_LOAD);
                    break;
                }
                case Viking.CITY_ACTION_SHOW_PAYMENT_COMMODITY_WINDOW:
                {
                    app.city.popupWindow(paymentTypeSelectWindow, false);
                    break;
                }
                case Viking.CITY_ACTION_DELIVERY_FACTION_GIFT:
                {
                    maxGiftQuantity = getFactionGift(playerProxy.playerVO.factionId);
                    deliveryFactionGiftWindow.maxQuantity = maxGiftQuantity;
                    deliveryFactionGiftWindow.currentGiftCount = guildProxy.guildDetail.factionGiftCount;
                    deliveryFactionGiftWindow.giftCountLeft = guildProxy.guildDetail.factionGiftCountLeft;
                    app.city.popupWindow(deliveryFactionGiftWindow, false);
                    break;
                }
                default:
                {
                    break;
                }
            }
            return;
        }// end function

        private function removeChildWindowSWF(param1, param2:String, param3:String, param4:String) : void
        {
            var _loc_5:* = AnimationProxy(facade.retrieveProxy(AnimationProxy.NAME));
            AnimationProxy(facade.retrieveProxy(AnimationProxy.NAME)).childRemoveAnimation(param2, param3, param4, param1);
            return;
        }// end function

        private function removeSWF(param1, param2:String, param3:String) : void
        {
            var _loc_4:* = AnimationProxy(facade.retrieveProxy(AnimationProxy.NAME));
            AnimationProxy(facade.retrieveProxy(AnimationProxy.NAME)).generalRemoveAnimation(param2, param3, param1);
            return;
        }// end function

        private function templeCheckWidnowAddSwf() : void
        {
            templeCheckWindow.checkCanvas.visible = false;
            windowAddSwfCommon(templeCheckWindow.windowLayer, function (event:Event) : void
            {
                var e:* = event;
                var animationProxy:* = AnimationProxy(facade.retrieveProxy(AnimationProxy.NAME));
                animationProxy.generalLoaders["window"]["common"].content.addEventListener("ENLARGE_END", function (event:Event) : void
                {
                    templeCheckWindow.checkCanvas.visible = true;
                    return;
                }// end function
                );
                return;
            }// end function
            , "center_300x200");
            return;
        }// end function

        private function setGuildDetail(param1:Object) : void
        {
            var _loc_2:* = param1.guild;
            guildMasterWindow.guildData = _loc_2;
            createGuildWindow.myGuildData = _loc_2;
            setPlayerData();
            return;
        }// end function

        private function checkChildWindowSWF(param1, param2:String) : void
        {
            var _loc_3:* = AnimationProxy(facade.retrieveProxy(AnimationProxy.NAME));
            if (_loc_3.childLoaders["window"]["city"][param2])
            {
                removeChildWindowSWF("window", "city", param2, param1);
            }
            return;
        }// end function

        override public function listNotificationInterests() : Array
        {
            return [StartCityCommand.SHOW_CITY, StartCityCommand.SHOW_LOADING_WINDOW, SellSilverCommand.SELL_SILVER_COMPLETE, SellGoldCommand.SELL_GOLD_COMPLETE, PLAYER_LOADED_BY_CITY, PLAYER_LOADED_BY_CITY_GUILD, PlayerProxy.GUILD_APPLICATION_LOADED, PlayerProxy.PLAYER_RANK, PlayerProxy.PLAYER_RANK_UP_COMPLETE, PlayerProxy.PLAYER_RANK_UP_ERROR, PlayerProxy.CHANGE_PLAYER_RANK_VIEW, PlayerProxy.DELIVERY_FACTION_GIFT, PlayerProxy.DELIVERY_FACTION_GIFT_ERROR, GuildProxy.CREATE_GUILD, GuildProxy.CREATE_GUILD_ERROR, GuildProxy.GUILD_INFOMATION_CHANGE, GuildProxy.GUILD_INFOMATION_CHANGE_ERROR, GuildProxy.SEARCH_GUILD, GuildProxy.SEARCH_GUILD_ERROR, GuildProxy.ADMISSION_GUILD, GuildProxy.ADMISSION_GUILD_ERROR, GuildProxy.GUILD_DETAIL, GuildProxy.GUILD_DETAIL_ERROR, GuildProxy.GUILD_DETAIL_CASEBY_MASTER, GuildProxy.GUILD_MASTER_RESIGN, GuildProxy.GUILD_ASSIGN, GuildProxy.GUILD_ASSIGN_ERROR, GuildProxy.GUILD_QUIT, GuildProxy.GUILD_QUIT_ERROR, GuildProxy.APPLICATION_CANCEL, GuildProxy.DISMISS_GUILD_MEMBER_COMPLETE, GuildProxy.DISMISS_GUILD_MEMBER_ERROR, GuildProxy.GUILD_BACK_UNIT, GuildProxy.GUILD_BACK_UNIT_ERROR, TempleProxy.BUY_INDULGENCE, TempleProxy.BUY_INDULGENCE_ERROR, BuySoulCrystalCommand.BUY_SOUL_CRYSTAL_COMPLETE, MarketProxy.BUY_PAYMENT_COMMODITY, MarketProxy.BUY_PAYMENT_COMMODITY_ERROR, MarketProxy.SELL_SILVER, MarketProxy.SELL_SILVER_ERROR, MarketProxy.SELL_GOLD, MarketProxy.SELL_GOLD_ERROR, MarketProxy.MY_COMMODITY_LOAD_COMPLETE, MarketProxy.COMMODITY_SUMMARIES_LOADED, MarketProxy.GET_TRADE_GOODS, MarketProxy.BUY_TRADE_GOODS, MarketProxy.BUY_GOODS, MarketProxy.TRADE_GOODS_ERROR, BarProxy.QUEST_LOADED, BarProxy.QUEST_ACCEPT, BarProxy.QUEST_ACCEPT_ERROR, BarProxy.QUEST_ABORT, BarProxy.PROGRESS_QUEST_LOADED, ReloadGoodsCommand.SHOW_LOADING_WINDOW, ReloadGoodsCommand.RELOADED_MARKET_DATA, TradeGoodsCommand.SHOW_LOADING_WINDOW, TradeGoodsCommand.RELOADED_MARKET_DATA, QuestCompleteCommand.QUEST_COMPLETE_LOADED, NpcLoadCompleteCommand.START_BAR, GuildArmiseLoadCommand.GuildBackUnitLoaded, PlayerRankUpCommand.PLAYER_RANK_UP, GuildLevelUpCommand.GUILD_LEVEL_UP, TRADE_GOODS_RELOADED, RELOAD_GUILD_DETAIL, GuildApprovalWindow.RELOAD_GUILD_DETAIL, GUILD_DETAIL_FOR_REMOVE_MEMBER, PlayerProxy.SEARCH_PLAYER_COMPLETE, PlayerProxy.SEARCH_PLAYER_ERROR];
        }// end function

        private function initializeCommonListeners() : void
        {
            var _loc_1:Canvas = null;
            var _loc_2:String = null;
            for each (_loc_1 in [app.city, app.city.temple, app.city.market, app.city.bar])
            {
                
                for each (_loc_2 in COMMON_EVENTS)
                {
                    
                    _loc_1.addEventListener(_loc_2, handleEvent);
                }
            }
            return;
        }// end function

        private function childWindowAddSwf(param1, param2:Function, param3:String, param4:String = "purpose_window", param5:int = 0, param6:int = 0) : void
        {
            var _loc_7:* = AnimationProxy(facade.retrieveProxy(AnimationProxy.NAME));
            AnimationProxy(facade.retrieveProxy(AnimationProxy.NAME)).childAnimationLoaded("window", "city", param3, param4, param1, param5, param6);
            var _loc_8:* = _loc_7.childLoaders["window"]["city"][param3].contentLoaderInfo;
            _loc_7.childLoaders["window"]["city"][param3].contentLoaderInfo.addEventListener(Event.COMPLETE, param2);
            return;
        }// end function

        private function getPureGold() : int
        {
            var _loc_1:* = CityProxy(facade.retrieveProxy(CityProxy.NAME));
            var _loc_2:* = _loc_1.getHomeMaterialById(MATERIAL_ID_GOLD);
            return _loc_2.quantity;
        }// end function

        private function windowAddSwfCommon(param1, param2:Function, param3:String = "purpose_window", param4:int = 0, param5:int = 0) : void
        {
            var _loc_6:* = AnimationProxy(facade.retrieveProxy(AnimationProxy.NAME));
            AnimationProxy(facade.retrieveProxy(AnimationProxy.NAME)).generalAnimationLoaded("window", "common", param3, param1, param4, param5);
            _loc_6.generalLoaders["window"]["common"].contentLoaderInfo.addEventListener(Event.COMPLETE, param2);
            return;
        }// end function

    }
}
