package com.kbmj.viking.controller.allMap
{
    import com.kbmj.viking.proxy.allMap.*;
    import org.puremvc.as3.interfaces.*;
    import org.puremvc.as3.patterns.command.*;

    public class ReclaimAllMapCommand extends SimpleCommand
    {
        public static const NAME:String = "ReclaimAllMapCommand";

        public function ReclaimAllMapCommand()
        {
            return;
        }// end function

        override public function execute(param1:INotification) : void
        {
            var _loc_2:* = AllMapProxy(facade.retrieveProxy(AllMapProxy.NAME));
            _loc_2.reclaimAllMap(param1.getBody() as int);
            return;
        }// end function

    }
}
