package com.kbmj.viking.proxy
{
    import com.adobe.serialization.json.*;
    import com.kbmj.viking.vo.*;
    import com.kbmj.viking.vo.home.*;
    import flash.events.*;
    import flash.external.*;
    import mx.events.*;

    public class PlayerProxy extends LoaderProxy implements IEventDispatcher
    {
        private var tutorialVO:TutorialVO;
        private var _clientId:String;
        private var _tutorialQuit:Boolean;
        private var _bindingEventDispatcher:EventDispatcher;
        private var _currentQuest:Object;
        private var _1969791673_playerVO:PlayerVO;
        private var _assistantVO:AssistantVO;
        public static const GET_FACTION_COMPLETE:String = "PlayerProxy/getFactionComplete";
        public static const PLAYER_LOADED_CASE_BY_DOUBLE_DROP:String = NAME + "/PlayerLoadedCaseByDoubleDrop";
        public static const NAME:String = "PlayerProxy";
        public static const INIT_RESEARCH_TMARK:String = "PlayerProxy/initResearchTmark";
        public static const NAME_VALIDATE_COMPLETE:String = NAME + "PlayerNameValidateComplete";
        public static const RESUME_EVENT_MAP_LEVEL:String = "PlayerProxy/resumeEventMapLevel";
        public static const LOAD_MATCH_BATTLE_DEFENCE_REPORT:String = NAME + "loadMatchBattleDefenceReport";
        public static const PLAYER_RANK_UP_ERROR:String = NAME + "/playerRankUpError";
        public static const PLAYER_SUBMIT_COMPLETE_END:String = "playerSubmitCompleteEnd";
        public static const PLAYER_SUBMIT_ERROR:String = NAME + "playerSubmitError";
        public static const PLAYER_LOADED:String = "PlayerProxy/PlayerLoaded";
        public static const ADMISSION_FACTION_ERROR:String = "PlayerProxy/admissionFactionError";
        public static const PLAYER_SUBMIT_COMPLETE:String = "playerSubmitComplete";
        public static const PLAYER_LOADED_BY_TUTORIAL:String = NAME + "/playerLoadedByTutorial";
        public static const PLAYER_LOADED_BY_HOME:String = "PlayerProxy/PlayerLoadedByHome";
        public static const GET_TUTORIAL_STATE_IN_ALLMAP:String = "PlayerProxy/getTutorialStateInAllmap";
        public static const CHANGE_PLAYER_RANK_VIEW:String = NAME + "changePlayerRankView";
        public static const GET_TUTORIAL_COMPLETE:String = "PlayerProxy/getTutorialComplete";
        public static const NAME_VALIDATE_ERROR:String = NAME + "playerNameValidateError";
        public static const GET_FACTION_WITHOUT_TUTORIAL_RETRY_COMPLETE:String = "PlayerProxy/getFactionWithoutTutorialRetryComplete";
        public static const ADMISSION_FACTION_COMPLETE:String = "PlayerProxy/admissionFactionComplete";
        public static const SEARCH_PLAYER_ERROR:String = "PlayerProxy/searchPlayerError";
        public static const UNREAD_NOTICE_LOADED:String = NAME + "unreadNotice";
        public static const PLAYER_LOADED_CASE_BY_DOUBLE_EXP:String = NAME + "/PlayerLoadedCaseByDoubleExp";
        public static const SEARCH_PLAYER_COMPLETE:String = "PlayerProxy/searchPlayerComplete";
        public static const PLAYER_RANK:String = "PlayerProxy/playerRank";
        public static const LOAD_CURRENT_QUEST_COMPLETE:String = NAME + "/loadCurrentQuestComplete";
        public static const FINISH_TUTORIAL_COMPLETE:String = NAME + "tutorialFinishComplete";
        public static const ADMISSION_FACTION_WITHOUT_TUTORIAL_COMPLETE:String = "PlayerProxy/admissionFactionWithoutTutorialComplete";
        public static const PLAYER_INITIALIZED_END:String = "playerProxy/playerInitializedEnd";
        public static const GET_FACTION_WITHOUT_TUTORIAL_COMPLETE:String = "PlayerProxy/getFactionWithoutTutorialComplete";
        public static const SHOW_LOGIN_ITEM:String = NAME + "drawLoginItem";
        public static const PLAYER_INITIALIZED:String = "playerProxy/playerInitialized";
        public static const INIT_TUTORIAL_STATE:String = "PlayerProxy/initTutorialState";
        public static const GUILD_APPLICATION_LOADED:String = "PlayerProxy/guildApplictionLoaded";
        public static const PLAYER_RANK_UP_COMPLETE:String = NAME + "/playerRankUpComplete";
        public static const PLAYER_LOADED_BY_BACK_HOME:String = "PlayerProxy/PlayerLoadedByBackHome";
        public static const RESET_CONTINUATION_LEVEL:String = "PlayerProxy/resetContinuationLevel";
        public static const GET_TUTORIAL_ERROR:String = NAME + "/getTutorialError";
        public static const INIT_PRODUCTION_TMARK:String = "PlayerProxy/initProductionTmark";
        public static const FINISH_TUTORIAL_ERROR:String = NAME + "tutorialFinishError";
        public static const RESUME_CONTINUATION_LEVEL:String = "PlayerProxy/resumeContinuationLevel";
        public static const DELIVERY_FACTION_GIFT_ERROR:String = "PlayerProxy/deliveryFactionGiftError";
        public static const ADMISSION_FACTION_WITHOUT_TUTORIAL_ERROR:String = "PlayerProxy/admissionFactionWithoutTutorialError";
        public static const UNREAD_MAIL_LOADED:String = NAME + "unreadMail";
        public static const DELIVERY_FACTION_GIFT:String = "PlayerProxy/deliveryFactionGift";

        public function PlayerProxy()
        {
            _1969791673_playerVO = new PlayerVO();
            _assistantVO = new AssistantVO();
            _bindingEventDispatcher = new EventDispatcher(IEventDispatcher(this));
            super(NAME);
            return;
        }// end function

        public function willTrigger(param1:String) : Boolean
        {
            return _bindingEventDispatcher.willTrigger(param1);
        }// end function

        public function guildApplicationPlayerFactory(param1:Object) : PlayerVO
        {
            var _loc_2:* = new PlayerVO();
            _loc_2.playerName = param1.player_name;
            _loc_2.playerRankId = param1.onmyou_rank_id;
            _loc_2.propertiesCount = param1.properties_count;
            _loc_2.unitCount = param1.units_count;
            _loc_2.maxUnitLevel = param1.max_unit_level;
            _loc_2.civilization = param1.civilization;
            _loc_2.rarity = param1.rarity;
            return _loc_2;
        }// end function

        public function initPlayer(param1:String = "playerProxy/playerInitialized") : void
        {
            var eventName:* = param1;
            loadWithJson("/api/player/init", eventName, null, function (param1:Object) : Object
            {
                _clientId = param1.client_id;
                if (param1.player)
                {
                    _playerVO = buildPlayer(param1.player.player);
                }
                return param1;
            }// end function
            , null);
            return;
        }// end function

        public function get assistantVO() : AssistantVO
        {
            return _assistantVO;
        }// end function

        public function submit(param1:Object, param2:String = "playerSubmitComplete") : void
        {
            var params:* = param1;
            var eventName:* = param2;
            var json:* = JSON.encode({player_name:params.playerName});
            loadWithJson("/api/player", eventName, PLAYER_SUBMIT_ERROR, function (param1:Object) : Object
            {
                if (param1.point)
                {
                    if (ExternalInterface.available)
                    {
                        ExternalInterface.call("updatePower", param1.point);
                    }
                }
                return param1;
            }// end function
            , json);
            return;
        }// end function

        public function finishTutorial() : void
        {
            load("/api/players/finish_tutorial", FINISH_TUTORIAL_COMPLETE, function (param1:Object) : void
            {
                return;
            }// end function
            );
            return;
        }// end function

        public function searchPlayer(param1:String) : void
        {
            var playerName:* = param1;
            trace("searchPlayer");
            var json:* = JSON.encode({player_name:playerName});
            loadWithJson("/api/players/search_player", SEARCH_PLAYER_COMPLETE, SEARCH_PLAYER_ERROR, function (param1:Object) : Object
            {
                var _loc_2:* = new Object();
                if (param1)
                {
                    _loc_2.name = param1.name;
                    _loc_2.guild = param1.guild;
                }
                else
                {
                    _loc_2 = null;
                }
                return _loc_2;
            }// end function
            , json);
            return;
        }// end function

        public function updateUnreadMail() : void
        {
            load("/api/players/unread_mail", UNREAD_MAIL_LOADED, function (param1:Object) : Object
            {
                return param1;
            }// end function
            );
            return;
        }// end function

        public function loadPlayerRank(param1:String = "PlayerProxy/playerRank") : void
        {
            var eventName:* = param1;
            load("/api/players/get_rank", eventName, function (param1:Object) : Object
            {
                _playerVO.playerRankId = param1.rank;
                _playerVO.nextRankExp = param1.next_rank_exp;
                _playerVO.exp = param1.exp;
                return param1;
            }// end function
            );
            return;
        }// end function

        public function set playerVO(param1:PlayerVO) : void
        {
            _playerVO = param1;
            return;
        }// end function

        public function drawLoginItem() : void
        {
            load("/api/player/draw_login_item", SHOW_LOGIN_ITEM, function (param1:Object) : Object
            {
                return param1;
            }// end function
            );
            return;
        }// end function

        private function get _playerVO() : PlayerVO
        {
            return this._1969791673_playerVO;
        }// end function

        public function loadSelectFaction(param1:String = "PlayerProxy/getFactionComplete") : void
        {
            var eventName:* = param1;
            load("/api/players/get_admission_faction", eventName, function (param1:Object) : Object
            {
                var _loc_2:* = new Object();
                _loc_2.flg = param1.quit;
                _loc_2.forcedFactionArea = param1.forced_faction_area;
                _loc_2.id = param1.tutorial_id;
                _loc_2.incapableAdmission = param1.incapable_admission;
                return _loc_2;
            }// end function
            , GET_TUTORIAL_ERROR);
            return;
        }// end function

        public function setAssistantRemark() : void
        {
            _assistantVO.decisionRemark(_playerVO);
            return;
        }// end function

        public function loadAssistantRemark() : void
        {
            var _loc_1:* = MasterProxy(facade.retrieveProxy(MasterProxy.NAME));
            _assistantVO.masters = _loc_1.getMasterAsArray(MasterProxy.ASSISTANT_MASTER);
            return;
        }// end function

        public function dispatchEvent(event:Event) : Boolean
        {
            return _bindingEventDispatcher.dispatchEvent(event);
        }// end function

        public function validateName(param1:Object) : void
        {
            var params:* = param1;
            var json:* = JSON.encode({player_name:params.playerName});
            loadWithJson("/api/player/valid_name", NAME_VALIDATE_COMPLETE, NAME_VALIDATE_ERROR, function (param1:Object) : Object
            {
                return param1;
            }// end function
            , json);
            return;
        }// end function

        public function resetEventMapLevel(param1:String = "PlayerProxy/resumeEventMapLevel", param2:int = 0) : void
        {
            var eventName:* = param1;
            var level:* = param2;
            var json:* = JSON.encode({restart_level:level});
            loadWithJson("/api/players/reset_event_map_level", eventName, "", function (param1:Object) : Object
            {
                _playerVO.lastEventMapLevel = param1.last_level;
                _playerVO.eventMapBattleTicket = param1.battle_ticket;
                return param1;
            }// end function
            , json);
            return;
        }// end function

        public function get clientId() : String
        {
            return _clientId;
        }// end function

        public function matchBattleDefenceReport() : void
        {
            load("/api/player/match_battle_defence_report", LOAD_MATCH_BATTLE_DEFENCE_REPORT, function (param1:Object) : Object
            {
                return param1;
            }// end function
            );
            return;
        }// end function

        public function get tutorialQuit() : Boolean
        {
            return _tutorialQuit;
        }// end function

        public function updateUnreadNotice() : void
        {
            load("/api/admin_notices/unread_notice", UNREAD_NOTICE_LOADED, function (param1:Object) : Object
            {
                return param1;
            }// end function
            );
            return;
        }// end function

        public function removeEventListener(param1:String, param2:Function, param3:Boolean = false) : void
        {
            _bindingEventDispatcher.removeEventListener(param1, param2, param3);
            return;
        }// end function

        public function admissionFaction(param1:int, param2:String = "PlayerProxy/admissionFactionComplete", param3:String = "PlayerProxy/admissionFactionError") : void
        {
            var factionId:* = param1;
            var eventName:* = param2;
            var errorEventName:* = param3;
            var json:* = JSON.encode({faction_id:factionId});
            loadWithJson("/api/players/set_admission_faction", eventName, errorEventName, function (param1:Object) : Object
            {
                var _loc_2:* = new Object();
                _loc_2.factionId = param1.faction_id;
                _loc_2.guildId = param1.guild_id;
                _loc_2.forcedFactionArea = param1.forced_faction_area;
                ExternalInterface.call("chat.subscribe", "/Faction/" + _loc_2.factionId, "faction");
                ExternalInterface.call("chat.subscribe", "/Guild/" + _loc_2.guildId, "guild");
                return _loc_2;
            }// end function
            , json);
            return;
        }// end function

        public function addEventListener(param1:String, param2:Function, param3:Boolean = false, param4:int = 0, param5:Boolean = false) : void
        {
            _bindingEventDispatcher.addEventListener(param1, param2, param3, param4, param5);
            return;
        }// end function

        public function get playerVO() : PlayerVO
        {
            return _playerVO;
        }// end function

        public function deliveryFactionGift(param1:int) : void
        {
            var quantity:* = param1;
            var json:* = JSON.encode({quantity:quantity});
            loadWithJson("/api/players/delivery_faction_gift", DELIVERY_FACTION_GIFT, DELIVERY_FACTION_GIFT_ERROR, function (param1:Object) : Object
            {
                return param1;
            }// end function
            , json);
            return;
        }// end function

        public function loadGuildApplication(param1:String = "PlayerProxy/guildApplictionLoaded") : void
        {
            var eventName:* = param1;
            load("/api/guilds/my_guild_application", eventName, function (param1:Object) : PlayerVO
            {
                var _loc_2:Object = null;
                _playerVO.application = new Object();
                if (param1 != null)
                {
                    _loc_2 = param1.guild_application;
                    _playerVO.application.applicationId = _loc_2.id;
                    _playerVO.application.guildName = _loc_2.guild.name;
                }
                else
                {
                    _playerVO.application = null;
                }
                return _playerVO;
            }// end function
            );
            return;
        }// end function

        public function loadTutorial(param1:String = "PlayerProxy/getTutorialComplete") : void
        {
            var eventName:* = param1;
            load("/api/players/get_tutorial", eventName, function (param1:Object) : Object
            {
                var _loc_2:* = new Object();
                _loc_2.flg = param1.quit;
                _loc_2.id = param1.tutorial_id;
                return _loc_2;
            }// end function
            , GET_TUTORIAL_ERROR);
            return;
        }// end function

        public function get currentQuest() : Object
        {
            return _currentQuest;
        }// end function

        public function loadPlayer(param1:String = "PlayerProxy/PlayerLoaded") : void
        {
            var eventName:* = param1;
            load("/api/player", eventName, function (param1:Object) : PlayerVO
            {
                _playerVO = buildPlayer(param1.player, _playerVO);
                return _playerVO;
            }// end function
            );
            return;
        }// end function

        public function loadCurrentQuest() : void
        {
            load("/api/player/current_quest", LOAD_CURRENT_QUEST_COMPLETE, function (param1:Object) : void
            {
                _currentQuest = new Object();
                if (param1.quest)
                {
                    _currentQuest = param1.quest.quest;
                    _currentQuest.kills = param1.kills;
                }
                else
                {
                    _currentQuest = null;
                }
                return;
            }// end function
            );
            return;
        }// end function

        private function set _playerVO(param1:PlayerVO) : void
        {
            var _loc_2:* = this._1969791673_playerVO;
            if (_loc_2 !== param1)
            {
                this._1969791673_playerVO = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "_playerVO", _loc_2, param1));
            }
            return;
        }// end function

        public function hasEventListener(param1:String) : Boolean
        {
            return _bindingEventDispatcher.hasEventListener(param1);
        }// end function

        public function rankUp() : void
        {
            load("/api/players/rank_up", PLAYER_RANK_UP_COMPLETE, function (param1:Object) : void
            {
                return;
            }// end function
            , PLAYER_RANK_UP_ERROR);
            return;
        }// end function

        public function assistantPeriodicRemark(param1:Array) : String
        {
            return _assistantVO.assistantPeriodicRemark(param1);
        }// end function

        public function resetContinuationLevel(param1:String = "PlayerProxy/resetContinuationLevel", param2:int = 0) : void
        {
            var eventName:* = param1;
            var level:* = param2;
            var json:* = JSON.encode({restart_level:level});
            loadWithJson("/api/players/reset_continuation_level", eventName, "", function (param1:Object) : Object
            {
                _playerVO.lastContinuationLevel = param1.last_level;
                _playerVO.continuationBattleTicket = param1.battle_ticket;
                return param1;
            }// end function
            , json);
            return;
        }// end function

        public static function buildPlayer(param1:Object, param2:PlayerVO = null) : PlayerVO
        {
            var _loc_4:Object = null;
            var _loc_3:* = param2 ? (param2) : (new PlayerVO());
            _loc_3.playerId = param1.id;
            _loc_3.unitCount = param1.units_count;
            _loc_3.playerName = param1.player_name;
            _loc_3.unitsAverageLevel = param1.units_average_level;
            _loc_3.maxUnitLevel = param1.max_unit_level;
            _loc_3.playerRankId = param1.onmyou_rank_id;
            _loc_3.exp = param1.exp;
            if (param1.guild != null)
            {
                _loc_4 = param1.guild.guild;
                _loc_3.guild = new Object();
                _loc_3.guild.name = _loc_4.name;
                _loc_3.guild.memberships = _loc_4.guild_memberships_count;
                _loc_3.guild.id = _loc_4.id;
            }
            else
            {
                _loc_3.guild = null;
            }
            _loc_3.guildMaster = param1.guild_master;
            _loc_3.deletedAt = param1.deleted_at;
            _loc_3.doubleExpExpired = param1.double_exp;
            _loc_3.doubleExpExpiredAtLabel = param1.double_exp_expired_at_label;
            _loc_3.doubleDropExpired = param1.double_drop_rate;
            _loc_3.doubleDropExpiredAtLabel = param1.double_drop_rate_expired_at_label;
            _loc_3.incrementMaxTasks = param1.increment_max_tasks;
            _loc_3.incrementMaxTasksAtLabel = param1.increment_max_tasks_count_at_label;
            _loc_3.gold = param1.gold;
            _loc_3.civilization = param1.civilization;
            _loc_3.rarity = param1.rarity;
            _loc_3.prizePoint = param1.prize_point;
            _loc_3.power = param1.point;
            _loc_3.bonusBattlesCount = param1.bonus_battles_count;
            _loc_3.possessionTicket = param1.possession_ticket;
            _loc_3.colonyBattleTicket = param1.colony_battle_ticket;
            _loc_3.propertiesCount = param1.properties_count;
            _loc_3.propertiesCountMax = param1.properties_count_max || 1;
            _loc_3.soulCrystal = param1.soul_crystal;
            _loc_3.silver = param1.silver;
            _loc_3.silverOutput = param1.silver_output;
            _loc_3.spiritOfFire = param1.spirit_of_fire;
            _loc_3.spiritOfFireOutput = param1.spirit_of_fire_output;
            _loc_3.spiritOfEarth = param1.spirit_of_earth;
            _loc_3.spiritOfEarthOutput = param1.spirit_of_earth_output;
            _loc_3.spiritOfWater = param1.spirit_of_water;
            _loc_3.spiritOfWaterOutput = param1.spirit_of_water_output;
            _loc_3.activeStatus = param1.active_status;
            _loc_3.maxMaterialQuantity = param1.max_material_quantity;
            _loc_3.addedAreasCount = param1.added_areas_count;
            _loc_3.chargePointAreasCount = param1.charge_point_areas_count;
            _loc_3.tutorialId = param1.tutorial_id;
            _loc_3.factionId = param1.faction_id;
            _loc_3.maxUnitCount = param1.max_units_count;
            if (param1.home_all_map_pos)
            {
                _loc_3.homeAllMapPos.x = param1.home_all_map_pos.x;
                _loc_3.homeAllMapPos.y = param1.home_all_map_pos.y;
            }
            _loc_3.leyLineFlag = param1.guild != null ? (param1.guild.guild.ley_line_flag) : (param1.ley_line_flag);
            _loc_3.unreadMail = param1["unread_mail?"];
            _loc_3.levelMaxPropertiesCount = param1.level_max_properties_count;
            _loc_3.matchBattleTicket = param1.match_battle_ticket;
            _loc_3.specialMatchBattleTicket = param1.special_match_battle_ticket;
            _loc_3.lastContinuationLevel = param1.last_continuation_level;
            _loc_3.continuationBattleTicket = param1.continuation_battle_ticket;
            _loc_3.continuationBattleRecord = param1.continuation_battle_record;
            _loc_3.lastEventMapLevel = param1.last_event_map_level;
            _loc_3.eventMapBattleTicket = param1.event_map_battle_ticket;
            _loc_3.eventMapBattleRecord = param1.event_map_battle_record;
            return _loc_3;
        }// end function

    }
}
