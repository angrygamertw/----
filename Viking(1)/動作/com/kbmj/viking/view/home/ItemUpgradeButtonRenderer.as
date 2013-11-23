package com.kbmj.viking.view.home
{
    import flash.events.*;
    import mx.containers.*;
    import mx.controls.*;
    import mx.core.*;
    import mx.events.*;
    import mx.styles.*;

    public class ItemUpgradeButtonRenderer extends Box
    {
        private var upgradeItem:Class;
        private var _documentDescriptor_:UIComponentDescriptor;
        private var _1119237147itemUpgradeButton:Image;

        public function ItemUpgradeButtonRenderer()
        {
            _documentDescriptor_ = new UIComponentDescriptor({type:Box, propertiesFactory:function () : Object
            {
                return {childDescriptors:[new UIComponentDescriptor({type:Image, id:"itemUpgradeButton", events:{click:"__itemUpgradeButton_click"}})]};
            }// end function
            });
            upgradeItem = ItemUpgradeButtonRenderer_upgradeItem;
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

        public function get itemUpgradeButton() : Image
        {
            return this._1119237147itemUpgradeButton;
        }// end function

        public function set itemUpgradeButton(param1:Image) : void
        {
            var _loc_2:* = this._1119237147itemUpgradeButton;
            if (_loc_2 !== param1)
            {
                this._1119237147itemUpgradeButton = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "itemUpgradeButton", _loc_2, param1));
            }
            return;
        }// end function

        private function onClick() : void
        {
            parentDocument.upgradeButtonClicked(data);
            return;
        }// end function

        public function __itemUpgradeButton_click(event:MouseEvent) : void
        {
            onClick();
            return;
        }// end function

        override public function initialize() : void
        {
            .mx_internal::setDocumentDescriptor(_documentDescriptor_);
            super.initialize();
            return;
        }// end function

        override public function set data(param1:Object) : void
        {
            super.data = param1;
            itemUpgradeButton.source = upgradeItem;
            return;
        }// end function

    }
}
