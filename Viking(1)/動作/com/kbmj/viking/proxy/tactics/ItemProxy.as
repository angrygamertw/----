package com.kbmj.viking.proxy.tactics
{
    import com.kbmj.viking.proxy.*;
    import com.kbmj.viking.vo.tactics.*;
    import flash.display.*;
    import flash.events.*;
    import mx.core.*;
    import org.puremvc.as3.patterns.proxy.*;

    public class ItemProxy extends Proxy
    {
        private var _healValue:int;
        private var _uic:UIComponent;
        private var _loader:Loader;
        private var _layer:Object;
        public static const ITEM_ANIMATION:String = NAME + "/notes/itemAnimation";
        public static const NAME:String = "ItemProxy";

        public function ItemProxy()
        {
            _loader = new Loader();
            _uic = new UIComponent();
            _layer = new Object();
            super(NAME);
            return;
        }// end function

        public function set layer(param1:Object) : void
        {
            _layer = param1;
            return;
        }// end function

        public function get healValue() : int
        {
            return _healValue;
        }// end function

        public function itemAnimation(param1:UnitVO) : void
        {
            var unit:* = param1;
            var animationProxy:* = AnimationProxy(facade.retrieveProxy(AnimationProxy.NAME));
            _loader.contentLoaderInfo.addEventListener(Event.COMPLETE, function () : void
            {
                _loader.content.addEventListener("EffectFinish", itemAnimationFinish);
                return;
            }// end function
            );
            _loader.x = unit.loader.x - 10;
            _loader.y = unit.loader.y - 55;
            _uic.addChild(_loader);
            _layer.addChild(_uic);
            _loader.loadBytes(animationProxy.getAnimation("magics", "rosario"));
            return;
        }// end function

        public function useItem(param1:UseItemVO) : UseItemVO
        {
            var _loc_4:bufferVO = null;
            var _loc_5:int = 0;
            var _loc_2:* = param1.unit;
            var _loc_3:* = UnitProxy(facade.retrieveProxy(UnitProxy.NAME));
            switch(_loc_2.item.masterVO.code)
            {
                case "5001":
                {
                    _healValue = 15;
                    _loc_2.hp = _loc_2.hp + _healValue;
                    break;
                }
                case "5002":
                {
                    _healValue = 30;
                    _loc_2.hp = _loc_2.hp + _healValue;
                    break;
                }
                case "5003":
                {
                    _healValue = 50;
                    _loc_2.hp = _loc_2.hp + _healValue;
                    break;
                }
                case "5004":
                {
                    _healValue = 80;
                    _loc_2.hp = _loc_2.hp + _healValue;
                    break;
                }
                case "5023":
                {
                    _healValue = 70;
                    _loc_2.hp = _loc_2.hp + _healValue;
                    break;
                }
                case "5028":
                {
                    _healValue = 70;
                    _loc_2.hp = _loc_2.hp + _healValue;
                    break;
                }
                case "5005":
                {
                    _healValue = 999;
                    _loc_2.hp = _loc_2.maxHp;
                    break;
                }
                case "5006":
                {
                    if (_loc_2.buffs.length)
                    {
                        _loc_5 = 0;
                        while (_loc_5 < _loc_2.buffs.length)
                        {
                            
                            if (_loc_2.buffs[_loc_5].type == UnitVO.ABNORMAL_NAME_DOKU)
                            {
                                _loc_2.buffs.splice(_loc_5, 1);
                                continue;
                            }
                            if (_loc_2.buffs[_loc_5].type == UnitVO.ABNORMAL_NAME_MOUDOKU)
                            {
                                _loc_2.buffs.splice(_loc_5, 1);
                                continue;
                            }
                            _loc_5++;
                        }
                    }
                    break;
                }
                case "5007":
                {
                    if (_loc_2.buffs.length)
                    {
                        _loc_5 = 0;
                        while (_loc_5 < _loc_2.buffs.length)
                        {
                            
                            if (_loc_2.buffs[_loc_5].type == UnitVO.ABNORMAL_NAME_KURAYAMI)
                            {
                                _loc_2.buffs.splice(_loc_5, 1);
                                continue;
                            }
                            _loc_5++;
                        }
                    }
                    break;
                }
                case "5008":
                {
                    if (_loc_2.buffs.length)
                    {
                        _loc_5 = 0;
                        while (_loc_5 < _loc_2.buffs.length)
                        {
                            
                            if (_loc_2.buffs[_loc_5].type == UnitVO.ABNORMAL_NAME_JUBAKU)
                            {
                                _loc_2.buffs.splice(_loc_5, 1);
                                continue;
                            }
                            _loc_5++;
                        }
                    }
                    break;
                }
                case "5009":
                {
                    if (_loc_2.buffs.length)
                    {
                        _loc_5 = 0;
                        while (_loc_5 < _loc_2.buffs.length)
                        {
                            
                            if (_loc_2.buffs[_loc_5].type == UnitVO.ABNORMAL_NAME_KAGENUI)
                            {
                                _loc_2.buffs.splice(_loc_5, 1);
                                continue;
                            }
                            _loc_5++;
                        }
                    }
                    break;
                }
                case "5010":
                {
                    if (_loc_2.buffs.length)
                    {
                        _loc_5 = 0;
                        while (_loc_5 < _loc_2.buffs.length)
                        {
                            
                            if (_loc_2.buffs[_loc_5].type == UnitVO.ABNORMAL_NAME_MAHI)
                            {
                                _loc_2.buffs.splice(_loc_5, 1);
                                continue;
                            }
                            _loc_5++;
                        }
                    }
                    break;
                }
                case "5011":
                {
                    _loc_3.resetAllAbnormalState(_loc_2);
                    break;
                }
                default:
                {
                    break;
                    break;
                }
            }
            _loc_3.count(_loc_2, UnitProxy.COUNT_ITEM);
            if (_loc_2.hp > _loc_2.maxHp + _loc_2.equipmentBufferVO.maxHp)
            {
                _loc_2.hp = _loc_2.maxHp + _loc_2.equipmentBufferVO.maxHp;
            }
            var _loc_6:* = _loc_2.item;
            var _loc_7:* = _loc_2.item.endurance - 1;
            _loc_6.endurance = _loc_7;
            param1.effect = _healValue;
            param1.newHp = _loc_2.hp;
            return param1;
        }// end function

        private function itemAnimationFinish(event:Event) : void
        {
            _uic.removeChild(_loader);
            _layer.removeChild(_uic);
            _loader.content.removeEventListener("EffectFinish", itemAnimationFinish);
            return;
        }// end function

    }
}
