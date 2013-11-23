package com.kbmj.viking.controller.sendArmy
{
    import com.kbmj.viking.proxy.selectUnit.*;
    import com.kbmj.viking.proxy.tactics.*;
    import org.puremvc.as3.interfaces.*;
    import org.puremvc.as3.patterns.command.*;

    public class StartSelectUnitForSendArmyCommand extends SimpleCommand
    {
        public static const NO_UNITS_FOR_SEND_ARMY:String = NAME + "/notes/noUnitsForSendArmy";
        public static const START_SELECT_UNIT:String = NAME + "/notes/StartSelectUnit";
        public static const NAME:String = "StartSelectUnitForSendArmyCommand";

        public function StartSelectUnitForSendArmyCommand()
        {
            return;
        }// end function

        override public function execute(param1:INotification) : void
        {
            var _loc_2:* = UnitProxy(facade.retrieveProxy(UnitProxy.NAME));
            var _loc_3:* = SelectUnitProxy(facade.retrieveProxy(SelectUnitProxy.NAME));
            var _loc_4:* = _loc_2.unitsForReinforcement;
            if (!_loc_2.unitsForReinforcement || _loc_4.length <= 0)
            {
                sendNotification(NO_UNITS_FOR_SEND_ARMY);
                return;
            }
            _loc_3.units = _loc_4;
            _loc_3.selectUnitFor = SelectUnitProxy.FOR_SEND_ARMY;
            sendNotification(START_SELECT_UNIT);
            return;
        }// end function

    }
}
