package com.kbmj.viking.controller.home
{
    import com.kbmj.viking.proxy.home.*;
    import org.puremvc.as3.interfaces.*;
    import org.puremvc.as3.patterns.command.*;

    public class ImageChangeCommand extends SimpleCommand
    {
        public static const NAME:String = "ImageChangeCommand";

        public function ImageChangeCommand()
        {
            return;
        }// end function

        override public function execute(param1:INotification) : void
        {
            var _loc_2:* = param1.getBody() as Array;
            var _loc_3:* = HomeProxy(facade.retrieveProxy(HomeProxy.NAME));
            _loc_3.changeImage(_loc_2[0], _loc_2[1]);
            return;
        }// end function

    }
}
