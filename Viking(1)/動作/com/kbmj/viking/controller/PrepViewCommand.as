package com.kbmj.viking.controller
{
    import com.kbmj.viking.view.*;
    import com.kbmj.viking.view.allMap.*;
    import com.kbmj.viking.view.city.*;
    import com.kbmj.viking.view.home.*;
    import com.kbmj.viking.view.initialForm.*;
    import com.kbmj.viking.view.selectUnit.*;
    import com.kbmj.viking.view.tactics.*;
    import org.puremvc.as3.interfaces.*;
    import org.puremvc.as3.patterns.command.*;

    public class PrepViewCommand extends SimpleCommand
    {

        public function PrepViewCommand()
        {
            return;
        }// end function

        override public function execute(param1:INotification) : void
        {
            var _loc_2:* = param1.getBody() as Viking;
            facade.registerMediator(new ApplicationMediator(_loc_2));
            facade.registerMediator(new TacticsMediator(_loc_2));
            facade.registerMediator(new SelectUnitMediator(_loc_2));
            facade.registerMediator(new HomeMediator(_loc_2));
            facade.registerMediator(new CityMediator(_loc_2));
            facade.registerMediator(new AllMapMediator(_loc_2));
            facade.registerMediator(new InitialFormMediator(_loc_2));
            return;
        }// end function

    }
}
