package com.kbmj.viking.view.city
{
    import flash.events.*;
    import mx.containers.*;
    import mx.controls.*;
    import mx.core.*;
    import mx.events.*;
    import mx.styles.*;

    public class SearchButtonRenderer extends Box
    {
        private var _365389062searchButton:Image;
        private var canNotSearch:Class;
        private var _documentDescriptor_:UIComponentDescriptor;
        private var canSearch:Class;
        private static var _commoditySummary:Object;

        public function SearchButtonRenderer()
        {
            _documentDescriptor_ = new UIComponentDescriptor({type:Box, propertiesFactory:function () : Object
            {
                return {childDescriptors:[new UIComponentDescriptor({type:Image, id:"searchButton", events:{click:"__searchButton_click"}})]};
            }// end function
            });
            canSearch = SearchButtonRenderer_canSearch;
            canNotSearch = SearchButtonRenderer_canNotSearch;
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

        public function set searchButton(param1:Image) : void
        {
            var _loc_2:* = this._365389062searchButton;
            if (_loc_2 !== param1)
            {
                this._365389062searchButton = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "searchButton", _loc_2, param1));
            }
            return;
        }// end function

        public function __searchButton_click(event:MouseEvent) : void
        {
            onClick();
            return;
        }// end function

        private function onClick() : void
        {
            if (searchButton.source == canSearch)
            {
                parentDocument.onClickSearch(data);
            }
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
            var _loc_2:* = _commoditySummary[data.code];
            if (_loc_2 > 0)
            {
                searchButton.source = canSearch;
            }
            else
            {
                searchButton.source = canNotSearch;
            }
            return;
        }// end function

        public function get searchButton() : Image
        {
            return this._365389062searchButton;
        }// end function

        public static function commoditySummary(param1:Object) : void
        {
            _commoditySummary = param1;
            return;
        }// end function

    }
}
