package com.kbmj.viking.vo
{
    import com.kbmj.viking.lib.*;
    import mx.events.*;

    public class WeaponsMasterVO extends EquipmentMasterVO
    {
        private var _weaponRank:int;
        private var _endurance:int;
        private var _skillId:int;
        private var _damage:int;
        private var _masterId:int;
        private var _weaponType:int;
        private var _attackRange:int;
        private var _nameLabel:String;
        private var _attackRadiusType:int;
        private var _imageType:String;
        private var _equipabilities:Array;
        private var _description:String;
        private var _disregardDecoy:Boolean;
        private var _phonetic:String;
        private var _code:String;
        private var _hit:int;
        private var _attackRadius:int;
        private var _upgradeCode:String;
        private var _name:String;
        public static const WEAPON_CODE_PURIFY_LIGHT:String = "2108";
        public static const MASTER_TYPE:String = "WeaponMaster";
        public static const WEAPON_CODE_LOVE_LIGHT:String = "2058";
        public static const WEAPON_CODE_LIFE_LEECH:String = "2060";
        public static const WEAPON_CODE_BLOOD_SUCK:String = "2244";
        public static const WEAPON_CODE_TRUE_LIFE_LEECH:String = "2117";

        public function WeaponsMasterVO()
        {
            return;
        }// end function

        public function set skillId(param1:int) : void
        {
            var _loc_2:* = this.skillId;
            if (_loc_2 !== param1)
            {
                this._2147320652skillId = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "skillId", _loc_2, param1));
            }
            return;
        }// end function

        public function get attackRadius() : int
        {
            return _attackRadius;
        }// end function

        private function set _1339126929damage(param1:int) : void
        {
            _damage = param1;
            return;
        }// end function

        public function get description() : String
        {
            return _description;
        }// end function

        public function set weaponType(param1:int) : void
        {
            var _loc_2:* = this.weaponType;
            if (_loc_2 !== param1)
            {
                this._1372542838weaponType = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "weaponType", _loc_2, param1));
            }
            return;
        }// end function

        private function set _1714720249endurance(param1:int) : void
        {
            _endurance = param1;
            return;
        }// end function

        public function get name() : String
        {
            return _name;
        }// end function

        public function set attackRadius(param1:int) : void
        {
            var _loc_2:* = this.attackRadius;
            if (_loc_2 !== param1)
            {
                this._451440890attackRadius = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "attackRadius", _loc_2, param1));
            }
            return;
        }// end function

        private function set _1625594028attackRadiusType(param1:int) : void
        {
            _attackRadiusType = param1;
            return;
        }// end function

        private function set _2147320652skillId(param1:int) : void
        {
            _skillId = param1;
            return;
        }// end function

        public function get hit() : int
        {
            return _hit;
        }// end function

        public function get endurance() : int
        {
            return _endurance;
        }// end function

        private function set _103315hit(param1:int) : void
        {
            _hit = param1;
            return;
        }// end function

        private function set _3373707name(param1:String) : void
        {
            _name = param1;
            return;
        }// end function

        public function get masterId() : int
        {
            return _masterId;
        }// end function

        public function set description(param1:String) : void
        {
            var _loc_2:* = this.description;
            if (_loc_2 !== param1)
            {
                this._1724546052description = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "description", _loc_2, param1));
            }
            return;
        }// end function

        public function get disregardDecoy() : Boolean
        {
            return _disregardDecoy;
        }// end function

        public function get equipabilities() : Array
        {
            return _equipabilities;
        }// end function

        public function get upgradeCode() : String
        {
            return _upgradeCode;
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

        private function set _1028567320equipabilities(param1:Array) : void
        {
            _equipabilities = param1;
            return;
        }// end function

        public function set attackRadiusType(param1:int) : void
        {
            var _loc_2:* = this.attackRadiusType;
            if (_loc_2 !== param1)
            {
                this._1625594028attackRadiusType = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "attackRadiusType", _loc_2, param1));
            }
            return;
        }// end function

        public function get nameLabel() : String
        {
            return _nameLabel;
        }// end function

        public function get imageType() : String
        {
            return _imageType;
        }// end function

        private function set _1372542838weaponType(param1:int) : void
        {
            _weaponType = param1;
            return;
        }// end function

        private function set _878147787imageType(param1:String) : void
        {
            _imageType = param1;
            return;
        }// end function

        private function set _1845080535upgradeCode(param1:String) : void
        {
            _upgradeCode = param1;
            return;
        }// end function

        public function get rank() : int
        {
            return _weaponRank;
        }// end function

        public function get masterType() : String
        {
            return MASTER_TYPE;
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

        public function set masterId(param1:int) : void
        {
            var _loc_2:* = this.masterId;
            if (_loc_2 !== param1)
            {
                this._283910941masterId = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "masterId", _loc_2, param1));
            }
            return;
        }// end function

        public function set attackRange(param1:int) : void
        {
            var _loc_2:* = this.attackRange;
            if (_loc_2 !== param1)
            {
                this._678164523attackRange = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "attackRange", _loc_2, param1));
            }
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

        private function set _1724546052description(param1:String) : void
        {
            _description = param1;
            return;
        }// end function

        public function get attackRadiusType() : int
        {
            return _attackRadiusType;
        }// end function

        public function set equipabilities(param1:Array) : void
        {
            var _loc_2:* = this.equipabilities;
            if (_loc_2 !== param1)
            {
                this._1028567320equipabilities = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "equipabilities", _loc_2, param1));
            }
            return;
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

        public function set disregardDecoy(param1:Boolean) : void
        {
            var _loc_2:* = this.disregardDecoy;
            if (_loc_2 !== param1)
            {
                this._1928480287disregardDecoy = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "disregardDecoy", _loc_2, param1));
            }
            return;
        }// end function

        public function set weaponRank(param1:int) : void
        {
            var _loc_2:* = this.weaponRank;
            if (_loc_2 !== param1)
            {
                this._1372460136weaponRank = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "weaponRank", _loc_2, param1));
            }
            return;
        }// end function

        public function get masterTypeLabel() : String
        {
            return Utils.i18n("generalWeapon");
        }// end function

        private function set _283910941masterId(param1:int) : void
        {
            _masterId = param1;
            return;
        }// end function

        public function get skillId() : int
        {
            return _skillId;
        }// end function

        public function get attackRange() : int
        {
            return _attackRange;
        }// end function

        private function set _1372460136weaponRank(param1:int) : void
        {
            _weaponRank = param1;
            return;
        }// end function

        public function set code(param1:String) : void
        {
            var _loc_2:* = this.code;
            if (_loc_2 !== param1)
            {
                this._3059181code = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "code", _loc_2, param1));
            }
            return;
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
            return _phonetic;
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

        private function set _1215755049nameLabel(param1:String) : void
        {
            _nameLabel = param1;
            return;
        }// end function

        public function get weaponRank() : int
        {
            return _weaponRank;
        }// end function

        private function set _1928480287disregardDecoy(param1:Boolean) : void
        {
            _disregardDecoy = param1;
            return;
        }// end function

        public function get code() : String
        {
            return _code;
        }// end function

        public function get damage() : int
        {
            return _damage;
        }// end function

        private function set _1280088992phonetic(param1:String) : void
        {
            _phonetic = param1;
            return;
        }// end function

        private function set _3059181code(param1:String) : void
        {
            _code = param1;
            return;
        }// end function

        public function get weaponType() : int
        {
            return _weaponType;
        }// end function

        public function set imageType(param1:String) : void
        {
            var _loc_2:* = this.imageType;
            if (_loc_2 !== param1)
            {
                this._878147787imageType = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "imageType", _loc_2, param1));
            }
            return;
        }// end function

        private function set _678164523attackRange(param1:int) : void
        {
            _attackRange = param1;
            return;
        }// end function

        private function set _451440890attackRadius(param1:int) : void
        {
            _attackRadius = param1;
            return;
        }// end function

        public function set upgradeCode(param1:String) : void
        {
            var _loc_2:* = this.upgradeCode;
            if (_loc_2 !== param1)
            {
                this._1845080535upgradeCode = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "upgradeCode", _loc_2, param1));
            }
            return;
        }// end function

    }
}
