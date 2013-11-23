package com.kbmj.viking.controller.tactics
{
    import com.kbmj.viking.proxy.tactics.*;
    import org.puremvc.as3.interfaces.*;
    import org.puremvc.as3.patterns.command.*;

    public class TimeOverCommand extends SimpleCommand
    {
        public static const NAME:String = "TimeOverCommand";
        public static const SHOW_LOADING_WINDOW:String = NAME + "/notes/showLoadingWindow";

        public function TimeOverCommand()
        {
            return;
        }// end function

        override public function execute(param1:INotification) : void
        {
            sendNotification(SHOW_LOADING_WINDOW);
            var _loc_2:* = TacticsProxy(facade.retrieveProxy(TacticsProxy.NAME));
            _loc_2.finish(String(param1.getBody()));
            return;
        }// end function

    }
}
