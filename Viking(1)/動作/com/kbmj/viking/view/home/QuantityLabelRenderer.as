package com.kbmj.viking.view.home
{
    import flash.utils.*;
    import mx.binding.*;
    import mx.containers.*;
    import mx.controls.*;
    import mx.core.*;
    import mx.events.*;
    import mx.styles.*;

    public class QuantityLabelRenderer extends Box implements IBindingClient
    {
        var _bindingsByDestination:Object;
        var _bindingsBeginWithWord:Object;
        var _watchers:Array;
        private var _94842723color:uint;
        var _bindings:Array;
        public var _QuantityLabelRenderer_Label1:Label;
        private var _documentDescriptor_:UIComponentDescriptor;
        private var _1010546391quantityLabel:String;
        private static var _watcherSetupUtil:IWatcherSetupUtil;

        public function QuantityLabelRenderer()
        {
            _documentDescriptor_ = new UIComponentDescriptor({type:Box, propertiesFactory:function () : Object
            {
                return {childDescriptors:[new UIComponentDescriptor({type:Label, id:"_QuantityLabelRenderer_Label1", propertiesFactory:function () : Object
                {
                    return {styleName:"ProductionText"};
                }// end function
                })]};
            }// end function
            });
            _bindings = [];
            _watchers = [];
            _bindingsByDestination = {};
            _bindingsBeginWithWord = {};
            mx_internal::_document = this;
            if (!this.styleDeclaration)
            {
                this.styleDeclaration = new CSSStyleDeclaration();
            }
            this.styleDeclaration.defaultFactory = function () : void
            {
                this.horizontalAlign = "center";
                return;
            }// end function
            ;
            this.percentWidth = 100;
            return;
        }// end function

        private function set color(param1:uint) : void
        {
            var _loc_2:* = this._94842723color;
            if (_loc_2 !== param1)
            {
                this._94842723color = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "color", _loc_2, param1));
            }
            return;
        }// end function

        override public function initialize() : void
        {
            var target:QuantityLabelRenderer;
            var watcherSetupUtilClass:Object;
            .mx_internal::setDocumentDescriptor(_documentDescriptor_);
            var bindings:* = _QuantityLabelRenderer_bindingsSetup();
            var watchers:Array;
            target;
            if (_watcherSetupUtil == null)
            {
                watcherSetupUtilClass = getDefinitionByName("_com_kbmj_viking_view_home_QuantityLabelRendererWatcherSetupUtil");
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

        private function set quantityLabel(param1:String) : void
        {
            var _loc_2:* = this._1010546391quantityLabel;
            if (_loc_2 !== param1)
            {
                this._1010546391quantityLabel = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "quantityLabel", _loc_2, param1));
            }
            return;
        }// end function

        override public function set data(param1:Object) : void
        {
            super.data = param1;
            quantityLabel = param1.current + "/" + param1.required;
            color = param1.isShort ? (15073298) : (0);
            return;
        }// end function

        private function get quantityLabel() : String
        {
            return this._1010546391quantityLabel;
        }// end function

        private function get color() : uint
        {
            return this._94842723color;
        }// end function

        private function _QuantityLabelRenderer_bindingExprs() : void
        {
            var _loc_1:* = undefined;
            _loc_1 = quantityLabel;
            _loc_1 = color;
            return;
        }// end function

        private function _QuantityLabelRenderer_bindingsSetup() : Array
        {
            var binding:Binding;
            var result:Array;
            binding = new Binding(this, function () : String
            {
                var _loc_1:* = quantityLabel;
                var _loc_2:* = _loc_1 == undefined ? (null) : (String(_loc_1));
                return _loc_2;
            }// end function
            , function (param1:String) : void
            {
                _QuantityLabelRenderer_Label1.text = param1;
                return;
            }// end function
            , "_QuantityLabelRenderer_Label1.text");
            result[0] = binding;
            binding = new Binding(this, function () : uint
            {
                return color;
            }// end function
            , function (param1:uint) : void
            {
                _QuantityLabelRenderer_Label1.setStyle("color", param1);
                return;
            }// end function
            , "_QuantityLabelRenderer_Label1.color");
            result[1] = binding;
            return result;
        }// end function

        public static function set watcherSetupUtil(param1:IWatcherSetupUtil) : void
        {
            _watcherSetupUtil = param1;
            return;
        }// end function

    }
}
