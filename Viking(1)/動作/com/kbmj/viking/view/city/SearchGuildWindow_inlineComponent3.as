package com.kbmj.viking.view.city
{
    import flash.utils.*;
    import mx.binding.*;
    import mx.controls.*;
    import mx.core.*;
    import mx.events.*;
    import mx.styles.*;

    public class SearchGuildWindow_inlineComponent3 extends Label implements IBindingClient
    {
        var _bindingsByDestination:Object;
        var _bindings:Array;
        var _watchers:Array;
        var _bindingsBeginWithWord:Object;
        private var _88844982outerDocument:SearchGuildWindow;
        private static var _watcherSetupUtil:IWatcherSetupUtil;

        public function SearchGuildWindow_inlineComponent3()
        {
            _bindings = [];
            _watchers = [];
            _bindingsByDestination = {};
            _bindingsBeginWithWord = {};
            if (!this.styleDeclaration)
            {
                this.styleDeclaration = new CSSStyleDeclaration();
            }
            this.styleDeclaration.defaultFactory = function () : void
            {
                this.textAlign = "center";
                return;
            }// end function
            ;
            return;
        }// end function

        private function _SearchGuildWindow_inlineComponent3_bindingsSetup() : Array
        {
            var binding:Binding;
            var result:Array;
            binding = new Binding(this, function () : String
            {
                var _loc_1:* = outerDocument.getMember(data);
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
            binding = new Binding(this, function () : uint
            {
                return outerDocument.limitColor(data);
            }// end function
            , function (param1:uint) : void
            {
                this.setStyle("color", param1);
                return;
            }// end function
            , "this.color");
            result[1] = binding;
            return result;
        }// end function

        public function set outerDocument(param1:SearchGuildWindow) : void
        {
            var _loc_2:* = this._88844982outerDocument;
            if (_loc_2 !== param1)
            {
                this._88844982outerDocument = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "outerDocument", _loc_2, param1));
            }
            return;
        }// end function

        private function _SearchGuildWindow_inlineComponent3_bindingExprs() : void
        {
            var _loc_1:* = undefined;
            _loc_1 = outerDocument.getMember(data);
            _loc_1 = outerDocument.limitColor(data);
            return;
        }// end function

        override public function initialize() : void
        {
            var target:SearchGuildWindow_inlineComponent3;
            var watcherSetupUtilClass:Object;
            var bindings:* = _SearchGuildWindow_inlineComponent3_bindingsSetup();
            var watchers:Array;
            target;
            if (_watcherSetupUtil == null)
            {
                watcherSetupUtilClass = getDefinitionByName("_com_kbmj_viking_view_city_SearchGuildWindow_inlineComponent3WatcherSetupUtil");
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

        public function get outerDocument() : SearchGuildWindow
        {
            return this._88844982outerDocument;
        }// end function

        public static function set watcherSetupUtil(param1:IWatcherSetupUtil) : void
        {
            SearchGuildWindow_inlineComponent3._watcherSetupUtil = param1;
            return;
        }// end function

    }
}
