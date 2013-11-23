package com.kbmj.viking.view.city
{
    import com.kbmj.viking.lib.*;
    import com.kbmj.viking.view.*;
    import flash.display.*;
    import flash.events.*;
    import flash.utils.*;
    import mx.binding.*;
    import mx.containers.*;
    import mx.controls.*;
    import mx.controls.dataGridClasses.*;
    import mx.core.*;
    import mx.events.*;

    public class MarketConfirmWindow extends PopupWindow implements IBindingClient
    {
        private var _1385845498sellPriceRenderer:ClassFactory;
        private var create:Boolean = false;
        private var _1987800014_swf_stack2_yes:MovieClipLoaderAsset;
        private var _1075873300_swf_window:MovieClipLoaderAsset;
        public var _MarketConfirmWindow_DataGridColumn1:DataGridColumn;
        public var _MarketConfirmWindow_DataGridColumn2:DataGridColumn;
        public var _MarketConfirmWindow_DataGridColumn3:DataGridColumn;
        public var _MarketConfirmWindow_DataGridColumn4:DataGridColumn;
        public var _MarketConfirmWindow_DataGridColumn5:DataGridColumn;
        public var _MarketConfirmWindow_DataGridColumn6:DataGridColumn;
        private var _1692215791_buyData:Object;
        private var _1988723535_swf_stack3_yes:MovieClipLoaderAsset;
        private var _156601162topComment:String;
        private var _695266936_commodityData:Object;
        private var _1515217565_swf_stack0_close:MovieClipLoaderAsset;
        var _bindingsByDestination:Object;
        public var _MarketConfirmWindow_DataGrid1:DataGrid;
        public var _MarketConfirmWindow_DataGrid2:DataGrid;
        private var _351519750_swf_stack2_no:MovieClipLoaderAsset;
        private var _1218643219_swf_close_window:MovieClipLoaderAsset;
        public var _MarketConfirmWindow_Image10:Image;
        public var _MarketConfirmWindow_Image11:Image;
        private var _492805169ViewStackIndex:int;
        private var _47993916_buyDataName:String;
        private var _1188271035_sellPriceHeader:String;
        private var _311425094buyPriceRenderer:ClassFactory;
        var _watchers:Array;
        private var _351549541_swf_stack1_no:MovieClipLoaderAsset;
        private var _1986876493_swf_stack1_yes:MovieClipLoaderAsset;
        private var _535694575_buyPriceHeader:String;
        public var _MarketConfirmWindow_Image2:Image;
        public var _MarketConfirmWindow_Image3:Image;
        public var _MarketConfirmWindow_Image4:Image;
        public var _MarketConfirmWindow_Image5:Image;
        public var _MarketConfirmWindow_Image6:Image;
        public var _MarketConfirmWindow_Image7:Image;
        public var _MarketConfirmWindow_Image1:Image;
        public var _MarketConfirmWindow_Image9:Image;
        var _bindingsBeginWithWord:Object;
        private var _84277Top:Text;
        public var _MarketConfirmWindow_Image8:Image;
        public var _MarketConfirmWindow_Text2:Text;
        public var _MarketConfirmWindow_Text3:Text;
        public var _MarketConfirmWindow_Text4:Text;
        public var _MarketConfirmWindow_Text5:Text;
        public var _MarketConfirmWindow_Text6:Text;
        public var _MarketConfirmWindow_Text8:Text;
        private var _1818050667_materialDumpCount:int;
        public var _MarketConfirmWindow_Text7:Text;
        var _bindings:Array;
        private var _486222035windowViewStack:ViewStack;
        public var _MarketConfirmWindow_Text9:Text;
        private var _leyLine:Boolean = false;
        private var _documentDescriptor_:UIComponentDescriptor;
        private var _351489959_swf_stack3_no:MovieClipLoaderAsset;
        private var _220552972nameLabelRenderer:ClassFactory;
        private var _materialMax:Boolean = false;
        public static const EXHIBIT_CANCEL:String = NAME + "/exhibitCancel";
        private static const WINDOW_X:int = 180;
        private static const WINDOW_Y:int = 145;
        private static const BUTTON_X:int = 325;
        private static const BUTTON_Y:int = 365;
        private static var _watcherSetupUtil:IWatcherSetupUtil;
        public static const BUY_TRADE_GOODS:String = NAME + "/buyTradeGoods";
        public static const NAME:String = "MarketConfirmWindow";
        private static const WINDOW_HT:int = 270;
        private static const WINDOW_WD:int = 400;

        public function MarketConfirmWindow()
        {
            _documentDescriptor_ = new UIComponentDescriptor({type:PopupWindow, propertiesFactory:function () : Object
            {
                return {width:760, height:560, childDescriptors:[new UIComponentDescriptor({type:Image, id:"_MarketConfirmWindow_Image1"}), new UIComponentDescriptor({type:Text, id:"Top", stylesFactory:function () : void
                {
                    this.fontSize = 14;
                    return;
                }// end function
                }), new UIComponentDescriptor({type:ViewStack, id:"windowViewStack", propertiesFactory:function () : Object
                {
                    return {childDescriptors:[new UIComponentDescriptor({type:Canvas, propertiesFactory:function () : Object
                    {
                        return {childDescriptors:[new UIComponentDescriptor({type:Text, id:"_MarketConfirmWindow_Text2", propertiesFactory:function () : Object
                        {
                            return {styleName:"DealTitle"};
                        }// end function
                        }), new UIComponentDescriptor({type:Image, id:"_MarketConfirmWindow_Image2", events:{click:"___MarketConfirmWindow_Image2_click"}})]};
                    }// end function
                    }), new UIComponentDescriptor({type:Canvas, propertiesFactory:function () : Object
                    {
                        return {childDescriptors:[new UIComponentDescriptor({type:Text, id:"_MarketConfirmWindow_Text3", propertiesFactory:function () : Object
                        {
                            return {styleName:"DealTitle"};
                        }// end function
                        }), new UIComponentDescriptor({type:DataGrid, id:"_MarketConfirmWindow_DataGrid1", propertiesFactory:function () : Object
                        {
                            return {rowHeight:30, rowCount:1, styleName:"DataGridBase", sortableColumns:false, columns:[_MarketConfirmWindow_DataGridColumn1_i(), _MarketConfirmWindow_DataGridColumn2_i(), _MarketConfirmWindow_DataGridColumn3_i()]};
                        }// end function
                        }), new UIComponentDescriptor({type:Text, id:"_MarketConfirmWindow_Text4", stylesFactory:function () : void
                        {
                            this.fontSize = 12;
                            return;
                        }// end function
                        }), new UIComponentDescriptor({type:Image, id:"_MarketConfirmWindow_Image3", events:{click:"___MarketConfirmWindow_Image3_click"}}), new UIComponentDescriptor({type:Image, id:"_MarketConfirmWindow_Image4", events:{click:"___MarketConfirmWindow_Image4_click"}})]};
                    }// end function
                    }), new UIComponentDescriptor({type:Canvas, propertiesFactory:function () : Object
                    {
                        return {childDescriptors:[new UIComponentDescriptor({type:Text, id:"_MarketConfirmWindow_Text5", propertiesFactory:function () : Object
                        {
                            return {styleName:"DealTitle"};
                        }// end function
                        }), new UIComponentDescriptor({type:Text, id:"_MarketConfirmWindow_Text6", stylesFactory:function () : void
                        {
                            this.fontSize = 12;
                            return;
                        }// end function
                        }), new UIComponentDescriptor({type:Image, id:"_MarketConfirmWindow_Image5", events:{click:"___MarketConfirmWindow_Image5_click"}}), new UIComponentDescriptor({type:Image, id:"_MarketConfirmWindow_Image6", events:{click:"___MarketConfirmWindow_Image6_click"}})]};
                    }// end function
                    }), new UIComponentDescriptor({type:Canvas, propertiesFactory:function () : Object
                    {
                        return {childDescriptors:[new UIComponentDescriptor({type:Text, id:"_MarketConfirmWindow_Text7", propertiesFactory:function () : Object
                        {
                            return {styleName:"DealTitle"};
                        }// end function
                        }), new UIComponentDescriptor({type:DataGrid, id:"_MarketConfirmWindow_DataGrid2", propertiesFactory:function () : Object
                        {
                            return {rowHeight:30, rowCount:1, styleName:"DataGridBase", sortableColumns:false, columns:[_MarketConfirmWindow_DataGridColumn4_i(), _MarketConfirmWindow_DataGridColumn5_i(), _MarketConfirmWindow_DataGridColumn6_i()]};
                        }// end function
                        }), new UIComponentDescriptor({type:Image, id:"_MarketConfirmWindow_Image7", events:{click:"___MarketConfirmWindow_Image7_click"}}), new UIComponentDescriptor({type:Image, id:"_MarketConfirmWindow_Image8", events:{click:"___MarketConfirmWindow_Image8_click"}})]};
                    }// end function
                    }), new UIComponentDescriptor({type:Canvas, propertiesFactory:function () : Object
                    {
                        return {childDescriptors:[new UIComponentDescriptor({type:Text, id:"_MarketConfirmWindow_Text8", propertiesFactory:function () : Object
                        {
                            return {styleName:"DealTitle"};
                        }// end function
                        }), new UIComponentDescriptor({type:Text, id:"_MarketConfirmWindow_Text9", stylesFactory:function () : void
                        {
                            this.fontSize = 12;
                            return;
                        }// end function
                        }), new UIComponentDescriptor({type:Image, id:"_MarketConfirmWindow_Image9", events:{click:"___MarketConfirmWindow_Image9_click"}}), new UIComponentDescriptor({type:Image, id:"_MarketConfirmWindow_Image10", events:{click:"___MarketConfirmWindow_Image10_click"}})]};
                    }// end function
                    })]};
                }// end function
                }), new UIComponentDescriptor({type:Image, id:"_MarketConfirmWindow_Image11", events:{click:"___MarketConfirmWindow_Image11_click"}})]};
            }// end function
            });
            _1075873300_swf_window = new Viking.EmbedSwfWindowCommon();
            _1515217565_swf_stack0_close = new Viking.EmbedSwfButtonCommon();
            _1986876493_swf_stack1_yes = new Viking.EmbedSwfButtonCommon();
            _351549541_swf_stack1_no = new Viking.EmbedSwfButtonCommon();
            _1987800014_swf_stack2_yes = new Viking.EmbedSwfButtonCommon();
            _351519750_swf_stack2_no = new Viking.EmbedSwfButtonCommon();
            _1988723535_swf_stack3_yes = new Viking.EmbedSwfButtonCommon();
            _351489959_swf_stack3_no = new Viking.EmbedSwfButtonCommon();
            _1218643219_swf_close_window = new Viking.EmbedSwfButtonCloseWindow();
            _bindings = [];
            _watchers = [];
            _bindingsByDestination = {};
            _bindingsBeginWithWord = {};
            mx_internal::_document = this;
            this.width = 760;
            this.height = 560;
            _MarketConfirmWindow_ClassFactory3_i();
            _MarketConfirmWindow_ClassFactory1_i();
            _MarketConfirmWindow_ClassFactory2_i();
            this.addEventListener("creationComplete", ___MarketConfirmWindow_PopupWindow1_creationComplete);
            return;
        }// end function

        public function set Top(param1:Text) : void
        {
            var _loc_2:* = this._84277Top;
            if (_loc_2 !== param1)
            {
                this._84277Top = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "Top", _loc_2, param1));
            }
            return;
        }// end function

        private function get _swf_stack2_no() : MovieClipLoaderAsset
        {
            return this._351519750_swf_stack2_no;
        }// end function

        public function ___MarketConfirmWindow_Image7_click(event:MouseEvent) : void
        {
            onBuy();
            return;
        }// end function

        public function closeWindow() : void
        {
            onClose();
            MovieClip(Loader(_swf_stack0_close.getChildAt(0)).content).gotoAndPlay(0);
            MovieClip(Loader(_swf_stack0_close.getChildAt(0)).content).gotoAndPlay("button_close");
            MovieClip(Loader(_swf_stack1_yes.getChildAt(0)).content).gotoAndPlay(0);
            MovieClip(Loader(_swf_stack1_yes.getChildAt(0)).content).gotoAndPlay("button_yes");
            MovieClip(Loader(_swf_stack1_no.getChildAt(0)).content).gotoAndPlay(0);
            MovieClip(Loader(_swf_stack1_no.getChildAt(0)).content).gotoAndPlay("button_no");
            MovieClip(Loader(_swf_stack2_yes.getChildAt(0)).content).gotoAndPlay(0);
            MovieClip(Loader(_swf_stack2_yes.getChildAt(0)).content).gotoAndPlay("button_yes");
            MovieClip(Loader(_swf_stack2_no.getChildAt(0)).content).gotoAndPlay(0);
            MovieClip(Loader(_swf_stack2_no.getChildAt(0)).content).gotoAndPlay("button_no");
            MovieClip(Loader(_swf_stack3_yes.getChildAt(0)).content).gotoAndPlay(0);
            MovieClip(Loader(_swf_stack3_yes.getChildAt(0)).content).gotoAndPlay("button_yes");
            MovieClip(Loader(_swf_stack3_no.getChildAt(0)).content).gotoAndPlay(0);
            MovieClip(Loader(_swf_stack3_no.getChildAt(0)).content).gotoAndPlay("button_no");
            MovieClip(Loader(_swf_close_window.getChildAt(0)).content).gotoAndPlay(1);
            return;
        }// end function

        public function setNameLabel(param1:Object) : String
        {
            if (param1.instanceType == "Weapon")
            {
                return param1.nameLabel + "(" + param1.endurance + ")";
            }
            return param1.nameLabel;
        }// end function

        private function set _buyPriceHeader(param1:String) : void
        {
            var _loc_2:* = this._535694575_buyPriceHeader;
            if (_loc_2 !== param1)
            {
                this._535694575_buyPriceHeader = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "_buyPriceHeader", _loc_2, param1));
            }
            return;
        }// end function

        public function get nameLabelRenderer() : ClassFactory
        {
            return this._220552972nameLabelRenderer;
        }// end function

        private function _MarketConfirmWindow_DataGridColumn4_i() : DataGridColumn
        {
            var _loc_1:* = new DataGridColumn();
            _MarketConfirmWindow_DataGridColumn4 = _loc_1;
            BindingManager.executeBindings(this, "_MarketConfirmWindow_DataGridColumn4", _MarketConfirmWindow_DataGridColumn4);
            return _loc_1;
        }// end function

        public function init(param1:String) : void
        {
            switch(param1)
            {
                case "errExhibit":
                {
                    ViewStackIndex = 0;
                    topComment = Utils.i18n("marketConfirmCanNotSell");
                    break;
                }
                case "exhibitCancel":
                {
                    ViewStackIndex = 1;
                    topComment = Utils.i18n("marketConfirmConfWithdrawal");
                    if (_materialMax)
                    {
                        ViewStackIndex = 2;
                        topComment = Utils.i18n("marketConfirmWithdrawalConfOver");
                    }
                    break;
                }
                case "buyTradeGoodsConfirm":
                {
                    if (_materialMax)
                    {
                        ViewStackIndex = 4;
                        topComment = Utils.i18n("marketConfirmBuyConfOver");
                    }
                    else
                    {
                        topComment = Utils.i18n("marketConfirmBuyConf");
                        ViewStackIndex = 3;
                    }
                    break;
                }
                case "alreadyBuy":
                {
                    ViewStackIndex = 0;
                    topComment = Utils.i18n("marketConfirmOutOfStock");
                    break;
                }
                default:
                {
                    break;
                }
            }
            if (create)
            {
                windowViewStack.selectedIndex = ViewStackIndex;
            }
            return;
        }// end function

        public function getSellPriceLabel(param1:Object) : String
        {
            if (_leyLine)
            {
                return param1.price + " + " + int(param1.price * 0.05);
            }
            return String(param1.price);
        }// end function

        private function _MarketConfirmWindow_DataGridColumn5_i() : DataGridColumn
        {
            var _loc_1:* = new DataGridColumn();
            _MarketConfirmWindow_DataGridColumn5 = _loc_1;
            _loc_1.dataField = "quantity";
            _loc_1.width = 60;
            _loc_1.setStyle("textAlign", "center");
            BindingManager.executeBindings(this, "_MarketConfirmWindow_DataGridColumn5", _MarketConfirmWindow_DataGridColumn5);
            return _loc_1;
        }// end function

        public function set nameLabelRenderer(param1:ClassFactory) : void
        {
            var _loc_2:* = this._220552972nameLabelRenderer;
            if (_loc_2 !== param1)
            {
                this._220552972nameLabelRenderer = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "nameLabelRenderer", _loc_2, param1));
            }
            return;
        }// end function

        private function set _commodityData(param1:Object) : void
        {
            var _loc_2:* = this._695266936_commodityData;
            if (_loc_2 !== param1)
            {
                this._695266936_commodityData = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "_commodityData", _loc_2, param1));
            }
            return;
        }// end function

        private function get _buyData() : Object
        {
            return this._1692215791_buyData;
        }// end function

        public function set materialDumpCount(param1:int) : void
        {
            _materialDumpCount = param1;
            return;
        }// end function

        private function set _materialDumpCount(param1:int) : void
        {
            var _loc_2:* = this._1818050667_materialDumpCount;
            if (_loc_2 !== param1)
            {
                this._1818050667_materialDumpCount = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "_materialDumpCount", _loc_2, param1));
            }
            return;
        }// end function

        private function get _swf_close_window() : MovieClipLoaderAsset
        {
            return this._1218643219_swf_close_window;
        }// end function

        public function ___MarketConfirmWindow_Image4_click(event:MouseEvent) : void
        {
            closeWindow();
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

        private function onBuy() : void
        {
            closeWindow();
            dispatchEvent(new Event(BUY_TRADE_GOODS));
            return;
        }// end function

        private function set _buyData(param1:Object) : void
        {
            var _loc_2:* = this._1692215791_buyData;
            if (_loc_2 !== param1)
            {
                this._1692215791_buyData = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "_buyData", _loc_2, param1));
            }
            return;
        }// end function

        public function ___MarketConfirmWindow_Image11_click(event:MouseEvent) : void
        {
            closeWindow();
            return;
        }// end function

        private function set _swf_stack1_no(param1:MovieClipLoaderAsset) : void
        {
            var _loc_2:* = this._351549541_swf_stack1_no;
            if (_loc_2 !== param1)
            {
                this._351549541_swf_stack1_no = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "_swf_stack1_no", _loc_2, param1));
            }
            return;
        }// end function

        public function ___MarketConfirmWindow_Image8_click(event:MouseEvent) : void
        {
            closeWindow();
            return;
        }// end function

        private function onComplete() : void
        {
            windowViewStack.selectedIndex = ViewStackIndex;
            create = true;
            MovieClip(Loader(_swf_window.getChildAt(0)).content).gotoAndPlay("center_400x270");
            MovieClip(Loader(_swf_stack0_close.getChildAt(0)).content).gotoAndPlay("button_close");
            MovieClip(Loader(_swf_stack1_yes.getChildAt(0)).content).gotoAndPlay("button_yes");
            MovieClip(Loader(_swf_stack1_no.getChildAt(0)).content).gotoAndPlay("button_no");
            MovieClip(Loader(_swf_stack2_yes.getChildAt(0)).content).gotoAndPlay("button_yes");
            MovieClip(Loader(_swf_stack2_no.getChildAt(0)).content).gotoAndPlay("button_no");
            MovieClip(Loader(_swf_stack3_yes.getChildAt(0)).content).gotoAndPlay("button_yes");
            MovieClip(Loader(_swf_stack3_no.getChildAt(0)).content).gotoAndPlay("button_no");
            return;
        }// end function

        public function get Top() : Text
        {
            return this._84277Top;
        }// end function

        private function get _buyDataName() : String
        {
            return this._47993916_buyDataName;
        }// end function

        private function get _sellPriceHeader() : String
        {
            return this._1188271035_sellPriceHeader;
        }// end function

        private function set _swf_stack0_close(param1:MovieClipLoaderAsset) : void
        {
            var _loc_2:* = this._1515217565_swf_stack0_close;
            if (_loc_2 !== param1)
            {
                this._1515217565_swf_stack0_close = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "_swf_stack0_close", _loc_2, param1));
            }
            return;
        }// end function

        private function get _swf_stack3_yes() : MovieClipLoaderAsset
        {
            return this._1988723535_swf_stack3_yes;
        }// end function

        private function get ViewStackIndex() : int
        {
            return this._492805169ViewStackIndex;
        }// end function

        private function _MarketConfirmWindow_DataGridColumn3_i() : DataGridColumn
        {
            var _loc_1:* = new DataGridColumn();
            _MarketConfirmWindow_DataGridColumn3 = _loc_1;
            _loc_1.width = 110;
            _loc_1.setStyle("textAlign", "center");
            BindingManager.executeBindings(this, "_MarketConfirmWindow_DataGridColumn3", _MarketConfirmWindow_DataGridColumn3);
            return _loc_1;
        }// end function

        public function get buyPriceRenderer() : ClassFactory
        {
            return this._311425094buyPriceRenderer;
        }// end function

        private function get _swf_stack3_no() : MovieClipLoaderAsset
        {
            return this._351489959_swf_stack3_no;
        }// end function

        private function get _swf_stack1_yes() : MovieClipLoaderAsset
        {
            return this._1986876493_swf_stack1_yes;
        }// end function

        private function _MarketConfirmWindow_ClassFactory3_i() : ClassFactory
        {
            var _loc_1:* = new ClassFactory();
            buyPriceRenderer = _loc_1;
            _loc_1.generator = MarketConfirmWindow_inlineComponent3;
            _loc_1.properties = {outerDocument:this};
            return _loc_1;
        }// end function

        public function set leyLine(param1:Boolean) : void
        {
            var _loc_2:* = param1;
            _leyLine = param1;
            if (_loc_2)
            {
                _sellPriceHeader = Utils.i18n("marketConfirmPriceUp");
                _buyPriceHeader = Utils.i18n("buyTradeGoodsPriceOff");
            }
            else
            {
                var _loc_2:* = Utils.i18n("buyTradeGoodsPrice");
                _buyPriceHeader = Utils.i18n("buyTradeGoodsPrice");
                _sellPriceHeader = _loc_2;
            }
            return;
        }// end function

        private function get topComment() : String
        {
            return this._156601162topComment;
        }// end function

        public function ___MarketConfirmWindow_Image5_click(event:MouseEvent) : void
        {
            onExhibitCancel();
            return;
        }// end function

        private function get _buyPriceHeader() : String
        {
            return this._535694575_buyPriceHeader;
        }// end function

        public function ___MarketConfirmWindow_Image9_click(event:MouseEvent) : void
        {
            onBuy();
            return;
        }// end function

        public function set materialMax(param1:Boolean) : void
        {
            _materialMax = param1;
            return;
        }// end function

        private function get _commodityData() : Object
        {
            return this._695266936_commodityData;
        }// end function

        private function _MarketConfirmWindow_bindingExprs() : void
        {
            var _loc_1:* = undefined;
            _loc_1 = _swf_window;
            _loc_1 = topComment;
            _loc_1 = WINDOW_X + 20;
            _loc_1 = WINDOW_Y + 35;
            _loc_1 = WINDOW_WD;
            _loc_1 = ViewStackIndex;
            _loc_1 = WINDOW_X;
            _loc_1 = WINDOW_Y;
            _loc_1 = WINDOW_WD;
            _loc_1 = Utils.i18n("generalConfirmation");
            _loc_1 = BUTTON_X;
            _loc_1 = BUTTON_Y;
            _loc_1 = _swf_stack0_close;
            _loc_1 = WINDOW_X;
            _loc_1 = WINDOW_Y;
            _loc_1 = WINDOW_WD;
            _loc_1 = Utils.i18n("marketConfirmWithdrawal");
            _loc_1 = WINDOW_X + 20;
            _loc_1 = WINDOW_Y + 35 + 30;
            _loc_1 = _commodityData;
            _loc_1 = WINDOW_WD - 40;
            _loc_1 = Utils.i18n("generalName");
            _loc_1 = nameLabelRenderer;
            _loc_1 = Utils.i18n("generalQuantity");
            _loc_1 = sellPriceRenderer;
            _loc_1 = _sellPriceHeader;
            _loc_1 = WINDOW_X + 20;
            _loc_1 = WINDOW_Y + 35 + 100;
            _loc_1 = Utils.i18n("marketConfirmNoCommission");
            _loc_1 = BUTTON_X - 65;
            _loc_1 = BUTTON_Y;
            _loc_1 = _swf_stack1_yes;
            _loc_1 = BUTTON_X + 65;
            _loc_1 = BUTTON_Y;
            _loc_1 = _swf_stack1_no;
            _loc_1 = WINDOW_X;
            _loc_1 = WINDOW_Y;
            _loc_1 = WINDOW_WD;
            _loc_1 = Utils.i18n("marketConfirmWithdrawal");
            _loc_1 = WINDOW_X + 20;
            _loc_1 = WINDOW_Y + 35 + 100;
            _loc_1 = Utils.i18n("marketConfirmDestruction", _commodityData.nameLabel, _materialDumpCount);
            _loc_1 = BUTTON_X - 65;
            _loc_1 = BUTTON_Y;
            _loc_1 = _swf_stack3_yes;
            _loc_1 = BUTTON_X + 65;
            _loc_1 = BUTTON_Y;
            _loc_1 = _swf_stack3_no;
            _loc_1 = WINDOW_X;
            _loc_1 = WINDOW_Y;
            _loc_1 = WINDOW_WD;
            _loc_1 = Utils.i18n("marketConfirmBuy");
            _loc_1 = WINDOW_X + 20;
            _loc_1 = WINDOW_Y + 35 + 60;
            _loc_1 = _buyData;
            _loc_1 = WINDOW_WD - 40;
            _loc_1 = Utils.i18n("generalName");
            _loc_1 = nameLabelRenderer;
            _loc_1 = Utils.i18n("generalQuantity");
            _loc_1 = buyPriceRenderer;
            _loc_1 = _buyPriceHeader;
            _loc_1 = BUTTON_X - 65;
            _loc_1 = BUTTON_Y;
            _loc_1 = _swf_stack2_yes;
            _loc_1 = BUTTON_X + 65;
            _loc_1 = BUTTON_Y;
            _loc_1 = _swf_stack2_no;
            _loc_1 = WINDOW_X;
            _loc_1 = WINDOW_Y;
            _loc_1 = WINDOW_WD;
            _loc_1 = Utils.i18n("generalConfirmation");
            _loc_1 = WINDOW_X + 20;
            _loc_1 = WINDOW_Y + 35 + 100;
            _loc_1 = Utils.i18n("marketConfirmDestruction", _buyDataName, _materialDumpCount);
            _loc_1 = BUTTON_X - 65;
            _loc_1 = BUTTON_Y;
            _loc_1 = _swf_stack2_yes;
            _loc_1 = BUTTON_X + 65;
            _loc_1 = BUTTON_Y;
            _loc_1 = _swf_stack2_no;
            _loc_1 = WINDOW_X + WINDOW_WD - 25;
            _loc_1 = WINDOW_Y;
            _loc_1 = _swf_close_window;
            return;
        }// end function

        public function ___MarketConfirmWindow_PopupWindow1_creationComplete(event:FlexEvent) : void
        {
            onComplete();
            return;
        }// end function

        private function set _buyDataName(param1:String) : void
        {
            var _loc_2:* = this._47993916_buyDataName;
            if (_loc_2 !== param1)
            {
                this._47993916_buyDataName = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "_buyDataName", _loc_2, param1));
            }
            return;
        }// end function

        private function _MarketConfirmWindow_DataGridColumn2_i() : DataGridColumn
        {
            var _loc_1:* = new DataGridColumn();
            _MarketConfirmWindow_DataGridColumn2 = _loc_1;
            _loc_1.dataField = "quantity";
            _loc_1.width = 60;
            _loc_1.setStyle("textAlign", "center");
            BindingManager.executeBindings(this, "_MarketConfirmWindow_DataGridColumn2", _MarketConfirmWindow_DataGridColumn2);
            return _loc_1;
        }// end function

        override public function initialize() : void
        {
            var target:MarketConfirmWindow;
            var watcherSetupUtilClass:Object;
            .mx_internal::setDocumentDescriptor(_documentDescriptor_);
            var bindings:* = _MarketConfirmWindow_bindingsSetup();
            var watchers:Array;
            target;
            if (_watcherSetupUtil == null)
            {
                watcherSetupUtilClass = getDefinitionByName("_com_kbmj_viking_view_city_MarketConfirmWindowWatcherSetupUtil");
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

        private function set _sellPriceHeader(param1:String) : void
        {
            var _loc_2:* = this._1188271035_sellPriceHeader;
            if (_loc_2 !== param1)
            {
                this._1188271035_sellPriceHeader = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "_sellPriceHeader", _loc_2, param1));
            }
            return;
        }// end function

        private function set _swf_stack1_yes(param1:MovieClipLoaderAsset) : void
        {
            var _loc_2:* = this._1986876493_swf_stack1_yes;
            if (_loc_2 !== param1)
            {
                this._1986876493_swf_stack1_yes = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "_swf_stack1_yes", _loc_2, param1));
            }
            return;
        }// end function

        public function getBuyPriceLabel(param1:Object) : int
        {
            var _loc_2:int = 0;
            if (_leyLine)
            {
                _loc_2 = param1.price - int(param1.price * 0.05);
                return _loc_2 >= 1 ? (_loc_2) : (1);
            }
            return param1.price;
        }// end function

        private function get _swf_stack0_close() : MovieClipLoaderAsset
        {
            return this._1515217565_swf_stack0_close;
        }// end function

        private function set _swf_stack3_yes(param1:MovieClipLoaderAsset) : void
        {
            var _loc_2:* = this._1988723535_swf_stack3_yes;
            if (_loc_2 !== param1)
            {
                this._1988723535_swf_stack3_yes = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "_swf_stack3_yes", _loc_2, param1));
            }
            return;
        }// end function

        public function set buyData(param1:Object) : void
        {
            _buyData = param1;
            if (param1.hasOwnProperty("nameLabel"))
            {
                _buyDataName = param1.nameLabel;
            }
            else
            {
                _buyDataName = "";
            }
            return;
        }// end function

        private function get _swf_stack1_no() : MovieClipLoaderAsset
        {
            return this._351549541_swf_stack1_no;
        }// end function

        public function set buyPriceRenderer(param1:ClassFactory) : void
        {
            var _loc_2:* = this._311425094buyPriceRenderer;
            if (_loc_2 !== param1)
            {
                this._311425094buyPriceRenderer = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "buyPriceRenderer", _loc_2, param1));
            }
            return;
        }// end function

        private function set ViewStackIndex(param1:int) : void
        {
            var _loc_2:* = this._492805169ViewStackIndex;
            if (_loc_2 !== param1)
            {
                this._492805169ViewStackIndex = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "ViewStackIndex", _loc_2, param1));
            }
            return;
        }// end function

        public function set windowViewStack(param1:ViewStack) : void
        {
            var _loc_2:* = this._486222035windowViewStack;
            if (_loc_2 !== param1)
            {
                this._486222035windowViewStack = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "windowViewStack", _loc_2, param1));
            }
            return;
        }// end function

        private function _MarketConfirmWindow_ClassFactory2_i() : ClassFactory
        {
            var _loc_1:* = new ClassFactory();
            sellPriceRenderer = _loc_1;
            _loc_1.generator = MarketConfirmWindow_inlineComponent2;
            _loc_1.properties = {outerDocument:this};
            return _loc_1;
        }// end function

        private function _MarketConfirmWindow_DataGridColumn6_i() : DataGridColumn
        {
            var _loc_1:* = new DataGridColumn();
            _MarketConfirmWindow_DataGridColumn6 = _loc_1;
            _loc_1.width = 110;
            _loc_1.setStyle("textAlign", "center");
            BindingManager.executeBindings(this, "_MarketConfirmWindow_DataGridColumn6", _MarketConfirmWindow_DataGridColumn6);
            return _loc_1;
        }// end function

        public function ___MarketConfirmWindow_Image2_click(event:MouseEvent) : void
        {
            closeWindow();
            return;
        }// end function

        private function set _swf_stack2_yes(param1:MovieClipLoaderAsset) : void
        {
            var _loc_2:* = this._1987800014_swf_stack2_yes;
            if (_loc_2 !== param1)
            {
                this._1987800014_swf_stack2_yes = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "_swf_stack2_yes", _loc_2, param1));
            }
            return;
        }// end function

        private function set topComment(param1:String) : void
        {
            var _loc_2:* = this._156601162topComment;
            if (_loc_2 !== param1)
            {
                this._156601162topComment = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "topComment", _loc_2, param1));
            }
            return;
        }// end function

        private function get _materialDumpCount() : int
        {
            return this._1818050667_materialDumpCount;
        }// end function

        private function set _swf_stack3_no(param1:MovieClipLoaderAsset) : void
        {
            var _loc_2:* = this._351489959_swf_stack3_no;
            if (_loc_2 !== param1)
            {
                this._351489959_swf_stack3_no = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "_swf_stack3_no", _loc_2, param1));
            }
            return;
        }// end function

        public function ___MarketConfirmWindow_Image6_click(event:MouseEvent) : void
        {
            closeWindow();
            return;
        }// end function

        private function _MarketConfirmWindow_DataGridColumn1_i() : DataGridColumn
        {
            var _loc_1:* = new DataGridColumn();
            _MarketConfirmWindow_DataGridColumn1 = _loc_1;
            BindingManager.executeBindings(this, "_MarketConfirmWindow_DataGridColumn1", _MarketConfirmWindow_DataGridColumn1);
            return _loc_1;
        }// end function

        public function get windowViewStack() : ViewStack
        {
            return this._486222035windowViewStack;
        }// end function

        private function onExhibitCancel() : void
        {
            closeWindow();
            dispatchEvent(new Event(EXHIBIT_CANCEL));
            return;
        }// end function

        private function set _swf_window(param1:MovieClipLoaderAsset) : void
        {
            var _loc_2:* = this._1075873300_swf_window;
            if (_loc_2 !== param1)
            {
                this._1075873300_swf_window = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "_swf_window", _loc_2, param1));
            }
            return;
        }// end function

        public function ___MarketConfirmWindow_Image10_click(event:MouseEvent) : void
        {
            closeWindow();
            return;
        }// end function

        private function _MarketConfirmWindow_bindingsSetup() : Array
        {
            var binding:Binding;
            var result:Array;
            binding = new Binding(this, function () : Object
            {
                return _swf_window;
            }// end function
            , function (param1:Object) : void
            {
                _MarketConfirmWindow_Image1.source = param1;
                return;
            }// end function
            , "_MarketConfirmWindow_Image1.source");
            result[0] = binding;
            binding = new Binding(this, function () : String
            {
                var _loc_1:* = topComment;
                var _loc_2:* = _loc_1 == undefined ? (null) : (String(_loc_1));
                return _loc_2;
            }// end function
            , function (param1:String) : void
            {
                Top.text = param1;
                return;
            }// end function
            , "Top.text");
            result[1] = binding;
            binding = new Binding(this, function () : Number
            {
                return WINDOW_X + 20;
            }// end function
            , function (param1:Number) : void
            {
                Top.x = param1;
                return;
            }// end function
            , "Top.x");
            result[2] = binding;
            binding = new Binding(this, function () : Number
            {
                return WINDOW_Y + 35;
            }// end function
            , function (param1:Number) : void
            {
                Top.y = param1;
                return;
            }// end function
            , "Top.y");
            result[3] = binding;
            binding = new Binding(this, function () : Number
            {
                return WINDOW_WD;
            }// end function
            , function (param1:Number) : void
            {
                Top.width = param1;
                return;
            }// end function
            , "Top.width");
            result[4] = binding;
            binding = new Binding(this, function () : int
            {
                return ViewStackIndex;
            }// end function
            , function (param1:int) : void
            {
                windowViewStack.selectedIndex = param1;
                return;
            }// end function
            , "windowViewStack.selectedIndex");
            result[5] = binding;
            binding = new Binding(this, function () : Number
            {
                return WINDOW_X;
            }// end function
            , function (param1:Number) : void
            {
                _MarketConfirmWindow_Text2.x = param1;
                return;
            }// end function
            , "_MarketConfirmWindow_Text2.x");
            result[6] = binding;
            binding = new Binding(this, function () : Number
            {
                return WINDOW_Y;
            }// end function
            , function (param1:Number) : void
            {
                _MarketConfirmWindow_Text2.y = param1;
                return;
            }// end function
            , "_MarketConfirmWindow_Text2.y");
            result[7] = binding;
            binding = new Binding(this, function () : Number
            {
                return WINDOW_WD;
            }// end function
            , function (param1:Number) : void
            {
                _MarketConfirmWindow_Text2.width = param1;
                return;
            }// end function
            , "_MarketConfirmWindow_Text2.width");
            result[8] = binding;
            binding = new Binding(this, function () : String
            {
                var _loc_1:* = Utils.i18n("generalConfirmation");
                var _loc_2:* = _loc_1 == undefined ? (null) : (String(_loc_1));
                return _loc_2;
            }// end function
            , function (param1:String) : void
            {
                _MarketConfirmWindow_Text2.text = param1;
                return;
            }// end function
            , "_MarketConfirmWindow_Text2.text");
            result[9] = binding;
            binding = new Binding(this, function () : Number
            {
                return BUTTON_X;
            }// end function
            , function (param1:Number) : void
            {
                _MarketConfirmWindow_Image2.x = param1;
                return;
            }// end function
            , "_MarketConfirmWindow_Image2.x");
            result[10] = binding;
            binding = new Binding(this, function () : Number
            {
                return BUTTON_Y;
            }// end function
            , function (param1:Number) : void
            {
                _MarketConfirmWindow_Image2.y = param1;
                return;
            }// end function
            , "_MarketConfirmWindow_Image2.y");
            result[11] = binding;
            binding = new Binding(this, function () : Object
            {
                return _swf_stack0_close;
            }// end function
            , function (param1:Object) : void
            {
                _MarketConfirmWindow_Image2.source = param1;
                return;
            }// end function
            , "_MarketConfirmWindow_Image2.source");
            result[12] = binding;
            binding = new Binding(this, function () : Number
            {
                return WINDOW_X;
            }// end function
            , function (param1:Number) : void
            {
                _MarketConfirmWindow_Text3.x = param1;
                return;
            }// end function
            , "_MarketConfirmWindow_Text3.x");
            result[13] = binding;
            binding = new Binding(this, function () : Number
            {
                return WINDOW_Y;
            }// end function
            , function (param1:Number) : void
            {
                _MarketConfirmWindow_Text3.y = param1;
                return;
            }// end function
            , "_MarketConfirmWindow_Text3.y");
            result[14] = binding;
            binding = new Binding(this, function () : Number
            {
                return WINDOW_WD;
            }// end function
            , function (param1:Number) : void
            {
                _MarketConfirmWindow_Text3.width = param1;
                return;
            }// end function
            , "_MarketConfirmWindow_Text3.width");
            result[15] = binding;
            binding = new Binding(this, function () : String
            {
                var _loc_1:* = Utils.i18n("marketConfirmWithdrawal");
                var _loc_2:* = _loc_1 == undefined ? (null) : (String(_loc_1));
                return _loc_2;
            }// end function
            , function (param1:String) : void
            {
                _MarketConfirmWindow_Text3.text = param1;
                return;
            }// end function
            , "_MarketConfirmWindow_Text3.text");
            result[16] = binding;
            binding = new Binding(this, function () : Number
            {
                return WINDOW_X + 20;
            }// end function
            , function (param1:Number) : void
            {
                _MarketConfirmWindow_DataGrid1.x = param1;
                return;
            }// end function
            , "_MarketConfirmWindow_DataGrid1.x");
            result[17] = binding;
            binding = new Binding(this, function () : Number
            {
                return WINDOW_Y + 35 + 30;
            }// end function
            , function (param1:Number) : void
            {
                _MarketConfirmWindow_DataGrid1.y = param1;
                return;
            }// end function
            , "_MarketConfirmWindow_DataGrid1.y");
            result[18] = binding;
            binding = new Binding(this, function () : Object
            {
                return _commodityData;
            }// end function
            , function (param1:Object) : void
            {
                _MarketConfirmWindow_DataGrid1.dataProvider = param1;
                return;
            }// end function
            , "_MarketConfirmWindow_DataGrid1.dataProvider");
            result[19] = binding;
            binding = new Binding(this, function () : Number
            {
                return WINDOW_WD - 40;
            }// end function
            , function (param1:Number) : void
            {
                _MarketConfirmWindow_DataGrid1.width = param1;
                return;
            }// end function
            , "_MarketConfirmWindow_DataGrid1.width");
            result[20] = binding;
            binding = new Binding(this, function () : String
            {
                var _loc_1:* = Utils.i18n("generalName");
                var _loc_2:* = _loc_1 == undefined ? (null) : (String(_loc_1));
                return _loc_2;
            }// end function
            , function (param1:String) : void
            {
                _MarketConfirmWindow_DataGridColumn1.headerText = param1;
                return;
            }// end function
            , "_MarketConfirmWindow_DataGridColumn1.headerText");
            result[21] = binding;
            binding = new Binding(this, function () : IFactory
            {
                return nameLabelRenderer;
            }// end function
            , function (param1:IFactory) : void
            {
                _MarketConfirmWindow_DataGridColumn1.itemRenderer = param1;
                return;
            }// end function
            , "_MarketConfirmWindow_DataGridColumn1.itemRenderer");
            result[22] = binding;
            binding = new Binding(this, function () : String
            {
                var _loc_1:* = Utils.i18n("generalQuantity");
                var _loc_2:* = _loc_1 == undefined ? (null) : (String(_loc_1));
                return _loc_2;
            }// end function
            , function (param1:String) : void
            {
                _MarketConfirmWindow_DataGridColumn2.headerText = param1;
                return;
            }// end function
            , "_MarketConfirmWindow_DataGridColumn2.headerText");
            result[23] = binding;
            binding = new Binding(this, function () : IFactory
            {
                return sellPriceRenderer;
            }// end function
            , function (param1:IFactory) : void
            {
                _MarketConfirmWindow_DataGridColumn3.itemRenderer = param1;
                return;
            }// end function
            , "_MarketConfirmWindow_DataGridColumn3.itemRenderer");
            result[24] = binding;
            binding = new Binding(this, function () : String
            {
                var _loc_1:* = _sellPriceHeader;
                var _loc_2:* = _loc_1 == undefined ? (null) : (String(_loc_1));
                return _loc_2;
            }// end function
            , function (param1:String) : void
            {
                _MarketConfirmWindow_DataGridColumn3.headerText = param1;
                return;
            }// end function
            , "_MarketConfirmWindow_DataGridColumn3.headerText");
            result[25] = binding;
            binding = new Binding(this, function () : Number
            {
                return WINDOW_X + 20;
            }// end function
            , function (param1:Number) : void
            {
                _MarketConfirmWindow_Text4.x = param1;
                return;
            }// end function
            , "_MarketConfirmWindow_Text4.x");
            result[26] = binding;
            binding = new Binding(this, function () : Number
            {
                return WINDOW_Y + 35 + 100;
            }// end function
            , function (param1:Number) : void
            {
                _MarketConfirmWindow_Text4.y = param1;
                return;
            }// end function
            , "_MarketConfirmWindow_Text4.y");
            result[27] = binding;
            binding = new Binding(this, function () : String
            {
                var _loc_1:* = Utils.i18n("marketConfirmNoCommission");
                var _loc_2:* = _loc_1 == undefined ? (null) : (String(_loc_1));
                return _loc_2;
            }// end function
            , function (param1:String) : void
            {
                _MarketConfirmWindow_Text4.text = param1;
                return;
            }// end function
            , "_MarketConfirmWindow_Text4.text");
            result[28] = binding;
            binding = new Binding(this, function () : Number
            {
                return BUTTON_X - 65;
            }// end function
            , function (param1:Number) : void
            {
                _MarketConfirmWindow_Image3.x = param1;
                return;
            }// end function
            , "_MarketConfirmWindow_Image3.x");
            result[29] = binding;
            binding = new Binding(this, function () : Number
            {
                return BUTTON_Y;
            }// end function
            , function (param1:Number) : void
            {
                _MarketConfirmWindow_Image3.y = param1;
                return;
            }// end function
            , "_MarketConfirmWindow_Image3.y");
            result[30] = binding;
            binding = new Binding(this, function () : Object
            {
                return _swf_stack1_yes;
            }// end function
            , function (param1:Object) : void
            {
                _MarketConfirmWindow_Image3.source = param1;
                return;
            }// end function
            , "_MarketConfirmWindow_Image3.source");
            result[31] = binding;
            binding = new Binding(this, function () : Number
            {
                return BUTTON_X + 65;
            }// end function
            , function (param1:Number) : void
            {
                _MarketConfirmWindow_Image4.x = param1;
                return;
            }// end function
            , "_MarketConfirmWindow_Image4.x");
            result[32] = binding;
            binding = new Binding(this, function () : Number
            {
                return BUTTON_Y;
            }// end function
            , function (param1:Number) : void
            {
                _MarketConfirmWindow_Image4.y = param1;
                return;
            }// end function
            , "_MarketConfirmWindow_Image4.y");
            result[33] = binding;
            binding = new Binding(this, function () : Object
            {
                return _swf_stack1_no;
            }// end function
            , function (param1:Object) : void
            {
                _MarketConfirmWindow_Image4.source = param1;
                return;
            }// end function
            , "_MarketConfirmWindow_Image4.source");
            result[34] = binding;
            binding = new Binding(this, function () : Number
            {
                return WINDOW_X;
            }// end function
            , function (param1:Number) : void
            {
                _MarketConfirmWindow_Text5.x = param1;
                return;
            }// end function
            , "_MarketConfirmWindow_Text5.x");
            result[35] = binding;
            binding = new Binding(this, function () : Number
            {
                return WINDOW_Y;
            }// end function
            , function (param1:Number) : void
            {
                _MarketConfirmWindow_Text5.y = param1;
                return;
            }// end function
            , "_MarketConfirmWindow_Text5.y");
            result[36] = binding;
            binding = new Binding(this, function () : Number
            {
                return WINDOW_WD;
            }// end function
            , function (param1:Number) : void
            {
                _MarketConfirmWindow_Text5.width = param1;
                return;
            }// end function
            , "_MarketConfirmWindow_Text5.width");
            result[37] = binding;
            binding = new Binding(this, function () : String
            {
                var _loc_1:* = Utils.i18n("marketConfirmWithdrawal");
                var _loc_2:* = _loc_1 == undefined ? (null) : (String(_loc_1));
                return _loc_2;
            }// end function
            , function (param1:String) : void
            {
                _MarketConfirmWindow_Text5.text = param1;
                return;
            }// end function
            , "_MarketConfirmWindow_Text5.text");
            result[38] = binding;
            binding = new Binding(this, function () : Number
            {
                return WINDOW_X + 20;
            }// end function
            , function (param1:Number) : void
            {
                _MarketConfirmWindow_Text6.x = param1;
                return;
            }// end function
            , "_MarketConfirmWindow_Text6.x");
            result[39] = binding;
            binding = new Binding(this, function () : Number
            {
                return WINDOW_Y + 35 + 100;
            }// end function
            , function (param1:Number) : void
            {
                _MarketConfirmWindow_Text6.y = param1;
                return;
            }// end function
            , "_MarketConfirmWindow_Text6.y");
            result[40] = binding;
            binding = new Binding(this, function () : String
            {
                var _loc_1:* = Utils.i18n("marketConfirmDestruction", _commodityData.nameLabel, _materialDumpCount);
                var _loc_2:* = _loc_1 == undefined ? (null) : (String(_loc_1));
                return _loc_2;
            }// end function
            , function (param1:String) : void
            {
                _MarketConfirmWindow_Text6.text = param1;
                return;
            }// end function
            , "_MarketConfirmWindow_Text6.text");
            result[41] = binding;
            binding = new Binding(this, function () : Number
            {
                return BUTTON_X - 65;
            }// end function
            , function (param1:Number) : void
            {
                _MarketConfirmWindow_Image5.x = param1;
                return;
            }// end function
            , "_MarketConfirmWindow_Image5.x");
            result[42] = binding;
            binding = new Binding(this, function () : Number
            {
                return BUTTON_Y;
            }// end function
            , function (param1:Number) : void
            {
                _MarketConfirmWindow_Image5.y = param1;
                return;
            }// end function
            , "_MarketConfirmWindow_Image5.y");
            result[43] = binding;
            binding = new Binding(this, function () : Object
            {
                return _swf_stack3_yes;
            }// end function
            , function (param1:Object) : void
            {
                _MarketConfirmWindow_Image5.source = param1;
                return;
            }// end function
            , "_MarketConfirmWindow_Image5.source");
            result[44] = binding;
            binding = new Binding(this, function () : Number
            {
                return BUTTON_X + 65;
            }// end function
            , function (param1:Number) : void
            {
                _MarketConfirmWindow_Image6.x = param1;
                return;
            }// end function
            , "_MarketConfirmWindow_Image6.x");
            result[45] = binding;
            binding = new Binding(this, function () : Number
            {
                return BUTTON_Y;
            }// end function
            , function (param1:Number) : void
            {
                _MarketConfirmWindow_Image6.y = param1;
                return;
            }// end function
            , "_MarketConfirmWindow_Image6.y");
            result[46] = binding;
            binding = new Binding(this, function () : Object
            {
                return _swf_stack3_no;
            }// end function
            , function (param1:Object) : void
            {
                _MarketConfirmWindow_Image6.source = param1;
                return;
            }// end function
            , "_MarketConfirmWindow_Image6.source");
            result[47] = binding;
            binding = new Binding(this, function () : Number
            {
                return WINDOW_X;
            }// end function
            , function (param1:Number) : void
            {
                _MarketConfirmWindow_Text7.x = param1;
                return;
            }// end function
            , "_MarketConfirmWindow_Text7.x");
            result[48] = binding;
            binding = new Binding(this, function () : Number
            {
                return WINDOW_Y;
            }// end function
            , function (param1:Number) : void
            {
                _MarketConfirmWindow_Text7.y = param1;
                return;
            }// end function
            , "_MarketConfirmWindow_Text7.y");
            result[49] = binding;
            binding = new Binding(this, function () : Number
            {
                return WINDOW_WD;
            }// end function
            , function (param1:Number) : void
            {
                _MarketConfirmWindow_Text7.width = param1;
                return;
            }// end function
            , "_MarketConfirmWindow_Text7.width");
            result[50] = binding;
            binding = new Binding(this, function () : String
            {
                var _loc_1:* = Utils.i18n("marketConfirmBuy");
                var _loc_2:* = _loc_1 == undefined ? (null) : (String(_loc_1));
                return _loc_2;
            }// end function
            , function (param1:String) : void
            {
                _MarketConfirmWindow_Text7.text = param1;
                return;
            }// end function
            , "_MarketConfirmWindow_Text7.text");
            result[51] = binding;
            binding = new Binding(this, function () : Number
            {
                return WINDOW_X + 20;
            }// end function
            , function (param1:Number) : void
            {
                _MarketConfirmWindow_DataGrid2.x = param1;
                return;
            }// end function
            , "_MarketConfirmWindow_DataGrid2.x");
            result[52] = binding;
            binding = new Binding(this, function () : Number
            {
                return WINDOW_Y + 35 + 60;
            }// end function
            , function (param1:Number) : void
            {
                _MarketConfirmWindow_DataGrid2.y = param1;
                return;
            }// end function
            , "_MarketConfirmWindow_DataGrid2.y");
            result[53] = binding;
            binding = new Binding(this, function () : Object
            {
                return _buyData;
            }// end function
            , function (param1:Object) : void
            {
                _MarketConfirmWindow_DataGrid2.dataProvider = param1;
                return;
            }// end function
            , "_MarketConfirmWindow_DataGrid2.dataProvider");
            result[54] = binding;
            binding = new Binding(this, function () : Number
            {
                return WINDOW_WD - 40;
            }// end function
            , function (param1:Number) : void
            {
                _MarketConfirmWindow_DataGrid2.width = param1;
                return;
            }// end function
            , "_MarketConfirmWindow_DataGrid2.width");
            result[55] = binding;
            binding = new Binding(this, function () : String
            {
                var _loc_1:* = Utils.i18n("generalName");
                var _loc_2:* = _loc_1 == undefined ? (null) : (String(_loc_1));
                return _loc_2;
            }// end function
            , function (param1:String) : void
            {
                _MarketConfirmWindow_DataGridColumn4.headerText = param1;
                return;
            }// end function
            , "_MarketConfirmWindow_DataGridColumn4.headerText");
            result[56] = binding;
            binding = new Binding(this, function () : IFactory
            {
                return nameLabelRenderer;
            }// end function
            , function (param1:IFactory) : void
            {
                _MarketConfirmWindow_DataGridColumn4.itemRenderer = param1;
                return;
            }// end function
            , "_MarketConfirmWindow_DataGridColumn4.itemRenderer");
            result[57] = binding;
            binding = new Binding(this, function () : String
            {
                var _loc_1:* = Utils.i18n("generalQuantity");
                var _loc_2:* = _loc_1 == undefined ? (null) : (String(_loc_1));
                return _loc_2;
            }// end function
            , function (param1:String) : void
            {
                _MarketConfirmWindow_DataGridColumn5.headerText = param1;
                return;
            }// end function
            , "_MarketConfirmWindow_DataGridColumn5.headerText");
            result[58] = binding;
            binding = new Binding(this, function () : IFactory
            {
                return buyPriceRenderer;
            }// end function
            , function (param1:IFactory) : void
            {
                _MarketConfirmWindow_DataGridColumn6.itemRenderer = param1;
                return;
            }// end function
            , "_MarketConfirmWindow_DataGridColumn6.itemRenderer");
            result[59] = binding;
            binding = new Binding(this, function () : String
            {
                var _loc_1:* = _buyPriceHeader;
                var _loc_2:* = _loc_1 == undefined ? (null) : (String(_loc_1));
                return _loc_2;
            }// end function
            , function (param1:String) : void
            {
                _MarketConfirmWindow_DataGridColumn6.headerText = param1;
                return;
            }// end function
            , "_MarketConfirmWindow_DataGridColumn6.headerText");
            result[60] = binding;
            binding = new Binding(this, function () : Number
            {
                return BUTTON_X - 65;
            }// end function
            , function (param1:Number) : void
            {
                _MarketConfirmWindow_Image7.x = param1;
                return;
            }// end function
            , "_MarketConfirmWindow_Image7.x");
            result[61] = binding;
            binding = new Binding(this, function () : Number
            {
                return BUTTON_Y;
            }// end function
            , function (param1:Number) : void
            {
                _MarketConfirmWindow_Image7.y = param1;
                return;
            }// end function
            , "_MarketConfirmWindow_Image7.y");
            result[62] = binding;
            binding = new Binding(this, function () : Object
            {
                return _swf_stack2_yes;
            }// end function
            , function (param1:Object) : void
            {
                _MarketConfirmWindow_Image7.source = param1;
                return;
            }// end function
            , "_MarketConfirmWindow_Image7.source");
            result[63] = binding;
            binding = new Binding(this, function () : Number
            {
                return BUTTON_X + 65;
            }// end function
            , function (param1:Number) : void
            {
                _MarketConfirmWindow_Image8.x = param1;
                return;
            }// end function
            , "_MarketConfirmWindow_Image8.x");
            result[64] = binding;
            binding = new Binding(this, function () : Number
            {
                return BUTTON_Y;
            }// end function
            , function (param1:Number) : void
            {
                _MarketConfirmWindow_Image8.y = param1;
                return;
            }// end function
            , "_MarketConfirmWindow_Image8.y");
            result[65] = binding;
            binding = new Binding(this, function () : Object
            {
                return _swf_stack2_no;
            }// end function
            , function (param1:Object) : void
            {
                _MarketConfirmWindow_Image8.source = param1;
                return;
            }// end function
            , "_MarketConfirmWindow_Image8.source");
            result[66] = binding;
            binding = new Binding(this, function () : Number
            {
                return WINDOW_X;
            }// end function
            , function (param1:Number) : void
            {
                _MarketConfirmWindow_Text8.x = param1;
                return;
            }// end function
            , "_MarketConfirmWindow_Text8.x");
            result[67] = binding;
            binding = new Binding(this, function () : Number
            {
                return WINDOW_Y;
            }// end function
            , function (param1:Number) : void
            {
                _MarketConfirmWindow_Text8.y = param1;
                return;
            }// end function
            , "_MarketConfirmWindow_Text8.y");
            result[68] = binding;
            binding = new Binding(this, function () : Number
            {
                return WINDOW_WD;
            }// end function
            , function (param1:Number) : void
            {
                _MarketConfirmWindow_Text8.width = param1;
                return;
            }// end function
            , "_MarketConfirmWindow_Text8.width");
            result[69] = binding;
            binding = new Binding(this, function () : String
            {
                var _loc_1:* = Utils.i18n("generalConfirmation");
                var _loc_2:* = _loc_1 == undefined ? (null) : (String(_loc_1));
                return _loc_2;
            }// end function
            , function (param1:String) : void
            {
                _MarketConfirmWindow_Text8.text = param1;
                return;
            }// end function
            , "_MarketConfirmWindow_Text8.text");
            result[70] = binding;
            binding = new Binding(this, function () : Number
            {
                return WINDOW_X + 20;
            }// end function
            , function (param1:Number) : void
            {
                _MarketConfirmWindow_Text9.x = param1;
                return;
            }// end function
            , "_MarketConfirmWindow_Text9.x");
            result[71] = binding;
            binding = new Binding(this, function () : Number
            {
                return WINDOW_Y + 35 + 100;
            }// end function
            , function (param1:Number) : void
            {
                _MarketConfirmWindow_Text9.y = param1;
                return;
            }// end function
            , "_MarketConfirmWindow_Text9.y");
            result[72] = binding;
            binding = new Binding(this, function () : String
            {
                var _loc_1:* = Utils.i18n("marketConfirmDestruction", _buyDataName, _materialDumpCount);
                var _loc_2:* = _loc_1 == undefined ? (null) : (String(_loc_1));
                return _loc_2;
            }// end function
            , function (param1:String) : void
            {
                _MarketConfirmWindow_Text9.text = param1;
                return;
            }// end function
            , "_MarketConfirmWindow_Text9.text");
            result[73] = binding;
            binding = new Binding(this, function () : Number
            {
                return BUTTON_X - 65;
            }// end function
            , function (param1:Number) : void
            {
                _MarketConfirmWindow_Image9.x = param1;
                return;
            }// end function
            , "_MarketConfirmWindow_Image9.x");
            result[74] = binding;
            binding = new Binding(this, function () : Number
            {
                return BUTTON_Y;
            }// end function
            , function (param1:Number) : void
            {
                _MarketConfirmWindow_Image9.y = param1;
                return;
            }// end function
            , "_MarketConfirmWindow_Image9.y");
            result[75] = binding;
            binding = new Binding(this, function () : Object
            {
                return _swf_stack2_yes;
            }// end function
            , function (param1:Object) : void
            {
                _MarketConfirmWindow_Image9.source = param1;
                return;
            }// end function
            , "_MarketConfirmWindow_Image9.source");
            result[76] = binding;
            binding = new Binding(this, function () : Number
            {
                return BUTTON_X + 65;
            }// end function
            , function (param1:Number) : void
            {
                _MarketConfirmWindow_Image10.x = param1;
                return;
            }// end function
            , "_MarketConfirmWindow_Image10.x");
            result[77] = binding;
            binding = new Binding(this, function () : Number
            {
                return BUTTON_Y;
            }// end function
            , function (param1:Number) : void
            {
                _MarketConfirmWindow_Image10.y = param1;
                return;
            }// end function
            , "_MarketConfirmWindow_Image10.y");
            result[78] = binding;
            binding = new Binding(this, function () : Object
            {
                return _swf_stack2_no;
            }// end function
            , function (param1:Object) : void
            {
                _MarketConfirmWindow_Image10.source = param1;
                return;
            }// end function
            , "_MarketConfirmWindow_Image10.source");
            result[79] = binding;
            binding = new Binding(this, function () : Number
            {
                return WINDOW_X + WINDOW_WD - 25;
            }// end function
            , function (param1:Number) : void
            {
                _MarketConfirmWindow_Image11.x = param1;
                return;
            }// end function
            , "_MarketConfirmWindow_Image11.x");
            result[80] = binding;
            binding = new Binding(this, function () : Number
            {
                return WINDOW_Y;
            }// end function
            , function (param1:Number) : void
            {
                _MarketConfirmWindow_Image11.y = param1;
                return;
            }// end function
            , "_MarketConfirmWindow_Image11.y");
            result[81] = binding;
            binding = new Binding(this, function () : Object
            {
                return _swf_close_window;
            }// end function
            , function (param1:Object) : void
            {
                _MarketConfirmWindow_Image11.source = param1;
                return;
            }// end function
            , "_MarketConfirmWindow_Image11.source");
            result[82] = binding;
            return result;
        }// end function

        public function ___MarketConfirmWindow_Image3_click(event:MouseEvent) : void
        {
            onExhibitCancel();
            return;
        }// end function

        public function set commodityData(param1:Object) : void
        {
            _commodityData = param1;
            return;
        }// end function

        private function get _swf_stack2_yes() : MovieClipLoaderAsset
        {
            return this._1987800014_swf_stack2_yes;
        }// end function

        private function get _swf_window() : MovieClipLoaderAsset
        {
            return this._1075873300_swf_window;
        }// end function

        public function set sellPriceRenderer(param1:ClassFactory) : void
        {
            var _loc_2:* = this._1385845498sellPriceRenderer;
            if (_loc_2 !== param1)
            {
                this._1385845498sellPriceRenderer = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "sellPriceRenderer", _loc_2, param1));
            }
            return;
        }// end function

        private function _MarketConfirmWindow_ClassFactory1_i() : ClassFactory
        {
            var _loc_1:* = new ClassFactory();
            nameLabelRenderer = _loc_1;
            _loc_1.generator = MarketConfirmWindow_inlineComponent1;
            _loc_1.properties = {outerDocument:this};
            return _loc_1;
        }// end function

        public function get sellPriceRenderer() : ClassFactory
        {
            return this._1385845498sellPriceRenderer;
        }// end function

        private function set _swf_stack2_no(param1:MovieClipLoaderAsset) : void
        {
            var _loc_2:* = this._351519750_swf_stack2_no;
            if (_loc_2 !== param1)
            {
                this._351519750_swf_stack2_no = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "_swf_stack2_no", _loc_2, param1));
            }
            return;
        }// end function

        public static function set watcherSetupUtil(param1:IWatcherSetupUtil) : void
        {
            MarketConfirmWindow._watcherSetupUtil = param1;
            return;
        }// end function

    }
}
