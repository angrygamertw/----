package com.kbmj.viking.vo
{
    import flash.events.*;
    import mx.events.*;

    public class BaseBelongingVO extends Object implements IEventDispatcher
    {
        protected var _defense:int = 0;
        protected var _agility:int = 0;
        protected var _maxHp:int = 0;
        protected var _luck:int = 0;
        protected var _masterVO:Object;
        protected var _intelligence:int = 0;
        protected var _strength:int = 0;
        protected var _sellingPrice:int;
        private var _bindingEventDispatcher:EventDispatcher;
        protected var _skill:SkillVO;
        protected var _tech:int = 0;
        protected var _selected:Boolean;
        protected var _belongingId:int;
        public static const BELONGING_TYPE_LABEL:String = "その他";
        public static const BELONGING_TYPE:String = "base";

        public function BaseBelongingVO()
        {
            _bindingEventDispatcher = new EventDispatcher(IEventDispatcher(this));
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

        public function hasEventListener(param1:String) : Boolean
        {
            return _bindingEventDispatcher.hasEventListener(param1);
        }// end function

        private function set _283911323masterVO(param1:Object) : void
        {
            _masterVO = param1;
            return;
        }// end function

        private function set _645192743sellingPrice(param1:int) : void
        {
            _sellingPrice = param1;
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

        private function set _1215755049nameLabel(param1:String) : void
        {
            masterVO.nameLabel = param1;
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

        public function get maxHp() : int
        {
            return _maxHp + _masterVO.maxHp;
        }// end function

        public function get equipabilityJobNameLabel() : String
        {
            return masterVO.equipabilityJobNameLabel;
        }// end function

        public function get tech() : int
        {
            return _tech + _masterVO.tech;
        }// end function

        private function set _109496913skill(param1:SkillVO) : void
        {
            _skill = param1;
            return;
        }// end function

        public function get masterVO() : Object
        {
            return _masterVO;
        }// end function

        public function get belongingType() : String
        {
            return BELONGING_TYPE;
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

        public function get selected() : Boolean
        {
            return _selected;
        }// end function

        private function set _1191572123selected(param1:Boolean) : void
        {
            _selected = param1;
            return;
        }// end function

        public function get nameLabel() : String
        {
            return masterVO.nameLabel;
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

        private function set _1791316033strength(param1:int) : void
        {
            _strength = param1;
            return;
        }// end function

        public function get luck() : int
        {
            return _luck + _masterVO.luck;
        }// end function

        public function set sellingPrice(param1:int) : void
        {
            var _loc_2:* = this.sellingPrice;
            if (_loc_2 !== param1)
            {
                this._645192743sellingPrice = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "sellingPrice", _loc_2, param1));
            }
            return;
        }// end function

        public function get rank() : String
        {
            return masterVO.rank;
        }// end function

        public function get masterId() : int
        {
            return _masterVO.masterId;
        }// end function

        public function set selected(param1:Boolean) : void
        {
            var _loc_2:* = this.selected;
            if (_loc_2 !== param1)
            {
                this._1191572123selected = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "selected", _loc_2, param1));
            }
            return;
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

        public function set masterVO(param1:Object) : void
        {
            var _loc_2:* = this.masterVO;
            if (_loc_2 !== param1)
            {
                this._283911323masterVO = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "masterVO", _loc_2, param1));
            }
            return;
        }// end function

        private function set _3333041luck(param1:int) : void
        {
            _luck = param1;
            return;
        }// end function

        public function get intelligence() : int
        {
            return _intelligence + _masterVO.intelligence;
        }// end function

        public function get strength() : int
        {
            return _strength + _masterVO.strength;
        }// end function

        public function get masterType() : String
        {
            return _masterVO.masterType;
        }// end function

        public function get agility() : int
        {
            return _agility + _masterVO.agility;
        }// end function

        public function get defense() : int
        {
            return _defense + _masterVO.defense;
        }// end function

        private function set _3555990tech(param1:int) : void
        {
            _tech = param1;
            return;
        }// end function

        private function set _1544916544defense(param1:int) : void
        {
            _defense = param1;
            return;
        }// end function

        public function get belongingId() : int
        {
            return _belongingId;
        }// end function

        public function dispatchEvent(event:Event) : Boolean
        {
            return _bindingEventDispatcher.dispatchEvent(event);
        }// end function

        public function get skill() : SkillVO
        {
            if (_skill)
            {
                return _skill;
            }
            return _masterVO.skill;
        }// end function

        public function addEventListener(param1:String, param2:Function, param3:Boolean = false, param4:int = 0, param5:Boolean = false) : void
        {
            _bindingEventDispatcher.addEventListener(param1, param2, param3, param4, param5);
            return;
        }// end function

        public function get belongingTypeLabel() : String
        {
            return BELONGING_TYPE_LABEL;
        }// end function

        public function get sellingPrice() : int
        {
            return _sellingPrice;
        }// end function

        public function willTrigger(param1:String) : Boolean
        {
            return _bindingEventDispatcher.willTrigger(param1);
        }// end function

        private function set _797998783intelligence(param1:int) : void
        {
            _intelligence = param1;
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

        public function removeEventListener(param1:String, param2:Function, param3:Boolean = false) : void
        {
            _bindingEventDispatcher.removeEventListener(param1, param2, param3);
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
