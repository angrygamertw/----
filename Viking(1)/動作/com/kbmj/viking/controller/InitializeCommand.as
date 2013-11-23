package com.kbmj.viking.controller
{
    import com.kbmj.viking.proxy.*;
    import org.puremvc.as3.interfaces.*;
    import org.puremvc.as3.patterns.command.*;

    public class InitializeCommand extends SimpleCommand
    {

        public function InitializeCommand()
        {
            return;
        }// end function

        override public function execute(param1:INotification) : void
        {
            var _loc_2:* = PlayerProxy(facade.retrieveProxy(PlayerProxy.NAME));
            _loc_2.initPlayer();
            return;
        }// end function

    }
}
