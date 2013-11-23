package com.kbmj.viking.controller.selectUnit
{
    import com.kbmj.viking.proxy.home.*;
    import com.kbmj.viking.proxy.selectUnit.*;
    import com.kbmj.viking.proxy.tactics.*;
    import org.puremvc.as3.interfaces.*;
    import org.puremvc.as3.patterns.command.*;

    public class StartSelectUnitCommand extends SimpleCommand
    {
        public static const START_SELECT_UNIT:String = "StartSelectUnit";

        public function StartSelectUnitCommand()
        {
            return;
        }// end function

        override public function execute(param1:INotification) : void
        {
            var _loc_2:* = SelectUnitProxy(facade.retrieveProxy(SelectUnitProxy.NAME));
            var _loc_3:* = UnitProxy(facade.retrieveProxy(UnitProxy.NAME));
            var _loc_4:* = TaskProxy(facade.retrieveProxy(TaskProxy.NAME));
            _loc_2.units = _loc_3.homeUnits;
            _loc_2.selectUnitFor = param1.getBody() as int;
            _loc_4.suspendTimer();
            sendNotification(START_SELECT_UNIT);
            return;
        }// end function

    }
}
