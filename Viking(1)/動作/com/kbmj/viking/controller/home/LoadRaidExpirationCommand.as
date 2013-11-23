package com.kbmj.viking.controller.home
{
    import com.kbmj.viking.proxy.*;
    import org.puremvc.as3.interfaces.*;
    import org.puremvc.as3.patterns.command.*;

    public class LoadRaidExpirationCommand extends SimpleCommand
    {
        public static const RAID_EXPIRATION_LOADED:String = NAME + "/raidExpirationLoaded";
        public static const RAID_EXPIRATION_RELOADED:String = NAME + "/raidExpirationReloaded";
        public static const NAME:String = "LoadRaidExpirationCommand";

        public function LoadRaidExpirationCommand()
        {
            return;
        }// end function

        override public function execute(param1:INotification) : void
        {
            var _loc_3:String = null;
            var _loc_2:* = PlayerProxy(facade.retrieveProxy(PlayerProxy.NAME));
            if (param1.getBody() == null)
            {
                _loc_3 = RAID_EXPIRATION_LOADED;
            }
            else
            {
                _loc_3 = Boolean(param1.getBody()) ? (RAID_EXPIRATION_LOADED) : (RAID_EXPIRATION_RELOADED);
            }
            _loc_2.loadPlayer(_loc_3);
            return;
        }// end function

    }
}
