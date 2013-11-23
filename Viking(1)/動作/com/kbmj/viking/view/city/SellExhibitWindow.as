package com.kbmj.viking.view.city
{
    import com.kbmj.viking.lib.*;
    import com.kbmj.viking.view.*;
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
    import mx.managers.*;

    public class SellExhibitWindow extends PopupWindow implements IBindingClient
    {
        private var _90913087_gold:int;
        public var _SellExhibitWindow_DataGridColumn1:DataGridColumn;
        public var _SellExhibitWindow_DataGridColumn2:DataGridColumn;
        public var _SellExhibitWindow_DataGridColumn3:DataGridColumn;
        public var _SellExhibitWindow_DataGridColumn4:DataGridColumn;
        public var _SellExhibitWindow_DataGridColumn5:DataGridColumn;
        private var leyLine:Boolean = false;
        var _bindingsByDestination:Object;
        private var _295870179exhibitData:ArrayCollection;
        private var _1193840764_swf_close:MovieClipLoaderAsset;
        public var _SellExhibitWindow_Image1:Image;
        private var _192644587buttonRenderer:ClassFactory;
        public var _SellExhibitWindow_Image3:Image;
        public var _SellExhibitWindow_Image2:Image;
        private var _1218643219_swf_close_window:MovieClipLoaderAsset;
        private var _834615889exhibitCanvas:Canvas;
        private var _1557321940numberRenderer:ClassFactory;
        var _watchers:Array;
        public var _SellExhibitWindow_DataGrid1:DataGrid;
        public var _SellExhibitWindow_Text1:Text;
        public var _SellExhibitWindow_Text2:Text;
        private var _1896677185windowLayer:Canvas;
        private var _1658466019_swf_exhibit:MovieClipLoaderAsset;
        var _bindingsBeginWithWord:Object;
        private var _cancelData:Object;
        public var _SellExhibitWindow_Label1:Label;
        var _bindings:Array;
        private var _documentDescriptor_:UIComponentDescriptor;
        private var _1241645780priceRenderer:ClassFactory;
        private var _220552972nameLabelRenderer:ClassFactory;
        private var exhibitCount:int;
        private var _591659895_priceHeader:String;
        public static const EXHIBIT_CANCEL:String = NAME + "/exhibitCancel";
        public static const CLOSE_GOODS_EXHIBIT:String = "closegoodsExhibit";
        private static const WINDOW_Y:int = 80;
        private static const BUTTON_X:int = 245;
        private static const BUTTON_Y:int = 490;
        private static const WINDOW_X:int = 20;
        public static const EXHIBIT_LIMIT:String = "exhibitLimit";
        public static const NAME:String = "SellExhibitWindow";
        private static var _watcherSetupUtil:IWatcherSetupUtil;
        public static const GOODS_EXHIBIT:String = "goodsExhibit";
        private static const WINDOW_HT:int = 460;
        private static const WINDOW_WD:int = 560;

        public function SellExhibitWindow()
        {
            _documentDescriptor_ = new UIComponentDescriptor({type:PopupWindow, propertiesFactory:function () : Object
            {
                return {width:760, height:560, childDescriptors:[new UIComponentDescriptor({type:Canvas, id:"windowLayer"}), new UIComponentDescriptor({type:Text, id:"_SellExhibitWindow_Text1", propertiesFactory:function () : Object
                {
                    return {styleName:"DealTitle"};
                }// end function
                }), new UIComponentDescriptor({type:Canvas, id:"exhibitCanvas", propertiesFactory:function () : Object
                {
                    return {childDescriptors:[new UIComponentDescriptor({type:Label, id:"_SellExhibitWindow_Label1", stylesFactory:function () : void
                    {
                        this.fontSize = 14;
                        return;
                    }// end function
                    }), new UIComponentDescriptor({type:Text, id:"_SellExhibitWindow_Text2", stylesFactory:function () : void
                    {
                        this.fontSize = 14;
                        return;
                    }// end function
                    }), new UIComponentDescriptor({type:DataGrid, id:"_SellExhibitWindow_DataGrid1", propertiesFactory:function () : Object
                    {
                        return {rowHeight:26, rowCount:7, verticalScrollPolicy:"off", styleName:"DataGridBase", sortableColumns:false, selectable:false, columns:[_SellExhibitWindow_DataGridColumn1_i(), _SellExhibitWindow_DataGridColumn2_i(), _SellExhibitWindow_DataGridColumn3_i(), _SellExhibitWindow_DataGridColumn4_i(), _SellExhibitWindow_DataGridColumn5_i()]};
                    }// end function
                    }), new UIComponentDescriptor({type:Image, id:"_SellExhibitWindow_Image1", events:{click:"___SellExhibitWindow_Image1_click"}}), new UIComponentDescriptor({type:Image, id:"_SellExhibitWindow_Image2", events:{click:"___SellExhibitWindow_Image2_click"}}), new UIComponentDescriptor({type:Image, id:"_SellExhibitWindow_Image3", events:{click:"___SellExhibitWindow_Image3_click"}})]};
                }// end function
                })]};
            }// end function
            });
            _1658466019_swf_exhibit = new Viking.EmbedSwfButtonCommon();
            _1193840764_swf_close = new Viking.EmbedSwfButtonCommon();
            _1218643219_swf_close_window = new Viking.EmbedSwfButtonCloseWindow();
            _bindings = [];
            _watchers = [];
            _bindingsByDestination = {};
            _bindingsBeginWithWord = {};
            mx_internal::_document = this;
            this.width = 760;
            this.height = 560;
            _SellExhibitWindow_ClassFactory1_i();
            _SellExhibitWindow_ClassFactory3_i();
            _SellExhibitWindow_ClassFactory2_i();
            _SellExhibitWindow_ClassFactory4_i();
            this.addEventListener("creationComplete", ___SellExhibitWindow_PopupWindow1_creationComplete);
            return;
        }// end function

        private function closeWindow() : void
        {
            dispatchEvent(new Event(CLOSE_GOODS_EXHIBIT));
            PopUpManager.removePopUp(this);
            MovieClip(Loader(_swf_close.getChildAt(0)).content).gotoAndPlay(0);
            MovieClip(Loader(_swf_close.getChildAt(0)).content).gotoAndPlay("button_close");
            MovieClip(Loader(_swf_close_window.getChildAt(0)).content).gotoAndPlay(1);
            return;
        }// end function

        public function get nameLabelRenderer() : ClassFactory
        {
            return this._220552972nameLabelRenderer;
        }// end function

        private function _SellExhibitWindow_DataGridColumn1_i() : DataGridColumn
        {
            var _loc_1:* = new DataGridColumn();
            _SellExhibitWindow_DataGridColumn1 = _loc_1;
            _loc_1.width = 20;
            BindingManager.executeBindings(this, "_SellExhibitWindow_DataGridColumn1", _SellExhibitWindow_DataGridColumn1);
            return _loc_1;
        }// end function

        public function init(param1:Array, param2:Boolean) : void
        {
            if (param1)
            {
                exhibitData = new ArrayCollection(param1);
                exhibitCount = param1.length;
            }
            var _loc_3:* = param2;
            leyLine = param2;
            if (_loc_3)
            {
                _priceHeader = Utils.i18n("marketConfirmPriceUp");
            }
            else
            {
                _priceHeader = Utils.i18n("marketConfirmPrice");
            }
            return;
        }// end function

        private function _SellExhibitWindow_DataGridColumn5_i() : DataGridColumn
        {
            var _loc_1:* = new DataGridColumn();
            _SellExhibitWindow_DataGridColumn5 = _loc_1;
            _loc_1.width = 110;
            _loc_1.setStyle("textAlign", "center");
            BindingManager.executeBindings(this, "_SellExhibitWindow_DataGridColumn5", _SellExhibitWindow_DataGridColumn5);
            return _loc_1;
        }// end function

        private function get _swf_close_window() : MovieClipLoaderAsset
        {
            return this._1218643219_swf_close_window;
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

        public function ___SellExhibitWindow_PopupWindow1_creationComplete(event:FlexEvent) : void
        {
            _init();
            return;
        }// end function

        public function get buttonRenderer() : ClassFactory
        {
            return this._192644587buttonRenderer;
        }// end function

        private function get _swf_exhibit() : MovieClipLoaderAsset
        {
            return this._1658466019_swf_exhibit;
        }// end function

        public function getPriceLabel(param1:Object) : String
        {
            if (leyLine)
            {
                return param1.price + " + " + int(param1.price * 0.05);
            }
            return String(param1.price);
        }// end function

        public function get numberRenderer() : ClassFactory
        {
            return this._1557321940numberRenderer;
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

        public function set buttonRenderer(param1:ClassFactory) : void
        {
            var _loc_2:* = this._192644587buttonRenderer;
            if (_loc_2 !== param1)
            {
                this._192644587buttonRenderer = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "buttonRenderer", _loc_2, param1));
            }
            return;
        }// end function

        public function get priceRenderer() : ClassFactory
        {
            return this._1241645780priceRenderer;
        }// end function

        private function _SellExhibitWindow_ClassFactory4_i() : ClassFactory
        {
            var _loc_1:* = new ClassFactory();
            priceRenderer = _loc_1;
            _loc_1.generator = SellExhibitWindow_inlineComponent4;
            _loc_1.properties = {outerDocument:this};
            return _loc_1;
        }// end function

        private function get _gold() : int
        {
            return this._90913087_gold;
        }// end function

        public function get cancelData() : Object
        {
            return _cancelData;
        }// end function

        public function ___SellExhibitWindow_Image1_click(event:MouseEvent) : void
        {
            onExhibit();
            return;
        }// end function

        private function set _swf_exhibit(param1:MovieClipLoaderAsset) : void
        {
            var _loc_2:* = this._1658466019_swf_exhibit;
            if (_loc_2 !== param1)
            {
                this._1658466019_swf_exhibit = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "_swf_exhibit", _loc_2, param1));
            }
            return;
        }// end function

        public function setNumber(param1:Object) : int
        {
            var _loc_2:* = exhibitData.getItemIndex(param1);
            _loc_2++;
            return _loc_2;
        }// end function

        private function _SellExhibitWindow_DataGridColumn4_i() : DataGridColumn
        {
            var _loc_1:* = new DataGridColumn();
            _SellExhibitWindow_DataGridColumn4 = _loc_1;
            _loc_1.dataField = "quantity";
            _loc_1.width = 60;
            _loc_1.setStyle("textAlign", "center");
            BindingManager.executeBindings(this, "_SellExhibitWindow_DataGridColumn4", _SellExhibitWindow_DataGridColumn4);
            return _loc_1;
        }// end function

        private function _SellExhibitWindow_bindingExprs() : void
        {
            var _loc_1:* = undefined;
            _loc_1 = WINDOW_X;
            _loc_1 = WINDOW_Y;
            _loc_1 = WINDOW_WD;
            _loc_1 = Utils.i18n("sellExhibitList");
            _loc_1 = WINDOW_X + 20;
            _loc_1 = WINDOW_Y + 35;
            _loc_1 = Utils.i18n("sellEchibitCanSellCount");
            _loc_1 = WINDOW_X + 20;
            _loc_1 = WINDOW_Y + 35 + 30;
            _loc_1 = Utils.i18n("generalPossessionMoney") + ":" + _gold;
            _loc_1 = WINDOW_X + 20;
            _loc_1 = WINDOW_Y + 35 + 60;
            _loc_1 = WINDOW_WD - 40;
            _loc_1 = exhibitData;
            _loc_1 = numberRenderer;
            _loc_1 = Utils.i18n("sellExhibitWithdraw");
            _loc_1 = buttonRenderer;
            _loc_1 = Utils.i18n("sellExhibitProductName");
            _loc_1 = nameLabelRenderer;
            _loc_1 = Utils.i18n("generalQuantity");
            _loc_1 = priceRenderer;
            _loc_1 = _priceHeader;
            _loc_1 = BUTTON_X - 65;
            _loc_1 = BUTTON_Y;
            _loc_1 = _swf_exhibit;
            _loc_1 = BUTTON_X + 65;
            _loc_1 = BUTTON_Y;
            _loc_1 = _swf_close;
            _loc_1 = WINDOW_X + WINDOW_WD - 25;
            _loc_1 = WINDOW_Y;
            _loc_1 = _swf_close_window;
            return;
        }// end function

        public function get windowLayer() : Canvas
        {
            return this._1896677185windowLayer;
        }// end function

        private function _SellExhibitWindow_ClassFactory3_i() : ClassFactory
        {
            var _loc_1:* = new ClassFactory();
            nameLabelRenderer = _loc_1;
            _loc_1.generator = SellExhibitWindow_inlineComponent3;
            _loc_1.properties = {outerDocument:this};
            return _loc_1;
        }// end function

        public function get gold() : int
        {
            return _gold;
        }// end function

        public function get exhibitCanvas() : Canvas
        {
            return this._834615889exhibitCanvas;
        }// end function

        public function set numberRenderer(param1:ClassFactory) : void
        {
            var _loc_2:* = this._1557321940numberRenderer;
            if (_loc_2 !== param1)
            {
                this._1557321940numberRenderer = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "numberRenderer", _loc_2, param1));
            }
            return;
        }// end function

        private function get _priceHeader() : String
        {
            return this._591659895_priceHeader;
        }// end function

        public function set priceRenderer(param1:ClassFactory) : void
        {
            var _loc_2:* = this._1241645780priceRenderer;
            if (_loc_2 !== param1)
            {
                this._1241645780priceRenderer = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "priceRenderer", _loc_2, param1));
            }
            return;
        }// end function

        private function get _swf_close() : MovieClipLoaderAsset
        {
            return this._1193840764_swf_close;
        }// end function

        private function set _gold(param1:int) : void
        {
            var _loc_2:* = this._90913087_gold;
            if (_loc_2 !== param1)
            {
                this._90913087_gold = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "_gold", _loc_2, param1));
            }
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

        public function ___SellExhibitWindow_Image2_click(event:MouseEvent) : void
        {
            closeWindow();
            return;
        }// end function

        override public function initialize() : void
        {
            var target:SellExhibitWindow;
            var watcherSetupUtilClass:Object;
            .mx_internal::setDocumentDescriptor(_documentDescriptor_);
            var bindings:* = _SellExhibitWindow_bindingsSetup();
            var watchers:Array;
            target;
            if (_watcherSetupUtil == null)
            {
                watcherSetupUtilClass = getDefinitionByName("_com_kbmj_viking_view_city_SellExhibitWindowWatcherSetupUtil");
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

        private function _SellExhibitWindow_DataGridColumn3_i() : DataGridColumn
        {
            var _loc_1:* = new DataGridColumn();
            _SellExhibitWindow_DataGridColumn3 = _loc_1;
            BindingManager.executeBindings(this, "_SellExhibitWindow_DataGridColumn3", _SellExhibitWindow_DataGridColumn3);
            return _loc_1;
        }// end function

        public function set exhibitCanvas(param1:Canvas) : void
        {
            var _loc_2:* = this._834615889exhibitCanvas;
            if (_loc_2 !== param1)
            {
                this._834615889exhibitCanvas = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "exhibitCanvas", _loc_2, param1));
            }
            return;
        }// end function

        private function _SellExhibitWindow_ClassFactory2_i() : ClassFactory
        {
            var _loc_1:* = new ClassFactory();
            numberRenderer = _loc_1;
            _loc_1.generator = SellExhibitWindow_inlineComponent2;
            _loc_1.properties = {outerDocument:this};
            return _loc_1;
        }// end function

        private function _SellExhibitWindow_bindingsSetup() : Array
        {
            var binding:Binding;
            var result:Array;
            binding = new Binding(this, function () : Number
            {
                return WINDOW_X;
            }// end function
            , function (param1:Number) : void
            {
                _SellExhibitWindow_Text1.x = param1;
                return;
            }// end function
            , "_SellExhibitWindow_Text1.x");
            result[0] = binding;
            binding = new Binding(this, function () : Number
            {
                return WINDOW_Y;
            }// end function
            , function (param1:Number) : void
            {
                _SellExhibitWindow_Text1.y = param1;
                return;
            }// end function
            , "_SellExhibitWindow_Text1.y");
            result[1] = binding;
            binding = new Binding(this, function () : Number
            {
                return WINDOW_WD;
            }// end function
            , function (param1:Number) : void
            {
                _SellExhibitWindow_Text1.width = param1;
                return;
            }// end function
            , "_SellExhibitWindow_Text1.width");
            result[2] = binding;
            binding = new Binding(this, function () : String
            {
                var _loc_1:* = Utils.i18n("sellExhibitList");
                var _loc_2:* = _loc_1 == undefined ? (null) : (String(_loc_1));
                return _loc_2;
            }// end function
            , function (param1:String) : void
            {
                _SellExhibitWindow_Text1.text = param1;
                return;
            }// end function
            , "_SellExhibitWindow_Text1.text");
            result[3] = binding;
            binding = new Binding(this, function () : Number
            {
                return WINDOW_X + 20;
            }// end function
            , function (param1:Number) : void
            {
                _SellExhibitWindow_Label1.x = param1;
                return;
            }// end function
            , "_SellExhibitWindow_Label1.x");
            result[4] = binding;
            binding = new Binding(this, function () : Number
            {
                return WINDOW_Y + 35;
            }// end function
            , function (param1:Number) : void
            {
                _SellExhibitWindow_Label1.y = param1;
                return;
            }// end function
            , "_SellExhibitWindow_Label1.y");
            result[5] = binding;
            binding = new Binding(this, function () : String
            {
                var _loc_1:* = Utils.i18n("sellEchibitCanSellCount");
                var _loc_2:* = _loc_1 == undefined ? (null) : (String(_loc_1));
                return _loc_2;
            }// end function
            , function (param1:String) : void
            {
                _SellExhibitWindow_Label1.text = param1;
                return;
            }// end function
            , "_SellExhibitWindow_Label1.text");
            result[6] = binding;
            binding = new Binding(this, function () : Number
            {
                return WINDOW_X + 20;
            }// end function
            , function (param1:Number) : void
            {
                _SellExhibitWindow_Text2.x = param1;
                return;
            }// end function
            , "_SellExhibitWindow_Text2.x");
            result[7] = binding;
            binding = new Binding(this, function () : Number
            {
                return WINDOW_Y + 35 + 30;
            }// end function
            , function (param1:Number) : void
            {
                _SellExhibitWindow_Text2.y = param1;
                return;
            }// end function
            , "_SellExhibitWindow_Text2.y");
            result[8] = binding;
            binding = new Binding(this, function () : String
            {
                var _loc_1:* = Utils.i18n("generalPossessionMoney") + ":" + _gold;
                var _loc_2:* = _loc_1 == undefined ? (null) : (String(_loc_1));
                return _loc_2;
            }// end function
            , function (param1:String) : void
            {
                _SellExhibitWindow_Text2.text = param1;
                return;
            }// end function
            , "_SellExhibitWindow_Text2.text");
            result[9] = binding;
            binding = new Binding(this, function () : Number
            {
                return WINDOW_X + 20;
            }// end function
            , function (param1:Number) : void
            {
                _SellExhibitWindow_DataGrid1.x = param1;
                return;
            }// end function
            , "_SellExhibitWindow_DataGrid1.x");
            result[10] = binding;
            binding = new Binding(this, function () : Number
            {
                return WINDOW_Y + 35 + 60;
            }// end function
            , function (param1:Number) : void
            {
                _SellExhibitWindow_DataGrid1.y = param1;
                return;
            }// end function
            , "_SellExhibitWindow_DataGrid1.y");
            result[11] = binding;
            binding = new Binding(this, function () : Number
            {
                return WINDOW_WD - 40;
            }// end function
            , function (param1:Number) : void
            {
                _SellExhibitWindow_DataGrid1.width = param1;
                return;
            }// end function
            , "_SellExhibitWindow_DataGrid1.width");
            result[12] = binding;
            binding = new Binding(this, function () : Object
            {
                return exhibitData;
            }// end function
            , function (param1:Object) : void
            {
                _SellExhibitWindow_DataGrid1.dataProvider = param1;
                return;
            }// end function
            , "_SellExhibitWindow_DataGrid1.dataProvider");
            result[13] = binding;
            binding = new Binding(this, function () : IFactory
            {
                return numberRenderer;
            }// end function
            , function (param1:IFactory) : void
            {
                _SellExhibitWindow_DataGridColumn1.itemRenderer = param1;
                return;
            }// end function
            , "_SellExhibitWindow_DataGridColumn1.itemRenderer");
            result[14] = binding;
            binding = new Binding(this, function () : String
            {
                var _loc_1:* = Utils.i18n("sellExhibitWithdraw");
                var _loc_2:* = _loc_1 == undefined ? (null) : (String(_loc_1));
                return _loc_2;
            }// end function
            , function (param1:String) : void
            {
                _SellExhibitWindow_DataGridColumn2.headerText = param1;
                return;
            }// end function
            , "_SellExhibitWindow_DataGridColumn2.headerText");
            result[15] = binding;
            binding = new Binding(this, function () : IFactory
            {
                return buttonRenderer;
            }// end function
            , function (param1:IFactory) : void
            {
                _SellExhibitWindow_DataGridColumn2.itemRenderer = param1;
                return;
            }// end function
            , "_SellExhibitWindow_DataGridColumn2.itemRenderer");
            result[16] = binding;
            binding = new Binding(this, function () : String
            {
                var _loc_1:* = Utils.i18n("sellExhibitProductName");
                var _loc_2:* = _loc_1 == undefined ? (null) : (String(_loc_1));
                return _loc_2;
            }// end function
            , function (param1:String) : void
            {
                _SellExhibitWindow_DataGridColumn3.headerText = param1;
                return;
            }// end function
            , "_SellExhibitWindow_DataGridColumn3.headerText");
            result[17] = binding;
            binding = new Binding(this, function () : IFactory
            {
                return nameLabelRenderer;
            }// end function
            , function (param1:IFactory) : void
            {
                _SellExhibitWindow_DataGridColumn3.itemRenderer = param1;
                return;
            }// end function
            , "_SellExhibitWindow_DataGridColumn3.itemRenderer");
            result[18] = binding;
            binding = new Binding(this, function () : String
            {
                var _loc_1:* = Utils.i18n("generalQuantity");
                var _loc_2:* = _loc_1 == undefined ? (null) : (String(_loc_1));
                return _loc_2;
            }// end function
            , function (param1:String) : void
            {
                _SellExhibitWindow_DataGridColumn4.headerText = param1;
                return;
            }// end function
            , "_SellExhibitWindow_DataGridColumn4.headerText");
            result[19] = binding;
            binding = new Binding(this, function () : IFactory
            {
                return priceRenderer;
            }// end function
            , function (param1:IFactory) : void
            {
                _SellExhibitWindow_DataGridColumn5.itemRenderer = param1;
                return;
            }// end function
            , "_SellExhibitWindow_DataGridColumn5.itemRenderer");
            result[20] = binding;
            binding = new Binding(this, function () : String
            {
                var _loc_1:* = _priceHeader;
                var _loc_2:* = _loc_1 == undefined ? (null) : (String(_loc_1));
                return _loc_2;
            }// end function
            , function (param1:String) : void
            {
                _SellExhibitWindow_DataGridColumn5.headerText = param1;
                return;
            }// end function
            , "_SellExhibitWindow_DataGridColumn5.headerText");
            result[21] = binding;
            binding = new Binding(this, function () : Number
            {
                return BUTTON_X - 65;
            }// end function
            , function (param1:Number) : void
            {
                _SellExhibitWindow_Image1.x = param1;
                return;
            }// end function
            , "_SellExhibitWindow_Image1.x");
            result[22] = binding;
            binding = new Binding(this, function () : Number
            {
                return BUTTON_Y;
            }// end function
            , function (param1:Number) : void
            {
                _SellExhibitWindow_Image1.y = param1;
                return;
            }// end function
            , "_SellExhibitWindow_Image1.y");
            result[23] = binding;
            binding = new Binding(this, function () : Object
            {
                return _swf_exhibit;
            }// end function
            , function (param1:Object) : void
            {
                _SellExhibitWindow_Image1.source = param1;
                return;
            }// end function
            , "_SellExhibitWindow_Image1.source");
            result[24] = binding;
            binding = new Binding(this, function () : Number
            {
                return BUTTON_X + 65;
            }// end function
            , function (param1:Number) : void
            {
                _SellExhibitWindow_Image2.x = param1;
                return;
            }// end function
            , "_SellExhibitWindow_Image2.x");
            result[25] = binding;
            binding = new Binding(this, function () : Number
            {
                return BUTTON_Y;
            }// end function
            , function (param1:Number) : void
            {
                _SellExhibitWindow_Image2.y = param1;
                return;
            }// end function
            , "_SellExhibitWindow_Image2.y");
            result[26] = binding;
            binding = new Binding(this, function () : Object
            {
                return _swf_close;
            }// end function
            , function (param1:Object) : void
            {
                _SellExhibitWindow_Image2.source = param1;
                return;
            }// end function
            , "_SellExhibitWindow_Image2.source");
            result[27] = binding;
            binding = new Binding(this, function () : Number
            {
                return WINDOW_X + WINDOW_WD - 25;
            }// end function
            , function (param1:Number) : void
            {
                _SellExhibitWindow_Image3.x = param1;
                return;
            }// end function
            , "_SellExhibitWindow_Image3.x");
            result[28] = binding;
            binding = new Binding(this, function () : Number
            {
                return WINDOW_Y;
            }// end function
            , function (param1:Number) : void
            {
                _SellExhibitWindow_Image3.y = param1;
                return;
            }// end function
            , "_SellExhibitWindow_Image3.y");
            result[29] = binding;
            binding = new Binding(this, function () : Object
            {
                return _swf_close_window;
            }// end function
            , function (param1:Object) : void
            {
                _SellExhibitWindow_Image3.source = param1;
                return;
            }// end function
            , "_SellExhibitWindow_Image3.source");
            result[30] = binding;
            return result;
        }// end function

        public function set gold(param1:int) : void
        {
            _gold = param1;
            return;
        }// end function

        private function onExhibit() : void
        {
            if (exhibitCount >= 7)
            {
                dispatchEvent(new Event(EXHIBIT_LIMIT));
            }
            else
            {
                dispatchEvent(new Event(GOODS_EXHIBIT));
            }
            MovieClip(Loader(_swf_exhibit.getChildAt(0)).content).gotoAndPlay(0);
            MovieClip(Loader(_swf_exhibit.getChildAt(0)).content).gotoAndPlay("button_exhibit");
            return;
        }// end function

        private function set exhibitData(param1:ArrayCollection) : void
        {
            var _loc_2:* = this._295870179exhibitData;
            if (_loc_2 !== param1)
            {
                this._295870179exhibitData = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "exhibitData", _loc_2, param1));
            }
            return;
        }// end function

        public function ___SellExhibitWindow_Image3_click(event:MouseEvent) : void
        {
            closeWindow();
            return;
        }// end function

        public function onExhibitCancel(param1:Object) : void
        {
            _cancelData = param1;
            dispatchEvent(new Event(EXHIBIT_CANCEL));
            return;
        }// end function

        private function _SellExhibitWindow_DataGridColumn2_i() : DataGridColumn
        {
            var _loc_1:* = new DataGridColumn();
            _SellExhibitWindow_DataGridColumn2 = _loc_1;
            _loc_1.width = 75;
            BindingManager.executeBindings(this, "_SellExhibitWindow_DataGridColumn2", _SellExhibitWindow_DataGridColumn2);
            return _loc_1;
        }// end function

        private function _SellExhibitWindow_ClassFactory1_i() : ClassFactory
        {
            var _loc_1:* = new ClassFactory();
            buttonRenderer = _loc_1;
            _loc_1.generator = SellExhibitWindow_inlineComponent1;
            _loc_1.properties = {outerDocument:this};
            return _loc_1;
        }// end function

        public function setNameLabel(param1:Object) : String
        {
            if (param1.instanceType == "Weapon")
            {
                return param1.nameLabel + "(" + param1.endurance + ")";
            }
            return param1.nameLabel;
        }// end function

        private function get exhibitData() : ArrayCollection
        {
            return this._295870179exhibitData;
        }// end function

        private function _init() : void
        {
            MovieClip(Loader(_swf_exhibit.getChildAt(0)).content).gotoAndPlay("button_exhibit");
            MovieClip(Loader(_swf_close.getChildAt(0)).content).gotoAndPlay("button_close");
            return;
        }// end function

        private function set _priceHeader(param1:String) : void
        {
            var _loc_2:* = this._591659895_priceHeader;
            if (_loc_2 !== param1)
            {
                this._591659895_priceHeader = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "_priceHeader", _loc_2, param1));
            }
            return;
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
            SellExhibitWindow._watcherSetupUtil = param1;
            return;
        }// end function

    }
}
