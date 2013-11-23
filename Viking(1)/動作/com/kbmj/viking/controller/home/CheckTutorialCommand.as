package com.kbmj.viking.controller.home
{
    import com.kbmj.viking.proxy.*;
    import com.kbmj.viking.vo.*;
    import org.puremvc.as3.interfaces.*;
    import org.puremvc.as3.patterns.command.*;

    public class CheckTutorialCommand extends SimpleCommand
    {
        public static const NAME:String = "CheckTutorialCommand";

        public function CheckTutorialCommand()
        {
            return;
        }// end function

        override public function execute(param1:INotification) : void
        {
            var _loc_2:* = param1.getBody() as TutorialVO;
            var _loc_3:* = PlayerProxy(facade.retrieveProxy(PlayerProxy.NAME));
            _loc_3.playerVO.currentTutorial = _loc_2;
            return;
        }// end function

    }
}
