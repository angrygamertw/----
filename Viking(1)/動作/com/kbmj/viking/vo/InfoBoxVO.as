package com.kbmj.viking.vo
{
    import flash.events.*;
    import mx.events.*;

    public class InfoBoxVO extends Object implements IEventDispatcher
    {
        private var _btnMoveX:int;
        private var _btnMoveY:int;
        private var _textWidth:int;
        private var _areaHeight:int;
        private var _areaWidth:int;
        private var _bindingEventDispatcher:EventDispatcher;
        private var _textHeight:int;
        private var _areaMove:int;
        private var _canvasMoveX:int;
        private var _canvasMoveY:int;

        public function InfoBoxVO()
        {
            _bindingEventDispatcher = new EventDispatcher(IEventDispatcher(this));
            return;
        }// end function

        private function set _108348103areaWidth(param1:int) : void
        {
            _areaWidth = param1;
            return;
        }// end function

        public function willTrigger(param1:String) : Boolean
        {
            return _bindingEventDispatcher.willTrigger(param1);
        }// end function

        public function get textWidth() : int
        {
            return _textWidth;
        }// end function

        public function get areaHeight() : int
        {
            return _areaHeight;
        }// end function

        private function set _1889374160canvasMoveY(param1:int) : void
        {
            _canvasMoveY = param1;
            return;
        }// end function

        public function set areaHeight(param1:int) : void
        {
            var _loc_2:* = this.areaHeight;
            if (_loc_2 !== param1)
            {
                this._503181332areaHeight = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "areaHeight", _loc_2, param1));
            }
            return;
        }// end function

        public function get btnMoveX() : int
        {
            return _btnMoveX;
        }// end function

        public function get btnMoveY() : int
        {
            return _btnMoveY;
        }// end function

        public function get canvasMoveX() : int
        {
            return _canvasMoveX;
        }// end function

        public function get canvasMoveY() : int
        {
            return _canvasMoveY;
        }// end function

        public function set textWidth(param1:int) : void
        {
            var _loc_2:* = this.textWidth;
            if (_loc_2 !== param1)
            {
                this._1045287783textWidth = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "textWidth", _loc_2, param1));
            }
            return;
        }// end function

        public function get areaWidth() : int
        {
            return _areaWidth;
        }// end function

        public function dispatchEvent(event:Event) : Boolean
        {
            return _bindingEventDispatcher.dispatchEvent(event);
        }// end function

        public function get textHeight() : int
        {
            return _textHeight;
        }// end function

        private function set _2091674027btnMoveX(param1:int) : void
        {
            _btnMoveX = param1;
            return;
        }// end function

        private function set _2091674028btnMoveY(param1:int) : void
        {
            _btnMoveY = param1;
            return;
        }// end function

        public function removeEventListener(param1:String, param2:Function, param3:Boolean = false) : void
        {
            _bindingEventDispatcher.removeEventListener(param1, param2, param3);
            return;
        }// end function

        public function addEventListener(param1:String, param2:Function, param3:Boolean = false, param4:int = 0, param5:Boolean = false) : void
        {
            _bindingEventDispatcher.addEventListener(param1, param2, param3, param4, param5);
            return;
        }// end function

        public function set btnMoveX(param1:int) : void
        {
            var _loc_2:* = this.btnMoveX;
            if (_loc_2 !== param1)
            {
                this._2091674027btnMoveX = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "btnMoveX", _loc_2, param1));
            }
            return;
        }// end function

        private function set _1889374161canvasMoveX(param1:int) : void
        {
            _canvasMoveX = param1;
            return;
        }// end function

        public function set canvasMoveX(param1:int) : void
        {
            var _loc_2:* = this.canvasMoveX;
            if (_loc_2 !== param1)
            {
                this._1889374161canvasMoveX = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "canvasMoveX", _loc_2, param1));
            }
            return;
        }// end function

        public function set btnMoveY(param1:int) : void
        {
            var _loc_2:* = this.btnMoveY;
            if (_loc_2 !== param1)
            {
                this._2091674028btnMoveY = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "btnMoveY", _loc_2, param1));
            }
            return;
        }// end function

        public function set canvasMoveY(param1:int) : void
        {
            var _loc_2:* = this.canvasMoveY;
            if (_loc_2 !== param1)
            {
                this._1889374160canvasMoveY = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "canvasMoveY", _loc_2, param1));
            }
            return;
        }// end function

        public function set textHeight(param1:int) : void
        {
            var _loc_2:* = this.textHeight;
            if (_loc_2 !== param1)
            {
                this._1522822324textHeight = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "textHeight", _loc_2, param1));
            }
            return;
        }// end function

        private function set _503181332areaHeight(param1:int) : void
        {
            _areaHeight = param1;
            return;
        }// end function

        private function set _1522822324textHeight(param1:int) : void
        {
            _textHeight = param1;
            return;
        }// end function

        public function set areaWidth(param1:int) : void
        {
            var _loc_2:* = this.areaWidth;
            if (_loc_2 !== param1)
            {
                this._108348103areaWidth = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "areaWidth", _loc_2, param1));
            }
            return;
        }// end function

        private function set _1045287783textWidth(param1:int) : void
        {
            _textWidth = param1;
            return;
        }// end function

        private function set _1666354690areaMove(param1:int) : void
        {
            _areaMove = param1;
            return;
        }// end function

        public function hasEventListener(param1:String) : Boolean
        {
            return _bindingEventDispatcher.hasEventListener(param1);
        }// end function

        public function set areaMove(param1:int) : void
        {
            var _loc_2:* = this.areaMove;
            if (_loc_2 !== param1)
            {
                this._1666354690areaMove = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "areaMove", _loc_2, param1));
            }
            return;
        }// end function

        public function get areaMove() : int
        {
            return _areaMove;
        }// end function

    }
}
