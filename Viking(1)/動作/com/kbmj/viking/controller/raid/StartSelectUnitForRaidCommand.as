package com.kbmj.viking.controller.raid
{
    import com.kbmj.viking.proxy.selectUnit.*;
    import com.kbmj.viking.proxy.tactics.*;
    import org.puremvc.as3.interfaces.*;
    import org.puremvc.as3.patterns.command.*;

    public class StartSelectUnitForRaidCommand extends SimpleCommand
    {
        public static const START_SELECT_UNIT:String = NAME + "/notes/StartSelectUnit";
        public static const NAME:String = "StartSelectUnitForRaidCommand";

        public function StartSelectUnitForRaidCommand()
        {
            return;
        }// end function

        override public function execute(param1:INotification) : void
        {
            var _loc_2:* = UnitProxy(facade.retrieveProxy(UnitProxy.NAME));
            var _loc_3:* = SelectUnitProxy(facade.retrieveProxy(SelectUnitProxy.NAME));
            _loc_3.units = _loc_2.homeWaitingAdultUnits;
            _loc_3.selectUnitFor = SelectUnitProxy.FOR_RAID;
            sendNotification(START_SELECT_UNIT);
            return;
        }// end function

    }
}
