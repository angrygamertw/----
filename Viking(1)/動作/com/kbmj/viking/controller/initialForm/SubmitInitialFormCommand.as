package com.kbmj.viking.controller.initialForm
{
    import com.kbmj.viking.proxy.*;
    import com.kbmj.viking.proxy.home.*;
    import org.puremvc.as3.interfaces.*;
    import org.puremvc.as3.patterns.command.*;

    public class SubmitInitialFormCommand extends SimpleCommand
    {

        public function SubmitInitialFormCommand()
        {
            return;
        }// end function

        override public function execute(param1:INotification) : void
        {
            var _loc_2:* = PlayerProxy(facade.retrieveProxy(PlayerProxy.NAME));
            var _loc_3:* = HomeProxy(facade.retrieveProxy(HomeProxy.NAME));
            _loc_2.submit(param1.getBody());
            _loc_3.firstTimeFlag = true;
            return;
        }// end function

    }
}
