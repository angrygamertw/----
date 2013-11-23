package com.kbmj.viking.proxy.selectUnit
{
    import com.adobe.serialization.json.*;
    import com.kbmj.viking.proxy.*;
    import com.kbmj.viking.proxy.home.*;
    import com.kbmj.viking.proxy.tactics.*;
    import com.kbmj.viking.view.tactics.*;
    import com.kbmj.viking.vo.*;
    import com.kbmj.viking.vo.selectUnit.*;
    import com.kbmj.viking.vo.tactics.*;
    import flash.events.*;
    import flash.geom.*;
    import flash.utils.*;

    public class SelectUnitProxy extends LoaderProxy
    {
        private var _selectUnitFor:int;
        private var _maxNumberOfUnits:int;
        private var _targetPlayerId:int;
        private var _recoveryTimer:Timer;
        private var _tempUnitDataArray:Array;
        private var _selectUnitVO:SelectUnitVO;
        private var _closeCommandTimer:Timer;
        private var _forbiddenJobIds:String = null;
        private var _tempDataArray:Array;
        private var _tacticsUnitsIndexArray:Array;
        private var _resource:ResourceVO;
        private var _gridPosition:Array;
        public static const ANIMATE:String = NAME + "/notes/animate";
        public static const SEND_REINFORCEMENT_ERROR:String = NAME + "/notes/sendReinforcementError";
        public static const RAID_TARGET_LOADED:String = NAME + "/notes/raidTargetLoaded";
        public static const ATTACK:String = NAME + "/notes/attack";
        public static const FOR_EXPEDITION2:int = 6;
        public static const NAME:String = "SelectUnitProxy";
        public static const FOR_CONTINUATION:int = 8;
        public static const FOR_SPECIAL_MATCH_BATTLE:int = 11;
        public static const PLAYER_UNITS_LOADED:String = NAME + "/playerUnitsLoaded";
        public static const LOAD_RESOURCE_FOR_SELECT_UNIT:String = NAME + "/notes/LoadResourceForSelectUnit";
        public static const SEND_REINFORCEMENT:String = NAME + "/notes/sendReinforcement";
        public static const FOR_EVIL_POINT:int = 1;
        public static const FOR_COLONY:int = 2;
        public static const FOR_SEND_ARMY:int = 4;
        public static const FOR_RAID:int = 3;
        public static const FOR_ALL_MAP:int = 0;
        public static const START_SELECT_UNIT:String = NAME + "StartSelectUnit";
        public static const FOR_EXPEDITION:int = 5;
        public static const FOR_EXPEDITION3:int = 10;
        public static const FOR_MATCH_BATTLE:int = 9;
        public static const FOR_SHAM_BATTLE:int = 7;
        public static const WALK_UNIT:String = NAME + "/notes/walkUnit";
        public static const ARMY_UNIT_LOADED:String = NAME + "/notes/armyUnitLoaded";

        public function SelectUnitProxy()
        {
            _gridPosition = new Array(TacticsProxy.COLS);
            _selectUnitVO = new SelectUnitVO();
            _closeCommandTimer = new Timer(300);
            _recoveryTimer = new Timer(60000);
            _tempUnitDataArray = new Array();
            _tempDataArray = new Array();
            super(NAME);
            return;
        }// end function

        public function get selectUnitFor() : int
        {
            return _selectUnitFor;
        }// end function

        public function get targetPlayerId() : int
        {
            return _targetPlayerId;
        }// end function

        public function get resource() : ResourceVO
        {
            return _resource;
        }// end function

        public function unitStatusSaved(param1:int, param2:int) : void
        {
            _tempUnitDataArray = new Array();
            _tempDataArray = new Array();
            var _loc_3:int = 0;
            while (_loc_3 < units.length)
            {
                
                _tempUnitDataArray.push({positionX:units[_loc_3].loader.x, positionY:units[_loc_3].loader.y});
                _loc_3++;
            }
            _tempDataArray.push({tacticsNum:param1, removeCount:param2});
            return;
        }// end function

        public function set selectUnitFor(param1:int) : void
        {
            _selectUnitFor = param1;
            return;
        }// end function

        public function get mapVO() : MapVO
        {
            return _selectUnitVO.mapVO;
        }// end function

        public function set maxNumberOfUnits(param1:int) : void
        {
            _maxNumberOfUnits = param1;
            return;
        }// end function

        public function set targetPlayerId(param1:int) : void
        {
            _targetPlayerId = param1;
            return;
        }// end function

        public function loadResource() : void
        {
            var _loc_1:HomeProxy = null;
            switch(selectUnitFor)
            {
                case FOR_ALL_MAP:
                case FOR_EVIL_POINT:
                case FOR_COLONY:
                case FOR_SHAM_BATTLE:
                case FOR_EXPEDITION:
                case FOR_EXPEDITION2:
                case FOR_EXPEDITION3:
                {
                    break;
                }
                case FOR_RAID:
                case FOR_SEND_ARMY:
                {
                    _loc_1 = HomeProxy(facade.retrieveProxy(HomeProxy.NAME));
                    _loc_1.loadHomeResource(LOAD_RESOURCE_FOR_SELECT_UNIT);
                    break;
                }
                default:
                {
                    break;
                }
            }
            return;
        }// end function

        public function set resource(param1:ResourceVO) : void
        {
            _resource = param1;
            return;
        }// end function

        override public function onRegister() : void
        {
            var _loc_1:int = 0;
            while (_loc_1 < _gridPosition.length)
            {
                
                _gridPosition[_loc_1] = new Array(TacticsProxy.ROWS);
                _loc_1++;
            }
            return;
        }// end function

        public function indexToPoint(param1:int, param2:int) : Point
        {
            var _loc_3:* = (param1 + param2) * (TacticsMediator.GRID_WIDTH / 2);
            var _loc_4:* = (8 - param1 + param2) * (TacticsMediator.GRID_HEIGHT / 2);
            return new Point(_loc_3, _loc_4);
        }// end function

        public function set forbiddenJobIds(param1:String) : void
        {
            _forbiddenJobIds = param1;
            return;
        }// end function

        public function get stageName() : String
        {
            return _selectUnitVO.stageName;
        }// end function

        public function get enemies() : Array
        {
            return _selectUnitVO.enemies;
        }// end function

        public function get recoveryTimer() : Timer
        {
            return _recoveryTimer;
        }// end function

        public function get forbiddenJobIds() : String
        {
            return _forbiddenJobIds;
        }// end function

        public function get tempUnitDataArray() : Array
        {
            return _tempUnitDataArray;
        }// end function

        private function setUnitRecovery(event:Event) : void
        {
            var _loc_2:UnitVO = null;
            for each (_loc_2 in _selectUnitVO.units)
            {
                
                _loc_2.recoveryHp = 1;
            }
            return;
        }// end function

        public function setStage(param1:String, param2:String) : void
        {
            _selectUnitVO.stageName = param1;
            _selectUnitVO.missionStatement = param2;
            return;
        }// end function

        public function loadRaidTarget() : void
        {
            var url:String;
            load(url, RAID_TARGET_LOADED, function (param1:Array) : void
            {
                var _loc_3:Object = null;
                var _loc_4:UnitVO = null;
                var _loc_2:* = UnitProxy(facade.retrieveProxy(UnitProxy.NAME));
                if (param1.length > 0)
                {
                    for each (_loc_3 in param1)
                    {
                        
                        _loc_4 = _loc_2.unitFactory(_loc_3.unit);
                        _loc_4.team = 1;
                        addEnemy(_loc_4);
                    }
                }
                return;
            }// end function
            );
            return;
        }// end function

        public function set mapVO(param1:MapVO) : void
        {
            _selectUnitVO.mapVO = param1;
            return;
        }// end function

        public function get missionStatement() : String
        {
            return _selectUnitVO.missionStatement;
        }// end function

        public function addUnit(param1:UnitVO) : void
        {
            _selectUnitVO.units.push(param1);
            setUnitAt(param1, param1.mapx, param1.mapy);
            return;
        }// end function

        public function loadArmyUnit() : void
        {
            var url:String;
            load(url, ARMY_UNIT_LOADED, function (param1:Object) : Object
            {
                return param1.reinforcement;
            }// end function
            );
            return;
        }// end function

        public function showMatchMovie() : Boolean
        {
            if (selectUnitFor == FOR_MATCH_BATTLE || selectUnitFor == FOR_SPECIAL_MATCH_BATTLE)
            {
                return true;
            }
            return false;
        }// end function

        public function get tacticsUnitsIndexArray() : Array
        {
            return _tacticsUnitsIndexArray;
        }// end function

        public function get maxNumberOfUnits() : int
        {
            return _maxNumberOfUnits;
        }// end function

        public function setUnitPosition(param1:UnitVO) : void
        {
            _gridPosition[param1.mapx][param1.mapy] = param1;
            return;
        }// end function

        public function get closeCommandTimer() : Timer
        {
            return _closeCommandTimer;
        }// end function

        public function getUnitPositionAt(param1:Point) : UnitVO
        {
            return _gridPosition[param1.x][param1.y];
        }// end function

        public function setUnitAt(param1:UnitVO, param2:int, param3:int) : void
        {
            param1.mapx = param2;
            param1.mapy = param3;
            var _loc_4:* = indexToPoint(param2, param3);
            return;
        }// end function

        public function get tempDataArray() : Array
        {
            return _tempDataArray;
        }// end function

        public function set units(param1:Array) : void
        {
            _selectUnitVO.units = param1;
            _recoveryTimer.stop();
            _recoveryTimer.reset();
            _recoveryTimer.start();
            if (_recoveryTimer.hasEventListener(TimerEvent.TIMER))
            {
                _recoveryTimer.removeEventListener(TimerEvent.TIMER, setUnitRecovery);
            }
            _recoveryTimer.addEventListener(TimerEvent.TIMER, setUnitRecovery);
            return;
        }// end function

        public function addEnemy(param1:UnitVO) : void
        {
            _selectUnitVO.enemies.push(param1);
            return;
        }// end function

        public function sendArmyUnit(param1:String, param2:int = 0) : void
        {
            var json:String;
            var actionType:* = param1;
            var unitId:* = param2;
            if (actionType == "in")
            {
                json = JSON.encode({action_type:actionType, unit_id:unitId});
            }
            else
            {
                json = JSON.encode({action_type:actionType});
            }
            loadWithJson("/api/home/reinforcement", SEND_REINFORCEMENT, SEND_REINFORCEMENT_ERROR, function (param1:Object) : Object
            {
                return param1;
            }// end function
            , json);
            return;
        }// end function

        public function get units() : Array
        {
            return _selectUnitVO.units;
        }// end function

        public function releaseUnitPosition(param1:UnitVO) : void
        {
            _gridPosition[param1.mapx][param1.mapy] = null;
            return;
        }// end function

        public function set tacticsUnitsIndexArray(param1:Array) : void
        {
            _tacticsUnitsIndexArray = param1;
            return;
        }// end function

    }
}
