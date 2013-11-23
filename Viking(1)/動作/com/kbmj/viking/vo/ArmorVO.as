package com.kbmj.viking.vo
{
    import mx.events.*;

    public class ArmorVO extends BaseBelongingVO
    {
        private var _endurance:int;
        private var _armorId:int;
        public static const BELONGING_TYPE_LABEL:String = "防具";
        public static const BELONGING_TYPE:String = "armor";

        public function ArmorVO()
        {
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

        public function get armorId() : int
        {
            return _armorId;
        }// end function

        private function set _878289888imagePath(param1:String) : void
        {
            masterVO.imagePath = param1;
            return;
        }// end function

        public function set armorId(param1:int) : void
        {
            var _loc_2:* = this.armorId;
            if (_loc_2 !== param1)
            {
                this._738650438armorId = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "armorId", _loc_2, param1));
            }
            return;
        }// end function

        public function get avoidance() : int
        {
            return masterVO.avoidance;
        }// end function

        private function set _1724546052description(param1:String) : void
        {
            masterVO.description = param1;
            return;
        }// end function

        private function set _1201129404avoidance(param1:int) : void
        {
            masterVO.avoidance = param1;
            return;
        }// end function

        public function get endurance() : int
        {
            return _endurance;
        }// end function

        public function get magicalDefense() : int
        {
            return masterVO.magicalDefense;
        }// end function

        public function get name() : String
        {
            return masterVO.name;
        }// end function

        public function set endurance(param1:int) : void
        {
            var _loc_2:* = this.endurance;
            if (_loc_2 !== param1)
            {
                this._1714720249endurance = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "endurance", _loc_2, param1));
            }
            return;
        }// end function

        public function set physicalDefense(param1:int) : void
        {
            var _loc_2:* = this.physicalDefense;
            if (_loc_2 !== param1)
            {
                this._1924991639physicalDefense = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "physicalDefense", _loc_2, param1));
            }
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

        private function set _302183288magicalDefense(param1:int) : void
        {
            masterVO.magicalDefense = param1;
            return;
        }// end function

        public function set imagePath(param1:String) : void
        {
            var _loc_2:* = this.imagePath;
            if (_loc_2 !== param1)
            {
                this._878289888imagePath = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "imagePath", _loc_2, param1));
            }
            return;
        }// end function

        private function set _3373707name(param1:String) : void
        {
            masterVO.name = param1;
            return;
        }// end function

        override public function get belongingType() : String
        {
            return BELONGING_TYPE;
        }// end function

        override public function get belongingTypeLabel() : String
        {
            return BELONGING_TYPE_LABEL;
        }// end function

        public function set magicalDefense(param1:int) : void
        {
            var _loc_2:* = this.magicalDefense;
            if (_loc_2 !== param1)
            {
                this._302183288magicalDefense = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "magicalDefense", _loc_2, param1));
            }
            return;
        }// end function

        public function get imagePath() : String
        {
            return masterVO.imagePath;
        }// end function

        public function get effectLabel() : String
        {
            return _masterVO.effectLabel;
        }// end function

        public function get phonetic() : String
        {
            return _masterVO.phonetic;
        }// end function

        public function get physicalDefense() : int
        {
            return masterVO.physicalDefense;
        }// end function

        private function set _738650438armorId(param1:int) : void
        {
            _armorId = param1;
            return;
        }// end function

        public function get rarity() : int
        {
            return masterVO.rarity;
        }// end function

        public function get enduranceLabel() : String
        {
            return _endurance + "/" + _masterVO.endurance;
        }// end function

        private function set _1924991639physicalDefense(param1:int) : void
        {
            masterVO.physicalDefense = param1;
            return;
        }// end function

        private function set _1280088992phonetic(param1:String) : void
        {
            return;
        }// end function

        public function set avoidance(param1:int) : void
        {
            var _loc_2:* = this.avoidance;
            if (_loc_2 !== param1)
            {
                this._1201129404avoidance = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "avoidance", _loc_2, param1));
            }
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

        private function set _1714720249endurance(param1:int) : void
        {
            _endurance = param1;
            return;
        }// end function

        public function get description() : String
        {
            return _masterVO.description;
        }// end function

        override public function get belongingId() : int
        {
            return _armorId;
        }// end function

    }
}
