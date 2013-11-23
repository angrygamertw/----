package com.kbmj.viking.controller.city
{
    import com.kbmj.viking.proxy.*;
    import com.kbmj.viking.proxy.city.*;
    import com.kbmj.viking.proxy.home.*;
    import com.kbmj.viking.vo.*;
    import org.puremvc.as3.interfaces.*;
    import org.puremvc.as3.patterns.command.*;

    public class StartCityCommand extends SimpleCommand
    {
        public static const SHOW_LOADING_WINDOW:String = NAME + "/note/showLoadingWindow";
        public static const NAME:String = "StartCityCommand";
        public static const SHOW_CITY:String = NAME + "/notes/showCity";

        public function StartCityCommand()
        {
            return;
        }// end function

        override public function execute(param1:INotification) : void
        {
            var _loc_2:* = MultipleLoadProxy(facade.retrieveProxy(MultipleLoadProxy.NAME));
            var _loc_3:* = CityProxy(facade.retrieveProxy(CityProxy.NAME));
            var _loc_4:* = BarProxy(facade.retrieveProxy(BarProxy.NAME));
            var _loc_5:* = GuildProxy(facade.retrieveProxy(GuildProxy.NAME));
            var _loc_6:* = TaskProxy(facade.retrieveProxy(TaskProxy.NAME));
            var _loc_7:* = PlayerProxy(facade.retrieveProxy(PlayerProxy.NAME));
            sendNotification(SHOW_LOADING_WINDOW);
            _loc_6.suspendTimer();
            var _loc_8:* = param1.getBody() as Array;
            _loc_3.location = _loc_8[0];
            _loc_3.playerFactionId = _loc_8[1];
            _loc_2.loadMultiple("loadForStartingCity", SHOW_CITY, [new LoadDetailVO(_loc_3, "loadResource", CityProxy.RESOURCE_LOADED), new LoadDetailVO(_loc_4, "loadQuest", BarProxy.QUEST_LOADED), new LoadDetailVO(_loc_4, "progressQuest", BarProxy.PROGRESS_QUEST), new LoadDetailVO(_loc_7, "loadPlayerRank", PlayerProxy.PLAYER_RANK), new LoadDetailVO(_loc_4, "completeQuest", BarProxy.COMPELE_QUEST_LOADED)]);
            return;
        }// end function

    }
}
