package com.kbmj.viking.lib
{
    import flash.events.*;

    public class PopupEvent extends Event
    {
        private var _param:Object;

        public function PopupEvent(param1:String, param2:Object)
        {
            super(param1);
            this.param = param2;
            return;
        }// end function

        public function set param(param1:Object) : void
        {
            _param = param1;
            return;
        }// end function

        public function get param() : Object
        {
            return _param;
        }// end function

    }
}
