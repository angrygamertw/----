package com.kbmj.viking.proxy.tactics
{
    import com.adobe.serialization.json.*;
    import com.kbmj.viking.lib.*;
    import com.kbmj.viking.lib.error.*;
    import com.kbmj.viking.proxy.*;
    import com.kbmj.viking.proxy.allMap.*;
    import com.kbmj.viking.proxy.home.*;
    import com.kbmj.viking.proxy.selectUnit.*;
    import com.kbmj.viking.view.tactics.*;
    import com.kbmj.viking.vo.*;
    import com.kbmj.viking.vo.tactics.*;
    import flash.events.*;
    import flash.utils.*;

    public class TacticsProxy extends BaseTacticsProxy
    {
        private var _leyLineFlag:int = 0;
        private var _isRestarted:Boolean;
        private var _returnToHome:Boolean = false;
        private var _start_time:int = 0;
        private var _healRate:Number = 1;
        private var turnIndex:int;
        private var _targetName:String;
        private var _isMouseOnUnit:Boolean;
        private var _firstContinuation:Boolean = true;
        private var finishVO:FinishVO = null;
        private var _damageRate:Number = 1;
        private var _defenceBonus:int = 0;
        private var _limit_battle:Boolean = false;
        private var battleFinishCheckerTimer:Timer = null;
        private var _targetPlayerId:int;
        private var orderFinishCheckerTimer:Timer = null;
        private var _returnToMap:Boolean = false;
        private var _battleLogicProxy:BattleLogicProxy;
        private var _grids:Array;
        private var _attackBonus:int = 0;
        private var _unitsInLastResetBattle:Array;
        public static const LOSE_CONDITION_ENDURANCE:int = 1;
        public static const TEAM_PLAYER:int = 0;
        public static const SHOW_FOLLOW_MOVIE:String = NAME + "/notes/showFollowMovie";
        public static const WIN_CONDITION_EXTERMINATION:int = 0;
        public static const NAME:String = "TacticsProxy";
        public static const TEAM_ENEMY:int = 1;
        public static const FINISH_RAID_FORCELY:String = NAME + "/notes/finishRaidForcely";
        public static const START_RAID_ERROR:String = NAME + "/notes/startRaidError";
        public static const START_RAID_COMPLETE:String = NAME + "/notes/startRaidComplete";
        public static const RAID_FAILED:String = NAME + "/notes/raidFailed";
        public static const START_COMPLETE:String = NAME + "/notes/startComplete";
        public static const DEFAULT_WIN:String = NAME + "/notes/defaultWin";
        public static const WIN_CONDITION_ENDURANCE:int = 1;
        public static const SELECT_DESTINATION:String = NAME + "/notes/selectDestination";
        public static const COLONY_FAILED:String = NAME + "/notes/colonyFailed";
        public static const START_PVP_BATTLE_COMPLETE:String = "startPvPBattleComplete";
        public static const STAGE_CLEARED:String = NAME + "/notes/stageCleared";
        public static const STAGE_FAILED:String = NAME + "/notes/stageFailed";
        public static const START_ERROR:String = NAME + "/notes/startError";
        public static const LOSE_CONDITION_DEFENSE_TARGET:int = 2;
        public static const COLONY_CLEARED:String = NAME + "/notes/colonyCleared";
        public static const FINISH_ERROR:String = NAME + "/notes/finishError";
        public static const RAID_FINISHED_BY_TURN_LIMIT_OVER:String = "raidFinishedByTurnLimitOver";
        private static const TACTICS_TYPE_LABEL:Array = ["tactics", "raid", "colony"];
        public static const RAID_FINISHED_BY_TIME_OVER:String = "raidFinishedByTimeOver";
        public static const RAID_CLEARED:String = NAME + "/notes/raidCleared";
        public static const ROWS:int = 11;
        public static const LOSE_CONDITION_EXTERMINATION:int = 0;
        public static const FINISH_COMPLETE:String = NAME + "/notes/finishComplete";
        public static const START_CONTINUATION_TACTICS:String = NAME + "/notes/startContinuationTactics";
        public static const COLS:int = 11;
        public static const SHOW_LOADING_WINDOW:String = NAME + "/notes/showLoadingWindow";
        public static const START_MATCH_MOVIE:String = NAME + "/notes/startMatchMovie";
        public static const TURN_LIMIT_OVER:String = NAME + "/notes/turnLimitOver";
        public static const WIN_CONDITION_TARGET:int = 2;

        public function TacticsProxy()
        {
            turnIndex = new int(0);
            super(NAME);
            return;
        }// end function

        public function set isMouseOnUnit(param1:Boolean) : void
        {
            _isMouseOnUnit = param1;
            return;
        }// end function

        private function countKills(param1:Array, param2:int) : Array
        {
            var unit:UnitVO;
            var weapons:Array;
            var armors:Array;
            var items:Array;
            var pcKill:Array;
            var npcKill:Array;
            var i:int;
            var units:* = param1;
            var team:* = param2;
            var params:* = new Array();
            var _loc_4:int = 0;
            var _loc_5:* = units;
            while (_loc_5 in _loc_4)
            {
                
                unit = _loc_5[_loc_4];
                if (unit.team == team)
                {
                    weapons = new Array();
                    if (unit.count.weapons)
                    {
                        i;
                        while (i < unit.weapons.length)
                        {
                            
                            if (unit.weapons[i] != null && unit.count.weapons[unit.weapons[i].weaponId])
                            {
                                weapons.push({id:unit.weapons[i].weaponId, count:unit.count.weapons[unit.weapons[i].weaponId], damage:unit.weapons[i].damage});
                            }
                            i = (i + 1);
                        }
                    }
                    armors = new Array();
                    if (unit.armor && unit.count.armors && unit.count.armors[unit.armor.armorId])
                    {
                        armors.push({id:unit.armor.armorId});
                    }
                    items = new Array();
                    if (unit.item && unit.count.items && unit.count.items[unit.item.itemId])
                    {
                        items.push({id:unit.item.itemId, count:unit.count.items[unit.item.itemId]});
                    }
                    pcKill = unit.kill.find("isNpc", false).map(function (param1, param2:int, param3:Array) : int
            {
                return param1.unitId;
            }// end function
            );
                    npcKill = unit.kill.find("isNpc", true).map(function (param1, param2:int, param3:Array) : int
            {
                return param1.unitId;
            }// end function
            );
                    params.push({id:unit.unitId, pc_kill:pcKill, npc_kill:npcKill, alive:!unit.isDead, hp:unit.hp, weapon:weapons, armor:armors, item:items, strength:unit.strength, defense:unit.defense, intelligence:unit.intelligence, agility:unit.agility, luck:unit.luck, tech:unit.tech});
                }
            }
            return params;
        }// end function

        public function get firstContinuation() : Boolean
        {
            return _firstContinuation;
        }// end function

        private function generateWinStatement(param1:Array) : String
        {
            var _loc_3:String = null;
            var _loc_4:UnitVO = null;
            var _loc_2:String = "";
            switch(_tacticsVO.winCondition)
            {
                case 0:
                {
                    _loc_2 = Utils.i18n("tacticsProxyAllEnemy");
                    break;
                }
                case 1:
                {
                    break;
                }
                case 2:
                {
                    _loc_3 = "";
                    for each (_loc_4 in param1)
                    {
                        
                        if (_loc_4.unitId == _tacticsVO.winConditionTargetId)
                        {
                            _loc_3 = _loc_4.name;
                            break;
                        }
                    }
                    _loc_2 = _loc_3;
                    break;
                }
                default:
                {
                    break;
                    break;
                }
            }
            return _loc_2;
        }// end function

        public function startRaid(param1:Array, param2:int) : void
        {
            var playerUnits:* = param1;
            var targetId:* = param2;
            var mapProxy:* = MapProxy(facade.retrieveProxy(MapProxy.NAME));
            mapProxy.loadBlockImage();
            _tacticsType = TACTICS_TYPE_RAID;
            var unitIds:* = playerUnits.map(function (param1:UnitVO, param2:int, param3:Array) : int
            {
                return param1.unitId;
            }// end function
            );
            var json:* = JSON.encode({units:unitIds, target_player_id:targetId});
            loadWithJson("/api/raids/start", START_PVP_BATTLE_COMPLETE, START_RAID_ERROR, function (param1:Object) : Object
            {
                return handleStartComplete(param1, targetId);
            }// end function
            , json);
            return;
        }// end function

        private function get playerUnits() : Array
        {
            var _loc_1:* = PlayerProxy(facade.retrieveProxy(PlayerProxy.NAME));
            return findUnitsByTeamAndPlayerId(TEAM_PLAYER, _loc_1.playerVO.playerId, false);
        }// end function

        public function restart(param1:String) : void
        {
            var _loc_2:* = MapProxy(facade.retrieveProxy(MapProxy.NAME));
            _loc_2.loadBlockImage();
            var _loc_3:String = "";
            if (param1 == "tactics")
            {
                _tacticsType = TacticsVO.TACTICS_TYPE_NORMAL;
                _loc_3 = "/api/tactics/restart";
            }
            else if (param1 == "colony_battle")
            {
                _tacticsType = TacticsVO.TACTICS_TYPE_COLONY;
                _loc_3 = "/api/colony_battles/restart";
            }
            else if (param1 == "raid")
            {
                _tacticsType = TacticsVO.TACTICS_TYPE_RAID;
                _loc_3 = "/api/raids/restart";
            }
            load(_loc_3, START_COMPLETE, handleStartCompleteForRestart, START_ERROR);
            return;
        }// end function

        public function set firstContinuation(param1:Boolean) : void
        {
            _firstContinuation = param1;
            return;
        }// end function

        private function startBattleFinishChecker() : void
        {
            trace("BattleFinishChecker:Start");
            stopBattleFinishChecker();
            battleFinishCheckerTimer = new Timer(1000);
            battleFinishCheckerTimer.addEventListener(TimerEvent.TIMER, function (event:TimerEvent) : void
            {
                if (_tacticsVO.aliveUnits.find("team", TEAM_PLAYER) == 0 || _tacticsVO.aliveUnits.find("team", TEAM_ENEMY) == 0)
                {
                    trace("BattleFinishChecker:Hit");
                    stopBattleFinishChecker();
                    finish();
                }
                return;
            }// end function
            );
            battleFinishCheckerTimer.start();
            return;
        }// end function

        public function set targetPlayerId(param1:int) : void
        {
            _targetPlayerId = param1;
            return;
        }// end function

        public function get mapObjects() : Array
        {
            return _tacticsVO.mapObjects;
        }// end function

        public function set returnToMap(param1:Boolean) : void
        {
            _returnToMap = param1;
            return;
        }// end function

        public function get tacticsType() : int
        {
            return _tacticsType;
        }// end function

        public function buildRewardResorce(param1:Object) : Array
        {
            var _loc_4:Object = null;
            var _loc_5:Object = null;
            var _loc_2:* = new Array();
            _loc_2.push({name:"", quantity:param1.gold});
            var _loc_3:int = 0;
            for each (_loc_4 in param1.resource.filter(isSoulCrystal))
            {
                
                _loc_3 = _loc_3 + _loc_4.quantity;
            }
            _loc_2.push({name:"", quantity:_loc_3});
            for each (_loc_5 in param1.resource.filter(isNotSoulCrystal))
            {
                
                _loc_2.push(_loc_5);
            }
            return _loc_2;
        }// end function

        private function findUnitsByTeam(param1:int) : Array
        {
            return _tacticsVO.aliveUnits.find("team", param1);
        }// end function

        private function get failEvent() : String
        {
            switch(_tacticsType)
            {
                case TACTICS_TYPE_NORMAL:
                case TACTICS_TYPE_SHAM:
                case TACTICS_TYPE_MATCH:
                {
                    return STAGE_FAILED;
                }
                case TACTICS_TYPE_RAID:
                {
                    return RAID_FAILED;
                }
                case TacticsVO.TACTICS_TYPE_COLONY:
                {
                    return COLONY_FAILED;
                }
                default:
                {
                    break;
                }
            }
            return "";
        }// end function

        private function handleFinishComplete(param1:String) : Function
        {
            var finishedBy:* = param1;
            return function (param1:Object) : FinishVO
            {
                finishVO = null;
                finishVO = new FinishVO();
                finishVO.wipeout = param1.wipeout;
                finishVO.won = param1.won;
                finishVO.cheated = param1.cheated;
                finishVO.continueBattle = param1.can_continue_battle;
                finishVO.targetName = _targetName;
                finishVO.tacticsType = _tacticsType;
                finishVO.reward = buildReward(param1);
                finishVO.finishedBy = finishedBy;
                _battleLogicProxy.finish(finishVO);
                return finishVO;
            }// end function
            ;
        }// end function

        private function addReward(param1:Array, param2:Array, param3:String) : void
        {
            var _loc_5:Object = null;
            var _loc_6:Object = null;
            var _loc_4:* = MasterProxy(facade.retrieveProxy(MasterProxy.NAME));
            if (param2 && param2.length > 0)
            {
                for each (_loc_5 in param2)
                {
                    
                    var _loc_9:* = param3;
                    _loc_6 = _loc_4.getMasterVO(_loc_9.param3["camelize"](), _loc_5[param3 + "_id"]);
                    param1.push({name:_loc_6.nameLabel, quantity:1});
                }
            }
            return;
        }// end function

        private function isSoulCrystal(param1, param2:int, param3:Array) : Boolean
        {
            return param1.name == Utils.i18n("generalSoulSphere");
        }// end function

        public function hasLeyLine(param1:int) : Boolean
        {
            var _loc_2:* = 1 << param1;
            return (_leyLineFlag & _loc_2) == _loc_2;
        }// end function

        private function buildReward(param1:Object) : RewardVO
        {
            var _loc_3:UnitVO = null;
            var _loc_4:Array = null;
            var _loc_5:Object = null;
            var _loc_2:* = new Array();
            for each (_loc_3 in allPlayerUnitsIncludeDead)
            {
                
                _loc_5 = param1.units.getOne("id", _loc_3.unitId);
                if (_loc_5)
                {
                    _loc_2.push(new UnitExpVO(_loc_3, _loc_5.exp, _loc_5.levelupped));
                    continue;
                }
                _loc_2.push(new UnitExpVO(_loc_3, "0", false));
            }
            _loc_4 = buildRewardResorce(param1);
            return new RewardVO(_loc_4, _loc_2);
        }// end function

        private function get allPlayerUnitsIncludeDead() : Array
        {
            return playerUnits.concat(killedUnits.find("team", TEAM_PLAYER).find("teamType", UnitProxy.TEAM_TYPE_NORMAL));
        }// end function

        override public function useItem(param1:UseItemVO) : void
        {
            _battleLogicProxy.pcUseItem(param1);
            return;
        }// end function

        public function get missionStatement() : String
        {
            return _tacticsVO.missionStatement;
        }// end function

        override public function action(param1:AttackVO) : void
        {
            _battleLogicProxy.pcAction(param1);
            return;
        }// end function

        override public function equip(param1:EquipVO) : void
        {
            _battleLogicProxy.equip(param1);
            return;
        }// end function

        private function findUnitsByTeamAndPlayerId(param1:int, param2:int, param3:Boolean = false) : Array
        {
            var team:* = param1;
            var playerId:* = param2;
            var ally:* = param3;
            var unitProxy:* = UnitProxy(facade.retrieveProxy(UnitProxy.NAME));
            return _tacticsVO.aliveUnits.filter(function (param1:UnitVO, param2:int, param3:Array) : Boolean
            {
                return param1.team == team && (ally && param1.teamType == UnitProxy.TEAM_TYPE_OTHER || !ally && param1.teamType == UnitProxy.TEAM_TYPE_NORMAL);
            }// end function
            );
        }// end function

        private function enemyUnitsFactory(param1:Object, param2:PlayerProxy, param3:UnitProxy) : Array
        {
            var _loc_10:Object = null;
            var _loc_11:UnitVO = null;
            var _loc_4:* = new Array();
            var _loc_5:* = param1.enemy_units;
            if (param1.npc_enemy_units && param1.npc_enemy_units.length > 0)
            {
                _loc_5 = _loc_5.concat(param1.npc_enemy_units);
            }
            if (!_loc_5 || _loc_5.length <= 0)
            {
                return _loc_4;
            }
            var _loc_6:* = hasLeyLine(7) ? (5) : (0);
            var _loc_7:* = hasLeyLine(10) ? (5) : (0);
            var _loc_8:* = hasLeyLine(13) ? (2) : (0);
            var _loc_9:* = hasLeyLine(16) ? (2) : (0);
            for each (_loc_10 in _loc_5)
            {
                
                if (_loc_10.enemy_unit && _loc_10.enemy_unit.npc)
                {
                    _loc_11 = param3.enemyUnitFactory(_loc_10.enemy_unit);
                    _loc_11.ai = new AiVO(_loc_10.ai);
                }
                else if (_loc_10.faction_enemy_entity)
                {
                    _loc_11 = param3.enemyUnitFactory(_loc_10.faction_enemy_entity);
                    _loc_11.hp = _loc_10.faction_enemy_entity.hp;
                    _loc_11.ai = new AiVO(_loc_10.ai);
                }
                else
                {
                    _loc_11 = param3.unitFactory(_loc_10.unit);
                    _loc_11.ai = new AiVO(AiVO.TYPE_PASSIVE);
                    _loc_11.defenceBonus = defenceBonus;
                    _loc_11.avoidance_rate_add = _loc_6;
                    _loc_11.hit_rate_add = _loc_7;
                    _loc_11.defense_add = _loc_8;
                    _loc_11.offense_add = _loc_9;
                }
                _loc_11.team = TEAM_ENEMY;
                _loc_11.isAI = true;
                _loc_4.push(_loc_11);
            }
            return _loc_4;
        }// end function

        private function get clearEvent() : String
        {
            switch(_tacticsType)
            {
                case TACTICS_TYPE_NORMAL:
                case TACTICS_TYPE_SHAM:
                case TACTICS_TYPE_MATCH:
                {
                    return STAGE_CLEARED;
                }
                case TACTICS_TYPE_RAID:
                {
                    return RAID_CLEARED;
                }
                case TacticsVO.TACTICS_TYPE_COLONY:
                {
                    return COLONY_CLEARED;
                }
                default:
                {
                    break;
                }
            }
            return "";
        }// end function

        public function get startTime() : int
        {
            return _start_time;
        }// end function

        public function get returnToHome() : Boolean
        {
            return _returnToHome;
        }// end function

        public function get limitBattle() : Boolean
        {
            return _limit_battle;
        }// end function

        private function get allyUnits() : Array
        {
            var _loc_1:* = PlayerProxy(facade.retrieveProxy(PlayerProxy.NAME));
            return findUnitsByTeamAndPlayerId(TEAM_PLAYER, _loc_1.playerVO.playerId, true);
        }// end function

        public function finishRaidByTimeOver() : void
        {
            finish("", FinishVO.FINISHED_BY_TIME_OVER);
            return;
        }// end function

        public function set defenceBonus(param1:int) : void
        {
            _defenceBonus = param1;
            return;
        }// end function

        public function start(param1:Array) : void
        {
            var json:String;
            var allMapProxy:AllMapProxy;
            var match_battle:Boolean;
            var playerUnits:* = param1;
            var mapProxy:* = MapProxy(facade.retrieveProxy(MapProxy.NAME));
            mapProxy.loadBlockImage();
            _tacticsType = TACTICS_TYPE_NORMAL;
            var unitIds:* = playerUnits.map(function (param1:UnitVO, param2:int, param3:Array) : int
            {
                return param1.unitId;
            }// end function
            );
            var homeProxy:* = HomeProxy(facade.retrieveProxy(HomeProxy.NAME));
            var selectUnitProxy:* = SelectUnitProxy(facade.retrieveProxy(SelectUnitProxy.NAME));
            if (selectUnitProxy.selectUnitFor == SelectUnitProxy.FOR_ALL_MAP)
            {
                allMapProxy = AllMapProxy(facade.retrieveProxy(AllMapProxy.NAME));
                json = JSON.encode({unit_ids:unitIds, x:allMapProxy.cmdX, y:allMapProxy.cmdY, object_id:allMapProxy.cmdObjectId, player_id:allMapProxy.cmdPlayerId, invade:allMapProxy.cmdInvade ? (1) : (0)});
            }
            else if (selectUnitProxy.selectUnitFor == SelectUnitProxy.FOR_EXPEDITION)
            {
                json = JSON.encode({unit_ids:unitIds, topography_id:homeProxy.topographyId, level:homeProxy.topographyLevel, expedition:true});
            }
            else if (selectUnitProxy.selectUnitFor == SelectUnitProxy.FOR_EXPEDITION2)
            {
                json = JSON.encode({unit_ids:unitIds, topography_id:homeProxy.topographyId, level:homeProxy.topographyLevel, expedition2:true});
            }
            else if (selectUnitProxy.selectUnitFor == SelectUnitProxy.FOR_EXPEDITION3)
            {
                json = JSON.encode({unit_ids:unitIds, topography_id:homeProxy.topographyId, level:homeProxy.topographyLevel, expedition3:true, evilPointType:homeProxy.evilPointType});
            }
            else
            {
                if (selectUnitProxy.selectUnitFor == SelectUnitProxy.FOR_CONTINUATION)
                {
                    startContinuationBattle(playerUnits, homeProxy.topographyLevel);
                    return;
                }
                if (selectUnitProxy.selectUnitFor == SelectUnitProxy.FOR_SHAM_BATTLE)
                {
                    match_battle = homeProxy.targetId == 0;
                    json = JSON.encode({unit_ids:unitIds, player_id:homeProxy.targetId, sham_battle:true, match_battle:match_battle});
                    _tacticsType = TACTICS_TYPE_SHAM;
                    loadWithJson("/api/raids/start", START_COMPLETE, START_ERROR, handleStartComplete, json);
                    return;
                }
                if (selectUnitProxy.selectUnitFor == SelectUnitProxy.FOR_MATCH_BATTLE)
                {
                    json = JSON.encode({unit_ids:unitIds, player_id:homeProxy.targetId, sham_battle:false, match_battle:true});
                    _tacticsType = TACTICS_TYPE_MATCH;
                    loadWithJson("/api/raids/start", START_MATCH_MOVIE, START_ERROR, handleStartComplete, json);
                    return;
                }
                if (selectUnitProxy.selectUnitFor == SelectUnitProxy.FOR_SPECIAL_MATCH_BATTLE)
                {
                    json = JSON.encode({unit_ids:unitIds, player_id:homeProxy.targetId, special_match_battle:true});
                    _tacticsType = TACTICS_TYPE_MATCH;
                    loadWithJson("/api/raids/start", START_MATCH_MOVIE, START_ERROR, handleStartComplete, json);
                    return;
                }
                json = JSON.encode({unit_ids:unitIds, topography_id:homeProxy.topographyId, level:homeProxy.topographyLevel});
            }
            loadWithJson("/api/tactics/start", START_COMPLETE, START_ERROR, handleStartComplete, json);
            return;
        }// end function

        override public function cancelWalk(param1:CancelWalkVO) : void
        {
            _battleLogicProxy.pcCancelWalk(param1);
            return;
        }// end function

        private function generateLoseStatement(param1:Array) : String
        {
            var _loc_3:String = null;
            var _loc_4:UnitVO = null;
            var _loc_2:String = "";
            switch(_tacticsVO.loseCondition)
            {
                case 0:
                {
                    break;
                }
                case 1:
                {
                    break;
                }
                case 2:
                {
                    _loc_3 = "";
                    for each (_loc_4 in param1)
                    {
                        
                        if (_loc_4.unitId == _tacticsVO.loseConditionDefenseTargetId)
                        {
                            _loc_3 = _loc_4.name;
                            break;
                        }
                    }
                    _loc_2 = Utils.i18n("tacticsProxyLoseStatement", _loc_3);
                    break;
                }
                default:
                {
                    break;
                    break;
                }
            }
            return _loc_2;
        }// end function

        private function stopBattleFinishChecker() : void
        {
            if (battleFinishCheckerTimer)
            {
                battleFinishCheckerTimer.stop();
                battleFinishCheckerTimer = null;
                trace("BattleFinishChecker:Stop");
                startOrderFinishChecker();
            }
            return;
        }// end function

        public function get tacticsWon() : Boolean
        {
            return finishVO.won;
        }// end function

        private function getUnitIds(param1:Array) : Array
        {
            var units:* = param1;
            return units.map(function (param1, param2:int, param3:Array) : int
            {
                return param1.unitId;
            }// end function
            );
        }// end function

        public function set attackBonus(param1:int) : void
        {
            _attackBonus = param1;
            return;
        }// end function

        private function handleStartComplete(param1:Object, param2:int = 0, param3:Boolean = false) : Object
        {
            var _loc_4:* = UnitProxy(facade.retrieveProxy(UnitProxy.NAME));
            var _loc_5:* = MapProxy(facade.retrieveProxy(MapProxy.NAME));
            var _loc_6:* = SoundProxy(facade.retrieveProxy(SoundProxy.NAME));
            var _loc_7:* = SelectUnitProxy(facade.retrieveProxy(SelectUnitProxy.NAME));
            var _loc_8:* = AllMapProxy(facade.retrieveProxy(AllMapProxy.NAME));
            var _loc_9:* = new Array();
            var _loc_10:* = new Array();
            var _loc_11:* = new Array();
            var _loc_12:* = new Array();
            _targetPlayerId = 0;
            damageRate = 1;
            healRate = 1;
            _attackBonus = 0;
            if (param1.attack_bonus != undefined)
            {
                _attackBonus = param1.attack_bonus;
            }
            if (param1.defence_bonus == undefined)
            {
                _defenceBonus = 0;
                _leyLineFlag = 0;
                _targetPlayerId = 0;
            }
            else
            {
                _defenceBonus = param1.defence_bonus;
                _leyLineFlag = param1.ley_line;
                _targetPlayerId = param1.target_player_id;
            }
            if (_tacticsType == TACTICS_TYPE_SHAM || _tacticsType == TACTICS_TYPE_MATCH)
            {
                _targetPlayerId = param1.target_player_id;
            }
            if (param1.damage_rate != undefined)
            {
                damageRate = param1.damage_rate;
            }
            if (param1.heal_rate != undefined)
            {
                healRate = param1.heal_rate;
            }
            returnToHome = param1.return_to_home;
            _targetName = param1.target_name;
            limitBattle = param1.limited;
            returnToMap = param1.return_to_map;
            startTime = param1.start_time;
            _isRestarted = param3;
            var _loc_13:* = PlayerProxy(facade.retrieveProxy(PlayerProxy.NAME));
            var _loc_14:* = param1.win_condition || null;
            var _loc_15:* = param1.win_condition_target_id || null;
            var _loc_16:* = param1.lose_condition || null;
            var _loc_17:* = param1.lose_condition_defense_target_id || null;
            _loc_10 = allyUnitsFactory(param1, _loc_13, _loc_4);
            _loc_11 = guildAllyUnitsFactory(param1, _loc_13, _loc_4);
            _loc_12 = otherAllyUnitsFactory(param1, _loc_13, _loc_4);
            _loc_9 = enemyUnitsFactory(param1, _loc_13, _loc_4);
            var _loc_18:* = _loc_5.mapFactory(param1.map);
            _loc_6.soundType = param1.sound_type || 0;
            if (param1.turn_limit)
            {
                _turnLimit = param1.turn_limit;
            }
            else if (limitBattle)
            {
                _turnLimit = 5;
            }
            else
            {
                _turnLimit = 0;
            }
            var _loc_19:String = "";
            var _loc_20:String = "";
            if (param1.comment)
            {
                _loc_19 = param1.comment;
            }
            if (param1.target_comment)
            {
                _loc_20 = param1.target_comment;
            }
            return {allyUnits:_loc_10, guildAllyUnits:_loc_11, otherAllyUnits:_loc_12, enemyUnits:_loc_9, winCondition:_loc_14, winConditionTargetId:_loc_15, loseCondition:_loc_16, loseConditionDefenseTargetId:_loc_17, targetPlayerId:param2, comment:_loc_19, targetComment:_loc_20, playerName:_loc_13.playerVO.playerName, targetName:_targetName, map:_loc_18};
        }// end function

        override public function wait(param1:WaitVO) : void
        {
            _battleLogicProxy.pcWait(param1);
            return;
        }// end function

        public function set targetName(param1:String) : void
        {
            _targetName = param1;
            return;
        }// end function

        public function get isMouseOnUnit() : Boolean
        {
            return _isMouseOnUnit;
        }// end function

        public function set leyLineFlag(param1:int) : void
        {
            _leyLineFlag = param1;
            return;
        }// end function

        public function checkUnitMotion() : void
        {
            var job_code:String;
            var unit:UnitVO;
            var unit_list:* = new Array("101", "102", "103", "110", "120", "130", "201", "202", "203", "210", "220", "230", "301", "302", "303", "310", "320", "330", "390", "401", "402", "403", "410", "420", "430", "501", "502", "503", "510", "520", "530", "590", "601", "602", "603", "610", "620", "630", "701", "711", "721", "731", "741", "751", "761", "771", "781", "1001", "1003", "1005", "1011", "1012", "1014", "1021", "1022", "1023", "1031", "1032", "1033", "1041", "1042", "1051", "1052", "1061", "1062", "1063");
            var animationProxy:* = AnimationProxy(facade.retrieveProxy(AnimationProxy.NAME));
            var _loc_2:int = 0;
            var _loc_3:* = unit_list;
            while (_loc_3 in _loc_2)
            {
                
                job_code = _loc_3[_loc_2];
                unit = new UnitVO();
                unit.loader.contentLoaderInfo.addEventListener(Event.COMPLETE, function (event:Event) : void
            {
                unit.checkMotion();
                trace("check!");
                return;
            }// end function
            );
                unit.loader.loadBytes(animationProxy.getUnitAnimation(job_code, unit.gender));
            }
            return;
        }// end function

        private function buildFinishParams() : Object
        {
            var _loc_3:Object = null;
            var _loc_1:Object = {cs:Utils.createHash(getUnitIds(allPlayerUnitsIncludeDead.concat(allEnemyUnitsIncludeDead)).concat(startTime)), turn:_tacticsVO.turn, ally_units:countKills(allPlayerUnitsIncludeDead, TEAM_PLAYER), other_ally_units:countKills(allOtherAllyUnitsIncludeDead, TEAM_PLAYER)};
            _loc_1.enemy_units = countKills(allEnemyUnitsIncludeDead, TEAM_ENEMY);
            var _loc_2:int = 0;
            for each (_loc_3 in _loc_1.ally_units)
            {
                
                if (vsPc() || _tacticsType == TacticsVO.TACTICS_TYPE_COLONY)
                {
                    _loc_2 = _loc_2 + (_loc_3.pc_kill || []).length;
                }
                if (!vsPc() || _tacticsType == TacticsVO.TACTICS_TYPE_COLONY)
                {
                    _loc_2 = _loc_2 + (_loc_3.npc_kill || []).length;
                }
            }
            _loc_1.another_dead = allEnemyUnitsIncludeDead.length - _battleLogicProxy.numEnemyUnits - _loc_2;
            return _loc_1;
        }// end function

        public function get targetPlayerId() : int
        {
            return _targetPlayerId;
        }// end function

        public function vsPc() : Boolean
        {
            return _targetPlayerId != 0;
        }// end function

        public function get returnToMap() : Boolean
        {
            return _returnToMap;
        }// end function

        override public function finish(param1:String = "", param2:String = "") : void
        {
            var json:String;
            var api:String;
            var raidTimerProxy:RaidTimerProxy;
            var eventName:* = param1;
            var finishedBy:* = param2;
            stopBattleFinishChecker();
            try
            {
                if (limitBattle)
                {
                    raidTimerProxy = RaidTimerProxy(facade.retrieveProxy(RaidTimerProxy.NAME));
                    raidTimerProxy.stop();
                }
                eventName = eventName != "" ? (eventName) : (_battleLogicProxy.numPlayerUnits > 0 ? (clearEvent) : (failEvent));
                json = JSON.encode(buildFinishParams());
                api;
                switch(_tacticsType)
                {
                    case TacticsVO.TACTICS_TYPE_NORMAL:
                    case TacticsVO.TACTICS_TYPE_CONTINUATION:
                    {
                        api;
                        break;
                    }
                    case TacticsVO.TACTICS_TYPE_SHAM:
                    case TacticsVO.TACTICS_TYPE_MATCH:
                    case TacticsVO.TACTICS_TYPE_RAID:
                    {
                        api;
                        break;
                    }
                    case TacticsVO.TACTICS_TYPE_COLONY:
                    {
                        api;
                        break;
                    }
                    default:
                    {
                        break;
                    }
                }
                loadWithJson(api, eventName, FINISH_ERROR, handleFinishComplete(finishedBy), json);
            }
            catch (e:Error)
            {
                sendNotification(ErrorReportProxy.REPORT_ERROR, new ErrorReportVO(TACTICS_TYPE_LABEL[_tacticsType], e.message));
            }
            return;
        }// end function

        public function set returnToHome(param1:Boolean) : void
        {
            _returnToHome = param1;
            return;
        }// end function

        public function stopOrderFinishChecker() : void
        {
            if (orderFinishCheckerTimer)
            {
                orderFinishCheckerTimer.stop();
                orderFinishCheckerTimer = null;
                trace("OrderFinishChecker:Stop");
            }
            return;
        }// end function

        public function initialize(param1:Object) : TacticsVO
        {
            var _loc_13:int = 0;
            var _loc_14:GridVO = null;
            var _loc_15:UnitVO = null;
            var _loc_2:* = param1.allyUnits;
            var _loc_3:* = param1.guildAllyUnits;
            var _loc_4:* = param1.otherAllyUnits;
            var _loc_5:* = param1.enemyUnits;
            var _loc_6:* = param1.map;
            var _loc_7:int = 0;
            if (param1.targetPlayerId)
            {
                _loc_7 = param1.targetPlayerId;
            }
            var _loc_8:* = SelectUnitProxy(facade.retrieveProxy(SelectUnitProxy.NAME));
            _battleLogicProxy = BattleLogicProxy(facade.retrieveProxy(BattleLogicProxy.NAME));
            _tacticsVO = new TacticsVO();
            _tacticsVO.grids = _loc_6.grids;
            _tacticsVO.aliveUnits = _loc_2.concat(_loc_3).concat(_loc_4).concat(_loc_5);
            _tacticsVO.killedUnits = new Array();
            _tacticsVO.mapObjects = aliveUnits.concat(_loc_6.staticObjects);
            _tacticsVO.map = _loc_6;
            _tacticsVO.tacticsType = _tacticsType;
            _tacticsVO.isRestarted = _isRestarted;
            _tacticsVO.myTeam = 0;
            _tacticsVO.turnIndex = 0;
            _tacticsVO.turn = 1;
            _tacticsVO.winCondition = param1.winCondition;
            _tacticsVO.winConditionTargetId = param1.winConditionTargetId;
            _tacticsVO.loseCondition = param1.loseCondition;
            _tacticsVO.loseConditionDefenseTargetId = param1.loseConditionDefenseTargetId;
            var _loc_9:* = generateWinStatement(_loc_5);
            var _loc_10:* = generateLoseStatement(allyUnits);
            if (_turnLimit != 0)
            {
                _tacticsVO.stageName = _targetName + (vsPc() ? (Utils.i18n("tacticsProxyFort")) : (""));
                _tacticsVO.missionStatement = _loc_10 + Utils.i18n("tacticsProxyWinCondition", _turnLimit) + _loc_9;
                _tacticsVO.turnLimit = _turnLimit;
            }
            else
            {
                _tacticsVO.stageName = _targetName;
                _tacticsVO.missionStatement = _loc_10 + Utils.i18n("tacticsProxySub") + _loc_9;
            }
            var _loc_11:Array = [0, 0, 0, 0, 0, 0];
            var _loc_12:int = 0;
            while (_loc_12 < COLS)
            {
                
                _loc_13 = 0;
                while (_loc_13 < ROWS)
                {
                    
                    _loc_14 = _tacticsVO.grids[_loc_12][_loc_13];
                    if (_loc_14.positionType == GridVO.POSITION_TYPE_PLAYER)
                    {
                        var _loc_16:* = _loc_11;
                        var _loc_17:* = GridVO.POSITION_TYPE_PLAYER;
                        _loc_16[_loc_17] = _loc_11[GridVO.POSITION_TYPE_PLAYER] + 1;
                        _loc_15 = this.playerUnits[_loc_11[GridVO.POSITION_TYPE_PLAYER]++];
                    }
                    else if (_loc_14.positionType == GridVO.POSITION_TYPE_ENEMY)
                    {
                        var _loc_16:* = _loc_11;
                        var _loc_17:* = GridVO.POSITION_TYPE_ENEMY;
                        _loc_16[_loc_17] = _loc_11[GridVO.POSITION_TYPE_ENEMY] + 1;
                        _loc_15 = this.enemyUnits[_loc_11[GridVO.POSITION_TYPE_ENEMY]++];
                    }
                    else if (_loc_14.positionType == GridVO.POSITION_TYPE_ALLY)
                    {
                        var _loc_16:* = _loc_11;
                        var _loc_17:* = GridVO.POSITION_TYPE_ALLY;
                        _loc_16[_loc_17] = _loc_11[GridVO.POSITION_TYPE_ALLY] + 1;
                        _loc_15 = allyUnits[_loc_11[GridVO.POSITION_TYPE_ALLY]++];
                    }
                    else if (_loc_14.positionType == GridVO.POSITION_TYPE_ENEMY_ALLY)
                    {
                        var _loc_16:* = _loc_11;
                        var _loc_17:* = GridVO.POSITION_TYPE_ENEMY_ALLY;
                        _loc_16[_loc_17] = _loc_11[GridVO.POSITION_TYPE_ENEMY_ALLY] + 1;
                        _loc_15 = enemyAllyUnits[_loc_11[GridVO.POSITION_TYPE_ENEMY_ALLY]++];
                    }
                    else
                    {
                        ;
                    }
                    if (_loc_15)
                    {
                        _loc_15.mapx = _loc_14.mapx;
                        _loc_15.mapy = _loc_14.mapy;
                        _loc_15.direction = _loc_14.direction;
                    }
                    _loc_13++;
                }
                _loc_12++;
            }
            for each (_loc_15 in _tacticsVO.aliveUnits)
            {
                
                grids[_loc_15.mapx][_loc_15.mapy].unit = _loc_15;
            }
            _tacticsVO.aliveUnits.sortOn("realAgility", Array.NUMERIC | Array.DESCENDING);
            _battleLogicProxy.tacticsVO = _tacticsVO;
            if (vsPc())
            {
                if (_loc_5.length <= 0)
                {
                    finish(DEFAULT_WIN);
                    throw new NoEnemyFoundError();
                }
            }
            startBattleFinishChecker();
            return _tacticsVO;
        }// end function

        public function get state() : int
        {
            return _tacticsVO.state;
        }// end function

        public function get isContinuationBattle() : Boolean
        {
            return _tacticsType == TacticsVO.TACTICS_TYPE_CONTINUATION;
        }// end function

        public function get isColonyBattle() : Boolean
        {
            return _tacticsType == TacticsVO.TACTICS_TYPE_COLONY;
        }// end function

        public function set startTime(param1:int) : void
        {
            _start_time = param1;
            return;
        }// end function

        public function set limitBattle(param1:Boolean) : void
        {
            _limit_battle = param1;
            return;
        }// end function

        public function get stageName() : String
        {
            return _tacticsVO.stageName;
        }// end function

        override protected function proceed() : void
        {
            _battleLogicProxy.proceed();
            return;
        }// end function

        public function get defenceBonus() : int
        {
            return _defenceBonus;
        }// end function

        public function finishRaidByTurnLimit() : void
        {
            finish("", FinishVO.FINISHED_BY_TURN_LIMIT_OVER);
            return;
        }// end function

        private function allyUnitsFactory(param1:Object, param2:PlayerProxy, param3:UnitProxy) : Array
        {
            var _loc_9:Object = null;
            var _loc_10:UnitVO = null;
            var _loc_4:* = new Array();
            if (!param1.ally_units || param1.ally_units.length <= 0)
            {
                return _loc_4;
            }
            var _loc_5:* = param2.playerVO.hasLeyLine(4) ? (5) : (0);
            var _loc_6:* = param2.playerVO.hasLeyLine(10) ? (5) : (0);
            var _loc_7:* = param2.playerVO.hasLeyLine(13) ? (2) : (0);
            var _loc_8:* = param2.playerVO.hasLeyLine(16) ? (2) : (0);
            for each (_loc_9 in param1.ally_units)
            {
                
                _loc_10 = param3.unitFactory(_loc_9.unit);
                if (_loc_10.playerId != param2.playerVO.playerId || _loc_9.unit.is_ai)
                {
                    _loc_10.isAI = true;
                    _loc_10.ai = new AiVO(0);
                }
                _loc_10.attackBonus = attackBonus;
                _loc_10.avoidance_rate_add = _loc_5;
                _loc_10.hit_rate_add = _loc_6;
                _loc_10.defense_add = _loc_7;
                _loc_10.offense_add = _loc_8;
                _loc_10.team = TEAM_PLAYER;
                _loc_4.push(_loc_10);
            }
            return _loc_4;
        }// end function

        public function get attackBonus() : int
        {
            return _attackBonus;
        }// end function

        private function isNotSoulCrystal(param1, param2:int, param3:Array) : Boolean
        {
            return param1.name != Utils.i18n("generalSoulSphere");
        }// end function

        public function get targetName() : String
        {
            return _targetName;
        }// end function

        private function applySkillBuffs(param1:UnitVO) : void
        {
            var _loc_3:String = null;
            var _loc_2:* = SkillProxy.getSkillBuffs(param1);
            for (_loc_3 in _loc_2)
            {
                
                param1[_loc_3] = param1[_loc_3] + _loc_2[_loc_3];
            }
            return;
        }// end function

        public function get enemyAllyUnits() : Array
        {
            if (_tacticsType == TacticsVO.TACTICS_TYPE_COLONY)
            {
                return findUnitsByTeam(TEAM_ENEMY).find("isNpc", false);
            }
            return findUnitsByTeamAndPlayerId(TEAM_ENEMY, targetPlayerId, true);
        }// end function

        public function get leyLineFlag() : int
        {
            return _leyLineFlag;
        }// end function

        public function set unitsInLastResetBattle(param1:Array) : void
        {
            _unitsInLastResetBattle = param1;
            return;
        }// end function

        private function get allEnemyUnitsIncludeDead() : Array
        {
            return enemyUnits.concat(enemyAllyUnits).concat(killedUnits.find("team", TEAM_ENEMY));
        }// end function

        private function guildAllyUnitsFactory(param1:Object, param2:PlayerProxy, param3:UnitProxy) : Array
        {
            var _loc_9:Object = null;
            var _loc_10:UnitVO = null;
            var _loc_4:* = new Array();
            if (!param1.guild_ally_units || param1.guild_ally_units.length <= 0)
            {
                return _loc_4;
            }
            var _loc_5:* = param2.playerVO.hasLeyLine(4) ? (5) : (0);
            var _loc_6:* = param2.playerVO.hasLeyLine(10) ? (5) : (0);
            var _loc_7:* = param2.playerVO.hasLeyLine(13) ? (2) : (0);
            var _loc_8:* = param2.playerVO.hasLeyLine(16) ? (2) : (0);
            for each (_loc_9 in param1.guild_ally_units)
            {
                
                _loc_10 = param3.guildAllyUnitFactory(_loc_9.unit);
                _loc_10.attackBonus = attackBonus;
                _loc_10.avoidance_rate_add = _loc_5;
                _loc_10.hit_rate_add = _loc_6;
                _loc_10.defense_add = _loc_7;
                _loc_10.offense_add = _loc_8;
                _loc_10.team = TEAM_PLAYER;
                _loc_4.push(_loc_10);
            }
            return _loc_4;
        }// end function

        public function get enemyUnits() : Array
        {
            if (vsPc())
            {
                return findUnitsByTeamAndPlayerId(TEAM_ENEMY, targetPlayerId, false);
            }
            if (_tacticsType == TacticsVO.TACTICS_TYPE_COLONY)
            {
                return findUnitsByTeam(TEAM_ENEMY).find("isNpc", true);
            }
            return findUnitsByTeam(TEAM_ENEMY);
        }// end function

        override public function walk(param1:WalkVO) : void
        {
            _battleLogicProxy.pcWalk(param1);
            return;
        }// end function

        public function set healRate(param1:Number) : void
        {
            _healRate = param1;
            return;
        }// end function

        public function startContinuationBattle(param1:Array = null, param2:int = 0) : void
        {
            var playerUnits:* = param1;
            var battle_level:* = param2;
            var homeProxy:* = HomeProxy(facade.retrieveProxy(HomeProxy.NAME));
            var mapProxy:* = MapProxy(facade.retrieveProxy(MapProxy.NAME));
            mapProxy.loadBlockImage();
            firstContinuation = playerUnits;
            _tacticsType = TacticsVO.TACTICS_TYPE_CONTINUATION;
            var units:* = playerUnits ? (playerUnits) : ([]);
            var unitIds:* = units.map(function (param1:UnitVO, param2:int, param3:Array) : int
            {
                return param1.unitId;
            }// end function
            );
            var json:* = JSON.encode({unit_ids:unitIds, continuation:true, level:battle_level, evilPointType:homeProxy.evilPointType});
            loadWithJson("/api/tactics/start", START_CONTINUATION_TACTICS, START_ERROR, function (param1:Object) : Object
            {
                return handleStartComplete(param1);
            }// end function
            , json);
            return;
        }// end function

        public function startColonyBattle(param1:Array) : void
        {
            var playerUnits:* = param1;
            var mapProxy:* = MapProxy(facade.retrieveProxy(MapProxy.NAME));
            mapProxy.loadBlockImage();
            _tacticsType = TacticsVO.TACTICS_TYPE_COLONY;
            var unitIds:* = playerUnits.map(function (param1:UnitVO, param2:int, param3:Array) : int
            {
                return param1.unitId;
            }// end function
            );
            var homeProxy:* = HomeProxy(facade.retrieveProxy(HomeProxy.NAME));
            var json:* = JSON.encode({unit_ids:unitIds, colony_id:homeProxy.colonyId, battle_type:homeProxy.colonyBattleType});
            loadWithJson("/api/colony_battles/start", START_COMPLETE, START_ERROR, handleStartComplete, json);
            return;
        }// end function

        private function handleStartCompleteForRestart(param1:Object, param2:int = 0) : Object
        {
            return handleStartComplete(param1, param2, true);
        }// end function

        public function get unitsInLastResetBattle() : Array
        {
            return _unitsInLastResetBattle;
        }// end function

        public function set damageRate(param1:Number) : void
        {
            _damageRate = param1;
            return;
        }// end function

        private function otherAllyUnitsFactory(param1:Object, param2:PlayerProxy, param3:UnitProxy) : Array
        {
            var _loc_9:Object = null;
            var _loc_10:UnitVO = null;
            var _loc_4:* = new Array();
            if (!param1.other_ally_units || param1.other_ally_units.length <= 0)
            {
                return _loc_4;
            }
            var _loc_5:* = param2.playerVO.hasLeyLine(4) ? (5) : (0);
            var _loc_6:* = param2.playerVO.hasLeyLine(10) ? (5) : (0);
            var _loc_7:* = param2.playerVO.hasLeyLine(13) ? (2) : (0);
            var _loc_8:* = param2.playerVO.hasLeyLine(16) ? (2) : (0);
            for each (_loc_9 in param1.other_ally_units)
            {
                
                _loc_10 = param3.otherAllyUnitFactory(_loc_9.other_unit);
                _loc_10.attackBonus = attackBonus;
                _loc_10.avoidance_rate_add = _loc_5;
                _loc_10.hit_rate_add = _loc_6;
                _loc_10.defense_add = _loc_7;
                _loc_10.offense_add = _loc_8;
                _loc_10.team = TEAM_PLAYER;
                _loc_4.push(_loc_10);
            }
            return _loc_4;
        }// end function

        public function get isRestarted() : Boolean
        {
            return _isRestarted;
        }// end function

        public function get healRate() : Number
        {
            return _healRate;
        }// end function

        override public function selectDirection(param1:DirectionVO) : void
        {
            _battleLogicProxy.pcSelectDirection(param1);
            return;
        }// end function

        private function get allOtherAllyUnitsIncludeDead() : Array
        {
            return allyUnits.concat(killedUnits.find("team", TEAM_PLAYER).find("teamType", UnitProxy.TEAM_TYPE_OTHER));
        }// end function

        public function get damageRate() : Number
        {
            return _damageRate;
        }// end function

        private function get killedUnits() : Array
        {
            return _tacticsVO.killedUnits;
        }// end function

        private function startOrderFinishChecker() : void
        {
            trace("OrderFinishChecker:Start");
            stopOrderFinishChecker();
            var timerRate:int;
            if (tacticsType == TACTICS_TYPE_SHAM || tacticsType == TACTICS_TYPE_MATCH)
            {
                timerRate;
            }
            orderFinishCheckerTimer = new Timer(1000 * 30 * timerRate);
            orderFinishCheckerTimer.addEventListener(TimerEvent.TIMER, function (event:TimerEvent) : void
            {
                trace("OrderFinishChecker:Hit");
                stopOrderFinishChecker();
                var _loc_2:* = TacticsOrderProxy(facade.retrieveProxy(TacticsOrderProxy.NAME));
                _loc_2.resetQueue();
                _battleLogicProxy.finish(finishVO);
                sendNotification(TacticsMediator.ORDER_EXECUTED);
                return;
            }// end function
            );
            orderFinishCheckerTimer.start();
            return;
        }// end function

    }
}
