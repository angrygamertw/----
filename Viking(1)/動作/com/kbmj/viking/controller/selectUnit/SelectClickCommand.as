package com.kbmj.viking.controller.selectUnit
{
    import com.kbmj.viking.proxy.*;
    import com.kbmj.viking.proxy.selectUnit.*;
    import com.kbmj.viking.vo.*;
    import com.kbmj.viking.vo.tactics.*;
    import org.puremvc.as3.interfaces.*;
    import org.puremvc.as3.patterns.command.*;

    public class SelectClickCommand extends SimpleCommand
    {
        public static const SHOW_SELECT_WINDOW:String = "showSelectWindow";

        public function SelectClickCommand()
        {
            return;
        }// end function

        override public function execute(param1:INotification) : void
        {
            var _loc_2:* = param1.getBody() as UnitVO;
            var _loc_3:* = SelectUnitProxy(facade.retrieveProxy(SelectUnitProxy.NAME));
            var _loc_4:* = ResourceProxy(facade.retrieveProxy(ResourceProxy.NAME));
            var _loc_5:* = ResourceProxy(facade.retrieveProxy(ResourceProxy.NAME)).equipableResource(_loc_2.jobMasterVO, _loc_3.resource);
            sendNotification(SHOW_SELECT_WINDOW, [_loc_2, _loc_5]);
            return;
        }// end function

    }
}
