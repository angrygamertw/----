package com.kbmj.viking.vo.home
{
    import com.kbmj.viking.vo.*;
    import flash.events.*;
    import mx.events.*;

    public class BuildingVO extends Object implements IEventDispatcher
    {
        private var _level:int;
        private var _constructedAt:String;
        private var _buildingId:int;
        private var _areaId:int;
        private var _bindingEventDispatcher:EventDispatcher;
        private var _underConstruction:Boolean;
        private var _buildingMasterId:int;
        private var _buildingMasterVO:BuildingMasterVO;
        private var _imageUrl:String;
        private var _broken:Boolean;
        private var _repeatCount:int;

        public function BuildingVO()
        {
            _buildingMasterVO = new BuildingMasterVO();
            _imageUrl = new String();
            _constructedAt = new String();
            _bindingEventDispatcher = new EventDispatcher(IEventDispatcher(this));
            return;
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

        public function get areaId() : int
        {
            return _areaId;
        }// end function

        public function get constructedAt() : String
        {
            return _constructedAt;
        }// end function

        public function willTrigger(param1:String) : Boolean
        {
            return _bindingEventDispatcher.willTrigger(param1);
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

        public function set areaId(param1:int) : void
        {
            var _loc_2:* = this.areaId;
            if (_loc_2 !== param1)
            {
                this._1409553784areaId = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "areaId", _loc_2, param1));
            }
            return;
        }// end function

        public function set constructedAt(param1:String) : void
        {
            var _loc_2:* = this.constructedAt;
            if (_loc_2 !== param1)
            {
                this._1745352311constructedAt = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "constructedAt", _loc_2, param1));
            }
            return;
        }// end function

        public function get imageUrl() : String
        {
            return _imageUrl;
        }// end function

        private function set _911072311underConstruction(param1:Boolean) : void
        {
            _underConstruction = param1;
            return;
        }// end function

        public function set underConstruction(param1:Boolean) : void
        {
            var _loc_2:* = this.underConstruction;
            if (_loc_2 !== param1)
            {
                this._911072311underConstruction = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "underConstruction", _loc_2, param1));
            }
            return;
        }// end function

        private function set _1409553784areaId(param1:int) : void
        {
            _areaId = param1;
            return;
        }// end function

        public function set imageUrl(param1:String) : void
        {
            var _loc_2:* = this.imageUrl;
            if (_loc_2 !== param1)
            {
                this._859610604imageUrl = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "imageUrl", _loc_2, param1));
            }
            return;
        }// end function

        public function get nameLabel() : String
        {
            return buildingMasterVO.nameLabel;
        }// end function

        public function set broken(param1:Boolean) : void
        {
            var _loc_2:* = this.broken;
            if (_loc_2 !== param1)
            {
                this._1380616235broken = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "broken", _loc_2, param1));
            }
            return;
        }// end function

        private function set _1970054641buildingMasterId(param1:int) : void
        {
            _buildingMasterId = param1;
            return;
        }// end function

        public function get repeatCount() : int
        {
            return _repeatCount;
        }// end function

        private function set _1745352311constructedAt(param1:String) : void
        {
            _constructedAt = param1;
            return;
        }// end function

        public function dispatchEvent(event:Event) : Boolean
        {
            return _bindingEventDispatcher.dispatchEvent(event);
        }// end function

        private function set _461357329buildingId(param1:int) : void
        {
            _buildingId = param1;
            return;
        }// end function

        public function get underConstruction() : Boolean
        {
            return _underConstruction;
        }// end function

        public function addEventListener(param1:String, param2:Function, param3:Boolean = false, param4:int = 0, param5:Boolean = false) : void
        {
            _bindingEventDispatcher.addEventListener(param1, param2, param3, param4, param5);
            return;
        }// end function

        private function set _1380616235broken(param1:Boolean) : void
        {
            _broken = param1;
            return;
        }// end function

        public function removeEventListener(param1:String, param2:Function, param3:Boolean = false) : void
        {
            _bindingEventDispatcher.removeEventListener(param1, param2, param3);
            return;
        }// end function

        public function get broken() : Boolean
        {
            return _broken;
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

        private function set _1970055023buildingMasterVO(param1:BuildingMasterVO) : void
        {
            _buildingMasterVO = param1;
            return;
        }// end function

        public function set buildingMasterId(param1:int) : void
        {
            var _loc_2:* = this.buildingMasterId;
            if (_loc_2 !== param1)
            {
                this._1970054641buildingMasterId = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "buildingMasterId", _loc_2, param1));
            }
            return;
        }// end function

        public function set buildingId(param1:int) : void
        {
            var _loc_2:* = this.buildingId;
            if (_loc_2 !== param1)
            {
                this._461357329buildingId = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "buildingId", _loc_2, param1));
            }
            return;
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

        private function set _859610604imageUrl(param1:String) : void
        {
            _imageUrl = param1;
            return;
        }// end function

        private function set _102865796level(param1:int) : void
        {
            _level = param1;
            return;
        }// end function

        public function get buildingMasterId() : int
        {
            return _buildingMasterId;
        }// end function

        public function get buildingMasterVO() : BuildingMasterVO
        {
            return _buildingMasterVO;
        }// end function

        public function hasEventListener(param1:String) : Boolean
        {
            return _bindingEventDispatcher.hasEventListener(param1);
        }// end function

        public function get buildingId() : int
        {
            return _buildingId;
        }// end function

    }
}
