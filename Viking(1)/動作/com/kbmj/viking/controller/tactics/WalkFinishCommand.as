package com.kbmj.viking.controller.tactics
{
    import com.kbmj.viking.view.tactics.*;
    import org.puremvc.as3.interfaces.*;
    import org.puremvc.as3.patterns.command.*;

    public class WalkFinishCommand extends SimpleCommand
    {
        public static const NAME:String = "WalkFinishCommand";
        public static const PERMUTE_MAP_OBJECT:String = NAME + "/notes/permuteMapObjects";

        public function WalkFinishCommand()
        {
            return;
        }// end function

        override public function execute(param1:INotification) : void
        {
            sendNotification(PERMUTE_MAP_OBJECT);
            sendNotification(TacticsMediator.ORDER_EXECUTED);
            return;
        }// end function

    }
}
