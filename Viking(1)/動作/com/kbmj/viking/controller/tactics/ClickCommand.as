package com.kbmj.viking.controller.tactics
{
    import com.kbmj.viking.lib.*;
    import com.kbmj.viking.proxy.tactics.*;
    import com.kbmj.viking.view.tactics.*;
    import com.kbmj.viking.vo.tactics.*;
    import flash.geom.*;
    import org.puremvc.as3.interfaces.*;
    import org.puremvc.as3.patterns.command.*;

    public class ClickCommand extends SimpleCommand
    {
        public static const NAME:String = "ClickCommand";

        public function ClickCommand()
        {
            return;
        }// end function

        override public function execute(param1:INotification) : void
        {
            var _loc_6:int = 0;
            var _loc_2:* = BattleLogicProxy(facade.retrieveProxy(BattleLogicProxy.NAME));
            var _loc_3:* = param1.getBody().point as Point;
            var _loc_4:* = param1.getBody().state as int;
            var _loc_5:* = _loc_2.selectedUnit;
            switch(_loc_4)
            {
                case TacticsMediator.STATE_SELECT_DESTINATION:
                {
                    trace("destination selected");
                    if (_loc_5)
                    {
                        _loc_2.pcWalk(new WalkVO(_loc_5, _loc_3));
                    }
                    break;
                }
                case TacticsMediator.STATE_SELECT_DIRECTION:
                {
                    if (_loc_5)
                    {
                        _loc_6 = Utils.getDirection(_loc_5.position, _loc_3);
                        _loc_2.pcSelectDirection(new DirectionVO(_loc_5, null, _loc_6));
                    }
                    break;
                }
                case TacticsMediator.STATE_SELECT_TARGET:
                {
                    _loc_2.pcAction(new AttackVO(_loc_5, _loc_3));
                    break;
                }
                case TacticsMediator.STATE_IDLE:
                {
                    break;
                }
                default:
                {
                    break;
                }
            }
            return;
        }// end function

    }
}
