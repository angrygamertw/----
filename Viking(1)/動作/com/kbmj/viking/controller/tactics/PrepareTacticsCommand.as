package com.kbmj.viking.controller.tactics
{
    import com.kbmj.viking.proxy.tactics.*;
    import org.puremvc.as3.interfaces.*;
    import org.puremvc.as3.patterns.command.*;

    public class PrepareTacticsCommand extends SimpleCommand
    {
        public static const NAME:String = "PrepareTacticsCommand";

        public function PrepareTacticsCommand()
        {
            return;
        }// end function

        override public function execute(param1:INotification) : void
        {
            var _loc_2:* = TacticsProxy(facade.retrieveProxy(TacticsProxy.NAME));
            var _loc_3:* = param1.getBody() as Array;
            _loc_2.start(_loc_3);
            return;
        }// end function

    }
}
