package com.kbmj.viking.vo.city
{
    import flash.events.*;
    import mx.events.*;

    public class GuildDetailVO extends Object implements IEventDispatcher
    {
        private var _leyLineFlag:uint;
        private var _dedicationPoint:int;
        private var _factionGiftCountLeft:int;
        private var _rank:int;
        private var _membershipCount:int;
        private var _features:Array;
        private var _guildName:String;
        private var _comment:String;
        private var _guildId:int;
        private var _allTerritoriesCount:int;
        private var _bindingEventDispatcher:EventDispatcher;
        private var _maxMemberSize:int;
        private var _totalNotoriety:int;
        private var _factionGiftCount:int;
        private var _players:Array;
        private var _levelMaxPropertiesCount:int;

        public function GuildDetailVO()
        {
            _bindingEventDispatcher = new EventDispatcher(IEventDispatcher(this));
            return;
        }// end function

        public function get factionGiftCount() : int
        {
            return _factionGiftCount;
        }// end function

        public function set rank(param1:int) : void
        {
            var _loc_2:* = this.rank;
            if (_loc_2 !== param1)
            {
                this._3492908rank = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "rank", _loc_2, param1));
            }
            return;
        }// end function

        private function set _950398559comment(param1:String) : void
        {
            _comment = param1;
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

        public function set factionGiftCount(param1:int) : void
        {
            var _loc_2:* = this.factionGiftCount;
            if (_loc_2 !== param1)
            {
                this._1629299965factionGiftCount = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "factionGiftCount", _loc_2, param1));
            }
            return;
        }// end function

        public function dispatchEvent(event:Event) : Boolean
        {
            return _bindingEventDispatcher.dispatchEvent(event);
        }// end function

        public function willTrigger(param1:String) : Boolean
        {
            return _bindingEventDispatcher.willTrigger(param1);
        }// end function

        public function get guildName() : String
        {
            return _guildName;
        }// end function

        public function set features(param1:Array) : void
        {
            var _loc_2:* = this.features;
            if (_loc_2 !== param1)
            {
                this._290659267features = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "features", _loc_2, param1));
            }
            return;
        }// end function

        public function get factionGiftCountLeft() : int
        {
            return _factionGiftCountLeft;
        }// end function

        private function set _1848510178guildName(param1:String) : void
        {
            _guildName = param1;
            return;
        }// end function

        public function get players() : Array
        {
            return _players;
        }// end function

        public function get totalNotoriety() : int
        {
            return _totalNotoriety;
        }// end function

        public function hasLeyLine(param1:int) : Boolean
        {
            var _loc_2:* = 1 << param1;
            return (_leyLineFlag & _loc_2) == _loc_2;
        }// end function

        public function get rank() : int
        {
            return _rank;
        }// end function

        public function get levelMaxPropertiesCount() : int
        {
            return _levelMaxPropertiesCount;
        }// end function

        public function get features() : Array
        {
            return _features;
        }// end function

        public function get maxMemberSize() : int
        {
            return _maxMemberSize;
        }// end function

        public function set membershipCount(param1:int) : void
        {
            var _loc_2:* = this.membershipCount;
            if (_loc_2 !== param1)
            {
                this._1454354727membershipCount = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "membershipCount", _loc_2, param1));
            }
            return;
        }// end function

        public function set guildName(param1:String) : void
        {
            var _loc_2:* = this.guildName;
            if (_loc_2 !== param1)
            {
                this._1848510178guildName = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "guildName", _loc_2, param1));
            }
            return;
        }// end function

        public function set comment(param1:String) : void
        {
            var _loc_2:* = this.comment;
            if (_loc_2 !== param1)
            {
                this._950398559comment = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "comment", _loc_2, param1));
            }
            return;
        }// end function

        private function set _493567566players(param1:Array) : void
        {
            _players = param1;
            return;
        }// end function

        private function set _1781405247maxMemberSize(param1:int) : void
        {
            _maxMemberSize = param1;
            return;
        }// end function

        public function addEventListener(param1:String, param2:Function, param3:Boolean = false, param4:int = 0, param5:Boolean = false) : void
        {
            _bindingEventDispatcher.addEventListener(param1, param2, param3, param4, param5);
            return;
        }// end function

        public function get leyLineFlag() : uint
        {
            return _leyLineFlag;
        }// end function

        private function set _1390257485totalNotoriety(param1:int) : void
        {
            _totalNotoriety = param1;
            return;
        }// end function

        public function removeEventListener(param1:String, param2:Function, param3:Boolean = false) : void
        {
            _bindingEventDispatcher.removeEventListener(param1, param2, param3);
            return;
        }// end function

        public function set factionGiftCountLeft(param1:int) : void
        {
            var _loc_2:* = this.factionGiftCountLeft;
            if (_loc_2 !== param1)
            {
                this._1816901034factionGiftCountLeft = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "factionGiftCountLeft", _loc_2, param1));
            }
            return;
        }// end function

        private function set _290659267features(param1:Array) : void
        {
            _features = param1;
            return;
        }// end function

        private function set _671631288dedicationPoint(param1:int) : void
        {
            _dedicationPoint = param1;
            return;
        }// end function

        public function get dedicationPoint() : int
        {
            return _dedicationPoint;
        }// end function

        private function set _1454354727membershipCount(param1:int) : void
        {
            _membershipCount = param1;
            return;
        }// end function

        public function get comment() : String
        {
            return _comment;
        }// end function

        public function get membershipCount() : int
        {
            return _membershipCount;
        }// end function

        public function set guildId(param1:int) : void
        {
            var _loc_2:* = this.guildId;
            if (_loc_2 !== param1)
            {
                this._373494894guildId = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "guildId", _loc_2, param1));
            }
            return;
        }// end function

        public function set players(param1:Array) : void
        {
            var _loc_2:* = this.players;
            if (_loc_2 !== param1)
            {
                this._493567566players = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "players", _loc_2, param1));
            }
            return;
        }// end function

        private function set _732575804levelMaxPropertiesCount(param1:int) : void
        {
            _levelMaxPropertiesCount = param1;
            return;
        }// end function

        private function set _1816901034factionGiftCountLeft(param1:int) : void
        {
            _factionGiftCountLeft = param1;
            return;
        }// end function

        private function set _3492908rank(param1:int) : void
        {
            _rank = param1;
            return;
        }// end function

        public function set totalNotoriety(param1:int) : void
        {
            var _loc_2:* = this.totalNotoriety;
            if (_loc_2 !== param1)
            {
                this._1390257485totalNotoriety = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "totalNotoriety", _loc_2, param1));
            }
            return;
        }// end function

        public function get guildId() : int
        {
            return _guildId;
        }// end function

        private function set _1629299965factionGiftCount(param1:int) : void
        {
            _factionGiftCount = param1;
            return;
        }// end function

        public function set dedicationPoint(param1:int) : void
        {
            var _loc_2:* = this.dedicationPoint;
            if (_loc_2 !== param1)
            {
                this._671631288dedicationPoint = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "dedicationPoint", _loc_2, param1));
            }
            return;
        }// end function

        private function set _1870991424leyLineFlag(param1:uint) : void
        {
            _leyLineFlag = param1;
            return;
        }// end function

        private function set _373494894guildId(param1:int) : void
        {
            _guildId = param1;
            return;
        }// end function

        public function set allTerritoriesCount(param1:int) : void
        {
            var _loc_2:* = this.allTerritoriesCount;
            if (_loc_2 !== param1)
            {
                this._110082696allTerritoriesCount = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "allTerritoriesCount", _loc_2, param1));
            }
            return;
        }// end function

        public function get allTerritoriesCount() : int
        {
            return _allTerritoriesCount;
        }// end function

        public function hasEventListener(param1:String) : Boolean
        {
            return _bindingEventDispatcher.hasEventListener(param1);
        }// end function

        private function set _110082696allTerritoriesCount(param1:int) : void
        {
            _allTerritoriesCount = param1;
            return;
        }// end function

        public function set maxMemberSize(param1:int) : void
        {
            var _loc_2:* = this.maxMemberSize;
            if (_loc_2 !== param1)
            {
                this._1781405247maxMemberSize = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "maxMemberSize", _loc_2, param1));
            }
            return;
        }// end function

        public function set levelMaxPropertiesCount(param1:int) : void
        {
            var _loc_2:* = this.levelMaxPropertiesCount;
            if (_loc_2 !== param1)
            {
                this._732575804levelMaxPropertiesCount = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "levelMaxPropertiesCount", _loc_2, param1));
            }
            return;
        }// end function

    }
}
