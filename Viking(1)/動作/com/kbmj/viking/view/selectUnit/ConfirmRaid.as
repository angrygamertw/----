package com.kbmj.viking.view.selectUnit
{
    import flash.events.*;
    import mx.containers.*;
    import mx.core.*;
    import mx.managers.*;

    public class ConfirmRaid extends Canvas
    {
        private var _documentDescriptor_:UIComponentDescriptor;
        public static const CANCELED:String = NAME + "/notes/canceled";
        public static const NAME:String = "ConfirmRaid";
        public static const CONFIRMED:String = NAME + "/notes/confirmed";

        public function ConfirmRaid()
        {
            _documentDescriptor_ = new UIComponentDescriptor({type:Canvas, propertiesFactory:function () : Object
            {
                return {width:760, height:560, childDescriptors:[new UIComponentDescriptor({type:HBox, stylesFactory:function () : void
                {
                    this.top = "300";
                    this.left = "290";
                    return;
                }// end function
                })]};
            }// end function
            });
            mx_internal::_document = this;
            this.width = 760;
            this.height = 560;
            return;
        }// end function

        override public function initialize() : void
        {
            .mx_internal::setDocumentDescriptor(_documentDescriptor_);
            super.initialize();
            return;
        }// end function

        private function onConfirm() : void
        {
            dispatchEvent(new Event(CONFIRMED));
            PopUpManager.removePopUp(this);
            return;
        }// end function

        private function onClose() : void
        {
            dispatchEvent(new Event(CANCELED));
            PopUpManager.removePopUp(this);
            return;
        }// end function

    }
}
