package com.kbmj.viking.controller
{
    import org.puremvc.as3.interfaces.*;
    import org.puremvc.as3.patterns.command.*;

    public class StartGameCommand extends SimpleCommand
    {
        public static const NAME:String = "StartGameCommand";
        public static const START_HOME:String = NAME + "/notes/StartHome";

        public function StartGameCommand()
        {
            return;
        }// end function

        override public function execute(param1:INotification) : void
        {
            sendNotification(START_HOME);
            return;
        }// end function

    }
}
