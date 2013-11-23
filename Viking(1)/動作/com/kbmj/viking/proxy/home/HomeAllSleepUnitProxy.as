package com.kbmj.viking.proxy.home
{
    import com.adobe.serialization.json.*;
    import com.kbmj.viking.proxy.*;
    import com.kbmj.viking.proxy.tactics.*;
    import com.kbmj.viking.vo.home.*;
    import flash.display.*;
    import flash.events.*;

    public class HomeAllSleepUnitProxy extends LoaderProxy
    {
        private var coffins:Array;
        public static const COFFIN_ACTIVATED:String = NAME + "/coffinActivated";
        public static const SET_SLEEPING_UNIT_ERROR:String = NAME + "/setSleeingUnitError";
        public static const AWAKE_UNIT:String = NAME + "/notes/awakeUnit";
        public static const AWAKE_UNIT_ERROR:String = NAME + "/notes/awakeUnitError";
        public static const COFFINS_LOADED:String = NAME + "/notes/coffinsLoaded";
        public static const NAME:String = "HomeAllSleepUnitProxy";
        public static const COFFIN_ACTIVATED_ERROR:String = NAME + "/coffinActivatedError";
        public static const UPDATE_POWER:String = NAME + "/notes/updatePower";
        public static const SET_SLEEPING_UNIT:String = NAME + "/setSleeingUnit";

        public function HomeAllSleepUnitProxy()
        {
            coffins = new Array();
            super(NAME);
            return;
        }// end function

        public function awakeUnit(param1:int) : void
        {
            var coffinId:* = param1;
            var json:* = JSON.encode({coffin_id:coffinId});
            loadWithJson("/api/graveyards/awake_unit", AWAKE_UNIT, AWAKE_UNIT_ERROR, function () : void
            {
                return;
            }// end function
            , json);
            return;
        }// end function

        override public function onRegister() : void
        {
            return;
        }// end function

        public function sleepUnit(param1:int, param2:int) : void
        {
            var coffinId:* = param1;
            var unitId:* = param2;
            var json:* = JSON.encode({coffin_id:coffinId, unit_id:unitId});
            loadWithJson("/api/graveyards/sleep_unit", SET_SLEEPING_UNIT, SET_SLEEPING_UNIT_ERROR, function () : void
            {
                return;
            }// end function
            , json);
            return;
        }// end function

        public function activateCoffin(param1:int) : void
        {
            var coffinId:* = param1;
            var json:* = JSON.encode({coffin_id:coffinId});
            loadWithJson("/api/graveyards/activate_coffin", COFFIN_ACTIVATED, COFFIN_ACTIVATED_ERROR, function () : void
            {
                sendNotification(UPDATE_POWER);
                loadCoffins();
                return;
            }// end function
            , json);
            return;
        }// end function

        public function loadCoffins() : void
        {
            load("/api/graveyards/coffins", COFFINS_LOADED, function (param1:Array) : Array
            {
                var object:Object;
                var rawCoffin:Object;
                var coffin:CoffinVO;
                var response:* = param1;
                var unitProxy:* = UnitProxy(facade.retrieveProxy(UnitProxy.NAME));
                var animationProxy:* = AnimationProxy(facade.retrieveProxy(AnimationProxy.NAME));
                coffins = new Array();
                var _loc_3:int = 0;
                var _loc_4:* = response;
                while (_loc_4 in _loc_3)
                {
                    
                    object = _loc_4[_loc_3];
                    rawCoffin = object.coffin;
                    coffin = new CoffinVO();
                    coffin.coffinId = rawCoffin.id;
                    coffin.isActive = rawCoffin["active?"];
                    coffin.expiredAtLabel = rawCoffin.expired_at_label;
                    if (rawCoffin.unit_id)
                    {
                        coffin.unit = unitProxy.unitFactory(rawCoffin.unit);
                        coffin.unit.loader.contentLoaderInfo.addEventListener(Event.COMPLETE, function (event:Event) : void
                {
                    var _loc_2:* = LoaderInfo(event.target);
                    MovieClip(_loc_2.content).gotoAndStop("walk_f_l");
                    return;
                }// end function
                );
                        coffin.unit.loader.loadBytes(animationProxy.getUnitAnimation(coffin.unit.jobMasterVO.code, coffin.unit.gender));
                        coffin.unit.uic.addChild(coffin.unit.loader);
                    }
                    coffins.push(coffin);
                }
                return coffins;
            }// end function
            );
            return;
        }// end function

    }
}
