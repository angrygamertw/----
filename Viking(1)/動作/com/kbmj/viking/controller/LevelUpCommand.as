package com.kbmj.viking.controller
{
    import com.kbmj.viking.proxy.tactics.*;
    import com.kbmj.viking.vo.tactics.*;
    import org.puremvc.as3.interfaces.*;
    import org.puremvc.as3.patterns.command.*;

    public class LevelUpCommand extends SimpleCommand
    {
        public static const SELECT_UNIT_SELECT_SKILL:String = NAME + "/notes/selectUnitSelectSkill";
        public static const SELECT_UNIT_LEVELUP_FINISHED:String = NAME + "/notes/selectUnitLevelUpFinished";
        public static const NAME:String = "LEVEL_UP_COMMAND";
        public static const HOME_SELECT_SKILL:String = NAME + "/notes/homeSelectSkill";
        public static const APPLICATION_MEDIATOR_LEVELUP_FINISHED:String = NAME + "/notes/applicationMediatorLevelUpFinished";
        public static const HOME_LEVELUP_FINISHED:String = NAME + "/notes/homeLevelUpFinished";
        public static const ALL_MAP_LEVELUP_FINISHED:String = NAME + "/notes/allMapLevelUpFinished";
        public static const SHOW_LOADING_WINDOW:String = NAME + "/notes/showLoadingWindow";

        public function LevelUpCommand()
        {
            return;
        }// end function

        override public function execute(param1:INotification) : void
        {
            var _loc_2:* = param1.getBody() as Array;
            var _loc_3:* = _loc_2[0] as UnitVO;
            var _loc_4:* = _loc_2[1] as String;
            var _loc_5:* = UnitProxy(facade.retrieveProxy(UnitProxy.NAME));
            if (_loc_4 == "home")
            {
                sendNotification(SHOW_LOADING_WINDOW);
            }
            trace("levelUpCommand:" + NAME + "/notes/" + _loc_4 + "LevelUpFinished");
            _loc_5.levelUpUnit(_loc_3, NAME + "/notes/" + _loc_4 + "LevelUpFinished");
            return;
        }// end function

    }
}
