package com.kbmj.viking.controller
{
    import com.kbmj.viking.proxy.allMap.*;
    import com.kbmj.viking.proxy.tactics.*;
    import com.kbmj.viking.vo.tactics.*;
    import org.puremvc.as3.interfaces.*;
    import org.puremvc.as3.patterns.command.*;

    public class InitializeFinishedCommand extends SimpleCommand
    {
        public static const SHOW_INITIAL_FORM_INIT_HOME:String = NAME + "/notes/showInitialFormInitHome";
        public static const SHOW_INITIAL_FORM:String = NAME + "/notes/showInitialForm";
        public static const NAME:String = "InitializeFinishedCommand";
        public static const SHOW_RESULT_FOR_RESET_BATTLE:String = NAME + "/notes/ShowResultForResetBattle";
        public static const START_GAME:String = NAME + "/notes/StartGame";

        public function InitializeFinishedCommand()
        {
            return;
        }// end function

        override public function execute(param1:INotification) : void
        {
            var _loc_4:AllMapProxy = null;
            var _loc_5:UnitProxy = null;
            var _loc_6:Array = null;
            var _loc_7:Object = null;
            var _loc_8:FinishVO = null;
            var _loc_9:Array = null;
            var _loc_10:RewardVO = null;
            var _loc_11:UnitVO = null;
            var _loc_2:* = TacticsProxy(facade.retrieveProxy(TacticsProxy.NAME));
            var _loc_3:* = param1.getBody();
            if (_loc_3.first_time)
            {
                sendNotification(SHOW_INITIAL_FORM);
            }
            else if (_loc_3.second_time)
            {
                _loc_4 = AllMapProxy(facade.retrieveProxy(AllMapProxy.NAME));
                _loc_4.loadDistributionPlayersCount(SHOW_INITIAL_FORM_INIT_HOME);
            }
            else if (_loc_3.reset && _loc_3.reset.type)
            {
                _loc_5 = UnitProxy(facade.retrieveProxy(UnitProxy.NAME));
                _loc_6 = new Array();
                for each (_loc_7 in _loc_3.reset.units)
                {
                    
                    _loc_11 = _loc_5.unitFactory(_loc_7.unit);
                    _loc_6.push(new UnitExpVO(_loc_11, "0", false));
                }
                _loc_8 = new FinishVO();
                _loc_9 = _loc_2.buildRewardResorce(_loc_3.reset);
                _loc_10 = new RewardVO(_loc_9, _loc_6);
                _loc_8.reward = _loc_10;
                sendNotification(SHOW_RESULT_FOR_RESET_BATTLE, _loc_8);
            }
            else if (_loc_3.restart)
            {
                _loc_2.restart(_loc_3.restart);
            }
            else
            {
                sendNotification(START_GAME);
            }
            return;
        }// end function

    }
}
