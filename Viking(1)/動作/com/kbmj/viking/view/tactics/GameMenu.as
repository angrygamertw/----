package com.kbmj.viking.view.tactics
{
    import com.kbmj.viking.vo.tactics.*;
    import flash.events.*;
    import mx.containers.*;
    import mx.core.*;
    import mx.events.*;

    public class GameMenu extends Canvas
    {
        private var _game:Object;
        private var _91329123_unit:UnitVO;
        private var _documentDescriptor_:UIComponentDescriptor;

        public function GameMenu()
        {
            _documentDescriptor_ = new UIComponentDescriptor({type:Canvas, propertiesFactory:function () : Object
            {
                return {height:140, width:125};
            }// end function
            });
            mx_internal::_document = this;
            this.x = 640;
            this.y = 2;
            this.height = 140;
            this.width = 125;
            this.verticalScrollPolicy = "off";
            this.horizontalScrollPolicy = "off";
            return;
        }// end function

        private function get _unit() : UnitVO
        {
            return this._91329123_unit;
        }// end function

        public function set game(param1:Object) : void
        {
            _game = param1;
            return;
        }// end function

        private function closeMenu() : void
        {
            this.addEventListener(MouseEvent.MOUSE_DOWN, openMenu);
            return;
        }// end function

        private function resetStage() : void
        {
            return;
        }// end function

        private function unitList() : void
        {
            return;
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

        public function set unit(param1:UnitVO) : void
        {
            _unit = param1;
            return;
        }// end function

        override public function initialize() : void
        {
            .mx_internal::setDocumentDescriptor(_documentDescriptor_);
            super.initialize();
            return;
        }// end function

        private function openMenu(event:Event) : void
        {
            this.removeEventListener(MouseEvent.MOUSE_DOWN, openMenu);
            return;
        }// end function

        private function turnEnd() : void
        {
            return;
        }// end function

    }
}
