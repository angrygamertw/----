package com.kbmj.viking.view.home
{
    import com.kbmj.viking.lib.*;
    import mx.core.*;
    import mx.events.*;

    public class EventMapDescriptionWindow extends ContinuationDescriptionWindow
    {
        private var _documentDescriptor_:UIComponentDescriptor;
        private var EmbedSwfExpeditionDetail:Class;

        public function EventMapDescriptionWindow()
        {
            _documentDescriptor_ = new UIComponentDescriptor({type:ContinuationDescriptionWindow});
            EmbedSwfExpeditionDetail = EventMapDescriptionWindow_EmbedSwfExpeditionDetail;
            mx_internal::_document = this;
            this.addEventListener("creationComplete", ___EventMapDescriptionWindow_ContinuationDescriptionWindow1_creationComplete);
            return;
        }// end function

        override public function initialize() : void
        {
            .mx_internal::setDocumentDescriptor(_documentDescriptor_);
            super.initialize();
            return;
        }// end function

        public function ___EventMapDescriptionWindow_ContinuationDescriptionWindow1_creationComplete(event:FlexEvent) : void
        {
            comp();
            return;
        }// end function

        override protected function getBgSwf() : MovieClipLoaderAsset
        {
            return new EmbedSwfExpeditionDetail();
        }// end function

        override public function init(param1:int) : void
        {
            super.init(param1);
            titleText = Utils.i18n("continuationEventMap") + level + Utils.i18n("continuationBattleLevel");
            return;
        }// end function

    }
}
