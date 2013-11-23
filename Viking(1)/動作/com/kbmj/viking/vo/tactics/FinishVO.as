package com.kbmj.viking.vo.tactics
{

    public class FinishVO extends Object
    {
        private var _cheated:Boolean;
        private var _finishedBy:String;
        private var _reward:RewardVO;
        private var _won:Boolean;
        private var _targetName:String;
        private var _tacticsType:int;
        private var _continueBattle:Boolean;
        private var _wipeout:Boolean;
        public static const FINISHED_BY_TIME_OVER:String = "timeOver";
        public static const FINISHED_BY_TURN_LIMIT_OVER:String = "turnLimitOver";

        public function FinishVO(param1:String = "") : void
        {
            _finishedBy = param1;
            return;
        }// end function

        public function get targetName() : String
        {
            return _targetName;
        }// end function

        public function set wipeout(param1:Boolean) : void
        {
            _wipeout = param1;
            return;
        }// end function

        public function set finishedBy(param1:String) : void
        {
            _finishedBy = param1;
            return;
        }// end function

        public function get isRaid() : Boolean
        {
            return _tacticsType == TacticsVO.TACTICS_TYPE_RAID;
        }// end function

        public function get won() : Boolean
        {
            return _won;
        }// end function

        public function get needRestart() : Boolean
        {
            return isRaid || isMultiplayer;
        }// end function

        public function set reward(param1:RewardVO) : void
        {
            _reward = param1;
            return;
        }// end function

        public function get tacticsType() : int
        {
            return _tacticsType;
        }// end function

        public function get wipeout() : Boolean
        {
            return _wipeout;
        }// end function

        public function get finishedBy() : String
        {
            return _finishedBy;
        }// end function

        public function set tacticsType(param1:int) : void
        {
            _tacticsType = param1;
            return;
        }// end function

        public function set cheated(param1:Boolean) : void
        {
            _cheated = param1;
            return;
        }// end function

        public function set won(param1:Boolean) : void
        {
            _won = param1;
            return;
        }// end function

        public function get reward() : RewardVO
        {
            return _reward;
        }// end function

        public function get cheated() : Boolean
        {
            return _cheated;
        }// end function

        public function set targetName(param1:String) : void
        {
            _targetName = param1;
            return;
        }// end function

        public function get isMultiplayer() : Boolean
        {
            return _tacticsType == TacticsVO.TACTICS_TYPE_MULTIPLAYER;
        }// end function

        public function set continueBattle(param1:Boolean) : void
        {
            _continueBattle = param1;
            return;
        }// end function

        public function get continueBattle() : Boolean
        {
            return _continueBattle;
        }// end function

    }
}
