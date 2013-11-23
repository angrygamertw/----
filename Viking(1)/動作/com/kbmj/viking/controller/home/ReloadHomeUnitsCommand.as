package com.kbmj.viking.controller.home
{
    import com.kbmj.viking.proxy.tactics.*;
    import com.kbmj.viking.view.home.*;
    import org.puremvc.as3.interfaces.*;
    import org.puremvc.as3.patterns.command.*;

    public class ReloadHomeUnitsCommand extends SimpleCommand
    {
        public static const NAME:String = "ReloadHomeUnitsCommand";

        public function ReloadHomeUnitsCommand()
        {
            return;
        }// end function

        override public function execute(param1:INotification) : void
        {
            sendNotification(HomeMediator.SHOW_LOADING_WINDOW);
            var _loc_2:* = UnitProxy(facade.retrieveProxy(UnitProxy.NAME));
            _loc_2.loadHomeUnits();
            return;
        }// end function

    }
}
