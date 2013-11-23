package com.kbmj.viking.proxy
{
    import com.kbmj.viking.lib.*;
    import com.kbmj.viking.proxy.tactics.*;
    import com.kbmj.viking.vo.*;
    import com.kbmj.viking.vo.tactics.*;

    public class SkillProxy extends LoaderProxy
    {
        private var _codeToSkills:Object;
        private var _skillArray:Array;
        private var _skills:Object;
        public static const SKILL_LOAD_COMPLETE:String = NAME + "SkillLoadComplete";
        public static const NAME:String = "SkillProxy";
        public static const SUCCESS_RATE:Object = {critical:[["luck"], ["luck", "tech*0.33333"], ["luck", "tech*0.25", "agility*0.25"]], dohatsuten:[["luck"], ["luck", "strength*0.25"], ["luck", "strength*0.33333"]], jutsuMashi:[["luck"], ["luck", "tech*0.33333"], ["luck", "tech*0.25", "agility*0.33333"]], doku:[["luck"], ["luck*2"], ["luck*2"]], kurayami:[["luck*0.5"], ["luck"], ["luck", "tech*0.5"]], kagenui:[["luck*0.5"], ["luck"], ["luck", "agility*0.5"]], jubaku:[["luck*0.33333"], ["luck*0.5"], ["luck"]], mahi:[["luck*0.5"], ["luck"], ["luck", "strength*0.5"]], doubleAttack:[["luck*0.33333"], ["luck*0.5"], ["luck"]], doubleMagic:[["luck*0.33333"], ["luck*0.5"], ["luck"]], yumiHangeki:[["luck"], ["luck", "tech*0.5"], [100]], jutsuHangeki:[["luck"], ["luck", "intelligence*0.5"], [100]], counterCancel:[["luck"], ["luck", "tech*0.33333"], [100]], bukimori:[["luck*0.5"], ["luck"], ["luck", "tech*0.5"]], shield:[["luck*0.33333"], ["luck*0.5"], ["luck"]], regist:[["luck*0.5"], ["luck"], ["luck", "intelligence*0.5"]], bowAvoid:[["luck*0.5"], ["luck"], ["luck", "agility*0.33333"]], kawarazu:[["luck*0.5"], ["luck"], [100]], ingaouhou:[["luck*0.33333"], ["luck*0.5"], ["luck"]], absorption:[["intelligence*0.25"], ["intelligence*0.5"], ["intelligence"]], magicSword:[["luck*0.5"], ["luck"], ["luck", "intelligence*0.5"]], magicShield:[["luck*0.5"], ["luck"], ["luck", "tech*0.5"]], midareuti:[["luck"], ["luck"], ["luck"]], konran:[["luck*0.25"], ["luck*0.33333"], ["luck*0.5"]], daturyoku:[["luck*0.33333"], ["luck*0.5"], ["luck"]], entangleSpear:[["luck*0.5"], ["luck"], ["luck*1.25"]]};

        public function SkillProxy()
        {
            _skills = new Object();
            _codeToSkills = new Object();
            _skillArray = new Array();
            super(NAME);
            return;
        }// end function

        public function yumiHangeki(param1:UnitVO) : Boolean
        {
            if (param1.weaponType != WeaponVO.WEAPON_TYPE_BOW)
            {
                return false;
            }
            return isSkillSuccessfull(param1, SkillVO.YUMI_HANGEKI);
        }// end function

        public function ingaouhou(param1:UnitVO) : Boolean
        {
            return isSkillSuccessfull(param1, SkillVO.INGAOUHOU);
        }// end function

        public function get skillArray() : Array
        {
            return _skillArray;
        }// end function

        public function jubakuShirazu(param1:UnitVO) : Boolean
        {
            return getUnitSkillByType(param1, SkillVO.JUBAKU_SHIRAZU);
        }// end function

        public function regeneration(param1:UnitVO) : Boolean
        {
            return getUnitSkillByType(param1, SkillVO.REGENERATION);
        }// end function

        public function tooyumi(param1:UnitVO) : Boolean
        {
            return getUnitSkillByType(param1, SkillVO.TOOYUMI);
        }// end function

        public function getSkillById(param1:int) : SkillVO
        {
            return skills[param1];
        }// end function

        public function avoidBySkills(param1:UnitVO, param2:UnitVO) : Object
        {
            if (shield(param1, param2))
            {
                return {result:true, skillName:getSkillLevelName(param2, SkillVO.SHIELD)};
            }
            if (regist(param1, param2))
            {
                return {result:true, skillName:getSkillLevelName(param2, SkillVO.REGIST)};
            }
            if (bowAvoids(param1, param2))
            {
                return {result:true, skillName:getSkillLevelName(param2, SkillVO.BOW_AVOID)};
            }
            return {result:false};
        }// end function

        public function bowAvoids(param1:UnitVO, param2:UnitVO) : Boolean
        {
            if (param1.weaponType != WeaponVO.WEAPON_TYPE_BOW)
            {
                return false;
            }
            return isSkillSuccessfull(param2, SkillVO.BOW_AVOID);
        }// end function

        public function mahiShirazu(param1:UnitVO) : Boolean
        {
            return getUnitSkillByType(param1, SkillVO.MAHI_SHIRAZU);
        }// end function

        public function directAttack(param1:UnitVO) : Boolean
        {
            return getUnitSkillByType(param1, SkillVO.DIRECT_ATTACK);
        }// end function

        public function mahi(param1:UnitVO) : Boolean
        {
            return isSkillSuccessfull(param1, SkillVO.MAHI);
        }// end function

        public function kodamajutsu(param1:UnitVO) : Boolean
        {
            return getUnitSkillByType(param1, SkillVO.KODAMAJUTSU);
        }// end function

        public function getOverMedicationDamage(param1:UnitVO, param2:UnitVO) : int
        {
            var _loc_4:Array = null;
            var _loc_5:int = 0;
            var _loc_3:* = getUnitSkillByType(param1, SkillVO.OVER_MEDICATION);
            if (_loc_3)
            {
                _loc_4 = [10, 15, 20];
                _loc_5 = param2.buffLength;
                return _loc_5 * _loc_4[(_loc_3.level - 1)];
            }
            return 0;
        }// end function

        public function doubleAttack(param1:UnitVO) : Boolean
        {
            return isSkillSuccessfull(param1, SkillVO.DOUBLE_ATTACK);
        }// end function

        public function factionSkill(param1:UnitVO) : Boolean
        {
            var _loc_3:int = 0;
            var _loc_4:Boolean = false;
            var _loc_2:* = getUnitSkillByType(param1, SkillVO.FACTION_SKILL);
            if (_loc_2)
            {
                _loc_3 = param1.luck;
                _loc_4 = _loc_3 > Math.floor(Math.random() * 100);
                return _loc_4;
            }
            return false;
        }// end function

        public function bukiTsukuroi(param1:UnitVO) : Boolean
        {
            if (param1.weaponType == WeaponVO.WEAPON_TYPE_MAGIC || param1.weaponType == WeaponVO.WEAPON_TYPE_HEAL)
            {
                return false;
            }
            return getUnitSkillByType(param1, SkillVO.BUKI_TSUKUROI);
        }// end function

        public function midareuti(param1:UnitVO) : Boolean
        {
            if (param1.weaponType == WeaponVO.WEAPON_TYPE_BOW)
            {
                return isSkillSuccessfull(param1, SkillVO.MIDAREUTI);
            }
            return false;
        }// end function

        public function critical(param1:UnitVO) : Boolean
        {
            return isSkillSuccessfull(param1, SkillVO.CRITICAL);
        }// end function

        public function getCodeToSkills(param1:String) : Object
        {
            return _codeToSkills[param1];
        }// end function

        override public function onRegister() : void
        {
            return;
        }// end function

        public function swallowConter(param1:UnitVO) : Boolean
        {
            return getUnitSkillByType(param1, SkillVO.SWALLOW_COUNTER);
        }// end function

        private function nextSkill(param1:int) : SkillVO
        {
            var _loc_3:SkillVO = null;
            var _loc_2:* = skills[param1];
            if (_loc_2)
            {
                _loc_3 = skills[_loc_2.nextId];
                return _loc_3;
            }
            return null;
        }// end function

        public function jutsuHangeki(param1:UnitVO) : Boolean
        {
            if (param1.weaponType != WeaponVO.WEAPON_TYPE_MAGIC)
            {
                return false;
            }
            return isSkillSuccessfull(param1, SkillVO.JUTSU_HANGEKI);
        }// end function

        public function getDohatsutenDamage(param1:UnitVO, param2:int) : int
        {
            var _loc_4:Array = null;
            var _loc_5:int = 0;
            var _loc_3:* = getUnitSkillByType(param1, SkillVO.DOHATSUTEN);
            if (_loc_3)
            {
                _loc_4 = [[100, 100], [120, 150], [140, 180], [160, 200]];
                _loc_5 = Utils.xRandomInt(_loc_4[_loc_3.level][0], _loc_4[_loc_3.level][1]);
                param2 = param2 * _loc_5 / 100;
            }
            return param2;
        }// end function

        public function getReducedDamageByKillerSkills(param1:int, param2:UnitVO, param3:UnitVO) : int
        {
            var _loc_4:Array = [1, 1.5, 2, 3];
            var _loc_5:* = int(param3.jobMasterVO.code);
            var _loc_6:* = getUnitSkillByType(param2, SkillVO.SWORD_KILLER);
            if (getUnitSkillByType(param2, SkillVO.SWORD_KILLER) && _loc_5 >= 100 && _loc_5 < 200)
            {
                return param1 * _loc_4[_loc_6.level];
            }
            _loc_6 = getUnitSkillByType(param2, SkillVO.SPEAR_KILLER);
            if (_loc_6 && _loc_5 >= 200 && _loc_5 < 300)
            {
                return param1 * _loc_4[_loc_6.level];
            }
            _loc_6 = getUnitSkillByType(param2, SkillVO.AXE_KILLER);
            if (_loc_6 && _loc_5 >= 300 && _loc_5 < 400)
            {
                return param1 * _loc_4[_loc_6.level];
            }
            _loc_6 = getUnitSkillByType(param2, SkillVO.BOW_KILLER);
            if (_loc_6 && _loc_5 >= 400 && _loc_5 < 500)
            {
                return param1 * _loc_4[_loc_6.level];
            }
            _loc_6 = getUnitSkillByType(param2, SkillVO.MAGIC_KILLER);
            if (_loc_6 && _loc_5 >= 500 && _loc_5 < 600)
            {
                return param1 * _loc_4[_loc_6.level];
            }
            _loc_6 = getUnitSkillByType(param2, SkillVO.HEAL_KILLER);
            if (_loc_6 && _loc_5 >= 600 && _loc_5 < 700)
            {
                return param1 * _loc_4[_loc_6.level];
            }
            _loc_6 = getUnitSkillByType(param2, SkillVO.FOREIGN_KILLER);
            if (_loc_6 && _loc_5 >= 700 && _loc_5 < 800)
            {
                return param1 * _loc_4[_loc_6.level];
            }
            return param1;
        }// end function

        public function getMidareutiAttackCount(param1:UnitVO) : int
        {
            var _loc_2:* = getUnitSkillByType(param1, SkillVO.MIDAREUTI);
            var _loc_3:int = 0;
            if (_loc_2)
            {
                _loc_3 = _loc_2.level + int(Math.random() * 3);
            }
            return _loc_3;
        }// end function

        public function getTerrorAdjustment(param1:UnitVO) : int
        {
            var _loc_3:UnitVO = null;
            var _loc_4:SkillVO = null;
            var _loc_5:int = 0;
            var _loc_2:* = TacticsProxy(facade.retrieveProxy(TacticsProxy.NAME));
            for each (_loc_3 in _loc_2.aliveUnits)
            {
                
                if (_loc_3 == param1)
                {
                    continue;
                }
                _loc_4 = getUnitSkillByType(_loc_3, SkillVO.TERROR);
                if (_loc_4 && Utils.isInContact(_loc_3.position, param1.position))
                {
                    _loc_5 = _loc_4.level * 5;
                    if (_loc_3.team == param1.team)
                    {
                        return _loc_5;
                    }
                }
            }
            return 0;
        }// end function

        public function kagenuiShirazu(param1:UnitVO) : Boolean
        {
            return getUnitSkillByType(param1, SkillVO.KAGENUI_SHIRAZU);
        }// end function

        public function cancelCounter(param1:UnitVO) : Boolean
        {
            return counterCanceler(param1);
        }// end function

        public function skillFactory(param1:Object) : SkillVO
        {
            var limitation:*;
            var obj:* = param1;
            var masterProxy:* = MasterProxy(facade.retrieveProxy(MasterProxy.NAME));
            var skillVO:* = new SkillVO();
            var _loc_3:* = skillVO;
            with (skillVO)
            {
                name = obj.name;
                id = obj.id;
                code = obj.code;
                nameLabel = obj.name_label;
                skillId = obj.id;
                skillType = obj.skill_type;
                description = obj.description;
                dependenceId = obj.dependence_id;
                nextId = obj.next_id;
                point = obj.point;
                possibleJobs = obj.possible_jobs;
                if (obj.skill_limitations && obj.skill_limitations.length > 0)
                {
                    qualifiedJobs = new Array();
                    var _loc_4:int = 0;
                    var _loc_5:* = obj.skill_limitations;
                    while (_loc_5 in _loc_4)
                    {
                        
                        limitation = _loc_5[_loc_4];
                        qualifiedJobs.push(limitation.job_id);
                    }
                }
            }
            return skillVO;
        }// end function

        public function jubaku(param1:UnitVO) : Boolean
        {
            return isSkillSuccessfull(param1, SkillVO.JUBAKU);
        }// end function

        public function jutsuMashi(param1:UnitVO) : Boolean
        {
            return isSkillSuccessfull(param1, SkillVO.JUTSU_MASHI);
        }// end function

        private function getSkillByCrystalName(param1:String) : SkillVO
        {
            var _loc_2:SkillVO = null;
            param1 = param1.replace("_crystal", "");
            for each (_loc_2 in _skills)
            {
                
                if (_loc_2.name.indexOf(param1) == 0)
                {
                    return _loc_2;
                }
            }
            return null;
        }// end function

        public function konranTolerance(param1:UnitVO, param2:AttackVO) : Boolean
        {
            if (kawarazu(param1))
            {
                param2.skillEffects.attack = getSkillLevelName(param1, SkillVO.KAWARAZU);
                return true;
            }
            if (konranShirazu(param1))
            {
                param2.skillEffects.attack = getSkillLevelName(param1, SkillVO.KONRAN_SHIRAZU);
                return true;
            }
            return false;
        }// end function

        public function jubakuTolerance(param1:UnitVO, param2:AttackVO) : Boolean
        {
            if (kawarazu(param1))
            {
                param2.skillEffects.attack = getSkillLevelName(param1, SkillVO.KAWARAZU);
                return true;
            }
            if (jubakuShirazu(param1))
            {
                param2.skillEffects.attack = getSkillLevelName(param1, SkillVO.JUBAKU_SHIRAZU);
                return true;
            }
            return false;
        }// end function

        public function doku(param1:UnitVO) : Boolean
        {
            return isSkillSuccessfull(param1, SkillVO.DOKU);
        }// end function

        public function kurayami(param1:UnitVO) : Boolean
        {
            return isSkillSuccessfull(param1, SkillVO.KURAYAMI);
        }// end function

        public function tooate(param1:UnitVO) : Boolean
        {
            return getUnitSkillByType(param1, SkillVO.TOOATE);
        }// end function

        public function isSkillSlotAvailableForCrystal(param1:UnitVO, param2:String) : Boolean
        {
            var _loc_3:* = getSkillByCrystalName(param2);
            if (!_loc_3)
            {
                return true;
            }
            if (!_loc_3.dependenceId && param1.ownSkills.length > 1)
            {
                return getUnitSkillByType(param1, getSkillType(_loc_3));
            }
            return true;
        }// end function

        public function counterCanceler(param1:UnitVO) : Boolean
        {
            return isSkillSuccessfull(param1, SkillVO.COUNTER_CANCELER);
        }// end function

        public function factionSkill2(param1:UnitVO) : Boolean
        {
            var _loc_3:int = 0;
            var _loc_4:Boolean = false;
            var _loc_2:* = getUnitSkillByType(param1, SkillVO.FACTION_SKILL2);
            if (_loc_2)
            {
                _loc_3 = param1.luck;
                _loc_4 = _loc_3 > Math.floor(Math.random() * 100);
                return _loc_4;
            }
            return false;
        }// end function

        public function getSkillName(param1:int) : String
        {
            if (param1 != 0)
            {
                return getCodeToSkills(param1.toString()).nameLabel;
            }
            return "";
        }// end function

        public function loadSkills() : void
        {
            load("/api/masters/skills", SKILL_LOAD_COMPLETE, function (param1:Array) : void
            {
                var _loc_2:SkillVO = null;
                var _loc_3:Object = null;
                for each (_loc_3 in param1)
                {
                    
                    _skills[_loc_3.skill.id] = skillFactory(_loc_3.skill);
                    _codeToSkills[_loc_3.skill.code] = _skills[_loc_3.skill.id];
                    _skillArray.push(_codeToSkills[_loc_3.skill.code]);
                }
                return;
            }// end function
            );
            return;
        }// end function

        public function get skills() : Object
        {
            return _skills;
        }// end function

        public function bukimori(param1:UnitVO) : Boolean
        {
            return isSkillSuccessfull(param1, SkillVO.BUKIMORI);
        }// end function

        public function dohatsuten(param1:UnitVO) : Boolean
        {
            return isSkillSuccessfull(param1, SkillVO.DOHATSUTEN);
        }// end function

        public function getEntangleDamageRate(param1:UnitVO) : Number
        {
            var _loc_2:* = getUnitSkillByType(param1, SkillVO.ENTANGLE_SPEAR);
            var _loc_3:Array = [0.75, 1, 1.25];
            return _loc_2 ? (_loc_3[(_loc_2.level - 1)]) : (0);
        }// end function

        public function kagenui(param1:UnitVO) : Boolean
        {
            return isSkillSuccessfull(param1, SkillVO.KAGENUI);
        }// end function

        public function moudoku(param1:UnitVO) : Boolean
        {
            var _loc_3:int = 0;
            var _loc_4:Boolean = false;
            var _loc_2:* = getUnitSkillByType(param1, SkillVO.DOKU);
            if (_loc_2 && _loc_2.level == 3)
            {
                _loc_3 = param1.luck;
                _loc_4 = _loc_3 > Math.floor(Math.random() * 100);
                return _loc_4;
            }
            return false;
        }// end function

        public function kurayamiTolerance(param1:UnitVO, param2:AttackVO) : Boolean
        {
            if (kawarazu(param1))
            {
                param2.skillEffects.attack = getSkillLevelName(param1, SkillVO.KAWARAZU);
                return true;
            }
            if (kurayamiShirazu(param1))
            {
                param2.skillEffects.attack = getSkillLevelName(param1, SkillVO.KURAYAMI_SHIRAZU);
                return true;
            }
            return false;
        }// end function

        public function kawarazu(param1:UnitVO) : Boolean
        {
            return isSkillSuccessfull(param1, SkillVO.KAWARAZU);
        }// end function

        public function overMedication(param1:UnitVO, param2:UnitVO) : Boolean
        {
            return getUnitSkillByType(param1, SkillVO.OVER_MEDICATION) && param2.buffLength > 0;
        }// end function

        public function getSkillLevelName(param1:UnitVO, param2:int) : String
        {
            var _loc_3:* = getUnitSkillByType(param1, param2);
            return SkillVO.SKILL_NAMES[(param2 - 1)] + _loc_3.level;
        }// end function

        public function absorption(param1:UnitVO) : Boolean
        {
            if (param1.weaponType == WeaponVO.WEAPON_TYPE_AXE || param1.weaponType == WeaponVO.WEAPON_TYPE_SWORD)
            {
                return isSkillSuccessfull(param1, SkillVO.ABSORPTION);
            }
            return false;
        }// end function

        public function magicSword(param1:UnitVO) : Boolean
        {
            if (param1.weaponType == WeaponVO.WEAPON_TYPE_AXE || param1.weaponType == WeaponVO.WEAPON_TYPE_SWORD || param1.weaponType == WeaponVO.WEAPON_TYPE_SPEAR)
            {
                return isSkillSuccessfull(param1, SkillVO.MAGIC_SWORD);
            }
            return false;
        }// end function

        public function dokuTolerance(param1:UnitVO, param2:AttackVO) : Boolean
        {
            if (kawarazu(param1))
            {
                param2.skillEffects.attack = getSkillLevelName(param1, SkillVO.KAWARAZU);
                return true;
            }
            if (dokuShirazu(param1))
            {
                param2.skillEffects.attack = getSkillLevelName(param1, SkillVO.DOKU_SHIRAZU);
                return true;
            }
            return false;
        }// end function

        public function daturyokuShirazu(param1:UnitVO) : Boolean
        {
            return getUnitSkillByType(param1, SkillVO.DATURYOKU_SHIRAZU);
        }// end function

        public function doubleMagic(param1:UnitVO) : Boolean
        {
            return isSkillSuccessfull(param1, SkillVO.DOUBLE_MAGIC);
        }// end function

        public function getHitSkillAdvantage(param1:UnitVO) : int
        {
            var _loc_3:Array = null;
            var _loc_2:* = getUnitSkillByType(param1, SkillVO.HIT);
            if (_loc_2)
            {
                _loc_3 = [0, 5, 10, 20];
                return _loc_3[_loc_2.level];
            }
            return 0;
        }// end function

        public function kagenuiTolerance(param1:UnitVO, param2:AttackVO) : Boolean
        {
            if (kawarazu(param1))
            {
                param2.skillEffects.attack = getSkillLevelName(param1, SkillVO.KAWARAZU);
                return true;
            }
            if (kagenuiShirazu(param1))
            {
                param2.skillEffects.attack = getSkillLevelName(param1, SkillVO.KAGENUI_SHIRAZU);
                return true;
            }
            return false;
        }// end function

        public function bouguTsukuroi(param1:UnitVO) : Boolean
        {
            return getUnitSkillByType(param1, SkillVO.BOUGU_TSUKUROI);
        }// end function

        public function konran(param1:UnitVO) : Boolean
        {
            return isSkillSuccessfull(param1, SkillVO.KONRAN);
        }// end function

        public function hateUp(param1:UnitVO) : void
        {
            (param1.hate + 1);
            return;
        }// end function

        public function kurayamiShirazu(param1:UnitVO) : Boolean
        {
            return getUnitSkillByType(param1, SkillVO.KURAYAMI_SHIRAZU);
        }// end function

        public function dokuShirazu(param1:UnitVO) : Boolean
        {
            return getUnitSkillByType(param1, SkillVO.DOKU_SHIRAZU);
        }// end function

        public function konranShirazu(param1:UnitVO) : Boolean
        {
            return getUnitSkillByType(param1, SkillVO.KONRAN_SHIRAZU);
        }// end function

        public function shield(param1:UnitVO, param2:UnitVO) : Boolean
        {
            if (param1.weaponType == WeaponVO.WEAPON_TYPE_MAGIC || param1.weaponType == WeaponVO.WEAPON_TYPE_HEAL)
            {
                return false;
            }
            return isSkillSuccessfull(param2, SkillVO.SHIELD);
        }// end function

        public function entangleSpear(param1:UnitVO) : Boolean
        {
            if (param1.weaponType != WeaponVO.WEAPON_TYPE_SPEAR)
            {
                return false;
            }
            return isSkillSuccessfull(param1, SkillVO.ENTANGLE_SPEAR);
        }// end function

        public function godAnger(param1:UnitVO) : Boolean
        {
            var _loc_3:int = 0;
            var _loc_4:Boolean = false;
            var _loc_2:* = getUnitSkillByType(param1, SkillVO.GOD_ANGER);
            if (_loc_2)
            {
                _loc_3 = param1.luck;
                _loc_4 = _loc_3 > Math.floor(Math.random() * 100);
                return _loc_4;
            }
            return false;
        }// end function

        public function hayaashi(param1:UnitVO) : Boolean
        {
            return getUnitSkillByType(param1, SkillVO.HAYAASHI);
        }// end function

        public function regist(param1:UnitVO, param2:UnitVO) : Boolean
        {
            if (param1.weaponType != WeaponVO.WEAPON_TYPE_MAGIC || param2.team == param1.team)
            {
                return false;
            }
            return isSkillSuccessfull(param2, SkillVO.REGIST);
        }// end function

        public function mahiTolerance(param1:UnitVO, param2:AttackVO) : Boolean
        {
            if (kawarazu(param1))
            {
                param2.skillEffects.attack = getSkillLevelName(param1, SkillVO.KAWARAZU);
                return true;
            }
            if (mahiShirazu(param1))
            {
                param2.skillEffects.attack = getSkillLevelName(param1, SkillVO.MAHI_SHIRAZU);
                return true;
            }
            return false;
        }// end function

        public function daturyokuTolerance(param1:UnitVO, param2:AttackVO) : Boolean
        {
            if (kawarazu(param1))
            {
                param2.skillEffects.attack = getSkillLevelName(param1, SkillVO.KAWARAZU);
                return true;
            }
            if (daturyokuShirazu(param1))
            {
                param2.skillEffects.attack = getSkillLevelName(param1, SkillVO.DATURYOKU_SHIRAZU);
                return true;
            }
            return false;
        }// end function

        public function availableSkills(param1:UnitVO) : Array
        {
            var skill:SkillVO;
            var uniqueResult:Array;
            var next:SkillVO;
            var unit:* = param1;
            var result:* = new Array();
            var jobSkill:* = skills[unit.jobMasterVO.skillId];
            result.push(jobSkill);
            var _loc_3:int = 0;
            var _loc_4:* = unit.ownSkills;
            while (_loc_4 in _loc_3)
            {
                
                skill = _loc_4[_loc_3];
                next = nextSkill(skill.skillId);
                if (next && next.skillType == SkillVO.SKILL_TYPE_UPGRADABLE)
                {
                    if (canLearnSkill(unit, next))
                    {
                        result.push(next);
                    }
                    if (isSameType(jobSkill, next))
                    {
                        result.splice(result.indexOf(jobSkill), 1);
                    }
                    continue;
                }
                if (isSameType(jobSkill, skill))
                {
                    result.splice(result.indexOf(jobSkill), 1);
                }
            }
            uniqueResult = result.filter(function (param1, param2:int, param3:Array) : Boolean
            {
                return param3.indexOf(param1) == param2;
            }// end function
            );
            return uniqueResult;
        }// end function

        public function daturyoku(param1:UnitVO) : Boolean
        {
            return isSkillSuccessfull(param1, SkillVO.DATURYOKU);
        }// end function

        public function magicShield(param1:UnitVO) : Boolean
        {
            return isSkillSuccessfull(param1, SkillVO.MAGIC_SHIELD);
        }// end function

        public static function gainStrength(param1:UnitVO) : Boolean
        {
            if (!param1.isWeaponType(WeaponVO.WEAPON_TYPE_AXE))
            {
                return false;
            }
            return getUnitSkillByType(param1, SkillVO.GAIN_STRENGTH);
        }// end function

        public static function getSkillBuffs(param1:UnitVO) : Object
        {
            var _loc_2:Object = {};
            return _loc_2;
        }// end function

        public static function gainStrengthDefenseRate(param1:UnitVO) : Number
        {
            return gainStrength(param1) ? (0.9) : (1);
        }// end function

        public static function isSameType(param1:SkillVO, param2:SkillVO) : Boolean
        {
            return param1.code.slice(0, -2) == param2.code.slice(0, -2);
        }// end function

        public static function isSkillSuccessfull(param1:UnitVO, param2:int) : Boolean
        {
            var _loc_3:* = getUnitSkillByType(param1, param2);
            if (!_loc_3)
            {
                return false;
            }
            var _loc_4:* = getSuccessRate(_loc_3, param1);
            var _loc_5:* = getSuccessRate(_loc_3, param1) > Math.floor(Math.random() * 100);
            return getSuccessRate(_loc_3, param1) > Math.floor(Math.random() * 100);
        }// end function

        public static function gainStrengthMoveRange(param1:UnitVO) : int
        {
            var _loc_2:int = 0;
            var _loc_3:Array = [-1, -1, -2];
            if (!param1.hasWeapon(WeaponVO.WEAPON_TYPE_AXE))
            {
                return _loc_2;
            }
            var _loc_4:* = getUnitSkillByType(param1, SkillVO.GAIN_STRENGTH);
            return getUnitSkillByType(param1, SkillVO.GAIN_STRENGTH) ? (_loc_3[(_loc_4.level - 1)]) : (_loc_2);
        }// end function

        public static function getSkillType(param1:SkillVO) : int
        {
            return int(param1.code.slice(0, -2));
        }// end function

        public static function gainStrengthDamageRate(param1:UnitVO) : Number
        {
            var _loc_2:Number = 1;
            var _loc_3:Array = [1.05, 1.1, 1.2];
            if (!param1.isWeaponType(WeaponVO.WEAPON_TYPE_AXE))
            {
                return _loc_2;
            }
            var _loc_4:* = getUnitSkillByType(param1, SkillVO.GAIN_STRENGTH);
            return getUnitSkillByType(param1, SkillVO.GAIN_STRENGTH) ? (_loc_3[(_loc_4.level - 1)]) : (_loc_2);
        }// end function

        private static function getSuccessRate(param1:SkillVO, param2:UnitVO) : int
        {
            var _loc_5:* = undefined;
            var _loc_6:Array = null;
            var _loc_3:* = SUCCESS_RATE[SkillVO.SKILL_NAMES[(getSkillType(param1) - 1)]][(param1.level - 1)];
            var _loc_4:int = 0;
            for each (_loc_5 in _loc_3)
            {
                
                if (_loc_5 is String)
                {
                    _loc_6 = _loc_5.split("*");
                    if (_loc_6.length > 1)
                    {
                        _loc_4 = _loc_4 + param2[_loc_6[0]] * Number(_loc_6[1]);
                    }
                    else
                    {
                        _loc_4 = _loc_4 + param2[_loc_5];
                    }
                    continue;
                }
                _loc_4 = _loc_4 + _loc_5;
            }
            return _loc_4;
        }// end function

        public static function gainStrengthAvoidRate(param1:UnitVO) : Number
        {
            return gainStrength(param1) ? (0.7) : (1);
        }// end function

        private static function getUnitSkillByType(param1:UnitVO, param2:int) : SkillVO
        {
            var _loc_4:SkillVO = null;
            var _loc_3:SkillVO = null;
            for each (_loc_4 in param1.skills)
            {
                
                if (getSkillType(_loc_4) == param2)
                {
                    if (_loc_3 == null)
                    {
                        _loc_3 = _loc_4;
                        continue;
                    }
                    if (_loc_3.level < _loc_4.level)
                    {
                        _loc_3 = _loc_4;
                    }
                }
            }
            return _loc_3;
        }// end function

        public static function getSkillOfSameType(param1:Array, param2:SkillVO) : SkillVO
        {
            var _loc_3:SkillVO = null;
            for each (_loc_3 in param1)
            {
                
                if (isSameType(_loc_3, param2))
                {
                    return _loc_3;
                }
            }
            return null;
        }// end function

        public static function surinuke(param1:UnitVO) : int
        {
            var _loc_2:* = getUnitSkillByType(param1, SkillVO.SURINUKE);
            if (getUnitSkillByType(param1, SkillVO.SURINUKE))
            {
                return _loc_2.level;
            }
            return 0;
        }// end function

        public static function canLearnSkill(param1:UnitVO, param2:SkillVO) : Boolean
        {
            var _loc_3:int = 0;
            if (param2.qualifiedJobs && param2.qualifiedJobs.length > 0)
            {
                for each (_loc_3 in param2.qualifiedJobs)
                {
                    
                    if (param1.jobMasterVO.masterId == _loc_3)
                    {
                        return true;
                    }
                }
            }
            else
            {
                return true;
            }
            return false;
        }// end function

    }
}
