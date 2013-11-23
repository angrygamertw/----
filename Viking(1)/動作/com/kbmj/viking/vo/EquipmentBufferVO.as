package com.kbmj.viking.vo
{

    public class EquipmentBufferVO extends Object
    {
        private var _armor:AbilityBufferVO;
        private var _accessory:AbilityBufferVO;
        private var _weapon:AbilityBufferVO;

        public function EquipmentBufferVO()
        {
            _weapon = new AbilityBufferVO();
            _armor = new AbilityBufferVO();
            _accessory = new AbilityBufferVO();
            return;
        }// end function

        public function get strength() : int
        {
            return weapon.strength + armor.strength + accessory.strength;
        }// end function

        public function set accessory(param1:AbilityBufferVO) : void
        {
            _accessory = param1;
            return;
        }// end function

        public function get agility() : int
        {
            return weapon.agility + armor.agility + accessory.agility;
        }// end function

        public function get magicalDefense() : int
        {
            return accessory.magicalDefense;
        }// end function

        public function get physicalDefense() : int
        {
            return accessory.physicalDefense;
        }// end function

        public function get maxHp() : int
        {
            return weapon.maxHp + armor.maxHp + accessory.maxHp;
        }// end function

        public function get intelligence() : int
        {
            return weapon.intelligence + armor.intelligence + accessory.intelligence;
        }// end function

        public function get defense() : int
        {
            return weapon.defense + armor.defense + accessory.defense;
        }// end function

        public function get luck() : int
        {
            return weapon.luck + armor.luck + accessory.luck;
        }// end function

        public function get accessory() : AbilityBufferVO
        {
            return _accessory;
        }// end function

        public function get avoid() : int
        {
            return accessory.avoid;
        }// end function

        public function set weapon(param1:AbilityBufferVO) : void
        {
            _weapon = param1;
            return;
        }// end function

        public function get hit() : int
        {
            return accessory.hit;
        }// end function

        public function get weapon() : AbilityBufferVO
        {
            return _weapon;
        }// end function

        public function get tech() : int
        {
            return weapon.tech + armor.tech + accessory.tech;
        }// end function

        public function set armor(param1:AbilityBufferVO) : void
        {
            _armor = param1;
            return;
        }// end function

        public function get armor() : AbilityBufferVO
        {
            return _armor;
        }// end function

    }
}
