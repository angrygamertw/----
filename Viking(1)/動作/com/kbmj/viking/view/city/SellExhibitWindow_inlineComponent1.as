package com.kbmj.viking.view.city
{
    import flash.events.*;
    import mx.containers.*;
    import mx.controls.*;
    import mx.core.*;
    import mx.events.*;

    public class SellExhibitWindow_inlineComponent1 extends Box
    {
        private var _embed_mxml__swf_home_buttons_button_list_withdraw_swf_1878042729:Class;
        private var _documentDescriptor_:UIComponentDescriptor;
        private var _88844982outerDocument:SellExhibitWindow;

        public function SellExhibitWindow_inlineComponent1()
        {
            _documentDescriptor_ = new UIComponentDescriptor({type:Box, propertiesFactory:function () : Object
            {
                return {childDescriptors:[new UIComponentDescriptor({type:Image, events:{click:"___SellExhibitWindow_inlineComponent1_Image1_click"}, propertiesFactory:function () : Object
                {
                    return {source:_embed_mxml__swf_home_buttons_button_list_withdraw_swf_1878042729};
                }// end function
                })]};
            }// end function
            });
            _embed_mxml__swf_home_buttons_button_list_withdraw_swf_1878042729 = SellExhibitWindow_inlineComponent1__embed_mxml__swf_home_buttons_button_list_withdraw_swf_1878042729;
            mx_internal::_document = this;
            return;
        }// end function

        public function ___SellExhibitWindow_inlineComponent1_Image1_click(event:MouseEvent) : void
        {
            outerDocument.onExhibitCancel(data);
            return;
        }// end function

        override public function initialize() : void
        {
            .mx_internal::setDocumentDescriptor(_documentDescriptor_);
            super.initialize();
            return;
        }// end function

        public function set outerDocument(param1:SellExhibitWindow) : void
        {
            var _loc_2:* = this._88844982outerDocument;
            if (_loc_2 !== param1)
            {
                this._88844982outerDocument = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "outerDocument", _loc_2, param1));
            }
            return;
        }// end function

        public function get outerDocument() : SellExhibitWindow
        {
            return this._88844982outerDocument;
        }// end function

    }
}
