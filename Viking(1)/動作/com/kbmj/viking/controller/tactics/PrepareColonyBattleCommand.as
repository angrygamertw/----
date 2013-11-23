package com.kbmj.viking.controller.tactics
{
    import com.kbmj.viking.proxy.tactics.*;
    import org.puremvc.as3.interfaces.*;
    import org.puremvc.as3.patterns.command.*;

    public class PrepareColonyBattleCommand extends SimpleCommand
    {
        public static const NAME:String = "PrepareColonyBattleCommand";

        public function PrepareColonyBattleCommand()
        {
            return;
        }// end function

        override public function execute(param1:INotification) : void
        {
            var _loc_2:* = TacticsProxy(facade.retrieveProxy(TacticsProxy.NAME));
            var _loc_3:* = param1.getBody();
            _loc_2.startColonyBattle(_loc_3.units);
            return;
        }// end function

    }
}
