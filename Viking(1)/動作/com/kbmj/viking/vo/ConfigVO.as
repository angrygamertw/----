package com.kbmj.viking.vo
{

    public class ConfigVO extends Object
    {
        private var _buyPaymentItemsEnabled:Boolean = false;
        private var _fourByFourAreaFlag:Boolean = false;
        private var _buy_sc_quantity_soul_crystal:int = 0;
        private var _nonActiveAreaFlag:Boolean = false;
        private var _buy_sc_quantity_point:int = 0;
        private var _specialMatchStart:Boolean = false;
        private var _fast:Boolean = false;
        private var _playSound:Boolean = false;

        public function ConfigVO()
        {
            return;
        }// end function

        public function get playSound() : Boolean
        {
            return _playSound;
        }// end function

        public function set specialMatchStart(param1:Boolean) : void
        {
            _specialMatchStart = param1;
            return;
        }// end function

        public function get buy_sc_quantity_soul_crystal() : int
        {
            return _buy_sc_quantity_soul_crystal;
        }// end function

        public function set buyPaymentItemsEnabled(param1:Boolean) : void
        {
            _buyPaymentItemsEnabled = param1;
            return;
        }// end function

        public function set buy_sc_quantity_soul_crystal(param1:int) : void
        {
            _buy_sc_quantity_soul_crystal = param1;
            return;
        }// end function

        public function set nonActiveAreaFlag(param1:Boolean) : void
        {
            _nonActiveAreaFlag = param1;
            return;
        }// end function

        public function get fast() : Boolean
        {
            return _fast;
        }// end function

        public function get buyPaymentItemsEnabled() : Boolean
        {
            return _buyPaymentItemsEnabled;
        }// end function

        public function get fourByFourAreaFlag() : Boolean
        {
            return _fourByFourAreaFlag;
        }// end function

        public function set buy_sc_quantity_point(param1:int) : void
        {
            _buy_sc_quantity_point = param1;
            return;
        }// end function

        public function set fourByFourAreaFlag(param1:Boolean) : void
        {
            _fourByFourAreaFlag = param1;
            return;
        }// end function

        public function get nonActiveAreaFlag() : Boolean
        {
            return _nonActiveAreaFlag;
        }// end function

        public function get specialMatchStart() : Boolean
        {
            return _specialMatchStart;
        }// end function

        public function get buy_sc_quantity_point() : int
        {
            return _buy_sc_quantity_point;
        }// end function

        public function set playSound(param1:Boolean) : void
        {
            _playSound = param1;
            return;
        }// end function

        public function set fast(param1:Boolean) : void
        {
            _fast = param1;
            return;
        }// end function

    }
}
