package com.kbmj.viking.controller.home
{
    import com.kbmj.viking.proxy.*;
    import com.kbmj.viking.proxy.home.*;
    import com.kbmj.viking.proxy.tactics.*;
    import com.kbmj.viking.view.home.*;
    import com.kbmj.viking.vo.*;
    import org.puremvc.as3.interfaces.*;
    import org.puremvc.as3.patterns.command.*;

    public class ReloadHomeUnitsFromCeremonyCommand extends SimpleCommand
    {
        public static const LOADED_COMPLETE_BY_UNION:String = NAME + "loadedCompleteByUnion";
        public static const LOADED_COMPLETE_BY_SUMMON:String = NAME + "loadedCompleteBySummon";
        public static const LOADED_COMPLETE_BY_AWAKE_UNION:String = NAME + "loadedCompleteByAwakeUnion";
        public static const NAME:String = "ReloadHomeUnitsFromCeremonyCommand";
        public static const LOADED_COMPLETE_BY_NORMAL_SUMMON:String = NAME + "loadedCompleteByNormalSummon";

        public function ReloadHomeUnitsFromCeremonyCommand()
        {
            return;
        }// end function

        override public function execute(param1:INotification) : void
        {
            var _loc_2:* = param1.getBody() as String;
            sendNotification(HomeMediator.SHOW_LOADING_WINDOW);
            var _loc_3:* = UnitProxy(facade.retrieveProxy(UnitProxy.NAME));
            var _loc_4:* = MultipleLoadProxy(facade.retrieveProxy(MultipleLoadProxy.NAME));
            var _loc_5:* = HomeProxy(facade.retrieveProxy(HomeProxy.NAME));
            _loc_3.loadHomeUnits(_loc_2);
            _loc_4.loadMultiple("homeInitialLoad", NAME + "loadedComplete" + _loc_2, [new LoadDetailVO(_loc_3, "loadHomeUnits", UnitProxy.HOME_UNITS_LOADED), new LoadDetailVO(_loc_5, "loadHomeResource", HomeProxy.HOME_RESOURCE_LOADED)]);
            return;
        }// end function

    }
}
