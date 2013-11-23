package com.kbmj.viking.controller.home
{
    import com.kbmj.viking.proxy.home.*;
    import com.kbmj.viking.view.home.*;
    import org.puremvc.as3.interfaces.*;
    import org.puremvc.as3.patterns.command.*;

    public class LoadCoffinsCommand extends SimpleCommand
    {
        public static const RELOADED:String = NAME + "reloaded";
        public static const NAME:String = "LoadCoffinsCommand";

        public function LoadCoffinsCommand()
        {
            return;
        }// end function

        override public function execute(param1:INotification) : void
        {
            sendNotification(HomeMediator.SHOW_LOADING_WINDOW);
            var _loc_2:* = HomeAllSleepUnitProxy(facade.retrieveProxy(HomeAllSleepUnitProxy.NAME));
            _loc_2.loadCoffins();
            return;
        }// end function

    }
}
