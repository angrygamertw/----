package com.kbmj.viking.proxy.tactics
{
    import com.kbmj.viking.proxy.*;
    import com.kbmj.viking.vo.tactics.*;
    import flash.geom.*;

    public class BaseTacticsProxy extends LoaderProxy
    {
        protected var _tacticsType:int;
        protected var _tacticsVO:TacticsVO;
        protected var _turnLimit:int = 0;
        public static const TACTICS_TYPE_NORMAL:int = 0;
        public static const TACTICS_TYPE_SHAM:int = 4;
        public static const TACTICS_TYPE_RAID:int = 1;
        public static const NAME:String = "BaseTacticsProxy";
        public static const TACTICS_TYPE_MATCH:int = 6;
        public static const TACTICS_TYPE_CONTINUATION:int = 5;
        public static const TACTICS_TYPE_COLONY:int = 2;

        public function BaseTacticsProxy(param1:String)
        {
            _tacticsVO = new TacticsVO();
            super(param1);
            return;
        }// end function

        public function get loseCondition() : int
        {
            return _tacticsVO.loseCondition;
        }// end function

        public function walk(param1:WalkVO) : void
        {
            throw new Error("Should Override this method.");
        }// end function

        public function get winConditionTargetId() : int
        {
            return _tacticsVO.winConditionTargetId;
        }// end function

        public function get loseConditionDefenseTargetId() : int
        {
            return _tacticsVO.loseConditionDefenseTargetId;
        }// end function

        public function get selectedUnit() : UnitVO
        {
            return _tacticsVO.selectedUnit;
        }// end function

        public function startMoving() : void
        {
            proceed();
            return;
        }// end function

        public function finish(param1:String = "", param2:String = "") : void
        {
            throw new Error("Should Override this method.");
        }// end function

        public function get isRaid() : Boolean
        {
            return _tacticsType == TACTICS_TYPE_RAID;
        }// end function

        public function getUnitAt(param1:Point) : UnitVO
        {
            return grids[param1.x][param1.y].unit;
        }// end function

        public function get winCondition() : int
        {
            return _tacticsVO.winCondition;
        }// end function

        public function get aliveUnits() : Array
        {
            return _tacticsVO.aliveUnits;
        }// end function

        public function cancelWalk(param1:CancelWalkVO) : void
        {
            throw new Error("Should Override this method.");
        }// end function

        public function get scenarioObjects() : Array
        {
            return _tacticsVO.scenarioObjects;
        }// end function

        public function get hasExtraCondition() : Boolean
        {
            return isRaid || _turnLimit > 0;
        }// end function

        public function get grids() : Array
        {
            return _tacticsVO.grids;
        }// end function

        protected function proceed() : void
        {
            return;
        }// end function

        public function equip(param1:EquipVO) : void
        {
            throw new Error("Should Override this method.");
        }// end function

        public function selectDirection(param1:DirectionVO) : void
        {
            throw new Error("Should Override this method.");
        }// end function

        public function action(param1:AttackVO) : void
        {
            throw new Error("Should Override this method.");
        }// end function

        public function useItem(param1:UseItemVO) : void
        {
            throw new Error("Should Override this method.");
        }// end function

        public function wait(param1:WaitVO) : void
        {
            throw new Error("Should Override this method.");
        }// end function

    }
}
