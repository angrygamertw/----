package com.kbmj.viking.proxy.city
{
    import com.adobe.serialization.json.*;
    import com.kbmj.viking.proxy.*;
    import com.kbmj.viking.view.city.*;

    public class TempleProxy extends LoaderProxy
    {
        public static const BUY_INDULGENCE:String = "buyIndulgence";
        public static const NAME:String = "TempleProxy";
        public static const BUY_INDULGENCE_ERROR:String = "buyIndulgenceError";

        public function TempleProxy()
        {
            super(NAME);
            return;
        }// end function

        public function buyIndulgence(param1:int) : void
        {
            var quantity:* = param1;
            var json:* = JSON.encode({quantity:quantity});
            loadWithJson("/api/markets/buy_indulgence", BUY_INDULGENCE, BUY_INDULGENCE_ERROR, function (param1:Object) : Object
            {
                return param1;
            }// end function
            , json);
            return;
        }// end function

        public function setWindowData(param1:CreateGuildWindow) : void
        {
            var _loc_2:* = MasterProxy(facade.retrieveProxy(MasterProxy.NAME));
            var _loc_3:* = new Array();
            var _loc_4:int = 1;
            while (_loc_4 < 10)
            {
                
                _loc_3.push(_loc_2.getMasterVO("guildFeatureMaster", _loc_4));
                _loc_4++;
            }
            param1.setData(_loc_3);
            param1.initWindow();
            return;
        }// end function

    }
}
