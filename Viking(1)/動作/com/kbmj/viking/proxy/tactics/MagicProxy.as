package com.kbmj.viking.proxy.tactics
{
    import com.kbmj.viking.vo.tactics.*;
    import org.puremvc.as3.patterns.proxy.*;

    public class MagicProxy extends Proxy
    {
        private var _hit:Boolean;
        private var _damage:int = 0;
        public static const MAGIC_NAME_WIND:String = "wind";
        public static const NAME:String = "MagicProxy";
        public static const MAGIC_NAME_METEORITE:String = " meteorite";
        public static const MAGIC_NAME_THOUSAND_ARROW:String = "thousand_arrow";
        public static const MAGIC_NAME_ARC_PILLAR:String = "arc_pillar";
        public static const MAGIC_NAME_ROSARY:String = "rosario";
        public static const MAGIC_NAME_HOLY_PIILAR:String = "holy_pillar";
        public static const MAGIC_NAME_GNOME:String = "gnome";
        public static const MAGIC_NAME_SUCK_BLOOD:String = "suck_blood";
        public static const MAGIC_NAME_HOLY_ROSARIO:String = "holy_rosario";
        public static const MAGIC_NAME_Flare:String = "flare";
        public static const MAGIC_NAME_FIRE:String = "fire";
        public static const MAGIC_NAME_THUNDER_BOLT:String = "thunder_bolt";

        public function MagicProxy()
        {
            super(NAME);
            return;
        }// end function

        public function magic(param1:UnitVO, param2:UnitVO) : int
        {
            _damage = UnitProxy.getMagicalDamage(param1, param2) + Math.random() * 3;
            return _damage;
        }// end function

    }
}
