package com.kbmj.viking.controller.tactics
{
    import org.puremvc.as3.interfaces.*;
    import org.puremvc.as3.patterns.command.*;

    public class ItemFinishCommand extends SimpleCommand
    {
        public static const ORDER_EXECUTED:String = NAME + "/notes/orderExecuted";
        public static const AI_ITEM_ANIMATION_FINISHED:String = NAME + "/notes/aiItemAnimationFinished";
        public static const HUMAN_ITEM_ANIMATION_FINISHED:String = NAME + "/notes/humanItemAnimationFinished";
        public static const NAME:String = "ItemFinishCommand";

        public function ItemFinishCommand()
        {
            return;
        }// end function

        override public function execute(param1:INotification) : void
        {
            sendNotification(AI_ITEM_ANIMATION_FINISHED, param1.getBody());
            sendNotification(ORDER_EXECUTED);
            return;
        }// end function

    }
}
