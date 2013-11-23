package com.kbmj.viking.view
{
    import com.kbmj.viking.lib.*;
    import com.kbmj.viking.vo.*;
    import com.kbmj.viking.vo.tactics.*;
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

    public class ChangeEquipmentWindow extends PopupWindow implements IBindingClient
    {
        private var _1404591852icon_renderer_tutorial:ClassFactory;
        private var _513506736weapon_data_list:DataGrid;
        private var _1129733453tabCanvas:Canvas;
        private var _9878259weapon_data_list_tutorial:DataGrid;
        private var _993932656viewDataArmor:ArrayCollection;
        private var _1680067859armor_data_list:DataGrid;
        private var _1790814179viewDataAccessory:ArrayCollection;
        private var _tutMarkEquipFinishVisible:Boolean = false;
        private var _armors:Array;
        private var _127729680subWeapon_data_list:DataGrid;
        var _bindingsByDestination:Object;
        private var _94427871tutVisible:Boolean = false;
        public var _ChangeEquipmentWindow_DataGridColumn10:DataGridColumn;
        public var _ChangeEquipmentWindow_DataGridColumn11:DataGridColumn;
        public var _ChangeEquipmentWindow_DataGridColumn12:DataGridColumn;
        public var _ChangeEquipmentWindow_DataGridColumn13:DataGridColumn;
        public var _ChangeEquipmentWindow_DataGridColumn14:DataGridColumn;
        public var _ChangeEquipmentWindow_DataGridColumn15:DataGridColumn;
        public var _ChangeEquipmentWindow_DataGridColumn16:DataGridColumn;
        public var _ChangeEquipmentWindow_DataGridColumn17:DataGridColumn;
        public var _ChangeEquipmentWindow_DataGridColumn18:DataGridColumn;
        public var _ChangeEquipmentWindow_DataGridColumn19:DataGridColumn;
        private var _changeBool:Boolean = false;
        public var _ChangeEquipmentWindow_Image2:Image;
        public var _ChangeEquipmentWindow_Image3:Image;
        private var _1007627721icon_renderer:ClassFactory;
        private var _478250410unit_sub_weapon_data_list:DataGrid;
        public var _ChangeEquipmentWindow_DataGridColumn20:DataGridColumn;
        public var _ChangeEquipmentWindow_DataGridColumn21:DataGridColumn;
        public var _ChangeEquipmentWindow_DataGridColumn23:DataGridColumn;
        public var _ChangeEquipmentWindow_DataGridColumn25:DataGridColumn;
        public var _ChangeEquipmentWindow_DataGridColumn27:DataGridColumn;
        public var _ChangeEquipmentWindow_DataGridColumn29:DataGridColumn;
        public var _ChangeEquipmentWindow_DataGridColumn24:DataGridColumn;
        public var _ChangeEquipmentWindow_DataGridColumn26:DataGridColumn;
        public var _ChangeEquipmentWindow_DataGridColumn28:DataGridColumn;
        public var _ChangeEquipmentWindow_DataGridColumn22:DataGridColumn;
        public var _ChangeEquipmentWindow_VBox10:VBox;
        public var _ChangeEquipmentWindow_Text1:Text;
        public var _ChangeEquipmentWindow_DataGridColumn30:DataGridColumn;
        public var _ChangeEquipmentWindow_DataGridColumn31:DataGridColumn;
        public var _ChangeEquipmentWindow_DataGridColumn32:DataGridColumn;
        public var _ChangeEquipmentWindow_DataGridColumn33:DataGridColumn;
        public var _ChangeEquipmentWindow_DataGridColumn34:DataGridColumn;
        public var _ChangeEquipmentWindow_DataGridColumn35:DataGridColumn;
        public var _ChangeEquipmentWindow_DataGridColumn36:DataGridColumn;
        public var _ChangeEquipmentWindow_DataGridColumn37:DataGridColumn;
        public var _ChangeEquipmentWindow_DataGridColumn38:DataGridColumn;
        public var _ChangeEquipmentWindow_DataGridColumn39:DataGridColumn;
        public var _ChangeEquipmentWindow_VBox11:VBox;
        private var _weapons:Array;
        private var _1896677185windowLayer:Canvas;
        private var _1593707687_arrow_right:Class;
        private var _changeType:String = "Weapon";
        private var _786396670unit_item_data_list:DataGrid;
        private var _588869499equipBox:VBox;
        public var _ChangeEquipmentWindow_DataGridColumn41:DataGridColumn;
        public var _ChangeEquipmentWindow_DataGridColumn43:DataGridColumn;
        public var _ChangeEquipmentWindow_DataGridColumn45:DataGridColumn;
        public var _ChangeEquipmentWindow_DataGridColumn47:DataGridColumn;
        public var _ChangeEquipmentWindow_DataGridColumn49:DataGridColumn;
        public var _ChangeEquipmentWindow_DataGridColumn44:DataGridColumn;
        public var _ChangeEquipmentWindow_DataGridColumn46:DataGridColumn;
        private var _items:Array;
        public var _ChangeEquipmentWindow_DataGridColumn42:DataGridColumn;
        private var _embed_mxml__swf_common_button_close_window_swf_1370265653:Class;
        public var _ChangeEquipmentWindow_DataGridColumn48:DataGridColumn;
        public var _ChangeEquipmentWindow_DataGridColumn40:DataGridColumn;
        public var _ChangeEquipmentWindow_DataGridColumn50:DataGridColumn;
        public var _ChangeEquipmentWindow_DataGridColumn51:DataGridColumn;
        public var _ChangeEquipmentWindow_DataGridColumn52:DataGridColumn;
        public var _ChangeEquipmentWindow_DataGridColumn53:DataGridColumn;
        public var _ChangeEquipmentWindow_DataGridColumn54:DataGridColumn;
        public var _ChangeEquipmentWindow_DataGridColumn55:DataGridColumn;
        public var _ChangeEquipmentWindow_DataGridColumn56:DataGridColumn;
        private var _1780429472_arrow_top:Class;
        private var _129662229viewDataWeapon:ArrayCollection;
        private var _tutMarkEquipVisible:Boolean = false;
        private var _91329123_unit:UnitVO;
        private var _1492198306viewDataItem:ArrayCollection;
        private var _1522578453unit_accessory_data_list:DataGrid;
        public var _ChangeEquipmentWindow_VBox8:VBox;
        public var _ChangeEquipmentWindow_VBox7:VBox;
        public var _ChangeEquipmentWindow_DataGridColumn1:DataGridColumn;
        public var _ChangeEquipmentWindow_DataGridColumn2:DataGridColumn;
        public var _ChangeEquipmentWindow_DataGridColumn3:DataGridColumn;
        public var _ChangeEquipmentWindow_DataGridColumn4:DataGridColumn;
        public var _ChangeEquipmentWindow_DataGridColumn5:DataGridColumn;
        public var _ChangeEquipmentWindow_DataGridColumn6:DataGridColumn;
        public var _ChangeEquipmentWindow_DataGridColumn7:DataGridColumn;
        public var _ChangeEquipmentWindow_DataGridColumn8:DataGridColumn;
        public var _ChangeEquipmentWindow_DataGridColumn9:DataGridColumn;
        private var _182637929myViewStack:ViewStack;
        public var _ChangeEquipmentWindow_VBox9:VBox;
        private var _1193840764_swf_close:MovieClipLoaderAsset;
        public var itemData:Array;
        private var _1218335257item_data_list:DataGrid;
        private var _accessories:Array;
        private var _506967107tutMarkFinishEquip:Image;
        private var equipmentDetail:EquipmentDetail;
        public var armorData:Array;
        public var weaponDetail:WeaponDetail;
        private var _1073623258accessory_data_list:DataGrid;
        var _watchers:Array;
        private var _1005338869unit_weapon_data_list:DataGrid;
        private var _743584191unitViewStack:ViewStack;
        private var _2109705128unit_armor_data_list:DataGrid;
        private var _1694165800equipment_icon_renderer:ClassFactory;
        var _bindingsBeginWithWord:Object;
        private var _1225459084nonTutVisible:Boolean = true;
        private var _1195842228_swf_equip:MovieClipLoaderAsset;
        public var accessoryData:Array;
        public var weaponData:Array;
        var _bindings:Array;
        private var _documentDescriptor_:UIComponentDescriptor;
        public static const CHANGE_EQUIPMENT_WINDOW_TMARK_EQUIP:String = "changeEquipmentWindowTmarkEquip";
        public static const CHANGE_HILIGHT:String = "chageHiLight";
        public static const CHANGE_EQUIPMENT_WINDOW_CLOSE:String = "changeEquipmentWindowClose";
        public static const CHANGE_EQUIPMENT_WINDOW_TMARK_CLOSE:String = "changeEquipmentWindowTmarkClose";
        public static const CHANGE_EQUIPMENT_WINDOW_TMARK_FINISH_EQUIP:String = "changeEquipmentWindowTmarkFinishEquip";
        public static const CHANGE_EQUIPMENT_FINISH:String = "changeEquipmentFinish";
        public static const CHANGE_EQUIPMENT_WINDOW_TMARK:String = "changeEquipmentWindowTmark";
        public static const CHANGE_EQUIPMENT_CANCEL:String = "changeEquipmentCancel";
        private static var _watcherSetupUtil:IWatcherSetupUtil;

        public function ChangeEquipmentWindow()
        {
            _documentDescriptor_ = new UIComponentDescriptor({type:PopupWindow, propertiesFactory:function () : Object
            {
                return {height:560, width:760, childDescriptors:[new UIComponentDescriptor({type:Canvas, id:"windowLayer"}), new UIComponentDescriptor({type:Text, id:"_ChangeEquipmentWindow_Text1", propertiesFactory:function () : Object
                {
                    return {styleName:"ProductionTitle", x:350, y:20};
                }// end function
                }), new UIComponentDescriptor({type:VBox, id:"equipBox", stylesFactory:function () : void
                {
                    this.verticalGap = -1;
                    return;
                }// end function
                , propertiesFactory:function () : Object
                {
                    return {width:735, x:8, y:7, childDescriptors:[new UIComponentDescriptor({type:Canvas, propertiesFactory:function () : Object
                    {
                        return {width:735, childDescriptors:[new UIComponentDescriptor({type:Canvas, id:"tabCanvas", propertiesFactory:function () : Object
                        {
                            return {x:20, y:40};
                        }// end function
                        }), new UIComponentDescriptor({type:Image, events:{click:"___ChangeEquipmentWindow_Image1_click"}, stylesFactory:function () : void
                        {
                            this.top = "13";
                            this.right = "8";
                            return;
                        }// end function
                        , propertiesFactory:function () : Object
                        {
                            return {width:20, height:20, source:_embed_mxml__swf_common_button_close_window_swf_1370265653};
                        }// end function
                        })]};
                    }// end function
                    }), new UIComponentDescriptor({type:ViewStack, id:"unitViewStack", stylesFactory:function () : void
                    {
                        this.borderStyle = "none";
                        this.paddingLeft = 20;
                        this.paddingTop = 29;
                        return;
                    }// end function
                    , propertiesFactory:function () : Object
                    {
                        return {height:80, childDescriptors:[new UIComponentDescriptor({type:VBox, propertiesFactory:function () : Object
                        {
                            return {childDescriptors:[new UIComponentDescriptor({type:DataGrid, id:"unit_weapon_data_list", events:{headerRelease:"__unit_weapon_data_list_headerRelease"}, propertiesFactory:function () : Object
                            {
                                return {width:703, rowCount:1, styleName:"DataGridBase2", selectable:false, rowHeight:26, columns:[_ChangeEquipmentWindow_DataGridColumn1_i(), _ChangeEquipmentWindow_DataGridColumn2_i(), _ChangeEquipmentWindow_DataGridColumn3_i(), _ChangeEquipmentWindow_DataGridColumn4_i(), _ChangeEquipmentWindow_DataGridColumn5_i(), _ChangeEquipmentWindow_DataGridColumn6_i()]};
                            }// end function
                            })]};
                        }// end function
                        }), new UIComponentDescriptor({type:VBox, propertiesFactory:function () : Object
                        {
                            return {childDescriptors:[new UIComponentDescriptor({type:DataGrid, id:"unit_sub_weapon_data_list", events:{headerRelease:"__unit_sub_weapon_data_list_headerRelease"}, propertiesFactory:function () : Object
                            {
                                return {width:703, rowCount:1, styleName:"DataGridBase2", selectable:false, rowHeight:26, columns:[_ChangeEquipmentWindow_DataGridColumn7_i(), _ChangeEquipmentWindow_DataGridColumn8_i(), _ChangeEquipmentWindow_DataGridColumn9_i(), _ChangeEquipmentWindow_DataGridColumn10_i(), _ChangeEquipmentWindow_DataGridColumn11_i(), _ChangeEquipmentWindow_DataGridColumn12_i()]};
                            }// end function
                            })]};
                        }// end function
                        }), new UIComponentDescriptor({type:VBox, propertiesFactory:function () : Object
                        {
                            return {childDescriptors:[new UIComponentDescriptor({type:DataGrid, id:"unit_armor_data_list", events:{headerRelease:"__unit_armor_data_list_headerRelease"}, propertiesFactory:function () : Object
                            {
                                return {width:703, rowCount:1, styleName:"DataGridBase2", selectable:false, rowHeight:26, columns:[_ChangeEquipmentWindow_DataGridColumn13_i(), _ChangeEquipmentWindow_DataGridColumn14_i(), _ChangeEquipmentWindow_DataGridColumn15_i(), _ChangeEquipmentWindow_DataGridColumn16_i(), _ChangeEquipmentWindow_DataGridColumn17_i(), _ChangeEquipmentWindow_DataGridColumn18_i()]};
                            }// end function
                            })]};
                        }// end function
                        }), new UIComponentDescriptor({type:VBox, propertiesFactory:function () : Object
                        {
                            return {childDescriptors:[new UIComponentDescriptor({type:DataGrid, id:"unit_accessory_data_list", events:{headerRelease:"__unit_accessory_data_list_headerRelease"}, propertiesFactory:function () : Object
                            {
                                return {width:703, rowCount:1, styleName:"DataGridBase2", selectable:false, rowHeight:26, columns:[_ChangeEquipmentWindow_DataGridColumn19_i(), _ChangeEquipmentWindow_DataGridColumn20_i(), _ChangeEquipmentWindow_DataGridColumn21_i()]};
                            }// end function
                            })]};
                        }// end function
                        }), new UIComponentDescriptor({type:VBox, propertiesFactory:function () : Object
                        {
                            return {childDescriptors:[new UIComponentDescriptor({type:DataGrid, id:"unit_item_data_list", events:{headerRelease:"__unit_item_data_list_headerRelease"}, propertiesFactory:function () : Object
                            {
                                return {width:703, rowCount:1, styleName:"DataGridBase2", selectable:false, rowHeight:26, columns:[_ChangeEquipmentWindow_DataGridColumn22_i(), _ChangeEquipmentWindow_DataGridColumn23_i(), _ChangeEquipmentWindow_DataGridColumn24_i(), _ChangeEquipmentWindow_DataGridColumn25_i()]};
                            }// end function
                            })]};
                        }// end function
                        })]};
                    }// end function
                    }), new UIComponentDescriptor({type:ViewStack, id:"myViewStack", stylesFactory:function () : void
                    {
                        this.borderStyle = "none";
                        this.paddingLeft = 20;
                        this.paddingTop = -1;
                        return;
                    }// end function
                    , propertiesFactory:function () : Object
                    {
                        return {width:725, height:140, childDescriptors:[new UIComponentDescriptor({type:VBox, id:"_ChangeEquipmentWindow_VBox7", propertiesFactory:function () : Object
                        {
                            return {percentWidth:100, childDescriptors:[new UIComponentDescriptor({type:DataGrid, id:"weapon_data_list", propertiesFactory:function () : Object
                            {
                                return {width:703, showHeaders:false, rowCount:4, styleName:"DataGridBase", selectable:false, rowHeight:28, includeInLayout:false, columns:[_ChangeEquipmentWindow_DataGridColumn26_i(), _ChangeEquipmentWindow_DataGridColumn27_i(), _ChangeEquipmentWindow_DataGridColumn28_i(), _ChangeEquipmentWindow_DataGridColumn29_i(), _ChangeEquipmentWindow_DataGridColumn30_i(), _ChangeEquipmentWindow_DataGridColumn31_i()]};
                            }// end function
                            }), new UIComponentDescriptor({type:DataGrid, id:"weapon_data_list_tutorial", propertiesFactory:function () : Object
                            {
                                return {width:703, showHeaders:false, rowCount:4, styleName:"DataGridBase", sortableColumns:false, selectable:false, rowHeight:28, columns:[_ChangeEquipmentWindow_DataGridColumn32_i(), _ChangeEquipmentWindow_DataGridColumn33_i(), _ChangeEquipmentWindow_DataGridColumn34_i(), _ChangeEquipmentWindow_DataGridColumn35_i(), _ChangeEquipmentWindow_DataGridColumn36_i(), _ChangeEquipmentWindow_DataGridColumn37_i()]};
                            }// end function
                            })]};
                        }// end function
                        }), new UIComponentDescriptor({type:VBox, id:"_ChangeEquipmentWindow_VBox8", propertiesFactory:function () : Object
                        {
                            return {percentWidth:100, childDescriptors:[new UIComponentDescriptor({type:DataGrid, id:"subWeapon_data_list", propertiesFactory:function () : Object
                            {
                                return {showHeaders:false, width:703, rowCount:4, styleName:"DataGridBase", sortableColumns:false, selectable:false, rowHeight:28, columns:[_ChangeEquipmentWindow_DataGridColumn38_i(), _ChangeEquipmentWindow_DataGridColumn39_i(), _ChangeEquipmentWindow_DataGridColumn40_i(), _ChangeEquipmentWindow_DataGridColumn41_i(), _ChangeEquipmentWindow_DataGridColumn42_i(), _ChangeEquipmentWindow_DataGridColumn43_i()]};
                            }// end function
                            })]};
                        }// end function
                        }), new UIComponentDescriptor({type:VBox, id:"_ChangeEquipmentWindow_VBox9", propertiesFactory:function () : Object
                        {
                            return {percentWidth:100, childDescriptors:[new UIComponentDescriptor({type:DataGrid, id:"armor_data_list", propertiesFactory:function () : Object
                            {
                                return {showHeaders:false, width:703, rowCount:4, styleName:"DataGridBase", sortableColumns:false, selectable:false, rowHeight:28, columns:[_ChangeEquipmentWindow_DataGridColumn44_i(), _ChangeEquipmentWindow_DataGridColumn45_i(), _ChangeEquipmentWindow_DataGridColumn46_i(), _ChangeEquipmentWindow_DataGridColumn47_i(), _ChangeEquipmentWindow_DataGridColumn48_i(), _ChangeEquipmentWindow_DataGridColumn49_i()]};
                            }// end function
                            })]};
                        }// end function
                        }), new UIComponentDescriptor({type:VBox, id:"_ChangeEquipmentWindow_VBox10", propertiesFactory:function () : Object
                        {
                            return {percentWidth:100, childDescriptors:[new UIComponentDescriptor({type:DataGrid, id:"accessory_data_list", propertiesFactory:function () : Object
                            {
                                return {showHeaders:false, width:703, rowCount:4, styleName:"DataGridBase", sortableColumns:false, selectable:false, rowHeight:28, columns:[_ChangeEquipmentWindow_DataGridColumn50_i(), _ChangeEquipmentWindow_DataGridColumn51_i(), _ChangeEquipmentWindow_DataGridColumn52_i()]};
                            }// end function
                            })]};
                        }// end function
                        }), new UIComponentDescriptor({type:VBox, id:"_ChangeEquipmentWindow_VBox11", propertiesFactory:function () : Object
                        {
                            return {percentWidth:100, childDescriptors:[new UIComponentDescriptor({type:DataGrid, id:"item_data_list", propertiesFactory:function () : Object
                            {
                                return {showHeaders:false, width:703, rowCount:4, styleName:"DataGridBase", sortableColumns:false, selectable:false, rowHeight:28, columns:[_ChangeEquipmentWindow_DataGridColumn53_i(), _ChangeEquipmentWindow_DataGridColumn54_i(), _ChangeEquipmentWindow_DataGridColumn55_i(), _ChangeEquipmentWindow_DataGridColumn56_i()]};
                            }// end function
                            })]};
                        }// end function
                        })]};
                    }// end function
                    }), new UIComponentDescriptor({type:Canvas, propertiesFactory:function () : Object
                    {
                        return {width:720, height:25, childDescriptors:[new UIComponentDescriptor({type:HBox, stylesFactory:function () : void
                        {
                            this.left = "260";
                            return;
                        }// end function
                        , propertiesFactory:function () : Object
                        {
                            return {width:250, label:"", height:25, childDescriptors:[new UIComponentDescriptor({type:Image, id:"_ChangeEquipmentWindow_Image2", propertiesFactory:function () : Object
                            {
                                return {width:120};
                            }// end function
                            }), new UIComponentDescriptor({type:Image, id:"_ChangeEquipmentWindow_Image3"})]};
                        }// end function
                        })]};
                    }// end function
                    })]};
                }// end function
                }), new UIComponentDescriptor({type:Image, id:"tutMarkFinishEquip", propertiesFactory:function () : Object
                {
                    return {visible:false, width:78, height:78, y:290, x:305};
                }// end function
                })]};
            }// end function
            });
            equipmentDetail = new EquipmentDetail();
            weaponDetail = new WeaponDetail();
            _1193840764_swf_close = new Viking.EmbedSwfButtonCommon();
            _1195842228_swf_equip = new Viking.EmbedSwfButtonCommon();
            _1780429472_arrow_top = ChangeEquipmentWindow__arrow_top;
            _1593707687_arrow_right = ChangeEquipmentWindow__arrow_right;
            weaponData = new Array();
            armorData = new Array();
            itemData = new Array();
            accessoryData = new Array();
            _embed_mxml__swf_common_button_close_window_swf_1370265653 = ChangeEquipmentWindow__embed_mxml__swf_common_button_close_window_swf_1370265653;
            _bindings = [];
            _watchers = [];
            _bindingsByDestination = {};
            _bindingsBeginWithWord = {};
            mx_internal::_document = this;
            this.height = 560;
            this.width = 760;
            _ChangeEquipmentWindow_ClassFactory3_i();
            _ChangeEquipmentWindow_ClassFactory1_i();
            _ChangeEquipmentWindow_ClassFactory2_i();
            this.addEventListener("creationComplete", ___ChangeEquipmentWindow_PopupWindow1_creationComplete);
            return;
        }// end function

        private function _ChangeEquipmentWindow_ClassFactory1_i() : ClassFactory
        {
            var _loc_1:* = new ClassFactory();
            icon_renderer = _loc_1;
            _loc_1.generator = ChangeEquipmentWindow_inlineComponent1;
            _loc_1.properties = {outerDocument:this};
            return _loc_1;
        }// end function

        private function _ChangeEquipmentWindow_DataGridColumn14_i() : DataGridColumn
        {
            var _loc_1:* = new DataGridColumn();
            _ChangeEquipmentWindow_DataGridColumn14 = _loc_1;
            _loc_1.dataField = "physicalDefense";
            _loc_1.width = 60;
            _loc_1.setStyle("textAlign", "center");
            BindingManager.executeBindings(this, "_ChangeEquipmentWindow_DataGridColumn14", _ChangeEquipmentWindow_DataGridColumn14);
            return _loc_1;
        }// end function

        public function get unit_item_data_list() : DataGrid
        {
            return this._786396670unit_item_data_list;
        }// end function

        private function _ChangeEquipmentWindow_DataGridColumn37_i() : DataGridColumn
        {
            var _loc_1:* = new DataGridColumn();
            _ChangeEquipmentWindow_DataGridColumn37 = _loc_1;
            _loc_1.dataField = "description";
            BindingManager.executeBindings(this, "_ChangeEquipmentWindow_DataGridColumn37", _ChangeEquipmentWindow_DataGridColumn37);
            return _loc_1;
        }// end function

        public function set unit_accessory_data_list(param1:DataGrid) : void
        {
            var _loc_2:* = this._1522578453unit_accessory_data_list;
            if (_loc_2 !== param1)
            {
                this._1522578453unit_accessory_data_list = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "unit_accessory_data_list", _loc_2, param1));
            }
            return;
        }// end function

        public function get subWeapon_data_list() : DataGrid
        {
            return this._127729680subWeapon_data_list;
        }// end function

        public function set unit_item_data_list(param1:DataGrid) : void
        {
            var _loc_2:* = this._786396670unit_item_data_list;
            if (_loc_2 !== param1)
            {
                this._786396670unit_item_data_list = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "unit_item_data_list", _loc_2, param1));
            }
            return;
        }// end function

        public function set weapon_data_list_tutorial(param1:DataGrid) : void
        {
            var _loc_2:* = this._9878259weapon_data_list_tutorial;
            if (_loc_2 !== param1)
            {
                this._9878259weapon_data_list_tutorial = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "weapon_data_list_tutorial", _loc_2, param1));
            }
            return;
        }// end function

        private function _ChangeEquipmentWindow_DataGridColumn40_i() : DataGridColumn
        {
            var _loc_1:* = new DataGridColumn();
            _ChangeEquipmentWindow_DataGridColumn40 = _loc_1;
            _loc_1.dataField = "damage";
            _loc_1.width = 60;
            _loc_1.setStyle("textAlign", "center");
            BindingManager.executeBindings(this, "_ChangeEquipmentWindow_DataGridColumn40", _ChangeEquipmentWindow_DataGridColumn40);
            return _loc_1;
        }// end function

        public function set subWeapon_data_list(param1:DataGrid) : void
        {
            var _loc_2:* = this._127729680subWeapon_data_list;
            if (_loc_2 !== param1)
            {
                this._127729680subWeapon_data_list = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "subWeapon_data_list", _loc_2, param1));
            }
            return;
        }// end function

        private function addSwf() : void
        {
            Loader(_swf_equip.getChildAt(0)).content.addEventListener("BUTTON_COMPLETE_EQUIPMENT", function (event:Event) : void
            {
                equip();
                return;
            }// end function
            );
            MovieClip(Loader(_swf_equip.getChildAt(0)).content).gotoAndPlay("button_complete_equipment");
            Loader(_swf_close.getChildAt(0)).content.addEventListener("BUTTON_CANCEL", function (event:Event) : void
            {
                close();
                return;
            }// end function
            );
            MovieClip(Loader(_swf_close.getChildAt(0)).content).gotoAndPlay("button_cancel");
            return;
        }// end function

        private function _ChangeEquipmentWindow_DataGridColumn25_i() : DataGridColumn
        {
            var _loc_1:* = new DataGridColumn();
            _ChangeEquipmentWindow_DataGridColumn25 = _loc_1;
            _loc_1.dataField = "description";
            _loc_1.sortable = false;
            BindingManager.executeBindings(this, "_ChangeEquipmentWindow_DataGridColumn25", _ChangeEquipmentWindow_DataGridColumn25);
            return _loc_1;
        }// end function

        private function _ChangeEquipmentWindow_DataGridColumn48_i() : DataGridColumn
        {
            var _loc_1:* = new DataGridColumn();
            _ChangeEquipmentWindow_DataGridColumn48 = _loc_1;
            _loc_1.dataField = "enduranceLabel";
            _loc_1.width = 60;
            _loc_1.setStyle("textAlign", "center");
            BindingManager.executeBindings(this, "_ChangeEquipmentWindow_DataGridColumn48", _ChangeEquipmentWindow_DataGridColumn48);
            return _loc_1;
        }// end function

        public function set unit_weapon_data_list(param1:DataGrid) : void
        {
            var _loc_2:* = this._1005338869unit_weapon_data_list;
            if (_loc_2 !== param1)
            {
                this._1005338869unit_weapon_data_list = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "unit_weapon_data_list", _loc_2, param1));
            }
            return;
        }// end function

        private function _ChangeEquipmentWindow_DataGridColumn2_i() : DataGridColumn
        {
            var _loc_1:* = new DataGridColumn();
            _ChangeEquipmentWindow_DataGridColumn2 = _loc_1;
            _loc_1.dataField = "weaponTypeLabel";
            _loc_1.width = 40;
            _loc_1.setStyle("textAlign", "center");
            BindingManager.executeBindings(this, "_ChangeEquipmentWindow_DataGridColumn2", _ChangeEquipmentWindow_DataGridColumn2);
            return _loc_1;
        }// end function

        private function onClickAccessory(param1:Object) : void
        {
            if (_unit.accessory != null)
            {
                accessoryData.push(_unit.accessory);
            }
            _unit.accessory = param1 as AccessoryVO;
            accessoryData.splice(accessoryData.indexOf(param1), 1);
            viewDataAccessory = new ArrayCollection(accessoryData);
            changeBool = true;
            return;
        }// end function

        public function set viewDataWeapon(param1:ArrayCollection) : void
        {
            var _loc_2:* = this._129662229viewDataWeapon;
            if (_loc_2 !== param1)
            {
                this._129662229viewDataWeapon = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "viewDataWeapon", _loc_2, param1));
            }
            return;
        }// end function

        private function changeHiLigth() : void
        {
            var _loc_1:* = myViewStack.selectedIndex;
            switch(_loc_1)
            {
                case 0:
                {
                    _changeType = "Weapon";
                    break;
                }
                case 1:
                {
                    _changeType = "SubWeapon";
                    break;
                }
                case 2:
                {
                    _changeType = "Armor";
                    break;
                }
                case 3:
                {
                    _changeType = "Accessory";
                    break;
                }
                case 4:
                {
                    _changeType = "Item";
                    break;
                }
                default:
                {
                    break;
                }
            }
            dispatchEvent(new Event(CHANGE_HILIGHT));
            unitViewStack.selectedIndex = myViewStack.selectedIndex;
            return;
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

        private function equip() : void
        {
            var _loc_5:WeaponVO = null;
            var _loc_6:ArmorVO = null;
            var _loc_7:AccessoryVO = null;
            var _loc_8:ItemVO = null;
            unitViewStack.selectedIndex = 0;
            myViewStack.selectedIndex = 0;
            _weapons = new Array();
            _armors = new Array();
            _accessories = new Array();
            _items = new Array();
            var _loc_1:int = 0;
            while (_loc_1 < weaponData.length)
            {
                
                _loc_5 = new WeaponVO();
                _loc_5 = weaponData[_loc_1] as WeaponVO;
                _weapons.push(_loc_5);
                _loc_1++;
            }
            var _loc_2:int = 0;
            while (_loc_2 < armorData.length)
            {
                
                _loc_6 = new ArmorVO();
                _loc_6 = armorData[_loc_2] as ArmorVO;
                _armors.push(_loc_6);
                _loc_2++;
            }
            var _loc_3:int = 0;
            while (_loc_3 < accessoryData.length)
            {
                
                _loc_7 = new AccessoryVO();
                _loc_7 = accessoryData[_loc_3] as AccessoryVO;
                _accessories.push(_loc_7);
                _loc_3++;
            }
            var _loc_4:int = 0;
            while (_loc_4 < itemData.length)
            {
                
                _loc_8 = new ItemVO();
                _loc_8 = itemData[_loc_4] as ItemVO;
                _items.push(_loc_8);
                _loc_4++;
            }
            dispatchEvent(new Event(CHANGE_EQUIPMENT_WINDOW_TMARK_FINISH_EQUIP));
            dispatchEvent(new Event(CHANGE_EQUIPMENT_FINISH));
            dispatchEvent(new Event(CHANGE_EQUIPMENT_WINDOW_CLOSE));
            onClose();
            return;
        }// end function

        private function _ChangeEquipmentWindow_DataGridColumn51_i() : DataGridColumn
        {
            var _loc_1:* = new DataGridColumn();
            _ChangeEquipmentWindow_DataGridColumn51 = _loc_1;
            _loc_1.dataField = "effectLabelAll";
            _loc_1.width = 100;
            _loc_1.setStyle("textAlign", "center");
            BindingManager.executeBindings(this, "_ChangeEquipmentWindow_DataGridColumn51", _ChangeEquipmentWindow_DataGridColumn51);
            return _loc_1;
        }// end function

        public function set icon_renderer_tutorial(param1:ClassFactory) : void
        {
            var _loc_2:* = this._1404591852icon_renderer_tutorial;
            if (_loc_2 !== param1)
            {
                this._1404591852icon_renderer_tutorial = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "icon_renderer_tutorial", _loc_2, param1));
            }
            return;
        }// end function

        private function _ChangeEquipmentWindow_DataGridColumn13_i() : DataGridColumn
        {
            var _loc_1:* = new DataGridColumn();
            _ChangeEquipmentWindow_DataGridColumn13 = _loc_1;
            _loc_1.dataField = "nameLabel";
            _loc_1.width = 170;
            BindingManager.executeBindings(this, "_ChangeEquipmentWindow_DataGridColumn13", _ChangeEquipmentWindow_DataGridColumn13);
            return _loc_1;
        }// end function

        private function _ChangeEquipmentWindow_DataGridColumn36_i() : DataGridColumn
        {
            var _loc_1:* = new DataGridColumn();
            _ChangeEquipmentWindow_DataGridColumn36 = _loc_1;
            _loc_1.dataField = "enduranceLabel";
            _loc_1.width = 60;
            _loc_1.setStyle("textAlign", "center");
            BindingManager.executeBindings(this, "_ChangeEquipmentWindow_DataGridColumn36", _ChangeEquipmentWindow_DataGridColumn36);
            return _loc_1;
        }// end function

        public function componentTooltip(param1:int) : String
        {
            if (param1 == 0)
            {
                return Utils.i18n("changeEquipmentEquip");
            }
            if (param1 == 1 || param1 == 3)
            {
                return Utils.i18n("generalShowDetail");
            }
            if (param1 == 2)
            {
                return Utils.i18n("changeEquipmentRemove");
            }
            return "";
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

        private function _ChangeEquipmentWindow_DataGridColumn24_i() : DataGridColumn
        {
            var _loc_1:* = new DataGridColumn();
            _ChangeEquipmentWindow_DataGridColumn24 = _loc_1;
            _loc_1.dataField = "enduranceLabel";
            _loc_1.width = 60;
            _loc_1.setStyle("textAlign", "center");
            BindingManager.executeBindings(this, "_ChangeEquipmentWindow_DataGridColumn24", _ChangeEquipmentWindow_DataGridColumn24);
            return _loc_1;
        }// end function

        private function _ChangeEquipmentWindow_DataGridColumn47_i() : DataGridColumn
        {
            var _loc_1:* = new DataGridColumn();
            _ChangeEquipmentWindow_DataGridColumn47 = _loc_1;
            _loc_1.dataField = "avoidance";
            _loc_1.width = 60;
            _loc_1.setStyle("textAlign", "center");
            BindingManager.executeBindings(this, "_ChangeEquipmentWindow_DataGridColumn47", _ChangeEquipmentWindow_DataGridColumn47);
            return _loc_1;
        }// end function

        private function get _unit() : UnitVO
        {
            return this._91329123_unit;
        }// end function

        private function onClickWeapon(param1:Object, param2:String) : void
        {
            if (param2 == "main")
            {
                if (_unit.weapon != null)
                {
                    weaponData.push(_unit.weapon);
                }
                _unit.weapon = param1 as WeaponVO;
                weaponData.splice(weaponData.indexOf(param1), 1);
            }
            else
            {
                if (_unit.subWeapon != null)
                {
                    weaponData.push(_unit.subWeapon);
                }
                _unit.subWeapon = param1 as WeaponVO;
                weaponData.splice(weaponData.indexOf(param1), 1);
            }
            viewDataWeapon = new ArrayCollection(weaponData);
            changeBool = true;
            return;
        }// end function

        public function get unit_armor_data_list() : DataGrid
        {
            return this._2109705128unit_armor_data_list;
        }// end function

        private function _ChangeEquipmentWindow_DataGridColumn1_i() : DataGridColumn
        {
            var _loc_1:* = new DataGridColumn();
            _ChangeEquipmentWindow_DataGridColumn1 = _loc_1;
            _loc_1.dataField = "nameLabel";
            _loc_1.width = 170;
            BindingManager.executeBindings(this, "_ChangeEquipmentWindow_DataGridColumn1", _ChangeEquipmentWindow_DataGridColumn1);
            return _loc_1;
        }// end function

        private function _ChangeEquipmentWindow_DataGridColumn12_i() : DataGridColumn
        {
            var _loc_1:* = new DataGridColumn();
            _ChangeEquipmentWindow_DataGridColumn12 = _loc_1;
            _loc_1.dataField = "description";
            _loc_1.sortable = false;
            BindingManager.executeBindings(this, "_ChangeEquipmentWindow_DataGridColumn12", _ChangeEquipmentWindow_DataGridColumn12);
            return _loc_1;
        }// end function

        private function _ChangeEquipmentWindow_DataGridColumn35_i() : DataGridColumn
        {
            var _loc_1:* = new DataGridColumn();
            _ChangeEquipmentWindow_DataGridColumn35 = _loc_1;
            _loc_1.dataField = "hit";
            _loc_1.width = 60;
            _loc_1.setStyle("textAlign", "center");
            BindingManager.executeBindings(this, "_ChangeEquipmentWindow_DataGridColumn35", _ChangeEquipmentWindow_DataGridColumn35);
            return _loc_1;
        }// end function

        private function _ChangeEquipmentWindow_bindingsSetup() : Array
        {
            var binding:Binding;
            var result:Array;
            binding = new Binding(this, function () : String
            {
                var _loc_1:* = Utils.i18n("changeEquipmentChangeEquipment");
                var _loc_2:* = _loc_1 == undefined ? (null) : (String(_loc_1));
                return _loc_2;
            }// end function
            , function (param1:String) : void
            {
                _ChangeEquipmentWindow_Text1.text = param1;
                return;
            }// end function
            , "_ChangeEquipmentWindow_Text1.text");
            result[0] = binding;
            binding = new Binding(this, function () : Object
            {
                return _unit.weapon;
            }// end function
            , function (param1:Object) : void
            {
                unit_weapon_data_list.dataProvider = param1;
                return;
            }// end function
            , "unit_weapon_data_list.dataProvider");
            result[1] = binding;
            binding = new Binding(this, function () : String
            {
                var _loc_1:* = Utils.i18n("changeEquipmentWeaponName");
                var _loc_2:* = _loc_1 == undefined ? (null) : (String(_loc_1));
                return _loc_2;
            }// end function
            , function (param1:String) : void
            {
                _ChangeEquipmentWindow_DataGridColumn1.headerText = param1;
                return;
            }// end function
            , "_ChangeEquipmentWindow_DataGridColumn1.headerText");
            result[2] = binding;
            binding = new Binding(this, function () : IFactory
            {
                return equipment_icon_renderer;
            }// end function
            , function (param1:IFactory) : void
            {
                _ChangeEquipmentWindow_DataGridColumn1.itemRenderer = param1;
                return;
            }// end function
            , "_ChangeEquipmentWindow_DataGridColumn1.itemRenderer");
            result[3] = binding;
            binding = new Binding(this, function () : String
            {
                var _loc_1:* = Utils.i18n("changeEquipmentType");
                var _loc_2:* = _loc_1 == undefined ? (null) : (String(_loc_1));
                return _loc_2;
            }// end function
            , function (param1:String) : void
            {
                _ChangeEquipmentWindow_DataGridColumn2.headerText = param1;
                return;
            }// end function
            , "_ChangeEquipmentWindow_DataGridColumn2.headerText");
            result[4] = binding;
            binding = new Binding(this, function () : String
            {
                var _loc_1:* = Utils.i18n("changeEquipmentAttack");
                var _loc_2:* = _loc_1 == undefined ? (null) : (String(_loc_1));
                return _loc_2;
            }// end function
            , function (param1:String) : void
            {
                _ChangeEquipmentWindow_DataGridColumn3.headerText = param1;
                return;
            }// end function
            , "_ChangeEquipmentWindow_DataGridColumn3.headerText");
            result[5] = binding;
            binding = new Binding(this, function () : String
            {
                var _loc_1:* = Utils.i18n("changeEquipmentHit");
                var _loc_2:* = _loc_1 == undefined ? (null) : (String(_loc_1));
                return _loc_2;
            }// end function
            , function (param1:String) : void
            {
                _ChangeEquipmentWindow_DataGridColumn4.headerText = param1;
                return;
            }// end function
            , "_ChangeEquipmentWindow_DataGridColumn4.headerText");
            result[6] = binding;
            binding = new Binding(this, function () : String
            {
                var _loc_1:* = Utils.i18n("changeEquipmentEndurance");
                var _loc_2:* = _loc_1 == undefined ? (null) : (String(_loc_1));
                return _loc_2;
            }// end function
            , function (param1:String) : void
            {
                _ChangeEquipmentWindow_DataGridColumn5.headerText = param1;
                return;
            }// end function
            , "_ChangeEquipmentWindow_DataGridColumn5.headerText");
            result[7] = binding;
            binding = new Binding(this, function () : String
            {
                var _loc_1:* = Utils.i18n("generalDescription");
                var _loc_2:* = _loc_1 == undefined ? (null) : (String(_loc_1));
                return _loc_2;
            }// end function
            , function (param1:String) : void
            {
                _ChangeEquipmentWindow_DataGridColumn6.headerText = param1;
                return;
            }// end function
            , "_ChangeEquipmentWindow_DataGridColumn6.headerText");
            result[8] = binding;
            binding = new Binding(this, function () : Object
            {
                return _unit.subWeapon;
            }// end function
            , function (param1:Object) : void
            {
                unit_sub_weapon_data_list.dataProvider = param1;
                return;
            }// end function
            , "unit_sub_weapon_data_list.dataProvider");
            result[9] = binding;
            binding = new Binding(this, function () : String
            {
                var _loc_1:* = Utils.i18n("changeEquipmentWeaponName");
                var _loc_2:* = _loc_1 == undefined ? (null) : (String(_loc_1));
                return _loc_2;
            }// end function
            , function (param1:String) : void
            {
                _ChangeEquipmentWindow_DataGridColumn7.headerText = param1;
                return;
            }// end function
            , "_ChangeEquipmentWindow_DataGridColumn7.headerText");
            result[10] = binding;
            binding = new Binding(this, function () : IFactory
            {
                return equipment_icon_renderer;
            }// end function
            , function (param1:IFactory) : void
            {
                _ChangeEquipmentWindow_DataGridColumn7.itemRenderer = param1;
                return;
            }// end function
            , "_ChangeEquipmentWindow_DataGridColumn7.itemRenderer");
            result[11] = binding;
            binding = new Binding(this, function () : String
            {
                var _loc_1:* = Utils.i18n("changeEquipmentType");
                var _loc_2:* = _loc_1 == undefined ? (null) : (String(_loc_1));
                return _loc_2;
            }// end function
            , function (param1:String) : void
            {
                _ChangeEquipmentWindow_DataGridColumn8.headerText = param1;
                return;
            }// end function
            , "_ChangeEquipmentWindow_DataGridColumn8.headerText");
            result[12] = binding;
            binding = new Binding(this, function () : String
            {
                var _loc_1:* = Utils.i18n("changeEquipmentAttack");
                var _loc_2:* = _loc_1 == undefined ? (null) : (String(_loc_1));
                return _loc_2;
            }// end function
            , function (param1:String) : void
            {
                _ChangeEquipmentWindow_DataGridColumn9.headerText = param1;
                return;
            }// end function
            , "_ChangeEquipmentWindow_DataGridColumn9.headerText");
            result[13] = binding;
            binding = new Binding(this, function () : String
            {
                var _loc_1:* = Utils.i18n("changeEquipmentHit");
                var _loc_2:* = _loc_1 == undefined ? (null) : (String(_loc_1));
                return _loc_2;
            }// end function
            , function (param1:String) : void
            {
                _ChangeEquipmentWindow_DataGridColumn10.headerText = param1;
                return;
            }// end function
            , "_ChangeEquipmentWindow_DataGridColumn10.headerText");
            result[14] = binding;
            binding = new Binding(this, function () : String
            {
                var _loc_1:* = Utils.i18n("changeEquipmentEndurance");
                var _loc_2:* = _loc_1 == undefined ? (null) : (String(_loc_1));
                return _loc_2;
            }// end function
            , function (param1:String) : void
            {
                _ChangeEquipmentWindow_DataGridColumn11.headerText = param1;
                return;
            }// end function
            , "_ChangeEquipmentWindow_DataGridColumn11.headerText");
            result[15] = binding;
            binding = new Binding(this, function () : String
            {
                var _loc_1:* = Utils.i18n("generalDescription");
                var _loc_2:* = _loc_1 == undefined ? (null) : (String(_loc_1));
                return _loc_2;
            }// end function
            , function (param1:String) : void
            {
                _ChangeEquipmentWindow_DataGridColumn12.headerText = param1;
                return;
            }// end function
            , "_ChangeEquipmentWindow_DataGridColumn12.headerText");
            result[16] = binding;
            binding = new Binding(this, function () : Object
            {
                return _unit.armor;
            }// end function
            , function (param1:Object) : void
            {
                unit_armor_data_list.dataProvider = param1;
                return;
            }// end function
            , "unit_armor_data_list.dataProvider");
            result[17] = binding;
            binding = new Binding(this, function () : String
            {
                var _loc_1:* = Utils.i18n("changeEquipmentArmorName");
                var _loc_2:* = _loc_1 == undefined ? (null) : (String(_loc_1));
                return _loc_2;
            }// end function
            , function (param1:String) : void
            {
                _ChangeEquipmentWindow_DataGridColumn13.headerText = param1;
                return;
            }// end function
            , "_ChangeEquipmentWindow_DataGridColumn13.headerText");
            result[18] = binding;
            binding = new Binding(this, function () : IFactory
            {
                return equipment_icon_renderer;
            }// end function
            , function (param1:IFactory) : void
            {
                _ChangeEquipmentWindow_DataGridColumn13.itemRenderer = param1;
                return;
            }// end function
            , "_ChangeEquipmentWindow_DataGridColumn13.itemRenderer");
            result[19] = binding;
            binding = new Binding(this, function () : String
            {
                var _loc_1:* = Utils.i18n("changeEquipmentDefense");
                var _loc_2:* = _loc_1 == undefined ? (null) : (String(_loc_1));
                return _loc_2;
            }// end function
            , function (param1:String) : void
            {
                _ChangeEquipmentWindow_DataGridColumn14.headerText = param1;
                return;
            }// end function
            , "_ChangeEquipmentWindow_DataGridColumn14.headerText");
            result[20] = binding;
            binding = new Binding(this, function () : String
            {
                var _loc_1:* = Utils.i18n("changeEquipmentMagicalDefense");
                var _loc_2:* = _loc_1 == undefined ? (null) : (String(_loc_1));
                return _loc_2;
            }// end function
            , function (param1:String) : void
            {
                _ChangeEquipmentWindow_DataGridColumn15.headerText = param1;
                return;
            }// end function
            , "_ChangeEquipmentWindow_DataGridColumn15.headerText");
            result[21] = binding;
            binding = new Binding(this, function () : String
            {
                var _loc_1:* = Utils.i18n("changeEquipmentAvoidance");
                var _loc_2:* = _loc_1 == undefined ? (null) : (String(_loc_1));
                return _loc_2;
            }// end function
            , function (param1:String) : void
            {
                _ChangeEquipmentWindow_DataGridColumn16.headerText = param1;
                return;
            }// end function
            , "_ChangeEquipmentWindow_DataGridColumn16.headerText");
            result[22] = binding;
            binding = new Binding(this, function () : String
            {
                var _loc_1:* = Utils.i18n("changeEquipmentEndurance");
                var _loc_2:* = _loc_1 == undefined ? (null) : (String(_loc_1));
                return _loc_2;
            }// end function
            , function (param1:String) : void
            {
                _ChangeEquipmentWindow_DataGridColumn17.headerText = param1;
                return;
            }// end function
            , "_ChangeEquipmentWindow_DataGridColumn17.headerText");
            result[23] = binding;
            binding = new Binding(this, function () : String
            {
                var _loc_1:* = Utils.i18n("generalDescription");
                var _loc_2:* = _loc_1 == undefined ? (null) : (String(_loc_1));
                return _loc_2;
            }// end function
            , function (param1:String) : void
            {
                _ChangeEquipmentWindow_DataGridColumn18.headerText = param1;
                return;
            }// end function
            , "_ChangeEquipmentWindow_DataGridColumn18.headerText");
            result[24] = binding;
            binding = new Binding(this, function () : Object
            {
                return _unit.accessory;
            }// end function
            , function (param1:Object) : void
            {
                unit_accessory_data_list.dataProvider = param1;
                return;
            }// end function
            , "unit_accessory_data_list.dataProvider");
            result[25] = binding;
            binding = new Binding(this, function () : String
            {
                var _loc_1:* = Utils.i18n("changeEquipmentAccessoryName");
                var _loc_2:* = _loc_1 == undefined ? (null) : (String(_loc_1));
                return _loc_2;
            }// end function
            , function (param1:String) : void
            {
                _ChangeEquipmentWindow_DataGridColumn19.headerText = param1;
                return;
            }// end function
            , "_ChangeEquipmentWindow_DataGridColumn19.headerText");
            result[26] = binding;
            binding = new Binding(this, function () : IFactory
            {
                return equipment_icon_renderer;
            }// end function
            , function (param1:IFactory) : void
            {
                _ChangeEquipmentWindow_DataGridColumn19.itemRenderer = param1;
                return;
            }// end function
            , "_ChangeEquipmentWindow_DataGridColumn19.itemRenderer");
            result[27] = binding;
            binding = new Binding(this, function () : String
            {
                var _loc_1:* = Utils.i18n("changeEquipmentEffect");
                var _loc_2:* = _loc_1 == undefined ? (null) : (String(_loc_1));
                return _loc_2;
            }// end function
            , function (param1:String) : void
            {
                _ChangeEquipmentWindow_DataGridColumn20.headerText = param1;
                return;
            }// end function
            , "_ChangeEquipmentWindow_DataGridColumn20.headerText");
            result[28] = binding;
            binding = new Binding(this, function () : String
            {
                var _loc_1:* = Utils.i18n("generalDescription");
                var _loc_2:* = _loc_1 == undefined ? (null) : (String(_loc_1));
                return _loc_2;
            }// end function
            , function (param1:String) : void
            {
                _ChangeEquipmentWindow_DataGridColumn21.headerText = param1;
                return;
            }// end function
            , "_ChangeEquipmentWindow_DataGridColumn21.headerText");
            result[29] = binding;
            binding = new Binding(this, function () : Object
            {
                return _unit.item;
            }// end function
            , function (param1:Object) : void
            {
                unit_item_data_list.dataProvider = param1;
                return;
            }// end function
            , "unit_item_data_list.dataProvider");
            result[30] = binding;
            binding = new Binding(this, function () : String
            {
                var _loc_1:* = Utils.i18n("changeEquipmentItemName");
                var _loc_2:* = _loc_1 == undefined ? (null) : (String(_loc_1));
                return _loc_2;
            }// end function
            , function (param1:String) : void
            {
                _ChangeEquipmentWindow_DataGridColumn22.headerText = param1;
                return;
            }// end function
            , "_ChangeEquipmentWindow_DataGridColumn22.headerText");
            result[31] = binding;
            binding = new Binding(this, function () : IFactory
            {
                return equipment_icon_renderer;
            }// end function
            , function (param1:IFactory) : void
            {
                _ChangeEquipmentWindow_DataGridColumn22.itemRenderer = param1;
                return;
            }// end function
            , "_ChangeEquipmentWindow_DataGridColumn22.itemRenderer");
            result[32] = binding;
            binding = new Binding(this, function () : String
            {
                var _loc_1:* = Utils.i18n("changeEquipmentEffect");
                var _loc_2:* = _loc_1 == undefined ? (null) : (String(_loc_1));
                return _loc_2;
            }// end function
            , function (param1:String) : void
            {
                _ChangeEquipmentWindow_DataGridColumn23.headerText = param1;
                return;
            }// end function
            , "_ChangeEquipmentWindow_DataGridColumn23.headerText");
            result[33] = binding;
            binding = new Binding(this, function () : String
            {
                var _loc_1:* = Utils.i18n("changeEquipmentEndurance");
                var _loc_2:* = _loc_1 == undefined ? (null) : (String(_loc_1));
                return _loc_2;
            }// end function
            , function (param1:String) : void
            {
                _ChangeEquipmentWindow_DataGridColumn24.headerText = param1;
                return;
            }// end function
            , "_ChangeEquipmentWindow_DataGridColumn24.headerText");
            result[34] = binding;
            binding = new Binding(this, function () : String
            {
                var _loc_1:* = Utils.i18n("generalDescription");
                var _loc_2:* = _loc_1 == undefined ? (null) : (String(_loc_1));
                return _loc_2;
            }// end function
            , function (param1:String) : void
            {
                _ChangeEquipmentWindow_DataGridColumn25.headerText = param1;
                return;
            }// end function
            , "_ChangeEquipmentWindow_DataGridColumn25.headerText");
            result[35] = binding;
            binding = new Binding(this, function () : String
            {
                var _loc_1:* = Utils.i18n("generalEquipWeapon");
                var _loc_2:* = _loc_1 == undefined ? (null) : (String(_loc_1));
                return _loc_2;
            }// end function
            , function (param1:String) : void
            {
                _ChangeEquipmentWindow_VBox7.label = param1;
                return;
            }// end function
            , "_ChangeEquipmentWindow_VBox7.label");
            result[36] = binding;
            binding = new Binding(this, function () : Object
            {
                return viewDataWeapon;
            }// end function
            , function (param1:Object) : void
            {
                weapon_data_list.dataProvider = param1;
                return;
            }// end function
            , "weapon_data_list.dataProvider");
            result[37] = binding;
            binding = new Binding(this, function () : Boolean
            {
                return nonTutVisible;
            }// end function
            , function (param1:Boolean) : void
            {
                weapon_data_list.visible = param1;
                return;
            }// end function
            , "weapon_data_list.visible");
            result[38] = binding;
            binding = new Binding(this, function () : String
            {
                var _loc_1:* = Utils.i18n("changeEquipmentWeaponName");
                var _loc_2:* = _loc_1 == undefined ? (null) : (String(_loc_1));
                return _loc_2;
            }// end function
            , function (param1:String) : void
            {
                _ChangeEquipmentWindow_DataGridColumn26.headerText = param1;
                return;
            }// end function
            , "_ChangeEquipmentWindow_DataGridColumn26.headerText");
            result[39] = binding;
            binding = new Binding(this, function () : IFactory
            {
                return icon_renderer;
            }// end function
            , function (param1:IFactory) : void
            {
                _ChangeEquipmentWindow_DataGridColumn26.itemRenderer = param1;
                return;
            }// end function
            , "_ChangeEquipmentWindow_DataGridColumn26.itemRenderer");
            result[40] = binding;
            binding = new Binding(this, function () : String
            {
                var _loc_1:* = Utils.i18n("changeEquipmentType");
                var _loc_2:* = _loc_1 == undefined ? (null) : (String(_loc_1));
                return _loc_2;
            }// end function
            , function (param1:String) : void
            {
                _ChangeEquipmentWindow_DataGridColumn27.headerText = param1;
                return;
            }// end function
            , "_ChangeEquipmentWindow_DataGridColumn27.headerText");
            result[41] = binding;
            binding = new Binding(this, function () : String
            {
                var _loc_1:* = Utils.i18n("changeEquipmentAttack");
                var _loc_2:* = _loc_1 == undefined ? (null) : (String(_loc_1));
                return _loc_2;
            }// end function
            , function (param1:String) : void
            {
                _ChangeEquipmentWindow_DataGridColumn28.headerText = param1;
                return;
            }// end function
            , "_ChangeEquipmentWindow_DataGridColumn28.headerText");
            result[42] = binding;
            binding = new Binding(this, function () : String
            {
                var _loc_1:* = Utils.i18n("changeEquipmentHit");
                var _loc_2:* = _loc_1 == undefined ? (null) : (String(_loc_1));
                return _loc_2;
            }// end function
            , function (param1:String) : void
            {
                _ChangeEquipmentWindow_DataGridColumn29.headerText = param1;
                return;
            }// end function
            , "_ChangeEquipmentWindow_DataGridColumn29.headerText");
            result[43] = binding;
            binding = new Binding(this, function () : String
            {
                var _loc_1:* = Utils.i18n("changeEquipmentEndurance");
                var _loc_2:* = _loc_1 == undefined ? (null) : (String(_loc_1));
                return _loc_2;
            }// end function
            , function (param1:String) : void
            {
                _ChangeEquipmentWindow_DataGridColumn30.headerText = param1;
                return;
            }// end function
            , "_ChangeEquipmentWindow_DataGridColumn30.headerText");
            result[44] = binding;
            binding = new Binding(this, function () : String
            {
                var _loc_1:* = Utils.i18n("generalDescription");
                var _loc_2:* = _loc_1 == undefined ? (null) : (String(_loc_1));
                return _loc_2;
            }// end function
            , function (param1:String) : void
            {
                _ChangeEquipmentWindow_DataGridColumn31.headerText = param1;
                return;
            }// end function
            , "_ChangeEquipmentWindow_DataGridColumn31.headerText");
            result[45] = binding;
            binding = new Binding(this, function () : Object
            {
                return viewDataWeapon;
            }// end function
            , function (param1:Object) : void
            {
                weapon_data_list_tutorial.dataProvider = param1;
                return;
            }// end function
            , "weapon_data_list_tutorial.dataProvider");
            result[46] = binding;
            binding = new Binding(this, function () : Boolean
            {
                return tutVisible;
            }// end function
            , function (param1:Boolean) : void
            {
                weapon_data_list_tutorial.visible = param1;
                return;
            }// end function
            , "weapon_data_list_tutorial.visible");
            result[47] = binding;
            binding = new Binding(this, function () : String
            {
                var _loc_1:* = Utils.i18n("changeEquipmentWeaponName");
                var _loc_2:* = _loc_1 == undefined ? (null) : (String(_loc_1));
                return _loc_2;
            }// end function
            , function (param1:String) : void
            {
                _ChangeEquipmentWindow_DataGridColumn32.headerText = param1;
                return;
            }// end function
            , "_ChangeEquipmentWindow_DataGridColumn32.headerText");
            result[48] = binding;
            binding = new Binding(this, function () : IFactory
            {
                return icon_renderer_tutorial;
            }// end function
            , function (param1:IFactory) : void
            {
                _ChangeEquipmentWindow_DataGridColumn32.itemRenderer = param1;
                return;
            }// end function
            , "_ChangeEquipmentWindow_DataGridColumn32.itemRenderer");
            result[49] = binding;
            binding = new Binding(this, function () : String
            {
                var _loc_1:* = Utils.i18n("changeEquipmentType");
                var _loc_2:* = _loc_1 == undefined ? (null) : (String(_loc_1));
                return _loc_2;
            }// end function
            , function (param1:String) : void
            {
                _ChangeEquipmentWindow_DataGridColumn33.headerText = param1;
                return;
            }// end function
            , "_ChangeEquipmentWindow_DataGridColumn33.headerText");
            result[50] = binding;
            binding = new Binding(this, function () : String
            {
                var _loc_1:* = Utils.i18n("changeEquipmentAttack");
                var _loc_2:* = _loc_1 == undefined ? (null) : (String(_loc_1));
                return _loc_2;
            }// end function
            , function (param1:String) : void
            {
                _ChangeEquipmentWindow_DataGridColumn34.headerText = param1;
                return;
            }// end function
            , "_ChangeEquipmentWindow_DataGridColumn34.headerText");
            result[51] = binding;
            binding = new Binding(this, function () : String
            {
                var _loc_1:* = Utils.i18n("changeEquipmentHit");
                var _loc_2:* = _loc_1 == undefined ? (null) : (String(_loc_1));
                return _loc_2;
            }// end function
            , function (param1:String) : void
            {
                _ChangeEquipmentWindow_DataGridColumn35.headerText = param1;
                return;
            }// end function
            , "_ChangeEquipmentWindow_DataGridColumn35.headerText");
            result[52] = binding;
            binding = new Binding(this, function () : String
            {
                var _loc_1:* = Utils.i18n("changeEquipmentEndurance");
                var _loc_2:* = _loc_1 == undefined ? (null) : (String(_loc_1));
                return _loc_2;
            }// end function
            , function (param1:String) : void
            {
                _ChangeEquipmentWindow_DataGridColumn36.headerText = param1;
                return;
            }// end function
            , "_ChangeEquipmentWindow_DataGridColumn36.headerText");
            result[53] = binding;
            binding = new Binding(this, function () : String
            {
                var _loc_1:* = Utils.i18n("generalDescription");
                var _loc_2:* = _loc_1 == undefined ? (null) : (String(_loc_1));
                return _loc_2;
            }// end function
            , function (param1:String) : void
            {
                _ChangeEquipmentWindow_DataGridColumn37.headerText = param1;
                return;
            }// end function
            , "_ChangeEquipmentWindow_DataGridColumn37.headerText");
            result[54] = binding;
            binding = new Binding(this, function () : String
            {
                var _loc_1:* = Utils.i18n("armsSubArms");
                var _loc_2:* = _loc_1 == undefined ? (null) : (String(_loc_1));
                return _loc_2;
            }// end function
            , function (param1:String) : void
            {
                _ChangeEquipmentWindow_VBox8.label = param1;
                return;
            }// end function
            , "_ChangeEquipmentWindow_VBox8.label");
            result[55] = binding;
            binding = new Binding(this, function () : Object
            {
                return viewDataWeapon;
            }// end function
            , function (param1:Object) : void
            {
                subWeapon_data_list.dataProvider = param1;
                return;
            }// end function
            , "subWeapon_data_list.dataProvider");
            result[56] = binding;
            binding = new Binding(this, function () : String
            {
                var _loc_1:* = Utils.i18n("changeEquipmentWeaponName");
                var _loc_2:* = _loc_1 == undefined ? (null) : (String(_loc_1));
                return _loc_2;
            }// end function
            , function (param1:String) : void
            {
                _ChangeEquipmentWindow_DataGridColumn38.headerText = param1;
                return;
            }// end function
            , "_ChangeEquipmentWindow_DataGridColumn38.headerText");
            result[57] = binding;
            binding = new Binding(this, function () : IFactory
            {
                return icon_renderer;
            }// end function
            , function (param1:IFactory) : void
            {
                _ChangeEquipmentWindow_DataGridColumn38.itemRenderer = param1;
                return;
            }// end function
            , "_ChangeEquipmentWindow_DataGridColumn38.itemRenderer");
            result[58] = binding;
            binding = new Binding(this, function () : String
            {
                var _loc_1:* = Utils.i18n("changeEquipmentType");
                var _loc_2:* = _loc_1 == undefined ? (null) : (String(_loc_1));
                return _loc_2;
            }// end function
            , function (param1:String) : void
            {
                _ChangeEquipmentWindow_DataGridColumn39.headerText = param1;
                return;
            }// end function
            , "_ChangeEquipmentWindow_DataGridColumn39.headerText");
            result[59] = binding;
            binding = new Binding(this, function () : String
            {
                var _loc_1:* = Utils.i18n("changeEquipmentAttack");
                var _loc_2:* = _loc_1 == undefined ? (null) : (String(_loc_1));
                return _loc_2;
            }// end function
            , function (param1:String) : void
            {
                _ChangeEquipmentWindow_DataGridColumn40.headerText = param1;
                return;
            }// end function
            , "_ChangeEquipmentWindow_DataGridColumn40.headerText");
            result[60] = binding;
            binding = new Binding(this, function () : String
            {
                var _loc_1:* = Utils.i18n("changeEquipmentHit");
                var _loc_2:* = _loc_1 == undefined ? (null) : (String(_loc_1));
                return _loc_2;
            }// end function
            , function (param1:String) : void
            {
                _ChangeEquipmentWindow_DataGridColumn41.headerText = param1;
                return;
            }// end function
            , "_ChangeEquipmentWindow_DataGridColumn41.headerText");
            result[61] = binding;
            binding = new Binding(this, function () : String
            {
                var _loc_1:* = Utils.i18n("changeEquipmentEndurance");
                var _loc_2:* = _loc_1 == undefined ? (null) : (String(_loc_1));
                return _loc_2;
            }// end function
            , function (param1:String) : void
            {
                _ChangeEquipmentWindow_DataGridColumn42.headerText = param1;
                return;
            }// end function
            , "_ChangeEquipmentWindow_DataGridColumn42.headerText");
            result[62] = binding;
            binding = new Binding(this, function () : String
            {
                var _loc_1:* = Utils.i18n("generalDescription");
                var _loc_2:* = _loc_1 == undefined ? (null) : (String(_loc_1));
                return _loc_2;
            }// end function
            , function (param1:String) : void
            {
                _ChangeEquipmentWindow_DataGridColumn43.headerText = param1;
                return;
            }// end function
            , "_ChangeEquipmentWindow_DataGridColumn43.headerText");
            result[63] = binding;
            binding = new Binding(this, function () : String
            {
                var _loc_1:* = Utils.i18n("generalEquipArmor");
                var _loc_2:* = _loc_1 == undefined ? (null) : (String(_loc_1));
                return _loc_2;
            }// end function
            , function (param1:String) : void
            {
                _ChangeEquipmentWindow_VBox9.label = param1;
                return;
            }// end function
            , "_ChangeEquipmentWindow_VBox9.label");
            result[64] = binding;
            binding = new Binding(this, function () : Object
            {
                return viewDataArmor;
            }// end function
            , function (param1:Object) : void
            {
                armor_data_list.dataProvider = param1;
                return;
            }// end function
            , "armor_data_list.dataProvider");
            result[65] = binding;
            binding = new Binding(this, function () : String
            {
                var _loc_1:* = Utils.i18n("changeEquipmentArmorName");
                var _loc_2:* = _loc_1 == undefined ? (null) : (String(_loc_1));
                return _loc_2;
            }// end function
            , function (param1:String) : void
            {
                _ChangeEquipmentWindow_DataGridColumn44.headerText = param1;
                return;
            }// end function
            , "_ChangeEquipmentWindow_DataGridColumn44.headerText");
            result[66] = binding;
            binding = new Binding(this, function () : IFactory
            {
                return icon_renderer;
            }// end function
            , function (param1:IFactory) : void
            {
                _ChangeEquipmentWindow_DataGridColumn44.itemRenderer = param1;
                return;
            }// end function
            , "_ChangeEquipmentWindow_DataGridColumn44.itemRenderer");
            result[67] = binding;
            binding = new Binding(this, function () : String
            {
                var _loc_1:* = Utils.i18n("changeEquipmentDefense");
                var _loc_2:* = _loc_1 == undefined ? (null) : (String(_loc_1));
                return _loc_2;
            }// end function
            , function (param1:String) : void
            {
                _ChangeEquipmentWindow_DataGridColumn45.headerText = param1;
                return;
            }// end function
            , "_ChangeEquipmentWindow_DataGridColumn45.headerText");
            result[68] = binding;
            binding = new Binding(this, function () : String
            {
                var _loc_1:* = Utils.i18n("changeEquipmentMagicalDefense");
                var _loc_2:* = _loc_1 == undefined ? (null) : (String(_loc_1));
                return _loc_2;
            }// end function
            , function (param1:String) : void
            {
                _ChangeEquipmentWindow_DataGridColumn46.headerText = param1;
                return;
            }// end function
            , "_ChangeEquipmentWindow_DataGridColumn46.headerText");
            result[69] = binding;
            binding = new Binding(this, function () : String
            {
                var _loc_1:* = Utils.i18n("changeEquipmentAvoidance");
                var _loc_2:* = _loc_1 == undefined ? (null) : (String(_loc_1));
                return _loc_2;
            }// end function
            , function (param1:String) : void
            {
                _ChangeEquipmentWindow_DataGridColumn47.headerText = param1;
                return;
            }// end function
            , "_ChangeEquipmentWindow_DataGridColumn47.headerText");
            result[70] = binding;
            binding = new Binding(this, function () : String
            {
                var _loc_1:* = Utils.i18n("changeEquipmentEndurance");
                var _loc_2:* = _loc_1 == undefined ? (null) : (String(_loc_1));
                return _loc_2;
            }// end function
            , function (param1:String) : void
            {
                _ChangeEquipmentWindow_DataGridColumn48.headerText = param1;
                return;
            }// end function
            , "_ChangeEquipmentWindow_DataGridColumn48.headerText");
            result[71] = binding;
            binding = new Binding(this, function () : String
            {
                var _loc_1:* = Utils.i18n("generalDescription");
                var _loc_2:* = _loc_1 == undefined ? (null) : (String(_loc_1));
                return _loc_2;
            }// end function
            , function (param1:String) : void
            {
                _ChangeEquipmentWindow_DataGridColumn49.headerText = param1;
                return;
            }// end function
            , "_ChangeEquipmentWindow_DataGridColumn49.headerText");
            result[72] = binding;
            binding = new Binding(this, function () : String
            {
                var _loc_1:* = Utils.i18n("generalEquipAccessory");
                var _loc_2:* = _loc_1 == undefined ? (null) : (String(_loc_1));
                return _loc_2;
            }// end function
            , function (param1:String) : void
            {
                _ChangeEquipmentWindow_VBox10.label = param1;
                return;
            }// end function
            , "_ChangeEquipmentWindow_VBox10.label");
            result[73] = binding;
            binding = new Binding(this, function () : Object
            {
                return viewDataAccessory;
            }// end function
            , function (param1:Object) : void
            {
                accessory_data_list.dataProvider = param1;
                return;
            }// end function
            , "accessory_data_list.dataProvider");
            result[74] = binding;
            binding = new Binding(this, function () : String
            {
                var _loc_1:* = Utils.i18n("changeEquipmentAccessoryName");
                var _loc_2:* = _loc_1 == undefined ? (null) : (String(_loc_1));
                return _loc_2;
            }// end function
            , function (param1:String) : void
            {
                _ChangeEquipmentWindow_DataGridColumn50.headerText = param1;
                return;
            }// end function
            , "_ChangeEquipmentWindow_DataGridColumn50.headerText");
            result[75] = binding;
            binding = new Binding(this, function () : IFactory
            {
                return icon_renderer;
            }// end function
            , function (param1:IFactory) : void
            {
                _ChangeEquipmentWindow_DataGridColumn50.itemRenderer = param1;
                return;
            }// end function
            , "_ChangeEquipmentWindow_DataGridColumn50.itemRenderer");
            result[76] = binding;
            binding = new Binding(this, function () : String
            {
                var _loc_1:* = Utils.i18n("changeEquipmentEffect");
                var _loc_2:* = _loc_1 == undefined ? (null) : (String(_loc_1));
                return _loc_2;
            }// end function
            , function (param1:String) : void
            {
                _ChangeEquipmentWindow_DataGridColumn51.headerText = param1;
                return;
            }// end function
            , "_ChangeEquipmentWindow_DataGridColumn51.headerText");
            result[77] = binding;
            binding = new Binding(this, function () : String
            {
                var _loc_1:* = Utils.i18n("generalDescription");
                var _loc_2:* = _loc_1 == undefined ? (null) : (String(_loc_1));
                return _loc_2;
            }// end function
            , function (param1:String) : void
            {
                _ChangeEquipmentWindow_DataGridColumn52.headerText = param1;
                return;
            }// end function
            , "_ChangeEquipmentWindow_DataGridColumn52.headerText");
            result[78] = binding;
            binding = new Binding(this, function () : String
            {
                var _loc_1:* = Utils.i18n("generalMaterial");
                var _loc_2:* = _loc_1 == undefined ? (null) : (String(_loc_1));
                return _loc_2;
            }// end function
            , function (param1:String) : void
            {
                _ChangeEquipmentWindow_VBox11.label = param1;
                return;
            }// end function
            , "_ChangeEquipmentWindow_VBox11.label");
            result[79] = binding;
            binding = new Binding(this, function () : Object
            {
                return viewDataItem;
            }// end function
            , function (param1:Object) : void
            {
                item_data_list.dataProvider = param1;
                return;
            }// end function
            , "item_data_list.dataProvider");
            result[80] = binding;
            binding = new Binding(this, function () : IFactory
            {
                return icon_renderer;
            }// end function
            , function (param1:IFactory) : void
            {
                _ChangeEquipmentWindow_DataGridColumn53.itemRenderer = param1;
                return;
            }// end function
            , "_ChangeEquipmentWindow_DataGridColumn53.itemRenderer");
            result[81] = binding;
            binding = new Binding(this, function () : String
            {
                var _loc_1:* = Utils.i18n("changeEquipmentEffect");
                var _loc_2:* = _loc_1 == undefined ? (null) : (String(_loc_1));
                return _loc_2;
            }// end function
            , function (param1:String) : void
            {
                _ChangeEquipmentWindow_DataGridColumn54.headerText = param1;
                return;
            }// end function
            , "_ChangeEquipmentWindow_DataGridColumn54.headerText");
            result[82] = binding;
            binding = new Binding(this, function () : String
            {
                var _loc_1:* = Utils.i18n("changeEquipmentEndurance");
                var _loc_2:* = _loc_1 == undefined ? (null) : (String(_loc_1));
                return _loc_2;
            }// end function
            , function (param1:String) : void
            {
                _ChangeEquipmentWindow_DataGridColumn55.headerText = param1;
                return;
            }// end function
            , "_ChangeEquipmentWindow_DataGridColumn55.headerText");
            result[83] = binding;
            binding = new Binding(this, function () : String
            {
                var _loc_1:* = Utils.i18n("generalDescription");
                var _loc_2:* = _loc_1 == undefined ? (null) : (String(_loc_1));
                return _loc_2;
            }// end function
            , function (param1:String) : void
            {
                _ChangeEquipmentWindow_DataGridColumn56.headerText = param1;
                return;
            }// end function
            , "_ChangeEquipmentWindow_DataGridColumn56.headerText");
            result[84] = binding;
            binding = new Binding(this, function () : Object
            {
                return _swf_equip;
            }// end function
            , function (param1:Object) : void
            {
                _ChangeEquipmentWindow_Image2.source = param1;
                return;
            }// end function
            , "_ChangeEquipmentWindow_Image2.source");
            result[85] = binding;
            binding = new Binding(this, function () : Object
            {
                return _swf_close;
            }// end function
            , function (param1:Object) : void
            {
                _ChangeEquipmentWindow_Image3.source = param1;
                return;
            }// end function
            , "_ChangeEquipmentWindow_Image3.source");
            result[86] = binding;
            binding = new Binding(this, function () : Object
            {
                return _arrow_top;
            }// end function
            , function (param1:Object) : void
            {
                tutMarkFinishEquip.source = param1;
                return;
            }// end function
            , "tutMarkFinishEquip.source");
            result[87] = binding;
            return result;
        }// end function

        public function ___ChangeEquipmentWindow_Image1_click(event:MouseEvent) : void
        {
            onClose();
            return;
        }// end function

        public function get viewDataArmor() : ArrayCollection
        {
            return this._993932656viewDataArmor;
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

        public function get myViewStack() : ViewStack
        {
            return this._182637929myViewStack;
        }// end function

        private function get _arrow_top() : Class
        {
            return this._1780429472_arrow_top;
        }// end function

        private function _ChangeEquipmentWindow_DataGridColumn23_i() : DataGridColumn
        {
            var _loc_1:* = new DataGridColumn();
            _ChangeEquipmentWindow_DataGridColumn23 = _loc_1;
            _loc_1.dataField = "effect";
            _loc_1.width = 170;
            _loc_1.sortable = false;
            _loc_1.setStyle("textAlign", "center");
            BindingManager.executeBindings(this, "_ChangeEquipmentWindow_DataGridColumn23", _ChangeEquipmentWindow_DataGridColumn23);
            return _loc_1;
        }// end function

        private function _ChangeEquipmentWindow_DataGridColumn46_i() : DataGridColumn
        {
            var _loc_1:* = new DataGridColumn();
            _ChangeEquipmentWindow_DataGridColumn46 = _loc_1;
            _loc_1.dataField = "magicalDefense";
            _loc_1.width = 60;
            _loc_1.setStyle("textAlign", "center");
            BindingManager.executeBindings(this, "_ChangeEquipmentWindow_DataGridColumn46", _ChangeEquipmentWindow_DataGridColumn46);
            return _loc_1;
        }// end function

        public function onClickEquipment(param1:Object) : void
        {
            var _loc_2:* = myViewStack.selectedIndex;
            switch(_loc_2)
            {
                case 0:
                {
                    onClickWeapon(param1, "main");
                    if (param1.code == 2058)
                    {
                        _tutMarkEquipFinishVisible = true;
                    }
                    else
                    {
                        _tutMarkEquipFinishVisible = false;
                    }
                    dispatchEvent(new Event(CHANGE_EQUIPMENT_WINDOW_TMARK_EQUIP));
                    break;
                }
                case 1:
                {
                    onClickWeapon(param1, "sub");
                    break;
                }
                case 2:
                {
                    onClickArmor(param1);
                    break;
                }
                case 3:
                {
                    onClickAccessory(param1);
                    break;
                }
                case 4:
                {
                    onClickItem(param1);
                    break;
                }
                default:
                {
                    break;
                }
            }
            unitViewStack.selectedIndex = myViewStack.selectedIndex;
            return;
        }// end function

        public function get _arrow_right() : Class
        {
            return this._1593707687_arrow_right;
        }// end function

        public function __unit_weapon_data_list_headerRelease(event:DataGridEvent) : void
        {
            fieldSort(event, viewDataWeapon);
            return;
        }// end function

        private function _ChangeEquipmentWindow_DataGridColumn11_i() : DataGridColumn
        {
            var _loc_1:* = new DataGridColumn();
            _ChangeEquipmentWindow_DataGridColumn11 = _loc_1;
            _loc_1.dataField = "enduranceLabel";
            _loc_1.width = 60;
            _loc_1.setStyle("textAlign", "center");
            BindingManager.executeBindings(this, "_ChangeEquipmentWindow_DataGridColumn11", _ChangeEquipmentWindow_DataGridColumn11);
            return _loc_1;
        }// end function

        private function get _swf_close() : MovieClipLoaderAsset
        {
            return this._1193840764_swf_close;
        }// end function

        private function set _unit(param1:UnitVO) : void
        {
            var _loc_2:* = this._91329123_unit;
            if (_loc_2 !== param1)
            {
                this._91329123_unit = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "_unit", _loc_2, param1));
            }
            return;
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

        private function _ChangeEquipmentWindow_DataGridColumn19_i() : DataGridColumn
        {
            var _loc_1:* = new DataGridColumn();
            _ChangeEquipmentWindow_DataGridColumn19 = _loc_1;
            _loc_1.dataField = "nameLabel";
            _loc_1.width = 170;
            BindingManager.executeBindings(this, "_ChangeEquipmentWindow_DataGridColumn19", _ChangeEquipmentWindow_DataGridColumn19);
            return _loc_1;
        }// end function

        private function get _swf_equip() : MovieClipLoaderAsset
        {
            return this._1195842228_swf_equip;
        }// end function

        private function _ChangeEquipmentWindow_DataGridColumn50_i() : DataGridColumn
        {
            var _loc_1:* = new DataGridColumn();
            _ChangeEquipmentWindow_DataGridColumn50 = _loc_1;
            _loc_1.dataField = "nameLabel";
            _loc_1.width = 170;
            BindingManager.executeBindings(this, "_ChangeEquipmentWindow_DataGridColumn50", _ChangeEquipmentWindow_DataGridColumn50);
            return _loc_1;
        }// end function

        public function set unit_armor_data_list(param1:DataGrid) : void
        {
            var _loc_2:* = this._2109705128unit_armor_data_list;
            if (_loc_2 !== param1)
            {
                this._2109705128unit_armor_data_list = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "unit_armor_data_list", _loc_2, param1));
            }
            return;
        }// end function

        private function _ChangeEquipmentWindow_DataGridColumn9_i() : DataGridColumn
        {
            var _loc_1:* = new DataGridColumn();
            _ChangeEquipmentWindow_DataGridColumn9 = _loc_1;
            _loc_1.dataField = "damage";
            _loc_1.width = 60;
            _loc_1.setStyle("textAlign", "center");
            BindingManager.executeBindings(this, "_ChangeEquipmentWindow_DataGridColumn9", _ChangeEquipmentWindow_DataGridColumn9);
            return _loc_1;
        }// end function

        private function _ChangeEquipmentWindow_DataGridColumn45_i() : DataGridColumn
        {
            var _loc_1:* = new DataGridColumn();
            _ChangeEquipmentWindow_DataGridColumn45 = _loc_1;
            _loc_1.dataField = "physicalDefense";
            _loc_1.width = 60;
            _loc_1.setStyle("textAlign", "center");
            BindingManager.executeBindings(this, "_ChangeEquipmentWindow_DataGridColumn45", _ChangeEquipmentWindow_DataGridColumn45);
            return _loc_1;
        }// end function

        private function _ChangeEquipmentWindow_DataGridColumn34_i() : DataGridColumn
        {
            var _loc_1:* = new DataGridColumn();
            _ChangeEquipmentWindow_DataGridColumn34 = _loc_1;
            _loc_1.dataField = "damage";
            _loc_1.width = 60;
            _loc_1.setStyle("textAlign", "center");
            BindingManager.executeBindings(this, "_ChangeEquipmentWindow_DataGridColumn34", _ChangeEquipmentWindow_DataGridColumn34);
            return _loc_1;
        }// end function

        private function _ChangeEquipmentWindow_DataGridColumn8_i() : DataGridColumn
        {
            var _loc_1:* = new DataGridColumn();
            _ChangeEquipmentWindow_DataGridColumn8 = _loc_1;
            _loc_1.dataField = "weaponTypeLabel";
            _loc_1.width = 40;
            _loc_1.setStyle("textAlign", "center");
            BindingManager.executeBindings(this, "_ChangeEquipmentWindow_DataGridColumn8", _ChangeEquipmentWindow_DataGridColumn8);
            return _loc_1;
        }// end function

        private function get tutVisible() : Boolean
        {
            return this._94427871tutVisible;
        }// end function

        public function get changeBool() : Boolean
        {
            return _changeBool;
        }// end function

        private function getSortFieldName(param1:String) : String
        {
            switch(param1)
            {
                case "nameLabel":
                {
                    return "masterId";
                }
                case "weaponTypeLabel":
                {
                    return "weaponType";
                }
                case "enduranceLabel":
                {
                    return "endurance";
                }
                default:
                {
                    return param1;
                    break;
                }
            }
        }// end function

        private function _ChangeEquipmentWindow_DataGridColumn10_i() : DataGridColumn
        {
            var _loc_1:* = new DataGridColumn();
            _ChangeEquipmentWindow_DataGridColumn10 = _loc_1;
            _loc_1.dataField = "hit";
            _loc_1.width = 60;
            _loc_1.setStyle("textAlign", "center");
            BindingManager.executeBindings(this, "_ChangeEquipmentWindow_DataGridColumn10", _ChangeEquipmentWindow_DataGridColumn10);
            return _loc_1;
        }// end function

        private function _ChangeEquipmentWindow_DataGridColumn33_i() : DataGridColumn
        {
            var _loc_1:* = new DataGridColumn();
            _ChangeEquipmentWindow_DataGridColumn33 = _loc_1;
            _loc_1.dataField = "weaponTypeLabel";
            _loc_1.width = 40;
            _loc_1.setStyle("textAlign", "center");
            BindingManager.executeBindings(this, "_ChangeEquipmentWindow_DataGridColumn33", _ChangeEquipmentWindow_DataGridColumn33);
            return _loc_1;
        }// end function

        private function _ChangeEquipmentWindow_DataGridColumn56_i() : DataGridColumn
        {
            var _loc_1:* = new DataGridColumn();
            _ChangeEquipmentWindow_DataGridColumn56 = _loc_1;
            _loc_1.dataField = "description";
            BindingManager.executeBindings(this, "_ChangeEquipmentWindow_DataGridColumn56", _ChangeEquipmentWindow_DataGridColumn56);
            return _loc_1;
        }// end function

        public function __unit_armor_data_list_headerRelease(event:DataGridEvent) : void
        {
            fieldSort(event, viewDataArmor);
            return;
        }// end function

        public function __unit_sub_weapon_data_list_headerRelease(event:DataGridEvent) : void
        {
            fieldSort(event, viewDataWeapon);
            return;
        }// end function

        private function _ChangeEquipmentWindow_DataGridColumn18_i() : DataGridColumn
        {
            var _loc_1:* = new DataGridColumn();
            _ChangeEquipmentWindow_DataGridColumn18 = _loc_1;
            _loc_1.dataField = "description";
            _loc_1.sortable = false;
            BindingManager.executeBindings(this, "_ChangeEquipmentWindow_DataGridColumn18", _ChangeEquipmentWindow_DataGridColumn18);
            return _loc_1;
        }// end function

        public function get unit_weapon_data_list() : DataGrid
        {
            return this._1005338869unit_weapon_data_list;
        }// end function

        private function _ChangeEquipmentWindow_DataGridColumn7_i() : DataGridColumn
        {
            var _loc_1:* = new DataGridColumn();
            _ChangeEquipmentWindow_DataGridColumn7 = _loc_1;
            _loc_1.dataField = "nameLabel";
            _loc_1.width = 170;
            BindingManager.executeBindings(this, "_ChangeEquipmentWindow_DataGridColumn7", _ChangeEquipmentWindow_DataGridColumn7);
            return _loc_1;
        }// end function

        public function set equipBox(param1:VBox) : void
        {
            var _loc_2:* = this._588869499equipBox;
            if (_loc_2 !== param1)
            {
                this._588869499equipBox = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "equipBox", _loc_2, param1));
            }
            return;
        }// end function

        public function set unit(param1:UnitVO) : void
        {
            _unit = param1;
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

        public function get changeType() : String
        {
            return _changeType;
        }// end function

        public function get armor_data_list() : DataGrid
        {
            return this._1680067859armor_data_list;
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

        private function _ChangeEquipmentWindow_DataGridColumn22_i() : DataGridColumn
        {
            var _loc_1:* = new DataGridColumn();
            _ChangeEquipmentWindow_DataGridColumn22 = _loc_1;
            _loc_1.dataField = "nameLabel";
            _loc_1.width = 170;
            BindingManager.executeBindings(this, "_ChangeEquipmentWindow_DataGridColumn22", _ChangeEquipmentWindow_DataGridColumn22);
            return _loc_1;
        }// end function

        public function get icon_renderer_tutorial() : ClassFactory
        {
            return this._1404591852icon_renderer_tutorial;
        }// end function

        public function get equipment_icon_renderer() : ClassFactory
        {
            return this._1694165800equipment_icon_renderer;
        }// end function

        private function _ChangeEquipmentWindow_DataGridColumn21_i() : DataGridColumn
        {
            var _loc_1:* = new DataGridColumn();
            _ChangeEquipmentWindow_DataGridColumn21 = _loc_1;
            _loc_1.dataField = "description";
            _loc_1.sortable = false;
            BindingManager.executeBindings(this, "_ChangeEquipmentWindow_DataGridColumn21", _ChangeEquipmentWindow_DataGridColumn21);
            return _loc_1;
        }// end function

        private function _ChangeEquipmentWindow_DataGridColumn44_i() : DataGridColumn
        {
            var _loc_1:* = new DataGridColumn();
            _ChangeEquipmentWindow_DataGridColumn44 = _loc_1;
            _loc_1.dataField = "nameLabel";
            _loc_1.width = 170;
            BindingManager.executeBindings(this, "_ChangeEquipmentWindow_DataGridColumn44", _ChangeEquipmentWindow_DataGridColumn44);
            return _loc_1;
        }// end function

        public function get viewDataWeapon() : ArrayCollection
        {
            return this._129662229viewDataWeapon;
        }// end function

        public function get weapon_data_list_tutorial() : DataGrid
        {
            return this._9878259weapon_data_list_tutorial;
        }// end function

        private function _ChangeEquipmentWindow_DataGridColumn29_i() : DataGridColumn
        {
            var _loc_1:* = new DataGridColumn();
            _ChangeEquipmentWindow_DataGridColumn29 = _loc_1;
            _loc_1.dataField = "hit";
            _loc_1.width = 60;
            _loc_1.setStyle("textAlign", "center");
            BindingManager.executeBindings(this, "_ChangeEquipmentWindow_DataGridColumn29", _ChangeEquipmentWindow_DataGridColumn29);
            return _loc_1;
        }// end function

        public function set viewDataArmor(param1:ArrayCollection) : void
        {
            var _loc_2:* = this._993932656viewDataArmor;
            if (_loc_2 !== param1)
            {
                this._993932656viewDataArmor = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "viewDataArmor", _loc_2, param1));
            }
            return;
        }// end function

        public function get accessory_data_list() : DataGrid
        {
            return this._1073623258accessory_data_list;
        }// end function

        private function _ChangeEquipmentWindow_DataGridColumn17_i() : DataGridColumn
        {
            var _loc_1:* = new DataGridColumn();
            _ChangeEquipmentWindow_DataGridColumn17 = _loc_1;
            _loc_1.dataField = "enduranceLabel";
            _loc_1.width = 60;
            _loc_1.setStyle("textAlign", "center");
            BindingManager.executeBindings(this, "_ChangeEquipmentWindow_DataGridColumn17", _ChangeEquipmentWindow_DataGridColumn17);
            return _loc_1;
        }// end function

        private function _ChangeEquipmentWindow_DataGridColumn55_i() : DataGridColumn
        {
            var _loc_1:* = new DataGridColumn();
            _ChangeEquipmentWindow_DataGridColumn55 = _loc_1;
            _loc_1.dataField = "enduranceLabel";
            _loc_1.width = 60;
            _loc_1.setStyle("textAlign", "center");
            BindingManager.executeBindings(this, "_ChangeEquipmentWindow_DataGridColumn55", _ChangeEquipmentWindow_DataGridColumn55);
            return _loc_1;
        }// end function

        public function get windowLayer() : Canvas
        {
            return this._1896677185windowLayer;
        }// end function

        public function set viewDataItem(param1:ArrayCollection) : void
        {
            var _loc_2:* = this._1492198306viewDataItem;
            if (_loc_2 !== param1)
            {
                this._1492198306viewDataItem = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "viewDataItem", _loc_2, param1));
            }
            return;
        }// end function

        public function __unit_accessory_data_list_headerRelease(event:DataGridEvent) : void
        {
            fieldSort(event, viewDataAccessory);
            return;
        }// end function

        private function _ChangeEquipmentWindow_DataGridColumn32_i() : DataGridColumn
        {
            var _loc_1:* = new DataGridColumn();
            _ChangeEquipmentWindow_DataGridColumn32 = _loc_1;
            _loc_1.dataField = "nameLabel";
            _loc_1.width = 170;
            BindingManager.executeBindings(this, "_ChangeEquipmentWindow_DataGridColumn32", _ChangeEquipmentWindow_DataGridColumn32);
            return _loc_1;
        }// end function

        private function set _arrow_top(param1:Class) : void
        {
            var _loc_2:* = this._1780429472_arrow_top;
            if (_loc_2 !== param1)
            {
                this._1780429472_arrow_top = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "_arrow_top", _loc_2, param1));
            }
            return;
        }// end function

        public function set myViewStack(param1:ViewStack) : void
        {
            var _loc_2:* = this._182637929myViewStack;
            if (_loc_2 !== param1)
            {
                this._182637929myViewStack = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "myViewStack", _loc_2, param1));
            }
            return;
        }// end function

        public function set _arrow_right(param1:Class) : void
        {
            var _loc_2:* = this._1593707687_arrow_right;
            if (_loc_2 !== param1)
            {
                this._1593707687_arrow_right = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "_arrow_right", _loc_2, param1));
            }
            return;
        }// end function

        private function _ChangeEquipmentWindow_DataGridColumn6_i() : DataGridColumn
        {
            var _loc_1:* = new DataGridColumn();
            _ChangeEquipmentWindow_DataGridColumn6 = _loc_1;
            _loc_1.dataField = "description";
            _loc_1.sortable = false;
            BindingManager.executeBindings(this, "_ChangeEquipmentWindow_DataGridColumn6", _ChangeEquipmentWindow_DataGridColumn6);
            return _loc_1;
        }// end function

        public function setEquipment(param1:ResourceVO) : void
        {
            MovieClip(Loader(_swf_close.getChildAt(0)).content).gotoAndPlay(0);
            MovieClip(Loader(_swf_close.getChildAt(0)).content).gotoAndPlay("button_cancel");
            MovieClip(Loader(_swf_equip.getChildAt(0)).content).gotoAndPlay(0);
            MovieClip(Loader(_swf_equip.getChildAt(0)).content).gotoAndPlay("button_complete_equipment");
            _weapons = param1.weapons;
            if (weaponData)
            {
                weaponData = new Array();
            }
            var _loc_2:int = 0;
            while (_loc_2 < _weapons.length)
            {
                
                weaponData.push(_weapons[_loc_2]);
                _loc_2++;
            }
            viewDataWeapon = new ArrayCollection(weaponData);
            _armors = param1.armors;
            if (armorData)
            {
                armorData = new Array();
            }
            _loc_2 = 0;
            while (_loc_2 < _armors.length)
            {
                
                armorData.push(_armors[_loc_2]);
                _loc_2++;
            }
            viewDataArmor = new ArrayCollection(armorData);
            _accessories = param1.accessories;
            if (accessoryData)
            {
                accessoryData = new Array();
            }
            _loc_2 = 0;
            while (_loc_2 < _accessories.length)
            {
                
                accessoryData.push(_accessories[_loc_2]);
                _loc_2++;
            }
            viewDataAccessory = new ArrayCollection(accessoryData);
            _items = param1.items;
            if (itemData)
            {
                itemData = new Array();
            }
            _loc_2 = 0;
            while (_loc_2 < _items.length)
            {
                
                if (_items[_loc_2].equipment == 0)
                {
                    itemData.push(_items[_loc_2]);
                }
                _loc_2++;
            }
            itemData.sortOn("effect");
            viewDataItem = new ArrayCollection(itemData);
            dispatchEvent(new Event(CHANGE_EQUIPMENT_WINDOW_TMARK));
            return;
        }// end function

        public function get tabCanvas() : Canvas
        {
            return this._1129733453tabCanvas;
        }// end function

        private function _ChangeEquipmentWindow_DataGridColumn20_i() : DataGridColumn
        {
            var _loc_1:* = new DataGridColumn();
            _ChangeEquipmentWindow_DataGridColumn20 = _loc_1;
            _loc_1.dataField = "effectLabelAll";
            _loc_1.width = 100;
            _loc_1.sortable = false;
            _loc_1.setStyle("textAlign", "center");
            BindingManager.executeBindings(this, "_ChangeEquipmentWindow_DataGridColumn20", _ChangeEquipmentWindow_DataGridColumn20);
            return _loc_1;
        }// end function

        private function _ChangeEquipmentWindow_DataGridColumn43_i() : DataGridColumn
        {
            var _loc_1:* = new DataGridColumn();
            _ChangeEquipmentWindow_DataGridColumn43 = _loc_1;
            _loc_1.dataField = "description";
            BindingManager.executeBindings(this, "_ChangeEquipmentWindow_DataGridColumn43", _ChangeEquipmentWindow_DataGridColumn43);
            return _loc_1;
        }// end function

        public function set unit_sub_weapon_data_list(param1:DataGrid) : void
        {
            var _loc_2:* = this._478250410unit_sub_weapon_data_list;
            if (_loc_2 !== param1)
            {
                this._478250410unit_sub_weapon_data_list = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "unit_sub_weapon_data_list", _loc_2, param1));
            }
            return;
        }// end function

        public function onRemove() : void
        {
            var _loc_1:* = myViewStack.selectedIndex;
            switch(_loc_1)
            {
                case 0:
                {
                    if (_unit.weapon)
                    {
                        weaponData.push(_unit.weapon);
                        viewDataWeapon = new ArrayCollection(weaponData);
                        _unit.weapon = null;
                    }
                    break;
                }
                case 1:
                {
                    if (_unit.subWeapon)
                    {
                        weaponData.push(_unit.subWeapon);
                        viewDataWeapon = new ArrayCollection(weaponData);
                        _unit.subWeapon = null;
                    }
                    break;
                }
                case 2:
                {
                    if (_unit.armor)
                    {
                        armorData.push(_unit.armor);
                        viewDataArmor = new ArrayCollection(armorData);
                        _unit.armor = null;
                    }
                    break;
                }
                case 3:
                {
                    if (_unit.accessory)
                    {
                        accessoryData.push(_unit.accessory);
                        viewDataAccessory = new ArrayCollection(accessoryData);
                        _unit.accessory = null;
                    }
                    break;
                }
                case 4:
                {
                    if (_unit.item)
                    {
                        itemData.push(_unit.item);
                        viewDataItem = new ArrayCollection(itemData);
                        _unit.item = null;
                    }
                    break;
                }
                default:
                {
                    break;
                }
            }
            unitViewStack.selectedIndex = myViewStack.selectedIndex;
            changeBool = true;
            _tutMarkEquipFinishVisible = false;
            dispatchEvent(new Event(CHANGE_EQUIPMENT_WINDOW_TMARK_EQUIP));
            return;
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

        private function _ChangeEquipmentWindow_DataGridColumn5_i() : DataGridColumn
        {
            var _loc_1:* = new DataGridColumn();
            _ChangeEquipmentWindow_DataGridColumn5 = _loc_1;
            _loc_1.dataField = "enduranceLabel";
            _loc_1.width = 60;
            _loc_1.setStyle("textAlign", "center");
            BindingManager.executeBindings(this, "_ChangeEquipmentWindow_DataGridColumn5", _ChangeEquipmentWindow_DataGridColumn5);
            return _loc_1;
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

        private function set _swf_equip(param1:MovieClipLoaderAsset) : void
        {
            var _loc_2:* = this._1195842228_swf_equip;
            if (_loc_2 !== param1)
            {
                this._1195842228_swf_equip = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "_swf_equip", _loc_2, param1));
            }
            return;
        }// end function

        public function __unit_item_data_list_headerRelease(event:DataGridEvent) : void
        {
            fieldSort(event, viewDataItem);
            return;
        }// end function

        public function set tutMarkFinishEquip(param1:Image) : void
        {
            var _loc_2:* = this._506967107tutMarkFinishEquip;
            if (_loc_2 !== param1)
            {
                this._506967107tutMarkFinishEquip = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "tutMarkFinishEquip", _loc_2, param1));
            }
            return;
        }// end function

        private function _ChangeEquipmentWindow_DataGridColumn28_i() : DataGridColumn
        {
            var _loc_1:* = new DataGridColumn();
            _ChangeEquipmentWindow_DataGridColumn28 = _loc_1;
            _loc_1.dataField = "damage";
            _loc_1.width = 60;
            _loc_1.setStyle("textAlign", "center");
            BindingManager.executeBindings(this, "_ChangeEquipmentWindow_DataGridColumn28", _ChangeEquipmentWindow_DataGridColumn28);
            return _loc_1;
        }// end function

        public function set changeBool(param1:Boolean) : void
        {
            _changeBool = param1;
            return;
        }// end function

        public function set tutMarkEquipVisible(param1:Boolean) : void
        {
            _tutMarkEquipVisible = param1;
            return;
        }// end function

        private function _ChangeEquipmentWindow_DataGridColumn16_i() : DataGridColumn
        {
            var _loc_1:* = new DataGridColumn();
            _ChangeEquipmentWindow_DataGridColumn16 = _loc_1;
            _loc_1.dataField = "avoidance";
            _loc_1.width = 60;
            _loc_1.setStyle("textAlign", "center");
            BindingManager.executeBindings(this, "_ChangeEquipmentWindow_DataGridColumn16", _ChangeEquipmentWindow_DataGridColumn16);
            return _loc_1;
        }// end function

        private function _ChangeEquipmentWindow_DataGridColumn39_i() : DataGridColumn
        {
            var _loc_1:* = new DataGridColumn();
            _ChangeEquipmentWindow_DataGridColumn39 = _loc_1;
            _loc_1.dataField = "weaponTypeLabel";
            _loc_1.width = 40;
            _loc_1.setStyle("textAlign", "center");
            BindingManager.executeBindings(this, "_ChangeEquipmentWindow_DataGridColumn39", _ChangeEquipmentWindow_DataGridColumn39);
            return _loc_1;
        }// end function

        private function _ChangeEquipmentWindow_ClassFactory3_i() : ClassFactory
        {
            var _loc_1:* = new ClassFactory();
            equipment_icon_renderer = _loc_1;
            _loc_1.generator = ChangeEquipmentWindow_inlineComponent3;
            _loc_1.properties = {outerDocument:this};
            return _loc_1;
        }// end function

        public function get unit() : UnitVO
        {
            return _unit;
        }// end function

        private function get nonTutVisible() : Boolean
        {
            return this._1225459084nonTutVisible;
        }// end function

        override public function initialize() : void
        {
            var target:ChangeEquipmentWindow;
            var watcherSetupUtilClass:Object;
            .mx_internal::setDocumentDescriptor(_documentDescriptor_);
            var bindings:* = _ChangeEquipmentWindow_bindingsSetup();
            var watchers:Array;
            target;
            if (_watcherSetupUtil == null)
            {
                watcherSetupUtilClass = getDefinitionByName("_com_kbmj_viking_view_ChangeEquipmentWindowWatcherSetupUtil");
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

        public function set icon_renderer(param1:ClassFactory) : void
        {
            var _loc_2:* = this._1007627721icon_renderer;
            if (_loc_2 !== param1)
            {
                this._1007627721icon_renderer = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "icon_renderer", _loc_2, param1));
            }
            return;
        }// end function

        public function get equipBox() : VBox
        {
            return this._588869499equipBox;
        }// end function

        private function _ChangeEquipmentWindow_DataGridColumn31_i() : DataGridColumn
        {
            var _loc_1:* = new DataGridColumn();
            _ChangeEquipmentWindow_DataGridColumn31 = _loc_1;
            _loc_1.dataField = "description";
            _loc_1.sortable = false;
            BindingManager.executeBindings(this, "_ChangeEquipmentWindow_DataGridColumn31", _ChangeEquipmentWindow_DataGridColumn31);
            return _loc_1;
        }// end function

        private function onClickItem(param1:Object) : void
        {
            if (_unit.item != null)
            {
                itemData.push(_unit.item);
            }
            _unit.item = param1 as ItemVO;
            itemData.splice(itemData.indexOf(param1), 1);
            viewDataItem = new ArrayCollection(itemData);
            changeBool = true;
            return;
        }// end function

        private function _ChangeEquipmentWindow_DataGridColumn42_i() : DataGridColumn
        {
            var _loc_1:* = new DataGridColumn();
            _ChangeEquipmentWindow_DataGridColumn42 = _loc_1;
            _loc_1.dataField = "enduranceLabel";
            _loc_1.width = 60;
            _loc_1.setStyle("textAlign", "center");
            BindingManager.executeBindings(this, "_ChangeEquipmentWindow_DataGridColumn42", _ChangeEquipmentWindow_DataGridColumn42);
            return _loc_1;
        }// end function

        public function set unitViewStack(param1:ViewStack) : void
        {
            var _loc_2:* = this._743584191unitViewStack;
            if (_loc_2 !== param1)
            {
                this._743584191unitViewStack = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "unitViewStack", _loc_2, param1));
            }
            return;
        }// end function

        private function _ChangeEquipmentWindow_DataGridColumn54_i() : DataGridColumn
        {
            var _loc_1:* = new DataGridColumn();
            _ChangeEquipmentWindow_DataGridColumn54 = _loc_1;
            _loc_1.dataField = "effect";
            _loc_1.width = 170;
            _loc_1.setStyle("textAlign", "center");
            BindingManager.executeBindings(this, "_ChangeEquipmentWindow_DataGridColumn54", _ChangeEquipmentWindow_DataGridColumn54);
            return _loc_1;
        }// end function

        public function get tutMarkEquipFinishVisible() : Boolean
        {
            return _tutMarkEquipFinishVisible;
        }// end function

        private function _ChangeEquipmentWindow_DataGridColumn27_i() : DataGridColumn
        {
            var _loc_1:* = new DataGridColumn();
            _ChangeEquipmentWindow_DataGridColumn27 = _loc_1;
            _loc_1.dataField = "weaponTypeLabel";
            _loc_1.width = 40;
            _loc_1.setStyle("textAlign", "center");
            BindingManager.executeBindings(this, "_ChangeEquipmentWindow_DataGridColumn27", _ChangeEquipmentWindow_DataGridColumn27);
            return _loc_1;
        }// end function

        private function _ChangeEquipmentWindow_DataGridColumn4_i() : DataGridColumn
        {
            var _loc_1:* = new DataGridColumn();
            _ChangeEquipmentWindow_DataGridColumn4 = _loc_1;
            _loc_1.dataField = "hit";
            _loc_1.width = 60;
            _loc_1.setStyle("textAlign", "center");
            BindingManager.executeBindings(this, "_ChangeEquipmentWindow_DataGridColumn4", _ChangeEquipmentWindow_DataGridColumn4);
            return _loc_1;
        }// end function

        public function get unit_sub_weapon_data_list() : DataGrid
        {
            return this._478250410unit_sub_weapon_data_list;
        }// end function

        private function _ChangeEquipmentWindow_DataGridColumn30_i() : DataGridColumn
        {
            var _loc_1:* = new DataGridColumn();
            _ChangeEquipmentWindow_DataGridColumn30 = _loc_1;
            _loc_1.dataField = "enduranceLabel";
            _loc_1.width = 60;
            _loc_1.setStyle("textAlign", "center");
            BindingManager.executeBindings(this, "_ChangeEquipmentWindow_DataGridColumn30", _ChangeEquipmentWindow_DataGridColumn30);
            return _loc_1;
        }// end function

        private function _ChangeEquipmentWindow_DataGridColumn53_i() : DataGridColumn
        {
            var _loc_1:* = new DataGridColumn();
            _ChangeEquipmentWindow_DataGridColumn53 = _loc_1;
            _loc_1.dataField = "nameLabel";
            _loc_1.headerText = "Utils.i18n(\'changeEquipmentItemName\')";
            _loc_1.width = 170;
            BindingManager.executeBindings(this, "_ChangeEquipmentWindow_DataGridColumn53", _ChangeEquipmentWindow_DataGridColumn53);
            return _loc_1;
        }// end function

        public function get unitId() : int
        {
            return _unit.unitId;
        }// end function

        public function get tutMarkEquipVisible() : Boolean
        {
            return _tutMarkEquipVisible;
        }// end function

        public function showTutMark(param1:Object) : Boolean
        {
            if (param1.code == 2058 && _tutMarkEquipVisible)
            {
                return visible;
            }
            return false;
        }// end function

        private function _ChangeEquipmentWindow_DataGridColumn38_i() : DataGridColumn
        {
            var _loc_1:* = new DataGridColumn();
            _ChangeEquipmentWindow_DataGridColumn38 = _loc_1;
            _loc_1.dataField = "nameLabel";
            _loc_1.width = 170;
            BindingManager.executeBindings(this, "_ChangeEquipmentWindow_DataGridColumn38", _ChangeEquipmentWindow_DataGridColumn38);
            return _loc_1;
        }// end function

        public function get unitViewStack() : ViewStack
        {
            return this._743584191unitViewStack;
        }// end function

        private function fieldSort(event:DataGridEvent, param2:ArrayCollection) : void
        {
            var _loc_3:* = getSortFieldName(event.dataField);
            var _loc_4:Boolean = false;
            if (event.target.dataProvider && event.target.dataProvider.sort)
            {
                _loc_4 = !event.target.dataProvider.sort.fields[0].descending;
            }
            var _loc_5:Array = [];
            [].push(new SortField(_loc_3, true, _loc_4, true));
            if (event.dataField == "weaponTypeLabel")
            {
                _loc_5.push(new SortField("masterId", true, false, true));
            }
            setSortFields(param2, _loc_5);
            return;
        }// end function

        public function set equipment_icon_renderer(param1:ClassFactory) : void
        {
            var _loc_2:* = this._1694165800equipment_icon_renderer;
            if (_loc_2 !== param1)
            {
                this._1694165800equipment_icon_renderer = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "equipment_icon_renderer", _loc_2, param1));
            }
            return;
        }// end function

        private function _ChangeEquipmentWindow_ClassFactory2_i() : ClassFactory
        {
            var _loc_1:* = new ClassFactory();
            icon_renderer_tutorial = _loc_1;
            _loc_1.generator = ChangeEquipmentWindow_inlineComponent2;
            _loc_1.properties = {outerDocument:this};
            return _loc_1;
        }// end function

        private function _ChangeEquipmentWindow_DataGridColumn15_i() : DataGridColumn
        {
            var _loc_1:* = new DataGridColumn();
            _ChangeEquipmentWindow_DataGridColumn15 = _loc_1;
            _loc_1.dataField = "magicalDefense";
            _loc_1.width = 60;
            _loc_1.setStyle("textAlign", "center");
            BindingManager.executeBindings(this, "_ChangeEquipmentWindow_DataGridColumn15", _ChangeEquipmentWindow_DataGridColumn15);
            return _loc_1;
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

        public function get viewDataItem() : ArrayCollection
        {
            return this._1492198306viewDataItem;
        }// end function

        public function get icon_renderer() : ClassFactory
        {
            return this._1007627721icon_renderer;
        }// end function

        public function get weapon_data_list() : DataGrid
        {
            return this._513506736weapon_data_list;
        }// end function

        public function setTutMarkVisible(param1:int, param2:int) : void
        {
            if (param1 == 1 && param2 == 31)
            {
                tutVisible = true;
                nonTutVisible = false;
                _tutMarkEquipVisible = true;
            }
            else
            {
                _tutMarkEquipVisible = false;
                tutVisible = false;
                nonTutVisible = true;
            }
            return;
        }// end function

        private function onClickArmor(param1:Object) : void
        {
            if (_unit.armor != null)
            {
                armorData.push(_unit.armor);
            }
            _unit.armor = param1 as ArmorVO;
            armorData.splice(armorData.indexOf(param1), 1);
            viewDataArmor = new ArrayCollection(armorData);
            changeBool = true;
            return;
        }// end function

        public function set viewDataAccessory(param1:ArrayCollection) : void
        {
            var _loc_2:* = this._1790814179viewDataAccessory;
            if (_loc_2 !== param1)
            {
                this._1790814179viewDataAccessory = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "viewDataAccessory", _loc_2, param1));
            }
            return;
        }// end function

        public function get tutMarkFinishEquip() : Image
        {
            return this._506967107tutMarkFinishEquip;
        }// end function

        private function _ChangeEquipmentWindow_bindingExprs() : void
        {
            var _loc_1:* = undefined;
            _loc_1 = Utils.i18n("changeEquipmentChangeEquipment");
            _loc_1 = _unit.weapon;
            _loc_1 = Utils.i18n("changeEquipmentWeaponName");
            _loc_1 = equipment_icon_renderer;
            _loc_1 = Utils.i18n("changeEquipmentType");
            _loc_1 = Utils.i18n("changeEquipmentAttack");
            _loc_1 = Utils.i18n("changeEquipmentHit");
            _loc_1 = Utils.i18n("changeEquipmentEndurance");
            _loc_1 = Utils.i18n("generalDescription");
            _loc_1 = _unit.subWeapon;
            _loc_1 = Utils.i18n("changeEquipmentWeaponName");
            _loc_1 = equipment_icon_renderer;
            _loc_1 = Utils.i18n("changeEquipmentType");
            _loc_1 = Utils.i18n("changeEquipmentAttack");
            _loc_1 = Utils.i18n("changeEquipmentHit");
            _loc_1 = Utils.i18n("changeEquipmentEndurance");
            _loc_1 = Utils.i18n("generalDescription");
            _loc_1 = _unit.armor;
            _loc_1 = Utils.i18n("changeEquipmentArmorName");
            _loc_1 = equipment_icon_renderer;
            _loc_1 = Utils.i18n("changeEquipmentDefense");
            _loc_1 = Utils.i18n("changeEquipmentMagicalDefense");
            _loc_1 = Utils.i18n("changeEquipmentAvoidance");
            _loc_1 = Utils.i18n("changeEquipmentEndurance");
            _loc_1 = Utils.i18n("generalDescription");
            _loc_1 = _unit.accessory;
            _loc_1 = Utils.i18n("changeEquipmentAccessoryName");
            _loc_1 = equipment_icon_renderer;
            _loc_1 = Utils.i18n("changeEquipmentEffect");
            _loc_1 = Utils.i18n("generalDescription");
            _loc_1 = _unit.item;
            _loc_1 = Utils.i18n("changeEquipmentItemName");
            _loc_1 = equipment_icon_renderer;
            _loc_1 = Utils.i18n("changeEquipmentEffect");
            _loc_1 = Utils.i18n("changeEquipmentEndurance");
            _loc_1 = Utils.i18n("generalDescription");
            _loc_1 = Utils.i18n("generalEquipWeapon");
            _loc_1 = viewDataWeapon;
            _loc_1 = nonTutVisible;
            _loc_1 = Utils.i18n("changeEquipmentWeaponName");
            _loc_1 = icon_renderer;
            _loc_1 = Utils.i18n("changeEquipmentType");
            _loc_1 = Utils.i18n("changeEquipmentAttack");
            _loc_1 = Utils.i18n("changeEquipmentHit");
            _loc_1 = Utils.i18n("changeEquipmentEndurance");
            _loc_1 = Utils.i18n("generalDescription");
            _loc_1 = viewDataWeapon;
            _loc_1 = tutVisible;
            _loc_1 = Utils.i18n("changeEquipmentWeaponName");
            _loc_1 = icon_renderer_tutorial;
            _loc_1 = Utils.i18n("changeEquipmentType");
            _loc_1 = Utils.i18n("changeEquipmentAttack");
            _loc_1 = Utils.i18n("changeEquipmentHit");
            _loc_1 = Utils.i18n("changeEquipmentEndurance");
            _loc_1 = Utils.i18n("generalDescription");
            _loc_1 = Utils.i18n("armsSubArms");
            _loc_1 = viewDataWeapon;
            _loc_1 = Utils.i18n("changeEquipmentWeaponName");
            _loc_1 = icon_renderer;
            _loc_1 = Utils.i18n("changeEquipmentType");
            _loc_1 = Utils.i18n("changeEquipmentAttack");
            _loc_1 = Utils.i18n("changeEquipmentHit");
            _loc_1 = Utils.i18n("changeEquipmentEndurance");
            _loc_1 = Utils.i18n("generalDescription");
            _loc_1 = Utils.i18n("generalEquipArmor");
            _loc_1 = viewDataArmor;
            _loc_1 = Utils.i18n("changeEquipmentArmorName");
            _loc_1 = icon_renderer;
            _loc_1 = Utils.i18n("changeEquipmentDefense");
            _loc_1 = Utils.i18n("changeEquipmentMagicalDefense");
            _loc_1 = Utils.i18n("changeEquipmentAvoidance");
            _loc_1 = Utils.i18n("changeEquipmentEndurance");
            _loc_1 = Utils.i18n("generalDescription");
            _loc_1 = Utils.i18n("generalEquipAccessory");
            _loc_1 = viewDataAccessory;
            _loc_1 = Utils.i18n("changeEquipmentAccessoryName");
            _loc_1 = icon_renderer;
            _loc_1 = Utils.i18n("changeEquipmentEffect");
            _loc_1 = Utils.i18n("generalDescription");
            _loc_1 = Utils.i18n("generalMaterial");
            _loc_1 = viewDataItem;
            _loc_1 = icon_renderer;
            _loc_1 = Utils.i18n("changeEquipmentEffect");
            _loc_1 = Utils.i18n("changeEquipmentEndurance");
            _loc_1 = Utils.i18n("generalDescription");
            _loc_1 = _swf_equip;
            _loc_1 = _swf_close;
            _loc_1 = _arrow_top;
            return;
        }// end function

        public function get viewDataAccessory() : ArrayCollection
        {
            return this._1790814179viewDataAccessory;
        }// end function

        private function _ChangeEquipmentWindow_DataGridColumn26_i() : DataGridColumn
        {
            var _loc_1:* = new DataGridColumn();
            _ChangeEquipmentWindow_DataGridColumn26 = _loc_1;
            _loc_1.dataField = "nameLabel";
            _loc_1.width = 170;
            BindingManager.executeBindings(this, "_ChangeEquipmentWindow_DataGridColumn26", _ChangeEquipmentWindow_DataGridColumn26);
            return _loc_1;
        }// end function

        private function _ChangeEquipmentWindow_DataGridColumn49_i() : DataGridColumn
        {
            var _loc_1:* = new DataGridColumn();
            _ChangeEquipmentWindow_DataGridColumn49 = _loc_1;
            _loc_1.dataField = "description";
            BindingManager.executeBindings(this, "_ChangeEquipmentWindow_DataGridColumn49", _ChangeEquipmentWindow_DataGridColumn49);
            return _loc_1;
        }// end function

        private function _ChangeEquipmentWindow_DataGridColumn3_i() : DataGridColumn
        {
            var _loc_1:* = new DataGridColumn();
            _ChangeEquipmentWindow_DataGridColumn3 = _loc_1;
            _loc_1.dataField = "damage";
            _loc_1.width = 60;
            _loc_1.setStyle("textAlign", "center");
            BindingManager.executeBindings(this, "_ChangeEquipmentWindow_DataGridColumn3", _ChangeEquipmentWindow_DataGridColumn3);
            return _loc_1;
        }// end function

        public function get unit_accessory_data_list() : DataGrid
        {
            return this._1522578453unit_accessory_data_list;
        }// end function

        public function get item_data_list() : DataGrid
        {
            return this._1218335257item_data_list;
        }// end function

        public function ___ChangeEquipmentWindow_PopupWindow1_creationComplete(event:FlexEvent) : void
        {
            addSwf();
            return;
        }// end function

        private function _ChangeEquipmentWindow_DataGridColumn41_i() : DataGridColumn
        {
            var _loc_1:* = new DataGridColumn();
            _ChangeEquipmentWindow_DataGridColumn41 = _loc_1;
            _loc_1.dataField = "hit";
            _loc_1.width = 60;
            _loc_1.setStyle("textAlign", "center");
            BindingManager.executeBindings(this, "_ChangeEquipmentWindow_DataGridColumn41", _ChangeEquipmentWindow_DataGridColumn41);
            return _loc_1;
        }// end function

        private function close() : void
        {
            unitViewStack.selectedIndex = 0;
            myViewStack.selectedIndex = 0;
            dispatchEvent(new Event(CHANGE_EQUIPMENT_WINDOW_TMARK_CLOSE));
            dispatchEvent(new Event(CHANGE_EQUIPMENT_CANCEL));
            dispatchEvent(new Event(CHANGE_EQUIPMENT_WINDOW_CLOSE));
            onClose();
            return;
        }// end function

        private function setSortFields(param1:ArrayCollection, param2:Array) : void
        {
            var _loc_3:* = new Sort();
            _loc_3.fields = param2;
            param1.sort = _loc_3;
            param1.refresh();
            return;
        }// end function

        private function _ChangeEquipmentWindow_DataGridColumn52_i() : DataGridColumn
        {
            var _loc_1:* = new DataGridColumn();
            _ChangeEquipmentWindow_DataGridColumn52 = _loc_1;
            _loc_1.dataField = "description";
            _loc_1.sortable = false;
            BindingManager.executeBindings(this, "_ChangeEquipmentWindow_DataGridColumn52", _ChangeEquipmentWindow_DataGridColumn52);
            return _loc_1;
        }// end function

        public static function set watcherSetupUtil(param1:IWatcherSetupUtil) : void
        {
            ChangeEquipmentWindow._watcherSetupUtil = param1;
            return;
        }// end function

    }
}
