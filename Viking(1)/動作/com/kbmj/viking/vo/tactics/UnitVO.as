package com.kbmj.viking.vo.tactics
{
    import com.kbmj.viking.lib.*;
    import com.kbmj.viking.proxy.*;
    import com.kbmj.viking.proxy.tactics.*;
    import com.kbmj.viking.vo.*;
    import com.kbmj.viking.vo.tactics.*;
    import flash.display.*;
    import flash.events.*;
    import flash.geom.*;
    import flash.net.*;
    import mx.core.*;
    import mx.events.*;

    public class UnitVO extends Object implements ITacticsMapObject, IEventDispatcher
    {
        private var _oldmapx:int;
        private var _oldmapy:int;
        private var _count:Object;
        private var _equipmentBufferVO:EquipmentBufferVO;
        private var _physicalDefenseCorrectionValue:int;
        private var _kill:Array;
        private var _age:int = 0;
        private var _armor:ArmorVO;
        private var _589716220effectLoader:Loader = null;
        private var _baseMagicalDefense:int = 0;
        private var _isNpc:Boolean;
        private var _defense_add:int = 0;
        private var _1010912528face2OffsetX:int = 0;
        private var _baseDefense:int = 0;
        private var _delay:int;
        private var _sortId:int;
        private var _maxHp:int = 0;
        private var _luck:int = 0;
        private var _lockFlag:Boolean;
        private var _weapons:Array;
        private var _teamType:int;
        private var _intelligence:int = 0;
        private var _ai:AiVO;
        private var _nextExp:int = 0;
        private var _canLevelUp:Boolean = false;
        private var _attackBonus:int = 0;
        private var _avoidance_rate_add:int = 0;
        private var _defense:int = 0;
        private var _maxLp:int = 0;
        private var _status:int;
        private var _activeFlag:Boolean = false;
        private var _loader:Loader;
        private var _playerId:int;
        private var _baseHitRate:int = 0;
        private var _transitionalMapx:int;
        private var _transitionalMapy:int;
        private var _exp:int = 0;
        private var _lordFlag:Boolean;
        private var _skills:Array;
        private var _buffs:Array;
        private var _down:Boolean;
        private var _accessory:AccessoryVO;
        private var _strength:int = 0;
        private var _olddestination:Point;
        private var _hp:int = 0;
        private var _jobMasterVO:JobMasterVO;
        private var _face_url_loader:URLLoader;
        private var _hit_rate_add:int = 0;
        private var _495675034face2Uic:UIComponent;
        private var _ownSkills:Array;
        private var _1010912527face2OffsetY:int = 0;
        private var _direction:int = 3;
        private var _hate:int;
        private var _imageKind:String;
        private var _lp:int = 0;
        private var _blood_image_url:String;
        private var _destination:Point;
        private var _baseMagicalDamage:int = 0;
        private var _moveRange:int = 0;
        private var _face_loader:Loader;
        private var _level:int = 0;
        private var _1092354894faceUic:UIComponent;
        private var _animeQueue:Array;
        private var _galleryCode:String;
        private var _playerName:String;
        private var _bindingEventDispatcher:EventDispatcher;
        private var _hit:Boolean;
        private var _unitId:int;
        private var _subWeapon:WeaponVO;
        private var _agility:int = 0;
        private var _magicalDefenseCorrectionValue:int;
        private var _dead_finish:Boolean = false;
        private var _olddirection:int = 3;
        private var _2020955744damageUic:UIComponent;
        private var _team:int;
        private var _baseDamage:int = 0;
        private var _1615394131alertUic:UIComponent;
        private var _skillPoint:int = 0;
        private var _parentsCount:int = 0;
        private var _390006570displayAbnormal:Array;
        private var _name:String = "";
        private var _tech:int = 0;
        private var _mapx:int;
        private var _mapy:int;
        private var _downExpiredAtLabel:String;
        private var _avoidanceCorrectionRate:Number;
        private var _defenceBonus:int = 0;
        private var _uic:UIComponent;
        private var _baseAvoid:int = 0;
        private var _isAI:Boolean = false;
        private var _1468670722effectUic:UIComponent;
        private var _baseResist:int = 0;
        private var _1174619409uicRemoved:Boolean = false;
        private var _offense_add:int = 0;
        private var _gender:int = 0;
        private var _sacrificible:Boolean = false;
        private var _jobChangePossibleFlag:Boolean;
        private var _displayHp:int = 0;
        private var _item:ItemVO;
        private var _equippedWeapon:WeaponVO;
        private var _face2_loader:Loader;
        private static const UNIT_SYUTENDOUJI:int = 1101;
        public static const DIRECTION_UP:int = 0;
        private static const UNIT_GENBU:int = 1105;
        public static const DIRECTION_DOWN:int = 2;
        public static const GENDER_FEMALE:int = 1;
        public static const ABNORMAL_JUBAKU:int = 4;
        private static const UNIT_BYAKKO:int = 1104;
        public static const ABNORMAL_NAME_KAGENUI:String = "Kagenui";
        public static const ABNORMAL_NAME_MOUDOKU:String = "Moudoku";
        public static const ABNORMAL_NAME_MAHI:String = "Mahi";
        private static const UNIT_FACTION_BOSSES:Array = [UNIT_SEIRYU, UNIT_SUZAKU, UNIT_BYAKKO, UNIT_GENBU];
        public static const ABNORMAL_NAME_KONRAN:String = "Konran";
        public static const DIRECTION_RIGHT:int = 1;
        public static const ABNORMAL_DATURYOKU:int = 7;
        public static const WEAPON_ADVANTAGE:int = 15;
        public static const STATUS_RAIDING:int = 3;
        public static const ABNORMAL_MAHI:int = 5;
        public static const ABNORMAL_MOUDOKU:int = 1;
        public static const ABNORMAL_NAME_DOKU:String = "Doku";
        public static const ABNORMAL_KONRAN:int = 6;
        private static const UNIT_HUGE_BOSSES:Array = [UNIT_SYUTENDOUJI, UNIT_SEIRYU, UNIT_SUZAKU, UNIT_BYAKKO, UNIT_GENBU, UNIT_TAMAMO];
        public static const ABNORMAL_KAGENUI:int = 3;
        public static const STATUS_ACTIVITY:int = 1;
        private static const UNIT_TAMAMO:int = 1106;
        public static const ABNORMAL_NAME_KURAYAMI:String = "Kurayami";
        public static const STATUS_GUILD:int = 6;
        public static const ADULT_AGE:int = 12;
        public static const GENDER_MALE:int = 0;
        public static const ABNORMAL_DOKU:int = 0;
        private static const UNIT_SUZAKU:int = 1103;
        public static const ABNORMAL_KURAYAMI:int = 2;
        public static const STATUS_WAITING:int = 0;
        public static const DIRECTION_LEFT:int = 3;
        public static const STATUS_EXPEDITION:int = 2;
        public static const ABNORMAL_NUM:int = 8;
        public static const ABNORMAL_NAME_JUBAKU:String = "Jubaku";
        private static const UNIT_SEIRYU:int = 1102;
        public static const STATUS_HOUSE:int = 4;
        public static const ABILITY_ADJUSTMENT_THREASHOLD:int = 20;
        public static const ABNORMAL_NAME_DATURYOKU:String = "Daturyoku";
        public static const STATUS_FORT:int = 5;

        public function UnitVO()
        {
            _390006570displayAbnormal = new Array(UnitVO.ABNORMAL_NUM);
            _buffs = new Array();
            _kill = new Array();
            _count = new Object();
            _ownSkills = new Array();
            _skills = new Array();
            _hate = new int(0);
            _equipmentBufferVO = new EquipmentBufferVO();
            _weapons = new Array();
            _loader = new Loader();
            _face_url_loader = new URLLoader();
            _face_loader = new Loader();
            _face2_loader = new Loader();
            _uic = new UIComponent();
            _1092354894faceUic = new UIComponent();
            _495675034face2Uic = new UIComponent();
            _1468670722effectUic = new UIComponent();
            _2020955744damageUic = new UIComponent();
            _1615394131alertUic = new UIComponent();
            _bindingEventDispatcher = new EventDispatcher(IEventDispatcher(this));
            return;
        }// end function

        public function get lordFlag() : Boolean
        {
            return _lordFlag;
        }// end function

        public function set lordFlag(param1:Boolean) : void
        {
            var _loc_2:* = this.lordFlag;
            if (_loc_2 !== param1)
            {
                this._1963083775lordFlag = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "lordFlag", _loc_2, param1));
            }
            return;
        }// end function

        private function set _3195178hate(param1:int) : void
        {
            _hate = param1;
            return;
        }// end function

        public function get canCounter() : Boolean
        {
            return weaponType != WeaponVO.WEAPON_TYPE_MAGIC && weaponType != WeaponVO.WEAPON_TYPE_HEAL && weaponType != WeaponVO.WEAPON_TYPE_BOW && canAttack;
        }// end function

        public function set realStrength(param1:int) : void
        {
            var _loc_2:* = this.realStrength;
            if (_loc_2 !== param1)
            {
                this._1230467073realStrength = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "realStrength", _loc_2, param1));
            }
            return;
        }// end function

        public function get destination() : Point
        {
            return _destination;
        }// end function

        public function get physicalDefenseCorrectionValue() : int
        {
            return _physicalDefenseCorrectionValue;
        }// end function

        public function get loader() : Loader
        {
            return _loader;
        }// end function

        public function get status() : int
        {
            return _status;
        }// end function

        public function set maxLp(param1:int) : void
        {
            var _loc_2:* = this.maxLp;
            if (_loc_2 !== param1)
            {
                this._103671304maxLp = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "maxLp", _loc_2, param1));
            }
            return;
        }// end function

        public function set physicalDefenseCorrectionValue(param1:int) : void
        {
            var _loc_2:* = this.physicalDefenseCorrectionValue;
            if (_loc_2 !== param1)
            {
                this._316305398physicalDefenseCorrectionValue = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "physicalDefenseCorrectionValue", _loc_2, param1));
            }
            return;
        }// end function

        public function set destination(param1:Point) : void
        {
            var _loc_2:* = this.destination;
            if (_loc_2 !== param1)
            {
                this._1429847026destination = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "destination", _loc_2, param1));
            }
            return;
        }// end function

        private function set _103315hit(param1:Boolean) : void
        {
            _hit = param1;
            return;
        }// end function

        public function get adjustedTech() : int
        {
            return adjustedAbility(realTech);
        }// end function

        public function set loader(param1:Loader) : void
        {
            var _loc_2:* = this.loader;
            if (_loc_2 !== param1)
            {
                this._1097519085loader = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "loader", _loc_2, param1));
            }
            return;
        }// end function

        private function set _1791316033strength(param1:int) : void
        {
            _strength = param1;
            return;
        }// end function

        public function set deadFinish(param1:Boolean) : void
        {
            var _loc_2:* = this.deadFinish;
            if (_loc_2 !== param1)
            {
                this._1868536343deadFinish = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "deadFinish", _loc_2, param1));
            }
            return;
        }// end function

        public function get ai() : AiVO
        {
            return _ai;
        }// end function

        public function set weapon(param1:WeaponVO) : void
        {
            var _loc_2:* = this.weapon;
            if (_loc_2 !== param1)
            {
                this._791821796weapon = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "weapon", _loc_2, param1));
            }
            return;
        }// end function

        public function set sacrificible(param1:Boolean) : void
        {
            var _loc_2:* = this.sacrificible;
            if (_loc_2 !== param1)
            {
                this._969056762sacrificible = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "sacrificible", _loc_2, param1));
            }
            return;
        }// end function

        public function set exp(param1:int) : void
        {
            var _loc_2:* = this.exp;
            if (_loc_2 !== param1)
            {
                this._100893exp = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "exp", _loc_2, param1));
            }
            return;
        }// end function

        private function set _1593533887skillPoint(param1:int) : void
        {
            _skillPoint = param1;
            return;
        }// end function

        public function get strength() : int
        {
            return _strength;
        }// end function

        public function get skills() : Array
        {
            var _loc_2:BaseBelongingVO = null;
            var _loc_3:SkillVO = null;
            var _loc_1:* = ownSkills.concat();
            for each (_loc_2 in [weapon, armor, accessory])
            {
                
                if (_loc_2 && _loc_2.skill)
                {
                    _loc_3 = SkillProxy.getSkillOfSameType(ownSkills, _loc_2.skill);
                    if (!_loc_3 || _loc_2.skill.level > _loc_3.level)
                    {
                        _loc_1.push(_loc_2.skill);
                        if (_loc_3)
                        {
                            _loc_1.splice(_loc_1.indexOf(_loc_3), 1);
                        }
                    }
                }
            }
            return _loc_1;
        }// end function

        public function get hugeBossFlag() : Boolean
        {
            if (UNIT_HUGE_BOSSES.indexOf(Number(jobMasterVO.code)) >= 0)
            {
                return true;
            }
            return false;
        }// end function

        public function get agility() : int
        {
            return _agility;
        }// end function

        private function set _1378662076oldmapy(param1:int) : void
        {
            _oldmapy = param1;
            return;
        }// end function

        public function get avoidance() : int
        {
            return (armor ? (armor.avoidance) : (0)) + equipmentBufferVO.avoid;
        }// end function

        private function set _692523337attackBonus(param1:int) : void
        {
            _attackBonus = param1;
            return;
        }// end function

        private function set _1847049770nextExp(param1:int) : void
        {
            _nextExp = param1;
            return;
        }// end function

        private function set _3336hp(param1:int) : void
        {
            _hp = param1;
            if (_hp > realMaxHp)
            {
                _hp = realMaxHp;
            }
            return;
        }// end function

        public function get uic() : UIComponent
        {
            return _uic;
        }// end function

        public function set ai(param1:AiVO) : void
        {
            var _loc_2:* = this.ai;
            if (_loc_2 !== param1)
            {
                this._3112ai = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "ai", _loc_2, param1));
            }
            return;
        }// end function

        private function set _1544916544defense(param1:int) : void
        {
            _defense = param1;
            return;
        }// end function

        public function set defense_add(param1:int) : void
        {
            var _loc_2:* = this.defense_add;
            if (_loc_2 !== param1)
            {
                this._508630562defense_add = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "defense_add", _loc_2, param1));
            }
            return;
        }// end function

        private function set _275585779maskedHp(param1:String) : void
        {
            return;
        }// end function

        private function set _983304071olddestination(param1:Point) : void
        {
            _olddestination = param1;
            return;
        }// end function

        public function isWeaponType(param1:int) : Boolean
        {
            return weapon ? (weaponType == param1) : (false);
        }// end function

        public function set baseDefense(param1:int) : void
        {
            var _loc_2:* = this.baseDefense;
            if (_loc_2 !== param1)
            {
                this._448593361baseDefense = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "baseDefense", _loc_2, param1));
            }
            return;
        }// end function

        public function get galleryCode() : String
        {
            return _galleryCode;
        }// end function

        private function set _103671304maxLp(param1:int) : void
        {
            _maxLp = param1;
            return;
        }// end function

        public function set bloodImageUrl(param1:String) : void
        {
            var _loc_2:* = this.bloodImageUrl;
            if (_loc_2 !== param1)
            {
                this._1015746002bloodImageUrl = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "bloodImageUrl", _loc_2, param1));
            }
            return;
        }// end function

        private function getReducedAbilityByBuff(param1:int) : int
        {
            return param1 * (hasBuff(ABNORMAL_NAME_DATURYOKU) ? (0.8) : (1));
        }// end function

        private function set _901583218realMaxHp(param1:int) : void
        {
            return;
        }// end function

        private function set _1251024313baseMagicalDefense(param1:int) : void
        {
            return;
        }// end function

        private function set _1002188036transitionalMapx(param1:int) : void
        {
            _transitionalMapx = param1;
            return;
        }// end function

        private function set _1332644445avoidance_rate_add(param1:int) : void
        {
            _avoidance_rate_add = param1;
            return;
        }// end function

        public function set nextExp(param1:int) : void
        {
            var _loc_2:* = this.nextExp;
            if (_loc_2 !== param1)
            {
                this._1847049770nextExp = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "nextExp", _loc_2, param1));
            }
            return;
        }// end function

        public function set strength(param1:int) : void
        {
            var _loc_2:* = this.strength;
            if (_loc_2 !== param1)
            {
                this._1791316033strength = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "strength", _loc_2, param1));
            }
            return;
        }// end function

        private function set _1002188035transitionalMapy(param1:int) : void
        {
            _transitionalMapy = param1;
            return;
        }// end function

        public function get faceURLLoader() : URLLoader
        {
            return _face_url_loader;
        }// end function

        public function get magicalDefense() : int
        {
            return (armor ? (armor.magicalDefense) : (0)) + equipmentBufferVO.magicalDefense;
        }// end function

        public function set agility(param1:int) : void
        {
            var _loc_2:* = this.agility;
            if (_loc_2 !== param1)
            {
                this._1057361851agility = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "agility", _loc_2, param1));
            }
            return;
        }// end function

        public function get subWeapon() : WeaponVO
        {
            return _weapons[1];
        }// end function

        public function set hugeBossFlag(param1:Boolean) : void
        {
            var _loc_2:* = this.hugeBossFlag;
            if (_loc_2 !== param1)
            {
                this._2010235972hugeBossFlag = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "hugeBossFlag", _loc_2, param1));
            }
            return;
        }// end function

        public function get zIndex() : int
        {
            return TacticsProxy.COLS - transitionalMapx + transitionalMapy;
        }// end function

        public function get down() : Boolean
        {
            return _down;
        }// end function

        private function set _1230467073realStrength(param1:int) : void
        {
            return;
        }// end function

        private function set _1223328215weapons(param1:Array) : void
        {
            _weapons = param1;
            return;
        }// end function

        public function get genderLabel() : String
        {
            return gender == 0 ? ("男性") : ("女性");
        }// end function

        public function get isDead() : Boolean
        {
            return hp <= 0;
        }// end function

        public function set uic(param1:UIComponent) : void
        {
            var _loc_2:* = this.uic;
            if (_loc_2 !== param1)
            {
                this._115791uic = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "uic", _loc_2, param1));
            }
            return;
        }// end function

        public function get faceUic() : UIComponent
        {
            return this._1092354894faceUic;
        }// end function

        public function set avoidance_rate_add(param1:int) : void
        {
            var _loc_2:* = this.avoidance_rate_add;
            if (_loc_2 !== param1)
            {
                this._1332644445avoidance_rate_add = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "avoidance_rate_add", _loc_2, param1));
            }
            return;
        }// end function

        public function set galleryCode(param1:String) : void
        {
            var _loc_2:* = this.galleryCode;
            if (_loc_2 !== param1)
            {
                this._2145165407galleryCode = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "galleryCode", _loc_2, param1));
            }
            return;
        }// end function

        public function set damageUic(param1:UIComponent) : void
        {
            var _loc_2:* = this._2020955744damageUic;
            if (_loc_2 !== param1)
            {
                this._2020955744damageUic = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "damageUic", _loc_2, param1));
            }
            return;
        }// end function

        public function set team(param1:int) : void
        {
            var _loc_2:* = this.team;
            if (_loc_2 !== param1)
            {
                this._3555933team = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "team", _loc_2, param1));
            }
            return;
        }// end function

        public function get realAgility() : int
        {
            return agility + equipmentBufferVO.agility;
        }// end function

        public function get faceLoader() : Loader
        {
            return _face_loader;
        }// end function

        public function set defense(param1:int) : void
        {
            var _loc_2:* = this.defense;
            if (_loc_2 !== param1)
            {
                this._1544916544defense = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "defense", _loc_2, param1));
            }
            return;
        }// end function

        public function get baseMagicalDamage() : int
        {
            return damage + adjustedIntelligence + offense_add + attackBonus;
        }// end function

        private function set _3242771item(param1:ItemVO) : void
        {
            _item = param1;
            return;
        }// end function

        public function get downExpiredAtLabel() : String
        {
            return _downExpiredAtLabel;
        }// end function

        private function set _840527425unitId(param1:int) : void
        {
            _unitId = param1;
            return;
        }// end function

        protected function adjustedAbility(param1:int, param2:int = 2) : int
        {
            return param1;
        }// end function

        private function set _797998783intelligence(param1:int) : void
        {
            _intelligence = param1;
            return;
        }// end function

        private function set _247593322displayHp(param1:int) : void
        {
            _displayHp = param1;
            return;
        }// end function

        private function set _3240658isAI(param1:Boolean) : void
        {
            _isAI = param1;
            return;
        }// end function

        public function set realLuck(param1:int) : void
        {
            var _loc_2:* = this.realLuck;
            if (_loc_2 !== param1)
            {
                this._860378513realLuck = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "realLuck", _loc_2, param1));
            }
            return;
        }// end function

        public function hasEventListener(param1:String) : Boolean
        {
            return _bindingEventDispatcher.hasEventListener(param1);
        }// end function

        public function get attackRadius() : int
        {
            return weapon ? (weapon.attackRadius) : (1);
        }// end function

        public function get animeQueue() : Array
        {
            return _animeQueue;
        }// end function

        public function get effectUic() : UIComponent
        {
            return this._1468670722effectUic;
        }// end function

        public function get age() : int
        {
            return _age;
        }// end function

        public function set buffs(param1:Array) : void
        {
            var _loc_2:* = this.buffs;
            if (_loc_2 !== param1)
            {
                this._94091904buffs = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "buffs", _loc_2, param1));
            }
            return;
        }// end function

        public function get effectLoader() : Loader
        {
            return this._589716220effectLoader;
        }// end function

        public function set subWeapon(param1:WeaponVO) : void
        {
            var _loc_2:* = this.subWeapon;
            if (_loc_2 !== param1)
            {
                this._285426564subWeapon = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "subWeapon", _loc_2, param1));
            }
            return;
        }// end function

        public function get playerName() : String
        {
            return _playerName;
        }// end function

        public function get count() : Object
        {
            return _count;
        }// end function

        private function set _3112ai(param1:AiVO) : void
        {
            _ai = param1;
            return;
        }// end function

        private function set _1111703234avoidanceCorrectionRate(param1:int) : void
        {
            _avoidanceCorrectionRate = param1;
            return;
        }// end function

        public function set name(param1:String) : void
        {
            var _loc_2:* = this.name;
            if (_loc_2 !== param1)
            {
                this._3373707name = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "name", _loc_2, param1));
            }
            return;
        }// end function

        public function get hp() : int
        {
            return _hp;
        }// end function

        public function get uicRemoved() : Boolean
        {
            return this._1174619409uicRemoved;
        }// end function

        private function set _969056762sacrificible(param1:Boolean) : void
        {
            _sacrificible = param1;
            return;
        }// end function

        private function set _96511age(param1:int) : void
        {
            _age = param1;
            return;
        }// end function

        public function set realMaxHp(param1:int) : void
        {
            var _loc_2:* = this.realMaxHp;
            if (_loc_2 !== param1)
            {
                this._901583218realMaxHp = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "realMaxHp", _loc_2, param1));
            }
            return;
        }// end function

        public function get weaponTypeLabel() : String
        {
            return weapon ? (weapon.weaponTypeLabel) : ("");
        }// end function

        public function get baseAvoid() : int
        {
            var _loc_2:Number = NaN;
            var _loc_1:* = avoidance + realAgility + avoidance_rate_add;
            if (avoidanceCorrectionRate)
            {
                _loc_2 = (100 + avoidanceCorrectionRate) / 100;
                _loc_1 = Math.floor(_loc_1 * _loc_2);
            }
            _loc_1 = _loc_1 * SkillProxy.gainStrengthAvoidRate(this);
            return _loc_1;
        }// end function

        public function get buffLength() : int
        {
            var _loc_1:int = 0;
            if (hasBuff(ABNORMAL_NAME_DOKU))
            {
                _loc_1 = _loc_1 + 1;
            }
            if (hasBuff(ABNORMAL_NAME_MOUDOKU))
            {
                _loc_1 = _loc_1 + 1;
            }
            if (hasBuff(ABNORMAL_NAME_KURAYAMI))
            {
                _loc_1 = _loc_1 + 1;
            }
            if (hasBuff(ABNORMAL_NAME_KAGENUI))
            {
                _loc_1 = _loc_1 + 1;
            }
            if (hasBuff(ABNORMAL_NAME_JUBAKU))
            {
                _loc_1 = _loc_1 + 1;
            }
            if (hasBuff(ABNORMAL_NAME_MAHI))
            {
                _loc_1 = _loc_1 + 1;
            }
            if (hasBuff(ABNORMAL_NAME_KONRAN))
            {
                _loc_1 = _loc_1 + 1;
            }
            if (hasBuff(ABNORMAL_NAME_DATURYOKU))
            {
                _loc_1 = _loc_1 + 1;
            }
            return _loc_1;
        }// end function

        public function get position() : Point
        {
            return new Point(mapx, mapy);
        }// end function

        public function get hate() : int
        {
            return _hate;
        }// end function

        public function set mapy(param1:int) : void
        {
            var _loc_2:* = this.mapy;
            if (_loc_2 !== param1)
            {
                this._3344029mapy = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "mapy", _loc_2, param1));
            }
            return;
        }// end function

        public function get armor() : ArmorVO
        {
            return _armor;
        }// end function

        public function get baseMaxHp() : int
        {
            return realMaxHp;
        }// end function

        public function get oldmapy() : int
        {
            return _oldmapy;
        }// end function

        private function set _940911795genderLabel(param1:String) : void
        {
            return;
        }// end function

        public function get olddirection() : int
        {
            return _olddirection;
        }// end function

        public function get oldmapx() : int
        {
            return _oldmapx;
        }// end function

        public function set down(param1:Boolean) : void
        {
            var _loc_2:* = this.down;
            if (_loc_2 !== param1)
            {
                this._3089570down = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "down", _loc_2, param1));
            }
            return;
        }// end function

        public function set face2Uic(param1:UIComponent) : void
        {
            var _loc_2:* = this._495675034face2Uic;
            if (_loc_2 !== param1)
            {
                this._495675034face2Uic = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "face2Uic", _loc_2, param1));
            }
            return;
        }// end function

        public function get adjustedLuck() : int
        {
            return adjustedAbility(realLuck);
        }// end function

        public function set mapx(param1:int) : void
        {
            var _loc_2:* = this.mapx;
            if (_loc_2 !== param1)
            {
                this._3344028mapx = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "mapx", _loc_2, param1));
            }
            return;
        }// end function

        private function set _860378513realLuck(param1:int) : void
        {
            return;
        }// end function

        public function get isMeleeAttack() : Boolean
        {
            return weaponType != WeaponVO.WEAPON_TYPE_MAGIC && weaponType != WeaponVO.WEAPON_TYPE_HEAL && weaponType != WeaponVO.WEAPON_TYPE_BOW;
        }// end function

        public function get alertUic() : UIComponent
        {
            return this._1615394131alertUic;
        }// end function

        public function get realTech() : int
        {
            return tech + equipmentBufferVO.tech;
        }// end function

        public function set equipmentBufferVO(param1:EquipmentBufferVO) : void
        {
            var _loc_2:* = this.equipmentBufferVO;
            if (_loc_2 !== param1)
            {
                this._1200253607equipmentBufferVO = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "equipmentBufferVO", _loc_2, param1));
            }
            return;
        }// end function

        public function get isNpc() : Boolean
        {
            return _isNpc;
        }// end function

        public function set tech(param1:int) : void
        {
            var _loc_2:* = this.tech;
            if (_loc_2 !== param1)
            {
                this._3555990tech = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "tech", _loc_2, param1));
            }
            return;
        }// end function

        public function hasWeapon(param1:int) : Boolean
        {
            var _loc_3:WeaponVO = null;
            var _loc_2:Boolean = false;
            for each (_loc_3 in weapons)
            {
                
                if (_loc_3 && _loc_3.weaponType == param1)
                {
                    _loc_2 = true;
                }
            }
            return _loc_2;
        }// end function

        public function set faceUic(param1:UIComponent) : void
        {
            var _loc_2:* = this._1092354894faceUic;
            if (_loc_2 !== param1)
            {
                this._1092354894faceUic = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "faceUic", _loc_2, param1));
            }
            return;
        }// end function

        private function set _102865796level(param1:int) : void
        {
            _level = param1;
            return;
        }// end function

        public function get physicalDefense() : int
        {
            return (armor ? (armor.physicalDefense) : (0)) + equipmentBufferVO.physicalDefense;
        }// end function

        public function get displayHp() : int
        {
            return _displayHp;
        }// end function

        public function set bloodDupImage(param1:Bitmap) : void
        {
            return;
        }// end function

        public function set genderLabel(param1:String) : void
        {
            var _loc_2:* = this.genderLabel;
            if (_loc_2 !== param1)
            {
                this._940911795genderLabel = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "genderLabel", _loc_2, param1));
            }
            return;
        }// end function

        public function set attackBonus(param1:int) : void
        {
            var _loc_2:* = this.attackBonus;
            if (_loc_2 !== param1)
            {
                this._692523337attackBonus = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "attackBonus", _loc_2, param1));
            }
            return;
        }// end function

        private function set _962590849direction(param1:int) : void
        {
            _direction = param1;
            return;
        }// end function

        public function set factionBossFlag(param1:Boolean) : void
        {
            var _loc_2:* = this.factionBossFlag;
            if (_loc_2 !== param1)
            {
                this._1363268277factionBossFlag = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "factionBossFlag", _loc_2, param1));
            }
            return;
        }// end function

        private function set _3460lp(param1:int) : void
        {
            _lp = param1;
            return;
        }// end function

        public function set intelligence(param1:int) : void
        {
            var _loc_2:* = this.intelligence;
            if (_loc_2 !== param1)
            {
                this._797998783intelligence = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "intelligence", _loc_2, param1));
            }
            return;
        }// end function

        public function set gender(param1:int) : void
        {
            var _loc_2:* = this.gender;
            if (_loc_2 !== param1)
            {
                this._1249512767gender = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "gender", _loc_2, param1));
            }
            return;
        }// end function

        public function get delay() : int
        {
            return _delay;
        }// end function

        public function get lp() : int
        {
            return _lp;
        }// end function

        public function get parentsCount() : int
        {
            return _parentsCount;
        }// end function

        public function set avoidanceCorrectionRate(param1:int) : void
        {
            var _loc_2:* = this.avoidanceCorrectionRate;
            if (_loc_2 !== param1)
            {
                this._1111703234avoidanceCorrectionRate = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "avoidanceCorrectionRate", _loc_2, param1));
            }
            return;
        }// end function

        public function get offense_add() : int
        {
            return _offense_add;
        }// end function

        public function willTrigger(param1:String) : Boolean
        {
            return _bindingEventDispatcher.willTrigger(param1);
        }// end function

        public function set realAgility(param1:int) : void
        {
            var _loc_2:* = this.realAgility;
            if (_loc_2 !== param1)
            {
                this._739196729realAgility = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "realAgility", _loc_2, param1));
            }
            return;
        }// end function

        public function get voType() : String
        {
            return "UnitVO";
        }// end function

        public function get maxHp() : int
        {
            return _maxHp;
        }// end function

        private function set _896594087sortId(param1:int) : void
        {
            _sortId = param1;
            return;
        }// end function

        public function set weaponName(param1:String) : void
        {
            var _loc_2:* = this.weaponName;
            if (_loc_2 !== param1)
            {
                this._1372340935weaponName = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "weaponName", _loc_2, param1));
            }
            return;
        }// end function

        public function set isAI(param1:Boolean) : void
        {
            var _loc_2:* = this.isAI;
            if (_loc_2 !== param1)
            {
                this._3240658isAI = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "isAI", _loc_2, param1));
            }
            return;
        }// end function

        private function set _2115023086accessory(param1:AccessoryVO) : void
        {
            _accessory = param1;
            equipmentBufferVO.accessory = new AbilityBufferVO(param1);
            return;
        }// end function

        public function get defenceBonus() : int
        {
            return _defenceBonus;
        }// end function

        public function set realDefense(param1:int) : void
        {
            var _loc_2:* = this.realDefense;
            if (_loc_2 !== param1)
            {
                this._1863081666realDefense = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "realDefense", _loc_2, param1));
            }
            return;
        }// end function

        private function set _1363268277factionBossFlag(param1:Boolean) : void
        {
            return;
        }// end function

        public function get baseDamage() : int
        {
            var _loc_1:* = damage + adjustedStrength + offense_add + attackBonus;
            _loc_1 = _loc_1 * SkillProxy.gainStrengthDamageRate(this);
            return getReducedAbilityByBuff(_loc_1);
        }// end function

        private function set _1506956600olddirection(param1:int) : void
        {
            _olddirection = param1;
            return;
        }// end function

        public function get unitId() : int
        {
            return _unitId;
        }// end function

        public function get baseMagicalDefense() : int
        {
            var _loc_1:* = adjustedAbility(realIntelligence, 4) + magicalDefense + defense_add + defenceBonus;
            if (magicalDefenseCorrectionValue)
            {
                _loc_1 = _loc_1 + magicalDefenseCorrectionValue;
            }
            return _loc_1;
        }// end function

        public function set downExpiredAtLabel(param1:String) : void
        {
            var _loc_2:* = this.downExpiredAtLabel;
            if (_loc_2 !== param1)
            {
                this._1809769694downExpiredAtLabel = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "downExpiredAtLabel", _loc_2, param1));
            }
            return;
        }// end function

        public function get skillPoint() : int
        {
            return _skillPoint;
        }// end function

        private function set _791821796weapon(param1:WeaponVO) : void
        {
            _weapons[0] = param1;
            equipmentBufferVO.weapon = new AbilityBufferVO(param1);
            return;
        }// end function

        private function set _1908910903lockFlag(param1:Boolean) : void
        {
            _lockFlag = param1;
            return;
        }// end function

        public function get weapons() : Array
        {
            return _weapons;
        }// end function

        public function set jobChangePossibleFlag(param1:Boolean) : void
        {
            var _loc_2:* = this.jobChangePossibleFlag;
            if (_loc_2 !== param1)
            {
                this._1891049750jobChangePossibleFlag = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "jobChangePossibleFlag", _loc_2, param1));
            }
            return;
        }// end function

        public function set face2OffsetX(param1:int) : void
        {
            var _loc_2:* = this._1010912528face2OffsetX;
            if (_loc_2 !== param1)
            {
                this._1010912528face2OffsetX = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "face2OffsetX", _loc_2, param1));
            }
            return;
        }// end function

        public function set face2OffsetY(param1:int) : void
        {
            var _loc_2:* = this._1010912527face2OffsetY;
            if (_loc_2 !== param1)
            {
                this._1010912527face2OffsetY = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "face2OffsetY", _loc_2, param1));
            }
            return;
        }// end function

        private function set _1438096408jobName(param1:String) : void
        {
            return;
        }// end function

        public function set maskedHp(param1:String) : void
        {
            var _loc_2:* = this.maskedHp;
            if (_loc_2 !== param1)
            {
                this._275585779maskedHp = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "maskedHp", _loc_2, param1));
            }
            return;
        }// end function

        private function set _2145165407galleryCode(param1:String) : void
        {
            _galleryCode = param1;
            return;
        }// end function

        public function get face2Loader() : Loader
        {
            return _face2_loader;
        }// end function

        private function set _3344029mapy(param1:int) : void
        {
            _mapy = param1;
            return;
        }// end function

        public function get adjustedDefense() : int
        {
            return adjustedAbility(realDefense);
        }// end function

        public function set effectUic(param1:UIComponent) : void
        {
            var _loc_2:* = this._1468670722effectUic;
            if (_loc_2 !== param1)
            {
                this._1468670722effectUic = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "effectUic", _loc_2, param1));
            }
            return;
        }// end function

        public function set age(param1:int) : void
        {
            var _loc_2:* = this.age;
            if (_loc_2 !== param1)
            {
                this._96511age = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "age", _loc_2, param1));
            }
            return;
        }// end function

        public function set transitionalMapx(param1:int) : void
        {
            var _loc_2:* = this.transitionalMapx;
            if (_loc_2 !== param1)
            {
                this._1002188036transitionalMapx = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "transitionalMapx", _loc_2, param1));
            }
            return;
        }// end function

        private function set _316305398physicalDefenseCorrectionValue(param1:int) : void
        {
            _physicalDefenseCorrectionValue = param1;
            return;
        }// end function

        private function set _1378662077oldmapx(param1:int) : void
        {
            _oldmapx = param1;
            return;
        }// end function

        public function get maxLp() : int
        {
            return _maxLp;
        }// end function

        public function get sacrificible() : Boolean
        {
            return _sacrificible;
        }// end function

        public function set effectLoader(param1:Loader) : void
        {
            var _loc_2:* = this._589716220effectLoader;
            if (_loc_2 !== param1)
            {
                this._589716220effectLoader = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "effectLoader", _loc_2, param1));
            }
            return;
        }// end function

        public function hasBuff(param1:String) : Boolean
        {
            return buffs && buffs.getOne("type", param1) != null;
        }// end function

        public function set magicalDefenseCorrectionValue(param1:int) : void
        {
            var _loc_2:* = this.magicalDefenseCorrectionValue;
            if (_loc_2 !== param1)
            {
                this._751073035magicalDefenseCorrectionValue = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "magicalDefenseCorrectionValue", _loc_2, param1));
            }
            return;
        }// end function

        public function get deadFinish() : Boolean
        {
            return _dead_finish;
        }// end function

        public function get baseResist() : int
        {
            return adjustedIntelligence * 2;
        }// end function

        public function get weapon() : WeaponVO
        {
            return _weapons[0];
        }// end function

        public function get exp() : int
        {
            return _exp;
        }// end function

        public function set playerName(param1:String) : void
        {
            var _loc_2:* = this.playerName;
            if (_loc_2 !== param1)
            {
                this._2095657228playerName = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "playerName", _loc_2, param1));
            }
            return;
        }// end function

        private function set _503521432ownSkills(param1:Array) : void
        {
            _ownSkills = param1;
            return;
        }// end function

        public function set accessory(param1:AccessoryVO) : void
        {
            var _loc_2:* = this.accessory;
            if (_loc_2 !== param1)
            {
                this._2115023086accessory = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "accessory", _loc_2, param1));
            }
            return;
        }// end function

        private function set _1963083775lordFlag(param1:Boolean) : void
        {
            _lordFlag = param1;
            return;
        }// end function

        private function set _878431345imageKind(param1:String) : void
        {
            _imageKind = param1;
            return;
        }// end function

        public function get jobMasterId() : int
        {
            return jobMasterVO.masterId;
        }// end function

        public function set hp(param1:int) : void
        {
            var _loc_2:* = this.hp;
            if (_loc_2 !== param1)
            {
                this._3336hp = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "hp", _loc_2, param1));
            }
            return;
        }// end function

        public function get defense_add() : int
        {
            return _defense_add;
        }// end function

        public function get nextExp() : int
        {
            return _nextExp;
        }// end function

        private function set _1334344881canLevelUp(param1:Boolean) : void
        {
            _canLevelUp = param1;
            return;
        }// end function

        public function get baseDefense() : int
        {
            var _loc_1:* = physicalDefense + adjustedDefense + defense_add + defenceBonus;
            if (physicalDefenseCorrectionValue)
            {
                _loc_1 = _loc_1 + physicalDefenseCorrectionValue;
            }
            _loc_1 = _loc_1 * SkillProxy.gainStrengthDefenseRate(this);
            return getReducedAbilityByBuff(_loc_1);
        }// end function

        public function set uicRemoved(param1:Boolean) : void
        {
            var _loc_2:* = this._1174619409uicRemoved;
            if (_loc_2 !== param1)
            {
                this._1174619409uicRemoved = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "uicRemoved", _loc_2, param1));
            }
            return;
        }// end function

        public function set transitionalMapy(param1:int) : void
        {
            var _loc_2:* = this.transitionalMapy;
            if (_loc_2 !== param1)
            {
                this._1002188035transitionalMapy = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "transitionalMapy", _loc_2, param1));
            }
            return;
        }// end function

        private function set _1200253607equipmentBufferVO(param1:EquipmentBufferVO) : void
        {
            _equipmentBufferVO = param1;
            return;
        }// end function

        public function get bloodImageUrl() : String
        {
            return _blood_image_url;
        }// end function

        public function set count(param1:Object) : void
        {
            var _loc_2:* = this.count;
            if (_loc_2 !== param1)
            {
                this._94851343count = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "count", _loc_2, param1));
            }
            return;
        }// end function

        public function get canAttack() : Boolean
        {
            if (hasBuff(UnitVO.ABNORMAL_NAME_JUBAKU))
            {
                trace("呪縛により攻撃不能");
                return false;
            }
            return weapon && weapon.endurance > 0;
        }// end function

        public function set item(param1:ItemVO) : void
        {
            var _loc_2:* = this.item;
            if (_loc_2 !== param1)
            {
                this._3242771item = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "item", _loc_2, param1));
            }
            return;
        }// end function

        public function get defense() : int
        {
            return _defense;
        }// end function

        private function set _3555990tech(param1:int) : void
        {
            _tech = param1;
            return;
        }// end function

        private function set _508630562defense_add(param1:int) : void
        {
            _defense_add = param1;
            return;
        }// end function

        public function get adjustedIntelligence() : int
        {
            return adjustedAbility(realIntelligence);
        }// end function

        public function set displayAbnormal(param1:Array) : void
        {
            var _loc_2:* = this._390006570displayAbnormal;
            if (_loc_2 !== param1)
            {
                this._390006570displayAbnormal = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "displayAbnormal", _loc_2, param1));
            }
            return;
        }// end function

        private function set _1429847026destination(param1:Point) : void
        {
            _destination = param1;
            return;
        }// end function

        public function set hate(param1:int) : void
        {
            var _loc_2:* = this.hate;
            if (_loc_2 !== param1)
            {
                this._3195178hate = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "hate", _loc_2, param1));
            }
            return;
        }// end function

        public function addEventListener(param1:String, param2:Function, param3:Boolean = false, param4:int = 0, param5:Boolean = false) : void
        {
            _bindingEventDispatcher.addEventListener(param1, param2, param3, param4, param5);
            return;
        }// end function

        public function get avoidance_rate_add() : int
        {
            return _avoidance_rate_add;
        }// end function

        private function set _1372340935weaponName(param1:String) : void
        {
            return;
        }// end function

        private function set _2020488588offense_add(param1:int) : void
        {
            _offense_add = param1;
            return;
        }// end function

        public function get damageUic() : UIComponent
        {
            return this._2020955744damageUic;
        }// end function

        private function set _115791uic(param1:UIComponent) : void
        {
            _uic = param1;
            return;
        }// end function

        private function set _94851343count(param1:Object) : void
        {
            _count = param1;
            return;
        }// end function

        public function get realLuck() : int
        {
            return luck + equipmentBufferVO.luck;
        }// end function

        public function set olddirection(param1:int) : void
        {
            var _loc_2:* = this.olddirection;
            if (_loc_2 !== param1)
            {
                this._1506956600olddirection = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "olddirection", _loc_2, param1));
            }
            return;
        }// end function

        private function set _1868536343deadFinish(param1:Boolean) : void
        {
            _dead_finish = param1;
            return;
        }// end function

        public function get team() : int
        {
            return _team;
        }// end function

        private function set _3291998kill(param1:Array) : void
        {
            _kill = param1;
            return;
        }// end function

        private function set _100893exp(param1:int) : void
        {
            _exp = param1;
            return;
        }// end function

        public function get buffs() : Array
        {
            return _buffs;
        }// end function

        public function get downExpiredAtLabelForTooltip() : String
        {
            return _down ? (_downExpiredAtLabel + Utils.i18n("localize281")) : ("");
        }// end function

        public function set oldmapy(param1:int) : void
        {
            var _loc_2:* = this.oldmapy;
            if (_loc_2 !== param1)
            {
                this._1378662076oldmapy = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "oldmapy", _loc_2, param1));
            }
            return;
        }// end function

        public function get name() : String
        {
            return _name;
        }// end function

        public function set oldmapx(param1:int) : void
        {
            var _loc_2:* = this.oldmapx;
            if (_loc_2 !== param1)
            {
                this._1378662077oldmapx = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "oldmapx", _loc_2, param1));
            }
            return;
        }// end function

        public function get realMaxHp() : int
        {
            return maxHp + equipmentBufferVO.maxHp;
        }// end function

        private function set _93086015armor(param1:ArmorVO) : void
        {
            _armor = param1;
            equipmentBufferVO.armor = new AbilityBufferVO(param1);
            return;
        }// end function

        private function set _448593361baseDefense(param1:int) : void
        {
            return;
        }// end function

        private function set _1412542333realIntelligence(param1:int) : void
        {
            return;
        }// end function

        public function get tech() : int
        {
            return _tech;
        }// end function

        private function set _2010235972hugeBossFlag(param1:Boolean) : void
        {
            return;
        }// end function

        public function set lockFlag(param1:Boolean) : void
        {
            var _loc_2:* = this.lockFlag;
            if (_loc_2 !== param1)
            {
                this._1908910903lockFlag = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "lockFlag", _loc_2, param1));
            }
            return;
        }// end function

        public function get mapy() : int
        {
            return _mapy;
        }// end function

        public function set canLevelUp(param1:Boolean) : void
        {
            var _loc_2:* = this.canLevelUp;
            if (_loc_2 !== param1)
            {
                this._1334344881canLevelUp = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "canLevelUp", _loc_2, param1));
            }
            return;
        }// end function

        private function set _1879273436playerId(param1:int) : void
        {
            _playerId = param1;
            return;
        }// end function

        public function get mapx() : int
        {
            return _mapx;
        }// end function

        private function set _1863081666realDefense(param1:int) : void
        {
            return;
        }// end function

        private function set _1055901676moveRange(param1:int) : void
        {
            _moveRange = param1;
            return;
        }// end function

        public function get equipmentBufferVO() : EquipmentBufferVO
        {
            return _equipmentBufferVO;
        }// end function

        public function set realTech(param1:int) : void
        {
            var _loc_2:* = this.realTech;
            if (_loc_2 !== param1)
            {
                this._860155564realTech = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "realTech", _loc_2, param1));
            }
            return;
        }// end function

        public function get face2Uic() : UIComponent
        {
            return this._495675034face2Uic;
        }// end function

        public function set alertUic(param1:UIComponent) : void
        {
            var _loc_2:* = this._1615394131alertUic;
            if (_loc_2 !== param1)
            {
                this._1615394131alertUic = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "alertUic", _loc_2, param1));
            }
            return;
        }// end function

        public function set isNpc(param1:Boolean) : void
        {
            var _loc_2:* = this.isNpc;
            if (_loc_2 !== param1)
            {
                this._100474199isNpc = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "isNpc", _loc_2, param1));
            }
            return;
        }// end function

        public function get isAdult() : Boolean
        {
            return age >= ADULT_AGE;
        }// end function

        public function set sortId(param1:int) : void
        {
            var _loc_2:* = this.sortId;
            if (_loc_2 !== param1)
            {
                this._896594087sortId = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "sortId", _loc_2, param1));
            }
            return;
        }// end function

        public function get canEquip() : Boolean
        {
            return subWeapon && subWeapon.endurance > 0;
        }// end function

        public function set teamType(param1:int) : void
        {
            var _loc_2:* = this.teamType;
            if (_loc_2 !== param1)
            {
                this._1668559049teamType = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "teamType", _loc_2, param1));
            }
            return;
        }// end function

        public function get factionBossFlag() : Boolean
        {
            if (UNIT_FACTION_BOSSES.indexOf(Number(jobMasterVO.code)) >= 0)
            {
                return true;
            }
            return false;
        }// end function

        public function get attackBonus() : int
        {
            return _attackBonus;
        }// end function

        private function set _1097519085loader(param1:Loader) : void
        {
            _loader = param1;
            return;
        }// end function

        public function get intelligence() : int
        {
            return _intelligence;
        }// end function

        public function get gender() : int
        {
            return _gender;
        }// end function

        public function set armor(param1:ArmorVO) : void
        {
            var _loc_2:* = this.armor;
            if (_loc_2 !== param1)
            {
                this._93086015armor = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "armor", _loc_2, param1));
            }
            return;
        }// end function

        private function set _3333041luck(param1:int) : void
        {
            _luck = param1;
            return;
        }// end function

        public function get weaponName() : String
        {
            return weapon ? (weapon.nameLabel) : ("");
        }// end function

        public function get avoidanceCorrectionRate() : int
        {
            return _avoidanceCorrectionRate;
        }// end function

        public function set kill(param1:Array) : void
        {
            var _loc_2:* = this.kill;
            if (_loc_2 !== param1)
            {
                this._3291998kill = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "kill", _loc_2, param1));
            }
            return;
        }// end function

        public function get adjustedStrength() : int
        {
            return adjustedAbility(realStrength);
        }// end function

        private function set _1249512767gender(param1:int) : void
        {
            _gender = param1;
            return;
        }// end function

        private function set _2095657228playerName(param1:String) : void
        {
            _playerName = param1;
            return;
        }// end function

        public function get isAI() : Boolean
        {
            return _isAI;
        }// end function

        public function hasDisregardDecoyWeapon() : Boolean
        {
            return weapon && weapon.disregardDecoy;
        }// end function

        public function dispatchEvent(event:Event) : Boolean
        {
            return _bindingEventDispatcher.dispatchEvent(event);
        }// end function

        public function get expLabel() : String
        {
            return _exp + "/" + _nextExp;
        }// end function

        public function get realDefense() : int
        {
            return defense + equipmentBufferVO.defense;
        }// end function

        public function get isWeaponPhysical() : Boolean
        {
            return weaponType == WeaponVO.WEAPON_TYPE_AXE || weaponType == WeaponVO.WEAPON_TYPE_SWORD || weaponType == WeaponVO.WEAPON_TYPE_SPEAR || weaponType == WeaponVO.WEAPON_TYPE_BOW;
        }// end function

        public function set ownSkills(param1:Array) : void
        {
            var _loc_2:* = this.ownSkills;
            if (_loc_2 !== param1)
            {
                this._503521432ownSkills = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "ownSkills", _loc_2, param1));
            }
            return;
        }// end function

        public function set displayHp(param1:int) : void
        {
            var _loc_2:* = this.displayHp;
            if (_loc_2 !== param1)
            {
                this._247593322displayHp = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "displayHp", _loc_2, param1));
            }
            return;
        }// end function

        public function checkMotion() : void
        {
            var _loc_1:* = MovieClip(loader.content).currentLabels;
            if (_loc_1.find("name", "attack_b_l").length > 0)
            {
                if (_loc_1.find("name", "attack_f_l").length == 0)
                {
                    trace(name, ":not found attack_f_l");
                }
            }
            if (_loc_1.find("name", "magic_b_l").length > 0)
            {
                if (_loc_1.find("name", "magic_f_l").length == 0)
                {
                    trace(name, ":not found magic_f_l");
                }
            }
            if (_loc_1.find("name", "heal_b_l").length > 0)
            {
                if (_loc_1.find("name", "heal_f_l").length == 0)
                {
                    trace(name, ":not found heal_f_l");
                }
            }
            if (_loc_1.find("name", "item_b_l").length > 0)
            {
                if (_loc_1.find("name", "item_f_l").length == 0)
                {
                    trace(name, ":not found item_f_l");
                }
            }
            return;
        }// end function

        private function set _3344028mapx(param1:int) : void
        {
            _mapx = param1;
            return;
        }// end function

        public function get face2OffsetX() : int
        {
            return this._1010912528face2OffsetX;
        }// end function

        public function get jobChangePossibleFlag() : Boolean
        {
            return _jobChangePossibleFlag;
        }// end function

        private function set _739196729realAgility(param1:int) : void
        {
            return;
        }// end function

        public function get maskedHp() : String
        {
            if (factionBossFlag)
            {
                return "???";
            }
            return displayHp.toString();
        }// end function

        public function set jobMasterVO(param1:JobMasterVO) : void
        {
            var _loc_2:* = this.jobMasterVO;
            if (_loc_2 !== param1)
            {
                this._1770198904jobMasterVO = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "jobMasterVO", _loc_2, param1));
            }
            return;
        }// end function

        public function get transitionalMapx() : int
        {
            return _transitionalMapx;
        }// end function

        public function set direction(param1:int) : void
        {
            var _loc_2:* = this.direction;
            if (_loc_2 !== param1)
            {
                this._962590849direction = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "direction", _loc_2, param1));
            }
            return;
        }// end function

        public function get face2OffsetY() : int
        {
            return this._1010912527face2OffsetY;
        }// end function

        public function set recoveryHp(param1:int) : void
        {
            _hp = _hp + param1;
            return;
        }// end function

        private function set _103671180maxHp(param1:int) : void
        {
            _maxHp = param1;
            return;
        }// end function

        public function get transitionalMapy() : int
        {
            return _transitionalMapy;
        }// end function

        public function set level(param1:int) : void
        {
            var _loc_2:* = this.level;
            if (_loc_2 !== param1)
            {
                this._102865796level = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "level", _loc_2, param1));
            }
            return;
        }// end function

        private function set _100474199isNpc(param1:Boolean) : void
        {
            _isNpc = param1;
            return;
        }// end function

        public function get magicalDefenseCorrectionValue() : int
        {
            return _magicalDefenseCorrectionValue;
        }// end function

        private function set _892481550status(param1:int) : void
        {
            _status = param1;
            return;
        }// end function

        public function get baseHitRate() : int
        {
            return hitRate + realTech + hit_rate_add;
        }// end function

        public function get accessory() : AccessoryVO
        {
            return _accessory;
        }// end function

        public function get item() : ItemVO
        {
            return _item;
        }// end function

        public function set delay(param1:int) : void
        {
            var _loc_2:* = this.delay;
            if (_loc_2 !== param1)
            {
                this._95467907delay = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "delay", _loc_2, param1));
            }
            return;
        }// end function

        public function set offense_add(param1:int) : void
        {
            var _loc_2:* = this.offense_add;
            if (_loc_2 !== param1)
            {
                this._2020488588offense_add = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "offense_add", _loc_2, param1));
            }
            return;
        }// end function

        public function get hitRate() : int
        {
            return (weapon ? (weapon.hit) : (0)) + equipmentBufferVO.hit;
        }// end function

        public function set parentsCount(param1:int) : void
        {
            var _loc_2:* = this.parentsCount;
            if (_loc_2 !== param1)
            {
                this._1934233990parentsCount = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "parentsCount", _loc_2, param1));
            }
            return;
        }// end function

        public function set olddestination(param1:Point) : void
        {
            var _loc_2:* = this.olddestination;
            if (_loc_2 !== param1)
            {
                this._983304071olddestination = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "olddestination", _loc_2, param1));
            }
            return;
        }// end function

        public function set imageKind(param1:String) : void
        {
            var _loc_2:* = this.imageKind;
            if (_loc_2 !== param1)
            {
                this._878431345imageKind = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "imageKind", _loc_2, param1));
            }
            return;
        }// end function

        public function set maxHp(param1:int) : void
        {
            var _loc_2:* = this.maxHp;
            if (_loc_2 !== param1)
            {
                this._103671180maxHp = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "maxHp", _loc_2, param1));
            }
            return;
        }// end function

        private function set _3373707name(param1:String) : void
        {
            _name = param1;
            return;
        }// end function

        public function set activeFlag(param1:Boolean) : void
        {
            var _loc_2:* = this.activeFlag;
            if (_loc_2 !== param1)
            {
                this._2043543442activeFlag = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "activeFlag", _loc_2, param1));
            }
            return;
        }// end function

        public function get displayAbnormal() : Array
        {
            return this._390006570displayAbnormal;
        }// end function

        private function set _1015746002bloodImageUrl(param1:String) : void
        {
            _blood_image_url = param1;
            return;
        }// end function

        public function set realIntelligence(param1:int) : void
        {
            var _loc_2:* = this.realIntelligence;
            if (_loc_2 !== param1)
            {
                this._1412542333realIntelligence = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "realIntelligence", _loc_2, param1));
            }
            return;
        }// end function

        public function set lp(param1:int) : void
        {
            var _loc_2:* = this.lp;
            if (_loc_2 !== param1)
            {
                this._3460lp = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "lp", _loc_2, param1));
            }
            return;
        }// end function

        public function get lockFlag() : Boolean
        {
            return _lockFlag;
        }// end function

        private function set _1264886368baseDamage(param1:int) : void
        {
            return;
        }// end function

        public function get teamType() : int
        {
            return _teamType;
        }// end function

        public function set baseDamage(param1:int) : void
        {
            var _loc_2:* = this.baseDamage;
            if (_loc_2 !== param1)
            {
                this._1264886368baseDamage = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "baseDamage", _loc_2, param1));
            }
            return;
        }// end function

        public function set hit(param1:Boolean) : void
        {
            var _loc_2:* = this.hit;
            if (_loc_2 !== param1)
            {
                this._103315hit = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "hit", _loc_2, param1));
            }
            return;
        }// end function

        public function get canLevelUp() : Boolean
        {
            return _canLevelUp;
        }// end function

        public function get canUseItem() : Boolean
        {
            return item && item.endurance > 0;
        }// end function

        private function set _1934233990parentsCount(param1:int) : void
        {
            _parentsCount = param1;
            return;
        }// end function

        public function get sortId() : int
        {
            return _sortId;
        }// end function

        private function set _1541133743defenceBonus(param1:int) : void
        {
            _defenceBonus = param1;
            return;
        }// end function

        private function set _285426564subWeapon(param1:WeaponVO) : void
        {
            _weapons[1] = param1;
            return;
        }// end function

        public function removeEventListener(param1:String, param2:Function, param3:Boolean = false) : void
        {
            _bindingEventDispatcher.removeEventListener(param1, param2, param3);
            return;
        }// end function

        private function set _1891049750jobChangePossibleFlag(param1:Boolean) : void
        {
            _jobChangePossibleFlag = param1;
            return;
        }// end function

        public function get ownSkills() : Array
        {
            return _ownSkills;
        }// end function

        public function get levelUpped() : Boolean
        {
            return exp >= nextExp;
        }// end function

        private function set _3555933team(param1:int) : void
        {
            _team = param1;
            return;
        }// end function

        public function get kill() : Array
        {
            return _kill;
        }// end function

        public function get jobMasterVO() : JobMasterVO
        {
            return _jobMasterVO;
        }// end function

        private function set _1668559049teamType(param1:int) : void
        {
            _teamType = param1;
            return;
        }// end function

        public function set luck(param1:int) : void
        {
            var _loc_2:* = this.luck;
            if (_loc_2 !== param1)
            {
                this._3333041luck = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "luck", _loc_2, param1));
            }
            return;
        }// end function

        private function set _1057361851agility(param1:int) : void
        {
            _agility = param1;
            return;
        }// end function

        public function get direction() : int
        {
            return _direction;
        }// end function

        public function set defenceBonus(param1:int) : void
        {
            var _loc_2:* = this.defenceBonus;
            if (_loc_2 !== param1)
            {
                this._1541133743defenceBonus = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "defenceBonus", _loc_2, param1));
            }
            return;
        }// end function

        public function set baseMagicalDefense(param1:int) : void
        {
            var _loc_2:* = this.baseMagicalDefense;
            if (_loc_2 !== param1)
            {
                this._1251024313baseMagicalDefense = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "baseMagicalDefense", _loc_2, param1));
            }
            return;
        }// end function

        public function set maskedMaxHp(param1:String) : void
        {
            var _loc_2:* = this.maskedMaxHp;
            if (_loc_2 !== param1)
            {
                this._1997239359maskedMaxHp = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "maskedMaxHp", _loc_2, param1));
            }
            return;
        }// end function

        public function get level() : int
        {
            return _level;
        }// end function

        public function get weaponType() : int
        {
            return weapon ? (weapon.weaponType) : (0);
        }// end function

        public function get olddestination() : Point
        {
            return _olddestination;
        }// end function

        private function set _1809769694downExpiredAtLabel(param1:String) : void
        {
            _downExpiredAtLabel = param1;
            return;
        }// end function

        public function set unitId(param1:int) : void
        {
            var _loc_2:* = this.unitId;
            if (_loc_2 !== param1)
            {
                this._840527425unitId = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "unitId", _loc_2, param1));
            }
            return;
        }// end function

        public function get imageKind() : String
        {
            return _imageKind;
        }// end function

        public function get damage() : int
        {
            return weapon ? (weapon.damage) : (0);
        }// end function

        public function get activeFlag() : Boolean
        {
            return _activeFlag;
        }// end function

        public function get hit() : Boolean
        {
            return _hit;
        }// end function

        public function get realIntelligence() : int
        {
            return intelligence + equipmentBufferVO.intelligence;
        }// end function

        public function set skillPoint(param1:int) : void
        {
            var _loc_2:* = this.skillPoint;
            if (_loc_2 !== param1)
            {
                this._1593533887skillPoint = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "skillPoint", _loc_2, param1));
            }
            return;
        }// end function

        private function set _860155564realTech(param1:int) : void
        {
            return;
        }// end function

        private function set _3089570down(param1:Boolean) : void
        {
            _down = param1;
            return;
        }// end function

        private function set _1770198904jobMasterVO(param1:JobMasterVO) : void
        {
            _jobMasterVO = param1;
            return;
        }// end function

        public function set weapons(param1:Array) : void
        {
            var _loc_2:* = this.weapons;
            if (_loc_2 !== param1)
            {
                this._1223328215weapons = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "weapons", _loc_2, param1));
            }
            return;
        }// end function

        public function get luck() : int
        {
            return _luck;
        }// end function

        public function set playerId(param1:int) : void
        {
            var _loc_2:* = this.playerId;
            if (_loc_2 !== param1)
            {
                this._1879273436playerId = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "playerId", _loc_2, param1));
            }
            return;
        }// end function

        public function get maskedMaxHp() : String
        {
            if (factionBossFlag)
            {
                return "???";
            }
            return realMaxHp.toString();
        }// end function

        private function set _30767086hit_rate_add(param1:int) : void
        {
            _hit_rate_add = param1;
            return;
        }// end function

        private function set _95467907delay(param1:int) : void
        {
            _delay = param1;
            return;
        }// end function

        public function get attackRange() : int
        {
            return weapon ? (weapon.attackRange) : (1);
        }// end function

        public function hasSkill(param1:int) : Boolean
        {
            var _loc_2:SkillVO = null;
            var _loc_3:int = 0;
            for each (_loc_2 in skills)
            {
                
                _loc_3 = int(_loc_2.code.slice(0, -2));
                if (_loc_3 == param1)
                {
                    return true;
                }
            }
            return false;
        }// end function

        private function set _2043543442activeFlag(param1:Boolean) : void
        {
            _activeFlag = param1;
            return;
        }// end function

        public function get isWeaponMagical() : Boolean
        {
            return weaponType == WeaponVO.WEAPON_TYPE_MAGIC;
        }// end function

        public function set moveRange(param1:int) : void
        {
            var _loc_2:* = this.moveRange;
            if (_loc_2 !== param1)
            {
                this._1055901676moveRange = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "moveRange", _loc_2, param1));
            }
            return;
        }// end function

        private function set _751073035magicalDefenseCorrectionValue(param1:int) : void
        {
            _magicalDefenseCorrectionValue = param1;
            return;
        }// end function

        public function get playerId() : int
        {
            return _playerId;
        }// end function

        private function set _1997239359maskedMaxHp(param1:String) : void
        {
            return;
        }// end function

        public function get jobName() : String
        {
            return jobMasterVO.nameLabel;
        }// end function

        private function set _94091904buffs(param1:Array) : void
        {
            _buffs = param1;
            return;
        }// end function

        public function get moveRange() : int
        {
            if (hasBuff(ABNORMAL_NAME_KAGENUI))
            {
                trace("影縫いにより移動不能");
                return 0;
            }
            return _moveRange;
        }// end function

        public function get hit_rate_add() : int
        {
            return _hit_rate_add;
        }// end function

        public function set status(param1:int) : void
        {
            var _loc_2:* = this.status;
            if (_loc_2 !== param1)
            {
                this._892481550status = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "status", _loc_2, param1));
            }
            return;
        }// end function

        public function get adjustedAgility() : int
        {
            return adjustedAbility(realAgility);
        }// end function

        public function set jobName(param1:String) : void
        {
            var _loc_2:* = this.jobName;
            if (_loc_2 !== param1)
            {
                this._1438096408jobName = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "jobName", _loc_2, param1));
            }
            return;
        }// end function

        public function set hit_rate_add(param1:int) : void
        {
            var _loc_2:* = this.hit_rate_add;
            if (_loc_2 !== param1)
            {
                this._30767086hit_rate_add = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "hit_rate_add", _loc_2, param1));
            }
            return;
        }// end function

        public function get realStrength() : int
        {
            return strength + equipmentBufferVO.strength;
        }// end function

    }
}
