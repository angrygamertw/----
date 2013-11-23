package com.kbmj.viking.proxy.home
{
    import com.kbmj.viking.proxy.*;

    public class AnnouncementProxy extends LoaderProxy
    {
        public static const ANNOUNCEMENT_LOAD_ERROR:String = NAME + "/notes/AnnouncementLoadError";
        public static const NAME:String = "AnnouncementProxy";
        public static const ANNOUNCEMENT_LOADED:String = "AnnouncementProxy/notes/AnnouncementLoaded";

        public function AnnouncementProxy()
        {
            super(NAME);
            return;
        }// end function

        override public function onRegister() : void
        {
            return;
        }// end function

        public function loadAnnouncement(param1:String = "AnnouncementProxy/notes/AnnouncementLoaded") : void
        {
            var eventName:* = param1;
            load("/api/announcements", eventName, function (param1:Array) : Array
            {
                return param1;
            }// end function
            );
            return;
        }// end function

    }
}
