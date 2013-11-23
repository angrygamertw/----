package com.kbmj.viking.vo
{
    import flash.events.*;
    import mx.collections.*;
    import mx.events.*;

    public class GoodsBundleVO extends Object implements IEventDispatcher
    {
        private var _items:ArrayCollection;
        private var _weapons:ArrayCollection;
        private var _materials:ArrayCollection;
        private var _accessories:ArrayCollection;
        private var _armors:ArrayCollection;
        private var _bindingEventDispatcher:EventDispatcher;

        public function GoodsBundleVO()
        {
            _bindingEventDispatcher = new EventDispatcher(IEventDispatcher(this));
            return;
        }// end function

        public function get items() : ArrayCollection
        {
            return _items;
        }// end function

        public function willTrigger(param1:String) : Boolean
        {
            return _bindingEventDispatcher.willTrigger(param1);
        }// end function

        public function set items(param1:ArrayCollection) : void
        {
            var _loc_2:* = this.items;
            if (_loc_2 !== param1)
            {
                this._100526016items = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "items", _loc_2, param1));
            }
            return;
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

        private function set _1409300716armors(param1:ArrayCollection) : void
        {
            _armors = param1;
            return;
        }// end function

        private function set _1017666768accessories(param1:ArrayCollection) : void
        {
            _accessories = param1;
            return;
        }// end function

        public function get armors() : ArrayCollection
        {
            return _armors;
        }// end function

        public function get weapons() : ArrayCollection
        {
            return _weapons;
        }// end function

        public function set materials(param1:ArrayCollection) : void
        {
            var _loc_2:* = this.materials;
            if (_loc_2 !== param1)
            {
                this._681132076materials = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "materials", _loc_2, param1));
            }
            return;
        }// end function

        public function set accessories(param1:ArrayCollection) : void
        {
            var _loc_2:* = this.accessories;
            if (_loc_2 !== param1)
            {
                this._1017666768accessories = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "accessories", _loc_2, param1));
            }
            return;
        }// end function

        private function set _100526016items(param1:ArrayCollection) : void
        {
            _items = param1;
            return;
        }// end function

        public function set armors(param1:ArrayCollection) : void
        {
            var _loc_2:* = this.armors;
            if (_loc_2 !== param1)
            {
                this._1409300716armors = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "armors", _loc_2, param1));
            }
            return;
        }// end function

        public function get materials() : ArrayCollection
        {
            return _materials;
        }// end function

        public function set weapons(param1:ArrayCollection) : void
        {
            var _loc_2:* = this.weapons;
            if (_loc_2 !== param1)
            {
                this._1223328215weapons = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "weapons", _loc_2, param1));
            }
            return;
        }// end function

        public function get accessories() : ArrayCollection
        {
            return _accessories;
        }// end function

        private function set _1223328215weapons(param1:ArrayCollection) : void
        {
            _weapons = param1;
            return;
        }// end function

        public function hasEventListener(param1:String) : Boolean
        {
            return _bindingEventDispatcher.hasEventListener(param1);
        }// end function

        private function set _681132076materials(param1:ArrayCollection) : void
        {
            _materials = param1;
            return;
        }// end function

    }
}
