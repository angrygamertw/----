package com.kbmj.viking.view.home
{
    import flash.events.*;
    import mx.containers.*;
    import mx.controls.*;
    import mx.core.*;
    import mx.events.*;
    import mx.styles.*;

    public class SacrificeUnitWindow_inlineComponent1 extends Box
    {
        private var _documentDescriptor_:UIComponentDescriptor;
        private var _88844982outerDocument:SacrificeUnitWindow;
        private var _embed_mxml__swf_home_buttons_button_list_select_swf_1098810501:Class;

        public function SacrificeUnitWindow_inlineComponent1()
        {
            _documentDescriptor_ = new UIComponentDescriptor({type:Box, propertiesFactory:function () : Object
            {
                return {childDescriptors:[new UIComponentDescriptor({type:Image, events:{click:"___SacrificeUnitWindow_inlineComponent1_Image1_click"}, propertiesFactory:function () : Object
                {
                    return {source:_embed_mxml__swf_home_buttons_button_list_select_swf_1098810501};
                }// end function
                })]};
            }// end function
            });
            _embed_mxml__swf_home_buttons_button_list_select_swf_1098810501 = SacrificeUnitWindow_inlineComponent1__embed_mxml__swf_home_buttons_button_list_select_swf_1098810501;
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
            return;
        }// end function

        public function set outerDocument(param1:SacrificeUnitWindow) : void
        {
            var _loc_2:* = this._88844982outerDocument;
            if (_loc_2 !== param1)
            {
                this._88844982outerDocument = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "outerDocument", _loc_2, param1));
            }
            return;
        }// end function

        override public function initialize() : void
        {
            .mx_internal::setDocumentDescriptor(_documentDescriptor_);
            super.initialize();
            return;
        }// end function

        public function get outerDocument() : SacrificeUnitWindow
        {
            return this._88844982outerDocument;
        }// end function

        public function ___SacrificeUnitWindow_inlineComponent1_Image1_click(event:MouseEvent) : void
        {
            outerDocument.addSelectIndex(data);
            return;
        }// end function

    }
}
