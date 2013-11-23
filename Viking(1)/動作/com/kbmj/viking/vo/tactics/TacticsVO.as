package com.kbmj.viking.vo.tactics
{
    import com.kbmj.viking.lib.*;

    public class TacticsVO extends Object
    {
        private var _turnUnit:UnitVO;
        private var _raidTargetName:String;
        private var _loseCondition:int;
        private var _state:int = 0;
        private var _map:MapVO;
        private var _selectedUnit:UnitVO;
        private var _missionStatement:String;
        private var _isRestarted:Boolean;
        private var _stageName:String;
        private var _winConditionTargetId:int;
        private var _killedUnits:Array;
        private var _scenarioObjects:Array;
        private var _mapObjects:Array;
        private var _turnLimit:int = 0;
        private var _aliveUnits:Array;
        private var _myTeam:int;
        private var _winStatement:String;
        private var _turnIndex:int;
        private var _tacticsType:int;
        private var _loseStatement:String;
        private var _turn:int = 1;
        private var _loseConditionDefenseTargetId:int;
        private var _grids:Array;
        private var _winCondition:int;
        public static const TACTICS_TYPE_SHAM:int = 4;
        public static const STATE_WAIT:int = 8;
        public static const LOSE_CONDITION_DEFENSE_TARGET:int = 2;
        public static const WIN_CONDITION_EXTERMINATION:int = 0;
        public static const TACTICS_TYPE_RAID:int = 1;
        public static const LOSE_CONDITION_ENDURANCE:int = 1;
        public static const TACTICS_TYPE_MATCH:int = 6;
        public static const STATE_ATTACK:int = 2;
        public static const TACTICS_TYPE_MULTIPLAYER:int = 3;
        public static const STATE_COMMAND:int = 4;
        public static const STATE_MOVE:int = 1;
        public static const WIN_CONDITION_ENDURANCE:int = 1;
        public static const LOSE_CONDITION_EXTERMINATION:int = 0;
        public static const STATE_SELECT_TARGET:int = 5;
        public static const TACTICS_TYPE_NORMAL:int = 0;
        public static const STATE_IDLE:int = 0;
        public static const STATE_SELECT_DIRECTION:int = 3;
        public static const TACTICS_TYPE_CONTINUATION:int = 5;
        public static const STATE_SELECT_DESTINATION:int = 6;
        public static const TACTICS_TYPE_COLONY:int = 2;
        public static const STATE_SELECT_COMMAND:int = 7;
        public static const WIN_CONDITION_TARGET:int = 2;

        public function TacticsVO()
        {
            return;
        }// end function

        public function set turnLimit(param1:int) : void
        {
            _turnLimit = param1;
            return;
        }// end function

        public function set missionStatement(param1:String) : void
        {
            _missionStatement = param1;
            return;
        }// end function

        public function get raidTargetName() : String
        {
            return _raidTargetName;
        }// end function

        public function get winStatement() : String
        {
            return _winStatement;
        }// end function

        public function set loseCondition(param1:int) : void
        {
            _loseCondition = param1;
            return;
        }// end function

        public function get state() : int
        {
            return _state;
        }// end function

        public function set winStatement(param1:String) : void
        {
            _winStatement = param1;
            return;
        }// end function

        public function set selectedUnit(param1:UnitVO) : void
        {
            _selectedUnit = param1;
            return;
        }// end function

        public function set loseStatement(param1:String) : void
        {
            _loseStatement = param1;
            return;
        }// end function

        public function get mapObjects() : Array
        {
            return _mapObjects;
        }// end function

        public function set loseConditionDefenseTargetId(param1:int) : void
        {
            _loseConditionDefenseTargetId = param1;
            return;
        }// end function

        public function get tacticsType() : int
        {
            return _tacticsType;
        }// end function

        public function get winCondition() : int
        {
            return _winCondition;
        }// end function

        public function get loseStatement() : String
        {
            return _loseStatement;
        }// end function

        public function get turnUnit() : UnitVO
        {
            return aliveUnits[_turnIndex];
        }// end function

        public function get loseCondition() : int
        {
            return _loseCondition;
        }// end function

        public function get aliveUnits() : Array
        {
            return _aliveUnits;
        }// end function

        public function set winConditionTargetId(param1:int) : void
        {
            _winConditionTargetId = param1;
            return;
        }// end function

        public function get stageName() : String
        {
            return _stageName;
        }// end function

        public function set turnIndex(param1:int) : void
        {
            _turnIndex = param1;
            return;
        }// end function

        public function get turnLimit() : int
        {
            return _turnLimit;
        }// end function

        public function get isRaidOrColony() : Boolean
        {
            return isRaid || _tacticsType == TACTICS_TYPE_COLONY;
        }// end function

        public function set tacticsType(param1:int) : void
        {
            _tacticsType = param1;
            return;
        }// end function

        public function get missionStatement() : String
        {
            return _missionStatement;
        }// end function

        public function set winCondition(param1:int) : void
        {
            _winCondition = param1;
            return;
        }// end function

        public function get selectedUnit() : UnitVO
        {
            return _selectedUnit;
        }// end function

        public function set map(param1:MapVO) : void
        {
            _map = param1;
            return;
        }// end function

        public function set aliveUnits(param1:Array) : void
        {
            _aliveUnits = param1;
            return;
        }// end function

        public function set raidTargetName(param1:String) : void
        {
            _raidTargetName = param1;
            return;
        }// end function

        public function set state(param1:int) : void
        {
            _state = param1;
            return;
        }// end function

        public function get isMultiplayer() : Boolean
        {
            return _tacticsType == TACTICS_TYPE_MULTIPLAYER;
        }// end function

        public function get turnIndex() : int
        {
            return _turnIndex;
        }// end function

        public function set isRestarted(param1:Boolean) : void
        {
            _isRestarted = param1;
            return;
        }// end function

        public function set grids(param1:Array) : void
        {
            _grids = param1;
            return;
        }// end function

        public function set scenarioObjects(param1:Array) : void
        {
            _scenarioObjects = param1;
            return;
        }// end function

        public function set stageName(param1:String) : void
        {
            _stageName = param1;
            return;
        }// end function

        public function set killedUnits(param1:Array) : void
        {
            _killedUnits = param1;
            return;
        }// end function

        public function get scenarioObjects() : Array
        {
            return _scenarioObjects;
        }// end function

        public function set mapObjects(param1:Array) : void
        {
            _mapObjects = param1;
            return;
        }// end function

        public function set myTeam(param1:int) : void
        {
            _myTeam = param1;
            return;
        }// end function

        public function get map() : MapVO
        {
            return _map;
        }// end function

        public function get isRaid() : Boolean
        {
            return _tacticsType == TACTICS_TYPE_RAID;
        }// end function

        public function get grids() : Array
        {
            return _grids;
        }// end function

        public function get myTeam() : int
        {
            return _myTeam;
        }// end function

        public function get killedUnits() : Array
        {
            return _killedUnits;
        }// end function

        public function get isRestarted() : Boolean
        {
            return _isRestarted;
        }// end function

        public function get winConditionTargetId() : int
        {
            return _winConditionTargetId;
        }// end function

        public function get loseConditionDefenseTargetId() : int
        {
            return _loseConditionDefenseTargetId;
        }// end function

        public function set turn(param1:int) : void
        {
            _turn = SecurityUtils.encrypt(param1);
            return;
        }// end function

        public function get turn() : int
        {
            return SecurityUtils.decrypt(_turn);
        }// end function

    }
}
