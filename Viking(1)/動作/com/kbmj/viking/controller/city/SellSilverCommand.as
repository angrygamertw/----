package com.kbmj.viking.controller.city
{
    import com.kbmj.viking.proxy.*;
    import com.kbmj.viking.vo.*;
    import org.puremvc.as3.interfaces.*;
    import org.puremvc.as3.patterns.command.*;

    public class SellSilverCommand extends SimpleCommand
    {
        public static const NAME:String = "SellSilverCommand";
        public static const SELL_SILVER_COMPLETE:String = NAME + "/notes/sellSilverComplete";

        public function SellSilverCommand()
        {
            return;
        }// end function

        override public function execute(param1:INotification) : void
        {
            var _loc_2:* = MultipleLoadProxy(facade.retrieveProxy(MultipleLoadProxy.NAME));
            var _loc_3:* = PlayerProxy(facade.retrieveProxy(PlayerProxy.NAME));
            var _loc_4:* = CityProxy(facade.retrieveProxy(CityProxy.NAME));
            _loc_2.loadMultiple("sellSilverCommand", SELL_SILVER_COMPLETE, [new LoadDetailVO(_loc_3, "loadPlayer", PlayerProxy.PLAYER_LOADED), new LoadDetailVO(_loc_4, "loadResource", CityProxy.RESOURCE_LOADED)]);
            return;
        }// end function

    }
}
