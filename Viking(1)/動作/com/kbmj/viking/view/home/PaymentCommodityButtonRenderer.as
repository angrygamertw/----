package com.kbmj.viking.view.home
{
    import flash.events.*;
    import flash.utils.*;
    import mx.binding.*;
    import mx.containers.*;
    import mx.controls.*;
    import mx.core.*;
    import mx.events.*;
    import mx.styles.*;

    public class PaymentCommodityButtonRenderer extends Box implements IBindingClient
    {
        private var _1713603841canProduct:Class;
        var _watchers:Array;
        private var _130005042produceButton:Image;
        var _bindings:Array;
        var _bindingsByDestination:Object;
        private var _documentDescriptor_:UIComponentDescriptor;
        var _bindingsBeginWithWord:Object;
        private static var _watcherSetupUtil:IWatcherSetupUtil;

        public function PaymentCommodityButtonRenderer()
        {
            _documentDescriptor_ = new UIComponentDescriptor({type:Box, propertiesFactory:function () : Object
            {
                return {childDescriptors:[new UIComponentDescriptor({type:Image, id:"produceButton", events:{click:"__produceButton_click"}})]};
            }// end function
            });
            _1713603841canProduct = PaymentCommodityButtonRenderer_canProduct;
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

        private function _PaymentCommodityButtonRenderer_bindingsSetup() : Array
        {
            var binding:Binding;
            var result:Array;
            binding = new Binding(this, function () : Object
            {
                return canProduct;
            }// end function
            , function (param1:Object) : void
            {
                produceButton.source = param1;
                return;
            }// end function
            , "produceButton.source");
            result[0] = binding;
            return result;
        }// end function

        override public function initialize() : void
        {
            var target:PaymentCommodityButtonRenderer;
            var watcherSetupUtilClass:Object;
            .mx_internal::setDocumentDescriptor(_documentDescriptor_);
            var bindings:* = _PaymentCommodityButtonRenderer_bindingsSetup();
            var watchers:Array;
            target;
            if (_watcherSetupUtil == null)
            {
                watcherSetupUtilClass = getDefinitionByName("_com_kbmj_viking_view_home_PaymentCommodityButtonRendererWatcherSetupUtil");
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

        public function get produceButton() : Image
        {
            return this._130005042produceButton;
        }// end function

        public function __produceButton_click(event:MouseEvent) : void
        {
            parentDocument.onBuy(data);
            return;
        }// end function

        public function set produceButton(param1:Image) : void
        {
            var _loc_2:* = this._130005042produceButton;
            if (_loc_2 !== param1)
            {
                this._130005042produceButton = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "produceButton", _loc_2, param1));
            }
            return;
        }// end function

        private function _PaymentCommodityButtonRenderer_bindingExprs() : void
        {
            var _loc_1:* = undefined;
            _loc_1 = canProduct;
            return;
        }// end function

        private function set canProduct(param1:Class) : void
        {
            var _loc_2:* = this._1713603841canProduct;
            if (_loc_2 !== param1)
            {
                this._1713603841canProduct = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "canProduct", _loc_2, param1));
            }
            return;
        }// end function

        private function get canProduct() : Class
        {
            return this._1713603841canProduct;
        }// end function

        public static function set watcherSetupUtil(param1:IWatcherSetupUtil) : void
        {
            _watcherSetupUtil = param1;
            return;
        }// end function

    }
}
