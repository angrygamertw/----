package com.kbmj.viking.view.home
{
    import flash.events.*;
    import mx.containers.*;
    import mx.controls.*;
    import mx.core.*;
    import mx.events.*;
    import mx.managers.*;

    public class Departure extends Canvas
    {
        private var _documentDescriptor_:UIComponentDescriptor;
        private var _1724546052description:Text;

        public function Departure()
        {
            _documentDescriptor_ = new UIComponentDescriptor({type:Canvas, propertiesFactory:function () : Object
            {
                return {childDescriptors:[new UIComponentDescriptor({type:Canvas}), new UIComponentDescriptor({type:Box, propertiesFactory:function () : Object
                {
                    return {width:330, height:180, styleName:"DialogBg", childDescriptors:[new UIComponentDescriptor({type:Canvas, propertiesFactory:function () : Object
                    {
                        return {childDescriptors:[new UIComponentDescriptor({type:Text, id:"description", propertiesFactory:function () : Object
                        {
                            return {width:260, x:35, y:55, styleName:"CenterText", text:"○○○を×××に行かせました。"};
                        }// end function
                        }), new UIComponentDescriptor({type:Button, events:{click:"___Departure_Button1_click"}, propertiesFactory:function () : Object
                        {
                            return {label:"", styleName:"OnlyOkButton", x:120, y:145, buttonMode:true};
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

        override public function initialize() : void
        {
            .mx_internal::setDocumentDescriptor(_documentDescriptor_);
            super.initialize();
            return;
        }// end function

        public function ___Departure_Button1_click(event:MouseEvent) : void
        {
            closeWindow();
            return;
        }// end function

        private function closeWindow() : void
        {
            PopUpManager.removePopUp(this);
            return;
        }// end function

        public function set description(param1:Text) : void
        {
            var _loc_2:* = this._1724546052description;
            if (_loc_2 !== param1)
            {
                this._1724546052description = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "description", _loc_2, param1));
            }
            return;
        }// end function

        public function get description() : Text
        {
            return this._1724546052description;
        }// end function

    }
}
