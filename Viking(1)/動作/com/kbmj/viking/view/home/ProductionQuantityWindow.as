package com.kbmj.viking.view.home
{
    import com.kbmj.viking.lib.*;
    import com.kbmj.viking.vo.*;
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

    public class ProductionQuantityWindow extends Canvas implements IBindingClient
    {
        public var _ProductionQuantityWindow_DataGridColumn2:DataGridColumn;
        public var _ProductionQuantityWindow_DataGridColumn3:DataGridColumn;
        public var _ProductionQuantityWindow_DataGridColumn4:DataGridColumn;
        private var _reproduction:ReproductionVO;
        private var _966299030nameLabels:ArrayCollection;
        public var _ProductionQuantityWindow_Image1:Image;
        private var _398062432buildingLabel:String;
        private var _1262166934quantityLabels:ArrayCollection;
        private var _maxProductQuantity:int;
        private var _305715152currentQuantityLabel:Label;
        private var _2130788660quantityLenderer:ClassFactory;
        private var _1285004149quantity:NumericStepper;
        private var _747293199maxQuantity:int;
        var _bindingsByDestination:Object;
        private var _production:ProductionVO;
        private var _1788817256dataList:DataGrid;
        private var _1218643219_swf_close_window:MovieClipLoaderAsset;
        private var _1777504961buttonLayer:Canvas;
        private var _1447751308_isProductionCrystal:Boolean;
        private var _2032971769quantityLabelColors:ArrayCollection;
        var _watchers:Array;
        private var _1642143701maxCreateQuantity:int;
        private var _1896677185windowLayer:Canvas;
        public var _ProductionQuantityWindow_Label1:Label;
        public var _ProductionQuantityWindow_Label2:Label;
        public var _ProductionQuantityWindow_Label4:Label;
        private var _1389174581bigbox:Box;
        public var _ProductionQuantityWindow_Label5:Label;
        private var _2127439019_showStepper:Boolean;
        private var _1105773637resourceQuantityLabel:String;
        private var _1950226028smallerCanvas:Canvas;
        var _bindingsBeginWithWord:Object;
        private var _1619874672requirements:ArrayCollection;
        var _bindings:Array;
        private var _documentDescriptor_:UIComponentDescriptor;
        private var create:Boolean = false;
        public var _ProductionQuantityWindow_DataGridColumn1:DataGridColumn;
        public static const PRODUCE:String = "ProductionQuantityWindow/Produce";
        private static var _watcherSetupUtil:IWatcherSetupUtil;

        public function ProductionQuantityWindow()
        {
            _documentDescriptor_ = new UIComponentDescriptor({type:Canvas, propertiesFactory:function () : Object
            {
                return {childDescriptors:[new UIComponentDescriptor({type:Canvas, id:"windowLayer"}), new UIComponentDescriptor({type:Box, id:"bigbox", propertiesFactory:function () : Object
                {
                    return {width:400, height:360, x:180, y:100, childDescriptors:[new UIComponentDescriptor({type:Canvas, id:"smallerCanvas", propertiesFactory:function () : Object
                    {
                        return {childDescriptors:[new UIComponentDescriptor({type:Label, id:"_ProductionQuantityWindow_Label1", propertiesFactory:function () : Object
                        {
                            return {styleName:"ItemName", x:30, y:13};
                        }// end function
                        }), new UIComponentDescriptor({type:Label, id:"_ProductionQuantityWindow_Label2", propertiesFactory:function () : Object
                        {
                            return {styleName:"ItemDetail", x:30, y:33};
                        }// end function
                        }), new UIComponentDescriptor({type:DataGrid, id:"dataList", stylesFactory:function () : void
                        {
                            this.verticalAlign = "middle";
                            return;
                        }// end function
                        , propertiesFactory:function () : Object
                        {
                            return {styleName:"ProductionGrid", x:30, y:53, height:303, headerHeight:29, rowHeight:28, sortableColumns:false, columns:[_ProductionQuantityWindow_DataGridColumn1_i(), _ProductionQuantityWindow_DataGridColumn2_i(), _ProductionQuantityWindow_DataGridColumn3_i(), _ProductionQuantityWindow_DataGridColumn4_i()]};
                        }// end function
                        }), new UIComponentDescriptor({type:Label, id:"currentQuantityLabel", propertiesFactory:function () : Object
                        {
                            return {styleName:"ProductionQtyText", x:65, y:260};
                        }// end function
                        }), new UIComponentDescriptor({type:Label, id:"_ProductionQuantityWindow_Label4", propertiesFactory:function () : Object
                        {
                            return {styleName:"ProductionQtyText", x:45, y:200};
                        }// end function
                        }), new UIComponentDescriptor({type:Label, id:"_ProductionQuantityWindow_Label5", propertiesFactory:function () : Object
                        {
                            return {styleName:"ProductionQtyText", x:225, y:260};
                        }// end function
                        }), new UIComponentDescriptor({type:NumericStepper, id:"quantity", stylesFactory:function () : void
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
                            return {x:258, y:260, minimum:1, value:1};
                        }// end function
                        }), new UIComponentDescriptor({type:Canvas, id:"buttonLayer"})]};
                    }// end function
                    })]};
                }// end function
                }), new UIComponentDescriptor({type:Image, id:"_ProductionQuantityWindow_Image1", events:{click:"___ProductionQuantityWindow_Image1_click"}, propertiesFactory:function () : Object
                {
                    return {x:555, y:80};
                }// end function
                })]};
            }// end function
            });
            _2032971769quantityLabelColors = new ArrayCollection();
            _966299030nameLabels = new ArrayCollection();
            _1262166934quantityLabels = new ArrayCollection();
            _1218643219_swf_close_window = new Viking.EmbedSwfButtonCloseWindow();
            _bindings = [];
            _watchers = [];
            _bindingsByDestination = {};
            _bindingsBeginWithWord = {};
            mx_internal::_document = this;
            _ProductionQuantityWindow_ClassFactory1_i();
            this.addEventListener("creationComplete", ___ProductionQuantityWindow_Canvas1_creationComplete);
            return;
        }// end function

        private function get maxQuantity() : int
        {
            return this._747293199maxQuantity;
        }// end function

        private function init() : void
        {
            quantity.value = 1;
            create = true;
            return;
        }// end function

        public function ___ProductionQuantityWindow_Image1_click(event:MouseEvent) : void
        {
            onClose();
            return;
        }// end function

        private function get _swf_close_window() : MovieClipLoaderAsset
        {
            return this._1218643219_swf_close_window;
        }// end function

        public function set quantity(param1:NumericStepper) : void
        {
            var _loc_2:* = this._1285004149quantity;
            if (_loc_2 !== param1)
            {
                this._1285004149quantity = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "quantity", _loc_2, param1));
            }
            return;
        }// end function

        private function set maxQuantity(param1:int) : void
        {
            var _loc_2:* = this._747293199maxQuantity;
            if (_loc_2 !== param1)
            {
                this._747293199maxQuantity = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "maxQuantity", _loc_2, param1));
            }
            return;
        }// end function

        private function set requirements(param1:ArrayCollection) : void
        {
            var _loc_2:* = this._1619874672requirements;
            if (_loc_2 !== param1)
            {
                this._1619874672requirements = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "requirements", _loc_2, param1));
            }
            return;
        }// end function

        private function _ProductionQuantityWindow_DataGridColumn1_i() : DataGridColumn
        {
            var _loc_1:* = new DataGridColumn();
            _ProductionQuantityWindow_DataGridColumn1 = _loc_1;
            _loc_1.dataField = "vo.nameLabel";
            _loc_1.width = 135;
            BindingManager.executeBindings(this, "_ProductionQuantityWindow_DataGridColumn1", _ProductionQuantityWindow_DataGridColumn1);
            return _loc_1;
        }// end function

        private function get maxCreateQuantity() : int
        {
            return this._1642143701maxCreateQuantity;
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

        public function get currentQuantityLabel() : Label
        {
            return this._305715152currentQuantityLabel;
        }// end function

        public function get quantityLenderer() : ClassFactory
        {
            return this._2130788660quantityLenderer;
        }// end function

        public function set maxProductQuantity(param1:int) : void
        {
            _maxProductQuantity = param1;
            return;
        }// end function

        public function get buttonLayer() : Canvas
        {
            return this._1777504961buttonLayer;
        }// end function

        private function set buildingLabel(param1:String) : void
        {
            var _loc_2:* = this._398062432buildingLabel;
            if (_loc_2 !== param1)
            {
                this._398062432buildingLabel = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "buildingLabel", _loc_2, param1));
            }
            return;
        }// end function

        public function get windowLayer() : Canvas
        {
            return this._1896677185windowLayer;
        }// end function

        private function _ProductionQuantityWindow_bindingsSetup() : Array
        {
            var binding:Binding;
            var result:Array;
            binding = new Binding(this, function () : String
            {
                var _loc_1:* = production.masterVO.product.nameLabel;
                var _loc_2:* = _loc_1 == undefined ? (null) : (String(_loc_1));
                return _loc_2;
            }// end function
            , function (param1:String) : void
            {
                _ProductionQuantityWindow_Label1.text = param1;
                return;
            }// end function
            , "_ProductionQuantityWindow_Label1.text");
            result[0] = binding;
            binding = new Binding(this, function () : String
            {
                var _loc_1:* = buildingLabel;
                var _loc_2:* = _loc_1 == undefined ? (null) : (String(_loc_1));
                return _loc_2;
            }// end function
            , function (param1:String) : void
            {
                _ProductionQuantityWindow_Label2.text = param1;
                return;
            }// end function
            , "_ProductionQuantityWindow_Label2.text");
            result[1] = binding;
            binding = new Binding(this, function () : Boolean
            {
                return !production.isCrystal;
            }// end function
            , function (param1:Boolean) : void
            {
                _ProductionQuantityWindow_Label2.visible = param1;
                return;
            }// end function
            , "_ProductionQuantityWindow_Label2.visible");
            result[2] = binding;
            binding = new Binding(this, function () : Object
            {
                return requirements;
            }// end function
            , function (param1:Object) : void
            {
                dataList.dataProvider = param1;
                return;
            }// end function
            , "dataList.dataProvider");
            result[3] = binding;
            binding = new Binding(this, function () : String
            {
                var _loc_1:* = Utils.i18n("confirmBuildMaterial");
                var _loc_2:* = _loc_1 == undefined ? (null) : (String(_loc_1));
                return _loc_2;
            }// end function
            , function (param1:String) : void
            {
                _ProductionQuantityWindow_DataGridColumn1.headerText = param1;
                return;
            }// end function
            , "_ProductionQuantityWindow_DataGridColumn1.headerText");
            result[4] = binding;
            binding = new Binding(this, function () : String
            {
                var _loc_1:* = Utils.i18n("generalKind");
                var _loc_2:* = _loc_1 == undefined ? (null) : (String(_loc_1));
                return _loc_2;
            }// end function
            , function (param1:String) : void
            {
                _ProductionQuantityWindow_DataGridColumn2.headerText = param1;
                return;
            }// end function
            , "_ProductionQuantityWindow_DataGridColumn2.headerText");
            result[5] = binding;
            binding = new Binding(this, function () : String
            {
                var _loc_1:* = Utils.i18n("generalPossessionCount");
                var _loc_2:* = _loc_1 == undefined ? (null) : (String(_loc_1));
                return _loc_2;
            }// end function
            , function (param1:String) : void
            {
                _ProductionQuantityWindow_DataGridColumn3.headerText = param1;
                return;
            }// end function
            , "_ProductionQuantityWindow_DataGridColumn3.headerText");
            result[6] = binding;
            binding = new Binding(this, function () : String
            {
                var _loc_1:* = Utils.i18n("productionQuantityNecessoryCount");
                var _loc_2:* = _loc_1 == undefined ? (null) : (String(_loc_1));
                return _loc_2;
            }// end function
            , function (param1:String) : void
            {
                _ProductionQuantityWindow_DataGridColumn4.headerText = param1;
                return;
            }// end function
            , "_ProductionQuantityWindow_DataGridColumn4.headerText");
            result[7] = binding;
            binding = new Binding(this, function () : IFactory
            {
                return quantityLenderer;
            }// end function
            , function (param1:IFactory) : void
            {
                _ProductionQuantityWindow_DataGridColumn4.itemRenderer = param1;
                return;
            }// end function
            , "_ProductionQuantityWindow_DataGridColumn4.itemRenderer");
            result[8] = binding;
            binding = new Binding(this, function () : String
            {
                var _loc_1:* = resourceQuantityLabel;
                var _loc_2:* = _loc_1 == undefined ? (null) : (String(_loc_1));
                return _loc_2;
            }// end function
            , function (param1:String) : void
            {
                currentQuantityLabel.text = param1;
                return;
            }// end function
            , "currentQuantityLabel.text");
            result[9] = binding;
            binding = new Binding(this, function () : String
            {
                var _loc_1:* = Utils.i18n("productionConditionSuccessProbability", production.successRate);
                var _loc_2:* = _loc_1 == undefined ? (null) : (String(_loc_1));
                return _loc_2;
            }// end function
            , function (param1:String) : void
            {
                _ProductionQuantityWindow_Label4.text = param1;
                return;
            }// end function
            , "_ProductionQuantityWindow_Label4.text");
            result[10] = binding;
            binding = new Binding(this, function () : Boolean
            {
                return production.isCrystal;
            }// end function
            , function (param1:Boolean) : void
            {
                _ProductionQuantityWindow_Label4.visible = param1;
                return;
            }// end function
            , "_ProductionQuantityWindow_Label4.visible");
            result[11] = binding;
            binding = new Binding(this, function () : String
            {
                var _loc_1:* = Utils.i18n("generalQuantity");
                var _loc_2:* = _loc_1 == undefined ? (null) : (String(_loc_1));
                return _loc_2;
            }// end function
            , function (param1:String) : void
            {
                _ProductionQuantityWindow_Label5.text = param1;
                return;
            }// end function
            , "_ProductionQuantityWindow_Label5.text");
            result[12] = binding;
            binding = new Binding(this, function () : Boolean
            {
                return _showStepper;
            }// end function
            , function (param1:Boolean) : void
            {
                _ProductionQuantityWindow_Label5.visible = param1;
                return;
            }// end function
            , "_ProductionQuantityWindow_Label5.visible");
            result[13] = binding;
            binding = new Binding(this, function () : Number
            {
                return maxQuantity;
            }// end function
            , function (param1:Number) : void
            {
                quantity.maximum = param1;
                return;
            }// end function
            , "quantity.maximum");
            result[14] = binding;
            binding = new Binding(this, function () : Boolean
            {
                return _showStepper;
            }// end function
            , function (param1:Boolean) : void
            {
                quantity.visible = param1;
                return;
            }// end function
            , "quantity.visible");
            result[15] = binding;
            binding = new Binding(this, function () : Object
            {
                return _swf_close_window;
            }// end function
            , function (param1:Object) : void
            {
                _ProductionQuantityWindow_Image1.source = param1;
                return;
            }// end function
            , "_ProductionQuantityWindow_Image1.source");
            result[16] = binding;
            return result;
        }// end function

        public function judgeQuantityMax(param1:ProductionVO) : Boolean
        {
            maxQuantity = param1.requirement.maxQuantity;
            maxCreateQuantity = _maxProductQuantity - param1.resourceQuantity;
            if (maxCreateQuantity < maxQuantity)
            {
                maxQuantity = maxCreateQuantity;
            }
            if (maxCreateQuantity <= 0)
            {
                return false;
            }
            return true;
        }// end function

        public function quantityLendererFunction(param1:Object) : int
        {
            return param1.required;
        }// end function

        private function get _showStepper() : Boolean
        {
            return this._2127439019_showStepper;
        }// end function

        private function set maxCreateQuantity(param1:int) : void
        {
            var _loc_2:* = this._1642143701maxCreateQuantity;
            if (_loc_2 !== param1)
            {
                this._1642143701maxCreateQuantity = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "maxCreateQuantity", _loc_2, param1));
            }
            return;
        }// end function

        public function onClose() : void
        {
            PopUpManager.removePopUp(this);
            return;
        }// end function

        public function get dataList() : DataGrid
        {
            return this._1788817256dataList;
        }// end function

        public function set currentQuantityLabel(param1:Label) : void
        {
            var _loc_2:* = this._305715152currentQuantityLabel;
            if (_loc_2 !== param1)
            {
                this._305715152currentQuantityLabel = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "currentQuantityLabel", _loc_2, param1));
            }
            return;
        }// end function

        private function set _1753018553production(param1:ProductionVO) : void
        {
            var _loc_3:Object = null;
            _production = param1;
            adjustLayout(_production.isCrystal);
            var _loc_2:* = production.masterVO.building;
            buildingLabel = _loc_2.buildingMasterVO.nameLabel + "Lv." + _loc_2.level;
            if (_loc_2.quantity > 1)
            {
                buildingLabel = buildingLabel + (" x" + _loc_2.quantity);
            }
            requirements = new ArrayCollection();
            if (_production.requirement.commodities)
            {
                for each (_loc_3 in _production.requirement.commodities)
                {
                    
                    requirements.addItem(_loc_3);
                }
            }
            if (create)
            {
                quantity.value = 1;
            }
            resourceQuantityLabel = Utils.i18n("productionQuantityOwnersCount", production.resourceQuantity);
            return;
        }// end function

        private function get nameLabels() : ArrayCollection
        {
            return this._966299030nameLabels;
        }// end function

        public function set production(param1:ProductionVO) : void
        {
            var _loc_2:* = this.production;
            if (_loc_2 !== param1)
            {
                this._1753018553production = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "production", _loc_2, param1));
            }
            return;
        }// end function

        private function _ProductionQuantityWindow_DataGridColumn4_i() : DataGridColumn
        {
            var _loc_1:* = new DataGridColumn();
            _ProductionQuantityWindow_DataGridColumn4 = _loc_1;
            _loc_1.dataField = "quantity";
            _loc_1.width = 90;
            _loc_1.setStyle("textAlign", "center");
            BindingManager.executeBindings(this, "_ProductionQuantityWindow_DataGridColumn4", _ProductionQuantityWindow_DataGridColumn4);
            return _loc_1;
        }// end function

        private function _ProductionQuantityWindow_bindingExprs() : void
        {
            var _loc_1:* = undefined;
            _loc_1 = production.masterVO.product.nameLabel;
            _loc_1 = buildingLabel;
            _loc_1 = !production.isCrystal;
            _loc_1 = requirements;
            _loc_1 = Utils.i18n("confirmBuildMaterial");
            _loc_1 = Utils.i18n("generalKind");
            _loc_1 = Utils.i18n("generalPossessionCount");
            _loc_1 = Utils.i18n("productionQuantityNecessoryCount");
            _loc_1 = quantityLenderer;
            _loc_1 = resourceQuantityLabel;
            _loc_1 = Utils.i18n("productionConditionSuccessProbability", production.successRate);
            _loc_1 = production.isCrystal;
            _loc_1 = Utils.i18n("generalQuantity");
            _loc_1 = _showStepper;
            _loc_1 = maxQuantity;
            _loc_1 = _showStepper;
            _loc_1 = _swf_close_window;
            return;
        }// end function

        private function set resourceQuantityLabel(param1:String) : void
        {
            var _loc_2:* = this._1105773637resourceQuantityLabel;
            if (_loc_2 !== param1)
            {
                this._1105773637resourceQuantityLabel = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "resourceQuantityLabel", _loc_2, param1));
            }
            return;
        }// end function

        public function set quantityLenderer(param1:ClassFactory) : void
        {
            var _loc_2:* = this._2130788660quantityLenderer;
            if (_loc_2 !== param1)
            {
                this._2130788660quantityLenderer = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "quantityLenderer", _loc_2, param1));
            }
            return;
        }// end function

        private function get quantityLabels() : ArrayCollection
        {
            return this._1262166934quantityLabels;
        }// end function

        public function set reproduction(param1:ReproductionVO) : void
        {
            _reproduction = param1;
            _showStepper = false;
            production = _reproduction.productionVO;
            resourceQuantityLabel = "";
            return;
        }// end function

        public function get smallerCanvas() : Canvas
        {
            return this._1950226028smallerCanvas;
        }// end function

        public function set buttonLayer(param1:Canvas) : void
        {
            var _loc_2:* = this._1777504961buttonLayer;
            if (_loc_2 !== param1)
            {
                this._1777504961buttonLayer = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "buttonLayer", _loc_2, param1));
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

        private function get _isProductionCrystal() : Boolean
        {
            return this._1447751308_isProductionCrystal;
        }// end function

        public function get quantity() : NumericStepper
        {
            return this._1285004149quantity;
        }// end function

        override public function initialize() : void
        {
            var target:ProductionQuantityWindow;
            var watcherSetupUtilClass:Object;
            .mx_internal::setDocumentDescriptor(_documentDescriptor_);
            var bindings:* = _ProductionQuantityWindow_bindingsSetup();
            var watchers:Array;
            target;
            if (_watcherSetupUtil == null)
            {
                watcherSetupUtilClass = getDefinitionByName("_com_kbmj_viking_view_home_ProductionQuantityWindowWatcherSetupUtil");
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

        private function adjustLayout(param1:Boolean) : void
        {
            if (param1)
            {
                currentQuantityLabel.x = 25;
                currentQuantityLabel.y = 30;
                _showStepper = false;
                quantity.value = 1;
                dataList.height = 144;
            }
            else
            {
                currentQuantityLabel.x = 65;
                currentQuantityLabel.y = 260;
                _showStepper = true;
                dataList.height = 199;
            }
            return;
        }// end function

        private function get buildingLabel() : String
        {
            return this._398062432buildingLabel;
        }// end function

        public function set bigbox(param1:Box) : void
        {
            var _loc_2:* = this._1389174581bigbox;
            if (_loc_2 !== param1)
            {
                this._1389174581bigbox = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "bigbox", _loc_2, param1));
            }
            return;
        }// end function

        private function get requirements() : ArrayCollection
        {
            return this._1619874672requirements;
        }// end function

        private function _ProductionQuantityWindow_DataGridColumn3_i() : DataGridColumn
        {
            var _loc_1:* = new DataGridColumn();
            _ProductionQuantityWindow_DataGridColumn3 = _loc_1;
            _loc_1.dataField = "current";
            _loc_1.width = 60;
            _loc_1.setStyle("textAlign", "center");
            BindingManager.executeBindings(this, "_ProductionQuantityWindow_DataGridColumn3", _ProductionQuantityWindow_DataGridColumn3);
            return _loc_1;
        }// end function

        public function ___ProductionQuantityWindow_Canvas1_creationComplete(event:FlexEvent) : void
        {
            init();
            return;
        }// end function

        public function set quantityMax(param1:int) : void
        {
            maxQuantity = param1;
            return;
        }// end function

        public function get production() : ProductionVO
        {
            return _production;
        }// end function

        private function get resourceQuantityLabel() : String
        {
            return this._1105773637resourceQuantityLabel;
        }// end function

        private function _ProductionQuantityWindow_ClassFactory1_i() : ClassFactory
        {
            var _loc_1:* = new ClassFactory();
            quantityLenderer = _loc_1;
            _loc_1.generator = ProductionQuantityWindow_inlineComponent1;
            _loc_1.properties = {outerDocument:this};
            return _loc_1;
        }// end function

        private function set _showStepper(param1:Boolean) : void
        {
            var _loc_2:* = this._2127439019_showStepper;
            if (_loc_2 !== param1)
            {
                this._2127439019_showStepper = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "_showStepper", _loc_2, param1));
            }
            return;
        }// end function

        public function get bigbox() : Box
        {
            return this._1389174581bigbox;
        }// end function

        public function set dataList(param1:DataGrid) : void
        {
            var _loc_2:* = this._1788817256dataList;
            if (_loc_2 !== param1)
            {
                this._1788817256dataList = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "dataList", _loc_2, param1));
            }
            return;
        }// end function

        private function set nameLabels(param1:ArrayCollection) : void
        {
            var _loc_2:* = this._966299030nameLabels;
            if (_loc_2 !== param1)
            {
                this._966299030nameLabels = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "nameLabels", _loc_2, param1));
            }
            return;
        }// end function

        private function set quantityLabels(param1:ArrayCollection) : void
        {
            var _loc_2:* = this._1262166934quantityLabels;
            if (_loc_2 !== param1)
            {
                this._1262166934quantityLabels = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "quantityLabels", _loc_2, param1));
            }
            return;
        }// end function

        public function set smallerCanvas(param1:Canvas) : void
        {
            var _loc_2:* = this._1950226028smallerCanvas;
            if (_loc_2 !== param1)
            {
                this._1950226028smallerCanvas = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "smallerCanvas", _loc_2, param1));
            }
            return;
        }// end function

        public function produce() : void
        {
            var _loc_1:Object = {production:production, quantity:quantity.value};
            if (production.reproduction)
            {
                _loc_1.instance_id = _reproduction.belongingVO.belongingId;
            }
            this.dispatchEvent(new PopupEvent(PRODUCE, _loc_1));
            return;
        }// end function

        private function set _isProductionCrystal(param1:Boolean) : void
        {
            var _loc_2:* = this._1447751308_isProductionCrystal;
            if (_loc_2 !== param1)
            {
                this._1447751308_isProductionCrystal = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "_isProductionCrystal", _loc_2, param1));
            }
            return;
        }// end function

        private function _ProductionQuantityWindow_DataGridColumn2_i() : DataGridColumn
        {
            var _loc_1:* = new DataGridColumn();
            _ProductionQuantityWindow_DataGridColumn2 = _loc_1;
            _loc_1.dataField = "vo.masterTypeLabel";
            _loc_1.width = 55;
            _loc_1.setStyle("textAlign", "center");
            BindingManager.executeBindings(this, "_ProductionQuantityWindow_DataGridColumn2", _ProductionQuantityWindow_DataGridColumn2);
            return _loc_1;
        }// end function

        private function set quantityLabelColors(param1:ArrayCollection) : void
        {
            var _loc_2:* = this._2032971769quantityLabelColors;
            if (_loc_2 !== param1)
            {
                this._2032971769quantityLabelColors = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "quantityLabelColors", _loc_2, param1));
            }
            return;
        }// end function

        private function get quantityLabelColors() : ArrayCollection
        {
            return this._2032971769quantityLabelColors;
        }// end function

        public static function set watcherSetupUtil(param1:IWatcherSetupUtil) : void
        {
            ProductionQuantityWindow._watcherSetupUtil = param1;
            return;
        }// end function

    }
}
