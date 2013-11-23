package com.kbmj.viking.view
{
    import org.puremvc.as3.patterns.mediator.*;

    public class BaseMediator extends Mediator
    {

        public function BaseMediator(param1:String, param2:Viking)
        {
            super(param1, param2);
            return;
        }// end function

        public function get app() : Viking
        {
            return viewComponent as Viking;
        }// end function

        protected function addEventListeners(param1:Array) : void
        {
            var _loc_2:Array = null;
            for each (_loc_2 in param1)
            {
                
                _loc_2[0].addEventListener(_loc_2[1], _loc_2[2]);
            }
            return;
        }// end function

    }
}
