package com.kbmj.viking.view.home
{
    import com.kbmj.viking.lib.*;
    import com.kbmj.viking.view.*;
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

    public class ItemsDegradationWindow extends CanvasWithPopUp implements IBindingClient
    {
        private var degradationQuantityWindow:DegradationQuantityWindow;
        public var _ItemsDegradationWindow_DataGridColumn2:DataGridColumn;
        public var _ItemsDegradationWindow_DataGridColumn3:DataGridColumn;
        public var _ItemsDegradationWindow_DataGridColumn5:DataGridColumn;
        public var _ItemsDegradationWindow_DataGridColumn7:DataGridColumn;
        public var _ItemsDegradationWindow_DataGridColumn9:DataGridColumn;
        public var _ItemsDegradationWindow_DataGridColumn4:DataGridColumn;
        public var _ItemsDegradationWindow_DataGridColumn6:DataGridColumn;
        public var _ItemsDegradationWindow_DataGridColumn8:DataGridColumn;
        private var _1283329272blacksmith_data_list:DataGrid;
        private var _324625024detailRendererReproduction:ClassFactory;
        private var degradationConditionWindow:DegradationConditionWindow;
        private var _productionsByType:ArrayCollection;
        private var _1177280081itemList:ViewStack;
        private var productionTypes:Array;
        public var _ItemsDegradationWindow_DataGridColumn10:DataGridColumn;
        public var _ItemsDegradationWindow_DataGridColumn11:DataGridColumn;
        public var _ItemsDegradationWindow_DataGridColumn12:DataGridColumn;
        public var _ItemsDegradationWindow_DataGridColumn13:DataGridColumn;
        public var _ItemsDegradationWindow_DataGridColumn14:DataGridColumn;
        public var _ItemsDegradationWindow_DataGridColumn15:DataGridColumn;
        private var _1518695885catalyst_data_list:DataGrid;
        var _bindingsByDestination:Object;
        public var _ItemsDegradationWindow_Canvas1:Canvas;
        public var _ItemsDegradationWindow_Canvas2:Canvas;
        public var _ItemsDegradationWindow_Canvas3:Canvas;
        public var _ItemsDegradationWindow_Canvas4:Canvas;
        public var _ItemsDegradationWindow_Canvas5:Canvas;
        public var _ItemsDegradationWindow_Canvas6:Canvas;
        private var equipmentDetail:EquipmentDetail;
        private var _949353341leather_data_list:DataGrid;
        private var _130005042produceButton:DataGridColumn;
        private var weaponDetail:WeaponDetail;
        private var _13159378cloth_data_list:DataGrid;
        private var _522920908detailRenderer:ClassFactory;
        var _watchers:Array;
        private var _852753113crafts_data_list:DataGrid;
        private var _1929266763clystals_data_list:DataGrid;
        private var _reproductions:ArrayCollection;
        var _bindingsBeginWithWord:Object;
        var _bindings:Array;
        private var _documentDescriptor_:UIComponentDescriptor;
        private var _1291736593itemListTabBar:TabBar;
        public static const PRODUCE_MAX_QUANTITY:String = "produceMaxQuantity";
        private static var _watcherSetupUtil:IWatcherSetupUtil;
        public static const DEGRADATION_ITEM:String = "itemsDegradationWindow/degradationItem";

        public function ItemsDegradationWindow()
        {
            _documentDescriptor_ = new UIComponentDescriptor({type:CanvasWithPopUp, propertiesFactory:function () : Object
            {
                return {height:567, width:750, childDescriptors:[new UIComponentDescriptor({type:ViewStack, id:"itemList", propertiesFactory:function () : Object
                {
                    return {percentWidth:100, percentHeight:100, childDescriptors:[new UIComponentDescriptor({type:Canvas, id:"_ItemsDegradationWindow_Canvas1", propertiesFactory:function () : Object
                    {
                        return {percentWidth:100, percentHeight:100, childDescriptors:[new UIComponentDescriptor({type:Box, propertiesFactory:function () : Object
                        {
                            return {x:35, y:90, height:440, width:630, childDescriptors:[new UIComponentDescriptor({type:DataGrid, id:"blacksmith_data_list", stylesFactory:function () : void
                            {
                                this.verticalAlign = "middle";
                                return;
                            }// end function
                            , propertiesFactory:function () : Object
                            {
                                return {width:630, rowCount:20, styleName:"DataGridBase", height:440, selectable:false, sortableColumns:false, columns:[_ItemsDegradationWindow_DataGridColumn1_i(), _ItemsDegradationWindow_DataGridColumn2_i(), _ItemsDegradationWindow_DataGridColumn3_i()]};
                            }// end function
                            })]};
                        }// end function
                        })]};
                    }// end function
                    }), new UIComponentDescriptor({type:Canvas, id:"_ItemsDegradationWindow_Canvas2", propertiesFactory:function () : Object
                    {
                        return {percentWidth:100, percentHeight:100, childDescriptors:[new UIComponentDescriptor({type:Box, propertiesFactory:function () : Object
                        {
                            return {x:35, y:90, height:440, width:630, childDescriptors:[new UIComponentDescriptor({type:DataGrid, id:"leather_data_list", stylesFactory:function () : void
                            {
                                this.verticalAlign = "middle";
                                return;
                            }// end function
                            , propertiesFactory:function () : Object
                            {
                                return {width:630, rowCount:20, styleName:"DataGridBase", height:440, selectable:false, sortableColumns:false, columns:[_ItemsDegradationWindow_DataGridColumn4_i(), _ItemsDegradationWindow_DataGridColumn5_i(), _ItemsDegradationWindow_DataGridColumn6_i()]};
                            }// end function
                            })]};
                        }// end function
                        })]};
                    }// end function
                    }), new UIComponentDescriptor({type:Canvas, id:"_ItemsDegradationWindow_Canvas3", propertiesFactory:function () : Object
                    {
                        return {percentWidth:100, percentHeight:100, childDescriptors:[new UIComponentDescriptor({type:Box, propertiesFactory:function () : Object
                        {
                            return {x:35, y:90, height:440, width:630, childDescriptors:[new UIComponentDescriptor({type:DataGrid, id:"cloth_data_list", stylesFactory:function () : void
                            {
                                this.verticalAlign = "middle";
                                return;
                            }// end function
                            , propertiesFactory:function () : Object
                            {
                                return {width:630, rowCount:20, styleName:"DataGridBase", height:440, selectable:false, sortableColumns:false, columns:[_ItemsDegradationWindow_DataGridColumn7_i(), _ItemsDegradationWindow_DataGridColumn8_i(), _ItemsDegradationWindow_DataGridColumn9_i()]};
                            }// end function
                            })]};
                        }// end function
                        })]};
                    }// end function
                    }), new UIComponentDescriptor({type:Canvas, id:"_ItemsDegradationWindow_Canvas4", propertiesFactory:function () : Object
                    {
                        return {percentWidth:100, percentHeight:100, childDescriptors:[new UIComponentDescriptor({type:Box, propertiesFactory:function () : Object
                        {
                            return {x:35, y:90, height:440, width:630, childDescriptors:[new UIComponentDescriptor({type:DataGrid, id:"catalyst_data_list", stylesFactory:function () : void
                            {
                                this.verticalAlign = "middle";
                                return;
                            }// end function
                            , propertiesFactory:function () : Object
                            {
                                return {width:630, rowCount:20, styleName:"DataGridBase", height:440, selectable:false, sortableColumns:false, columns:[_ItemsDegradationWindow_DataGridColumn10_i(), _ItemsDegradationWindow_DataGridColumn11_i(), _ItemsDegradationWindow_DataGridColumn12_i()]};
                            }// end function
                            })]};
                        }// end function
                        })]};
                    }// end function
                    }), new UIComponentDescriptor({type:Canvas, id:"_ItemsDegradationWindow_Canvas5", propertiesFactory:function () : Object
                    {
                        return {percentWidth:100, percentHeight:100, childDescriptors:[new UIComponentDescriptor({type:Box, propertiesFactory:function () : Object
                        {
                            return {x:35, y:90, height:440, width:630, childDescriptors:[new UIComponentDescriptor({type:DataGrid, id:"crafts_data_list", stylesFactory:function () : void
                            {
                                this.verticalAlign = "middle";
                                return;
                            }// end function
                            , propertiesFactory:function () : Object
                            {
                                return {width:630, rowCount:20, styleName:"DataGridBase", height:440, selectable:false, sortableColumns:false, columns:[_ItemsDegradationWindow_DataGridColumn13_i(), _ItemsDegradationWindow_DataGridColumn14_i(), _ItemsDegradationWindow_DataGridColumn15_i()]};
                            }// end function
                            })]};
                        }// end function
                        })]};
                    }// end function
                    }), new UIComponentDescriptor({type:Canvas, id:"_ItemsDegradationWindow_Canvas6", propertiesFactory:function () : Object
                    {
                        return {percentWidth:100, percentHeight:100, childDescriptors:[new UIComponentDescriptor({type:Box, propertiesFactory:function () : Object
                        {
                            return {x:35, y:90, height:440, width:630, childDescriptors:[new UIComponentDescriptor({type:DataGrid, id:"clystals_data_list", stylesFactory:function () : void
                            {
                                this.verticalAlign = "middle";
                                return;
                            }// end function
                            , propertiesFactory:function () : Object
                            {
                                return {width:630, rowCount:20, styleName:"DataGridBase", height:440, selectable:false, sortableColumns:false};
                            }// end function
                            })]};
                        }// end function
                        })]};
                    }// end function
                    })]};
                }// end function
                }), new UIComponentDescriptor({type:Canvas, propertiesFactory:function () : Object
                {
                    return {x:25, y:58, childDescriptors:[new UIComponentDescriptor({type:TabBar, id:"itemListTabBar", propertiesFactory:function () : Object
                    {
                        return {styleName:"ProductionTab", buttonMode:true};
                    }// end function
                    })]};
                }// end function
                }), new UIComponentDescriptor({type:Button, events:{click:"___ItemsDegradationWindow_Button1_click"}, stylesFactory:function () : void
                {
                    this.fontSize = 30;
                    this.top = "10";
                    this.right = "60";
                    return;
                }// end function
                , propertiesFactory:function () : Object
                {
                    return {width:26, height:26, styleName:"closeBtn", buttonMode:true};
                }// end function
                })]};
            }// end function
            });
            productionTypes = ["blacksmith", "leather", "cloth", "magic_catalyst", "accessory", "althing"];
            degradationQuantityWindow = new DegradationQuantityWindow();
            degradationConditionWindow = new DegradationConditionWindow();
            equipmentDetail = new EquipmentDetail();
            weaponDetail = new WeaponDetail();
            _bindings = [];
            _watchers = [];
            _bindingsByDestination = {};
            _bindingsBeginWithWord = {};
            mx_internal::_document = this;
            this.height = 567;
            this.width = 750;
            _ItemsDegradationWindow_ClassFactory1_i();
            _ItemsDegradationWindow_ClassFactory2_i();
            this.addEventListener("creationComplete", ___ItemsDegradationWindow_CanvasWithPopUp1_creationComplete);
            return;
        }// end function

        public function set detailRendererReproduction(param1:ClassFactory) : void
        {
            var _loc_2:* = this._324625024detailRendererReproduction;
            if (_loc_2 !== param1)
            {
                this._324625024detailRendererReproduction = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "detailRendererReproduction", _loc_2, param1));
            }
            return;
        }// end function

        private function init() : void
        {
            itemList.selectedIndex = 0;
            degradationQuantityWindow.addEventListener(DegradationQuantityWindow.DEGRADAT, produceHandler);
            return;
        }// end function

        public function onDetail(param1:Object) : void
        {
            if (param1.masterVO.product.masterType == "WeaponMaster" || param1.masterVO.product.masterType == "ArmorMaster" || param1.masterVO.product.masterType == "AccessoryMaster")
            {
                weaponDetail.viewData = param1.masterVO.product;
                if (weaponDetail.viewData)
                {
                    popupWindow(weaponDetail);
                }
            }
            else
            {
                equipmentDetail.viewData = param1.masterVO.product;
                if (equipmentDetail.viewData)
                {
                    popupWindow(equipmentDetail);
                }
            }
            return;
        }// end function

        private function set _1163127893productionsByType(param1:ArrayCollection) : void
        {
            _productionsByType = param1;
            return;
        }// end function

        public function get crafts_data_list() : DataGrid
        {
            return this._852753113crafts_data_list;
        }// end function

        private function _ItemsDegradationWindow_ClassFactory4_c() : ClassFactory
        {
            var _loc_1:* = new ClassFactory();
            _loc_1.generator = DegradationButtonRenderer;
            return _loc_1;
        }// end function

        private function _ItemsDegradationWindow_DataGridColumn3_i() : DataGridColumn
        {
            var _loc_1:* = new DataGridColumn();
            _ItemsDegradationWindow_DataGridColumn3 = _loc_1;
            _loc_1.dataField = "masterVO.product.description";
            BindingManager.executeBindings(this, "_ItemsDegradationWindow_DataGridColumn3", _ItemsDegradationWindow_DataGridColumn3);
            return _loc_1;
        }// end function

        public function get cloth_data_list() : DataGrid
        {
            return this._13159378cloth_data_list;
        }// end function

        private function _ItemsDegradationWindow_DataGridColumn7_i() : DataGridColumn
        {
            var _loc_1:* = new DataGridColumn();
            _ItemsDegradationWindow_DataGridColumn7 = _loc_1;
            _loc_1.dataField = "button";
            _loc_1.width = 90;
            _loc_1.itemRenderer = _ItemsDegradationWindow_ClassFactory5_c();
            BindingManager.executeBindings(this, "_ItemsDegradationWindow_DataGridColumn7", _ItemsDegradationWindow_DataGridColumn7);
            return _loc_1;
        }// end function

        public function get produceButton() : DataGridColumn
        {
            return this._130005042produceButton;
        }// end function

        public function get detailRenderer() : ClassFactory
        {
            return this._522920908detailRenderer;
        }// end function

        public function conditionButtonClicked(param1:ProductionVO) : void
        {
            var production:* = param1;
            degradationConditionWindow.callLater(function () : void
            {
                degradationConditionWindow.production = production;
                return;
            }// end function
            );
            popupWindow(degradationConditionWindow);
            return;
        }// end function

        public function set maxProductQuantity(param1:int) : void
        {
            degradationQuantityWindow.maxProductQuantity = param1;
            return;
        }// end function

        private function _ItemsDegradationWindow_DataGridColumn15_i() : DataGridColumn
        {
            var _loc_1:* = new DataGridColumn();
            _ItemsDegradationWindow_DataGridColumn15 = _loc_1;
            _loc_1.dataField = "masterVO.product.description";
            BindingManager.executeBindings(this, "_ItemsDegradationWindow_DataGridColumn15", _ItemsDegradationWindow_DataGridColumn15);
            return _loc_1;
        }// end function

        private function _ItemsDegradationWindow_ClassFactory7_c() : ClassFactory
        {
            var _loc_1:* = new ClassFactory();
            _loc_1.generator = DegradationButtonRenderer;
            return _loc_1;
        }// end function

        private function _ItemsDegradationWindow_DataGridColumn11_i() : DataGridColumn
        {
            var _loc_1:* = new DataGridColumn();
            _ItemsDegradationWindow_DataGridColumn11 = _loc_1;
            _loc_1.dataField = "masterVO.product.nameLabel";
            _loc_1.width = 140;
            BindingManager.executeBindings(this, "_ItemsDegradationWindow_DataGridColumn11", _ItemsDegradationWindow_DataGridColumn11);
            return _loc_1;
        }// end function

        private function _ItemsDegradationWindow_ClassFactory3_c() : ClassFactory
        {
            var _loc_1:* = new ClassFactory();
            _loc_1.generator = DegradationButtonRenderer;
            return _loc_1;
        }// end function

        public function reproduceButtonClicked(param1:ReproductionVO) : void
        {
            degradationQuantityWindow.quantityMax = 1;
            degradationQuantityWindow.reproduction = param1;
            popupWindow(degradationQuantityWindow);
            return;
        }// end function

        private function produceHandler(event:PopupEvent) : void
        {
            PopUpManager.removePopUp(degradationQuantityWindow);
            this.dispatchEvent(new PopupEvent(DEGRADATION_ITEM, event.param));
            onClose();
            return;
        }// end function

        public function get clystals_data_list() : DataGrid
        {
            return this._1929266763clystals_data_list;
        }// end function

        public function set crafts_data_list(param1:DataGrid) : void
        {
            var _loc_2:* = this._852753113crafts_data_list;
            if (_loc_2 !== param1)
            {
                this._852753113crafts_data_list = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "crafts_data_list", _loc_2, param1));
            }
            return;
        }// end function

        public function set productionsByType(param1:ArrayCollection) : void
        {
            var _loc_2:* = this.productionsByType;
            if (_loc_2 !== param1)
            {
                this._1163127893productionsByType = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "productionsByType", _loc_2, param1));
            }
            return;
        }// end function

        private function onClose() : void
        {
            PopUpManager.removePopUp(this);
            return;
        }// end function

        private function set _426751289reproductions(param1:ArrayCollection) : void
        {
            _reproductions = param1;
            return;
        }// end function

        public function get itemList() : ViewStack
        {
            return this._1177280081itemList;
        }// end function

        public function onDetailReproduction(param1:Object) : void
        {
            if (param1.productionVO.masterVO.product.masterType == "WeaponMaster" || param1.productionVO.masterVO.product.masterType == "ArmorMaster" || param1.productionVO.masterVO.product.masterType == "AccessoryMaster")
            {
                weaponDetail.viewData = param1.productionVO.masterVO.product;
                if (weaponDetail.viewData)
                {
                    popupWindow(weaponDetail);
                }
            }
            else
            {
                equipmentDetail.viewData = param1.productionVO.masterVO.product;
                if (equipmentDetail.viewData)
                {
                    popupWindow(equipmentDetail);
                }
            }
            return;
        }// end function

        public function set produceButton(param1:DataGridColumn) : void
        {
            var _loc_2:* = this._130005042produceButton;
            if (_loc_2 !== param1)
            {
                this._130005042produceButton = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "produceButton", _loc_2, param1));
            }
            return;
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

        public function ___ItemsDegradationWindow_CanvasWithPopUp1_creationComplete(event:FlexEvent) : void
        {
            init();
            return;
        }// end function

        public function set cloth_data_list(param1:DataGrid) : void
        {
            var _loc_2:* = this._13159378cloth_data_list;
            if (_loc_2 !== param1)
            {
                this._13159378cloth_data_list = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "cloth_data_list", _loc_2, param1));
            }
            return;
        }// end function

        private function _ItemsDegradationWindow_DataGridColumn2_i() : DataGridColumn
        {
            var _loc_1:* = new DataGridColumn();
            _ItemsDegradationWindow_DataGridColumn2 = _loc_1;
            _loc_1.width = 140;
            BindingManager.executeBindings(this, "_ItemsDegradationWindow_DataGridColumn2", _ItemsDegradationWindow_DataGridColumn2);
            return _loc_1;
        }// end function

        private function _ItemsDegradationWindow_DataGridColumn6_i() : DataGridColumn
        {
            var _loc_1:* = new DataGridColumn();
            _ItemsDegradationWindow_DataGridColumn6 = _loc_1;
            _loc_1.dataField = "masterVO.product.description";
            BindingManager.executeBindings(this, "_ItemsDegradationWindow_DataGridColumn6", _ItemsDegradationWindow_DataGridColumn6);
            return _loc_1;
        }// end function

        private function _ItemsDegradationWindow_DataGridColumn10_i() : DataGridColumn
        {
            var _loc_1:* = new DataGridColumn();
            _ItemsDegradationWindow_DataGridColumn10 = _loc_1;
            _loc_1.dataField = "button";
            _loc_1.width = 90;
            _loc_1.itemRenderer = _ItemsDegradationWindow_ClassFactory6_c();
            BindingManager.executeBindings(this, "_ItemsDegradationWindow_DataGridColumn10", _ItemsDegradationWindow_DataGridColumn10);
            return _loc_1;
        }// end function

        private function _ItemsDegradationWindow_DataGridColumn14_i() : DataGridColumn
        {
            var _loc_1:* = new DataGridColumn();
            _ItemsDegradationWindow_DataGridColumn14 = _loc_1;
            _loc_1.dataField = "masterVO.product.nameLabel";
            _loc_1.width = 140;
            BindingManager.executeBindings(this, "_ItemsDegradationWindow_DataGridColumn14", _ItemsDegradationWindow_DataGridColumn14);
            return _loc_1;
        }// end function

        private function _ItemsDegradationWindow_ClassFactory6_c() : ClassFactory
        {
            var _loc_1:* = new ClassFactory();
            _loc_1.generator = DegradationButtonRenderer;
            return _loc_1;
        }// end function

        public function get leather_data_list() : DataGrid
        {
            return this._949353341leather_data_list;
        }// end function

        private function _ItemsDegradationWindow_ClassFactory2_i() : ClassFactory
        {
            var _loc_1:* = new ClassFactory();
            detailRendererReproduction = _loc_1;
            _loc_1.generator = ItemsDegradationWindow_inlineComponent2;
            _loc_1.properties = {outerDocument:this};
            return _loc_1;
        }// end function

        public function get detailRendererReproduction() : ClassFactory
        {
            return this._324625024detailRendererReproduction;
        }// end function

        override public function initialize() : void
        {
            var target:ItemsDegradationWindow;
            var watcherSetupUtilClass:Object;
            .mx_internal::setDocumentDescriptor(_documentDescriptor_);
            var bindings:* = _ItemsDegradationWindow_bindingsSetup();
            var watchers:Array;
            target;
            if (_watcherSetupUtil == null)
            {
                watcherSetupUtilClass = getDefinitionByName("_com_kbmj_viking_view_home_ItemsDegradationWindowWatcherSetupUtil");
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

        public function produceButtonClicked(param1:ProductionVO) : void
        {
            var production:* = param1;
            var createBool:* = degradationQuantityWindow.judgeQuantityMax(production);
            if (createBool)
            {
                degradationQuantityWindow.callLater(function () : void
            {
                degradationQuantityWindow.production = production;
                return;
            }// end function
            );
                popupWindow(degradationQuantityWindow);
            }
            else
            {
                this.dispatchEvent(new PopupEvent(PRODUCE_MAX_QUANTITY, production.masterVO.product.nameLabel));
            }
            return;
        }// end function

        public function set catalyst_data_list(param1:DataGrid) : void
        {
            var _loc_2:* = this._1518695885catalyst_data_list;
            if (_loc_2 !== param1)
            {
                this._1518695885catalyst_data_list = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "catalyst_data_list", _loc_2, param1));
            }
            return;
        }// end function

        public function set clystals_data_list(param1:DataGrid) : void
        {
            var _loc_2:* = this._1929266763clystals_data_list;
            if (_loc_2 !== param1)
            {
                this._1929266763clystals_data_list = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "clystals_data_list", _loc_2, param1));
            }
            return;
        }// end function

        private function _ItemsDegradationWindow_bindingExprs() : void
        {
            var _loc_1:* = undefined;
            _loc_1 = Utils.i18n("generalBlacksmith");
            _loc_1 = productionsByType.getItemAt(0);
            _loc_1 = Utils.i18n("generalRegeneration");
            _loc_1 = Utils.i18n("changeEquipmentItemName");
            _loc_1 = detailRenderer;
            _loc_1 = Utils.i18n("generalDescription");
            _loc_1 = Utils.i18n("localize178");
            _loc_1 = productionsByType.getItemAt(1);
            _loc_1 = Utils.i18n("generalRegeneration");
            _loc_1 = Utils.i18n("changeEquipmentItemName");
            _loc_1 = detailRenderer;
            _loc_1 = Utils.i18n("generalDescription");
            _loc_1 = Utils.i18n("generalCloth");
            _loc_1 = productionsByType.getItemAt(2);
            _loc_1 = Utils.i18n("generalRegeneration");
            _loc_1 = Utils.i18n("changeEquipmentItemName");
            _loc_1 = detailRenderer;
            _loc_1 = Utils.i18n("generalDescription");
            _loc_1 = Utils.i18n("generalMagic");
            _loc_1 = productionsByType.getItemAt(3);
            _loc_1 = Utils.i18n("generalRegeneration");
            _loc_1 = Utils.i18n("changeEquipmentItemName");
            _loc_1 = detailRenderer;
            _loc_1 = Utils.i18n("generalDescription");
            _loc_1 = Utils.i18n("generalAccessory");
            _loc_1 = productionsByType.getItemAt(4);
            _loc_1 = Utils.i18n("generalRegeneration");
            _loc_1 = Utils.i18n("changeEquipmentItemName");
            _loc_1 = detailRenderer;
            _loc_1 = Utils.i18n("generalDescription");
            _loc_1 = Utils.i18n("generalAlthing");
            _loc_1 = productionsByType.getItemAt(5);
            _loc_1 = itemList;
            return;
        }// end function

        public function set itemList(param1:ViewStack) : void
        {
            var _loc_2:* = this._1177280081itemList;
            if (_loc_2 !== param1)
            {
                this._1177280081itemList = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "itemList", _loc_2, param1));
            }
            return;
        }// end function

        public function get productionsByType() : ArrayCollection
        {
            return _productionsByType;
        }// end function

        private function _ItemsDegradationWindow_DataGridColumn5_i() : DataGridColumn
        {
            var _loc_1:* = new DataGridColumn();
            _ItemsDegradationWindow_DataGridColumn5 = _loc_1;
            _loc_1.dataField = "masterVO.product.nameLabel";
            _loc_1.width = 140;
            BindingManager.executeBindings(this, "_ItemsDegradationWindow_DataGridColumn5", _ItemsDegradationWindow_DataGridColumn5);
            return _loc_1;
        }// end function

        public function set reproductions(param1:ArrayCollection) : void
        {
            var _loc_2:* = this.reproductions;
            if (_loc_2 !== param1)
            {
                this._426751289reproductions = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "reproductions", _loc_2, param1));
            }
            return;
        }// end function

        private function _ItemsDegradationWindow_DataGridColumn1_i() : DataGridColumn
        {
            var _loc_1:* = new DataGridColumn();
            produceButton = _loc_1;
            _loc_1.dataField = "button";
            _loc_1.width = 90;
            _loc_1.itemRenderer = _ItemsDegradationWindow_ClassFactory3_c();
            BindingManager.executeBindings(this, "produceButton", produceButton);
            return _loc_1;
        }// end function

        private function _ItemsDegradationWindow_DataGridColumn9_i() : DataGridColumn
        {
            var _loc_1:* = new DataGridColumn();
            _ItemsDegradationWindow_DataGridColumn9 = _loc_1;
            _loc_1.dataField = "masterVO.product.description";
            BindingManager.executeBindings(this, "_ItemsDegradationWindow_DataGridColumn9", _ItemsDegradationWindow_DataGridColumn9);
            return _loc_1;
        }// end function

        public function componrntToolTip() : String
        {
            return Utils.i18n("generalShowDetail");
        }// end function

        public function set productions(param1:Array) : void
        {
            var _loc_4:ProductionVO = null;
            var _loc_2:* = new ArrayCollection();
            var _loc_3:int = 0;
            while (_loc_3 < productionTypes.length)
            {
                
                _loc_2.addItem(new Array());
                _loc_3++;
            }
            for each (_loc_4 in param1)
            {
                
                _loc_2[productionTypes.indexOf(_loc_4.masterVO.productType)].push(_loc_4);
            }
            productionsByType = _loc_2;
            return;
        }// end function

        private function _ItemsDegradationWindow_DataGridColumn13_i() : DataGridColumn
        {
            var _loc_1:* = new DataGridColumn();
            _ItemsDegradationWindow_DataGridColumn13 = _loc_1;
            _loc_1.dataField = "button";
            _loc_1.width = 90;
            _loc_1.itemRenderer = _ItemsDegradationWindow_ClassFactory7_c();
            BindingManager.executeBindings(this, "_ItemsDegradationWindow_DataGridColumn13", _ItemsDegradationWindow_DataGridColumn13);
            return _loc_1;
        }// end function

        private function _ItemsDegradationWindow_ClassFactory5_c() : ClassFactory
        {
            var _loc_1:* = new ClassFactory();
            _loc_1.generator = DegradationButtonRenderer;
            return _loc_1;
        }// end function

        public function ___ItemsDegradationWindow_Button1_click(event:MouseEvent) : void
        {
            onClose();
            return;
        }// end function

        private function _ItemsDegradationWindow_ClassFactory1_i() : ClassFactory
        {
            var _loc_1:* = new ClassFactory();
            detailRenderer = _loc_1;
            _loc_1.generator = ItemsDegradationWindow_inlineComponent1;
            _loc_1.properties = {outerDocument:this};
            return _loc_1;
        }// end function

        private function _ItemsDegradationWindow_bindingsSetup() : Array
        {
            var binding:Binding;
            var result:Array;
            binding = new Binding(this, function () : String
            {
                var _loc_1:* = Utils.i18n("generalBlacksmith");
                var _loc_2:* = _loc_1 == undefined ? (null) : (String(_loc_1));
                return _loc_2;
            }// end function
            , function (param1:String) : void
            {
                _ItemsDegradationWindow_Canvas1.label = param1;
                return;
            }// end function
            , "_ItemsDegradationWindow_Canvas1.label");
            result[0] = binding;
            binding = new Binding(this, function () : Object
            {
                return productionsByType.getItemAt(0);
            }// end function
            , function (param1:Object) : void
            {
                blacksmith_data_list.dataProvider = param1;
                return;
            }// end function
            , "blacksmith_data_list.dataProvider");
            result[1] = binding;
            binding = new Binding(this, function () : String
            {
                var _loc_1:* = Utils.i18n("generalRegeneration");
                var _loc_2:* = _loc_1 == undefined ? (null) : (String(_loc_1));
                return _loc_2;
            }// end function
            , function (param1:String) : void
            {
                produceButton.headerText = param1;
                return;
            }// end function
            , "produceButton.headerText");
            result[2] = binding;
            binding = new Binding(this, function () : String
            {
                var _loc_1:* = Utils.i18n("changeEquipmentItemName");
                var _loc_2:* = _loc_1 == undefined ? (null) : (String(_loc_1));
                return _loc_2;
            }// end function
            , function (param1:String) : void
            {
                _ItemsDegradationWindow_DataGridColumn2.headerText = param1;
                return;
            }// end function
            , "_ItemsDegradationWindow_DataGridColumn2.headerText");
            result[3] = binding;
            binding = new Binding(this, function () : IFactory
            {
                return detailRenderer;
            }// end function
            , function (param1:IFactory) : void
            {
                _ItemsDegradationWindow_DataGridColumn2.itemRenderer = param1;
                return;
            }// end function
            , "_ItemsDegradationWindow_DataGridColumn2.itemRenderer");
            result[4] = binding;
            binding = new Binding(this, function () : String
            {
                var _loc_1:* = Utils.i18n("generalDescription");
                var _loc_2:* = _loc_1 == undefined ? (null) : (String(_loc_1));
                return _loc_2;
            }// end function
            , function (param1:String) : void
            {
                _ItemsDegradationWindow_DataGridColumn3.headerText = param1;
                return;
            }// end function
            , "_ItemsDegradationWindow_DataGridColumn3.headerText");
            result[5] = binding;
            binding = new Binding(this, function () : String
            {
                var _loc_1:* = Utils.i18n("localize178");
                var _loc_2:* = _loc_1 == undefined ? (null) : (String(_loc_1));
                return _loc_2;
            }// end function
            , function (param1:String) : void
            {
                _ItemsDegradationWindow_Canvas2.label = param1;
                return;
            }// end function
            , "_ItemsDegradationWindow_Canvas2.label");
            result[6] = binding;
            binding = new Binding(this, function () : Object
            {
                return productionsByType.getItemAt(1);
            }// end function
            , function (param1:Object) : void
            {
                leather_data_list.dataProvider = param1;
                return;
            }// end function
            , "leather_data_list.dataProvider");
            result[7] = binding;
            binding = new Binding(this, function () : String
            {
                var _loc_1:* = Utils.i18n("generalRegeneration");
                var _loc_2:* = _loc_1 == undefined ? (null) : (String(_loc_1));
                return _loc_2;
            }// end function
            , function (param1:String) : void
            {
                _ItemsDegradationWindow_DataGridColumn4.headerText = param1;
                return;
            }// end function
            , "_ItemsDegradationWindow_DataGridColumn4.headerText");
            result[8] = binding;
            binding = new Binding(this, function () : String
            {
                var _loc_1:* = Utils.i18n("changeEquipmentItemName");
                var _loc_2:* = _loc_1 == undefined ? (null) : (String(_loc_1));
                return _loc_2;
            }// end function
            , function (param1:String) : void
            {
                _ItemsDegradationWindow_DataGridColumn5.headerText = param1;
                return;
            }// end function
            , "_ItemsDegradationWindow_DataGridColumn5.headerText");
            result[9] = binding;
            binding = new Binding(this, function () : IFactory
            {
                return detailRenderer;
            }// end function
            , function (param1:IFactory) : void
            {
                _ItemsDegradationWindow_DataGridColumn5.itemRenderer = param1;
                return;
            }// end function
            , "_ItemsDegradationWindow_DataGridColumn5.itemRenderer");
            result[10] = binding;
            binding = new Binding(this, function () : String
            {
                var _loc_1:* = Utils.i18n("generalDescription");
                var _loc_2:* = _loc_1 == undefined ? (null) : (String(_loc_1));
                return _loc_2;
            }// end function
            , function (param1:String) : void
            {
                _ItemsDegradationWindow_DataGridColumn6.headerText = param1;
                return;
            }// end function
            , "_ItemsDegradationWindow_DataGridColumn6.headerText");
            result[11] = binding;
            binding = new Binding(this, function () : String
            {
                var _loc_1:* = Utils.i18n("generalCloth");
                var _loc_2:* = _loc_1 == undefined ? (null) : (String(_loc_1));
                return _loc_2;
            }// end function
            , function (param1:String) : void
            {
                _ItemsDegradationWindow_Canvas3.label = param1;
                return;
            }// end function
            , "_ItemsDegradationWindow_Canvas3.label");
            result[12] = binding;
            binding = new Binding(this, function () : Object
            {
                return productionsByType.getItemAt(2);
            }// end function
            , function (param1:Object) : void
            {
                cloth_data_list.dataProvider = param1;
                return;
            }// end function
            , "cloth_data_list.dataProvider");
            result[13] = binding;
            binding = new Binding(this, function () : String
            {
                var _loc_1:* = Utils.i18n("generalRegeneration");
                var _loc_2:* = _loc_1 == undefined ? (null) : (String(_loc_1));
                return _loc_2;
            }// end function
            , function (param1:String) : void
            {
                _ItemsDegradationWindow_DataGridColumn7.headerText = param1;
                return;
            }// end function
            , "_ItemsDegradationWindow_DataGridColumn7.headerText");
            result[14] = binding;
            binding = new Binding(this, function () : String
            {
                var _loc_1:* = Utils.i18n("changeEquipmentItemName");
                var _loc_2:* = _loc_1 == undefined ? (null) : (String(_loc_1));
                return _loc_2;
            }// end function
            , function (param1:String) : void
            {
                _ItemsDegradationWindow_DataGridColumn8.headerText = param1;
                return;
            }// end function
            , "_ItemsDegradationWindow_DataGridColumn8.headerText");
            result[15] = binding;
            binding = new Binding(this, function () : IFactory
            {
                return detailRenderer;
            }// end function
            , function (param1:IFactory) : void
            {
                _ItemsDegradationWindow_DataGridColumn8.itemRenderer = param1;
                return;
            }// end function
            , "_ItemsDegradationWindow_DataGridColumn8.itemRenderer");
            result[16] = binding;
            binding = new Binding(this, function () : String
            {
                var _loc_1:* = Utils.i18n("generalDescription");
                var _loc_2:* = _loc_1 == undefined ? (null) : (String(_loc_1));
                return _loc_2;
            }// end function
            , function (param1:String) : void
            {
                _ItemsDegradationWindow_DataGridColumn9.headerText = param1;
                return;
            }// end function
            , "_ItemsDegradationWindow_DataGridColumn9.headerText");
            result[17] = binding;
            binding = new Binding(this, function () : String
            {
                var _loc_1:* = Utils.i18n("generalMagic");
                var _loc_2:* = _loc_1 == undefined ? (null) : (String(_loc_1));
                return _loc_2;
            }// end function
            , function (param1:String) : void
            {
                _ItemsDegradationWindow_Canvas4.label = param1;
                return;
            }// end function
            , "_ItemsDegradationWindow_Canvas4.label");
            result[18] = binding;
            binding = new Binding(this, function () : Object
            {
                return productionsByType.getItemAt(3);
            }// end function
            , function (param1:Object) : void
            {
                catalyst_data_list.dataProvider = param1;
                return;
            }// end function
            , "catalyst_data_list.dataProvider");
            result[19] = binding;
            binding = new Binding(this, function () : String
            {
                var _loc_1:* = Utils.i18n("generalRegeneration");
                var _loc_2:* = _loc_1 == undefined ? (null) : (String(_loc_1));
                return _loc_2;
            }// end function
            , function (param1:String) : void
            {
                _ItemsDegradationWindow_DataGridColumn10.headerText = param1;
                return;
            }// end function
            , "_ItemsDegradationWindow_DataGridColumn10.headerText");
            result[20] = binding;
            binding = new Binding(this, function () : String
            {
                var _loc_1:* = Utils.i18n("changeEquipmentItemName");
                var _loc_2:* = _loc_1 == undefined ? (null) : (String(_loc_1));
                return _loc_2;
            }// end function
            , function (param1:String) : void
            {
                _ItemsDegradationWindow_DataGridColumn11.headerText = param1;
                return;
            }// end function
            , "_ItemsDegradationWindow_DataGridColumn11.headerText");
            result[21] = binding;
            binding = new Binding(this, function () : IFactory
            {
                return detailRenderer;
            }// end function
            , function (param1:IFactory) : void
            {
                _ItemsDegradationWindow_DataGridColumn11.itemRenderer = param1;
                return;
            }// end function
            , "_ItemsDegradationWindow_DataGridColumn11.itemRenderer");
            result[22] = binding;
            binding = new Binding(this, function () : String
            {
                var _loc_1:* = Utils.i18n("generalDescription");
                var _loc_2:* = _loc_1 == undefined ? (null) : (String(_loc_1));
                return _loc_2;
            }// end function
            , function (param1:String) : void
            {
                _ItemsDegradationWindow_DataGridColumn12.headerText = param1;
                return;
            }// end function
            , "_ItemsDegradationWindow_DataGridColumn12.headerText");
            result[23] = binding;
            binding = new Binding(this, function () : String
            {
                var _loc_1:* = Utils.i18n("generalAccessory");
                var _loc_2:* = _loc_1 == undefined ? (null) : (String(_loc_1));
                return _loc_2;
            }// end function
            , function (param1:String) : void
            {
                _ItemsDegradationWindow_Canvas5.label = param1;
                return;
            }// end function
            , "_ItemsDegradationWindow_Canvas5.label");
            result[24] = binding;
            binding = new Binding(this, function () : Object
            {
                return productionsByType.getItemAt(4);
            }// end function
            , function (param1:Object) : void
            {
                crafts_data_list.dataProvider = param1;
                return;
            }// end function
            , "crafts_data_list.dataProvider");
            result[25] = binding;
            binding = new Binding(this, function () : String
            {
                var _loc_1:* = Utils.i18n("generalRegeneration");
                var _loc_2:* = _loc_1 == undefined ? (null) : (String(_loc_1));
                return _loc_2;
            }// end function
            , function (param1:String) : void
            {
                _ItemsDegradationWindow_DataGridColumn13.headerText = param1;
                return;
            }// end function
            , "_ItemsDegradationWindow_DataGridColumn13.headerText");
            result[26] = binding;
            binding = new Binding(this, function () : String
            {
                var _loc_1:* = Utils.i18n("changeEquipmentItemName");
                var _loc_2:* = _loc_1 == undefined ? (null) : (String(_loc_1));
                return _loc_2;
            }// end function
            , function (param1:String) : void
            {
                _ItemsDegradationWindow_DataGridColumn14.headerText = param1;
                return;
            }// end function
            , "_ItemsDegradationWindow_DataGridColumn14.headerText");
            result[27] = binding;
            binding = new Binding(this, function () : IFactory
            {
                return detailRenderer;
            }// end function
            , function (param1:IFactory) : void
            {
                _ItemsDegradationWindow_DataGridColumn14.itemRenderer = param1;
                return;
            }// end function
            , "_ItemsDegradationWindow_DataGridColumn14.itemRenderer");
            result[28] = binding;
            binding = new Binding(this, function () : String
            {
                var _loc_1:* = Utils.i18n("generalDescription");
                var _loc_2:* = _loc_1 == undefined ? (null) : (String(_loc_1));
                return _loc_2;
            }// end function
            , function (param1:String) : void
            {
                _ItemsDegradationWindow_DataGridColumn15.headerText = param1;
                return;
            }// end function
            , "_ItemsDegradationWindow_DataGridColumn15.headerText");
            result[29] = binding;
            binding = new Binding(this, function () : String
            {
                var _loc_1:* = Utils.i18n("generalAlthing");
                var _loc_2:* = _loc_1 == undefined ? (null) : (String(_loc_1));
                return _loc_2;
            }// end function
            , function (param1:String) : void
            {
                _ItemsDegradationWindow_Canvas6.label = param1;
                return;
            }// end function
            , "_ItemsDegradationWindow_Canvas6.label");
            result[30] = binding;
            binding = new Binding(this, function () : Object
            {
                return productionsByType.getItemAt(5);
            }// end function
            , function (param1:Object) : void
            {
                clystals_data_list.dataProvider = param1;
                return;
            }// end function
            , "clystals_data_list.dataProvider");
            result[31] = binding;
            binding = new Binding(this, function () : Object
            {
                return itemList;
            }// end function
            , function (param1:Object) : void
            {
                itemListTabBar.dataProvider = param1;
                return;
            }// end function
            , "itemListTabBar.dataProvider");
            result[32] = binding;
            return result;
        }// end function

        public function get reproductions() : ArrayCollection
        {
            return _reproductions;
        }// end function

        public function get catalyst_data_list() : DataGrid
        {
            return this._1518695885catalyst_data_list;
        }// end function

        public function set itemListTabBar(param1:TabBar) : void
        {
            var _loc_2:* = this._1291736593itemListTabBar;
            if (_loc_2 !== param1)
            {
                this._1291736593itemListTabBar = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "itemListTabBar", _loc_2, param1));
            }
            return;
        }// end function

        public function onClick(param1:Object) : void
        {
            dispatchEvent(new PopupEvent(DEGRADATION_ITEM, param1));
            return;
        }// end function

        private function _ItemsDegradationWindow_DataGridColumn4_i() : DataGridColumn
        {
            var _loc_1:* = new DataGridColumn();
            _ItemsDegradationWindow_DataGridColumn4 = _loc_1;
            _loc_1.dataField = "button";
            _loc_1.width = 90;
            _loc_1.itemRenderer = _ItemsDegradationWindow_ClassFactory4_c();
            BindingManager.executeBindings(this, "_ItemsDegradationWindow_DataGridColumn4", _ItemsDegradationWindow_DataGridColumn4);
            return _loc_1;
        }// end function

        public function get itemListTabBar() : TabBar
        {
            return this._1291736593itemListTabBar;
        }// end function

        public function set blacksmith_data_list(param1:DataGrid) : void
        {
            var _loc_2:* = this._1283329272blacksmith_data_list;
            if (_loc_2 !== param1)
            {
                this._1283329272blacksmith_data_list = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "blacksmith_data_list", _loc_2, param1));
            }
            return;
        }// end function

        private function _ItemsDegradationWindow_DataGridColumn8_i() : DataGridColumn
        {
            var _loc_1:* = new DataGridColumn();
            _ItemsDegradationWindow_DataGridColumn8 = _loc_1;
            _loc_1.dataField = "masterVO.product.nameLabel";
            _loc_1.width = 100;
            BindingManager.executeBindings(this, "_ItemsDegradationWindow_DataGridColumn8", _ItemsDegradationWindow_DataGridColumn8);
            return _loc_1;
        }// end function

        public function set leather_data_list(param1:DataGrid) : void
        {
            var _loc_2:* = this._949353341leather_data_list;
            if (_loc_2 !== param1)
            {
                this._949353341leather_data_list = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "leather_data_list", _loc_2, param1));
            }
            return;
        }// end function

        private function _ItemsDegradationWindow_DataGridColumn12_i() : DataGridColumn
        {
            var _loc_1:* = new DataGridColumn();
            _ItemsDegradationWindow_DataGridColumn12 = _loc_1;
            _loc_1.dataField = "masterVO.product.description";
            BindingManager.executeBindings(this, "_ItemsDegradationWindow_DataGridColumn12", _ItemsDegradationWindow_DataGridColumn12);
            return _loc_1;
        }// end function

        public function get blacksmith_data_list() : DataGrid
        {
            return this._1283329272blacksmith_data_list;
        }// end function

        public static function set watcherSetupUtil(param1:IWatcherSetupUtil) : void
        {
            ItemsDegradationWindow._watcherSetupUtil = param1;
            return;
        }// end function

    }
}
