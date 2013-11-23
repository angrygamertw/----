package com.kbmj.viking.controller.home
{
    import com.kbmj.viking.proxy.home.*;
    import org.puremvc.as3.interfaces.*;
    import org.puremvc.as3.patterns.command.*;

    public class UpdateTaskCommand extends SimpleCommand
    {
        public static const NAME:String = "UpdateTaskCommand";

        public function UpdateTaskCommand()
        {
            return;
        }// end function

        override public function execute(param1:INotification) : void
        {
            var _loc_2:* = TaskProxy(facade.retrieveProxy(TaskProxy.NAME));
            _loc_2.updateTask();
            return;
        }// end function

    }
}
