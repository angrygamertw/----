package com.kbmj.viking.controller.home
{
    import com.kbmj.viking.proxy.home.*;
    import com.kbmj.viking.vo.tactics.*;
    import org.puremvc.as3.interfaces.*;
    import org.puremvc.as3.patterns.command.*;

    public class RejuvenateCommand extends SimpleCommand
    {
        public static const NAME:String = "RejuvenateCommand";

        public function RejuvenateCommand()
        {
            return;
        }// end function

        override public function execute(param1:INotification) : void
        {
            var _loc_2:* = param1.getBody() as UnitVO;
            var _loc_3:* = HomeProxy(facade.retrieveProxy(HomeProxy.NAME));
            _loc_3.rejuvenateUnit(_loc_2);
            return;
        }// end function

    }
}
