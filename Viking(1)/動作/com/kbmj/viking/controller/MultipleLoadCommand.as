package com.kbmj.viking.controller
{
    import com.kbmj.viking.proxy.*;
    import org.puremvc.as3.interfaces.*;
    import org.puremvc.as3.patterns.command.*;

    public class MultipleLoadCommand extends SimpleCommand
    {

        public function MultipleLoadCommand()
        {
            return;
        }// end function

        override public function execute(param1:INotification) : void
        {
            var _loc_2:* = param1.getBody() as Array;
            var _loc_3:* = _loc_2[0] as String;
            var _loc_4:* = MultipleLoadProxy(facade.retrieveProxy(MultipleLoadProxy.NAME));
            MultipleLoadProxy(facade.retrieveProxy(MultipleLoadProxy.NAME)).loadComplete(_loc_3, _loc_2[1], _loc_2[2]);
            return;
        }// end function

    }
}
