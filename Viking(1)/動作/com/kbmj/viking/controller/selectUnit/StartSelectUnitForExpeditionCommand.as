package com.kbmj.viking.controller.selectUnit
{
    import com.kbmj.viking.proxy.home.*;
    import com.kbmj.viking.proxy.selectUnit.*;
    import org.puremvc.as3.interfaces.*;
    import org.puremvc.as3.patterns.command.*;

    public class StartSelectUnitForExpeditionCommand extends SimpleCommand
    {
        public static const START_SELECT_UNIT:String = NAME + "/notes/StartSelectUnit";
        public static const NAME:String = "StartSelectUnitForExpeditionCommand";
        public static const NO_UNITS_FOR_BATTLE:String = NAME + "/notes/noUnitsForBattle";

        public function StartSelectUnitForExpeditionCommand()
        {
            return;
        }// end function

        override public function execute(param1:INotification) : void
        {
            var _loc_2:* = SelectUnitProxy(facade.retrieveProxy(SelectUnitProxy.NAME));
            var _loc_3:* = TaskProxy(facade.retrieveProxy(TaskProxy.NAME));
            var _loc_4:* = param1.getBody() as Array;
            if ((param1.getBody() as Array).length == 0)
            {
                sendNotification(NO_UNITS_FOR_BATTLE);
                return;
            }
            _loc_2.units = _loc_4;
            switch(param1.getName())
            {
                case HomeProxy.START_EXPEDITION_SELECT_UNIT:
                {
                    _loc_2.selectUnitFor = SelectUnitProxy.FOR_EXPEDITION;
                    break;
                }
                case HomeProxy.START_EXPEDITION2_SELECT_UNIT:
                {
                    _loc_2.selectUnitFor = SelectUnitProxy.FOR_EXPEDITION2;
                    break;
                }
                case HomeProxy.START_EXPEDITION3_SELECT_UNIT:
                {
                    _loc_2.selectUnitFor = SelectUnitProxy.FOR_EXPEDITION3;
                    break;
                }
                default:
                {
                    break;
                }
            }
            _loc_3.suspendTimer();
            sendNotification(START_SELECT_UNIT);
            return;
        }// end function

    }
}
