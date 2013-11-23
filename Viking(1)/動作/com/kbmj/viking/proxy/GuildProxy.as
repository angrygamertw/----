package com.kbmj.viking.proxy
{
    import com.adobe.serialization.json.*;
    import com.kbmj.viking.proxy.tactics.*;
    import com.kbmj.viking.view.home.*;
    import com.kbmj.viking.vo.*;
    import com.kbmj.viking.vo.city.*;
    import com.kbmj.viking.vo.tactics.*;
    import flash.utils.*;

    public class GuildProxy extends LoaderProxy
    {
        private var _applicationQueue:Array;
        private var _fromId:int;
        private var _applicationVO:GuildApplicationVO;
        private var _guildChatVO:GuildChatVO;
        private var _guildChatUpdateLocation:String;
        private var _guildData:Array;
        private var _coloniesData:Array;
        private var _chatUpdateTimer:Timer;
        private var _guildDetailVO:GuildDetailVO;
        private var _armiseUnit:Array;
        private var _guildChat:Array;
        private var lastGuildChatId:int;
        public static const CHAT_UPDATE_ERROR:String = "chatUpdateError";
        public static const GUILD_MASTER_RESIGN:String = "guildMasterResign";
        public static const ALLOW_APPLICATION_ERROR:String = "allowApplicationError";
        public static const GUILD_ASSIGN_ERROR:String = "guildAssignError";
        public static const GUILD_INFOMATION_CHANGE_ERROR:String = NAME + "/guildInfomationChangeError";
        public static const NAME:String = "GuildProxy";
        public static const SET_GUILD_CHAT:String = "setGuildChat";
        public static const REJECT_APPLICATION:String = "rejectApplication";
        public static const APPLICATION_DETAIL_LOADED:String = NAME + "";
        public static const APPLICATION_CANCEL_ERROR:String = NAME + "/applicationCancelError";
        public static const GUILD_DETAIL_CASEBY_MASTER:String = "guildDetailCaseByMaster";
        public static const SET_GUILD_CHAT_ERROR:String = "setGuildChatError";
        public static const ALLOW_APPLICATION:String = "allowApplication";
        public static const GUILD_LEVEL_UP_COMPLETE:String = NAME + "/guildLevelUpComplete";
        public static const MASTER_RESIGN_FINISH:String = "masterResignFinish";
        public static const ADMISSION_GUILD_ERROR:String = "admissionGuildError";
        public static const HOME_GUILD_DETAIL_ADD_MEMBER:String = "HomeMediator/guildDetailAddMember";
        public static const CREATE_GUILD_ERROR:String = "createGuildError";
        public static const RELOAD_GUILD_PLAYER:String = NAME + "/reloadGuildPlayers";
        public static const GUILD_QUIT:String = NAME + "/guildQuit";
        public static const GUILD_DETAIL:String = "guildDetail";
        public static const CHAT_CREATE:String = "chatCreate";
        public static const DISMISS_GUILD_MEMBER_COMPLETE:String = "dismissGuildMemberComplete";
        public static const GUILD_INFOMATION_CHANGE:String = NAME + "/guildInfomationChange";
        public static const GUILD_DATA_LOADED:String = "guildDataLoaded";
        public static const CREATE_GUILD:String = NAME + "/createGuild";
        public static const GUILD_DETAIL_BY_CITY:String = "guildDetailByCity";
        public static const CHAT_UPDATED:String = NAME + "/chatUpdated";
        public static const GUILD_ASSIGN:String = "guildAssign";
        public static const LOAD_COLONIES_DATA:String = NAME + "/loadColoniesData";
        public static const GUILD_APPLICATION_LOADED:String = NAME + "/guildApplicationLoaded";
        public static const SHOW_APPLICATION_WINDOW:String = NAME + "showApplicationWindow";
        public static const GUILD_QUIT_ERROR:String = NAME + "/guildQuitError";
        public static const SEARCH_GUILD_ERROR:String = "searchGuildError";
        public static const GUILD_DETAIL_ERROR:String = "guildDetailError";
        public static const GUILD_BACK_UNIT_ERROR:String = NAME + "guildBackUnitError";
        public static const APPLICATION_CANCEL:String = NAME + "/applicationCancel";
        public static const LOAD_GUILD_ARMY_UNITS:String = "guildArmyUnits";
        public static const DISMISS_GUILD_MEMBER_ERROR:String = "dismissGuildMemberError";
        public static const CHAT_CREATE_ERROR:String = "chatCreateError";
        public static const GUILD_BACK_UNIT:String = NAME + "guildBackUnit";
        public static const UPDATE_CHAT_ERROR:String = NAME + "/updateChatError";
        public static const REJECT_APPLICATION_ERROR:String = "rejectApplicationError";
        public static const SEARCH_GUILD:String = "searchGuild";
        public static const ADMISSION_GUILD:String = "admissionGuild";
        public static const GUILD_LEVEL:String = "GuildProxy/guildLevel";

        public function GuildProxy()
        {
            _guildData = new Array();
            _applicationQueue = new Array();
            _applicationVO = new GuildApplicationVO();
            _armiseUnit = new Array();
            _coloniesData = new Array();
            _guildChat = new Array();
            _guildChatUpdateLocation = new String();
            _chatUpdateTimer = new Timer(30000, 0);
            super(NAME);
            return;
        }// end function

        public function dismissGuildMember(param1:int) : void
        {
            var playerId:* = param1;
            var json:* = JSON.encode({player_id:playerId});
            loadWithJson("/api/guilds/dismiss_guild_member", DISMISS_GUILD_MEMBER_COMPLETE, DISMISS_GUILD_MEMBER_ERROR, function (param1:Object) : Object
            {
                return param1;
            }// end function
            , json);
            return;
        }// end function

        public function get applicationVO() : GuildApplicationVO
        {
            return _applicationVO;
        }// end function

        public function get chatUpdateTimer() : Timer
        {
            return _chatUpdateTimer;
        }// end function

        public function set chatUpdateTimer(param1:Timer) : void
        {
            _chatUpdateTimer = param1;
            return;
        }// end function

        public function loadApplicationDetail(param1:int) : void
        {
            var applicationId:* = param1;
            var json:* = JSON.encode({id:applicationId});
            loadWithJson("/api/guilds/guild_application_detail", APPLICATION_DETAIL_LOADED, CHAT_CREATE_ERROR, function (param1:Object) : Object
            {
                var _loc_2:* = PlayerProxy(facade.retrieveProxy(PlayerProxy.NAME));
                _applicationVO = new GuildApplicationVO();
                _applicationVO.id = param1.guild_application.id;
                _applicationVO.comment = param1.guild_application.comment;
                _applicationVO.playerVO = _loc_2.guildApplicationPlayerFactory(param1.guild_application.player);
                return param1;
            }// end function
            , json);
            return;
        }// end function

        public function getGuildArmyUnits() : void
        {
            load("/api/guilds/reinforcements", LOAD_GUILD_ARMY_UNITS, function (param1:Array) : Array
            {
                var _loc_3:Object = null;
                var _loc_4:UnitVO = null;
                _armiseUnit = new Array();
                var _loc_2:* = UnitProxy(facade.retrieveProxy(UnitProxy.NAME));
                for each (_loc_3 in param1)
                {
                    
                    _loc_4 = _loc_2.unitFactory(_loc_3.unit);
                    _armiseUnit.push(_loc_4);
                }
                return param1;
            }// end function
            );
            return;
        }// end function

        public function postChat(param1:String) : void
        {
            var type:int;
            var chatText:* = param1;
            switch(Number(chatText.substring(0, 1)))
            {
                case GuildChatVO.CHAT_TYPE_FACTION:
                {
                    type;
                    break;
                }
                case GuildChatVO.CHAT_TYPE_GUILD:
                {
                    type;
                    break;
                }
                default:
                {
                    return;
                    break;
                }
            }
            var json:* = JSON.encode({type:type, body:chatText.substring(1)});
            loadWithJson("/api/guild_chat/", SET_GUILD_CHAT, SET_GUILD_CHAT_ERROR, function (param1:Object) : Object
            {
                return param1;
            }// end function
            , json);
            sendNotification(HomeMediator.RELOAD_HOME_RESOURCE);
            return;
        }// end function

        public function timerStart() : void
        {
            _chatUpdateTimer.start();
            return;
        }// end function

        public function guildBackUnit(param1:int) : void
        {
            var unitId:* = param1;
            var json:* = JSON.encode({unit_id:unitId});
            loadWithJson("/api/guilds/remove_reinforcement", GUILD_BACK_UNIT, GUILD_BACK_UNIT_ERROR, function (param1:Object) : Object
            {
                return param1;
            }// end function
            , json);
            return;
        }// end function

        public function get applicationQueue() : Array
        {
            return _applicationQueue;
        }// end function

        override public function onRegister() : void
        {
            return;
        }// end function

        public function get guildDetail() : GuildDetailVO
        {
            return _guildDetailVO;
        }// end function

        public function getGuildPlayerName(param1:int) : Object
        {
            if (_guildData[param1])
            {
                return _guildData[param1].name;
            }
            return null;
        }// end function

        public function searchGuild() : void
        {
            load("/api/guilds", SEARCH_GUILD, function (param1:Object) : Object
            {
                return param1;
            }// end function
            );
            return;
        }// end function

        public function rejectApplication(param1:int) : void
        {
            var applicationId:* = param1;
            var json:* = JSON.encode({guild_application_id:applicationId});
            loadWithJson("/api/guilds/reject_application", REJECT_APPLICATION, REJECT_APPLICATION_ERROR, function (param1:Object) : Object
            {
                return param1;
            }// end function
            , json);
            return;
        }// end function

        public function getGuildPlayers() : void
        {
            load("/api/guilds/my_guild_member", RELOAD_GUILD_PLAYER, function (param1:Array) : Array
            {
                var _loc_3:Object = null;
                var _loc_4:PlayerVO = null;
                var _loc_2:* = new Array();
                for each (_loc_3 in param1)
                {
                    
                    _loc_4 = PlayerProxy.buildPlayer(_loc_3.player);
                    _loc_2.push(_loc_4);
                }
                return _loc_2;
            }// end function
            );
            return;
        }// end function

        private function getLastGuildChat() : void
        {
            load("/api/guild_chat?from_id=" + lastGuildChatId, CHAT_UPDATED, function (param1:Array) : Array
            {
                var _loc_2:* = _guildChat.concat(createChats(param1));
                _guildChat = _guildChat.concat(createChats(param1));
                return _loc_2;
            }// end function
            , UPDATE_CHAT_ERROR);
            return;
        }// end function

        public function get armiseUnit() : Array
        {
            return _armiseUnit;
        }// end function

        public function levelUp() : void
        {
            load("/api/guilds/rank_up/" + guildDetail.guildId, GUILD_LEVEL_UP_COMPLETE, function (param1:Object) : void
            {
                return;
            }// end function
            );
            return;
        }// end function

        public function allowApplication(param1:int) : void
        {
            var applicationId:* = param1;
            var json:* = JSON.encode({guild_application_id:applicationId});
            loadWithJson("/api/guilds/allow_application", ALLOW_APPLICATION, ALLOW_APPLICATION_ERROR, function (param1:Object) : Object
            {
                return param1;
            }// end function
            , json);
            return;
        }// end function

        public function updateChat() : void
        {
            if (lastGuildChatId > 0)
            {
                getLastGuildChat();
            }
            else
            {
                getGuildChat();
            }
            return;
        }// end function

        public function assignGuild(param1:int, param2:int, param3:String = "guildAssign") : void
        {
            var playerId:* = param1;
            var roleId:* = param2;
            var eventName:* = param3;
            var json:* = JSON.encode({player_id:playerId, role_id:roleId});
            loadWithJson("/api/guilds/assign", eventName, GUILD_ASSIGN_ERROR, function (param1:Object) : Object
            {
                return param1;
            }// end function
            , json);
            return;
        }// end function

        private function getGuildChat() : void
        {
            load("/api/guild_chat/", CHAT_UPDATED, function (param1:Array) : Array
            {
                var _loc_2:* = createChats(param1);
                _guildChat = createChats(param1);
                return _loc_2;
            }// end function
            );
            return;
        }// end function

        public function set fromId(param1:int) : void
        {
            _fromId = param1;
            return;
        }// end function

        public function set guildChatUpdateLocation(param1:String) : void
        {
            _guildChatUpdateLocation = param1;
            return;
        }// end function

        public function createGuild(param1:String, param2:String, param3:Array) : void
        {
            var name:* = param1;
            var comment:* = param2;
            var guildIds:* = param3;
            var json:* = JSON.encode({name:name, comment:comment, guild_feature_ids:guildIds});
            loadWithJson("/api/guilds", CREATE_GUILD, CREATE_GUILD_ERROR, function (param1:Object) : Object
            {
                return param1;
            }// end function
            , json);
            return;
        }// end function

        public function changeGuildInfomation(param1:String, param2:Array) : void
        {
            var comment:* = param1;
            var guildIds:* = param2;
            var json:* = JSON.encode({comment:comment, guild_feature_ids:guildIds});
            loadWithJson("/api/guilds/update", GUILD_INFOMATION_CHANGE, GUILD_INFOMATION_CHANGE_ERROR, function (param1:Object) : Object
            {
                return param1;
            }// end function
            , json);
            return;
        }// end function

        public function nextApplication() : Object
        {
            if (_applicationQueue.length > 0)
            {
                return _applicationQueue.pop();
            }
            return null;
        }// end function

        public function getColoniesData() : void
        {
            load("/api/guilds/colony_points", LOAD_COLONIES_DATA, function (param1:Object) : Object
            {
                var obj:Object;
                var colony:ColonyVO;
                var rawColony:Object;
                var topPoints:Array;
                var occupations:Array;
                var response:* = param1;
                var masterProxy:* = MasterProxy(facade.retrieveProxy(MasterProxy.NAME));
                _coloniesData = new Array();
                var _loc_3:int = 0;
                var _loc_4:* = response.colony_points;
                while (_loc_4 in _loc_3)
                {
                    
                    obj = _loc_4[_loc_3];
                    colony = new ColonyVO();
                    rawColony = obj.colony_point;
                    colony.masterVO = masterProxy.getMasterVO(MasterProxy.COLONY_MASTER, rawColony.colony_id) as ColonyMasterVO;
                    colony.point = rawColony.point;
                    colony.isOpen = response.colony_opened;
                    topPoints = response.top_colony_points.filter(function (param1:Object, param2:int, param3:Array) : Boolean
                {
                    return param1.colony_point.colony_id == rawColony.colony_id;
                }// end function
                );
                    if (topPoints.length > 0)
                    {
                        colony.topPoint = topPoints[0].colony_point.max_point;
                    }
                    occupations = response.colony_occupations.filter(function (param1:Object, param2:int, param3:Array) : Boolean
                {
                    return param1.colony_occupation.colony_id == rawColony.colony_id;
                }// end function
                );
                    if (occupations.length > 0 && occupations[0].colony_occupation.guild)
                    {
                        colony.ownerGuildName = occupations[0].colony_occupation.guild.name;
                    }
                    else
                    {
                        colony.ownerGuildName = "---";
                    }
                    _coloniesData.push(colony);
                }
                return response;
            }// end function
            );
            return;
        }// end function

        public function loadGuildApplication() : void
        {
            load("/api/guilds/guild_applications", GUILD_APPLICATION_LOADED, function (param1:Array) : Object
            {
                var _loc_3:Object = null;
                var _loc_4:GuildApplicationVO = null;
                var _loc_2:* = PlayerProxy(facade.retrieveProxy(PlayerProxy.NAME));
                _applicationQueue = new Array();
                for each (_loc_3 in param1)
                {
                    
                    _loc_4 = new GuildApplicationVO();
                    _loc_4.id = _loc_3.guild_application.id;
                    _loc_4.date = _loc_3.guild_application.created_at;
                    _loc_4.comment = _loc_3.guild_application.comment;
                    _loc_4.guildId = _loc_3.guild_application.guild_id;
                    _loc_4.playerVO = _loc_2.guildApplicationPlayerFactory(_loc_3.guild_application.player);
                    _loc_4.date = _loc_4.date.replace("T", " ");
                    _loc_4.date = _loc_4.date.slice(0, 19);
                    _applicationQueue.push(_loc_4);
                }
                return param1;
            }// end function
            );
            return;
        }// end function

        public function get fromId() : int
        {
            return _fromId;
        }// end function

        public function timerStop() : void
        {
            _chatUpdateTimer.stop();
            return;
        }// end function

        public function get guildChatUpdateLocation() : String
        {
            return _guildChatUpdateLocation;
        }// end function

        public function admissionGuild(param1:int, param2:String) : void
        {
            var guildId:* = param1;
            var comment:* = param2;
            var json:* = JSON.encode({comment:comment});
            loadWithJson("/api/guilds/" + guildId + "/apply_to", ADMISSION_GUILD, ADMISSION_GUILD_ERROR, function (param1:Object) : Object
            {
                return param1;
            }// end function
            , json);
            return;
        }// end function

        public function get guildChat() : Array
        {
            return _guildChat;
        }// end function

        public function getGuildDetail(param1:int, param2:String = "guildDetail") : void
        {
            var guildId:* = param1;
            var eventName:* = param2;
            load("/api/guilds/" + guildId, eventName, function (param1:Object) : Object
            {
                var _loc_3:Object = null;
                var _loc_4:PlayerVO = null;
                var _loc_2:* = param1.guild;
                _guildDetailVO = new GuildDetailVO();
                if (_loc_2)
                {
                    _guildDetailVO.guildId = _loc_2.id;
                    _guildDetailVO.guildName = _loc_2.name;
                    _guildDetailVO.membershipCount = _loc_2.guild_memberships_count;
                    _guildDetailVO.totalNotoriety = _loc_2.notoriety;
                    _guildDetailVO.dedicationPoint = _loc_2.dedication_point;
                    _guildDetailVO.comment = _loc_2.comment;
                    _guildDetailVO.features = _loc_2.guild_features;
                    _guildDetailVO.rank = _loc_2.guild_rank;
                    _guildDetailVO.maxMemberSize = _loc_2.max_guild_memberships_count;
                    _guildDetailVO.allTerritoriesCount = _loc_2.all_territories_count;
                    _guildDetailVO.leyLineFlag = _loc_2.ley_line_flag;
                    _guildDetailVO.players = new Array();
                    for each (_loc_3 in _loc_2.players)
                    {
                        
                        _loc_4 = PlayerProxy.buildPlayer(_loc_3);
                        _guildDetailVO.players.push(_loc_4);
                    }
                    _guildDetailVO.levelMaxPropertiesCount = _loc_2.level_max_properties_count;
                    _guildDetailVO.factionGiftCount = _loc_2.faction_gift_count;
                    _guildDetailVO.factionGiftCountLeft = _loc_2.faction_gift_count_left;
                }
                return param1;
            }// end function
            );
            return;
        }// end function

        public function guildQuit() : void
        {
            load("/api/guilds/quit", GUILD_QUIT, function (param1:Object) : Object
            {
                return param1;
            }// end function
            , GUILD_QUIT_ERROR);
            return;
        }// end function

        public function masterResign() : void
        {
            load("/api/guilds/resign_master", GUILD_MASTER_RESIGN, function (param1:Object) : Object
            {
                return param1;
            }// end function
            );
            return;
        }// end function

        public function applicationInfoGuild() : void
        {
            load("/api/guilds/guild_applications", SHOW_APPLICATION_WINDOW, function (param1:Array) : Object
            {
                _applicationQueue = param1;
                return nextApplication();
            }// end function
            );
            return;
        }// end function

        public function applicationCancel(param1:int) : void
        {
            var guildId:* = param1;
            var json:* = JSON.encode({guild_application_id:guildId});
            loadWithJson("/api/guilds/cancel_application", APPLICATION_CANCEL, APPLICATION_CANCEL_ERROR, function (param1:Object) : Object
            {
                return param1;
            }// end function
            , json);
            return;
        }// end function

        public function setGuildData(param1:Array) : void
        {
            var _loc_2:Object = null;
            for (_loc_2 in param1)
            {
                
                _guildData[param1[_loc_2].id] = new Object();
                _guildData[param1[_loc_2].id].name = param1[_loc_2].name;
            }
            return;
        }// end function

        private function createChats(param1:Array) : Array
        {
            var _loc_4:Object = null;
            var _loc_5:GuildChatVO = null;
            var _loc_2:* = new Array();
            var _loc_3:* = param1.length - 1;
            while (_loc_3 >= 0)
            {
                
                _loc_4 = param1[_loc_3];
                _loc_5 = new GuildChatVO();
                var _loc_6:* = _loc_4.guild_chat.id;
                lastGuildChatId = _loc_4.guild_chat.id;
                _loc_5.id = _loc_6;
                _loc_5.playerName = _loc_4.guild_chat.player_name;
                _loc_5.chatPlayerId = _loc_4.guild_chat.player_id;
                switch(_loc_4.guild_chat.type)
                {
                    case "Faction":
                    {
                        break;
                    }
                    case "Guild":
                    {
                        break;
                    }
                    default:
                    {
                        break;
                        break;
                    }
                }
                switch(_loc_4.guild_chat.type)
                {
                    case "Faction":
                    {
                        break;
                    }
                    case "Guild":
                    {
                        break;
                    }
                    default:
                    {
                        break;
                        break;
                    }
                }
                _loc_5.body = _loc_4.guild_chat.body;
                _loc_5.createdAtLabel = _loc_4.guild_chat.created_at_label;
                _loc_2.push(_loc_5);
                _loc_3 = _loc_3 - 1;
            }
            return _loc_2;
        }// end function

    }
}
