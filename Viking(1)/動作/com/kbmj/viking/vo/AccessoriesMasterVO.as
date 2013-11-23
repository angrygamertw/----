package com.kbmj.viking.vo
{
    import com.kbmj.viking.lib.*;
    import mx.events.*;

    public class AccessoriesMasterVO extends EquipmentMasterVO
    {
        private var _masterId:int;
        private var _rank:int;
        private var _skillId:int;
        private var _magicalDefense:int;
        private var _nameLabel:String;
        private var _physicalDefense:int;
        private var _imageType:String;
        private var _equipabilities:Array;
        private var _description:String;
        private var _phonetic:String;
        private var _magicalDefenseEffectLabel:String;
        private var _avoidance:int;
        private var _code:String;
        private var _avoidanceEffectLabel:String;
        private var _upgradeCode:String;
        private var _hit:int;
        private var _hitEffectLabel:String;
        private var _name:String;
        public static const MASTER_TYPE:String = "AccessoryMaster";

        public function AccessoriesMasterVO()
        {
            return;
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

        public function get avoidanceEffectLabel() : String
        {
            _avoidanceEffectLabel = _avoidance == 0 ? ("") : (Utils.i18n("generalAvoidance") + getSign(_avoidance) + _avoidance + " ");
            return _avoidanceEffectLabel;
        }// end function

        public function get effectLabelAccessory() : String
        {
            var _loc_1:* = avoidanceEffectLabel + magicalDefenseEffectLabel + hitEffectLabel;
            return _loc_1;
        }// end function

        public function get magicalDefense() : int
        {
            return _magicalDefense;
        }// end function

        private function set _1215755049nameLabel(param1:String) : void
        {
            _nameLabel = param1;
            return;
        }// end function

        private function set _302183288magicalDefense(param1:int) : void
        {
            _magicalDefense = param1;
            return;
        }// end function

        public function set magicalDefense(param1:int) : void
        {
            var _loc_2:* = this.magicalDefense;
            if (_loc_2 !== param1)
            {
                this._302183288magicalDefense = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "magicalDefense", _loc_2, param1));
            }
            return;
        }// end function

        public function get name() : String
        {
            return _name;
        }// end function

        public function get hit() : int
        {
            return _hit;
        }// end function

        public function set avoidance(param1:int) : void
        {
            var _loc_2:* = this.avoidance;
            if (_loc_2 !== param1)
            {
                this._1201129404avoidance = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "avoidance", _loc_2, param1));
            }
            return;
        }// end function

        private function set _2147320652skillId(param1:int) : void
        {
            _skillId = param1;
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

        public function get equipabilities() : Array
        {
            return _equipabilities;
        }// end function

        private function set _103315hit(param1:int) : void
        {
            _hit = param1;
            return;
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

        public function get nameLabel() : String
        {
            return _nameLabel;
        }// end function

        public function get rank() : int
        {
            return _rank;
        }// end function

        private function set _1028567320equipabilities(param1:Array) : void
        {
            _equipabilities = param1;
            return;
        }// end function

        public function get upgradeCode() : String
        {
            return _upgradeCode;
        }// end function

        private function set _878147787imageType(param1:String) : void
        {
            _imageType = param1;
            return;
        }// end function

        public function get imageType() : String
        {
            return _imageType;
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

        public function get masterTypeLabel() : String
        {
            return Utils.i18n("generalEquipAccessory");
        }// end function

        public function get magicalDefenseEffectLabel() : String
        {
            _magicalDefenseEffectLabel = _magicalDefense == 0 ? ("") : (Utils.i18n("changeEquipmentMagicalDefense") + getSign(_magicalDefense) + _magicalDefense + " ");
            return _magicalDefenseEffectLabel;
        }// end function

        private function set _1724546052description(param1:String) : void
        {
            _description = param1;
            return;
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

        public function get avoidance() : int
        {
            return _avoidance;
        }// end function

        private function set _1201129404avoidance(param1:int) : void
        {
            _avoidance = param1;
            return;
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

        public function get masterType() : String
        {
            return MASTER_TYPE;
        }// end function

        public function get effectLabelAll() : String
        {
            var _loc_1:* = effectLabel + effectLabelAccessory;
            return _loc_1;
        }// end function

        public function get hitEffectLabel() : String
        {
            _hitEffectLabel = _hit == 0 ? ("") : (Utils.i18n("generalHit") + getSign(_hit) + _hit + " ");
            return _hitEffectLabel;
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

        private function set _283910941masterId(param1:int) : void
        {
            _masterId = param1;
            return;
        }// end function

        public function get skillId() : int
        {
            return _skillId;
        }// end function

        public function set physicalDefense(param1:int) : void
        {
            var _loc_2:* = this.physicalDefense;
            if (_loc_2 !== param1)
            {
                this._1924991639physicalDefense = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "physicalDefense", _loc_2, param1));
            }
            return;
        }// end function

        public function set rank(param1:int) : void
        {
            var _loc_2:* = this.rank;
            if (_loc_2 !== param1)
            {
                this._3492908rank = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "rank", _loc_2, param1));
            }
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

        public function get phonetic() : String
        {
            return _phonetic;
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

        private function set _1845080535upgradeCode(param1:String) : void
        {
            _upgradeCode = param1;
            return;
        }// end function

        private function set _3492908rank(param1:int) : void
        {
            _rank = param1;
            return;
        }// end function

        public function get physicalDefense() : int
        {
            return _physicalDefense;
        }// end function

        public function get code() : String
        {
            return _code;
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

        private function set _1924991639physicalDefense(param1:int) : void
        {
            _physicalDefense = param1;
            return;
        }// end function

        public function get description() : String
        {
            return _description;
        }// end function

    }
}
