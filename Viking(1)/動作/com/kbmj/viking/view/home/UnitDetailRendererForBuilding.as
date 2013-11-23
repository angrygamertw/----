package com.kbmj.viking.view.home
{
    import com.kbmj.viking.view.*;
    import mx.core.*;

    public class UnitDetailRendererForBuilding extends UnitDetailLabelRenderer
    {
        private var _documentDescriptor_:UIComponentDescriptor;

        public function UnitDetailRendererForBuilding()
        {
            _documentDescriptor_ = new UIComponentDescriptor({type:UnitDetailLabelRenderer});
            mx_internal::_document = this;
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
            super.data = param1.unit;
            return;
        }// end function

    }
}
