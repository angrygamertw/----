package com.kbmj.viking.controller.city
{
    import com.kbmj.viking.proxy.home.*;
    import org.puremvc.as3.interfaces.*;
    import org.puremvc.as3.patterns.command.*;

    public class EnterCityCommand extends SimpleCommand
    {

        public function EnterCityCommand()
        {
            return;
        }// end function

        override public function execute(param1:INotification) : void
        {
            var _loc_2:* = HomeProxy(facade.retrieveProxy(HomeProxy.NAME));
            var _loc_3:* = param1.getBody() as Array;
            _loc_2.enterCity(_loc_3);
            return;
        }// end function

    }
}
