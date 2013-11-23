package com.kbmj.viking.view
{
    import mx.containers.*;
    import mx.controls.*;
    import mx.core.*;
    import mx.styles.*;

    public class BloodImageRenderer extends HBox
    {
        private var _documentDescriptor_:UIComponentDescriptor;

        public function BloodImageRenderer()
        {
            _documentDescriptor_ = new UIComponentDescriptor({type:HBox});
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
            .mx_internal::setDocumentDescriptor(_documentDescriptor_);
            super.initialize();
            return;
        }// end function

        override public function set data(param1:Object) : void
        {
            var _loc_2:Image = null;
            super.data = param1;
            removeAllChildren();
            if (data.unit.bloodImage)
            {
                _loc_2 = new Image();
                _loc_2.source = data.unit.bloodDupImage;
                _loc_2.width = 16;
                _loc_2.height = 16;
                addChild(_loc_2);
            }
            return;
        }// end function

    }
}
