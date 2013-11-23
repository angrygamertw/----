package com.kbmj.viking.vo.allMap
{
    import com.kbmj.viking.lib.*;
    import flash.geom.*;

    public class AllMapCommandVO extends Object
    {
        private var _levelUp:Object;
        private var _garrison:Object;
        private var _found:Object;
        private var _level:int;
        private var _endurance:int;
        private var _objectName:String;
        private var _noUnit:Boolean;
        private var _propertiesCountFull:Boolean;
        private var _pos:Point;
        private var _onmyouRankId:int;
        private var _objectId:int;
        private var _plunder:Boolean;
        private var _guildName:String;
        private var _remove:Boolean;
        private var _playerName:String;
        private var _repair:Object;
        private var _guildId:int;
        private var _chargeRemove:Boolean;
        private var _lowOnmyouRank:Boolean;
        private var _destroy:Boolean;
        private var _description:String;
        private var _invade:Boolean;
        private var _playerId:int;
        private var _objectState:String;
        private var _unitIds:Array;
        private var _outputs:Object;
        private var _object:int;
        private var _factionId:int;
        private var _surrender:Boolean;
        private var _notConnected:Boolean;
        private var _noPossessionTicket:Boolean;
        private var _plundered:Boolean;
        public static const OBJ_NONE:int = 0;
        public static const OBJ_HOME:int = 1;
        public static const OBJ_TOWER:int = 10;
        public static const OBJ_GENBU:int = 14;
        public static const OBJ_EVIL_POINT:int = 5;
        public static const OBJ_TERRITORY:int = 4;
        public static const OBJ_FORT:int = 2;
        public static const OBJ_BYAKKO:int = 13;
        private static const OBJ_NAMES:Array = [Utils.i18n("generalHome"), Utils.i18n("generalFort"), Utils.i18n("generalProperties"), Utils.i18n("generalTerritory"), Utils.i18n("generalEvilPoint"), "", "", "", "", Utils.i18n("generalTower"), "四神・青龍", "四神・朱雀", "四神・白虎", "四神・玄武"];
        public static const OBJ_SUZAKU:int = 12;
        public static const OBJ_PROPERTY:int = 3;
        public static const OBJ_SEIRYU:int = 11;

        public function AllMapCommandVO(param1:Object) : void
        {
            var _loc_2:int = 0;
            var _loc_3:int = 0;
            _level = param1.level;
            _object = AllMapVO.parseObject(param1.object.charCodeAt(0), _level);
            _pos = new Point(param1.x, param1.y);
            _objectId = param1.object_id;
            _playerId = param1.player_id;
            _guildId = param1.guild_id;
            _factionId = param1.faction_id;
            _onmyouRankId = param1.onmyou_rank_id || 0;
            _endurance = param1.endurance || 0;
            var _loc_4:String = "";
            _objectState = "";
            _objectName = _loc_4;
            if (param1.object_id != OBJ_NONE)
            {
                _playerName = param1.player_name;
                _guildName = param1.guild_name.length > 0 ? (param1.guild_name) : (Utils.i18n("cityIndependent"));
                _objectName = param1.player_name.length > 0 ? (param1.player_name + "之") : ("");
                _objectName = _objectName + OBJ_NAMES[(Math.min(param1.object_id, OBJ_NAMES.length) - 1)];
                switch(int(param1.object_id))
                {
                    case OBJ_FORT:
                    case OBJ_TOWER:
                    {
                        if (param1.endurance == 0)
                        {
                            _objectState = Utils.i18n("generalState") + ":" + Utils.i18n("generalStateConstruction");
                        }
                        else
                        {
                            _objectState = Utils.i18n("generalState") + ":" + Utils.i18n("generalDurability") + param1.endurance.toString();
                        }
                        break;
                    }
                    case OBJ_PROPERTY:
                    {
                        if (param1.under_level_up)
                        {
                            _objectState = Utils.i18n("generalState") + ":" + Utils.i18n("generalInDevelopment");
                        }
                        break;
                    }
                    case OBJ_EVIL_POINT:
                    {
                        _objectState = "Lv. " + param1.level.toString();
                        break;
                    }
                    default:
                    {
                        break;
                    }
                }
            }
            _plunder = param1.plunder == "true";
            _invade = param1.invade == "true";
            _surrender = param1.surrender == "true";
            _levelUp = param1.level_up;
            _found = param1.found;
            _repair = param1.repair;
            _garrison = param1.garrison == "true";
            _unitIds = param1.unit_ids || [];
            _destroy = param1.destroy == "true";
            _remove = param1.remove == "true";
            _chargeRemove = param1.charge_remove == "true";
            _outputs = param1.outputs || [];
            if (param1.description)
            {
                _description = new String();
                _loc_3 = 0;
                do
                {
                    
                    _description = _description + param1.description.substr(_loc_3, _loc_2 - _loc_3);
                    _description = _description + "\n";
                    _loc_3 = _loc_2 + 2;
                    var _loc_4:* = param1.description.indexOf("\\n", _loc_3);
                    _loc_2 = param1.description.indexOf("\\n", _loc_3);
                }while (_loc_4 != -1)
                _description = _description + param1.description.substr(_loc_3, param1.description.length - _loc_3);
            }
            _lowOnmyouRank = param1.low_onmyou_rank;
            _noPossessionTicket = param1.no_possession_ticket;
            _propertiesCountFull = param1.properties_count_full;
            _notConnected = param1.not_connected;
            _noUnit = param1.no_unit;
            _plundered = param1.plundered;
            return;
        }// end function

        public function get destroy() : Boolean
        {
            return _destroy;
        }// end function

        public function get repair() : Object
        {
            return _repair;
        }// end function

        public function get endurance() : int
        {
            return _endurance;
        }// end function

        public function get invade() : Boolean
        {
            return _invade;
        }// end function

        public function get level() : int
        {
            return _level;
        }// end function

        public function get unitIds() : Array
        {
            return _unitIds;
        }// end function

        public function get found() : Object
        {
            return _found;
        }// end function

        public function get guildId() : int
        {
            return _guildId;
        }// end function

        public function get remove() : Boolean
        {
            return _remove;
        }// end function

        public function get guildName() : String
        {
            return _guildName;
        }// end function

        public function get objectState() : String
        {
            return _objectState;
        }// end function

        public function get playerName() : String
        {
            return _playerName;
        }// end function

        public function get description() : String
        {
            return _description;
        }// end function

        public function get outputs() : Object
        {
            return _outputs;
        }// end function

        public function get onmyouRankId() : int
        {
            return _onmyouRankId;
        }// end function

        public function get lowOnmyouRank() : Boolean
        {
            return _lowOnmyouRank;
        }// end function

        public function get objectId() : int
        {
            return _objectId;
        }// end function

        public function get garrison() : Object
        {
            return _garrison;
        }// end function

        public function get notConnected() : Boolean
        {
            return _notConnected;
        }// end function

        public function get propertiesCountFull() : Boolean
        {
            return _propertiesCountFull;
        }// end function

        public function get noPossessionTicket() : Boolean
        {
            return _noPossessionTicket;
        }// end function

        public function get pos() : Point
        {
            return _pos;
        }// end function

        public function get object() : int
        {
            return _object;
        }// end function

        public function get levelUp() : Object
        {
            return _levelUp;
        }// end function

        public function get playerId() : int
        {
            return _playerId;
        }// end function

        public function get factionId() : int
        {
            return _factionId;
        }// end function

        public function get objectName() : String
        {
            return _objectName;
        }// end function

        public function get plunder() : Boolean
        {
            return _plunder;
        }// end function

        public function get noUnit() : Boolean
        {
            return _noUnit;
        }// end function

        public function get chargeRemove() : Boolean
        {
            return _chargeRemove;
        }// end function

        public function get plundered() : Boolean
        {
            return _plundered;
        }// end function

        public function get surrender() : Boolean
        {
            return _surrender;
        }// end function

    }
}
