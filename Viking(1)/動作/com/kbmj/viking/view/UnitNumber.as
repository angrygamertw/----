package com.kbmj.viking.view
{
    import mx.collections.*;
    import mx.core.*;
    import mx.events.*;

    public class UnitNumber extends CanvasWithPopUp
    {
        protected var _2085959105_numberSymbol10:Class;
        protected var _2010920977_numberSymbol1:Class;
        protected var _2010920979_numberSymbol3:Class;
        protected var _240187427_numberSymbolTen:Class;
        protected var _578707769numberCollection:ArrayCollection;
        protected var _2010920982_numberSymbol6:Class;
        protected var _2010920980_numberSymbol4:Class;
        protected var _2010920984_numberSymbol8:Class;
        protected var _2010920976_numberSymbol0:Class;
        protected var _2010920978_numberSymbol2:Class;
        protected var _88058577_numberArray:Array;
        protected var _1043510240_numberSymbol:Class;
        protected var _2010920983_numberSymbol7:Class;
        protected var _2010920981_numberSymbol5:Class;
        protected var _2010920985_numberSymbol9:Class;
        private var _documentDescriptor_:UIComponentDescriptor;

        public function UnitNumber()
        {
            _documentDescriptor_ = new UIComponentDescriptor({type:CanvasWithPopUp});
            _2010920976_numberSymbol0 = UnitNumber__numberSymbol0;
            _2010920977_numberSymbol1 = UnitNumber__numberSymbol1;
            _2010920978_numberSymbol2 = UnitNumber__numberSymbol2;
            _2010920979_numberSymbol3 = UnitNumber__numberSymbol3;
            _2010920980_numberSymbol4 = UnitNumber__numberSymbol4;
            _2010920981_numberSymbol5 = UnitNumber__numberSymbol5;
            _2010920982_numberSymbol6 = UnitNumber__numberSymbol6;
            _2010920983_numberSymbol7 = UnitNumber__numberSymbol7;
            _2010920984_numberSymbol8 = UnitNumber__numberSymbol8;
            _2010920985_numberSymbol9 = UnitNumber__numberSymbol9;
            _2085959105_numberSymbol10 = UnitNumber__numberSymbol10;
            _88058577_numberArray = [_numberSymbol0, _numberSymbol1, _numberSymbol2, _numberSymbol3, _numberSymbol4, _numberSymbol5, _numberSymbol6, _numberSymbol7, _numberSymbol8, _numberSymbol9, _numberSymbol10];
            _578707769numberCollection = new ArrayCollection();
            mx_internal::_document = this;
            return;
        }// end function

        protected function get _numberArray() : Array
        {
            return this._88058577_numberArray;
        }// end function

        protected function set numberCollection(param1:ArrayCollection) : void
        {
            var _loc_2:* = this._578707769numberCollection;
            if (_loc_2 !== param1)
            {
                this._578707769numberCollection = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "numberCollection", _loc_2, param1));
            }
            return;
        }// end function

        override public function initialize() : void
        {
            .mx_internal::setDocumentDescriptor(_documentDescriptor_);
            super.initialize();
            return;
        }// end function

        protected function get _numberSymbol1() : Class
        {
            return this._2010920977_numberSymbol1;
        }// end function

        protected function get _numberSymbol2() : Class
        {
            return this._2010920978_numberSymbol2;
        }// end function

        protected function get _numberSymbol4() : Class
        {
            return this._2010920980_numberSymbol4;
        }// end function

        protected function get _numberSymbol5() : Class
        {
            return this._2010920981_numberSymbol5;
        }// end function

        protected function get _numberSymbol6() : Class
        {
            return this._2010920982_numberSymbol6;
        }// end function

        protected function get _numberSymbol9() : Class
        {
            return this._2010920985_numberSymbol9;
        }// end function

        protected function get _numberSymbol0() : Class
        {
            return this._2010920976_numberSymbol0;
        }// end function

        protected function get _numberSymbol() : Class
        {
            return this._1043510240_numberSymbol;
        }// end function

        protected function set _numberSymbol1(param1:Class) : void
        {
            var _loc_2:* = this._2010920977_numberSymbol1;
            if (_loc_2 !== param1)
            {
                this._2010920977_numberSymbol1 = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "_numberSymbol1", _loc_2, param1));
            }
            return;
        }// end function

        protected function set _numberSymbol0(param1:Class) : void
        {
            var _loc_2:* = this._2010920976_numberSymbol0;
            if (_loc_2 !== param1)
            {
                this._2010920976_numberSymbol0 = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "_numberSymbol0", _loc_2, param1));
            }
            return;
        }// end function

        protected function set _numberSymbol4(param1:Class) : void
        {
            var _loc_2:* = this._2010920980_numberSymbol4;
            if (_loc_2 !== param1)
            {
                this._2010920980_numberSymbol4 = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "_numberSymbol4", _loc_2, param1));
            }
            return;
        }// end function

        protected function get _numberSymbol3() : Class
        {
            return this._2010920979_numberSymbol3;
        }// end function

        protected function set _numberSymbol6(param1:Class) : void
        {
            var _loc_2:* = this._2010920982_numberSymbol6;
            if (_loc_2 !== param1)
            {
                this._2010920982_numberSymbol6 = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "_numberSymbol6", _loc_2, param1));
            }
            return;
        }// end function

        protected function set _numberSymbol3(param1:Class) : void
        {
            var _loc_2:* = this._2010920979_numberSymbol3;
            if (_loc_2 !== param1)
            {
                this._2010920979_numberSymbol3 = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "_numberSymbol3", _loc_2, param1));
            }
            return;
        }// end function

        protected function get _numberSymbol7() : Class
        {
            return this._2010920983_numberSymbol7;
        }// end function

        protected function get _numberSymbol8() : Class
        {
            return this._2010920984_numberSymbol8;
        }// end function

        protected function set _numberSymbol7(param1:Class) : void
        {
            var _loc_2:* = this._2010920983_numberSymbol7;
            if (_loc_2 !== param1)
            {
                this._2010920983_numberSymbol7 = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "_numberSymbol7", _loc_2, param1));
            }
            return;
        }// end function

        protected function set _numberSymbol8(param1:Class) : void
        {
            var _loc_2:* = this._2010920984_numberSymbol8;
            if (_loc_2 !== param1)
            {
                this._2010920984_numberSymbol8 = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "_numberSymbol8", _loc_2, param1));
            }
            return;
        }// end function

        protected function set _numberSymbol5(param1:Class) : void
        {
            var _loc_2:* = this._2010920981_numberSymbol5;
            if (_loc_2 !== param1)
            {
                this._2010920981_numberSymbol5 = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "_numberSymbol5", _loc_2, param1));
            }
            return;
        }// end function

        protected function set _numberSymbolTen(param1:Class) : void
        {
            var _loc_2:* = this._240187427_numberSymbolTen;
            if (_loc_2 !== param1)
            {
                this._240187427_numberSymbolTen = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "_numberSymbolTen", _loc_2, param1));
            }
            return;
        }// end function

        protected function set _numberSymbol2(param1:Class) : void
        {
            var _loc_2:* = this._2010920978_numberSymbol2;
            if (_loc_2 !== param1)
            {
                this._2010920978_numberSymbol2 = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "_numberSymbol2", _loc_2, param1));
            }
            return;
        }// end function

        protected function get _numberSymbol10() : Class
        {
            return this._2085959105_numberSymbol10;
        }// end function

        protected function set _numberSymbol(param1:Class) : void
        {
            var _loc_2:* = this._1043510240_numberSymbol;
            if (_loc_2 !== param1)
            {
                this._1043510240_numberSymbol = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "_numberSymbol", _loc_2, param1));
            }
            return;
        }// end function

        protected function set _numberSymbol9(param1:Class) : void
        {
            var _loc_2:* = this._2010920985_numberSymbol9;
            if (_loc_2 !== param1)
            {
                this._2010920985_numberSymbol9 = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "_numberSymbol9", _loc_2, param1));
            }
            return;
        }// end function

        protected function set _numberArray(param1:Array) : void
        {
            var _loc_2:* = this._88058577_numberArray;
            if (_loc_2 !== param1)
            {
                this._88058577_numberArray = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "_numberArray", _loc_2, param1));
            }
            return;
        }// end function

        protected function get numberCollection() : ArrayCollection
        {
            return this._578707769numberCollection;
        }// end function

        protected function get _numberSymbolTen() : Class
        {
            return this._240187427_numberSymbolTen;
        }// end function

        protected function set _numberSymbol10(param1:Class) : void
        {
            var _loc_2:* = this._2085959105_numberSymbol10;
            if (_loc_2 !== param1)
            {
                this._2085959105_numberSymbol10 = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "_numberSymbol10", _loc_2, param1));
            }
            return;
        }// end function

    }
}
