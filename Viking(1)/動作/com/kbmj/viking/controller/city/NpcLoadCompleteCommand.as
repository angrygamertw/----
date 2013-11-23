package com.kbmj.viking.controller.city
{
    import com.kbmj.viking.proxy.*;
    import org.puremvc.as3.interfaces.*;
    import org.puremvc.as3.patterns.command.*;

    public class NpcLoadCompleteCommand extends SimpleCommand
    {
        public static const NAME:String = "NpcLoadCompleteCommand";
        public static const START_BAR:String = NAME + "/notes/startBar";

        public function NpcLoadCompleteCommand()
        {
            return;
        }// end function

        override public function execute(param1:INotification) : void
        {
            var note:* = param1;
            var imageProxy:* = ImageProxy(facade.retrieveProxy(ImageProxy.NAME));
            imageProxy.callAfterImageLoaded(function () : void
            {
                sendNotification(START_BAR);
                return;
            }// end function
            );
            return;
        }// end function

    }
}
