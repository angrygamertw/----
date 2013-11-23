package com.kbmj.viking.controller
{
    import com.kbmj.viking.proxy.*;
    import com.kbmj.viking.vo.*;
    import org.puremvc.as3.interfaces.*;
    import org.puremvc.as3.patterns.command.*;

    public class LoadThirdTierMastersCommand extends SimpleCommand
    {
        public static const NAME:String = "LoadThirdTierMasters";
        public static const MASTERS_LOAD_COMPLETE:String = NAME + "notes/dependentMastersLoadComplete";

        public function LoadThirdTierMastersCommand()
        {
            return;
        }// end function

        override public function execute(param1:INotification) : void
        {
            var _loc_2:* = MasterProxy(facade.retrieveProxy(MasterProxy.NAME));
            var _loc_3:* = MultipleLoadProxy(facade.retrieveProxy(MultipleLoadProxy.NAME));
            _loc_3.loadMultiple("dependentMasters", MASTERS_LOAD_COMPLETE, [new LoadDetailVO(_loc_2, "loadProductionMaster", MasterProxy.PRODUCTION_MASTER_LOAD_COMPLETE), new LoadDetailVO(_loc_2, "loadPaymentCommodity", MasterProxy.PAYMENT_COMMODITY_LOAD_COMPLETE), new LoadDetailVO(_loc_2, "loadColonyMaster", MasterProxy.COLONY_MASTER_LOAD_COMPLETE)]);
            return;
        }// end function

    }
}
