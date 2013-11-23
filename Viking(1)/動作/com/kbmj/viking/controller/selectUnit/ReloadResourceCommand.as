package com.kbmj.viking.controller.selectUnit
{
    import com.kbmj.viking.proxy.selectUnit.*;
    import org.puremvc.as3.interfaces.*;
    import org.puremvc.as3.patterns.command.*;

    public class ReloadResourceCommand extends SimpleCommand
    {
        public static const NAME:String = "ReloadResourceCommand";

        public function ReloadResourceCommand()
        {
            return;
        }// end function

        override public function execute(param1:INotification) : void
        {
            var _loc_2:* = SelectUnitProxy(facade.retrieveProxy(SelectUnitProxy.NAME));
            _loc_2.loadResource();
            return;
        }// end function

    }
}
