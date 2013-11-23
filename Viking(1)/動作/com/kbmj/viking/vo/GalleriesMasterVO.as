package com.kbmj.viking.vo
{
    import flash.display.*;
    import flash.events.*;
    import mx.core.*;
    import mx.events.*;

    public class GalleriesMasterVO extends Object implements IEventDispatcher
    {
        private var _jobCode:String;
        private var _uic:UIComponent;
        private var _goldMaterialCode:int;
        private var _earthMaterialCode:int;
        private var _nameLabel:String;
        private var _loader:Loader;
        private var _bindingEventDispatcher:EventDispatcher;
        private var _plantMaterialCode:int;
        private var _description:String;
        private var _code:String;
        private var _prizeName:String;
        private var _fireMaterialCode:int;
        private var _waterMaterialCode:int;
        private var _masterId:int;
        public static const MASTER_TYPE:String = "GalleryMaster";

        public function GalleriesMasterVO()
        {
            _loader = new Loader();
            _uic = new UIComponent();
            _bindingEventDispatcher = new EventDispatcher(IEventDispatcher(this));
            return;
        }// end function

        public function set prizeName(param1:String) : void
        {
            var _loc_2:* = this.prizeName;
            if (_loc_2 !== param1)
            {
                this._1467463235prizeName = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "prizeName", _loc_2, param1));
            }
            return;
        }// end function

        public function get description() : String
        {
            return _description;
        }// end function

        public function willTrigger(param1:String) : Boolean
        {
            return _bindingEventDispatcher.willTrigger(param1);
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

        public function get fireMaterialCode() : int
        {
            return _fireMaterialCode;
        }// end function

        private function set _1215755049nameLabel(param1:String) : void
        {
            _nameLabel = param1;
            return;
        }// end function

        public function get loader() : Loader
        {
            return _loader;
        }// end function

        public function set fireMaterialCode(param1:int) : void
        {
            var _loc_2:* = this.fireMaterialCode;
            if (_loc_2 !== param1)
            {
                this._180599542fireMaterialCode = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "fireMaterialCode", _loc_2, param1));
            }
            return;
        }// end function

        public function get masterId() : int
        {
            return _masterId;
        }// end function

        public function get earthMaterialCode() : int
        {
            return _earthMaterialCode;
        }// end function

        private function set _1203969996goldMaterialCode(param1:int) : void
        {
            _goldMaterialCode = param1;
            return;
        }// end function

        public function set jobCode(param1:String) : void
        {
            var _loc_2:* = this.jobCode;
            if (_loc_2 !== param1)
            {
                this._1438410934jobCode = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "jobCode", _loc_2, param1));
            }
            return;
        }// end function

        public function set uic(param1:UIComponent) : void
        {
            var _loc_2:* = this.uic;
            if (_loc_2 !== param1)
            {
                this._115791uic = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "uic", _loc_2, param1));
            }
            return;
        }// end function

        public function get nameLabel() : String
        {
            return _nameLabel;
        }// end function

        public function set loader(param1:Loader) : void
        {
            var _loc_2:* = this.loader;
            if (_loc_2 !== param1)
            {
                this._1097519085loader = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "loader", _loc_2, param1));
            }
            return;
        }// end function

        private function set _1926575509waterMaterialCode(param1:int) : void
        {
            _waterMaterialCode = param1;
            return;
        }// end function

        public function get goldMaterialCode() : int
        {
            return _goldMaterialCode;
        }// end function

        public function set masterId(param1:int) : void
        {
            var _loc_2:* = this.masterId;
            if (_loc_2 !== param1)
            {
                this._283910941masterId = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "masterId", _loc_2, param1));
            }
            return;
        }// end function

        private function set _743670207plantMaterialCode(param1:int) : void
        {
            _plantMaterialCode = param1;
            return;
        }// end function

        public function get prizeName() : String
        {
            return _prizeName;
        }// end function

        public function get plantMaterialCode() : int
        {
            return _plantMaterialCode;
        }// end function

        public function get masterType() : String
        {
            return MASTER_TYPE;
        }// end function

        private function set _1724546052description(param1:String) : void
        {
            _description = param1;
            return;
        }// end function

        public function dispatchEvent(event:Event) : Boolean
        {
            return _bindingEventDispatcher.dispatchEvent(event);
        }// end function

        public function get jobCode() : String
        {
            return _jobCode;
        }// end function

        public function set earthMaterialCode(param1:int) : void
        {
            var _loc_2:* = this.earthMaterialCode;
            if (_loc_2 !== param1)
            {
                this._409135390earthMaterialCode = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "earthMaterialCode", _loc_2, param1));
            }
            return;
        }// end function

        private function set _1097519085loader(param1:Loader) : void
        {
            _loader = param1;
            return;
        }// end function

        public function get uic() : UIComponent
        {
            return _uic;
        }// end function

        public function removeEventListener(param1:String, param2:Function, param3:Boolean = false) : void
        {
            _bindingEventDispatcher.removeEventListener(param1, param2, param3);
            return;
        }// end function

        private function set _283910941masterId(param1:int) : void
        {
            _masterId = param1;
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

        public function addEventListener(param1:String, param2:Function, param3:Boolean = false, param4:int = 0, param5:Boolean = false) : void
        {
            _bindingEventDispatcher.addEventListener(param1, param2, param3, param4, param5);
            return;
        }// end function

        public function set waterMaterialCode(param1:int) : void
        {
            var _loc_2:* = this.waterMaterialCode;
            if (_loc_2 !== param1)
            {
                this._1926575509waterMaterialCode = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "waterMaterialCode", _loc_2, param1));
            }
            return;
        }// end function

        private function set _409135390earthMaterialCode(param1:int) : void
        {
            _earthMaterialCode = param1;
            return;
        }// end function

        public function set goldMaterialCode(param1:int) : void
        {
            var _loc_2:* = this.goldMaterialCode;
            if (_loc_2 !== param1)
            {
                this._1203969996goldMaterialCode = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "goldMaterialCode", _loc_2, param1));
            }
            return;
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

        public function get waterMaterialCode() : int
        {
            return _waterMaterialCode;
        }// end function

        public function get code() : String
        {
            return _code;
        }// end function

        private function set _1467463235prizeName(param1:String) : void
        {
            _prizeName = param1;
            return;
        }// end function

        private function set _180599542fireMaterialCode(param1:int) : void
        {
            _fireMaterialCode = param1;
            return;
        }// end function

        public function hasEventListener(param1:String) : Boolean
        {
            return _bindingEventDispatcher.hasEventListener(param1);
        }// end function

        private function set _3059181code(param1:String) : void
        {
            _code = param1;
            return;
        }// end function

        private function set _1438410934jobCode(param1:String) : void
        {
            _jobCode = param1;
            return;
        }// end function

        private function set _115791uic(param1:UIComponent) : void
        {
            _uic = param1;
            return;
        }// end function

        public function set plantMaterialCode(param1:int) : void
        {
            var _loc_2:* = this.plantMaterialCode;
            if (_loc_2 !== param1)
            {
                this._743670207plantMaterialCode = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "plantMaterialCode", _loc_2, param1));
            }
            return;
        }// end function

    }
}
