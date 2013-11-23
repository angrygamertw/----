package com.kbmj.viking.controller.home
{
    import com.kbmj.viking.proxy.home.*;
    import org.puremvc.as3.interfaces.*;
    import org.puremvc.as3.patterns.command.*;

    public class HomeInitialLoadCompleteCommand extends SimpleCommand
    {
        public static const NAME:String = "HomeInitialLoadCompleteCommand";
        public static const START_HOME:String = NAME + "StartHome";

        public function HomeInitialLoadCompleteCommand()
        {
            return;
        }// end function

        override public function execute(param1:INotification) : void
        {
            var _loc_2:* = TaskProxy(facade.retrieveProxy(TaskProxy.NAME));
            _loc_2.taskFor = TaskProxy.FOR_HOME;
            _loc_2.updateTask();
            sendNotification(START_HOME);
            return;
        }// end function

    }
}
