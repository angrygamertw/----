package com.kbmj.viking.controller.tactics
{
    import com.kbmj.viking.lib.*;
    import com.kbmj.viking.proxy.*;
    import com.kbmj.viking.proxy.tactics.*;
    import com.kbmj.viking.vo.*;
    import com.kbmj.viking.vo.tactics.*;
    import flash.display.*;
    import org.puremvc.as3.interfaces.*;
    import org.puremvc.as3.patterns.command.*;

    public class ActionAnimationCommand extends SimpleCommand
    {
        public static const ACTION_ANIMATION_FINISHED:String = NAME + "/notes/actionAnimationFinished";
        public static const UPDATE_STATUS_WINDOW:String = NAME + "/notes/updateStatusWindow";
        public static const NAME:String = "ActionAnimationCommand";
        public static const MAP_VIBRATION:String = NAME + "/notes/mapVibration";

        public function ActionAnimationCommand()
        {
            return;
        }// end function

        override public function execute(param1:INotification) : void
        {
            var animationProxy:AnimationProxy;
            var unitProxy:UnitProxy;
            var attackVO:AttackVO;
            var unit:UnitVO;
            var callback:Function;
            var note:* = param1;
            animationProxy = AnimationProxy(facade.retrieveProxy(AnimationProxy.NAME));
            unitProxy = UnitProxy(facade.retrieveProxy(UnitProxy.NAME));
            attackVO = note.getBody() as AttackVO;
            unit = attackVO.attacker;
            unit.direction = Utils.getDirectionV2(attackVO.attackerPoint, attackVO.targetPoint);
            unit.loader.content.addEventListener("Effect", function () : void
            {
                if (attackVO.target.displayHp > attackVO.targetHp)
                {
                    unitProxy.face2Vibration(attackVO.target);
                }
                if (attackVO.godAnger)
                {
                    sendNotification(MAP_VIBRATION);
                }
                attackVO.target.displayHp = attackVO.targetHp;
                attackVO.attacker.displayHp = attackVO.attackerHp;
                attackVO.target.displayAbnormal = attackVO.targetAbnormal;
                attackVO.attacker.displayAbnormal = attackVO.attackerAbnormal;
                sendNotification(ActionAnimationCommand.UPDATE_STATUS_WINDOW, attackVO);
                unitProxy.updateWeaponEndurance(attackVO.attacker, attackVO.weaponEndurance);
                animationProxy.playActionEffect(attackVO);
                unit.loader.content.removeEventListener("Effect", arguments.callee);
                return;
            }// end function
            );
            callback;
            if (!attackVO.killBlow)
            {
                callback = function () : void
            {
                sendNotification(ActionAnimationCommand.ACTION_ANIMATION_FINISHED, attackVO);
                return;
            }// end function
            ;
            }
            var action:String;
            var labels:* = MovieClip(attackVO.attacker.loader.content).currentLabels;
            if (attackVO.attacker.weaponType == WeaponVO.WEAPON_TYPE_MAGIC)
            {
                if (labels.find("name", "magic_b_l").length > 0)
                {
                    action;
                }
            }
            else if (attackVO.attacker.weaponType == WeaponVO.WEAPON_TYPE_HEAL)
            {
                if (labels.find("name", "heal_b_l").length > 0)
                {
                    action;
                }
            }
            if (action == "")
            {
                if (labels.find("name", "attack_b_l").length > 0)
                {
                    action;
                }
                else if (labels.find("name", "magic_b_l").length > 0)
                {
                    action;
                }
                else if (labels.find("name", "heal_b_l").length > 0)
                {
                    action;
                }
                else if (labels.find("name", "item_b_l").length > 0)
                {
                    action;
                }
            }
            animationProxy.changeAnime(unit, action, null, function () : void
            {
                animationProxy.changeAnime(unit, "walk", callback, null);
                return;
            }// end function
            );
            if (attackVO.skillEffects.other.indexOf(SkillVO.SKILL_NAME_TERROR) >= 0)
            {
                animationProxy.effect("skills", SkillVO.SKILL_NAME_TERROR, attackVO.target);
            }
            return;
        }// end function

    }
}
