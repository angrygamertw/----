package com.kbmj.viking.vo
{
    import mx.events.*;

    public class ItemVO extends BaseBelongingVO
    {
        private var _endurance:int;
        private var _itemId:int;
        public static const BELONGING_TYPE_LABEL:String = "物品";
        public static const BELONGING_TYPE:String = "item";

        public function ItemVO()
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

        private function set _1306084975effect(param1:String) : void
        {
            return;
        }// end function

        public function get endurance() : int
        {
            return _endurance;
        }// end function

        public function get available() : int
        {
            return _masterVO.available;
        }// end function

        public function get itemId() : int
        {
            return _itemId;
        }// end function

        public function get effect() : String
        {
            return _masterVO.effect;
        }// end function

        public function get equipment() : int
        {
            return _masterVO.equipment;
        }// end function

        override public function get belongingTypeLabel() : String
        {
            return BELONGING_TYPE_LABEL;
        }// end function

        private function set _1178662002itemId(param1:int) : void
        {
            _itemId = param1;
            return;
        }// end function

        override public function get belongingType() : String
        {
            return BELONGING_TYPE;
        }// end function

        private function set _1708804397enduranceLabel(param1:String) : void
        {
            return;
        }// end function

        public function get phonetic() : String
        {
            return _masterVO.phonetic;
        }// end function

        public function set enduranceLabel(param1:String) : void
        {
            var _loc_2:* = this.enduranceLabel;
            if (_loc_2 !== param1)
            {
                this._1708804397enduranceLabel = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "enduranceLabel", _loc_2, param1));
            }
            return;
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

        public function set itemId(param1:int) : void
        {
            var _loc_2:* = this.itemId;
            if (_loc_2 !== param1)
            {
                this._1178662002itemId = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "itemId", _loc_2, param1));
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

        public function get crystalEffect() : int
        {
            return _masterVO.crystalEffect;
        }// end function

        public function get rarity() : int
        {
            return _masterVO.rarity;
        }// end function

        public function get isCrystal() : Boolean
        {
            return _masterVO.crystalEffect;
        }// end function

        public function get isSkillCrystal() : Boolean
        {
            return _masterVO.crystalEffect == SkillVO.CRYSTAL_EFFECT_SKILL;
        }// end function

        public function get enduranceLabel() : String
        {
            return _endurance + "/" + _masterVO.endurance;
        }// end function

        private function set _1714720249endurance(param1:int) : void
        {
            _endurance = param1;
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
            return _itemId;
        }// end function

    }
}
