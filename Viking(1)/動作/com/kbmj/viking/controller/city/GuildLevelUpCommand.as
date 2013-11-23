package com.kbmj.viking.controller.city
{
    import com.kbmj.viking.proxy.*;
    import com.kbmj.viking.vo.*;
    import org.puremvc.as3.interfaces.*;
    import org.puremvc.as3.patterns.command.*;

    public class GuildLevelUpCommand extends SimpleCommand
    {
        public static const GUILD_LEVEL_UP:String = NAME + "/notes/guildLevelUp";
        public static const SHOW_LOADING_WINDOW:String = NAME + "/note/showLoadingWindow";
        public static const NAME:String = "GuildLevelUpCommand";

        public function GuildLevelUpCommand()
        {
            return;
        }// end function

        override public function execute(param1:INotification) : void
        {
            trace("GuildLevelUpCommand:execute()");
            var _loc_2:* = MultipleLoadProxy(facade.retrieveProxy(MultipleLoadProxy.NAME));
            var _loc_3:* = GuildProxy(facade.retrieveProxy(GuildProxy.NAME));
            sendNotification(SHOW_LOADING_WINDOW);
            _loc_2.loadMultiple("guildLevelUpCommand", GUILD_LEVEL_UP, [new LoadDetailVO(_loc_3, "levelUp", GuildProxy.GUILD_LEVEL_UP_COMPLETE), new LoadDetailVO(_loc_3, "getGuildDetail", GuildProxy.GUILD_DETAIL, [_loc_3.guildDetail.guildId])]);
            return;
        }// end function

    }
}
