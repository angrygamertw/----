package com.kbmj.viking.vo.tactics
{

    public class GridVO extends Object
    {
        private var _direction:int;
        private var _mapx:int;
        private var _mapObject:ITacticsMapObject;
        private var _position:int;
        private var _block_no:int;
        private var _positionType:int;
        private var _unit:UnitVO;
        private var _cost:int;
        private var _mapy:int;
        public static const POSITION_TYPE_PLAYER:int = 1;
        public static const POSITION_TYPE_ALLY:int = 4;
        public static const POSITION_TYPE_ENEMY:int = 2;
        public static const POSITION_TYPE_ENEMY_ALLY:int = 5;
        public static const POSITION_TYPE_OBJECT:int = 3;

        public function GridVO()
        {
            return;
        }// end function

        public function get positionType() : int
        {
            return _positionType;
        }// end function

        public function get unit() : UnitVO
        {
            return _unit;
        }// end function

        public function get cost() : int
        {
            return _cost;
        }// end function

        public function get direction() : int
        {
            return _direction;
        }// end function

        public function set unit(param1:UnitVO) : void
        {
            _unit = param1;
            return;
        }// end function

        public function set positionType(param1:int) : void
        {
            _positionType = param1;
            return;
        }// end function

        public function set position(param1:int) : void
        {
            _position = param1;
            return;
        }// end function

        public function set cost(param1:int) : void
        {
            _cost = param1;
            return;
        }// end function

        public function get mapx() : int
        {
            return _mapx;
        }// end function

        public function get mapy() : int
        {
            return _mapy;
        }// end function

        public function set mapx(param1:int) : void
        {
            _mapx = param1;
            return;
        }// end function

        public function get position() : int
        {
            return _position;
        }// end function

        public function set blockNo(param1:int) : void
        {
            _block_no = param1;
            return;
        }// end function

        public function get blockNo() : int
        {
            return _block_no;
        }// end function

        public function set mapy(param1:int) : void
        {
            _mapy = param1;
            return;
        }// end function

        public function get mapObject() : ITacticsMapObject
        {
            return _mapObject;
        }// end function

        public function set mapObject(param1:ITacticsMapObject) : void
        {
            _mapObject = param1;
            return;
        }// end function

        public function set direction(param1:int) : void
        {
            _direction = param1;
            return;
        }// end function

    }
}
