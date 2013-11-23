package com.kbmj.viking.controller.raid
{
    import com.kbmj.viking.proxy.selectUnit.*;
    import com.kbmj.viking.proxy.tactics.*;
    import org.puremvc.as3.interfaces.*;
    import org.puremvc.as3.patterns.command.*;

    public class PrepareRaidCommand extends SimpleCommand
    {
        public static const NAME:String = "PrepareRaidCommand";

        public function PrepareRaidCommand()
        {
            return;
        }// end function

        override public function execute(param1:INotification) : void
        {
            var _loc_2:* = TacticsProxy(facade.retrieveProxy(TacticsProxy.NAME));
            var _loc_3:* = SelectUnitProxy(facade.retrieveProxy(SelectUnitProxy.NAME));
            var _loc_4:* = param1.getBody();
            _loc_2.startRaid(_loc_4.units, _loc_3.targetPlayerId);
            return;
        }// end function

    }
}
