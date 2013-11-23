﻿package com.kbmj.viking.view.selectUnit
{
    import flash.events.*;
    import flash.utils.*;
    import mx.binding.*;
    import mx.controls.*;
    import mx.core.*;
    import mx.events.*;
    import mx.styles.*;

    public class SelectItemListWindow_inlineComponent1 extends Label implements IBindingClient
    {
        var _bindingsByDestination:Object;
        var _bindings:Array;
        var _watchers:Array;
        var _bindingsBeginWithWord:Object;
        private var _88844982outerDocument:SelectItemListWindow;
        private static var _watcherSetupUtil:IWatcherSetupUtil;

        public function SelectItemListWindow_inlineComponent1()
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
            this.addEventListener("click", ___SelectItemListWindow_inlineComponent1_Label1_click);
            return;
        }// end function

        private function _SelectItemListWindow_inlineComponent1_bindingsSetup() : Array
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
            binding = new Binding(this, function () : String
            {
                var _loc_1:* = outerDocument.componentToolTip();
                var _loc_2:* = _loc_1 == undefined ? (null) : (String(_loc_1));
                return _loc_2;
            }// end function
            , function (param1:String) : void
            {
                this.toolTip = param1;
                return;
            }// end function
            , "this.toolTip");
            result[1] = binding;
            return result;
        }// end function

        public function set outerDocument(param1:SelectItemListWindow) : void
        {
            var _loc_2:* = this._88844982outerDocument;
            if (_loc_2 !== param1)
            {
                this._88844982outerDocument = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "outerDocument", _loc_2, param1));
            }
            return;
        }// end function

        private function _SelectItemListWindow_inlineComponent1_bindingExprs() : void
        {
            var _loc_1:* = undefined;
            _loc_1 = data.nameLabel;
            _loc_1 = outerDocument.componentToolTip();
            return;
        }// end function

        public function ___SelectItemListWindow_inlineComponent1_Label1_click(event:MouseEvent) : void
        {
            outerDocument.onDetail(data);
            return;
        }// end function

        override public function initialize() : void
        {
            var target:SelectItemListWindow_inlineComponent1;
            var watcherSetupUtilClass:Object;
            var bindings:* = _SelectItemListWindow_inlineComponent1_bindingsSetup();
            var watchers:Array;
            target;
            if (_watcherSetupUtil == null)
            {
                watcherSetupUtilClass = getDefinitionByName("_com_kbmj_viking_view_selectUnit_SelectItemListWindow_inlineComponent1WatcherSetupUtil");
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

        public function get outerDocument() : SelectItemListWindow
        {
            return this._88844982outerDocument;
        }// end function

        public static function set watcherSetupUtil(param1:IWatcherSetupUtil) : void
        {
            SelectItemListWindow_inlineComponent1._watcherSetupUtil = param1;
            return;
        }// end function

    }
}
