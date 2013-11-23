package com.kbmj.viking.proxy
{
    import com.kbmj.viking.vo.*;
    import flash.events.*;
    import flash.net.*;
    import mx.events.*;

    public class ConfigProxy extends LoaderProxy implements IEventDispatcher
    {
        private var _bindingEventDispatcher:EventDispatcher;
        private var _489621798_configVO:ConfigVO;
        public static const LOAD_CONFIG:String = NAME + "loadConfig";
        public static const LOAD_VIKING_CONFIG_COMPLETE:String = NAME + "loadVikingConfigComplete";
        public static const NAME:String = "ConfigProxy";

        public function ConfigProxy()
        {
            _489621798_configVO = new ConfigVO();
            _bindingEventDispatcher = new EventDispatcher(IEventDispatcher(this));
            super(NAME);
            loadConfig();
            return;
        }// end function

        public function dispatchEvent(event:Event) : Boolean
        {
            return _bindingEventDispatcher.dispatchEvent(event);
        }// end function

        public function setConfig() : void
        {
            var _loc_1:* = SharedObject.getLocal("ein-herjar");
            _loc_1.data.bgm = configVO.playSound;
            _loc_1.data.fast = configVO.fast;
            _loc_1.flush();
            return;
        }// end function

        public function loadConfig() : void
        {
            var _loc_1:* = SharedObject.getLocal("ein-herjar");
            if (_loc_1.data.bgm == true)
            {
                configVO.playSound = true;
            }
            if (_loc_1.data.fast == true)
            {
                trace("load_fast_true");
                configVO.fast = true;
            }
            return;
        }// end function

        public function removeEventListener(param1:String, param2:Function, param3:Boolean = false) : void
        {
            _bindingEventDispatcher.removeEventListener(param1, param2, param3);
            return;
        }// end function

        public function hasEventListener(param1:String) : Boolean
        {
            return _bindingEventDispatcher.hasEventListener(param1);
        }// end function

        public function addEventListener(param1:String, param2:Function, param3:Boolean = false, param4:int = 0, param5:Boolean = false) : void
        {
            _bindingEventDispatcher.addEventListener(param1, param2, param3, param4, param5);
            return;
        }// end function

        public function loadVikingConfig() : void
        {
            load("/api/masters/config", LOAD_VIKING_CONFIG_COMPLETE, function (param1:Object) : Object
            {
                configVO.fourByFourAreaFlag = param1.four_by_four_area_flag;
                configVO.nonActiveAreaFlag = param1.non_active_area_flag;
                configVO.buyPaymentItemsEnabled = param1.buy_payment_items_enabled;
                configVO.specialMatchStart = param1.special_match_battle_start;
                return param1;
            }// end function
            );
            return;
        }// end function

        private function set _configVO(param1:ConfigVO) : void
        {
            var _loc_2:* = this._489621798_configVO;
            if (_loc_2 !== param1)
            {
                this._489621798_configVO = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "_configVO", _loc_2, param1));
            }
            return;
        }// end function

        public function willTrigger(param1:String) : Boolean
        {
            return _bindingEventDispatcher.willTrigger(param1);
        }// end function

        private function get _configVO() : ConfigVO
        {
            return this._489621798_configVO;
        }// end function

        public function get configVO() : ConfigVO
        {
            return _configVO;
        }// end function

        public function set configVO(param1:ConfigVO) : void
        {
            _configVO = param1;
            return;
        }// end function

    }
}
