package com.kbmj.viking.controller.home
{
    import com.kbmj.viking.proxy.tactics.*;
    import com.kbmj.viking.vo.tactics.*;
    import org.puremvc.as3.interfaces.*;
    import org.puremvc.as3.patterns.command.*;

    public class FortCommand extends SimpleCommand
    {
        public static const LEAVE_FORT:String = "leaveFortCommand";
        public static const NOW_FORT:String = "nowFortCommand";
        public static const FORT_UNIT:String = "fortUnitCommand";
        public static const NAME:String = "fortCommand";

        public function FortCommand()
        {
            return;
        }// end function

        override public function execute(param1:INotification) : void
        {
            var _loc_3:Object = null;
            var _loc_4:Array = null;
            var _loc_5:Object = null;
            var _loc_6:Object = null;
            var _loc_7:Array = null;
            var _loc_8:UnitVO = null;
            var _loc_2:* = UnitProxy(facade.retrieveProxy(UnitProxy.NAME));
            switch(param1.getName())
            {
                case "fortUnit":
                {
                    _loc_2.loadHomeUnits();
                    _loc_3 = param1.getBody() as Object;
                    _loc_4 = new Array();
                    if (_loc_3)
                    {
                        _loc_4.push(_loc_2.getHomeUnitById(_loc_3.unit_id));
                    }
                    sendNotification(FORT_UNIT, [_loc_4, _loc_3.building_id]);
                    break;
                }
                case "nowFort":
                {
                    _loc_5 = param1.getBody() as Object;
                    if (_loc_5 && !_loc_5.fort_stay_history.finished_at)
                    {
                        _loc_8 = _loc_2.getHomeUnitById(_loc_5.fort_stay_history.unit_id);
                        _loc_2.loadAnimation(_loc_8);
                    }
                    sendNotification(NOW_FORT, _loc_8);
                    break;
                }
                case "leaveFort":
                {
                    _loc_2.loadHomeUnits();
                    _loc_6 = param1.getBody() as Object;
                    _loc_7 = new Array();
                    sendNotification(LEAVE_FORT, [_loc_6, _loc_7]);
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
