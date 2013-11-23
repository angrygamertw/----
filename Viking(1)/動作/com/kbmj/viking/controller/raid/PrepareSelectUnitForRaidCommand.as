package com.kbmj.viking.controller.raid
{
    import com.kbmj.viking.proxy.*;
    import com.kbmj.viking.proxy.selectUnit.*;
    import com.kbmj.viking.proxy.tactics.*;
    import org.puremvc.as3.interfaces.*;
    import org.puremvc.as3.patterns.command.*;

    public class PrepareSelectUnitForRaidCommand extends SimpleCommand
    {
        public static const NAME:String = "PrepareSelectUnitForRaidCommand";
        public static const PREPARE_RAID_COMPLETE:String = NAME + "/nots/prepareRaidComplete";

        public function PrepareSelectUnitForRaidCommand()
        {
            return;
        }// end function

        override public function execute(param1:INotification) : void
        {
            var _loc_2:* = SelectUnitProxy(facade.retrieveProxy(SelectUnitProxy.NAME));
            var _loc_3:* = TacticsProxy(facade.retrieveProxy(TacticsProxy.NAME));
            var _loc_4:* = MapProxy(facade.retrieveProxy(MapProxy.NAME));
            var _loc_5:* = PlayerProxy(facade.retrieveProxy(PlayerProxy.NAME));
            var _loc_6:* = param1.getBody() as Array;
            _loc_2.targetPlayerId = _loc_6[0];
            _loc_3.targetName = _loc_6[1];
            sendNotification(PREPARE_RAID_COMPLETE);
            return;
        }// end function

    }
}
