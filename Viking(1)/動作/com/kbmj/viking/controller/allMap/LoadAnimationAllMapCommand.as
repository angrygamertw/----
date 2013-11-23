package com.kbmj.viking.controller.allMap
{
    import com.kbmj.viking.proxy.tactics.*;
    import com.kbmj.viking.vo.tactics.*;
    import org.puremvc.as3.interfaces.*;
    import org.puremvc.as3.patterns.command.*;

    public class LoadAnimationAllMapCommand extends SimpleCommand
    {
        public static const NAME:String = "LoadAnimationAllMapCommand";
        public static const LOAD_ANIMATION:String = "LoadAnimationAllMapCommand";

        public function LoadAnimationAllMapCommand()
        {
            return;
        }// end function

        override public function execute(param1:INotification) : void
        {
            var _loc_5:UnitVO = null;
            var _loc_2:* = UnitProxy(facade.retrieveProxy(UnitProxy.NAME));
            var _loc_3:* = param1.getBody();
            var _loc_4:* = _loc_3.waitingUnits;
            for each (_loc_5 in _loc_4)
            {
                
                _loc_2.loadAnimation(_loc_5);
            }
            _loc_4 = _loc_3.selectedUnits;
            for each (_loc_5 in _loc_4)
            {
                
                _loc_2.loadAnimation(_loc_5);
            }
            sendNotification(LOAD_ANIMATION);
            return;
        }// end function

    }
}
