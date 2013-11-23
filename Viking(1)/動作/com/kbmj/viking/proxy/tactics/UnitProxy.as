package com.kbmj.viking.proxy.tactics
{
    import com.adobe.serialization.json.*;
    import com.kbmj.viking.lib.*;
    import com.kbmj.viking.lib.anime.*;
    import com.kbmj.viking.proxy.*;
    import com.kbmj.viking.vo.*;
    import com.kbmj.viking.vo.tactics.*;
    import flash.display.*;
    import flash.events.*;
    import flash.geom.*;
    import flash.net.*;
    import flash.utils.*;
    import mx.core.*;

    public class UnitProxy extends LoaderProxy
    {
        private var fil:FilterManager;
        private var _selectUnits:Array;
        private var _equipabilityById:Object;
        private var _homeUnits:Array;
        private var _sleepUnits:Array;
        private var _homeUnitLoadedBool:Boolean = false;
        private var _allUnits:Array;
        private var _recoveryTimer:Timer;
        private var attackerDamage:int;
        private var _guildMamberUnits:Array;
        private var _enemies:Array;
        public static const LEARN_SKILL_COMPLETE:String = "UnitPeoxy/notes/learnSkillComplete";
        public static const HOME_UNITS_LOADED_FROM_UNION:String = "UnitPeoxy/notes/homeUnitsLoadedFromUnion";
        public static const HOME_UNITS_LOADED_FROM_CEREMONY:String = "UnitProxy/notes/homeUnitsLoadedFromCeremony";
        public static const ALL_UNIT_RECOVERY_ERROR:String = NAME + "/allUnitRecoveryError";
        public static const HOME_UNITS_LOADED_BY_APPLICATION_MEDIATOR:String = "UnitProxy/notes/homeUnitsLoadedByApplicationMediator";
        public static const RENAME_COMPLETE:String = "UnitPeoxy/notes/renameComplete";
        public static const HOME_UNITS_LOADED_FROM_SUMMON:String = "UnitProxy/notes/homeUnitsLoadedFromSummon";
        public static const ALL_UNIT_RECOVERY_COMPLETE:String = "UnitPeoxy/notes/allUnitRecoveryComplete";
        public static const HOME_LEVELUP_FINISH:String = NAME + "/notes/homeLevelUpFinish";
        public static const REUNION_ERROR:String = NAME + "/reunionError";
        public static const CHANGE_EQUIPMENT_ERROR:String = NAME + "/notes/changeEquipmentError";
        public static const HOME_UNITS_LOADED_BY_SELECT_UNITS:String = "UnitProxy/notes/homeUnitsLoadedSelectUnits";
        public static const GUILD_MAMBER_UNITS:String = "GuildMamberUnits";
        public static const HOME_UNITS_LOADED:String = "UnitProxy/notes/homeUnitsLoaded";
        public static const SELECT_UNITS_LOADED:String = "UnitProxy/notes/selectUnitsLoaded";
        public static const COUNT_ITEM:int = 2;
        public static const COUNT_WEAPON:int = 0;
        public static const UNIT_RECOVERY_COMPLETE_BY_APPLICATION_MEDIATOR:String = "UnitProxy/unitRecoveryCompleteByApplicationMediator";
        public static const SELECT_LEVELUP_FINISH:String = NAME + "/notes/selectLevelUpFinish";
        public static const CHANGE_EQUIPMENT_AT_SELECT_UNIT:String = "SelectUnitMediator/changeEquipment";
        public static const UNIT_RECOVERY_COMPLETE_BY_SELECT_UNIT:String = "UnitProxy/unitRecoveryCompleteBySelectUnit";
        public static const ADVANTAGE_PAIRS:Array = [[WeaponVO.WEAPON_TYPE_SWORD, WeaponVO.WEAPON_TYPE_AXE], [WeaponVO.WEAPON_TYPE_AXE, WeaponVO.WEAPON_TYPE_SPEAR], [WeaponVO.WEAPON_TYPE_SPEAR, WeaponVO.WEAPON_TYPE_SWORD], [WeaponVO.WEAPON_TYPE_SWORD, WeaponVO.WEAPON_TYPE_MAGIC], [WeaponVO.WEAPON_TYPE_AXE, WeaponVO.WEAPON_TYPE_MAGIC], [WeaponVO.WEAPON_TYPE_SPEAR, WeaponVO.WEAPON_TYPE_MAGIC]];
        public static const NAME:String = "UnitProxy";
        public static const UNIT_RECOVERY_COMPLETE_BY_ALL_MAP:String = "UnitProxy/unitRecoveryCompleteByAllMap";
        public static const PLAYER_UNITS_LOADED:String = NAME + "/playerUnitsLoaded";
        public static const ACTION_ANIMATION:String = NAME + "/notes/actionAnimation";
        public static const CHANGE_EQUIPMENT:String = "UnitProxy/notes/changeEquipment";
        public static const RENAME_ERROR:String = NAME + "/renameError";
        public static const UNIT_RECOVERY_COMPLETE:String = "UnitProxy/unitRecoveryComplete";
        public static const CHARGE_RECOVERY_ERROR:String = NAME + "/chargeRecoveryError";
        public static const UNIT_LEVEL_UP:String = "SelectUnitMediator/UnitLvUp";
        public static const ALL_MAP_LEVELUP_FINISH:String = NAME + "/notes/allMapLevelUpFinish";
        public static const TEAM_TYPE_NORMAL:int = 0;
        public static const GUILD_MAMBER_UNITS_ERROR:String = "GuildMamberUnitsError";
        public static const REUNION_COMPLETE:String = "UnitPeoxy/notes/reunionComplete";
        public static const LEARN_SKILL_ERROR:String = NAME + "learnSkillError";
        public static const HOME_UNITS_LOADED_BY_ALL_MAP:String = "UnitProxy/notes/homeUnitsLoadedByAllMap";
        public static const RELOAD_HP_BAR_DRAW:String = NAME + "/reloadHpBarDraw";
        public static const LEARN_SKILL_COMPLETE_BY_APPLICATION_MEDIATOR:String = "UnitPeoxy/notes/learnSkillCompleteByApplicationMediator";
        public static const COUNT_ARMOR:int = 1;
        public static const LEVELUP_FINISH:String = NAME + "/notes/levelUpFinish";
        public static const TEAM_TYPE_OTHER:int = 1;
        public static const CHARGE_RECOVERY_COMPLETE:String = "UnitPeoxy/notes/chargeRecoveryComplete";
        public static const UNIT_RECOVERY_ERROR:String = NAME + "unitRecoveryError";
        public static const LEARN_SKILL_COMPLETE_BY_SELECT_UNIT:String = "UnitPeoxy/notes/learnSkillCompleteSelectUnit";
        public static const LEARN_SKILL_COMPLETE_BY_ALL_MAP:String = "UnitPeoxy/notes/learnSkillCompleteByAllMp";

        public function UnitProxy()
        {
            fil = new FilterManager();
            _allUnits = new Array();
            _homeUnits = new Array();
            _selectUnits = new Array();
            _enemies = new Array();
            _guildMamberUnits = new Array();
            _sleepUnits = new Array();
            _equipabilityById = new Object();
            _recoveryTimer = new Timer(60000);
            super(NAME);
            return;
        }// end function

        public function checkAbnormalState(param1:UnitVO, param2:UnitVO, param3:AttackVO) : void
        {
            var _loc_4:* = SkillProxy(facade.retrieveProxy(SkillProxy.NAME));
            if (SkillProxy(facade.retrieveProxy(SkillProxy.NAME)).moudoku(param1))
            {
                if (_loc_4.dokuTolerance(param2, param3))
                {
                    return;
                }
                if (_loc_4.ingaouhou(param2))
                {
                    if (_loc_4.dokuTolerance(param1, param3) == false)
                    {
                        setAbnormalMoudoku(param1, param1, param3);
                    }
                    param3.skillEffects.attack = _loc_4.getSkillLevelName(param2, SkillVO.INGAOUHOU);
                    return;
                }
                setAbnormalMoudoku(param1, param2, param3);
                return;
            }
            if (_loc_4.doku(param1))
            {
                if (_loc_4.dokuTolerance(param2, param3))
                {
                    return;
                }
                if (_loc_4.ingaouhou(param2))
                {
                    if (_loc_4.dokuTolerance(param1, param3) == false)
                    {
                        setAbnormalDoku(param1, param1, param3);
                    }
                    param3.skillEffects.attack = _loc_4.getSkillLevelName(param2, SkillVO.INGAOUHOU);
                    return;
                }
                setAbnormalDoku(param1, param2, param3);
                return;
            }
            if (_loc_4.kurayami(param1))
            {
                if (_loc_4.kurayamiTolerance(param2, param3))
                {
                    return;
                }
                if (_loc_4.ingaouhou(param2))
                {
                    if (_loc_4.kurayamiTolerance(param1, param3) == false)
                    {
                        setAbnormalKurayami(param1, param1, param3);
                    }
                    param3.skillEffects.attack = _loc_4.getSkillLevelName(param2, SkillVO.INGAOUHOU);
                    return;
                }
                setAbnormalKurayami(param1, param2, param3);
                return;
            }
            if (_loc_4.kagenui(param1))
            {
                if (_loc_4.kagenuiTolerance(param2, param3))
                {
                    return;
                }
                if (_loc_4.ingaouhou(param2))
                {
                    if (_loc_4.kagenuiTolerance(param1, param3) == false)
                    {
                        setAbnormalKagenui(param1, param1, param3);
                    }
                    param3.skillEffects.attack = _loc_4.getSkillLevelName(param2, SkillVO.INGAOUHOU);
                    return;
                }
                setAbnormalKagenui(param1, param2, param3);
                return;
            }
            if (_loc_4.jubaku(param1))
            {
                if (_loc_4.jubakuTolerance(param2, param3))
                {
                    return;
                }
                if (_loc_4.ingaouhou(param2))
                {
                    if (_loc_4.jubakuTolerance(param1, param3) == false)
                    {
                        setAbnormalJubaku(param1, param1, param3);
                    }
                    param3.skillEffects.attack = _loc_4.getSkillLevelName(param2, SkillVO.INGAOUHOU);
                    return;
                }
                setAbnormalJubaku(param1, param2, param3);
                return;
            }
            if (_loc_4.mahi(param1))
            {
                if (_loc_4.mahiTolerance(param2, param3))
                {
                    return;
                }
                if (_loc_4.ingaouhou(param2))
                {
                    if (_loc_4.mahiTolerance(param1, param3) == false)
                    {
                        setAbnormalMahi(param1, param1, param3);
                    }
                    param3.skillEffects.attack = _loc_4.getSkillLevelName(param2, SkillVO.INGAOUHOU);
                    return;
                }
                setAbnormalMahi(param1, param2, param3);
                return;
            }
            if (_loc_4.konran(param1))
            {
                if (_loc_4.konranTolerance(param2, param3))
                {
                    return;
                }
                if (_loc_4.ingaouhou(param2))
                {
                    if (_loc_4.konranTolerance(param1, param3) == false)
                    {
                        setAbnormalKonran(param1, param1, param3);
                    }
                    param3.skillEffects.attack = _loc_4.getSkillLevelName(param2, SkillVO.INGAOUHOU);
                    return;
                }
                setAbnormalKonran(param1, param2, param3);
                return;
            }
            if (_loc_4.daturyoku(param1))
            {
                trace("スキル「脱力」発動");
                if (_loc_4.daturyokuTolerance(param2, param3))
                {
                    return;
                }
                if (_loc_4.ingaouhou(param2))
                {
                    if (_loc_4.daturyokuTolerance(param1, param3) == false)
                    {
                        setAbnormalDaturyoku(param1, param1, param3);
                    }
                    param3.skillEffects.attack = _loc_4.getSkillLevelName(param2, SkillVO.INGAOUHOU);
                    return;
                }
                setAbnormalDaturyoku(param1, param2, param3);
                return;
            }
            return;
        }// end function

        public function killUnit(param1:AttackVO) : void
        {
            var _loc_2:* = SkillProxy(facade.retrieveProxy(SkillProxy.NAME));
            param1.attacker.kill.push(param1.target);
            param1.target.hp = 0;
            return;
        }// end function

        public function HomelevelUpUnit(param1:UnitVO) : void
        {
            var unit:* = param1;
            load("/api/units/" + unit.unitId + "/levelup", HOME_LEVELUP_FINISH, function () : void
            {
                return;
            }// end function
            );
            return;
        }// end function

        public function get unitForSacrifice() : Array
        {
            return homeUnits.filter(function (param1:UnitVO, param2:int, param3:Array) : Boolean
            {
                return param1.sacrificible;
            }// end function
            );
        }// end function

        public function count(param1:UnitVO, param2:int) : void
        {
            if (param1.team == 1)
            {
                return;
            }
            if (!param1.count["weapons"])
            {
                param1.count = {weapons:new Object(), armors:new Object(), items:new Object()};
            }
            switch(param2)
            {
                case COUNT_WEAPON:
                {
                    if (param1.weapon)
                    {
                        var _loc_3:* = param1.weapon;
                        var _loc_4:* = param1.weapon.endurance - 1;
                        _loc_3.endurance = _loc_4;
                        if (param1.count.weapons[param1.weapon.weaponId])
                        {
                            (param1.count.weapons[param1.weapon.weaponId] + 1);
                        }
                        else
                        {
                            param1.count.weapons[param1.weapon.weaponId] = 1;
                        }
                    }
                    break;
                }
                case COUNT_ARMOR:
                {
                    if (param1.armor)
                    {
                        if (param1.count.armors[param1.armor.armorId])
                        {
                            (param1.count.armors[param1.armor.armorId] + 1);
                        }
                        else
                        {
                            param1.count.armors[param1.armor.armorId] = 1;
                        }
                    }
                    break;
                }
                case COUNT_ITEM:
                {
                    if (param1.item)
                    {
                        if (param1.count.items[param1.item.itemId])
                        {
                            (param1.count.items[param1.item.itemId] + 1);
                        }
                        else
                        {
                            param1.count.items[param1.item.itemId] = 1;
                        }
                    }
                    break;
                }
                default:
                {
                    break;
                }
            }
            return;
        }// end function

        private function isHit(param1:AttackVO, param2:Number = 1) : Boolean
        {
            if (param1.attacker.weaponType == WeaponVO.WEAPON_TYPE_HEAL)
            {
                return true;
            }
            var _loc_3:* = SkillProxy(facade.retrieveProxy(SkillProxy.NAME));
            var _loc_4:* = hitRate(param1.attacker, param1.target, param1.target.direction);
            _loc_4 = hitRate(param1.attacker, param1.target, param1.target.direction) * param2;
            return _loc_4 > Math.floor(Math.random() * 100);
        }// end function

        public function hitRate(param1:UnitVO, param2:UnitVO, param3:int) : int
        {
            var _loc_4:* = SkillProxy(facade.retrieveProxy(SkillProxy.NAME));
            var _loc_5:* = param1.baseHitRate;
            _loc_5 = param1.baseHitRate + weaponAdvantage(param1, param2);
            _loc_5 = _loc_5 + _loc_4.getHitSkillAdvantage(param1);
            _loc_5 = _loc_5 + _loc_4.getTerrorAdjustment(param1);
            _loc_5 = _loc_5 - param2.baseAvoid;
            _loc_5 = _loc_5 - _loc_4.getTerrorAdjustment(param2);
            if (param1.hasBuff("Dark"))
            {
                _loc_5 = _loc_5 - 20;
            }
            if (param2.hasBuff(UnitVO.ABNORMAL_NAME_KURAYAMI))
            {
                _loc_5 = _loc_5 + 30;
            }
            if (param1.hasBuff(UnitVO.ABNORMAL_NAME_KURAYAMI))
            {
                _loc_5 = _loc_5 - 30;
            }
            _loc_5 = _loc_5 + getBackSideHitRateOffset(param1, param2, param3);
            return _loc_5 > 0 ? (_loc_5) : (0);
        }// end function

        public function setAbnormalJubaku(param1:UnitVO, param2:UnitVO, param3:AttackVO) : void
        {
            var _loc_5:bufferVO = null;
            var _loc_4:* = SkillProxy(facade.retrieveProxy(SkillProxy.NAME));
            _loc_5 = new bufferVO(UnitVO.ABNORMAL_NAME_JUBAKU, 0, (2 + 1), true);
            param2.buffs.push(_loc_5);
            param3.skillEffects.attack = _loc_4.getSkillLevelName(param1, SkillVO.JUBAKU);
            return;
        }// end function

        public function setAbnormalDoku(param1:UnitVO, param2:UnitVO, param3:AttackVO) : void
        {
            var _loc_5:bufferVO = null;
            var _loc_4:* = SkillProxy(facade.retrieveProxy(SkillProxy.NAME));
            _loc_5 = new bufferVO(UnitVO.ABNORMAL_NAME_DOKU, 0, 5, true);
            param2.buffs.push(_loc_5);
            param3.skillEffects.attack = _loc_4.getSkillLevelName(param1, SkillVO.DOKU);
            return;
        }// end function

        private function getFactionSkillUnits(param1:AttackVO) : Array
        {
            var attackVO:* = param1;
            var datumPoint:* = new Point((attackVO.target.mapx - 1), 0);
            var units:* = findAreaUnits(datumPoint, 3, TacticsProxy.ROWS);
            return units.filter(function (param1:UnitVO, param2:int, param3:Array) : Boolean
            {
                return attackVO.attacker.team != param1.team;
            }// end function
            );
        }// end function

        public function get enemies() : Array
        {
            return _enemies;
        }// end function

        public function setAbnormalKurayami(param1:UnitVO, param2:UnitVO, param3:AttackVO) : void
        {
            var _loc_5:bufferVO = null;
            var _loc_4:* = SkillProxy(facade.retrieveProxy(SkillProxy.NAME));
            _loc_5 = new bufferVO(UnitVO.ABNORMAL_NAME_KURAYAMI, 0, 3, true);
            param2.buffs.push(_loc_5);
            param3.skillEffects.attack = _loc_4.getSkillLevelName(param1, SkillVO.KURAYAMI);
            return;
        }// end function

        private function findAreaUnits(param1:Point, param2:int = 1, param3:int = 1) : Array
        {
            var point:* = param1;
            var cols:* = param2;
            var rows:* = param3;
            var tacticsProxy:* = TacticsProxy(facade.retrieveProxy(TacticsProxy.NAME));
            var units:* = tacticsProxy.aliveUnits.filter(function (param1:UnitVO, param2:int, param3:Array) : Boolean
            {
                return point.x <= param1.mapx && param1.mapx < point.x + cols && point.y <= param1.mapy && param1.mapy < point.y + rows;
            }// end function
            );
            return units;
        }// end function

        public function setAbnormalKagenui(param1:UnitVO, param2:UnitVO, param3:AttackVO) : void
        {
            var _loc_5:bufferVO = null;
            var _loc_4:* = SkillProxy(facade.retrieveProxy(SkillProxy.NAME));
            _loc_5 = new bufferVO(UnitVO.ABNORMAL_NAME_KAGENUI, 0, (2 + 1), true);
            param2.buffs.push(_loc_5);
            param3.skillEffects.attack = _loc_4.getSkillLevelName(param1, SkillVO.KAGENUI);
            return;
        }// end function

        public function turnRecovery(param1:UnitVO) : void
        {
            var _loc_3:int = 0;
            var _loc_2:* = SkillProxy(facade.retrieveProxy(SkillProxy.NAME));
            if (_loc_2.regeneration(param1))
            {
                _loc_3 = (param1.realMaxHp - param1.hp) / 2;
                variationHp(param1, _loc_3);
                if (_loc_3 != 0)
                {
                    sendNotification(BaseBattleLogicProxy.ENQUEUE_ORDER, new OrderVO(new DamagePopVO(param1, -_loc_3)));
                }
            }
            return;
        }// end function

        public function action(param1:UnitVO, param2:UnitVO, param3:Boolean = true, param4:Boolean = false, param5:Boolean = false, param6:Boolean = false, param7:Number = 1, param8:Object = null) : AttackVO
        {
            var _loc_14:Object = null;
            var _loc_15:UnitVO = null;
            var _loc_16:Boolean = false;
            var _loc_17:AttackVO = null;
            var _loc_18:Array = null;
            var _loc_19:Boolean = false;
            var _loc_20:UnitVO = null;
            var _loc_21:UnitVO = null;
            var _loc_9:* = SkillProxy(facade.retrieveProxy(SkillProxy.NAME));
            var _loc_10:* = new AttackVO(param1, param2.position, param2);
            new AttackVO(param1, param2.position, param2).willCountered = param3;
            _loc_10.areaAttack = param5;
            var _loc_11:* = isHit(_loc_10);
            if (_loc_9.directAttack(param1))
            {
            }
            else if (_loc_11)
            {
                _loc_14 = _loc_9.avoidBySkills(param1, param2);
                _loc_11 = !_loc_14.result;
                if (_loc_14.result)
                {
                    _loc_10.skillEffects.avoid = _loc_14.skillName;
                }
            }
            _loc_10.hit = _loc_11;
            var _loc_12:Number = 0;
            if (param1.weaponType == WeaponVO.WEAPON_TYPE_SPEAR && !param5)
            {
                _loc_15 = getActionSpearTarget(_loc_10);
                _loc_16 = _loc_9.entangleSpear(param1);
                if (_loc_16)
                {
                    _loc_10.skillEffects.attack = _loc_9.getSkillLevelName(param1, SkillVO.ENTANGLE_SPEAR);
                }
                if (_loc_15)
                {
                    if (_loc_16)
                    {
                        _loc_12 = _loc_9.getEntangleDamageRate(param1);
                    }
                    _loc_17 = action(param1, _loc_15, false, param4, true, false, 1, {entangleSkill:_loc_12});
                    if (_loc_16)
                    {
                        _loc_17.skillEffects.attack = _loc_9.getSkillLevelName(param1, SkillVO.ENTANGLE_SPEAR);
                    }
                    _loc_10.areaAttackVOs.push(_loc_17);
                }
                else if (_loc_16)
                {
                    _loc_12 = 0.5;
                }
            }
            else if (param8 && param8.entangleSkill)
            {
                _loc_12 = param8.entangleSkill;
            }
            switch(param1.weaponType)
            {
                case WeaponVO.WEAPON_TYPE_MAGIC:
                {
                    if (_loc_11)
                    {
                        _loc_10.damage = magic(param1, param2, _loc_10);
                    }
                    break;
                }
                case WeaponVO.WEAPON_TYPE_HEAL:
                {
                    _loc_10.willCountered = false;
                    if (_loc_11)
                    {
                        _loc_10.damage = heal(param1, param2);
                        switch(param1.weapon.code)
                        {
                            case WeaponsMasterVO.WEAPON_CODE_PURIFY_LIGHT:
                            case WeaponsMasterVO.WEAPON_CODE_LOVE_LIGHT:
                            {
                                _loc_10.damage = Math.max(_loc_10.damage, -50);
                                break;
                            }
                            default:
                            {
                                break;
                                break;
                            }
                        }
                    }
                    break;
                }
                default:
                {
                    if (_loc_11)
                    {
                        _loc_10.damage = attack(param1, param2, _loc_10, _loc_12);
                    }
                    break;
                    break;
                }
            }
            if (_loc_11 && !_loc_10.validSkills[SkillVO.SKILL_NAME_OVER_MEDICATION])
            {
                checkAbnormalState(param1, param2, _loc_10);
            }
            if (param2.hasBuff(UnitVO.ABNORMAL_NAME_MAHI) || param2.hasBuff(UnitVO.ABNORMAL_NAME_JUBAKU))
            {
                _loc_10.willCountered = false;
            }
            if (param4 && _loc_9.dohatsuten(param1))
            {
                _loc_10.damage = _loc_9.getDohatsutenDamage(param1, _loc_10.damage);
                _loc_10.skillEffects.attack = _loc_9.getSkillLevelName(param1, SkillVO.DOHATSUTEN);
            }
            _loc_10.damage = _loc_9.getReducedDamageByKillerSkills(_loc_10.damage, param1, param2);
            if (_loc_11 && !param5)
            {
                _loc_18 = [];
                _loc_19 = false;
                if (_loc_9.factionSkill(param1))
                {
                    _loc_10.godAnger = true;
                    _loc_19 = true;
                    _loc_18 = _loc_18.concat(getFactionSkillUnits(_loc_10));
                }
                if (_loc_9.factionSkill2(param1))
                {
                    _loc_10.godAnger = true;
                    _loc_19 = true;
                    _loc_18 = _loc_18.concat(getFactionSkillUnits2(_loc_10));
                }
                _loc_18 = Utils.uniqueArray(_loc_18);
                for each (_loc_20 in _loc_18)
                {
                    
                    if (param2 != _loc_20)
                    {
                        _loc_10.areaAttackVOs.push(action(param1, _loc_20, false, param4, true, false, 3));
                    }
                }
                if (_loc_19)
                {
                    _loc_10.damage = _loc_10.damage * 3;
                }
            }
            if (param6)
            {
                _loc_10.damage = _loc_10.damage * 0.8;
            }
            _loc_10.damage = _loc_10.damage * param7;
            var _loc_13:* = TacticsProxy(facade.retrieveProxy(TacticsProxy.NAME));
            if (_loc_10.damage >= 0)
            {
                _loc_10.damage = _loc_10.damage * _loc_13.damageRate;
            }
            if (_loc_10.damage < 0)
            {
                _loc_10.damage = _loc_10.damage * _loc_13.healRate;
            }
            variationHp(param2, -_loc_10.damage);
            switch(param1.weapon.code)
            {
                case WeaponsMasterVO.WEAPON_CODE_LIFE_LEECH:
                case WeaponsMasterVO.WEAPON_CODE_TRUE_LIFE_LEECH:
                case WeaponsMasterVO.WEAPON_CODE_BLOOD_SUCK:
                {
                    _loc_10.leech = -_loc_10.damage / 2;
                    variationHp(param1, -_loc_10.leech);
                    break;
                }
                case WeaponsMasterVO.WEAPON_CODE_PURIFY_LIGHT:
                {
                    resetAllAbnormalState(param2);
                    break;
                }
                default:
                {
                    break;
                }
            }
            if (param2.hp <= 0)
            {
                _loc_10.killBlow = true;
                param2.hp = 0;
            }
            if (param2.isDead)
            {
                killUnit(_loc_10);
            }
            _loc_10.attackerHp = param1.hp;
            _loc_10.targetHp = param2.hp;
            _loc_10.attackerAbnormal[UnitVO.ABNORMAL_DOKU] = param1.hasBuff(UnitVO.ABNORMAL_NAME_DOKU);
            _loc_10.attackerAbnormal[UnitVO.ABNORMAL_MOUDOKU] = param1.hasBuff(UnitVO.ABNORMAL_NAME_MOUDOKU);
            _loc_10.attackerAbnormal[UnitVO.ABNORMAL_KURAYAMI] = param1.hasBuff(UnitVO.ABNORMAL_NAME_KURAYAMI);
            _loc_10.attackerAbnormal[UnitVO.ABNORMAL_KAGENUI] = param1.hasBuff(UnitVO.ABNORMAL_NAME_KAGENUI);
            _loc_10.attackerAbnormal[UnitVO.ABNORMAL_JUBAKU] = param1.hasBuff(UnitVO.ABNORMAL_NAME_JUBAKU);
            _loc_10.attackerAbnormal[UnitVO.ABNORMAL_MAHI] = param1.hasBuff(UnitVO.ABNORMAL_NAME_MAHI);
            _loc_10.attackerAbnormal[UnitVO.ABNORMAL_KONRAN] = param1.hasBuff(UnitVO.ABNORMAL_NAME_KONRAN);
            _loc_10.attackerAbnormal[UnitVO.ABNORMAL_DATURYOKU] = param1.hasBuff(UnitVO.ABNORMAL_NAME_DATURYOKU);
            _loc_10.targetAbnormal[UnitVO.ABNORMAL_DOKU] = param2.hasBuff(UnitVO.ABNORMAL_NAME_DOKU);
            _loc_10.targetAbnormal[UnitVO.ABNORMAL_MOUDOKU] = param2.hasBuff(UnitVO.ABNORMAL_NAME_MOUDOKU);
            _loc_10.targetAbnormal[UnitVO.ABNORMAL_KURAYAMI] = param2.hasBuff(UnitVO.ABNORMAL_NAME_KURAYAMI);
            _loc_10.targetAbnormal[UnitVO.ABNORMAL_KAGENUI] = param2.hasBuff(UnitVO.ABNORMAL_NAME_KAGENUI);
            _loc_10.targetAbnormal[UnitVO.ABNORMAL_JUBAKU] = param2.hasBuff(UnitVO.ABNORMAL_NAME_JUBAKU);
            _loc_10.targetAbnormal[UnitVO.ABNORMAL_MAHI] = param2.hasBuff(UnitVO.ABNORMAL_NAME_MAHI);
            _loc_10.targetAbnormal[UnitVO.ABNORMAL_KONRAN] = param2.hasBuff(UnitVO.ABNORMAL_NAME_KONRAN);
            _loc_10.targetAbnormal[UnitVO.ABNORMAL_DATURYOKU] = param2.hasBuff(UnitVO.ABNORMAL_NAME_DATURYOKU);
            if (_loc_9.bukiTsukuroi(param1))
            {
            }
            else if (_loc_10.areaAttack == false)
            {
                count(param1, COUNT_WEAPON);
                _loc_10.weaponEndurance = param1.weapon.endurance;
            }
            if (_loc_10.willCountered)
            {
                if (_loc_10.target.isDead)
                {
                    _loc_10.willCountered = false;
                }
                else if (_loc_9.counterCanceler(param1))
                {
                    _loc_10.willCountered = false;
                    _loc_10.skillEffects.attack = _loc_9.getSkillLevelName(param1, SkillVO.COUNTER_CANCELER);
                }
                else if (_loc_9.yumiHangeki(param2) && canCounerRange(param2, param1))
                {
                    _loc_10.skillEffects.avoid = _loc_9.getSkillLevelName(param2, SkillVO.YUMI_HANGEKI);
                }
                else if (_loc_9.jutsuHangeki(param2) && canCounerRange(param2, param1))
                {
                    _loc_10.skillEffects.avoid = _loc_9.getSkillLevelName(param2, SkillVO.JUTSU_HANGEKI);
                }
                else if (_loc_10.target.canCounter && canPhysicalAttack(param2, param1))
                {
                }
                else
                {
                    _loc_10.willCountered = false;
                }
            }
            if (_loc_9.godAnger(param1) && _loc_11 && !param6)
            {
                _loc_10.godAnger = true;
                for each (_loc_21 in allEnemies(param1))
                {
                    
                    if (param2 != _loc_21)
                    {
                        _loc_10.areaAttackVOs.push(action(param1, _loc_21, false, param4, true, true));
                    }
                }
            }
            if (_loc_10.willCountered)
            {
                _loc_10.counterAttackVO = action(_loc_10.target, _loc_10.attacker, false, true);
                _loc_10.counterAttackVO.counterAttack = true;
            }
            return _loc_10;
        }// end function

        public function unitRecovery(param1:int, param2:Object, param3:String) : void
        {
            var unitId:* = param1;
            var item:* = param2;
            var eventName:* = param3;
            var params:Object;
            var json:* = JSON.encode(params);
            loadWithJson("/api/units/recovery", eventName, UNIT_RECOVERY_ERROR, function (param1:Object) : Object
            {
                return param1;
            }// end function
            , json);
            return;
        }// end function

        public function enemyUnitFactory(param1:Object) : UnitVO
        {
            var skillProxy:*;
            var masterProxy:*;
            var weaponsMasterVO:*;
            var weaponVO:*;
            var armorsMasterVO:*;
            var armorVO:*;
            var accessoriesMasterVO:*;
            var accessoryVO:*;
            var enemy:* = param1;
            var enemyVO:* = new EnemyUnitVO();
            var _loc_3:* = enemyVO;
            with (enemyVO)
            {
                unitId = enemy.id;
                name = enemy.name;
                defense = enemy.defense;
                strength = enemy.strength;
                tech = enemy.tech;
                maxHp = enemy.max_hp;
                moveRange = enemy.move_range;
                intelligence = enemy.intelligence;
                agility = enemy.agility;
                luck = enemy.luck;
                level = enemy.level;
                team = 1;
                teamType = TEAM_TYPE_NORMAL;
                isAI = true;
                if (enemy.playable)
                {
                    isAI = false;
                }
                ai = new AiVO(enemy.ai);
                skillProxy = SkillProxy(facade.retrieveProxy(SkillProxy.NAME));
                if (enemy.skill1_id)
                {
                    ownSkills.push(skillProxy.skills[enemy.skill1_id]);
                }
                if (enemy.skill2_id)
                {
                    ownSkills.push(skillProxy.skills[enemy.skill2_id]);
                }
                masterProxy = MasterProxy(facade.retrieveProxy(MasterProxy.NAME));
                weaponsMasterVO = masterProxy.getMasterVO(MasterProxy.WEAPON_MASTER, enemy.weapon_master_id) as WeaponsMasterVO;
                weaponVO = new WeaponVO();
                weaponVO.masterVO = weaponsMasterVO;
                weaponVO.damage = weaponsMasterVO.damage;
                weaponVO.hit = weaponsMasterVO.hit;
                weaponVO.endurance = 999;
                weaponVO.displayEndurance = weaponVO.endurance;
                weapon = weaponVO;
                if (enemy.armor_master_id)
                {
                    armorsMasterVO = masterProxy.getMasterVO(MasterProxy.ARMOR_MASTER, enemy.armor_master_id) as ArmorsMasterVO;
                    armorVO = new ArmorVO();
                    armorVO.masterVO = armorsMasterVO;
                    armor = armorVO;
                }
                if (enemy.accessory_master_id)
                {
                    accessoriesMasterVO = masterProxy.getMasterVO(MasterProxy.ACCESSORY_MASTER, enemy.accessory_master_id) as AccessoriesMasterVO;
                    accessoryVO = new AccessoryVO();
                    accessoryVO.masterVO = accessoriesMasterVO;
                    accessory = accessoryVO;
                }
                jobMasterVO = JobMasterVO(masterProxy.getMasterVO(MasterProxy.JOB_MASTER, enemy.job_id));
                gender = enemy.gender;
                isNpc = enemy.npc;
                if (factionBossFlag)
                {
                    hp = enemy.hp;
                    displayHp = enemy.hp;
                    continue;
                }
                hp = realMaxHp;
                displayHp = realMaxHp;
            }
            if (enemy.image_url)
            {
                if (Number(enemyVO.jobMasterVO.code) < 1000)
                {
                    setFaceImage(enemyVO, "/swf/unit_images/img_unit_" + enemyVO.jobMasterVO.code + ".swf");
                }
                else
                {
                    setFaceImage(enemyVO, enemy.image_url);
                }
            }
            hayaashiCheck(enemyVO);
            gainStrengthMoveCheck(enemyVO);
            tooyumiCheck(enemyVO);
            tooateCheck(enemyVO);
            return enemyVO;
        }// end function

        public function updateWeaponEndurance(param1:UnitVO, param2:int) : void
        {
            if (param1.weapon && param2 >= 0)
            {
                param1.weapon.displayEndurance = param2;
            }
            return;
        }// end function

        private function allEnemies(param1:UnitVO) : Array
        {
            var unit:* = param1;
            var tacticsProxy:* = TacticsProxy(facade.retrieveProxy(TacticsProxy.NAME));
            return tacticsProxy.aliveUnits.filter(function (param1:UnitVO, param2:int, param3:Array) : Boolean
            {
                return unit.team != param1.team;
            }// end function
            );
        }// end function

        private function attack(param1:UnitVO, param2:UnitVO, param3:AttackVO, param4:Number = 0) : int
        {
            var _loc_8:Boolean = false;
            var _loc_9:int = 0;
            var _loc_10:int = 0;
            var _loc_5:* = SkillProxy(facade.retrieveProxy(SkillProxy.NAME));
            var _loc_6:int = 0;
            var _loc_7:* = _loc_5.magicSword(param1);
            if (_loc_5.magicSword(param1))
            {
                _loc_6 = getMagicSwordDamage(param1, param2);
                param3.skillEffects.attack = _loc_5.getSkillLevelName(param1, SkillVO.MAGIC_SWORD);
            }
            else
            {
                _loc_6 = getPhysicalDamage(param1, param2);
            }
            if (_loc_5.midareuti(param1))
            {
                _loc_6 = _loc_6 * 0.6;
                _loc_8 = true;
                _loc_9 = _loc_5.getMidareutiAttackCount(param1);
                _loc_10 = 0;
                while (_loc_10 < (_loc_9 - 1))
                {
                    
                    _loc_8 = isHit(param3, 0.8);
                    if (_loc_8)
                    {
                        _loc_6 = _loc_6 + getPhysicalDamage(param1, param2) * 0.6;
                    }
                    _loc_10++;
                }
                param3.skillEffects.attack = _loc_5.getSkillLevelName(param1, SkillVO.MIDAREUTI);
            }
            if (_loc_5.bukimori(param2))
            {
                _loc_6 = _loc_6 - param1.damage / 2;
                if (_loc_6 < 0)
                {
                    _loc_6 = 0;
                }
                param3.skillEffects.attack = _loc_5.getSkillLevelName(param2, SkillVO.BUKIMORI);
            }
            if (_loc_5.critical(param1))
            {
                _loc_6 = _loc_6 + int(param1.damage / 2);
                param3.skillEffects.attack = _loc_5.getSkillLevelName(param1, SkillVO.CRITICAL);
            }
            if (_loc_5.doubleAttack(param1))
            {
                param3.skillEffects.attack = _loc_5.getSkillLevelName(param1, SkillVO.DOUBLE_ATTACK);
                if (isHit(param3))
                {
                    _loc_6 = _loc_6 + getDamage(param1, param2, _loc_7);
                }
            }
            if (_loc_5.swallowConter(param1))
            {
                param3.skillEffects.attack = _loc_5.getSkillLevelName(param1, SkillVO.SWALLOW_COUNTER);
                if (isHit(param3))
                {
                    _loc_6 = _loc_6 + getSwallowConterDamage(param1, param2, _loc_7);
                }
            }
            if (_loc_5.absorption(param1))
            {
                param3.leech = -_loc_6 / 2;
                variationHp(param1, -param3.leech);
                param3.skillEffects.attack = _loc_5.getSkillLevelName(param1, SkillVO.ABSORPTION);
            }
            if (param4 != 0)
            {
                _loc_6 = _loc_6 + getDamage(param1, param2, _loc_7) * param4;
            }
            if (_loc_5.overMedication(param1, param2))
            {
                param3.skillEffects.attack = _loc_5.getSkillLevelName(param1, SkillVO.OVER_MEDICATION);
                param3.validSkills[SkillVO.SKILL_NAME_OVER_MEDICATION] = true;
                trace("スキル「過剰投薬」発動　ダメージ＝", _loc_6, "+", _loc_5.getOverMedicationDamage(param1, param2));
                _loc_6 = _loc_6 + _loc_5.getOverMedicationDamage(param1, param2);
                resetAllAbnormalState(param2);
            }
            return _loc_6;
        }// end function

        public function set enemies(param1:Array) : void
        {
            _enemies = param1;
            return;
        }// end function

        public function rename(param1:int, param2:String = "UnitPeoxy/notes/renameComplete") : void
        {
            var params:Object;
            var unitId:* = param1;
            var eventName:* = param2;
            params;
            var json:* = JSON.encode(params);
            loadWithJson("/api/homes/rename", eventName, RENAME_ERROR, function () : Object
            {
                return params;
            }// end function
            , json);
            return;
        }// end function

        public function get allUnits() : Array
        {
            return _allUnits;
        }// end function

        public function loadAnimation(param1:UnitVO) : void
        {
            var unit:* = param1;
            var animationProxy:* = AnimationProxy(facade.retrieveProxy(AnimationProxy.NAME));
            unit.loader.contentLoaderInfo.addEventListener(Event.COMPLETE, function (event:Event) : void
            {
                var _loc_2:* = LoaderInfo(event.target);
                MovieClip(_loc_2.content).gotoAndPlay("walk_f_l");
                return;
            }// end function
            );
            unit.uic = new UIComponent();
            unit.uic.addChild(unit.loader);
            unit.loader.loadBytes(animationProxy.getUnitAnimation(unit.jobMasterVO.code, unit.gender));
            return;
        }// end function

        public function guildAllyUnitFactory(param1:Object) : UnitVO
        {
            var _loc_2:* = new UnitVO();
            _loc_2 = unitFactory(param1);
            _loc_2.team = 0;
            _loc_2.teamType = TEAM_TYPE_OTHER;
            _loc_2.isAI = true;
            _loc_2.ai = new AiVO(0);
            return _loc_2;
        }// end function

        public function tooyumiCheck(param1:UnitVO) : void
        {
            var _loc_2:* = SkillProxy(facade.retrieveProxy(SkillProxy.NAME));
            if (_loc_2.tooyumi(param1))
            {
                if (param1.weapon && param1.weapon.weaponType == WeaponVO.WEAPON_TYPE_BOW)
                {
                    param1.weapon.rangeOffset = 1;
                }
                if (param1.subWeapon && param1.subWeapon.weaponType == WeaponVO.WEAPON_TYPE_BOW)
                {
                    param1.subWeapon.rangeOffset = 1;
                }
            }
            return;
        }// end function

        public function resetRangeOffset(param1:UnitVO) : void
        {
            if (param1.weapon)
            {
                param1.weapon.rangeOffset = 0;
            }
            if (param1.subWeapon)
            {
                param1.subWeapon.rangeOffset = 0;
            }
            return;
        }// end function

        public function levelUpUnit(param1:UnitVO, param2:String, param3:int = 0, param4:int = 0) : void
        {
            var unit:* = param1;
            var eventName:* = param2;
            var skillId:* = param3;
            var oldSkillId:* = param4;
            var params:Object;
            if (skillId)
            {
                params.new_skill_id = skillId;
                if (oldSkillId)
                {
                    params.old_skill_id = oldSkillId;
                }
            }
            var json:* = JSON.encode(params);
            loadWithJson("/api/units/" + unit.unitId + "/levelup", eventName, eventName + "ERROR", function () : void
            {
                return;
            }// end function
            , json);
            return;
        }// end function

        public function chargeRecovery(param1:int, param2:String = "UnitPeoxy/notes/chargeRecoveryComplete") : void
        {
            var params:Object;
            var unitId:* = param1;
            var eventName:* = param2;
            params;
            var json:* = JSON.encode(params);
            loadWithJson("/api/homes/charge_recovery", eventName, CHARGE_RECOVERY_ERROR, function () : Object
            {
                return params;
            }// end function
            , json);
            return;
        }// end function

        public function learnSkill(param1:int, param2:int, param3:String = "UnitPeoxy/notes/learnSkillComplete", param4:int = 0) : void
        {
            var params:Object;
            var unitId:* = param1;
            var skillId:* = param2;
            var eventName:* = param3;
            var oldSkillId:* = param4;
            params;
            var json:* = JSON.encode(params);
            loadWithJson("/api/units/learn_skill", eventName, LEARN_SKILL_ERROR, function () : Object
            {
                return params;
            }// end function
            , json);
            return;
        }// end function

        public function setEquipabilityById(param1:int, param2:Object) : void
        {
            _equipabilityById[param1] = param2;
            return;
        }// end function

        public function sortUnits(param1:Array) : void
        {
            var _loc_2:* = homeUnits.find("unitId", param1[0])[0];
            var _loc_3:* = homeUnits.find("unitId", param1[1])[0];
            var _loc_4:* = _loc_2.sortId;
            _loc_2.sortId = _loc_3.sortId;
            _loc_3.sortId = _loc_4;
            homeUnits.sortOn(["sortId", "unitId"], Array.NUMERIC);
            return;
        }// end function

        public function hayaashiCheck(param1:UnitVO) : void
        {
            var _loc_2:* = SkillProxy(facade.retrieveProxy(SkillProxy.NAME));
            if (_loc_2.hayaashi(param1))
            {
                (param1.moveRange + 1);
            }
            return;
        }// end function

        public function get unitsForReinforcement() : Array
        {
            return homeUnits.filter(function (param1:UnitVO, param2:int, param3:Array) : Boolean
            {
                return (param1.status == UnitVO.STATUS_WAITING || param1.status == UnitVO.STATUS_GUILD) && param1.age >= 12 && param1.lordFlag == false;
            }// end function
            );
        }// end function

        public function getEquipabilityById(param1:int) : Object
        {
            return _equipabilityById[param1];
        }// end function

        private function variationHp(param1:UnitVO, param2:int) : void
        {
            param1.hp = param1.hp + param2;
            if (param1.hp > param1.realMaxHp)
            {
                param1.hp = param1.realMaxHp;
            }
            if (param1.hp < 0)
            {
                param1.hp = 0;
            }
            return;
        }// end function

        public function reunion(param1:int, param2:String = "UnitPeoxy/notes/reunionComplete", param3:Boolean = false) : void
        {
            var params:Object;
            var unitId:* = param1;
            var eventName:* = param2;
            var bloodReunion:* = param3;
            params;
            var json:* = JSON.encode(params);
            var api:* = bloodReunion ? ("/api/homes/blood_inheritance_reunion") : ("/api/homes/reunion");
            loadWithJson(api, eventName, REUNION_ERROR, function () : Object
            {
                return params;
            }// end function
            , json);
            return;
        }// end function

        public function resetAllAbnormalState(param1:UnitVO) : void
        {
            var _loc_2:int = 0;
            if (param1.buffs.length)
            {
                _loc_2 = 0;
                while (_loc_2 < param1.buffs.length)
                {
                    
                    if (param1.buffs[_loc_2].dispell)
                    {
                        param1.buffs.splice(_loc_2, 1);
                        continue;
                    }
                    _loc_2++;
                }
            }
            return;
        }// end function

        public function setAbnormalMahi(param1:UnitVO, param2:UnitVO, param3:AttackVO) : void
        {
            var _loc_5:bufferVO = null;
            var _loc_4:* = SkillProxy(facade.retrieveProxy(SkillProxy.NAME));
            _loc_5 = new bufferVO(UnitVO.ABNORMAL_NAME_MAHI, 0, (1 + 1), true);
            param2.buffs.push(_loc_5);
            param3.skillEffects.attack = _loc_4.getSkillLevelName(param1, SkillVO.MAHI);
            return;
        }// end function

        public function allUnitRecovery(param1:String = "UnitPeoxy/notes/allUnitRecoveryComplete") : void
        {
            var eventName:* = param1;
            loadWithJson("/api/units/all_recovery", eventName, ALL_UNIT_RECOVERY_ERROR, function (param1:Object) : Object
            {
                return param1;
            }// end function
            , "");
            return;
        }// end function

        private function timeRecovery(event:Event) : void
        {
            var _loc_2:UnitVO = null;
            for each (_loc_2 in _homeUnits)
            {
                
                (_loc_2.hp + 1);
            }
            sendNotification(RELOAD_HP_BAR_DRAW);
            return;
        }// end function

        public function get guildMamberUnits() : Array
        {
            return _guildMamberUnits;
        }// end function

        public function loadHomeUnits(param1:String = "UnitProxy/notes/homeUnitsLoaded") : void
        {
            var eventName:* = param1;
            load("/api/units", eventName, function (param1:Array) : void
            {
                var _loc_2:Object = null;
                var _loc_3:UnitVO = null;
                homeUnits = new Array();
                for each (_loc_2 in param1)
                {
                    
                    _loc_3 = unitFactory(_loc_2.unit);
                    homeUnits.push(_loc_3);
                }
                homeUnits.sortOn(["sortId", "unitId"], Array.NUMERIC);
                _recoveryTimer.stop();
                _recoveryTimer.reset();
                _recoveryTimer.start();
                if (!_recoveryTimer.hasEventListener(TimerEvent.TIMER))
                {
                    _recoveryTimer.addEventListener(TimerEvent.TIMER, timeRecovery);
                }
                return;
            }// end function
            );
            return;
        }// end function

        public function loadGuildMamberUnits(param1:int) : void
        {
            var playerId:* = param1;
            var json:* = JSON.encode({player_id:playerId});
            loadWithJson("/api/units/guild_members_units", GUILD_MAMBER_UNITS, GUILD_MAMBER_UNITS_ERROR, function (param1:Array) : Array
            {
                var _loc_2:Object = null;
                var _loc_3:UnitVO = null;
                _guildMamberUnits = new Array();
                for each (_loc_2 in param1)
                {
                    
                    _loc_3 = unitFactory(_loc_2.unit);
                    _guildMamberUnits.push(_loc_3);
                }
                return _guildMamberUnits;
            }// end function
            , json);
            return;
        }// end function

        private function getFactionSkillUnits2(param1:AttackVO) : Array
        {
            var attackVO:* = param1;
            var datumPoint:* = new Point(0, (attackVO.target.mapy - 1));
            var units:* = findAreaUnits(datumPoint, TacticsProxy.COLS, 3);
            return units.filter(function (param1:UnitVO, param2:int, param3:Array) : Boolean
            {
                return attackVO.attacker.team != param1.team;
            }// end function
            );
        }// end function

        public function set allUnits(param1:Array) : void
        {
            _allUnits = param1;
            return;
        }// end function

        public function get unitsForRitual() : Array
        {
            return homeUnits.filter(function (param1:UnitVO, param2:int, param3:Array) : Boolean
            {
                return param1.item && param1.item.isCrystal;
            }// end function
            );
        }// end function

        public function otherAllyUnitFactory(param1:Object) : UnitVO
        {
            var _loc_2:* = new UnitVO();
            _loc_2 = enemyUnitFactory(param1);
            _loc_2.team = 0;
            _loc_2.teamType = TEAM_TYPE_OTHER;
            return _loc_2;
        }// end function

        public function set homeUnits(param1:Array) : void
        {
            _homeUnits = param1;
            return;
        }// end function

        public function get homeWaitingUnits() : Array
        {
            return homeUnits.filter(function (param1:UnitVO, param2:int, param3:Array) : Boolean
            {
                return param1.status == UnitVO.STATUS_WAITING;
            }// end function
            );
        }// end function

        override public function onRegister() : void
        {
            return;
        }// end function

        public function face2Vibration(param1:UnitVO) : void
        {
            var timer:Timer;
            var unitVO:* = param1;
            timer = new Timer(33, 10);
            timer.addEventListener(TimerEvent.TIMER, function (event:TimerEvent) : void
            {
                if (timer.currentCount >= 10)
                {
                    unitVO.face2OffsetX = 0;
                    unitVO.face2OffsetY = 0;
                }
                else
                {
                    unitVO.face2OffsetX = Utils.xRandomInt(-4, 4);
                    unitVO.face2OffsetY = Utils.xRandomInt(-4, 4);
                }
                return;
            }// end function
            );
            timer.start();
            return;
        }// end function

        public function setAbnormalMoudoku(param1:UnitVO, param2:UnitVO, param3:AttackVO) : void
        {
            var _loc_5:bufferVO = null;
            var _loc_4:* = SkillProxy(facade.retrieveProxy(SkillProxy.NAME));
            _loc_5 = new bufferVO(UnitVO.ABNORMAL_NAME_MOUDOKU, 0, 5, true);
            param2.buffs.push(_loc_5);
            param3.skillEffects.attack = _loc_4.getSkillLevelName(param1, SkillVO.DOKU);
            return;
        }// end function

        public function set selectUnits(param1:Array) : void
        {
            _selectUnits = param1;
            return;
        }// end function

        public function buffsPassage(param1:UnitVO) : void
        {
            var _loc_2:int = 0;
            if (param1.buffs.length)
            {
                _loc_2 = 0;
                while (_loc_2 < param1.buffs.length)
                {
                    
                    var _loc_3:* = param1.buffs[_loc_2];
                    var _loc_4:* = param1.buffs[_loc_2].remaining - 1;
                    _loc_3.remaining = _loc_4;
                    switch(param1.buffs[_loc_2].type)
                    {
                        case "strength":
                        {
                            break;
                        }
                        case "defense":
                        {
                            break;
                        }
                        default:
                        {
                            break;
                            break;
                        }
                    }
                }
            }
            param1.displayAbnormal[UnitVO.ABNORMAL_DOKU] = param1.hasBuff(UnitVO.ABNORMAL_NAME_DOKU);
            param1.displayAbnormal[UnitVO.ABNORMAL_MOUDOKU] = param1.hasBuff(UnitVO.ABNORMAL_NAME_MOUDOKU);
            param1.displayAbnormal[UnitVO.ABNORMAL_KURAYAMI] = param1.hasBuff(UnitVO.ABNORMAL_NAME_KURAYAMI);
            param1.displayAbnormal[UnitVO.ABNORMAL_KAGENUI] = param1.hasBuff(UnitVO.ABNORMAL_NAME_KAGENUI);
            param1.displayAbnormal[UnitVO.ABNORMAL_JUBAKU] = param1.hasBuff(UnitVO.ABNORMAL_NAME_JUBAKU);
            param1.displayAbnormal[UnitVO.ABNORMAL_MAHI] = param1.hasBuff(UnitVO.ABNORMAL_NAME_MAHI);
            param1.displayAbnormal[UnitVO.ABNORMAL_KONRAN] = param1.hasBuff(UnitVO.ABNORMAL_NAME_KONRAN);
            param1.displayAbnormal[UnitVO.ABNORMAL_DATURYOKU] = param1.hasBuff(UnitVO.ABNORMAL_NAME_DATURYOKU);
            return;
        }// end function

        public function get recoveryTimer() : Timer
        {
            return _recoveryTimer;
        }// end function

        public function magic(param1:UnitVO, param2:UnitVO, param3:AttackVO) : int
        {
            var _loc_7:Boolean = false;
            var _loc_4:* = MagicProxy(facade.retrieveProxy(MagicProxy.NAME));
            var _loc_5:* = SkillProxy(facade.retrieveProxy(SkillProxy.NAME));
            var _loc_6:* = _loc_4.magic(param1, param2);
            if (_loc_5.magicShield(param2))
            {
                trace("スキル「術結界」発動　ダメージ軽減＝", param1.damage / 2);
                _loc_6 = _loc_6 - param1.damage / 2;
                if (_loc_6 < 0)
                {
                    _loc_6 = 0;
                }
                param3.skillEffects.attack = _loc_5.getSkillLevelName(param2, SkillVO.MAGIC_SHIELD);
            }
            if (_loc_5.jutsuMashi(param1))
            {
                _loc_6 = _loc_6 + int(param1.damage / 2);
                param3.skillEffects.attack = _loc_5.getSkillLevelName(param1, SkillVO.JUTSU_MASHI);
            }
            if (_loc_5.doubleMagic(param1))
            {
                param3.skillEffects.attack = _loc_5.getSkillLevelName(param1, SkillVO.DOUBLE_MAGIC);
                _loc_7 = isHit(param3);
                if (_loc_7)
                {
                    _loc_6 = _loc_6 + _loc_4.magic(param1, param2);
                }
            }
            if (_loc_5.kodamajutsu(param1))
            {
                param3.skillEffects.attack = _loc_5.getSkillLevelName(param1, SkillVO.KODAMAJUTSU);
                if (isHit(param3))
                {
                    trace("スキル「こだまの術」発動　ダメージ＝", _loc_6, "+", getMagicalDamage(param1, param2, 0.8));
                    _loc_6 = _loc_6 + getMagicalDamage(param1, param2, 0.8);
                }
            }
            return _loc_6;
        }// end function

        public function set sleepUnits(param1:Array) : void
        {
            _sleepUnits = param1;
            return;
        }// end function

        public function setFaceImage(param1:UnitVO, param2:String) : void
        {
            var unitVO:* = param1;
            var url:* = param2;
            unitVO.faceURLLoader.dataFormat = URLLoaderDataFormat.BINARY;
            unitVO.faceURLLoader.addEventListener(Event.COMPLETE, function (event:Event) : void
            {
                var e:* = event;
                var bytes:* = e.target.data;
                unitVO.faceLoader.contentLoaderInfo.addEventListener(Event.COMPLETE, function (event:Event) : void
                {
                    unitVO.faceUic.addChild(unitVO.faceLoader);
                    MovieClip(unitVO.faceLoader.content).gotoAndPlay("img_unit_status");
                    return;
                }// end function
                );
                unitVO.faceLoader.loadBytes(bytes);
                unitVO.face2Loader.contentLoaderInfo.addEventListener(Event.COMPLETE, function (event:Event) : void
                {
                    unitVO.face2Uic.addChild(unitVO.face2Loader);
                    MovieClip(unitVO.face2Loader.content).gotoAndPlay("img_unit_status");
                    return;
                }// end function
                );
                unitVO.face2Loader.loadBytes(bytes);
                return;
            }// end function
            );
            unitVO.faceURLLoader.load(new URLRequest(LoaderProxy.host + url + "?" + Viking.version));
            return;
        }// end function

        public function gainStrengthMoveCheck(param1:UnitVO) : void
        {
            param1.moveRange = param1.moveRange + SkillProxy.gainStrengthMoveRange(param1);
            return;
        }// end function

        public function setAbnormalKonran(param1:UnitVO, param2:UnitVO, param3:AttackVO) : void
        {
            var _loc_5:bufferVO = null;
            var _loc_4:* = SkillProxy(facade.retrieveProxy(SkillProxy.NAME));
            _loc_5 = new bufferVO(UnitVO.ABNORMAL_NAME_KONRAN, 0, (2 + 1), true);
            param2.buffs.push(_loc_5);
            param3.skillEffects.attack = _loc_4.getSkillLevelName(param1, SkillVO.KONRAN);
            return;
        }// end function

        public function updateHp(param1:UnitVO) : void
        {
            param1.displayHp = param1.hp;
            return;
        }// end function

        public function changeEquipment(param1:UnitVO, param2:String = "UnitProxy/notes/changeEquipment") : void
        {
            var unit:* = param1;
            var eventName:* = param2;
            var weapons:* = new Array();
            var armors:* = new Array();
            var accessories:* = new Array();
            var items:* = new Array();
            if (unit.weapons[0])
            {
                weapons.push(unit.weapon.weaponId);
            }
            if (unit.weapons[1])
            {
                weapons.push(unit.subWeapon.weaponId);
            }
            if (unit.armor)
            {
                armors.push(unit.armor.armorId);
            }
            if (unit.accessory)
            {
                accessories.push(unit.accessory.accessoryId);
            }
            if (unit.item)
            {
                items.push(unit.item.itemId);
            }
            var json:* = JSON.encode({weapons:weapons, armors:armors, accessories:accessories, items:items});
            loadWithJson("/api/units/" + unit.unitId + "/equip", eventName, CHANGE_EQUIPMENT_ERROR, function (param1:Object) : Object
            {
                return param1;
            }// end function
            , json);
            return;
        }// end function

        public function selectLevelUpUnit(param1:UnitVO) : void
        {
            var unit:* = param1;
            load("/api/units/" + unit.unitId + "/levelup", SELECT_LEVELUP_FINISH, function () : void
            {
                return;
            }// end function
            );
            return;
        }// end function

        public function unitLvCap(param1:UnitVO) : String
        {
            if (param1.level >= param1.jobMasterVO.levelCap)
            {
                return Utils.i18n("unitProxyLevelCap");
            }
            return null;
        }// end function

        public function setEquipabilityJobName(param1:Object) : void
        {
            var _loc_4:JobMasterVO = null;
            var _loc_5:Object = null;
            var _loc_6:Array = null;
            var _loc_7:Object = null;
            param1.equipabilityJobNameLabel = "";
            var _loc_2:* = MasterProxy(facade.retrieveProxy(MasterProxy.NAME));
            var _loc_3:* = new Array();
            for (_loc_5 in param1.equipabilities)
            {
                
                _loc_4 = JobMasterVO(_loc_2.getMasterVO(MasterProxy.JOB_MASTER, param1.equipabilities[_loc_5].job_id));
                _loc_7 = getEquipabilityById(param1.equipabilities[_loc_5].job_id);
                if (_loc_4)
                {
                    if (_loc_4.disabled == false)
                    {
                        _loc_3.push(_loc_4.code);
                        if (Number(_loc_4.code) < 1000)
                        {
                            if (!param1.equipabilityJobNameLabel)
                            {
                                param1.equipabilityJobNameLabel = _loc_4.nameLabel;
                                continue;
                            }
                            param1.equipabilityJobNameLabel = param1.equipabilityJobNameLabel + (", " + _loc_4.nameLabel);
                        }
                    }
                }
            }
            _loc_6 = _loc_2.getMasterAsArray(MasterProxy.JOB_MASTER);
            for each (_loc_4 in _loc_6)
            {
                
                if (_loc_4.disabled == false)
                {
                    if (_loc_3.indexOf(_loc_4.code) == -1)
                    {
                        return;
                    }
                }
            }
            param1.equipabilityJobNameLabel = Utils.i18n("unitProxyAllUnitCanEquip");
            return;
        }// end function

        public function get homeUnits() : Array
        {
            return _homeUnits;
        }// end function

        public function setAbnormalDaturyoku(param1:UnitVO, param2:UnitVO, param3:AttackVO) : void
        {
            var _loc_5:bufferVO = null;
            var _loc_4:* = SkillProxy(facade.retrieveProxy(SkillProxy.NAME));
            _loc_5 = new bufferVO(UnitVO.ABNORMAL_NAME_DATURYOKU, 0, (2 + 1), true);
            param2.buffs.push(_loc_5);
            param3.skillEffects.attack = _loc_4.getSkillLevelName(param1, SkillVO.DATURYOKU);
            return;
        }// end function

        public function get selectUnits() : Array
        {
            return _selectUnits;
        }// end function

        public function get sleepUnits() : Array
        {
            return _sleepUnits;
        }// end function

        public function get homeWaitingAdultUnits() : Array
        {
            return homeUnits.filter(function (param1:UnitVO, param2:int, param3:Array) : Boolean
            {
                return param1.status == UnitVO.STATUS_WAITING && param1.age >= 12;
            }// end function
            );
        }// end function

        public function set homeUnitLoadedBool(param1:Boolean) : void
        {
            _homeUnitLoadedBool = param1;
            return;
        }// end function

        public function unitFactory(param1:Object) : UnitVO
        {
            var skill:Object;
            var resourceProxy:ResourceProxy;
            var unit:* = param1;
            var u:* = new UnitVO();
            var masterProxy:* = MasterProxy(facade.retrieveProxy(MasterProxy.NAME));
            var skillProxy:* = SkillProxy(facade.retrieveProxy(SkillProxy.NAME));
            u.unitId = unit.id;
            u.playerId = unit.player_id;
            u.name = unit.name;
            u.lordFlag = unit.lord;
            var _loc_3:int = 0;
            var _loc_4:* = unit.unit_skills;
            while (_loc_4 in _loc_3)
            {
                
                skill = _loc_4[_loc_3];
                if (skill.skill_id)
                {
                    u.ownSkills.push(skillProxy.skills[skill.skill_id]);
                }
            }
            u.teamType = 0;
            u.teamType = TEAM_TYPE_NORMAL;
            u.jobChangePossibleFlag = unit["job_change_possible?"];
            u.jobMasterVO = JobMasterVO(masterProxy.getMasterVO(MasterProxy.JOB_MASTER, unit.job_id));
            u.status = unit.status;
            u.moveRange = u.jobMasterVO.moveRange;
            u.hit = unit.hit;
            u.defense = unit.defense;
            u.strength = unit.strength;
            u.tech = unit.tech;
            u.agility = unit.agility;
            u.intelligence = unit.intelligence;
            u.luck = unit.luck;
            u.age = unit.age;
            u.direction = UnitVO.DIRECTION_LEFT;
            u.maxHp = unit.max_hp;
            u.maxLp = unit.max_lp;
            u.lp = unit.lp;
            u.mapx = 0;
            u.mapy = 0;
            u.level = unit.level;
            u.avoidanceCorrectionRate = unit.avoidance_correction_rate;
            u.physicalDefenseCorrectionValue = unit.physical_defense_correction_value;
            u.magicalDefenseCorrectionValue = unit.magical_defense_correction_value;
            u.isNpc = unit.npc;
            u.down = unit.down;
            u.downExpiredAtLabel = unit.down_expired_at_label;
            u.imageKind = unit.image_kind;
            u.skillPoint = unit.skill_point;
            u.parentsCount = unit.parents_count;
            if (unit.gallery_code)
            {
                u.galleryCode = unit.gallery_code;
            }
            u.sortId = unit.sort_id;
            u.lockFlag = unit.under_lock;
            if (unit.exp > unit.next_exp)
            {
                u.exp = unit.next_exp;
            }
            else
            {
                u.exp = unit.exp;
            }
            u.nextExp = unit.next_exp;
            u.sacrificible = unit.sacrificible;
            if (unit.resource)
            {
                resourceProxy = ResourceProxy(facade.retrieveProxy(ResourceProxy.NAME));
                var _loc_3:* = unit.resource;
                with (unit.resource)
                {
                    if (unit.resource.weapons)
                    {
                        if (weapons[0])
                        {
                            u.weapon = resourceProxy.weaponFactory(weapons[0]);
                        }
                        if (weapons[1])
                        {
                            u.subWeapon = resourceProxy.weaponFactory(weapons[1]);
                        }
                    }
                    if (unit.resource.armors && armors[0])
                    {
                        u.armor = resourceProxy.armorFactory(armors[0]);
                    }
                    if (unit.resource.items && items[0])
                    {
                        u.item = resourceProxy.itemFactory(items[0]);
                    }
                    if (unit.resource.accessories && accessories[0])
                    {
                        u.accessory = resourceProxy.accessoryFactory(accessories[0]);
                    }
                }
            }
            u.hp = unit.real_hp;
            if (u.hp <= 0)
            {
                u.hp = 1;
            }
            u.displayHp = u.hp;
            var imageProxy:* = ImageProxy(facade.retrieveProxy(ImageProxy.NAME));
            if (unit.blood_image_url)
            {
                u.bloodImageUrl = unit.blood_image_url;
            }
            if (unit.image_url)
            {
                setFaceImage(u, unit.image_url);
            }
            if (skillProxy.bouguTsukuroi(u))
            {
            }
            else
            {
                count(u, COUNT_ARMOR);
            }
            hayaashiCheck(u);
            gainStrengthMoveCheck(u);
            tooyumiCheck(u);
            tooateCheck(u);
            return u;
        }// end function

        public function heal(param1:UnitVO, param2:UnitVO) : int
        {
            var _loc_3:* = HealProxy(facade.retrieveProxy(HealProxy.NAME));
            return _loc_3.heal(param1, param2);
        }// end function

        public function tooateCheck(param1:UnitVO) : void
        {
            var _loc_2:* = SkillProxy(facade.retrieveProxy(SkillProxy.NAME));
            if (_loc_2.tooate(param1))
            {
                if (param1.weapon && (param1.weapon.weaponType == WeaponVO.WEAPON_TYPE_MAGIC || param1.weapon.weaponType == WeaponVO.WEAPON_TYPE_HEAL))
                {
                    param1.weapon.rangeOffset = 1;
                }
                if (param1.subWeapon && (param1.subWeapon.weaponType == WeaponVO.WEAPON_TYPE_MAGIC || param1.subWeapon.weaponType == WeaponVO.WEAPON_TYPE_HEAL))
                {
                    param1.subWeapon.rangeOffset = 1;
                }
            }
            return;
        }// end function

        public function getHomeUnitById(param1:int) : UnitVO
        {
            var unitId:* = param1;
            return homeUnits.filter(function (param1:UnitVO, param2:int, param3:Array) : Boolean
            {
                return param1.unitId == unitId;
            }// end function
            ).shift();
        }// end function

        public function get homeUnitLoadedBool() : Boolean
        {
            return _homeUnitLoadedBool;
        }// end function

        private function getActionSpearTarget(param1:AttackVO) : UnitVO
        {
            var _loc_2:* = BattleLogicProxy(facade.retrieveProxy(BattleLogicProxy.NAME));
            var _loc_3:* = new Point();
            switch(Utils.getDirection(param1.attacker.position, param1.target.position))
            {
                case UnitVO.DIRECTION_UP:
                {
                    _loc_3.x = param1.attacker.mapx;
                    _loc_3.y = param1.attacker.mapy - (param1.target.mapy == (param1.attacker.mapy - 1) ? (2) : (1));
                    break;
                }
                case UnitVO.DIRECTION_RIGHT:
                {
                    _loc_3.x = param1.attacker.mapx + (param1.target.mapx == (param1.attacker.mapx + 1) ? (2) : (1));
                    _loc_3.y = param1.attacker.mapy;
                    break;
                }
                case UnitVO.DIRECTION_DOWN:
                {
                    _loc_3.x = param1.attacker.mapx;
                    _loc_3.y = param1.attacker.mapy + (param1.target.mapy == (param1.attacker.mapy + 1) ? (2) : (1));
                    break;
                }
                case UnitVO.DIRECTION_LEFT:
                {
                    _loc_3.x = param1.attacker.mapx - (param1.target.mapx == (param1.attacker.mapx - 1) ? (2) : (1));
                    _loc_3.y = param1.attacker.mapy;
                    break;
                }
                default:
                {
                    break;
                }
            }
            var _loc_4:* = _loc_2.getUnitAt(_loc_3);
            if (_loc_2.getUnitAt(_loc_3) && !_loc_4.isDead)
            {
                return _loc_4;
            }
            return null;
        }// end function

        public function checkAbnormalDamage(param1:UnitVO) : void
        {
            var _loc_2:int = 0;
            if (param1.hasBuff(UnitVO.ABNORMAL_NAME_MOUDOKU))
            {
                _loc_2 = param1.maxHp * 0.2;
            }
            else if (param1.hasBuff(UnitVO.ABNORMAL_NAME_DOKU))
            {
                _loc_2 = param1.maxHp * 0.1;
            }
            if (param1.hp > 1 && _loc_2)
            {
                if (param1.hp - _loc_2 <= 0)
                {
                    _loc_2 = param1.hp - 1;
                }
                param1.hp = param1.hp - _loc_2;
                sendNotification(BaseBattleLogicProxy.ENQUEUE_ORDER, new OrderVO(new DamagePopVO(param1, _loc_2)));
            }
            return;
        }// end function

        public static function getPhysicalDamage(param1:UnitVO, param2:UnitVO) : int
        {
            var _loc_3:* = param1.baseDamage - param2.baseDefense;
            return _loc_3 < 0 ? (0) : (_loc_3);
        }// end function

        public static function unitRevisePoint(param1:UnitVO, param2:Point) : Point
        {
            param2.x = param2.x - 3;
            param2.y = param2.y - 45;
            return param2;
        }// end function

        public static function getMagicSwordDamage(param1:UnitVO, param2:UnitVO) : int
        {
            var _loc_3:* = Math.max(getPhysicalDamage(param1, param2), getMagicalDamage(param1, param2));
            return _loc_3;
        }// end function

        public static function getDamage(param1:UnitVO, param2:UnitVO, param3:Boolean = false) : int
        {
            if (param3)
            {
                return getMagicSwordDamage(param1, param2);
            }
            if (param1.weaponType == WeaponVO.WEAPON_TYPE_HEAL || param1.weaponType == WeaponVO.WEAPON_TYPE_MAGIC)
            {
                return getMagicalDamage(param1, param2);
            }
            return getPhysicalDamage(param1, param2);
        }// end function

        public static function weaponAdvantage(param1:UnitVO, param2:UnitVO) : int
        {
            var _loc_3:Array = null;
            for each (_loc_3 in ADVANTAGE_PAIRS)
            {
                
                if (param1.weaponType == _loc_3[0] && param2.weaponType == _loc_3[1])
                {
                    return UnitVO.WEAPON_ADVANTAGE;
                }
            }
            return 0;
        }// end function

        public static function getMagicalDamage(param1:UnitVO, param2:UnitVO, param3:Number = 1) : int
        {
            var _loc_4:* = param1.baseMagicalDamage * param3 - param2.baseMagicalDefense;
            return param1.baseMagicalDamage * param3 - param2.baseMagicalDefense < 0 && param1.weaponType != WeaponVO.WEAPON_TYPE_HEAL ? (0) : (_loc_4);
        }// end function

        public static function getSwallowConterDamage(param1:UnitVO, param2:UnitVO, param3:Boolean = false) : int
        {
            var _loc_4:* = param1.baseDamage * 0.8 - param2.baseDefense;
            if (param3)
            {
                _loc_4 = Math.max(_loc_4, getMagicalDamage(param1, param2, 0.8));
            }
            return _loc_4 < 0 ? (0) : (_loc_4);
        }// end function

        public static function findAttackArea(param1:UnitVO) : Array
        {
            return Utils.findAttackArea(param1, param1.position, param1.attackRange);
        }// end function

        public static function getBackSideHitRateOffset(param1:UnitVO, param2:UnitVO, param3:int) : int
        {
            if (param1.weaponType == WeaponVO.WEAPON_TYPE_MAGIC)
            {
                return 0;
            }
            switch(getAttackerDirectioin(param1, param2, param3))
            {
                case 1:
                case 3:
                {
                    return 10;
                }
                case 2:
                {
                    return 20;
                }
                default:
                {
                    return 0;
                    break;
                }
            }
        }// end function

        private static function isBackHit(param1:UnitVO, param2:UnitVO) : Boolean
        {
            return param1.weaponType != WeaponVO.WEAPON_TYPE_MAGIC && Utils.isBackHit(param1.position, param2.position, param2.direction);
        }// end function

        public static function canPhysicalAttack(param1:UnitVO, param2:UnitVO) : Boolean
        {
            var _loc_3:int = 0;
            if (param1.canAttack == false)
            {
                return false;
            }
            if (param1.weapon.weaponType == WeaponVO.WEAPON_TYPE_SPEAR)
            {
                if (param2.mapx != param1.mapx && param2.mapy != param1.mapy)
                {
                    return false;
                }
                _loc_3 = 2;
            }
            else
            {
                _loc_3 = 1;
            }
            return Math.abs(param2.mapx - param1.mapx) + Math.abs(param2.mapy - param1.mapy) <= _loc_3;
        }// end function

        public static function canCounerRange(param1:UnitVO, param2:UnitVO) : Boolean
        {
            if (param1.canAttack == false)
            {
                return false;
            }
            var _loc_3:* = param1.weapon.attackRange;
            return Math.abs(param2.mapx - param1.mapx) + Math.abs(param2.mapy - param1.mapy) <= _loc_3;
        }// end function

        public static function getAttackerDirectioin(param1:UnitVO, param2:UnitVO, param3:int) : int
        {
            var _loc_4:Array = [[0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0], [3, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1], [3, 3, 0, 0, 0, 0, 0, 0, 0, 1, 1], [3, 3, 3, 0, 0, 0, 0, 0, 1, 1, 1], [3, 3, 3, 3, 0, 0, 0, 1, 1, 1, 1], [3, 3, 3, 3, 3, 0, 1, 1, 1, 1, 1], [3, 3, 3, 3, 3, 2, 1, 1, 1, 1, 1], [3, 3, 3, 3, 2, 2, 2, 1, 1, 1, 1], [3, 3, 3, 2, 2, 2, 2, 2, 1, 1, 1], [3, 3, 2, 2, 2, 2, 2, 2, 2, 1, 1], [3, 2, 2, 2, 2, 2, 2, 2, 2, 2, 1]];
            if (Math.abs(param1.mapx - param2.mapx) > 5 || Math.abs(param1.mapy - param2.mapy) > 5)
            {
                return 2;
            }
            switch(param3)
            {
                case 0:
                {
                    return _loc_4[5 + (param1.mapy - param2.mapy)][5 + (param1.mapx - param2.mapx)];
                }
                case 1:
                {
                    return _loc_4[5 - (param1.mapx - param2.mapx)][5 + (param1.mapy - param2.mapy)];
                }
                case 2:
                {
                    return _loc_4[5 - (param1.mapy - param2.mapy)][5 - (param1.mapx - param2.mapx)];
                }
                case 3:
                {
                    return _loc_4[5 + (param1.mapx - param2.mapx)][5 - (param1.mapy - param2.mapy)];
                }
                default:
                {
                    return 2;
                    break;
                }
            }
        }// end function

    }
}
