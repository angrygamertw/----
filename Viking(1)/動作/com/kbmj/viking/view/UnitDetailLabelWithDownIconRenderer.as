package com.kbmj.viking.view
{
    import com.kbmj.viking.vo.tactics.*;
    import mx.controls.*;
    import mx.core.*;

    public class UnitDetailLabelWithDownIconRenderer extends UnitDetailLabelRenderer
    {
        private var _documentDescriptor_:UIComponentDescriptor;
        private var downIconImage:Image;

        public function UnitDetailLabelWithDownIconRenderer()
        {
            _documentDescriptor_ = new UIComponentDescriptor({type:UnitDetailLabelRenderer});
            downIconImage = new Image();
            mx_internal::_document = this;
            this.percentWidth = 100;
            this.horizontalScrollPolicy = "off";
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
            if (UnitVO(data).down)
            {
                this.nameBox.addChildAt(downIconImage, 0);
            }
            else if (this.nameBox.getChildAt(0) == downIconImage)
            {
                this.nameBox.removeChild(downIconImage);
            }
            return;
        }// end function

    }
}
