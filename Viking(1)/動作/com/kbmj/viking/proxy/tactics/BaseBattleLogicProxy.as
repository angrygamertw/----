package com.kbmj.viking.proxy.tactics
{
    import com.kbmj.viking.vo.tactics.*;
    import flash.geom.*;
    import org.puremvc.as3.patterns.proxy.*;

    public class BaseBattleLogicProxy extends Proxy
    {
        protected var _tacticsVO:TacticsVO;
        protected var _grids:Array;
        public static const INVALID_ATTACK_TARGET:String = NAME + "/notes/orders/invalidAttackTarget";
        public static const INVALID_DESTINATION:String = NAME + "/notes/orders/invalidDestination";
        public static const NAME:String = "BaseBattleLogicProxy";
        public static const SET_ACTIVE_UNIT:String = NAME + "/notes/setActiveUnit";
        public static const ENQUEUE_ORDER:String = NAME + "/notes/orders/enqueueOrder";
        public static const TURN_END:String = NAME + "/notes/turnEND";
        public static const INVALID_DIRECTION:String = NAME + "/notes/orders/invalidDirection";

        public function BaseBattleLogicProxy(param1:String)
        {
            _tacticsVO = new TacticsVO();
            super(param1);
            return;
        }// end function

        public function startMoving() : void
        {
            proceed();
            return;
        }// end function

        public function get grids() : Array
        {
            return _tacticsVO.grids;
        }// end function

        public function proceed() : void
        {
            return;
        }// end function

        public function set tacticsVO(param1:TacticsVO) : void
        {
            _tacticsVO = param1;
            return;
        }// end function

        public function getUnitAt(param1:Point) : UnitVO
        {
            return grids[param1.x][param1.y].unit;
        }// end function

    }
}
