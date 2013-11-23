package com.kbmj.viking.vo
{
    import flash.events.*;
    import mx.events.*;

    public class JobMasterVO extends Object implements IEventDispatcher
    {
        private var _defense:int;
        private var _maxHpCap:int;
        private var _agility:int;
        private var _skillId:int;
        private var _strengthCap:int;
        private var _levelCap:int;
        private var _techCap:int;
        private var _variableRange:int;
        private var _parentIds:Array;
        private var _luckCap:int;
        private var _defenseCap:int;
        private var _equipabilities:Object;
        private var _description:String;
        private var _intelligenceAverageGrowth:int;
        private var _skillAcquirementProbability:int;
        private var _intelligenceCap:int;
        private var _skills:Array;
        private var _name:String;
        private var _tech:int;
        private var _masterId:int;
        private var _strengthAverageGrowth:int;
        private var _level:int;
        private var _maxHp:int;
        private var _luck:int;
        private var _luckAverageGrowth:int;
        private var _strength:int;
        private var _intelligence:int;
        private var _nameLabel:String;
        private var _maxHpAverageGrowth:int;
        private var _bindingEventDispatcher:EventDispatcher;
        private var _phonetic:String;
        private var _defenseAverageGrowth:int;
        private var _code:String;
        private var _techAverageGrowth:int;
        private var _variablePercentage:int;
        private var _disabled:Boolean;
        private var _agilityAverageGrowth:int;
        private var _agilityCap:int;
        private var _move_range:int;
        private var _consumptionAnima:int = 0;
        public static const SISTER:int = 15;
        public static const CODE_RANGER:String = "402";
        public static const CODE_GREMLIN_DARK:String = "10012";
        public static const HALF_ELF:int = 17;
        public static const CODE_SKAL_MASTER:String = "10015";
        public static const CODE_SKAL_FIGHTER:String = "10013";
        public static const CODE_ARCHER:String = "401";
        public static const CODE_DARK_ARCHER:String = "10008";
        public static const CODE_SKAL_VIKING:String = "10014";
        public static const CODE_GREMLIN_KILLER:String = "10011";

        public function JobMasterVO()
        {
            _skills = new Array();
            _bindingEventDispatcher = new EventDispatcher(IEventDispatcher(this));
            return;
        }// end function

        public function set description(param1:String) : void
        {
            _description = param1;
            return;
        }// end function

        public function set level(param1:int) : void
        {
            _level = param1;
            return;
        }// end function

        public function set disabled(param1:Boolean) : void
        {
            _disabled = param1;
            return;
        }// end function

        public function get luckAverageGrowth() : int
        {
            return _luckAverageGrowth;
        }// end function

        public function set strengthAverageGrowth(param1:int) : void
        {
            _strengthAverageGrowth = param1;
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

        public function get maxHpAverageGrowth() : int
        {
            return _maxHpAverageGrowth;
        }// end function

        public function get skillAcquirementProbability() : int
        {
            return _skillAcquirementProbability;
        }// end function

        private function set _3373707name(param1:String) : void
        {
            _name = param1;
            return;
        }// end function

        public function get equipabilities() : Object
        {
            return _equipabilities;
        }// end function

        public function set intelligenceCap(param1:int) : void
        {
            _intelligenceCap = param1;
            return;
        }// end function

        public function set maxHp(param1:int) : void
        {
            _maxHp = param1;
            return;
        }// end function

        public function get variableRange() : int
        {
            return _variableRange;
        }// end function

        public function set consumptionAnima(param1:int) : void
        {
            _consumptionAnima = param1;
            return;
        }// end function

        public function set skillAcquirementProbability(param1:int) : void
        {
            _skillAcquirementProbability = param1;
            return;
        }// end function

        public function get masterId() : int
        {
            return _masterId;
        }// end function

        public function set luckAverageGrowth(param1:int) : void
        {
            _luckAverageGrowth = param1;
            return;
        }// end function

        public function get nameLabel() : String
        {
            return _nameLabel;
        }// end function

        public function get variablePercentage() : int
        {
            return _variablePercentage;
        }// end function

        public function set tech(param1:int) : void
        {
            _tech = param1;
            return;
        }// end function

        public function set maxHpAverageGrowth(param1:int) : void
        {
            _maxHpAverageGrowth = param1;
            return;
        }// end function

        public function get strength() : int
        {
            return _strength;
        }// end function

        public function get skills() : Array
        {
            return _skills;
        }// end function

        public function get agility() : int
        {
            return _agility;
        }// end function

        public function get defense() : int
        {
            return _defense;
        }// end function

        public function set equipabilities(param1:Object) : void
        {
            _equipabilities = param1;
            return;
        }// end function

        public function set masterId(param1:int) : void
        {
            _masterId = param1;
            return;
        }// end function

        public function get skillId() : int
        {
            return _skillId;
        }// end function

        public function get agilityCap() : int
        {
            return _agilityCap;
        }// end function

        public function get techAverageGrowth() : int
        {
            return _techAverageGrowth;
        }// end function

        public function dispatchEvent(event:Event) : Boolean
        {
            return _bindingEventDispatcher.dispatchEvent(event);
        }// end function

        public function set variableRange(param1:int) : void
        {
            _variableRange = param1;
            return;
        }// end function

        public function set nameLabel(param1:String) : void
        {
            var _loc_2:* = this.nameLabel;
            if (_loc_2 !== param1)
            {
                this._1215755049nameLabel = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "nameLabel", _loc_2, param1));
            }
            return;
        }// end function

        public function removeEventListener(param1:String, param2:Function, param3:Boolean = false) : void
        {
            _bindingEventDispatcher.removeEventListener(param1, param2, param3);
            return;
        }// end function

        public function get techCap() : int
        {
            return _techCap;
        }// end function

        public function get phonetic() : String
        {
            return _phonetic;
        }// end function

        public function set luck(param1:int) : void
        {
            _luck = param1;
            return;
        }// end function

        public function set parentIds(param1:Array) : void
        {
            _parentIds = param1;
            return;
        }// end function

        public function set maxHpCap(param1:int) : void
        {
            _maxHpCap = param1;
            return;
        }// end function

        public function addEventListener(param1:String, param2:Function, param3:Boolean = false, param4:int = 0, param5:Boolean = false) : void
        {
            _bindingEventDispatcher.addEventListener(param1, param2, param3, param4, param5);
            return;
        }// end function

        public function get luckCap() : int
        {
            return _luckCap;
        }// end function

        public function set levelCap(param1:int) : void
        {
            _levelCap = param1;
            return;
        }// end function

        public function set variablePercentage(param1:int) : void
        {
            _variablePercentage = param1;
            return;
        }// end function

        public function get isRangedWeaponJob() : Boolean
        {
            return code == CODE_ARCHER || code == CODE_RANGER || code == CODE_DARK_ARCHER || code == CODE_SKAL_FIGHTER || code == CODE_GREMLIN_KILLER || code == CODE_GREMLIN_DARK || code == CODE_SKAL_VIKING || code == CODE_SKAL_MASTER;
        }// end function

        public function get defenseCap() : int
        {
            return _defenseCap;
        }// end function

        public function set defense(param1:int) : void
        {
            _defense = param1;
            return;
        }// end function

        public function set strength(param1:int) : void
        {
            _strength = param1;
            return;
        }// end function

        public function get strengthAverageGrowth() : int
        {
            return _strengthAverageGrowth;
        }// end function

        public function set intelligenceAverageGrowth(param1:int) : void
        {
            _intelligenceAverageGrowth = param1;
            return;
        }// end function

        public function get name() : String
        {
            return _name ? (_name) : ("");
        }// end function

        private function set _1215755049nameLabel(param1:String) : void
        {
            _nameLabel = param1;
            return;
        }// end function

        public function set agility(param1:int) : void
        {
            _agility = param1;
            return;
        }// end function

        public function get maxHp() : int
        {
            return _maxHp;
        }// end function

        public function get consumptionAnima() : int
        {
            return _consumptionAnima;
        }// end function

        public function get tech() : int
        {
            return _tech;
        }// end function

        public function get intelligenceCap() : int
        {
            return _intelligenceCap;
        }// end function

        public function get level() : int
        {
            return _level;
        }// end function

        public function set skillId(param1:int) : void
        {
            _skillId = param1;
            return;
        }// end function

        public function set agilityCap(param1:int) : void
        {
            _agilityCap = param1;
            return;
        }// end function

        public function set strengthCap(param1:int) : void
        {
            _strengthCap = param1;
            return;
        }// end function

        public function set techAverageGrowth(param1:int) : void
        {
            _techAverageGrowth = param1;
            return;
        }// end function

        public function get disabled() : Boolean
        {
            return _disabled;
        }// end function

        public function set intelligence(param1:int) : void
        {
            _intelligence = param1;
            return;
        }// end function

        public function get maxHpCap() : int
        {
            return _maxHpCap;
        }// end function

        public function get parentIds() : Array
        {
            return _parentIds;
        }// end function

        public function willTrigger(param1:String) : Boolean
        {
            return _bindingEventDispatcher.willTrigger(param1);
        }// end function

        public function get levelCap() : int
        {
            return _levelCap;
        }// end function

        public function get luck() : int
        {
            return _luck;
        }// end function

        public function set skills(param1:Array) : void
        {
            _skills = param1;
            return;
        }// end function

        public function set phonetic(param1:String) : void
        {
            _phonetic = param1;
            return;
        }// end function

        public function get intelligenceAverageGrowth() : int
        {
            return _intelligenceAverageGrowth;
        }// end function

        public function get intelligence() : int
        {
            return _intelligence;
        }// end function

        public function set techCap(param1:int) : void
        {
            _techCap = param1;
            return;
        }// end function

        public function set defenseAverageGrowth(param1:int) : void
        {
            _defenseAverageGrowth = param1;
            return;
        }// end function

        public function set luckCap(param1:int) : void
        {
            _luckCap = param1;
            return;
        }// end function

        public function get strengthCap() : int
        {
            return _strengthCap;
        }// end function

        public function set code(param1:String) : void
        {
            _code = param1;
            return;
        }// end function

        public function set moveRange(param1:int) : void
        {
            _move_range = param1;
            return;
        }// end function

        public function get defenseAverageGrowth() : int
        {
            return _defenseAverageGrowth;
        }// end function

        public function set defenseCap(param1:int) : void
        {
            _defenseCap = param1;
            return;
        }// end function

        public function get code() : String
        {
            return _code;
        }// end function

        public function get moveRange() : int
        {
            return _move_range;
        }// end function

        public function hasEventListener(param1:String) : Boolean
        {
            return _bindingEventDispatcher.hasEventListener(param1);
        }// end function

        public function get description() : String
        {
            return _description;
        }// end function

        public function set agilityAverageGrowth(param1:int) : void
        {
            _agilityAverageGrowth = param1;
            return;
        }// end function

        public function get agilityAverageGrowth() : int
        {
            return _agilityAverageGrowth;
        }// end function

    }
}
