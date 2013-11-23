package com.kbmj.viking.controller.allMap
{
    import com.kbmj.viking.proxy.allMap.*;
    import flash.geom.*;
    import org.puremvc.as3.interfaces.*;
    import org.puremvc.as3.patterns.command.*;

    public class GetCommandAllMapCommand extends SimpleCommand
    {
        public static const NAME:String = "GetCommandAllMapCommand";

        public function GetCommandAllMapCommand()
        {
            return;
        }// end function

        override public function execute(param1:INotification) : void
        {
            var _loc_2:* = AllMapProxy(facade.retrieveProxy(AllMapProxy.NAME));
            _loc_2.getCommandAllMap(param1.getBody() as Point);
            return;
        }// end function

    }
}
