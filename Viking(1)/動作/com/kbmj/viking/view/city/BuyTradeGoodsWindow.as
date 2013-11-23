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

    public class BuyTradeGoodsWindow extends PopupWindow implements IBindingClient
    {
        private var _513506736weapon_data_list:DataGrid;
        private var _1075873300_swf_window:MovieClipLoaderAsset;
        private var _1380584121_haveMoney:int;
        public var _BuyTradeGoodsWindow_Canvas1:Canvas;
        public var _BuyTradeGoodsWindow_Canvas2:Canvas;
        public var _BuyTradeGoodsWindow_Canvas3:Canvas;
        public var _BuyTradeGoodsWindow_Canvas4:Canvas;
        public var _BuyTradeGoodsWindow_Canvas5:Canvas;
        private var _1680067859armor_data_list:DataGrid;
        public var _BuyTradeGoodsWindow_Label1:Label;
        private var _2024599462armorArray:ArrayCollection;
        var _bindingsByDestination:Object;
        private var _29431792_goodsHaveCount:int;
        private var _buyData:Object;
        private var _99715089_swf_next:MovieClipLoaderAsset;
        private var _1033114374_buyGoodsName:String;
        private var _1218643219_swf_close_window:MovieClipLoaderAsset;
        private var _99643601_swf_prev:MovieClipLoaderAsset;
        private var _550961674_swf_buy:MovieClipLoaderAsset;
        private var _919586936_buyCount:int;
        private var creat:Boolean = false;
        public var clickBool:Boolean = false;
        private var _522920908detailRenderer:ClassFactory;
        private var _910358727_buyMoney:int;
        public var _BuyTradeGoodsWindow_Image1:Image;
        public var _BuyTradeGoodsWindow_Image2:Image;
        public var _BuyTradeGoodsWindow_Image3:Image;
        public var _BuyTradeGoodsWindow_Image4:Image;
        public var _BuyTradeGoodsWindow_Image5:Image;
        public var _BuyTradeGoodsWindow_Image6:Image;
        private var _1593504005material_data_list:DataGrid;
        private var _368501887_totalPages:int;
        private var _418598499weaponArray:ArrayCollection;
        private var _1514791297_nextPage:Boolean = false;
        private var _1615082862_goodsNameLabel:String;
        private var _1241645780priceRenderer:ClassFactory;
        private var _1074046981_previousPage:Boolean = false;
        private var _1176879758materialArray:ArrayCollection;
        public var _BuyTradeGoodsWindow_HBox1:HBox;
        public var _BuyTradeGoodsWindow_HBox2:HBox;
        public var _BuyTradeGoodsWindow_DataGridColumn10:DataGridColumn;
        public var _BuyTradeGoodsWindow_DataGridColumn11:DataGridColumn;
        public var _BuyTradeGoodsWindow_DataGridColumn12:DataGridColumn;
        public var _BuyTradeGoodsWindow_DataGridColumn13:DataGridColumn;
        public var _BuyTradeGoodsWindow_DataGridColumn14:DataGridColumn;
        public var _BuyTradeGoodsWindow_DataGridColumn15:DataGridColumn;
        public var _BuyTradeGoodsWindow_DataGridColumn16:DataGridColumn;
        public var _BuyTradeGoodsWindow_DataGridColumn17:DataGridColumn;
        public var _BuyTradeGoodsWindow_DataGridColumn18:DataGridColumn;
        public var _BuyTradeGoodsWindow_DataGridColumn19:DataGridColumn;
        private var _1177280081itemList:ViewStack;
        private var selectIndex:int;
        public var _BuyTradeGoodsWindow_DataGridColumn20:DataGridColumn;
        public var _BuyTradeGoodsWindow_DataGridColumn21:DataGridColumn;
        public var _BuyTradeGoodsWindow_DataGridColumn22:DataGridColumn;
        private var _1145213772accessortArray:ArrayCollection;
        private var _20935191_currentPage:int;
        private var _1193840764_swf_close:MovieClipLoaderAsset;
        private var _1218335257item_data_list:DataGrid;
        public var _BuyTradeGoodsWindow_Text2:Text;
        public var _BuyTradeGoodsWindow_Text4:Text;
        public var _BuyTradeGoodsWindow_Text1:Text;
        public var _BuyTradeGoodsWindow_Text3:Text;
        public var _BuyTradeGoodsWindow_Text5:Text;
        private var equipmentDetail:EquipmentDetail;
        public var weaponDetail:WeaponDetail;
        private var _1073623258accessory_data_list:DataGrid;
        var _watchers:Array;
        private var detailWindow:ItemDetail;
        public var _BuyTradeGoodsWindow_DataGridColumn1:DataGridColumn;
        public var _BuyTradeGoodsWindow_DataGridColumn2:DataGridColumn;
        public var _BuyTradeGoodsWindow_DataGridColumn3:DataGridColumn;
        public var _BuyTradeGoodsWindow_DataGridColumn4:DataGridColumn;
        public var _BuyTradeGoodsWindow_DataGridColumn5:DataGridColumn;
        public var _BuyTradeGoodsWindow_DataGridColumn6:DataGridColumn;
        public var _BuyTradeGoodsWindow_DataGridColumn7:DataGridColumn;
        public var _BuyTradeGoodsWindow_Box1:Box;
        public var _BuyTradeGoodsWindow_Box2:Box;
        public var _BuyTradeGoodsWindow_Box3:Box;
        public var _BuyTradeGoodsWindow_Box4:Box;
        public var _BuyTradeGoodsWindow_Box5:Box;
        public var _BuyTradeGoodsWindow_DataGridColumn8:DataGridColumn;
        public var _BuyTradeGoodsWindow_DataGridColumn9:DataGridColumn;
        private var _buyGoods:Array;
        var _bindingsBeginWithWord:Object;
        private var _2126052102itemArray:ArrayCollection;
        private var _haveLeyLine:Boolean = false;
        var _bindings:Array;
        private var _documentDescriptor_:UIComponentDescriptor;
        private var _591659895_priceHeader:String;
        public static const LOAD_TRADE_GOODS_WITH_PAGE:String = NAME + "/loadTradeGoods";
        public static const INSUFFICIENCY_MONEY:String = NAME + "/insufficiencyMoney";
        private static const WINDOW_X:int = 20;
        private static const WINDOW_Y:int = 20;
        private static const BUTTON_X:int = 325;
        private static const BUTTON_Y:int = 490;
        private static var _watcherSetupUtil:IWatcherSetupUtil;
        public static const BUY_TRADE_GOODS:String = NAME + "/buyTradeGoods";
        public static const NAME:String = "BuyTradeGoodsWindow";
        private static const WINDOW_HT:int = 520;
        private static const WINDOW_WD:int = 720;

        public function BuyTradeGoodsWindow()
        {
            _documentDescriptor_ = new UIComponentDescriptor({type:PopupWindow, propertiesFactory:function () : Object
            {
                return {width:760, height:560, childDescriptors:[new UIComponentDescriptor({type:Image, id:"_BuyTradeGoodsWindow_Image1"}), new UIComponentDescriptor({type:Text, id:"_BuyTradeGoodsWindow_Text1", propertiesFactory:function () : Object
                {
                    return {styleName:"DealTitle"};
                }// end function
                }), new UIComponentDescriptor({type:ViewStack, id:"itemList", propertiesFactory:function () : Object
                {
                    return {percentWidth:100, percentHeight:100, childDescriptors:[new UIComponentDescriptor({type:Canvas, id:"_BuyTradeGoodsWindow_Canvas1", propertiesFactory:function () : Object
                    {
                        return {percentWidth:100, percentHeight:100, childDescriptors:[new UIComponentDescriptor({type:Box, id:"_BuyTradeGoodsWindow_Box1", propertiesFactory:function () : Object
                        {
                            return {y:140, childDescriptors:[new UIComponentDescriptor({type:DataGrid, id:"weapon_data_list", events:{itemClick:"__weapon_data_list_itemClick"}, propertiesFactory:function () : Object
                            {
                                return {rowCount:10, rowHeight:26, styleName:"DataGridBase", sortableColumns:false, columns:[_BuyTradeGoodsWindow_DataGridColumn1_i(), _BuyTradeGoodsWindow_DataGridColumn2_i(), _BuyTradeGoodsWindow_DataGridColumn3_i(), _BuyTradeGoodsWindow_DataGridColumn4_i(), _BuyTradeGoodsWindow_DataGridColumn5_i()]};
                            }// end function
                            })]};
                        }// end function
                        })]};
                    }// end function
                    }), new UIComponentDescriptor({type:Canvas, id:"_BuyTradeGoodsWindow_Canvas2", propertiesFactory:function () : Object
                    {
                        return {percentWidth:100, percentHeight:100, childDescriptors:[new UIComponentDescriptor({type:Box, id:"_BuyTradeGoodsWindow_Box2", propertiesFactory:function () : Object
                        {
                            return {y:140, childDescriptors:[new UIComponentDescriptor({type:DataGrid, id:"armor_data_list", events:{itemClick:"__armor_data_list_itemClick"}, propertiesFactory:function () : Object
                            {
                                return {rowCount:10, rowHeight:26, styleName:"DataGridBase", sortableColumns:false, columns:[_BuyTradeGoodsWindow_DataGridColumn6_i(), _BuyTradeGoodsWindow_DataGridColumn7_i(), _BuyTradeGoodsWindow_DataGridColumn8_i(), _BuyTradeGoodsWindow_DataGridColumn9_i(), _BuyTradeGoodsWindow_DataGridColumn10_i(), _BuyTradeGoodsWindow_DataGridColumn11_i()]};
                            }// end function
                            })]};
                        }// end function
                        })]};
                    }// end function
                    }), new UIComponentDescriptor({type:Canvas, id:"_BuyTradeGoodsWindow_Canvas3", propertiesFactory:function () : Object
                    {
                        return {percentWidth:100, percentHeight:100, childDescriptors:[new UIComponentDescriptor({type:Box, id:"_BuyTradeGoodsWindow_Box3", propertiesFactory:function () : Object
                        {
                            return {y:140, childDescriptors:[new UIComponentDescriptor({type:DataGrid, id:"accessory_data_list", events:{itemClick:"__accessory_data_list_itemClick"}, propertiesFactory:function () : Object
                            {
                                return {rowCount:10, rowHeight:26, styleName:"DataGridBase", sortableColumns:false, columns:[_BuyTradeGoodsWindow_DataGridColumn12_i(), _BuyTradeGoodsWindow_DataGridColumn13_i(), _BuyTradeGoodsWindow_DataGridColumn14_i()]};
                            }// end function
                            })]};
                        }// end function
                        })]};
                    }// end function
                    }), new UIComponentDescriptor({type:Canvas, id:"_BuyTradeGoodsWindow_Canvas4", propertiesFactory:function () : Object
                    {
                        return {percentWidth:100, percentHeight:100, childDescriptors:[new UIComponentDescriptor({type:Box, id:"_BuyTradeGoodsWindow_Box4", propertiesFactory:function () : Object
                        {
                            return {y:140, childDescriptors:[new UIComponentDescriptor({type:DataGrid, id:"item_data_list", events:{itemClick:"__item_data_list_itemClick"}, propertiesFactory:function () : Object
                            {
                                return {rowCount:10, rowHeight:26, styleName:"DataGridBase", sortableColumns:false, columns:[_BuyTradeGoodsWindow_DataGridColumn15_i(), _BuyTradeGoodsWindow_DataGridColumn16_i(), _BuyTradeGoodsWindow_DataGridColumn17_i(), _BuyTradeGoodsWindow_DataGridColumn18_i()]};
                            }// end function
                            })]};
                        }// end function
                        })]};
                    }// end function
                    }), new UIComponentDescriptor({type:Canvas, id:"_BuyTradeGoodsWindow_Canvas5", propertiesFactory:function () : Object
                    {
                        return {percentWidth:100, percentHeight:100, childDescriptors:[new UIComponentDescriptor({type:Box, id:"_BuyTradeGoodsWindow_Box5", propertiesFactory:function () : Object
                        {
                            return {y:140, childDescriptors:[new UIComponentDescriptor({type:DataGrid, id:"material_data_list", events:{itemClick:"__material_data_list_itemClick"}, propertiesFactory:function () : Object
                            {
                                return {rowCount:10, rowHeight:26, styleName:"DataGridBase", sortableColumns:false, columns:[_BuyTradeGoodsWindow_DataGridColumn19_i(), _BuyTradeGoodsWindow_DataGridColumn20_i(), _BuyTradeGoodsWindow_DataGridColumn21_i(), _BuyTradeGoodsWindow_DataGridColumn22_i()]};
                            }// end function
                            })]};
                        }// end function
                        })]};
                    }// end function
                    })]};
                }// end function
                }), new UIComponentDescriptor({type:Image, id:"_BuyTradeGoodsWindow_Image2", events:{click:"___BuyTradeGoodsWindow_Image2_click"}}), new UIComponentDescriptor({type:Image, id:"_BuyTradeGoodsWindow_Image3", events:{click:"___BuyTradeGoodsWindow_Image3_click"}}), new UIComponentDescriptor({type:Text, id:"_BuyTradeGoodsWindow_Text2", stylesFactory:function () : void
                {
                    this.fontSize = 14;
                    return;
                }// end function
                , propertiesFactory:function () : Object
                {
                    return {y:90};
                }// end function
                }), new UIComponentDescriptor({type:Text, id:"_BuyTradeGoodsWindow_Text3", stylesFactory:function () : void
                {
                    this.fontSize = 14;
                    return;
                }// end function
                , propertiesFactory:function () : Object
                {
                    return {y:110};
                }// end function
                }), new UIComponentDescriptor({type:HBox, id:"_BuyTradeGoodsWindow_HBox1", stylesFactory:function () : void
                {
                    this.horizontalAlign = "center";
                    return;
                }// end function
                , propertiesFactory:function () : Object
                {
                    return {y:450, childDescriptors:[new UIComponentDescriptor({type:Text, id:"_BuyTradeGoodsWindow_Text4", stylesFactory:function () : void
                    {
                        this.fontSize = 14;
                        return;
                    }// end function
                    })]};
                }// end function
                }), new UIComponentDescriptor({type:HBox, id:"_BuyTradeGoodsWindow_HBox2", stylesFactory:function () : void
                {
                    this.horizontalGap = 10;
                    this.horizontalAlign = "right";
                    return;
                }// end function
                , propertiesFactory:function () : Object
                {
                    return {y:430, childDescriptors:[new UIComponentDescriptor({type:Image, id:"_BuyTradeGoodsWindow_Image4", events:{click:"___BuyTradeGoodsWindow_Image4_click"}, propertiesFactory:function () : Object
                    {
                        return {width:50};
                    }// end function
                    }), new UIComponentDescriptor({type:Label, id:"_BuyTradeGoodsWindow_Label1", stylesFactory:function () : void
                    {
                        this.fontSize = 14;
                        return;
                    }// end function
                    }), new UIComponentDescriptor({type:Image, id:"_BuyTradeGoodsWindow_Image5", events:{click:"___BuyTradeGoodsWindow_Image5_click"}, propertiesFactory:function () : Object
                    {
                        return {width:50};
                    }// end function
                    })]};
                }// end function
                }), new UIComponentDescriptor({type:Text, id:"_BuyTradeGoodsWindow_Text5", stylesFactory:function () : void
                {
                    this.fontSize = 18;
                    this.textAlign = "left";
                    return;
                }// end function
                , propertiesFactory:function () : Object
                {
                    return {x:350, y:60};
                }// end function
                }), new UIComponentDescriptor({type:Image, id:"_BuyTradeGoodsWindow_Image6", events:{click:"___BuyTradeGoodsWindow_Image6_click"}})]};
            }// end function
            });
            _1075873300_swf_window = new Viking.EmbedSwfWindowCommon();
            _1218643219_swf_close_window = new Viking.EmbedSwfButtonCloseWindow();
            _550961674_swf_buy = new Viking.EmbedSwfButtonCommon();
            _1193840764_swf_close = new Viking.EmbedSwfButtonCommon();
            _99643601_swf_prev = new Viking.EmbedSwfButtonPaginator();
            _99715089_swf_next = new Viking.EmbedSwfButtonPaginator();
            equipmentDetail = new EquipmentDetail();
            weaponDetail = new WeaponDetail();
            _1380584121_haveMoney = new int();
            _1033114374_buyGoodsName = new String();
            detailWindow = new ItemDetail();
            _bindings = [];
            _watchers = [];
            _bindingsByDestination = {};
            _bindingsBeginWithWord = {};
            mx_internal::_document = this;
            this.width = 760;
            this.height = 560;
            _BuyTradeGoodsWindow_ClassFactory1_i();
            _BuyTradeGoodsWindow_ClassFactory2_i();
            this.addEventListener("creationComplete", ___BuyTradeGoodsWindow_PopupWindow1_creationComplete);
            return;
        }// end function

        private function get _previousPage() : Boolean
        {
            return this._1074046981_previousPage;
        }// end function

        private function _BuyTradeGoodsWindow_DataGridColumn11_i() : DataGridColumn
        {
            var _loc_1:* = new DataGridColumn();
            _BuyTradeGoodsWindow_DataGridColumn11 = _loc_1;
            _loc_1.width = 110;
            BindingManager.executeBindings(this, "_BuyTradeGoodsWindow_DataGridColumn11", _BuyTradeGoodsWindow_DataGridColumn11);
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

        private function get _swf_buy() : MovieClipLoaderAsset
        {
            return this._550961674_swf_buy;
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

        private function _BuyTradeGoodsWindow_DataGridColumn19_i() : DataGridColumn
        {
            var _loc_1:* = new DataGridColumn();
            _BuyTradeGoodsWindow_DataGridColumn19 = _loc_1;
            _loc_1.dataField = "nameLabel";
            _loc_1.width = 150;
            BindingManager.executeBindings(this, "_BuyTradeGoodsWindow_DataGridColumn19", _BuyTradeGoodsWindow_DataGridColumn19);
            return _loc_1;
        }// end function

        private function set _previousPage(param1:Boolean) : void
        {
            var _loc_2:* = this._1074046981_previousPage;
            if (_loc_2 !== param1)
            {
                this._1074046981_previousPage = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "_previousPage", _loc_2, param1));
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

        private function get _swf_next() : MovieClipLoaderAsset
        {
            return this._99715089_swf_next;
        }// end function

        public function ___BuyTradeGoodsWindow_Image4_click(event:MouseEvent) : void
        {
            goToPage((_currentPage - 1));
            return;
        }// end function

        private function _BuyTradeGoodsWindow_DataGridColumn2_i() : DataGridColumn
        {
            var _loc_1:* = new DataGridColumn();
            _BuyTradeGoodsWindow_DataGridColumn2 = _loc_1;
            _loc_1.dataField = "instanceVO.damage";
            _loc_1.width = 60;
            _loc_1.setStyle("textAlign", "center");
            BindingManager.executeBindings(this, "_BuyTradeGoodsWindow_DataGridColumn2", _BuyTradeGoodsWindow_DataGridColumn2);
            return _loc_1;
        }// end function

        public function componentToolTip() : String
        {
            return Utils.i18n("generalShowDetail");
        }// end function

        public function setView(param1:int) : void
        {
            selectIndex = param1;
            if (creat)
            {
                itemList.selectedIndex = param1;
            }
            return;
        }// end function

        private function _BuyTradeGoodsWindow_ClassFactory2_i() : ClassFactory
        {
            var _loc_1:* = new ClassFactory();
            priceRenderer = _loc_1;
            _loc_1.generator = BuyTradeGoodsWindow_inlineComponent2;
            _loc_1.properties = {outerDocument:this};
            return _loc_1;
        }// end function

        private function _BuyTradeGoodsWindow_DataGridColumn22_i() : DataGridColumn
        {
            var _loc_1:* = new DataGridColumn();
            _BuyTradeGoodsWindow_DataGridColumn22 = _loc_1;
            _loc_1.width = 110;
            BindingManager.executeBindings(this, "_BuyTradeGoodsWindow_DataGridColumn22", _BuyTradeGoodsWindow_DataGridColumn22);
            return _loc_1;
        }// end function

        private function onBuy() : void
        {
            if (_buyGoodsName)
            {
                if (_haveMoney < _buyMoney)
                {
                    dispatchEvent(new Event(INSUFFICIENCY_MONEY));
                }
                else
                {
                    dispatchEvent(new Event(BUY_TRADE_GOODS));
                }
                MovieClip(Loader(_swf_buy.getChildAt(0)).content).gotoAndPlay(0);
                MovieClip(Loader(_swf_buy.getChildAt(0)).content).gotoAndPlay("button_buy");
            }
            return;
        }// end function

        public function get buyCount() : int
        {
            return _buyCount;
        }// end function

        public function get detailRenderer() : ClassFactory
        {
            return this._522920908detailRenderer;
        }// end function

        private function _BuyTradeGoodsWindow_DataGridColumn10_i() : DataGridColumn
        {
            var _loc_1:* = new DataGridColumn();
            _BuyTradeGoodsWindow_DataGridColumn10 = _loc_1;
            _loc_1.dataField = "endurance";
            _loc_1.width = 60;
            _loc_1.setStyle("textAlign", "center");
            BindingManager.executeBindings(this, "_BuyTradeGoodsWindow_DataGridColumn10", _BuyTradeGoodsWindow_DataGridColumn10);
            return _loc_1;
        }// end function

        public function set buyCount(param1:int) : void
        {
            _buyCount = param1;
            return;
        }// end function

        private function _BuyTradeGoodsWindow_DataGridColumn18_i() : DataGridColumn
        {
            var _loc_1:* = new DataGridColumn();
            _BuyTradeGoodsWindow_DataGridColumn18 = _loc_1;
            _loc_1.width = 110;
            BindingManager.executeBindings(this, "_BuyTradeGoodsWindow_DataGridColumn18", _BuyTradeGoodsWindow_DataGridColumn18);
            return _loc_1;
        }// end function

        public function __weapon_data_list_itemClick(event:ListEvent) : void
        {
            viewData("weapon");
            return;
        }// end function

        public function __armor_data_list_itemClick(event:ListEvent) : void
        {
            viewData("armor");
            return;
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

        private function _BuyTradeGoodsWindow_DataGridColumn1_i() : DataGridColumn
        {
            var _loc_1:* = new DataGridColumn();
            _BuyTradeGoodsWindow_DataGridColumn1 = _loc_1;
            _loc_1.dataField = "nameLabel";
            BindingManager.executeBindings(this, "_BuyTradeGoodsWindow_DataGridColumn1", _BuyTradeGoodsWindow_DataGridColumn1);
            return _loc_1;
        }// end function

        private function get armorArray() : ArrayCollection
        {
            return this._2024599462armorArray;
        }// end function

        private function _BuyTradeGoodsWindow_DataGridColumn21_i() : DataGridColumn
        {
            var _loc_1:* = new DataGridColumn();
            _BuyTradeGoodsWindow_DataGridColumn21 = _loc_1;
            _loc_1.dataField = "quantity";
            _loc_1.width = 60;
            _loc_1.setStyle("textAlign", "center");
            BindingManager.executeBindings(this, "_BuyTradeGoodsWindow_DataGridColumn21", _BuyTradeGoodsWindow_DataGridColumn21);
            return _loc_1;
        }// end function

        public function get itemList() : ViewStack
        {
            return this._1177280081itemList;
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

        public function set haveMoney(param1:int) : void
        {
            _haveMoney = param1;
            return;
        }// end function

        private function set _buyMoney(param1:int) : void
        {
            var _loc_2:* = this._910358727_buyMoney;
            if (_loc_2 !== param1)
            {
                this._910358727_buyMoney = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "_buyMoney", _loc_2, param1));
            }
            return;
        }// end function

        public function getNameLabel(param1:Object) : String
        {
            return param1.nameLabel;
        }// end function

        public function get buyGoods() : Array
        {
            return _buyGoods;
        }// end function

        public function __accessory_data_list_itemClick(event:ListEvent) : void
        {
            viewData("accessory");
            return;
        }// end function

        private function _BuyTradeGoodsWindow_DataGridColumn9_i() : DataGridColumn
        {
            var _loc_1:* = new DataGridColumn();
            _BuyTradeGoodsWindow_DataGridColumn9 = _loc_1;
            _loc_1.dataField = "masterVO.avoidance";
            _loc_1.width = 60;
            _loc_1.setStyle("textAlign", "center");
            BindingManager.executeBindings(this, "_BuyTradeGoodsWindow_DataGridColumn9", _BuyTradeGoodsWindow_DataGridColumn9);
            return _loc_1;
        }// end function

        private function _BuyTradeGoodsWindow_ClassFactory1_i() : ClassFactory
        {
            var _loc_1:* = new ClassFactory();
            detailRenderer = _loc_1;
            _loc_1.generator = BuyTradeGoodsWindow_inlineComponent1;
            _loc_1.properties = {outerDocument:this};
            return _loc_1;
        }// end function

        private function get _swf_close() : MovieClipLoaderAsset
        {
            return this._1193840764_swf_close;
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

        private function get _totalPages() : int
        {
            return this._368501887_totalPages;
        }// end function

        private function _BuyTradeGoodsWindow_DataGridColumn17_i() : DataGridColumn
        {
            var _loc_1:* = new DataGridColumn();
            _BuyTradeGoodsWindow_DataGridColumn17 = _loc_1;
            _loc_1.dataField = "endurance";
            _loc_1.width = 60;
            _loc_1.setStyle("textAlign", "center");
            BindingManager.executeBindings(this, "_BuyTradeGoodsWindow_DataGridColumn17", _BuyTradeGoodsWindow_DataGridColumn17);
            return _loc_1;
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

        private function set accessortArray(param1:ArrayCollection) : void
        {
            var _loc_2:* = this._1145213772accessortArray;
            if (_loc_2 !== param1)
            {
                this._1145213772accessortArray = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "accessortArray", _loc_2, param1));
            }
            return;
        }// end function

        public function ___BuyTradeGoodsWindow_Image6_click(event:MouseEvent) : void
        {
            closeWindow();
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

        private function _BuyTradeGoodsWindow_DataGridColumn20_i() : DataGridColumn
        {
            var _loc_1:* = new DataGridColumn();
            _BuyTradeGoodsWindow_DataGridColumn20 = _loc_1;
            _loc_1.dataField = "masterVO.description";
            BindingManager.executeBindings(this, "_BuyTradeGoodsWindow_DataGridColumn20", _BuyTradeGoodsWindow_DataGridColumn20);
            return _loc_1;
        }// end function

        private function _BuyTradeGoodsWindow_DataGridColumn8_i() : DataGridColumn
        {
            var _loc_1:* = new DataGridColumn();
            _BuyTradeGoodsWindow_DataGridColumn8 = _loc_1;
            _loc_1.dataField = "masterVO.magicalDefense";
            _loc_1.width = 60;
            _loc_1.setStyle("textAlign", "center");
            BindingManager.executeBindings(this, "_BuyTradeGoodsWindow_DataGridColumn8", _BuyTradeGoodsWindow_DataGridColumn8);
            return _loc_1;
        }// end function

        public function onCloseWindow() : void
        {
            _buyGoodsName = new String();
            _buyCount = 0;
            _buyMoney = 0;
            onClose();
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

        private function goToPage(param1:int) : void
        {
            dispatchEvent(new PopupEvent(LOAD_TRADE_GOODS_WITH_PAGE, {page:param1}));
            return;
        }// end function

        private function get _haveMoney() : int
        {
            return this._1380584121_haveMoney;
        }// end function

        private function get _goodsNameLabel() : String
        {
            return this._1615082862_goodsNameLabel;
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

        private function _BuyTradeGoodsWindow_DataGridColumn16_i() : DataGridColumn
        {
            var _loc_1:* = new DataGridColumn();
            _BuyTradeGoodsWindow_DataGridColumn16 = _loc_1;
            _loc_1.dataField = "masterVO.effect";
            _loc_1.width = 250;
            _loc_1.setStyle("textAlign", "center");
            BindingManager.executeBindings(this, "_BuyTradeGoodsWindow_DataGridColumn16", _BuyTradeGoodsWindow_DataGridColumn16);
            return _loc_1;
        }// end function

        public function ___BuyTradeGoodsWindow_Image3_click(event:MouseEvent) : void
        {
            onCancel();
            return;
        }// end function

        private function _BuyTradeGoodsWindow_DataGridColumn7_i() : DataGridColumn
        {
            var _loc_1:* = new DataGridColumn();
            _BuyTradeGoodsWindow_DataGridColumn7 = _loc_1;
            _loc_1.dataField = "masterVO.physicalDefense";
            _loc_1.width = 60;
            _loc_1.setStyle("textAlign", "center");
            BindingManager.executeBindings(this, "_BuyTradeGoodsWindow_DataGridColumn7", _BuyTradeGoodsWindow_DataGridColumn7);
            return _loc_1;
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

        public function ___BuyTradeGoodsWindow_PopupWindow1_creationComplete(event:FlexEvent) : void
        {
            onComp();
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

        public function set buyGoods(param1:Array) : void
        {
            _goodsNameLabel = param1[0].nameLabel;
            _buyGoods = param1;
            switch(selectIndex)
            {
                case 0:
                {
                    weaponArray = new ArrayCollection(param1);
                    break;
                }
                case 1:
                {
                    armorArray = new ArrayCollection(param1);
                    break;
                }
                case 2:
                {
                    accessortArray = new ArrayCollection(param1);
                    break;
                }
                case 3:
                {
                    itemArray = new ArrayCollection(param1);
                    break;
                }
                case 4:
                {
                    materialArray = new ArrayCollection(param1);
                    break;
                }
                default:
                {
                    break;
                }
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

        public function get material_data_list() : DataGrid
        {
            return this._1593504005material_data_list;
        }// end function

        private function get _buyGoodsName() : String
        {
            return this._1033114374_buyGoodsName;
        }// end function

        private function set _nextPage(param1:Boolean) : void
        {
            var _loc_2:* = this._1514791297_nextPage;
            if (_loc_2 !== param1)
            {
                this._1514791297_nextPage = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "_nextPage", _loc_2, param1));
            }
            return;
        }// end function

        private function set _totalPages(param1:int) : void
        {
            var _loc_2:* = this._368501887_totalPages;
            if (_loc_2 !== param1)
            {
                this._368501887_totalPages = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "_totalPages", _loc_2, param1));
            }
            return;
        }// end function

        private function get itemArray() : ArrayCollection
        {
            return this._2126052102itemArray;
        }// end function

        public function onDetail(param1:Object) : void
        {
            if (param1.masterVO.masterType == "WeaponMaster" || param1.masterVO.masterType == "ArmorMaster" || param1.masterVO.masterType == "AccessoryMaster")
            {
                weaponDetail.viewData = param1.instanceVO;
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

        private function _BuyTradeGoodsWindow_DataGridColumn15_i() : DataGridColumn
        {
            var _loc_1:* = new DataGridColumn();
            _BuyTradeGoodsWindow_DataGridColumn15 = _loc_1;
            _loc_1.dataField = "nameLabel";
            BindingManager.executeBindings(this, "_BuyTradeGoodsWindow_DataGridColumn15", _BuyTradeGoodsWindow_DataGridColumn15);
            return _loc_1;
        }// end function

        public function get armor_data_list() : DataGrid
        {
            return this._1680067859armor_data_list;
        }// end function

        private function set _buyCount(param1:int) : void
        {
            var _loc_2:* = this._919586936_buyCount;
            if (_loc_2 !== param1)
            {
                this._919586936_buyCount = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "_buyCount", _loc_2, param1));
            }
            return;
        }// end function

        public function get accessory_data_list() : DataGrid
        {
            return this._1073623258accessory_data_list;
        }// end function

        public function getPriceLabel(param1:Object) : int
        {
            var _loc_2:int = 0;
            if (_haveLeyLine)
            {
                _loc_2 = param1.price - int(param1.price * 0.05);
                return _loc_2 >= 1 ? (_loc_2) : (1);
            }
            return param1.price;
        }// end function

        private function get _swf_close_window() : MovieClipLoaderAsset
        {
            return this._1218643219_swf_close_window;
        }// end function

        public function onCancel() : void
        {
            _buyData = new Object();
            _buyGoodsName = new String();
            _buyCount = 0;
            _buyMoney = 0;
            closeWindow();
            return;
        }// end function

        private function get _swf_prev() : MovieClipLoaderAsset
        {
            return this._99643601_swf_prev;
        }// end function

        private function get _buyMoney() : int
        {
            return this._910358727_buyMoney;
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

        public function get priceRenderer() : ClassFactory
        {
            return this._1241645780priceRenderer;
        }// end function

        private function _BuyTradeGoodsWindow_DataGridColumn6_i() : DataGridColumn
        {
            var _loc_1:* = new DataGridColumn();
            _BuyTradeGoodsWindow_DataGridColumn6 = _loc_1;
            _loc_1.dataField = "nameLabel";
            BindingManager.executeBindings(this, "_BuyTradeGoodsWindow_DataGridColumn6", _BuyTradeGoodsWindow_DataGridColumn6);
            return _loc_1;
        }// end function

        private function _BuyTradeGoodsWindow_DataGridColumn14_i() : DataGridColumn
        {
            var _loc_1:* = new DataGridColumn();
            _BuyTradeGoodsWindow_DataGridColumn14 = _loc_1;
            _loc_1.width = 110;
            BindingManager.executeBindings(this, "_BuyTradeGoodsWindow_DataGridColumn14", _BuyTradeGoodsWindow_DataGridColumn14);
            return _loc_1;
        }// end function

        private function get accessortArray() : ArrayCollection
        {
            return this._1145213772accessortArray;
        }// end function

        public function get buyData() : Object
        {
            return _buyData;
        }// end function

        private function set _goodsNameLabel(param1:String) : void
        {
            var _loc_2:* = this._1615082862_goodsNameLabel;
            if (_loc_2 !== param1)
            {
                this._1615082862_goodsNameLabel = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "_goodsNameLabel", _loc_2, param1));
            }
            return;
        }// end function

        public function ___BuyTradeGoodsWindow_Image5_click(event:MouseEvent) : void
        {
            goToPage((_currentPage + 1));
            return;
        }// end function

        public function set haveLeyLine(param1:Boolean) : void
        {
            var _loc_2:* = param1;
            _haveLeyLine = param1;
            if (_loc_2)
            {
                _priceHeader = Utils.i18n("buyTradeGoodsPriceOff");
            }
            else
            {
                _priceHeader = Utils.i18n("buyTradeGoodsPrice");
            }
            return;
        }// end function

        private function _BuyTradeGoodsWindow_DataGridColumn5_i() : DataGridColumn
        {
            var _loc_1:* = new DataGridColumn();
            _BuyTradeGoodsWindow_DataGridColumn5 = _loc_1;
            _loc_1.width = 110;
            BindingManager.executeBindings(this, "_BuyTradeGoodsWindow_DataGridColumn5", _BuyTradeGoodsWindow_DataGridColumn5);
            return _loc_1;
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

        private function _BuyTradeGoodsWindow_bindingExprs() : void
        {
            var _loc_1:* = undefined;
            _loc_1 = _swf_window;
            _loc_1 = WINDOW_X;
            _loc_1 = WINDOW_Y;
            _loc_1 = WINDOW_WD;
            _loc_1 = Utils.i18n("buyTradeGoodsbuy");
            _loc_1 = Utils.i18n("generalWeapon");
            _loc_1 = WINDOW_X + 20;
            _loc_1 = weaponArray;
            _loc_1 = WINDOW_WD - 40;
            _loc_1 = Utils.i18n("changeEquipmentWeaponName");
            _loc_1 = detailRenderer;
            _loc_1 = Utils.i18n("changeEquipmentAttack");
            _loc_1 = Utils.i18n("changeEquipmentHit");
            _loc_1 = Utils.i18n("changeEquipmentEndurance");
            _loc_1 = priceRenderer;
            _loc_1 = _priceHeader;
            _loc_1 = Utils.i18n("generalEquipArmor");
            _loc_1 = WINDOW_X + 20;
            _loc_1 = armorArray;
            _loc_1 = WINDOW_WD - 40;
            _loc_1 = Utils.i18n("changeEquipmentArmorName");
            _loc_1 = detailRenderer;
            _loc_1 = Utils.i18n("changeEquipmentDefense");
            _loc_1 = Utils.i18n("changeEquipmentMagicalDefense");
            _loc_1 = Utils.i18n("changeEquipmentAvoidance");
            _loc_1 = Utils.i18n("changeEquipmentEndurance");
            _loc_1 = priceRenderer;
            _loc_1 = _priceHeader;
            _loc_1 = Utils.i18n("generalEquipAccessory");
            _loc_1 = WINDOW_X + 20;
            _loc_1 = accessortArray;
            _loc_1 = WINDOW_WD - 40;
            _loc_1 = Utils.i18n("changeEquipmentAccessoryName");
            _loc_1 = detailRenderer;
            _loc_1 = Utils.i18n("changeEquipmentEffect");
            _loc_1 = priceRenderer;
            _loc_1 = _priceHeader;
            _loc_1 = Utils.i18n("generalMaterial");
            _loc_1 = WINDOW_X + 20;
            _loc_1 = itemArray;
            _loc_1 = WINDOW_WD - 40;
            _loc_1 = Utils.i18n("changeEquipmentItemName");
            _loc_1 = detailRenderer;
            _loc_1 = Utils.i18n("changeEquipmentEffect");
            _loc_1 = Utils.i18n("changeEquipmentEndurance");
            _loc_1 = priceRenderer;
            _loc_1 = _priceHeader;
            _loc_1 = Utils.i18n("confirmBuildMaterial");
            _loc_1 = WINDOW_X + 20;
            _loc_1 = materialArray;
            _loc_1 = WINDOW_WD - 40;
            _loc_1 = Utils.i18n("generalMaterilalName");
            _loc_1 = detailRenderer;
            _loc_1 = Utils.i18n("generalDescription");
            _loc_1 = Utils.i18n("generalQuantity");
            _loc_1 = priceRenderer;
            _loc_1 = _priceHeader;
            _loc_1 = BUTTON_X - 65;
            _loc_1 = BUTTON_Y;
            _loc_1 = _swf_buy;
            _loc_1 = BUTTON_X + 65;
            _loc_1 = BUTTON_Y;
            _loc_1 = _swf_close;
            _loc_1 = Utils.i18n("generalPossessionMoney") + "" + _haveMoney;
            _loc_1 = WINDOW_X + 20;
            _loc_1 = Utils.i18n("buyTradeGoodsPossessionNum", _goodsNameLabel) + ":" + _goodsHaveCount;
            _loc_1 = WINDOW_X + 20;
            _loc_1 = WINDOW_X + 20;
            _loc_1 = WINDOW_WD - 40;
            _loc_1 = _buyGoodsName == "" ? (false) : (true);
            _loc_1 = Utils.i18n("buyTradeGoodsConfirm", _buyGoodsName, _buyCount, _buyMoney);
            _loc_1 = WINDOW_X + 20;
            _loc_1 = WINDOW_WD - 40;
            _loc_1 = _swf_prev;
            _loc_1 = _previousPage;
            _loc_1 = _currentPage + "/" + _totalPages;
            _loc_1 = _swf_next;
            _loc_1 = _nextPage;
            _loc_1 = _goodsNameLabel;
            _loc_1 = WINDOW_X + WINDOW_WD - 25;
            _loc_1 = WINDOW_Y;
            _loc_1 = _swf_close_window;
            return;
        }// end function

        public function set pages(param1:Object) : void
        {
            _currentPage = param1.current_page;
            _nextPage = param1.next_page;
            _previousPage = param1.previous_page;
            _totalPages = param1.total_pages;
            if (_previousPage)
            {
                MovieClip(Loader(_swf_prev.getChildAt(0)).content).gotoAndPlay("button_prev");
            }
            else
            {
                MovieClip(Loader(_swf_prev.getChildAt(0)).content).gotoAndPlay("button_prev_off");
            }
            if (_nextPage)
            {
                MovieClip(Loader(_swf_next.getChildAt(0)).content).gotoAndPlay("button_next");
            }
            else
            {
                MovieClip(Loader(_swf_next.getChildAt(0)).content).gotoAndPlay("button_next_off");
            }
            return;
        }// end function

        private function get materialArray() : ArrayCollection
        {
            return this._1176879758materialArray;
        }// end function

        private function _BuyTradeGoodsWindow_DataGridColumn13_i() : DataGridColumn
        {
            var _loc_1:* = new DataGridColumn();
            _BuyTradeGoodsWindow_DataGridColumn13 = _loc_1;
            _loc_1.dataField = "masterVO.effectLabelAll";
            _loc_1.width = 250;
            _loc_1.setStyle("textAlign", "center");
            BindingManager.executeBindings(this, "_BuyTradeGoodsWindow_DataGridColumn13", _BuyTradeGoodsWindow_DataGridColumn13);
            return _loc_1;
        }// end function

        override public function initialize() : void
        {
            var target:BuyTradeGoodsWindow;
            var watcherSetupUtilClass:Object;
            .mx_internal::setDocumentDescriptor(_documentDescriptor_);
            var bindings:* = _BuyTradeGoodsWindow_bindingsSetup();
            var watchers:Array;
            target;
            if (_watcherSetupUtil == null)
            {
                watcherSetupUtilClass = getDefinitionByName("_com_kbmj_viking_view_city_BuyTradeGoodsWindowWatcherSetupUtil");
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

        private function _BuyTradeGoodsWindow_bindingsSetup() : Array
        {
            var binding:Binding;
            var result:Array;
            binding = new Binding(this, function () : Object
            {
                return _swf_window;
            }// end function
            , function (param1:Object) : void
            {
                _BuyTradeGoodsWindow_Image1.source = param1;
                return;
            }// end function
            , "_BuyTradeGoodsWindow_Image1.source");
            result[0] = binding;
            binding = new Binding(this, function () : Number
            {
                return WINDOW_X;
            }// end function
            , function (param1:Number) : void
            {
                _BuyTradeGoodsWindow_Text1.x = param1;
                return;
            }// end function
            , "_BuyTradeGoodsWindow_Text1.x");
            result[1] = binding;
            binding = new Binding(this, function () : Number
            {
                return WINDOW_Y;
            }// end function
            , function (param1:Number) : void
            {
                _BuyTradeGoodsWindow_Text1.y = param1;
                return;
            }// end function
            , "_BuyTradeGoodsWindow_Text1.y");
            result[2] = binding;
            binding = new Binding(this, function () : Number
            {
                return WINDOW_WD;
            }// end function
            , function (param1:Number) : void
            {
                _BuyTradeGoodsWindow_Text1.width = param1;
                return;
            }// end function
            , "_BuyTradeGoodsWindow_Text1.width");
            result[3] = binding;
            binding = new Binding(this, function () : String
            {
                var _loc_1:* = Utils.i18n("buyTradeGoodsbuy");
                var _loc_2:* = _loc_1 == undefined ? (null) : (String(_loc_1));
                return _loc_2;
            }// end function
            , function (param1:String) : void
            {
                _BuyTradeGoodsWindow_Text1.text = param1;
                return;
            }// end function
            , "_BuyTradeGoodsWindow_Text1.text");
            result[4] = binding;
            binding = new Binding(this, function () : String
            {
                var _loc_1:* = Utils.i18n("generalWeapon");
                var _loc_2:* = _loc_1 == undefined ? (null) : (String(_loc_1));
                return _loc_2;
            }// end function
            , function (param1:String) : void
            {
                _BuyTradeGoodsWindow_Canvas1.label = param1;
                return;
            }// end function
            , "_BuyTradeGoodsWindow_Canvas1.label");
            result[5] = binding;
            binding = new Binding(this, function () : Number
            {
                return WINDOW_X + 20;
            }// end function
            , function (param1:Number) : void
            {
                _BuyTradeGoodsWindow_Box1.x = param1;
                return;
            }// end function
            , "_BuyTradeGoodsWindow_Box1.x");
            result[6] = binding;
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
            result[7] = binding;
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
            result[8] = binding;
            binding = new Binding(this, function () : String
            {
                var _loc_1:* = Utils.i18n("changeEquipmentWeaponName");
                var _loc_2:* = _loc_1 == undefined ? (null) : (String(_loc_1));
                return _loc_2;
            }// end function
            , function (param1:String) : void
            {
                _BuyTradeGoodsWindow_DataGridColumn1.headerText = param1;
                return;
            }// end function
            , "_BuyTradeGoodsWindow_DataGridColumn1.headerText");
            result[9] = binding;
            binding = new Binding(this, function () : IFactory
            {
                return detailRenderer;
            }// end function
            , function (param1:IFactory) : void
            {
                _BuyTradeGoodsWindow_DataGridColumn1.itemRenderer = param1;
                return;
            }// end function
            , "_BuyTradeGoodsWindow_DataGridColumn1.itemRenderer");
            result[10] = binding;
            binding = new Binding(this, function () : String
            {
                var _loc_1:* = Utils.i18n("changeEquipmentAttack");
                var _loc_2:* = _loc_1 == undefined ? (null) : (String(_loc_1));
                return _loc_2;
            }// end function
            , function (param1:String) : void
            {
                _BuyTradeGoodsWindow_DataGridColumn2.headerText = param1;
                return;
            }// end function
            , "_BuyTradeGoodsWindow_DataGridColumn2.headerText");
            result[11] = binding;
            binding = new Binding(this, function () : String
            {
                var _loc_1:* = Utils.i18n("changeEquipmentHit");
                var _loc_2:* = _loc_1 == undefined ? (null) : (String(_loc_1));
                return _loc_2;
            }// end function
            , function (param1:String) : void
            {
                _BuyTradeGoodsWindow_DataGridColumn3.headerText = param1;
                return;
            }// end function
            , "_BuyTradeGoodsWindow_DataGridColumn3.headerText");
            result[12] = binding;
            binding = new Binding(this, function () : String
            {
                var _loc_1:* = Utils.i18n("changeEquipmentEndurance");
                var _loc_2:* = _loc_1 == undefined ? (null) : (String(_loc_1));
                return _loc_2;
            }// end function
            , function (param1:String) : void
            {
                _BuyTradeGoodsWindow_DataGridColumn4.headerText = param1;
                return;
            }// end function
            , "_BuyTradeGoodsWindow_DataGridColumn4.headerText");
            result[13] = binding;
            binding = new Binding(this, function () : IFactory
            {
                return priceRenderer;
            }// end function
            , function (param1:IFactory) : void
            {
                _BuyTradeGoodsWindow_DataGridColumn5.itemRenderer = param1;
                return;
            }// end function
            , "_BuyTradeGoodsWindow_DataGridColumn5.itemRenderer");
            result[14] = binding;
            binding = new Binding(this, function () : String
            {
                var _loc_1:* = _priceHeader;
                var _loc_2:* = _loc_1 == undefined ? (null) : (String(_loc_1));
                return _loc_2;
            }// end function
            , function (param1:String) : void
            {
                _BuyTradeGoodsWindow_DataGridColumn5.headerText = param1;
                return;
            }// end function
            , "_BuyTradeGoodsWindow_DataGridColumn5.headerText");
            result[15] = binding;
            binding = new Binding(this, function () : String
            {
                var _loc_1:* = Utils.i18n("generalEquipArmor");
                var _loc_2:* = _loc_1 == undefined ? (null) : (String(_loc_1));
                return _loc_2;
            }// end function
            , function (param1:String) : void
            {
                _BuyTradeGoodsWindow_Canvas2.label = param1;
                return;
            }// end function
            , "_BuyTradeGoodsWindow_Canvas2.label");
            result[16] = binding;
            binding = new Binding(this, function () : Number
            {
                return WINDOW_X + 20;
            }// end function
            , function (param1:Number) : void
            {
                _BuyTradeGoodsWindow_Box2.x = param1;
                return;
            }// end function
            , "_BuyTradeGoodsWindow_Box2.x");
            result[17] = binding;
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
            result[18] = binding;
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
            result[19] = binding;
            binding = new Binding(this, function () : String
            {
                var _loc_1:* = Utils.i18n("changeEquipmentArmorName");
                var _loc_2:* = _loc_1 == undefined ? (null) : (String(_loc_1));
                return _loc_2;
            }// end function
            , function (param1:String) : void
            {
                _BuyTradeGoodsWindow_DataGridColumn6.headerText = param1;
                return;
            }// end function
            , "_BuyTradeGoodsWindow_DataGridColumn6.headerText");
            result[20] = binding;
            binding = new Binding(this, function () : IFactory
            {
                return detailRenderer;
            }// end function
            , function (param1:IFactory) : void
            {
                _BuyTradeGoodsWindow_DataGridColumn6.itemRenderer = param1;
                return;
            }// end function
            , "_BuyTradeGoodsWindow_DataGridColumn6.itemRenderer");
            result[21] = binding;
            binding = new Binding(this, function () : String
            {
                var _loc_1:* = Utils.i18n("changeEquipmentDefense");
                var _loc_2:* = _loc_1 == undefined ? (null) : (String(_loc_1));
                return _loc_2;
            }// end function
            , function (param1:String) : void
            {
                _BuyTradeGoodsWindow_DataGridColumn7.headerText = param1;
                return;
            }// end function
            , "_BuyTradeGoodsWindow_DataGridColumn7.headerText");
            result[22] = binding;
            binding = new Binding(this, function () : String
            {
                var _loc_1:* = Utils.i18n("changeEquipmentMagicalDefense");
                var _loc_2:* = _loc_1 == undefined ? (null) : (String(_loc_1));
                return _loc_2;
            }// end function
            , function (param1:String) : void
            {
                _BuyTradeGoodsWindow_DataGridColumn8.headerText = param1;
                return;
            }// end function
            , "_BuyTradeGoodsWindow_DataGridColumn8.headerText");
            result[23] = binding;
            binding = new Binding(this, function () : String
            {
                var _loc_1:* = Utils.i18n("changeEquipmentAvoidance");
                var _loc_2:* = _loc_1 == undefined ? (null) : (String(_loc_1));
                return _loc_2;
            }// end function
            , function (param1:String) : void
            {
                _BuyTradeGoodsWindow_DataGridColumn9.headerText = param1;
                return;
            }// end function
            , "_BuyTradeGoodsWindow_DataGridColumn9.headerText");
            result[24] = binding;
            binding = new Binding(this, function () : String
            {
                var _loc_1:* = Utils.i18n("changeEquipmentEndurance");
                var _loc_2:* = _loc_1 == undefined ? (null) : (String(_loc_1));
                return _loc_2;
            }// end function
            , function (param1:String) : void
            {
                _BuyTradeGoodsWindow_DataGridColumn10.headerText = param1;
                return;
            }// end function
            , "_BuyTradeGoodsWindow_DataGridColumn10.headerText");
            result[25] = binding;
            binding = new Binding(this, function () : IFactory
            {
                return priceRenderer;
            }// end function
            , function (param1:IFactory) : void
            {
                _BuyTradeGoodsWindow_DataGridColumn11.itemRenderer = param1;
                return;
            }// end function
            , "_BuyTradeGoodsWindow_DataGridColumn11.itemRenderer");
            result[26] = binding;
            binding = new Binding(this, function () : String
            {
                var _loc_1:* = _priceHeader;
                var _loc_2:* = _loc_1 == undefined ? (null) : (String(_loc_1));
                return _loc_2;
            }// end function
            , function (param1:String) : void
            {
                _BuyTradeGoodsWindow_DataGridColumn11.headerText = param1;
                return;
            }// end function
            , "_BuyTradeGoodsWindow_DataGridColumn11.headerText");
            result[27] = binding;
            binding = new Binding(this, function () : String
            {
                var _loc_1:* = Utils.i18n("generalEquipAccessory");
                var _loc_2:* = _loc_1 == undefined ? (null) : (String(_loc_1));
                return _loc_2;
            }// end function
            , function (param1:String) : void
            {
                _BuyTradeGoodsWindow_Canvas3.label = param1;
                return;
            }// end function
            , "_BuyTradeGoodsWindow_Canvas3.label");
            result[28] = binding;
            binding = new Binding(this, function () : Number
            {
                return WINDOW_X + 20;
            }// end function
            , function (param1:Number) : void
            {
                _BuyTradeGoodsWindow_Box3.x = param1;
                return;
            }// end function
            , "_BuyTradeGoodsWindow_Box3.x");
            result[29] = binding;
            binding = new Binding(this, function () : Object
            {
                return accessortArray;
            }// end function
            , function (param1:Object) : void
            {
                accessory_data_list.dataProvider = param1;
                return;
            }// end function
            , "accessory_data_list.dataProvider");
            result[30] = binding;
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
            result[31] = binding;
            binding = new Binding(this, function () : String
            {
                var _loc_1:* = Utils.i18n("changeEquipmentAccessoryName");
                var _loc_2:* = _loc_1 == undefined ? (null) : (String(_loc_1));
                return _loc_2;
            }// end function
            , function (param1:String) : void
            {
                _BuyTradeGoodsWindow_DataGridColumn12.headerText = param1;
                return;
            }// end function
            , "_BuyTradeGoodsWindow_DataGridColumn12.headerText");
            result[32] = binding;
            binding = new Binding(this, function () : IFactory
            {
                return detailRenderer;
            }// end function
            , function (param1:IFactory) : void
            {
                _BuyTradeGoodsWindow_DataGridColumn12.itemRenderer = param1;
                return;
            }// end function
            , "_BuyTradeGoodsWindow_DataGridColumn12.itemRenderer");
            result[33] = binding;
            binding = new Binding(this, function () : String
            {
                var _loc_1:* = Utils.i18n("changeEquipmentEffect");
                var _loc_2:* = _loc_1 == undefined ? (null) : (String(_loc_1));
                return _loc_2;
            }// end function
            , function (param1:String) : void
            {
                _BuyTradeGoodsWindow_DataGridColumn13.headerText = param1;
                return;
            }// end function
            , "_BuyTradeGoodsWindow_DataGridColumn13.headerText");
            result[34] = binding;
            binding = new Binding(this, function () : IFactory
            {
                return priceRenderer;
            }// end function
            , function (param1:IFactory) : void
            {
                _BuyTradeGoodsWindow_DataGridColumn14.itemRenderer = param1;
                return;
            }// end function
            , "_BuyTradeGoodsWindow_DataGridColumn14.itemRenderer");
            result[35] = binding;
            binding = new Binding(this, function () : String
            {
                var _loc_1:* = _priceHeader;
                var _loc_2:* = _loc_1 == undefined ? (null) : (String(_loc_1));
                return _loc_2;
            }// end function
            , function (param1:String) : void
            {
                _BuyTradeGoodsWindow_DataGridColumn14.headerText = param1;
                return;
            }// end function
            , "_BuyTradeGoodsWindow_DataGridColumn14.headerText");
            result[36] = binding;
            binding = new Binding(this, function () : String
            {
                var _loc_1:* = Utils.i18n("generalMaterial");
                var _loc_2:* = _loc_1 == undefined ? (null) : (String(_loc_1));
                return _loc_2;
            }// end function
            , function (param1:String) : void
            {
                _BuyTradeGoodsWindow_Canvas4.label = param1;
                return;
            }// end function
            , "_BuyTradeGoodsWindow_Canvas4.label");
            result[37] = binding;
            binding = new Binding(this, function () : Number
            {
                return WINDOW_X + 20;
            }// end function
            , function (param1:Number) : void
            {
                _BuyTradeGoodsWindow_Box4.x = param1;
                return;
            }// end function
            , "_BuyTradeGoodsWindow_Box4.x");
            result[38] = binding;
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
            result[39] = binding;
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
            result[40] = binding;
            binding = new Binding(this, function () : String
            {
                var _loc_1:* = Utils.i18n("changeEquipmentItemName");
                var _loc_2:* = _loc_1 == undefined ? (null) : (String(_loc_1));
                return _loc_2;
            }// end function
            , function (param1:String) : void
            {
                _BuyTradeGoodsWindow_DataGridColumn15.headerText = param1;
                return;
            }// end function
            , "_BuyTradeGoodsWindow_DataGridColumn15.headerText");
            result[41] = binding;
            binding = new Binding(this, function () : IFactory
            {
                return detailRenderer;
            }// end function
            , function (param1:IFactory) : void
            {
                _BuyTradeGoodsWindow_DataGridColumn15.itemRenderer = param1;
                return;
            }// end function
            , "_BuyTradeGoodsWindow_DataGridColumn15.itemRenderer");
            result[42] = binding;
            binding = new Binding(this, function () : String
            {
                var _loc_1:* = Utils.i18n("changeEquipmentEffect");
                var _loc_2:* = _loc_1 == undefined ? (null) : (String(_loc_1));
                return _loc_2;
            }// end function
            , function (param1:String) : void
            {
                _BuyTradeGoodsWindow_DataGridColumn16.headerText = param1;
                return;
            }// end function
            , "_BuyTradeGoodsWindow_DataGridColumn16.headerText");
            result[43] = binding;
            binding = new Binding(this, function () : String
            {
                var _loc_1:* = Utils.i18n("changeEquipmentEndurance");
                var _loc_2:* = _loc_1 == undefined ? (null) : (String(_loc_1));
                return _loc_2;
            }// end function
            , function (param1:String) : void
            {
                _BuyTradeGoodsWindow_DataGridColumn17.headerText = param1;
                return;
            }// end function
            , "_BuyTradeGoodsWindow_DataGridColumn17.headerText");
            result[44] = binding;
            binding = new Binding(this, function () : IFactory
            {
                return priceRenderer;
            }// end function
            , function (param1:IFactory) : void
            {
                _BuyTradeGoodsWindow_DataGridColumn18.itemRenderer = param1;
                return;
            }// end function
            , "_BuyTradeGoodsWindow_DataGridColumn18.itemRenderer");
            result[45] = binding;
            binding = new Binding(this, function () : String
            {
                var _loc_1:* = _priceHeader;
                var _loc_2:* = _loc_1 == undefined ? (null) : (String(_loc_1));
                return _loc_2;
            }// end function
            , function (param1:String) : void
            {
                _BuyTradeGoodsWindow_DataGridColumn18.headerText = param1;
                return;
            }// end function
            , "_BuyTradeGoodsWindow_DataGridColumn18.headerText");
            result[46] = binding;
            binding = new Binding(this, function () : String
            {
                var _loc_1:* = Utils.i18n("confirmBuildMaterial");
                var _loc_2:* = _loc_1 == undefined ? (null) : (String(_loc_1));
                return _loc_2;
            }// end function
            , function (param1:String) : void
            {
                _BuyTradeGoodsWindow_Canvas5.label = param1;
                return;
            }// end function
            , "_BuyTradeGoodsWindow_Canvas5.label");
            result[47] = binding;
            binding = new Binding(this, function () : Number
            {
                return WINDOW_X + 20;
            }// end function
            , function (param1:Number) : void
            {
                _BuyTradeGoodsWindow_Box5.x = param1;
                return;
            }// end function
            , "_BuyTradeGoodsWindow_Box5.x");
            result[48] = binding;
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
            result[49] = binding;
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
            result[50] = binding;
            binding = new Binding(this, function () : String
            {
                var _loc_1:* = Utils.i18n("generalMaterilalName");
                var _loc_2:* = _loc_1 == undefined ? (null) : (String(_loc_1));
                return _loc_2;
            }// end function
            , function (param1:String) : void
            {
                _BuyTradeGoodsWindow_DataGridColumn19.headerText = param1;
                return;
            }// end function
            , "_BuyTradeGoodsWindow_DataGridColumn19.headerText");
            result[51] = binding;
            binding = new Binding(this, function () : IFactory
            {
                return detailRenderer;
            }// end function
            , function (param1:IFactory) : void
            {
                _BuyTradeGoodsWindow_DataGridColumn19.itemRenderer = param1;
                return;
            }// end function
            , "_BuyTradeGoodsWindow_DataGridColumn19.itemRenderer");
            result[52] = binding;
            binding = new Binding(this, function () : String
            {
                var _loc_1:* = Utils.i18n("generalDescription");
                var _loc_2:* = _loc_1 == undefined ? (null) : (String(_loc_1));
                return _loc_2;
            }// end function
            , function (param1:String) : void
            {
                _BuyTradeGoodsWindow_DataGridColumn20.headerText = param1;
                return;
            }// end function
            , "_BuyTradeGoodsWindow_DataGridColumn20.headerText");
            result[53] = binding;
            binding = new Binding(this, function () : String
            {
                var _loc_1:* = Utils.i18n("generalQuantity");
                var _loc_2:* = _loc_1 == undefined ? (null) : (String(_loc_1));
                return _loc_2;
            }// end function
            , function (param1:String) : void
            {
                _BuyTradeGoodsWindow_DataGridColumn21.headerText = param1;
                return;
            }// end function
            , "_BuyTradeGoodsWindow_DataGridColumn21.headerText");
            result[54] = binding;
            binding = new Binding(this, function () : IFactory
            {
                return priceRenderer;
            }// end function
            , function (param1:IFactory) : void
            {
                _BuyTradeGoodsWindow_DataGridColumn22.itemRenderer = param1;
                return;
            }// end function
            , "_BuyTradeGoodsWindow_DataGridColumn22.itemRenderer");
            result[55] = binding;
            binding = new Binding(this, function () : String
            {
                var _loc_1:* = _priceHeader;
                var _loc_2:* = _loc_1 == undefined ? (null) : (String(_loc_1));
                return _loc_2;
            }// end function
            , function (param1:String) : void
            {
                _BuyTradeGoodsWindow_DataGridColumn22.headerText = param1;
                return;
            }// end function
            , "_BuyTradeGoodsWindow_DataGridColumn22.headerText");
            result[56] = binding;
            binding = new Binding(this, function () : Number
            {
                return BUTTON_X - 65;
            }// end function
            , function (param1:Number) : void
            {
                _BuyTradeGoodsWindow_Image2.x = param1;
                return;
            }// end function
            , "_BuyTradeGoodsWindow_Image2.x");
            result[57] = binding;
            binding = new Binding(this, function () : Number
            {
                return BUTTON_Y;
            }// end function
            , function (param1:Number) : void
            {
                _BuyTradeGoodsWindow_Image2.y = param1;
                return;
            }// end function
            , "_BuyTradeGoodsWindow_Image2.y");
            result[58] = binding;
            binding = new Binding(this, function () : Object
            {
                return _swf_buy;
            }// end function
            , function (param1:Object) : void
            {
                _BuyTradeGoodsWindow_Image2.source = param1;
                return;
            }// end function
            , "_BuyTradeGoodsWindow_Image2.source");
            result[59] = binding;
            binding = new Binding(this, function () : Number
            {
                return BUTTON_X + 65;
            }// end function
            , function (param1:Number) : void
            {
                _BuyTradeGoodsWindow_Image3.x = param1;
                return;
            }// end function
            , "_BuyTradeGoodsWindow_Image3.x");
            result[60] = binding;
            binding = new Binding(this, function () : Number
            {
                return BUTTON_Y;
            }// end function
            , function (param1:Number) : void
            {
                _BuyTradeGoodsWindow_Image3.y = param1;
                return;
            }// end function
            , "_BuyTradeGoodsWindow_Image3.y");
            result[61] = binding;
            binding = new Binding(this, function () : Object
            {
                return _swf_close;
            }// end function
            , function (param1:Object) : void
            {
                _BuyTradeGoodsWindow_Image3.source = param1;
                return;
            }// end function
            , "_BuyTradeGoodsWindow_Image3.source");
            result[62] = binding;
            binding = new Binding(this, function () : String
            {
                var _loc_1:* = Utils.i18n("generalPossessionMoney") + "" + _haveMoney;
                var _loc_2:* = _loc_1 == undefined ? (null) : (String(_loc_1));
                return _loc_2;
            }// end function
            , function (param1:String) : void
            {
                _BuyTradeGoodsWindow_Text2.text = param1;
                return;
            }// end function
            , "_BuyTradeGoodsWindow_Text2.text");
            result[63] = binding;
            binding = new Binding(this, function () : Number
            {
                return WINDOW_X + 20;
            }// end function
            , function (param1:Number) : void
            {
                _BuyTradeGoodsWindow_Text2.x = param1;
                return;
            }// end function
            , "_BuyTradeGoodsWindow_Text2.x");
            result[64] = binding;
            binding = new Binding(this, function () : String
            {
                var _loc_1:* = Utils.i18n("buyTradeGoodsPossessionNum", _goodsNameLabel) + ":" + _goodsHaveCount;
                var _loc_2:* = _loc_1 == undefined ? (null) : (String(_loc_1));
                return _loc_2;
            }// end function
            , function (param1:String) : void
            {
                _BuyTradeGoodsWindow_Text3.text = param1;
                return;
            }// end function
            , "_BuyTradeGoodsWindow_Text3.text");
            result[65] = binding;
            binding = new Binding(this, function () : Number
            {
                return WINDOW_X + 20;
            }// end function
            , function (param1:Number) : void
            {
                _BuyTradeGoodsWindow_Text3.x = param1;
                return;
            }// end function
            , "_BuyTradeGoodsWindow_Text3.x");
            result[66] = binding;
            binding = new Binding(this, function () : Number
            {
                return WINDOW_X + 20;
            }// end function
            , function (param1:Number) : void
            {
                _BuyTradeGoodsWindow_HBox1.x = param1;
                return;
            }// end function
            , "_BuyTradeGoodsWindow_HBox1.x");
            result[67] = binding;
            binding = new Binding(this, function () : Number
            {
                return WINDOW_WD - 40;
            }// end function
            , function (param1:Number) : void
            {
                _BuyTradeGoodsWindow_HBox1.width = param1;
                return;
            }// end function
            , "_BuyTradeGoodsWindow_HBox1.width");
            result[68] = binding;
            binding = new Binding(this, function () : Boolean
            {
                return _buyGoodsName == "" ? (false) : (true);
            }// end function
            , function (param1:Boolean) : void
            {
                _BuyTradeGoodsWindow_HBox1.visible = param1;
                return;
            }// end function
            , "_BuyTradeGoodsWindow_HBox1.visible");
            result[69] = binding;
            binding = new Binding(this, function () : String
            {
                var _loc_1:* = Utils.i18n("buyTradeGoodsConfirm", _buyGoodsName, _buyCount, _buyMoney);
                var _loc_2:* = _loc_1 == undefined ? (null) : (String(_loc_1));
                return _loc_2;
            }// end function
            , function (param1:String) : void
            {
                _BuyTradeGoodsWindow_Text4.text = param1;
                return;
            }// end function
            , "_BuyTradeGoodsWindow_Text4.text");
            result[70] = binding;
            binding = new Binding(this, function () : Number
            {
                return WINDOW_X + 20;
            }// end function
            , function (param1:Number) : void
            {
                _BuyTradeGoodsWindow_HBox2.x = param1;
                return;
            }// end function
            , "_BuyTradeGoodsWindow_HBox2.x");
            result[71] = binding;
            binding = new Binding(this, function () : Number
            {
                return WINDOW_WD - 40;
            }// end function
            , function (param1:Number) : void
            {
                _BuyTradeGoodsWindow_HBox2.width = param1;
                return;
            }// end function
            , "_BuyTradeGoodsWindow_HBox2.width");
            result[72] = binding;
            binding = new Binding(this, function () : Object
            {
                return _swf_prev;
            }// end function
            , function (param1:Object) : void
            {
                _BuyTradeGoodsWindow_Image4.source = param1;
                return;
            }// end function
            , "_BuyTradeGoodsWindow_Image4.source");
            result[73] = binding;
            binding = new Binding(this, function () : Boolean
            {
                return _previousPage;
            }// end function
            , function (param1:Boolean) : void
            {
                _BuyTradeGoodsWindow_Image4.enabled = param1;
                return;
            }// end function
            , "_BuyTradeGoodsWindow_Image4.enabled");
            result[74] = binding;
            binding = new Binding(this, function () : String
            {
                var _loc_1:* = _currentPage + "/" + _totalPages;
                var _loc_2:* = _loc_1 == undefined ? (null) : (String(_loc_1));
                return _loc_2;
            }// end function
            , function (param1:String) : void
            {
                _BuyTradeGoodsWindow_Label1.text = param1;
                return;
            }// end function
            , "_BuyTradeGoodsWindow_Label1.text");
            result[75] = binding;
            binding = new Binding(this, function () : Object
            {
                return _swf_next;
            }// end function
            , function (param1:Object) : void
            {
                _BuyTradeGoodsWindow_Image5.source = param1;
                return;
            }// end function
            , "_BuyTradeGoodsWindow_Image5.source");
            result[76] = binding;
            binding = new Binding(this, function () : Boolean
            {
                return _nextPage;
            }// end function
            , function (param1:Boolean) : void
            {
                _BuyTradeGoodsWindow_Image5.enabled = param1;
                return;
            }// end function
            , "_BuyTradeGoodsWindow_Image5.enabled");
            result[77] = binding;
            binding = new Binding(this, function () : String
            {
                var _loc_1:* = _goodsNameLabel;
                var _loc_2:* = _loc_1 == undefined ? (null) : (String(_loc_1));
                return _loc_2;
            }// end function
            , function (param1:String) : void
            {
                _BuyTradeGoodsWindow_Text5.text = param1;
                return;
            }// end function
            , "_BuyTradeGoodsWindow_Text5.text");
            result[78] = binding;
            binding = new Binding(this, function () : Number
            {
                return WINDOW_X + WINDOW_WD - 25;
            }// end function
            , function (param1:Number) : void
            {
                _BuyTradeGoodsWindow_Image6.x = param1;
                return;
            }// end function
            , "_BuyTradeGoodsWindow_Image6.x");
            result[79] = binding;
            binding = new Binding(this, function () : Number
            {
                return WINDOW_Y;
            }// end function
            , function (param1:Number) : void
            {
                _BuyTradeGoodsWindow_Image6.y = param1;
                return;
            }// end function
            , "_BuyTradeGoodsWindow_Image6.y");
            result[80] = binding;
            binding = new Binding(this, function () : Object
            {
                return _swf_close_window;
            }// end function
            , function (param1:Object) : void
            {
                _BuyTradeGoodsWindow_Image6.source = param1;
                return;
            }// end function
            , "_BuyTradeGoodsWindow_Image6.source");
            result[81] = binding;
            return result;
        }// end function

        private function set _haveMoney(param1:int) : void
        {
            var _loc_2:* = this._1380584121_haveMoney;
            if (_loc_2 !== param1)
            {
                this._1380584121_haveMoney = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "_haveMoney", _loc_2, param1));
            }
            return;
        }// end function

        private function onComp() : void
        {
            itemList.selectedIndex = selectIndex;
            creat = true;
            MovieClip(Loader(_swf_window.getChildAt(0)).content).gotoAndPlay("center_720x520");
            MovieClip(Loader(_swf_buy.getChildAt(0)).content).gotoAndPlay("button_buy");
            MovieClip(Loader(_swf_close.getChildAt(0)).content).gotoAndPlay("button_close");
            if (_previousPage)
            {
                MovieClip(Loader(_swf_prev.getChildAt(0)).content).gotoAndPlay("button_prev");
            }
            else
            {
                MovieClip(Loader(_swf_prev.getChildAt(0)).content).gotoAndPlay("button_prev_off");
            }
            if (_nextPage)
            {
                MovieClip(Loader(_swf_next.getChildAt(0)).content).gotoAndPlay("button_next");
            }
            else
            {
                MovieClip(Loader(_swf_next.getChildAt(0)).content).gotoAndPlay("button_next_off");
            }
            return;
        }// end function

        public function ___BuyTradeGoodsWindow_Image2_click(event:MouseEvent) : void
        {
            onBuy();
            return;
        }// end function

        private function get _priceHeader() : String
        {
            return this._591659895_priceHeader;
        }// end function

        private function get _buyCount() : int
        {
            return this._919586936_buyCount;
        }// end function

        public function set goodsHaveCount(param1:int) : void
        {
            _goodsHaveCount = param1;
            return;
        }// end function

        private function get _nextPage() : Boolean
        {
            return this._1514791297_nextPage;
        }// end function

        private function get weaponArray() : ArrayCollection
        {
            return this._418598499weaponArray;
        }// end function

        private function _BuyTradeGoodsWindow_DataGridColumn4_i() : DataGridColumn
        {
            var _loc_1:* = new DataGridColumn();
            _BuyTradeGoodsWindow_DataGridColumn4 = _loc_1;
            _loc_1.dataField = "endurance";
            _loc_1.width = 60;
            _loc_1.setStyle("textAlign", "center");
            BindingManager.executeBindings(this, "_BuyTradeGoodsWindow_DataGridColumn4", _BuyTradeGoodsWindow_DataGridColumn4);
            return _loc_1;
        }// end function

        public function get weapon_data_list() : DataGrid
        {
            return this._513506736weapon_data_list;
        }// end function

        public function set buyMoney(param1:int) : void
        {
            _buyMoney = param1;
            return;
        }// end function

        private function _BuyTradeGoodsWindow_DataGridColumn12_i() : DataGridColumn
        {
            var _loc_1:* = new DataGridColumn();
            _BuyTradeGoodsWindow_DataGridColumn12 = _loc_1;
            _loc_1.dataField = "nameLabel";
            BindingManager.executeBindings(this, "_BuyTradeGoodsWindow_DataGridColumn12", _BuyTradeGoodsWindow_DataGridColumn12);
            return _loc_1;
        }// end function

        public function __material_data_list_itemClick(event:ListEvent) : void
        {
            viewData("material");
            return;
        }// end function

        private function set _currentPage(param1:int) : void
        {
            var _loc_2:* = this._20935191_currentPage;
            if (_loc_2 !== param1)
            {
                this._20935191_currentPage = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "_currentPage", _loc_2, param1));
            }
            return;
        }// end function

        public function __item_data_list_itemClick(event:ListEvent) : void
        {
            viewData("item");
            return;
        }// end function

        public function getPhonetic(param1:Object) : String
        {
            return String(param1.masterVO.phonetic);
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

        private function set _goodsHaveCount(param1:int) : void
        {
            var _loc_2:* = this._29431792_goodsHaveCount;
            if (_loc_2 !== param1)
            {
                this._29431792_goodsHaveCount = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "_goodsHaveCount", _loc_2, param1));
            }
            return;
        }// end function

        private function _BuyTradeGoodsWindow_DataGridColumn3_i() : DataGridColumn
        {
            var _loc_1:* = new DataGridColumn();
            _BuyTradeGoodsWindow_DataGridColumn3 = _loc_1;
            _loc_1.dataField = "instanceVO.hit";
            _loc_1.width = 60;
            _loc_1.setStyle("textAlign", "center");
            BindingManager.executeBindings(this, "_BuyTradeGoodsWindow_DataGridColumn3", _BuyTradeGoodsWindow_DataGridColumn3);
            return _loc_1;
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

        public function get item_data_list() : DataGrid
        {
            return this._1218335257item_data_list;
        }// end function

        private function viewData(param1:String) : void
        {
            _buyData = new Object();
            switch(param1)
            {
                case "weapon":
                {
                    _buyData = weapon_data_list.selectedItem;
                    _buyCount = 1;
                    _buyMoney = getPriceLabel(_buyData);
                    break;
                }
                case "armor":
                {
                    _buyData = armor_data_list.selectedItem;
                    _buyCount = 1;
                    _buyMoney = getPriceLabel(_buyData);
                    break;
                }
                case "accessory":
                {
                    _buyData = accessory_data_list.selectedItem;
                    _buyCount = 1;
                    _buyMoney = getPriceLabel(_buyData);
                    break;
                }
                case "item":
                {
                    _buyData = item_data_list.selectedItem;
                    _buyCount = 1;
                    _buyMoney = getPriceLabel(_buyData);
                    break;
                }
                case "material":
                {
                    _buyData = material_data_list.selectedItem;
                    _buyCount = _buyData.quantity;
                    _buyMoney = getPriceLabel(_buyData);
                    break;
                }
                default:
                {
                    break;
                }
            }
            _buyGoodsName = _buyData.nameLabel;
            return;
        }// end function

        private function get _goodsHaveCount() : int
        {
            return this._29431792_goodsHaveCount;
        }// end function

        private function get _swf_window() : MovieClipLoaderAsset
        {
            return this._1075873300_swf_window;
        }// end function

        private function get _currentPage() : int
        {
            return this._20935191_currentPage;
        }// end function

        private function set _buyGoodsName(param1:String) : void
        {
            var _loc_2:* = this._1033114374_buyGoodsName;
            if (_loc_2 !== param1)
            {
                this._1033114374_buyGoodsName = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "_buyGoodsName", _loc_2, param1));
            }
            return;
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

        public static function set watcherSetupUtil(param1:IWatcherSetupUtil) : void
        {
            BuyTradeGoodsWindow._watcherSetupUtil = param1;
            return;
        }// end function

    }
}
