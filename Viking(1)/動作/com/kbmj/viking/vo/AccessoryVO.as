package com.kbmj.viking.vo
{
    import mx.events.*;

    public class AccessoryVO extends BaseBelongingVO
    {
        private var _accessoryId:int;
        private var _name:String;
        private var _effect:String;
        public static const BELONGING_TYPE_LABEL:String = "首飾";
        public static const BELONGING_TYPE:String = "accessory";

        public function AccessoryVO()
        {
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

        public function set effectLabelAll(param1:String) : void
        {
            var _loc_2:* = this.effectLabelAll;
            if (_loc_2 !== param1)
            {
                this._707963582effectLabelAll = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "effectLabelAll", _loc_2, param1));
            }
            return;
        }// end function

        public function get avoidance() : int
        {
            return _masterVO.avoidance;
        }// end function

        public function get effectLabelAll() : String
        {
            return skillId ? (_masterVO.skill.nameLabel) : (_masterVO.effectLabelAll);
        }// end function

        private function set _1306084975effect(param1:String) : void
        {
            _effect = param1;
            return;
        }// end function

        public function get magicalDefense() : int
        {
            return _masterVO.magicalDefense;
        }// end function

        public function get name() : String
        {
            return _name;
        }// end function

        public function get skillId() : int
        {
            return _masterVO.skillId;
        }// end function

        public function get accessoryId() : int
        {
            return _accessoryId;
        }// end function

        public function get enduranceLabel() : String
        {
            return "-";
        }// end function

        public function get effect() : String
        {
            return _effect;
        }// end function

        public function get hit() : int
        {
            return _masterVO.hit;
        }// end function

        public function set effectLabel(param1:String) : void
        {
            var _loc_2:* = this.effectLabel;
            if (_loc_2 !== param1)
            {
                this._1643128803effectLabel = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "effectLabel", _loc_2, param1));
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

        override public function get belongingTypeLabel() : String
        {
            return BELONGING_TYPE_LABEL;
        }// end function

        private function set _1017652275accessoryId(param1:int) : void
        {
            _accessoryId = param1;
            return;
        }// end function

        public function set accessoryId(param1:int) : void
        {
            var _loc_2:* = this.accessoryId;
            if (_loc_2 !== param1)
            {
                this._1017652275accessoryId = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "accessoryId", _loc_2, param1));
            }
            return;
        }// end function

        override public function get belongingType() : String
        {
            return BELONGING_TYPE;
        }// end function

        public function set effect(param1:String) : void
        {
            var _loc_2:* = this.effect;
            if (_loc_2 !== param1)
            {
                this._1306084975effect = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "effect", _loc_2, param1));
            }
            return;
        }// end function

        public function get effectLabel() : String
        {
            return _masterVO.effectLabel;
        }// end function

        public function get phonetic() : String
        {
            return _masterVO.phonetic;
        }// end function

        public function get physicalDefense() : int
        {
            return _masterVO.physicalDefense;
        }// end function

        public function get rarity() : int
        {
            return _masterVO.rarity;
        }// end function

        private function set _707963582effectLabelAll(param1:String) : void
        {
            return;
        }// end function

        public function get code() : String
        {
            return _masterVO.code;
        }// end function

        public function get effectLabelAccessory() : String
        {
            return _masterVO.effectLabelAccessory;
        }// end function

        private function set _3373707name(param1:String) : void
        {
            _name = param1;
            return;
        }// end function

        private function set _1643128803effectLabel(param1:String) : void
        {
            return;
        }// end function

        private function set _1280088992phonetic(param1:String) : void
        {
            return;
        }// end function

        public function get description() : String
        {
            return _masterVO.description;
        }// end function

        override public function get belongingId() : int
        {
            return _accessoryId;
        }// end function

    }
}
