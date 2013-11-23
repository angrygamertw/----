package com.kbmj.viking.controller.home
{
    import com.kbmj.viking.proxy.*;
    import com.kbmj.viking.proxy.home.*;
    import com.kbmj.viking.proxy.tactics.*;
    import com.kbmj.viking.view.home.*;
    import com.kbmj.viking.vo.*;
    import org.puremvc.as3.interfaces.*;
    import org.puremvc.as3.patterns.command.*;

    public class ChangeEquipmentCommand extends SimpleCommand
    {
        public static const NAME:String = "ChangeEquipmentCommand";
        public static const CHANGE_EQUIPMENT_LOADED:String = NAME + "changeEquipmentLoaded";

        public function ChangeEquipmentCommand()
        {
            return;
        }// end function

        override public function execute(param1:INotification) : void
        {
            sendNotification(HomeMediator.SHOW_LOADING_WINDOW);
            var _loc_2:* = HomeProxy(facade.retrieveProxy(HomeProxy.NAME));
            var _loc_3:* = UnitProxy(facade.retrieveProxy(UnitProxy.NAME));
            var _loc_4:* = MultipleLoadProxy(facade.retrieveProxy(MultipleLoadProxy.NAME));
            MultipleLoadProxy(facade.retrieveProxy(MultipleLoadProxy.NAME)).loadMultiple("changeEquipmentLoaded", CHANGE_EQUIPMENT_LOADED, [new LoadDetailVO(_loc_2, "loadHomeResource", HomeProxy.HOME_RESOURCE_LOADED), new LoadDetailVO(_loc_3, "loadHomeUnits", UnitProxy.HOME_UNITS_LOADED)]);
            return;
        }// end function

    }
}
