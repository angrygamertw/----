package com.kbmj.viking.controller.home
{
    import com.kbmj.viking.lib.*;
    import com.kbmj.viking.proxy.*;
    import com.kbmj.viking.proxy.home.*;
    import com.kbmj.viking.view.home.*;
    import org.puremvc.as3.interfaces.*;
    import org.puremvc.as3.patterns.command.*;

    public class ConfirmItemSummonCommand extends SimpleCommand
    {
        public static const NAME:String = "ConfirmItemSummonCommand";
        public static const CONFIRM_ITEM_SUMMON:String = NAME + "/confirmItemSummon";

        public function ConfirmItemSummonCommand()
        {
            return;
        }// end function

        override public function execute(param1:INotification) : void
        {
            var _loc_2:HomeProxy = null;
            var _loc_3:PlayerProxy = null;
            var _loc_5:Object = null;
            var _loc_6:int = 0;
            _loc_2 = HomeProxy(facade.retrieveProxy(HomeProxy.NAME));
            _loc_3 = PlayerProxy(facade.retrieveProxy(PlayerProxy.NAME));
            var _loc_4:* = param1.getBody() as String;
            switch(_loc_4)
            {
                case "ticket":
                {
                    _loc_5 = _loc_2.homeVO.resourceVO.materials.find("code", "1627")[0];
                    if (_loc_5.quantity > 0)
                    {
                        sendNotification(CONFIRM_ITEM_SUMMON, {summonType:_loc_4, quantity:_loc_5.quantity});
                    }
                    else
                    {
                        sendNotification(HomeMediator.SHOW_ALERT_WINDOW, Utils.i18n("homeMediatorNotEnoughGoldCoin"));
                    }
                    break;
                }
                case "gold":
                {
                    _loc_6 = _loc_3.playerVO.gold / 10000;
                    if (_loc_6 > 0)
                    {
                        sendNotification(CONFIRM_ITEM_SUMMON, {summonType:_loc_4, quantity:_loc_3.playerVO.gold});
                    }
                    else
                    {
                        sendNotification(HomeMediator.SHOW_ALERT_WINDOW, Utils.i18n("cityMediatorShortageMoney"));
                    }
                    break;
                }
                default:
                {
                    break;
                }
            }
            return;
        }// end function

    }
}
