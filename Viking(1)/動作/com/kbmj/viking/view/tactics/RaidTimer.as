package com.kbmj.viking.view.tactics
{
    import com.kbmj.viking.lib.*;
    import flash.utils.*;
    import mx.binding.*;
    import mx.containers.*;
    import mx.controls.*;
    import mx.core.*;
    import mx.events.*;

    public class RaidTimer extends Canvas implements IBindingClient
    {
        public var _RaidTimer_Label1:Label;
        var _bindingsByDestination:Object;
        private var _1881597661_timeString:String;
        var _bindingsBeginWithWord:Object;
        var _watchers:Array;
        private var _time:int;
        var _bindings:Array;
        private var _documentDescriptor_:UIComponentDescriptor;
        private static var _watcherSetupUtil:IWatcherSetupUtil;

        public function RaidTimer()
        {
            _documentDescriptor_ = new UIComponentDescriptor({type:Canvas, propertiesFactory:function () : Object
            {
                return {childDescriptors:[new UIComponentDescriptor({type:Label, id:"_RaidTimer_Label1", stylesFactory:function () : void
                {
                    this.fontSize = 20;
                    return;
                }// end function
                , propertiesFactory:function () : Object
                {
                    return {x:25, y:12};
                }// end function
                })]};
            }// end function
            });
            _bindings = [];
            _watchers = [];
            _bindingsByDestination = {};
            _bindingsBeginWithWord = {};
            mx_internal::_document = this;
            this.styleName = "RaidTimer";
            this.addEventListener("creationComplete", ___RaidTimer_Canvas1_creationComplete);
            return;
        }// end function

        public function ___RaidTimer_Canvas1_creationComplete(event:FlexEvent) : void
        {
            init();
            return;
        }// end function

        private function set _timeString(param1:String) : void
        {
            var _loc_2:* = this._1881597661_timeString;
            if (_loc_2 !== param1)
            {
                this._1881597661_timeString = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "_timeString", _loc_2, param1));
            }
            return;
        }// end function

        private function _RaidTimer_bindingsSetup() : Array
        {
            var binding:Binding;
            var result:Array;
            binding = new Binding(this, function () : String
            {
                var _loc_1:* = _timeString;
                var _loc_2:* = _loc_1 == undefined ? (null) : (String(_loc_1));
                return _loc_2;
            }// end function
            , function (param1:String) : void
            {
                _RaidTimer_Label1.text = param1;
                return;
            }// end function
            , "_RaidTimer_Label1.text");
            result[0] = binding;
            binding = new Binding(this, function () : uint
            {
                return 16777215;
            }// end function
            , function (param1:uint) : void
            {
                _RaidTimer_Label1.setStyle("color", param1);
                return;
            }// end function
            , "_RaidTimer_Label1.color");
            result[1] = binding;
            return result;
        }// end function

        public function get time() : int
        {
            return _time;
        }// end function

        override public function initialize() : void
        {
            var target:RaidTimer;
            var watcherSetupUtilClass:Object;
            .mx_internal::setDocumentDescriptor(_documentDescriptor_);
            var bindings:* = _RaidTimer_bindingsSetup();
            var watchers:Array;
            target;
            if (_watcherSetupUtil == null)
            {
                watcherSetupUtilClass = getDefinitionByName("_com_kbmj_viking_view_tactics_RaidTimerWatcherSetupUtil");
                var _loc_2:* = watcherSetupUtilClass;
                _loc_2.watcherSetupUtilClass["init"](null);
            }
            _watcherSetupUtil.setup(this, function (param1:String)
            {
                return target[param1];
            }// end function
            , bindings, watchers);
            var i:uint;
            while (i < bindings.length)
            {
                
                Binding(bindings[i]).execute();
                i = (i + 1);
            }
            mx_internal::_bindings = mx_internal::_bindings.concat(bindings);
            mx_internal::_watchers = mx_internal::_watchers.concat(watchers);
            super.initialize();
            return;
        }// end function

        private function get _timeString() : String
        {
            return this._1881597661_timeString;
        }// end function

        public function set time(param1:int) : void
        {
            _time = param1;
            _timeString = Utils.secToMinutesString(_time);
            return;
        }// end function

        public function init() : void
        {
            return;
        }// end function

        public function resetTimeString() : void
        {
            _timeString = "";
            return;
        }// end function

        private function _RaidTimer_bindingExprs() : void
        {
            var _loc_1:* = undefined;
            _loc_1 = _timeString;
            _loc_1 = 16777215;
            return;
        }// end function

        public static function set watcherSetupUtil(param1:IWatcherSetupUtil) : void
        {
            _watcherSetupUtil = param1;
            return;
        }// end function

    }
}
