package com.kbmj.viking.view
{
    import flash.display.*;
    import mx.containers.*;
    import mx.managers.*;

    public class CanvasWithPopUp extends BaseCanvas
    {

        public function CanvasWithPopUp()
        {
            return;
        }// end function

        public function popupWindow(param1:Canvas, param2:Boolean = true, param3:DisplayObject = null, param4:Boolean = false) : void
        {
            if (!this.systemManager.contains(DisplayObject(param1)))
            {
                param1.setStyle("modalTransparencyBlur", 0);
                param1.setStyle("modalTransparency", param4 ? (0) : (0.4));
                param1.setStyle("modalTransparencyColor", 16777215);
                PopUpManager.addPopUp(param1, param3 ? (param3) : (this), true);
                if (param2)
                {
                    PopUpManager.centerPopUp(param1);
                }
            }
            return;
        }// end function

    }
}
