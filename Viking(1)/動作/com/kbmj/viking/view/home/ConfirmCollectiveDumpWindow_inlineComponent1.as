package com.kbmj.viking.view.home
{
    import flash.events.*;
    import flash.utils.*;
    import mx.binding.*;
    import mx.controls.*;
    import mx.core.*;
    import mx.events.*;
    import mx.styles.*;

    public class ConfirmCollectiveDumpWindow_inlineComponent1 extends Label implements IBindingClient
    {
        var _bindingsBeginWithWord:Object;
        var _bindingsByDestination:Object;
        var _bindings:Array;
        var _watchers:Array;
        private var _88844982outerDocument:ConfirmCollectiveDumpWindow;
        private static var _watcherSetupUtil:IWatcherSetupUtil;

        public function ConfirmCollectiveDumpWindow_inlineComponent1()
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
                this.textDecoration = "underline";
                return;
            }// end function
            ;
            this.buttonMode = true;
            this.mouseChildren = false;
            this.toolTip = "詳細";
            this.addEventListener("click", ___ConfirmCollectiveDumpWindow_inlineComponent1_Label1_click);
            return;
        }// end function

        private function _ConfirmCollectiveDumpWindow_inlineComponent1_bindingsSetup() : Array
        {
            var binding:Binding;
            var result:Array;
            binding = new Binding(this, function () : String
            {
                var _loc_1:* = data.nameLabel;
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

        public function set outerDocument(param1:ConfirmCollectiveDumpWindow) : void
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
            var target:ConfirmCollectiveDumpWindow_inlineComponent1;
            var watcherSetupUtilClass:Object;
            var bindings:* = _ConfirmCollectiveDumpWindow_inlineComponent1_bindingsSetup();
            var watchers:Array;
            target;
            if (_watcherSetupUtil == null)
            {
                watcherSetupUtilClass = getDefinitionByName("_com_kbmj_viking_view_home_ConfirmCollectiveDumpWindow_inlineComponent1WatcherSetupUtil");
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

        public function ___ConfirmCollectiveDumpWindow_inlineComponent1_Label1_click(event:MouseEvent) : void
        {
            outerDocument.onDetail(data);
            return;
        }// end function

        public function get outerDocument() : ConfirmCollectiveDumpWindow
        {
            return this._88844982outerDocument;
        }// end function

        private function _ConfirmCollectiveDumpWindow_inlineComponent1_bindingExprs() : void
        {
            var _loc_1:* = undefined;
            _loc_1 = data.nameLabel;
            return;
        }// end function

        public static function set watcherSetupUtil(param1:IWatcherSetupUtil) : void
        {
            ConfirmCollectiveDumpWindow_inlineComponent1._watcherSetupUtil = param1;
            return;
        }// end function

    }
}
