package com.kbmj.viking.controller.selectUnit
{
    import com.kbmj.viking.proxy.selectUnit.*;
    import com.kbmj.viking.vo.*;
    import org.puremvc.as3.interfaces.*;
    import org.puremvc.as3.patterns.command.*;

    public class LoadResourceCompleteCommand extends SimpleCommand
    {
        public static const NAME:String = "LoadResourceCompleteCommand";

        public function LoadResourceCompleteCommand()
        {
            return;
        }// end function

        override public function execute(param1:INotification) : void
        {
            var _loc_2:* = SelectUnitProxy(facade.retrieveProxy(SelectUnitProxy.NAME));
            var _loc_3:* = param1.getBody() as ResourceVO;
            _loc_2.resource = _loc_3;
            return;
        }// end function

    }
}
