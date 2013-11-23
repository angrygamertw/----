package com.kbmj.viking.controller.home
{
    import com.kbmj.viking.lib.*;
    import com.kbmj.viking.proxy.*;
    import com.kbmj.viking.proxy.home.*;
    import com.kbmj.viking.view.*;
    import com.kbmj.viking.view.city.*;
    import com.kbmj.viking.view.home.*;
    import com.kbmj.viking.vo.*;
    import org.puremvc.as3.interfaces.*;
    import org.puremvc.as3.patterns.command.*;

    public class LoadGuildDetailCommand extends SimpleCommand
    {
        public static const NO_GUILD_ALERT:String = NAME + "notes/noGuildAlert";
        public static const RELOAD_GUILD_DETAIL:String = NAME + "/reloadGuildDetail";
        public static const NAME:String = "LoadGuildDetailCommand";
        public static const HOME_GUILD_DETAIL:String = NAME + "notes/homeGuildDetail";
        public static const LOAD_AFTER_GUILD_DETAIL:String = NAME + "notes/loadAfterGuildDetail";
        public static const GUILD_DETAIL_LOADED_BY_CITY:String = NAME + "/guildDetailLoadedByCity";

        public function LoadGuildDetailCommand()
        {
            return;
        }// end function

        override public function execute(param1:INotification) : void
        {
            var _loc_6:Array = null;
            var _loc_7:HomeProxy = null;
            var _loc_2:* = GuildProxy(facade.retrieveProxy(GuildProxy.NAME));
            var _loc_3:* = PlayerProxy(facade.retrieveProxy(PlayerProxy.NAME));
            var _loc_4:* = MultipleLoadProxy(facade.retrieveProxy(MultipleLoadProxy.NAME));
            var _loc_5:* = Utils.i18n("LoadGuildDetailRejection");
            switch(param1.getName())
            {
                case HomeMediator.LOAD_GUILD_DETAIL:
                {
                    if (_loc_3.playerVO.guild == null)
                    {
                        sendNotification(NO_GUILD_ALERT);
                    }
                    else
                    {
                        if (_loc_3.playerVO.guildMaster)
                        {
                            _loc_6 = [new LoadDetailVO(_loc_2, "loadGuildApplication", GuildProxy.GUILD_APPLICATION_LOADED), new LoadDetailVO(_loc_2, "getGuildDetail", GuildProxy.GUILD_DETAIL, [_loc_3.playerVO.guild.id]), new LoadDetailVO(_loc_2, "getGuildArmyUnits", GuildProxy.LOAD_GUILD_ARMY_UNITS)];
                        }
                        else
                        {
                            _loc_6 = [new LoadDetailVO(_loc_2, "getGuildDetail", GuildProxy.GUILD_DETAIL, [_loc_3.playerVO.guild.id]), new LoadDetailVO(_loc_2, "getGuildArmyUnits", GuildProxy.LOAD_GUILD_ARMY_UNITS)];
                        }
                        _loc_4.loadMultiple("guildDetailLoaded", LOAD_AFTER_GUILD_DETAIL, _loc_6);
                    }
                    break;
                }
                case CityMediator.LOAD_GUILD_DETAIL:
                {
                    if (_loc_3.playerVO.guild)
                    {
                        if (_loc_3.playerVO.guildMaster)
                        {
                            _loc_6 = [new LoadDetailVO(_loc_2, "loadGuildApplication", GuildProxy.GUILD_APPLICATION_LOADED), new LoadDetailVO(_loc_2, "getGuildDetail", HOME_GUILD_DETAIL, [param1.getBody(), HOME_GUILD_DETAIL])];
                        }
                        else
                        {
                            _loc_6 = [new LoadDetailVO(_loc_2, "getGuildDetail", HOME_GUILD_DETAIL, [param1.getBody(), HOME_GUILD_DETAIL])];
                        }
                    }
                    else
                    {
                        _loc_6 = [new LoadDetailVO(_loc_2, "getGuildDetail", HOME_GUILD_DETAIL, [param1.getBody(), HOME_GUILD_DETAIL])];
                    }
                    _loc_4.loadMultiple("guildDetailLoadedByCity", GUILD_DETAIL_LOADED_BY_CITY, _loc_6);
                    break;
                }
                case GuildProxy.ALLOW_APPLICATION:
                {
                    _loc_5 = Utils.i18n("LoadGuildDetailPermit");
                }
                case GuildProxy.REJECT_APPLICATION:
                {
                    _loc_7 = HomeProxy(facade.retrieveProxy(HomeProxy.NAME));
                    AlertWindow.show(_loc_5, "", AlertWindow.OK, _loc_7.app);
                    _loc_4.loadMultiple("guildDetailLoadedByCity", RELOAD_GUILD_DETAIL, [new LoadDetailVO(_loc_2, "loadGuildApplication", GuildProxy.GUILD_APPLICATION_LOADED), new LoadDetailVO(_loc_2, "getGuildDetail", HOME_GUILD_DETAIL, [_loc_3.playerVO.guild.id, HOME_GUILD_DETAIL])]);
                    break;
                }
                default:
                {
                    break;
                }
            }
            return;
        }// end function

    }
}
