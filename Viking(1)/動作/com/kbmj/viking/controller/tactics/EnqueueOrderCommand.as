package com.kbmj.viking.controller.tactics
{
    import com.kbmj.viking.proxy.tactics.*;
    import com.kbmj.viking.vo.tactics.*;
    import org.puremvc.as3.interfaces.*;
    import org.puremvc.as3.patterns.command.*;

    public class EnqueueOrderCommand extends SimpleCommand
    {
        public static const NAME:String = "EnqueueOrderCommand";

        public function EnqueueOrderCommand()
        {
            return;
        }// end function

        override public function execute(param1:INotification) : void
        {
            var _loc_4:OrderVO = null;
            var _loc_2:* = TacticsOrderProxy(facade.retrieveProxy(TacticsOrderProxy.NAME));
            var _loc_3:* = param1.getBody() as Object;
            if (_loc_3 is Array)
            {
                for each (_loc_4 in _loc_3)
                {
                    
                    _loc_2.enqueueOrder(_loc_4);
                }
            }
            else
            {
                _loc_2.enqueueOrder(_loc_3 as OrderVO);
            }
            return;
        }// end function

    }
}
