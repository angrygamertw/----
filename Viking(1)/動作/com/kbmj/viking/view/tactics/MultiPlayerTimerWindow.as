package com.kbmj.viking.view.tactics
{
    import flash.utils.*;
    import mx.binding.*;
    import mx.containers.*;
    import mx.controls.*;
    import mx.core.*;
    import mx.events.*;

    public class MultiPlayerTimerWindow extends Canvas implements IBindingClient
    {
        public var _MultiPlayerTimerWindow_Label1:Label;
        private var _embed_mxml__swf_battle_info_window_info_time_swf_965184187:Class;
        var _bindingsBeginWithWord:Object;
        var _bindingsByDestination:Object;
        var _watchers:Array;
        private var _91294636_time:int = 0;
        var _bindings:Array;
        private var _1313927219time_id:Label;
        private var _documentDescriptor_:UIComponentDescriptor;
        private static var _watcherSetupUtil:IWatcherSetupUtil;

        public function MultiPlayerTimerWindow()
        {
            _documentDescriptor_ = new UIComponentDescriptor({type:Canvas, propertiesFactory:function () : Object
            {
                return {childDescriptors:[new UIComponentDescriptor({type:Image, propertiesFactory:function () : Object
                {
                    return {source:_embed_mxml__swf_battle_info_window_info_time_swf_965184187};
                }// end function
                }), new UIComponentDescriptor({type:Label, id:"_MultiPlayerTimerWindow_Label1", stylesFactory:function () : void
                {
                    this.textAlign = "center";
                    this.fontSize = 22;
                    this.color = 0;
                    return;
                }// end function
                , propertiesFactory:function () : Object
                {
                    return {x:102, y:68, width:80};
                }// end function
                }), new UIComponentDescriptor({type:Label, id:"time_id", stylesFactory:function () : void
                {
                    this.textAlign = "center";
                    this.fontSize = 22;
                    this.color = 16777215;
                    return;
                }// end function
                , propertiesFactory:function () : Object
                {
                    return {x:100, y:66, width:80};
                }// end function
                })]};
            }// end function
            });
            _embed_mxml__swf_battle_info_window_info_time_swf_965184187 = MultiPlayerTimerWindow__embed_mxml__swf_battle_info_window_info_time_swf_965184187;
            _bindings = [];
            _watchers = [];
            _bindingsByDestination = {};
            _bindingsBeginWithWord = {};
            mx_internal::_document = this;
            return;
        }// end function

        private function _MultiPlayerTimerWindow_bindingsSetup() : Array
        {
            var binding:Binding;
            var result:Array;
            binding = new Binding(this, function () : String
            {
                var _loc_1:* = _time;
                var _loc_2:* = _loc_1 == undefined ? (null) : (String(_loc_1));
                return _loc_2;
            }// end function
            , function (param1:String) : void
            {
                _MultiPlayerTimerWindow_Label1.text = param1;
                return;
            }// end function
            , "_MultiPlayerTimerWindow_Label1.text");
            result[0] = binding;
            binding = new Binding(this, function () : String
            {
                var _loc_1:* = _time;
                var _loc_2:* = _loc_1 == undefined ? (null) : (String(_loc_1));
                return _loc_2;
            }// end function
            , function (param1:String) : void
            {
                time_id.text = param1;
                return;
            }// end function
            , "time_id.text");
            result[1] = binding;
            return result;
        }// end function

        public function get time_id() : Label
        {
            return this._1313927219time_id;
        }// end function

        private function get _time() : int
        {
            return this._91294636_time;
        }// end function

        override public function initialize() : void
        {
            var target:MultiPlayerTimerWindow;
            var watcherSetupUtilClass:Object;
            .mx_internal::setDocumentDescriptor(_documentDescriptor_);
            var bindings:* = _MultiPlayerTimerWindow_bindingsSetup();
            var watchers:Array;
            target;
            if (_watcherSetupUtil == null)
            {
                watcherSetupUtilClass = getDefinitionByName("_com_kbmj_viking_view_tactics_MultiPlayerTimerWindowWatcherSetupUtil");
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

        public function init() : void
        {
            _time = 0;
            return;
        }// end function

        public function set time(param1:int) : void
        {
            _time = param1;
            if (_time >= 60)
            {
                time_id.setStyle("color", 16777215);
            }
            else
            {
                time_id.setStyle("color", 16719904);
            }
            return;
        }// end function

        private function set _time(param1:int) : void
        {
            var _loc_2:* = this._91294636_time;
            if (_loc_2 !== param1)
            {
                this._91294636_time = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "_time", _loc_2, param1));
            }
            return;
        }// end function

        public function set time_id(param1:Label) : void
        {
            var _loc_2:* = this._1313927219time_id;
            if (_loc_2 !== param1)
            {
                this._1313927219time_id = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "time_id", _loc_2, param1));
            }
            return;
        }// end function

        private function _MultiPlayerTimerWindow_bindingExprs() : void
        {
            var _loc_1:* = undefined;
            _loc_1 = _time;
            _loc_1 = _time;
            return;
        }// end function

        public static function set watcherSetupUtil(param1:IWatcherSetupUtil) : void
        {
            _watcherSetupUtil = param1;
            return;
        }// end function

    }
}
