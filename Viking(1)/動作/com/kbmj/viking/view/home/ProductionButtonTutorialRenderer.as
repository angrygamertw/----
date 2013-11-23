package com.kbmj.viking.view.home
{
    import com.kbmj.viking.vo.*;
    import flash.events.*;
    import flash.utils.*;
    import mx.binding.*;
    import mx.containers.*;
    import mx.controls.*;
    import mx.core.*;
    import mx.events.*;
    import mx.styles.*;

    public class ProductionButtonTutorialRenderer extends HBox implements IBindingClient
    {
        private var _130005042produceButton:Image;
        private var canNotProduct:Class;
        var _bindingsBeginWithWord:Object;
        private var _1649713137tmarkVisible:Boolean = false;
        var _bindingsByDestination:Object;
        var _watchers:Array;
        private var _embed_mxml__swf_common_arrow_right_swf_759350985:Class;
        public var _ProductionButtonTutorialRenderer_Image1:Image;
        var _bindings:Array;
        private var _documentDescriptor_:UIComponentDescriptor;
        private var canProduct:Class;
        private static var _watcherSetupUtil:IWatcherSetupUtil;

        public function ProductionButtonTutorialRenderer()
        {
            _documentDescriptor_ = new UIComponentDescriptor({type:HBox, propertiesFactory:function () : Object
            {
                return {childDescriptors:[new UIComponentDescriptor({type:Image, id:"_ProductionButtonTutorialRenderer_Image1", propertiesFactory:function () : Object
                {
                    return {source:_embed_mxml__swf_common_arrow_right_swf_759350985, width:18, height:20};
                }// end function
                }), new UIComponentDescriptor({type:Image, id:"produceButton", events:{click:"__produceButton_click"}})]};
            }// end function
            });
            canProduct = ProductionButtonTutorialRenderer_canProduct;
            canNotProduct = ProductionButtonTutorialRenderer_canNotProduct;
            _embed_mxml__swf_common_arrow_right_swf_759350985 = ProductionButtonTutorialRenderer__embed_mxml__swf_common_arrow_right_swf_759350985;
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

        override public function initialize() : void
        {
            var target:ProductionButtonTutorialRenderer;
            var watcherSetupUtilClass:Object;
            .mx_internal::setDocumentDescriptor(_documentDescriptor_);
            var bindings:* = _ProductionButtonTutorialRenderer_bindingsSetup();
            var watchers:Array;
            target;
            if (_watcherSetupUtil == null)
            {
                watcherSetupUtilClass = getDefinitionByName("_com_kbmj_viking_view_home_ProductionButtonTutorialRendererWatcherSetupUtil");
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

        public function __produceButton_click(event:MouseEvent) : void
        {
            onClick();
            return;
        }// end function

        private function set tmarkVisible(param1:Boolean) : void
        {
            var _loc_2:* = this._1649713137tmarkVisible;
            if (_loc_2 !== param1)
            {
                this._1649713137tmarkVisible = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "tmarkVisible", _loc_2, param1));
            }
            return;
        }// end function

        override public function set data(param1:Object) : void
        {
            super.data = param1;
            var _loc_2:* = param1 as ProductionVO;
            if (_loc_2.requirement.canProduce)
            {
                produceButton.source = canProduct;
            }
            else
            {
                produceButton.source = canNotProduct;
            }
            trace("production code");
            trace(data.masterId);
            trace(data.productId);
            if (data.masterId == 1 && data.productId == 51)
            {
                tmarkVisible = true;
            }
            else
            {
                tmarkVisible = false;
            }
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

        private function onClick() : void
        {
            if (data.requirement.canProduce)
            {
                parentDocument.produceButtonClicked(ProductionVO(data));
            }
            else
            {
                parentDocument.conditionButtonClicked(ProductionVO(data));
            }
            return;
        }// end function

        private function _ProductionButtonTutorialRenderer_bindingExprs() : void
        {
            var _loc_1:* = undefined;
            _loc_1 = tmarkVisible;
            return;
        }// end function

        private function get tmarkVisible() : Boolean
        {
            return this._1649713137tmarkVisible;
        }// end function

        public function get produceButton() : Image
        {
            return this._130005042produceButton;
        }// end function

        private function _ProductionButtonTutorialRenderer_bindingsSetup() : Array
        {
            var binding:Binding;
            var result:Array;
            binding = new Binding(this, function () : Boolean
            {
                return tmarkVisible;
            }// end function
            , function (param1:Boolean) : void
            {
                _ProductionButtonTutorialRenderer_Image1.visible = param1;
                return;
            }// end function
            , "_ProductionButtonTutorialRenderer_Image1.visible");
            result[0] = binding;
            return result;
        }// end function

        public static function set watcherSetupUtil(param1:IWatcherSetupUtil) : void
        {
            _watcherSetupUtil = param1;
            return;
        }// end function

    }
}
