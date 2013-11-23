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

    public class HomeAllItem extends CanvasWithPopUp implements IBindingClient
    {
        private var _513506736weapon_data_list:DataGrid;
        private var _993932656viewDataArmor:ArrayCollection;
        private var _documentDescriptor_:UIComponentDescriptor;
        private var _1680067859armor_data_list:DataGrid;
        private var _1790814179viewDataAccessory:ArrayCollection;
        var _bindingsByDestination:Object;
        public var _HomeAllItem_VBox2:VBox;
        public var _HomeAllItem_VBox3:VBox;
        public var _HomeAllItem_VBox4:VBox;
        public var _HomeAllItem_VBox5:VBox;
        public var _HomeAllItem_VBox6:VBox;
        private var _563962990nameRenderer:ClassFactory;
        private var _567175622toolTipRenderer:ClassFactory;
        private var _522920908detailRenderer:ClassFactory;
        private var _1896677185windowLayer:Canvas;
        private var _1593504005material_data_list:DataGrid;
        private var _embed_mxml__swf_common_button_close_window_swf_1370265653:Class;
        public var _HomeAllItem_DataGridColumn10:DataGridColumn;
        public var _HomeAllItem_DataGridColumn11:DataGridColumn;
        public var _HomeAllItem_DataGridColumn12:DataGridColumn;
        public var _HomeAllItem_DataGridColumn13:DataGridColumn;
        public var _HomeAllItem_DataGridColumn14:DataGridColumn;
        public var _HomeAllItem_DataGridColumn15:DataGridColumn;
        public var _HomeAllItem_DataGridColumn16:DataGridColumn;
        public var _HomeAllItem_DataGridColumn17:DataGridColumn;
        public var _HomeAllItem_DataGridColumn18:DataGridColumn;
        public var _HomeAllItem_DataGridColumn19:DataGridColumn;
        private var _979250742viewDataMaterial:ArrayCollection;
        private var _129662229viewDataWeapon:ArrayCollection;
        public var _HomeAllItem_DataGridColumn20:DataGridColumn;
        public var _HomeAllItem_DataGridColumn21:DataGridColumn;
        public var _HomeAllItem_DataGridColumn22:DataGridColumn;
        public var _HomeAllItem_DataGridColumn23:DataGridColumn;
        public var _HomeAllItem_DataGridColumn24:DataGridColumn;
        public var _HomeAllItem_DataGridColumn25:DataGridColumn;
        public var _HomeAllItem_DataGridColumn26:DataGridColumn;
        public var _HomeAllItem_DataGridColumn27:DataGridColumn;
        public var _HomeAllItem_DataGridColumn28:DataGridColumn;
        public var _HomeAllItem_DataGridColumn29:DataGridColumn;
        public var _HomeAllItem_DataGridColumn30:DataGridColumn;
        public var _HomeAllItem_DataGridColumn31:DataGridColumn;
        private var _dumpData:Object;
        private var _1492198306viewDataItem:ArrayCollection;
        private var _1177280081itemList:Canvas;
        private var _182637929myViewStack:ViewStack;
        private var _1218335257item_data_list:DataGrid;
        private var _37090694checkBoxRenderer:ClassFactory;
        private var _1777504961buttonLayer:Canvas;
        public var weaponDetail:WeaponDetail;
        private var equipmentDetail:EquipmentDetail;
        private var _1073623258accessory_data_list:DataGrid;
        var _watchers:Array;
        public var _HomeAllItem_Text1:Text;
        public var _HomeAllItem_DataGridColumn1:DataGridColumn;
        public var _HomeAllItem_DataGridColumn2:DataGridColumn;
        public var _HomeAllItem_DataGridColumn3:DataGridColumn;
        public var _HomeAllItem_DataGridColumn4:DataGridColumn;
        public var _HomeAllItem_DataGridColumn6:DataGridColumn;
        public var _HomeAllItem_DataGridColumn5:DataGridColumn;
        public var _HomeAllItem_DataGridColumn7:DataGridColumn;
        public var _HomeAllItem_DataGridColumn9:DataGridColumn;
        public var _HomeAllItem_DataGridColumn8:DataGridColumn;
        var _bindingsBeginWithWord:Object;
        var _bindings:Array;
        public static const EQUIPMENT_COLLECTIVE_DUMP:String = "HomeAllItem/EquipmentCollectiveDump";
        public static const EQUIPMENT_DUMP:String = "HomeAllItem/EquipmentDump";
        private static var _watcherSetupUtil:IWatcherSetupUtil;
        public static const CLOSED_HOME_ALL_ITEM:String = "HomeAllItem/ClosedHomeAllItem";

        public function HomeAllItem()
        {
            _documentDescriptor_ = new UIComponentDescriptor({type:CanvasWithPopUp, propertiesFactory:function () : Object
            {
                return {childDescriptors:[new UIComponentDescriptor({type:Canvas, id:"windowLayer"}), new UIComponentDescriptor({type:Canvas, id:"itemList", propertiesFactory:function () : Object
                {
                    return {x:47, y:114};
                }// end function
                }), new UIComponentDescriptor({type:Text, id:"_HomeAllItem_Text1", propertiesFactory:function () : Object
                {
                    return {styleName:"PanelBaseTitle", x:325, y:83};
                }// end function
                }), new UIComponentDescriptor({type:VBox, stylesFactory:function () : void
                {
                    this.verticalGap = -2;
                    return;
                }// end function
                , propertiesFactory:function () : Object
                {
                    return {width:660, x:25, y:140, childDescriptors:[new UIComponentDescriptor({type:ViewStack, id:"myViewStack", stylesFactory:function () : void
                    {
                        this.borderStyle = "none";
                        this.paddingLeft = 12;
                        return;
                    }// end function
                    , propertiesFactory:function () : Object
                    {
                        return {width:656, height:334, childDescriptors:[new UIComponentDescriptor({type:VBox, id:"_HomeAllItem_VBox2", propertiesFactory:function () : Object
                        {
                            return {percentWidth:100, percentHeight:100, childDescriptors:[new UIComponentDescriptor({type:DataGrid, id:"weapon_data_list", propertiesFactory:function () : Object
                            {
                                return {width:640, rowCount:11, rowHeight:27, styleName:"DataGridBase", selectable:false, columns:[_HomeAllItem_DataGridColumn1_i(), _HomeAllItem_DataGridColumn2_i(), _HomeAllItem_DataGridColumn3_i(), _HomeAllItem_DataGridColumn4_i(), _HomeAllItem_DataGridColumn5_i(), _HomeAllItem_DataGridColumn6_i(), _HomeAllItem_DataGridColumn7_i(), _HomeAllItem_DataGridColumn8_i()]};
                            }// end function
                            })]};
                        }// end function
                        }), new UIComponentDescriptor({type:VBox, id:"_HomeAllItem_VBox3", propertiesFactory:function () : Object
                        {
                            return {percentWidth:100, percentHeight:100, childDescriptors:[new UIComponentDescriptor({type:DataGrid, id:"armor_data_list", propertiesFactory:function () : Object
                            {
                                return {width:640, rowCount:11, rowHeight:27, styleName:"DataGridBase", selectable:false, columns:[_HomeAllItem_DataGridColumn9_i(), _HomeAllItem_DataGridColumn10_i(), _HomeAllItem_DataGridColumn11_i(), _HomeAllItem_DataGridColumn12_i(), _HomeAllItem_DataGridColumn13_i(), _HomeAllItem_DataGridColumn14_i(), _HomeAllItem_DataGridColumn15_i(), _HomeAllItem_DataGridColumn16_i()]};
                            }// end function
                            })]};
                        }// end function
                        }), new UIComponentDescriptor({type:VBox, id:"_HomeAllItem_VBox4", propertiesFactory:function () : Object
                        {
                            return {percentWidth:100, percentHeight:100, childDescriptors:[new UIComponentDescriptor({type:DataGrid, id:"accessory_data_list", propertiesFactory:function () : Object
                            {
                                return {width:640, rowCount:11, rowHeight:27, styleName:"DataGridBase", selectable:false, columns:[_HomeAllItem_DataGridColumn17_i(), _HomeAllItem_DataGridColumn18_i(), _HomeAllItem_DataGridColumn19_i(), _HomeAllItem_DataGridColumn20_i(), _HomeAllItem_DataGridColumn21_i()]};
                            }// end function
                            })]};
                        }// end function
                        }), new UIComponentDescriptor({type:VBox, id:"_HomeAllItem_VBox5", propertiesFactory:function () : Object
                        {
                            return {percentWidth:100, percentHeight:100, childDescriptors:[new UIComponentDescriptor({type:DataGrid, id:"item_data_list", propertiesFactory:function () : Object
                            {
                                return {width:640, rowCount:11, rowHeight:27, styleName:"DataGridBase", selectable:false, columns:[_HomeAllItem_DataGridColumn22_i(), _HomeAllItem_DataGridColumn23_i(), _HomeAllItem_DataGridColumn24_i(), _HomeAllItem_DataGridColumn25_i(), _HomeAllItem_DataGridColumn26_i(), _HomeAllItem_DataGridColumn27_i()]};
                            }// end function
                            })]};
                        }// end function
                        }), new UIComponentDescriptor({type:VBox, id:"_HomeAllItem_VBox6", propertiesFactory:function () : Object
                        {
                            return {percentWidth:100, percentHeight:100, childDescriptors:[new UIComponentDescriptor({type:DataGrid, id:"material_data_list", propertiesFactory:function () : Object
                            {
                                return {width:640, rowCount:11, rowHeight:27, styleName:"DataGridBase", selectable:false, columns:[_HomeAllItem_DataGridColumn28_i(), _HomeAllItem_DataGridColumn29_i(), _HomeAllItem_DataGridColumn30_i(), _HomeAllItem_DataGridColumn31_i()]};
                            }// end function
                            })]};
                        }// end function
                        })]};
                    }// end function
                    })]};
                }// end function
                }), new UIComponentDescriptor({type:Image, events:{click:"___HomeAllItem_Image1_click"}, propertiesFactory:function () : Object
                {
                    return {x:665, y:79, width:20, height:20, source:_embed_mxml__swf_common_button_close_window_swf_1370265653};
                }// end function
                }), new UIComponentDescriptor({type:Canvas, id:"buttonLayer"})]};
            }// end function
            });
            equipmentDetail = new EquipmentDetail();
            weaponDetail = new WeaponDetail();
            _dumpData = new Object();
            _embed_mxml__swf_common_button_close_window_swf_1370265653 = HomeAllItem__embed_mxml__swf_common_button_close_window_swf_1370265653;
            _bindings = [];
            _watchers = [];
            _bindingsByDestination = {};
            _bindingsBeginWithWord = {};
            mx_internal::_document = this;
            _HomeAllItem_ClassFactory4_i();
            _HomeAllItem_ClassFactory2_i();
            _HomeAllItem_ClassFactory1_i();
            _HomeAllItem_ClassFactory3_i();
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

        private function _HomeAllItem_DataGridColumn5_i() : DataGridColumn
        {
            var _loc_1:* = new DataGridColumn();
            _HomeAllItem_DataGridColumn5 = _loc_1;
            _loc_1.dataField = "hit";
            _loc_1.width = 50;
            _loc_1.setStyle("textAlign", "center");
            BindingManager.executeBindings(this, "_HomeAllItem_DataGridColumn5", _HomeAllItem_DataGridColumn5);
            return _loc_1;
        }// end function

        private function _HomeAllItem_ClassFactory2_i() : ClassFactory
        {
            var _loc_1:* = new ClassFactory();
            detailRenderer = _loc_1;
            _loc_1.generator = HomeAllItem_inlineComponent2;
            _loc_1.properties = {outerDocument:this};
            return _loc_1;
        }// end function

        private function _HomeAllItem_DataGridColumn26_i() : DataGridColumn
        {
            var _loc_1:* = new DataGridColumn();
            _HomeAllItem_DataGridColumn26 = _loc_1;
            _loc_1.dataField = "rarity";
            _loc_1.width = 50;
            _loc_1.setStyle("textAlign", "center");
            BindingManager.executeBindings(this, "_HomeAllItem_DataGridColumn26", _HomeAllItem_DataGridColumn26);
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

        public function get detailRenderer() : ClassFactory
        {
            return this._522920908detailRenderer;
        }// end function

        public function get viewDataMaterial() : ArrayCollection
        {
            return this._979250742viewDataMaterial;
        }// end function

        private function _HomeAllItem_DataGridColumn14_i() : DataGridColumn
        {
            var _loc_1:* = new DataGridColumn();
            _HomeAllItem_DataGridColumn14 = _loc_1;
            _loc_1.dataField = "endurance";
            _loc_1.width = 60;
            _loc_1.labelFunction = itemEnduranceLabel;
            _loc_1.setStyle("textAlign", "center");
            BindingManager.executeBindings(this, "_HomeAllItem_DataGridColumn14", _HomeAllItem_DataGridColumn14);
            return _loc_1;
        }// end function

        private function _HomeAllItem_DataGridColumn4_i() : DataGridColumn
        {
            var _loc_1:* = new DataGridColumn();
            _HomeAllItem_DataGridColumn4 = _loc_1;
            _loc_1.dataField = "damage";
            _loc_1.width = 50;
            _loc_1.setStyle("textAlign", "center");
            BindingManager.executeBindings(this, "_HomeAllItem_DataGridColumn4", _HomeAllItem_DataGridColumn4);
            return _loc_1;
        }// end function

        public function get itemList() : Canvas
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

        private function _HomeAllItem_ClassFactory1_i() : ClassFactory
        {
            var _loc_1:* = new ClassFactory();
            nameRenderer = _loc_1;
            _loc_1.generator = HomeAllItem_inlineComponent1;
            _loc_1.properties = {outerDocument:this};
            return _loc_1;
        }// end function

        private function _HomeAllItem_DataGridColumn25_i() : DataGridColumn
        {
            var _loc_1:* = new DataGridColumn();
            _HomeAllItem_DataGridColumn25 = _loc_1;
            _loc_1.dataField = "endurance";
            _loc_1.width = 65;
            _loc_1.labelFunction = itemEnduranceLabel;
            _loc_1.setStyle("textAlign", "center");
            BindingManager.executeBindings(this, "_HomeAllItem_DataGridColumn25", _HomeAllItem_DataGridColumn25);
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

        public function set viewDataMaterial(param1:ArrayCollection) : void
        {
            var _loc_2:* = this._979250742viewDataMaterial;
            if (_loc_2 !== param1)
            {
                this._979250742viewDataMaterial = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "viewDataMaterial", _loc_2, param1));
            }
            return;
        }// end function

        public function get nameRenderer() : ClassFactory
        {
            return this._563962990nameRenderer;
        }// end function

        public function onDump(param1:Object) : void
        {
            dumpData = param1;
            dispatchEvent(new Event(EQUIPMENT_DUMP));
            return;
        }// end function

        private function _HomeAllItem_DataGridColumn13_i() : DataGridColumn
        {
            var _loc_1:* = new DataGridColumn();
            _HomeAllItem_DataGridColumn13 = _loc_1;
            _loc_1.dataField = "avoidance";
            _loc_1.width = 45;
            _loc_1.setStyle("textAlign", "center");
            BindingManager.executeBindings(this, "_HomeAllItem_DataGridColumn13", _HomeAllItem_DataGridColumn13);
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

        public function collectiveDump() : void
        {
            var _loc_1:Array = [];
            _loc_1 = _loc_1.concat(viewDataWeapon.source.find("selected", true));
            _loc_1 = _loc_1.concat(viewDataArmor.source.find("selected", true));
            _loc_1 = _loc_1.concat(viewDataAccessory.source.find("selected", true));
            _loc_1 = _loc_1.concat(viewDataItem.source.find("selected", true));
            if (_loc_1.length <= 0)
            {
                return;
            }
            dispatchEvent(new PopupEvent(EQUIPMENT_COLLECTIVE_DUMP, _loc_1));
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

        private function _HomeAllItem_DataGridColumn3_i() : DataGridColumn
        {
            var _loc_1:* = new DataGridColumn();
            _HomeAllItem_DataGridColumn3 = _loc_1;
            _loc_1.dataField = "weaponTypeLabel";
            _loc_1.width = 40;
            _loc_1.setStyle("textAlign", "center");
            BindingManager.executeBindings(this, "_HomeAllItem_DataGridColumn3", _HomeAllItem_DataGridColumn3);
            return _loc_1;
        }// end function

        public function get viewDataArmor() : ArrayCollection
        {
            return this._993932656viewDataArmor;
        }// end function

        public function get myViewStack() : ViewStack
        {
            return this._182637929myViewStack;
        }// end function

        public function set itemList(param1:Canvas) : void
        {
            var _loc_2:* = this._1177280081itemList;
            if (_loc_2 !== param1)
            {
                this._1177280081itemList = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "itemList", _loc_2, param1));
            }
            return;
        }// end function

        private function _HomeAllItem_bindingExprs() : void
        {
            var _loc_1:* = undefined;
            _loc_1 = Utils.i18n("homeAllItemItemList");
            _loc_1 = Utils.i18n("generalWeapon");
            _loc_1 = viewDataWeapon;
            _loc_1 = Utils.i18n("homeAllItemDestruction");
            _loc_1 = checkBoxRenderer;
            _loc_1 = Utils.i18n("changeEquipmentWeaponName");
            _loc_1 = nameRenderer;
            _loc_1 = Utils.i18n("changeEquipmentType");
            _loc_1 = Utils.i18n("changeEquipmentAttack");
            _loc_1 = Utils.i18n("changeEquipmentHit");
            _loc_1 = Utils.i18n("changeEquipmentEndurance");
            _loc_1 = Utils.i18n("generalRarity");
            _loc_1 = Utils.i18n("generalDescription");
            _loc_1 = Utils.i18n("generalEquipArmor");
            _loc_1 = viewDataArmor;
            _loc_1 = Utils.i18n("homeAllItemDestruction");
            _loc_1 = checkBoxRenderer;
            _loc_1 = Utils.i18n("changeEquipmentArmorName");
            _loc_1 = nameRenderer;
            _loc_1 = Utils.i18n("changeEquipmentDefense");
            _loc_1 = Utils.i18n("changeEquipmentMagicalDefense");
            _loc_1 = Utils.i18n("changeEquipmentAvoidance");
            _loc_1 = Utils.i18n("changeEquipmentEndurance");
            _loc_1 = Utils.i18n("generalRarity");
            _loc_1 = Utils.i18n("generalDescription");
            _loc_1 = Utils.i18n("generalEquipAccessory");
            _loc_1 = viewDataAccessory;
            _loc_1 = Utils.i18n("homeAllItemDestruction");
            _loc_1 = checkBoxRenderer;
            _loc_1 = Utils.i18n("changeEquipmentAccessoryName");
            _loc_1 = nameRenderer;
            _loc_1 = Utils.i18n("changeEquipmentEffect");
            _loc_1 = Utils.i18n("generalRarity");
            _loc_1 = Utils.i18n("generalDescription");
            _loc_1 = Utils.i18n("generalMaterial");
            _loc_1 = viewDataItem;
            _loc_1 = Utils.i18n("homeAllItemDestruction");
            _loc_1 = checkBoxRenderer;
            _loc_1 = Utils.i18n("changeEquipmentItemName");
            _loc_1 = nameRenderer;
            _loc_1 = Utils.i18n("changeEquipmentEffect");
            _loc_1 = Utils.i18n("changeEquipmentEndurance");
            _loc_1 = Utils.i18n("generalRarity");
            _loc_1 = Utils.i18n("generalDescription");
            _loc_1 = Utils.i18n("confirmBuildMaterial");
            _loc_1 = viewDataMaterial;
            _loc_1 = Utils.i18n("generalMaterilalName");
            _loc_1 = toolTipRenderer;
            _loc_1 = Utils.i18n("generalQuantity");
            _loc_1 = Utils.i18n("generalRarity");
            _loc_1 = Utils.i18n("generalDescription");
            return;
        }// end function

        private function _HomeAllItem_bindingsSetup() : Array
        {
            var binding:Binding;
            var result:Array;
            binding = new Binding(this, function () : String
            {
                var _loc_1:* = Utils.i18n("homeAllItemItemList");
                var _loc_2:* = _loc_1 == undefined ? (null) : (String(_loc_1));
                return _loc_2;
            }// end function
            , function (param1:String) : void
            {
                _HomeAllItem_Text1.text = param1;
                return;
            }// end function
            , "_HomeAllItem_Text1.text");
            result[0] = binding;
            binding = new Binding(this, function () : String
            {
                var _loc_1:* = Utils.i18n("generalWeapon");
                var _loc_2:* = _loc_1 == undefined ? (null) : (String(_loc_1));
                return _loc_2;
            }// end function
            , function (param1:String) : void
            {
                _HomeAllItem_VBox2.label = param1;
                return;
            }// end function
            , "_HomeAllItem_VBox2.label");
            result[1] = binding;
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
            result[2] = binding;
            binding = new Binding(this, function () : String
            {
                var _loc_1:* = Utils.i18n("homeAllItemDestruction");
                var _loc_2:* = _loc_1 == undefined ? (null) : (String(_loc_1));
                return _loc_2;
            }// end function
            , function (param1:String) : void
            {
                _HomeAllItem_DataGridColumn1.headerText = param1;
                return;
            }// end function
            , "_HomeAllItem_DataGridColumn1.headerText");
            result[3] = binding;
            binding = new Binding(this, function () : IFactory
            {
                return checkBoxRenderer;
            }// end function
            , function (param1:IFactory) : void
            {
                _HomeAllItem_DataGridColumn1.itemRenderer = param1;
                return;
            }// end function
            , "_HomeAllItem_DataGridColumn1.itemRenderer");
            result[4] = binding;
            binding = new Binding(this, function () : String
            {
                var _loc_1:* = Utils.i18n("changeEquipmentWeaponName");
                var _loc_2:* = _loc_1 == undefined ? (null) : (String(_loc_1));
                return _loc_2;
            }// end function
            , function (param1:String) : void
            {
                _HomeAllItem_DataGridColumn2.headerText = param1;
                return;
            }// end function
            , "_HomeAllItem_DataGridColumn2.headerText");
            result[5] = binding;
            binding = new Binding(this, function () : IFactory
            {
                return nameRenderer;
            }// end function
            , function (param1:IFactory) : void
            {
                _HomeAllItem_DataGridColumn2.itemRenderer = param1;
                return;
            }// end function
            , "_HomeAllItem_DataGridColumn2.itemRenderer");
            result[6] = binding;
            binding = new Binding(this, function () : String
            {
                var _loc_1:* = Utils.i18n("changeEquipmentType");
                var _loc_2:* = _loc_1 == undefined ? (null) : (String(_loc_1));
                return _loc_2;
            }// end function
            , function (param1:String) : void
            {
                _HomeAllItem_DataGridColumn3.headerText = param1;
                return;
            }// end function
            , "_HomeAllItem_DataGridColumn3.headerText");
            result[7] = binding;
            binding = new Binding(this, function () : String
            {
                var _loc_1:* = Utils.i18n("changeEquipmentAttack");
                var _loc_2:* = _loc_1 == undefined ? (null) : (String(_loc_1));
                return _loc_2;
            }// end function
            , function (param1:String) : void
            {
                _HomeAllItem_DataGridColumn4.headerText = param1;
                return;
            }// end function
            , "_HomeAllItem_DataGridColumn4.headerText");
            result[8] = binding;
            binding = new Binding(this, function () : String
            {
                var _loc_1:* = Utils.i18n("changeEquipmentHit");
                var _loc_2:* = _loc_1 == undefined ? (null) : (String(_loc_1));
                return _loc_2;
            }// end function
            , function (param1:String) : void
            {
                _HomeAllItem_DataGridColumn5.headerText = param1;
                return;
            }// end function
            , "_HomeAllItem_DataGridColumn5.headerText");
            result[9] = binding;
            binding = new Binding(this, function () : String
            {
                var _loc_1:* = Utils.i18n("changeEquipmentEndurance");
                var _loc_2:* = _loc_1 == undefined ? (null) : (String(_loc_1));
                return _loc_2;
            }// end function
            , function (param1:String) : void
            {
                _HomeAllItem_DataGridColumn6.headerText = param1;
                return;
            }// end function
            , "_HomeAllItem_DataGridColumn6.headerText");
            result[10] = binding;
            binding = new Binding(this, function () : String
            {
                var _loc_1:* = Utils.i18n("generalRarity");
                var _loc_2:* = _loc_1 == undefined ? (null) : (String(_loc_1));
                return _loc_2;
            }// end function
            , function (param1:String) : void
            {
                _HomeAllItem_DataGridColumn7.headerText = param1;
                return;
            }// end function
            , "_HomeAllItem_DataGridColumn7.headerText");
            result[11] = binding;
            binding = new Binding(this, function () : String
            {
                var _loc_1:* = Utils.i18n("generalDescription");
                var _loc_2:* = _loc_1 == undefined ? (null) : (String(_loc_1));
                return _loc_2;
            }// end function
            , function (param1:String) : void
            {
                _HomeAllItem_DataGridColumn8.headerText = param1;
                return;
            }// end function
            , "_HomeAllItem_DataGridColumn8.headerText");
            result[12] = binding;
            binding = new Binding(this, function () : String
            {
                var _loc_1:* = Utils.i18n("generalEquipArmor");
                var _loc_2:* = _loc_1 == undefined ? (null) : (String(_loc_1));
                return _loc_2;
            }// end function
            , function (param1:String) : void
            {
                _HomeAllItem_VBox3.label = param1;
                return;
            }// end function
            , "_HomeAllItem_VBox3.label");
            result[13] = binding;
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
            result[14] = binding;
            binding = new Binding(this, function () : String
            {
                var _loc_1:* = Utils.i18n("homeAllItemDestruction");
                var _loc_2:* = _loc_1 == undefined ? (null) : (String(_loc_1));
                return _loc_2;
            }// end function
            , function (param1:String) : void
            {
                _HomeAllItem_DataGridColumn9.headerText = param1;
                return;
            }// end function
            , "_HomeAllItem_DataGridColumn9.headerText");
            result[15] = binding;
            binding = new Binding(this, function () : IFactory
            {
                return checkBoxRenderer;
            }// end function
            , function (param1:IFactory) : void
            {
                _HomeAllItem_DataGridColumn9.itemRenderer = param1;
                return;
            }// end function
            , "_HomeAllItem_DataGridColumn9.itemRenderer");
            result[16] = binding;
            binding = new Binding(this, function () : String
            {
                var _loc_1:* = Utils.i18n("changeEquipmentArmorName");
                var _loc_2:* = _loc_1 == undefined ? (null) : (String(_loc_1));
                return _loc_2;
            }// end function
            , function (param1:String) : void
            {
                _HomeAllItem_DataGridColumn10.headerText = param1;
                return;
            }// end function
            , "_HomeAllItem_DataGridColumn10.headerText");
            result[17] = binding;
            binding = new Binding(this, function () : IFactory
            {
                return nameRenderer;
            }// end function
            , function (param1:IFactory) : void
            {
                _HomeAllItem_DataGridColumn10.itemRenderer = param1;
                return;
            }// end function
            , "_HomeAllItem_DataGridColumn10.itemRenderer");
            result[18] = binding;
            binding = new Binding(this, function () : String
            {
                var _loc_1:* = Utils.i18n("changeEquipmentDefense");
                var _loc_2:* = _loc_1 == undefined ? (null) : (String(_loc_1));
                return _loc_2;
            }// end function
            , function (param1:String) : void
            {
                _HomeAllItem_DataGridColumn11.headerText = param1;
                return;
            }// end function
            , "_HomeAllItem_DataGridColumn11.headerText");
            result[19] = binding;
            binding = new Binding(this, function () : String
            {
                var _loc_1:* = Utils.i18n("changeEquipmentMagicalDefense");
                var _loc_2:* = _loc_1 == undefined ? (null) : (String(_loc_1));
                return _loc_2;
            }// end function
            , function (param1:String) : void
            {
                _HomeAllItem_DataGridColumn12.headerText = param1;
                return;
            }// end function
            , "_HomeAllItem_DataGridColumn12.headerText");
            result[20] = binding;
            binding = new Binding(this, function () : String
            {
                var _loc_1:* = Utils.i18n("changeEquipmentAvoidance");
                var _loc_2:* = _loc_1 == undefined ? (null) : (String(_loc_1));
                return _loc_2;
            }// end function
            , function (param1:String) : void
            {
                _HomeAllItem_DataGridColumn13.headerText = param1;
                return;
            }// end function
            , "_HomeAllItem_DataGridColumn13.headerText");
            result[21] = binding;
            binding = new Binding(this, function () : String
            {
                var _loc_1:* = Utils.i18n("changeEquipmentEndurance");
                var _loc_2:* = _loc_1 == undefined ? (null) : (String(_loc_1));
                return _loc_2;
            }// end function
            , function (param1:String) : void
            {
                _HomeAllItem_DataGridColumn14.headerText = param1;
                return;
            }// end function
            , "_HomeAllItem_DataGridColumn14.headerText");
            result[22] = binding;
            binding = new Binding(this, function () : String
            {
                var _loc_1:* = Utils.i18n("generalRarity");
                var _loc_2:* = _loc_1 == undefined ? (null) : (String(_loc_1));
                return _loc_2;
            }// end function
            , function (param1:String) : void
            {
                _HomeAllItem_DataGridColumn15.headerText = param1;
                return;
            }// end function
            , "_HomeAllItem_DataGridColumn15.headerText");
            result[23] = binding;
            binding = new Binding(this, function () : String
            {
                var _loc_1:* = Utils.i18n("generalDescription");
                var _loc_2:* = _loc_1 == undefined ? (null) : (String(_loc_1));
                return _loc_2;
            }// end function
            , function (param1:String) : void
            {
                _HomeAllItem_DataGridColumn16.headerText = param1;
                return;
            }// end function
            , "_HomeAllItem_DataGridColumn16.headerText");
            result[24] = binding;
            binding = new Binding(this, function () : String
            {
                var _loc_1:* = Utils.i18n("generalEquipAccessory");
                var _loc_2:* = _loc_1 == undefined ? (null) : (String(_loc_1));
                return _loc_2;
            }// end function
            , function (param1:String) : void
            {
                _HomeAllItem_VBox4.label = param1;
                return;
            }// end function
            , "_HomeAllItem_VBox4.label");
            result[25] = binding;
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
            result[26] = binding;
            binding = new Binding(this, function () : String
            {
                var _loc_1:* = Utils.i18n("homeAllItemDestruction");
                var _loc_2:* = _loc_1 == undefined ? (null) : (String(_loc_1));
                return _loc_2;
            }// end function
            , function (param1:String) : void
            {
                _HomeAllItem_DataGridColumn17.headerText = param1;
                return;
            }// end function
            , "_HomeAllItem_DataGridColumn17.headerText");
            result[27] = binding;
            binding = new Binding(this, function () : IFactory
            {
                return checkBoxRenderer;
            }// end function
            , function (param1:IFactory) : void
            {
                _HomeAllItem_DataGridColumn17.itemRenderer = param1;
                return;
            }// end function
            , "_HomeAllItem_DataGridColumn17.itemRenderer");
            result[28] = binding;
            binding = new Binding(this, function () : String
            {
                var _loc_1:* = Utils.i18n("changeEquipmentAccessoryName");
                var _loc_2:* = _loc_1 == undefined ? (null) : (String(_loc_1));
                return _loc_2;
            }// end function
            , function (param1:String) : void
            {
                _HomeAllItem_DataGridColumn18.headerText = param1;
                return;
            }// end function
            , "_HomeAllItem_DataGridColumn18.headerText");
            result[29] = binding;
            binding = new Binding(this, function () : IFactory
            {
                return nameRenderer;
            }// end function
            , function (param1:IFactory) : void
            {
                _HomeAllItem_DataGridColumn18.itemRenderer = param1;
                return;
            }// end function
            , "_HomeAllItem_DataGridColumn18.itemRenderer");
            result[30] = binding;
            binding = new Binding(this, function () : String
            {
                var _loc_1:* = Utils.i18n("changeEquipmentEffect");
                var _loc_2:* = _loc_1 == undefined ? (null) : (String(_loc_1));
                return _loc_2;
            }// end function
            , function (param1:String) : void
            {
                _HomeAllItem_DataGridColumn19.headerText = param1;
                return;
            }// end function
            , "_HomeAllItem_DataGridColumn19.headerText");
            result[31] = binding;
            binding = new Binding(this, function () : String
            {
                var _loc_1:* = Utils.i18n("generalRarity");
                var _loc_2:* = _loc_1 == undefined ? (null) : (String(_loc_1));
                return _loc_2;
            }// end function
            , function (param1:String) : void
            {
                _HomeAllItem_DataGridColumn20.headerText = param1;
                return;
            }// end function
            , "_HomeAllItem_DataGridColumn20.headerText");
            result[32] = binding;
            binding = new Binding(this, function () : String
            {
                var _loc_1:* = Utils.i18n("generalDescription");
                var _loc_2:* = _loc_1 == undefined ? (null) : (String(_loc_1));
                return _loc_2;
            }// end function
            , function (param1:String) : void
            {
                _HomeAllItem_DataGridColumn21.headerText = param1;
                return;
            }// end function
            , "_HomeAllItem_DataGridColumn21.headerText");
            result[33] = binding;
            binding = new Binding(this, function () : String
            {
                var _loc_1:* = Utils.i18n("generalMaterial");
                var _loc_2:* = _loc_1 == undefined ? (null) : (String(_loc_1));
                return _loc_2;
            }// end function
            , function (param1:String) : void
            {
                _HomeAllItem_VBox5.label = param1;
                return;
            }// end function
            , "_HomeAllItem_VBox5.label");
            result[34] = binding;
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
            result[35] = binding;
            binding = new Binding(this, function () : String
            {
                var _loc_1:* = Utils.i18n("homeAllItemDestruction");
                var _loc_2:* = _loc_1 == undefined ? (null) : (String(_loc_1));
                return _loc_2;
            }// end function
            , function (param1:String) : void
            {
                _HomeAllItem_DataGridColumn22.headerText = param1;
                return;
            }// end function
            , "_HomeAllItem_DataGridColumn22.headerText");
            result[36] = binding;
            binding = new Binding(this, function () : IFactory
            {
                return checkBoxRenderer;
            }// end function
            , function (param1:IFactory) : void
            {
                _HomeAllItem_DataGridColumn22.itemRenderer = param1;
                return;
            }// end function
            , "_HomeAllItem_DataGridColumn22.itemRenderer");
            result[37] = binding;
            binding = new Binding(this, function () : String
            {
                var _loc_1:* = Utils.i18n("changeEquipmentItemName");
                var _loc_2:* = _loc_1 == undefined ? (null) : (String(_loc_1));
                return _loc_2;
            }// end function
            , function (param1:String) : void
            {
                _HomeAllItem_DataGridColumn23.headerText = param1;
                return;
            }// end function
            , "_HomeAllItem_DataGridColumn23.headerText");
            result[38] = binding;
            binding = new Binding(this, function () : IFactory
            {
                return nameRenderer;
            }// end function
            , function (param1:IFactory) : void
            {
                _HomeAllItem_DataGridColumn23.itemRenderer = param1;
                return;
            }// end function
            , "_HomeAllItem_DataGridColumn23.itemRenderer");
            result[39] = binding;
            binding = new Binding(this, function () : String
            {
                var _loc_1:* = Utils.i18n("changeEquipmentEffect");
                var _loc_2:* = _loc_1 == undefined ? (null) : (String(_loc_1));
                return _loc_2;
            }// end function
            , function (param1:String) : void
            {
                _HomeAllItem_DataGridColumn24.headerText = param1;
                return;
            }// end function
            , "_HomeAllItem_DataGridColumn24.headerText");
            result[40] = binding;
            binding = new Binding(this, function () : String
            {
                var _loc_1:* = Utils.i18n("changeEquipmentEndurance");
                var _loc_2:* = _loc_1 == undefined ? (null) : (String(_loc_1));
                return _loc_2;
            }// end function
            , function (param1:String) : void
            {
                _HomeAllItem_DataGridColumn25.headerText = param1;
                return;
            }// end function
            , "_HomeAllItem_DataGridColumn25.headerText");
            result[41] = binding;
            binding = new Binding(this, function () : String
            {
                var _loc_1:* = Utils.i18n("generalRarity");
                var _loc_2:* = _loc_1 == undefined ? (null) : (String(_loc_1));
                return _loc_2;
            }// end function
            , function (param1:String) : void
            {
                _HomeAllItem_DataGridColumn26.headerText = param1;
                return;
            }// end function
            , "_HomeAllItem_DataGridColumn26.headerText");
            result[42] = binding;
            binding = new Binding(this, function () : String
            {
                var _loc_1:* = Utils.i18n("generalDescription");
                var _loc_2:* = _loc_1 == undefined ? (null) : (String(_loc_1));
                return _loc_2;
            }// end function
            , function (param1:String) : void
            {
                _HomeAllItem_DataGridColumn27.headerText = param1;
                return;
            }// end function
            , "_HomeAllItem_DataGridColumn27.headerText");
            result[43] = binding;
            binding = new Binding(this, function () : String
            {
                var _loc_1:* = Utils.i18n("confirmBuildMaterial");
                var _loc_2:* = _loc_1 == undefined ? (null) : (String(_loc_1));
                return _loc_2;
            }// end function
            , function (param1:String) : void
            {
                _HomeAllItem_VBox6.label = param1;
                return;
            }// end function
            , "_HomeAllItem_VBox6.label");
            result[44] = binding;
            binding = new Binding(this, function () : Object
            {
                return viewDataMaterial;
            }// end function
            , function (param1:Object) : void
            {
                material_data_list.dataProvider = param1;
                return;
            }// end function
            , "material_data_list.dataProvider");
            result[45] = binding;
            binding = new Binding(this, function () : String
            {
                var _loc_1:* = Utils.i18n("generalMaterilalName");
                var _loc_2:* = _loc_1 == undefined ? (null) : (String(_loc_1));
                return _loc_2;
            }// end function
            , function (param1:String) : void
            {
                _HomeAllItem_DataGridColumn28.headerText = param1;
                return;
            }// end function
            , "_HomeAllItem_DataGridColumn28.headerText");
            result[46] = binding;
            binding = new Binding(this, function () : IFactory
            {
                return toolTipRenderer;
            }// end function
            , function (param1:IFactory) : void
            {
                _HomeAllItem_DataGridColumn28.itemRenderer = param1;
                return;
            }// end function
            , "_HomeAllItem_DataGridColumn28.itemRenderer");
            result[47] = binding;
            binding = new Binding(this, function () : String
            {
                var _loc_1:* = Utils.i18n("generalQuantity");
                var _loc_2:* = _loc_1 == undefined ? (null) : (String(_loc_1));
                return _loc_2;
            }// end function
            , function (param1:String) : void
            {
                _HomeAllItem_DataGridColumn29.headerText = param1;
                return;
            }// end function
            , "_HomeAllItem_DataGridColumn29.headerText");
            result[48] = binding;
            binding = new Binding(this, function () : String
            {
                var _loc_1:* = Utils.i18n("generalRarity");
                var _loc_2:* = _loc_1 == undefined ? (null) : (String(_loc_1));
                return _loc_2;
            }// end function
            , function (param1:String) : void
            {
                _HomeAllItem_DataGridColumn30.headerText = param1;
                return;
            }// end function
            , "_HomeAllItem_DataGridColumn30.headerText");
            result[49] = binding;
            binding = new Binding(this, function () : String
            {
                var _loc_1:* = Utils.i18n("generalDescription");
                var _loc_2:* = _loc_1 == undefined ? (null) : (String(_loc_1));
                return _loc_2;
            }// end function
            , function (param1:String) : void
            {
                _HomeAllItem_DataGridColumn31.headerText = param1;
                return;
            }// end function
            , "_HomeAllItem_DataGridColumn31.headerText");
            result[50] = binding;
            return result;
        }// end function

        private function _HomeAllItem_DataGridColumn24_i() : DataGridColumn
        {
            var _loc_1:* = new DataGridColumn();
            _HomeAllItem_DataGridColumn24 = _loc_1;
            _loc_1.dataField = "effect";
            _loc_1.width = 150;
            _loc_1.sortable = false;
            _loc_1.setStyle("textAlign", "center");
            BindingManager.executeBindings(this, "_HomeAllItem_DataGridColumn24", _HomeAllItem_DataGridColumn24);
            return _loc_1;
        }// end function

        private function _HomeAllItem_DataGridColumn12_i() : DataGridColumn
        {
            var _loc_1:* = new DataGridColumn();
            _HomeAllItem_DataGridColumn12 = _loc_1;
            _loc_1.dataField = "magicalDefense";
            _loc_1.width = 40;
            _loc_1.setStyle("textAlign", "center");
            BindingManager.executeBindings(this, "_HomeAllItem_DataGridColumn12", _HomeAllItem_DataGridColumn12);
            return _loc_1;
        }// end function

        private function _HomeAllItem_DataGridColumn2_i() : DataGridColumn
        {
            var _loc_1:* = new DataGridColumn();
            _HomeAllItem_DataGridColumn2 = _loc_1;
            _loc_1.dataField = "masterId";
            _loc_1.width = 100;
            _loc_1.labelFunction = itemNameLabel;
            BindingManager.executeBindings(this, "_HomeAllItem_DataGridColumn2", _HomeAllItem_DataGridColumn2);
            return _loc_1;
        }// end function

        public function set nameRenderer(param1:ClassFactory) : void
        {
            var _loc_2:* = this._563962990nameRenderer;
            if (_loc_2 !== param1)
            {
                this._563962990nameRenderer = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "nameRenderer", _loc_2, param1));
            }
            return;
        }// end function

        private function _HomeAllItem_DataGridColumn23_i() : DataGridColumn
        {
            var _loc_1:* = new DataGridColumn();
            _HomeAllItem_DataGridColumn23 = _loc_1;
            _loc_1.dataField = "masterId";
            _loc_1.width = 100;
            _loc_1.labelFunction = itemNameLabel;
            BindingManager.executeBindings(this, "_HomeAllItem_DataGridColumn23", _HomeAllItem_DataGridColumn23);
            return _loc_1;
        }// end function

        private function _HomeAllItem_DataGridColumn11_i() : DataGridColumn
        {
            var _loc_1:* = new DataGridColumn();
            _HomeAllItem_DataGridColumn11 = _loc_1;
            _loc_1.dataField = "physicalDefense";
            _loc_1.width = 40;
            _loc_1.setStyle("textAlign", "center");
            BindingManager.executeBindings(this, "_HomeAllItem_DataGridColumn11", _HomeAllItem_DataGridColumn11);
            return _loc_1;
        }// end function

        public function get viewDataWeapon() : ArrayCollection
        {
            return this._129662229viewDataWeapon;
        }// end function

        public function get material_data_list() : DataGrid
        {
            return this._1593504005material_data_list;
        }// end function

        private function _HomeAllItem_DataGridColumn19_i() : DataGridColumn
        {
            var _loc_1:* = new DataGridColumn();
            _HomeAllItem_DataGridColumn19 = _loc_1;
            _loc_1.dataField = "effectLabelAll";
            _loc_1.width = 150;
            _loc_1.sortable = false;
            _loc_1.setStyle("textAlign", "center");
            BindingManager.executeBindings(this, "_HomeAllItem_DataGridColumn19", _HomeAllItem_DataGridColumn19);
            return _loc_1;
        }// end function

        private function _HomeAllItem_DataGridColumn1_i() : DataGridColumn
        {
            var _loc_1:* = new DataGridColumn();
            _HomeAllItem_DataGridColumn1 = _loc_1;
            _loc_1.dataField = "selected";
            _loc_1.editable = true;
            _loc_1.rendererIsEditor = true;
            _loc_1.editorDataField = "selected";
            _loc_1.width = 30;
            BindingManager.executeBindings(this, "_HomeAllItem_DataGridColumn1", _HomeAllItem_DataGridColumn1);
            return _loc_1;
        }// end function

        private function _HomeAllItem_DataGridColumn9_i() : DataGridColumn
        {
            var _loc_1:* = new DataGridColumn();
            _HomeAllItem_DataGridColumn9 = _loc_1;
            _loc_1.dataField = "selected";
            _loc_1.editable = true;
            _loc_1.rendererIsEditor = true;
            _loc_1.editorDataField = "selected";
            _loc_1.width = 30;
            BindingManager.executeBindings(this, "_HomeAllItem_DataGridColumn9", _HomeAllItem_DataGridColumn9);
            return _loc_1;
        }// end function

        public function onDetail(param1:Object) : void
        {
            if (param1.masterType == "WeaponMaster" || param1.masterType == "ArmorMaster" || param1.masterType == "AccessoryMaster")
            {
                weaponDetail.viewData = param1;
                if (weaponDetail.viewData)
                {
                    popupWindow(weaponDetail, false);
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

        private function _HomeAllItem_DataGridColumn22_i() : DataGridColumn
        {
            var _loc_1:* = new DataGridColumn();
            _HomeAllItem_DataGridColumn22 = _loc_1;
            _loc_1.dataField = "selected";
            _loc_1.editable = true;
            _loc_1.rendererIsEditor = true;
            _loc_1.editorDataField = "selected";
            _loc_1.width = 30;
            BindingManager.executeBindings(this, "_HomeAllItem_DataGridColumn22", _HomeAllItem_DataGridColumn22);
            return _loc_1;
        }// end function

        public function set checkBoxRenderer(param1:ClassFactory) : void
        {
            var _loc_2:* = this._37090694checkBoxRenderer;
            if (_loc_2 !== param1)
            {
                this._37090694checkBoxRenderer = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "checkBoxRenderer", _loc_2, param1));
            }
            return;
        }// end function

        private function itemEnduranceLabel(param1:Object, param2:DataGridColumn) : String
        {
            return param1.enduranceLabel;
        }// end function

        public function get armor_data_list() : DataGrid
        {
            return this._1680067859armor_data_list;
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

        private function _HomeAllItem_DataGridColumn10_i() : DataGridColumn
        {
            var _loc_1:* = new DataGridColumn();
            _HomeAllItem_DataGridColumn10 = _loc_1;
            _loc_1.dataField = "masterId";
            _loc_1.width = 100;
            _loc_1.labelFunction = itemNameLabel;
            BindingManager.executeBindings(this, "_HomeAllItem_DataGridColumn10", _HomeAllItem_DataGridColumn10);
            return _loc_1;
        }// end function

        public function get buttonLayer() : Canvas
        {
            return this._1777504961buttonLayer;
        }// end function

        private function _HomeAllItem_DataGridColumn18_i() : DataGridColumn
        {
            var _loc_1:* = new DataGridColumn();
            _HomeAllItem_DataGridColumn18 = _loc_1;
            _loc_1.dataField = "masterId";
            _loc_1.width = 100;
            _loc_1.labelFunction = itemNameLabel;
            BindingManager.executeBindings(this, "_HomeAllItem_DataGridColumn18", _HomeAllItem_DataGridColumn18);
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

        private function itemNameLabel(param1:Object, param2:DataGridColumn) : String
        {
            return param1.nameLabel;
        }// end function

        private function _HomeAllItem_DataGridColumn21_i() : DataGridColumn
        {
            var _loc_1:* = new DataGridColumn();
            _HomeAllItem_DataGridColumn21 = _loc_1;
            _loc_1.dataField = "description";
            _loc_1.sortable = false;
            BindingManager.executeBindings(this, "_HomeAllItem_DataGridColumn21", _HomeAllItem_DataGridColumn21);
            return _loc_1;
        }// end function

        private function _HomeAllItem_DataGridColumn8_i() : DataGridColumn
        {
            var _loc_1:* = new DataGridColumn();
            _HomeAllItem_DataGridColumn8 = _loc_1;
            _loc_1.dataField = "description";
            _loc_1.sortable = false;
            BindingManager.executeBindings(this, "_HomeAllItem_DataGridColumn8", _HomeAllItem_DataGridColumn8);
            return _loc_1;
        }// end function

        public function setEquipment(param1:ResourceVO) : void
        {
            var homeResource:* = param1;
            viewDataWeapon = new ArrayCollection(homeResource.weapons);
            viewDataArmor = new ArrayCollection(homeResource.armors);
            viewDataAccessory = new ArrayCollection(homeResource.accessories);
            viewDataItem = new ArrayCollection(homeResource.items);
            viewDataWeapon.source.forEach(function (param1, param2:int, param3:Array) : void
            {
                param1.selected = false;
                return;
            }// end function
            );
            viewDataArmor.source.forEach(function (param1, param2:int, param3:Array) : void
            {
                param1.selected = false;
                return;
            }// end function
            );
            viewDataAccessory.source.forEach(function (param1, param2:int, param3:Array) : void
            {
                param1.selected = false;
                return;
            }// end function
            );
            viewDataItem.source.forEach(function (param1, param2:int, param3:Array) : void
            {
                param1.selected = false;
                return;
            }// end function
            );
            return;
        }// end function

        private function _HomeAllItem_DataGridColumn29_i() : DataGridColumn
        {
            var _loc_1:* = new DataGridColumn();
            _HomeAllItem_DataGridColumn29 = _loc_1;
            _loc_1.dataField = "quantity";
            _loc_1.width = 50;
            _loc_1.setStyle("textAlign", "center");
            BindingManager.executeBindings(this, "_HomeAllItem_DataGridColumn29", _HomeAllItem_DataGridColumn29);
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

        public function set dumpData(param1:Object) : void
        {
            _dumpData = param1;
            return;
        }// end function

        public function get checkBoxRenderer() : ClassFactory
        {
            return this._37090694checkBoxRenderer;
        }// end function

        public function ___HomeAllItem_Image1_click(event:MouseEvent) : void
        {
            close();
            return;
        }// end function

        public function set toolTipRenderer(param1:ClassFactory) : void
        {
            var _loc_2:* = this._567175622toolTipRenderer;
            if (_loc_2 !== param1)
            {
                this._567175622toolTipRenderer = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "toolTipRenderer", _loc_2, param1));
            }
            return;
        }// end function

        override public function initialize() : void
        {
            var target:HomeAllItem;
            var watcherSetupUtilClass:Object;
            .mx_internal::setDocumentDescriptor(_documentDescriptor_);
            var bindings:* = _HomeAllItem_bindingsSetup();
            var watchers:Array;
            target;
            if (_watcherSetupUtil == null)
            {
                watcherSetupUtilClass = getDefinitionByName("_com_kbmj_viking_view_home_HomeAllItemWatcherSetupUtil");
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

        private function _HomeAllItem_DataGridColumn7_i() : DataGridColumn
        {
            var _loc_1:* = new DataGridColumn();
            _HomeAllItem_DataGridColumn7 = _loc_1;
            _loc_1.dataField = "rarity";
            _loc_1.width = 50;
            _loc_1.setStyle("textAlign", "center");
            BindingManager.executeBindings(this, "_HomeAllItem_DataGridColumn7", _HomeAllItem_DataGridColumn7);
            return _loc_1;
        }// end function

        private function _HomeAllItem_DataGridColumn28_i() : DataGridColumn
        {
            var _loc_1:* = new DataGridColumn();
            _HomeAllItem_DataGridColumn28 = _loc_1;
            _loc_1.dataField = "masterId";
            _loc_1.width = 150;
            _loc_1.labelFunction = itemNameLabel;
            BindingManager.executeBindings(this, "_HomeAllItem_DataGridColumn28", _HomeAllItem_DataGridColumn28);
            return _loc_1;
        }// end function

        private function _HomeAllItem_DataGridColumn17_i() : DataGridColumn
        {
            var _loc_1:* = new DataGridColumn();
            _HomeAllItem_DataGridColumn17 = _loc_1;
            _loc_1.dataField = "selected";
            _loc_1.editable = true;
            _loc_1.rendererIsEditor = true;
            _loc_1.editorDataField = "selected";
            _loc_1.width = 30;
            BindingManager.executeBindings(this, "_HomeAllItem_DataGridColumn17", _HomeAllItem_DataGridColumn17);
            return _loc_1;
        }// end function

        public function get weapon_data_list() : DataGrid
        {
            return this._513506736weapon_data_list;
        }// end function

        private function _HomeAllItem_ClassFactory4_i() : ClassFactory
        {
            var _loc_1:* = new ClassFactory();
            checkBoxRenderer = _loc_1;
            _loc_1.generator = HomeAllItem_inlineComponent4;
            _loc_1.properties = {outerDocument:this};
            return _loc_1;
        }// end function

        private function _HomeAllItem_DataGridColumn31_i() : DataGridColumn
        {
            var _loc_1:* = new DataGridColumn();
            _HomeAllItem_DataGridColumn31 = _loc_1;
            _loc_1.dataField = "description";
            _loc_1.sortable = false;
            BindingManager.executeBindings(this, "_HomeAllItem_DataGridColumn31", _HomeAllItem_DataGridColumn31);
            return _loc_1;
        }// end function

        private function _HomeAllItem_DataGridColumn20_i() : DataGridColumn
        {
            var _loc_1:* = new DataGridColumn();
            _HomeAllItem_DataGridColumn20 = _loc_1;
            _loc_1.dataField = "rarity";
            _loc_1.width = 50;
            _loc_1.setStyle("textAlign", "center");
            BindingManager.executeBindings(this, "_HomeAllItem_DataGridColumn20", _HomeAllItem_DataGridColumn20);
            return _loc_1;
        }// end function

        public function get viewDataItem() : ArrayCollection
        {
            return this._1492198306viewDataItem;
        }// end function

        public function get dumpData() : Object
        {
            return _dumpData;
        }// end function

        private function _HomeAllItem_DataGridColumn16_i() : DataGridColumn
        {
            var _loc_1:* = new DataGridColumn();
            _HomeAllItem_DataGridColumn16 = _loc_1;
            _loc_1.dataField = "description";
            _loc_1.sortable = false;
            BindingManager.executeBindings(this, "_HomeAllItem_DataGridColumn16", _HomeAllItem_DataGridColumn16);
            return _loc_1;
        }// end function

        public function get toolTipRenderer() : ClassFactory
        {
            return this._567175622toolTipRenderer;
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

        private function _HomeAllItem_DataGridColumn6_i() : DataGridColumn
        {
            var _loc_1:* = new DataGridColumn();
            _HomeAllItem_DataGridColumn6 = _loc_1;
            _loc_1.dataField = "endurance";
            _loc_1.width = 65;
            _loc_1.labelFunction = itemEnduranceLabel;
            _loc_1.setStyle("textAlign", "center");
            BindingManager.executeBindings(this, "_HomeAllItem_DataGridColumn6", _HomeAllItem_DataGridColumn6);
            return _loc_1;
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

        public function get viewDataAccessory() : ArrayCollection
        {
            return this._1790814179viewDataAccessory;
        }// end function

        private function _HomeAllItem_DataGridColumn27_i() : DataGridColumn
        {
            var _loc_1:* = new DataGridColumn();
            _HomeAllItem_DataGridColumn27 = _loc_1;
            _loc_1.dataField = "description";
            _loc_1.sortable = false;
            BindingManager.executeBindings(this, "_HomeAllItem_DataGridColumn27", _HomeAllItem_DataGridColumn27);
            return _loc_1;
        }// end function

        public function get item_data_list() : DataGrid
        {
            return this._1218335257item_data_list;
        }// end function

        private function _HomeAllItem_ClassFactory3_i() : ClassFactory
        {
            var _loc_1:* = new ClassFactory();
            toolTipRenderer = _loc_1;
            _loc_1.generator = HomeAllItem_inlineComponent3;
            _loc_1.properties = {outerDocument:this};
            return _loc_1;
        }// end function

        public function setMaterials(param1:Array) : void
        {
            viewDataMaterial = new ArrayCollection(param1);
            return;
        }// end function

        private function _HomeAllItem_DataGridColumn30_i() : DataGridColumn
        {
            var _loc_1:* = new DataGridColumn();
            _HomeAllItem_DataGridColumn30 = _loc_1;
            _loc_1.dataField = "rarity";
            _loc_1.width = 50;
            _loc_1.setStyle("textAlign", "center");
            BindingManager.executeBindings(this, "_HomeAllItem_DataGridColumn30", _HomeAllItem_DataGridColumn30);
            return _loc_1;
        }// end function

        public function close() : void
        {
            dispatchEvent(new PopupEvent(CLOSED_HOME_ALL_ITEM, {window:this}));
            return;
        }// end function

        private function _HomeAllItem_DataGridColumn15_i() : DataGridColumn
        {
            var _loc_1:* = new DataGridColumn();
            _HomeAllItem_DataGridColumn15 = _loc_1;
            _loc_1.dataField = "rarity";
            _loc_1.width = 45;
            _loc_1.setStyle("textAlign", "center");
            BindingManager.executeBindings(this, "_HomeAllItem_DataGridColumn15", _HomeAllItem_DataGridColumn15);
            return _loc_1;
        }// end function

        public static function set watcherSetupUtil(param1:IWatcherSetupUtil) : void
        {
            HomeAllItem._watcherSetupUtil = param1;
            return;
        }// end function

    }
}
