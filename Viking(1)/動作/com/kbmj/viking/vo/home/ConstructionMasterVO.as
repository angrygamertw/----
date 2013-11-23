package com.kbmj.viking.vo.home
{
    import com.kbmj.viking.vo.*;
    import flash.events.*;
    import mx.events.*;

    public class ConstructionMasterVO extends Object implements IEventDispatcher
    {
        private var _rank:String;
        private var _description:String;
        private var _gold:int;
        private var _abilityValue:int;
        private var _playerRank:int;
        private var _generalLevel:int;
        private var _name:String;
        private var _repeatCount:int;
        private var _level:int;
        private var _minutes:int;
        private var _executionLimit:int;
        private var _nameLabel:String;
        private var _materials:Array;
        private var _thirdMaterial:Object;
        private var _bindingEventDispatcher:EventDispatcher;
        private var _maxBuild:int;
        private var _code:String;
        private var _buildingMasterVO:BuildingMasterVO;
        private var _abilities:Object;
        private var _secondMaterial:Object;
        private var _firstMaterial:Object;

        public function ConstructionMasterVO()
        {
            _name = new String();
            _materials = new Array();
            _firstMaterial = new Object();
            _secondMaterial = new Object();
            _thirdMaterial = new Object();
            _abilities = new Object();
            _abilityValue = new int();
            _nameLabel = new String();
            _description = new String();
            _code = new String();
            _bindingEventDispatcher = new EventDispatcher(IEventDispatcher(this));
            return;
        }// end function

        public function set executionLimit(param1:int) : void
        {
            var _loc_2:* = this.executionLimit;
            if (_loc_2 !== param1)
            {
                this._1488289917executionLimit = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "executionLimit", _loc_2, param1));
            }
            return;
        }// end function

        public function set generalLevel(param1:int) : void
        {
            var _loc_2:* = this.generalLevel;
            if (_loc_2 !== param1)
            {
                this._1466889084generalLevel = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "generalLevel", _loc_2, param1));
            }
            return;
        }// end function

        public function set level(param1:int) : void
        {
            var _loc_2:* = this.level;
            if (_loc_2 !== param1)
            {
                this._102865796level = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "level", _loc_2, param1));
            }
            return;
        }// end function

        private function set _1064901855minutes(param1:int) : void
        {
            _minutes = param1;
            return;
        }// end function

        private function set _3373707name(param1:String) : void
        {
            _name = param1;
            return;
        }// end function

        private function set _2095776429playerRank(param1:int) : void
        {
            _playerRank = param1;
            return;
        }// end function

        private function set _3178592gold(param1:int) : void
        {
            _gold = param1;
            return;
        }// end function

        public function set name(param1:String) : void
        {
            var _loc_2:* = this.name;
            if (_loc_2 !== param1)
            {
                this._3373707name = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "name", _loc_2, param1));
            }
            return;
        }// end function

        public function get nameLabel() : String
        {
            return _nameLabel;
        }// end function

        public function get rank() : String
        {
            return _rank;
        }// end function

        public function get materials() : Array
        {
            return _materials;
        }// end function

        public function get repeatCount() : int
        {
            return _repeatCount;
        }// end function

        private function set _1658381128abilities(param1:Object) : void
        {
            _abilities = param1;
            return;
        }// end function

        public function get abilities() : Object
        {
            return _abilities;
        }// end function

        public function removeEventListener(param1:String, param2:Function, param3:Boolean = false) : void
        {
            _bindingEventDispatcher.removeEventListener(param1, param2, param3);
            return;
        }// end function

        public function addEventListener(param1:String, param2:Function, param3:Boolean = false, param4:int = 0, param5:Boolean = false) : void
        {
            _bindingEventDispatcher.addEventListener(param1, param2, param3, param4, param5);
            return;
        }// end function

        public function dispatchEvent(event:Event) : Boolean
        {
            return _bindingEventDispatcher.dispatchEvent(event);
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

        public function set materials(param1:Array) : void
        {
            var _loc_2:* = this.materials;
            if (_loc_2 !== param1)
            {
                this._681132076materials = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "materials", _loc_2, param1));
            }
            return;
        }// end function

        public function set rank(param1:String) : void
        {
            var _loc_2:* = this.rank;
            if (_loc_2 !== param1)
            {
                this._3492908rank = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "rank", _loc_2, param1));
            }
            return;
        }// end function

        public function get gold() : int
        {
            return _gold;
        }// end function

        public function set playerRank(param1:int) : void
        {
            var _loc_2:* = this.playerRank;
            if (_loc_2 !== param1)
            {
                this._2095776429playerRank = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "playerRank", _loc_2, param1));
            }
            return;
        }// end function

        private function set _102865796level(param1:int) : void
        {
            _level = param1;
            return;
        }// end function

        public function get abilityValue() : int
        {
            return _abilityValue;
        }// end function

        public function set repeatCount(param1:int) : void
        {
            var _loc_2:* = this.repeatCount;
            if (_loc_2 !== param1)
            {
                this._1571519540repeatCount = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "repeatCount", _loc_2, param1));
            }
            return;
        }// end function

        private function set _3059181code(param1:String) : void
        {
            _code = param1;
            return;
        }// end function

        public function get buildingMasterVO() : BuildingMasterVO
        {
            return _buildingMasterVO;
        }// end function

        public function get maxBuild() : int
        {
            return _maxBuild;
        }// end function

        public function get generalLevel() : int
        {
            return _generalLevel;
        }// end function

        private function set _381349738maxBuild(param1:int) : void
        {
            _maxBuild = param1;
            return;
        }// end function

        public function get executionLimit() : int
        {
            return _executionLimit;
        }// end function

        public function get level() : int
        {
            return _level;
        }// end function

        private function set _1571519540repeatCount(param1:int) : void
        {
            _repeatCount = param1;
            return;
        }// end function

        private function set _267163239abilityValue(param1:int) : void
        {
            _abilityValue = param1;
            return;
        }// end function

        public function get name() : String
        {
            return _name;
        }// end function

        public function willTrigger(param1:String) : Boolean
        {
            return _bindingEventDispatcher.willTrigger(param1);
        }// end function

        private function set _1215755049nameLabel(param1:String) : void
        {
            _nameLabel = param1;
            return;
        }// end function

        public function set abilities(param1:Object) : void
        {
            var _loc_2:* = this.abilities;
            if (_loc_2 !== param1)
            {
                this._1658381128abilities = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "abilities", _loc_2, param1));
            }
            return;
        }// end function

        private function set _1466889084generalLevel(param1:int) : void
        {
            _generalLevel = param1;
            return;
        }// end function

        private function set _1488289917executionLimit(param1:int) : void
        {
            _executionLimit = param1;
            return;
        }// end function

        private function set _681132076materials(param1:Array) : void
        {
            _materials = param1;
            return;
        }// end function

        public function get playerRank() : int
        {
            return _playerRank;
        }// end function

        private function set _1724546052description(param1:String) : void
        {
            _description = param1;
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

        public function set minutes(param1:int) : void
        {
            var _loc_2:* = this.minutes;
            if (_loc_2 !== param1)
            {
                this._1064901855minutes = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "minutes", _loc_2, param1));
            }
            return;
        }// end function

        public function set abilityValue(param1:int) : void
        {
            var _loc_2:* = this.abilityValue;
            if (_loc_2 !== param1)
            {
                this._267163239abilityValue = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "abilityValue", _loc_2, param1));
            }
            return;
        }// end function

        public function set maxBuild(param1:int) : void
        {
            var _loc_2:* = this.maxBuild;
            if (_loc_2 !== param1)
            {
                this._381349738maxBuild = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "maxBuild", _loc_2, param1));
            }
            return;
        }// end function

        public function set buildingMasterVO(param1:BuildingMasterVO) : void
        {
            var _loc_2:* = this.buildingMasterVO;
            if (_loc_2 !== param1)
            {
                this._1970055023buildingMasterVO = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "buildingMasterVO", _loc_2, param1));
            }
            return;
        }// end function

        public function get minutes() : int
        {
            return _minutes;
        }// end function

        private function set _1970055023buildingMasterVO(param1:BuildingMasterVO) : void
        {
            _buildingMasterVO = param1;
            return;
        }// end function

        public function set code(param1:String) : void
        {
            var _loc_2:* = this.code;
            if (_loc_2 !== param1)
            {
                this._3059181code = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "code", _loc_2, param1));
            }
            return;
        }// end function

        private function set _3492908rank(param1:String) : void
        {
            _rank = param1;
            return;
        }// end function

        public function get code() : String
        {
            return _code;
        }// end function

        public function hasEventListener(param1:String) : Boolean
        {
            return _bindingEventDispatcher.hasEventListener(param1);
        }// end function

        public function set description(param1:String) : void
        {
            var _loc_2:* = this.description;
            if (_loc_2 !== param1)
            {
                this._1724546052description = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "description", _loc_2, param1));
            }
            return;
        }// end function

        public function get description() : String
        {
            return _description;
        }// end function

    }
}
