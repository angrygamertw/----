package com.kbmj.viking.view.home
{
    import com.kbmj.viking.view.*;
    import flash.events.*;
    import mx.containers.*;
    import mx.controls.*;
    import mx.core.*;
    import mx.events.*;

    public class SampleWindow extends PopupWindow
    {
        private var _1896677185windowLayer:Box;
        private var _documentDescriptor_:UIComponentDescriptor;
        public static const NAME:String = "SampleWindow";
        public static const FINISH_WINDOW:String = NAME + "/note/finishWindow";

        public function SampleWindow()
        {
            _documentDescriptor_ = new UIComponentDescriptor({type:PopupWindow, propertiesFactory:function () : Object
            {
                return {childDescriptors:[new UIComponentDescriptor({type:Canvas, propertiesFactory:function () : Object
                {
                    return {width:760, height:560, childDescriptors:[new UIComponentDescriptor({type:Box, id:"windowLayer", propertiesFactory:function () : Object
                    {
                        return {x:0, y:300};
                    }// end function
                    }), new UIComponentDescriptor({type:Text, propertiesFactory:function () : Object
                    {
                        return {text:"Sample window!!", x:400, y:200};
                    }// end function
                    })]};
                }// end function
                }), new UIComponentDescriptor({type:Button, events:{click:"___SampleWindow_Button1_click"}, stylesFactory:function () : void
                {
                    this.fontSize = 30;
                    this.top = "10";
                    this.right = "10";
                    return;
                }// end function
                , propertiesFactory:function () : Object
                {
                    return {width:26, height:26, styleName:"closeBtn", buttonMode:true, mouseChildren:false};
                }// end function
                })]};
            }// end function
            });
            mx_internal::_document = this;
            return;
        }// end function

        public function get windowLayer() : Box
        {
            return this._1896677185windowLayer;
        }// end function

        public function ___SampleWindow_Button1_click(event:MouseEvent) : void
        {
            close();
            return;
        }// end function

        public function set windowLayer(param1:Box) : void
        {
            var _loc_2:* = this._1896677185windowLayer;
            if (_loc_2 !== param1)
            {
                this._1896677185windowLayer = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "windowLayer", _loc_2, param1));
            }
            return;
        }// end function

        override public function initialize() : void
        {
            .mx_internal::setDocumentDescriptor(_documentDescriptor_);
            super.initialize();
            return;
        }// end function

        private function close() : void
        {
            sendEvent(FINISH_WINDOW);
            onClose();
            return;
        }// end function

        public function init(param1:int, param2:int) : void
        {
            windowLayer.x = param1;
            windowLayer.y = param2;
            return;
        }// end function

    }
}
