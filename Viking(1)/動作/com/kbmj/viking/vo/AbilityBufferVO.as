package com.kbmj.viking.vo
{

    public class AbilityBufferVO extends Object
    {
        private var _defense:int;
        private var _agility:int;
        private var _maxHp:int;
        private var _luck:int;
        private var _hit:int;
        private var _intelligence:int;
        private var _strength:int;
        private var _magicalDefense:int;
        private var _physicalDefense:int;
        private var _tech:int;
        private var _avoid:int;

        public function AbilityBufferVO(param1:Object = null)
        {
            if (param1)
            {
                _strength = param1.strength;
                _defense = param1.defense;
                _tech = param1.tech;
                _agility = param1.agility;
                _intelligence = param1.intelligence;
                _luck = param1.luck;
                _maxHp = param1.maxHp;
                if (param1.belongingType == "accessory")
                {
                    _hit = param1.hit;
                    _avoid = param1.avoidance;
                    _magicalDefense = param1.magicalDefense;
                    _physicalDefense = param1.physicalDefense;
                }
            }
            return;
        }// end function

        public function get avoid() : int
        {
            return _avoid;
        }// end function

        public function get agility() : int
        {
            return _agility;
        }// end function

        public function get defense() : int
        {
            return _defense;
        }// end function

        public function get strength() : int
        {
            return _strength;
        }// end function

        public function set strength(param1:int) : void
        {
            _strength = param1;
            return;
        }// end function

        public function set agility(param1:int) : void
        {
            _agility = param1;
            return;
        }// end function

        public function set defense(param1:int) : void
        {
            _defense = param1;
            return;
        }// end function

        public function set physicalDefense(param1:int) : void
        {
            _physicalDefense = param1;
            return;
        }// end function

        public function get maxHp() : int
        {
            return _maxHp;
        }// end function

        public function get tech() : int
        {
            return _tech;
        }// end function

        public function get magicalDefense() : int
        {
            return _magicalDefense;
        }// end function

        public function set maxHp(param1:int) : void
        {
            _maxHp = param1;
            return;
        }// end function

        public function set magicalDefense(param1:int) : void
        {
            _magicalDefense = param1;
            return;
        }// end function

        public function set luck(param1:int) : void
        {
            _luck = param1;
            return;
        }// end function

        public function set hit(param1:int) : void
        {
            _hit = param1;
            return;
        }// end function

        public function get physicalDefense() : int
        {
            return _physicalDefense;
        }// end function

        public function get hit() : int
        {
            return _hit;
        }// end function

        public function get luck() : int
        {
            return _luck;
        }// end function

        public function set avoid(param1:int) : void
        {
            _avoid = param1;
            return;
        }// end function

        public function set tech(param1:int) : void
        {
            _tech = param1;
            return;
        }// end function

        public function set intelligence(param1:int) : void
        {
            _intelligence = param1;
            return;
        }// end function

        public function get intelligence() : int
        {
            return _intelligence;
        }// end function

    }
}
