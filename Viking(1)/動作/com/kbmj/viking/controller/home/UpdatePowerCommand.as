package com.kbmj.viking.controller.home
{
    import com.kbmj.viking.proxy.home.*;
    import org.puremvc.as3.interfaces.*;
    import org.puremvc.as3.patterns.command.*;

    public class UpdatePowerCommand extends SimpleCommand
    {
        public static const NAME:String = "UpdatePowerCommand";

        public function UpdatePowerCommand()
        {
            return;
        }// end function

        override public function execute(param1:INotification) : void
        {
            var _loc_2:* = HomeProxy(facade.retrieveProxy(HomeProxy.NAME));
            _loc_2.updatePower();
            return;
        }// end function

    }
}
