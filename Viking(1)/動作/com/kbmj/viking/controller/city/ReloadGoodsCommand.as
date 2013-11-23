package com.kbmj.viking.controller.city
{
    import com.kbmj.viking.proxy.*;
    import com.kbmj.viking.proxy.city.*;
    import com.kbmj.viking.vo.*;
    import org.puremvc.as3.interfaces.*;
    import org.puremvc.as3.patterns.command.*;

    public class ReloadGoodsCommand extends SimpleCommand
    {
        public static const SHOW_LOADING_WINDOW:String = NAME + "/showLoadingWindow";
        public static const RELOADED_MARKET_DATA:String = NAME + "/reloadedMarketData";
        public static const NAME:String = "ReloadGoodsCommand";

        public function ReloadGoodsCommand()
        {
            return;
        }// end function

        override public function execute(param1:INotification) : void
        {
            var _loc_2:* = MultipleLoadProxy(facade.retrieveProxy(MultipleLoadProxy.NAME));
            var _loc_3:* = PlayerProxy(facade.retrieveProxy(PlayerProxy.NAME));
            var _loc_4:* = MarketProxy(facade.retrieveProxy(MarketProxy.NAME));
            var _loc_5:* = CityProxy(facade.retrieveProxy(CityProxy.NAME));
            sendNotification(SHOW_LOADING_WINDOW);
            _loc_2.loadMultiple("reloadedSellData", RELOADED_MARKET_DATA, [new LoadDetailVO(_loc_4, "getMyCommodity", MarketProxy.MY_COMMODITY_LOAD_COMPLETE), new LoadDetailVO(_loc_5, "loadResource", CityProxy.RESOURCE_LOADED), new LoadDetailVO(_loc_3, "loadPlayer", PlayerProxy.PLAYER_LOADED)]);
            return;
        }// end function

    }
}
