package com.kbmj.viking.view.allMap
{
    import com.kbmj.viking.view.home.*;
    import flash.display.*;
    import mx.core.*;
    import mx.events.*;

    public class DesignateMail extends MailTransmitWindow
    {
        private var _documentDescriptor_:UIComponentDescriptor;

        public function DesignateMail()
        {
            _documentDescriptor_ = new UIComponentDescriptor({type:MailTransmitWindow});
            mx_internal::_document = this;
            this.addEventListener("creationComplete", ___DesignateMail_MailTransmitWindow1_creationComplete);
            return;
        }// end function

        override public function initialize() : void
        {
            .mx_internal::setDocumentDescriptor(_documentDescriptor_);
            super.initialize();
            return;
        }// end function

        override protected function init() : void
        {
            subject.text = "";
            mailText.text = "";
            MovieClip(Loader(_swf_window.getChildAt(0)).content).gotoAndPlay("right_400x460");
            MovieClip(Loader(_swf_send.getChildAt(0)).content).gotoAndPlay("button_send");
            MovieClip(Loader(_swf_cancel.getChildAt(0)).content).gotoAndPlay("button_cancel");
            return;
        }// end function

        public function ___DesignateMail_MailTransmitWindow1_creationComplete(event:FlexEvent) : void
        {
            init();
            return;
        }// end function

        public function setPlayerName(param1:String) : void
        {
            trace(param1);
            playerName.text = param1;
            return;
        }// end function

    }
}
