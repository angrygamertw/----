package com.kbmj.viking.controller.home
{
    import com.kbmj.viking.proxy.*;
    import com.kbmj.viking.proxy.home.*;
    import com.kbmj.viking.proxy.tactics.*;
    import com.kbmj.viking.vo.*;
    import org.puremvc.as3.interfaces.*;
    import org.puremvc.as3.patterns.command.*;

    public class HomeInitialLoadCommand extends SimpleCommand
    {
        public static const NAME:String = "HomeInitialLoadCommand";
        public static const HOME_INITIAL_LOAD_COMPLETE:String = NAME + "notes/homeInitialLoadComplete";

        public function HomeInitialLoadCommand()
        {
            return;
        }// end function

        override public function execute(param1:INotification) : void
        {
            var _loc_2:* = UnitProxy(facade.retrieveProxy(UnitProxy.NAME));
            var _loc_3:* = HomeProxy(facade.retrieveProxy(HomeProxy.NAME));
            var _loc_4:* = BuildingProxy(facade.retrieveProxy(BuildingProxy.NAME));
            var _loc_5:* = MultipleLoadProxy(facade.retrieveProxy(MultipleLoadProxy.NAME));
            MultipleLoadProxy(facade.retrieveProxy(MultipleLoadProxy.NAME)).loadMultiple("homeInitialLoad", HOME_INITIAL_LOAD_COMPLETE, [new LoadDetailVO(_loc_2, "loadHomeUnits", UnitProxy.HOME_UNITS_LOADED), new LoadDetailVO(_loc_3, "loadHomeDatas", HomeProxy.HOME_DATA_LOADED), new LoadDetailVO(_loc_3, "loadHomeResource", HomeProxy.HOME_RESOURCE_LOADED), new LoadDetailVO(_loc_4, "loadConstructions", BuildingProxy.CONSTRUCTION_LOAD_COMPLETE)]);
            return;
        }// end function

    }
}
