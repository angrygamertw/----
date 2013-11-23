package com.kbmj.viking.proxy
{
    import com.kbmj.viking.vo.*;

    public class CityProxy extends LoaderProxy
    {
        private var _cityVO:CityVO;
        private var _location:String;
        private var _materialsById:Object;
        private var _playerFactionId:int;
        private var _cityResource:ResourceVO;
        public static const LEFT_CITY:String = NAME + "/notes/leftCity";
        private static const PROPERTY_TABLE:Object = {name:"name", cityType:"city_type", silverPrice:"silver_price", goldPrice:"gold_price", foodPrice:"food_price", description:"description", indulgencePrice:"indulgence_price"};
        public static const RESOURCE_LOADED:String = "CityProxy/resourceLoaded";
        public static const CITY_LOADED:String = NAME + "/notes/cityLoaded";
        public static const NAME:String = "CityProxy";

        public function CityProxy()
        {
            super(NAME);
            return;
        }// end function

        public function get cityType() : int
        {
            return _cityVO.cityType;
        }// end function

        public function set cityVO(param1:CityVO) : void
        {
            _cityVO = param1;
            return;
        }// end function

        public function getMerchandiseVO(param1:String, param2:int) : MerchandiseVO
        {
            if (!_cityVO.merchandises[param1])
            {
                return null;
            }
            return _cityVO.merchandises[param1].getOne("masterId", param2);
        }// end function

        public function getHomeMaterialById(param1:int) : MaterialVO
        {
            return _materialsById[param1];
        }// end function

        public function get HomeMaterialData() : Object
        {
            return _materialsById;
        }// end function

        public function get cityResource() : ResourceVO
        {
            return _cityResource;
        }// end function

        public function loadResource() : void
        {
            var masterProxy:* = MasterProxy(facade.retrieveProxy(MasterProxy.NAME));
            loadWithJson("/api/player/resource", RESOURCE_LOADED, null, function (param1:Object) : void
            {
                var _loc_3:MaterialVO = null;
                var _loc_2:* = ResourceProxy(facade.retrieveProxy(ResourceProxy.NAME));
                _cityResource = new ResourceVO();
                _cityResource = _loc_2.resourceFactory(param1.home_resource);
                _materialsById = new Object();
                for each (_loc_3 in _cityResource.materials)
                {
                    
                    _materialsById[_loc_3.masterVO.masterId] = _loc_3;
                }
                return;
            }// end function
            , null);
            return;
        }// end function

        public function cityFactory(param1:Object) : CityVO
        {
            var _loc_4:String = null;
            var _loc_5:Object = null;
            var _loc_6:Object = null;
            var _loc_2:* = new CityVO();
            var _loc_3:* = MerchandiseProxy(facade.retrieveProxy(MerchandiseProxy.NAME));
            for (_loc_4 in PROPERTY_TABLE)
            {
                
                _loc_2[_loc_4] = param1[PROPERTY_TABLE[_loc_4]];
            }
            _loc_5 = {ItemMaster:[], WeaponMaster:[], ArmorMaster:[], AccessoryMaster:[], MaterialMaster:[]};
            for each (_loc_6 in param1.merchandises)
            {
                
                _loc_5[_loc_6.master_type].push(_loc_3.merchandiseFactory(_loc_6));
            }
            _loc_2.merchandises = _loc_5;
            return _loc_2;
        }// end function

        public function get cityVO() : CityVO
        {
            return _cityVO;
        }// end function

        public function set location(param1:String) : void
        {
            _location = param1;
            return;
        }// end function

        public function set playerFactionId(param1:int) : void
        {
            _playerFactionId = param1;
            return;
        }// end function

        public function loadCity() : void
        {
            load("/api/markets", CITY_LOADED, function (param1:Object) : CityVO
            {
                _cityVO = new CityVO();
                _cityVO = cityFactory(param1.city);
                return _cityVO;
            }// end function
            );
            return;
        }// end function

        public function get location() : String
        {
            return _location;
        }// end function

        public function get playerFactionId() : int
        {
            return _playerFactionId;
        }// end function

        public function leave() : void
        {
            load("/api/cities/leave/", LEFT_CITY, function (param1:Object) : void
            {
                return;
            }// end function
            );
            return;
        }// end function

    }
}
