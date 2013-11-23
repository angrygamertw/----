package com.kbmj.viking.controller.allMap
{
    import com.kbmj.viking.proxy.home.*;
    import com.kbmj.viking.view.allMap.*;
    import org.puremvc.as3.interfaces.*;
    import org.puremvc.as3.patterns.command.*;

    public class ReloadAllMapResourcesCommand extends SimpleCommand
    {
        public static const NAME:String = "ReloadAllMapResourcesCommand";

        public function ReloadAllMapResourcesCommand()
        {
            return;
        }// end function

        override public function execute(param1:INotification) : void
        {
            sendNotification(AllMapMediator.SHOW_LOADING_WINDOW, true);
            var _loc_2:* = HomeProxy(facade.retrieveProxy(HomeProxy.NAME));
            _loc_2.loadHomeResource(HomeProxy.HOME_RESOURCES_LOADED_BY_ALL_MAP);
            return;
        }// end function

    }
}
