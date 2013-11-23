package com.kbmj.viking.controller.city
{
    import com.kbmj.viking.proxy.*;
    import com.kbmj.viking.vo.*;
    import org.puremvc.as3.interfaces.*;
    import org.puremvc.as3.patterns.command.*;

    public class PlayerRankUpCommand extends SimpleCommand
    {
        public static const PLAYER_RANK_UP:String = NAME + "/notes/playerRankUp";
        public static const SHOW_LOADING_WINDOW:String = NAME + "/note/showLoadingWindow";
        public static const NAME:String = "PlayerRankUpCommand";

        public function PlayerRankUpCommand()
        {
            return;
        }// end function

        override public function execute(param1:INotification) : void
        {
            var _loc_2:* = MultipleLoadProxy(facade.retrieveProxy(MultipleLoadProxy.NAME));
            var _loc_3:* = PlayerProxy(facade.retrieveProxy(PlayerProxy.NAME));
            sendNotification(SHOW_LOADING_WINDOW);
            _loc_2.loadMultiple("loadForStartingCity", PLAYER_RANK_UP, [new LoadDetailVO(_loc_3, "rankUp", PlayerProxy.PLAYER_RANK_UP_COMPLETE)]);
            return;
        }// end function

    }
}
