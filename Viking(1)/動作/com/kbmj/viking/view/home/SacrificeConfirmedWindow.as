package com.kbmj.viking.view.home
{
    import com.kbmj.viking.view.*;
    import com.kbmj.viking.vo.tactics.*;
    import flash.events.*;
    import mx.containers.*;
    import mx.controls.*;
    import mx.core.*;
    import mx.events.*;

    public class SacrificeConfirmedWindow extends PopupWindow
    {
        private var _unit:UnitVO;
        private var _1641788370okButton:Button;
        private var _documentDescriptor_:UIComponentDescriptor;
        private var _989304983cancel_button:Button;
        public static const SACRIFICE_UNIT_CONFIRMED:String = "sacrificeUnitConfirmed";

        public function SacrificeConfirmedWindow()
        {
            _documentDescriptor_ = new UIComponentDescriptor({type:PopupWindow, propertiesFactory:function () : Object
            {
                return {childDescriptors:[new UIComponentDescriptor({type:Canvas}), new UIComponentDescriptor({type:Box, propertiesFactory:function () : Object
                {
                    return {width:330, height:180, styleName:"DialogBg", childDescriptors:[new UIComponentDescriptor({type:Canvas, propertiesFactory:function () : Object
                    {
                        return {childDescriptors:[new UIComponentDescriptor({type:Text, stylesFactory:function () : void
                        {
                            this.fontSize = 14;
                            return;
                        }// end function
                        , propertiesFactory:function () : Object
                        {
                            return {width:230, x:65, y:50, text:"この式姫を神に捧げますか？"};
                        }// end function
                        }), new UIComponentDescriptor({type:Button, id:"cancel_button", events:{click:"__cancel_button_click"}, propertiesFactory:function () : Object
                        {
                            return {x:75, y:145, styleName:"CancelCanaButton", buttonMode:true};
                        }// end function
                        }), new UIComponentDescriptor({type:Button, id:"okButton", events:{click:"__okButton_click"}, propertiesFactory:function () : Object
                        {
                            return {x:180, y:145, styleName:"OkButton", buttonMode:true};
                        }// end function
                        })]};
                    }// end function
                    })]};
                }// end function
                })]};
            }// end function
            });
            mx_internal::_document = this;
            this.x = 250;
            this.y = 200;
            return;
        }// end function

        public function __cancel_button_click(event:MouseEvent) : void
        {
            onClose();
            return;
        }// end function

        public function set unit(param1:UnitVO) : void
        {
            _unit = param1;
            return;
        }// end function

        public function set cancel_button(param1:Button) : void
        {
            var _loc_2:* = this._989304983cancel_button;
            if (_loc_2 !== param1)
            {
                this._989304983cancel_button = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "cancel_button", _loc_2, param1));
            }
            return;
        }// end function

        override public function initialize() : void
        {
            .mx_internal::setDocumentDescriptor(_documentDescriptor_);
            super.initialize();
            return;
        }// end function

        private function onSacrifice() : void
        {
            sendPopupEvent(SACRIFICE_UNIT_CONFIRMED, _unit);
            onClose();
            return;
        }// end function

        public function get okButton() : Button
        {
            return this._1641788370okButton;
        }// end function

        public function __okButton_click(event:MouseEvent) : void
        {
            onSacrifice();
            return;
        }// end function

        public function set okButton(param1:Button) : void
        {
            var _loc_2:* = this._1641788370okButton;
            if (_loc_2 !== param1)
            {
                this._1641788370okButton = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "okButton", _loc_2, param1));
            }
            return;
        }// end function

        public function get cancel_button() : Button
        {
            return this._989304983cancel_button;
        }// end function

    }
}
