package com.kbmj.viking.proxy.tactics
{
    import com.kbmj.viking.proxy.*;
    import com.kbmj.viking.vo.tactics.*;

    public class MapProxy extends LoaderProxy
    {
        private var _mapVO:MapVO;
        private static var block_info:Array = [[COST_STOP, null], [COST_INTO, "/images/tactics/map/BF_blk_01.png"], [COST_INTO, "/images/tactics/map/BF_blk_02.png"], [COST_INTO, "/images/tactics/map/BF_blk_03.png"], [COST_INTO, "/images/tactics/map/BF_blk_04.png"], [COST_INTO, "/images/tactics/map/BF_blk_05.png"], [COST_STOP, "/images/tactics/map/BF_blk_06.png"], [COST_STOP, "/images/tactics/map/BF_blk_07.png"], [COST_INTO, "/images/tactics/map/BF_blk_08.png"], [COST_INTO, "/images/tactics/map/BF_blk_09.png"], [COST_INTO, "/images/tactics/map/BF_blk_10.png"], [COST_INTO, "/images/tactics/map/BF_blk_11.png"], [COST_INTO, "/images/tactics/map/BF_blk_12.png"], [COST_INTO, "/images/tactics/map/BF_blk_13.png"], [COST_INTO, "/images/tactics/map/BF_blk_14.png"], [COST_INTO, "/images/tactics/map/BF_blk_15.png"], [COST_INTO, "/images/tactics/map/BF_blk_16.png"]];
        public static const COST_INTO:int = 1;
        public static const POSITION_TYPE_ALLY:int = 1;
        public static const MAP_LOADED:String = NAME + "/MapLoaded";
        public static const NAME:String = "MapProxy";
        private static var _map_proxy:MapProxy = null;
        public static const POSITION_TYPE_OBJECT:int = 3;
        public static const COST_STOP:int = 99;
        public static const POSITION_TYPE_ENEMY:int = 2;
        public static const RAID_MAP_LOADED:String = NAME + "/raidMapLoaded";

        public function MapProxy()
        {
            super(NAME);
            _map_proxy = this;
            return;
        }// end function

        public function loadRaidMap() : void
        {
            load("/api/raids/map", RAID_MAP_LOADED, function (param1:Object) : MapVO
            {
                return mapFactory(param1);
            }// end function
            );
            return;
        }// end function

        public function get staticObjects() : Array
        {
            return mapVO.staticObjects;
        }// end function

        override public function onRegister() : void
        {
            return;
        }// end function

        public function set mapVO(param1:MapVO) : void
        {
            _mapVO = param1;
            return;
        }// end function

        private function gridFactory(param1:Object) : GridVO
        {
            var _loc_4:MapStaticObjectVO = null;
            var _loc_5:MapStaticObjectVO = null;
            var _loc_2:* = ImageProxy(facade.retrieveProxy(ImageProxy.NAME));
            var _loc_3:* = new GridVO();
            _loc_3.mapx = param1.mapx;
            _loc_3.mapy = param1.mapy;
            _loc_3.blockNo = param1.block_no;
            _loc_3.positionType = param1.position_type;
            _loc_3.position = param1.position;
            _loc_3.direction = param1.direction % 4;
            if (_loc_3.positionType == POSITION_TYPE_OBJECT)
            {
                _loc_3.cost = COST_STOP;
            }
            else
            {
                _loc_3.cost = block_info[_loc_3.blockNo][0];
            }
            if (param1.object_file_url && param1.object_file_url.length > 0)
            {
                _loc_4 = new MapStaticObjectVO();
                _loc_4.mapx = param1.mapx;
                _loc_4.mapy = param1.mapy;
                _loc_4.offsetX = param1.offsetx;
                _loc_4.offsetY = param1.offsety;
                _loc_2.loadImage(_loc_4, "bitmap", param1.object_file_url);
                staticObjects.push(_loc_4);
                _loc_3.mapObject = _loc_4;
            }
            if (_loc_3.blockNo)
            {
                _loc_5 = new MapStaticObjectVO();
                _loc_5.mapx = param1.mapx;
                _loc_5.mapy = param1.mapy;
                _loc_2.loadImage(_loc_5, "bitmap", block_info[_loc_3.blockNo][1]);
                mapVO.blocks.push(_loc_5);
            }
            return _loc_3;
        }// end function

        public function set staticObjects(param1:Array) : void
        {
            mapVO.staticObjects = param1;
            return;
        }// end function

        public function get grids() : Array
        {
            return mapVO.grids;
        }// end function

        public function mapFactory(param1:Object) : MapVO
        {
            var _loc_4:Object = null;
            var _loc_5:ImageProxy = null;
            var _loc_6:int = 0;
            mapVO = new MapVO();
            var _loc_2:* = new Array(TacticsProxy.COLS);
            var _loc_3:int = 0;
            while (_loc_3 < TacticsProxy.COLS)
            {
                
                _loc_2[_loc_3] = new Array(TacticsProxy.ROWS);
                _loc_6 = 0;
                while (_loc_6 < TacticsProxy.ROWS)
                {
                    
                    _loc_2[_loc_3][_loc_6] = null;
                    _loc_6++;
                }
                _loc_3++;
            }
            for each (_loc_4 in param1.map.grids)
            {
                
                _loc_2[_loc_4.mapx][_loc_4.mapy] = gridFactory(_loc_4);
            }
            mapVO.grids = _loc_2;
            _loc_5 = ImageProxy(facade.retrieveProxy(ImageProxy.NAME));
            _loc_5.loadImage(mapVO, "image", param1.map.image_url);
            mapVO.blocks.sortOn("zIndex", Array.NUMERIC);
            return mapVO;
        }// end function

        public function loadBlockImage() : void
        {
            var _loc_2:Array = null;
            var _loc_3:MapStaticObjectVO = null;
            var _loc_1:* = ImageProxy(facade.retrieveProxy(ImageProxy.NAME));
            for each (_loc_2 in block_info)
            {
                
                _loc_3 = new MapStaticObjectVO();
                if (_loc_2[1])
                {
                    _loc_1.loadImage(_loc_3, "bitmap", _loc_2[1]);
                }
                _loc_3 = null;
            }
            return;
        }// end function

        public function get mapVO() : MapVO
        {
            return _mapVO;
        }// end function

        public function set grids(param1:Array) : void
        {
            mapVO.grids = param1;
            return;
        }// end function

        public function loadMap(param1:int) : void
        {
            var mapId:* = param1;
            load("/api/stages/map", MAP_LOADED, function (param1:Object) : MapVO
            {
                return mapFactory(param1);
            }// end function
            );
            return;
        }// end function

        public static function get mapProxy() : MapProxy
        {
            return _map_proxy;
        }// end function

    }
}
