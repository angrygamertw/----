package com.kbmj.viking.view
{
    import mx.containers.*;
    import mx.core.*;

    public class LoadingWindow extends Canvas
    {
        private var _documentDescriptor_:UIComponentDescriptor;

        public function LoadingWindow()
        {
            _documentDescriptor_ = new UIComponentDescriptor({type:Canvas, propertiesFactory:function () : Object
            {
                return {height:760, width:560};
            }// end function
            });
            mx_internal::_document = this;
            this.height = 760;
            this.width = 560;
            return;
        }// end function

        override public function initialize() : void
        {
            .mx_internal::setDocumentDescriptor(_documentDescriptor_);
            super.initialize();
            return;
        }// end function

    }
}
