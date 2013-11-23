package com.kbmj.viking.view
{
    import mx.controls.*;

    public class DataGridRowColor extends Text
    {

        public function DataGridRowColor()
        {
            return;
        }// end function

        override public function set data(param1:Object) : void
        {
            if (param1 != null)
            {
                super.data = param1;
                this.setStyle("color", param1.chatColor);
            }
            return;
        }// end function

    }
}
