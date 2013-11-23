package com.kbmj.viking.vo.home
{

    public class HomeMapVO extends Object
    {
        private var _mapx:int;
        private var _buildingVO:BuildingVO;
        private var _landform:int;
        private var _buildingMasterId:int;
        private var _buildingId:int;
        private var _homeId:int;
        private var _id:int;
        private var _mapy:int;

        public function HomeMapVO()
        {
            return;
        }// end function

        public function set mapy(param1:int) : void
        {
            _mapy = param1;
            return;
        }// end function

        public function get homeId() : int
        {
            return _homeId;
        }// end function

        public function get id() : int
        {
            return _id;
        }// end function

        public function get mapy() : int
        {
            return _mapy;
        }// end function

        public function set buildingId(param1:int) : void
        {
            _buildingId = param1;
            return;
        }// end function

        public function set buildingVO(param1:BuildingVO) : void
        {
            _buildingVO = param1;
            return;
        }// end function

        public function set buildingMasterId(param1:int) : void
        {
            _buildingMasterId = param1;
            return;
        }// end function

        public function set landform(param1:int) : void
        {
            _landform = param1;
            return;
        }// end function

        public function get mapx() : int
        {
            return _mapx;
        }// end function

        public function get buildingVO() : BuildingVO
        {
            return _buildingVO;
        }// end function

        public function get buildingId() : int
        {
            return _buildingId;
        }// end function

        public function get buildingMasterId() : int
        {
            return _buildingMasterId;
        }// end function

        public function set homeId(param1:int) : void
        {
            _homeId = param1;
            return;
        }// end function

        public function set id(param1:int) : void
        {
            _id = param1;
            return;
        }// end function

        public function get landform() : int
        {
            return _landform;
        }// end function

        public function set mapx(param1:int) : void
        {
            _mapx = param1;
            return;
        }// end function

    }
}
