package com.kbmj.viking.controller.home
{
    import com.kbmj.viking.proxy.home.*;
    import org.puremvc.as3.interfaces.*;
    import org.puremvc.as3.patterns.command.*;

    public class LoadAnnouncementCommand extends SimpleCommand
    {
        public static const NAME:String = "LoadAnnouncementCommand";

        public function LoadAnnouncementCommand()
        {
            return;
        }// end function

        override public function execute(param1:INotification) : void
        {
            var _loc_2:* = AnnouncementProxy(facade.retrieveProxy(AnnouncementProxy.NAME));
            _loc_2.loadAnnouncement();
            return;
        }// end function

    }
}
