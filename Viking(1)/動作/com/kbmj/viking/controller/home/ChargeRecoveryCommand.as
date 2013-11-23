package com.kbmj.viking.controller.home
{
    import com.kbmj.viking.proxy.*;
    import com.kbmj.viking.proxy.home.*;
    import com.kbmj.viking.proxy.tactics.*;
    import com.kbmj.viking.vo.*;
    import org.puremvc.as3.interfaces.*;
    import org.puremvc.as3.patterns.command.*;

    public class ChargeRecoveryCommand extends SimpleCommand
    {
        public static const NAME:String = "ChargeRecoveryCommand";
        public static const CHARGE_RECOVERY_LOADED:String = NAME + "reunionLoaded";

        public function ChargeRecoveryCommand()
        {
            return;
        }// end function

        override public function execute(param1:INotification) : void
        {
            var _loc_2:* = HomeProxy(facade.retrieveProxy(HomeProxy.NAME));
            var _loc_3:* = UnitProxy(facade.retrieveProxy(UnitProxy.NAME));
            var _loc_4:* = MultipleLoadProxy(facade.retrieveProxy(MultipleLoadProxy.NAME));
            _loc_3.loadHomeUnits();
            _loc_4.loadMultiple("ChargeRecoveryLoaded", CHARGE_RECOVERY_LOADED, [new LoadDetailVO(_loc_2, "updatePower", HomeProxy.POWER_UPDATED)]);
            return;
        }// end function

    }
}
