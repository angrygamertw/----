package com.kbmj.viking.controller.tactics
{
    import com.kbmj.viking.proxy.*;
    import com.kbmj.viking.proxy.tactics.*;
    import com.kbmj.viking.view.tactics.*;
    import com.kbmj.viking.vo.*;
    import com.kbmj.viking.vo.tactics.*;
    import org.puremvc.as3.interfaces.*;
    import org.puremvc.as3.patterns.command.*;

    public class AttackFinishCommand extends SimpleCommand
    {
        public static const ENQUEUE_ORDER:String = NAME + "/notes/command/enqueueOrder";
        public static const NAME:String = "AttackFinishCommand";
        public static const COUNTER:String = NAME + "/notes/counter";

        public function AttackFinishCommand()
        {
            return;
        }// end function

        override public function execute(param1:INotification) : void
        {
            var _loc_4:AnimationProxy = null;
            var _loc_2:* = TacticsProxy(facade.retrieveProxy(TacticsProxy.NAME));
            var _loc_3:* = param1.getBody() as AttackVO;
            _loc_3.target.deadFinish = true;
            if (_loc_3.skillEffects.other.indexOf(SkillVO.SKILL_NAME_COUNTER_CANCELER) >= 0)
            {
                _loc_4 = AnimationProxy(facade.retrieveProxy(AnimationProxy.NAME));
                _loc_4.effect("skills", SkillVO.SKILL_NAME_COUNTER_CANCELER, _loc_3.target);
            }
            if (_loc_3.areaAttack == false)
            {
                sendNotification(TacticsMediator.ORDER_EXECUTED);
            }
            return;
        }// end function

    }
}
