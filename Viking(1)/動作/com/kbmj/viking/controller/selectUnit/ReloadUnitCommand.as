package com.kbmj.viking.controller.selectUnit
{
    import com.kbmj.viking.proxy.selectUnit.*;
    import com.kbmj.viking.proxy.tactics.*;
    import org.puremvc.as3.interfaces.*;
    import org.puremvc.as3.patterns.command.*;

    public class ReloadUnitCommand extends SimpleCommand
    {
        public static const UNIT_LEVEL_UP:String = "SelectUnitMediator/UnitLvUp";
        public static const HOME_UNITS_LOADED_FOR_SEND_ARMY:String = NAME + "/homeUnitLoadedForSendArmy";
        public static const HOME_UNITS_LOADED_FOR_RAID:String = NAME + "/homeUnitLoadedForRaid";
        public static const NAME:String = "ReloadUnitCommand";

        public function ReloadUnitCommand()
        {
            return;
        }// end function

        override public function execute(param1:INotification) : void
        {
            var _loc_2:* = SelectUnitProxy(facade.retrieveProxy(SelectUnitProxy.NAME));
            var _loc_3:* = UnitProxy(facade.retrieveProxy(UnitProxy.NAME));
            switch(_loc_2.selectUnitFor)
            {
                case SelectUnitProxy.FOR_ALL_MAP:
                case SelectUnitProxy.FOR_EVIL_POINT:
                {
                    break;
                }
                case SelectUnitProxy.FOR_RAID:
                {
                    _loc_3.loadHomeUnits(HOME_UNITS_LOADED_FOR_RAID);
                    break;
                }
                case SelectUnitProxy.FOR_SEND_ARMY:
                {
                    _loc_3.loadHomeUnits(HOME_UNITS_LOADED_FOR_SEND_ARMY);
                    break;
                }
                default:
                {
                    break;
                }
            }
            return;
        }// end function

    }
}
