package com.kbmj.viking.view.city
{
    import com.kbmj.viking.lib.*;
    import com.kbmj.viking.view.*;
    import com.kbmj.viking.vo.*;
    import flash.display.*;
    import flash.events.*;
    import flash.utils.*;
    import mx.binding.*;
    import mx.containers.*;
    import mx.controls.*;
    import mx.controls.dataGridClasses.*;
    import mx.core.*;
    import mx.events.*;

    public class SellTradeGoodsWindow extends PopupWindow implements IBindingClient
    {
        private var _1003877525textList:ViewStack;
        private var _1075873300_swf_window:MovieClipLoaderAsset;
        private var _1163035550materialPrice:NumericStepper;
        private var _417950128sellItemName:String;
        private var _sellableResource:ResourceVO;
        public var _SellTradeGoodsWindow_Label1:Label;
        public var _SellTradeGoodsWindow_Label2:Label;
        public var _SellTradeGoodsWindow_Label3:Label;
        public var _SellTradeGoodsWindow_Label6:Label;
        public var _SellTradeGoodsWindow_Label7:Label;
        var _bindingsByDestination:Object;
        public var _SellTradeGoodsWindow_DataGridColumn1:DataGridColumn;
        public var _SellTradeGoodsWindow_DataGridColumn2:DataGridColumn;
        public var _SellTradeGoodsWindow_DataGridColumn3:DataGridColumn;
        public var _SellTradeGoodsWindow_DataGridColumn4:DataGridColumn;
        public var _SellTradeGoodsWindow_DataGridColumn5:DataGridColumn;
        public var _SellTradeGoodsWindow_DataGridColumn6:DataGridColumn;
        public var _SellTradeGoodsWindow_DataGridColumn7:DataGridColumn;
        public var _SellTradeGoodsWindow_DataGridColumn8:DataGridColumn;
        public var _SellTradeGoodsWindow_DataGridColumn9:DataGridColumn;
        private var _279203731goodsPrice:NumericStepper;
        private var _1218643219_swf_close_window:MovieClipLoaderAsset;
        public var _SellTradeGoodsWindow_Text1:Text;
        public var _SellTradeGoodsWindow_Text2:Text;
        private var _522920908detailRenderer:ClassFactory;
        public var _SellTradeGoodsWindow_Image2:Image;
        public var _SellTradeGoodsWindow_Image4:Image;
        public var _SellTradeGoodsWindow_Image1:Image;
        public var _SellTradeGoodsWindow_Image3:Image;
        public var _SellTradeGoodsWindow_Canvas1:Canvas;
        public var _SellTradeGoodsWindow_Canvas2:Canvas;
        public var _SellTradeGoodsWindow_Canvas3:Canvas;
        public var _SellTradeGoodsWindow_Canvas5:Canvas;
        private var _550978329_swf_tab:MovieClipLoaderAsset;
        public var _SellTradeGoodsWindow_Image5:Image;
        public var _SellTradeGoodsWindow_Canvas4:Canvas;
        private var _477596482accessoryDataGrid:DataGrid;
        private var numericStepper:NumericStepper;
        private var _90913087_gold:int;
        private var _sellMaterialQuantity:int;
        private var _1299170355_armors:Array;
        private var _1177280081itemList:ViewStack;
        private var _713414504_weapons:Array;
        private var _598862126materialQuantity:NumericStepper;
        public var _SellTradeGoodsWindow_Box1:Box;
        public var _SellTradeGoodsWindow_Box2:Box;
        public var _SellTradeGoodsWindow_Box3:Box;
        public var _SellTradeGoodsWindow_Box4:Box;
        public var _SellTradeGoodsWindow_Box5:Box;
        private var _1193840764_swf_close:MovieClipLoaderAsset;
        private var _903828556weaponDataGrid:DataGrid;
        private var _1639710351_accessories:Array;
        private var _sellData:Object;
        private var equipmentDetail:EquipmentDetail;
        private var _1820148649materialDataGrid:DataGrid;
        public var weaponDetail:WeaponDetail;
        var _watchers:Array;
        private var _807781715_materials:Array;
        private var _sellPrice:int;
        private var _1658466019_swf_exhibit:MovieClipLoaderAsset;
        private var _1877858749itemDataGrid:DataGrid;
        public var _SellTradeGoodsWindow_DataGridColumn10:DataGridColumn;
        public var _SellTradeGoodsWindow_DataGridColumn11:DataGridColumn;
        public var _SellTradeGoodsWindow_DataGridColumn12:DataGridColumn;
        public var _SellTradeGoodsWindow_DataGridColumn13:DataGridColumn;
        public var _SellTradeGoodsWindow_DataGridColumn14:DataGridColumn;
        public var _SellTradeGoodsWindow_DataGridColumn15:DataGridColumn;
        public var _SellTradeGoodsWindow_DataGridColumn16:DataGridColumn;
        public var _SellTradeGoodsWindow_DataGridColumn17:DataGridColumn;
        public var _SellTradeGoodsWindow_DataGridColumn18:DataGridColumn;
        public var _SellTradeGoodsWindow_DataGridColumn19:DataGridColumn;
        public var _SellTradeGoodsWindow_DataGridColumn20:DataGridColumn;
        public var _SellTradeGoodsWindow_DataGridColumn21:DataGridColumn;
        var _bindingsBeginWithWord:Object;
        private var _1830150033armorDataGrid:DataGrid;
        private var _1474671935_items:Array;
        var _bindings:Array;
        private var _documentDescriptor_:UIComponentDescriptor;
        private static const WINDOW_X:int = 20;
        private static const WINDOW_Y:int = 20;
        private static const BUTTON_X:int = 325;
        private static const BUTTON_Y:int = 490;
        private static var _watcherSetupUtil:IWatcherSetupUtil;
        public static const GOODS_SELL:String = "goodsSell";
        public static const NAME:String = "SellTradeGoodsWindow";
        private static const WINDOW_HT:int = 520;
        private static const WINDOW_WD:int = 720;

        public function SellTradeGoodsWindow()
        {
            _documentDescriptor_ = new UIComponentDescriptor({type:PopupWindow, propertiesFactory:function () : Object
            {
                return {width:760, height:560, childDescriptors:[new UIComponentDescriptor({type:Image, id:"_SellTradeGoodsWindow_Image1"}), new UIComponentDescriptor({type:Text, id:"_SellTradeGoodsWindow_Text1", propertiesFactory:function () : Object
                {
                    return {styleName:"DealTitle"};
                }// end function
                }), new UIComponentDescriptor({type:ViewStack, id:"itemList", propertiesFactory:function () : Object
                {
                    return {width:760, height:560, childDescriptors:[new UIComponentDescriptor({type:Canvas, id:"_SellTradeGoodsWindow_Canvas1", propertiesFactory:function () : Object
                    {
                        return {childDescriptors:[new UIComponentDescriptor({type:Box, id:"_SellTradeGoodsWindow_Box1", propertiesFactory:function () : Object
                        {
                            return {y:108, childDescriptors:[new UIComponentDescriptor({type:DataGrid, id:"weaponDataGrid", events:{click:"__weaponDataGrid_click"}, propertiesFactory:function () : Object
                            {
                                return {rowCount:12, rowHeight:26, styleName:"DataGridBase", sortableColumns:false, columns:[_SellTradeGoodsWindow_DataGridColumn1_i(), _SellTradeGoodsWindow_DataGridColumn2_i(), _SellTradeGoodsWindow_DataGridColumn3_i(), _SellTradeGoodsWindow_DataGridColumn4_i(), _SellTradeGoodsWindow_DataGridColumn5_i()]};
                            }// end function
                            })]};
                        }// end function
                        })]};
                    }// end function
                    }), new UIComponentDescriptor({type:Canvas, id:"_SellTradeGoodsWindow_Canvas2", propertiesFactory:function () : Object
                    {
                        return {childDescriptors:[new UIComponentDescriptor({type:Box, id:"_SellTradeGoodsWindow_Box2", propertiesFactory:function () : Object
                        {
                            return {y:108, childDescriptors:[new UIComponentDescriptor({type:DataGrid, id:"armorDataGrid", events:{click:"__armorDataGrid_click"}, propertiesFactory:function () : Object
                            {
                                return {rowCount:12, rowHeight:26, styleName:"DataGridBase", sortableColumns:false, columns:[_SellTradeGoodsWindow_DataGridColumn6_i(), _SellTradeGoodsWindow_DataGridColumn7_i(), _SellTradeGoodsWindow_DataGridColumn8_i(), _SellTradeGoodsWindow_DataGridColumn9_i(), _SellTradeGoodsWindow_DataGridColumn10_i(), _SellTradeGoodsWindow_DataGridColumn11_i()]};
                            }// end function
                            })]};
                        }// end function
                        })]};
                    }// end function
                    }), new UIComponentDescriptor({type:Canvas, id:"_SellTradeGoodsWindow_Canvas3", propertiesFactory:function () : Object
                    {
                        return {childDescriptors:[new UIComponentDescriptor({type:Box, id:"_SellTradeGoodsWindow_Box3", propertiesFactory:function () : Object
                        {
                            return {y:108, childDescriptors:[new UIComponentDescriptor({type:DataGrid, id:"accessoryDataGrid", events:{click:"__accessoryDataGrid_click"}, propertiesFactory:function () : Object
                            {
                                return {rowCount:12, rowHeight:26, styleName:"DataGridBase", sortableColumns:false, columns:[_SellTradeGoodsWindow_DataGridColumn12_i(), _SellTradeGoodsWindow_DataGridColumn13_i(), _SellTradeGoodsWindow_DataGridColumn14_i()]};
                            }// end function
                            })]};
                        }// end function
                        })]};
                    }// end function
                    }), new UIComponentDescriptor({type:Canvas, id:"_SellTradeGoodsWindow_Canvas4", propertiesFactory:function () : Object
                    {
                        return {childDescriptors:[new UIComponentDescriptor({type:Box, id:"_SellTradeGoodsWindow_Box4", propertiesFactory:function () : Object
                        {
                            return {y:108, childDescriptors:[new UIComponentDescriptor({type:DataGrid, id:"itemDataGrid", events:{click:"__itemDataGrid_click"}, propertiesFactory:function () : Object
                            {
                                return {styleName:"DataGridBase", rowHeight:26, rowCount:12, sortableColumns:false, columns:[_SellTradeGoodsWindow_DataGridColumn15_i(), _SellTradeGoodsWindow_DataGridColumn16_i(), _SellTradeGoodsWindow_DataGridColumn17_i(), _SellTradeGoodsWindow_DataGridColumn18_i()]};
                            }// end function
                            })]};
                        }// end function
                        })]};
                    }// end function
                    }), new UIComponentDescriptor({type:Canvas, id:"_SellTradeGoodsWindow_Canvas5", propertiesFactory:function () : Object
                    {
                        return {childDescriptors:[new UIComponentDescriptor({type:Box, id:"_SellTradeGoodsWindow_Box5", propertiesFactory:function () : Object
                        {
                            return {y:108, childDescriptors:[new UIComponentDescriptor({type:DataGrid, id:"materialDataGrid", events:{click:"__materialDataGrid_click"}, propertiesFactory:function () : Object
                            {
                                return {rowCount:12, rowHeight:26, styleName:"DataGridBase", sortableColumns:false, columns:[_SellTradeGoodsWindow_DataGridColumn19_i(), _SellTradeGoodsWindow_DataGridColumn20_i(), _SellTradeGoodsWindow_DataGridColumn21_i()]};
                            }// end function
                            })]};
                        }// end function
                        })]};
                    }// end function
                    })]};
                }// end function
                }), new UIComponentDescriptor({type:Text, id:"_SellTradeGoodsWindow_Text2", stylesFactory:function () : void
                {
                    this.fontSize = 14;
                    return;
                }// end function
                }), new UIComponentDescriptor({type:Image, id:"_SellTradeGoodsWindow_Image2", events:{click:"___SellTradeGoodsWindow_Image2_click"}}), new UIComponentDescriptor({type:Image, id:"_SellTradeGoodsWindow_Image3", events:{click:"___SellTradeGoodsWindow_Image3_click"}}), new UIComponentDescriptor({type:ViewStack, id:"textList", propertiesFactory:function () : Object
                {
                    return {y:450, creationPolicy:"all", childDescriptors:[new UIComponentDescriptor({type:HBox, stylesFactory:function () : void
                    {
                        this.horizontalAlign = "center";
                        return;
                    }// end function
                    , propertiesFactory:function () : Object
                    {
                        return {childDescriptors:[new UIComponentDescriptor({type:Label, id:"_SellTradeGoodsWindow_Label1", stylesFactory:function () : void
                        {
                            this.fontSize = 14;
                            return;
                        }// end function
                        }), new UIComponentDescriptor({type:NumericStepper, id:"goodsPrice", stylesFactory:function () : void
                        {
                            this.textAlign = "right";
                            this.cornerRadius = 0;
                            this.borderColor = 10058583;
                            this.iconColor = 5318420;
                            this.color = 734012;
                            this.themeColor = 16737843;
                            return;
                        }// end function
                        , propertiesFactory:function () : Object
                        {
                            return {minimum:0, maximum:9999999, value:0, width:80};
                        }// end function
                        }), new UIComponentDescriptor({type:Label, id:"_SellTradeGoodsWindow_Label2", stylesFactory:function () : void
                        {
                            this.fontSize = 14;
                            return;
                        }// end function
                        })]};
                    }// end function
                    }), new UIComponentDescriptor({type:HBox, stylesFactory:function () : void
                    {
                        this.horizontalAlign = "center";
                        return;
                    }// end function
                    , propertiesFactory:function () : Object
                    {
                        return {childDescriptors:[new UIComponentDescriptor({type:Label, id:"_SellTradeGoodsWindow_Label3", stylesFactory:function () : void
                        {
                            this.fontSize = 14;
                            return;
                        }// end function
                        }), new UIComponentDescriptor({type:Label, stylesFactory:function () : void
                        {
                            this.fontSize = 14;
                            return;
                        }// end function
                        , propertiesFactory:function () : Object
                        {
                            return {text:"を"};
                        }// end function
                        }), new UIComponentDescriptor({type:NumericStepper, id:"materialQuantity", stylesFactory:function () : void
                        {
                            this.textAlign = "right";
                            this.cornerRadius = 0;
                            this.borderColor = 10058583;
                            this.iconColor = 5318420;
                            this.color = 734012;
                            this.themeColor = 16737843;
                            return;
                        }// end function
                        , propertiesFactory:function () : Object
                        {
                            return {minimum:0, maximum:9999, value:0, width:64};
                        }// end function
                        }), new UIComponentDescriptor({type:Label, stylesFactory:function () : void
                        {
                            this.fontSize = 14;
                            return;
                        }// end function
                        , propertiesFactory:function () : Object
                        {
                            return {text:"個"};
                        }// end function
                        }), new UIComponentDescriptor({type:NumericStepper, id:"materialPrice", stylesFactory:function () : void
                        {
                            this.textAlign = "right";
                            this.cornerRadius = 0;
                            this.borderColor = 10058583;
                            this.iconColor = 5318420;
                            this.color = 734012;
                            this.themeColor = 16737843;
                            return;
                        }// end function
                        , propertiesFactory:function () : Object
                        {
                            return {minimum:0, maximum:9999999, value:0, width:80};
                        }// end function
                        }), new UIComponentDescriptor({type:Label, id:"_SellTradeGoodsWindow_Label6", stylesFactory:function () : void
                        {
                            this.fontSize = 14;
                            return;
                        }// end function
                        })]};
                    }// end function
                    })]};
                }// end function
                }), new UIComponentDescriptor({type:Label, id:"_SellTradeGoodsWindow_Label7", stylesFactory:function () : void
                {
                    this.textAlign = "center";
                    this.fontSize = 14;
                    return;
                }// end function
                , propertiesFactory:function () : Object
                {
                    return {y:470};
                }// end function
                }), new UIComponentDescriptor({type:Image, id:"_SellTradeGoodsWindow_Image4", propertiesFactory:function () : Object
                {
                    return {y:80};
                }// end function
                }), new UIComponentDescriptor({type:Image, id:"_SellTradeGoodsWindow_Image5", events:{click:"___SellTradeGoodsWindow_Image5_click"}})]};
            }// end function
            });
            _1075873300_swf_window = new Viking.EmbedSwfWindowCommon();
            _550978329_swf_tab = new Viking.EmbedSwfTabCommon();
            _1658466019_swf_exhibit = new Viking.EmbedSwfButtonCommon();
            _1193840764_swf_close = new Viking.EmbedSwfButtonCommon();
            _1218643219_swf_close_window = new Viking.EmbedSwfButtonCloseWindow();
            equipmentDetail = new EquipmentDetail();
            weaponDetail = new WeaponDetail();
            _417950128sellItemName = new String();
            _bindings = [];
            _watchers = [];
            _bindingsByDestination = {};
            _bindingsBeginWithWord = {};
            mx_internal::_document = this;
            this.width = 760;
            this.height = 560;
            _SellTradeGoodsWindow_ClassFactory1_i();
            this.addEventListener("creationComplete", ___SellTradeGoodsWindow_PopupWindow1_creationComplete);
            return;
        }// end function

        private function _SellTradeGoodsWindow_DataGridColumn3_i() : DataGridColumn
        {
            var _loc_1:* = new DataGridColumn();
            _SellTradeGoodsWindow_DataGridColumn3 = _loc_1;
            _loc_1.dataField = "hit";
            _loc_1.width = 60;
            _loc_1.setStyle("textAlign", "center");
            BindingManager.executeBindings(this, "_SellTradeGoodsWindow_DataGridColumn3", _SellTradeGoodsWindow_DataGridColumn3);
            return _loc_1;
        }// end function

        public function get sellData() : Object
        {
            return _sellData;
        }// end function

        private function _SellTradeGoodsWindow_DataGridColumn15_i() : DataGridColumn
        {
            var _loc_1:* = new DataGridColumn();
            _SellTradeGoodsWindow_DataGridColumn15 = _loc_1;
            _loc_1.dataField = "nameLabel";
            _loc_1.width = 170;
            BindingManager.executeBindings(this, "_SellTradeGoodsWindow_DataGridColumn15", _SellTradeGoodsWindow_DataGridColumn15);
            return _loc_1;
        }// end function

        public function componentToolTip() : String
        {
            return Utils.i18n("generalShowDetail");
        }// end function

        public function ___SellTradeGoodsWindow_Image3_click(event:MouseEvent) : void
        {
            onCancel();
            return;
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

        private function get _armors() : Array
        {
            return this._1299170355_armors;
        }// end function

        public function get itemDataGrid() : DataGrid
        {
            return this._1877858749itemDataGrid;
        }// end function

        public function get sellMaterialQuantity() : int
        {
            return _sellMaterialQuantity;
        }// end function

        public function get weaponDataGrid() : DataGrid
        {
            return this._903828556weaponDataGrid;
        }// end function

        private function _SellTradeGoodsWindow_DataGridColumn2_i() : DataGridColumn
        {
            var _loc_1:* = new DataGridColumn();
            _SellTradeGoodsWindow_DataGridColumn2 = _loc_1;
            _loc_1.dataField = "damage";
            _loc_1.width = 60;
            _loc_1.setStyle("textAlign", "center");
            BindingManager.executeBindings(this, "_SellTradeGoodsWindow_DataGridColumn2", _SellTradeGoodsWindow_DataGridColumn2);
            return _loc_1;
        }// end function

        public function ___SellTradeGoodsWindow_PopupWindow1_creationComplete(event:FlexEvent) : void
        {
            init();
            return;
        }// end function

        public function get itemList() : ViewStack
        {
            return this._1177280081itemList;
        }// end function

        public function get materialPrice() : NumericStepper
        {
            return this._1163035550materialPrice;
        }// end function

        public function __accessoryDataGrid_click(event:MouseEvent) : void
        {
            onClick("accessory");
            return;
        }// end function

        public function __itemDataGrid_click(event:MouseEvent) : void
        {
            onClick("item");
            return;
        }// end function

        private function set _armors(param1:Array) : void
        {
            var _loc_2:* = this._1299170355_armors;
            if (_loc_2 !== param1)
            {
                this._1299170355_armors = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "_armors", _loc_2, param1));
            }
            return;
        }// end function

        public function get armorDataGrid() : DataGrid
        {
            return this._1830150033armorDataGrid;
        }// end function

        private function _SellTradeGoodsWindow_DataGridColumn14_i() : DataGridColumn
        {
            var _loc_1:* = new DataGridColumn();
            _SellTradeGoodsWindow_DataGridColumn14 = _loc_1;
            _loc_1.dataField = "description";
            BindingManager.executeBindings(this, "_SellTradeGoodsWindow_DataGridColumn14", _SellTradeGoodsWindow_DataGridColumn14);
            return _loc_1;
        }// end function

        public function get materialDataGrid() : DataGrid
        {
            return this._1820148649materialDataGrid;
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

        public function set accessoryDataGrid(param1:DataGrid) : void
        {
            var _loc_2:* = this._477596482accessoryDataGrid;
            if (_loc_2 !== param1)
            {
                this._477596482accessoryDataGrid = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "accessoryDataGrid", _loc_2, param1));
            }
            return;
        }// end function

        public function set itemDataGrid(param1:DataGrid) : void
        {
            var _loc_2:* = this._1877858749itemDataGrid;
            if (_loc_2 !== param1)
            {
                this._1877858749itemDataGrid = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "itemDataGrid", _loc_2, param1));
            }
            return;
        }// end function

        private function _SellTradeGoodsWindow_DataGridColumn1_i() : DataGridColumn
        {
            var _loc_1:* = new DataGridColumn();
            _SellTradeGoodsWindow_DataGridColumn1 = _loc_1;
            _loc_1.dataField = "nameLabel";
            _loc_1.width = 170;
            BindingManager.executeBindings(this, "_SellTradeGoodsWindow_DataGridColumn1", _SellTradeGoodsWindow_DataGridColumn1);
            return _loc_1;
        }// end function

        private function _SellTradeGoodsWindow_DataGridColumn9_i() : DataGridColumn
        {
            var _loc_1:* = new DataGridColumn();
            _SellTradeGoodsWindow_DataGridColumn9 = _loc_1;
            _loc_1.dataField = "avoidance";
            _loc_1.width = 50;
            _loc_1.setStyle("textAlign", "center");
            BindingManager.executeBindings(this, "_SellTradeGoodsWindow_DataGridColumn9", _SellTradeGoodsWindow_DataGridColumn9);
            return _loc_1;
        }// end function

        public function set weaponDataGrid(param1:DataGrid) : void
        {
            var _loc_2:* = this._903828556weaponDataGrid;
            if (_loc_2 !== param1)
            {
                this._903828556weaponDataGrid = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "weaponDataGrid", _loc_2, param1));
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

        private function _SellTradeGoodsWindow_bindingsSetup() : Array
        {
            var binding:Binding;
            var result:Array;
            binding = new Binding(this, function () : Object
            {
                return _swf_window;
            }// end function
            , function (param1:Object) : void
            {
                _SellTradeGoodsWindow_Image1.source = param1;
                return;
            }// end function
            , "_SellTradeGoodsWindow_Image1.source");
            result[0] = binding;
            binding = new Binding(this, function () : Number
            {
                return WINDOW_X;
            }// end function
            , function (param1:Number) : void
            {
                _SellTradeGoodsWindow_Text1.x = param1;
                return;
            }// end function
            , "_SellTradeGoodsWindow_Text1.x");
            result[1] = binding;
            binding = new Binding(this, function () : Number
            {
                return WINDOW_Y;
            }// end function
            , function (param1:Number) : void
            {
                _SellTradeGoodsWindow_Text1.y = param1;
                return;
            }// end function
            , "_SellTradeGoodsWindow_Text1.y");
            result[2] = binding;
            binding = new Binding(this, function () : Number
            {
                return WINDOW_WD;
            }// end function
            , function (param1:Number) : void
            {
                _SellTradeGoodsWindow_Text1.width = param1;
                return;
            }// end function
            , "_SellTradeGoodsWindow_Text1.width");
            result[3] = binding;
            binding = new Binding(this, function () : String
            {
                var _loc_1:* = Utils.i18n("SellTradeGoodsTitle");
                var _loc_2:* = _loc_1 == undefined ? (null) : (String(_loc_1));
                return _loc_2;
            }// end function
            , function (param1:String) : void
            {
                _SellTradeGoodsWindow_Text1.text = param1;
                return;
            }// end function
            , "_SellTradeGoodsWindow_Text1.text");
            result[4] = binding;
            binding = new Binding(this, function () : String
            {
                var _loc_1:* = Utils.i18n("generalWeapon");
                var _loc_2:* = _loc_1 == undefined ? (null) : (String(_loc_1));
                return _loc_2;
            }// end function
            , function (param1:String) : void
            {
                _SellTradeGoodsWindow_Canvas1.label = param1;
                return;
            }// end function
            , "_SellTradeGoodsWindow_Canvas1.label");
            result[5] = binding;
            binding = new Binding(this, function () : Number
            {
                return WINDOW_X + 20;
            }// end function
            , function (param1:Number) : void
            {
                _SellTradeGoodsWindow_Box1.x = param1;
                return;
            }// end function
            , "_SellTradeGoodsWindow_Box1.x");
            result[6] = binding;
            binding = new Binding(this, function () : Object
            {
                return _weapons;
            }// end function
            , function (param1:Object) : void
            {
                weaponDataGrid.dataProvider = param1;
                return;
            }// end function
            , "weaponDataGrid.dataProvider");
            result[7] = binding;
            binding = new Binding(this, function () : Number
            {
                return WINDOW_WD - 40;
            }// end function
            , function (param1:Number) : void
            {
                weaponDataGrid.width = param1;
                return;
            }// end function
            , "weaponDataGrid.width");
            result[8] = binding;
            binding = new Binding(this, function () : String
            {
                var _loc_1:* = Utils.i18n("changeEquipmentWeaponName");
                var _loc_2:* = _loc_1 == undefined ? (null) : (String(_loc_1));
                return _loc_2;
            }// end function
            , function (param1:String) : void
            {
                _SellTradeGoodsWindow_DataGridColumn1.headerText = param1;
                return;
            }// end function
            , "_SellTradeGoodsWindow_DataGridColumn1.headerText");
            result[9] = binding;
            binding = new Binding(this, function () : IFactory
            {
                return detailRenderer;
            }// end function
            , function (param1:IFactory) : void
            {
                _SellTradeGoodsWindow_DataGridColumn1.itemRenderer = param1;
                return;
            }// end function
            , "_SellTradeGoodsWindow_DataGridColumn1.itemRenderer");
            result[10] = binding;
            binding = new Binding(this, function () : String
            {
                var _loc_1:* = Utils.i18n("changeEquipmentAttack");
                var _loc_2:* = _loc_1 == undefined ? (null) : (String(_loc_1));
                return _loc_2;
            }// end function
            , function (param1:String) : void
            {
                _SellTradeGoodsWindow_DataGridColumn2.headerText = param1;
                return;
            }// end function
            , "_SellTradeGoodsWindow_DataGridColumn2.headerText");
            result[11] = binding;
            binding = new Binding(this, function () : String
            {
                var _loc_1:* = Utils.i18n("changeEquipmentHit");
                var _loc_2:* = _loc_1 == undefined ? (null) : (String(_loc_1));
                return _loc_2;
            }// end function
            , function (param1:String) : void
            {
                _SellTradeGoodsWindow_DataGridColumn3.headerText = param1;
                return;
            }// end function
            , "_SellTradeGoodsWindow_DataGridColumn3.headerText");
            result[12] = binding;
            binding = new Binding(this, function () : String
            {
                var _loc_1:* = Utils.i18n("changeEquipmentEndurance");
                var _loc_2:* = _loc_1 == undefined ? (null) : (String(_loc_1));
                return _loc_2;
            }// end function
            , function (param1:String) : void
            {
                _SellTradeGoodsWindow_DataGridColumn4.headerText = param1;
                return;
            }// end function
            , "_SellTradeGoodsWindow_DataGridColumn4.headerText");
            result[13] = binding;
            binding = new Binding(this, function () : String
            {
                var _loc_1:* = Utils.i18n("generalDescription");
                var _loc_2:* = _loc_1 == undefined ? (null) : (String(_loc_1));
                return _loc_2;
            }// end function
            , function (param1:String) : void
            {
                _SellTradeGoodsWindow_DataGridColumn5.headerText = param1;
                return;
            }// end function
            , "_SellTradeGoodsWindow_DataGridColumn5.headerText");
            result[14] = binding;
            binding = new Binding(this, function () : String
            {
                var _loc_1:* = Utils.i18n("generalEquipArmor");
                var _loc_2:* = _loc_1 == undefined ? (null) : (String(_loc_1));
                return _loc_2;
            }// end function
            , function (param1:String) : void
            {
                _SellTradeGoodsWindow_Canvas2.label = param1;
                return;
            }// end function
            , "_SellTradeGoodsWindow_Canvas2.label");
            result[15] = binding;
            binding = new Binding(this, function () : Number
            {
                return WINDOW_X + 20;
            }// end function
            , function (param1:Number) : void
            {
                _SellTradeGoodsWindow_Box2.x = param1;
                return;
            }// end function
            , "_SellTradeGoodsWindow_Box2.x");
            result[16] = binding;
            binding = new Binding(this, function () : Object
            {
                return _armors;
            }// end function
            , function (param1:Object) : void
            {
                armorDataGrid.dataProvider = param1;
                return;
            }// end function
            , "armorDataGrid.dataProvider");
            result[17] = binding;
            binding = new Binding(this, function () : Number
            {
                return WINDOW_WD - 40;
            }// end function
            , function (param1:Number) : void
            {
                armorDataGrid.width = param1;
                return;
            }// end function
            , "armorDataGrid.width");
            result[18] = binding;
            binding = new Binding(this, function () : String
            {
                var _loc_1:* = Utils.i18n("changeEquipmentArmorName");
                var _loc_2:* = _loc_1 == undefined ? (null) : (String(_loc_1));
                return _loc_2;
            }// end function
            , function (param1:String) : void
            {
                _SellTradeGoodsWindow_DataGridColumn6.headerText = param1;
                return;
            }// end function
            , "_SellTradeGoodsWindow_DataGridColumn6.headerText");
            result[19] = binding;
            binding = new Binding(this, function () : IFactory
            {
                return detailRenderer;
            }// end function
            , function (param1:IFactory) : void
            {
                _SellTradeGoodsWindow_DataGridColumn6.itemRenderer = param1;
                return;
            }// end function
            , "_SellTradeGoodsWindow_DataGridColumn6.itemRenderer");
            result[20] = binding;
            binding = new Binding(this, function () : String
            {
                var _loc_1:* = Utils.i18n("changeEquipmentDefense");
                var _loc_2:* = _loc_1 == undefined ? (null) : (String(_loc_1));
                return _loc_2;
            }// end function
            , function (param1:String) : void
            {
                _SellTradeGoodsWindow_DataGridColumn7.headerText = param1;
                return;
            }// end function
            , "_SellTradeGoodsWindow_DataGridColumn7.headerText");
            result[21] = binding;
            binding = new Binding(this, function () : String
            {
                var _loc_1:* = Utils.i18n("changeEquipmentMagicalDefense");
                var _loc_2:* = _loc_1 == undefined ? (null) : (String(_loc_1));
                return _loc_2;
            }// end function
            , function (param1:String) : void
            {
                _SellTradeGoodsWindow_DataGridColumn8.headerText = param1;
                return;
            }// end function
            , "_SellTradeGoodsWindow_DataGridColumn8.headerText");
            result[22] = binding;
            binding = new Binding(this, function () : String
            {
                var _loc_1:* = Utils.i18n("changeEquipmentAvoidance");
                var _loc_2:* = _loc_1 == undefined ? (null) : (String(_loc_1));
                return _loc_2;
            }// end function
            , function (param1:String) : void
            {
                _SellTradeGoodsWindow_DataGridColumn9.headerText = param1;
                return;
            }// end function
            , "_SellTradeGoodsWindow_DataGridColumn9.headerText");
            result[23] = binding;
            binding = new Binding(this, function () : String
            {
                var _loc_1:* = Utils.i18n("changeEquipmentEndurance");
                var _loc_2:* = _loc_1 == undefined ? (null) : (String(_loc_1));
                return _loc_2;
            }// end function
            , function (param1:String) : void
            {
                _SellTradeGoodsWindow_DataGridColumn10.headerText = param1;
                return;
            }// end function
            , "_SellTradeGoodsWindow_DataGridColumn10.headerText");
            result[24] = binding;
            binding = new Binding(this, function () : String
            {
                var _loc_1:* = Utils.i18n("generalDescription");
                var _loc_2:* = _loc_1 == undefined ? (null) : (String(_loc_1));
                return _loc_2;
            }// end function
            , function (param1:String) : void
            {
                _SellTradeGoodsWindow_DataGridColumn11.headerText = param1;
                return;
            }// end function
            , "_SellTradeGoodsWindow_DataGridColumn11.headerText");
            result[25] = binding;
            binding = new Binding(this, function () : String
            {
                var _loc_1:* = Utils.i18n("generalEquipAccessory");
                var _loc_2:* = _loc_1 == undefined ? (null) : (String(_loc_1));
                return _loc_2;
            }// end function
            , function (param1:String) : void
            {
                _SellTradeGoodsWindow_Canvas3.label = param1;
                return;
            }// end function
            , "_SellTradeGoodsWindow_Canvas3.label");
            result[26] = binding;
            binding = new Binding(this, function () : Number
            {
                return WINDOW_X + 20;
            }// end function
            , function (param1:Number) : void
            {
                _SellTradeGoodsWindow_Box3.x = param1;
                return;
            }// end function
            , "_SellTradeGoodsWindow_Box3.x");
            result[27] = binding;
            binding = new Binding(this, function () : Object
            {
                return _accessories;
            }// end function
            , function (param1:Object) : void
            {
                accessoryDataGrid.dataProvider = param1;
                return;
            }// end function
            , "accessoryDataGrid.dataProvider");
            result[28] = binding;
            binding = new Binding(this, function () : Number
            {
                return WINDOW_WD - 40;
            }// end function
            , function (param1:Number) : void
            {
                accessoryDataGrid.width = param1;
                return;
            }// end function
            , "accessoryDataGrid.width");
            result[29] = binding;
            binding = new Binding(this, function () : String
            {
                var _loc_1:* = Utils.i18n("changeEquipmentAccessoryName");
                var _loc_2:* = _loc_1 == undefined ? (null) : (String(_loc_1));
                return _loc_2;
            }// end function
            , function (param1:String) : void
            {
                _SellTradeGoodsWindow_DataGridColumn12.headerText = param1;
                return;
            }// end function
            , "_SellTradeGoodsWindow_DataGridColumn12.headerText");
            result[30] = binding;
            binding = new Binding(this, function () : IFactory
            {
                return detailRenderer;
            }// end function
            , function (param1:IFactory) : void
            {
                _SellTradeGoodsWindow_DataGridColumn12.itemRenderer = param1;
                return;
            }// end function
            , "_SellTradeGoodsWindow_DataGridColumn12.itemRenderer");
            result[31] = binding;
            binding = new Binding(this, function () : String
            {
                var _loc_1:* = Utils.i18n("changeEquipmentEffect");
                var _loc_2:* = _loc_1 == undefined ? (null) : (String(_loc_1));
                return _loc_2;
            }// end function
            , function (param1:String) : void
            {
                _SellTradeGoodsWindow_DataGridColumn13.headerText = param1;
                return;
            }// end function
            , "_SellTradeGoodsWindow_DataGridColumn13.headerText");
            result[32] = binding;
            binding = new Binding(this, function () : String
            {
                var _loc_1:* = Utils.i18n("generalDescription");
                var _loc_2:* = _loc_1 == undefined ? (null) : (String(_loc_1));
                return _loc_2;
            }// end function
            , function (param1:String) : void
            {
                _SellTradeGoodsWindow_DataGridColumn14.headerText = param1;
                return;
            }// end function
            , "_SellTradeGoodsWindow_DataGridColumn14.headerText");
            result[33] = binding;
            binding = new Binding(this, function () : String
            {
                var _loc_1:* = Utils.i18n("generalMaterial");
                var _loc_2:* = _loc_1 == undefined ? (null) : (String(_loc_1));
                return _loc_2;
            }// end function
            , function (param1:String) : void
            {
                _SellTradeGoodsWindow_Canvas4.label = param1;
                return;
            }// end function
            , "_SellTradeGoodsWindow_Canvas4.label");
            result[34] = binding;
            binding = new Binding(this, function () : Number
            {
                return WINDOW_X + 20;
            }// end function
            , function (param1:Number) : void
            {
                _SellTradeGoodsWindow_Box4.x = param1;
                return;
            }// end function
            , "_SellTradeGoodsWindow_Box4.x");
            result[35] = binding;
            binding = new Binding(this, function () : Object
            {
                return _items;
            }// end function
            , function (param1:Object) : void
            {
                itemDataGrid.dataProvider = param1;
                return;
            }// end function
            , "itemDataGrid.dataProvider");
            result[36] = binding;
            binding = new Binding(this, function () : Number
            {
                return WINDOW_WD - 40;
            }// end function
            , function (param1:Number) : void
            {
                itemDataGrid.width = param1;
                return;
            }// end function
            , "itemDataGrid.width");
            result[37] = binding;
            binding = new Binding(this, function () : String
            {
                var _loc_1:* = Utils.i18n("changeEquipmentItemName");
                var _loc_2:* = _loc_1 == undefined ? (null) : (String(_loc_1));
                return _loc_2;
            }// end function
            , function (param1:String) : void
            {
                _SellTradeGoodsWindow_DataGridColumn15.headerText = param1;
                return;
            }// end function
            , "_SellTradeGoodsWindow_DataGridColumn15.headerText");
            result[38] = binding;
            binding = new Binding(this, function () : IFactory
            {
                return detailRenderer;
            }// end function
            , function (param1:IFactory) : void
            {
                _SellTradeGoodsWindow_DataGridColumn15.itemRenderer = param1;
                return;
            }// end function
            , "_SellTradeGoodsWindow_DataGridColumn15.itemRenderer");
            result[39] = binding;
            binding = new Binding(this, function () : String
            {
                var _loc_1:* = Utils.i18n("changeEquipmentEndurance");
                var _loc_2:* = _loc_1 == undefined ? (null) : (String(_loc_1));
                return _loc_2;
            }// end function
            , function (param1:String) : void
            {
                _SellTradeGoodsWindow_DataGridColumn16.headerText = param1;
                return;
            }// end function
            , "_SellTradeGoodsWindow_DataGridColumn16.headerText");
            result[40] = binding;
            binding = new Binding(this, function () : String
            {
                var _loc_1:* = Utils.i18n("changeEquipmentEffect");
                var _loc_2:* = _loc_1 == undefined ? (null) : (String(_loc_1));
                return _loc_2;
            }// end function
            , function (param1:String) : void
            {
                _SellTradeGoodsWindow_DataGridColumn17.headerText = param1;
                return;
            }// end function
            , "_SellTradeGoodsWindow_DataGridColumn17.headerText");
            result[41] = binding;
            binding = new Binding(this, function () : String
            {
                var _loc_1:* = Utils.i18n("generalDescription");
                var _loc_2:* = _loc_1 == undefined ? (null) : (String(_loc_1));
                return _loc_2;
            }// end function
            , function (param1:String) : void
            {
                _SellTradeGoodsWindow_DataGridColumn18.headerText = param1;
                return;
            }// end function
            , "_SellTradeGoodsWindow_DataGridColumn18.headerText");
            result[42] = binding;
            binding = new Binding(this, function () : String
            {
                var _loc_1:* = Utils.i18n("confirmBuildMaterial");
                var _loc_2:* = _loc_1 == undefined ? (null) : (String(_loc_1));
                return _loc_2;
            }// end function
            , function (param1:String) : void
            {
                _SellTradeGoodsWindow_Canvas5.label = param1;
                return;
            }// end function
            , "_SellTradeGoodsWindow_Canvas5.label");
            result[43] = binding;
            binding = new Binding(this, function () : Number
            {
                return WINDOW_X + 20;
            }// end function
            , function (param1:Number) : void
            {
                _SellTradeGoodsWindow_Box5.x = param1;
                return;
            }// end function
            , "_SellTradeGoodsWindow_Box5.x");
            result[44] = binding;
            binding = new Binding(this, function () : Object
            {
                return _materials;
            }// end function
            , function (param1:Object) : void
            {
                materialDataGrid.dataProvider = param1;
                return;
            }// end function
            , "materialDataGrid.dataProvider");
            result[45] = binding;
            binding = new Binding(this, function () : Number
            {
                return WINDOW_WD - 40;
            }// end function
            , function (param1:Number) : void
            {
                materialDataGrid.width = param1;
                return;
            }// end function
            , "materialDataGrid.width");
            result[46] = binding;
            binding = new Binding(this, function () : String
            {
                var _loc_1:* = Utils.i18n("generalMaterilalName");
                var _loc_2:* = _loc_1 == undefined ? (null) : (String(_loc_1));
                return _loc_2;
            }// end function
            , function (param1:String) : void
            {
                _SellTradeGoodsWindow_DataGridColumn19.headerText = param1;
                return;
            }// end function
            , "_SellTradeGoodsWindow_DataGridColumn19.headerText");
            result[47] = binding;
            binding = new Binding(this, function () : IFactory
            {
                return detailRenderer;
            }// end function
            , function (param1:IFactory) : void
            {
                _SellTradeGoodsWindow_DataGridColumn19.itemRenderer = param1;
                return;
            }// end function
            , "_SellTradeGoodsWindow_DataGridColumn19.itemRenderer");
            result[48] = binding;
            binding = new Binding(this, function () : String
            {
                var _loc_1:* = Utils.i18n("generalQuantity");
                var _loc_2:* = _loc_1 == undefined ? (null) : (String(_loc_1));
                return _loc_2;
            }// end function
            , function (param1:String) : void
            {
                _SellTradeGoodsWindow_DataGridColumn20.headerText = param1;
                return;
            }// end function
            , "_SellTradeGoodsWindow_DataGridColumn20.headerText");
            result[49] = binding;
            binding = new Binding(this, function () : String
            {
                var _loc_1:* = Utils.i18n("generalDescription");
                var _loc_2:* = _loc_1 == undefined ? (null) : (String(_loc_1));
                return _loc_2;
            }// end function
            , function (param1:String) : void
            {
                _SellTradeGoodsWindow_DataGridColumn21.headerText = param1;
                return;
            }// end function
            , "_SellTradeGoodsWindow_DataGridColumn21.headerText");
            result[50] = binding;
            binding = new Binding(this, function () : String
            {
                var _loc_1:* = Utils.i18n("generalPossessionMoney") + ":" + _gold;
                var _loc_2:* = _loc_1 == undefined ? (null) : (String(_loc_1));
                return _loc_2;
            }// end function
            , function (param1:String) : void
            {
                _SellTradeGoodsWindow_Text2.text = param1;
                return;
            }// end function
            , "_SellTradeGoodsWindow_Text2.text");
            result[51] = binding;
            binding = new Binding(this, function () : Number
            {
                return WINDOW_X + 20;
            }// end function
            , function (param1:Number) : void
            {
                _SellTradeGoodsWindow_Text2.x = param1;
                return;
            }// end function
            , "_SellTradeGoodsWindow_Text2.x");
            result[52] = binding;
            binding = new Binding(this, function () : Number
            {
                return WINDOW_Y + 35;
            }// end function
            , function (param1:Number) : void
            {
                _SellTradeGoodsWindow_Text2.y = param1;
                return;
            }// end function
            , "_SellTradeGoodsWindow_Text2.y");
            result[53] = binding;
            binding = new Binding(this, function () : Number
            {
                return BUTTON_X - 65;
            }// end function
            , function (param1:Number) : void
            {
                _SellTradeGoodsWindow_Image2.x = param1;
                return;
            }// end function
            , "_SellTradeGoodsWindow_Image2.x");
            result[54] = binding;
            binding = new Binding(this, function () : Number
            {
                return BUTTON_Y;
            }// end function
            , function (param1:Number) : void
            {
                _SellTradeGoodsWindow_Image2.y = param1;
                return;
            }// end function
            , "_SellTradeGoodsWindow_Image2.y");
            result[55] = binding;
            binding = new Binding(this, function () : Object
            {
                return _swf_exhibit;
            }// end function
            , function (param1:Object) : void
            {
                _SellTradeGoodsWindow_Image2.source = param1;
                return;
            }// end function
            , "_SellTradeGoodsWindow_Image2.source");
            result[56] = binding;
            binding = new Binding(this, function () : Number
            {
                return BUTTON_X + 65;
            }// end function
            , function (param1:Number) : void
            {
                _SellTradeGoodsWindow_Image3.x = param1;
                return;
            }// end function
            , "_SellTradeGoodsWindow_Image3.x");
            result[57] = binding;
            binding = new Binding(this, function () : Number
            {
                return BUTTON_Y;
            }// end function
            , function (param1:Number) : void
            {
                _SellTradeGoodsWindow_Image3.y = param1;
                return;
            }// end function
            , "_SellTradeGoodsWindow_Image3.y");
            result[58] = binding;
            binding = new Binding(this, function () : Object
            {
                return _swf_close;
            }// end function
            , function (param1:Object) : void
            {
                _SellTradeGoodsWindow_Image3.source = param1;
                return;
            }// end function
            , "_SellTradeGoodsWindow_Image3.source");
            result[59] = binding;
            binding = new Binding(this, function () : Number
            {
                return WINDOW_X + 20;
            }// end function
            , function (param1:Number) : void
            {
                textList.x = param1;
                return;
            }// end function
            , "textList.x");
            result[60] = binding;
            binding = new Binding(this, function () : Number
            {
                return WINDOW_WD - 40;
            }// end function
            , function (param1:Number) : void
            {
                textList.width = param1;
                return;
            }// end function
            , "textList.width");
            result[61] = binding;
            binding = new Binding(this, function () : Boolean
            {
                return sellItemName == "" ? (false) : (true);
            }// end function
            , function (param1:Boolean) : void
            {
                textList.visible = param1;
                return;
            }// end function
            , "textList.visible");
            result[62] = binding;
            binding = new Binding(this, function () : String
            {
                var _loc_1:* = Utils.i18n("SellTradeGoodsConf1", sellItemName);
                var _loc_2:* = _loc_1 == undefined ? (null) : (String(_loc_1));
                return _loc_2;
            }// end function
            , function (param1:String) : void
            {
                _SellTradeGoodsWindow_Label1.text = param1;
                return;
            }// end function
            , "_SellTradeGoodsWindow_Label1.text");
            result[63] = binding;
            binding = new Binding(this, function () : String
            {
                var _loc_1:* = Utils.i18n("SellTradeGoodsConf2");
                var _loc_2:* = _loc_1 == undefined ? (null) : (String(_loc_1));
                return _loc_2;
            }// end function
            , function (param1:String) : void
            {
                _SellTradeGoodsWindow_Label2.text = param1;
                return;
            }// end function
            , "_SellTradeGoodsWindow_Label2.text");
            result[64] = binding;
            binding = new Binding(this, function () : String
            {
                var _loc_1:* = sellItemName;
                var _loc_2:* = _loc_1 == undefined ? (null) : (String(_loc_1));
                return _loc_2;
            }// end function
            , function (param1:String) : void
            {
                _SellTradeGoodsWindow_Label3.text = param1;
                return;
            }// end function
            , "_SellTradeGoodsWindow_Label3.text");
            result[65] = binding;
            binding = new Binding(this, function () : String
            {
                var _loc_1:* = Utils.i18n("SellTradeGoodsConf2");
                var _loc_2:* = _loc_1 == undefined ? (null) : (String(_loc_1));
                return _loc_2;
            }// end function
            , function (param1:String) : void
            {
                _SellTradeGoodsWindow_Label6.text = param1;
                return;
            }// end function
            , "_SellTradeGoodsWindow_Label6.text");
            result[66] = binding;
            binding = new Binding(this, function () : Number
            {
                return WINDOW_X + 20;
            }// end function
            , function (param1:Number) : void
            {
                _SellTradeGoodsWindow_Label7.x = param1;
                return;
            }// end function
            , "_SellTradeGoodsWindow_Label7.x");
            result[67] = binding;
            binding = new Binding(this, function () : Number
            {
                return WINDOW_WD - 40;
            }// end function
            , function (param1:Number) : void
            {
                _SellTradeGoodsWindow_Label7.width = param1;
                return;
            }// end function
            , "_SellTradeGoodsWindow_Label7.width");
            result[68] = binding;
            binding = new Binding(this, function () : String
            {
                var _loc_1:* = Utils.i18n("SellTradeGoodsCaution");
                var _loc_2:* = _loc_1 == undefined ? (null) : (String(_loc_1));
                return _loc_2;
            }// end function
            , function (param1:String) : void
            {
                _SellTradeGoodsWindow_Label7.text = param1;
                return;
            }// end function
            , "_SellTradeGoodsWindow_Label7.text");
            result[69] = binding;
            binding = new Binding(this, function () : Number
            {
                return WINDOW_X + 20;
            }// end function
            , function (param1:Number) : void
            {
                _SellTradeGoodsWindow_Image4.x = param1;
                return;
            }// end function
            , "_SellTradeGoodsWindow_Image4.x");
            result[70] = binding;
            binding = new Binding(this, function () : Object
            {
                return _swf_tab;
            }// end function
            , function (param1:Object) : void
            {
                _SellTradeGoodsWindow_Image4.source = param1;
                return;
            }// end function
            , "_SellTradeGoodsWindow_Image4.source");
            result[71] = binding;
            binding = new Binding(this, function () : Number
            {
                return WINDOW_X + WINDOW_WD - 25;
            }// end function
            , function (param1:Number) : void
            {
                _SellTradeGoodsWindow_Image5.x = param1;
                return;
            }// end function
            , "_SellTradeGoodsWindow_Image5.x");
            result[72] = binding;
            binding = new Binding(this, function () : Number
            {
                return WINDOW_Y;
            }// end function
            , function (param1:Number) : void
            {
                _SellTradeGoodsWindow_Image5.y = param1;
                return;
            }// end function
            , "_SellTradeGoodsWindow_Image5.y");
            result[73] = binding;
            binding = new Binding(this, function () : Object
            {
                return _swf_close_window;
            }// end function
            , function (param1:Object) : void
            {
                _SellTradeGoodsWindow_Image5.source = param1;
                return;
            }// end function
            , "_SellTradeGoodsWindow_Image5.source");
            result[74] = binding;
            return result;
        }// end function

        private function _SellTradeGoodsWindow_DataGridColumn13_i() : DataGridColumn
        {
            var _loc_1:* = new DataGridColumn();
            _SellTradeGoodsWindow_DataGridColumn13 = _loc_1;
            _loc_1.dataField = "effectLabelAll";
            _loc_1.width = 180;
            _loc_1.setStyle("textAlign", "center");
            BindingManager.executeBindings(this, "_SellTradeGoodsWindow_DataGridColumn13", _SellTradeGoodsWindow_DataGridColumn13);
            return _loc_1;
        }// end function

        private function get _weapons() : Array
        {
            return this._713414504_weapons;
        }// end function

        private function get _materials() : Array
        {
            return this._807781715_materials;
        }// end function

        public function set materialDataGrid(param1:DataGrid) : void
        {
            var _loc_2:* = this._1820148649materialDataGrid;
            if (_loc_2 !== param1)
            {
                this._1820148649materialDataGrid = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "materialDataGrid", _loc_2, param1));
            }
            return;
        }// end function

        public function ___SellTradeGoodsWindow_Image5_click(event:MouseEvent) : void
        {
            onCancel();
            return;
        }// end function

        public function set gold(param1:int) : void
        {
            _gold = param1;
            return;
        }// end function

        private function _SellTradeGoodsWindow_DataGridColumn8_i() : DataGridColumn
        {
            var _loc_1:* = new DataGridColumn();
            _SellTradeGoodsWindow_DataGridColumn8 = _loc_1;
            _loc_1.dataField = "magicalDefense";
            _loc_1.width = 40;
            _loc_1.setStyle("textAlign", "center");
            BindingManager.executeBindings(this, "_SellTradeGoodsWindow_DataGridColumn8", _SellTradeGoodsWindow_DataGridColumn8);
            return _loc_1;
        }// end function

        public function get materialQuantity() : NumericStepper
        {
            return this._598862126materialQuantity;
        }// end function

        public function set materialPrice(param1:NumericStepper) : void
        {
            var _loc_2:* = this._1163035550materialPrice;
            if (_loc_2 !== param1)
            {
                this._1163035550materialPrice = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "materialPrice", _loc_2, param1));
            }
            return;
        }// end function

        public function set textList(param1:ViewStack) : void
        {
            var _loc_2:* = this._1003877525textList;
            if (_loc_2 !== param1)
            {
                this._1003877525textList = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "textList", _loc_2, param1));
            }
            return;
        }// end function

        private function set _accessories(param1:Array) : void
        {
            var _loc_2:* = this._1639710351_accessories;
            if (_loc_2 !== param1)
            {
                this._1639710351_accessories = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "_accessories", _loc_2, param1));
            }
            return;
        }// end function

        private function get _items() : Array
        {
            return this._1474671935_items;
        }// end function

        private function _SellTradeGoodsWindow_DataGridColumn12_i() : DataGridColumn
        {
            var _loc_1:* = new DataGridColumn();
            _SellTradeGoodsWindow_DataGridColumn12 = _loc_1;
            _loc_1.dataField = "nameLabel";
            _loc_1.width = 170;
            BindingManager.executeBindings(this, "_SellTradeGoodsWindow_DataGridColumn12", _SellTradeGoodsWindow_DataGridColumn12);
            return _loc_1;
        }// end function

        public function set armorDataGrid(param1:DataGrid) : void
        {
            var _loc_2:* = this._1830150033armorDataGrid;
            if (_loc_2 !== param1)
            {
                this._1830150033armorDataGrid = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "armorDataGrid", _loc_2, param1));
            }
            return;
        }// end function

        private function onClick(param1:String) : void
        {
            _sellData = new Object();
            switch(param1)
            {
                case "weapon":
                {
                    if (weaponDataGrid.selectedItem)
                    {
                        _sellData = weaponDataGrid.selectedItem;
                        sellItemName = _sellData.nameLabel;
                    }
                    break;
                }
                case "armor":
                {
                    if (armorDataGrid.selectedItem)
                    {
                        _sellData = armorDataGrid.selectedItem;
                        sellItemName = _sellData.nameLabel;
                    }
                    break;
                }
                case "accessory":
                {
                    if (accessoryDataGrid.selectedItem)
                    {
                        _sellData = accessoryDataGrid.selectedItem;
                        sellItemName = _sellData.nameLabel;
                    }
                    break;
                }
                case "item":
                {
                    if (itemDataGrid.selectedItem)
                    {
                        _sellData = itemDataGrid.selectedItem;
                        sellItemName = _sellData.nameLabel;
                    }
                    break;
                }
                case "material":
                {
                    if (materialDataGrid.selectedItem)
                    {
                        _sellData = materialDataGrid.selectedItem;
                        sellItemName = _sellData.nameLabel;
                        materialQuantity.maximum = _sellData.quantity;
                    }
                    break;
                }
                default:
                {
                    break;
                }
            }
            resetValue();
            return;
        }// end function

        public function ___SellTradeGoodsWindow_Image2_click(event:MouseEvent) : void
        {
            onSell();
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

        private function _SellTradeGoodsWindow_bindingExprs() : void
        {
            var _loc_1:* = undefined;
            _loc_1 = _swf_window;
            _loc_1 = WINDOW_X;
            _loc_1 = WINDOW_Y;
            _loc_1 = WINDOW_WD;
            _loc_1 = Utils.i18n("SellTradeGoodsTitle");
            _loc_1 = Utils.i18n("generalWeapon");
            _loc_1 = WINDOW_X + 20;
            _loc_1 = _weapons;
            _loc_1 = WINDOW_WD - 40;
            _loc_1 = Utils.i18n("changeEquipmentWeaponName");
            _loc_1 = detailRenderer;
            _loc_1 = Utils.i18n("changeEquipmentAttack");
            _loc_1 = Utils.i18n("changeEquipmentHit");
            _loc_1 = Utils.i18n("changeEquipmentEndurance");
            _loc_1 = Utils.i18n("generalDescription");
            _loc_1 = Utils.i18n("generalEquipArmor");
            _loc_1 = WINDOW_X + 20;
            _loc_1 = _armors;
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
            _loc_1 = _accessories;
            _loc_1 = WINDOW_WD - 40;
            _loc_1 = Utils.i18n("changeEquipmentAccessoryName");
            _loc_1 = detailRenderer;
            _loc_1 = Utils.i18n("changeEquipmentEffect");
            _loc_1 = Utils.i18n("generalDescription");
            _loc_1 = Utils.i18n("generalMaterial");
            _loc_1 = WINDOW_X + 20;
            _loc_1 = _items;
            _loc_1 = WINDOW_WD - 40;
            _loc_1 = Utils.i18n("changeEquipmentItemName");
            _loc_1 = detailRenderer;
            _loc_1 = Utils.i18n("changeEquipmentEndurance");
            _loc_1 = Utils.i18n("changeEquipmentEffect");
            _loc_1 = Utils.i18n("generalDescription");
            _loc_1 = Utils.i18n("confirmBuildMaterial");
            _loc_1 = WINDOW_X + 20;
            _loc_1 = _materials;
            _loc_1 = WINDOW_WD - 40;
            _loc_1 = Utils.i18n("generalMaterilalName");
            _loc_1 = detailRenderer;
            _loc_1 = Utils.i18n("generalQuantity");
            _loc_1 = Utils.i18n("generalDescription");
            _loc_1 = Utils.i18n("generalPossessionMoney") + ":" + _gold;
            _loc_1 = WINDOW_X + 20;
            _loc_1 = WINDOW_Y + 35;
            _loc_1 = BUTTON_X - 65;
            _loc_1 = BUTTON_Y;
            _loc_1 = _swf_exhibit;
            _loc_1 = BUTTON_X + 65;
            _loc_1 = BUTTON_Y;
            _loc_1 = _swf_close;
            _loc_1 = WINDOW_X + 20;
            _loc_1 = WINDOW_WD - 40;
            _loc_1 = sellItemName == "" ? (false) : (true);
            _loc_1 = Utils.i18n("SellTradeGoodsConf1", sellItemName);
            _loc_1 = Utils.i18n("SellTradeGoodsConf2");
            _loc_1 = sellItemName;
            _loc_1 = Utils.i18n("SellTradeGoodsConf2");
            _loc_1 = WINDOW_X + 20;
            _loc_1 = WINDOW_WD - 40;
            _loc_1 = Utils.i18n("SellTradeGoodsCaution");
            _loc_1 = WINDOW_X + 20;
            _loc_1 = _swf_tab;
            _loc_1 = WINDOW_X + WINDOW_WD - 25;
            _loc_1 = WINDOW_Y;
            _loc_1 = _swf_close_window;
            return;
        }// end function

        private function _SellTradeGoodsWindow_DataGridColumn7_i() : DataGridColumn
        {
            var _loc_1:* = new DataGridColumn();
            _SellTradeGoodsWindow_DataGridColumn7 = _loc_1;
            _loc_1.dataField = "physicalDefense";
            _loc_1.width = 40;
            _loc_1.setStyle("textAlign", "center");
            BindingManager.executeBindings(this, "_SellTradeGoodsWindow_DataGridColumn7", _SellTradeGoodsWindow_DataGridColumn7);
            return _loc_1;
        }// end function

        private function init() : void
        {
            MovieClip(Loader(_swf_window.getChildAt(0)).content).gotoAndPlay("center_720x520");
            MovieClip(Loader(_swf_tab.getChildAt(0)).content).gotoAndPlay("tab_item_arms");
            MovieClip(Loader(_swf_exhibit.getChildAt(0)).content).gotoAndPlay("button_exhibit");
            MovieClip(Loader(_swf_close.getChildAt(0)).content).gotoAndPlay("button_close");
            Loader(_swf_tab.getChildAt(0)).content.addEventListener("TAB_ITEM_ARMS", function (event:Event) : void
            {
                itemList.selectedIndex = 0;
                onTabClick();
                return;
            }// end function
            );
            Loader(_swf_tab.getChildAt(0)).content.addEventListener("TAB_ITEM_GUARDS", function (event:Event) : void
            {
                itemList.selectedIndex = 1;
                onTabClick();
                return;
            }// end function
            );
            Loader(_swf_tab.getChildAt(0)).content.addEventListener("TAB_ITEM_ACCESSORIES", function (event:Event) : void
            {
                itemList.selectedIndex = 2;
                onTabClick();
                return;
            }// end function
            );
            Loader(_swf_tab.getChildAt(0)).content.addEventListener("TAB_ITEM_ITEMS", function (event:Event) : void
            {
                itemList.selectedIndex = 3;
                onTabClick();
                return;
            }// end function
            );
            Loader(_swf_tab.getChildAt(0)).content.addEventListener("TAB_ITEM_MATERIALS", function (event:Event) : void
            {
                itemList.selectedIndex = 4;
                onTabClick();
                return;
            }// end function
            );
            return;
        }// end function

        private function get _swf_close_window() : MovieClipLoaderAsset
        {
            return this._1218643219_swf_close_window;
        }// end function

        public function get sellPrice() : int
        {
            return _sellPrice;
        }// end function

        private function get _swf_tab() : MovieClipLoaderAsset
        {
            return this._550978329_swf_tab;
        }// end function

        private function _SellTradeGoodsWindow_DataGridColumn11_i() : DataGridColumn
        {
            var _loc_1:* = new DataGridColumn();
            _SellTradeGoodsWindow_DataGridColumn11 = _loc_1;
            _loc_1.dataField = "description";
            BindingManager.executeBindings(this, "_SellTradeGoodsWindow_DataGridColumn11", _SellTradeGoodsWindow_DataGridColumn11);
            return _loc_1;
        }// end function

        private function _SellTradeGoodsWindow_ClassFactory1_i() : ClassFactory
        {
            var _loc_1:* = new ClassFactory();
            detailRenderer = _loc_1;
            _loc_1.generator = SellTradeGoodsWindow_inlineComponent1;
            _loc_1.properties = {outerDocument:this};
            return _loc_1;
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

        public function clearValue() : void
        {
            _sellPrice = 0;
            _sellMaterialQuantity = 0;
            return;
        }// end function

        public function set goodsPrice(param1:NumericStepper) : void
        {
            var _loc_2:* = this._279203731goodsPrice;
            if (_loc_2 !== param1)
            {
                this._279203731goodsPrice = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "goodsPrice", _loc_2, param1));
            }
            return;
        }// end function

        private function _SellTradeGoodsWindow_DataGridColumn19_i() : DataGridColumn
        {
            var _loc_1:* = new DataGridColumn();
            _SellTradeGoodsWindow_DataGridColumn19 = _loc_1;
            _loc_1.dataField = "nameLabel";
            _loc_1.width = 170;
            BindingManager.executeBindings(this, "_SellTradeGoodsWindow_DataGridColumn19", _SellTradeGoodsWindow_DataGridColumn19);
            return _loc_1;
        }// end function

        private function get _swf_exhibit() : MovieClipLoaderAsset
        {
            return this._1658466019_swf_exhibit;
        }// end function

        private function onCancel() : void
        {
            resetValue();
            sellItemName = new String();
            onClose();
            MovieClip(Loader(_swf_close.getChildAt(0)).content).gotoAndPlay(0);
            MovieClip(Loader(_swf_close.getChildAt(0)).content).gotoAndPlay("button_close");
            MovieClip(Loader(_swf_close_window.getChildAt(0)).content).gotoAndPlay(1);
            return;
        }// end function

        public function get accessoryDataGrid() : DataGrid
        {
            return this._477596482accessoryDataGrid;
        }// end function

        private function get _gold() : int
        {
            return this._90913087_gold;
        }// end function

        private function set _weapons(param1:Array) : void
        {
            var _loc_2:* = this._713414504_weapons;
            if (_loc_2 !== param1)
            {
                this._713414504_weapons = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "_weapons", _loc_2, param1));
            }
            return;
        }// end function

        private function _SellTradeGoodsWindow_DataGridColumn6_i() : DataGridColumn
        {
            var _loc_1:* = new DataGridColumn();
            _SellTradeGoodsWindow_DataGridColumn6 = _loc_1;
            _loc_1.dataField = "nameLabel";
            _loc_1.width = 160;
            BindingManager.executeBindings(this, "_SellTradeGoodsWindow_DataGridColumn6", _SellTradeGoodsWindow_DataGridColumn6);
            return _loc_1;
        }// end function

        private function set _materials(param1:Array) : void
        {
            var _loc_2:* = this._807781715_materials;
            if (_loc_2 !== param1)
            {
                this._807781715_materials = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "_materials", _loc_2, param1));
            }
            return;
        }// end function

        private function set sellItemName(param1:String) : void
        {
            var _loc_2:* = this._417950128sellItemName;
            if (_loc_2 !== param1)
            {
                this._417950128sellItemName = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "sellItemName", _loc_2, param1));
            }
            return;
        }// end function

        private function _SellTradeGoodsWindow_DataGridColumn18_i() : DataGridColumn
        {
            var _loc_1:* = new DataGridColumn();
            _SellTradeGoodsWindow_DataGridColumn18 = _loc_1;
            _loc_1.dataField = "description";
            BindingManager.executeBindings(this, "_SellTradeGoodsWindow_DataGridColumn18", _SellTradeGoodsWindow_DataGridColumn18);
            return _loc_1;
        }// end function

        private function resetValue() : void
        {
            if (goodsPrice)
            {
                goodsPrice.value = 0;
            }
            if (materialQuantity)
            {
                materialQuantity.value = 0;
            }
            if (materialPrice)
            {
                materialPrice.value = 0;
            }
            return;
        }// end function

        public function get textList() : ViewStack
        {
            return this._1003877525textList;
        }// end function

        private function get _accessories() : Array
        {
            return this._1639710351_accessories;
        }// end function

        private function _SellTradeGoodsWindow_DataGridColumn10_i() : DataGridColumn
        {
            var _loc_1:* = new DataGridColumn();
            _SellTradeGoodsWindow_DataGridColumn10 = _loc_1;
            _loc_1.dataField = "endurance";
            _loc_1.width = 60;
            _loc_1.setStyle("textAlign", "center");
            BindingManager.executeBindings(this, "_SellTradeGoodsWindow_DataGridColumn10", _SellTradeGoodsWindow_DataGridColumn10);
            return _loc_1;
        }// end function

        public function __materialDataGrid_click(event:MouseEvent) : void
        {
            onClick("material");
            return;
        }// end function

        private function _SellTradeGoodsWindow_DataGridColumn21_i() : DataGridColumn
        {
            var _loc_1:* = new DataGridColumn();
            _SellTradeGoodsWindow_DataGridColumn21 = _loc_1;
            _loc_1.dataField = "description";
            BindingManager.executeBindings(this, "_SellTradeGoodsWindow_DataGridColumn21", _SellTradeGoodsWindow_DataGridColumn21);
            return _loc_1;
        }// end function

        private function set _items(param1:Array) : void
        {
            var _loc_2:* = this._1474671935_items;
            if (_loc_2 !== param1)
            {
                this._1474671935_items = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "_items", _loc_2, param1));
            }
            return;
        }// end function

        private function _SellTradeGoodsWindow_DataGridColumn5_i() : DataGridColumn
        {
            var _loc_1:* = new DataGridColumn();
            _SellTradeGoodsWindow_DataGridColumn5 = _loc_1;
            _loc_1.dataField = "description";
            BindingManager.executeBindings(this, "_SellTradeGoodsWindow_DataGridColumn5", _SellTradeGoodsWindow_DataGridColumn5);
            return _loc_1;
        }// end function

        override public function initialize() : void
        {
            var target:SellTradeGoodsWindow;
            var watcherSetupUtilClass:Object;
            .mx_internal::setDocumentDescriptor(_documentDescriptor_);
            var bindings:* = _SellTradeGoodsWindow_bindingsSetup();
            var watchers:Array;
            target;
            if (_watcherSetupUtil == null)
            {
                watcherSetupUtilClass = getDefinitionByName("_com_kbmj_viking_view_city_SellTradeGoodsWindowWatcherSetupUtil");
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

        public function get goodsPrice() : NumericStepper
        {
            return this._279203731goodsPrice;
        }// end function

        public function set materialQuantity(param1:NumericStepper) : void
        {
            var _loc_2:* = this._598862126materialQuantity;
            if (_loc_2 !== param1)
            {
                this._598862126materialQuantity = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "materialQuantity", _loc_2, param1));
            }
            return;
        }// end function

        public function set sellableResource(param1:ResourceVO) : void
        {
            var v:* = param1;
            _sellableResource = v;
            _weapons = _sellableResource.weapons.filter(function (param1, param2:int, param3:Array) : Boolean
            {
                return param1.masterVO.sellable == 0;
            }// end function
            );
            _armors = _sellableResource.armors.filter(function (param1, param2:int, param3:Array) : Boolean
            {
                return param1.masterVO.sellable == 0;
            }// end function
            );
            _accessories = _sellableResource.accessories.filter(function (param1, param2:int, param3:Array) : Boolean
            {
                return param1.masterVO.sellable == 0;
            }// end function
            );
            _items = _sellableResource.items.filter(function (param1, param2:int, param3:Array) : Boolean
            {
                return param1.masterVO.sellable == 0;
            }// end function
            );
            _materials = _sellableResource.materials.filter(function (param1, param2:int, param3:Array) : Boolean
            {
                return param1.quantity > 0 && param1.masterVO.sellable == 0;
            }// end function
            );
            MovieClip(Loader(_swf_exhibit.getChildAt(0)).content).gotoAndPlay(0);
            MovieClip(Loader(_swf_exhibit.getChildAt(0)).content).gotoAndPlay("button_exhibit");
            return;
        }// end function

        public function __weaponDataGrid_click(event:MouseEvent) : void
        {
            onClick("weapon");
            return;
        }// end function

        private function get sellItemName() : String
        {
            return this._417950128sellItemName;
        }// end function

        private function _SellTradeGoodsWindow_DataGridColumn20_i() : DataGridColumn
        {
            var _loc_1:* = new DataGridColumn();
            _SellTradeGoodsWindow_DataGridColumn20 = _loc_1;
            _loc_1.dataField = "quantity";
            _loc_1.width = 60;
            _loc_1.setStyle("textAlign", "center");
            BindingManager.executeBindings(this, "_SellTradeGoodsWindow_DataGridColumn20", _SellTradeGoodsWindow_DataGridColumn20);
            return _loc_1;
        }// end function

        private function _SellTradeGoodsWindow_DataGridColumn17_i() : DataGridColumn
        {
            var _loc_1:* = new DataGridColumn();
            _SellTradeGoodsWindow_DataGridColumn17 = _loc_1;
            _loc_1.dataField = "effect";
            _loc_1.width = 180;
            _loc_1.setStyle("textAlign", "center");
            BindingManager.executeBindings(this, "_SellTradeGoodsWindow_DataGridColumn17", _SellTradeGoodsWindow_DataGridColumn17);
            return _loc_1;
        }// end function

        private function _SellTradeGoodsWindow_DataGridColumn4_i() : DataGridColumn
        {
            var _loc_1:* = new DataGridColumn();
            _SellTradeGoodsWindow_DataGridColumn4 = _loc_1;
            _loc_1.dataField = "endurance";
            _loc_1.width = 60;
            _loc_1.setStyle("textAlign", "center");
            BindingManager.executeBindings(this, "_SellTradeGoodsWindow_DataGridColumn4", _SellTradeGoodsWindow_DataGridColumn4);
            return _loc_1;
        }// end function

        private function onSell() : void
        {
            switch(itemList.selectedIndex)
            {
                case 0:
                case 1:
                case 2:
                case 3:
                {
                    if (goodsPrice && sellItemName)
                    {
                        if (goodsPrice.value != 0)
                        {
                            _sellPrice = goodsPrice.value;
                            onCancel();
                            dispatchEvent(new Event(GOODS_SELL));
                        }
                    }
                    break;
                }
                case 4:
                {
                    if (materialQuantity.value != 0 && materialPrice.value != 0 && sellItemName)
                    {
                        _sellPrice = materialPrice.value;
                        _sellMaterialQuantity = materialQuantity.value;
                        onCancel();
                        dispatchEvent(new Event(GOODS_SELL));
                    }
                    break;
                }
                default:
                {
                    break;
                }
            }
            return;
        }// end function

        public function get sellableResource() : ResourceVO
        {
            return _sellableResource;
        }// end function

        public function getPhonetic(param1:Object) : String
        {
            return String(param1.phonetic);
        }// end function

        public function __armorDataGrid_click(event:MouseEvent) : void
        {
            onClick("armor");
            return;
        }// end function

        private function _SellTradeGoodsWindow_DataGridColumn16_i() : DataGridColumn
        {
            var _loc_1:* = new DataGridColumn();
            _SellTradeGoodsWindow_DataGridColumn16 = _loc_1;
            _loc_1.dataField = "endurance";
            _loc_1.width = 60;
            _loc_1.setStyle("textAlign", "center");
            BindingManager.executeBindings(this, "_SellTradeGoodsWindow_DataGridColumn16", _SellTradeGoodsWindow_DataGridColumn16);
            return _loc_1;
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

        private function onTabClick() : void
        {
            switch(itemList.selectedIndex)
            {
                case 0:
                case 1:
                case 2:
                case 3:
                {
                    textList.selectedIndex = 0;
                    break;
                }
                case 4:
                {
                    textList.selectedIndex = 1;
                    break;
                }
                default:
                {
                    break;
                }
            }
            resetValue();
            sellItemName = new String();
            return;
        }// end function

        private function get _swf_window() : MovieClipLoaderAsset
        {
            return this._1075873300_swf_window;
        }// end function

        public static function set watcherSetupUtil(param1:IWatcherSetupUtil) : void
        {
            SellTradeGoodsWindow._watcherSetupUtil = param1;
            return;
        }// end function

    }
}
