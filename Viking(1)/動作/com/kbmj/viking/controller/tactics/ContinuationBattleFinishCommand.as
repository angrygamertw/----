package com.kbmj.viking.controller.tactics
{
    import com.kbmj.viking.proxy.*;
    import com.kbmj.viking.proxy.home.*;
    import com.kbmj.viking.proxy.tactics.*;
    import org.puremvc.as3.interfaces.*;
    import org.puremvc.as3.patterns.command.*;

    public class ContinuationBattleFinishCommand extends SimpleCommand
    {
        public static const REMOVE_EVENT_MAP_WINDOW:String = NAME + "/notes/removeEventMapWindow";
        public static const RELOAD_CONTINUATION_LEVEL:String = NAME + "/notes/reloadContinuationLevel";
        public static const NAME:String = "ContinuationBattleFinishCommand";
        public static const REMOVE_CONTINUATION_WINDOW:String = NAME + "/notes/removeContinuationWindow";
        public static const RELOAD_EVENT_MAP_LEVEL:String = NAME + "/notes/reloadEventMapLevel";

        public function ContinuationBattleFinishCommand()
        {
            return;
        }// end function

        override public function execute(param1:INotification) : void
        {
            var _loc_2:* = HomeProxy(facade.retrieveProxy(HomeProxy.NAME));
            var _loc_3:* = PlayerProxy(facade.retrieveProxy(PlayerProxy.NAME));
            var _loc_4:* = UnitProxy(facade.retrieveProxy(UnitProxy.NAME));
            var _loc_5:* = TacticsProxy(facade.retrieveProxy(TacticsProxy.NAME));
            var _loc_6:* = RELOAD_CONTINUATION_LEVEL;
            var _loc_7:* = REMOVE_CONTINUATION_WINDOW;
            if (_loc_2.evilPointType == 7)
            {
                _loc_6 = RELOAD_EVENT_MAP_LEVEL;
                _loc_7 = REMOVE_EVENT_MAP_WINDOW;
            }
            var _loc_8:* = param1.getBody();
            if (!param1.getBody() || _loc_5.returnToHome)
            {
                sendNotification(_loc_7);
                _loc_4.loadHomeUnits();
            }
            _loc_3.loadPlayer(_loc_6);
            return;
        }// end function

    }
}
