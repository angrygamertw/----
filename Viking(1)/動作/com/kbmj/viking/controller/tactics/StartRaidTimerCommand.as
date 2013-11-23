package com.kbmj.viking.controller.tactics
{
    import com.kbmj.viking.proxy.tactics.*;
    import org.puremvc.as3.interfaces.*;
    import org.puremvc.as3.patterns.command.*;

    public class StartRaidTimerCommand extends SimpleCommand
    {
        public static const NAME:String = "StartRaidTimerCommand";

        public function StartRaidTimerCommand()
        {
            return;
        }// end function

        override public function execute(param1:INotification) : void
        {
            var _loc_2:* = RaidTimerProxy(facade.retrieveProxy(RaidTimerProxy.NAME));
            _loc_2.start();
            return;
        }// end function

    }
}
