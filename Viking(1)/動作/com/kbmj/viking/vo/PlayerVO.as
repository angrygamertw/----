package com.kbmj.viking.vo
{
    import com.kbmj.viking.lib.*;
    import flash.events.*;
    import flash.geom.*;
    import mx.events.*;

    public class PlayerVO extends Object implements IEventDispatcher
    {
        private var _leyLineFlag:uint;
        private var _soulCrystal:int;
        private var _power:int;
        private var _doubleExpExpiredAtLabel:String;
        private var _addedAreasCount:int;
        private var _raidAttackWin:int;
        private var _raidLimitationExpiredAt:String;
        private var _nextRankExp:int;
        private var _doubleDropExpired:Boolean;
        private var _silver:int;
        private var _raidProtectionExpiredAt:String;
        private var _homeAllMapPos:Point;
        private var _prizePoint:int;
        private var _raidLimitationExpired:Boolean;
        private var _eventMapBattleTicket:int;
        private var _silverOutput:int;
        private var _spiritOfWater:int;
        private var _bonusBattlesCount:int;
        private var _raidProtectionExpiredAtLabel:String;
        private var _continuationBattleRecord:int;
        private var _spiritOfEarthOutput:int;
        private var _guildMaster:Boolean;
        private var _activeStatus:int;
        private var _unitsCount:int;
        private var _chargePointAreasCount:int;
        private var _playerRankId:int;
        private var _incrementMaxTasksAtLabel:String;
        private var _incrementMaxTasks:Boolean;
        private var _colonyBattleTicket:int;
        private var _lastContinuationLevel:int;
        private var _raidProtectionExpired:Boolean;
        private var _playerName:String;
        private var _deletedAt:String;
        private var _tutorialId:int;
        private var _raidDefenseWin:int;
        private var _raidAttackLose:int;
        private var _propertiesCountMax:int;
        private var _lastEventMapLevel:int;
        private var _maxUnitCount:int;
        private var _factionId:int;
        private var _rarity:int;
        private var _bindingEventDispatcher:EventDispatcher;
        private var _civilization:int;
        private var _guild:Object;
        private var _levelMaxPropertiesCount:uint;
        private var _continuationBattleTicket:int;
        private var _playerId:int;
        private var _spiritOfFireOutput:int;
        private var _gold:int;
        private var _maxUnitLevel:Number;
        private var _catapultBuilt:Boolean;
        private var _raidDefenseLose:int;
        private var _doubleExpExpired:Boolean;
        private var _propertiesCount:int;
        private var _exp:int;
        private var _spiritOfWaterOutput:int;
        private var _doubleDropExpiredAtLabel:String;
        private var _spiritOfEarth:int;
        private var _application:Object;
        private var _maxMaterialQuantity:int;
        private var _eventMapBattleRecord:int;
        private var _unreadMail:Boolean;
        private var _currentTutorial:TutorialVO;
        private var _matchBattleTicket:int;
        private var _possessionTicket:int;
        private var _spiritOfFire:int;
        private var _raidLimitationExpiredAtLabel:String;
        private var _specialMatchBattleTicket:int;
        private var _unitsAverageLevel:Number;
        public static const ONMYOU_RANK_ID_BLUE:int = 6;
        public static const ONMYOU_RANK_ID_ORICHALC:int = 15;
        public static const ONMYOU_RANK_ID_RED:int = 2;
        public static const ONMYOU_RANK_ID_APPRENTICESHIP:int = 1;
        public static const ONMYOU_RANK_ID_ORANGE:int = 3;
        public static const ONMYOU_RANK_ID_ZENITH:int = 16;
        public static const ONMYOU_RANK_ID_YELLOW:int = 4;
        public static const ONMYOU_RANK_ID_BLACK_DIAMOND:int = 14;
        public static const ONMYOU_RANK_ID_PURPLE:int = 8;
        public static const ONMYOU_RANK_ID_GREEN:int = 5;
        public static const ONMYOU_RANK_ID_SILVER:int = 10;
        public static const ONMYOU_RANK_ID_PLATINA:int = 12;
        public static const ONMYOU_RANK_ID_INDIGO:int = 7;
        public static const ONMYOU_RANK_LABELS:Object = {0:"", 1:Utils.i18n("generalRankNameApprenticeShip"), 2:Utils.i18n("generalRankNameRed"), 3:Utils.i18n("generalRankNameOrange"), 4:Utils.i18n("generalRankNameYellow"), 5:Utils.i18n("generalRankNameGreen"), 6:Utils.i18n("generalRankNameBlue"), 7:Utils.i18n("generalRankNameIndigo"), 8:Utils.i18n("generalRankNamePurple"), 9:Utils.i18n("generalRankNameCopper"), 10:Utils.i18n("generalRankNameSilver"), 11:Utils.i18n("generalRankNameGold"), 12:Utils.i18n("generalRankNamePlatinum"), 13:Utils.i18n("generalRankNameDiamond"), 14:Utils.i18n("generalRankNameDamascus"), 15:Utils.i18n("generalRankNameOrihalc"), 16:Utils.i18n("generalRankNameZenith"), 17:"---"};
        public static const ONMYOU_RANK_ID_DIAMOND:int = 13;
        public static const ONMYOU_RANK_ID_BRONZE:int = 9;
        public static const ONMYOU_RANK_ID_GOLD:int = 11;

        public function PlayerVO()
        {
            _homeAllMapPos = new Point();
            _bindingEventDispatcher = new EventDispatcher(IEventDispatcher(this));
            return;
        }// end function

        public function get raidLimitationExpiredAtLabel() : String
        {
            return _raidLimitationExpiredAtLabel;
        }// end function

        public function set colonyBattleTicket(param1:int) : void
        {
            var _loc_2:* = this.colonyBattleTicket;
            if (_loc_2 !== param1)
            {
                this._1960355838colonyBattleTicket = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "colonyBattleTicket", _loc_2, param1));
            }
            return;
        }// end function

        public function get colonyBattleTicket() : int
        {
            return _colonyBattleTicket;
        }// end function

        public function set continuationBattleRecord(param1:int) : void
        {
            var _loc_2:* = this.continuationBattleRecord;
            if (_loc_2 !== param1)
            {
                this._246583552continuationBattleRecord = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "continuationBattleRecord", _loc_2, param1));
            }
            return;
        }// end function

        public function get spiritOfFire() : int
        {
            return _spiritOfFire;
        }// end function

        public function get currentTutorial() : TutorialVO
        {
            return _currentTutorial;
        }// end function

        private function set _1394351962raidDefenseWin(param1:int) : void
        {
            _raidDefenseWin = param1;
            return;
        }// end function

        public function get raidAttackWin() : int
        {
            return _raidAttackWin;
        }// end function

        public function set unreadMail(param1:Boolean) : void
        {
            var _loc_2:* = this.unreadMail;
            if (_loc_2 !== param1)
            {
                this._658472454unreadMail = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "unreadMail", _loc_2, param1));
            }
            return;
        }// end function

        private function set _658472454unreadMail(param1:Boolean) : void
        {
            _unreadMail = param1;
            return;
        }// end function

        public function set playerName(param1:String) : void
        {
            var _loc_2:* = this.playerName;
            if (_loc_2 !== param1)
            {
                this._2095657228playerName = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "playerName", _loc_2, param1));
            }
            return;
        }// end function

        private function set _968632226raidProtectionExpired(param1:Boolean) : void
        {
            _raidProtectionExpired = param1;
            return;
        }// end function

        private function set _275559541raidDefenseLose(param1:int) : void
        {
            _raidDefenseLose = param1;
            return;
        }// end function

        public function set raidAttackWin(param1:int) : void
        {
            var _loc_2:* = this.raidAttackWin;
            if (_loc_2 !== param1)
            {
                this._99839990raidAttackWin = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "raidAttackWin", _loc_2, param1));
            }
            return;
        }// end function

        public function get doubleDropExpiredAtLabel() : String
        {
            return _doubleDropExpiredAtLabel;
        }// end function

        public function get exp() : int
        {
            return _exp;
        }// end function

        public function get unreadMail() : Boolean
        {
            return _unreadMail;
        }// end function

        private function set _1965052962nextRankExp(param1:int) : void
        {
            _nextRankExp = param1;
            return;
        }// end function

        public function set silver(param1:int) : void
        {
            var _loc_2:* = this.silver;
            if (_loc_2 !== param1)
            {
                this._902311155silver = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "silver", _loc_2, param1));
            }
            return;
        }// end function

        public function set power(param1:int) : void
        {
            var _loc_2:* = this.power;
            if (_loc_2 !== param1)
            {
                this._106858757power = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "power", _loc_2, param1));
            }
            return;
        }// end function

        private function set _2135646135addedAreasCount(param1:int) : void
        {
            _addedAreasCount = param1;
            return;
        }// end function

        private function set _42885812lastEventMapLevel(param1:int) : void
        {
            _lastEventMapLevel = param1;
            return;
        }// end function

        public function get propertiesCountMax() : int
        {
            return _propertiesCountMax;
        }// end function

        public function set spiritOfFire(param1:int) : void
        {
            var _loc_2:* = this.spiritOfFire;
            if (_loc_2 !== param1)
            {
                this._240110594spiritOfFire = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "spiritOfFire", _loc_2, param1));
            }
            return;
        }// end function

        public function set raidLimitationExpiredAtLabel(param1:String) : void
        {
            var _loc_2:* = this.raidLimitationExpiredAtLabel;
            if (_loc_2 !== param1)
            {
                this._1314894848raidLimitationExpiredAtLabel = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "raidLimitationExpiredAtLabel", _loc_2, param1));
            }
            return;
        }// end function

        private function set _3178592gold(param1:int) : void
        {
            _gold = param1;
            return;
        }// end function

        public function get spiritOfWaterOutput() : int
        {
            return _spiritOfWaterOutput;
        }// end function

        public function set civilization(param1:int) : void
        {
            var _loc_2:* = this.civilization;
            if (_loc_2 !== param1)
            {
                this._795499759civilization = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "civilization", _loc_2, param1));
            }
            return;
        }// end function

        public function set incrementMaxTasks(param1:Boolean) : void
        {
            var _loc_2:* = this.incrementMaxTasks;
            if (_loc_2 !== param1)
            {
                this._1214139111incrementMaxTasks = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "incrementMaxTasks", _loc_2, param1));
            }
            return;
        }// end function

        public function get deletedAt() : String
        {
            return _deletedAt;
        }// end function

        public function get guildMaster() : Boolean
        {
            return _guildMaster;
        }// end function

        private function set _991202864spiritOfWaterOutput(param1:int) : void
        {
            _spiritOfWaterOutput = param1;
            return;
        }// end function

        public function set tutorialId(param1:int) : void
        {
            var _loc_2:* = this.tutorialId;
            if (_loc_2 !== param1)
            {
                this._1055380761tutorialId = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "tutorialId", _loc_2, param1));
            }
            return;
        }// end function

        public function get homeAllMapPos() : Point
        {
            return _homeAllMapPos;
        }// end function

        public function get levelMaxPropertiesCount() : uint
        {
            return _levelMaxPropertiesCount;
        }// end function

        public function set doubleDropExpiredAtLabel(param1:String) : void
        {
            var _loc_2:* = this.doubleDropExpiredAtLabel;
            if (_loc_2 !== param1)
            {
                this._957393436doubleDropExpiredAtLabel = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "doubleDropExpiredAtLabel", _loc_2, param1));
            }
            return;
        }// end function

        private function set _463441067eventMapBattleRecord(param1:int) : void
        {
            _eventMapBattleRecord = param1;
            return;
        }// end function

        public function hasLeyLine(param1:int) : Boolean
        {
            var _loc_2:* = 1 << param1;
            return (_leyLineFlag & _loc_2) == _loc_2;
        }// end function

        private function set _1590290106catapultBuilt(param1:Boolean) : void
        {
            _catapultBuilt = param1;
            return;
        }// end function

        private function set _185635397continuationBattleTicket(param1:int) : void
        {
            _continuationBattleTicket = param1;
            return;
        }// end function

        public function dispatchEvent(event:Event) : Boolean
        {
            return _bindingEventDispatcher.dispatchEvent(event);
        }// end function

        public function get addedAreasCount() : int
        {
            return _addedAreasCount;
        }// end function

        private function set _1055380761tutorialId(param1:int) : void
        {
            _tutorialId = param1;
            return;
        }// end function

        public function get spiritOfWater() : int
        {
            return _spiritOfWater;
        }// end function

        public function set exp(param1:int) : void
        {
            var _loc_2:* = this.exp;
            if (_loc_2 !== param1)
            {
                this._100893exp = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "exp", _loc_2, param1));
            }
            return;
        }// end function

        public function set spiritOfEarthOutput(param1:int) : void
        {
            var _loc_2:* = this.spiritOfEarthOutput;
            if (_loc_2 !== param1)
            {
                this._1616220381spiritOfEarthOutput = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "spiritOfEarthOutput", _loc_2, param1));
            }
            return;
        }// end function

        public function get maxMaterialQuantity() : int
        {
            return _maxMaterialQuantity;
        }// end function

        public function get factionId() : int
        {
            return _factionId;
        }// end function

        private function set _1217178480specialMatchBattleTicket(param1:int) : void
        {
            _specialMatchBattleTicket = param1;
            return;
        }// end function

        private function set _1152331915raidProtectionExpiredAt(param1:String) : void
        {
            _raidProtectionExpiredAt = param1;
            return;
        }// end function

        public function addEventListener(param1:String, param2:Function, param3:Boolean = false, param4:int = 0, param5:Boolean = false) : void
        {
            _bindingEventDispatcher.addEventListener(param1, param2, param3, param4, param5);
            return;
        }// end function

        private function set _498279957unitCount(param1:int) : void
        {
            _unitsCount = param1;
            return;
        }// end function

        public function get matchBattleTicket() : int
        {
            return _matchBattleTicket;
        }// end function

        public function get food() : int
        {
            return 0;
        }// end function

        public function get gold() : int
        {
            return _gold;
        }// end function

        public function set propertiesCountMax(param1:int) : void
        {
            var _loc_2:* = this.propertiesCountMax;
            if (_loc_2 !== param1)
            {
                this._733995992propertiesCountMax = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "propertiesCountMax", _loc_2, param1));
            }
            return;
        }// end function

        public function set guildMaster(param1:Boolean) : void
        {
            var _loc_2:* = this.guildMaster;
            if (_loc_2 !== param1)
            {
                this._1669746741guildMaster = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "guildMaster", _loc_2, param1));
            }
            return;
        }// end function

        private function set _106858757power(param1:int) : void
        {
            _power = param1;
            return;
        }// end function

        public function get silverOutput() : int
        {
            return _silverOutput;
        }// end function

        public function set spiritOfWaterOutput(param1:int) : void
        {
            var _loc_2:* = this.spiritOfWaterOutput;
            if (_loc_2 !== param1)
            {
                this._991202864spiritOfWaterOutput = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "spiritOfWaterOutput", _loc_2, param1));
            }
            return;
        }// end function

        public function set deletedAt(param1:String) : void
        {
            var _loc_2:* = this.deletedAt;
            if (_loc_2 !== param1)
            {
                this._358705620deletedAt = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "deletedAt", _loc_2, param1));
            }
            return;
        }// end function

        public function set incrementMaxTasksAtLabel(param1:String) : void
        {
            var _loc_2:* = this.incrementMaxTasksAtLabel;
            if (_loc_2 !== param1)
            {
                this._867815208incrementMaxTasksAtLabel = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "incrementMaxTasksAtLabel", _loc_2, param1));
            }
            return;
        }// end function

        public function set homeAllMapPos(param1:Point) : void
        {
            var _loc_2:* = this.homeAllMapPos;
            if (_loc_2 !== param1)
            {
                this._1410033210homeAllMapPos = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "homeAllMapPos", _loc_2, param1));
            }
            return;
        }// end function

        public function set levelMaxPropertiesCount(param1:uint) : void
        {
            var _loc_2:* = this.levelMaxPropertiesCount;
            if (_loc_2 !== param1)
            {
                this._732575804levelMaxPropertiesCount = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "levelMaxPropertiesCount", _loc_2, param1));
            }
            return;
        }// end function

        private function set _100893exp(param1:int) : void
        {
            _exp = param1;
            return;
        }// end function

        public function set raidLimitationExpired(param1:Boolean) : void
        {
            var _loc_2:* = this.raidLimitationExpired;
            if (_loc_2 !== param1)
            {
                this._1962968255raidLimitationExpired = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "raidLimitationExpired", _loc_2, param1));
            }
            return;
        }// end function

        private function set _1803211987bonusBattlesCount(param1:int) : void
        {
            _bonusBattlesCount = param1;
            return;
        }// end function

        private function set _1921571609maxUnitCount(param1:int) : void
        {
            _maxUnitCount = param1;
            return;
        }// end function

        public function set catapultBuilt(param1:Boolean) : void
        {
            var _loc_2:* = this.catapultBuilt;
            if (_loc_2 !== param1)
            {
                this._1590290106catapultBuilt = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "catapultBuilt", _loc_2, param1));
            }
            return;
        }// end function

        public function get specialMatchBattleTicket() : int
        {
            return _specialMatchBattleTicket;
        }// end function

        private function set _1848196105currentTutorial(param1:TutorialVO) : void
        {
            _currentTutorial = param1;
            return;
        }// end function

        public function set matchBattleTicket(param1:int) : void
        {
            var _loc_2:* = this.matchBattleTicket;
            if (_loc_2 !== param1)
            {
                this._1407446089matchBattleTicket = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "matchBattleTicket", _loc_2, param1));
            }
            return;
        }// end function

        public function get raidProtectionExpiredAtLabel() : String
        {
            return _raidProtectionExpiredAtLabel;
        }// end function

        public function set addedAreasCount(param1:int) : void
        {
            var _loc_2:* = this.addedAreasCount;
            if (_loc_2 !== param1)
            {
                this._2135646135addedAreasCount = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "addedAreasCount", _loc_2, param1));
            }
            return;
        }// end function

        public function get prizePoint() : int
        {
            return _prizePoint;
        }// end function

        public function get doubleDropExpired() : Boolean
        {
            return _doubleDropExpired;
        }// end function

        public function get raidDefenseWin() : int
        {
            return _raidDefenseWin;
        }// end function

        public function get raidAttackLose() : int
        {
            return _raidAttackLose;
        }// end function

        private function set _1879273436playerId(param1:int) : void
        {
            _playerId = param1;
            return;
        }// end function

        public function set maxMaterialQuantity(param1:int) : void
        {
            var _loc_2:* = this.maxMaterialQuantity;
            if (_loc_2 !== param1)
            {
                this._2038122410maxMaterialQuantity = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "maxMaterialQuantity", _loc_2, param1));
            }
            return;
        }// end function

        public function get spiritOfFireOutput() : int
        {
            return _spiritOfFireOutput;
        }// end function

        private function set _1755540638prizePoint(param1:int) : void
        {
            _prizePoint = param1;
            return;
        }// end function

        private function set _1669746741guildMaster(param1:Boolean) : void
        {
            _guildMaster = param1;
            return;
        }// end function

        public function set spiritOfWater(param1:int) : void
        {
            var _loc_2:* = this.spiritOfWater;
            if (_loc_2 !== param1)
            {
                this._1161969743spiritOfWater = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "spiritOfWater", _loc_2, param1));
            }
            return;
        }// end function

        public function get playerRankId() : int
        {
            return _playerRankId;
        }// end function

        private function set _1962968255raidLimitationExpired(param1:Boolean) : void
        {
            _raidLimitationExpired = param1;
            return;
        }// end function

        private function set _246583552continuationBattleRecord(param1:int) : void
        {
            _continuationBattleRecord = param1;
            return;
        }// end function

        public function set maxUnitLevel(param1:Number) : void
        {
            var _loc_2:* = this.maxUnitLevel;
            if (_loc_2 !== param1)
            {
                this._1913557156maxUnitLevel = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "maxUnitLevel", _loc_2, param1));
            }
            return;
        }// end function

        private function set _1476885339doubleDropExpired(param1:Boolean) : void
        {
            _doubleDropExpired = param1;
            return;
        }// end function

        public function set application(param1:Object) : void
        {
            var _loc_2:* = this.application;
            if (_loc_2 !== param1)
            {
                this._1554253136application = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "application", _loc_2, param1));
            }
            return;
        }// end function

        public function set doubleExpExpiredAtLabel(param1:String) : void
        {
            var _loc_2:* = this.doubleExpExpiredAtLabel;
            if (_loc_2 !== param1)
            {
                this._183785288doubleExpExpiredAtLabel = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "doubleExpExpiredAtLabel", _loc_2, param1));
            }
            return;
        }// end function

        private function set _2095657228playerName(param1:String) : void
        {
            _playerName = param1;
            return;
        }// end function

        private function set _1616220381spiritOfEarthOutput(param1:int) : void
        {
            _spiritOfEarthOutput = param1;
            return;
        }// end function

        public function set eventMapBattleTicket(param1:int) : void
        {
            var _loc_2:* = this.eventMapBattleTicket;
            if (_loc_2 !== param1)
            {
                this._524389222eventMapBattleTicket = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "eventMapBattleTicket", _loc_2, param1));
            }
            return;
        }// end function

        private function set _1913557156maxUnitLevel(param1:Number) : void
        {
            _maxUnitLevel = param1;
            return;
        }// end function

        public function set factionId(param1:int) : void
        {
            var _loc_2:* = this.factionId;
            if (_loc_2 !== param1)
            {
                this._1332933545factionId = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "factionId", _loc_2, param1));
            }
            return;
        }// end function

        private function set _921847980raidLimitationExpiredAt(param1:String) : void
        {
            _raidLimitationExpiredAt = param1;
            return;
        }// end function

        public function get bonusBattlesCount() : int
        {
            return _bonusBattlesCount;
        }// end function

        private function set _1554253136application(param1:Object) : void
        {
            _application = param1;
            return;
        }// end function

        private function set _1424776856activeStatus(param1:int) : void
        {
            _activeStatus = param1;
            return;
        }// end function

        public function set silverOutput(param1:int) : void
        {
            var _loc_2:* = this.silverOutput;
            if (_loc_2 !== param1)
            {
                this._83139182silverOutput = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "silverOutput", _loc_2, param1));
            }
            return;
        }// end function

        private function set _109256131soulCrystal(param1:int) : void
        {
            _soulCrystal = param1;
            return;
        }// end function

        public function set raidLimitationExpiredAt(param1:String) : void
        {
            var _loc_2:* = this.raidLimitationExpiredAt;
            if (_loc_2 !== param1)
            {
                this._921847980raidLimitationExpiredAt = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "raidLimitationExpiredAt", _loc_2, param1));
            }
            return;
        }// end function

        public function set possessionTicket(param1:int) : void
        {
            var _loc_2:* = this.possessionTicket;
            if (_loc_2 !== param1)
            {
                this._355518318possessionTicket = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "possessionTicket", _loc_2, param1));
            }
            return;
        }// end function

        public function get eventMapBattleRecord() : int
        {
            return _eventMapBattleRecord;
        }// end function

        public function get maxUnitCount() : int
        {
            return _maxUnitCount;
        }// end function

        public function get unitsAverageLevel() : Number
        {
            return _unitsAverageLevel;
        }// end function

        public function set raidProtectionExpiredAt(param1:String) : void
        {
            var _loc_2:* = this.raidProtectionExpiredAt;
            if (_loc_2 !== param1)
            {
                this._1152331915raidProtectionExpiredAt = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "raidProtectionExpiredAt", _loc_2, param1));
            }
            return;
        }// end function

        private function set _2019692793doubleExpExpired(param1:Boolean) : void
        {
            _doubleExpExpired = param1;
            return;
        }// end function

        private function set _99839990raidAttackWin(param1:int) : void
        {
            _raidAttackWin = param1;
            return;
        }// end function

        private function set _1517413476propertiesCount(param1:int) : void
        {
            _propertiesCount = param1;
            return;
        }// end function

        public function get doubleExpExpired() : Boolean
        {
            return _doubleExpExpired;
        }// end function

        public function get activeStatus() : int
        {
            return _activeStatus;
        }// end function

        public function get continuationBattleRecord() : int
        {
            return _continuationBattleRecord;
        }// end function

        public function hasEventListener(param1:String) : Boolean
        {
            return _bindingEventDispatcher.hasEventListener(param1);
        }// end function

        public function set spiritOfEarth(param1:int) : void
        {
            var _loc_2:* = this.spiritOfEarth;
            if (_loc_2 !== param1)
            {
                this._1145344898spiritOfEarth = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "spiritOfEarth", _loc_2, param1));
            }
            return;
        }// end function

        public function get power() : int
        {
            return _power;
        }// end function

        private function set _1407446089matchBattleTicket(param1:int) : void
        {
            _matchBattleTicket = param1;
            return;
        }// end function

        public function set lastEventMapLevel(param1:int) : void
        {
            var _loc_2:* = this.lastEventMapLevel;
            if (_loc_2 !== param1)
            {
                this._42885812lastEventMapLevel = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "lastEventMapLevel", _loc_2, param1));
            }
            return;
        }// end function

        public function get silver() : int
        {
            return _silver;
        }// end function

        public function get civilization() : int
        {
            return _civilization;
        }// end function

        public function get playerName() : String
        {
            return _playerName;
        }// end function

        public function set raidProtectionExpiredAtLabel(param1:String) : void
        {
            var _loc_2:* = this.raidProtectionExpiredAtLabel;
            if (_loc_2 !== param1)
            {
                this._572776321raidProtectionExpiredAtLabel = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "raidProtectionExpiredAtLabel", _loc_2, param1));
            }
            return;
        }// end function

        public function get incrementMaxTasks() : Boolean
        {
            return _incrementMaxTasks;
        }// end function

        public function set raidDefenseLose(param1:int) : void
        {
            var _loc_2:* = this.raidDefenseLose;
            if (_loc_2 !== param1)
            {
                this._275559541raidDefenseLose = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "raidDefenseLose", _loc_2, param1));
            }
            return;
        }// end function

        private function set _298511192playerRankId(param1:int) : void
        {
            _playerRankId = param1;
            return;
        }// end function

        public function get tutorialId() : int
        {
            return _tutorialId;
        }// end function

        public function get spiritOfEarthOutput() : int
        {
            return _spiritOfEarthOutput;
        }// end function

        public function set unitsAverageLevel(param1:Number) : void
        {
            var _loc_2:* = this.unitsAverageLevel;
            if (_loc_2 !== param1)
            {
                this._1968051318unitsAverageLevel = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "unitsAverageLevel", _loc_2, param1));
            }
            return;
        }// end function

        public function set specialMatchBattleTicket(param1:int) : void
        {
            var _loc_2:* = this.specialMatchBattleTicket;
            if (_loc_2 !== param1)
            {
                this._1217178480specialMatchBattleTicket = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "specialMatchBattleTicket", _loc_2, param1));
            }
            return;
        }// end function

        public function get incrementMaxTasksAtLabel() : String
        {
            return _incrementMaxTasksAtLabel;
        }// end function

        public function set chargePointAreasCount(param1:int) : void
        {
            var _loc_2:* = this.chargePointAreasCount;
            if (_loc_2 !== param1)
            {
                this._1544812421chargePointAreasCount = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "chargePointAreasCount", _loc_2, param1));
            }
            return;
        }// end function

        public function set gold(param1:int) : void
        {
            var _loc_2:* = this.gold;
            if (_loc_2 !== param1)
            {
                this._3178592gold = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "gold", _loc_2, param1));
            }
            return;
        }// end function

        public function set lastContinuationLevel(param1:int) : void
        {
            var _loc_2:* = this.lastContinuationLevel;
            if (_loc_2 !== param1)
            {
                this._1565856873lastContinuationLevel = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "lastContinuationLevel", _loc_2, param1));
            }
            return;
        }// end function

        private function set _98712563guild(param1:Object) : void
        {
            _guild = param1;
            return;
        }// end function

        private function set _1410033210homeAllMapPos(param1:Point) : void
        {
            _homeAllMapPos = param1;
            return;
        }// end function

        private function set _1870991424leyLineFlag(param1:uint) : void
        {
            _leyLineFlag = param1;
            return;
        }// end function

        public function set prizePoint(param1:int) : void
        {
            var _loc_2:* = this.prizePoint;
            if (_loc_2 !== param1)
            {
                this._1755540638prizePoint = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "prizePoint", _loc_2, param1));
            }
            return;
        }// end function

        private function set _714947937spiritOfFireOutput(param1:int) : void
        {
            _spiritOfFireOutput = param1;
            return;
        }// end function

        public function get raidLimitationExpired() : Boolean
        {
            return _raidLimitationExpired;
        }// end function

        private function set _938161749rarity(param1:int) : void
        {
            _rarity = param1;
            return;
        }// end function

        public function set raidProtectionExpired(param1:Boolean) : void
        {
            var _loc_2:* = this.raidProtectionExpired;
            if (_loc_2 !== param1)
            {
                this._968632226raidProtectionExpired = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "raidProtectionExpired", _loc_2, param1));
            }
            return;
        }// end function

        public function set spiritOfFireOutput(param1:int) : void
        {
            var _loc_2:* = this.spiritOfFireOutput;
            if (_loc_2 !== param1)
            {
                this._714947937spiritOfFireOutput = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "spiritOfFireOutput", _loc_2, param1));
            }
            return;
        }// end function

        public function get doubleExpExpiredAtLabel() : String
        {
            return _doubleExpExpiredAtLabel;
        }// end function

        public function get catapultBuilt() : Boolean
        {
            return _catapultBuilt;
        }// end function

        public function set raidAttackLose(param1:int) : void
        {
            var _loc_2:* = this.raidAttackLose;
            if (_loc_2 !== param1)
            {
                this._1199605927raidAttackLose = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "raidAttackLose", _loc_2, param1));
            }
            return;
        }// end function

        public function get application() : Object
        {
            return _application;
        }// end function

        public function set doubleDropExpired(param1:Boolean) : void
        {
            var _loc_2:* = this.doubleDropExpired;
            if (_loc_2 !== param1)
            {
                this._1476885339doubleDropExpired = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "doubleDropExpired", _loc_2, param1));
            }
            return;
        }// end function

        private function set _1199605927raidAttackLose(param1:int) : void
        {
            _raidAttackLose = param1;
            return;
        }// end function

        public function get lastEventMapLevel() : int
        {
            return _lastEventMapLevel;
        }// end function

        public function get raidLimitationExpiredAt() : String
        {
            return _raidLimitationExpiredAt;
        }// end function

        public function set playerRankId(param1:int) : void
        {
            var _loc_2:* = this.playerRankId;
            if (_loc_2 !== param1)
            {
                this._298511192playerRankId = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "playerRankId", _loc_2, param1));
            }
            return;
        }// end function

        public function removeEventListener(param1:String, param2:Function, param3:Boolean = false) : void
        {
            _bindingEventDispatcher.removeEventListener(param1, param2, param3);
            return;
        }// end function

        public function set raidDefenseWin(param1:int) : void
        {
            var _loc_2:* = this.raidDefenseWin;
            if (_loc_2 !== param1)
            {
                this._1394351962raidDefenseWin = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "raidDefenseWin", _loc_2, param1));
            }
            return;
        }// end function

        public function get maxUnitLevel() : Number
        {
            return _maxUnitLevel;
        }// end function

        private function set _795499759civilization(param1:int) : void
        {
            _civilization = param1;
            return;
        }// end function

        private function set _1314894848raidLimitationExpiredAtLabel(param1:String) : void
        {
            _raidLimitationExpiredAtLabel = param1;
            return;
        }// end function

        public function set propertiesCount(param1:int) : void
        {
            var _loc_2:* = this.propertiesCount;
            if (_loc_2 !== param1)
            {
                this._1517413476propertiesCount = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "propertiesCount", _loc_2, param1));
            }
            return;
        }// end function

        public function get eventMapBattleTicket() : int
        {
            return _eventMapBattleTicket;
        }// end function

        private function set _240110594spiritOfFire(param1:int) : void
        {
            _spiritOfFire = param1;
            return;
        }// end function

        private function set _1332933545factionId(param1:int) : void
        {
            _factionId = param1;
            return;
        }// end function

        public function get possessionTicket() : int
        {
            return _possessionTicket;
        }// end function

        public function get raidProtectionExpiredAt() : String
        {
            return _raidProtectionExpiredAt;
        }// end function

        public function set continuationBattleTicket(param1:int) : void
        {
            var _loc_2:* = this.continuationBattleTicket;
            if (_loc_2 !== param1)
            {
                this._185635397continuationBattleTicket = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "continuationBattleTicket", _loc_2, param1));
            }
            return;
        }// end function

        private function set _1214139111incrementMaxTasks(param1:Boolean) : void
        {
            _incrementMaxTasks = param1;
            return;
        }// end function

        private function set _183785288doubleExpExpiredAtLabel(param1:String) : void
        {
            _doubleExpExpiredAtLabel = param1;
            return;
        }// end function

        private function set _83139182silverOutput(param1:int) : void
        {
            _silverOutput = param1;
            return;
        }// end function

        private function set _867815208incrementMaxTasksAtLabel(param1:String) : void
        {
            _incrementMaxTasksAtLabel = param1;
            return;
        }// end function

        public function get spiritOfEarth() : int
        {
            return _spiritOfEarth;
        }// end function

        public function set activeStatus(param1:int) : void
        {
            var _loc_2:* = this.activeStatus;
            if (_loc_2 !== param1)
            {
                this._1424776856activeStatus = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "activeStatus", _loc_2, param1));
            }
            return;
        }// end function

        public function get chargePointAreasCount() : int
        {
            return _chargePointAreasCount;
        }// end function

        public function set soulCrystal(param1:int) : void
        {
            var _loc_2:* = this.soulCrystal;
            if (_loc_2 !== param1)
            {
                this._109256131soulCrystal = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "soulCrystal", _loc_2, param1));
            }
            return;
        }// end function

        private function set _355518318possessionTicket(param1:int) : void
        {
            _possessionTicket = param1;
            return;
        }// end function

        public function get raidDefenseLose() : int
        {
            return _raidDefenseLose;
        }// end function

        public function willTrigger(param1:String) : Boolean
        {
            return _bindingEventDispatcher.willTrigger(param1);
        }// end function

        public function set rarity(param1:int) : void
        {
            var _loc_2:* = this.rarity;
            if (_loc_2 !== param1)
            {
                this._938161749rarity = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "rarity", _loc_2, param1));
            }
            return;
        }// end function

        public function set leyLineFlag(param1:uint) : void
        {
            var _loc_2:* = this.leyLineFlag;
            if (_loc_2 !== param1)
            {
                this._1870991424leyLineFlag = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "leyLineFlag", _loc_2, param1));
            }
            return;
        }// end function

        public function get propertiesCount() : int
        {
            return _propertiesCount;
        }// end function

        public function get lastContinuationLevel() : int
        {
            return _lastContinuationLevel;
        }// end function

        public function get raidProtectionExpired() : Boolean
        {
            return _raidProtectionExpired;
        }// end function

        private function set _2038122410maxMaterialQuantity(param1:int) : void
        {
            _maxMaterialQuantity = param1;
            return;
        }// end function

        public function set bonusBattlesCount(param1:int) : void
        {
            var _loc_2:* = this.bonusBattlesCount;
            if (_loc_2 !== param1)
            {
                this._1803211987bonusBattlesCount = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "bonusBattlesCount", _loc_2, param1));
            }
            return;
        }// end function

        public function set eventMapBattleRecord(param1:int) : void
        {
            var _loc_2:* = this.eventMapBattleRecord;
            if (_loc_2 !== param1)
            {
                this._463441067eventMapBattleRecord = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "eventMapBattleRecord", _loc_2, param1));
            }
            return;
        }// end function

        public function get rarity() : int
        {
            return _rarity;
        }// end function

        private function set _1565856873lastContinuationLevel(param1:int) : void
        {
            _lastContinuationLevel = param1;
            return;
        }// end function

        private function set _1161969743spiritOfWater(param1:int) : void
        {
            _spiritOfWater = param1;
            return;
        }// end function

        public function get continuationBattleTicket() : int
        {
            return _continuationBattleTicket;
        }// end function

        public function set nextRankExp(param1:int) : void
        {
            var _loc_2:* = this.nextRankExp;
            if (_loc_2 !== param1)
            {
                this._1965052962nextRankExp = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "nextRankExp", _loc_2, param1));
            }
            return;
        }// end function

        private function set _732575804levelMaxPropertiesCount(param1:uint) : void
        {
            _levelMaxPropertiesCount = param1;
            return;
        }// end function

        public function get leyLineFlag() : uint
        {
            return _leyLineFlag;
        }// end function

        private function set _733995992propertiesCountMax(param1:int) : void
        {
            _propertiesCountMax = param1;
            return;
        }// end function

        public function get soulCrystal() : int
        {
            return _soulCrystal;
        }// end function

        private function set _957393436doubleDropExpiredAtLabel(param1:String) : void
        {
            _doubleDropExpiredAtLabel = param1;
            return;
        }// end function

        private function set _524389222eventMapBattleTicket(param1:int) : void
        {
            _eventMapBattleTicket = param1;
            return;
        }// end function

        private function set _902311155silver(param1:int) : void
        {
            _silver = param1;
            return;
        }// end function

        private function set _1544812421chargePointAreasCount(param1:int) : void
        {
            _chargePointAreasCount = param1;
            return;
        }// end function

        private function set _1960355838colonyBattleTicket(param1:int) : void
        {
            _colonyBattleTicket = param1;
            return;
        }// end function

        public function set maxUnitCount(param1:int) : void
        {
            var _loc_2:* = this.maxUnitCount;
            if (_loc_2 !== param1)
            {
                this._1921571609maxUnitCount = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "maxUnitCount", _loc_2, param1));
            }
            return;
        }// end function

        public function set unitCount(param1:int) : void
        {
            var _loc_2:* = this.unitCount;
            if (_loc_2 !== param1)
            {
                this._498279957unitCount = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "unitCount", _loc_2, param1));
            }
            return;
        }// end function

        private function set _572776321raidProtectionExpiredAtLabel(param1:String) : void
        {
            _raidProtectionExpiredAtLabel = param1;
            return;
        }// end function

        public function set playerId(param1:int) : void
        {
            var _loc_2:* = this.playerId;
            if (_loc_2 !== param1)
            {
                this._1879273436playerId = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "playerId", _loc_2, param1));
            }
            return;
        }// end function

        public function get playerId() : int
        {
            return _playerId;
        }// end function

        public function get nextRankExp() : int
        {
            return _nextRankExp;
        }// end function

        public function set guild(param1:Object) : void
        {
            var _loc_2:* = this.guild;
            if (_loc_2 !== param1)
            {
                this._98712563guild = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "guild", _loc_2, param1));
            }
            return;
        }// end function

        public function get unitCount() : int
        {
            return _unitsCount;
        }// end function

        public function set doubleExpExpired(param1:Boolean) : void
        {
            var _loc_2:* = this.doubleExpExpired;
            if (_loc_2 !== param1)
            {
                this._2019692793doubleExpExpired = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "doubleExpExpired", _loc_2, param1));
            }
            return;
        }// end function

        public function get guild() : Object
        {
            return _guild;
        }// end function

        public function set currentTutorial(param1:TutorialVO) : void
        {
            var _loc_2:* = this.currentTutorial;
            if (_loc_2 !== param1)
            {
                this._1848196105currentTutorial = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "currentTutorial", _loc_2, param1));
            }
            return;
        }// end function

        private function set _358705620deletedAt(param1:String) : void
        {
            _deletedAt = param1;
            return;
        }// end function

        private function set _1145344898spiritOfEarth(param1:int) : void
        {
            _spiritOfEarth = param1;
            return;
        }// end function

        private function set _1968051318unitsAverageLevel(param1:Number) : void
        {
            _unitsAverageLevel = param1;
            return;
        }// end function

    }
}
