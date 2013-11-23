package com.kbmj.viking.view
{
    import com.kbmj.viking.lib.*;
    import mx.managers.*;

    public class PopupWindow extends CanvasWithPopUp
    {

        public function PopupWindow()
        {
            return;
        }// end function

        protected function onClose() : void
        {
            PopUpManager.removePopUp(this);
            return;
        }// end function

        protected function sendPopupEvent(param1:String, param2:Object) : void
        {
            this.dispatchEvent(new PopupEvent(param1, param2));
            return;
        }// end function

    }
}
