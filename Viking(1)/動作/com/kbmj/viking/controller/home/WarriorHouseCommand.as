package com.kbmj.viking.controller.home
{
    import com.kbmj.viking.proxy.tactics.*;
    import com.kbmj.viking.vo.tactics.*;
    import org.puremvc.as3.interfaces.*;
    import org.puremvc.as3.patterns.command.*;

    public class WarriorHouseCommand extends SimpleCommand
    {
        private var livingUnits:Array;
        public static const NOW_LIVING:String = "nowLivingCommand";
        public static const NOW_LIVING_ALL:String = "nowLivingAllCommand";
        public static const LEAVE_HOUSE:String = "leaveHouseCommand";
        public static const HOUSE_LIVING:String = "houseLivingCommand";
        public static const NAME:String = "warriorHouseCommand";

        public function WarriorHouseCommand()
        {
            return;
        }// end function

        override public function execute(param1:INotification) : void
        {
            var _loc_3:Object = null;
            var _loc_4:Object = null;
            var _loc_5:Array = null;
            var _loc_6:int = 0;
            var _loc_7:Object = null;
            var _loc_8:Array = null;
            var _loc_9:UnitVO = null;
            var _loc_2:* = UnitProxy(facade.retrieveProxy(UnitProxy.NAME));
            switch(param1.getName())
            {
                case "HouseLiving":
                {
                    _loc_2.loadHomeUnits();
                    _loc_3 = param1.getBody() as Object;
                    livingUnits = new Array();
                    if (_loc_3)
                    {
                        livingUnits.push(_loc_2.getHomeUnitById(_loc_3.woman_id));
                        livingUnits.push(_loc_2.getHomeUnitById(_loc_3.man_id));
                    }
                    sendNotification(HOUSE_LIVING, [livingUnits, _loc_3.building_id]);
                    break;
                }
                case "NowLiving":
                {
                    livingUnits = new Array();
                    livingUnits = param1.getBody() as Array;
                    for each (_loc_9 in livingUnits)
                    {
                        
                        _loc_2.loadAnimation(_loc_9);
                    }
                    sendNotification(NOW_LIVING, livingUnits);
                    break;
                }
                case "NowLivingAll":
                {
                    _loc_4 = param1.getBody() as Object;
                    _loc_5 = new Array();
                    _loc_6 = -1;
                    if (_loc_4)
                    {
                        if (!_loc_4.house_stay_history.finished_at)
                        {
                            _loc_5.push(_loc_2.getHomeUnitById(_loc_4.house_stay_history.woman_id));
                            _loc_5.push(_loc_2.getHomeUnitById(_loc_4.house_stay_history.man_id));
                            _loc_6 = _loc_4.house_stay_history.building_id;
                        }
                    }
                    sendNotification(NOW_LIVING_ALL, [_loc_5, _loc_6]);
                    break;
                }
                case "LeaveHouse":
                {
                    _loc_2.loadHomeUnits();
                    _loc_7 = param1.getBody() as Object;
                    _loc_8 = new Array();
                    sendNotification(LEAVE_HOUSE, [_loc_7, _loc_8]);
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
