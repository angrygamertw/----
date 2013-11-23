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

    public class BuyTradeGoodsSearchWindow extends PopupWindow implements IBindingClient
    {
        private var _513506736weapon_data_list:DataGrid;
        private var _commoditySummary:Object;
        private var _2024599462armorArray:ArrayCollection;
        private var _1680067859armor_data_list:DataGrid;
        var _bindingsByDestination:Object;
        private var _playerRank:int = 0;
        private var _buyCode:int;
        private var _1218643219_swf_close_window:MovieClipLoaderAsset;
        public var _BuyTradeGoodsSearchWindow_Text1:Text;
        public var _BuyTradeGoodsSearchWindow_Text2:Text;
        public var _BuyTradeGoodsSearchWindow_Text3:Text;
        public var _BuyTradeGoodsSearchWindow_Text4:Text;
        public var clickBool:Boolean = false;
        private var _522920908detailRenderer:ClassFactory;
        public var _BuyTradeGoodsSearchWindow_Image1:Image;
        public var _BuyTradeGoodsSearchWindow_Image2:Image;
        public var _BuyTradeGoodsSearchWindow_Image3:Image;
        private var _1288359527accessoryArray:ArrayCollection;
        private var _1896677185windowLayer:Canvas;
        private var _1593504005material_data_list:DataGrid;
        public var _BuyTradeGoodsSearchWindow_DataGridColumn2:DataGridColumn;
        public var _BuyTradeGoodsSearchWindow_DataGridColumn3:DataGridColumn;
        public var _BuyTradeGoodsSearchWindow_DataGridColumn4:DataGridColumn;
        public var _BuyTradeGoodsSearchWindow_DataGridColumn5:DataGridColumn;
        public var _BuyTradeGoodsSearchWindow_DataGridColumn6:DataGridColumn;
        public var _BuyTradeGoodsSearchWindow_DataGridColumn8:DataGridColumn;
        public var _BuyTradeGoodsSearchWindow_DataGridColumn9:DataGridColumn;
        private var _418598499weaponArray:ArrayCollection;
        private var _550978329_swf_tab:MovieClipLoaderAsset;
        public var _BuyTradeGoodsSearchWindow_DataGridColumn10:DataGridColumn;
        public var _BuyTradeGoodsSearchWindow_DataGridColumn11:DataGridColumn;
        public var _BuyTradeGoodsSearchWindow_DataGridColumn12:DataGridColumn;
        public var _BuyTradeGoodsSearchWindow_DataGridColumn13:DataGridColumn;
        public var _BuyTradeGoodsSearchWindow_DataGridColumn15:DataGridColumn;
        public var _BuyTradeGoodsSearchWindow_DataGridColumn16:DataGridColumn;
        public var _BuyTradeGoodsSearchWindow_DataGridColumn17:DataGridColumn;
        private var _1176879758materialArray:ArrayCollection;
        public var _BuyTradeGoodsSearchWindow_DataGridColumn19:DataGridColumn;
        private var _90913087_gold:int;
        public var _BuyTradeGoodsSearchWindow_Canvas3:Canvas;
        public var _BuyTradeGoodsSearchWindow_Canvas4:Canvas;
        public var _BuyTradeGoodsSearchWindow_Canvas5:Canvas;
        public var _BuyTradeGoodsSearchWindow_Canvas6:Canvas;
        public var _BuyTradeGoodsSearchWindow_Canvas7:Canvas;
        public var _BuyTradeGoodsSearchWindow_DataGridColumn20:DataGridColumn;
        public var _BuyTradeGoodsSearchWindow_DataGridColumn21:DataGridColumn;
        public var _BuyTradeGoodsSearchWindow_DataGridColumn22:DataGridColumn;
        public var _BuyTradeGoodsSearchWindow_DataGridColumn24:DataGridColumn;
        public var _BuyTradeGoodsSearchWindow_DataGridColumn25:DataGridColumn;
        private var _1177280081itemList:ViewStack;
        public var _BuyTradeGoodsSearchWindow_ComboBox1:ComboBox;
        public var _BuyTradeGoodsSearchWindow_ComboBox2:ComboBox;
        private var selectId:int;
        private var _1193840764_swf_close:MovieClipLoaderAsset;
        private var _192644587buttonRenderer:ClassFactory;
        private var _1932164202goodsSearchCanvas:Canvas;
        private var _1218335257item_data_list:DataGrid;
        private var equipmentDetail:EquipmentDetail;
        public var weaponDetail:WeaponDetail;
        private var _1073623258accessory_data_list:DataGrid;
        var _watchers:Array;
        public var _BuyTradeGoodsSearchWindow_Box1:Box;
        public var _BuyTradeGoodsSearchWindow_Box2:Box;
        public var _BuyTradeGoodsSearchWindow_Box3:Box;
        public var _BuyTradeGoodsSearchWindow_Box4:Box;
        public var _BuyTradeGoodsSearchWindow_Box5:Box;
        private var _714938261selectJobData:Array;
        var _bindingsBeginWithWord:Object;
        private var _2126052102itemArray:ArrayCollection;
        var _bindings:Array;
        private var _documentDescriptor_:UIComponentDescriptor;
        public static const SEARCH_GOODS:String = NAME + "searchGoods";
        private static const WINDOW_X:int = 20;
        private static const WINDOW_Y:int = 20;
        private static const BUTTON_X:int = 325;
        private static const BUTTON_Y:int = 490;
        public static const CLOSE_SEARCH_GOODS:String = "closesearchGoods";
        private static var _watcherSetupUtil:IWatcherSetupUtil;
        public static const NAME:String = "BuyTradeGoodsSearchWindow";
        private static const WINDOW_HT:int = 520;
        private static const WINDOW_WD:int = 720;

        public function BuyTradeGoodsSearchWindow()
        {
            _documentDescriptor_ = new UIComponentDescriptor({type:PopupWindow, propertiesFactory:function () : Object
            {
                return {width:760, height:560, childDescriptors:[new UIComponentDescriptor({type:Canvas, id:"windowLayer"}), new UIComponentDescriptor({type:Canvas, id:"goodsSearchCanvas", propertiesFactory:function () : Object
                {
                    return {childDescriptors:[new UIComponentDescriptor({type:Text, id:"_BuyTradeGoodsSearchWindow_Text1", propertiesFactory:function () : Object
                    {
                        return {styleName:"DealTitle"};
                    }// end function
                    }), new UIComponentDescriptor({type:ViewStack, id:"itemList", propertiesFactory:function () : Object
                    {
                        return {x:0, y:0, width:760, height:560, childDescriptors:[new UIComponentDescriptor({type:Canvas, id:"_BuyTradeGoodsSearchWindow_Canvas3", propertiesFactory:function () : Object
                        {
                            return {childDescriptors:[new UIComponentDescriptor({type:Text, id:"_BuyTradeGoodsSearchWindow_Text2", stylesFactory:function () : void
                            {
                                this.fontSize = 12;
                                return;
                            }// end function
                            , propertiesFactory:function () : Object
                            {
                                return {x:570};
                            }// end function
                            }), new UIComponentDescriptor({type:ComboBox, id:"_BuyTradeGoodsSearchWindow_ComboBox1", events:{change:"___BuyTradeGoodsSearchWindow_ComboBox1_change"}, propertiesFactory:function () : Object
                            {
                                return {x:570, y:82, width:150, styleName:"GuildComboBox"};
                            }// end function
                            }), new UIComponentDescriptor({type:Box, id:"_BuyTradeGoodsSearchWindow_Box1", propertiesFactory:function () : Object
                            {
                                return {y:108, childDescriptors:[new UIComponentDescriptor({type:DataGrid, id:"weapon_data_list", propertiesFactory:function () : Object
                                {
                                    return {rowCount:13, rowHeight:26, styleName:"DataGridBase", sortableColumns:false, columns:[_BuyTradeGoodsSearchWindow_DataGridColumn1_c(), _BuyTradeGoodsSearchWindow_DataGridColumn2_i(), _BuyTradeGoodsSearchWindow_DataGridColumn3_i(), _BuyTradeGoodsSearchWindow_DataGridColumn4_i(), _BuyTradeGoodsSearchWindow_DataGridColumn5_i(), _BuyTradeGoodsSearchWindow_DataGridColumn6_i()]};
                                }// end function
                                })]};
                            }// end function
                            })]};
                        }// end function
                        }), new UIComponentDescriptor({type:Canvas, id:"_BuyTradeGoodsSearchWindow_Canvas4", propertiesFactory:function () : Object
                        {
                            return {childDescriptors:[new UIComponentDescriptor({type:Text, id:"_BuyTradeGoodsSearchWindow_Text3", stylesFactory:function () : void
                            {
                                this.fontSize = 12;
                                return;
                            }// end function
                            , propertiesFactory:function () : Object
                            {
                                return {x:570};
                            }// end function
                            }), new UIComponentDescriptor({type:ComboBox, id:"_BuyTradeGoodsSearchWindow_ComboBox2", events:{change:"___BuyTradeGoodsSearchWindow_ComboBox2_change"}, propertiesFactory:function () : Object
                            {
                                return {x:570, y:82, width:150, styleName:"GuildComboBox"};
                            }// end function
                            }), new UIComponentDescriptor({type:Box, id:"_BuyTradeGoodsSearchWindow_Box2", propertiesFactory:function () : Object
                            {
                                return {y:108, childDescriptors:[new UIComponentDescriptor({type:DataGrid, id:"armor_data_list", propertiesFactory:function () : Object
                                {
                                    return {rowCount:13, rowHeight:26, styleName:"DataGridBase", sortableColumns:false, columns:[_BuyTradeGoodsSearchWindow_DataGridColumn7_c(), _BuyTradeGoodsSearchWindow_DataGridColumn8_i(), _BuyTradeGoodsSearchWindow_DataGridColumn9_i(), _BuyTradeGoodsSearchWindow_DataGridColumn10_i(), _BuyTradeGoodsSearchWindow_DataGridColumn11_i(), _BuyTradeGoodsSearchWindow_DataGridColumn12_i(), _BuyTradeGoodsSearchWindow_DataGridColumn13_i()]};
                                }// end function
                                })]};
                            }// end function
                            })]};
                        }// end function
                        }), new UIComponentDescriptor({type:Canvas, id:"_BuyTradeGoodsSearchWindow_Canvas5", propertiesFactory:function () : Object
                        {
                            return {childDescriptors:[new UIComponentDescriptor({type:Box, id:"_BuyTradeGoodsSearchWindow_Box3", propertiesFactory:function () : Object
                            {
                                return {y:108, childDescriptors:[new UIComponentDescriptor({type:DataGrid, id:"accessory_data_list", propertiesFactory:function () : Object
                                {
                                    return {rowCount:13, rowHeight:26, styleName:"DataGridBase", sortableColumns:false, columns:[_BuyTradeGoodsSearchWindow_DataGridColumn14_c(), _BuyTradeGoodsSearchWindow_DataGridColumn15_i(), _BuyTradeGoodsSearchWindow_DataGridColumn16_i(), _BuyTradeGoodsSearchWindow_DataGridColumn17_i()]};
                                }// end function
                                })]};
                            }// end function
                            })]};
                        }// end function
                        }), new UIComponentDescriptor({type:Canvas, id:"_BuyTradeGoodsSearchWindow_Canvas6", propertiesFactory:function () : Object
                        {
                            return {childDescriptors:[new UIComponentDescriptor({type:Box, id:"_BuyTradeGoodsSearchWindow_Box4", propertiesFactory:function () : Object
                            {
                                return {y:108, childDescriptors:[new UIComponentDescriptor({type:DataGrid, id:"item_data_list", propertiesFactory:function () : Object
                                {
                                    return {rowCount:13, rowHeight:26, styleName:"DataGridBase", sortableColumns:false, columns:[_BuyTradeGoodsSearchWindow_DataGridColumn18_c(), _BuyTradeGoodsSearchWindow_DataGridColumn19_i(), _BuyTradeGoodsSearchWindow_DataGridColumn20_i(), _BuyTradeGoodsSearchWindow_DataGridColumn21_i(), _BuyTradeGoodsSearchWindow_DataGridColumn22_i()]};
                                }// end function
                                })]};
                            }// end function
                            })]};
                        }// end function
                        }), new UIComponentDescriptor({type:Canvas, id:"_BuyTradeGoodsSearchWindow_Canvas7", propertiesFactory:function () : Object
                        {
                            return {childDescriptors:[new UIComponentDescriptor({type:Box, id:"_BuyTradeGoodsSearchWindow_Box5", propertiesFactory:function () : Object
                            {
                                return {y:108, childDescriptors:[new UIComponentDescriptor({type:DataGrid, id:"material_data_list", propertiesFactory:function () : Object
                                {
                                    return {rowCount:13, rowHeight:26, styleName:"DataGridBase", sortableColumns:false, columns:[_BuyTradeGoodsSearchWindow_DataGridColumn23_c(), _BuyTradeGoodsSearchWindow_DataGridColumn24_i(), _BuyTradeGoodsSearchWindow_DataGridColumn25_i()]};
                                }// end function
                                })]};
                            }// end function
                            })]};
                        }// end function
                        })]};
                    }// end function
                    }), new UIComponentDescriptor({type:Text, id:"_BuyTradeGoodsSearchWindow_Text4", stylesFactory:function () : void
                    {
                        this.fontSize = 14;
                        return;
                    }// end function
                    }), new UIComponentDescriptor({type:Image, id:"_BuyTradeGoodsSearchWindow_Image1", propertiesFactory:function () : Object
                    {
                        return {y:80};
                    }// end function
                    }), new UIComponentDescriptor({type:Image, id:"_BuyTradeGoodsSearchWindow_Image2", events:{click:"___BuyTradeGoodsSearchWindow_Image2_click"}}), new UIComponentDescriptor({type:Image, id:"_BuyTradeGoodsSearchWindow_Image3", events:{click:"___BuyTradeGoodsSearchWindow_Image3_click"}})]};
                }// end function
                })]};
            }// end function
            });
            _1193840764_swf_close = new Viking.EmbedSwfButtonCommon();
            _550978329_swf_tab = new Viking.EmbedSwfTabCommon();
            _1218643219_swf_close_window = new Viking.EmbedSwfButtonCloseWindow();
            equipmentDetail = new EquipmentDetail();
            weaponDetail = new WeaponDetail();
            _bindings = [];
            _watchers = [];
            _bindingsByDestination = {};
            _bindingsBeginWithWord = {};
            mx_internal::_document = this;
            this.width = 760;
            this.height = 560;
            _BuyTradeGoodsSearchWindow_ClassFactory1_i();
            _BuyTradeGoodsSearchWindow_ClassFactory2_i();
            this.addEventListener("creationComplete", ___BuyTradeGoodsSearchWindow_PopupWindow1_creationComplete);
            return;
        }// end function

        private function _BuyTradeGoodsSearchWindow_DataGridColumn19_i() : DataGridColumn
        {
            var _loc_1:* = new DataGridColumn();
            _BuyTradeGoodsSearchWindow_DataGridColumn19 = _loc_1;
            _loc_1.dataField = "nameLabel";
            _loc_1.width = 170;
            BindingManager.executeBindings(this, "_BuyTradeGoodsSearchWindow_DataGridColumn19", _BuyTradeGoodsSearchWindow_DataGridColumn19);
            return _loc_1;
        }// end function

        public function closeWindow() : void
        {
            dispatchEvent(new Event(CLOSE_SEARCH_GOODS));
            PopUpManager.removePopUp(this);
            MovieClip(Loader(_swf_close.getChildAt(0)).content).gotoAndPlay(0);
            MovieClip(Loader(_swf_close.getChildAt(0)).content).gotoAndPlay("button_close");
            MovieClip(Loader(_swf_close_window.getChildAt(0)).content).gotoAndPlay(1);
            return;
        }// end function

        private function set itemArray(param1:ArrayCollection) : void
        {
            var _loc_2:* = this._2126052102itemArray;
            if (_loc_2 !== param1)
            {
                this._2126052102itemArray = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "itemArray", _loc_2, param1));
            }
            return;
        }// end function

        public function get buttonRenderer() : ClassFactory
        {
            return this._192644587buttonRenderer;
        }// end function

        public function setAccessoryMasterData(param1:Object) : void
        {
            var obj:Object;
            var arr:Array;
            var accessoryData:* = param1;
            var defArray:* = new Array();
            var _loc_3:int = 0;
            var _loc_4:* = accessoryData;
            while (_loc_4 in _loc_3)
            {
                
                obj = _loc_4[_loc_3];
                defArray.push(obj);
            }
            arr = defArray.filter(function (param1, param2:int, param3:Array) : Boolean
            {
                return param1.sellable == 0;
            }// end function
            );
            accessoryArray = new ArrayCollection(arr);
            return;
        }// end function

        private function _BuyTradeGoodsSearchWindow_DataGridColumn22_i() : DataGridColumn
        {
            var _loc_1:* = new DataGridColumn();
            _BuyTradeGoodsSearchWindow_DataGridColumn22 = _loc_1;
            _loc_1.dataField = "description";
            BindingManager.executeBindings(this, "_BuyTradeGoodsSearchWindow_DataGridColumn22", _BuyTradeGoodsSearchWindow_DataGridColumn22);
            return _loc_1;
        }// end function

        public function componentToolTip() : String
        {
            return Utils.i18n("generalShowDetail");
        }// end function

        public function set armor_data_list(param1:DataGrid) : void
        {
            var _loc_2:* = this._1680067859armor_data_list;
            if (_loc_2 !== param1)
            {
                this._1680067859armor_data_list = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "armor_data_list", _loc_2, param1));
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

        private function _BuyTradeGoodsSearchWindow_ClassFactory6_c() : ClassFactory
        {
            var _loc_1:* = new ClassFactory();
            _loc_1.generator = SearchButtonRenderer;
            return _loc_1;
        }// end function

        private function _BuyTradeGoodsSearchWindow_DataGridColumn10_i() : DataGridColumn
        {
            var _loc_1:* = new DataGridColumn();
            _BuyTradeGoodsSearchWindow_DataGridColumn10 = _loc_1;
            _loc_1.dataField = "magicalDefense";
            _loc_1.width = 60;
            _loc_1.setStyle("textAlign", "center");
            BindingManager.executeBindings(this, "_BuyTradeGoodsSearchWindow_DataGridColumn10", _BuyTradeGoodsSearchWindow_DataGridColumn10);
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

        private function _BuyTradeGoodsSearchWindow_DataGridColumn18_c() : DataGridColumn
        {
            var _loc_1:* = new DataGridColumn();
            _loc_1.itemRenderer = _BuyTradeGoodsSearchWindow_ClassFactory6_c();
            _loc_1.width = 50;
            return _loc_1;
        }// end function

        private function set _swf_tab(param1:MovieClipLoaderAsset) : void
        {
            var _loc_2:* = this._550978329_swf_tab;
            if (_loc_2 !== param1)
            {
                this._550978329_swf_tab = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "_swf_tab", _loc_2, param1));
            }
            return;
        }// end function

        public function get detailRenderer() : ClassFactory
        {
            return this._522920908detailRenderer;
        }// end function

        private function _BuyTradeGoodsSearchWindow_DataGridColumn6_i() : DataGridColumn
        {
            var _loc_1:* = new DataGridColumn();
            _BuyTradeGoodsSearchWindow_DataGridColumn6 = _loc_1;
            _loc_1.dataField = "description";
            BindingManager.executeBindings(this, "_BuyTradeGoodsSearchWindow_DataGridColumn6", _BuyTradeGoodsSearchWindow_DataGridColumn6);
            return _loc_1;
        }// end function

        public function get itemList() : ViewStack
        {
            return this._1177280081itemList;
        }// end function

        public function set accessory_data_list(param1:DataGrid) : void
        {
            var _loc_2:* = this._1073623258accessory_data_list;
            if (_loc_2 !== param1)
            {
                this._1073623258accessory_data_list = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "accessory_data_list", _loc_2, param1));
            }
            return;
        }// end function

        private function _BuyTradeGoodsSearchWindow_DataGridColumn21_i() : DataGridColumn
        {
            var _loc_1:* = new DataGridColumn();
            _BuyTradeGoodsSearchWindow_DataGridColumn21 = _loc_1;
            _loc_1.dataField = "effect";
            _loc_1.width = 180;
            _loc_1.setStyle("textAlign", "center");
            BindingManager.executeBindings(this, "_BuyTradeGoodsSearchWindow_DataGridColumn21", _BuyTradeGoodsSearchWindow_DataGridColumn21);
            return _loc_1;
        }// end function

        private function get armorArray() : ArrayCollection
        {
            return this._2024599462armorArray;
        }// end function

        private function _BuyTradeGoodsSearchWindow_DataGridColumn5_i() : DataGridColumn
        {
            var _loc_1:* = new DataGridColumn();
            _BuyTradeGoodsSearchWindow_DataGridColumn5 = _loc_1;
            _loc_1.dataField = "endurance";
            _loc_1.width = 60;
            _loc_1.setStyle("textAlign", "center");
            BindingManager.executeBindings(this, "_BuyTradeGoodsSearchWindow_DataGridColumn5", _BuyTradeGoodsSearchWindow_DataGridColumn5);
            return _loc_1;
        }// end function

        public function get gold() : int
        {
            return _gold;
        }// end function

        private function get selectJobData() : Array
        {
            return this._714938261selectJobData;
        }// end function

        public function getNameLabel(param1:Object) : String
        {
            return param1.nameLabel;
        }// end function

        private function get _swf_close() : MovieClipLoaderAsset
        {
            return this._1193840764_swf_close;
        }// end function

        private function setup() : void
        {
            MovieClip(Loader(_swf_close.getChildAt(0)).content).gotoAndPlay("button_close");
            MovieClip(Loader(_swf_tab.getChildAt(0)).content).gotoAndPlay("tab_item_arms");
            Loader(_swf_tab.getChildAt(0)).content.addEventListener("TAB_ITEM_ARMS", function (event:Event) : void
            {
                itemList.selectedIndex = 0;
                return;
            }// end function
            );
            Loader(_swf_tab.getChildAt(0)).content.addEventListener("TAB_ITEM_GUARDS", function (event:Event) : void
            {
                itemList.selectedIndex = 1;
                return;
            }// end function
            );
            Loader(_swf_tab.getChildAt(0)).content.addEventListener("TAB_ITEM_ACCESSORIES", function (event:Event) : void
            {
                itemList.selectedIndex = 2;
                return;
            }// end function
            );
            Loader(_swf_tab.getChildAt(0)).content.addEventListener("TAB_ITEM_ITEMS", function (event:Event) : void
            {
                itemList.selectedIndex = 3;
                return;
            }// end function
            );
            Loader(_swf_tab.getChildAt(0)).content.addEventListener("TAB_ITEM_MATERIALS", function (event:Event) : void
            {
                itemList.selectedIndex = 4;
                return;
            }// end function
            );
            return;
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

        private function get accessoryArray() : ArrayCollection
        {
            return this._1288359527accessoryArray;
        }// end function

        private function _BuyTradeGoodsSearchWindow_bindingsSetup() : Array
        {
            var binding:Binding;
            var result:Array;
            binding = new Binding(this, function () : Number
            {
                return WINDOW_X;
            }// end function
            , function (param1:Number) : void
            {
                _BuyTradeGoodsSearchWindow_Text1.x = param1;
                return;
            }// end function
            , "_BuyTradeGoodsSearchWindow_Text1.x");
            result[0] = binding;
            binding = new Binding(this, function () : Number
            {
                return WINDOW_Y;
            }// end function
            , function (param1:Number) : void
            {
                _BuyTradeGoodsSearchWindow_Text1.y = param1;
                return;
            }// end function
            , "_BuyTradeGoodsSearchWindow_Text1.y");
            result[1] = binding;
            binding = new Binding(this, function () : Number
            {
                return WINDOW_WD;
            }// end function
            , function (param1:Number) : void
            {
                _BuyTradeGoodsSearchWindow_Text1.width = param1;
                return;
            }// end function
            , "_BuyTradeGoodsSearchWindow_Text1.width");
            result[2] = binding;
            binding = new Binding(this, function () : String
            {
                var _loc_1:* = Utils.i18n("buyTradeGoodsSearchBuy");
                var _loc_2:* = _loc_1 == undefined ? (null) : (String(_loc_1));
                return _loc_2;
            }// end function
            , function (param1:String) : void
            {
                _BuyTradeGoodsSearchWindow_Text1.text = param1;
                return;
            }// end function
            , "_BuyTradeGoodsSearchWindow_Text1.text");
            result[3] = binding;
            binding = new Binding(this, function () : String
            {
                var _loc_1:* = Utils.i18n("generalWeapon");
                var _loc_2:* = _loc_1 == undefined ? (null) : (String(_loc_1));
                return _loc_2;
            }// end function
            , function (param1:String) : void
            {
                _BuyTradeGoodsSearchWindow_Canvas3.label = param1;
                return;
            }// end function
            , "_BuyTradeGoodsSearchWindow_Canvas3.label");
            result[4] = binding;
            binding = new Binding(this, function () : Number
            {
                return WINDOW_Y + 35;
            }// end function
            , function (param1:Number) : void
            {
                _BuyTradeGoodsSearchWindow_Text2.y = param1;
                return;
            }// end function
            , "_BuyTradeGoodsSearchWindow_Text2.y");
            result[5] = binding;
            binding = new Binding(this, function () : String
            {
                var _loc_1:* = Utils.i18n("generalCanEquipJob") + ":";
                var _loc_2:* = _loc_1 == undefined ? (null) : (String(_loc_1));
                return _loc_2;
            }// end function
            , function (param1:String) : void
            {
                _BuyTradeGoodsSearchWindow_Text2.text = param1;
                return;
            }// end function
            , "_BuyTradeGoodsSearchWindow_Text2.text");
            result[6] = binding;
            binding = new Binding(this, function () : Object
            {
                return selectJobData;
            }// end function
            , function (param1:Object) : void
            {
                _BuyTradeGoodsSearchWindow_ComboBox1.dataProvider = param1;
                return;
            }// end function
            , "_BuyTradeGoodsSearchWindow_ComboBox1.dataProvider");
            result[7] = binding;
            binding = new Binding(this, function () : Number
            {
                return WINDOW_X + 20;
            }// end function
            , function (param1:Number) : void
            {
                _BuyTradeGoodsSearchWindow_Box1.x = param1;
                return;
            }// end function
            , "_BuyTradeGoodsSearchWindow_Box1.x");
            result[8] = binding;
            binding = new Binding(this, function () : Object
            {
                return weaponArray;
            }// end function
            , function (param1:Object) : void
            {
                weapon_data_list.dataProvider = param1;
                return;
            }// end function
            , "weapon_data_list.dataProvider");
            result[9] = binding;
            binding = new Binding(this, function () : Number
            {
                return WINDOW_WD - 40;
            }// end function
            , function (param1:Number) : void
            {
                weapon_data_list.width = param1;
                return;
            }// end function
            , "weapon_data_list.width");
            result[10] = binding;
            binding = new Binding(this, function () : String
            {
                var _loc_1:* = Utils.i18n("changeEquipmentWeaponName");
                var _loc_2:* = _loc_1 == undefined ? (null) : (String(_loc_1));
                return _loc_2;
            }// end function
            , function (param1:String) : void
            {
                _BuyTradeGoodsSearchWindow_DataGridColumn2.headerText = param1;
                return;
            }// end function
            , "_BuyTradeGoodsSearchWindow_DataGridColumn2.headerText");
            result[11] = binding;
            binding = new Binding(this, function () : IFactory
            {
                return detailRenderer;
            }// end function
            , function (param1:IFactory) : void
            {
                _BuyTradeGoodsSearchWindow_DataGridColumn2.itemRenderer = param1;
                return;
            }// end function
            , "_BuyTradeGoodsSearchWindow_DataGridColumn2.itemRenderer");
            result[12] = binding;
            binding = new Binding(this, function () : String
            {
                var _loc_1:* = Utils.i18n("changeEquipmentAttack");
                var _loc_2:* = _loc_1 == undefined ? (null) : (String(_loc_1));
                return _loc_2;
            }// end function
            , function (param1:String) : void
            {
                _BuyTradeGoodsSearchWindow_DataGridColumn3.headerText = param1;
                return;
            }// end function
            , "_BuyTradeGoodsSearchWindow_DataGridColumn3.headerText");
            result[13] = binding;
            binding = new Binding(this, function () : String
            {
                var _loc_1:* = Utils.i18n("changeEquipmentHit");
                var _loc_2:* = _loc_1 == undefined ? (null) : (String(_loc_1));
                return _loc_2;
            }// end function
            , function (param1:String) : void
            {
                _BuyTradeGoodsSearchWindow_DataGridColumn4.headerText = param1;
                return;
            }// end function
            , "_BuyTradeGoodsSearchWindow_DataGridColumn4.headerText");
            result[14] = binding;
            binding = new Binding(this, function () : String
            {
                var _loc_1:* = Utils.i18n("changeEquipmentEndurance");
                var _loc_2:* = _loc_1 == undefined ? (null) : (String(_loc_1));
                return _loc_2;
            }// end function
            , function (param1:String) : void
            {
                _BuyTradeGoodsSearchWindow_DataGridColumn5.headerText = param1;
                return;
            }// end function
            , "_BuyTradeGoodsSearchWindow_DataGridColumn5.headerText");
            result[15] = binding;
            binding = new Binding(this, function () : String
            {
                var _loc_1:* = Utils.i18n("generalDescription");
                var _loc_2:* = _loc_1 == undefined ? (null) : (String(_loc_1));
                return _loc_2;
            }// end function
            , function (param1:String) : void
            {
                _BuyTradeGoodsSearchWindow_DataGridColumn6.headerText = param1;
                return;
            }// end function
            , "_BuyTradeGoodsSearchWindow_DataGridColumn6.headerText");
            result[16] = binding;
            binding = new Binding(this, function () : String
            {
                var _loc_1:* = Utils.i18n("generalEquipArmor");
                var _loc_2:* = _loc_1 == undefined ? (null) : (String(_loc_1));
                return _loc_2;
            }// end function
            , function (param1:String) : void
            {
                _BuyTradeGoodsSearchWindow_Canvas4.label = param1;
                return;
            }// end function
            , "_BuyTradeGoodsSearchWindow_Canvas4.label");
            result[17] = binding;
            binding = new Binding(this, function () : Number
            {
                return WINDOW_Y + 35;
            }// end function
            , function (param1:Number) : void
            {
                _BuyTradeGoodsSearchWindow_Text3.y = param1;
                return;
            }// end function
            , "_BuyTradeGoodsSearchWindow_Text3.y");
            result[18] = binding;
            binding = new Binding(this, function () : String
            {
                var _loc_1:* = Utils.i18n("generalCanEquipJob") + ":";
                var _loc_2:* = _loc_1 == undefined ? (null) : (String(_loc_1));
                return _loc_2;
            }// end function
            , function (param1:String) : void
            {
                _BuyTradeGoodsSearchWindow_Text3.text = param1;
                return;
            }// end function
            , "_BuyTradeGoodsSearchWindow_Text3.text");
            result[19] = binding;
            binding = new Binding(this, function () : Object
            {
                return selectJobData;
            }// end function
            , function (param1:Object) : void
            {
                _BuyTradeGoodsSearchWindow_ComboBox2.dataProvider = param1;
                return;
            }// end function
            , "_BuyTradeGoodsSearchWindow_ComboBox2.dataProvider");
            result[20] = binding;
            binding = new Binding(this, function () : Number
            {
                return WINDOW_X + 20;
            }// end function
            , function (param1:Number) : void
            {
                _BuyTradeGoodsSearchWindow_Box2.x = param1;
                return;
            }// end function
            , "_BuyTradeGoodsSearchWindow_Box2.x");
            result[21] = binding;
            binding = new Binding(this, function () : Object
            {
                return armorArray;
            }// end function
            , function (param1:Object) : void
            {
                armor_data_list.dataProvider = param1;
                return;
            }// end function
            , "armor_data_list.dataProvider");
            result[22] = binding;
            binding = new Binding(this, function () : Number
            {
                return WINDOW_WD - 40;
            }// end function
            , function (param1:Number) : void
            {
                armor_data_list.width = param1;
                return;
            }// end function
            , "armor_data_list.width");
            result[23] = binding;
            binding = new Binding(this, function () : String
            {
                var _loc_1:* = Utils.i18n("changeEquipmentArmorName");
                var _loc_2:* = _loc_1 == undefined ? (null) : (String(_loc_1));
                return _loc_2;
            }// end function
            , function (param1:String) : void
            {
                _BuyTradeGoodsSearchWindow_DataGridColumn8.headerText = param1;
                return;
            }// end function
            , "_BuyTradeGoodsSearchWindow_DataGridColumn8.headerText");
            result[24] = binding;
            binding = new Binding(this, function () : IFactory
            {
                return detailRenderer;
            }// end function
            , function (param1:IFactory) : void
            {
                _BuyTradeGoodsSearchWindow_DataGridColumn8.itemRenderer = param1;
                return;
            }// end function
            , "_BuyTradeGoodsSearchWindow_DataGridColumn8.itemRenderer");
            result[25] = binding;
            binding = new Binding(this, function () : String
            {
                var _loc_1:* = Utils.i18n("changeEquipmentDefense");
                var _loc_2:* = _loc_1 == undefined ? (null) : (String(_loc_1));
                return _loc_2;
            }// end function
            , function (param1:String) : void
            {
                _BuyTradeGoodsSearchWindow_DataGridColumn9.headerText = param1;
                return;
            }// end function
            , "_BuyTradeGoodsSearchWindow_DataGridColumn9.headerText");
            result[26] = binding;
            binding = new Binding(this, function () : String
            {
                var _loc_1:* = Utils.i18n("changeEquipmentMagicalDefense");
                var _loc_2:* = _loc_1 == undefined ? (null) : (String(_loc_1));
                return _loc_2;
            }// end function
            , function (param1:String) : void
            {
                _BuyTradeGoodsSearchWindow_DataGridColumn10.headerText = param1;
                return;
            }// end function
            , "_BuyTradeGoodsSearchWindow_DataGridColumn10.headerText");
            result[27] = binding;
            binding = new Binding(this, function () : String
            {
                var _loc_1:* = Utils.i18n("changeEquipmentAvoidance");
                var _loc_2:* = _loc_1 == undefined ? (null) : (String(_loc_1));
                return _loc_2;
            }// end function
            , function (param1:String) : void
            {
                _BuyTradeGoodsSearchWindow_DataGridColumn11.headerText = param1;
                return;
            }// end function
            , "_BuyTradeGoodsSearchWindow_DataGridColumn11.headerText");
            result[28] = binding;
            binding = new Binding(this, function () : String
            {
                var _loc_1:* = Utils.i18n("changeEquipmentEndurance");
                var _loc_2:* = _loc_1 == undefined ? (null) : (String(_loc_1));
                return _loc_2;
            }// end function
            , function (param1:String) : void
            {
                _BuyTradeGoodsSearchWindow_DataGridColumn12.headerText = param1;
                return;
            }// end function
            , "_BuyTradeGoodsSearchWindow_DataGridColumn12.headerText");
            result[29] = binding;
            binding = new Binding(this, function () : String
            {
                var _loc_1:* = Utils.i18n("generalDescription");
                var _loc_2:* = _loc_1 == undefined ? (null) : (String(_loc_1));
                return _loc_2;
            }// end function
            , function (param1:String) : void
            {
                _BuyTradeGoodsSearchWindow_DataGridColumn13.headerText = param1;
                return;
            }// end function
            , "_BuyTradeGoodsSearchWindow_DataGridColumn13.headerText");
            result[30] = binding;
            binding = new Binding(this, function () : String
            {
                var _loc_1:* = Utils.i18n("generalEquipAccessory");
                var _loc_2:* = _loc_1 == undefined ? (null) : (String(_loc_1));
                return _loc_2;
            }// end function
            , function (param1:String) : void
            {
                _BuyTradeGoodsSearchWindow_Canvas5.label = param1;
                return;
            }// end function
            , "_BuyTradeGoodsSearchWindow_Canvas5.label");
            result[31] = binding;
            binding = new Binding(this, function () : Number
            {
                return WINDOW_X + 20;
            }// end function
            , function (param1:Number) : void
            {
                _BuyTradeGoodsSearchWindow_Box3.x = param1;
                return;
            }// end function
            , "_BuyTradeGoodsSearchWindow_Box3.x");
            result[32] = binding;
            binding = new Binding(this, function () : Object
            {
                return accessoryArray;
            }// end function
            , function (param1:Object) : void
            {
                accessory_data_list.dataProvider = param1;
                return;
            }// end function
            , "accessory_data_list.dataProvider");
            result[33] = binding;
            binding = new Binding(this, function () : Number
            {
                return WINDOW_WD - 40;
            }// end function
            , function (param1:Number) : void
            {
                accessory_data_list.width = param1;
                return;
            }// end function
            , "accessory_data_list.width");
            result[34] = binding;
            binding = new Binding(this, function () : String
            {
                var _loc_1:* = Utils.i18n("changeEquipmentAccessoryName");
                var _loc_2:* = _loc_1 == undefined ? (null) : (String(_loc_1));
                return _loc_2;
            }// end function
            , function (param1:String) : void
            {
                _BuyTradeGoodsSearchWindow_DataGridColumn15.headerText = param1;
                return;
            }// end function
            , "_BuyTradeGoodsSearchWindow_DataGridColumn15.headerText");
            result[35] = binding;
            binding = new Binding(this, function () : IFactory
            {
                return detailRenderer;
            }// end function
            , function (param1:IFactory) : void
            {
                _BuyTradeGoodsSearchWindow_DataGridColumn15.itemRenderer = param1;
                return;
            }// end function
            , "_BuyTradeGoodsSearchWindow_DataGridColumn15.itemRenderer");
            result[36] = binding;
            binding = new Binding(this, function () : String
            {
                var _loc_1:* = Utils.i18n("changeEquipmentEffect");
                var _loc_2:* = _loc_1 == undefined ? (null) : (String(_loc_1));
                return _loc_2;
            }// end function
            , function (param1:String) : void
            {
                _BuyTradeGoodsSearchWindow_DataGridColumn16.headerText = param1;
                return;
            }// end function
            , "_BuyTradeGoodsSearchWindow_DataGridColumn16.headerText");
            result[37] = binding;
            binding = new Binding(this, function () : String
            {
                var _loc_1:* = Utils.i18n("generalDescription");
                var _loc_2:* = _loc_1 == undefined ? (null) : (String(_loc_1));
                return _loc_2;
            }// end function
            , function (param1:String) : void
            {
                _BuyTradeGoodsSearchWindow_DataGridColumn17.headerText = param1;
                return;
            }// end function
            , "_BuyTradeGoodsSearchWindow_DataGridColumn17.headerText");
            result[38] = binding;
            binding = new Binding(this, function () : String
            {
                var _loc_1:* = Utils.i18n("generalMaterial");
                var _loc_2:* = _loc_1 == undefined ? (null) : (String(_loc_1));
                return _loc_2;
            }// end function
            , function (param1:String) : void
            {
                _BuyTradeGoodsSearchWindow_Canvas6.label = param1;
                return;
            }// end function
            , "_BuyTradeGoodsSearchWindow_Canvas6.label");
            result[39] = binding;
            binding = new Binding(this, function () : Number
            {
                return WINDOW_X + 20;
            }// end function
            , function (param1:Number) : void
            {
                _BuyTradeGoodsSearchWindow_Box4.x = param1;
                return;
            }// end function
            , "_BuyTradeGoodsSearchWindow_Box4.x");
            result[40] = binding;
            binding = new Binding(this, function () : Object
            {
                return itemArray;
            }// end function
            , function (param1:Object) : void
            {
                item_data_list.dataProvider = param1;
                return;
            }// end function
            , "item_data_list.dataProvider");
            result[41] = binding;
            binding = new Binding(this, function () : Number
            {
                return WINDOW_WD - 40;
            }// end function
            , function (param1:Number) : void
            {
                item_data_list.width = param1;
                return;
            }// end function
            , "item_data_list.width");
            result[42] = binding;
            binding = new Binding(this, function () : String
            {
                var _loc_1:* = Utils.i18n("changeEquipmentItemName");
                var _loc_2:* = _loc_1 == undefined ? (null) : (String(_loc_1));
                return _loc_2;
            }// end function
            , function (param1:String) : void
            {
                _BuyTradeGoodsSearchWindow_DataGridColumn19.headerText = param1;
                return;
            }// end function
            , "_BuyTradeGoodsSearchWindow_DataGridColumn19.headerText");
            result[43] = binding;
            binding = new Binding(this, function () : IFactory
            {
                return detailRenderer;
            }// end function
            , function (param1:IFactory) : void
            {
                _BuyTradeGoodsSearchWindow_DataGridColumn19.itemRenderer = param1;
                return;
            }// end function
            , "_BuyTradeGoodsSearchWindow_DataGridColumn19.itemRenderer");
            result[44] = binding;
            binding = new Binding(this, function () : String
            {
                var _loc_1:* = Utils.i18n("changeEquipmentEndurance");
                var _loc_2:* = _loc_1 == undefined ? (null) : (String(_loc_1));
                return _loc_2;
            }// end function
            , function (param1:String) : void
            {
                _BuyTradeGoodsSearchWindow_DataGridColumn20.headerText = param1;
                return;
            }// end function
            , "_BuyTradeGoodsSearchWindow_DataGridColumn20.headerText");
            result[45] = binding;
            binding = new Binding(this, function () : String
            {
                var _loc_1:* = Utils.i18n("changeEquipmentEffect");
                var _loc_2:* = _loc_1 == undefined ? (null) : (String(_loc_1));
                return _loc_2;
            }// end function
            , function (param1:String) : void
            {
                _BuyTradeGoodsSearchWindow_DataGridColumn21.headerText = param1;
                return;
            }// end function
            , "_BuyTradeGoodsSearchWindow_DataGridColumn21.headerText");
            result[46] = binding;
            binding = new Binding(this, function () : String
            {
                var _loc_1:* = Utils.i18n("generalDescription");
                var _loc_2:* = _loc_1 == undefined ? (null) : (String(_loc_1));
                return _loc_2;
            }// end function
            , function (param1:String) : void
            {
                _BuyTradeGoodsSearchWindow_DataGridColumn22.headerText = param1;
                return;
            }// end function
            , "_BuyTradeGoodsSearchWindow_DataGridColumn22.headerText");
            result[47] = binding;
            binding = new Binding(this, function () : String
            {
                var _loc_1:* = Utils.i18n("confirmBuildMaterial");
                var _loc_2:* = _loc_1 == undefined ? (null) : (String(_loc_1));
                return _loc_2;
            }// end function
            , function (param1:String) : void
            {
                _BuyTradeGoodsSearchWindow_Canvas7.label = param1;
                return;
            }// end function
            , "_BuyTradeGoodsSearchWindow_Canvas7.label");
            result[48] = binding;
            binding = new Binding(this, function () : Number
            {
                return WINDOW_X + 20;
            }// end function
            , function (param1:Number) : void
            {
                _BuyTradeGoodsSearchWindow_Box5.x = param1;
                return;
            }// end function
            , "_BuyTradeGoodsSearchWindow_Box5.x");
            result[49] = binding;
            binding = new Binding(this, function () : Object
            {
                return materialArray;
            }// end function
            , function (param1:Object) : void
            {
                material_data_list.dataProvider = param1;
                return;
            }// end function
            , "material_data_list.dataProvider");
            result[50] = binding;
            binding = new Binding(this, function () : Number
            {
                return WINDOW_WD - 40;
            }// end function
            , function (param1:Number) : void
            {
                material_data_list.width = param1;
                return;
            }// end function
            , "material_data_list.width");
            result[51] = binding;
            binding = new Binding(this, function () : String
            {
                var _loc_1:* = Utils.i18n("generalMaterilalName");
                var _loc_2:* = _loc_1 == undefined ? (null) : (String(_loc_1));
                return _loc_2;
            }// end function
            , function (param1:String) : void
            {
                _BuyTradeGoodsSearchWindow_DataGridColumn24.headerText = param1;
                return;
            }// end function
            , "_BuyTradeGoodsSearchWindow_DataGridColumn24.headerText");
            result[52] = binding;
            binding = new Binding(this, function () : IFactory
            {
                return detailRenderer;
            }// end function
            , function (param1:IFactory) : void
            {
                _BuyTradeGoodsSearchWindow_DataGridColumn24.itemRenderer = param1;
                return;
            }// end function
            , "_BuyTradeGoodsSearchWindow_DataGridColumn24.itemRenderer");
            result[53] = binding;
            binding = new Binding(this, function () : String
            {
                var _loc_1:* = Utils.i18n("generalDescription");
                var _loc_2:* = _loc_1 == undefined ? (null) : (String(_loc_1));
                return _loc_2;
            }// end function
            , function (param1:String) : void
            {
                _BuyTradeGoodsSearchWindow_DataGridColumn25.headerText = param1;
                return;
            }// end function
            , "_BuyTradeGoodsSearchWindow_DataGridColumn25.headerText");
            result[54] = binding;
            binding = new Binding(this, function () : String
            {
                var _loc_1:* = Utils.i18n("generalPossessionMoney") + ":" + _gold;
                var _loc_2:* = _loc_1 == undefined ? (null) : (String(_loc_1));
                return _loc_2;
            }// end function
            , function (param1:String) : void
            {
                _BuyTradeGoodsSearchWindow_Text4.text = param1;
                return;
            }// end function
            , "_BuyTradeGoodsSearchWindow_Text4.text");
            result[55] = binding;
            binding = new Binding(this, function () : Number
            {
                return WINDOW_X + 20;
            }// end function
            , function (param1:Number) : void
            {
                _BuyTradeGoodsSearchWindow_Text4.x = param1;
                return;
            }// end function
            , "_BuyTradeGoodsSearchWindow_Text4.x");
            result[56] = binding;
            binding = new Binding(this, function () : Number
            {
                return WINDOW_Y + 35;
            }// end function
            , function (param1:Number) : void
            {
                _BuyTradeGoodsSearchWindow_Text4.y = param1;
                return;
            }// end function
            , "_BuyTradeGoodsSearchWindow_Text4.y");
            result[57] = binding;
            binding = new Binding(this, function () : Number
            {
                return WINDOW_X + 20;
            }// end function
            , function (param1:Number) : void
            {
                _BuyTradeGoodsSearchWindow_Image1.x = param1;
                return;
            }// end function
            , "_BuyTradeGoodsSearchWindow_Image1.x");
            result[58] = binding;
            binding = new Binding(this, function () : Object
            {
                return _swf_tab;
            }// end function
            , function (param1:Object) : void
            {
                _BuyTradeGoodsSearchWindow_Image1.source = param1;
                return;
            }// end function
            , "_BuyTradeGoodsSearchWindow_Image1.source");
            result[59] = binding;
            binding = new Binding(this, function () : Number
            {
                return BUTTON_X;
            }// end function
            , function (param1:Number) : void
            {
                _BuyTradeGoodsSearchWindow_Image2.x = param1;
                return;
            }// end function
            , "_BuyTradeGoodsSearchWindow_Image2.x");
            result[60] = binding;
            binding = new Binding(this, function () : Number
            {
                return BUTTON_Y;
            }// end function
            , function (param1:Number) : void
            {
                _BuyTradeGoodsSearchWindow_Image2.y = param1;
                return;
            }// end function
            , "_BuyTradeGoodsSearchWindow_Image2.y");
            result[61] = binding;
            binding = new Binding(this, function () : Object
            {
                return _swf_close;
            }// end function
            , function (param1:Object) : void
            {
                _BuyTradeGoodsSearchWindow_Image2.source = param1;
                return;
            }// end function
            , "_BuyTradeGoodsSearchWindow_Image2.source");
            result[62] = binding;
            binding = new Binding(this, function () : Number
            {
                return WINDOW_X + WINDOW_WD - 25;
            }// end function
            , function (param1:Number) : void
            {
                _BuyTradeGoodsSearchWindow_Image3.x = param1;
                return;
            }// end function
            , "_BuyTradeGoodsSearchWindow_Image3.x");
            result[63] = binding;
            binding = new Binding(this, function () : Number
            {
                return WINDOW_Y;
            }// end function
            , function (param1:Number) : void
            {
                _BuyTradeGoodsSearchWindow_Image3.y = param1;
                return;
            }// end function
            , "_BuyTradeGoodsSearchWindow_Image3.y");
            result[64] = binding;
            binding = new Binding(this, function () : Object
            {
                return _swf_close_window;
            }// end function
            , function (param1:Object) : void
            {
                _BuyTradeGoodsSearchWindow_Image3.source = param1;
                return;
            }// end function
            , "_BuyTradeGoodsSearchWindow_Image3.source");
            result[65] = binding;
            return result;
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

        private function _BuyTradeGoodsSearchWindow_DataGridColumn17_i() : DataGridColumn
        {
            var _loc_1:* = new DataGridColumn();
            _BuyTradeGoodsSearchWindow_DataGridColumn17 = _loc_1;
            _loc_1.dataField = "description";
            BindingManager.executeBindings(this, "_BuyTradeGoodsSearchWindow_DataGridColumn17", _BuyTradeGoodsSearchWindow_DataGridColumn17);
            return _loc_1;
        }// end function

        private function _BuyTradeGoodsSearchWindow_ClassFactory5_c() : ClassFactory
        {
            var _loc_1:* = new ClassFactory();
            _loc_1.generator = SearchButtonRenderer;
            return _loc_1;
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

        private function _BuyTradeGoodsSearchWindow_DataGridColumn20_i() : DataGridColumn
        {
            var _loc_1:* = new DataGridColumn();
            _BuyTradeGoodsSearchWindow_DataGridColumn20 = _loc_1;
            _loc_1.dataField = "endurance";
            _loc_1.width = 60;
            _loc_1.setStyle("textAlign", "center");
            BindingManager.executeBindings(this, "_BuyTradeGoodsSearchWindow_DataGridColumn20", _BuyTradeGoodsSearchWindow_DataGridColumn20);
            return _loc_1;
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

        private function _BuyTradeGoodsSearchWindow_DataGridColumn4_i() : DataGridColumn
        {
            var _loc_1:* = new DataGridColumn();
            _BuyTradeGoodsSearchWindow_DataGridColumn4 = _loc_1;
            _loc_1.dataField = "hit";
            _loc_1.width = 60;
            _loc_1.setStyle("textAlign", "center");
            BindingManager.executeBindings(this, "_BuyTradeGoodsSearchWindow_DataGridColumn4", _BuyTradeGoodsSearchWindow_DataGridColumn4);
            return _loc_1;
        }// end function

        private function _BuyTradeGoodsSearchWindow_ClassFactory4_c() : ClassFactory
        {
            var _loc_1:* = new ClassFactory();
            _loc_1.generator = SearchButtonRenderer;
            return _loc_1;
        }// end function

        private function set armorArray(param1:ArrayCollection) : void
        {
            var _loc_2:* = this._2024599462armorArray;
            if (_loc_2 !== param1)
            {
                this._2024599462armorArray = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "armorArray", _loc_2, param1));
            }
            return;
        }// end function

        private function _BuyTradeGoodsSearchWindow_DataGridColumn16_i() : DataGridColumn
        {
            var _loc_1:* = new DataGridColumn();
            _BuyTradeGoodsSearchWindow_DataGridColumn16 = _loc_1;
            _loc_1.dataField = "effectLabelAll";
            _loc_1.width = 180;
            _loc_1.setStyle("textAlign", "center");
            BindingManager.executeBindings(this, "_BuyTradeGoodsSearchWindow_DataGridColumn16", _BuyTradeGoodsSearchWindow_DataGridColumn16);
            return _loc_1;
        }// end function

        public function set gold(param1:int) : void
        {
            _gold = param1;
            return;
        }// end function

        public function ___BuyTradeGoodsSearchWindow_Image3_click(event:MouseEvent) : void
        {
            closeWindow();
            return;
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

        private function set materialArray(param1:ArrayCollection) : void
        {
            var _loc_2:* = this._1176879758materialArray;
            if (_loc_2 !== param1)
            {
                this._1176879758materialArray = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "materialArray", _loc_2, param1));
            }
            return;
        }// end function

        public function ___BuyTradeGoodsSearchWindow_ComboBox1_change(event:ListEvent) : void
        {
            jobFilter(event);
            return;
        }// end function

        public function setWeaponMasterData(param1:Object) : void
        {
            var obj:Object;
            var arr:Array;
            var weaponData:* = param1;
            var defArray:* = new Array();
            var _loc_3:int = 0;
            var _loc_4:* = weaponData;
            while (_loc_4 in _loc_3)
            {
                
                obj = _loc_4[_loc_3];
                defArray.push(obj);
            }
            arr = defArray.filter(function (param1, param2:int, param3:Array) : Boolean
            {
                return param1.sellable == 0;
            }// end function
            );
            weaponArray = new ArrayCollection(arr);
            return;
        }// end function

        private function _BuyTradeGoodsSearchWindow_ClassFactory3_c() : ClassFactory
        {
            var _loc_1:* = new ClassFactory();
            _loc_1.generator = SearchButtonRenderer;
            return _loc_1;
        }// end function

        private function _BuyTradeGoodsSearchWindow_DataGridColumn3_i() : DataGridColumn
        {
            var _loc_1:* = new DataGridColumn();
            _BuyTradeGoodsSearchWindow_DataGridColumn3 = _loc_1;
            _loc_1.dataField = "damage";
            _loc_1.width = 60;
            _loc_1.setStyle("textAlign", "center");
            BindingManager.executeBindings(this, "_BuyTradeGoodsSearchWindow_DataGridColumn3", _BuyTradeGoodsSearchWindow_DataGridColumn3);
            return _loc_1;
        }// end function

        public function get material_data_list() : DataGrid
        {
            return this._1593504005material_data_list;
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

        private function _BuyTradeGoodsSearchWindow_DataGridColumn15_i() : DataGridColumn
        {
            var _loc_1:* = new DataGridColumn();
            _BuyTradeGoodsSearchWindow_DataGridColumn15 = _loc_1;
            _loc_1.dataField = "nameLabel";
            _loc_1.width = 170;
            BindingManager.executeBindings(this, "_BuyTradeGoodsSearchWindow_DataGridColumn15", _BuyTradeGoodsSearchWindow_DataGridColumn15);
            return _loc_1;
        }// end function

        private function get itemArray() : ArrayCollection
        {
            return this._2126052102itemArray;
        }// end function

        public function setArmorMasterData(param1:Object) : void
        {
            var obj:Object;
            var arr:Array;
            var armorData:* = param1;
            var defArray:* = new Array();
            var _loc_3:int = 0;
            var _loc_4:* = armorData;
            while (_loc_4 in _loc_3)
            {
                
                obj = _loc_4[_loc_3];
                defArray.push(obj);
            }
            arr = defArray.filter(function (param1, param2:int, param3:Array) : Boolean
            {
                return param1.sellable == 0;
            }// end function
            );
            armorArray = new ArrayCollection(arr);
            return;
        }// end function

        public function init() : void
        {
            weaponArray.filterFunction = null;
            weaponArray.refresh();
            armorArray.filterFunction = null;
            armorArray.refresh();
            return;
        }// end function

        public function onDetail(param1:Object) : void
        {
            if (param1.masterType == "WeaponMaster" || param1.masterType == "ArmorMaster" || param1.masterType == "AccessoryMaster")
            {
                weaponDetail.viewData = param1;
                if (weaponDetail.viewData)
                {
                    popupWindow(weaponDetail);
                }
            }
            else
            {
                equipmentDetail.viewData = param1;
                if (equipmentDetail.viewData)
                {
                    popupWindow(equipmentDetail);
                }
            }
            return;
        }// end function

        private function get _swf_tab() : MovieClipLoaderAsset
        {
            return this._550978329_swf_tab;
        }// end function

        public function get armor_data_list() : DataGrid
        {
            return this._1680067859armor_data_list;
        }// end function

        public function get accessory_data_list() : DataGrid
        {
            return this._1073623258accessory_data_list;
        }// end function

        private function get _swf_close_window() : MovieClipLoaderAsset
        {
            return this._1218643219_swf_close_window;
        }// end function

        private function set weaponArray(param1:ArrayCollection) : void
        {
            var _loc_2:* = this._418598499weaponArray;
            if (_loc_2 !== param1)
            {
                this._418598499weaponArray = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "weaponArray", _loc_2, param1));
            }
            return;
        }// end function

        private function _BuyTradeGoodsSearchWindow_DataGridColumn14_c() : DataGridColumn
        {
            var _loc_1:* = new DataGridColumn();
            _loc_1.itemRenderer = _BuyTradeGoodsSearchWindow_ClassFactory5_c();
            _loc_1.width = 50;
            return _loc_1;
        }// end function

        private function _BuyTradeGoodsSearchWindow_ClassFactory2_i() : ClassFactory
        {
            var _loc_1:* = new ClassFactory();
            detailRenderer = _loc_1;
            _loc_1.generator = BuyTradeGoodsSearchWindow_inlineComponent2;
            _loc_1.properties = {outerDocument:this};
            return _loc_1;
        }// end function

        private function get _gold() : int
        {
            return this._90913087_gold;
        }// end function

        private function _BuyTradeGoodsSearchWindow_DataGridColumn2_i() : DataGridColumn
        {
            var _loc_1:* = new DataGridColumn();
            _BuyTradeGoodsSearchWindow_DataGridColumn2 = _loc_1;
            _loc_1.dataField = "nameLabel";
            _loc_1.width = 170;
            BindingManager.executeBindings(this, "_BuyTradeGoodsSearchWindow_DataGridColumn2", _BuyTradeGoodsSearchWindow_DataGridColumn2);
            return _loc_1;
        }// end function

        public function get windowLayer() : Canvas
        {
            return this._1896677185windowLayer;
        }// end function

        public function set goodsSearchCanvas(param1:Canvas) : void
        {
            var _loc_2:* = this._1932164202goodsSearchCanvas;
            if (_loc_2 !== param1)
            {
                this._1932164202goodsSearchCanvas = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "goodsSearchCanvas", _loc_2, param1));
            }
            return;
        }// end function

        public function set playerRank(param1:int) : void
        {
            _playerRank = param1;
            return;
        }// end function

        public function buttonDisable(param1:Object) : Boolean
        {
            var _loc_2:* = _commoditySummary[param1.code];
            if (_loc_2 > 0)
            {
                return true;
            }
            return false;
        }// end function

        public function set weapon_data_list(param1:DataGrid) : void
        {
            var _loc_2:* = this._513506736weapon_data_list;
            if (_loc_2 !== param1)
            {
                this._513506736weapon_data_list = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "weapon_data_list", _loc_2, param1));
            }
            return;
        }// end function

        private function _BuyTradeGoodsSearchWindow_DataGridColumn1_c() : DataGridColumn
        {
            var _loc_1:* = new DataGridColumn();
            _loc_1.itemRenderer = _BuyTradeGoodsSearchWindow_ClassFactory3_c();
            _loc_1.width = 50;
            return _loc_1;
        }// end function

        private function _BuyTradeGoodsSearchWindow_bindingExprs() : void
        {
            var _loc_1:* = undefined;
            _loc_1 = WINDOW_X;
            _loc_1 = WINDOW_Y;
            _loc_1 = WINDOW_WD;
            _loc_1 = Utils.i18n("buyTradeGoodsSearchBuy");
            _loc_1 = Utils.i18n("generalWeapon");
            _loc_1 = WINDOW_Y + 35;
            _loc_1 = Utils.i18n("generalCanEquipJob") + ":";
            _loc_1 = selectJobData;
            _loc_1 = WINDOW_X + 20;
            _loc_1 = weaponArray;
            _loc_1 = WINDOW_WD - 40;
            _loc_1 = Utils.i18n("changeEquipmentWeaponName");
            _loc_1 = detailRenderer;
            _loc_1 = Utils.i18n("changeEquipmentAttack");
            _loc_1 = Utils.i18n("changeEquipmentHit");
            _loc_1 = Utils.i18n("changeEquipmentEndurance");
            _loc_1 = Utils.i18n("generalDescription");
            _loc_1 = Utils.i18n("generalEquipArmor");
            _loc_1 = WINDOW_Y + 35;
            _loc_1 = Utils.i18n("generalCanEquipJob") + ":";
            _loc_1 = selectJobData;
            _loc_1 = WINDOW_X + 20;
            _loc_1 = armorArray;
            _loc_1 = WINDOW_WD - 40;
            _loc_1 = Utils.i18n("changeEquipmentArmorName");
            _loc_1 = detailRenderer;
            _loc_1 = Utils.i18n("changeEquipmentDefense");
            _loc_1 = Utils.i18n("changeEquipmentMagicalDefense");
            _loc_1 = Utils.i18n("changeEquipmentAvoidance");
            _loc_1 = Utils.i18n("changeEquipmentEndurance");
            _loc_1 = Utils.i18n("generalDescription");
            _loc_1 = Utils.i18n("generalEquipAccessory");
            _loc_1 = WINDOW_X + 20;
            _loc_1 = accessoryArray;
            _loc_1 = WINDOW_WD - 40;
            _loc_1 = Utils.i18n("changeEquipmentAccessoryName");
            _loc_1 = detailRenderer;
            _loc_1 = Utils.i18n("changeEquipmentEffect");
            _loc_1 = Utils.i18n("generalDescription");
            _loc_1 = Utils.i18n("generalMaterial");
            _loc_1 = WINDOW_X + 20;
            _loc_1 = itemArray;
            _loc_1 = WINDOW_WD - 40;
            _loc_1 = Utils.i18n("changeEquipmentItemName");
            _loc_1 = detailRenderer;
            _loc_1 = Utils.i18n("changeEquipmentEndurance");
            _loc_1 = Utils.i18n("changeEquipmentEffect");
            _loc_1 = Utils.i18n("generalDescription");
            _loc_1 = Utils.i18n("confirmBuildMaterial");
            _loc_1 = WINDOW_X + 20;
            _loc_1 = materialArray;
            _loc_1 = WINDOW_WD - 40;
            _loc_1 = Utils.i18n("generalMaterilalName");
            _loc_1 = detailRenderer;
            _loc_1 = Utils.i18n("generalDescription");
            _loc_1 = Utils.i18n("generalPossessionMoney") + ":" + _gold;
            _loc_1 = WINDOW_X + 20;
            _loc_1 = WINDOW_Y + 35;
            _loc_1 = WINDOW_X + 20;
            _loc_1 = _swf_tab;
            _loc_1 = BUTTON_X;
            _loc_1 = BUTTON_Y;
            _loc_1 = _swf_close;
            _loc_1 = WINDOW_X + WINDOW_WD - 25;
            _loc_1 = WINDOW_Y;
            _loc_1 = _swf_close_window;
            return;
        }// end function

        public function set commoditySummary(param1:Object) : void
        {
            _commoditySummary = param1;
            SearchButtonRenderer.commoditySummary(param1);
            return;
        }// end function

        private function _BuyTradeGoodsSearchWindow_DataGridColumn9_i() : DataGridColumn
        {
            var _loc_1:* = new DataGridColumn();
            _BuyTradeGoodsSearchWindow_DataGridColumn9 = _loc_1;
            _loc_1.dataField = "physicalDefense";
            _loc_1.width = 60;
            _loc_1.setStyle("textAlign", "center");
            BindingManager.executeBindings(this, "_BuyTradeGoodsSearchWindow_DataGridColumn9", _BuyTradeGoodsSearchWindow_DataGridColumn9);
            return _loc_1;
        }// end function

        private function _BuyTradeGoodsSearchWindow_DataGridColumn25_i() : DataGridColumn
        {
            var _loc_1:* = new DataGridColumn();
            _BuyTradeGoodsSearchWindow_DataGridColumn25 = _loc_1;
            _loc_1.dataField = "description";
            BindingManager.executeBindings(this, "_BuyTradeGoodsSearchWindow_DataGridColumn25", _BuyTradeGoodsSearchWindow_DataGridColumn25);
            return _loc_1;
        }// end function

        private function _BuyTradeGoodsSearchWindow_ClassFactory1_i() : ClassFactory
        {
            var _loc_1:* = new ClassFactory();
            buttonRenderer = _loc_1;
            _loc_1.generator = BuyTradeGoodsSearchWindow_inlineComponent1;
            _loc_1.properties = {outerDocument:this};
            return _loc_1;
        }// end function

        private function get materialArray() : ArrayCollection
        {
            return this._1176879758materialArray;
        }// end function

        public function setJobMasterData(param1:Object) : void
        {
            var _loc_3:Object = null;
            var _loc_2:int = 1;
            selectJobData = new Array();
            selectJobData.push({label:Utils.i18n("generalAllView"), id:0});
            for each (_loc_3 in param1)
            {
                
                if (_loc_3.disabled == false && _loc_3.code && Number(_loc_3.code) < 1000)
                {
                    selectJobData.push({label:_loc_3.nameLabel, id:_loc_3.masterId});
                }
            }
            return;
        }// end function

        private function _BuyTradeGoodsSearchWindow_DataGridColumn13_i() : DataGridColumn
        {
            var _loc_1:* = new DataGridColumn();
            _BuyTradeGoodsSearchWindow_DataGridColumn13 = _loc_1;
            _loc_1.dataField = "description";
            BindingManager.executeBindings(this, "_BuyTradeGoodsSearchWindow_DataGridColumn13", _BuyTradeGoodsSearchWindow_DataGridColumn13);
            return _loc_1;
        }// end function

        override public function initialize() : void
        {
            var target:BuyTradeGoodsSearchWindow;
            var watcherSetupUtilClass:Object;
            .mx_internal::setDocumentDescriptor(_documentDescriptor_);
            var bindings:* = _BuyTradeGoodsSearchWindow_bindingsSetup();
            var watchers:Array;
            target;
            if (_watcherSetupUtil == null)
            {
                watcherSetupUtilClass = getDefinitionByName("_com_kbmj_viking_view_city_BuyTradeGoodsSearchWindowWatcherSetupUtil");
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

        public function get buyCode() : int
        {
            return _buyCode;
        }// end function

        public function jobFilter(event:Event) : void
        {
            selectId = event.currentTarget.selectedItem.id;
            var _loc_2:* = new ArrayCollection();
            switch(itemList.selectedIndex)
            {
                case 0:
                {
                    _loc_2 = weaponArray;
                    break;
                }
                case 1:
                {
                    _loc_2 = armorArray;
                    break;
                }
                case 2:
                {
                    _loc_2 = accessoryArray;
                    break;
                }
                case 3:
                {
                    _loc_2 = itemArray;
                    break;
                }
                case 4:
                {
                    _loc_2 = materialArray;
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
            else
            {
                _loc_2.filterFunction = changeJobFilter;
            }
            _loc_2.refresh();
            return;
        }// end function

        public function ___BuyTradeGoodsSearchWindow_Image2_click(event:MouseEvent) : void
        {
            closeWindow();
            return;
        }// end function

        private function _BuyTradeGoodsSearchWindow_DataGridColumn24_i() : DataGridColumn
        {
            var _loc_1:* = new DataGridColumn();
            _BuyTradeGoodsSearchWindow_DataGridColumn24 = _loc_1;
            _loc_1.dataField = "nameLabel";
            _loc_1.width = 170;
            BindingManager.executeBindings(this, "_BuyTradeGoodsSearchWindow_DataGridColumn24", _BuyTradeGoodsSearchWindow_DataGridColumn24);
            return _loc_1;
        }// end function

        public function setItemMasterData(param1:Object) : void
        {
            var obj:Object;
            var arr:Array;
            var itemData:* = param1;
            var defArray:* = new Array();
            var _loc_3:int = 0;
            var _loc_4:* = itemData;
            while (_loc_4 in _loc_3)
            {
                
                obj = _loc_4[_loc_3];
                defArray.push(obj);
            }
            arr = defArray.filter(function (param1, param2:int, param3:Array) : Boolean
            {
                return param1.sellable == 0;
            }// end function
            );
            itemArray = new ArrayCollection(arr);
            return;
        }// end function

        private function get weaponArray() : ArrayCollection
        {
            return this._418598499weaponArray;
        }// end function

        public function get goodsSearchCanvas() : Canvas
        {
            return this._1932164202goodsSearchCanvas;
        }// end function

        private function _BuyTradeGoodsSearchWindow_DataGridColumn8_i() : DataGridColumn
        {
            var _loc_1:* = new DataGridColumn();
            _BuyTradeGoodsSearchWindow_DataGridColumn8 = _loc_1;
            _loc_1.dataField = "nameLabel";
            _loc_1.width = 120;
            BindingManager.executeBindings(this, "_BuyTradeGoodsSearchWindow_DataGridColumn8", _BuyTradeGoodsSearchWindow_DataGridColumn8);
            return _loc_1;
        }// end function

        public function get viewStackIndex() : int
        {
            return itemList.selectedIndex;
        }// end function

        public function get weapon_data_list() : DataGrid
        {
            return this._513506736weapon_data_list;
        }// end function

        private function _BuyTradeGoodsSearchWindow_DataGridColumn12_i() : DataGridColumn
        {
            var _loc_1:* = new DataGridColumn();
            _BuyTradeGoodsSearchWindow_DataGridColumn12 = _loc_1;
            _loc_1.dataField = "endurance";
            _loc_1.width = 60;
            _loc_1.setStyle("textAlign", "center");
            BindingManager.executeBindings(this, "_BuyTradeGoodsSearchWindow_DataGridColumn12", _BuyTradeGoodsSearchWindow_DataGridColumn12);
            return _loc_1;
        }// end function

        public function setMaterialMasterData(param1:Object) : void
        {
            var obj:Object;
            var arr:Array;
            var materialData:* = param1;
            var defArray:* = new Array();
            var _loc_3:int = 0;
            var _loc_4:* = materialData;
            while (_loc_4 in _loc_3)
            {
                
                obj = _loc_4[_loc_3];
                defArray.push(obj);
            }
            arr = defArray.filter(function (param1, param2:int, param3:Array) : Boolean
            {
                return param1.sellable == 0;
            }// end function
            );
            materialArray = new ArrayCollection(arr);
            return;
        }// end function

        public function changeJobFilter(param1:Object) : Boolean
        {
            var _loc_2:int = 0;
            while (_loc_2 < param1.equipabilities.length)
            {
                
                if (param1.equipabilities[_loc_2].job_id == selectId)
                {
                    return true;
                }
                _loc_2++;
            }
            return false;
        }// end function

        public function ___BuyTradeGoodsSearchWindow_ComboBox2_change(event:ListEvent) : void
        {
            jobFilter(event);
            return;
        }// end function

        public function set item_data_list(param1:DataGrid) : void
        {
            var _loc_2:* = this._1218335257item_data_list;
            if (_loc_2 !== param1)
            {
                this._1218335257item_data_list = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "item_data_list", _loc_2, param1));
            }
            return;
        }// end function

        private function _BuyTradeGoodsSearchWindow_DataGridColumn23_c() : DataGridColumn
        {
            var _loc_1:* = new DataGridColumn();
            _loc_1.itemRenderer = _BuyTradeGoodsSearchWindow_ClassFactory7_c();
            _loc_1.width = 50;
            return _loc_1;
        }// end function

        private function _BuyTradeGoodsSearchWindow_DataGridColumn7_c() : DataGridColumn
        {
            var _loc_1:* = new DataGridColumn();
            _loc_1.itemRenderer = _BuyTradeGoodsSearchWindow_ClassFactory4_c();
            _loc_1.width = 50;
            return _loc_1;
        }// end function

        public function get item_data_list() : DataGrid
        {
            return this._1218335257item_data_list;
        }// end function

        public function onClickSearch(param1:Object) : void
        {
            _buyCode = param1.code;
            dispatchEvent(new Event(SEARCH_GOODS));
            return;
        }// end function

        public function ___BuyTradeGoodsSearchWindow_PopupWindow1_creationComplete(event:FlexEvent) : void
        {
            setup();
            return;
        }// end function

        private function _BuyTradeGoodsSearchWindow_ClassFactory7_c() : ClassFactory
        {
            var _loc_1:* = new ClassFactory();
            _loc_1.generator = SearchButtonRenderer;
            return _loc_1;
        }// end function

        public function set material_data_list(param1:DataGrid) : void
        {
            var _loc_2:* = this._1593504005material_data_list;
            if (_loc_2 !== param1)
            {
                this._1593504005material_data_list = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "material_data_list", _loc_2, param1));
            }
            return;
        }// end function

        private function _BuyTradeGoodsSearchWindow_DataGridColumn11_i() : DataGridColumn
        {
            var _loc_1:* = new DataGridColumn();
            _BuyTradeGoodsSearchWindow_DataGridColumn11 = _loc_1;
            _loc_1.dataField = "avoidance";
            _loc_1.width = 60;
            _loc_1.setStyle("textAlign", "center");
            BindingManager.executeBindings(this, "_BuyTradeGoodsSearchWindow_DataGridColumn11", _BuyTradeGoodsSearchWindow_DataGridColumn11);
            return _loc_1;
        }// end function

        public static function set watcherSetupUtil(param1:IWatcherSetupUtil) : void
        {
            BuyTradeGoodsSearchWindow._watcherSetupUtil = param1;
            return;
        }// end function

    }
}
