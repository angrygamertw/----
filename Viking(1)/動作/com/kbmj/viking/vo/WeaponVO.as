package com.kbmj.viking.vo
{
    import mx.events.*;

    public class WeaponVO extends BaseBelongingVO
    {
        private var weaponTypeLables:Array;
        private var _damage:int;
        private var _endurance:int;
        private var _range_offset:int;
        private var _weaponId:int;
        private var _displayEndurance:int;
        private var _hit:int;
        public static const BELONGING_TYPE:String = "weapon";
        public static const WEAPON_TYPE_BOW:int = 3;
        public static const WEAPON_TYPE_NORMAL:int = 6;
        public static const WEAPON_TYPE_HEAL:int = 5;
        public static const BELONGING_TYPE_LABEL:String = "武器";
        public static const WEAPON_TYPE_MAGIC:int = 4;
        public static const WEAPON_TYPE_AXE:int = 0;
        public static const WEAPON_TYPE_SPEAR:int = 2;
        public static const WEAPON_TYPE_SWORD:int = 1;

        public function WeaponVO()
        {
            weaponTypeLables = ["斧", "劍", "槍", "弓", "魔法", "祈禱", "普通"];
            return;
        }// end function

        public function get attackRadius() : int
        {
            return _masterVO.attackRadius;
        }// end function

        private function set _1339126929damage(param1:int) : void
        {
            _damage = param1;
            return;
        }// end function

        public function get endurance() : int
        {
            return _endurance;
        }// end function

        private function set _1714720249endurance(param1:int) : void
        {
            _endurance = param1;
            return;
        }// end function

        public function get name() : String
        {
            return _masterVO.name;
        }// end function

        private function set _109366427displayEndurance(param1:int) : void
        {
            _displayEndurance = param1;
            return;
        }// end function

        public function get hit() : int
        {
            return _hit;
        }// end function

        public function set endurance(param1:int) : void
        {
            var _loc_2:* = this.endurance;
            if (_loc_2 !== param1)
            {
                this._1714720249endurance = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "endurance", _loc_2, param1));
            }
            return;
        }// end function

        private function set _731532201weaponId(param1:int) : void
        {
            _weaponId = param1;
            return;
        }// end function

        override public function get belongingType() : String
        {
            return BELONGING_TYPE;
        }// end function

        public function get weaponTypeLabel() : String
        {
            return weaponTypeLables[weaponType];
        }// end function

        public function get disregardDecoy() : int
        {
            return _masterVO.disregardDecoy;
        }// end function

        private function set _103315hit(param1:int) : void
        {
            _hit = param1;
            return;
        }// end function

        public function set hit(param1:int) : void
        {
            var _loc_2:* = this.hit;
            if (_loc_2 !== param1)
            {
                this._103315hit = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "hit", _loc_2, param1));
            }
            return;
        }// end function

        public function get rarity() : int
        {
            return _masterVO.rarity;
        }// end function

        public function get enduranceLabel() : String
        {
            return endurance + "/" + _masterVO.endurance;
        }// end function

        public function set weaponId(param1:int) : void
        {
            var _loc_2:* = this.weaponId;
            if (_loc_2 !== param1)
            {
                this._731532201weaponId = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "weaponId", _loc_2, param1));
            }
            return;
        }// end function

        public function get rangeOffset() : int
        {
            return _range_offset;
        }// end function

        override public function get belongingId() : int
        {
            return _weaponId;
        }// end function

        public function set phonetic(param1:String) : void
        {
            var _loc_2:* = this.phonetic;
            if (_loc_2 !== param1)
            {
                this._1280088992phonetic = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "phonetic", _loc_2, param1));
            }
            return;
        }// end function

        public function set displayEndurance(param1:int) : void
        {
            var _loc_2:* = this.displayEndurance;
            if (_loc_2 !== param1)
            {
                this._109366427displayEndurance = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "displayEndurance", _loc_2, param1));
            }
            return;
        }// end function

        public function get attackRange() : int
        {
            return _masterVO.attackRange + _range_offset;
        }// end function

        override public function get belongingTypeLabel() : String
        {
            return BELONGING_TYPE_LABEL;
        }// end function

        public function get attackRadiusType() : int
        {
            return _masterVO.attackRadiusType;
        }// end function

        public function set damage(param1:int) : void
        {
            var _loc_2:* = this.damage;
            if (_loc_2 !== param1)
            {
                this._1339126929damage = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "damage", _loc_2, param1));
            }
            return;
        }// end function

        public function get phonetic() : String
        {
            return _masterVO.phonetic;
        }// end function

        public function get effectLabel() : String
        {
            return _masterVO.effectLabel;
        }// end function

        public function get displayEndurance() : int
        {
            return _displayEndurance;
        }// end function

        public function get weaponId() : int
        {
            return _weaponId;
        }// end function

        public function set rangeOffset(param1:int) : void
        {
            var _loc_2:* = this.rangeOffset;
            if (_loc_2 !== param1)
            {
                this._904009680rangeOffset = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "rangeOffset", _loc_2, param1));
            }
            return;
        }// end function

        public function get weaponRank() : int
        {
            return _masterVO.weaponRank;
        }// end function

        public function get code() : String
        {
            return _masterVO.code;
        }// end function

        private function set _1280088992phonetic(param1:String) : void
        {
            return;
        }// end function

        public function get damage() : int
        {
            return _damage;
        }// end function

        private function set _904009680rangeOffset(param1:int) : void
        {
            _range_offset = param1;
            return;
        }// end function

        public function get description() : String
        {
            return _masterVO.description;
        }// end function

        public function get weaponType() : int
        {
            return _masterVO.weaponType;
        }// end function

    }
}
