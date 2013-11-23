package com.kbmj.viking.controller.home
{
    import com.kbmj.viking.proxy.*;
    import com.kbmj.viking.proxy.home.*;
    import com.kbmj.viking.proxy.tactics.*;
    import com.kbmj.viking.vo.*;
    import org.puremvc.as3.interfaces.*;
    import org.puremvc.as3.patterns.command.*;

    public class RenameCommand extends SimpleCommand
    {
        public static const NAME:String = "RenameCommand";
        public static const RENAME_LOADED:String = NAME + "renameLoaded";

        public function RenameCommand()
        {
            return;
        }// end function

        override public function execute(param1:INotification) : void
        {
            var _loc_2:* = HomeProxy(facade.retrieveProxy(HomeProxy.NAME));
            var _loc_3:* = UnitProxy(facade.retrieveProxy(UnitProxy.NAME));
            _loc_3.loadHomeUnits();
            var _loc_4:* = MultipleLoadProxy(facade.retrieveProxy(MultipleLoadProxy.NAME));
            MultipleLoadProxy(facade.retrieveProxy(MultipleLoadProxy.NAME)).loadMultiple("renameLoaded", RENAME_LOADED, [new LoadDetailVO(_loc_2, "updatePower", HomeProxy.POWER_UPDATED), new LoadDetailVO(_loc_2, "loadHomeResource", HomeProxy.HOME_RESOURCE_LOADED)]);
            return;
        }// end function

    }
}
