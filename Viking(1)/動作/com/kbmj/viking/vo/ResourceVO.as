package com.kbmj.viking.vo
{
    import flash.events.*;
    import mx.events.*;

    public class ResourceVO extends Object implements IEventDispatcher
    {
        private var _weapons:Array;
        private var _materials:Array;
        private var _bindingEventDispatcher:EventDispatcher;
        private var _food:int;
        private var _gold:int;
        private var _items:Array;
        private var _armors:Array;
        private var _recipes:Array;
        private var _galleries:Array;
        private var _accessories:Array;

        public function ResourceVO()
        {
            _weapons = new Array();
            _armors = new Array();
            _items = new Array();
            _accessories = new Array();
            _materials = new Array();
            _recipes = new Array();
            _galleries = new Array();
            _bindingEventDispatcher = new EventDispatcher(IEventDispatcher(this));
            return;
        }// end function

        public function set items(param1:Array) : void
        {
            var _loc_2:* = this.items;
            if (_loc_2 !== param1)
            {
                this._100526016items = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "items", _loc_2, param1));
            }
            return;
        }// end function

        public function willTrigger(param1:String) : Boolean
        {
            return _bindingEventDispatcher.willTrigger(param1);
        }// end function

        public function get armors() : Array
        {
            return _armors;
        }// end function

        private function set _3178592gold(param1:int) : void
        {
            _gold = param1;
            return;
        }// end function

        private function set _100526016items(param1:Array) : void
        {
            _items = param1;
            return;
        }// end function

        public function get recipes() : Array
        {
            return _recipes;
        }// end function

        private function set _3148894food(param1:int) : void
        {
            _food = param1;
            return;
        }// end function

        public function set armors(param1:Array) : void
        {
            var _loc_2:* = this.armors;
            if (_loc_2 !== param1)
            {
                this._1409300716armors = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "armors", _loc_2, param1));
            }
            return;
        }// end function

        private function set _319535984galleries(param1:Array) : void
        {
            _galleries = param1;
            return;
        }// end function

        public function set weapons(param1:Array) : void
        {
            var _loc_2:* = this.weapons;
            if (_loc_2 !== param1)
            {
                this._1223328215weapons = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "weapons", _loc_2, param1));
            }
            return;
        }// end function

        private function set _1223328215weapons(param1:Array) : void
        {
            _weapons = param1;
            return;
        }// end function

        public function get materials() : Array
        {
            return _materials;
        }// end function

        public function get accessories() : Array
        {
            return _accessories;
        }// end function

        private function set _681132076materials(param1:Array) : void
        {
            _materials = param1;
            return;
        }// end function

        public function set food(param1:int) : void
        {
            var _loc_2:* = this.food;
            if (_loc_2 !== param1)
            {
                this._3148894food = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "food", _loc_2, param1));
            }
            return;
        }// end function

        public function get items() : Array
        {
            return _items;
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

        public function set recipes(param1:Array) : void
        {
            var _loc_2:* = this.recipes;
            if (_loc_2 !== param1)
            {
                this._1082416293recipes = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "recipes", _loc_2, param1));
            }
            return;
        }// end function

        private function set _1409300716armors(param1:Array) : void
        {
            _armors = param1;
            return;
        }// end function

        public function removeEventListener(param1:String, param2:Function, param3:Boolean = false) : void
        {
            _bindingEventDispatcher.removeEventListener(param1, param2, param3);
            return;
        }// end function

        private function set _1017666768accessories(param1:Array) : void
        {
            _accessories = param1;
            return;
        }// end function

        public function addEventListener(param1:String, param2:Function, param3:Boolean = false, param4:int = 0, param5:Boolean = false) : void
        {
            _bindingEventDispatcher.addEventListener(param1, param2, param3, param4, param5);
            return;
        }// end function

        public function get weapons() : Array
        {
            return _weapons;
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

        public function get food() : int
        {
            return _food;
        }// end function

        public function set galleries(param1:Array) : void
        {
            var _loc_2:* = this.galleries;
            if (_loc_2 !== param1)
            {
                this._319535984galleries = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "galleries", _loc_2, param1));
            }
            return;
        }// end function

        public function set accessories(param1:Array) : void
        {
            var _loc_2:* = this.accessories;
            if (_loc_2 !== param1)
            {
                this._1017666768accessories = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "accessories", _loc_2, param1));
            }
            return;
        }// end function

        public function get gold() : int
        {
            return _gold;
        }// end function

        public function get galleries() : Array
        {
            return _galleries;
        }// end function

        private function set _1082416293recipes(param1:Array) : void
        {
            _recipes = param1;
            return;
        }// end function

        public function dispatchEvent(event:Event) : Boolean
        {
            return _bindingEventDispatcher.dispatchEvent(event);
        }// end function

        public function hasEventListener(param1:String) : Boolean
        {
            return _bindingEventDispatcher.hasEventListener(param1);
        }// end function

    }
}
