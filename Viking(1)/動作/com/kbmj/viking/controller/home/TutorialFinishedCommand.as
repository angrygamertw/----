package com.kbmj.viking.controller.home
{
    import com.kbmj.viking.proxy.*;
    import com.kbmj.viking.proxy.home.*;
    import com.kbmj.viking.proxy.tactics.*;
    import com.kbmj.viking.vo.*;
    import org.puremvc.as3.interfaces.*;
    import org.puremvc.as3.patterns.command.*;

    public class TutorialFinishedCommand extends SimpleCommand
    {
        public static const SHOW_LOADING_WINDOW:String = NAME + "notes/showReloadWindow";
        public static const RELOAD_AFTER_TUTORIAL_FINISHED:String = NAME + "notes/reloadAfterTutorialFinished";
        public static const NAME:String = "TutorialFinishedCommand";

        public function TutorialFinishedCommand()
        {
            return;
        }// end function

        override public function execute(param1:INotification) : void
        {
            sendNotification(SHOW_LOADING_WINDOW);
            var _loc_2:* = UnitProxy(facade.retrieveProxy(UnitProxy.NAME));
            var _loc_3:* = HomeProxy(facade.retrieveProxy(HomeProxy.NAME));
            var _loc_4:* = PlayerProxy(facade.retrieveProxy(PlayerProxy.NAME));
            var _loc_5:* = MultipleLoadProxy(facade.retrieveProxy(MultipleLoadProxy.NAME));
            MultipleLoadProxy(facade.retrieveProxy(MultipleLoadProxy.NAME)).loadMultiple("reloadAfterTutorial", RELOAD_AFTER_TUTORIAL_FINISHED, [new LoadDetailVO(_loc_2, "loadHomeUnits", UnitProxy.HOME_UNITS_LOADED), new LoadDetailVO(_loc_4, "loadPlayer", PlayerProxy.PLAYER_LOADED), new LoadDetailVO(_loc_3, "loadHomeResource", HomeProxy.HOME_RESOURCE_LOADED)]);
            return;
        }// end function

    }
}
