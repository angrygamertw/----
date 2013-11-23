package com.kbmj.viking.view.home
{
    import com.kbmj.viking.view.*;
    import com.kbmj.viking.vo.*;
    import mx.core.*;
    import mx.events.*;

    public class TutorialFinishedWindow extends PopupWindow
    {
        private var _documentDescriptor_:UIComponentDescriptor;
        private var _283794621_tutorial:TutorialVO;

        public function TutorialFinishedWindow()
        {
            _documentDescriptor_ = new UIComponentDescriptor({type:PopupWindow});
            mx_internal::_document = this;
            return;
        }// end function

        override public function initialize() : void
        {
            .mx_internal::setDocumentDescriptor(_documentDescriptor_);
            super.initialize();
            return;
        }// end function

        public function set tutorial(param1:TutorialVO) : void
        {
            _tutorial = param1;
            return;
        }// end function

        private function set _tutorial(param1:TutorialVO) : void
        {
            var _loc_2:* = this._283794621_tutorial;
            if (_loc_2 !== param1)
            {
                this._283794621_tutorial = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "_tutorial", _loc_2, param1));
            }
            return;
        }// end function

        private function get _tutorial() : TutorialVO
        {
            return this._283794621_tutorial;
        }// end function

        private function showNext() : void
        {
            sendEvent(Viking.HOME_SHOW_NEXT_TUTORIAL);
            onClose();
            return;
        }// end function

    }
}
