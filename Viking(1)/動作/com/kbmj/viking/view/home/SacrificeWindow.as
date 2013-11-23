package com.kbmj.viking.view.home
{
    import com.kbmj.viking.vo.tactics.*;
    import flash.events.*;
    import mx.core.*;
    import mx.events.*;

    public class SacrificeWindow extends JobChangeSelectUnitWindow
    {
        private var _documentDescriptor_:UIComponentDescriptor;
        private var sacrificeConfirmedWindow:SacrificeConfirmedWindow;
        public static const SACRIFICE:String = NAME + "/notes/sacrifice";
        public static const NAME:String = "SacrificeWindow";

        public function SacrificeWindow()
        {
            _documentDescriptor_ = new UIComponentDescriptor({type:JobChangeSelectUnitWindow, propertiesFactory:function () : Object
            {
                return {height:560, width:760};
            }// end function
            });
            sacrificeConfirmedWindow = new SacrificeConfirmedWindow();
            mx_internal::_document = this;
            this.height = 560;
            this.width = 760;
            this.addEventListener("creationComplete", ___SacrificeWindow_JobChangeSelectUnitWindow1_creationComplete);
            return;
        }// end function

        override public function initialize() : void
        {
            .mx_internal::setDocumentDescriptor(_documentDescriptor_);
            super.initialize();
            return;
        }// end function

        public function closedWindow() : void
        {
            onClose();
            return;
        }// end function

        private function onUnitClick(param1:UnitVO) : void
        {
            sendPopupEvent(SACRIFICE, param1);
            return;
        }// end function

        public function ___SacrificeWindow_JobChangeSelectUnitWindow1_creationComplete(event:FlexEvent) : void
        {
            onCreationComplete();
            return;
        }// end function

        override protected function handleMouseEvent(event:MouseEvent) : void
        {
            var _loc_2:* = _units[_unitIndex[event.target.name]];
            switch(event.type)
            {
                case MouseEvent.CLICK:
                {
                    onUnitClick(_loc_2);
                    break;
                }
                default:
                {
                    super.handleMouseEvent(event);
                    break;
                    break;
                }
            }
            return;
        }// end function

        private function onCreationComplete() : void
        {
            bg.title = "魂を捧げる";
            return;
        }// end function

    }
}
