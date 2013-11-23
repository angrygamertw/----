package com.kbmj.viking.proxy.tactics
{
    import com.kbmj.viking.lib.*;
    import com.kbmj.viking.vo.*;
    import com.kbmj.viking.vo.tactics.*;
    import flash.geom.*;
    import org.puremvc.as3.patterns.proxy.*;

    public class AiProxy extends Proxy
    {
        public static const NAME:String = "AiProxy";
        public static const INFINITE:Number = 999;

        public function AiProxy()
        {
            super(NAME);
            return;
        }// end function

        private function findAlliesInAttackRange(param1:UnitVO) : Array
        {
            var unit:* = param1;
            var units:* = findUnitsInAttackRange(unit);
            return units.filter(function (param1:UnitVO, param2:int, param3:Array) : Boolean
            {
                return unit.team == param1.team;
            }// end function
            );
        }// end function

        private function findUnitsInRange(param1:UnitVO) : Array
        {
            var _loc_5:Point = null;
            var _loc_6:UnitVO = null;
            var _loc_2:* = TacticsProxy(facade.retrieveProxy(TacticsProxy.NAME));
            var _loc_3:* = new Array();
            var _loc_4:* = findMoveAttackArea(param1);
            for each (_loc_5 in _loc_4)
            {
                
                _loc_6 = _loc_2.getUnitAt(_loc_5);
                if (_loc_6)
                {
                    _loc_3.push(_loc_6);
                }
            }
            return _loc_3;
        }// end function

        private function findEnemiesInAttackRange(param1:UnitVO) : Array
        {
            var unit:* = param1;
            var units:* = findUnitsInAttackRange(unit);
            return units.filter(function (param1:UnitVO, param2:int, param3:Array) : Boolean
            {
                return unit.team != param1.team;
            }// end function
            );
        }// end function

        private function findNearestTargetUnderConfusion(param1:UnitVO) : UnitVO
        {
            var _loc_2:* = param1.weaponType == WeaponVO.WEAPON_TYPE_HEAL ? (allEnemies(param1)) : (allAllies(param1));
            return findNearest(param1, _loc_2);
        }// end function

        private function allEnemies(param1:UnitVO) : Array
        {
            var unit:* = param1;
            var tacticsProxy:* = TacticsProxy(facade.retrieveProxy(TacticsProxy.NAME));
            return tacticsProxy.aliveUnits.filter(function (param1:UnitVO, param2:int, param3:Array) : Boolean
            {
                return unit.team != param1.team;
            }// end function
            );
        }// end function

        private function findHealTargetInRange(param1:UnitVO) : UnitVO
        {
            return findUnitWithLowestHp(findAlliesInRange(param1));
        }// end function

        private function attack(param1:UnitVO, param2:UnitVO = null) : AttackVO
        {
            var _loc_5:UnitProxy = null;
            var _loc_6:Array = null;
            var _loc_7:UnitVO = null;
            var _loc_8:Point = null;
            var _loc_3:* = param2 || findTargetInAttackRange(param1);
            var _loc_4:* = TacticsProxy(facade.retrieveProxy(TacticsProxy.NAME));
            if (_loc_3 && param1.canAttack)
            {
                _loc_5 = UnitProxy(facade.retrieveProxy(UnitProxy.NAME));
                _loc_6 = UnitProxy.findAttackArea(param1);
                for each (_loc_8 in _loc_6)
                {
                    
                    var _loc_11:* = _loc_4.getUnitAt(_loc_8);
                    _loc_7 = _loc_4.getUnitAt(_loc_8);
                    if (_loc_11)
                    {
                        if (_loc_7 == _loc_3)
                        {
                            return new AttackVO(param1, _loc_8);
                        }
                    }
                }
            }
            return null;
        }// end function

        private function checkDecoy(param1:UnitVO, param2:UnitVO) : Boolean
        {
            if (param1.hasDisregardDecoyWeapon())
            {
                return false;
            }
            if (param1.isWeaponPhysical && param2.hasSkill(SkillVO.HATE_UP))
            {
                trace("スキル「囮の心得」発動");
                return true;
            }
            if (param1.isWeaponMagical && param2.hasSkill(SkillVO.JUTSUYOSE))
            {
                trace("スキル「術寄せの心得」発動");
                return true;
            }
            return false;
        }// end function

        private function findTargetInRange(param1:UnitVO) : UnitVO
        {
            return param1.weaponType == WeaponVO.WEAPON_TYPE_HEAL ? (findHealTargetInRange(param1)) : (findAttackTargetInRange(param1));
        }// end function

        public function move(param1:UnitVO) : WalkVO
        {
            var _loc_2:UnitVO = null;
            switch(param1.ai.type)
            {
                case AiVO.TYPE_AGGRESSIVE:
                {
                    _loc_2 = findTargetInRange(param1);
                    if (_loc_2 && _loc_2 == findTargetInAttackRange(param1))
                    {
                        return null;
                    }
                    return walkCloserToTarget(param1);
                }
                case AiVO.TYPE_PASSIVE:
                {
                    _loc_2 = findTargetInRange(param1);
                    if (_loc_2)
                    {
                        if (_loc_2 == findTargetInAttackRange(param1))
                        {
                            return null;
                        }
                        return walkCloserToTarget(param1);
                    }
                    else
                    {
                        return null;
                    }
                }
                default:
                {
                    return walkCloserToTarget(param1);
                    break;
                }
            }
        }// end function

        private function distanceBetween(param1:Point, param2:Point) : Number
        {
            return Math.pow(param2.x - param1.x, 2) + Math.pow(param2.y - param1.y, 2);
        }// end function

        private function findWeakest(param1:UnitVO, param2:Array) : UnitVO
        {
            var _loc_3:UnitVO = null;
            var _loc_4:int = 0;
            for each (_loc_3 in param2)
            {
                
                if (checkDecoy(param1, _loc_3))
                {
                    return _loc_3;
                }
            }
            if (param2.length == 0)
            {
                return null;
            }
            _loc_4 = param1.ai.weakpoint;
            if (_loc_4 == AiVO.WEAKPOINT_INDISCRIMINATE)
            {
                _loc_4 = Utils.xRandomInt(AiVO.WEAKPOINT_LOW_DEFENCE, AiVO.WEAKPOINT_FIRST_TURN);
            }
            switch(_loc_4)
            {
                case AiVO.WEAKPOINT_LOW_DEFENCE:
                {
                    return param2.sortOn("baseDefense", Array.NUMERIC)[0];
                }
                case AiVO.WEAKPOINT_LOW_MAGIC_DEFENCE:
                {
                    return param2.sortOn("baseMagicalDefense", Array.NUMERIC)[0];
                }
                case AiVO.WEAKPOINT_LOW_HP:
                {
                    return param2.sortOn("hp", Array.NUMERIC)[0];
                }
                case AiVO.WEAKPOINT_FIRST_TURN:
                {
                    return param2.sortOn("realAgility", Array.NUMERIC | Array.DESCENDING)[0];
                }
                default:
                {
                    break;
                }
            }
            return param2.sortOn("hp", Array.NUMERIC)[0];
        }// end function

        private function findNearestTarget(param1:UnitVO) : UnitVO
        {
            var _loc_2:* = param1.weaponType == WeaponVO.WEAPON_TYPE_HEAL ? (allAllies(param1)) : (allEnemies(param1));
            return findNearest(param1, _loc_2);
        }// end function

        private function allAllies(param1:UnitVO) : Array
        {
            var unit:* = param1;
            var tacticsProxy:* = TacticsProxy(facade.retrieveProxy(TacticsProxy.NAME));
            return tacticsProxy.aliveUnits.filter(function (param1:UnitVO, param2:int, param3:Array) : Boolean
            {
                return unit.team == param1.team;
            }// end function
            );
        }// end function

        private function findTargetUnderConfusion(param1:UnitVO) : UnitVO
        {
            var _loc_2:* = findTargetUnderConfusionInRange(param1);
            if (!_loc_2)
            {
                _loc_2 = findNearestTargetUnderConfusion(param1);
            }
            return _loc_2;
        }// end function

        private function findUnitsInAttackRange(param1:UnitVO) : Array
        {
            var _loc_5:Point = null;
            var _loc_6:UnitVO = null;
            var _loc_2:* = TacticsProxy(facade.retrieveProxy(TacticsProxy.NAME));
            var _loc_3:* = new Array();
            var _loc_4:* = Utils.findAttackArea(param1, param1.position, param1.attackRange);
            for each (_loc_5 in _loc_4)
            {
                
                _loc_6 = _loc_2.getUnitAt(_loc_5);
                if (_loc_6)
                {
                    _loc_3.push(_loc_6);
                }
            }
            return _loc_3;
        }// end function

        private function selectTargetUnderConfusion(param1:UnitVO, param2:Array) : UnitVO
        {
            var _loc_3:UnitVO = null;
            for each (_loc_3 in param2)
            {
                
                if (checkDecoy(param1, _loc_3))
                {
                    return _loc_3;
                }
            }
            return param2.sortOn("hp", Array.NUMERIC)[0];
        }// end function

        public function confusionAction(param1:UnitVO) : AttackVO
        {
            trace("混乱状態：攻撃：", param1.name);
            var _loc_2:* = findTargetUnderConfusionInAttackRange(param1);
            trace("攻撃対象ユニット：", _loc_2 ? (_loc_2.name) : ("なし"));
            if (!_loc_2)
            {
                return null;
            }
            return attack(param1, _loc_2);
        }// end function

        private function findHealTargetInAttackRange(param1:UnitVO) : UnitVO
        {
            return findUnitWithLowestHp(findAlliesInAttackRange(param1));
        }// end function

        private function findTargetUnderConfusionInRange(param1:UnitVO) : UnitVO
        {
            var _loc_2:* = param1.weaponType == WeaponVO.WEAPON_TYPE_HEAL ? (findEnemiesInRange(param1)) : (findAlliesInRange(param1));
            return selectTargetUnderConfusion(param1, _loc_2);
        }// end function

        private function findNearest(param1:UnitVO, param2:Array) : UnitVO
        {
            var _loc_5:UnitVO = null;
            var _loc_6:Number = NaN;
            var _loc_3:* = INFINITE;
            var _loc_4:UnitVO = null;
            for each (_loc_5 in param2)
            {
                
                if (checkDecoy(param1, _loc_5))
                {
                    _loc_4 = _loc_5;
                    break;
                }
                _loc_6 = distanceBetween(_loc_5.position, param1.position);
                if (_loc_6 < _loc_3)
                {
                    _loc_3 = _loc_6;
                    _loc_4 = _loc_5;
                }
            }
            return _loc_4;
        }// end function

        private function findAttackTargetInRange(param1:UnitVO) : UnitVO
        {
            return findWeakest(param1, findEnemiesInRange(param1));
        }// end function

        private function findAlliesInRange(param1:UnitVO) : Array
        {
            var unit:* = param1;
            var units:* = findUnitsInRange(unit);
            return units.filter(function (param1:UnitVO, param2:int, param3:Array) : Boolean
            {
                return unit.team == param1.team;
            }// end function
            );
        }// end function

        private function findTarget(param1:UnitVO) : UnitVO
        {
            var _loc_2:* = findTargetInRange(param1);
            if (!_loc_2)
            {
                _loc_2 = findNearestTarget(param1);
            }
            return _loc_2;
        }// end function

        private function findEnemiesInRange(param1:UnitVO) : Array
        {
            var unit:* = param1;
            var units:* = findUnitsInRange(unit);
            return units.filter(function (param1:UnitVO, param2:int, param3:Array) : Boolean
            {
                return unit.team != param1.team;
            }// end function
            );
        }// end function

        private function findTargetInAttackRange(param1:UnitVO) : UnitVO
        {
            return param1.weaponType == WeaponVO.WEAPON_TYPE_HEAL ? (findHealTargetInAttackRange(param1)) : (findAttackTargetInAttackRange(param1));
        }// end function

        private function walkCloserToTarget(param1:UnitVO, param2:UnitVO = null) : WalkVO
        {
            var _loc_8:Point = null;
            var _loc_9:Number = NaN;
            var _loc_3:* = param2 || findTarget(param1);
            var _loc_4:* = TacticsProxy(facade.retrieveProxy(TacticsProxy.NAME));
            var _loc_5:* = Utils.findMoveArea(param1, _loc_4.grids);
            var _loc_6:* = INFINITE;
            var _loc_7:Point = null;
            for each (_loc_8 in _loc_5)
            {
                
                if (!_loc_4.getUnitAt(_loc_8))
                {
                    _loc_9 = distanceBetween(_loc_8, _loc_3.position);
                    if (_loc_9 < _loc_6)
                    {
                        if (param1.weapon && param1.weapon.weaponType == WeaponVO.WEAPON_TYPE_SPEAR)
                        {
                            if (_loc_3.mapx != _loc_8.x && _loc_3.mapy != _loc_8.y)
                            {
                                continue;
                            }
                        }
                        _loc_6 = _loc_9;
                        _loc_7 = _loc_8;
                        if (_loc_9 <= param1.attackRange)
                        {
                            break;
                        }
                    }
                }
            }
            if (_loc_7)
            {
                return new WalkVO(param1, _loc_7);
            }
            return null;
        }// end function

        public function action(param1:UnitVO) : AttackVO
        {
            return attack(param1);
        }// end function

        public function confusionMove(param1:UnitVO) : WalkVO
        {
            trace("混乱状態：移動：", param1.name);
            var _loc_2:* = findTargetUnderConfusionInRange(param1);
            if (_loc_2 && _loc_2 == findTargetUnderConfusionInAttackRange(param1))
            {
                trace("攻撃範囲内にユニットがいます：", _loc_2.name);
                return null;
            }
            return walkCloserToTarget(param1, findTargetUnderConfusion(param1));
        }// end function

        private function findTargetUnderConfusionInAttackRange(param1:UnitVO) : UnitVO
        {
            var _loc_2:* = param1.weaponType == WeaponVO.WEAPON_TYPE_HEAL ? (findEnemiesInAttackRange(param1)) : (findAlliesInAttackRange(param1));
            return selectTargetUnderConfusion(param1, _loc_2);
        }// end function

        private function findUnitWithLowestHp(param1:Array) : UnitVO
        {
            var _loc_4:UnitVO = null;
            var _loc_5:Number = NaN;
            var _loc_2:Number = 1;
            var _loc_3:UnitVO = null;
            for each (_loc_4 in param1)
            {
                
                _loc_5 = _loc_4.hp / _loc_4.realMaxHp;
                if (_loc_2 > _loc_5)
                {
                    _loc_2 = _loc_5;
                    _loc_3 = _loc_4;
                }
            }
            return _loc_3;
        }// end function

        private function findAttackTargetInAttackRange(param1:UnitVO) : UnitVO
        {
            return findWeakest(param1, findEnemiesInAttackRange(param1));
        }// end function

        private function findMoveAttackArea(param1:UnitVO) : Array
        {
            var unitPosition:Point;
            var attackArea:Array;
            var p:Point;
            var identicals:Array;
            var unit:* = param1;
            var tacticsProxy:* = TacticsProxy(facade.retrieveProxy(TacticsProxy.NAME));
            var moveAttackArea:* = new Array();
            var moveArea:* = Utils.findMoveArea(unit, tacticsProxy.grids);
            var _loc_3:int = 0;
            var _loc_4:* = moveArea;
            while (_loc_4 in _loc_3)
            {
                
                unitPosition = _loc_4[_loc_3];
                attackArea = Utils.findAttackArea(unit, unitPosition, unit.attackRange);
                var _loc_5:int = 0;
                var _loc_6:* = attackArea;
                while (_loc_6 in _loc_5)
                {
                    
                    p = _loc_6[_loc_5];
                    identicals = moveAttackArea.filter(function (param1, param2:int, param3:Array) : Boolean
            {
                return param1.x == p.x && param1.y == p.y;
            }// end function
            );
                    if (identicals.length == 0)
                    {
                        moveAttackArea.push(p);
                    }
                }
            }
            return moveAttackArea;
        }// end function

    }
}
