package com.kbmj.viking.proxy.home
{
    import com.adobe.serialization.json.*;
    import com.kbmj.viking.proxy.*;
    import com.kbmj.viking.proxy.tactics.*;

    public class WarriorHouseProxy extends LoaderProxy
    {
        public static const LEAVE_HOUSE_ERROR:String = "LeaveHouseError";
        public static const HOUSE_LIVING:String = "HouseLiving";
        public static const NAME:String = "WarriorHouseProxy";
        public static const NOW_LIVING_ALL_ERROR:String = "NowLivingAllError";
        public static const HEART_UNITS:String = "HeartUnit";
        public static const HOUSE_LIVING_ERROR:String = "HouseLivingError";
        public static const NOW_LIVING:String = "NowLiving";
        public static const NOW_LIVING_ALL:String = "NowLivingAll";
        public static const LEAVE_HOUSE:String = "LeaveHouse";
        public static const NOW_LIVING_ERROR:String = "NowLivingError";
        public static const HEART_UNITS_ERROR:String = "HeartUnitError";

        public function WarriorHouseProxy()
        {
            super(NAME);
            return;
        }// end function

        public function leaveHouse(param1:int) : void
        {
            var buildingId:* = param1;
            var json:* = JSON.encode({action_type:"out", building_id:buildingId});
            loadWithJson("/api/home/house", LEAVE_HOUSE, LEAVE_HOUSE_ERROR, function (param1:Object) : Object
            {
                return param1.house_stay_history;
            }// end function
            , json);
            return;
        }// end function

        override public function onRegister() : void
        {
            return;
        }// end function

        public function judgeHeart(param1:int, param2:int) : void
        {
            var unitId1:* = param1;
            var unitId2:* = param2;
            var json:* = JSON.encode({unit_id:unitId2});
            loadWithJson("/api/units/" + unitId1 + "/heart_units", HEART_UNITS, HEART_UNITS_ERROR, function (param1:Object) : Object
            {
                return param1.unit.heart;
            }// end function
            , json);
            return;
        }// end function

        public function living(param1:int, param2:int, param3:int) : void
        {
            var buildingId:* = param1;
            var manId:* = param2;
            var womanId:* = param3;
            var json:* = JSON.encode({action_type:"in", building_id:buildingId, man_id:manId, woman_id:womanId});
            loadWithJson("/api/home/house", HOUSE_LIVING, HOUSE_LIVING_ERROR, function (param1:Object) : Object
            {
                return param1.house_stay_history;
            }// end function
            , json);
            return;
        }// end function

        public function nowLivingAll(param1:int) : void
        {
            var buildingId:* = param1;
            var json:* = JSON.encode({building_id:buildingId});
            loadWithJson("/api/home/house", NOW_LIVING_ALL, NOW_LIVING_ALL_ERROR, function (param1:Object) : Object
            {
                return param1;
            }// end function
            , json);
            return;
        }// end function

        public function nowLiving(param1:int) : void
        {
            var buildingId:* = param1;
            var json:* = JSON.encode({building_id:buildingId});
            loadWithJson("/api/home/house", NOW_LIVING, NOW_LIVING_ERROR, function (param1:Object) : Array
            {
                var _loc_2:* = UnitProxy(facade.retrieveProxy(UnitProxy.NAME));
                var _loc_3:* = new Array();
                if (param1 && !param1.house_stay_history.finished_at)
                {
                    _loc_3.push(_loc_2.getHomeUnitById(param1.house_stay_history.woman_id));
                    _loc_3.push(_loc_2.getHomeUnitById(param1.house_stay_history.man_id));
                }
                return _loc_3;
            }// end function
            , json);
            return;
        }// end function

    }
}
