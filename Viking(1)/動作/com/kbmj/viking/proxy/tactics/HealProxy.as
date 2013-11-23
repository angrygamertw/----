package com.kbmj.viking.proxy.tactics
{
    import com.kbmj.viking.vo.tactics.*;
    import org.puremvc.as3.patterns.proxy.*;

    public class HealProxy extends Proxy
    {
        private var _damage:int = 0;
        public static const NAME:String = "PrayProxy";

        public function HealProxy()
        {
            super(NAME);
            return;
        }// end function

        public function heal(param1:UnitVO, param2:UnitVO) : int
        {
            _damage = param1.baseMagicalDamage - Math.random() * 3;
            return -_damage;
        }// end function

    }
}
