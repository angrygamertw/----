package com.kbmj.viking.proxy.tactics
{
    import com.kbmj.viking.lib.*;
    import com.kbmj.viking.lib.error.*;
    import com.kbmj.viking.view.tactics.*;
    import com.kbmj.viking.vo.*;
    import com.kbmj.viking.vo.tactics.*;
    import flash.geom.*;

    public class BattleLogicProxy extends BaseBattleLogicProxy
    {
        private var state:int = 0;
        private var STATE_AFTER_CANCELLABLE_ACTION:int = 3;
        private var STATE_AFTER_ACTION:int = 2;
        private var STATE_BEFORE_ACTION:int = 1;
        private var STATE_SELECT_DIRECTION:int = 4;
        private var STATE_BEFORE_WALK:int = 0;
        public static const NAME:String = "BattleLogicProxy";

        public function BattleLogicProxy()
        {
            super(NAME);
            return;
        }// end function

        private function removeUnit(param1:UnitVO) : void
        {
            if (aliveUnits.indexOf(param1) <= turnIndex)
            {
                var _loc_3:* = turnIndex - 1;
                turnIndex = _loc_3;
            }
            grids[param1.mapx][param1.mapy].unit = null;
            aliveUnits.splice(aliveUnits.indexOf(param1), 1);
            killedUnits.push(param1);
            return;
        }// end function

        private function isInAttackArea(param1:Array, param2:Point) : Boolean
        {
            var attackArea:* = param1;
            var targetPoint:* = param2;
            return attackArea.filter(function (param1:Point, param2:int, param3:Array) : Boolean
            {
                return param1.equals(targetPoint);
            }// end function
            ).length > 0;
        }// end function

        private function waitForMovement(param1:UnitVO) : void
        {
            if (param1 && param1 == turnUnit)
            {
                _tacticsVO.selectedUnit = param1;
                sendNotification(ENQUEUE_ORDER, new OrderVO(new ChangeStateVO(TacticsMediator.STATE_SELECT_DESTINATION, {unit:param1, grids:grids})));
            }
            return;
        }// end function

        public function pcUseItem(param1:UseItemVO) : void
        {
            var _loc_2:* = ItemProxy(facade.retrieveProxy(ItemProxy.NAME));
            param1 = _loc_2.useItem(param1);
            state = STATE_AFTER_ACTION;
            sendNotification(ENQUEUE_ORDER, new OrderVO(param1));
            sendNotification(ENQUEUE_ORDER, new OrderVO(new ChangeStateVO(TacticsMediator.STATE_SELECT_DIRECTION, {unit:param1.unit})));
            return;
        }// end function

        private function attack(param1:AttackVO) : AttackVO
        {
            var _loc_2:* = UnitProxy(facade.retrieveProxy(UnitProxy.NAME));
            var _loc_3:* = validateAttackTarget(param1);
            if (_loc_3)
            {
                param1 = _loc_2.action(param1.attacker, _loc_3);
                if (param1.killBlow && isFinished)
                {
                    param1.wipeout = true;
                }
                return param1;
            }
            else
            {
            }
            throw new InvalidActionError(param1.attacker);
        }// end function

        public function pcAction(param1:AttackVO) : void
        {
            var attackVO:* = param1;
            try
            {
                attackVO = attack(attackVO);
                removeDeadUnits();
                notifyActionResult(attackVO);
                if (!finishIfNeeded())
                {
                    nextUnit();
                }
            }
            catch (e:InvalidActionError)
            {
                sendNotification(INVALID_ATTACK_TARGET, e.unit);
            }
            return;
        }// end function

        public function get numPlayerUnits() : int
        {
            return _tacticsVO.aliveUnits.find("team", 0).find("teamType", 0).length;
        }// end function

        private function get isWon() : Boolean
        {
            var _loc_1:* = TacticsProxy(facade.retrieveProxy(TacticsProxy.NAME));
            switch(_loc_1.winCondition)
            {
                case TacticsProxy.WIN_CONDITION_EXTERMINATION:
                {
                    if (numEnemyUnits == 0)
                    {
                        return true;
                    }
                    break;
                }
                case TacticsProxy.WIN_CONDITION_ENDURANCE:
                {
                    break;
                }
                case TacticsProxy.WIN_CONDITION_TARGET:
                {
                    if (numTargetUnits == 0)
                    {
                        return true;
                    }
                    break;
                }
                default:
                {
                    break;
                    break;
                }
            }
            return numEnemyUnits == 0;
        }// end function

        public function pcWait(param1:WaitVO) : void
        {
            state = STATE_AFTER_CANCELLABLE_ACTION;
            sendNotification(ENQUEUE_ORDER, new OrderVO(new ChangeStateVO(TacticsMediator.STATE_SELECT_DIRECTION, {unit:param1.unit})));
            return;
        }// end function

        public function finish(param1:FinishVO) : void
        {
            if (param1.cheated)
            {
                param1.won = false;
            }
            else
            {
                param1.won = isWon;
            }
            sendNotification(ENQUEUE_ORDER, new OrderVO(param1));
            return;
        }// end function

        public function get turnIndex() : int
        {
            return _tacticsVO.turnIndex;
        }// end function

        private function removeDeadUnits() : void
        {
            var _loc_1:UnitVO = null;
            for each (_loc_1 in aliveUnits)
            {
                
                if (_loc_1.isDead)
                {
                    removeUnit(_loc_1);
                    removeDeadUnits();
                    return;
                }
            }
            return;
        }// end function

        private function nextTurn() : Boolean
        {
            var _loc_1:* = TacticsProxy(facade.retrieveProxy(TacticsProxy.NAME));
            (_tacticsVO.turn + 1);
            if ((_tacticsVO.turnLimit != 0 || tacticsType == TacticsVO.TACTICS_TYPE_RAID || tacticsType == TacticsVO.TACTICS_TYPE_COLONY) && _tacticsVO.turn > _tacticsVO.turnLimit)
            {
                return false;
            }
            sendNotification(TURN_END, _tacticsVO.turn);
            return true;
        }// end function

        private function walk(param1:WalkVO) : WalkVO
        {
            var _loc_2:* = param1.unit;
            var _loc_3:* = param1.unit.position;
            var _loc_4:* = Utils.findRoute(_loc_2, grids, _loc_3, param1.destination);
            if (Utils.findRoute(_loc_2, grids, _loc_3, param1.destination))
            {
                param1.route = _loc_4;
                _loc_2.oldmapx = _loc_2.mapx;
                _loc_2.oldmapy = _loc_2.mapy;
                _loc_2.olddirection = _loc_2.direction;
                _loc_2.mapx = param1.destination.x;
                _loc_2.mapy = param1.destination.y;
                moveUnit(_loc_2);
                return param1;
            }
            throw new InvalidActionError(_loc_2);
        }// end function

        public function pcWalk(param1:WalkVO) : void
        {
            var walkVO:* = param1;
            try
            {
                walkVO = walk(walkVO);
                sendNotification(ENQUEUE_ORDER, new OrderVO(walkVO));
                sendNotification(ENQUEUE_ORDER, new OrderVO(new ChangeStateVO(TacticsMediator.STATE_SELECT_ACTION, {unit:walkVO.unit})));
            }
            catch (e:InvalidActionError)
            {
                sendNotification(INVALID_DESTINATION, {unit:e.unit, grids:grids});
            }
            return;
        }// end function

        private function nextUnit() : void
        {
            var _loc_2:TacticsProxy = null;
            if (turnUnit)
            {
                if ((turnIndex + 1) < aliveUnits.length)
                {
                    var _loc_4:* = turnIndex + 1;
                    turnIndex = _loc_4;
                }
                else
                {
                    turnIndex = 0;
                    if (!nextTurn())
                    {
                        _loc_2 = TacticsProxy(facade.retrieveProxy(TacticsProxy.NAME));
                        _loc_2.finishRaidByTurnLimit();
                        return;
                    }
                }
            }
            else
            {
                turnIndex = 0;
            }
            var _loc_1:* = UnitProxy(facade.retrieveProxy(UnitProxy.NAME));
            _loc_1.buffsPassage(turnUnit);
            _loc_1.checkAbnormalDamage(turnUnit);
            _loc_1.turnRecovery(turnUnit);
            if (turnUnit.hasBuff(UnitVO.ABNORMAL_NAME_MAHI))
            {
                nextUnit();
                return;
            }
            proceed();
            return;
        }// end function

        public function get turnUnit() : UnitVO
        {
            return _tacticsVO.turnUnit;
        }// end function

        private function notifyActionResult(param1:AttackVO) : void
        {
            if (param1.willCountered)
            {
                if (isFinished && param1.killBlow)
                {
                    sendNotification(ENQUEUE_ORDER, new OrderVO(param1));
                }
                else
                {
                    sendNotification(ENQUEUE_ORDER, [new OrderVO(param1), new OrderVO(param1.counterAttackVO)]);
                }
            }
            else
            {
                sendNotification(ENQUEUE_ORDER, new OrderVO(param1));
            }
            return;
        }// end function

        private function get tacticsType() : int
        {
            return _tacticsVO.tacticsType;
        }// end function

        private function finishIfNeeded() : Boolean
        {
            var _loc_1:TacticsProxy = null;
            if (isFinished)
            {
                _loc_1 = TacticsProxy(facade.retrieveProxy(TacticsProxy.NAME));
                _loc_1.finish();
            }
            return isFinished;
        }// end function

        private function get aliveUnits() : Array
        {
            return _tacticsVO.aliveUnits;
        }// end function

        public function get numDefenseTargetUnits() : int
        {
            return _tacticsVO.aliveUnits.find("team", 0).find("teamType", 1).find("unitId", _tacticsVO.loseConditionDefenseTargetId).length;
        }// end function

        public function get numEnemyUnits() : int
        {
            return _tacticsVO.aliveUnits.find("team", 1).length;
        }// end function

        override public function proceed() : void
        {
            turnUnit.activeFlag = true;
            if (turnUnit.isAI || turnUnit.hasBuff(UnitVO.ABNORMAL_NAME_KONRAN))
            {
                aiAction(turnUnit);
            }
            else
            {
                waitForMovement(turnUnit);
            }
            return;
        }// end function

        private function validateAttackTarget(param1:AttackVO) : UnitVO
        {
            var _loc_2:* = getUnitAt(param1.targetPoint);
            if (!_loc_2)
            {
                return null;
            }
            if (!isInAttackArea(UnitProxy.findAttackArea(param1.attacker), param1.targetPoint))
            {
                return null;
            }
            if (!param1.attacker.hasBuff(UnitVO.ABNORMAL_NAME_KONRAN) && (param1.attacker.weaponType != WeaponVO.WEAPON_TYPE_HEAL && _loc_2.team == param1.attacker.team))
            {
                return null;
            }
            return _loc_2;
        }// end function

        public function pcSelectDirection(param1:DirectionVO) : void
        {
            var directionVO:* = param1;
            try
            {
                sendNotification(ENQUEUE_ORDER, new OrderVO(selectDirection(directionVO)));
                nextUnit();
            }
            catch (e:InvalidActionError)
            {
                if (state == STATE_AFTER_CANCELLABLE_ACTION)
                {
                    sendNotification(ENQUEUE_ORDER, new OrderVO(new ChangeStateVO(TacticsMediator.STATE_SELECT_ACTION, {unit:e.unit})));
                }
                else
                {
                    sendNotification(ENQUEUE_ORDER, new OrderVO(new ChangeStateVO(TacticsMediator.STATE_SELECT_DIRECTION, {unit:e.unit})));
                }
            }
            return;
        }// end function

        public function set turnIndex(param1:int) : void
        {
            _tacticsVO.turnIndex = param1;
            return;
        }// end function

        private function selectDirection(param1:DirectionVO) : DirectionVO
        {
            var _loc_2:* = param1.unit;
            var _loc_3:* = param1.point;
            if ((_loc_2.mapx + 1) == _loc_3.x && _loc_2.mapy == _loc_3.y || (_loc_2.mapx - 1) == _loc_3.x && _loc_2.mapy == _loc_3.y || (_loc_2.mapy + 1) == _loc_3.y && _loc_2.mapx == _loc_3.x || (_loc_2.mapy - 1) == _loc_3.y && _loc_2.mapx == _loc_3.x)
            {
                _loc_2.oldmapx = _loc_2.mapx;
                _loc_2.oldmapy = _loc_2.mapy;
                _loc_2.olddirection = _loc_2.direction;
                param1.newDirection = Utils.getDirection(_loc_2.position, param1.point);
                _loc_2.direction = param1.newDirection;
                return param1;
            }
            throw new InvalidActionError(_loc_2);
        }// end function

        private function moveUnit(param1:UnitVO) : void
        {
            grids[param1.oldmapx][param1.oldmapy].unit = null;
            grids[param1.mapx][param1.mapy].unit = param1;
            return;
        }// end function

        public function equip(param1:EquipVO) : void
        {
            var _loc_4:WeaponVO = null;
            var _loc_2:* = param1.unit;
            var _loc_3:* = param1.weapon;
            if (_loc_2.weapon && _loc_3 != _loc_2.weapon)
            {
                _loc_4 = _loc_2.weapon;
                _loc_2.weapon = _loc_3;
                _loc_2.subWeapon = _loc_4;
            }
            else
            {
                _loc_2.weapon = _loc_3;
            }
            sendNotification(ENQUEUE_ORDER, new OrderVO(param1));
            sendNotification(ENQUEUE_ORDER, new OrderVO(new ChangeStateVO(TacticsMediator.STATE_SELECT_ACTION, {unit:_loc_2})));
            return;
        }// end function

        public function get numTargetUnits() : int
        {
            return _tacticsVO.aliveUnits.find("team", 1).find("unitId", _tacticsVO.winConditionTargetId).length;
        }// end function

        private function get killedUnits() : Array
        {
            return _tacticsVO.killedUnits;
        }// end function

        private function resetUnit(param1:UnitVO, param2:Point) : void
        {
            grids[param1.mapx][param1.mapy].unit = null;
            param1.direction = param1.olddirection;
            param1.mapx = param1.oldmapx;
            param1.mapy = param1.oldmapy;
            param1.transitionalMapx = param1.mapx;
            param1.transitionalMapy = param1.mapy;
            param1.loader.x = param2.x - 8;
            param1.loader.y = param2.y - 45;
            grids[param1.mapx][param1.mapy].unit = param1;
            return;
        }// end function

        private function get isFinished() : Boolean
        {
            var _loc_1:* = TacticsProxy(facade.retrieveProxy(TacticsProxy.NAME));
            switch(_loc_1.winCondition)
            {
                case TacticsProxy.WIN_CONDITION_EXTERMINATION:
                {
                    if (numEnemyUnits == 0)
                    {
                        return true;
                    }
                    break;
                }
                case TacticsProxy.WIN_CONDITION_ENDURANCE:
                {
                    break;
                }
                case TacticsProxy.WIN_CONDITION_TARGET:
                {
                    if (numTargetUnits == 0)
                    {
                        return true;
                    }
                    break;
                }
                default:
                {
                    break;
                    break;
                }
            }
            switch(_loc_1.loseCondition)
            {
                case TacticsProxy.LOSE_CONDITION_EXTERMINATION:
                {
                    if (numPlayerUnits == 0)
                    {
                        return true;
                    }
                    break;
                }
                case TacticsProxy.LOSE_CONDITION_ENDURANCE:
                {
                    break;
                }
                case TacticsProxy.LOSE_CONDITION_DEFENSE_TARGET:
                {
                    if (numDefenseTargetUnits == 0)
                    {
                        return true;
                    }
                    break;
                }
                default:
                {
                    break;
                    break;
                }
            }
            return numPlayerUnits == 0 || numEnemyUnits == 0;
        }// end function

        public function pcCancelWalk(param1:CancelWalkVO) : void
        {
            var _loc_2:* = param1.unit;
            var _loc_3:* = Utils.indexToPoint(_loc_2.oldmapx, _loc_2.oldmapy);
            resetUnit(_loc_2, _loc_3);
            param1.x = _loc_2.oldmapx;
            param1.y = _loc_2.oldmapy;
            sendNotification(ENQUEUE_ORDER, new OrderVO(param1));
            sendNotification(ENQUEUE_ORDER, new OrderVO(new ChangeStateVO(TacticsMediator.STATE_SELECT_DESTINATION, {unit:_loc_2, grids:grids})));
            return;
        }// end function

        private function aiAction(param1:UnitVO) : void
        {
            var _loc_6:AttackVO = null;
            var _loc_2:* = AiProxy(facade.retrieveProxy(AiProxy.NAME));
            var _loc_3:* = param1.hasBuff(UnitVO.ABNORMAL_NAME_KONRAN);
            var _loc_4:* = _loc_3 ? (_loc_2.confusionMove(param1)) : (_loc_2.move(param1));
            if (_loc_3 ? (_loc_2.confusionMove(param1)) : (_loc_2.move(param1)))
            {
                _loc_4 = walk(_loc_4);
                if (_loc_4)
                {
                    sendNotification(ENQUEUE_ORDER, new OrderVO(_loc_4));
                }
            }
            var _loc_5:* = _loc_3 ? (_loc_2.confusionAction(param1)) : (_loc_2.action(param1));
            if (_loc_3 ? (_loc_2.confusionAction(param1)) : (_loc_2.action(param1)))
            {
                _loc_6 = attack(AttackVO(_loc_5));
                if (_loc_6)
                {
                    removeDeadUnits();
                    notifyActionResult(_loc_6);
                    if (finishIfNeeded())
                    {
                        return;
                    }
                }
            }
            nextUnit();
            return;
        }// end function

        public function get selectedUnit() : UnitVO
        {
            return _tacticsVO.selectedUnit;
        }// end function

    }
}
