package com.kbmj.viking.vo
{
    import com.kbmj.viking.lib.*;
    import flash.events.*;
    import mx.events.*;

    public class EquipmentMasterVO extends Object implements IEventDispatcher
    {
        private var _defense:int;
        private var _agility:int;
        private var _sellable:Boolean;
        private var _maxHp:int;
        private var _luck:int;
        private var _maxHpEffectLabel:String;
        private var _intelligence:int;
        private var _strength:int;
        private var _defenseEffectLabel:String;
        private var _strengthEffectLabel:String;
        private var _effectLabel:String;
        private var _techEffectLabel:String;
        private var _luckEffectLabel:String;
        private var _bindingEventDispatcher:EventDispatcher;
        private var _rarity:int;
        private var _skill:SkillVO;
        private var _intelligenceEffectLabel:String;
        private var _equipabilityJobNameLabel:String;
        private var _tech:int;
        private var _agilityEffectLabel:String;

        public function EquipmentMasterVO()
        {
            _bindingEventDispatcher = new EventDispatcher(IEventDispatcher(this));
            return;
        }// end function

        private function set _1197960108sellable(param1:Boolean) : void
        {
            _sellable = param1;
            return;
        }// end function

        public function get defenseEffectLabel() : String
        {
            _defenseEffectLabel = _defense == 0 ? ("") : (Utils.i18n("generalDefense") + getSign(_defense) + _defense + " ");
            return _defenseEffectLabel;
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

        public function get maxHp() : int
        {
            return _maxHp;
        }// end function

        public function get equipabilityJobNameLabel() : String
        {
            return _equipabilityJobNameLabel;
        }// end function

        private function set _109496913skill(param1:SkillVO) : void
        {
            _skill = param1;
            return;
        }// end function

        public function set equipabilityJobNameLabel(param1:String) : void
        {
            var _loc_2:* = this.equipabilityJobNameLabel;
            if (_loc_2 !== param1)
            {
                this._1849835514equipabilityJobNameLabel = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "equipabilityJobNameLabel", _loc_2, param1));
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

        public function get tech() : int
        {
            return _tech;
        }// end function

        public function willTrigger(param1:String) : Boolean
        {
            return _bindingEventDispatcher.willTrigger(param1);
        }// end function

        public function set skill(param1:SkillVO) : void
        {
            var _loc_2:* = this.skill;
            if (_loc_2 !== param1)
            {
                this._109496913skill = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "skill", _loc_2, param1));
            }
            return;
        }// end function

        private function set _1849835514equipabilityJobNameLabel(param1:String) : void
        {
            _equipabilityJobNameLabel = param1;
            return;
        }// end function

        public function get luck() : int
        {
            return _luck;
        }// end function

        public function get rarity() : int
        {
            return _rarity;
        }// end function

        private function set _938161749rarity(param1:int) : void
        {
            _rarity = param1;
            return;
        }// end function

        public function get maxHpEffectLabel() : String
        {
            _maxHpEffectLabel = _maxHp == 0 ? ("") : ("HP" + getSign(_maxHp) + _maxHp);
            return _maxHpEffectLabel;
        }// end function

        public function getSign(param1:int) : String
        {
            return param1 < 0 ? ("") : ("+");
        }// end function

        public function get sellable() : Boolean
        {
            return _sellable;
        }// end function

        public function removeEventListener(param1:String, param2:Function, param3:Boolean = false) : void
        {
            _bindingEventDispatcher.removeEventListener(param1, param2, param3);
            return;
        }// end function

        private function set _3333041luck(param1:int) : void
        {
            _luck = param1;
            return;
        }// end function

        public function get intelligence() : int
        {
            return _intelligence;
        }// end function

        public function get strength() : int
        {
            return _strength;
        }// end function

        public function get agility() : int
        {
            return _agility;
        }// end function

        public function get defense() : int
        {
            return _defense;
        }// end function

        private function set _1544916544defense(param1:int) : void
        {
            _defense = param1;
            return;
        }// end function

        public function addEventListener(param1:String, param2:Function, param3:Boolean = false, param4:int = 0, param5:Boolean = false) : void
        {
            _bindingEventDispatcher.addEventListener(param1, param2, param3, param4, param5);
            return;
        }// end function

        private function set _1791316033strength(param1:int) : void
        {
            _strength = param1;
            return;
        }// end function

        public function dispatchEvent(event:Event) : Boolean
        {
            return _bindingEventDispatcher.dispatchEvent(event);
        }// end function

        public function set rarity(param1:int) : void
        {
            var _loc_2:* = this.rarity;
            if (_loc_2 !== param1)
            {
                this._938161749rarity = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "rarity", _loc_2, param1));
            }
            return;
        }// end function

        public function get skill() : SkillVO
        {
            return _skill;
        }// end function

        public function get intelligenceEffectLabel() : String
        {
            _intelligenceEffectLabel = _intelligence == 0 ? ("") : (Utils.i18n("generalIntelligence") + getSign(_intelligence) + _intelligence + " ");
            return _intelligenceEffectLabel;
        }// end function

        public function get agilityEffectLabel() : String
        {
            _agilityEffectLabel = _agility == 0 ? ("") : (Utils.i18n("generalAgility") + getSign(_agility) + _agility + " ");
            return _agilityEffectLabel;
        }// end function

        public function set sellable(param1:Boolean) : void
        {
            var _loc_2:* = this.sellable;
            if (_loc_2 !== param1)
            {
                this._1197960108sellable = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "sellable", _loc_2, param1));
            }
            return;
        }// end function

        public function get strengthEffectLabel() : String
        {
            _strengthEffectLabel = _strength == 0 ? ("") : (Utils.i18n("generalStrength") + getSign(_strength) + _strength + " ");
            return _strengthEffectLabel;
        }// end function

        public function get effectLabel() : String
        {
            _effectLabel = strengthEffectLabel + techEffectLabel + agilityEffectLabel + defenseEffectLabel + intelligenceEffectLabel + luckEffectLabel + maxHpEffectLabel;
            return _effectLabel;
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

        public function get techEffectLabel() : String
        {
            _techEffectLabel = _tech == 0 ? ("") : (Utils.i18n("generalTech") + getSign(_tech) + _tech + " ");
            return _techEffectLabel;
        }// end function

        public function get luckEffectLabel() : String
        {
            _luckEffectLabel = _luck == 0 ? ("") : (Utils.i18n("generalLuck") + getSign(_luck) + _luck + " ");
            return _luckEffectLabel;
        }// end function

        public function hasEventListener(param1:String) : Boolean
        {
            return _bindingEventDispatcher.hasEventListener(param1);
        }// end function

        private function set _797998783intelligence(param1:int) : void
        {
            _intelligence = param1;
            return;
        }// end function

        private function set _3555990tech(param1:int) : void
        {
            _tech = param1;
            return;
        }// end function

        private function set _103671180maxHp(param1:int) : void
        {
            _maxHp = param1;
            return;
        }// end function

        private function set _1057361851agility(param1:int) : void
        {
            _agility = param1;
            return;
        }// end function

    }
}
