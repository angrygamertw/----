package com.kbmj.viking.view.home
{
    import flash.events.*;
    import mx.containers.*;
    import mx.controls.*;
    import mx.core.*;
    import mx.events.*;
    import mx.styles.*;

    public class UnitUseItemWindow_inlineComponent1 extends Box
    {
        private var _embed_mxml__swf_home_buttons_button_list_decide_swf_1291455405:Class;
        private var _documentDescriptor_:UIComponentDescriptor;
        private var _88844982outerDocument:UnitUseItemWindow;

        public function UnitUseItemWindow_inlineComponent1()
        {
            _documentDescriptor_ = new UIComponentDescriptor({type:Box, propertiesFactory:function () : Object
            {
                return {width:20, childDescriptors:[new UIComponentDescriptor({type:Image, events:{click:"___UnitUseItemWindow_inlineComponent1_Image1_click"}, propertiesFactory:function () : Object
                {
                    return {source:_embed_mxml__swf_home_buttons_button_list_decide_swf_1291455405};
                }// end function
                })]};
            }// end function
            });
            _embed_mxml__swf_home_buttons_button_list_decide_swf_1291455405 = UnitUseItemWindow_inlineComponent1__embed_mxml__swf_home_buttons_button_list_decide_swf_1291455405;
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
            this.width = 20;
            return;
        }// end function

        public function set outerDocument(param1:UnitUseItemWindow) : void
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

        public function ___UnitUseItemWindow_inlineComponent1_Image1_click(event:MouseEvent) : void
        {
            outerDocument.useItem(data);
            return;
        }// end function

        public function get outerDocument() : UnitUseItemWindow
        {
            return this._88844982outerDocument;
        }// end function

    }
}
