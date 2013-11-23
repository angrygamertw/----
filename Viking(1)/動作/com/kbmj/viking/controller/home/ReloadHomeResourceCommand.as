package com.kbmj.viking.controller.home
{
    import com.kbmj.viking.proxy.*;
    import com.kbmj.viking.proxy.home.*;
    import com.kbmj.viking.view.home.*;
    import com.kbmj.viking.vo.*;
    import org.puremvc.as3.interfaces.*;
    import org.puremvc.as3.patterns.command.*;

    public class ReloadHomeResourceCommand extends SimpleCommand
    {
        public static const NAME:String = "ReloadHomeResourceCommand";

        public function ReloadHomeResourceCommand()
        {
            return;
        }// end function

        override public function execute(param1:INotification) : void
        {
            sendNotification(HomeMediator.SHOW_LOADING_WINDOW);
            var _loc_2:* = param1.getBody() as Object;
            var _loc_3:* = HomeProxy.HOME_RESOURCE_LOADED;
            if (_loc_2 != null && _loc_2.eventName != null)
            {
                _loc_3 = _loc_2.eventName;
            }
            var _loc_4:* = HomeProxy(facade.retrieveProxy(HomeProxy.NAME));
            var _loc_5:* = PlayerProxy(facade.retrieveProxy(PlayerProxy.NAME));
            var _loc_6:* = MultipleLoadProxy(facade.retrieveProxy(MultipleLoadProxy.NAME));
            MultipleLoadProxy(facade.retrieveProxy(MultipleLoadProxy.NAME)).loadMultiple("reloadHomeResource", _loc_3, [new LoadDetailVO(_loc_4, "loadHomeResource", HomeProxy.HOME_RESOURCE_LOADED), new LoadDetailVO(_loc_5, "loadPlayer", PlayerProxy.PLAYER_LOADED)]);
            return;
        }// end function

    }
}
