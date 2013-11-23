package com.kbmj.viking.vo.home
{
    import flash.display.*;
    import flash.events.*;
    import mx.events.*;

    public class UnitImageVO extends Object implements IEventDispatcher
    {
        private var _path:String;
        private var _image:Bitmap;
        private var _bindingEventDispatcher:EventDispatcher;

        public function UnitImageVO(param1:String)
        {
            _bindingEventDispatcher = new EventDispatcher(IEventDispatcher(this));
            _path = param1;
            return;
        }// end function

        public function dispatchEvent(event:Event) : Boolean
        {
            return _bindingEventDispatcher.dispatchEvent(event);
        }// end function

        public function hasEventListener(param1:String) : Boolean
        {
            return _bindingEventDispatcher.hasEventListener(param1);
        }// end function

        private function set _3433509path(param1:String) : void
        {
            _path = param1;
            return;
        }// end function

        public function set path(param1:String) : void
        {
            var _loc_2:* = this.path;
            if (_loc_2 !== param1)
            {
                this._3433509path = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "path", _loc_2, param1));
            }
            return;
        }// end function

        private function set _100313435image(param1:Bitmap) : void
        {
            _image = param1;
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

        public function willTrigger(param1:String) : Boolean
        {
            return _bindingEventDispatcher.willTrigger(param1);
        }// end function

        public function get image() : Bitmap
        {
            return _image;
        }// end function

        public function get dupImage() : Bitmap
        {
            var _loc_1:* = new Bitmap(_image.bitmapData);
            _loc_1.smoothing = true;
            return _loc_1;
        }// end function

        public function get path() : String
        {
            return _path;
        }// end function

        private function set _2071651684dupImage(param1:Bitmap) : void
        {
            return;
        }// end function

        public function set image(param1:Bitmap) : void
        {
            var _loc_2:* = this.image;
            if (_loc_2 !== param1)
            {
                this._100313435image = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "image", _loc_2, param1));
            }
            return;
        }// end function

        public function set dupImage(param1:Bitmap) : void
        {
            var _loc_2:* = this.dupImage;
            if (_loc_2 !== param1)
            {
                this._2071651684dupImage = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "dupImage", _loc_2, param1));
            }
            return;
        }// end function

    }
}
