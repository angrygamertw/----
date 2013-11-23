package com.kbmj.viking.view.city
{
    import flash.events.*;
    import flash.utils.*;
    import mx.binding.*;
    import mx.controls.*;
    import mx.core.*;
    import mx.events.*;

    public class CreateGuildWindow_inlineComponent1 extends CheckBox implements IBindingClient
    {
        private var _88844982outerDocument:CreateGuildWindow;
        var _bindingsBeginWithWord:Object;
        var _bindingsByDestination:Object;
        var _bindings:Array;
        var _watchers:Array;
        private static var _watcherSetupUtil:IWatcherSetupUtil;

        public function CreateGuildWindow_inlineComponent1()
        {
            _bindings = [];
            _watchers = [];
            _bindingsByDestination = {};
            _bindingsBeginWithWord = {};
            this.addEventListener("click", ___CreateGuildWindow_inlineComponent1_CheckBox1_click);
            return;
        }// end function

        public function set outerDocument(param1:CreateGuildWindow) : void
        {
            var _loc_2:* = this._88844982outerDocument;
            if (_loc_2 !== param1)
            {
                this._88844982outerDocument = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "outerDocument", _loc_2, param1));
            }
            return;
        }// end function

        private function _CreateGuildWindow_inlineComponent1_bindingsSetup() : Array
        {
            var binding:Binding;
            var result:Array;
            binding = new Binding(this, function () : String
            {
                var _loc_1:* = data.label;
                var _loc_2:* = _loc_1 == undefined ? (null) : (String(_loc_1));
                return _loc_2;
            }// end function
            , function (param1:String) : void
            {
                this.label = param1;
                return;
            }// end function
            , "this.label");
            result[0] = binding;
            binding = new Binding(this, function () : Boolean
            {
                return data.enabled;
            }// end function
            , function (param1:Boolean) : void
            {
                this.enabled = param1;
                return;
            }// end function
            , "this.enabled");
            result[1] = binding;
            binding = new Binding(this, function () : Boolean
            {
                return data.clicked;
            }// end function
            , function (param1:Boolean) : void
            {
                this.selected = param1;
                return;
            }// end function
            , "this.selected");
            result[2] = binding;
            return result;
        }// end function

        override public function initialize() : void
        {
            var target:CreateGuildWindow_inlineComponent1;
            var watcherSetupUtilClass:Object;
            var bindings:* = _CreateGuildWindow_inlineComponent1_bindingsSetup();
            var watchers:Array;
            target;
            if (_watcherSetupUtil == null)
            {
                watcherSetupUtilClass = getDefinitionByName("_com_kbmj_viking_view_city_CreateGuildWindow_inlineComponent1WatcherSetupUtil");
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

        private function _CreateGuildWindow_inlineComponent1_bindingExprs() : void
        {
            var _loc_1:* = undefined;
            _loc_1 = data.label;
            _loc_1 = data.enabled;
            _loc_1 = data.clicked;
            return;
        }// end function

        public function ___CreateGuildWindow_inlineComponent1_CheckBox1_click(event:MouseEvent) : void
        {
            outerDocument.onCheck(data);
            return;
        }// end function

        public function get outerDocument() : CreateGuildWindow
        {
            return this._88844982outerDocument;
        }// end function

        public static function set watcherSetupUtil(param1:IWatcherSetupUtil) : void
        {
            CreateGuildWindow_inlineComponent1._watcherSetupUtil = param1;
            return;
        }// end function

    }
}
