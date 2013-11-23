package com.kbmj.viking.controller.selectUnit
{
    import com.kbmj.viking.proxy.home.*;
    import com.kbmj.viking.proxy.selectUnit.*;
    import org.puremvc.as3.interfaces.*;
    import org.puremvc.as3.patterns.command.*;

    public class StartSelectUnitForEvilPointCommand extends SimpleCommand
    {
        public static const START_SELECT_UNIT:String = NAME + "/notes/StartSelectUnit";
        public static const NAME:String = "StartSelectUnitForEvilPointCommand";
        public static const NO_UNITS_FOR_BATTLE:String = NAME + "/notes/noUnitsForBattle";

        public function StartSelectUnitForEvilPointCommand()
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
            _loc_2.selectUnitFor = SelectUnitProxy.FOR_EVIL_POINT;
            _loc_3.suspendTimer();
            sendNotification(START_SELECT_UNIT);
            return;
        }// end function

    }
}
