package com.kbmj.viking.controller.allMap
{
    import com.kbmj.viking.proxy.allMap.*;
    import org.puremvc.as3.interfaces.*;
    import org.puremvc.as3.patterns.command.*;

    public class FoundAllMapCommand extends SimpleCommand
    {
        public static const NAME:String = "FoundAllMapCommand";

        public function FoundAllMapCommand()
        {
            return;
        }// end function

        override public function execute(param1:INotification) : void
        {
            var _loc_2:* = AllMapProxy(facade.retrieveProxy(AllMapProxy.NAME));
            var _loc_3:* = param1.getBody();
            _loc_2.foundAllMap(_loc_3.unitId, _loc_3.foundType);
            return;
        }// end function

    }
}
