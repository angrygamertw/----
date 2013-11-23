package com.kbmj.viking.view
{
    import flash.utils.*;
    import mx.binding.*;
    import mx.controls.*;
    import mx.core.*;
    import mx.events.*;

    public class GuildWindow_inlineComponent5 extends Label implements IBindingClient
    {
        private var _88844982outerDocument:GuildWindow;
        var _bindingsBeginWithWord:Object;
        var _bindingsByDestination:Object;
        var _bindings:Array;
        var _watchers:Array;
        private static var _watcherSetupUtil:IWatcherSetupUtil;

        public function GuildWindow_inlineComponent5()
        {
            _bindings = [];
            _watchers = [];
            _bindingsByDestination = {};
            _bindingsBeginWithWord = {};
            return;
        }// end function

        private function _GuildWindow_inlineComponent5_bindingExprs() : void
        {
            var _loc_1:* = undefined;
            _loc_1 = data.topPoint + "pt";
            return;
        }// end function

        public function set outerDocument(param1:GuildWindow) : void
        {
            var _loc_2:* = this._88844982outerDocument;
            if (_loc_2 !== param1)
            {
                this._88844982outerDocument = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "outerDocument", _loc_2, param1));
            }
            return;
        }// end function

        override public function initialize() : void
        {
            var target:GuildWindow_inlineComponent5;
            var watcherSetupUtilClass:Object;
            var bindings:* = _GuildWindow_inlineComponent5_bindingsSetup();
            var watchers:Array;
            target;
            if (_watcherSetupUtil == null)
            {
                watcherSetupUtilClass = getDefinitionByName("_com_kbmj_viking_view_GuildWindow_inlineComponent5WatcherSetupUtil");
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

        private function _GuildWindow_inlineComponent5_bindingsSetup() : Array
        {
            var binding:Binding;
            var result:Array;
            binding = new Binding(this, function () : String
            {
                var _loc_1:* = data.topPoint + "pt";
                var _loc_2:* = _loc_1 == undefined ? (null) : (String(_loc_1));
                return _loc_2;
            }// end function
            , function (param1:String) : void
            {
                this.text = param1;
                return;
            }// end function
            , "this.text");
            result[0] = binding;
            return result;
        }// end function

        public function get outerDocument() : GuildWindow
        {
            return this._88844982outerDocument;
        }// end function

        public static function set watcherSetupUtil(param1:IWatcherSetupUtil) : void
        {
            GuildWindow_inlineComponent5._watcherSetupUtil = param1;
            return;
        }// end function

    }
}
