package com.kbmj.viking.controller.allMap
{
    import com.kbmj.viking.proxy.tactics.*;
    import com.kbmj.viking.view.allMap.*;
    import org.puremvc.as3.interfaces.*;
    import org.puremvc.as3.patterns.command.*;

    public class ReloadAllMapUnitsCommand extends SimpleCommand
    {
        public static const NAME:String = "ReloadAllMapUnitsCommand";

        public function ReloadAllMapUnitsCommand()
        {
            return;
        }// end function

        override public function execute(param1:INotification) : void
        {
            sendNotification(AllMapMediator.SHOW_LOADING_WINDOW, true);
            var _loc_2:* = UnitProxy(facade.retrieveProxy(UnitProxy.NAME));
            _loc_2.loadHomeUnits(UnitProxy.HOME_UNITS_LOADED_BY_ALL_MAP);
            return;
        }// end function

    }
}
