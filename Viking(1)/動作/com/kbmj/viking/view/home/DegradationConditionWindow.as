package com.kbmj.viking.view.home
{
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

    public class DegradationConditionWindow extends Canvas implements IBindingClient
    {
        private var _2032971769quantityLabelColors:ArrayCollection;
        var _watchers:Array;
        private var _966299030nameLabels:ArrayCollection;
        private var _398062432buildingLabel:String;
        private var _1389174581bigbox:Box;
        private var _1262166934quantityLabels:ArrayCollection;
        public var _DegradationConditionWindow_Label1:Label;
        public var _DegradationConditionWindow_Label3:Label;
        var _bindingsByDestination:Object;
        private var _494070109buildingLabelColor:uint = 16777215;
        var _bindingsBeginWithWord:Object;
        private var _1619874672requirements:ArrayCollection;
        private var _production:ProductionVO;
        private var _1788817256dataList:DataGrid;
        var _bindings:Array;
        private var _documentDescriptor_:UIComponentDescriptor;
        private var _312699062closeButton:Button;
        private static var _watcherSetupUtil:IWatcherSetupUtil;

        public function DegradationConditionWindow()
        {
            _documentDescriptor_ = new UIComponentDescriptor({type:Canvas, propertiesFactory:function () : Object
            {
                return {childDescriptors:[new UIComponentDescriptor({type:Box, id:"bigbox", propertiesFactory:function () : Object
                {
                    return {width:330, height:270, styleName:"ProcuctionConditionsBg", childDescriptors:[new UIComponentDescriptor({type:Canvas, propertiesFactory:function () : Object
                    {
                        return {childDescriptors:[new UIComponentDescriptor({type:Label, id:"_DegradationConditionWindow_Label1", propertiesFactory:function () : Object
                        {
                            return {styleName:"ItemName", x:30, y:5};
                        }// end function
                        }), new UIComponentDescriptor({type:Label, stylesFactory:function () : void
                        {
                            this.color = 15073298;
                            this.fontWeight = "bold";
                            return;
                        }// end function
                        , propertiesFactory:function () : Object
                        {
                            return {text:"分解するアイテムを持っていません", x:100, y:25};
                        }// end function
                        }), new UIComponentDescriptor({type:DataGrid, id:"dataList", stylesFactory:function () : void
                        {
                            this.verticalAlign = "middle";
                            return;
                        }// end function
                        , propertiesFactory:function () : Object
                        {
                            return {styleName:"ProductionGrid", x:30, y:45, height:130, headerHeight:29, rowHeight:28, sortableColumns:false, columns:[_DegradationConditionWindow_DataGridColumn1_c(), _DegradationConditionWindow_DataGridColumn2_c()]};
                        }// end function
                        }), new UIComponentDescriptor({type:Label, id:"_DegradationConditionWindow_Label3", propertiesFactory:function () : Object
                        {
                            return {styleName:"ProductionQtyText", x:45, y:200};
                        }// end function
                        }), new UIComponentDescriptor({type:Button, id:"closeButton", events:{click:"__closeButton_click"}, propertiesFactory:function () : Object
                        {
                            return {label:"", styleName:"CancelCanaButton", y:210, x:122, buttonMode:true};
                        }// end function
                        })]};
                    }// end function
                    })]};
                }// end function
                })]};
            }// end function
            });
            _966299030nameLabels = new ArrayCollection();
            _1262166934quantityLabels = new ArrayCollection();
            _2032971769quantityLabelColors = new ArrayCollection();
            _bindings = [];
            _watchers = [];
            _bindingsByDestination = {};
            _bindingsBeginWithWord = {};
            mx_internal::_document = this;
            return;
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

        private function _DegradationConditionWindow_ClassFactory1_c() : ClassFactory
        {
            var _loc_1:* = new ClassFactory();
            _loc_1.generator = QuantityLabelRenderer;
            return _loc_1;
        }// end function

        public function set closeButton(param1:Button) : void
        {
            var _loc_2:* = this._312699062closeButton;
            if (_loc_2 !== param1)
            {
                this._312699062closeButton = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "closeButton", _loc_2, param1));
            }
            return;
        }// end function

        override public function initialize() : void
        {
            var target:DegradationConditionWindow;
            var watcherSetupUtilClass:Object;
            .mx_internal::setDocumentDescriptor(_documentDescriptor_);
            var bindings:* = _DegradationConditionWindow_bindingsSetup();
            var watchers:Array;
            target;
            if (_watcherSetupUtil == null)
            {
                watcherSetupUtilClass = getDefinitionByName("_com_kbmj_viking_view_home_DegradationConditionWindowWatcherSetupUtil");
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
                bigbox.styleName = "CrystalQtyBg";
                closeButton.y = 240;
                dataList.height = 144;
            }
            else
            {
                bigbox.styleName = "ProcuctionConditionsBg";
                closeButton.y = 210;
                dataList.height = 116;
            }
            return;
        }// end function

        private function get buildingLabel() : String
        {
            return this._398062432buildingLabel;
        }// end function

        private function get buildingLabelColor() : uint
        {
            return this._494070109buildingLabelColor;
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

        private function get requirements() : ArrayCollection
        {
            return this._1619874672requirements;
        }// end function

        private function _DegradationConditionWindow_DataGridColumn1_c() : DataGridColumn
        {
            var _loc_1:* = new DataGridColumn();
            _loc_1.dataField = "vo.nameLabel";
            _loc_1.headerText = "材料";
            _loc_1.width = 160;
            return _loc_1;
        }// end function

        public function get production() : ProductionVO
        {
            return _production;
        }// end function

        private function _DegradationConditionWindow_bindingExprs() : void
        {
            var _loc_1:* = undefined;
            _loc_1 = production.masterVO.product.nameLabel;
            _loc_1 = requirements;
            _loc_1 = "合成成功確率 " + production.successRate + "%";
            _loc_1 = production.isCrystal;
            return;
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

        private function set buildingLabelColor(param1:uint) : void
        {
            var _loc_2:* = this._494070109buildingLabelColor;
            if (_loc_2 !== param1)
            {
                this._494070109buildingLabelColor = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "buildingLabelColor", _loc_2, param1));
            }
            return;
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

        public function get closeButton() : Button
        {
            return this._312699062closeButton;
        }// end function

        public function get bigbox() : Box
        {
            return this._1389174581bigbox;
        }// end function

        private function _DegradationConditionWindow_bindingsSetup() : Array
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
                _DegradationConditionWindow_Label1.text = param1;
                return;
            }// end function
            , "_DegradationConditionWindow_Label1.text");
            result[0] = binding;
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
            result[1] = binding;
            binding = new Binding(this, function () : String
            {
                var _loc_1:* = "合成成功確率 " + production.successRate + "%";
                var _loc_2:* = _loc_1 == undefined ? (null) : (String(_loc_1));
                return _loc_2;
            }// end function
            , function (param1:String) : void
            {
                _DegradationConditionWindow_Label3.text = param1;
                return;
            }// end function
            , "_DegradationConditionWindow_Label3.text");
            result[2] = binding;
            binding = new Binding(this, function () : Boolean
            {
                return production.isCrystal;
            }// end function
            , function (param1:Boolean) : void
            {
                _DegradationConditionWindow_Label3.visible = param1;
                return;
            }// end function
            , "_DegradationConditionWindow_Label3.visible");
            result[3] = binding;
            return result;
        }// end function

        private function onClose() : void
        {
            PopUpManager.removePopUp(this);
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

        public function get dataList() : DataGrid
        {
            return this._1788817256dataList;
        }// end function

        private function get nameLabels() : ArrayCollection
        {
            return this._966299030nameLabels;
        }// end function

        private function set _1753018553production(param1:ProductionVO) : void
        {
            var _loc_2:Object = null;
            var _loc_3:Object = null;
            _production = param1;
            adjustLayout(_production.isCrystal);
            if (_production.requirement.building)
            {
                _loc_2 = production.masterVO.building;
                buildingLabel = _loc_2.buildingMasterVO.nameLabel + "Lv." + _loc_2.level;
                if (_loc_2.quantity > 1)
                {
                    buildingLabel = buildingLabel + (" x" + _loc_2.quantity);
                }
                buildingLabelColor = production.requirement.building.isShort ? (15073298) : (0);
            }
            requirements = new ArrayCollection();
            quantityLabelColors = new ArrayCollection();
            if (_production.requirement.commodities)
            {
                for each (_loc_3 in _production.requirement.commodities)
                {
                    
                    requirements.addItem(_loc_3);
                    quantityLabelColors.addItem(_loc_3.isShort ? (15073298) : (16777215));
                }
            }
            return;
        }// end function

        private function get quantityLabels() : ArrayCollection
        {
            return this._1262166934quantityLabels;
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

        public function __closeButton_click(event:MouseEvent) : void
        {
            onClose();
            return;
        }// end function

        private function _DegradationConditionWindow_DataGridColumn2_c() : DataGridColumn
        {
            var _loc_1:* = new DataGridColumn();
            _loc_1.dataField = "quantity";
            _loc_1.headerText = "所持数/入手個数";
            _loc_1.width = 115;
            _loc_1.itemRenderer = _DegradationConditionWindow_ClassFactory1_c();
            _loc_1.setStyle("textAlign", "center");
            return _loc_1;
        }// end function

        private function get quantityLabelColors() : ArrayCollection
        {
            return this._2032971769quantityLabelColors;
        }// end function

        public static function set watcherSetupUtil(param1:IWatcherSetupUtil) : void
        {
            _watcherSetupUtil = param1;
            return;
        }// end function

    }
}
