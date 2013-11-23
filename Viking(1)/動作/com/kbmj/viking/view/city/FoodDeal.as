package com.kbmj.viking.view.city
{
    import com.kbmj.viking.vo.*;
    import flash.events.*;
    import flash.utils.*;
    import mx.binding.*;
    import mx.containers.*;
    import mx.controls.*;
    import mx.core.*;
    import mx.events.*;
    import mx.managers.*;

    public class FoodDeal extends Canvas implements IBindingClient
    {
        private var _1124352117foodPrice:int;
        private var _382106123maxCount:int = 0;
        var _watchers:Array;
        private var _620387092pocketFood:int;
        public var _FoodDeal_Text1:Text;
        public var _FoodDeal_Text2:Text;
        public var _FoodDeal_Text4:Text;
        private var _playerVO:PlayerVO;
        private var _2058594506pocketMoney:int;
        public var _FoodDeal_Text5:Text;
        var _bindingsBeginWithWord:Object;
        var _bindingsByDestination:Object;
        private var _401559445numStepper:NumericStepper;
        private var _1858759349sumGold:int = 0;
        private var _quantity:int = 0;
        var _bindings:Array;
        private var _documentDescriptor_:UIComponentDescriptor;
        private static var _watcherSetupUtil:IWatcherSetupUtil;
        public static const BUY_FOOD:String = "buyFood";

        public function FoodDeal()
        {
            _documentDescriptor_ = new UIComponentDescriptor({type:Canvas, propertiesFactory:function () : Object
            {
                return {childDescriptors:[new UIComponentDescriptor({type:Text, id:"_FoodDeal_Text1", propertiesFactory:function () : Object
                {
                    return {styleName:"DealText", x:83, y:53, width:100};
                }// end function
                }), new UIComponentDescriptor({type:Text, id:"_FoodDeal_Text2", propertiesFactory:function () : Object
                {
                    return {styleName:"DealText", x:235, y:53, width:100};
                }// end function
                }), new UIComponentDescriptor({type:Text, stylesFactory:function () : void
                {
                    this.textAlign = "center";
                    return;
                }// end function
                , propertiesFactory:function () : Object
                {
                    return {styleName:"DealText2", text:"食料", x:22, y:116, width:100};
                }// end function
                }), new UIComponentDescriptor({type:Text, id:"_FoodDeal_Text4", propertiesFactory:function () : Object
                {
                    return {styleName:"DealText2", x:107, y:116, width:100};
                }// end function
                }), new UIComponentDescriptor({type:NumericStepper, id:"numStepper", events:{change:"__numStepper_change"}, stylesFactory:function () : void
                {
                    this.cornerRadius = 0;
                    this.borderColor = 10058583;
                    this.iconColor = 5318420;
                    this.color = 734012;
                    this.themeColor = 16737843;
                    return;
                }// end function
                , propertiesFactory:function () : Object
                {
                    return {x:258, y:113, minimum:0, value:0};
                }// end function
                }), new UIComponentDescriptor({type:Text, id:"_FoodDeal_Text5", propertiesFactory:function () : Object
                {
                    return {styleName:"DealText2", x:338, y:116, width:110};
                }// end function
                }), new UIComponentDescriptor({type:HBox, stylesFactory:function () : void
                {
                    this.horizontalGap = 15;
                    return;
                }// end function
                , propertiesFactory:function () : Object
                {
                    return {y:150, x:150, childDescriptors:[new UIComponentDescriptor({type:Button, events:{click:"___FoodDeal_Button1_click"}, propertiesFactory:function () : Object
                    {
                        return {label:"", styleName:"CancelCanaButton", buttonMode:true};
                    }// end function
                    }), new UIComponentDescriptor({type:Button, events:{click:"___FoodDeal_Button2_click"}, propertiesFactory:function () : Object
                    {
                        return {label:"", styleName:"BuyButton", buttonMode:true};
                    }// end function
                    })]};
                }// end function
                }), new UIComponentDescriptor({type:Button, events:{click:"___FoodDeal_Button3_click"}, stylesFactory:function () : void
                {
                    this.fontSize = 30;
                    this.top = "10";
                    this.right = "10";
                    return;
                }// end function
                , propertiesFactory:function () : Object
                {
                    return {width:26, height:26, styleName:"closeBtn", buttonMode:true};
                }// end function
                })]};
            }// end function
            });
            _bindings = [];
            _watchers = [];
            _bindingsByDestination = {};
            _bindingsBeginWithWord = {};
            mx_internal::_document = this;
            return;
        }// end function

        private function closeWindow() : void
        {
            numStepper.value = 0;
            PopUpManager.removePopUp(this);
            return;
        }// end function

        public function get quantity() : int
        {
            return _quantity;
        }// end function

        override public function initialize() : void
        {
            var target:FoodDeal;
            var watcherSetupUtilClass:Object;
            .mx_internal::setDocumentDescriptor(_documentDescriptor_);
            var bindings:* = _FoodDeal_bindingsSetup();
            var watchers:Array;
            target;
            if (_watcherSetupUtil == null)
            {
                watcherSetupUtilClass = getDefinitionByName("_com_kbmj_viking_view_city_FoodDealWatcherSetupUtil");
                var _loc_2:* = watcherSetupUtilClass;
                _loc_2.watcherSetupUtilClass["init"](null);
            }
            _watcherSetupUtil.setup(this, function (param1:String)
            {
                return target[param1];
            }// end function
            , bindings, watchers);
            var i:uint;
            while (i < bindings.length)
            {
                
                Binding(bindings[i]).execute();
                i = (i + 1);
            }
            mx_internal::_bindings = mx_internal::_bindings.concat(bindings);
            mx_internal::_watchers = mx_internal::_watchers.concat(watchers);
            super.initialize();
            return;
        }// end function

        private function get maxCount() : int
        {
            return this._382106123maxCount;
        }// end function

        private function get foodPrice() : int
        {
            return this._1124352117foodPrice;
        }// end function

        private function set maxCount(param1:int) : void
        {
            var _loc_2:* = this._382106123maxCount;
            if (_loc_2 !== param1)
            {
                this._382106123maxCount = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "maxCount", _loc_2, param1));
            }
            return;
        }// end function

        private function set pocketMoney(param1:int) : void
        {
            var _loc_2:* = this._2058594506pocketMoney;
            if (_loc_2 !== param1)
            {
                this._2058594506pocketMoney = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "pocketMoney", _loc_2, param1));
            }
            return;
        }// end function

        public function __numStepper_change(event:NumericStepperEvent) : void
        {
            calcSumGold();
            return;
        }// end function

        private function set sumGold(param1:int) : void
        {
            var _loc_2:* = this._1858759349sumGold;
            if (_loc_2 !== param1)
            {
                this._1858759349sumGold = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "sumGold", _loc_2, param1));
            }
            return;
        }// end function

        private function onBuy() : void
        {
            _quantity = numStepper.value;
            dispatchEvent(new Event(BUY_FOOD));
            return;
        }// end function

        public function ___FoodDeal_Button1_click(event:MouseEvent) : void
        {
            closeWindow();
            return;
        }// end function

        public function ___FoodDeal_Button3_click(event:MouseEvent) : void
        {
            closeWindow();
            return;
        }// end function

        private function _FoodDeal_bindingExprs() : void
        {
            var _loc_1:* = undefined;
            _loc_1 = pocketMoney + "Gold";
            _loc_1 = pocketFood + "個";
            _loc_1 = foodPrice;
            _loc_1 = maxCount;
            _loc_1 = sumGold + "Gold";
            return;
        }// end function

        private function set pocketFood(param1:int) : void
        {
            var _loc_2:* = this._620387092pocketFood;
            if (_loc_2 !== param1)
            {
                this._620387092pocketFood = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "pocketFood", _loc_2, param1));
            }
            return;
        }// end function

        private function set foodPrice(param1:int) : void
        {
            var _loc_2:* = this._1124352117foodPrice;
            if (_loc_2 !== param1)
            {
                this._1124352117foodPrice = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "foodPrice", _loc_2, param1));
            }
            return;
        }// end function

        public function setData(param1:PlayerVO, param2:CityVO) : void
        {
            _playerVO = param1;
            pocketMoney = _playerVO.gold;
            pocketFood = _playerVO.food;
            foodPrice = param2.foodPrice;
            maxCount = _playerVO.gold / param2.foodPrice;
            if (maxCount > 999)
            {
                maxCount = 999;
            }
            return;
        }// end function

        private function calcSumGold() : void
        {
            sumGold = numStepper.value * foodPrice;
            return;
        }// end function

        private function _FoodDeal_bindingsSetup() : Array
        {
            var binding:Binding;
            var result:Array;
            binding = new Binding(this, function () : String
            {
                var _loc_1:* = pocketMoney + "Gold";
                var _loc_2:* = _loc_1 == undefined ? (null) : (String(_loc_1));
                return _loc_2;
            }// end function
            , function (param1:String) : void
            {
                _FoodDeal_Text1.text = param1;
                return;
            }// end function
            , "_FoodDeal_Text1.text");
            result[0] = binding;
            binding = new Binding(this, function () : String
            {
                var _loc_1:* = pocketFood + "個";
                var _loc_2:* = _loc_1 == undefined ? (null) : (String(_loc_1));
                return _loc_2;
            }// end function
            , function (param1:String) : void
            {
                _FoodDeal_Text2.text = param1;
                return;
            }// end function
            , "_FoodDeal_Text2.text");
            result[1] = binding;
            binding = new Binding(this, function () : String
            {
                var _loc_1:* = foodPrice;
                var _loc_2:* = _loc_1 == undefined ? (null) : (String(_loc_1));
                return _loc_2;
            }// end function
            , function (param1:String) : void
            {
                _FoodDeal_Text4.text = param1;
                return;
            }// end function
            , "_FoodDeal_Text4.text");
            result[2] = binding;
            binding = new Binding(this, function () : Number
            {
                return maxCount;
            }// end function
            , function (param1:Number) : void
            {
                numStepper.maximum = param1;
                return;
            }// end function
            , "numStepper.maximum");
            result[3] = binding;
            binding = new Binding(this, function () : String
            {
                var _loc_1:* = sumGold + "Gold";
                var _loc_2:* = _loc_1 == undefined ? (null) : (String(_loc_1));
                return _loc_2;
            }// end function
            , function (param1:String) : void
            {
                _FoodDeal_Text5.text = param1;
                return;
            }// end function
            , "_FoodDeal_Text5.text");
            result[4] = binding;
            return result;
        }// end function

        private function get sumGold() : int
        {
            return this._1858759349sumGold;
        }// end function

        private function get pocketFood() : int
        {
            return this._620387092pocketFood;
        }// end function

        public function set numStepper(param1:NumericStepper) : void
        {
            var _loc_2:* = this._401559445numStepper;
            if (_loc_2 !== param1)
            {
                this._401559445numStepper = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "numStepper", _loc_2, param1));
            }
            return;
        }// end function

        private function get pocketMoney() : int
        {
            return this._2058594506pocketMoney;
        }// end function

        public function get numStepper() : NumericStepper
        {
            return this._401559445numStepper;
        }// end function

        public function ___FoodDeal_Button2_click(event:MouseEvent) : void
        {
            onBuy();
            return;
        }// end function

        public static function set watcherSetupUtil(param1:IWatcherSetupUtil) : void
        {
            _watcherSetupUtil = param1;
            return;
        }// end function

    }
}
