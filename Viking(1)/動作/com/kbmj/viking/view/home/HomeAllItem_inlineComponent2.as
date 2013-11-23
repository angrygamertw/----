package com.kbmj.viking.view.home
{
    import flash.events.*;
    import mx.controls.*;
    import mx.events.*;

    public class HomeAllItem_inlineComponent2 extends Image
    {
        private var _embed_mxml__swf_common_button_list_dump_swf_966571657:Class;
        private var _88844982outerDocument:HomeAllItem;

        public function HomeAllItem_inlineComponent2()
        {
            _embed_mxml__swf_common_button_list_dump_swf_966571657 = HomeAllItem_inlineComponent2__embed_mxml__swf_common_button_list_dump_swf_966571657;
            this.source = _embed_mxml__swf_common_button_list_dump_swf_966571657;
            this.percentWidth = 100;
            this.percentHeight = 100;
            this.addEventListener("click", ___HomeAllItem_inlineComponent2_Image1_click);
            return;
        }// end function

        public function set outerDocument(param1:HomeAllItem) : void
        {
            var _loc_2:* = this._88844982outerDocument;
            if (_loc_2 !== param1)
            {
                this._88844982outerDocument = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "outerDocument", _loc_2, param1));
            }
            return;
        }// end function

        public function ___HomeAllItem_inlineComponent2_Image1_click(event:MouseEvent) : void
        {
            outerDocument.onDump(data);
            return;
        }// end function

        public function get outerDocument() : HomeAllItem
        {
            return this._88844982outerDocument;
        }// end function

        override public function initialize() : void
        {
            super.initialize();
            return;
        }// end function

    }
}
