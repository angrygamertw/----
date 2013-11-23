package com.kbmj.viking.vo.tactics
{
    import com.kbmj.viking.lib.*;
    import com.kbmj.viking.proxy.tactics.*;
    import com.kbmj.viking.vo.tactics.*;
    import flash.display.*;
    import flash.geom.*;
    import mx.controls.*;

    public class MapStaticObjectVO extends Object implements ITacticsMapObject
    {
        private var _bitmap:Bitmap;
        private var _offsetX:int = 0;
        private var _offsetY:int = 0;
        private var _image:Image;
        private var _offset:Point;
        private var _mapx:int;
        private var _mapy:int;

        public function MapStaticObjectVO()
        {
            _image = new Image();
            _offset = new Point(0, 0);
            return;
        }// end function

        public function set offsetX(param1:int) : void
        {
            _offsetX = param1;
            _offset.x = param1;
            return;
        }// end function

        public function get zIndex() : int
        {
            return TacticsProxy.ROWS - mapx + mapy;
        }// end function

        public function set offsetY(param1:int) : void
        {
            _offsetY = param1;
            _offset.y = param1;
            return;
        }// end function

        public function get image() : Image
        {
            return _image;
        }// end function

        public function get mapy() : int
        {
            return _mapy;
        }// end function

        public function set bitmap(param1:Bitmap) : void
        {
            _bitmap = param1;
            image = new Image();
            image.source = bitmap;
            var _loc_2:* = Utils.indexToPoint(mapx, mapy);
            image.x = _loc_2.x + offsetX;
            image.y = _loc_2.y + offsetY;
            return;
        }// end function

        public function get mapx() : int
        {
            return _mapx;
        }// end function

        public function get offsetX() : int
        {
            return _offsetX;
        }// end function

        public function get offsetY() : int
        {
            return _offsetY;
        }// end function

        public function get bitmap() : Bitmap
        {
            return _bitmap;
        }// end function

        public function set mapx(param1:int) : void
        {
            _mapx = param1;
            return;
        }// end function

        public function set mapy(param1:int) : void
        {
            _mapy = param1;
            return;
        }// end function

        public function set image(param1:Image) : void
        {
            _image = param1;
            return;
        }// end function

    }
}
