package com.kbmj.viking.proxy
{
    import com.kbmj.viking.proxy.home.*;
    import com.kbmj.viking.vo.*;
    import mx.collections.*;
    import org.puremvc.as3.patterns.proxy.*;

    public class GoodsProxy extends Proxy
    {
        public static const NAME:String = "GoodsProxy";

        public function GoodsProxy()
        {
            super(NAME);
            return;
        }// end function

        override public function onRegister() : void
        {
            return;
        }// end function

        public function createResourceFromGoodsBundle(param1:GoodsBundleVO) : ResourceVO
        {
            var _loc_5:String = null;
            var _loc_6:GoodsVO = null;
            var _loc_7:Array = null;
            var _loc_8:Array = null;
            var _loc_9:BaseBelongingVO = null;
            var _loc_2:* = HomeProxy(facade.retrieveProxy(HomeProxy.NAME));
            var _loc_3:* = _loc_2.homeVO.resourceVO;
            var _loc_4:* = new ResourceVO();
            for each (_loc_5 in ["weapons", "items", "materials"])
            {
                
                for each (_loc_6 in param1[_loc_5])
                {
                    
                    _loc_4[_loc_5].push(_loc_6.vo);
                }
            }
            for each (_loc_5 in ["armors", "accessories"])
            {
                
                _loc_7 = _loc_3[_loc_5];
                for each (_loc_6 in param1[_loc_5])
                {
                    
                    _loc_8 = _loc_7.find("masterId", _loc_6.vo.masterId).splice(0, (_loc_6.quantity - 1));
                    for each (_loc_9 in _loc_8)
                    {
                        
                        _loc_4[_loc_5].push(_loc_9);
                    }
                }
            }
            return _loc_4;
        }// end function

        private static function getIncountableGoods(param1:Array) : ArrayCollection
        {
            var _loc_4:Object = null;
            var _loc_5:Object = null;
            var _loc_6:GoodsVO = null;
            var _loc_2:* = new Array();
            var _loc_3:* = new Object();
            for each (_loc_4 in param1)
            {
                
                if (!_loc_3[_loc_4.masterVO])
                {
                    _loc_3[_loc_4.masterVO] = {masterVO:_loc_4.masterVO, quantity:1};
                    continue;
                }
                (_loc_3[_loc_4.masterVO].quantity + 1);
            }
            for each (_loc_5 in _loc_3)
            {
                
                _loc_6 = new GoodsVO();
                _loc_6.vo = _loc_5.masterVO;
                _loc_6.quantity = _loc_5.quantity;
                _loc_2.push(_loc_6);
            }
            return new ArrayCollection(_loc_2);
        }// end function

        public static function createGoodsBundleFromResource(param1:ResourceVO) : GoodsBundleVO
        {
            var resourceVO:* = param1;
            var goodsBundle:* = new GoodsBundleVO();
            goodsBundle.weapons = getCountableGoods(resourceVO.weapons);
            goodsBundle.items = getCountableGoods(resourceVO.items);
            goodsBundle.materials = getCountableGoods(resourceVO.materials);
            goodsBundle.armors = getCountableGoods(resourceVO.armors);
            goodsBundle.accessories = getCountableGoods(resourceVO.accessories);
            var materials:* = resourceVO.materials.filter(function (param1, param2:int, param3:Array) : Boolean
            {
                return param1.quantity > 0;
            }// end function
            );
            goodsBundle.materials = getCountableGoods(materials);
            return goodsBundle;
        }// end function

        private static function getCountableGoods(param1:Array) : ArrayCollection
        {
            var _loc_3:Object = null;
            var _loc_4:GoodsVO = null;
            var _loc_2:* = new Array();
            for each (_loc_3 in param1)
            {
                
                if (_loc_3 is MaterialVO && _loc_3.quantity == 0)
                {
                    continue;
                }
                _loc_4 = new GoodsVO();
                _loc_4.vo = _loc_3;
                _loc_4.quantity = _loc_3 is MaterialVO ? (_loc_3.quantity) : (1);
                _loc_2.push(_loc_4);
            }
            return new ArrayCollection(_loc_2);
        }// end function

    }
}
