package com.kbmj.viking.view.home
{
    import flash.events.*;
    import mx.controls.*;
    import mx.events.*;

    public class SubjugationSelectLevelWindow_inlineComponent1 extends Image
    {
        private var _embed_mxml__swf_home_buttons_button_list_decide_swf_1291455405:Class;
        private var _88844982outerDocument:SubjugationSelectLevelWindow;

        public function SubjugationSelectLevelWindow_inlineComponent1()
        {
            _embed_mxml__swf_home_buttons_button_list_decide_swf_1291455405 = SubjugationSelectLevelWindow_inlineComponent1__embed_mxml__swf_home_buttons_button_list_decide_swf_1291455405;
            this.source = _embed_mxml__swf_home_buttons_button_list_decide_swf_1291455405;
            this.addEventListener("click", ___SubjugationSelectLevelWindow_inlineComponent1_Image1_click);
            return;
        }// end function

        public function set outerDocument(param1:SubjugationSelectLevelWindow) : void
        {
            var _loc_2:* = this._88844982outerDocument;
            if (_loc_2 !== param1)
            {
                this._88844982outerDocument = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "outerDocument", _loc_2, param1));
            }
            return;
        }// end function

        public function get outerDocument() : SubjugationSelectLevelWindow
        {
            return this._88844982outerDocument;
        }// end function

        public function ___SubjugationSelectLevelWindow_inlineComponent1_Image1_click(event:MouseEvent) : void
        {
            outerDocument.clicked(data);
            return;
        }// end function

        override public function initialize() : void
        {
            super.initialize();
            return;
        }// end function

    }
}
