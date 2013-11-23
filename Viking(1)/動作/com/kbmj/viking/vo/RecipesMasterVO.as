package com.kbmj.viking.vo
{
    import flash.events.*;
    import mx.collections.*;
    import mx.events.*;

    public class RecipesMasterVO extends Object implements IEventDispatcher
    {
        private var _masterId:int;
        private var _nameLabel:String;
        private var _bindingEventDispatcher:EventDispatcher;
        private var _description:String;
        private var _phonetic:String;
        private var _items:ArrayCollection;
        private var _yinUnit:Object;
        private var _yangUnit:Object;
        private var _rarity:int;
        private var _code:String;
        private var _name:String;
        public static const MASTER_TYPE:String = "RecipeMaster";

        public function RecipesMasterVO()
        {
            _bindingEventDispatcher = new EventDispatcher(IEventDispatcher(this));
            return;
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

        public function set yinUnit(param1:Object) : void
        {
            var _loc_2:* = this.yinUnit;
            if (_loc_2 !== param1)
            {
                this._1170914814yinUnit = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "yinUnit", _loc_2, param1));
            }
            return;
        }// end function

        public function get yinUnit() : Object
        {
            return _yinUnit;
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

        private function set _1170914814yinUnit(param1:Object) : void
        {
            _yinUnit = param1;
            return;
        }// end function

        private function set _3373707name(param1:String) : void
        {
            _name = param1;
            return;
        }// end function

        public function get masterId() : int
        {
            return _masterId;
        }// end function

        private function set _100526016items(param1:ArrayCollection) : void
        {
            _items = param1;
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

        public function get rarity() : int
        {
            return _rarity;
        }// end function

        private function set _938161749rarity(param1:int) : void
        {
            _rarity = param1;
            return;
        }// end function

        private function set _432832539yangUnit(param1:Object) : void
        {
            _yangUnit = param1;
            return;
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

        public function get items() : ArrayCollection
        {
            return _items;
        }// end function

        public function set phonetic(param1:String) : void
        {
            var _loc_2:* = this.phonetic;
            if (_loc_2 !== param1)
            {
                this._1280088992phonetic = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "phonetic", _loc_2, param1));
            }
            return;
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

        public function addEventListener(param1:String, param2:Function, param3:Boolean = false, param4:int = 0, param5:Boolean = false) : void
        {
            _bindingEventDispatcher.addEventListener(param1, param2, param3, param4, param5);
            return;
        }// end function

        public function dispatchEvent(event:Event) : Boolean
        {
            return _bindingEventDispatcher.dispatchEvent(event);
        }// end function

        public function set yangUnit(param1:Object) : void
        {
            var _loc_2:* = this.yangUnit;
            if (_loc_2 !== param1)
            {
                this._432832539yangUnit = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "yangUnit", _loc_2, param1));
            }
            return;
        }// end function

        private function set _283910941masterId(param1:int) : void
        {
            _masterId = param1;
            return;
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

        public function get phonetic() : String
        {
            return _phonetic;
        }// end function

        public function removeEventListener(param1:String, param2:Function, param3:Boolean = false) : void
        {
            _bindingEventDispatcher.removeEventListener(param1, param2, param3);
            return;
        }// end function

        public function get yangUnit() : Object
        {
            return _yangUnit;
        }// end function

        public function get code() : String
        {
            return _code;
        }// end function

        private function set _3059181code(param1:String) : void
        {
            _code = param1;
            return;
        }// end function

        private function set _1280088992phonetic(param1:String) : void
        {
            _phonetic = param1;
            return;
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

        public function hasEventListener(param1:String) : Boolean
        {
            return _bindingEventDispatcher.hasEventListener(param1);
        }// end function

        public function get description() : String
        {
            return _description;
        }// end function

    }
}
