package com.kbmj.viking.view.home
{
    import com.kbmj.viking.vo.*;
    import flash.events.*;
    import mx.containers.*;
    import mx.controls.*;
    import mx.core.*;
    import mx.events.*;
    import mx.styles.*;

    public class ProductionButtonRenderer extends Box
    {
        private var _130005042produceButton:Image;
        private var canNotProduct:Class;
        private var _documentDescriptor_:UIComponentDescriptor;
        private var canProduct:Class;

        public function ProductionButtonRenderer()
        {
            _documentDescriptor_ = new UIComponentDescriptor({type:Box, propertiesFactory:function () : Object
            {
                return {childDescriptors:[new UIComponentDescriptor({type:Image, id:"produceButton", events:{click:"__produceButton_click"}})]};
            }// end function
            });
            canProduct = ProductionButtonRenderer_canProduct;
            canNotProduct = ProductionButtonRenderer_canNotProduct;
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

        public function __produceButton_click(event:MouseEvent) : void
        {
            onClick();
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

        override public function initialize() : void
        {
            .mx_internal::setDocumentDescriptor(_documentDescriptor_);
            super.initialize();
            return;
        }// end function

        public function get produceButton() : Image
        {
            return this._130005042produceButton;
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
            return;
        }// end function

    }
}
