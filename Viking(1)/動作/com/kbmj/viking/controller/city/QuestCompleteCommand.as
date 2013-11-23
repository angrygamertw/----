package com.kbmj.viking.controller.city
{
    import com.kbmj.viking.proxy.*;
    import com.kbmj.viking.proxy.city.*;
    import com.kbmj.viking.view.city.*;
    import org.puremvc.as3.interfaces.*;
    import org.puremvc.as3.patterns.command.*;

    public class QuestCompleteCommand extends SimpleCommand
    {
        public static const NAME:String = "QuestCompleteCommand";
        public static const QUEST_COMPLETE_LOADED:String = NAME + "/questCompleteLoaded";

        public function QuestCompleteCommand()
        {
            return;
        }// end function

        override public function execute(param1:INotification) : void
        {
            var _loc_2:* = PlayerProxy(facade.retrieveProxy(PlayerProxy.NAME));
            var _loc_3:* = MultipleLoadProxy(facade.retrieveProxy(MultipleLoadProxy.NAME));
            var _loc_4:* = BarProxy(facade.retrieveProxy(BarProxy.NAME));
            BarProxy(facade.retrieveProxy(BarProxy.NAME)).progressQuest();
            _loc_4.loadQuest();
            _loc_2.loadPlayerRank();
            _loc_2.loadPlayer(CityMediator.PLAYER_LOADED_BY_BAR);
            sendNotification(QUEST_COMPLETE_LOADED);
            return;
        }// end function

    }
}
