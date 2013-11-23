package com.kbmj.viking.view.city
{
    import flash.events.*;
    import flash.utils.*;
    import mx.binding.*;
    import mx.controls.*;
    import mx.core.*;
    import mx.events.*;
    import mx.styles.*;

    public class BuyTradeGoodsSearchWindow_inlineComponent1 extends Button implements IBindingClient
    {
        private var _embed_mxml__images_city_market_btn_search_off_png_2017431817:Class;
        private var _embed_mxml__images_city_market_btn_search_on_png_691508407:Class;
        private var _embed_mxml__images_city_market_btn_search_disabled_png_874993075:Class;
        var _bindingsBeginWithWord:Object;
        var _bindingsByDestination:Object;
        var _bindings:Array;
        var _watchers:Array;
        private var _88844982outerDocument:BuyTradeGoodsSearchWindow;
        private static var _watcherSetupUtil:IWatcherSetupUtil;

        public function BuyTradeGoodsSearchWindow_inlineComponent1()
        {
            _embed_mxml__images_city_market_btn_search_disabled_png_874993075 = BuyTradeGoodsSearchWindow_inlineComponent1__embed_mxml__images_city_market_btn_search_disabled_png_874993075;
            _embed_mxml__images_city_market_btn_search_off_png_2017431817 = BuyTradeGoodsSearchWindow_inlineComponent1__embed_mxml__images_city_market_btn_search_off_png_2017431817;
            _embed_mxml__images_city_market_btn_search_on_png_691508407 = BuyTradeGoodsSearchWindow_inlineComponent1__embed_mxml__images_city_market_btn_search_on_png_691508407;
            _bindings = [];
            _watchers = [];
            _bindingsByDestination = {};
            _bindingsBeginWithWord = {};
            if (!this.styleDeclaration)
            {
                this.styleDeclaration = new CSSStyleDeclaration();
            }
            this.styleDeclaration.defaultFactory = function () : void
            {
                this.upSkin = _embed_mxml__images_city_market_btn_search_off_png_2017431817;
                this.overSkin = _embed_mxml__images_city_market_btn_search_on_png_691508407;
                this.downSkin = _embed_mxml__images_city_market_btn_search_off_png_2017431817;
                this.disabledSkin = _embed_mxml__images_city_market_btn_search_disabled_png_874993075;
                return;
            }// end function
            ;
            this.label = "";
            this.buttonMode = true;
            this.addEventListener("click", ___BuyTradeGoodsSearchWindow_inlineComponent1_Button1_click);
            return;
        }// end function

        public function ___BuyTradeGoodsSearchWindow_inlineComponent1_Button1_click(event:MouseEvent) : void
        {
            outerDocument.onClickSearch(data);
            return;
        }// end function

        public function get outerDocument() : BuyTradeGoodsSearchWindow
        {
            return this._88844982outerDocument;
        }// end function

        private function _BuyTradeGoodsSearchWindow_inlineComponent1_bindingsSetup() : Array
        {
            var binding:Binding;
            var result:Array;
            binding = new Binding(this, function () : Boolean
            {
                return outerDocument.buttonDisable(data);
            }// end function
            , function (param1:Boolean) : void
            {
                this.enabled = param1;
                return;
            }// end function
            , "this.enabled");
            result[0] = binding;
            return result;
        }// end function

        override public function initialize() : void
        {
            var target:BuyTradeGoodsSearchWindow_inlineComponent1;
            var watcherSetupUtilClass:Object;
            var bindings:* = _BuyTradeGoodsSearchWindow_inlineComponent1_bindingsSetup();
            var watchers:Array;
            target;
            if (_watcherSetupUtil == null)
            {
                watcherSetupUtilClass = getDefinitionByName("_com_kbmj_viking_view_city_BuyTradeGoodsSearchWindow_inlineComponent1WatcherSetupUtil");
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

        public function set outerDocument(param1:BuyTradeGoodsSearchWindow) : void
        {
            var _loc_2:* = this._88844982outerDocument;
            if (_loc_2 !== param1)
            {
                this._88844982outerDocument = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "outerDocument", _loc_2, param1));
            }
            return;
        }// end function

        private function _BuyTradeGoodsSearchWindow_inlineComponent1_bindingExprs() : void
        {
            var _loc_1:* = undefined;
            _loc_1 = outerDocument.buttonDisable(data);
            return;
        }// end function

        public static function set watcherSetupUtil(param1:IWatcherSetupUtil) : void
        {
            BuyTradeGoodsSearchWindow_inlineComponent1._watcherSetupUtil = param1;
            return;
        }// end function

    }
}
