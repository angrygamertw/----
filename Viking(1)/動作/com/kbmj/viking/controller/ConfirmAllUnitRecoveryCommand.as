package com.kbmj.viking.controller
{
    import com.kbmj.viking.lib.*;
    import com.kbmj.viking.proxy.selectUnit.*;
    import com.kbmj.viking.proxy.tactics.*;
    import com.kbmj.viking.view.*;
    import com.kbmj.viking.view.selectUnit.*;
    import com.kbmj.viking.vo.tactics.*;
    import org.puremvc.as3.interfaces.*;
    import org.puremvc.as3.patterns.command.*;

    public class ConfirmAllUnitRecoveryCommand extends SimpleCommand
    {
        public static const NAME:String = "ConfirmItemSummonCommand";
        public static const CONFIRM_ALL_UNIT_RECOVERY:String = NAME + "/confirmAllUnitRecovery";

        public function ConfirmAllUnitRecoveryCommand()
        {
            return;
        }// end function

        override public function execute(param1:INotification) : void
        {
            var _loc_7:UnitVO = null;
            var _loc_2:* = UnitProxy(facade.retrieveProxy(UnitProxy.NAME));
            var _loc_3:* = SelectUnitProxy(facade.retrieveProxy(SelectUnitProxy.NAME));
            var _loc_4:* = param1.getBody() as String;
            var _loc_5:* = _loc_2.homeUnits;
            if (_loc_4 == SelectUnitMediator.ALL_UNIT_RECOVERY_COMPLETE)
            {
                _loc_5 = _loc_3.units;
            }
            if (_loc_5.length <= 0)
            {
                return;
            }
            var _loc_6:int = 0;
            for each (_loc_7 in _loc_5)
            {
                
                _loc_6 = _loc_6 + (_loc_7.realMaxHp - _loc_7.hp);
            }
            if (_loc_6 <= 0)
            {
                sendNotification(ApplicationMediator.SHOW_ALERT_WINDOW, Utils.i18n("allUnitRecoveryFailed"));
            }
            else
            {
                sendNotification(CONFIRM_ALL_UNIT_RECOVERY, [Utils.i18n("allUnitRecoveryConfirm"), _loc_4]);
            }
            return;
        }// end function

    }
}
