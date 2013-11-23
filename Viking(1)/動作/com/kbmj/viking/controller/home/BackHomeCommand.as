package com.kbmj.viking.controller.home
{
    import org.puremvc.as3.interfaces.*;
    import org.puremvc.as3.patterns.command.*;

    public class BackHomeCommand extends SimpleCommand
    {
        public static const NAME:String = "BackHomeCommand";
        public static const BACK_HOME:String = NAME + "/backHome";

        public function BackHomeCommand()
        {
            return;
        }// end function

        override public function execute(param1:INotification) : void
        {
            sendNotification(BACK_HOME);
            return;
        }// end function

    }
}
