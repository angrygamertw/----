package com.kbmj.viking.controller.city
{
    import com.kbmj.viking.proxy.*;
    import com.kbmj.viking.vo.*;
    import org.puremvc.as3.interfaces.*;
    import org.puremvc.as3.patterns.command.*;

    public class GuildArmiseLoadCommand extends SimpleCommand
    {
        public static const NAME:String = "GuildArmiseLoadCommand";
        public static const GuildBackUnitLoaded:String = "GuildBackUnitloaded";

        public function GuildArmiseLoadCommand()
        {
            return;
        }// end function

        override public function execute(param1:INotification) : void
        {
            var _loc_2:* = MultipleLoadProxy(facade.retrieveProxy(MultipleLoadProxy.NAME));
            var _loc_3:* = GuildProxy(facade.retrieveProxy(GuildProxy.NAME));
            var _loc_4:* = PlayerProxy(facade.retrieveProxy(PlayerProxy.NAME));
            _loc_2.loadMultiple("reloadedSellData", GuildBackUnitLoaded, [new LoadDetailVO(_loc_3, "getGuildDetail", GuildProxy.GUILD_DETAIL, [_loc_4.playerVO.guild.id, GuildProxy.GUILD_DETAIL]), new LoadDetailVO(_loc_3, "getGuildArmyUnits", GuildProxy.LOAD_GUILD_ARMY_UNITS)]);
            return;
        }// end function

    }
}
