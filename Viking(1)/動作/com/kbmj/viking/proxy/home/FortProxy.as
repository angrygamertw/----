package com.kbmj.viking.proxy.home
{
    import com.adobe.serialization.json.*;
    import com.kbmj.viking.proxy.*;

    public class FortProxy extends LoaderProxy
    {
        public static const FORT_UNIT_ERROR:String = "fortUnitError";
        public static const NOW_FORT_ALL:String = "nowFortAll";
        public static const NAME:String = "FortProxy";
        public static const NOW_FORT_ALL_ERROR:String = "nowFortAllError";
        public static const LEAVE_FORT:String = "leaveFort";
        public static const NOW_FORT:String = "nowFort";
        public static const FORT_UNIT:String = "fortUnit";
        public static const LEAVE_FORT_ERROR:String = "leaveFortError";
        public static const NOW_FORT_ERROR:String = "nowFortError";

        public function FortProxy()
        {
            super(NAME);
            return;
        }// end function

        public function nowFortAll(param1:int) : void
        {
            var buildingId:* = param1;
            var json:* = JSON.encode({building_id:buildingId});
            loadWithJson("/api/home/fort", NOW_FORT_ALL, NOW_FORT_ALL_ERROR, function (param1:Object) : Object
            {
                return param1;
            }// end function
            , json);
            return;
        }// end function

        public function nowFort(param1:int) : void
        {
            var buildingId:* = param1;
            var json:* = JSON.encode({building_id:buildingId});
            loadWithJson("/api/home/fort", NOW_FORT, NOW_FORT_ERROR, function (param1:Object) : Object
            {
                return param1;
            }// end function
            , json);
            return;
        }// end function

        override public function onRegister() : void
        {
            return;
        }// end function

        public function leaveFort(param1:int) : void
        {
            var buildingId:* = param1;
            var json:* = JSON.encode({action_type:"out", building_id:buildingId});
            loadWithJson("/api/home/fort", LEAVE_FORT, LEAVE_FORT_ERROR, function (param1:Object) : Object
            {
                return param1.fort_stay_history;
            }// end function
            , json);
            return;
        }// end function

        public function postFort(param1:int, param2:int) : void
        {
            var buildingId:* = param1;
            var unitId:* = param2;
            var json:* = JSON.encode({action_type:"in", building_id:buildingId, unit_id:unitId});
            loadWithJson("/api/home/fort", FORT_UNIT, FORT_UNIT_ERROR, function (param1:Object) : Object
            {
                return param1.fort_stay_history;
            }// end function
            , json);
            return;
        }// end function

    }
}
