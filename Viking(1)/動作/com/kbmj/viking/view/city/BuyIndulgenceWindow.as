package com.kbmj.viking.view.city
{
    import com.kbmj.viking.view.*;
    import com.kbmj.viking.vo.*;
    import flash.display.*;
    import flash.events.*;
    import flash.utils.*;
    import mx.binding.*;
    import mx.containers.*;
    import mx.controls.*;
    import mx.core.*;
    import mx.events.*;

    public class BuyIndulgenceWindow extends PopupWindow implements IBindingClient
    {
        public var _BuyIndulgenceWindow_Image1:Image;
        public var _BuyIndulgenceWindow_Image2:Image;
        public var _BuyIndulgenceWindow_Image3:Image;
        private var _documentDescriptor_:UIComponentDescriptor;
        private var _499155764indulgenceCanvas:Canvas;
        var _watchers:Array;
        private var tempNotoriety:int;
        private var _390231223maxLimit:int;
        private var _1896677185windowLayer:Canvas;
        private var buyBool:Boolean;
        private var _1655845770_swf_cancel:MovieClipLoaderAsset;
        private var _1366045266_indulgencePrice:int;
        var _bindingsBeginWithWord:Object;
        public var _BuyIndulgenceWindow_Text1:Text;
        var _bindingsByDestination:Object;
        private var _401559445numStepper:NumericStepper;
        private var _1858759349sumGold:int = 0;
        private var _1218643219_swf_close_window:MovieClipLoaderAsset;
        private var _quantity:int = 0;
        private var _1969791673_playerVO:PlayerVO;
        private var _1805870309afterNotoriety:int;
        private var _550961674_swf_buy:MovieClipLoaderAsset;
        var _bindings:Array;
        public static const BUY_INDULGENCE:String = "buyIndulgence";
        public static const INDULGENCE_PRICE:int = 100;
        private static var _watcherSetupUtil:IWatcherSetupUtil;
        public static const CLOSE_BUY_INDULGENCE:String = "closeBuyIndulgence";

        public function BuyIndulgenceWindow()
        {
            _documentDescriptor_ = new UIComponentDescriptor({type:PopupWindow, propertiesFactory:function () : Object
            {
                return {width:760, height:560, childDescriptors:[new UIComponentDescriptor({type:Canvas, id:"windowLayer"}), new UIComponentDescriptor({type:Canvas, id:"indulgenceCanvas", propertiesFactory:function () : Object
                {
                    return {childDescriptors:[new UIComponentDescriptor({type:NumericStepper, id:"numStepper", events:{change:"__numStepper_change"}, stylesFactory:function () : void
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
                        return {x:370, y:270, minimum:0, value:0};
                    }// end function
                    }), new UIComponentDescriptor({type:Text, id:"_BuyIndulgenceWindow_Text1", propertiesFactory:function () : Object
                    {
                        return {styleName:"TempleText2", x:320, y:290};
                    }// end function
                    }), new UIComponentDescriptor({type:HBox, stylesFactory:function () : void
                    {
                        this.horizontalGap = 130;
                        return;
                    }// end function
                    , propertiesFactory:function () : Object
                    {
                        return {x:260, y:360, childDescriptors:[new UIComponentDescriptor({type:Image, id:"_BuyIndulgenceWindow_Image1", events:{click:"___BuyIndulgenceWindow_Image1_click"}}), new UIComponentDescriptor({type:Image, id:"_BuyIndulgenceWindow_Image2", events:{click:"___BuyIndulgenceWindow_Image2_click"}})]};
                    }// end function
                    }), new UIComponentDescriptor({type:Image, id:"_BuyIndulgenceWindow_Image3", events:{click:"___BuyIndulgenceWindow_Image3_click"}, propertiesFactory:function () : Object
                    {
                        return {x:555, y:145};
                    }// end function
                    })]};
                }// end function
                })]};
            }// end function
            });
            _550961674_swf_buy = new Viking.EmbedSwfButtonCommon();
            _1655845770_swf_cancel = new Viking.EmbedSwfButtonCommon();
            _1218643219_swf_close_window = new Viking.EmbedSwfButtonCloseWindow();
            _bindings = [];
            _watchers = [];
            _bindingsByDestination = {};
            _bindingsBeginWithWord = {};
            mx_internal::_document = this;
            this.width = 760;
            this.height = 560;
            this.addEventListener("creationComplete", ___BuyIndulgenceWindow_PopupWindow1_creationComplete);
            return;
        }// end function

        public function set windowLayer(param1:Canvas) : void
        {
            var _loc_2:* = this._1896677185windowLayer;
            if (_loc_2 !== param1)
            {
                this._1896677185windowLayer = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "windowLayer", _loc_2, param1));
            }
            return;
        }// end function

        private function get _swf_buy() : MovieClipLoaderAsset
        {
            return this._550961674_swf_buy;
        }// end function

        private function get _swf_cancel() : MovieClipLoaderAsset
        {
            return this._1655845770_swf_cancel;
        }// end function

        public function init(param1:PlayerVO, param2:int) : void
        {
            playerVO = param1;
            this.indulgencePrice = param2;
            maxLimit = _playerVO.gold / _indulgencePrice;
            if (maxLimit > 99)
            {
                maxLimit = 99;
            }
            if (tempNotoriety == 0)
            {
                buyBool = false;
            }
            else
            {
                buyBool = true;
            }
            afterNotoriety = tempNotoriety;
            return;
        }// end function

        public function get quantity() : int
        {
            return _quantity;
        }// end function

        private function get _swf_close_window() : MovieClipLoaderAsset
        {
            return this._1218643219_swf_close_window;
        }// end function

        override public function initialize() : void
        {
            var target:BuyIndulgenceWindow;
            var watcherSetupUtilClass:Object;
            .mx_internal::setDocumentDescriptor(_documentDescriptor_);
            var bindings:* = _BuyIndulgenceWindow_bindingsSetup();
            var watchers:Array;
            target;
            if (_watcherSetupUtil == null)
            {
                watcherSetupUtilClass = getDefinitionByName("_com_kbmj_viking_view_city_BuyIndulgenceWindowWatcherSetupUtil");
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

        private function set _swf_cancel(param1:MovieClipLoaderAsset) : void
        {
            var _loc_2:* = this._1655845770_swf_cancel;
            if (_loc_2 !== param1)
            {
                this._1655845770_swf_cancel = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "_swf_cancel", _loc_2, param1));
            }
            return;
        }// end function

        private function set _swf_buy(param1:MovieClipLoaderAsset) : void
        {
            var _loc_2:* = this._550961674_swf_buy;
            if (_loc_2 !== param1)
            {
                this._550961674_swf_buy = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "_swf_buy", _loc_2, param1));
            }
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

        private function get afterNotoriety() : int
        {
            return this._1805870309afterNotoriety;
        }// end function

        public function __numStepper_change(event:NumericStepperEvent) : void
        {
            calcSumGold();
            return;
        }// end function

        private function onBuy() : void
        {
            _quantity = numStepper.value;
            if (numStepper.value == 0)
            {
                onAlert("個数を入力して下さい。");
            }
            else if (!buyBool)
            {
                onAlert("悪名値が0なので、免罪符を購入出来ません。");
            }
            else
            {
                dispatchEvent(new Event(BUY_INDULGENCE));
                close();
            }
            MovieClip(Loader(_swf_buy.getChildAt(0)).content).gotoAndPlay(0);
            MovieClip(Loader(_swf_buy.getChildAt(0)).content).gotoAndPlay("button_buy");
            return;
        }// end function

        public function ___BuyIndulgenceWindow_Image1_click(event:MouseEvent) : void
        {
            onCancel();
            return;
        }// end function

        public function ___BuyIndulgenceWindow_Image3_click(event:MouseEvent) : void
        {
            onCancel();
            return;
        }// end function

        private function get _indulgencePrice() : int
        {
            return this._1366045266_indulgencePrice;
        }// end function

        public function set playerVO(param1:PlayerVO) : void
        {
            _playerVO = param1;
            return;
        }// end function

        private function set _swf_close_window(param1:MovieClipLoaderAsset) : void
        {
            var _loc_2:* = this._1218643219_swf_close_window;
            if (_loc_2 !== param1)
            {
                this._1218643219_swf_close_window = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "_swf_close_window", _loc_2, param1));
            }
            return;
        }// end function

        private function calcSumGold() : void
        {
            sumGold = numStepper.value * _indulgencePrice;
            var _loc_1:* = tempNotoriety;
            _loc_1 = _loc_1 - numStepper.value * 10;
            if (_loc_1 < 0)
            {
                _loc_1 = 0;
            }
            afterNotoriety = _loc_1;
            return;
        }// end function

        private function get maxLimit() : int
        {
            return this._390231223maxLimit;
        }// end function

        private function onCancel() : void
        {
            numStepper.value = 0;
            close();
            MovieClip(Loader(_swf_cancel.getChildAt(0)).content).gotoAndPlay(0);
            MovieClip(Loader(_swf_cancel.getChildAt(0)).content).gotoAndPlay("button_cancel");
            MovieClip(Loader(_swf_close_window.getChildAt(0)).content).gotoAndPlay(1);
            return;
        }// end function

        private function onAlert(param1:String) : void
        {
            var _loc_2:* = AlertWindow.show(param1);
            popupWindow(_loc_2, false);
            return;
        }// end function

        private function get _playerVO() : PlayerVO
        {
            return this._1969791673_playerVO;
        }// end function

        public function get windowLayer() : Canvas
        {
            return this._1896677185windowLayer;
        }// end function

        public function get indulgenceCanvas() : Canvas
        {
            return this._499155764indulgenceCanvas;
        }// end function

        private function _BuyIndulgenceWindow_bindingExprs() : void
        {
            var _loc_1:* = undefined;
            _loc_1 = maxLimit;
            _loc_1 = "購入額：" + sumGold;
            _loc_1 = _swf_cancel;
            _loc_1 = _swf_buy;
            _loc_1 = _swf_close_window;
            return;
        }// end function

        private function get sumGold() : int
        {
            return this._1858759349sumGold;
        }// end function

        public function ___BuyIndulgenceWindow_PopupWindow1_creationComplete(event:FlexEvent) : void
        {
            setup();
            return;
        }// end function

        public function set indulgencePrice(param1:int) : void
        {
            _indulgencePrice = param1;
            return;
        }// end function

        private function set _indulgencePrice(param1:int) : void
        {
            var _loc_2:* = this._1366045266_indulgencePrice;
            if (_loc_2 !== param1)
            {
                this._1366045266_indulgencePrice = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "_indulgencePrice", _loc_2, param1));
            }
            return;
        }// end function

        private function _BuyIndulgenceWindow_bindingsSetup() : Array
        {
            var binding:Binding;
            var result:Array;
            binding = new Binding(this, function () : Number
            {
                return maxLimit;
            }// end function
            , function (param1:Number) : void
            {
                numStepper.maximum = param1;
                return;
            }// end function
            , "numStepper.maximum");
            result[0] = binding;
            binding = new Binding(this, function () : String
            {
                var _loc_1:* = "購入額：" + sumGold;
                var _loc_2:* = _loc_1 == undefined ? (null) : (String(_loc_1));
                return _loc_2;
            }// end function
            , function (param1:String) : void
            {
                _BuyIndulgenceWindow_Text1.text = param1;
                return;
            }// end function
            , "_BuyIndulgenceWindow_Text1.text");
            result[1] = binding;
            binding = new Binding(this, function () : Object
            {
                return _swf_cancel;
            }// end function
            , function (param1:Object) : void
            {
                _BuyIndulgenceWindow_Image1.source = param1;
                return;
            }// end function
            , "_BuyIndulgenceWindow_Image1.source");
            result[2] = binding;
            binding = new Binding(this, function () : Object
            {
                return _swf_buy;
            }// end function
            , function (param1:Object) : void
            {
                _BuyIndulgenceWindow_Image2.source = param1;
                return;
            }// end function
            , "_BuyIndulgenceWindow_Image2.source");
            result[3] = binding;
            binding = new Binding(this, function () : Object
            {
                return _swf_close_window;
            }// end function
            , function (param1:Object) : void
            {
                _BuyIndulgenceWindow_Image3.source = param1;
                return;
            }// end function
            , "_BuyIndulgenceWindow_Image3.source");
            result[4] = binding;
            return result;
        }// end function

        public function set indulgenceCanvas(param1:Canvas) : void
        {
            var _loc_2:* = this._499155764indulgenceCanvas;
            if (_loc_2 !== param1)
            {
                this._499155764indulgenceCanvas = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "indulgenceCanvas", _loc_2, param1));
            }
            return;
        }// end function

        public function get numStepper() : NumericStepper
        {
            return this._401559445numStepper;
        }// end function

        public function get indulgencePrice() : int
        {
            return _indulgencePrice;
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

        private function set afterNotoriety(param1:int) : void
        {
            var _loc_2:* = this._1805870309afterNotoriety;
            if (_loc_2 !== param1)
            {
                this._1805870309afterNotoriety = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "afterNotoriety", _loc_2, param1));
            }
            return;
        }// end function

        private function set _playerVO(param1:PlayerVO) : void
        {
            var _loc_2:* = this._1969791673_playerVO;
            if (_loc_2 !== param1)
            {
                this._1969791673_playerVO = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "_playerVO", _loc_2, param1));
            }
            return;
        }// end function

        private function set maxLimit(param1:int) : void
        {
            var _loc_2:* = this._390231223maxLimit;
            if (_loc_2 !== param1)
            {
                this._390231223maxLimit = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "maxLimit", _loc_2, param1));
            }
            return;
        }// end function

        private function close() : void
        {
            dispatchEvent(new Event(CLOSE_BUY_INDULGENCE));
            onClose();
            return;
        }// end function

        public function ___BuyIndulgenceWindow_Image2_click(event:MouseEvent) : void
        {
            onBuy();
            return;
        }// end function

        private function setup() : void
        {
            MovieClip(Loader(_swf_buy.getChildAt(0)).content).gotoAndPlay("button_buy");
            MovieClip(Loader(_swf_cancel.getChildAt(0)).content).gotoAndPlay("button_cancel");
            return;
        }// end function

        public static function set watcherSetupUtil(param1:IWatcherSetupUtil) : void
        {
            _watcherSetupUtil = param1;
            return;
        }// end function

    }
}
