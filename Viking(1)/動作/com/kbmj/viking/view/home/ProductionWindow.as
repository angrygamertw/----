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

    public class ProductionWindow extends CanvasWithPopUp implements IBindingClient
    {
        private var _237274816tutMarkProduce:Image;
        private var _1283329272blacksmith_data_list:DataGrid;
        public var _ProductionWindow_Text1:Text;
        private var _1129733453tabCanvas:Canvas;
        public var upgradeItemWindow:UpgradeItemWindow;
        private var _1642421088catalystArray:ArrayCollection;
        private var _133026136detailRendererUpgradeItems:ClassFactory;
        private var _94427871tutVisible:Boolean = false;
        private var _1801189456leatherArray:ArrayCollection;
        var _bindingsByDestination:Object;
        private var _949353341leather_data_list:DataGrid;
        private var _130005042produceButton:DataGridColumn;
        private var _13159378cloth_data_list:DataGrid;
        private var _522920908detailRenderer:ClassFactory;
        private var _1929266763clystals_data_list:DataGrid;
        private var _1896677185windowLayer:Canvas;
        private var _1288359527accessoryArray:ArrayCollection;
        private var _reproductions:ArrayCollection;
        private var _embed_mxml__swf_common_button_close_window_swf_1370265653:Class;
        private var _embed_mxml__swf_common_arrow_bottom_swf_1091498217:Class;
        private var _105185824leather_data_list_tutorial:DataGrid;
        private var _upgradeItems:ArrayCollection;
        public var productionConditionWindow:ProductionConditionWindow;
        public var _ProductionWindow_Canvas3:Canvas;
        public var _ProductionWindow_Canvas4:Canvas;
        public var _ProductionWindow_Canvas5:Canvas;
        public var _ProductionWindow_Canvas6:Canvas;
        public var _ProductionWindow_Canvas7:Canvas;
        private var _496922251blackSmithArray:ArrayCollection;
        public var _ProductionWindow_DataGridColumn10:DataGridColumn;
        public var _ProductionWindow_DataGridColumn11:DataGridColumn;
        public var _ProductionWindow_DataGridColumn12:DataGridColumn;
        public var _ProductionWindow_DataGridColumn13:DataGridColumn;
        public var _ProductionWindow_DataGridColumn14:DataGridColumn;
        public var _ProductionWindow_DataGridColumn15:DataGridColumn;
        public var _ProductionWindow_DataGridColumn16:DataGridColumn;
        public var _ProductionWindow_DataGridColumn17:DataGridColumn;
        public var _ProductionWindow_DataGridColumn18:DataGridColumn;
        public var _ProductionWindow_DataGridColumn19:DataGridColumn;
        private var _1177280081itemList:ViewStack;
        private var _productionsByType:ArrayCollection;
        private var selectId:int;
        public var _ProductionWindow_DataGridColumn20:DataGridColumn;
        public var _ProductionWindow_DataGridColumn21:DataGridColumn;
        public var _ProductionWindow_DataGridColumn23:DataGridColumn;
        public var _ProductionWindow_DataGridColumn24:DataGridColumn;
        public var _ProductionWindow_DataGridColumn25:DataGridColumn;
        private var productionTypes:Array;
        public var _tutMarkProductionVisible:Boolean = false;
        private var _1518695885catalyst_data_list:DataGrid;
        public var _ProductionWindow_ComboBox1:ComboBox;
        public var _ProductionWindow_ComboBox2:ComboBox;
        public var _ProductionWindow_ComboBox3:ComboBox;
        public var _ProductionWindow_ComboBox4:ComboBox;
        public var _ProductionWindow_ComboBox5:ComboBox;
        public var _ProductionWindow_ComboBox6:ComboBox;
        private var _844665027crystalArray:ArrayCollection;
        public var productionQuantityWindow:ProductionQuantityWindow;
        private var _1897199464upgradeItems_data_list:DataGrid;
        private var _1777504961buttonLayer:Canvas;
        private var equipmentDetail:EquipmentDetail;
        private var weaponDetail:WeaponDetail;
        public var _ProductionWindow_DataGridColumn2:DataGridColumn;
        public var _ProductionWindow_DataGridColumn3:DataGridColumn;
        public var _ProductionWindow_DataGridColumn4:DataGridColumn;
        public var _ProductionWindow_DataGridColumn5:DataGridColumn;
        public var _ProductionWindow_DataGridColumn6:DataGridColumn;
        public var _ProductionWindow_DataGridColumn7:DataGridColumn;
        public var _ProductionWindow_DataGridColumn8:DataGridColumn;
        public var _ProductionWindow_DataGridColumn9:DataGridColumn;
        var _watchers:Array;
        private var _852753113crafts_data_list:DataGrid;
        private var _1115921313clothArray:ArrayCollection;
        private var _714938261selectJobData:Array;
        var _bindingsBeginWithWord:Object;
        private var _1225459084nonTutVisible:Boolean = true;
        var _bindings:Array;
        private var _documentDescriptor_:UIComponentDescriptor;
        public static const CLOSED_PRODUCTION_WINDOW:String = "closedProductionWindow";
        public static const PRODUCE_MAX_QUANTITY:String = "produceMaxQuantity";
        public static const OPEN_UPGRADE_WINDOW:String = "openUpgradeWindow";
        public static const OPEN_CONDITION_WINDOW:String = "openConditionWindow";
        public static const OPEN_QUANTITY_WINDOW:String = "openQuantityWindow";
        public static const TAB_LABEL:Object = {0:"tab_production_blacksmith", 1:"tab_production_leather", 2:"tab_production_cloth", 3:"tab_production_magic", 4:"tab_production_accessory", 5:"tab_compound_soul", 6:"tab_compound_strengthen"};
        public static const UPGRADE_ITEM:String = "upgradeItem";
        private static var _watcherSetupUtil:IWatcherSetupUtil;

        public function ProductionWindow()
        {
            _documentDescriptor_ = new UIComponentDescriptor({type:CanvasWithPopUp, propertiesFactory:function () : Object
            {
                return {width:750, childDescriptors:[new UIComponentDescriptor({type:Canvas, id:"windowLayer"}), new UIComponentDescriptor({type:Canvas, id:"tabCanvas", propertiesFactory:function () : Object
                {
                    return {x:42, y:114, width:300};
                }// end function
                }), new UIComponentDescriptor({type:Text, id:"_ProductionWindow_Text1", propertiesFactory:function () : Object
                {
                    return {styleName:"PanelBaseTitle", x:325, y:83};
                }// end function
                }), new UIComponentDescriptor({type:ViewStack, id:"itemList", propertiesFactory:function () : Object
                {
                    return {percentWidth:100, childDescriptors:[new UIComponentDescriptor({type:Canvas, id:"_ProductionWindow_Canvas3", propertiesFactory:function () : Object
                    {
                        return {percentWidth:100, childDescriptors:[new UIComponentDescriptor({type:ComboBox, id:"_ProductionWindow_ComboBox1", events:{change:"___ProductionWindow_ComboBox1_change"}, propertiesFactory:function () : Object
                        {
                            return {x:495, y:485, width:150, styleName:"GuildComboBox"};
                        }// end function
                        }), new UIComponentDescriptor({type:Box, propertiesFactory:function () : Object
                        {
                            return {x:37, y:140, width:640, childDescriptors:[new UIComponentDescriptor({type:DataGrid, id:"blacksmith_data_list", stylesFactory:function () : void
                            {
                                this.verticalAlign = "middle";
                                return;
                            }// end function
                            , propertiesFactory:function () : Object
                            {
                                return {width:640, rowCount:11, styleName:"DataGridBase", selectable:false, sortableColumns:false, columns:[_ProductionWindow_DataGridColumn1_i(), _ProductionWindow_DataGridColumn2_i(), _ProductionWindow_DataGridColumn3_i()]};
                            }// end function
                            })]};
                        }// end function
                        })]};
                    }// end function
                    }), new UIComponentDescriptor({type:Canvas, id:"_ProductionWindow_Canvas4", propertiesFactory:function () : Object
                    {
                        return {percentWidth:100, childDescriptors:[new UIComponentDescriptor({type:ComboBox, id:"_ProductionWindow_ComboBox2", events:{change:"___ProductionWindow_ComboBox2_change"}, propertiesFactory:function () : Object
                        {
                            return {x:495, y:485, width:150, styleName:"GuildComboBox"};
                        }// end function
                        }), new UIComponentDescriptor({type:Box, propertiesFactory:function () : Object
                        {
                            return {x:37, y:140, width:640, childDescriptors:[new UIComponentDescriptor({type:DataGrid, id:"leather_data_list", stylesFactory:function () : void
                            {
                                this.verticalAlign = "middle";
                                return;
                            }// end function
                            , propertiesFactory:function () : Object
                            {
                                return {width:640, rowCount:11, styleName:"DataGridBase", selectable:false, sortableColumns:false, includeInLayout:false, columns:[_ProductionWindow_DataGridColumn4_i(), _ProductionWindow_DataGridColumn5_i(), _ProductionWindow_DataGridColumn6_i()]};
                            }// end function
                            }), new UIComponentDescriptor({type:DataGrid, id:"leather_data_list_tutorial", stylesFactory:function () : void
                            {
                                this.verticalAlign = "middle";
                                return;
                            }// end function
                            , propertiesFactory:function () : Object
                            {
                                return {width:640, rowCount:11, styleName:"DataGridBase", selectable:false, sortableColumns:false, columns:[_ProductionWindow_DataGridColumn7_i(), _ProductionWindow_DataGridColumn8_i(), _ProductionWindow_DataGridColumn9_i()]};
                            }// end function
                            })]};
                        }// end function
                        })]};
                    }// end function
                    }), new UIComponentDescriptor({type:Canvas, id:"_ProductionWindow_Canvas5", propertiesFactory:function () : Object
                    {
                        return {percentWidth:100, childDescriptors:[new UIComponentDescriptor({type:ComboBox, id:"_ProductionWindow_ComboBox3", events:{change:"___ProductionWindow_ComboBox3_change"}, propertiesFactory:function () : Object
                        {
                            return {x:495, y:485, width:150, styleName:"GuildComboBox"};
                        }// end function
                        }), new UIComponentDescriptor({type:Box, propertiesFactory:function () : Object
                        {
                            return {x:37, y:140, width:640, childDescriptors:[new UIComponentDescriptor({type:DataGrid, id:"cloth_data_list", stylesFactory:function () : void
                            {
                                this.verticalAlign = "middle";
                                return;
                            }// end function
                            , propertiesFactory:function () : Object
                            {
                                return {width:640, rowCount:11, styleName:"DataGridBase", selectable:false, sortableColumns:false, columns:[_ProductionWindow_DataGridColumn10_i(), _ProductionWindow_DataGridColumn11_i(), _ProductionWindow_DataGridColumn12_i()]};
                            }// end function
                            })]};
                        }// end function
                        })]};
                    }// end function
                    }), new UIComponentDescriptor({type:Canvas, id:"_ProductionWindow_Canvas6", propertiesFactory:function () : Object
                    {
                        return {percentWidth:100, childDescriptors:[new UIComponentDescriptor({type:ComboBox, id:"_ProductionWindow_ComboBox4", events:{change:"___ProductionWindow_ComboBox4_change"}, propertiesFactory:function () : Object
                        {
                            return {x:495, y:485, width:150, styleName:"GuildComboBox"};
                        }// end function
                        }), new UIComponentDescriptor({type:Box, propertiesFactory:function () : Object
                        {
                            return {x:37, y:140, width:640, childDescriptors:[new UIComponentDescriptor({type:DataGrid, id:"catalyst_data_list", stylesFactory:function () : void
                            {
                                this.verticalAlign = "middle";
                                return;
                            }// end function
                            , propertiesFactory:function () : Object
                            {
                                return {width:640, rowCount:11, styleName:"DataGridBase", selectable:false, sortableColumns:false, columns:[_ProductionWindow_DataGridColumn13_i(), _ProductionWindow_DataGridColumn14_i(), _ProductionWindow_DataGridColumn15_i()]};
                            }// end function
                            })]};
                        }// end function
                        })]};
                    }// end function
                    }), new UIComponentDescriptor({type:Canvas, id:"_ProductionWindow_Canvas7", propertiesFactory:function () : Object
                    {
                        return {percentWidth:100, childDescriptors:[new UIComponentDescriptor({type:ComboBox, id:"_ProductionWindow_ComboBox5", events:{change:"___ProductionWindow_ComboBox5_change"}, propertiesFactory:function () : Object
                        {
                            return {x:495, y:485, width:150, styleName:"GuildComboBox"};
                        }// end function
                        }), new UIComponentDescriptor({type:Box, propertiesFactory:function () : Object
                        {
                            return {x:37, y:140, width:640, childDescriptors:[new UIComponentDescriptor({type:DataGrid, id:"crafts_data_list", stylesFactory:function () : void
                            {
                                this.verticalAlign = "middle";
                                return;
                            }// end function
                            , propertiesFactory:function () : Object
                            {
                                return {width:640, rowCount:11, styleName:"DataGridBase", selectable:false, sortableColumns:false, columns:[_ProductionWindow_DataGridColumn16_i(), _ProductionWindow_DataGridColumn17_i(), _ProductionWindow_DataGridColumn18_i()]};
                            }// end function
                            })]};
                        }// end function
                        })]};
                    }// end function
                    }), new UIComponentDescriptor({type:Canvas, propertiesFactory:function () : Object
                    {
                        return {label:"{Utils.i18n(\'generalAlthing\')", percentWidth:100, childDescriptors:[new UIComponentDescriptor({type:ComboBox, id:"_ProductionWindow_ComboBox6", events:{change:"___ProductionWindow_ComboBox6_change"}, propertiesFactory:function () : Object
                        {
                            return {x:495, y:485, width:150, styleName:"GuildComboBox"};
                        }// end function
                        }), new UIComponentDescriptor({type:Box, propertiesFactory:function () : Object
                        {
                            return {x:37, y:140, width:640, childDescriptors:[new UIComponentDescriptor({type:DataGrid, id:"clystals_data_list", stylesFactory:function () : void
                            {
                                this.verticalAlign = "middle";
                                return;
                            }// end function
                            , propertiesFactory:function () : Object
                            {
                                return {width:640, rowCount:11, styleName:"DataGridBase", selectable:false, sortableColumns:false, columns:[_ProductionWindow_DataGridColumn19_i(), _ProductionWindow_DataGridColumn20_i(), _ProductionWindow_DataGridColumn21_i()]};
                            }// end function
                            })]};
                        }// end function
                        })]};
                    }// end function
                    }), new UIComponentDescriptor({type:Canvas, propertiesFactory:function () : Object
                    {
                        return {label:"強化", percentWidth:100, childDescriptors:[new UIComponentDescriptor({type:Box, propertiesFactory:function () : Object
                        {
                            return {x:37, y:140, width:640, childDescriptors:[new UIComponentDescriptor({type:DataGrid, id:"upgradeItems_data_list", stylesFactory:function () : void
                            {
                                this.verticalAlign = "middle";
                                return;
                            }// end function
                            , propertiesFactory:function () : Object
                            {
                                return {width:640, rowCount:11, styleName:"DataGridBase", selectable:false, sortableColumns:false, columns:[_ProductionWindow_DataGridColumn22_c(), _ProductionWindow_DataGridColumn23_i(), _ProductionWindow_DataGridColumn24_i(), _ProductionWindow_DataGridColumn25_i()]};
                            }// end function
                            })]};
                        }// end function
                        })]};
                    }// end function
                    })]};
                }// end function
                }), new UIComponentDescriptor({type:Image, events:{click:"___ProductionWindow_Image1_click"}, stylesFactory:function () : void
                {
                    this.top = "80";
                    this.right = "65";
                    return;
                }// end function
                , propertiesFactory:function () : Object
                {
                    return {width:20, height:20, source:_embed_mxml__swf_common_button_close_window_swf_1370265653};
                }// end function
                }), new UIComponentDescriptor({type:Image, id:"tutMarkProduce", propertiesFactory:function () : Object
                {
                    return {source:_embed_mxml__swf_common_arrow_bottom_swf_1091498217, width:75, height:75, y:70, x:178};
                }// end function
                }), new UIComponentDescriptor({type:Canvas, id:"buttonLayer"})]};
            }// end function
            });
            productionTypes = ["blacksmith", "leather", "cloth", "magic_catalyst", "accessory", "althing"];
            productionQuantityWindow = new ProductionQuantityWindow();
            productionConditionWindow = new ProductionConditionWindow();
            upgradeItemWindow = new UpgradeItemWindow();
            equipmentDetail = new EquipmentDetail();
            weaponDetail = new WeaponDetail();
            _embed_mxml__swf_common_arrow_bottom_swf_1091498217 = ProductionWindow__embed_mxml__swf_common_arrow_bottom_swf_1091498217;
            _embed_mxml__swf_common_button_close_window_swf_1370265653 = ProductionWindow__embed_mxml__swf_common_button_close_window_swf_1370265653;
            _bindings = [];
            _watchers = [];
            _bindingsByDestination = {};
            _bindingsBeginWithWord = {};
            mx_internal::_document = this;
            this.width = 750;
            _ProductionWindow_ClassFactory1_i();
            _ProductionWindow_ClassFactory2_i();
            this.addEventListener("creationComplete", ___ProductionWindow_CanvasWithPopUp1_creationComplete);
            return;
        }// end function

        private function _ProductionWindow_DataGridColumn3_i() : DataGridColumn
        {
            var _loc_1:* = new DataGridColumn();
            _ProductionWindow_DataGridColumn3 = _loc_1;
            _loc_1.dataField = "masterVO.product.description";
            BindingManager.executeBindings(this, "_ProductionWindow_DataGridColumn3", _ProductionWindow_DataGridColumn3);
            return _loc_1;
        }// end function

        public function set upgradeItems(param1:ArrayCollection) : void
        {
            var _loc_2:* = this.upgradeItems;
            if (_loc_2 !== param1)
            {
                this._1357230332upgradeItems = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "upgradeItems", _loc_2, param1));
            }
            return;
        }// end function

        private function _ProductionWindow_DataGridColumn10_i() : DataGridColumn
        {
            var _loc_1:* = new DataGridColumn();
            _ProductionWindow_DataGridColumn10 = _loc_1;
            _loc_1.dataField = "button";
            _loc_1.width = 52;
            _loc_1.itemRenderer = _ProductionWindow_ClassFactory6_c();
            BindingManager.executeBindings(this, "_ProductionWindow_DataGridColumn10", _ProductionWindow_DataGridColumn10);
            return _loc_1;
        }// end function

        private function _ProductionWindow_DataGridColumn18_i() : DataGridColumn
        {
            var _loc_1:* = new DataGridColumn();
            _ProductionWindow_DataGridColumn18 = _loc_1;
            _loc_1.dataField = "masterVO.product.description";
            BindingManager.executeBindings(this, "_ProductionWindow_DataGridColumn18", _ProductionWindow_DataGridColumn18);
            return _loc_1;
        }// end function

        private function setCatalystArray() : void
        {
            var _loc_2:Object = null;
            var _loc_1:* = new Array();
            for each (_loc_2 in productionsByType.getItemAt(3))
            {
                
                _loc_1.push(_loc_2);
            }
            catalystArray = new ArrayCollection(_loc_1);
            return;
        }// end function

        private function _ProductionWindow_ClassFactory2_i() : ClassFactory
        {
            var _loc_1:* = new ClassFactory();
            detailRendererUpgradeItems = _loc_1;
            _loc_1.generator = ProductionWindow_inlineComponent2;
            _loc_1.properties = {outerDocument:this};
            return _loc_1;
        }// end function

        public function componentToolTip() : String
        {
            return Utils.i18n("generalShowDetail");
        }// end function

        private function _ProductionWindow_DataGridColumn21_i() : DataGridColumn
        {
            var _loc_1:* = new DataGridColumn();
            _ProductionWindow_DataGridColumn21 = _loc_1;
            _loc_1.dataField = "masterVO.product.description";
            BindingManager.executeBindings(this, "_ProductionWindow_DataGridColumn21", _ProductionWindow_DataGridColumn21);
            return _loc_1;
        }// end function

        public function ___ProductionWindow_ComboBox5_change(event:ListEvent) : void
        {
            jobFilter(event);
            return;
        }// end function

        public function get produceButton() : DataGridColumn
        {
            return this._130005042produceButton;
        }// end function

        public function onDetailUpgradeItems(param1:Object) : void
        {
            if (param1.masterVO.masterType == "WeaponMaster" || param1.masterVO.masterType == "ArmorMaster" || param1.masterVO.masterType == "AccessoryMaster")
            {
                weaponDetail.viewData = param1.masterVO;
                if (weaponDetail.viewData)
                {
                    popupWindow(weaponDetail);
                }
            }
            else
            {
                equipmentDetail.viewData = param1.masterVO;
                if (equipmentDetail.viewData)
                {
                    popupWindow(equipmentDetail);
                }
            }
            return;
        }// end function

        public function get cloth_data_list() : DataGrid
        {
            return this._13159378cloth_data_list;
        }// end function

        public function changeItemFilter(param1:Object) : Boolean
        {
            if (param1.masterVO.product.masterType == "ItemMaster" || param1.masterVO.product.masterType == "MaterialMaster")
            {
                return true;
            }
            return false;
        }// end function

        private function _ProductionWindow_DataGridColumn2_i() : DataGridColumn
        {
            var _loc_1:* = new DataGridColumn();
            _ProductionWindow_DataGridColumn2 = _loc_1;
            _loc_1.width = 140;
            BindingManager.executeBindings(this, "_ProductionWindow_DataGridColumn2", _ProductionWindow_DataGridColumn2);
            return _loc_1;
        }// end function

        public function get detailRenderer() : ClassFactory
        {
            return this._522920908detailRenderer;
        }// end function

        public function get clystals_data_list() : DataGrid
        {
            return this._1929266763clystals_data_list;
        }// end function

        private function setCrystalArray() : void
        {
            var _loc_2:Object = null;
            var _loc_1:* = new Array();
            for each (_loc_2 in productionsByType.getItemAt(5))
            {
                
                _loc_1.push(_loc_2);
            }
            crystalArray = new ArrayCollection(_loc_1);
            return;
        }// end function

        private function _ProductionWindow_DataGridColumn17_i() : DataGridColumn
        {
            var _loc_1:* = new DataGridColumn();
            _ProductionWindow_DataGridColumn17 = _loc_1;
            _loc_1.dataField = "masterVO.product.nameLabel";
            _loc_1.width = 140;
            BindingManager.executeBindings(this, "_ProductionWindow_DataGridColumn17", _ProductionWindow_DataGridColumn17);
            return _loc_1;
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

        public function reproduceButtonClicked(param1:ReproductionVO) : void
        {
            productionQuantityWindow.quantityMax = 1;
            productionQuantityWindow.reproduction = param1;
            popupWindow(productionQuantityWindow);
            return;
        }// end function

        private function _ProductionWindow_ClassFactory9_c() : ClassFactory
        {
            var _loc_1:* = new ClassFactory();
            _loc_1.generator = ProductionButtonRenderer;
            return _loc_1;
        }// end function

        private function _ProductionWindow_ClassFactory1_i() : ClassFactory
        {
            var _loc_1:* = new ClassFactory();
            detailRenderer = _loc_1;
            _loc_1.generator = ProductionWindow_inlineComponent1;
            _loc_1.properties = {outerDocument:this};
            return _loc_1;
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

        private function get clothArray() : ArrayCollection
        {
            return this._1115921313clothArray;
        }// end function

        public function get itemList() : ViewStack
        {
            return this._1177280081itemList;
        }// end function

        private function setClothArray() : void
        {
            var _loc_2:Object = null;
            var _loc_1:* = new Array();
            for each (_loc_2 in productionsByType.getItemAt(2))
            {
                
                _loc_1.push(_loc_2);
            }
            clothArray = new ArrayCollection(_loc_1);
            return;
        }// end function

        private function produceHandler(event:PopupEvent) : void
        {
            PopUpManager.removePopUp(productionQuantityWindow);
            this.dispatchEvent(new PopupEvent(Viking.HOME_PRODUCE, event.param));
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

        private function _ProductionWindow_DataGridColumn20_i() : DataGridColumn
        {
            var _loc_1:* = new DataGridColumn();
            _ProductionWindow_DataGridColumn20 = _loc_1;
            _loc_1.dataField = "masterVO.product.nameLabel";
            _loc_1.width = 140;
            BindingManager.executeBindings(this, "_ProductionWindow_DataGridColumn20", _ProductionWindow_DataGridColumn20);
            return _loc_1;
        }// end function

        private function get accessoryArray() : ArrayCollection
        {
            return this._1288359527accessoryArray;
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

        private function get selectJobData() : Array
        {
            return this._714938261selectJobData;
        }// end function

        public function ___ProductionWindow_ComboBox3_change(event:ListEvent) : void
        {
            jobFilter(event);
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

        private function _ProductionWindow_DataGridColumn1_i() : DataGridColumn
        {
            var _loc_1:* = new DataGridColumn();
            produceButton = _loc_1;
            _loc_1.dataField = "button";
            _loc_1.width = 52;
            _loc_1.itemRenderer = _ProductionWindow_ClassFactory3_c();
            BindingManager.executeBindings(this, "produceButton", produceButton);
            return _loc_1;
        }// end function

        private function _ProductionWindow_DataGridColumn9_i() : DataGridColumn
        {
            var _loc_1:* = new DataGridColumn();
            _ProductionWindow_DataGridColumn9 = _loc_1;
            _loc_1.dataField = "masterVO.product.description";
            BindingManager.executeBindings(this, "_ProductionWindow_DataGridColumn9", _ProductionWindow_DataGridColumn9);
            return _loc_1;
        }// end function

        private function _ProductionWindow_DataGridColumn16_i() : DataGridColumn
        {
            var _loc_1:* = new DataGridColumn();
            _ProductionWindow_DataGridColumn16 = _loc_1;
            _loc_1.dataField = "button";
            _loc_1.width = 52;
            _loc_1.itemRenderer = _ProductionWindow_ClassFactory8_c();
            BindingManager.executeBindings(this, "_ProductionWindow_DataGridColumn16", _ProductionWindow_DataGridColumn16);
            return _loc_1;
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

        public function set tutMarkProduce(param1:Image) : void
        {
            var _loc_2:* = this._237274816tutMarkProduce;
            if (_loc_2 !== param1)
            {
                this._237274816tutMarkProduce = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "tutMarkProduce", _loc_2, param1));
            }
            return;
        }// end function

        private function _ProductionWindow_ClassFactory8_c() : ClassFactory
        {
            var _loc_1:* = new ClassFactory();
            _loc_1.generator = ProductionButtonRenderer;
            return _loc_1;
        }// end function

        public function ___ProductionWindow_Image1_click(event:MouseEvent) : void
        {
            onClose();
            return;
        }// end function

        public function get upgradeItems_data_list() : DataGrid
        {
            return this._1897199464upgradeItems_data_list;
        }// end function

        public function set tabCanvas(param1:Canvas) : void
        {
            var _loc_2:* = this._1129733453tabCanvas;
            if (_loc_2 !== param1)
            {
                this._1129733453tabCanvas = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "tabCanvas", _loc_2, param1));
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

        public function initProductionTmarks(param1:int, param2:Boolean) : void
        {
            if (param1 == 10 && !param2)
            {
                tutVisible = true;
                nonTutVisible = false;
                _tutMarkProductionVisible = true;
            }
            else
            {
                _tutMarkProductionVisible = false;
                tutVisible = false;
                nonTutVisible = true;
            }
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

        private function set _1357230332upgradeItems(param1:ArrayCollection) : void
        {
            _upgradeItems = param1;
            return;
        }// end function

        public function set detailRendererUpgradeItems(param1:ClassFactory) : void
        {
            var _loc_2:* = this._133026136detailRendererUpgradeItems;
            if (_loc_2 !== param1)
            {
                this._133026136detailRendererUpgradeItems = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "detailRendererUpgradeItems", _loc_2, param1));
            }
            return;
        }// end function

        public function ___ProductionWindow_ComboBox1_change(event:ListEvent) : void
        {
            jobFilter(event);
            return;
        }// end function

        private function setBlackSmithArray() : void
        {
            var _loc_2:Object = null;
            var _loc_1:* = new Array();
            for each (_loc_2 in productionsByType.getItemAt(0))
            {
                
                _loc_1.push(_loc_2);
            }
            blackSmithArray = new ArrayCollection(_loc_1);
            return;
        }// end function

        private function get crystalArray() : ArrayCollection
        {
            return this._844665027crystalArray;
        }// end function

        private function _ProductionWindow_DataGridColumn8_i() : DataGridColumn
        {
            var _loc_1:* = new DataGridColumn();
            _ProductionWindow_DataGridColumn8 = _loc_1;
            _loc_1.dataField = "masterVO.product.nameLabel";
            _loc_1.width = 124;
            BindingManager.executeBindings(this, "_ProductionWindow_DataGridColumn8", _ProductionWindow_DataGridColumn8);
            return _loc_1;
        }// end function

        public function get reproductions() : ArrayCollection
        {
            return _reproductions;
        }// end function

        private function _ProductionWindow_DataGridColumn15_i() : DataGridColumn
        {
            var _loc_1:* = new DataGridColumn();
            _ProductionWindow_DataGridColumn15 = _loc_1;
            _loc_1.dataField = "masterVO.product.description";
            BindingManager.executeBindings(this, "_ProductionWindow_DataGridColumn15", _ProductionWindow_DataGridColumn15);
            return _loc_1;
        }// end function

        private function _ProductionWindow_ClassFactory10_c() : ClassFactory
        {
            var _loc_1:* = new ClassFactory();
            _loc_1.generator = ItemUpgradeButtonRenderer;
            return _loc_1;
        }// end function

        private function _ProductionWindow_ClassFactory7_c() : ClassFactory
        {
            var _loc_1:* = new ClassFactory();
            _loc_1.generator = ProductionButtonRenderer;
            return _loc_1;
        }// end function

        private function set accessoryArray(param1:ArrayCollection) : void
        {
            var _loc_2:* = this._1288359527accessoryArray;
            if (_loc_2 !== param1)
            {
                this._1288359527accessoryArray = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "accessoryArray", _loc_2, param1));
            }
            return;
        }// end function

        private function set clothArray(param1:ArrayCollection) : void
        {
            var _loc_2:* = this._1115921313clothArray;
            if (_loc_2 !== param1)
            {
                this._1115921313clothArray = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "clothArray", _loc_2, param1));
            }
            return;
        }// end function

        private function set catalystArray(param1:ArrayCollection) : void
        {
            var _loc_2:* = this._1642421088catalystArray;
            if (_loc_2 !== param1)
            {
                this._1642421088catalystArray = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "catalystArray", _loc_2, param1));
            }
            return;
        }// end function

        private function set selectJobData(param1:Array) : void
        {
            var _loc_2:* = this._714938261selectJobData;
            if (_loc_2 !== param1)
            {
                this._714938261selectJobData = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "selectJobData", _loc_2, param1));
            }
            return;
        }// end function

        private function get tutVisible() : Boolean
        {
            return this._94427871tutVisible;
        }// end function

        private function set blackSmithArray(param1:ArrayCollection) : void
        {
            var _loc_2:* = this._496922251blackSmithArray;
            if (_loc_2 !== param1)
            {
                this._496922251blackSmithArray = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "blackSmithArray", _loc_2, param1));
            }
            return;
        }// end function

        public function get blacksmith_data_list() : DataGrid
        {
            return this._1283329272blacksmith_data_list;
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

        private function _ProductionWindow_DataGridColumn14_i() : DataGridColumn
        {
            var _loc_1:* = new DataGridColumn();
            _ProductionWindow_DataGridColumn14 = _loc_1;
            _loc_1.dataField = "masterVO.product.nameLabel";
            _loc_1.width = 140;
            BindingManager.executeBindings(this, "_ProductionWindow_DataGridColumn14", _ProductionWindow_DataGridColumn14);
            return _loc_1;
        }// end function

        public function get upgradeItems() : ArrayCollection
        {
            return _upgradeItems;
        }// end function

        private function init() : void
        {
            itemList.selectedIndex = 0;
            productionQuantityWindow.addEventListener(ProductionQuantityWindow.PRODUCE, produceHandler);
            return;
        }// end function

        private function _ProductionWindow_ClassFactory6_c() : ClassFactory
        {
            var _loc_1:* = new ClassFactory();
            _loc_1.generator = ProductionButtonRenderer;
            return _loc_1;
        }// end function

        private function _ProductionWindow_DataGridColumn7_i() : DataGridColumn
        {
            var _loc_1:* = new DataGridColumn();
            _ProductionWindow_DataGridColumn7 = _loc_1;
            _loc_1.dataField = "button";
            _loc_1.width = 78;
            _loc_1.itemRenderer = _ProductionWindow_ClassFactory5_c();
            BindingManager.executeBindings(this, "_ProductionWindow_DataGridColumn7", _ProductionWindow_DataGridColumn7);
            return _loc_1;
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

        private function _ProductionWindow_bindingsSetup() : Array
        {
            var binding:Binding;
            var result:Array;
            binding = new Binding(this, function () : String
            {
                var _loc_1:* = Utils.i18n("productionList");
                var _loc_2:* = _loc_1 == undefined ? (null) : (String(_loc_1));
                return _loc_2;
            }// end function
            , function (param1:String) : void
            {
                _ProductionWindow_Text1.text = param1;
                return;
            }// end function
            , "_ProductionWindow_Text1.text");
            result[0] = binding;
            binding = new Binding(this, function () : String
            {
                var _loc_1:* = Utils.i18n("generalBlacksmith");
                var _loc_2:* = _loc_1 == undefined ? (null) : (String(_loc_1));
                return _loc_2;
            }// end function
            , function (param1:String) : void
            {
                _ProductionWindow_Canvas3.label = param1;
                return;
            }// end function
            , "_ProductionWindow_Canvas3.label");
            result[1] = binding;
            binding = new Binding(this, function () : Object
            {
                return selectJobData;
            }// end function
            , function (param1:Object) : void
            {
                _ProductionWindow_ComboBox1.dataProvider = param1;
                return;
            }// end function
            , "_ProductionWindow_ComboBox1.dataProvider");
            result[2] = binding;
            binding = new Binding(this, function () : Object
            {
                return blackSmithArray;
            }// end function
            , function (param1:Object) : void
            {
                blacksmith_data_list.dataProvider = param1;
                return;
            }// end function
            , "blacksmith_data_list.dataProvider");
            result[3] = binding;
            binding = new Binding(this, function () : String
            {
                var _loc_1:* = Utils.i18n("generalProduction");
                var _loc_2:* = _loc_1 == undefined ? (null) : (String(_loc_1));
                return _loc_2;
            }// end function
            , function (param1:String) : void
            {
                produceButton.headerText = param1;
                return;
            }// end function
            , "produceButton.headerText");
            result[4] = binding;
            binding = new Binding(this, function () : String
            {
                var _loc_1:* = Utils.i18n("changeEquipmentItemName");
                var _loc_2:* = _loc_1 == undefined ? (null) : (String(_loc_1));
                return _loc_2;
            }// end function
            , function (param1:String) : void
            {
                _ProductionWindow_DataGridColumn2.headerText = param1;
                return;
            }// end function
            , "_ProductionWindow_DataGridColumn2.headerText");
            result[5] = binding;
            binding = new Binding(this, function () : IFactory
            {
                return detailRenderer;
            }// end function
            , function (param1:IFactory) : void
            {
                _ProductionWindow_DataGridColumn2.itemRenderer = param1;
                return;
            }// end function
            , "_ProductionWindow_DataGridColumn2.itemRenderer");
            result[6] = binding;
            binding = new Binding(this, function () : String
            {
                var _loc_1:* = Utils.i18n("generalDescription");
                var _loc_2:* = _loc_1 == undefined ? (null) : (String(_loc_1));
                return _loc_2;
            }// end function
            , function (param1:String) : void
            {
                _ProductionWindow_DataGridColumn3.headerText = param1;
                return;
            }// end function
            , "_ProductionWindow_DataGridColumn3.headerText");
            result[7] = binding;
            binding = new Binding(this, function () : String
            {
                var _loc_1:* = Utils.i18n("generalLeather");
                var _loc_2:* = _loc_1 == undefined ? (null) : (String(_loc_1));
                return _loc_2;
            }// end function
            , function (param1:String) : void
            {
                _ProductionWindow_Canvas4.label = param1;
                return;
            }// end function
            , "_ProductionWindow_Canvas4.label");
            result[8] = binding;
            binding = new Binding(this, function () : Object
            {
                return selectJobData;
            }// end function
            , function (param1:Object) : void
            {
                _ProductionWindow_ComboBox2.dataProvider = param1;
                return;
            }// end function
            , "_ProductionWindow_ComboBox2.dataProvider");
            result[9] = binding;
            binding = new Binding(this, function () : Boolean
            {
                return nonTutVisible;
            }// end function
            , function (param1:Boolean) : void
            {
                _ProductionWindow_ComboBox2.visible = param1;
                return;
            }// end function
            , "_ProductionWindow_ComboBox2.visible");
            result[10] = binding;
            binding = new Binding(this, function () : Object
            {
                return leatherArray;
            }// end function
            , function (param1:Object) : void
            {
                leather_data_list.dataProvider = param1;
                return;
            }// end function
            , "leather_data_list.dataProvider");
            result[11] = binding;
            binding = new Binding(this, function () : Boolean
            {
                return nonTutVisible;
            }// end function
            , function (param1:Boolean) : void
            {
                leather_data_list.visible = param1;
                return;
            }// end function
            , "leather_data_list.visible");
            result[12] = binding;
            binding = new Binding(this, function () : String
            {
                var _loc_1:* = Utils.i18n("generalProduction");
                var _loc_2:* = _loc_1 == undefined ? (null) : (String(_loc_1));
                return _loc_2;
            }// end function
            , function (param1:String) : void
            {
                _ProductionWindow_DataGridColumn4.headerText = param1;
                return;
            }// end function
            , "_ProductionWindow_DataGridColumn4.headerText");
            result[13] = binding;
            binding = new Binding(this, function () : String
            {
                var _loc_1:* = Utils.i18n("changeEquipmentItemName");
                var _loc_2:* = _loc_1 == undefined ? (null) : (String(_loc_1));
                return _loc_2;
            }// end function
            , function (param1:String) : void
            {
                _ProductionWindow_DataGridColumn5.headerText = param1;
                return;
            }// end function
            , "_ProductionWindow_DataGridColumn5.headerText");
            result[14] = binding;
            binding = new Binding(this, function () : IFactory
            {
                return detailRenderer;
            }// end function
            , function (param1:IFactory) : void
            {
                _ProductionWindow_DataGridColumn5.itemRenderer = param1;
                return;
            }// end function
            , "_ProductionWindow_DataGridColumn5.itemRenderer");
            result[15] = binding;
            binding = new Binding(this, function () : String
            {
                var _loc_1:* = Utils.i18n("generalDescription");
                var _loc_2:* = _loc_1 == undefined ? (null) : (String(_loc_1));
                return _loc_2;
            }// end function
            , function (param1:String) : void
            {
                _ProductionWindow_DataGridColumn6.headerText = param1;
                return;
            }// end function
            , "_ProductionWindow_DataGridColumn6.headerText");
            result[16] = binding;
            binding = new Binding(this, function () : Object
            {
                return leatherArray;
            }// end function
            , function (param1:Object) : void
            {
                leather_data_list_tutorial.dataProvider = param1;
                return;
            }// end function
            , "leather_data_list_tutorial.dataProvider");
            result[17] = binding;
            binding = new Binding(this, function () : Boolean
            {
                return tutVisible;
            }// end function
            , function (param1:Boolean) : void
            {
                leather_data_list_tutorial.visible = param1;
                return;
            }// end function
            , "leather_data_list_tutorial.visible");
            result[18] = binding;
            binding = new Binding(this, function () : String
            {
                var _loc_1:* = Utils.i18n("generalProduction");
                var _loc_2:* = _loc_1 == undefined ? (null) : (String(_loc_1));
                return _loc_2;
            }// end function
            , function (param1:String) : void
            {
                _ProductionWindow_DataGridColumn7.headerText = param1;
                return;
            }// end function
            , "_ProductionWindow_DataGridColumn7.headerText");
            result[19] = binding;
            binding = new Binding(this, function () : String
            {
                var _loc_1:* = Utils.i18n("changeEquipmentItemName");
                var _loc_2:* = _loc_1 == undefined ? (null) : (String(_loc_1));
                return _loc_2;
            }// end function
            , function (param1:String) : void
            {
                _ProductionWindow_DataGridColumn8.headerText = param1;
                return;
            }// end function
            , "_ProductionWindow_DataGridColumn8.headerText");
            result[20] = binding;
            binding = new Binding(this, function () : IFactory
            {
                return detailRenderer;
            }// end function
            , function (param1:IFactory) : void
            {
                _ProductionWindow_DataGridColumn8.itemRenderer = param1;
                return;
            }// end function
            , "_ProductionWindow_DataGridColumn8.itemRenderer");
            result[21] = binding;
            binding = new Binding(this, function () : String
            {
                var _loc_1:* = Utils.i18n("generalDescription");
                var _loc_2:* = _loc_1 == undefined ? (null) : (String(_loc_1));
                return _loc_2;
            }// end function
            , function (param1:String) : void
            {
                _ProductionWindow_DataGridColumn9.headerText = param1;
                return;
            }// end function
            , "_ProductionWindow_DataGridColumn9.headerText");
            result[22] = binding;
            binding = new Binding(this, function () : String
            {
                var _loc_1:* = Utils.i18n("generalCloth");
                var _loc_2:* = _loc_1 == undefined ? (null) : (String(_loc_1));
                return _loc_2;
            }// end function
            , function (param1:String) : void
            {
                _ProductionWindow_Canvas5.label = param1;
                return;
            }// end function
            , "_ProductionWindow_Canvas5.label");
            result[23] = binding;
            binding = new Binding(this, function () : Object
            {
                return selectJobData;
            }// end function
            , function (param1:Object) : void
            {
                _ProductionWindow_ComboBox3.dataProvider = param1;
                return;
            }// end function
            , "_ProductionWindow_ComboBox3.dataProvider");
            result[24] = binding;
            binding = new Binding(this, function () : Object
            {
                return clothArray;
            }// end function
            , function (param1:Object) : void
            {
                cloth_data_list.dataProvider = param1;
                return;
            }// end function
            , "cloth_data_list.dataProvider");
            result[25] = binding;
            binding = new Binding(this, function () : String
            {
                var _loc_1:* = Utils.i18n("generalProduction");
                var _loc_2:* = _loc_1 == undefined ? (null) : (String(_loc_1));
                return _loc_2;
            }// end function
            , function (param1:String) : void
            {
                _ProductionWindow_DataGridColumn10.headerText = param1;
                return;
            }// end function
            , "_ProductionWindow_DataGridColumn10.headerText");
            result[26] = binding;
            binding = new Binding(this, function () : String
            {
                var _loc_1:* = Utils.i18n("changeEquipmentItemName");
                var _loc_2:* = _loc_1 == undefined ? (null) : (String(_loc_1));
                return _loc_2;
            }// end function
            , function (param1:String) : void
            {
                _ProductionWindow_DataGridColumn11.headerText = param1;
                return;
            }// end function
            , "_ProductionWindow_DataGridColumn11.headerText");
            result[27] = binding;
            binding = new Binding(this, function () : IFactory
            {
                return detailRenderer;
            }// end function
            , function (param1:IFactory) : void
            {
                _ProductionWindow_DataGridColumn11.itemRenderer = param1;
                return;
            }// end function
            , "_ProductionWindow_DataGridColumn11.itemRenderer");
            result[28] = binding;
            binding = new Binding(this, function () : String
            {
                var _loc_1:* = Utils.i18n("generalDescription");
                var _loc_2:* = _loc_1 == undefined ? (null) : (String(_loc_1));
                return _loc_2;
            }// end function
            , function (param1:String) : void
            {
                _ProductionWindow_DataGridColumn12.headerText = param1;
                return;
            }// end function
            , "_ProductionWindow_DataGridColumn12.headerText");
            result[29] = binding;
            binding = new Binding(this, function () : String
            {
                var _loc_1:* = Utils.i18n("generalMagic");
                var _loc_2:* = _loc_1 == undefined ? (null) : (String(_loc_1));
                return _loc_2;
            }// end function
            , function (param1:String) : void
            {
                _ProductionWindow_Canvas6.label = param1;
                return;
            }// end function
            , "_ProductionWindow_Canvas6.label");
            result[30] = binding;
            binding = new Binding(this, function () : Object
            {
                return selectJobData;
            }// end function
            , function (param1:Object) : void
            {
                _ProductionWindow_ComboBox4.dataProvider = param1;
                return;
            }// end function
            , "_ProductionWindow_ComboBox4.dataProvider");
            result[31] = binding;
            binding = new Binding(this, function () : Object
            {
                return catalystArray;
            }// end function
            , function (param1:Object) : void
            {
                catalyst_data_list.dataProvider = param1;
                return;
            }// end function
            , "catalyst_data_list.dataProvider");
            result[32] = binding;
            binding = new Binding(this, function () : String
            {
                var _loc_1:* = Utils.i18n("generalProduction");
                var _loc_2:* = _loc_1 == undefined ? (null) : (String(_loc_1));
                return _loc_2;
            }// end function
            , function (param1:String) : void
            {
                _ProductionWindow_DataGridColumn13.headerText = param1;
                return;
            }// end function
            , "_ProductionWindow_DataGridColumn13.headerText");
            result[33] = binding;
            binding = new Binding(this, function () : String
            {
                var _loc_1:* = Utils.i18n("changeEquipmentItemName");
                var _loc_2:* = _loc_1 == undefined ? (null) : (String(_loc_1));
                return _loc_2;
            }// end function
            , function (param1:String) : void
            {
                _ProductionWindow_DataGridColumn14.headerText = param1;
                return;
            }// end function
            , "_ProductionWindow_DataGridColumn14.headerText");
            result[34] = binding;
            binding = new Binding(this, function () : IFactory
            {
                return detailRenderer;
            }// end function
            , function (param1:IFactory) : void
            {
                _ProductionWindow_DataGridColumn14.itemRenderer = param1;
                return;
            }// end function
            , "_ProductionWindow_DataGridColumn14.itemRenderer");
            result[35] = binding;
            binding = new Binding(this, function () : String
            {
                var _loc_1:* = Utils.i18n("generalDescription");
                var _loc_2:* = _loc_1 == undefined ? (null) : (String(_loc_1));
                return _loc_2;
            }// end function
            , function (param1:String) : void
            {
                _ProductionWindow_DataGridColumn15.headerText = param1;
                return;
            }// end function
            , "_ProductionWindow_DataGridColumn15.headerText");
            result[36] = binding;
            binding = new Binding(this, function () : String
            {
                var _loc_1:* = Utils.i18n("generalAccessory");
                var _loc_2:* = _loc_1 == undefined ? (null) : (String(_loc_1));
                return _loc_2;
            }// end function
            , function (param1:String) : void
            {
                _ProductionWindow_Canvas7.label = param1;
                return;
            }// end function
            , "_ProductionWindow_Canvas7.label");
            result[37] = binding;
            binding = new Binding(this, function () : Object
            {
                return selectJobData;
            }// end function
            , function (param1:Object) : void
            {
                _ProductionWindow_ComboBox5.dataProvider = param1;
                return;
            }// end function
            , "_ProductionWindow_ComboBox5.dataProvider");
            result[38] = binding;
            binding = new Binding(this, function () : Object
            {
                return accessoryArray;
            }// end function
            , function (param1:Object) : void
            {
                crafts_data_list.dataProvider = param1;
                return;
            }// end function
            , "crafts_data_list.dataProvider");
            result[39] = binding;
            binding = new Binding(this, function () : String
            {
                var _loc_1:* = Utils.i18n("generalProduction");
                var _loc_2:* = _loc_1 == undefined ? (null) : (String(_loc_1));
                return _loc_2;
            }// end function
            , function (param1:String) : void
            {
                _ProductionWindow_DataGridColumn16.headerText = param1;
                return;
            }// end function
            , "_ProductionWindow_DataGridColumn16.headerText");
            result[40] = binding;
            binding = new Binding(this, function () : String
            {
                var _loc_1:* = Utils.i18n("changeEquipmentItemName");
                var _loc_2:* = _loc_1 == undefined ? (null) : (String(_loc_1));
                return _loc_2;
            }// end function
            , function (param1:String) : void
            {
                _ProductionWindow_DataGridColumn17.headerText = param1;
                return;
            }// end function
            , "_ProductionWindow_DataGridColumn17.headerText");
            result[41] = binding;
            binding = new Binding(this, function () : IFactory
            {
                return detailRenderer;
            }// end function
            , function (param1:IFactory) : void
            {
                _ProductionWindow_DataGridColumn17.itemRenderer = param1;
                return;
            }// end function
            , "_ProductionWindow_DataGridColumn17.itemRenderer");
            result[42] = binding;
            binding = new Binding(this, function () : String
            {
                var _loc_1:* = Utils.i18n("generalDescription");
                var _loc_2:* = _loc_1 == undefined ? (null) : (String(_loc_1));
                return _loc_2;
            }// end function
            , function (param1:String) : void
            {
                _ProductionWindow_DataGridColumn18.headerText = param1;
                return;
            }// end function
            , "_ProductionWindow_DataGridColumn18.headerText");
            result[43] = binding;
            binding = new Binding(this, function () : Object
            {
                return selectJobData;
            }// end function
            , function (param1:Object) : void
            {
                _ProductionWindow_ComboBox6.dataProvider = param1;
                return;
            }// end function
            , "_ProductionWindow_ComboBox6.dataProvider");
            result[44] = binding;
            binding = new Binding(this, function () : Object
            {
                return crystalArray;
            }// end function
            , function (param1:Object) : void
            {
                clystals_data_list.dataProvider = param1;
                return;
            }// end function
            , "clystals_data_list.dataProvider");
            result[45] = binding;
            binding = new Binding(this, function () : String
            {
                var _loc_1:* = Utils.i18n("generalProduction");
                var _loc_2:* = _loc_1 == undefined ? (null) : (String(_loc_1));
                return _loc_2;
            }// end function
            , function (param1:String) : void
            {
                _ProductionWindow_DataGridColumn19.headerText = param1;
                return;
            }// end function
            , "_ProductionWindow_DataGridColumn19.headerText");
            result[46] = binding;
            binding = new Binding(this, function () : String
            {
                var _loc_1:* = Utils.i18n("changeEquipmentItemName");
                var _loc_2:* = _loc_1 == undefined ? (null) : (String(_loc_1));
                return _loc_2;
            }// end function
            , function (param1:String) : void
            {
                _ProductionWindow_DataGridColumn20.headerText = param1;
                return;
            }// end function
            , "_ProductionWindow_DataGridColumn20.headerText");
            result[47] = binding;
            binding = new Binding(this, function () : IFactory
            {
                return detailRenderer;
            }// end function
            , function (param1:IFactory) : void
            {
                _ProductionWindow_DataGridColumn20.itemRenderer = param1;
                return;
            }// end function
            , "_ProductionWindow_DataGridColumn20.itemRenderer");
            result[48] = binding;
            binding = new Binding(this, function () : String
            {
                var _loc_1:* = Utils.i18n("generalDescription");
                var _loc_2:* = _loc_1 == undefined ? (null) : (String(_loc_1));
                return _loc_2;
            }// end function
            , function (param1:String) : void
            {
                _ProductionWindow_DataGridColumn21.headerText = param1;
                return;
            }// end function
            , "_ProductionWindow_DataGridColumn21.headerText");
            result[49] = binding;
            binding = new Binding(this, function () : Object
            {
                return upgradeItems;
            }// end function
            , function (param1:Object) : void
            {
                upgradeItems_data_list.dataProvider = param1;
                return;
            }// end function
            , "upgradeItems_data_list.dataProvider");
            result[50] = binding;
            binding = new Binding(this, function () : String
            {
                var _loc_1:* = Utils.i18n("generalName");
                var _loc_2:* = _loc_1 == undefined ? (null) : (String(_loc_1));
                return _loc_2;
            }// end function
            , function (param1:String) : void
            {
                _ProductionWindow_DataGridColumn23.headerText = param1;
                return;
            }// end function
            , "_ProductionWindow_DataGridColumn23.headerText");
            result[51] = binding;
            binding = new Binding(this, function () : IFactory
            {
                return detailRendererUpgradeItems;
            }// end function
            , function (param1:IFactory) : void
            {
                _ProductionWindow_DataGridColumn23.itemRenderer = param1;
                return;
            }// end function
            , "_ProductionWindow_DataGridColumn23.itemRenderer");
            result[52] = binding;
            binding = new Binding(this, function () : String
            {
                var _loc_1:* = Utils.i18n("changeEquipmentType");
                var _loc_2:* = _loc_1 == undefined ? (null) : (String(_loc_1));
                return _loc_2;
            }// end function
            , function (param1:String) : void
            {
                _ProductionWindow_DataGridColumn24.headerText = param1;
                return;
            }// end function
            , "_ProductionWindow_DataGridColumn24.headerText");
            result[53] = binding;
            binding = new Binding(this, function () : String
            {
                var _loc_1:* = Utils.i18n("generalDescription");
                var _loc_2:* = _loc_1 == undefined ? (null) : (String(_loc_1));
                return _loc_2;
            }// end function
            , function (param1:String) : void
            {
                _ProductionWindow_DataGridColumn25.headerText = param1;
                return;
            }// end function
            , "_ProductionWindow_DataGridColumn25.headerText");
            result[54] = binding;
            binding = new Binding(this, function () : Boolean
            {
                return tutVisible;
            }// end function
            , function (param1:Boolean) : void
            {
                tutMarkProduce.visible = param1;
                return;
            }// end function
            , "tutMarkProduce.visible");
            result[55] = binding;
            return result;
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

        private function _ProductionWindow_DataGridColumn25_i() : DataGridColumn
        {
            var _loc_1:* = new DataGridColumn();
            _ProductionWindow_DataGridColumn25 = _loc_1;
            _loc_1.dataField = "masterVO.description";
            BindingManager.executeBindings(this, "_ProductionWindow_DataGridColumn25", _ProductionWindow_DataGridColumn25);
            return _loc_1;
        }// end function

        private function setLeatherArray() : void
        {
            var _loc_2:Object = null;
            var _loc_1:* = new Array();
            for each (_loc_2 in productionsByType.getItemAt(1))
            {
                
                _loc_1.push(_loc_2);
            }
            leatherArray = new ArrayCollection(_loc_1);
            return;
        }// end function

        public function conditionButtonClicked(param1:ProductionVO) : void
        {
            var production:* = param1;
            productionConditionWindow.callLater(function () : void
            {
                productionConditionWindow.production = production;
                return;
            }// end function
            );
            popupWindow(productionConditionWindow, false);
            this.dispatchEvent(new Event(OPEN_CONDITION_WINDOW));
            return;
        }// end function

        public function get windowLayer() : Canvas
        {
            return this._1896677185windowLayer;
        }// end function

        private function _ProductionWindow_DataGridColumn6_i() : DataGridColumn
        {
            var _loc_1:* = new DataGridColumn();
            _ProductionWindow_DataGridColumn6 = _loc_1;
            _loc_1.dataField = "masterVO.product.description";
            BindingManager.executeBindings(this, "_ProductionWindow_DataGridColumn6", _ProductionWindow_DataGridColumn6);
            return _loc_1;
        }// end function

        public function ___ProductionWindow_CanvasWithPopUp1_creationComplete(event:FlexEvent) : void
        {
            init();
            return;
        }// end function

        public function ___ProductionWindow_ComboBox6_change(event:ListEvent) : void
        {
            jobFilter(event);
            return;
        }// end function

        public function set upgradeItems_data_list(param1:DataGrid) : void
        {
            var _loc_2:* = this._1897199464upgradeItems_data_list;
            if (_loc_2 !== param1)
            {
                this._1897199464upgradeItems_data_list = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "upgradeItems_data_list", _loc_2, param1));
            }
            return;
        }// end function

        private function _ProductionWindow_DataGridColumn13_i() : DataGridColumn
        {
            var _loc_1:* = new DataGridColumn();
            _ProductionWindow_DataGridColumn13 = _loc_1;
            _loc_1.dataField = "button";
            _loc_1.width = 52;
            _loc_1.itemRenderer = _ProductionWindow_ClassFactory7_c();
            BindingManager.executeBindings(this, "_ProductionWindow_DataGridColumn13", _ProductionWindow_DataGridColumn13);
            return _loc_1;
        }// end function

        public function set maxProductQuantity(param1:int) : void
        {
            productionQuantityWindow.maxProductQuantity = param1;
            return;
        }// end function

        public function ___ProductionWindow_ComboBox4_change(event:ListEvent) : void
        {
            jobFilter(event);
            return;
        }// end function

        private function set nonTutVisible(param1:Boolean) : void
        {
            var _loc_2:* = this._1225459084nonTutVisible;
            if (_loc_2 !== param1)
            {
                this._1225459084nonTutVisible = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "nonTutVisible", _loc_2, param1));
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

        private function _ProductionWindow_ClassFactory5_c() : ClassFactory
        {
            var _loc_1:* = new ClassFactory();
            _loc_1.generator = ProductionButtonTutorialRenderer;
            return _loc_1;
        }// end function

        public function get detailRendererUpgradeItems() : ClassFactory
        {
            return this._133026136detailRendererUpgradeItems;
        }// end function

        public function onClose() : void
        {
            dispatchEvent(new PopupEvent(CLOSED_PRODUCTION_WINDOW, {window:this}));
            return;
        }// end function

        private function set _426751289reproductions(param1:ArrayCollection) : void
        {
            _reproductions = param1;
            return;
        }// end function

        private function set leatherArray(param1:ArrayCollection) : void
        {
            var _loc_2:* = this._1801189456leatherArray;
            if (_loc_2 !== param1)
            {
                this._1801189456leatherArray = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "leatherArray", _loc_2, param1));
            }
            return;
        }// end function

        private function setAccessoryArray() : void
        {
            var _loc_2:Object = null;
            var _loc_1:* = new Array();
            for each (_loc_2 in productionsByType.getItemAt(4))
            {
                
                _loc_1.push(_loc_2);
            }
            accessoryArray = new ArrayCollection(_loc_1);
            return;
        }// end function

        public function get buttonLayer() : Canvas
        {
            return this._1777504961buttonLayer;
        }// end function

        public function get tutMarkProduce() : Image
        {
            return this._237274816tutMarkProduce;
        }// end function

        public function get tabCanvas() : Canvas
        {
            return this._1129733453tabCanvas;
        }// end function

        private function _ProductionWindow_DataGridColumn24_i() : DataGridColumn
        {
            var _loc_1:* = new DataGridColumn();
            _ProductionWindow_DataGridColumn24 = _loc_1;
            _loc_1.dataField = "masterVO.masterTypeLabel";
            _loc_1.width = 70;
            _loc_1.setStyle("textAlign", "center");
            BindingManager.executeBindings(this, "_ProductionWindow_DataGridColumn24", _ProductionWindow_DataGridColumn24);
            return _loc_1;
        }// end function

        private function get blackSmithArray() : ArrayCollection
        {
            return this._496922251blackSmithArray;
        }// end function

        private function get catalystArray() : ArrayCollection
        {
            return this._1642421088catalystArray;
        }// end function

        public function get leather_data_list() : DataGrid
        {
            return this._949353341leather_data_list;
        }// end function

        public function setJobMasterData(param1:Object) : void
        {
            var _loc_3:Object = null;
            var _loc_2:int = 1;
            selectJobData = new Array();
            selectJobData.push({label:Utils.i18n("generalAllView"), id:0});
            selectJobData.push({label:Utils.i18n("productionListSortLabel"), id:999});
            for each (_loc_3 in param1)
            {
                
                if (_loc_3.disabled == false && _loc_3.code && Number(_loc_3.code) < 1000)
                {
                    selectJobData.push({label:_loc_3.nameLabel, id:_loc_3.masterId});
                }
            }
            return;
        }// end function

        private function _ProductionWindow_DataGridColumn12_i() : DataGridColumn
        {
            var _loc_1:* = new DataGridColumn();
            _ProductionWindow_DataGridColumn12 = _loc_1;
            _loc_1.dataField = "masterVO.product.description";
            BindingManager.executeBindings(this, "_ProductionWindow_DataGridColumn12", _ProductionWindow_DataGridColumn12);
            return _loc_1;
        }// end function

        private function _ProductionWindow_DataGridColumn5_i() : DataGridColumn
        {
            var _loc_1:* = new DataGridColumn();
            _ProductionWindow_DataGridColumn5 = _loc_1;
            _loc_1.dataField = "masterVO.product.nameLabel";
            _loc_1.width = 140;
            BindingManager.executeBindings(this, "_ProductionWindow_DataGridColumn5", _ProductionWindow_DataGridColumn5);
            return _loc_1;
        }// end function

        private function get nonTutVisible() : Boolean
        {
            return this._1225459084nonTutVisible;
        }// end function

        private function upgradeHandler(event:PopupEvent) : void
        {
            upgradeItemWindow.removeEventListener(UpgradeItemWindow.UPGRADE_ITEM, upgradeHandler);
            this.dispatchEvent(new PopupEvent(UPGRADE_ITEM, event.param));
            return;
        }// end function

        private function _ProductionWindow_ClassFactory4_c() : ClassFactory
        {
            var _loc_1:* = new ClassFactory();
            _loc_1.generator = ProductionButtonRenderer;
            return _loc_1;
        }// end function

        override public function initialize() : void
        {
            var target:ProductionWindow;
            var watcherSetupUtilClass:Object;
            .mx_internal::setDocumentDescriptor(_documentDescriptor_);
            var bindings:* = _ProductionWindow_bindingsSetup();
            var watchers:Array;
            target;
            if (_watcherSetupUtil == null)
            {
                watcherSetupUtilClass = getDefinitionByName("_com_kbmj_viking_view_home_ProductionWindowWatcherSetupUtil");
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

        public function ___ProductionWindow_ComboBox2_change(event:ListEvent) : void
        {
            jobFilter(event);
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

        public function produceButtonClicked(param1:ProductionVO) : void
        {
            var production:* = param1;
            var createBool:* = productionQuantityWindow.judgeQuantityMax(production);
            if (createBool)
            {
                productionQuantityWindow.callLater(function () : void
            {
                productionQuantityWindow.production = production;
                return;
            }// end function
            );
                popupWindow(productionQuantityWindow, false);
                this.dispatchEvent(new Event(OPEN_QUANTITY_WINDOW));
            }
            else
            {
                this.dispatchEvent(new PopupEvent(PRODUCE_MAX_QUANTITY, production.masterVO.product.nameLabel));
            }
            return;
        }// end function

        public function get productionsByType() : ArrayCollection
        {
            return _productionsByType;
        }// end function

        public function jobFilter(event:Event) : void
        {
            selectId = event.currentTarget.selectedItem.id;
            var _loc_2:* = new ArrayCollection();
            switch(itemList.selectedIndex)
            {
                case 0:
                {
                    _loc_2 = blackSmithArray;
                    break;
                }
                case 1:
                {
                    _loc_2 = leatherArray;
                    break;
                }
                case 2:
                {
                    _loc_2 = clothArray;
                    break;
                }
                case 3:
                {
                    _loc_2 = catalystArray;
                    break;
                }
                case 4:
                {
                    _loc_2 = accessoryArray;
                    break;
                }
                case 5:
                {
                    _loc_2 = crystalArray;
                    break;
                }
                default:
                {
                    break;
                }
            }
            if (selectId == 0)
            {
                _loc_2.filterFunction = null;
            }
            else if (selectId == 999)
            {
                _loc_2.filterFunction = changeItemFilter;
            }
            else
            {
                _loc_2.filterFunction = changeJobFilter;
            }
            _loc_2.refresh();
            return;
        }// end function

        private function _ProductionWindow_DataGridColumn23_i() : DataGridColumn
        {
            var _loc_1:* = new DataGridColumn();
            _ProductionWindow_DataGridColumn23 = _loc_1;
            _loc_1.dataField = "masterVO.nameLabel";
            _loc_1.width = 100;
            BindingManager.executeBindings(this, "_ProductionWindow_DataGridColumn23", _ProductionWindow_DataGridColumn23);
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

        private function set crystalArray(param1:ArrayCollection) : void
        {
            var _loc_2:* = this._844665027crystalArray;
            if (_loc_2 !== param1)
            {
                this._844665027crystalArray = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "crystalArray", _loc_2, param1));
            }
            return;
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
                
                if (_loc_4.requirement.levelLimit)
                {
                    _loc_2[productionTypes.indexOf(_loc_4.masterVO.productType)].push(_loc_4);
                }
            }
            productionsByType = _loc_2;
            setBlackSmithArray();
            setLeatherArray();
            setClothArray();
            setCatalystArray();
            setAccessoryArray();
            setCrystalArray();
            return;
        }// end function

        private function get leatherArray() : ArrayCollection
        {
            return this._1801189456leatherArray;
        }// end function

        private function set tutVisible(param1:Boolean) : void
        {
            var _loc_2:* = this._94427871tutVisible;
            if (_loc_2 !== param1)
            {
                this._94427871tutVisible = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "tutVisible", _loc_2, param1));
            }
            return;
        }// end function

        public function set leather_data_list_tutorial(param1:DataGrid) : void
        {
            var _loc_2:* = this._105185824leather_data_list_tutorial;
            if (_loc_2 !== param1)
            {
                this._105185824leather_data_list_tutorial = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "leather_data_list_tutorial", _loc_2, param1));
            }
            return;
        }// end function

        public function changeJobFilter(param1:Object) : Boolean
        {
            var _loc_2:int = 0;
            if (param1.masterVO.product.masterType == "WeaponMaster" || param1.masterVO.product.masterType == "ArmorMaster" || param1.masterVO.product.masterType == "AccessoryMaster")
            {
                _loc_2 = 0;
                while (_loc_2 < param1.masterVO.product.equipabilities.length)
                {
                    
                    if (param1.masterVO.product.equipabilities[_loc_2].job_id == selectId)
                    {
                        return true;
                    }
                    _loc_2++;
                }
                return false;
            }
            else
            {
                return false;
            }
        }// end function

        private function _ProductionWindow_DataGridColumn11_i() : DataGridColumn
        {
            var _loc_1:* = new DataGridColumn();
            _ProductionWindow_DataGridColumn11 = _loc_1;
            _loc_1.dataField = "masterVO.product.nameLabel";
            _loc_1.width = 140;
            BindingManager.executeBindings(this, "_ProductionWindow_DataGridColumn11", _ProductionWindow_DataGridColumn11);
            return _loc_1;
        }// end function

        private function _ProductionWindow_DataGridColumn4_i() : DataGridColumn
        {
            var _loc_1:* = new DataGridColumn();
            _ProductionWindow_DataGridColumn4 = _loc_1;
            _loc_1.dataField = "button";
            _loc_1.width = 52;
            _loc_1.itemRenderer = _ProductionWindow_ClassFactory4_c();
            BindingManager.executeBindings(this, "_ProductionWindow_DataGridColumn4", _ProductionWindow_DataGridColumn4);
            return _loc_1;
        }// end function

        private function _ProductionWindow_ClassFactory3_c() : ClassFactory
        {
            var _loc_1:* = new ClassFactory();
            _loc_1.generator = ProductionButtonRenderer;
            return _loc_1;
        }// end function

        private function _ProductionWindow_DataGridColumn19_i() : DataGridColumn
        {
            var _loc_1:* = new DataGridColumn();
            _ProductionWindow_DataGridColumn19 = _loc_1;
            _loc_1.dataField = "button";
            _loc_1.width = 52;
            _loc_1.itemRenderer = _ProductionWindow_ClassFactory9_c();
            BindingManager.executeBindings(this, "_ProductionWindow_DataGridColumn19", _ProductionWindow_DataGridColumn19);
            return _loc_1;
        }// end function

        public function get catalyst_data_list() : DataGrid
        {
            return this._1518695885catalyst_data_list;
        }// end function

        public function upgradeButtonClicked(param1:Object) : void
        {
            upgradeItemWindow.init();
            popupWindow(upgradeItemWindow, false);
            this.dispatchEvent(new PopupEvent(OPEN_UPGRADE_WINDOW, param1));
            upgradeItemWindow.addEventListener(UpgradeItemWindow.UPGRADE_ITEM, upgradeHandler);
            return;
        }// end function

        public function get leather_data_list_tutorial() : DataGrid
        {
            return this._105185824leather_data_list_tutorial;
        }// end function

        private function _ProductionWindow_DataGridColumn22_c() : DataGridColumn
        {
            var _loc_1:* = new DataGridColumn();
            _loc_1.headerText = "強化";
            _loc_1.width = 52;
            _loc_1.itemRenderer = _ProductionWindow_ClassFactory10_c();
            return _loc_1;
        }// end function

        private function _ProductionWindow_bindingExprs() : void
        {
            var _loc_1:* = undefined;
            _loc_1 = Utils.i18n("productionList");
            _loc_1 = Utils.i18n("generalBlacksmith");
            _loc_1 = selectJobData;
            _loc_1 = blackSmithArray;
            _loc_1 = Utils.i18n("generalProduction");
            _loc_1 = Utils.i18n("changeEquipmentItemName");
            _loc_1 = detailRenderer;
            _loc_1 = Utils.i18n("generalDescription");
            _loc_1 = Utils.i18n("generalLeather");
            _loc_1 = selectJobData;
            _loc_1 = nonTutVisible;
            _loc_1 = leatherArray;
            _loc_1 = nonTutVisible;
            _loc_1 = Utils.i18n("generalProduction");
            _loc_1 = Utils.i18n("changeEquipmentItemName");
            _loc_1 = detailRenderer;
            _loc_1 = Utils.i18n("generalDescription");
            _loc_1 = leatherArray;
            _loc_1 = tutVisible;
            _loc_1 = Utils.i18n("generalProduction");
            _loc_1 = Utils.i18n("changeEquipmentItemName");
            _loc_1 = detailRenderer;
            _loc_1 = Utils.i18n("generalDescription");
            _loc_1 = Utils.i18n("generalCloth");
            _loc_1 = selectJobData;
            _loc_1 = clothArray;
            _loc_1 = Utils.i18n("generalProduction");
            _loc_1 = Utils.i18n("changeEquipmentItemName");
            _loc_1 = detailRenderer;
            _loc_1 = Utils.i18n("generalDescription");
            _loc_1 = Utils.i18n("generalMagic");
            _loc_1 = selectJobData;
            _loc_1 = catalystArray;
            _loc_1 = Utils.i18n("generalProduction");
            _loc_1 = Utils.i18n("changeEquipmentItemName");
            _loc_1 = detailRenderer;
            _loc_1 = Utils.i18n("generalDescription");
            _loc_1 = Utils.i18n("generalAccessory");
            _loc_1 = selectJobData;
            _loc_1 = accessoryArray;
            _loc_1 = Utils.i18n("generalProduction");
            _loc_1 = Utils.i18n("changeEquipmentItemName");
            _loc_1 = detailRenderer;
            _loc_1 = Utils.i18n("generalDescription");
            _loc_1 = selectJobData;
            _loc_1 = crystalArray;
            _loc_1 = Utils.i18n("generalProduction");
            _loc_1 = Utils.i18n("changeEquipmentItemName");
            _loc_1 = detailRenderer;
            _loc_1 = Utils.i18n("generalDescription");
            _loc_1 = upgradeItems;
            _loc_1 = Utils.i18n("generalName");
            _loc_1 = detailRendererUpgradeItems;
            _loc_1 = Utils.i18n("changeEquipmentType");
            _loc_1 = Utils.i18n("generalDescription");
            _loc_1 = tutVisible;
            return;
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

        public static function set watcherSetupUtil(param1:IWatcherSetupUtil) : void
        {
            ProductionWindow._watcherSetupUtil = param1;
            return;
        }// end function

    }
}
