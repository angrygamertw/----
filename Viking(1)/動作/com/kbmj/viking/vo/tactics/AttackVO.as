package com.kbmj.viking.vo.tactics
{
    import flash.geom.*;

    public class AttackVO extends Object
    {
        private var _areaAttackVOs:Array;
        public var targetAbnormal:Array;
        private var _damage:int;
        private var _killBlow:Boolean = false;
        private var _weaponEndurance:int = -1;
        private var _attackerPoint:Point;
        private var _validSkills:Object;
        private var _target:UnitVO;
        private var _targetPoint:Point;
        private var _godAnger:Boolean = false;
        private var _skillEffects:Object;
        private var _attacker:UnitVO;
        private var _targetHp:int;
        public var attackerAbnormal:Array;
        private var _counterAttackVO:AttackVO;
        private var _hit:Boolean;
        private var _counterAttack:Boolean = false;
        private var _wipeout:Boolean = false;
        private var _willCountered:Boolean;
        private var _areaAttack:Boolean = false;
        private var _leech:int;
        private var _attackerHp:int;

        public function AttackVO(param1:UnitVO, param2:Point, param3:UnitVO = null, param4:int = 0, param5:Boolean = true, param6:Boolean = false, param7:Object = null)
        {
            _areaAttackVOs = new Array();
            _validSkills = {};
            targetAbnormal = new Array(UnitVO.ABNORMAL_NUM);
            attackerAbnormal = new Array(UnitVO.ABNORMAL_NUM);
            _attacker = param1;
            _attackerPoint = param1.position;
            _targetPoint = param2;
            _target = param3;
            _hit = param5;
            _damage = param4;
            _willCountered = param6;
            _skillEffects = param7 ? (param7) : ({other:[]});
            return;
        }// end function

        public function set targetHp(param1:int) : void
        {
            _targetHp = param1;
            return;
        }// end function

        public function set attacker(param1:UnitVO) : void
        {
            _attacker = param1;
            return;
        }// end function

        public function get areaAttackVOs() : Array
        {
            return _areaAttackVOs;
        }// end function

        public function get leech() : int
        {
            return _leech;
        }// end function

        public function get attackerHp() : int
        {
            return _attackerHp;
        }// end function

        public function get target() : UnitVO
        {
            return _target;
        }// end function

        public function set weaponEndurance(param1:int) : void
        {
            _weaponEndurance = param1;
            return;
        }// end function

        public function set areaAttack(param1:Boolean) : void
        {
            _areaAttack = param1;
            return;
        }// end function

        public function get hit() : Boolean
        {
            return _hit;
        }// end function

        public function get attackerPoint() : Point
        {
            return _attackerPoint;
        }// end function

        public function get counterAttackVO() : AttackVO
        {
            return _counterAttackVO;
        }// end function

        public function set target(param1:UnitVO) : void
        {
            _target = param1;
            return;
        }// end function

        public function get targetHp() : int
        {
            return _targetHp;
        }// end function

        public function get wipeout() : Boolean
        {
            return _wipeout;
        }// end function

        public function set hit(param1:Boolean) : void
        {
            _hit = param1;
            return;
        }// end function

        public function get areaAttack() : Boolean
        {
            return _areaAttack;
        }// end function

        public function set attackerPoint(param1:Point) : void
        {
            _attackerPoint = param1;
            return;
        }// end function

        public function set counterAttackVO(param1:AttackVO) : void
        {
            _counterAttackVO = param1;
            return;
        }// end function

        public function set validSkills(param1:Object) : void
        {
            _validSkills = param1;
            return;
        }// end function

        public function get killBlow() : Boolean
        {
            return _killBlow;
        }// end function

        public function set attackerHp(param1:int) : void
        {
            _attackerHp = param1;
            return;
        }// end function

        public function get weaponEndurance() : int
        {
            return _weaponEndurance;
        }// end function

        public function set wipeout(param1:Boolean) : void
        {
            _wipeout = param1;
            return;
        }// end function

        public function set counterAttack(param1:Boolean) : void
        {
            _counterAttack = param1;
            return;
        }// end function

        public function set willCountered(param1:Boolean) : void
        {
            _willCountered = param1;
            return;
        }// end function

        public function set godAnger(param1:Boolean) : void
        {
            _godAnger = param1;
            return;
        }// end function

        public function set skillEffects(param1:Object) : void
        {
            _skillEffects = param1;
            return;
        }// end function

        public function set killBlow(param1:Boolean) : void
        {
            _killBlow = param1;
            return;
        }// end function

        public function get willCountered() : Boolean
        {
            return _willCountered;
        }// end function

        public function get godAnger() : Boolean
        {
            return _godAnger;
        }// end function

        public function get validSkills() : Object
        {
            return _validSkills;
        }// end function

        public function get damage() : int
        {
            return _damage;
        }// end function

        public function get skillEffects() : Object
        {
            return _skillEffects;
        }// end function

        public function get counterAttack() : Boolean
        {
            return _counterAttack;
        }// end function

        public function get attacker() : UnitVO
        {
            return _attacker;
        }// end function

        public function set damage(param1:int) : void
        {
            _damage = param1;
            return;
        }// end function

        public function set leech(param1:int) : void
        {
            _leech = param1;
            return;
        }// end function

        public function set targetPoint(param1:Point) : void
        {
            _targetPoint = param1;
            return;
        }// end function

        public function get targetPoint() : Point
        {
            return _targetPoint;
        }// end function

    }
}
