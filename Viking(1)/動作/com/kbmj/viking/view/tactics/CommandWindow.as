package com.kbmj.viking.view.tactics
{
    import com.kbmj.viking.vo.tactics.*;
    import flash.events.*;
    import mx.containers.*;
    import mx.core.*;
    import mx.events.*;

    public class CommandWindow extends Canvas
    {
        private var _1811930322commandBattleLayer:Canvas;
        private var _91329123_unit:UnitVO;
        private var _documentDescriptor_:UIComponentDescriptor;

        public function CommandWindow()
        {
            _documentDescriptor_ = new UIComponentDescriptor({type:Canvas, propertiesFactory:function () : Object
            {
                return {childDescriptors:[new UIComponentDescriptor({type:Canvas, id:"commandBattleLayer"})]};
            }// end function
            });
            mx_internal::_document = this;
            return;
        }// end function

        private function get _unit() : UnitVO
        {
            return this._91329123_unit;
        }// end function

        private function set _unit(param1:UnitVO) : void
        {
            var _loc_2:* = this._91329123_unit;
            if (_loc_2 !== param1)
            {
                this._91329123_unit = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "_unit", _loc_2, param1));
            }
            return;
        }// end function

        public function get commandBattleLayer() : Canvas
        {
            return this._1811930322commandBattleLayer;
        }// end function

        public function set unit(param1:UnitVO) : void
        {
            _unit = param1;
            buttonSet();
            return;
        }// end function

        override public function initialize() : void
        {
            .mx_internal::setDocumentDescriptor(_documentDescriptor_);
            super.initialize();
            return;
        }// end function

        private function sendEvent(param1:String) : void
        {
            this.dispatchEvent(new Event(param1));
            return;
        }// end function

        public function handleEvent(event:Event) : void
        {
            trace(event.type);
            switch(event.type)
            {
                case "ICON_EQUIPMENT":
                {
                    sendEvent(Viking.CHANGE_ARMS);
                    break;
                }
                case "ICON_ITEM":
                {
                    sendEvent(Viking.ACTION_ITEM);
                    break;
                }
                case "ICON_ATTACK":
                {
                    sendEvent(Viking.ACTION_ATTACK);
                    break;
                }
                case "ICON_BACK":
                {
                    sendEvent(Viking.ACTION_BACK);
                    break;
                }
                case "ICON_WAIT":
                {
                    sendEvent(Viking.ACTION_WAIT);
                    break;
                }
                default:
                {
                    break;
                }
            }
            return;
        }// end function

        public function armEquipped() : void
        {
            buttonSet();
            return;
        }// end function

        public function set commandBattleLayer(param1:Canvas) : void
        {
            var _loc_2:* = this._1811930322commandBattleLayer;
            if (_loc_2 !== param1)
            {
                this._1811930322commandBattleLayer = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "commandBattleLayer", _loc_2, param1));
            }
            return;
        }// end function

        private function buttonSet() : void
        {
            return;
        }// end function

    }
}
