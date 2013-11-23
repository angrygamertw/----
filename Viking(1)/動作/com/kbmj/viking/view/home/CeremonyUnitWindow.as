package com.kbmj.viking.view.home
{
    import com.kbmj.viking.view.*;
    import flash.events.*;
    import mx.containers.*;
    import mx.controls.*;
    import mx.core.*;

    public class CeremonyUnitWindow extends PopupWindow
    {
        private var _documentDescriptor_:UIComponentDescriptor;
        public static const SUMMON_CEREMONY:String = NAME + "SUMMON_CEREMONY";
        public static const NAME:String = "CeremonyTypeSelectWindow";

        public function CeremonyUnitWindow()
        {
            _documentDescriptor_ = new UIComponentDescriptor({type:PopupWindow, propertiesFactory:function () : Object
            {
                return {childDescriptors:[new UIComponentDescriptor({type:Canvas, propertiesFactory:function () : Object
                {
                    return {childDescriptors:[new UIComponentDescriptor({type:HBox, propertiesFactory:function () : Object
                    {
                        return {width:100, x:110, y:250, childDescriptors:[new UIComponentDescriptor({type:Button, events:{click:"___CeremonyUnitWindow_Button1_click"}, propertiesFactory:function () : Object
                        {
                            return {label:"", styleName:"OnlyOkButton", buttonMode:true, mouseChildren:false};
                        }// end function
                        })]};
                    }// end function
                    })]};
                }// end function
                })]};
            }// end function
            });
            mx_internal::_document = this;
            return;
        }// end function

        override public function initialize() : void
        {
            .mx_internal::setDocumentDescriptor(_documentDescriptor_);
            super.initialize();
            return;
        }// end function

        private function finishTutorial() : void
        {
            sendEvent(Viking.HOME_FINISH_TUTORIAL);
            onClose();
            return;
        }// end function

        private function summonCeremony() : void
        {
            sendEvent(SUMMON_CEREMONY);
            return;
        }// end function

        public function ___CeremonyUnitWindow_Button1_click(event:MouseEvent) : void
        {
            onClose();
            return;
        }// end function

    }
}
