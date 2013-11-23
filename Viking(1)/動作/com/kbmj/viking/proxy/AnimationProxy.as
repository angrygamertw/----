package com.kbmj.viking.proxy
{
    import caurina.transitions.*;
    import com.kbmj.viking.controller.tactics.*;
    import com.kbmj.viking.lib.anime.*;
    import com.kbmj.viking.proxy.tactics.*;
    import com.kbmj.viking.view.tactics.*;
    import com.kbmj.viking.vo.*;
    import com.kbmj.viking.vo.tactics.*;
    import flash.display.*;
    import flash.events.*;
    import flash.geom.*;
    import flash.net.*;
    import flash.utils.*;
    import mx.core.*;
    import org.puremvc.as3.patterns.proxy.*;

    public class AnimationProxy extends Proxy
    {
        public var childLoaders:Object;
        public var generalLoaders:Object;
        private var loadingCount:int = 0;
        private var _lvUpAnimation:LevelUpAnimation;
        private var _lvUpAnimeBool:Boolean;
        public var childUIs:Object;
        private var damageOfBloodArray:Array;
        private var _lvUpUnit:UnitVO;
        private var areaArray:Array;
        private var lvUpAnimeEventName:String;
        private var lvUpAnimeLayer:Object;
        private var animations:Object;
        private var filters:FilterManager;
        public var generalUIs:Object;
        public static const EFFECT_OFFSET:Object = {skills:{shield:new Point(0, 0), counterCancel:new Point(0, 0), doubleAttack:new Point(0, 0), bowAvoid:new Point(0, 0), regist:new Point(0, 0), hateUp:new Point(0, 0), critical:new Point(0, 0), terror:new Point(0, 0), revival:new Point(0, 0), doubleMagic:new Point(0, 0), lightningAttack:new Point(0, 0), lightningTrick:new Point(0, 0), directAttack:new Point(0, 0), godDefenses1:new Point(0, 0), godDefenses2:new Point(0, 0), godDefenses3:new Point(0, 0), godDefenses4:new Point(0, 0)}};
        public static const SHIKIHIME_LIST_LOAD_COMPLETE:String = NAME + "/notes/shikihimeListLoadComplete";
        private static const loadTable:Object = {units:{101:"/swf/animation/units/101.swf", 102:"/swf/animation/units/102.swf", 103:"/swf/animation/units/103.swf", 110:"/swf/animation/units/110.swf", 120:"/swf/animation/units/120.swf", 130:"/swf/animation/units/130.swf", 190:"/swf/animation/units/190.swf", 191:"/swf/animation/units/191.swf", 192:"/swf/animation/units/192.swf", 201:"/swf/animation/units/201.swf", 202:"/swf/animation/units/202.swf", 203:"/swf/animation/units/203.swf", 210:"/swf/animation/units/210.swf", 220:"/swf/animation/units/220.swf", 230:"/swf/animation/units/230.swf", 290:"/swf/animation/units/290.swf", 291:"/swf/animation/units/291.swf", 292:"/swf/animation/units/292.swf", 293:"/swf/animation/units/293.swf", 301:"/swf/animation/units/301.swf", 302:"/swf/animation/units/302.swf", 303:"/swf/animation/units/303.swf", 310:"/swf/animation/units/310.swf", 320:"/swf/animation/units/320.swf", 330:"/swf/animation/units/330.swf", 390:"/swf/animation/units/390.swf", 391:"/swf/animation/units/391.swf", 392:"/swf/animation/units/392.swf", 393:"/swf/animation/units/393.swf", 401:"/swf/animation/units/401.swf", 402:"/swf/animation/units/402.swf", 403:"/swf/animation/units/403.swf", 410:"/swf/animation/units/410.swf", 420:"/swf/animation/units/420.swf", 430:"/swf/animation/units/430.swf", 490:"/swf/animation/units/490.swf", 491:"/swf/animation/units/491.swf", 492:"/swf/animation/units/492.swf", 501:"/swf/animation/units/501.swf", 502:"/swf/animation/units/502.swf", 503:"/swf/animation/units/503.swf", 510:"/swf/animation/units/510.swf", 520:"/swf/animation/units/520.swf", 530:"/swf/animation/units/101.swf", 590:"/swf/animation/units/590.swf", 591:"/swf/animation/units/591.swf", 592:"/swf/animation/units/592.swf", 601:"/swf/animation/units/601.swf", 602:"/swf/animation/units/602.swf", 603:"/swf/animation/units/603.swf", 610:"/swf/animation/units/610.swf", 620:"/swf/animation/units/620.swf", 630:"/swf/animation/units/101.swf", 690:"/swf/animation/units/690.swf", 691:"/swf/animation/units/691.swf", 701:"/swf/animation/units/701.swf", 702:"/swf/animation/units/702.swf", 711:"/swf/animation/units/711.swf", 712:"/swf/animation/units/712.swf", 721:"/swf/animation/units/721.swf", 722:"/swf/animation/units/722.swf", 731:"/swf/animation/units/731.swf", 732:"/swf/animation/units/732.swf", 741:"/swf/animation/units/741.swf", 742:"/swf/animation/units/742.swf", 751:"/swf/animation/units/101.swf", 761:"/swf/animation/units/761.swf", 771:"/swf/animation/units/771.swf", 772:"/swf/animation/units/772.swf", 781:"/swf/animation/units/781.swf", 782:"/swf/animation/units/782.swf", 801:"/swf/animation/units/801.swf", 802:"/swf/animation/units/802.swf", 803:"/swf/animation/units/803.swf", 804:"/swf/animation/units/804.swf", 805:"/swf/animation/units/805.swf", 806:"/swf/animation/units/806.swf", 807:"/swf/animation/units/807.swf", 1001:"/swf/animation/units/1001.swf", 1003:"/swf/animation/units/1003.swf", 1005:"/swf/animation/units/1005.swf", 1011:"/swf/animation/units/1011.swf", 1012:"/swf/animation/units/1012.swf", 1014:"/swf/animation/units/1014.swf", 1021:"/swf/animation/units/1021.swf", 1022:"/swf/animation/units/1022.swf", 1023:"/swf/animation/units/1023.swf", 1031:"/swf/animation/units/1031.swf", 1032:"/swf/animation/units/1032.swf", 1033:"/swf/animation/units/101.swf", 1034:"/swf/animation/units/1034.swf", 1041:"/swf/animation/units/1041.swf", 1042:"/swf/animation/units/1042.swf", 1051:"/swf/animation/units/1051.swf", 1052:"/swf/animation/units/1052.swf", 1061:"/swf/animation/units/101.swf", 1062:"/swf/animation/units/101.swf", 1063:"/swf/animation/units/101.swf", 1071:"/swf/animation/units/1071.swf", 1072:"/swf/animation/units/1072.swf", 1081:"/swf/animation/units/1081.swf", 1101:"/swf/animation/units/1101.swf", 1102:"/swf/animation/units/1102.swf", 1103:"/swf/animation/units/1103.swf", 1104:"/swf/animation/units/1104.swf", 1105:"/swf/animation/units/1105.swf", 1106:"/swf/animation/units/1106.swf", 1201:"/swf/animation/units/1201.swf", 1202:"/swf/animation/units/1202.swf", 1203:"/swf/animation/units/1203.swf", 1204:"/swf/animation/units/1204.swf", 1301:"/swf/animation/units/1301.swf", 1302:"/swf/animation/units/1302.swf", 1303:"/swf/animation/units/1303.swf", 1304:"/swf/animation/units/1304.swf", 1401:"/swf/animation/units/1401.swf", 1402:"/swf/animation/units/1402.swf", 1403:"/swf/animation/units/1403.swf", 1404:"/swf/animation/units/1404.swf", 1501:"/swf/animation/units/1501.swf", 1502:"/swf/animation/units/1502.swf", 1503:"/swf/animation/units/1503.swf", 1601:"/swf/animation/units/1601.swf", 1602:"/swf/animation/units/1602.swf", 1603:"/swf/animation/units/1603.swf"}, numbers:{0:"/images/tactics/number/damage_give/0.png", 1:"/images/tactics/number/damage_give/1.png", 2:"/images/tactics/number/damage_give/2.png", 3:"/images/tactics/number/damage_give/3.png", 4:"/images/tactics/number/damage_give/4.png", 5:"/images/tactics/number/damage_give/5.png", 6:"/images/tactics/number/damage_give/6.png", 7:"/images/tactics/number/damage_give/7.png", 8:"/images/tactics/number/damage_give/8.png", 9:"/images/tactics/number/damage_give/9.png", miss:"/images/tactics/number/miss.png"}, damageNumbers:{0:"/images/tactics/number/damage_get/0.png", 1:"/images/tactics/number/damage_get/1.png", 2:"/images/tactics/number/damage_get/2.png", 3:"/images/tactics/number/damage_get/3.png", 4:"/images/tactics/number/damage_get/4.png", 5:"/images/tactics/number/damage_get/5.png", 6:"/images/tactics/number/damage_get/6.png", 7:"/images/tactics/number/damage_get/7.png", 8:"/images/tactics/number/damage_get/8.png", 9:"/images/tactics/number/damage_get/9.png", miss:"/images/tactics/number/miss.png"}, recoverNumbers:{0:"/images/tactics/number/recover/0.png", 1:"/images/tactics/number/recover/1.png", 2:"/images/tactics/number/recover/2.png", 3:"/images/tactics/number/recover/3.png", 4:"/images/tactics/number/recover/4.png", 5:"/images/tactics/number/recover/5.png", 6:"/images/tactics/number/recover/6.png", 7:"/images/tactics/number/recover/7.png", 8:"/images/tactics/number/recover/8.png", 9:"/images/tactics/number/recover/9.png", miss:"/images/tactics/number/miss.png"}, effects:{down:"/swf/animation/effects/effect02_down.swf"}, magics:{Matatabi:"/swf/animation/effects/magic/mag_ef_2047.swf", Kamaitachi:"/swf/animation/effects/magic/mag_ef_2048.swf", Harithurara:"/swf/animation/effects/magic/mag_ef_2049.swf", TrueHarithurara:"/swf/animation/effects/magic/mag_ef_2049.swf", Kaminari:"/swf/animation/effects/magic/mag_ef_2050.swf", TrueKaminari:"/swf/animation/effects/magic/mag_ef_2050.swf", DarkFire:"/swf/animation/effects/magic/mag_ef_2051.swf", WrathOfGod:"/swf/animation/effects/magic/mag_ef_2054.swf", AmathuMikaBoshi:"/swf/animation/effects/magic/mag_ef_2055.swf", WholeDark:"/swf/animation/effects/magic/mag_ef_2057.swf", LoveLight:"/swf/animation/effects/magic/mag_ef_2058.swf", HolyLight:"/swf/animation/effects/magic/mag_ef_2059.swf", LifeLeach:"/swf/animation/effects/magic/mag_ef_2060.swf", PoisonMagic:"/swf/animation/effects/magic/mag_ef_2062.swf", DarkMagic:"/swf/animation/effects/magic/mag_ef_2063.swf", ShadowBindMagic:"/swf/animation/effects/magic/mag_ef_2064.swf", CurseMagic:"/swf/animation/effects/magic/mag_ef_2065.swf", StunMagic:"/swf/animation/effects/magic/mag_ef_2066.swf", Purifylight:"/swf/animation/effects/magic/mag_ef_2108.swf", HotokeLight:"/swf/animation/effects/magic/mag_ef_2058.swf", TrueLifeLeach:"/swf/animation/effects/magic/mag_ef_2060.swf", GodLight:"/swf/animation/effects/magic/mag_ef_2156.swf", JiaiBeam:"/swf/animation/effects/magic/mag_ef_2156.swf", FoxFire:"/swf/animation/effects/magic/mag_ef_2178.swf", Icepillar:"/swf/animation/effects/magic/mag_ef_2181.swf", Tornado:"/swf/animation/effects/magic/mag_ef_2184.swf", Icepillar:"/swf/animation/effects/magic/mag_ef_2181.swf", IcepillarCustom:"/swf/animation/effects/magic/mag_ef_2181.swf", Tornado:"/swf/animation/effects/magic/mag_ef_2184.swf", TenkuuPreciousBook:"/swf/animation/effects/magic/mag_ef_2197.swf", GreatLight:"/swf/animation/effects/magic/mag_ef_2197.swf", MeteorRain:"/swf/animation/effects/magic/mag_ef_2218.swf", MeteorRainCustom:"/swf/animation/effects/magic/mag_ef_2218.swf", JiaiLeser:"/swf/animation/effects/magic/mag_ef_2222.swf", TrueKamaitachi:"/swf/animation/effects/magic/mag_ef_2048.swf", TrueYamihomura:"/swf/animation/effects/magic/mag_ef_2051.swf", TrueFuujin:"/swf/animation/effects/magic/mag_ef_2184.swf", BloodSuck:"/swf/animation/effects/magic/mag_ef_2244.swf", rosario:"/swf/animation/effects/magic/m_effect05_rosary.swf"}, attacks:{0:"/swf/animation/effects/attack/atk_axe.swf", 1:"/swf/animation/effects/attack/atk_sword.swf", 2:"/swf/animation/effects/attack/atk_spear.swf", 3:"/swf/animation/effects/attack/atk_bow.swf", 6:"/swf/animation/effects/attack/atk_hit.swf"}, areas:{attack:"/swf/animation/ui/attack_area.swf", heal:"/swf/animation/ui/magic_area.swf", select:"/swf/animation/ui/select_area.swf", move:"/swf/animation/ui/move_area.swf"}, skills:{critical1:"/swf/animation/effects/skill/skl_ef_101.swf", critical2:"/swf/animation/effects/skill/skl_ef_102.swf", critical3:"/swf/animation/effects/skill/skl_ef_103.swf", dohatsuten1:"/swf/animation/effects/skill/skl_ef_201.swf", dohatsuten2:"/swf/animation/effects/skill/skl_ef_202.swf", dohatsuten3:"/swf/animation/effects/skill/skl_ef_203.swf", jutsuMashi1:"/swf/animation/effects/skill/skl_ef_401.swf", jutsuMashi2:"/swf/animation/effects/skill/skl_ef_402.swf", jutsuMashi3:"/swf/animation/effects/skill/skl_ef_403.swf", doku1:"/swf/animation/effects/skill/skl_ef_501.swf", doku2:"/swf/animation/effects/skill/skl_ef_502.swf", doku3:"/swf/animation/effects/skill/skl_ef_503.swf", kurayami1:"/swf/animation/effects/skill/skl_ef_601.swf", kurayami2:"/swf/animation/effects/skill/skl_ef_602.swf", kurayami3:"/swf/animation/effects/skill/skl_ef_603.swf", kagenui1:"/swf/animation/effects/skill/skl_ef_701.swf", kagenui2:"/swf/animation/effects/skill/skl_ef_702.swf", kagenui3:"/swf/animation/effects/skill/skl_ef_703.swf", jubaku1:"/swf/animation/effects/skill/skl_ef_801.swf", jubaku2:"/swf/animation/effects/skill/skl_ef_802.swf", jubaku3:"/swf/animation/effects/skill/skl_ef_803.swf", mahi1:"/swf/animation/effects/skill/skl_ef_901.swf", mahi2:"/swf/animation/effects/skill/skl_ef_902.swf", mahi3:"/swf/animation/effects/skill/skl_ef_903.swf", doubleAttack1:"/swf/animation/effects/skill/skl_ef_1001.swf", doubleAttack2:"/swf/animation/effects/skill/skl_ef_1002.swf", doubleAttack3:"/swf/animation/effects/skill/skl_ef_1003.swf", doubleMagic1:"/swf/animation/effects/skill/skl_ef_1101.swf", doubleMagic2:"/swf/animation/effects/skill/skl_ef_1102.swf", doubleMagic3:"/swf/animation/effects/skill/skl_ef_1103.swf", yumiHangeki1:"/swf/animation/effects/skill/skl_ef_1201.swf", yumiHangeki2:"/swf/animation/effects/skill/skl_ef_1202.swf", yumiHangeki3:"/swf/animation/effects/skill/skl_ef_1203.swf", jutsuHangeki1:"/swf/animation/effects/skill/skl_ef_1301.swf", jutsuHangeki2:"/swf/animation/effects/skill/skl_ef_1302.swf", jutsuHangeki3:"/swf/animation/effects/skill/skl_ef_1303.swf", counterCancel1:"/swf/animation/effects/skill/skl_ef_1401.swf", counterCancel2:"/swf/animation/effects/skill/skl_ef_1402.swf", counterCancel3:"/swf/animation/effects/skill/skl_ef_1403.swf", bukimori1:"/swf/animation/effects/skill/skl_ef_1501.swf", bukimori2:"/swf/animation/effects/skill/skl_ef_1502.swf", bukimori3:"/swf/animation/effects/skill/skl_ef_1503.swf", shield1:"/swf/animation/effects/skill/skl_ef_1601.swf", shield2:"/swf/animation/effects/skill/skl_ef_1602.swf", shield3:"/swf/animation/effects/skill/skl_ef_1603.swf", regist1:"/swf/animation/effects/skill/skl_ef_1701.swf", regist2:"/swf/animation/effects/skill/skl_ef_1702.swf", regist3:"/swf/animation/effects/skill/skl_ef_1703.swf", bowAvoid1:"/swf/animation/effects/skill/skl_ef_1801.swf", bowAvoid2:"/swf/animation/effects/skill/skl_ef_1802.swf", bowAvoid3:"/swf/animation/effects/skill/skl_ef_1803.swf", kawarazu1:"/swf/animation/effects/skill/skl_ef_2501.swf", kawarazu2:"/swf/animation/effects/skill/skl_ef_2502.swf", kawarazu3:"/swf/animation/effects/skill/skl_ef_2503.swf", dokuShirazu1:"/swf/animation/effects/skill/skl_ef_3601.swf", kurayamiShirazu1:"/swf/animation/effects/skill/skl_ef_3701.swf", kagenuiShirazu1:"/swf/animation/effects/skill/skl_ef_3801.swf", jubakuShirazu1:"/swf/animation/effects/skill/skl_ef_3901.swf", mahiShirazu1:"/swf/animation/effects/skill/skl_ef_4001.swf", ingaouhou1:"/swf/animation/effects/skill/skl_ef_4101.swf", ingaouhou2:"/swf/animation/effects/skill/skl_ef_4102.swf", ingaouhou3:"/swf/animation/effects/skill/skl_ef_4103.swf", godAnger1:"/swf/animation/effects/skill/skl_ef_4201.swf", swallowConter1:"/swf/animation/effects/skill/skl_ef_4301.swf", absorption1:"/swf/animation/effects/skill/skl_ef_4401.swf", absorption2:"/swf/animation/effects/skill/skl_ef_4402.swf", absorption3:"/swf/animation/effects/skill/skl_ef_4403.swf", magicSword1:"/swf/animation/effects/skill/skl_ef_4501.swf", magicSword2:"/swf/animation/effects/skill/skl_ef_4502.swf", magicSword3:"/swf/animation/effects/skill/skl_ef_4503.swf", magicShield1:"/swf/animation/effects/skill/skl_ef_4601.swf", magicShield2:"/swf/animation/effects/skill/skl_ef_4602.swf", magicShield3:"/swf/animation/effects/skill/skl_ef_4603.swf", midareuti1:"/swf/animation/effects/skill/skl_ef_4701.swf", midareuti2:"/swf/animation/effects/skill/skl_ef_4702.swf", midareuti3:"/swf/animation/effects/skill/skl_ef_4703.swf", kodamajutsu1:"/swf/animation/effects/skill/skl_ef_4801.swf", konran1:"/swf/animation/effects/skill/skl_ef_5201.swf", konran2:"/swf/animation/effects/skill/skl_ef_5202.swf", konran3:"/swf/animation/effects/skill/skl_ef_5203.swf", konranShirazu1:"/swf/animation/effects/skill/skl_ef_5301.swf", daturyoku1:"/swf/animation/effects/skill/skl_ef_6101.swf", daturyoku2:"/swf/animation/effects/skill/skl_ef_6102.swf", daturyoku3:"/swf/animation/effects/skill/skl_ef_6103.swf", entangleSpear1:"/swf/animation/effects/skill/skl_ef_6201.swf", entangleSpear2:"/swf/animation/effects/skill/skl_ef_6202.swf", entangleSpear3:"/swf/animation/effects/skill/skl_ef_6203.swf", daturyokuShirazu1:"/swf/animation/effects/skill/skl_ef_6201.swf", overMedication1:"/swf/animation/effects/skill/skl_ef_6401.swf", overMedication2:"/swf/animation/effects/skill/skl_ef_6402.swf", overMedication3:"/swf/animation/effects/skill/skl_ef_6403.swf"}, ui:{shikihimeList:"/swf/animation/ui/window_unit_table.swf", faction:"/swf/animation/ui/icon_faction.swf", rank:"/swf/animation/ui/icon_rank.swf", info:"/swf/animation/ui/info/window_info.swf", infoButton:"/swf/animation/ui/info/button_info.swf", unitCommand:"/swf/animation/ui/icon_command.swf", command_battle:"/swf/animation/ui/icon_command_battle.swf", command_battle_equipment_off:"/swf/animation/ui/icon_command_battle_off.swf", command_battle_item_off:"/swf/animation/ui/icon_command_battle_off.swf", command_battle_attack_off:"/swf/animation/ui/icon_command_battle_off.swf", buiding_levels:"/swf/animation/ui/build_lv.swf"}, window:{general:"/swf/animation/windows/windows.swf", buildingInfo:"/swf/animation/windows/window_bilding_info.swf", common:"/swf/animation/windows/window_common_20111214.swf"}, assistants:{secondDaughter:"/swf/animation/home/assistant/partner_02.swf", firstDaughter:"/swf/animation/home/assistant/partner_120.swf", thirdDaughter:"/swf/animation/home/assistant/partner_202.swf", forthDaughter:"/swf/animation/home/assistant/partner_302.swf", fifthDaughter:"/swf/animation/home/assistant/partner_402.swf", sixthDaughter:"/swf/animation/home/assistant/partner_502.swf", seventhDaughter:"/swf/animation/home/assistant/partner_602.swf", eighthDaughter:"/swf/animation/home/assistant/partner_610.swf", ninthDaughter:"/swf/animation/home/assistant/partner_102.swf", tenthDaughter:"/swf/animation/home/assistant/partner_320.swf", window:"/swf/animation/home/assistant/button_partner.swf"}, tutorial:{tutorialMap:"/swf/animation/tutorial/beginer_img.swf"}, initialFrom:{backGround:"/swf/initial/initial_movie.swf", fadeOut:"/swf/initial/initial_movie_end.swf"}, buttons:{fire:"/swf/animation/buttons/button_action_mine_fire.swf", water:"/swf/animation/buttons/button_action_mine_water.swf", ground:"/swf/animation/buttons/button_action_mine_earth.swf", silver:"/swf/animation/buttons/button_action_mine_silver.swf", pick_herb:"/swf/animation/buttons/button_action_pick_herb.swf", common:"/swf/animation/buttons/button_common.swf", common_tab:"/swf/animation/common/tab/tab_common.swf"}};
        public static const NAME:String = "AnimationProxy";
        public static const MAGIC_OFFSET:Object = {Matatabi:new Point(-8, 0), Kamaitachi:new Point(0, 0), Harithurara:new Point(-4, 0), Kaminari:new Point(-8, 8), TrueKaminari:new Point(-8, 8), LoveLight:new Point(-8, 4), HolyLight:new Point(-8, 4), PoisonMagic:new Point(0, 0), DarkMagic:new Point(0, 0), ShadowBindMagic:new Point(0, 0), CurseMagic:new Point(0, 0), StunMagic:new Point(0, 0)};
        public static const LEVELUP_ANIMATION_FINISH:String = "AnimationProxy/note/lvUpAnimeFinish";
        public static const LEVELUP_ANIMATION_FINISH_BY_SELECT_UNIT:String = "AnimationProxy/note/lvUpAnimeFinishBySelectUnit";
        public static var directions:Array = ["_b_l", "_b_r", "_f_r", "_f_l"];
        public static const LEVELUP_ANIMATION_FINISH_BY_APPLICATION_MEDIATOR:String = "AnimationProxy/note/lvUpAnimeFinishByApplicationMediator";
        public static const WALK_ANIMATION_FINISHED:String = NAME + "/note/animationFinished";
        public static var testEffectArray:Array = new Array();
        public static const LEVELUP_ANIMATION_FINISH_BY_ALL_MAP:String = "AnimationProxy/note/lvUpAnimeFinishByAllMap";
        public static const ATTACK_OFFSET:Object = {0:new Point(0, 0), 1:new Point(0, 0), 1_f:new Point(0, 0), 2:new Point(0, 0), 3:new Point(0, 0), 4:new Point(0, 0), 5:new Point(0, 0), 6:new Point(0, 0)};
        public static const LOAD_FINISHED:String = "AnimationProxy/note/loadFinished";
        public static const SHIKIHIME_LIST_CHANGE_PAGE_COMPLETE:String = NAME + "/notes/shikihimeListChangePageComplete";
        public static const LEVELUP_ANIMATION_FINISH_BY_SELECTUNIT:String = "SelectUnitMediator/levelUpAnimationFinishBySelectUnit";
        public static const UNIT_DIED:String = NAME + "/note/unitDied";

        public function AnimationProxy()
        {
            filters = new FilterManager();
            animations = new Object();
            damageOfBloodArray = new Array();
            areaArray = new Array();
            generalLoaders = new Object();
            generalUIs = new Object();
            childLoaders = new Object();
            childUIs = new Object();
            _lvUpAnimation = new LevelUpAnimation();
            super(NAME);
            return;
        }// end function

        public function effect(param1:String, param2:String, param3:UnitVO) : void
        {
            var type:* = param1;
            var id:* = param2;
            var unitVO:* = param3;
            if (unitVO.effectLoader)
            {
                unitVO.effectUic.removeChild(unitVO.effectLoader);
            }
            unitVO.effectLoader = new Loader();
            unitVO.effectLoader.contentLoaderInfo.addEventListener(Event.COMPLETE, function () : void
            {
                unitVO.effectLoader.contentLoaderInfo.removeEventListener(Event.COMPLETE, arguments.callee);
                unitVO.effectLoader.x = unitVO.loader.x;
                unitVO.effectLoader.y = unitVO.loader.y;
                unitVO.effectUic.addChild(unitVO.effectLoader);
                MovieClip(unitVO.effectLoader.content).gotoAndPlay(0);
                return;
            }// end function
            );
            unitVO.effectLoader.loadBytes(animations[type][id]);
            return;
        }// end function

        public function get lvUpAnimationUI() : UIComponent
        {
            return _lvUpAnimation.ui;
        }// end function

        private function adjustLoaderDirection(param1:Loader, param2:UnitVO, param3:Boolean = true) : void
        {
            if (param2.direction == UnitVO.DIRECTION_RIGHT || param2.direction == UnitVO.DIRECTION_DOWN)
            {
                param1.content.scaleX = -1;
                param1.x = param1.x + 85;
            }
            if (param3 && (param2.direction == UnitVO.DIRECTION_UP || param2.direction == UnitVO.DIRECTION_RIGHT))
            {
                param1.content.scaleY = -1;
                param1.y = param1.y + 70;
                if (param2.weaponType == WeaponVO.WEAPON_TYPE_SPEAR)
                {
                    param1.y = param1.y + 20;
                }
            }
            return;
        }// end function

        public function childAnimationChange(param1:String, param2:String, param3, param4, param5:String = null, param6:String = null) : void
        {
            var type:* = param1;
            var name:* = param2;
            var num:* = param3;
            var flameName:* = param4;
            var endEventName:* = param5;
            var afterEventName:* = param6;
            var loaderInfo:* = LoaderInfo(childLoaders[type][name][num].contentLoaderInfo);
            MovieClip(loaderInfo.content).gotoAndPlay(flameName);
            if (endEventName)
            {
                childLoaders[type][name][num].content.addEventListener(endEventName, function (event:Event) : void
            {
                sendNotification(afterEventName);
                return;
            }// end function
            );
            }
            return;
        }// end function

        public function generalAnimationLoaded(param1:String, param2:String, param3, param4, param5:int = 0, param6:int = 0, param7:String = null, param8:String = null) : void
        {
            var type:* = param1;
            var name:* = param2;
            var animationName:* = param3;
            var layer:* = param4;
            var offsetX:* = param5;
            var offsetY:* = param6;
            var endEventName:* = param7;
            var afterEventName:* = param8;
            var ui:* = new UIComponent();
            var loader:* = new Loader();
            loader.contentLoaderInfo.addEventListener(Event.COMPLETE, function (event:Event) : void
            {
                arguments = new activation;
                var e:* = event;
                var arguments:* = arguments;
                generalLoaders[type][name].contentLoaderInfo.removeEventListener(Event.COMPLETE, callee);
                var loaderInfo:* = LoaderInfo(target);
                MovieClip(content).gotoAndPlay(animationName);
                generalLoaders[type][name].x = offsetX;
                generalLoaders[type][name].y = offsetY;
                if (endEventName)
                {
                    generalLoaders[type][name].content.addEventListener(endEventName, function (event:Event) : void
                {
                    sendNotification(afterEventName);
                    return;
                }// end function
                );
                }
                return;
            }// end function
            );
            loader.loadBytes(getAnimation(type, name));
            ui.addChild(loader);
            layer.addChild(ui);
            if (!generalLoaders[type])
            {
                generalLoaders[type] = new Object();
            }
            generalLoaders[type][name] = loader;
            if (!generalUIs[type])
            {
                generalUIs[type] = new Object();
            }
            generalUIs[type][name] = ui;
            return;
        }// end function

        public function changeAnime(param1:UnitVO, param2:String, param3:Function, param4:Function) : void
        {
            var tacticsProxy:TacticsProxy;
            var directionIndex:int;
            var playerProxy:PlayerProxy;
            var resultColorTransform:ColorTransform;
            var otherUnitColorTransform:ColorTransform;
            var enemyUnitColorTransform:ColorTransform;
            var unit:* = param1;
            var type:* = param2;
            var beforeCallback:* = param3;
            var afterCallback:* = param4;
            try
            {
                tacticsProxy = TacticsProxy(facade.retrieveProxy(TacticsProxy.NAME));
                directionIndex;
                if (!unit.hugeBossFlag)
                {
                    directionIndex = reverseSwf(unit);
                }
                MovieClip(unit.loader.content).gotoAndPlay(type + directions[directionIndex]);
                if (unit.team == 1)
                {
                    if (Number(unit.jobMasterVO.code) != 1011 && Number(unit.jobMasterVO.code) != 1012 && Number(unit.jobMasterVO.code) != 1014 && Number(unit.jobMasterVO.code) != 1401 && Number(unit.jobMasterVO.code) != 1402 && Number(unit.jobMasterVO.code) != 1403 && Number(unit.jobMasterVO.code) != 1404 && Number(unit.jobMasterVO.code) != 1041 && Number(unit.jobMasterVO.code) != 1042 && !unit.hugeBossFlag)
                    {
                        unit.loader.filters = [filters.getGlowFilter("enemy")];
                    }
                    if (Number(unit.jobMasterVO.code) < 1000)
                    {
                        resultColorTransform = new ColorTransform();
                        resultColorTransform.redMultiplier = 0.7;
                        resultColorTransform.greenMultiplier = 0.7;
                        resultColorTransform.blueMultiplier = 0.7;
                        unit.loader.content.transform.colorTransform = resultColorTransform;
                    }
                }
                playerProxy = PlayerProxy(facade.retrieveProxy(PlayerProxy.NAME));
                if (unit.teamType == UnitProxy.TEAM_TYPE_OTHER && unit.playerId != playerProxy.playerVO.playerId)
                {
                    unit.loader.filters = [filters.getGlowFilter("guildAlly")];
                }
                if (unit.teamType == UnitProxy.TEAM_TYPE_OTHER && tacticsProxy.loseConditionDefenseTargetId == unit.unitId)
                {
                    otherUnitColorTransform = new ColorTransform();
                    otherUnitColorTransform.redMultiplier = 1.8;
                    otherUnitColorTransform.greenMultiplier = 1.8;
                    otherUnitColorTransform.blueMultiplier = 1.8;
                    unit.loader.content.transform.colorTransform = otherUnitColorTransform;
                }
                if (unit.team == 1 && tacticsProxy.winConditionTargetId == unit.unitId)
                {
                    enemyUnitColorTransform = new ColorTransform();
                    enemyUnitColorTransform.redMultiplier = 0.4;
                    enemyUnitColorTransform.greenMultiplier = 0.4;
                    enemyUnitColorTransform.blueMultiplier = 0.4;
                    unit.loader.content.transform.colorTransform = enemyUnitColorTransform;
                }
                if (beforeCallback != null)
                {
                    beforeCallback.call();
                }
                if (afterCallback != null)
                {
                    unit.loader.content.addEventListener("MotionFinish", function (event:Event) : void
            {
                afterCallback.call();
                unit.loader.content.removeEventListener("MotionFinish", arguments.callee);
                return;
            }// end function
            );
                }
            }
            catch (e:Error)
            {
                trace("error changeAnime:", e);
                if (beforeCallback != null)
                {
                    beforeCallback.call();
                }
                if (afterCallback != null)
                {
                    afterCallback.call();
                }
                sendNotification(TacticsMediator.ORDER_EXECUTED);
            }
            return;
        }// end function

        override public function onRegister() : void
        {
            loadAnimations();
            _lvUpAnimation.addEventListener("LoadFinish", function (event:Event) : void
            {
                _lvUpAnimation.loader.loadBytes(_lvUpAnimation.getAnimation("LevelUp"));
                return;
            }// end function
            );
            _lvUpAnimation.ui.addChild(_lvUpAnimation.loader);
            _lvUpAnimation.load();
            _lvUpAnimeBool = false;
            return;
        }// end function

        public function getUnitAnimation(param1:String, param2:int) : ByteArray
        {
            return animations["units"][param1] ? (animations["units"][param1]) : (animations["units"]["101"]);
        }// end function

        public function childRemoveAnimation(param1:String, param2:String, param3:String, param4) : void
        {
            if (param3 == "unitList")
            {
                if (param4.contains(childUIs[param1][param2][param3]))
                {
                    param4.removeChild(childUIs[param1][param2][param3]);
                }
            }
            return;
        }// end function

        private function lvUpAnimationFinish(event:Event) : void
        {
            _lvUpAnimation.loader.content.removeEventListener("AnimationFinish", lvUpAnimationFinish);
            lvUpAnimeLayer.removeAllChildren();
            sendNotification(lvUpAnimeEventName);
            _lvUpAnimeBool = false;
            return;
        }// end function

        public function get lvUpAnimeBool() : Boolean
        {
            return _lvUpAnimeBool;
        }// end function

        public function playActionEffect(param1:AttackVO) : void
        {
            var effectType:String;
            var name:String;
            var heal:Boolean;
            var loader:Loader;
            var attackVO:* = param1;
            var offsetX:int;
            var offsetY:int;
            heal;
            switch(attackVO.attacker.weaponType)
            {
                case WeaponVO.WEAPON_TYPE_HEAL:
                {
                    if (attackVO.damage <= 0)
                    {
                        heal;
                    }
                }
                case WeaponVO.WEAPON_TYPE_MAGIC:
                {
                    name = attackVO.attacker.weapon.masterVO.name;
                    if (MAGIC_OFFSET[name])
                    {
                        offsetX = MAGIC_OFFSET[name].x;
                        offsetY = MAGIC_OFFSET[name].y;
                    }
                    else
                    {
                        offsetX;
                        offsetY;
                    }
                    effectType;
                    break;
                }
                default:
                {
                    name = attackVO.attacker.weaponType.toString();
                    effectType;
                    break;
                    break;
                }
            }
            damagePop(attackVO.target, attackVO.damage, attackVO, false, false, heal);
            if (attackVO.leech)
            {
                damagePop(attackVO.attacker, attackVO.leech, attackVO);
            }
            loader = new Loader();
            var p:* = new Point(attackVO.target.loader.x, attackVO.target.loader.y);
            loader.x = p.x + offsetX;
            loader.y = p.y + offsetY;
            loader.contentLoaderInfo.addEventListener(Event.COMPLETE, function () : void
            {
                if (attackVO.attacker.weaponType != WeaponVO.WEAPON_TYPE_MAGIC && attackVO.attacker.weaponType != WeaponVO.WEAPON_TYPE_HEAL)
                {
                    adjustLoaderDirection(loader, attackVO.attacker);
                }
                if (attackVO.hit && attackVO.damage >= 0 && !heal)
                {
                    if (attackVO.skillEffects.attack)
                    {
                        effect("skills", attackVO.skillEffects.attack, attackVO.target);
                    }
                    else if (attackVO.skillEffects.defense)
                    {
                        effect("skills", attackVO.skillEffects.defense, attackVO.target);
                    }
                    else if (attackVO.skillEffects.avoid)
                    {
                        effect("skills", attackVO.skillEffects.avoid, attackVO.target);
                    }
                    changeAnime(attackVO.target, "damage", null, function () : void
                {
                    if (attackVO.killBlow)
                    {
                        attackVO.target.loader.content.addEventListener("Effect", function () : void
                    {
                        effect("effects", "down", attackVO.target);
                        attackVO.target.loader.content.removeEventListener("Effect", arguments.callee);
                        return;
                    }// end function
                    );
                        changeAnime(attackVO.target, "down", null, function () : void
                    {
                        sendNotification(UNIT_DIED, attackVO.target);
                        sendNotification(ActionAnimationCommand.ACTION_ANIMATION_FINISHED, attackVO);
                        return;
                    }// end function
                    );
                    }
                    else
                    {
                        changeAnime(attackVO.target, "walk", null, null);
                    }
                    return;
                }// end function
                );
                }
                else if (attackVO.skillEffects && attackVO.skillEffects.avoid)
                {
                    effect("skills", attackVO.skillEffects.avoid, attackVO.target);
                }
                loader.content.addEventListener("EffectFinish", function () : void
                {
                    attackVO.target.uic.removeChild(loader);
                    return;
                }// end function
                );
                return;
            }// end function
            );
            attackVO.target.uic.addChild(loader);
            loader.loadBytes(animations[effectType][name]);
            return;
        }// end function

        private function loadAnimation(param1:String, param2:String, param3:String, param4:String = "AnimationProxy/note/loadFinished") : void
        {
            var type:* = param1;
            var name:* = param2;
            var url:* = param3;
            var eventName:* = param4;
            var urlLoader:* = new URLLoader();
            var req:* = new URLRequest(LoaderProxy.CDN_HOST + url + "?" + Viking.version);
            urlLoader.dataFormat = URLLoaderDataFormat.BINARY;
            urlLoader.addEventListener(Event.COMPLETE, function (event:Event) : void
            {
                var _loc_3:* = loadingCount - 1;
                loadingCount = _loc_3;
                if (!animations[type])
                {
                    animations[type] = new Object();
                }
                animations[type][name] = event.target.data;
                if (loadingCount == 0)
                {
                    sendNotification(eventName);
                }
                return;
            }// end function
            );
            urlLoader.addEventListener(IOErrorEvent.IO_ERROR, function (event:IOErrorEvent) : void
            {
                trace(event.text);
                return;
            }// end function
            );
            urlLoader.load(req);
            return;
        }// end function

        public function generalAnimationReverse(param1:String, param2:String) : void
        {
            var _loc_3:* = LoaderInfo(generalLoaders[param1][param2].contentLoaderInfo);
            var _loc_4:* = MovieClip(_loc_3.content).currentFrame;
            _loc_4 = MovieClip(_loc_3.content).currentFrame - 1;
            MovieClip(_loc_3.content).gotoAndStop(_loc_4);
            return;
        }// end function

        public function reverseSwf(param1:UnitVO) : int
        {
            var _loc_3:int = 0;
            var _loc_2:* = param1.direction;
            if (param1.direction == 1)
            {
                _loc_2 = 0;
                _loc_3 = -1;
            }
            else if (param1.direction == 2)
            {
                _loc_2 = 3;
                _loc_3 = -1;
            }
            else
            {
                _loc_3 = 1;
            }
            if (_loc_3 < 0 && param1.loader.content.scaleX != _loc_3)
            {
                param1.loader.content.x = param1.loader.content.x + param1.loader.content.width;
            }
            else if (_loc_3 > 0 && param1.loader.content.scaleX != _loc_3)
            {
                param1.loader.content.x = param1.loader.content.x - param1.loader.content.width;
            }
            param1.loader.content.scaleX = _loc_3;
            return _loc_2;
        }// end function

        private function walkAnimationFinished(param1:UnitVO) : void
        {
            sendNotification(WALK_ANIMATION_FINISHED, param1);
            return;
        }// end function

        public function getAnimation(param1:String, param2:String) : ByteArray
        {
            return animations[param1][param2];
        }// end function

        public function generalAnimationChange(param1:String, param2:String, param3, param4:String = null, param5:String = null) : void
        {
            var type:* = param1;
            var name:* = param2;
            var flameName:* = param3;
            var endEventName:* = param4;
            var afterEventName:* = param5;
            var loaderInfo:* = LoaderInfo(generalLoaders[type][name].contentLoaderInfo);
            MovieClip(loaderInfo.content).gotoAndPlay(flameName);
            if (endEventName)
            {
                generalLoaders[type][name].content.addEventListener(endEventName, function (event:Event) : void
            {
                sendNotification(afterEventName);
                return;
            }// end function
            );
            }
            return;
        }// end function

        public function generalRemoveAnimation(param1:String, param2:String, param3) : void
        {
            param3.removeChild(generalUIs[param1][param2]);
            generalLoaders[param1][param2] = new Object();
            return;
        }// end function

        public function eraseArea(param1:UIComponent) : void
        {
            var _loc_2:Loader = null;
            for each (_loc_2 in areaArray)
            {
                
                param1.removeChild(_loc_2);
            }
            areaArray = new Array();
            return;
        }// end function

        public function damagePop(param1:UnitVO, param2:int, param3:AttackVO, param4:Boolean = false, param5:Boolean = false, param6:Boolean = false) : void
        {
            var damageArray:Array;
            var damageValue:int;
            var dis:Sprite;
            var count:int;
            var tweenerCount:int;
            var w:int;
            var h:int;
            var y:int;
            var unit:* = param1;
            var damage:* = param2;
            var attackVO:* = param3;
            var item:* = param4;
            var sendOrder:* = param5;
            var heal:* = param6;
            var itemProxy:* = ItemProxy(facade.retrieveProxy(ItemProxy.NAME));
            damageArray = new Array();
            damageValue = damage < 0 ? (-damage) : (damage);
            var damageString:* = new Array();
            dis = new Sprite();
            count = new int();
            tweenerCount = new int();
            var index:* = new int();
            var val:* = new int();
            w = new int();
            h = new int();
            y = new int();
            if (!item)
            {
                if (attackVO.hit)
                {
                    damageString = damageValue.toString().split("");
                }
                else
                {
                    damageString = new String(0).split("");
                }
            }
            else
            {
                damageString = itemProxy.healValue.toString().split("");
            }
            dis.addEventListener("TweenEnd", function () : void
            {
                dis.removeEventListener("TweenEnd", arguments.callee);
                arguments = 0;
                while (arguments < count)
                {
                    
                    damageArray[arguments].content.width = w;
                    damageArray[arguments].content.height = h;
                    damageArray[arguments].content.y = y;
                    arguments++;
                }
                return;
            }// end function
            );
            dis.addEventListener("damageLoaded", function () : void
            {
                arguments = new activation;
                var arguments:* = arguments;
                dis.removeEventListener("damageLoaded", callee);
                w = damageArray[0].content.width;
                h = damageArray[0].content.height;
                y = damageArray[0].content.y;
                var i:int;
                while ( < count)
                {
                    
                    damageArray[].content.alpha = 0;
                    damageArray[].content.width = w * 1.8;
                    damageArray[].content.height = h * 1.8;
                    Tweener.addTween(damageArray[].content, {width:w, height:h, alpha:1, time:10, useFrames:true, transition:"easeInQuad", onComplete:function () : void
                {
                    var _loc_2:* = tweenerCount + 1;
                    tweenerCount = _loc_2;
                    if (tweenerCount == count)
                    {
                        tweenerCount = 0;
                        dis.dispatchEvent(new Event("TweenLast"));
                        if (sendOrder)
                        {
                            sendNotification(TacticsMediator.ORDER_EXECUTED);
                        }
                    }
                    return;
                }// end function
                });
                    i = ( + 1);
                }
                return;
            }// end function
            );
            dis.addEventListener("TweenNext", function () : void
            {
                arguments = new activation;
                var arguments:* = arguments;
                dis.removeEventListener("TweenNext", callee);
                var i:int;
                while ( < count)
                {
                    
                    Tweener.addTween(damageArray[].content, {y:y - 16, time:20, useFrames:true, onComplete:function () : void
                {
                    var _loc_2:* = tweenerCount + 1;
                    tweenerCount = _loc_2;
                    if (tweenerCount == count)
                    {
                        tweenerCount = 0;
                        dis.dispatchEvent(new Event("TweenLast"));
                    }
                    return;
                }// end function
                });
                    i = ( + 1);
                }
                return;
            }// end function
            );
            dis.addEventListener("TweenLast", function () : void
            {
                arguments = new activation;
                var arguments:* = arguments;
                dis.removeEventListener("TweenLast", callee);
                var i:int;
                while ( < count)
                {
                    
                    Tweener.addTween(damageArray[].content, {y:y - 28, time:25, alpha:0, useFrames:true, transition:"easeOutQuad", onComplete:function () : void
                {
                    var _loc_2:* = tweenerCount + 1;
                    tweenerCount = _loc_2;
                    if (tweenerCount == count)
                    {
                        tweenerCount = 0;
                        dis.dispatchEvent(new Event("TweenEnd"));
                    }
                    return;
                }// end function
                });
                    i = ( + 1);
                }
                return;
            }// end function
            );
            if (attackVO.hit || item)
            {
                do
                {
                    
                    damageArray[index] = new Loader();
                    damageArray[index].contentLoaderInfo.addEventListener(Event.COMPLETE, function () : void
            {
                var _loc_2:* = count + 1;
                count = _loc_2;
                if (count == damageValue.toString().length)
                {
                    dis.dispatchEvent(new Event("damageLoaded"));
                }
                return;
            }// end function
            );
                    if (damage < 0 || item || heal)
                    {
                        damageArray[index].loadBytes(animations["recoverNumbers"][val]);
                    }
                    else if (unit.team == 0)
                    {
                        damageArray[index].loadBytes(animations["damageNumbers"][val]);
                    }
                    else
                    {
                        damageArray[index].loadBytes(animations["numbers"][val]);
                    }
                    damageArray[index].x = unit.loader.x + 20 + index * 20;
                    damageArray[index].y = unit.loader.y;
                    unit.damageUic.addChild(damageArray[index]);
                    index = (index + 1);
                    var _loc_8:* = damageString.shift();
                    val = damageString.shift();
                }while (_loc_8)
            }
            else
            {
                count;
                damageArray[0] = new Loader();
                damageArray[0].contentLoaderInfo.addEventListener(Event.COMPLETE, function () : void
            {
                dis.dispatchEvent(new Event("damageLoaded"));
                return;
            }// end function
            );
                damageArray[0].loadBytes(animations["numbers"]["miss"]);
                damageArray[0].x = unit.loader.x + 20;
                damageArray[0].y = unit.loader.y;
                unit.damageUic.addChild(damageArray[0]);
            }
            return;
        }// end function

        public function playLvUpAnimation(param1:Object, param2:UnitVO, param3:String = "AnimationProxy/note/lvUpAnimeFinish") : void
        {
            var layer:* = param1;
            var unit:* = param2;
            var eventName:* = param3;
            _lvUpUnit = unit;
            _lvUpAnimeBool = true;
            lvUpAnimeLayer = new Object();
            lvUpAnimeEventName = new String();
            lvUpAnimeLayer = layer;
            lvUpAnimeEventName = eventName;
            _lvUpAnimation.loader.x = unit.loader.x;
            _lvUpAnimation.loader.y = unit.loader.y;
            MovieClip(_lvUpAnimation.loader.content).gotoAndPlay(0);
            layer.addChild(_lvUpAnimation.ui);
            changeAnime(unit, "item", null, function () : void
            {
                changeAnime(unit, "walk", null, null);
                return;
            }// end function
            );
            _lvUpAnimation.loader.content.addEventListener("AnimationFinish", lvUpAnimationFinish);
            return;
        }// end function

        public function generalGetEvent(param1:String, param2:String, param3:String, param4:Function) : void
        {
            generalLoaders[param1][param2].content.addEventListener(param3, param4);
            return;
        }// end function

        public function childAnimationLoaded(param1:String, param2:String, param3, param4:String, param5, param6:int = 0, param7:int = 0, param8:String = null, param9:String = null) : void
        {
            var type:* = param1;
            var name:* = param2;
            var num:* = param3;
            var animationName:* = param4;
            var layer:* = param5;
            var offsetX:* = param6;
            var offsetY:* = param7;
            var endEventName:* = param8;
            var afterEventName:* = param9;
            var ui:* = new UIComponent();
            var loader:* = new Loader();
            loader.contentLoaderInfo.addEventListener(Event.COMPLETE, function (event:Event) : void
            {
                arguments = new activation;
                var e:* = event;
                var arguments:* = arguments;
                childLoaders[type][name][num].contentLoaderInfo.removeEventListener(Event.COMPLETE, callee);
                var loaderInfo:* = LoaderInfo(target);
                MovieClip(content).gotoAndPlay(animationName);
                childLoaders[type][name][num].x = offsetX;
                childLoaders[type][name][num].y = offsetY;
                if (endEventName)
                {
                    childLoaders[type][name][num].content.addEventListener(endEventName, function (event:Event) : void
                {
                    sendNotification(afterEventName);
                    return;
                }// end function
                );
                }
                return;
            }// end function
            );
            loader.loadBytes(getAnimation(type, name));
            ui.addChild(loader);
            layer.addChild(ui);
            if (!childLoaders[type])
            {
                childLoaders[type] = new Object();
            }
            if (!childLoaders[type][name])
            {
                childLoaders[type][name] = new Object();
            }
            childLoaders[type][name][num] = loader;
            if (!childUIs[type])
            {
                childUIs[type] = new Object();
            }
            if (!childUIs[type][name])
            {
                childUIs[type][name] = new Object();
            }
            childUIs[type][name][num] = ui;
            return;
        }// end function

        public function get lvUpUnit() : UnitVO
        {
            return _lvUpUnit;
        }// end function

        public function drawArea(param1:Point, param2:UIComponent, param3:String) : void
        {
            var _loc_4:* = new Loader();
            if (param3 == "select")
            {
                _loc_4.x = param1.x + 1;
                _loc_4.y = param1.y + 1;
            }
            else
            {
                _loc_4.x = param1.x;
                _loc_4.y = param1.y;
            }
            _loc_4.loadBytes(animations["areas"][param3]);
            param2.addChild(_loc_4);
            areaArray.push(_loc_4);
            return;
        }// end function

        private function loadAnimations() : void
        {
            var _loc_1:Object = null;
            var _loc_2:String = null;
            var _loc_3:String = null;
            loadingCount = 0;
            for each (_loc_1 in loadTable)
            {
                
                loadingCount = loadingCount + _loc_1.length;
            }
            for (_loc_2 in loadTable)
            {
                
                for (_loc_3 in loadTable[_loc_2])
                {
                    
                    loadAnimation(_loc_2, _loc_3, loadTable[_loc_2][_loc_3]);
                }
            }
            return;
        }// end function

    }
}
