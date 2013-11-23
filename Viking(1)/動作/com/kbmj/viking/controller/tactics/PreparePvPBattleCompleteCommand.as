package com.kbmj.viking.controller.tactics
{
    import com.kbmj.viking.lib.error.*;
    import com.kbmj.viking.proxy.*;
    import com.kbmj.viking.proxy.tactics.*;
    import com.kbmj.viking.vo.tactics.*;
    import org.puremvc.as3.interfaces.*;
    import org.puremvc.as3.patterns.command.*;

    public class PreparePvPBattleCompleteCommand extends SimpleCommand
    {
        public static const START_PVP_BATTLE:String = NAME + "/notes/startPvPBattle";
        public static const NAME:String = "PreparePvPBattleCompleteCommand";

        public function PreparePvPBattleCompleteCommand()
        {
            return;
        }// end function

        override public function execute(param1:INotification) : void
        {
            var tacticsProxy:TacticsProxy;
            var tactics:TacticsVO;
            var note:* = param1;
            tacticsProxy = TacticsProxy(facade.retrieveProxy(TacticsProxy.NAME));
            var imageProxy:* = ImageProxy(facade.retrieveProxy(ImageProxy.NAME));
            var params:* = note.getBody();
            try
            {
                tactics = tacticsProxy.initialize(params);
                imageProxy.callAfterImageLoaded(function () : void
            {
                sendNotification(START_PVP_BATTLE, {tacticsVO:tactics, tacticsProxy:tacticsProxy});
                return;
            }// end function
            );
            }
            catch (e:NoEnemyFoundError)
            {
            }
            return;
        }// end function

    }
}
