package com.kbmj.viking.proxy.home
{
    import com.adobe.serialization.json.*;
    import com.kbmj.viking.proxy.*;

    public class GatheringProxy extends LoaderProxy
    {
        public static const GATHERING_START_ERROR:String = NAME + "/notes/gatherError";
        public static const GATHERING_START:String = NAME + "/notes/gather";
        public static const NAME:String = "GatheringProxy";

        public function GatheringProxy()
        {
            super(NAME);
            return;
        }// end function

        override public function onRegister() : void
        {
            return;
        }// end function

        public function gather(param1:String, param2:int, param3:int) : void
        {
            var activity:* = param1;
            var unitId:* = param2;
            var quantity:* = param3;
            trace("activity:" + activity);
            var json:* = JSON.encode({activity:activity, unit_id:unitId, execution_count:quantity});
            loadWithJson("/api/activities/start", GATHERING_START, GATHERING_START_ERROR, function (param1:Object) : Object
            {
                return param1;
            }// end function
            , json);
            return;
        }// end function

    }
}
