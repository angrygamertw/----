﻿package com.kbmj.viking.view.home
{
    import flash.events.*;
    import flash.utils.*;
    import mx.binding.*;
    import mx.containers.*;
    import mx.controls.*;
    import mx.core.*;
    import mx.events.*;

    public class ItemsDegradationWindow_inlineComponent1 extends Box implements IBindingClient
    {
        var _bindingsBeginWithWord:Object;
        public var _ItemsDegradationWindow_inlineComponent1_Label1:Label;
        var _bindings:Array;
        var _bindingsByDestination:Object;
        private var _documentDescriptor_:UIComponentDescriptor;
        private var _88844982outerDocument:ItemsDegradationWindow;
        var _watchers:Array;
        private static var _watcherSetupUtil:IWatcherSetupUtil;

        public function ItemsDegradationWindow_inlineComponent1()
        {
            _documentDescriptor_ = new UIComponentDescriptor({type:Box, propertiesFactory:function () : Object
            {
                return {childDescriptors:[new UIComponentDescriptor({type:Label, id:"_ItemsDegradationWindow_inlineComponent1_Label1", events:{click:"___ItemsDegradationWindow_inlineComponent1_Label1_click"}, stylesFactory:function () : void
                {
                    this.color = 12337210;
                    this.textDecoration = "underline";
                    return;
                }// end function
                , propertiesFactory:function () : Object
                {
                    return {buttonMode:true, mouseChildren:false};
                }// end function
                })]};
            }// end function
            });
            _bindings = [];
            _watchers = [];
            _bindingsByDestination = {};
            _bindingsBeginWithWord = {};
            mx_internal::_document = this;
            return;
        }// end function

        private function _ItemsDegradationWindow_inlineComponent1_bindingExprs() : void
        {
            var _loc_1:* = undefined;
            _loc_1 = data.masterVO.product.nameLabel;
            _loc_1 = outerDocument.componrntToolTip();
            return;
        }// end function

        public function get outerDocument() : ItemsDegradationWindow
        {
            return this._88844982outerDocument;
        }// end function

        private function _ItemsDegradationWindow_inlineComponent1_bindingsSetup() : Array
        {
            var binding:Binding;
            var result:Array;
            binding = new Binding(this, function () : String
            {
                var _loc_1:* = data.masterVO.product.nameLabel;
                var _loc_2:* = _loc_1 == undefined ? (null) : (String(_loc_1));
                return _loc_2;
            }// end function
            , function (param1:String) : void
            {
                _ItemsDegradationWindow_inlineComponent1_Label1.text = param1;
                return;
            }// end function
            , "_ItemsDegradationWindow_inlineComponent1_Label1.text");
            result[0] = binding;
            binding = new Binding(this, function () : String
            {
                var _loc_1:* = outerDocument.componrntToolTip();
                var _loc_2:* = _loc_1 == undefined ? (null) : (String(_loc_1));
                return _loc_2;
            }// end function
            , function (param1:String) : void
            {
                _ItemsDegradationWindow_inlineComponent1_Label1.toolTip = param1;
                return;
            }// end function
            , "_ItemsDegradationWindow_inlineComponent1_Label1.toolTip");
            result[1] = binding;
            return result;
        }// end function

        public function ___ItemsDegradationWindow_inlineComponent1_Label1_click(event:MouseEvent) : void
        {
            outerDocument.onDetail(data);
            return;
        }// end function

        override public function initialize() : void
        {
            var target:ItemsDegradationWindow_inlineComponent1;
            var watcherSetupUtilClass:Object;
            .mx_internal::setDocumentDescriptor(_documentDescriptor_);
            var bindings:* = _ItemsDegradationWindow_inlineComponent1_bindingsSetup();
            var watchers:Array;
            target;
            if (_watcherSetupUtil == null)
            {
                watcherSetupUtilClass = getDefinitionByName("_com_kbmj_viking_view_home_ItemsDegradationWindow_inlineComponent1WatcherSetupUtil");
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

        public function set outerDocument(param1:ItemsDegradationWindow) : void
        {
            var _loc_2:* = this._88844982outerDocument;
            if (_loc_2 !== param1)
            {
                this._88844982outerDocument = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "outerDocument", _loc_2, param1));
            }
            return;
        }// end function

        public static function set watcherSetupUtil(param1:IWatcherSetupUtil) : void
        {
            ItemsDegradationWindow_inlineComponent1._watcherSetupUtil = param1;
            return;
        }// end function

    }
}
