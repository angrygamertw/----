package com.kbmj.viking.controller.city
{
    import com.kbmj.viking.proxy.*;
    import org.puremvc.as3.interfaces.*;
    import org.puremvc.as3.patterns.command.*;

    public class NextApplicationCommand extends SimpleCommand
    {
        public static const SHOW_APPLICATION_WINDOW:String = NAME + "showApplicationWindow";
        public static const NAME:String = "NextApplicationCommand";

        public function NextApplicationCommand()
        {
            return;
        }// end function

        override public function execute(param1:INotification) : void
        {
            var _loc_2:* = GuildProxy(facade.retrieveProxy(GuildProxy.NAME));
            var _loc_3:* = _loc_2.nextApplication();
            if (_loc_3)
            {
                sendNotification(SHOW_APPLICATION_WINDOW, _loc_3);
            }
            return;
        }// end function

    }
}
