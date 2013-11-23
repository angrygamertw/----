package com.kbmj.viking.controller.tactics
{
    import com.kbmj.viking.proxy.*;
    import com.kbmj.viking.proxy.tactics.*;
    import com.kbmj.viking.vo.tactics.*;
    import org.puremvc.as3.interfaces.*;
    import org.puremvc.as3.patterns.command.*;

    public class ItemAnimationCommand extends SimpleCommand
    {
        public static const ITEM_ANIMATION_FINISHED:String = NAME + "/notes/itemAnimationFinished";
        public static const NAME:String = "ItemAnimationCommand";

        public function ItemAnimationCommand()
        {
            return;
        }// end function

        override public function execute(param1:INotification) : void
        {
            var animationProxy:AnimationProxy;
            var unit:UnitVO;
            var callback:Function;
            var note:* = param1;
            animationProxy = AnimationProxy(facade.retrieveProxy(AnimationProxy.NAME));
            var unitProxy:* = UnitProxy(facade.retrieveProxy(UnitProxy.NAME));
            var itemProxy:* = ItemProxy(facade.retrieveProxy(ItemProxy.NAME));
            var useItemVO:* = note.getBody() as UseItemVO;
            unit = useItemVO.unit;
            var effect:* = useItemVO.effect;
            unitProxy.updateHp(unit);
            callback = function () : void
            {
                sendNotification(ItemAnimationCommand.ITEM_ANIMATION_FINISHED, unit);
                return;
            }// end function
            ;
            animationProxy.changeAnime(unit, "item", null, function () : void
            {
                animationProxy.changeAnime(unit, "walk", callback, null);
                return;
            }// end function
            );
            var attackVO:* = new AttackVO(unit, unit.position, unit, effect);
            itemProxy.itemAnimation(unit);
            animationProxy.damagePop(unit, effect, attackVO, true);
            return;
        }// end function

    }
}
