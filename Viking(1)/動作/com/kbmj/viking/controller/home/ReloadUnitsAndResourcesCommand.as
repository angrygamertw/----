package com.kbmj.viking.controller.home
{
    import com.kbmj.viking.proxy.*;
    import com.kbmj.viking.proxy.home.*;
    import com.kbmj.viking.proxy.tactics.*;
    import com.kbmj.viking.view.home.*;
    import com.kbmj.viking.vo.*;
    import org.puremvc.as3.interfaces.*;
    import org.puremvc.as3.patterns.command.*;

    public class ReloadUnitsAndResourcesCommand extends SimpleCommand
    {
        public static const RELOADED:String = NAME + "/reloaded";
        public static const NAME:String = "RELOAD_AFTER_LORD_CHANGE_COMMAND";

        public function ReloadUnitsAndResourcesCommand()
        {
            return;
        }// end function

        override public function execute(param1:INotification) : void
        {
            sendNotification(HomeMediator.SHOW_LOADING_WINDOW);
            var _loc_2:* = UnitProxy(facade.retrieveProxy(UnitProxy.NAME));
            var _loc_3:* = HomeProxy(facade.retrieveProxy(HomeProxy.NAME));
            var _loc_4:* = AnnouncementProxy(facade.retrieveProxy(AnnouncementProxy.NAME));
            var _loc_5:* = MultipleLoadProxy(facade.retrieveProxy(MultipleLoadProxy.NAME));
            MultipleLoadProxy(facade.retrieveProxy(MultipleLoadProxy.NAME)).loadMultiple("reloadAfterLordChange", RELOADED, [new LoadDetailVO(_loc_4, "loadAnnouncement", AnnouncementProxy.ANNOUNCEMENT_LOADED), new LoadDetailVO(_loc_2, "loadHomeUnits", UnitProxy.HOME_UNITS_LOADED), new LoadDetailVO(_loc_3, "loadHomeResource", HomeProxy.HOME_RESOURCE_LOADED)]);
            return;
        }// end function

    }
}
