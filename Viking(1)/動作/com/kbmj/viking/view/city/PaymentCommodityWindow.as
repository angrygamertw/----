package com.kbmj.viking.view.city
{
    import com.kbmj.viking.lib.*;
    import com.kbmj.viking.view.*;
    import com.kbmj.viking.view.home.*;
    import com.kbmj.viking.vo.*;
    import flash.display.*;
    import flash.events.*;
    import flash.utils.*;
    import mx.binding.*;
    import mx.collections.*;
    import mx.containers.*;
    import mx.controls.*;
    import mx.controls.dataGridClasses.*;
    import mx.core.*;
    import mx.events.*;

    public class PaymentCommodityWindow extends PopupWindow implements IBindingClient
    {
        private var _1203688124_paymentCommodities:ArrayCollection;
        private var _1075873300_swf_window:MovieClipLoaderAsset;
        private var _type:int;
        private var _206591738pointColumn:DataGridColumn;
        public var _PaymentCommodityWindow_Canvas1:Canvas;
        var _bindingsByDestination:Object;
        private var _1193840764_swf_close:MovieClipLoaderAsset;
        private var _99715089_swf_next:MovieClipLoaderAsset;
        private var _1218643219_swf_close_window:MovieClipLoaderAsset;
        private var _99643601_swf_prev:MovieClipLoaderAsset;
        private var _1706856063commodity_data_list:DataGrid;
        private var _863459560powerRenderer:ClassFactory;
        private var equipmentDetail:EquipmentDetail;
        public var _PaymentCommodityWindow_HBox1:HBox;
        public var weaponDetail:WeaponDetail;
        private var _522920908detailRenderer:ClassFactory;
        private var checkBuyPaymentCommodityWindow:CheckBuyPaymentCommodityWindow;
        var _watchers:Array;
        private var detailWindow:ItemDetail;
        public var _PaymentCommodityWindow_Box1:Box;
        private var _21581637powerColumn:DataGridColumn;
        var _bindingsBeginWithWord:Object;
        public var _PaymentCommodityWindow_Text1:Text;
        public var _PaymentCommodityWindow_Text2:Text;
        public var _PaymentCommodityWindow_Text3:Text;
        public var _PaymentCommodityWindow_Image1:Image;
        public var _PaymentCommodityWindow_Image2:Image;
        public var _PaymentCommodityWindow_Image3:Image;
        public var _PaymentCommodityWindow_DataGridColumn1:DataGridColumn;
        public var _PaymentCommodityWindow_DataGridColumn2:DataGridColumn;
        public var _PaymentCommodityWindow_DataGridColumn6:DataGridColumn;
        var _bindings:Array;
        private var _documentDescriptor_:UIComponentDescriptor;
        private var _1999996970goldColumn:DataGridColumn;
        private var _458067113_balanceLabel:String;
        private static const WINDOW_X:int = 20;
        private static const WINDOW_Y:int = 20;
        private static const BUTTON_X:int = 325;
        private static const BUTTON_Y:int = 490;
        private static var _watcherSetupUtil:IWatcherSetupUtil;
        public static const BUY_PAYMENT_COMMODITY:String = NAME + "/buyPaymentCommodity";
        public static const NAME:String = "BuyTradeGoodsWindow";
        private static const WINDOW_HT:int = 520;
        private static const WINDOW_WD:int = 720;

        public function PaymentCommodityWindow()
        {
            _documentDescriptor_ = new UIComponentDescriptor({type:PopupWindow, propertiesFactory:function () : Object
            {
                return {width:760, height:560, childDescriptors:[new UIComponentDescriptor({type:Image, id:"_PaymentCommodityWindow_Image1"}), new UIComponentDescriptor({type:Text, id:"_PaymentCommodityWindow_Text1", propertiesFactory:function () : Object
                {
                    return {styleName:"DealTitle"};
                }// end function
                }), new UIComponentDescriptor({type:HBox, id:"_PaymentCommodityWindow_HBox1", stylesFactory:function () : void
                {
                    this.verticalAlign = "middle";
                    this.horizontalGap = 3;
                    return;
                }// end function
                , propertiesFactory:function () : Object
                {
                    return {childDescriptors:[new UIComponentDescriptor({type:Text, id:"_PaymentCommodityWindow_Text2", stylesFactory:function () : void
                    {
                        this.fontSize = 14;
                        this.textAlign = "left";
                        return;
                    }// end function
                    }), new UIComponentDescriptor({type:Text, id:"_PaymentCommodityWindow_Text3", stylesFactory:function () : void
                    {
                        this.fontSize = 14;
                        this.textAlign = "left";
                        return;
                    }// end function
                    })]};
                }// end function
                }), new UIComponentDescriptor({type:Canvas, id:"_PaymentCommodityWindow_Canvas1", propertiesFactory:function () : Object
                {
                    return {percentWidth:100, percentHeight:100, childDescriptors:[new UIComponentDescriptor({type:Box, id:"_PaymentCommodityWindow_Box1", propertiesFactory:function () : Object
                    {
                        return {childDescriptors:[new UIComponentDescriptor({type:DataGrid, id:"commodity_data_list", propertiesFactory:function () : Object
                        {
                            return {rowCount:14, rowHeight:26, styleName:"DataGridBase", selectable:false, sortableColumns:false, columns:[_PaymentCommodityWindow_DataGridColumn1_i(), _PaymentCommodityWindow_DataGridColumn2_i(), _PaymentCommodityWindow_DataGridColumn3_i(), _PaymentCommodityWindow_DataGridColumn4_i(), _PaymentCommodityWindow_DataGridColumn5_i(), _PaymentCommodityWindow_DataGridColumn6_i()]};
                        }// end function
                        })]};
                    }// end function
                    })]};
                }// end function
                }), new UIComponentDescriptor({type:Image, id:"_PaymentCommodityWindow_Image2", events:{click:"___PaymentCommodityWindow_Image2_click"}}), new UIComponentDescriptor({type:Image, id:"_PaymentCommodityWindow_Image3", events:{click:"___PaymentCommodityWindow_Image3_click"}})]};
            }// end function
            });
            _1075873300_swf_window = new Viking.EmbedSwfWindowCommon();
            _1218643219_swf_close_window = new Viking.EmbedSwfButtonCloseWindow();
            _1193840764_swf_close = new Viking.EmbedSwfButtonCommon();
            _99643601_swf_prev = new Viking.EmbedSwfButtonPaginator();
            _99715089_swf_next = new Viking.EmbedSwfButtonPaginator();
            equipmentDetail = new EquipmentDetail();
            weaponDetail = new WeaponDetail();
            detailWindow = new ItemDetail();
            checkBuyPaymentCommodityWindow = new CheckBuyPaymentCommodityWindow();
            _bindings = [];
            _watchers = [];
            _bindingsByDestination = {};
            _bindingsBeginWithWord = {};
            mx_internal::_document = this;
            this.width = 760;
            this.height = 560;
            _PaymentCommodityWindow_ClassFactory1_i();
            _PaymentCommodityWindow_ClassFactory2_i();
            this.addEventListener("creationComplete", ___PaymentCommodityWindow_PopupWindow1_creationComplete);
            return;
        }// end function

        public function set commodity_data_list(param1:DataGrid) : void
        {
            var _loc_2:* = this._1706856063commodity_data_list;
            if (_loc_2 !== param1)
            {
                this._1706856063commodity_data_list = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "commodity_data_list", _loc_2, param1));
            }
            return;
        }// end function

        public function get pointColumn() : DataGridColumn
        {
            return this._206591738pointColumn;
        }// end function

        public function set pointColumn(param1:DataGridColumn) : void
        {
            var _loc_2:* = this._206591738pointColumn;
            if (_loc_2 !== param1)
            {
                this._206591738pointColumn = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "pointColumn", _loc_2, param1));
            }
            return;
        }// end function

        private function _PaymentCommodityWindow_DataGridColumn2_i() : DataGridColumn
        {
            var _loc_1:* = new DataGridColumn();
            _PaymentCommodityWindow_DataGridColumn2 = _loc_1;
            _loc_1.dataField = "quantity";
            _loc_1.width = 100;
            _loc_1.setStyle("textAlign", "center");
            BindingManager.executeBindings(this, "_PaymentCommodityWindow_DataGridColumn2", _PaymentCommodityWindow_DataGridColumn2);
            return _loc_1;
        }// end function

        public function closeWindow() : void
        {
            onClose();
            MovieClip(Loader(_swf_close.getChildAt(0)).content).gotoAndPlay(0);
            MovieClip(Loader(_swf_close.getChildAt(0)).content).gotoAndPlay("button_close");
            MovieClip(Loader(_swf_close_window.getChildAt(0)).content).gotoAndPlay(1);
            return;
        }// end function

        public function onDetail(param1:Object) : void
        {
            if (!param1.commodity)
            {
                return;
            }
            if (param1.masterType == "WeaponMaster" || param1.masterType == "ArmorMaster" || param1.masterType == "AccessoryMaster")
            {
                weaponDetail.viewData = param1.commodity;
                popupWindow(weaponDetail);
            }
            else
            {
                equipmentDetail.viewData = param1.commodity;
                popupWindow(equipmentDetail);
            }
            return;
        }// end function

        private function get _swf_close_window() : MovieClipLoaderAsset
        {
            return this._1218643219_swf_close_window;
        }// end function

        private function _PaymentCommodityWindow_DataGridColumn6_i() : DataGridColumn
        {
            var _loc_1:* = new DataGridColumn();
            _PaymentCommodityWindow_DataGridColumn6 = _loc_1;
            _loc_1.itemRenderer = _PaymentCommodityWindow_ClassFactory3_c();
            _loc_1.width = 60;
            _loc_1.setStyle("textAlign", "center");
            BindingManager.executeBindings(this, "_PaymentCommodityWindow_DataGridColumn6", _PaymentCommodityWindow_DataGridColumn6);
            return _loc_1;
        }// end function

        private function _PaymentCommodityWindow_ClassFactory3_c() : ClassFactory
        {
            var _loc_1:* = new ClassFactory();
            _loc_1.generator = PaymentCommodityButtonRenderer;
            return _loc_1;
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

        public function onBuy(param1:Object) : void
        {
            checkBuyPaymentCommodityWindow.setbuyData(param1, _type);
            popupWindow(checkBuyPaymentCommodityWindow, false);
            checkBuyPaymentCommodityWindow.addEventListener(CheckBuyPaymentCommodityWindow.BUY_PAYMENT_COMMODITY, buyPaymentCommodity);
            return;
        }// end function

        private function get _swf_prev() : MovieClipLoaderAsset
        {
            return this._99643601_swf_prev;
        }// end function

        public function get detailRenderer() : ClassFactory
        {
            return this._522920908detailRenderer;
        }// end function

        public function getLabel(param1:Object, param2:String) : String
        {
            return param1[param2] ? (param1[param2]) : ("-");
        }// end function

        private function get _paymentCommodities() : ArrayCollection
        {
            return this._1203688124_paymentCommodities;
        }// end function

        public function ___PaymentCommodityWindow_Image2_click(event:MouseEvent) : void
        {
            closeWindow();
            return;
        }// end function

        public function set paymentCommodities(param1:Array) : void
        {
            _paymentCommodities = new ArrayCollection(param1);
            return;
        }// end function

        private function _PaymentCommodityWindow_DataGridColumn1_i() : DataGridColumn
        {
            var _loc_1:* = new DataGridColumn();
            _PaymentCommodityWindow_DataGridColumn1 = _loc_1;
            _loc_1.dataField = "nameLabel";
            BindingManager.executeBindings(this, "_PaymentCommodityWindow_DataGridColumn1", _PaymentCommodityWindow_DataGridColumn1);
            return _loc_1;
        }// end function

        private function _PaymentCommodityWindow_DataGridColumn5_i() : DataGridColumn
        {
            var _loc_1:* = new DataGridColumn();
            pointColumn = _loc_1;
            _loc_1.dataField = "pointLabel";
            _loc_1.width = 100;
            _loc_1.setStyle("textAlign", "center");
            BindingManager.executeBindings(this, "pointColumn", pointColumn);
            return _loc_1;
        }// end function

        private function _PaymentCommodityWindow_ClassFactory2_i() : ClassFactory
        {
            var _loc_1:* = new ClassFactory();
            powerRenderer = _loc_1;
            _loc_1.generator = PaymentCommodityWindow_inlineComponent2;
            _loc_1.properties = {outerDocument:this};
            return _loc_1;
        }// end function

        private function _PaymentCommodityWindow_bindingExprs() : void
        {
            var _loc_1:* = undefined;
            _loc_1 = _swf_window;
            _loc_1 = WINDOW_X;
            _loc_1 = WINDOW_Y;
            _loc_1 = WINDOW_WD;
            _loc_1 = Utils.i18n("marketConfirmBuy");
            _loc_1 = WINDOW_X + 20;
            _loc_1 = WINDOW_Y + 30;
            _loc_1 = Utils.i18n("purchasePayentCommodity");
            _loc_1 = Utils.i18n("generalRemaining") + "：" + _balanceLabel;
            _loc_1 = Utils.i18n("paymentCommodity");
            _loc_1 = WINDOW_X + 20;
            _loc_1 = WINDOW_Y + 60;
            _loc_1 = _paymentCommodities;
            _loc_1 = WINDOW_WD - 40;
            _loc_1 = Utils.i18n("changeEquipmentItemName");
            _loc_1 = detailRenderer;
            _loc_1 = Utils.i18n("generalQuantity");
            _loc_1 = powerRenderer;
            _loc_1 = Utils.i18n("generalPower");
            _loc_1 = Utils.i18n("generalMoneyUnit");
            _loc_1 = Utils.i18n("rewardPoint");
            _loc_1 = Utils.i18n("generalBuy");
            _loc_1 = BUTTON_X;
            _loc_1 = BUTTON_Y;
            _loc_1 = _swf_close;
            _loc_1 = WINDOW_X + WINDOW_WD - 25;
            _loc_1 = WINDOW_Y;
            _loc_1 = _swf_close_window;
            return;
        }// end function

        private function set _swf_prev(param1:MovieClipLoaderAsset) : void
        {
            var _loc_2:* = this._99643601_swf_prev;
            if (_loc_2 !== param1)
            {
                this._99643601_swf_prev = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "_swf_prev", _loc_2, param1));
            }
            return;
        }// end function

        private function get _balanceLabel() : String
        {
            return this._458067113_balanceLabel;
        }// end function

        public function set detailRenderer(param1:ClassFactory) : void
        {
            var _loc_2:* = this._522920908detailRenderer;
            if (_loc_2 !== param1)
            {
                this._522920908detailRenderer = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "detailRenderer", _loc_2, param1));
            }
            return;
        }// end function

        private function buyPaymentCommodity(event:PopupEvent) : void
        {
            var _loc_2:Object = {master_id:int(event.param), type:_type};
            checkBuyPaymentCommodityWindow.removeEventListener(CheckBuyPaymentCommodityWindow.BUY_PAYMENT_COMMODITY, buyPaymentCommodity);
            this.dispatchEvent(new PopupEvent(BUY_PAYMENT_COMMODITY, _loc_2));
            closeWindow();
            return;
        }// end function

        public function getNameLabel(param1:Object) : String
        {
            return param1.nameLabel;
        }// end function

        public function set powerColumn(param1:DataGridColumn) : void
        {
            var _loc_2:* = this._21581637powerColumn;
            if (_loc_2 !== param1)
            {
                this._21581637powerColumn = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "powerColumn", _loc_2, param1));
            }
            return;
        }// end function

        private function get _swf_close() : MovieClipLoaderAsset
        {
            return this._1193840764_swf_close;
        }// end function

        public function get commodity_data_list() : DataGrid
        {
            return this._1706856063commodity_data_list;
        }// end function

        private function set _paymentCommodities(param1:ArrayCollection) : void
        {
            var _loc_2:* = this._1203688124_paymentCommodities;
            if (_loc_2 !== param1)
            {
                this._1203688124_paymentCommodities = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "_paymentCommodities", _loc_2, param1));
            }
            return;
        }// end function

        public function ___PaymentCommodityWindow_Image3_click(event:MouseEvent) : void
        {
            closeWindow();
            return;
        }// end function

        private function onComp() : void
        {
            MovieClip(Loader(_swf_window.getChildAt(0)).content).gotoAndPlay("center_720x520");
            MovieClip(Loader(_swf_close.getChildAt(0)).content).gotoAndPlay("button_close");
            return;
        }// end function

        private function _PaymentCommodityWindow_DataGridColumn4_i() : DataGridColumn
        {
            var _loc_1:* = new DataGridColumn();
            goldColumn = _loc_1;
            _loc_1.dataField = "goldLabel";
            _loc_1.width = 100;
            _loc_1.setStyle("textAlign", "center");
            BindingManager.executeBindings(this, "goldColumn", goldColumn);
            return _loc_1;
        }// end function

        override public function initialize() : void
        {
            var target:PaymentCommodityWindow;
            var watcherSetupUtilClass:Object;
            .mx_internal::setDocumentDescriptor(_documentDescriptor_);
            var bindings:* = _PaymentCommodityWindow_bindingsSetup();
            var watchers:Array;
            target;
            if (_watcherSetupUtil == null)
            {
                watcherSetupUtilClass = getDefinitionByName("_com_kbmj_viking_view_city_PaymentCommodityWindowWatcherSetupUtil");
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

        public function ___PaymentCommodityWindow_PopupWindow1_creationComplete(event:FlexEvent) : void
        {
            onComp();
            return;
        }// end function

        private function _PaymentCommodityWindow_ClassFactory1_i() : ClassFactory
        {
            var _loc_1:* = new ClassFactory();
            detailRenderer = _loc_1;
            _loc_1.generator = PaymentCommodityWindow_inlineComponent1;
            _loc_1.properties = {outerDocument:this};
            return _loc_1;
        }// end function

        public function set goldColumn(param1:DataGridColumn) : void
        {
            var _loc_2:* = this._1999996970goldColumn;
            if (_loc_2 !== param1)
            {
                this._1999996970goldColumn = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "goldColumn", _loc_2, param1));
            }
            return;
        }// end function

        private function set _balanceLabel(param1:String) : void
        {
            var _loc_2:* = this._458067113_balanceLabel;
            if (_loc_2 !== param1)
            {
                this._458067113_balanceLabel = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "_balanceLabel", _loc_2, param1));
            }
            return;
        }// end function

        public function get powerColumn() : DataGridColumn
        {
            return this._21581637powerColumn;
        }// end function

        public function setCommodities(param1:Array, param2:int, param3:PlayerVO) : void
        {
            var commodities:* = param1;
            var type:* = param2;
            var player:* = param3;
            _type = type;
            powerColumn.setStyle("color", 16711680);
            goldColumn.setStyle("color", 16711680);
            pointColumn.setStyle("color", 16711680);
            switch(type)
            {
                case 1:
                {
                    paymentCommodities = commodities.filter(function (param1, param2:int, param3:Array) : Boolean
            {
                return param1.power;
            }// end function
            );
                    powerColumn.setStyle("color", 0);
                    _balanceLabel = player.power + Utils.i18n("generalPower");
                    break;
                }
                case 2:
                {
                    paymentCommodities = commodities.filter(function (param1, param2:int, param3:Array) : Boolean
            {
                return param1.gold;
            }// end function
            );
                    goldColumn.setStyle("color", 0);
                    _balanceLabel = player.gold + Utils.i18n("generalMoneyUnit");
                    break;
                }
                case 3:
                {
                    paymentCommodities = commodities.filter(function (param1, param2:int, param3:Array) : Boolean
            {
                return param1.point;
            }// end function
            );
                    pointColumn.setStyle("color", 0);
                    _balanceLabel = player.prizePoint + Utils.i18n("rewardPoint");
                    break;
                }
                default:
                {
                    break;
                }
            }
            return;
        }// end function

        public function set powerRenderer(param1:ClassFactory) : void
        {
            var _loc_2:* = this._863459560powerRenderer;
            if (_loc_2 !== param1)
            {
                this._863459560powerRenderer = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "powerRenderer", _loc_2, param1));
            }
            return;
        }// end function

        public function get goldColumn() : DataGridColumn
        {
            return this._1999996970goldColumn;
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

        private function set _swf_next(param1:MovieClipLoaderAsset) : void
        {
            var _loc_2:* = this._99715089_swf_next;
            if (_loc_2 !== param1)
            {
                this._99715089_swf_next = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "_swf_next", _loc_2, param1));
            }
            return;
        }// end function

        private function _PaymentCommodityWindow_bindingsSetup() : Array
        {
            var binding:Binding;
            var result:Array;
            binding = new Binding(this, function () : Object
            {
                return _swf_window;
            }// end function
            , function (param1:Object) : void
            {
                _PaymentCommodityWindow_Image1.source = param1;
                return;
            }// end function
            , "_PaymentCommodityWindow_Image1.source");
            result[0] = binding;
            binding = new Binding(this, function () : Number
            {
                return WINDOW_X;
            }// end function
            , function (param1:Number) : void
            {
                _PaymentCommodityWindow_Text1.x = param1;
                return;
            }// end function
            , "_PaymentCommodityWindow_Text1.x");
            result[1] = binding;
            binding = new Binding(this, function () : Number
            {
                return WINDOW_Y;
            }// end function
            , function (param1:Number) : void
            {
                _PaymentCommodityWindow_Text1.y = param1;
                return;
            }// end function
            , "_PaymentCommodityWindow_Text1.y");
            result[2] = binding;
            binding = new Binding(this, function () : Number
            {
                return WINDOW_WD;
            }// end function
            , function (param1:Number) : void
            {
                _PaymentCommodityWindow_Text1.width = param1;
                return;
            }// end function
            , "_PaymentCommodityWindow_Text1.width");
            result[3] = binding;
            binding = new Binding(this, function () : String
            {
                var _loc_1:* = Utils.i18n("marketConfirmBuy");
                var _loc_2:* = _loc_1 == undefined ? (null) : (String(_loc_1));
                return _loc_2;
            }// end function
            , function (param1:String) : void
            {
                _PaymentCommodityWindow_Text1.text = param1;
                return;
            }// end function
            , "_PaymentCommodityWindow_Text1.text");
            result[4] = binding;
            binding = new Binding(this, function () : Number
            {
                return WINDOW_X + 20;
            }// end function
            , function (param1:Number) : void
            {
                _PaymentCommodityWindow_HBox1.x = param1;
                return;
            }// end function
            , "_PaymentCommodityWindow_HBox1.x");
            result[5] = binding;
            binding = new Binding(this, function () : Number
            {
                return WINDOW_Y + 30;
            }// end function
            , function (param1:Number) : void
            {
                _PaymentCommodityWindow_HBox1.y = param1;
                return;
            }// end function
            , "_PaymentCommodityWindow_HBox1.y");
            result[6] = binding;
            binding = new Binding(this, function () : String
            {
                var _loc_1:* = Utils.i18n("purchasePayentCommodity");
                var _loc_2:* = _loc_1 == undefined ? (null) : (String(_loc_1));
                return _loc_2;
            }// end function
            , function (param1:String) : void
            {
                _PaymentCommodityWindow_Text2.text = param1;
                return;
            }// end function
            , "_PaymentCommodityWindow_Text2.text");
            result[7] = binding;
            binding = new Binding(this, function () : String
            {
                var _loc_1:* = Utils.i18n("generalRemaining") + "：" + _balanceLabel;
                var _loc_2:* = _loc_1 == undefined ? (null) : (String(_loc_1));
                return _loc_2;
            }// end function
            , function (param1:String) : void
            {
                _PaymentCommodityWindow_Text3.text = param1;
                return;
            }// end function
            , "_PaymentCommodityWindow_Text3.text");
            result[8] = binding;
            binding = new Binding(this, function () : String
            {
                var _loc_1:* = Utils.i18n("paymentCommodity");
                var _loc_2:* = _loc_1 == undefined ? (null) : (String(_loc_1));
                return _loc_2;
            }// end function
            , function (param1:String) : void
            {
                _PaymentCommodityWindow_Canvas1.label = param1;
                return;
            }// end function
            , "_PaymentCommodityWindow_Canvas1.label");
            result[9] = binding;
            binding = new Binding(this, function () : Number
            {
                return WINDOW_X + 20;
            }// end function
            , function (param1:Number) : void
            {
                _PaymentCommodityWindow_Box1.x = param1;
                return;
            }// end function
            , "_PaymentCommodityWindow_Box1.x");
            result[10] = binding;
            binding = new Binding(this, function () : Number
            {
                return WINDOW_Y + 60;
            }// end function
            , function (param1:Number) : void
            {
                _PaymentCommodityWindow_Box1.y = param1;
                return;
            }// end function
            , "_PaymentCommodityWindow_Box1.y");
            result[11] = binding;
            binding = new Binding(this, function () : Object
            {
                return _paymentCommodities;
            }// end function
            , function (param1:Object) : void
            {
                commodity_data_list.dataProvider = param1;
                return;
            }// end function
            , "commodity_data_list.dataProvider");
            result[12] = binding;
            binding = new Binding(this, function () : Number
            {
                return WINDOW_WD - 40;
            }// end function
            , function (param1:Number) : void
            {
                commodity_data_list.width = param1;
                return;
            }// end function
            , "commodity_data_list.width");
            result[13] = binding;
            binding = new Binding(this, function () : String
            {
                var _loc_1:* = Utils.i18n("changeEquipmentItemName");
                var _loc_2:* = _loc_1 == undefined ? (null) : (String(_loc_1));
                return _loc_2;
            }// end function
            , function (param1:String) : void
            {
                _PaymentCommodityWindow_DataGridColumn1.headerText = param1;
                return;
            }// end function
            , "_PaymentCommodityWindow_DataGridColumn1.headerText");
            result[14] = binding;
            binding = new Binding(this, function () : IFactory
            {
                return detailRenderer;
            }// end function
            , function (param1:IFactory) : void
            {
                _PaymentCommodityWindow_DataGridColumn1.itemRenderer = param1;
                return;
            }// end function
            , "_PaymentCommodityWindow_DataGridColumn1.itemRenderer");
            result[15] = binding;
            binding = new Binding(this, function () : String
            {
                var _loc_1:* = Utils.i18n("generalQuantity");
                var _loc_2:* = _loc_1 == undefined ? (null) : (String(_loc_1));
                return _loc_2;
            }// end function
            , function (param1:String) : void
            {
                _PaymentCommodityWindow_DataGridColumn2.headerText = param1;
                return;
            }// end function
            , "_PaymentCommodityWindow_DataGridColumn2.headerText");
            result[16] = binding;
            binding = new Binding(this, function () : IFactory
            {
                return powerRenderer;
            }// end function
            , function (param1:IFactory) : void
            {
                powerColumn.itemRenderer = param1;
                return;
            }// end function
            , "powerColumn.itemRenderer");
            result[17] = binding;
            binding = new Binding(this, function () : String
            {
                var _loc_1:* = Utils.i18n("generalPower");
                var _loc_2:* = _loc_1 == undefined ? (null) : (String(_loc_1));
                return _loc_2;
            }// end function
            , function (param1:String) : void
            {
                powerColumn.headerText = param1;
                return;
            }// end function
            , "powerColumn.headerText");
            result[18] = binding;
            binding = new Binding(this, function () : String
            {
                var _loc_1:* = Utils.i18n("generalMoneyUnit");
                var _loc_2:* = _loc_1 == undefined ? (null) : (String(_loc_1));
                return _loc_2;
            }// end function
            , function (param1:String) : void
            {
                goldColumn.headerText = param1;
                return;
            }// end function
            , "goldColumn.headerText");
            result[19] = binding;
            binding = new Binding(this, function () : String
            {
                var _loc_1:* = Utils.i18n("rewardPoint");
                var _loc_2:* = _loc_1 == undefined ? (null) : (String(_loc_1));
                return _loc_2;
            }// end function
            , function (param1:String) : void
            {
                pointColumn.headerText = param1;
                return;
            }// end function
            , "pointColumn.headerText");
            result[20] = binding;
            binding = new Binding(this, function () : String
            {
                var _loc_1:* = Utils.i18n("generalBuy");
                var _loc_2:* = _loc_1 == undefined ? (null) : (String(_loc_1));
                return _loc_2;
            }// end function
            , function (param1:String) : void
            {
                _PaymentCommodityWindow_DataGridColumn6.headerText = param1;
                return;
            }// end function
            , "_PaymentCommodityWindow_DataGridColumn6.headerText");
            result[21] = binding;
            binding = new Binding(this, function () : Number
            {
                return BUTTON_X;
            }// end function
            , function (param1:Number) : void
            {
                _PaymentCommodityWindow_Image2.x = param1;
                return;
            }// end function
            , "_PaymentCommodityWindow_Image2.x");
            result[22] = binding;
            binding = new Binding(this, function () : Number
            {
                return BUTTON_Y;
            }// end function
            , function (param1:Number) : void
            {
                _PaymentCommodityWindow_Image2.y = param1;
                return;
            }// end function
            , "_PaymentCommodityWindow_Image2.y");
            result[23] = binding;
            binding = new Binding(this, function () : Object
            {
                return _swf_close;
            }// end function
            , function (param1:Object) : void
            {
                _PaymentCommodityWindow_Image2.source = param1;
                return;
            }// end function
            , "_PaymentCommodityWindow_Image2.source");
            result[24] = binding;
            binding = new Binding(this, function () : Number
            {
                return WINDOW_X + WINDOW_WD - 25;
            }// end function
            , function (param1:Number) : void
            {
                _PaymentCommodityWindow_Image3.x = param1;
                return;
            }// end function
            , "_PaymentCommodityWindow_Image3.x");
            result[25] = binding;
            binding = new Binding(this, function () : Number
            {
                return WINDOW_Y;
            }// end function
            , function (param1:Number) : void
            {
                _PaymentCommodityWindow_Image3.y = param1;
                return;
            }// end function
            , "_PaymentCommodityWindow_Image3.y");
            result[26] = binding;
            binding = new Binding(this, function () : Object
            {
                return _swf_close_window;
            }// end function
            , function (param1:Object) : void
            {
                _PaymentCommodityWindow_Image3.source = param1;
                return;
            }// end function
            , "_PaymentCommodityWindow_Image3.source");
            result[27] = binding;
            return result;
        }// end function

        public function get powerRenderer() : ClassFactory
        {
            return this._863459560powerRenderer;
        }// end function

        private function get _swf_next() : MovieClipLoaderAsset
        {
            return this._99715089_swf_next;
        }// end function

        private function _PaymentCommodityWindow_DataGridColumn3_i() : DataGridColumn
        {
            var _loc_1:* = new DataGridColumn();
            powerColumn = _loc_1;
            _loc_1.width = 110;
            _loc_1.setStyle("textAlign", "center");
            BindingManager.executeBindings(this, "powerColumn", powerColumn);
            return _loc_1;
        }// end function

        private function get _swf_window() : MovieClipLoaderAsset
        {
            return this._1075873300_swf_window;
        }// end function

        private function set _swf_close(param1:MovieClipLoaderAsset) : void
        {
            var _loc_2:* = this._1193840764_swf_close;
            if (_loc_2 !== param1)
            {
                this._1193840764_swf_close = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "_swf_close", _loc_2, param1));
            }
            return;
        }// end function

        public static function set watcherSetupUtil(param1:IWatcherSetupUtil) : void
        {
            PaymentCommodityWindow._watcherSetupUtil = param1;
            return;
        }// end function

    }
}
