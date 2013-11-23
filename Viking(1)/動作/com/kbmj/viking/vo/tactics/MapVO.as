package com.kbmj.viking.vo.tactics
{
    import flash.display.*;

    public class MapVO extends Object
    {
        private var _height:int;
        private var _width:int;
        private var _cols:int;
        private var _staticObjects:Array;
        private var _image:Bitmap;
        private var _blocks:Array;
        private var _grids:Array;
        private var _rows:int;

        public function MapVO()
        {
            _grids = new Array();
            _staticObjects = new Array();
            _blocks = new Array();
            return;
        }// end function

        public function set blocks(param1:Array) : void
        {
            _blocks = param1;
            return;
        }// end function

        public function get width() : int
        {
            return _width;
        }// end function

        public function set width(param1:int) : void
        {
            _width = param1;
            return;
        }// end function

        public function set height(param1:int) : void
        {
            _height = param1;
            return;
        }// end function

        public function get rows() : int
        {
            return _rows;
        }// end function

        public function set grids(param1:Array) : void
        {
            _grids = param1;
            return;
        }// end function

        public function get image() : Bitmap
        {
            return _image;
        }// end function

        public function get staticObjects() : Array
        {
            return _staticObjects;
        }// end function

        public function set cols(param1:int) : void
        {
            _cols = param1;
            return;
        }// end function

        public function get height() : int
        {
            return _height;
        }// end function

        public function get blocks() : Array
        {
            return _blocks;
        }// end function

        public function get grids() : Array
        {
            return _grids;
        }// end function

        public function set rows(param1:int) : void
        {
            _rows = param1;
            return;
        }// end function

        public function get cols() : int
        {
            return _cols;
        }// end function

        public function set image(param1:Bitmap) : void
        {
            _image = param1;
            return;
        }// end function

        public function set staticObjects(param1:Array) : void
        {
            _staticObjects = param1;
            return;
        }// end function

    }
}
