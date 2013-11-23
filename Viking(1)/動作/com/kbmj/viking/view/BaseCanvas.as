package com.kbmj.viking.view
{
    import flash.events.*;
    import mx.containers.*;

    public class BaseCanvas extends Canvas
    {

        public function BaseCanvas()
        {
            return;
        }// end function

        protected function sendEvent(param1:String) : void
        {
            this.dispatchEvent(new Event(param1));
            return;
        }// end function

    }
}
