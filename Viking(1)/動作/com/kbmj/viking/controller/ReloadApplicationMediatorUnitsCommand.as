package com.kbmj.viking.controller
{
    import com.kbmj.viking.proxy.tactics.*;
    import com.kbmj.viking.view.*;
    import org.puremvc.as3.interfaces.*;
    import org.puremvc.as3.patterns.command.*;

    public class ReloadApplicationMediatorUnitsCommand extends SimpleCommand
    {
        public static const NAME:String = "ReloadApplicationMediatorUnitsCommand";

        public function ReloadApplicationMediatorUnitsCommand()
        {
            return;
        }// end function

        override public function execute(param1:INotification) : void
        {
            sendNotification(ApplicationMediator.SHOW_LOADING_WINDOW, true);
            var _loc_2:* = UnitProxy(facade.retrieveProxy(UnitProxy.NAME));
            _loc_2.loadHomeUnits(UnitProxy.HOME_UNITS_LOADED_BY_APPLICATION_MEDIATOR);
            return;
        }// end function

    }
}
