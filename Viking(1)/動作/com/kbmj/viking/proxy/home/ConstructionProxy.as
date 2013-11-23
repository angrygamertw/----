package com.kbmj.viking.proxy.home
{
    import com.kbmj.viking.proxy.*;
    import com.kbmj.viking.proxy.tactics.*;
    import com.kbmj.viking.vo.*;
    import com.kbmj.viking.vo.home.*;

    public class ConstructionProxy extends LoaderProxy
    {
        private var _constructions:Array;
        private var _ownMaterials:Array;
        public static const NAME:String = "ConstructionProxy";

        public function ConstructionProxy()
        {
            _ownMaterials = new Array();
            super(NAME);
            return;
        }// end function

        public function getConstructionsOfLevel(param1:int) : Array
        {
            var level:* = param1;
            return _constructions.filter(function (param1:ConstructionVO, param2:int, param3:Array) : Boolean
            {
                return param1.level == level;
            }// end function
            );
        }// end function

        private function constructionMaxJudge(param1:ConstructionVO) : Boolean
        {
            var _loc_4:int = 0;
            var _loc_5:Object = null;
            var _loc_2:* = HomeProxy(facade.retrieveProxy(HomeProxy.NAME));
            var _loc_3:* = BuildingProxy(facade.retrieveProxy(BuildingProxy.NAME));
            if (_loc_5)
            {
                if (_loc_4 >= _loc_5.maxBuild)
                {
                    return false;
                }
            }
            return true;
        }// end function

        public function get ownMaterials() : Array
        {
            return _ownMaterials;
        }// end function

        public function get constructions() : Array
        {
            var buildingProxy:* = BuildingProxy(facade.retrieveProxy(BuildingProxy.NAME));
            _constructions = new Array();
            var i:int;
            while (i < buildingProxy.constructions.length)
            {
                
                checkForRequirement(buildingProxy.constructions[i]);
                _constructions.push(buildingProxy.constructions[i]);
                i = (i + 1);
            }
            return _constructions.filter(function (param1:ConstructionVO, param2:int, param3:Array) : Boolean
            {
                return param1.level == 1;
            }// end function
            );
        }// end function

        public function checkForRequirement(param1:ConstructionVO) : void
        {
            var _loc_6:Array = null;
            var _loc_7:MaterialVO = null;
            var _loc_8:MaterialVO = null;
            var _loc_9:Boolean = false;
            var _loc_2:* = new Object();
            var _loc_3:* = HomeProxy(facade.retrieveProxy(HomeProxy.NAME));
            var _loc_4:* = UnitProxy(facade.retrieveProxy(UnitProxy.NAME));
            var _loc_5:* = PlayerProxy(facade.retrieveProxy(PlayerProxy.NAME));
            _loc_2.canBuild = true;
            _loc_2.units = new Array();
            if (param1.playerRank <= _loc_5.playerVO.playerRankId)
            {
                _loc_2.units = _loc_4.homeWaitingUnits;
                _loc_2.textAbilityColor = 16777215;
            }
            else
            {
                _loc_2.canBuild = false;
                _loc_2.textAbilityColor = 15073298;
            }
            if (param1.materials)
            {
                _loc_6 = new Array();
                _ownMaterials = new Array();
                for each (_loc_7 in param1.materials)
                {
                    
                    _loc_8 = _loc_3.getHomeMaterialById(_loc_7.masterVO.masterId);
                    _ownMaterials.push(_loc_8);
                    _loc_9 = !(_loc_8 && _loc_7.quantity <= _loc_8.quantity);
                    _loc_6.push({vo:_loc_7.masterVO, required:_loc_7.quantity, current:_loc_8 ? (_loc_8.quantity) : (0), isShort:_loc_9});
                    if (_loc_9)
                    {
                        _loc_2.canBuild = false;
                    }
                }
                _loc_2.materials = _loc_6;
            }
            if (param1.gold > _loc_5.playerVO.gold)
            {
                _loc_2.canBuild = false;
                _loc_2.textGoldColor = 15073298;
            }
            else
            {
                _loc_2.textGoldColor = 0;
            }
            _loc_2.maxBuild = constructionMaxJudge(param1);
            param1.requirement = _loc_2;
            return;
        }// end function

        override public function onRegister() : void
        {
            return;
        }// end function

        public function checkAllForRequirement() : void
        {
            var _loc_1:ConstructionVO = null;
            for each (_loc_1 in constructions)
            {
                
                checkForRequirement(_loc_1);
            }
            return;
        }// end function

    }
}
