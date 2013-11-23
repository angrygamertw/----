package com.kbmj.viking.view.home
{
    import com.kbmj.viking.vo.*;
    import flash.events.*;
    import mx.containers.*;
    import mx.controls.*;
    import mx.core.*;
    import mx.events.*;
    import mx.styles.*;

    public class DegradationButtonRenderer extends Box
    {
        private var _130005042produceButton:Button;
        private var _documentDescriptor_:UIComponentDescriptor;

        public function DegradationButtonRenderer()
        {
            _documentDescriptor_ = new UIComponentDescriptor({type:Box, propertiesFactory:function () : Object
            {
                return {childDescriptors:[new UIComponentDescriptor({type:Button, id:"produceButton", events:{click:"__produceButton_click"}, propertiesFactory:function () : Object
                {
                    return {label:"", width:73, height:27, styleName:"ProductionBtn", buttonMode:true};
                }// end function
                })]};
            }// end function
            });
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

        private function onClick() : void
        {
            if (data.resourceQuantity != 0)
            {
                parentDocument.produceButtonClicked(ProductionVO(data));
            }
            else
            {
                parentDocument.conditionButtonClicked(ProductionVO(data));
            }
            return;
        }// end function

        public function set produceButton(param1:Button) : void
        {
            var _loc_2:* = this._130005042produceButton;
            if (_loc_2 !== param1)
            {
                this._130005042produceButton = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "produceButton", _loc_2, param1));
            }
            return;
        }// end function

        override public function set data(param1:Object) : void
        {
            super.data = param1;
            var _loc_2:* = param1 as ProductionVO;
            if (_loc_2.resourceQuantity != 0)
            {
                produceButton.styleName = "ProductionBtn";
            }
            else
            {
                produceButton.styleName = "ConditionsBtn";
            }
            return;
        }// end function

        override public function initialize() : void
        {
            .mx_internal::setDocumentDescriptor(_documentDescriptor_);
            super.initialize();
            return;
        }// end function

        public function get produceButton() : Button
        {
            return this._130005042produceButton;
        }// end function

        public function __produceButton_click(event:MouseEvent) : void
        {
            onClick();
            return;
        }// end function

    }
}
