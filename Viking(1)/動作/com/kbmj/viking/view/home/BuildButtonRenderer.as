package com.kbmj.viking.view.home
{
    import flash.events.*;
    import mx.containers.*;
    import mx.controls.*;
    import mx.core.*;
    import mx.events.*;
    import mx.styles.*;

    public class BuildButtonRenderer extends Box
    {
        private var _1641788370okButton:Image;
        private var _embed_mxml__swf_home_buttons_button_list_decide_swf_1291455405:Class;
        private var _documentDescriptor_:UIComponentDescriptor;

        public function BuildButtonRenderer()
        {
            _documentDescriptor_ = new UIComponentDescriptor({type:Box, propertiesFactory:function () : Object
            {
                return {childDescriptors:[new UIComponentDescriptor({type:Image, id:"okButton", events:{click:"__okButton_click"}, propertiesFactory:function () : Object
                {
                    return {source:_embed_mxml__swf_home_buttons_button_list_decide_swf_1291455405};
                }// end function
                })]};
            }// end function
            });
            _embed_mxml__swf_home_buttons_button_list_decide_swf_1291455405 = BuildButtonRenderer__embed_mxml__swf_home_buttons_button_list_decide_swf_1291455405;
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
            parentDocument.buildButtonClicked(data.unit);
            return;
        }// end function

        override public function initialize() : void
        {
            .mx_internal::setDocumentDescriptor(_documentDescriptor_);
            super.initialize();
            return;
        }// end function

        public function get okButton() : Image
        {
            return this._1641788370okButton;
        }// end function

        override public function set data(param1:Object) : void
        {
            super.data = param1;
            return;
        }// end function

        public function set okButton(param1:Image) : void
        {
            var _loc_2:* = this._1641788370okButton;
            if (_loc_2 !== param1)
            {
                this._1641788370okButton = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "okButton", _loc_2, param1));
            }
            return;
        }// end function

        public function __okButton_click(event:MouseEvent) : void
        {
            onClick();
            return;
        }// end function

    }
}
