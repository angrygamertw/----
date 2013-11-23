package com.kbmj.viking.vo
{
    import com.kbmj.viking.lib.*;
    import flash.events.*;
    import mx.events.*;

    public class MaterialMasterVO extends Object implements IEventDispatcher
    {
        private var _masterId:int;
        private var _sellable:Boolean;
        private var _rank:int;
        private var _nameLabel:String;
        private var _source:String;
        private var _bindingEventDispatcher:EventDispatcher;
        private var _description:String;
        private var _phonetic:String;
        private var _rarity:int;
        private var _code:int;
        private var _category:String;
        private var _name:String;
        public static const YUGGDRASILL_BRANCH:int = 55;
        public static const MASTER_TYPE:String = "MaterialMaster";
        public static const GOSPEL_BOOK:int = 54;

        public function MaterialMasterVO()
        {
            _bindingEventDispatcher = new EventDispatcher(IEventDispatcher(this));
            return;
        }// end function

        public function willTrigger(param1:String) : Boolean
        {
            return _bindingEventDispatcher.willTrigger(param1);
        }// end function

        public function hasEventListener(param1:String) : Boolean
        {
            return _bindingEventDispatcher.hasEventListener(param1);
        }// end function

        private function set _1215755049nameLabel(param1:String) : void
        {
            _nameLabel = param1;
            return;
        }// end function

        public function get name() : String
        {
            return _name;
        }// end function

        public function get source() : String
        {
            return _source;
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

        public function set category(param1:String) : void
        {
            var _loc_2:* = this.category;
            if (_loc_2 !== param1)
            {
                this._50511102category = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "category", _loc_2, param1));
            }
            return;
        }// end function

        public function get masterTypeLabel() : String
        {
            return Utils.i18n("confirmBuildMaterial");
        }// end function

        public function get nameLabel() : String
        {
            return _nameLabel;
        }// end function

        public function get rarity() : int
        {
            return _rarity;
        }// end function

        public function get sellable() : Boolean
        {
            return _sellable;
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

        public function get rank() : int
        {
            return _rank;
        }// end function

        private function set _938161749rarity(param1:int) : void
        {
            _rarity = param1;
            return;
        }// end function

        public function set source(param1:String) : void
        {
            var _loc_2:* = this.source;
            if (_loc_2 !== param1)
            {
                this._896505829source = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "source", _loc_2, param1));
            }
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

        public function dispatchEvent(event:Event) : Boolean
        {
            return _bindingEventDispatcher.dispatchEvent(event);
        }// end function

        public function addEventListener(param1:String, param2:Function, param3:Boolean = false, param4:int = 0, param5:Boolean = false) : void
        {
            _bindingEventDispatcher.addEventListener(param1, param2, param3, param4, param5);
            return;
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

        public function set sellable(param1:Boolean) : void
        {
            var _loc_2:* = this.sellable;
            if (_loc_2 !== param1)
            {
                this._1197960108sellable = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "sellable", _loc_2, param1));
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

        public function set code(param1:int) : void
        {
            var _loc_2:* = this.code;
            if (_loc_2 !== param1)
            {
                this._3059181code = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "code", _loc_2, param1));
            }
            return;
        }// end function

        private function set _1197960108sellable(param1:Boolean) : void
        {
            _sellable = param1;
            return;
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

        public function get phonetic() : String
        {
            return _phonetic;
        }// end function

        private function set _3492908rank(param1:int) : void
        {
            _rank = param1;
            return;
        }// end function

        private function set _50511102category(param1:String) : void
        {
            _category = param1;
            return;
        }// end function

        public function get code() : int
        {
            return _code;
        }// end function

        private function set _3059181code(param1:int) : void
        {
            _code = param1;
            return;
        }// end function

        private function set _896505829source(param1:String) : void
        {
            _source = param1;
            return;
        }// end function

        private function set _1280088992phonetic(param1:String) : void
        {
            _phonetic = param1;
            return;
        }// end function

        public function get description() : String
        {
            return _description;
        }// end function

        public function get category() : String
        {
            return _category;
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

    }
}
