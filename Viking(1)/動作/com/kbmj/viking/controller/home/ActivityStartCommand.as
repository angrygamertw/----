package com.kbmj.viking.controller.home
{
    import com.kbmj.viking.proxy.*;
    import com.kbmj.viking.proxy.home.*;
    import com.kbmj.viking.proxy.tactics.*;
    import com.kbmj.viking.vo.*;
    import org.puremvc.as3.interfaces.*;
    import org.puremvc.as3.patterns.command.*;

    public class ActivityStartCommand extends SimpleCommand
    {
        public static const ACTIVITY_STARTED:String = NAME + "notes/ActivityStarted";
        public static const NAME:String = "ActivityStartCommand";

        public function ActivityStartCommand()
        {
            return;
        }// end function

        override public function execute(param1:INotification) : void
        {
            var _loc_2:* = TaskProxy(facade.retrieveProxy(TaskProxy.NAME));
            _loc_2.updateTask();
            var _loc_3:* = UnitProxy(facade.retrieveProxy(UnitProxy.NAME));
            var _loc_4:* = HomeProxy(facade.retrieveProxy(HomeProxy.NAME));
            var _loc_5:* = MultipleLoadProxy(facade.retrieveProxy(MultipleLoadProxy.NAME));
            MultipleLoadProxy(facade.retrieveProxy(MultipleLoadProxy.NAME)).loadMultiple("activityStarted", ACTIVITY_STARTED, [new LoadDetailVO(_loc_3, "loadHomeUnits", UnitProxy.HOME_UNITS_LOADED), new LoadDetailVO(_loc_4, "loadHomeDatas", HomeProxy.HOME_DATA_LOADED), new LoadDetailVO(_loc_4, "loadHomeResource", HomeProxy.HOME_RESOURCE_LOADED)]);
            return;
        }// end function

    }
}
