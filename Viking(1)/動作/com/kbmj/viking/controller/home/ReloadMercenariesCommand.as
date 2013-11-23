package com.kbmj.viking.controller.home
{
    import com.kbmj.viking.proxy.home.*;
    import org.puremvc.as3.interfaces.*;
    import org.puremvc.as3.patterns.command.*;

    public class ReloadMercenariesCommand extends SimpleCommand
    {
        public static const MERCENARY_RELOADED:String = NAME + "notes/mercenaryReloaded";
        public static const NOTIFY_SUMMON_RESULT:String = NAME + "notes/notifySummonResult";
        public static const NAME:String = "reloadMercenariesCommand";

        public function ReloadMercenariesCommand()
        {
            return;
        }// end function

        override public function execute(param1:INotification) : void
        {
            sendNotification(NOTIFY_SUMMON_RESULT, param1.getBody() as String);
            var _loc_2:* = HomeProxy(facade.retrieveProxy(HomeProxy.NAME));
            _loc_2.loadMercenaries(HomeProxy.MERCENARIES_RELOADED);
            return;
        }// end function

    }
}
