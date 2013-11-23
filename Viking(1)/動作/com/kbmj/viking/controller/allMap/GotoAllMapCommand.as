package com.kbmj.viking.controller.allMap
{
    import com.kbmj.viking.proxy.*;
    import com.kbmj.viking.proxy.allMap.*;
    import com.kbmj.viking.proxy.home.*;
    import org.puremvc.as3.interfaces.*;
    import org.puremvc.as3.patterns.command.*;

    public class GotoAllMapCommand extends SimpleCommand
    {
        public static const NAME:String = "GotoAllMapCommand";

        public function GotoAllMapCommand()
        {
            return;
        }// end function

        override public function execute(param1:INotification) : void
        {
            var _loc_2:* = AllMapProxy(facade.retrieveProxy(AllMapProxy.NAME));
            var _loc_3:* = GuildProxy(facade.retrieveProxy(GuildProxy.NAME));
            var _loc_4:* = TaskProxy(facade.retrieveProxy(TaskProxy.NAME));
            _loc_2.gotoAllMap();
            _loc_3.getGuildPlayers();
            _loc_4.resumeTimer();
            return;
        }// end function

    }
}
