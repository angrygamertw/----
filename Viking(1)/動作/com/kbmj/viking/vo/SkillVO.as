package com.kbmj.viking.vo
{

    public class SkillVO extends Object
    {
        private var _id:int = 0;
        private var _possibleJobs:String;
        private var _code:String;
        private var _skillId:int;
        private var _dependenceId:int;
        private var _nextId:int;
        private var _point:int;
        private var _name:String;
        private var _qualifiedJobs:Array;
        private var _skillType:int;
        private var _nameLabel:String;
        private var _description:String;
        public static const SKILL_NAME_HIT:String = "hit";
        public static const TENNIMUHOU:int = 26;
        public static const SKILL_NAME_KODAMAJUTSU:String = "kodamajutsu";
        public static const TERROR:int = 31;
        public static const SKILL_NAME_MIDAREUTI:String = "midareuti";
        public static const SKILL_NAME_MAGIC_KILLER:String = "magicKiller";
        public static const SKILL_NAME_JUTSUYOSE:String = "jutsuyose";
        public static const KAGENUI:int = 7;
        public static const SKILL_NAME_REGENERATION:String = "Regeneration";
        public static const SKILL_NAME_TENNIMUHOU:String = "tennimuhou";
        public static const FACTION_SKILL:int = 49;
        public static const SKILL_NAME_CARPENTER:String = "carpenter";
        public static const SKILL_NAME_MAHI_SHIRAZU:String = "mahiShirazu";
        public static const SKILL_NAME_MAHI:String = "mahi";
        public static const CRYSTAL_EFFECT_BLOOD:int = 2;
        public static const GOD_ANGER:int = 42;
        public static const SKILL_NAME_DOUBLE_MAGIC:String = "doubleMagic";
        public static const SKILL_NAME_FACTION_SKILL:String = "factionSkill";
        public static const KAWARAZU:int = 25;
        public static const DOHATSUTEN:int = 2;
        public static const DATURYOKU_SHIRAZU:int = 999;
        public static const KONRAN:int = 52;
        public static const MAGIC_SHIELD:int = 46;
        public static const KNOWLEDGE:int = 32;
        public static const SKILL_NAME_INGAOUHOU:String = "ingaouhou";
        public static const SKILL_NAME_JUTSU_MASHI:String = "jutsuMashi";
        public static const SKILL_TYPE_UPGRADABLE:int = 0;
        public static const KONRAN_SHIRAZU:int = 53;
        public static const SKILL_NAME_DATURYOKU:String = "daturyoku";
        public static const SKILL_NAME_DOHATSUTEN:String = "dohatsuten";
        public static const DOUBLE_ATTACK:int = 10;
        public static const SKILL_NAME_SPEAR_KILLER:String = "spearKiller";
        public static const SKILL_NAME_SWALLOW_COUNTER:String = "swallowConter";
        public static const FOREIGN_KILLER:int = 60;
        public static const BOW_AVOID:int = 18;
        public static const ELITE:int = 29;
        public static const RESERVE_01:int = 33;
        public static const SKILL_NAME_TOOYUMI:String = "tooyumi";
        public static const CRYSTAL_EFFECT_SKILL:int = 3;
        public static const SKILL_NAME_ELITE:String = "elite";
        public static const SKILL_NAME_SHIELD:String = "shield";
        public static const SKILL_NAME_DOUBLE_ATTACK:String = "doubleAttack";
        public static const SKILL_NAME_REGIST:String = "regist";
        public static const SKILL_TYPE_UNABLE_TO_UPGRADE:int = 1;
        public static const SKILL_NAME_SURINUKE:String = "surinuke";
        public static const MAGIC_SWORD:int = 45;
        public static const SKILL_NAME_RESERVE_01:String = "reserve01";
        public static const JUBAKU_SHIRAZU:int = 39;
        public static const SKILL_NAME_OVER_MEDICATION:String = "overMedication";
        public static const SKILL_NAME_ENTANGLE_SPEAR:String = "entangleSpear";
        public static const SKILL_NAME_BOUGU_TSUKUROI:String = "bouguTsukuroi";
        public static const TOOATE:int = 24;
        public static const BOW_KILLER:int = 57;
        public static const HEAL_KILLER:int = 59;
        public static const SKILL_NAME_KAGENUI_SHIRAZU:String = "kagenuiShirazu";
        public static const SKILL_NAME_TENYUU:String = "tenyuu";
        public static const ABSORPTION:int = 44;
        public static const SKILL_NAME_JUBAKU:String = "jubaku";
        public static const SWALLOW_COUNTER:int = 43;
        public static const SKILL_NAME_KURAYAMI:String = "kurayami";
        public static const SKILL_NAME_FACTION_SKILL2:String = "factionSkill2";
        public static const TOOYUMI:int = 23;
        public static const SKILL_NAME_KURAYAMI_SHIRAZU:String = "kurayamiShirazu";
        public static const SKILL_NAME_ABSORPTION:String = "absorption";
        public static const AXE_KILLER:int = 56;
        public static const JUTSU_HANGEKI:int = 13;
        public static const MIDAREUTI:int = 47;
        public static const GAIN_STRENGTH:int = 63;
        public static const JUTSUYOSE:int = 28;
        public static const CRYSTAL_EFFECT_STATUS:int = 1;
        public static const SURINUKE:int = 19;
        public static const SKILL_NAME_MAGIC_SHIELD:String = "magicShield";
        public static const SKILL_NAME_BOW_KILLER:String = "bowKiller";
        public static const SKILL_NAME_JUTSU_HANGEKI:String = "jutsuHangeki";
        public static const OVER_MEDICATION:int = 64;
        public static const SKILL_NAME_GAIN_STRENGTH:String = "gainStrength";
        public static const CARPENTER:int = 34;
        public static const INGAOUHOU:int = 41;
        public static const KAGENUI_SHIRAZU:int = 38;
        public static const DOKU:int = 5;
        public static const YUMI_HANGEKI:int = 12;
        public static const SKILL_NAME_TERROR:String = "terror";
        public static const DOKU_SHIRAZU:int = 36;
        public static const KURAYAMI_SHIRAZU:int = 37;
        public static const KURAYAMI:int = 6;
        public static const SKILL_NAME_AXE_KILLER:String = "axeKiller";
        public static const SKILL_NAME_CRITICAL:String = "critical";
        public static const SWORD_KILLER:int = 54;
        public static const SKILL_NAME_COUNTER_CANCELER:String = "counterCancel";
        public static const DATURYOKU:int = 61;
        public static const SKILL_NAME_HEAL_KILLER:String = "healKiller";
        public static const SKILL_NAME_MAGIC_SWORD:String = "magicSword";
        public static const DIRECT_ATTACK:int = 35;
        public static const SKILL_NAME_GOD_ANGER:String = "godAnger";
        public static const SHIELD:int = 16;
        public static const SKILL_NAME_HATE_UP:String = "hateUp";
        public static const SKILL_NAME_BUKIMORI:String = "bukimori";
        public static const HIT:int = 3;
        public static const SKILL_NAME_KNOWLEDGE:String = "knowledge";
        public static const SKILL_NAME_KONRAN_SHIRAZU:String = "konranShirazu";
        public static const SKILL_NAME_KONRAN:String = "konran";
        public static const KODAMAJUTSU:int = 48;
        public static const SKILL_NAME_DIRECT_ATTACK:String = "directAttack";
        public static const ENTANGLE_SPEAR:int = 62;
        public static const MAGIC_KILLER:int = 58;
        public static const REGIST:int = 17;
        public static const REGENERATION:int = 51;
        public static const CRYSTAL_EFFECT_NONE:int = 0;
        public static const MAHI:int = 9;
        public static const BUKI_TSUKUROI:int = 20;
        public static const MAHI_SHIRAZU:int = 40;
        public static const BOUGU_TSUKUROI:int = 21;
        public static const DOUBLE_MAGIC:int = 11;
        public static const SKILL_NAME_BOW_AVOID:String = "bowAvoid";
        public static const TENYUU:int = 30;
        public static const CRITICAL:int = 1;
        public static const SKILL_NAME_HAYAASHI:String = "hayaashi";
        public static const COUNTER_CANCELER:int = 14;
        public static const SKILL_NAME_FOREIGN_KILLER:String = "foreignKiller";
        public static const JUBAKU:int = 8;
        public static const SKILL_NAMES:Array = [SKILL_NAME_CRITICAL, SKILL_NAME_DOHATSUTEN, SKILL_NAME_HIT, SKILL_NAME_JUTSU_MASHI, SKILL_NAME_DOKU, SKILL_NAME_KURAYAMI, SKILL_NAME_KAGENUI, SKILL_NAME_JUBAKU, SKILL_NAME_MAHI, SKILL_NAME_DOUBLE_ATTACK, SKILL_NAME_DOUBLE_MAGIC, SKILL_NAME_YUMI_HANGEKI, SKILL_NAME_JUTSU_HANGEKI, SKILL_NAME_COUNTER_CANCELER, SKILL_NAME_BUKIMORI, SKILL_NAME_SHIELD, SKILL_NAME_REGIST, SKILL_NAME_BOW_AVOID, SKILL_NAME_SURINUKE, SKILL_NAME_BUKI_TSUKUROI, SKILL_NAME_BOUGU_TSUKUROI, SKILL_NAME_HAYAASHI, SKILL_NAME_TOOYUMI, SKILL_NAME_TOOATE, SKILL_NAME_KAWARAZU, SKILL_NAME_TENNIMUHOU, SKILL_NAME_HATE_UP, SKILL_NAME_JUTSUYOSE, SKILL_NAME_ELITE, SKILL_NAME_TENYUU, SKILL_NAME_TERROR, SKILL_NAME_KNOWLEDGE, SKILL_NAME_RESERVE_01, SKILL_NAME_CARPENTER, SKILL_NAME_DIRECT_ATTACK, SKILL_NAME_DOKU_SHIRAZU, SKILL_NAME_KURAYAMI_SHIRAZU, SKILL_NAME_KAGENUI_SHIRAZU, SKILL_NAME_JUBAKU_SHIRAZU, SKILL_NAME_MAHI_SHIRAZU, SKILL_NAME_INGAOUHOU, SKILL_NAME_GOD_ANGER, SKILL_NAME_SWALLOW_COUNTER, SKILL_NAME_ABSORPTION, SKILL_NAME_MAGIC_SWORD, SKILL_NAME_MAGIC_SHIELD, SKILL_NAME_MIDAREUTI, SKILL_NAME_KODAMAJUTSU, SKILL_NAME_FACTION_SKILL, SKILL_NAME_FACTION_SKILL2, SKILL_NAME_REGENERATION, SKILL_NAME_KONRAN, SKILL_NAME_KONRAN_SHIRAZU, SKILL_NAME_SWORD_KILLER, SKILL_NAME_SPEAR_KILLER, SKILL_NAME_AXE_KILLER, SKILL_NAME_BOW_KILLER, SKILL_NAME_MAGIC_KILLER, SKILL_NAME_HEAL_KILLER, SKILL_NAME_FOREIGN_KILLER, SKILL_NAME_DATURYOKU, SKILL_NAME_ENTANGLE_SPEAR, SKILL_NAME_GAIN_STRENGTH, SKILL_NAME_OVER_MEDICATION];
        public static const SKILL_NAME_KAGENUI:String = "kagenui";
        public static const BUKIMORI:int = 15;
        public static const FACTION_SKILL2:int = 50;
        public static const JUTSU_MASHI:int = 4;
        public static const HATE_UP:int = 27;
        public static const SPEAR_KILLER:int = 55;
        public static const SKILL_NAME_BUKI_TSUKUROI:String = "bukiTsukuroi";
        public static const SKILL_NAME_YUMI_HANGEKI:String = "yumiHangeki";
        public static const SKILL_NAME_JUBAKU_SHIRAZU:String = "jubakuShirazu";
        public static const SKILL_NAME_DOKU_SHIRAZU:String = "dokuShirazu";
        public static const SKILL_NAME_DOKU:String = "doku";
        public static const SKILL_NAME_SWORD_KILLER:String = "swordKiller";
        public static const SKILL_NAME_TOOATE:String = "tooate";
        public static const SKILL_NAME_KAWARAZU:String = "kawarazu";
        public static const HAYAASHI:int = 22;

        public function SkillVO()
        {
            _name = new String();
            _code = new String();
            _nameLabel = new String();
            _skillId = new int();
            _description = new String();
            return;
        }// end function

        public function get skillType() : int
        {
            return _skillType;
        }// end function

        public function get level() : int
        {
            return int(code.substr(-1, 1));
        }// end function

        public function set code(param1:String) : void
        {
            _code = param1;
            return;
        }// end function

        public function get name() : String
        {
            return _name;
        }// end function

        public function get point() : int
        {
            return _point;
        }// end function

        public function get qualifiedJobs() : Array
        {
            return _qualifiedJobs;
        }// end function

        public function set name(param1:String) : void
        {
            _name = param1;
            return;
        }// end function

        public function set qualifiedJobs(param1:Array) : void
        {
            _qualifiedJobs = param1;
            return;
        }// end function

        public function set nameLabel(param1:String) : void
        {
            _nameLabel = param1;
            return;
        }// end function

        public function set dependenceId(param1:int) : void
        {
            _dependenceId = param1;
            return;
        }// end function

        public function set nextId(param1:int) : void
        {
            _nextId = param1;
            return;
        }// end function

        public function get skillId() : int
        {
            return _skillId;
        }// end function

        public function set skillType(param1:int) : void
        {
            _skillType = param1;
            return;
        }// end function

        public function set skillId(param1:int) : void
        {
            _skillId = param1;
            return;
        }// end function

        public function get code() : String
        {
            return _code;
        }// end function

        public function get nextId() : int
        {
            return _nextId;
        }// end function

        public function set point(param1:int) : void
        {
            _point = param1;
            return;
        }// end function

        public function get nameLabel() : String
        {
            return _nameLabel;
        }// end function

        public function get dependenceId() : int
        {
            return _dependenceId;
        }// end function

        public function get id() : int
        {
            return _id;
        }// end function

        public function set id(param1:int) : void
        {
            _id = param1;
            return;
        }// end function

        public function set description(param1:String) : void
        {
            _description = param1;
            return;
        }// end function

        public function get description() : String
        {
            return _description;
        }// end function

    }
}
