package com.kbmj.viking.view.selectUnit
{
    import com.kbmj.viking.lib.*;
    import com.kbmj.viking.view.*;
    import flash.events.*;
    import flash.utils.*;
    import mx.binding.*;
    import mx.collections.*;
    import mx.containers.*;
    import mx.controls.*;
    import mx.controls.dataGridClasses.*;
    import mx.core.*;
    import mx.events.*;

    public class SelectItemListWindow extends CanvasWithPopUp implements IBindingClient
    {
        public var _SelectItemListWindow_VBox5:VBox;
        private var _513506736weapon_data_list:DataGrid;
        private var _881387426tabbar:TabBar;
        private var _993932656viewDataArmor:ArrayCollection;
        private var _1492198306viewDataItem:ArrayCollection;
        private var _1680067859armor_data_list:DataGrid;
        private var _1790814179viewDataAccessory:ArrayCollection;
        var _bindingsByDestination:Object;
        private var _182637929myViewStack:ViewStack;
        public var itemData:Array;
        public var _SelectItemListWindow_DataGridColumn10:DataGridColumn;
        public var _SelectItemListWindow_DataGridColumn11:DataGridColumn;
        public var _SelectItemListWindow_DataGridColumn12:DataGridColumn;
        public var _SelectItemListWindow_DataGridColumn13:DataGridColumn;
        public var _SelectItemListWindow_DataGridColumn14:DataGridColumn;
        private var _1218335257item_data_list:DataGrid;
        public var _SelectItemListWindow_DataGridColumn16:DataGridColumn;
        public var _SelectItemListWindow_DataGridColumn17:DataGridColumn;
        public var _SelectItemListWindow_DataGridColumn15:DataGridColumn;
        private var equipmentDetail:EquipmentDetail;
        public var armorData:Array;
        public var weaponDetail:WeaponDetail;
        private var _1073623258accessory_data_list:DataGrid;
        private var _522920908detailRenderer:ClassFactory;
        var _watchers:Array;
        public var _SelectItemListWindow_DataGridColumn1:DataGridColumn;
        public var _SelectItemListWindow_DataGridColumn2:DataGridColumn;
        public var _SelectItemListWindow_DataGridColumn3:DataGridColumn;
        public var _SelectItemListWindow_DataGridColumn4:DataGridColumn;
        public var _SelectItemListWindow_DataGridColumn5:DataGridColumn;
        public var _SelectItemListWindow_DataGridColumn6:DataGridColumn;
        public var _SelectItemListWindow_DataGridColumn7:DataGridColumn;
        public var _SelectItemListWindow_DataGridColumn8:DataGridColumn;
        public var _SelectItemListWindow_DataGridColumn9:DataGridColumn;
        public var accessoryData:Array;
        var _bindingsBeginWithWord:Object;
        public var weaponData:Array;
        private var _129662229viewDataWeapon:ArrayCollection;
        var _bindings:Array;
        private var _documentDescriptor_:UIComponentDescriptor;
        public var _SelectItemListWindow_VBox2:VBox;
        public var _SelectItemListWindow_VBox3:VBox;
        public var _SelectItemListWindow_VBox4:VBox;
        private static var _watcherSetupUtil:IWatcherSetupUtil;

        public function SelectItemListWindow()
        {
            _documentDescriptor_ = new UIComponentDescriptor({type:CanvasWithPopUp, propertiesFactory:function () : Object
            {
                return {height:560, width:760, childDescriptors:[new UIComponentDescriptor({type:VBox, propertiesFactory:function () : Object
                {
                    return {width:759, height:284, styleName:"SortieEqpBox", x:5, childDescriptors:[new UIComponentDescriptor({type:Canvas, propertiesFactory:function () : Object
                    {
                        return {width:750, height:30, childDescriptors:[new UIComponentDescriptor({type:TabBar, id:"tabbar", propertiesFactory:function () : Object
                        {
                            return {styleName:"SortieEqpTab"};
                        }// end function
                        }), new UIComponentDescriptor({type:Button, events:{click:"___SelectItemListWindow_Button1_click"}, stylesFactory:function () : void
                        {
                            this.fontSize = 30;
                            this.top = "0";
                            this.right = "0";
                            return;
                        }// end function
                        , propertiesFactory:function () : Object
                        {
                            return {width:26, height:26, styleName:"closeBtn", buttonMode:true};
                        }// end function
                        })]};
                    }// end function
                    }), new UIComponentDescriptor({type:ViewStack, id:"myViewStack", stylesFactory:function () : void
                    {
                        this.borderStyle = "none";
                        this.paddingLeft = 12;
                        return;
                    }// end function
                    , propertiesFactory:function () : Object
                    {
                        return {width:750, height:230, childDescriptors:[new UIComponentDescriptor({type:VBox, id:"_SelectItemListWindow_VBox2", propertiesFactory:function () : Object
                        {
                            return {percentWidth:100, height:600, childDescriptors:[new UIComponentDescriptor({type:DataGrid, id:"weapon_data_list", propertiesFactory:function () : Object
                            {
                                return {width:708, height:486, styleName:"DataGridBase", sortableColumns:false, columns:[_SelectItemListWindow_DataGridColumn1_i(), _SelectItemListWindow_DataGridColumn2_i(), _SelectItemListWindow_DataGridColumn3_i(), _SelectItemListWindow_DataGridColumn4_i(), _SelectItemListWindow_DataGridColumn5_i()]};
                            }// end function
                            })]};
                        }// end function
                        }), new UIComponentDescriptor({type:VBox, id:"_SelectItemListWindow_VBox3", propertiesFactory:function () : Object
                        {
                            return {percentWidth:100, height:600, childDescriptors:[new UIComponentDescriptor({type:DataGrid, id:"armor_data_list", propertiesFactory:function () : Object
                            {
                                return {width:708, height:486, styleName:"DataGridBase", sortableColumns:false, columns:[_SelectItemListWindow_DataGridColumn6_i(), _SelectItemListWindow_DataGridColumn7_i(), _SelectItemListWindow_DataGridColumn8_i(), _SelectItemListWindow_DataGridColumn9_i(), _SelectItemListWindow_DataGridColumn10_i()]};
                            }// end function
                            })]};
                        }// end function
                        }), new UIComponentDescriptor({type:VBox, id:"_SelectItemListWindow_VBox4", propertiesFactory:function () : Object
                        {
                            return {percentWidth:100, height:600, childDescriptors:[new UIComponentDescriptor({type:DataGrid, id:"accessory_data_list", propertiesFactory:function () : Object
                            {
                                return {width:708, height:486, styleName:"DataGridBase", sortableColumns:false, columns:[_SelectItemListWindow_DataGridColumn11_i(), _SelectItemListWindow_DataGridColumn12_i(), _SelectItemListWindow_DataGridColumn13_i()]};
                            }// end function
                            })]};
                        }// end function
                        }), new UIComponentDescriptor({type:VBox, id:"_SelectItemListWindow_VBox5", propertiesFactory:function () : Object
                        {
                            return {percentWidth:100, height:600, childDescriptors:[new UIComponentDescriptor({type:DataGrid, id:"item_data_list", propertiesFactory:function () : Object
                            {
                                return {editable:true, width:708, height:486, styleName:"DataGridBase", sortableColumns:false, columns:[_SelectItemListWindow_DataGridColumn14_i(), _SelectItemListWindow_DataGridColumn15_i(), _SelectItemListWindow_DataGridColumn16_i(), _SelectItemListWindow_DataGridColumn17_i()]};
                            }// end function
                            })]};
                        }// end function
                        })]};
                    }// end function
                    })]};
                }// end function
                })]};
            }// end function
            });
            weaponData = new Array();
            armorData = new Array();
            itemData = new Array();
            accessoryData = new Array();
            weaponDetail = new WeaponDetail();
            equipmentDetail = new EquipmentDetail();
            _bindings = [];
            _watchers = [];
            _bindingsByDestination = {};
            _bindingsBeginWithWord = {};
            mx_internal::_document = this;
            this.height = 560;
            this.width = 760;
            _SelectItemListWindow_ClassFactory1_i();
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

        private function _SelectItemListWindow_DataGridColumn11_i() : DataGridColumn
        {
            var _loc_1:* = new DataGridColumn();
            _SelectItemListWindow_DataGridColumn11 = _loc_1;
            _loc_1.dataField = "nameLabel";
            _loc_1.width = 170;
            BindingManager.executeBindings(this, "_SelectItemListWindow_DataGridColumn11", _SelectItemListWindow_DataGridColumn11);
            return _loc_1;
        }// end function

        public function setWeapons(param1:Array) : void
        {
            var _loc_2:int = 0;
            if (weaponData)
            {
                weaponData = new Array();
            }
            while (_loc_2 < param1.length)
            {
                
                weaponData.push(param1[_loc_2]);
                _loc_2++;
            }
            viewDataWeapon = new ArrayCollection(weaponData);
            return;
        }// end function

        private function _SelectItemListWindow_DataGridColumn15_i() : DataGridColumn
        {
            var _loc_1:* = new DataGridColumn();
            _SelectItemListWindow_DataGridColumn15 = _loc_1;
            _loc_1.dataField = "effect";
            _loc_1.width = 200;
            _loc_1.editable = false;
            _loc_1.setStyle("textAlign", "center");
            BindingManager.executeBindings(this, "_SelectItemListWindow_DataGridColumn15", _SelectItemListWindow_DataGridColumn15);
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

        public function get armor_data_list() : DataGrid
        {
            return this._1680067859armor_data_list;
        }// end function

        public function setArmors(param1:Array) : void
        {
            var _loc_2:int = 0;
            if (armorData)
            {
                armorData = new Array();
            }
            while (_loc_2 < param1.length)
            {
                
                armorData.push(param1[_loc_2]);
                _loc_2++;
            }
            viewDataArmor = new ArrayCollection(armorData);
            return;
        }// end function

        public function componentToolTip() : String
        {
            return Utils.i18n("generalShowDetail");
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

        private function _SelectItemListWindow_DataGridColumn3_i() : DataGridColumn
        {
            var _loc_1:* = new DataGridColumn();
            _SelectItemListWindow_DataGridColumn3 = _loc_1;
            _loc_1.dataField = "hit";
            _loc_1.width = 60;
            _loc_1.setStyle("textAlign", "center");
            BindingManager.executeBindings(this, "_SelectItemListWindow_DataGridColumn3", _SelectItemListWindow_DataGridColumn3);
            return _loc_1;
        }// end function

        public function get accessory_data_list() : DataGrid
        {
            return this._1073623258accessory_data_list;
        }// end function

        private function _SelectItemListWindow_DataGridColumn7_i() : DataGridColumn
        {
            var _loc_1:* = new DataGridColumn();
            _SelectItemListWindow_DataGridColumn7 = _loc_1;
            _loc_1.dataField = "physicalDefense";
            _loc_1.width = 60;
            _loc_1.setStyle("textAlign", "center");
            BindingManager.executeBindings(this, "_SelectItemListWindow_DataGridColumn7", _SelectItemListWindow_DataGridColumn7);
            return _loc_1;
        }// end function

        private function _SelectItemListWindow_bindingExprs() : void
        {
            var _loc_1:* = undefined;
            _loc_1 = myViewStack;
            _loc_1 = Utils.i18n("generalWeapon");
            _loc_1 = viewDataWeapon;
            _loc_1 = Utils.i18n("changeEquipmentWeaponName");
            _loc_1 = detailRenderer;
            _loc_1 = Utils.i18n("changeEquipmentAttack");
            _loc_1 = Utils.i18n("changeEquipmentHit");
            _loc_1 = Utils.i18n("changeEquipmentEndurance");
            _loc_1 = Utils.i18n("generalDescription");
            _loc_1 = Utils.i18n("generalEquipArmor");
            _loc_1 = viewDataArmor;
            _loc_1 = Utils.i18n("changeEquipmentArmorName");
            _loc_1 = detailRenderer;
            _loc_1 = Utils.i18n("changeEquipmentDefense");
            _loc_1 = Utils.i18n("changeEquipmentMagicalDefense");
            _loc_1 = Utils.i18n("changeEquipmentAvoidance");
            _loc_1 = Utils.i18n("generalDescription");
            _loc_1 = Utils.i18n("localize269");
            _loc_1 = viewDataAccessory;
            _loc_1 = Utils.i18n("changeEquipmentAccessoryName");
            _loc_1 = detailRenderer;
            _loc_1 = Utils.i18n("changeEquipmentEffect");
            _loc_1 = Utils.i18n("generalDescription");
            _loc_1 = Utils.i18n("generalMaterial");
            _loc_1 = viewDataItem;
            _loc_1 = Utils.i18n("changeEquipmentItemName");
            _loc_1 = detailRenderer;
            _loc_1 = Utils.i18n("changeEquipmentEffect");
            _loc_1 = Utils.i18n("changeEquipmentEndurance");
            _loc_1 = Utils.i18n("generalDescription");
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

        public function get detailRenderer() : ClassFactory
        {
            return this._522920908detailRenderer;
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

        public function ___SelectItemListWindow_Button1_click(event:MouseEvent) : void
        {
            onClose();
            return;
        }// end function

        private function _SelectItemListWindow_DataGridColumn10_i() : DataGridColumn
        {
            var _loc_1:* = new DataGridColumn();
            _SelectItemListWindow_DataGridColumn10 = _loc_1;
            _loc_1.dataField = "masterVO.description";
            BindingManager.executeBindings(this, "_SelectItemListWindow_DataGridColumn10", _SelectItemListWindow_DataGridColumn10);
            return _loc_1;
        }// end function

        private function _SelectItemListWindow_DataGridColumn14_i() : DataGridColumn
        {
            var _loc_1:* = new DataGridColumn();
            _SelectItemListWindow_DataGridColumn14 = _loc_1;
            _loc_1.dataField = "nameLabel";
            _loc_1.editable = false;
            _loc_1.width = 170;
            BindingManager.executeBindings(this, "_SelectItemListWindow_DataGridColumn14", _SelectItemListWindow_DataGridColumn14);
            return _loc_1;
        }// end function

        private function onClose() : void
        {
            this.visible = false;
            return;
        }// end function

        private function _SelectItemListWindow_bindingsSetup() : Array
        {
            var binding:Binding;
            var result:Array;
            binding = new Binding(this, function () : Object
            {
                return myViewStack;
            }// end function
            , function (param1:Object) : void
            {
                tabbar.dataProvider = param1;
                return;
            }// end function
            , "tabbar.dataProvider");
            result[0] = binding;
            binding = new Binding(this, function () : String
            {
                var _loc_1:* = Utils.i18n("generalWeapon");
                var _loc_2:* = _loc_1 == undefined ? (null) : (String(_loc_1));
                return _loc_2;
            }// end function
            , function (param1:String) : void
            {
                _SelectItemListWindow_VBox2.label = param1;
                return;
            }// end function
            , "_SelectItemListWindow_VBox2.label");
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
                var _loc_1:* = Utils.i18n("changeEquipmentWeaponName");
                var _loc_2:* = _loc_1 == undefined ? (null) : (String(_loc_1));
                return _loc_2;
            }// end function
            , function (param1:String) : void
            {
                _SelectItemListWindow_DataGridColumn1.headerText = param1;
                return;
            }// end function
            , "_SelectItemListWindow_DataGridColumn1.headerText");
            result[3] = binding;
            binding = new Binding(this, function () : IFactory
            {
                return detailRenderer;
            }// end function
            , function (param1:IFactory) : void
            {
                _SelectItemListWindow_DataGridColumn1.itemRenderer = param1;
                return;
            }// end function
            , "_SelectItemListWindow_DataGridColumn1.itemRenderer");
            result[4] = binding;
            binding = new Binding(this, function () : String
            {
                var _loc_1:* = Utils.i18n("changeEquipmentAttack");
                var _loc_2:* = _loc_1 == undefined ? (null) : (String(_loc_1));
                return _loc_2;
            }// end function
            , function (param1:String) : void
            {
                _SelectItemListWindow_DataGridColumn2.headerText = param1;
                return;
            }// end function
            , "_SelectItemListWindow_DataGridColumn2.headerText");
            result[5] = binding;
            binding = new Binding(this, function () : String
            {
                var _loc_1:* = Utils.i18n("changeEquipmentHit");
                var _loc_2:* = _loc_1 == undefined ? (null) : (String(_loc_1));
                return _loc_2;
            }// end function
            , function (param1:String) : void
            {
                _SelectItemListWindow_DataGridColumn3.headerText = param1;
                return;
            }// end function
            , "_SelectItemListWindow_DataGridColumn3.headerText");
            result[6] = binding;
            binding = new Binding(this, function () : String
            {
                var _loc_1:* = Utils.i18n("changeEquipmentEndurance");
                var _loc_2:* = _loc_1 == undefined ? (null) : (String(_loc_1));
                return _loc_2;
            }// end function
            , function (param1:String) : void
            {
                _SelectItemListWindow_DataGridColumn4.headerText = param1;
                return;
            }// end function
            , "_SelectItemListWindow_DataGridColumn4.headerText");
            result[7] = binding;
            binding = new Binding(this, function () : String
            {
                var _loc_1:* = Utils.i18n("generalDescription");
                var _loc_2:* = _loc_1 == undefined ? (null) : (String(_loc_1));
                return _loc_2;
            }// end function
            , function (param1:String) : void
            {
                _SelectItemListWindow_DataGridColumn5.headerText = param1;
                return;
            }// end function
            , "_SelectItemListWindow_DataGridColumn5.headerText");
            result[8] = binding;
            binding = new Binding(this, function () : String
            {
                var _loc_1:* = Utils.i18n("generalEquipArmor");
                var _loc_2:* = _loc_1 == undefined ? (null) : (String(_loc_1));
                return _loc_2;
            }// end function
            , function (param1:String) : void
            {
                _SelectItemListWindow_VBox3.label = param1;
                return;
            }// end function
            , "_SelectItemListWindow_VBox3.label");
            result[9] = binding;
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
            result[10] = binding;
            binding = new Binding(this, function () : String
            {
                var _loc_1:* = Utils.i18n("changeEquipmentArmorName");
                var _loc_2:* = _loc_1 == undefined ? (null) : (String(_loc_1));
                return _loc_2;
            }// end function
            , function (param1:String) : void
            {
                _SelectItemListWindow_DataGridColumn6.headerText = param1;
                return;
            }// end function
            , "_SelectItemListWindow_DataGridColumn6.headerText");
            result[11] = binding;
            binding = new Binding(this, function () : IFactory
            {
                return detailRenderer;
            }// end function
            , function (param1:IFactory) : void
            {
                _SelectItemListWindow_DataGridColumn6.itemRenderer = param1;
                return;
            }// end function
            , "_SelectItemListWindow_DataGridColumn6.itemRenderer");
            result[12] = binding;
            binding = new Binding(this, function () : String
            {
                var _loc_1:* = Utils.i18n("changeEquipmentDefense");
                var _loc_2:* = _loc_1 == undefined ? (null) : (String(_loc_1));
                return _loc_2;
            }// end function
            , function (param1:String) : void
            {
                _SelectItemListWindow_DataGridColumn7.headerText = param1;
                return;
            }// end function
            , "_SelectItemListWindow_DataGridColumn7.headerText");
            result[13] = binding;
            binding = new Binding(this, function () : String
            {
                var _loc_1:* = Utils.i18n("changeEquipmentMagicalDefense");
                var _loc_2:* = _loc_1 == undefined ? (null) : (String(_loc_1));
                return _loc_2;
            }// end function
            , function (param1:String) : void
            {
                _SelectItemListWindow_DataGridColumn8.headerText = param1;
                return;
            }// end function
            , "_SelectItemListWindow_DataGridColumn8.headerText");
            result[14] = binding;
            binding = new Binding(this, function () : String
            {
                var _loc_1:* = Utils.i18n("changeEquipmentAvoidance");
                var _loc_2:* = _loc_1 == undefined ? (null) : (String(_loc_1));
                return _loc_2;
            }// end function
            , function (param1:String) : void
            {
                _SelectItemListWindow_DataGridColumn9.headerText = param1;
                return;
            }// end function
            , "_SelectItemListWindow_DataGridColumn9.headerText");
            result[15] = binding;
            binding = new Binding(this, function () : String
            {
                var _loc_1:* = Utils.i18n("generalDescription");
                var _loc_2:* = _loc_1 == undefined ? (null) : (String(_loc_1));
                return _loc_2;
            }// end function
            , function (param1:String) : void
            {
                _SelectItemListWindow_DataGridColumn10.headerText = param1;
                return;
            }// end function
            , "_SelectItemListWindow_DataGridColumn10.headerText");
            result[16] = binding;
            binding = new Binding(this, function () : String
            {
                var _loc_1:* = Utils.i18n("localize269");
                var _loc_2:* = _loc_1 == undefined ? (null) : (String(_loc_1));
                return _loc_2;
            }// end function
            , function (param1:String) : void
            {
                _SelectItemListWindow_VBox4.label = param1;
                return;
            }// end function
            , "_SelectItemListWindow_VBox4.label");
            result[17] = binding;
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
            result[18] = binding;
            binding = new Binding(this, function () : String
            {
                var _loc_1:* = Utils.i18n("changeEquipmentAccessoryName");
                var _loc_2:* = _loc_1 == undefined ? (null) : (String(_loc_1));
                return _loc_2;
            }// end function
            , function (param1:String) : void
            {
                _SelectItemListWindow_DataGridColumn11.headerText = param1;
                return;
            }// end function
            , "_SelectItemListWindow_DataGridColumn11.headerText");
            result[19] = binding;
            binding = new Binding(this, function () : IFactory
            {
                return detailRenderer;
            }// end function
            , function (param1:IFactory) : void
            {
                _SelectItemListWindow_DataGridColumn11.itemRenderer = param1;
                return;
            }// end function
            , "_SelectItemListWindow_DataGridColumn11.itemRenderer");
            result[20] = binding;
            binding = new Binding(this, function () : String
            {
                var _loc_1:* = Utils.i18n("changeEquipmentEffect");
                var _loc_2:* = _loc_1 == undefined ? (null) : (String(_loc_1));
                return _loc_2;
            }// end function
            , function (param1:String) : void
            {
                _SelectItemListWindow_DataGridColumn12.headerText = param1;
                return;
            }// end function
            , "_SelectItemListWindow_DataGridColumn12.headerText");
            result[21] = binding;
            binding = new Binding(this, function () : String
            {
                var _loc_1:* = Utils.i18n("generalDescription");
                var _loc_2:* = _loc_1 == undefined ? (null) : (String(_loc_1));
                return _loc_2;
            }// end function
            , function (param1:String) : void
            {
                _SelectItemListWindow_DataGridColumn13.headerText = param1;
                return;
            }// end function
            , "_SelectItemListWindow_DataGridColumn13.headerText");
            result[22] = binding;
            binding = new Binding(this, function () : String
            {
                var _loc_1:* = Utils.i18n("generalMaterial");
                var _loc_2:* = _loc_1 == undefined ? (null) : (String(_loc_1));
                return _loc_2;
            }// end function
            , function (param1:String) : void
            {
                _SelectItemListWindow_VBox5.label = param1;
                return;
            }// end function
            , "_SelectItemListWindow_VBox5.label");
            result[23] = binding;
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
            result[24] = binding;
            binding = new Binding(this, function () : String
            {
                var _loc_1:* = Utils.i18n("changeEquipmentItemName");
                var _loc_2:* = _loc_1 == undefined ? (null) : (String(_loc_1));
                return _loc_2;
            }// end function
            , function (param1:String) : void
            {
                _SelectItemListWindow_DataGridColumn14.headerText = param1;
                return;
            }// end function
            , "_SelectItemListWindow_DataGridColumn14.headerText");
            result[25] = binding;
            binding = new Binding(this, function () : IFactory
            {
                return detailRenderer;
            }// end function
            , function (param1:IFactory) : void
            {
                _SelectItemListWindow_DataGridColumn14.itemRenderer = param1;
                return;
            }// end function
            , "_SelectItemListWindow_DataGridColumn14.itemRenderer");
            result[26] = binding;
            binding = new Binding(this, function () : String
            {
                var _loc_1:* = Utils.i18n("changeEquipmentEffect");
                var _loc_2:* = _loc_1 == undefined ? (null) : (String(_loc_1));
                return _loc_2;
            }// end function
            , function (param1:String) : void
            {
                _SelectItemListWindow_DataGridColumn15.headerText = param1;
                return;
            }// end function
            , "_SelectItemListWindow_DataGridColumn15.headerText");
            result[27] = binding;
            binding = new Binding(this, function () : String
            {
                var _loc_1:* = Utils.i18n("changeEquipmentEndurance");
                var _loc_2:* = _loc_1 == undefined ? (null) : (String(_loc_1));
                return _loc_2;
            }// end function
            , function (param1:String) : void
            {
                _SelectItemListWindow_DataGridColumn16.headerText = param1;
                return;
            }// end function
            , "_SelectItemListWindow_DataGridColumn16.headerText");
            result[28] = binding;
            binding = new Binding(this, function () : String
            {
                var _loc_1:* = Utils.i18n("generalDescription");
                var _loc_2:* = _loc_1 == undefined ? (null) : (String(_loc_1));
                return _loc_2;
            }// end function
            , function (param1:String) : void
            {
                _SelectItemListWindow_DataGridColumn17.headerText = param1;
                return;
            }// end function
            , "_SelectItemListWindow_DataGridColumn17.headerText");
            result[29] = binding;
            return result;
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

        public function get tabbar() : TabBar
        {
            return this._881387426tabbar;
        }// end function

        private function _SelectItemListWindow_DataGridColumn2_i() : DataGridColumn
        {
            var _loc_1:* = new DataGridColumn();
            _SelectItemListWindow_DataGridColumn2 = _loc_1;
            _loc_1.dataField = "damage";
            _loc_1.width = 60;
            _loc_1.setStyle("textAlign", "center");
            BindingManager.executeBindings(this, "_SelectItemListWindow_DataGridColumn2", _SelectItemListWindow_DataGridColumn2);
            return _loc_1;
        }// end function

        public function setAccessories(param1:Array) : void
        {
            var _loc_2:int = 0;
            if (accessoryData)
            {
                accessoryData = new Array();
            }
            while (_loc_2 < param1.length)
            {
                
                accessoryData.push(param1[_loc_2]);
                _loc_2++;
            }
            viewDataAccessory = new ArrayCollection(accessoryData);
            return;
        }// end function

        private function _SelectItemListWindow_DataGridColumn6_i() : DataGridColumn
        {
            var _loc_1:* = new DataGridColumn();
            _SelectItemListWindow_DataGridColumn6 = _loc_1;
            _loc_1.dataField = "nameLabel";
            _loc_1.width = 170;
            BindingManager.executeBindings(this, "_SelectItemListWindow_DataGridColumn6", _SelectItemListWindow_DataGridColumn6);
            return _loc_1;
        }// end function

        public function setItems(param1:Array) : void
        {
            var _loc_2:int = 0;
            if (itemData)
            {
                itemData = new Array();
            }
            while (_loc_2 < param1.length)
            {
                
                itemData.push(param1[_loc_2]);
                _loc_2++;
            }
            viewDataItem = new ArrayCollection(itemData);
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

        private function _SelectItemListWindow_ClassFactory1_i() : ClassFactory
        {
            var _loc_1:* = new ClassFactory();
            detailRenderer = _loc_1;
            _loc_1.generator = SelectItemListWindow_inlineComponent1;
            _loc_1.properties = {outerDocument:this};
            return _loc_1;
        }// end function

        private function _SelectItemListWindow_DataGridColumn13_i() : DataGridColumn
        {
            var _loc_1:* = new DataGridColumn();
            _SelectItemListWindow_DataGridColumn13 = _loc_1;
            _loc_1.dataField = "masterVO.description";
            BindingManager.executeBindings(this, "_SelectItemListWindow_DataGridColumn13", _SelectItemListWindow_DataGridColumn13);
            return _loc_1;
        }// end function

        override public function initialize() : void
        {
            var target:SelectItemListWindow;
            var watcherSetupUtilClass:Object;
            .mx_internal::setDocumentDescriptor(_documentDescriptor_);
            var bindings:* = _SelectItemListWindow_bindingsSetup();
            var watchers:Array;
            target;
            if (_watcherSetupUtil == null)
            {
                watcherSetupUtilClass = getDefinitionByName("_com_kbmj_viking_view_selectUnit_SelectItemListWindowWatcherSetupUtil");
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

        private function _SelectItemListWindow_DataGridColumn17_i() : DataGridColumn
        {
            var _loc_1:* = new DataGridColumn();
            _SelectItemListWindow_DataGridColumn17 = _loc_1;
            _loc_1.dataField = "description";
            _loc_1.editable = false;
            BindingManager.executeBindings(this, "_SelectItemListWindow_DataGridColumn17", _SelectItemListWindow_DataGridColumn17);
            return _loc_1;
        }// end function

        public function get viewDataItem() : ArrayCollection
        {
            return this._1492198306viewDataItem;
        }// end function

        public function get myViewStack() : ViewStack
        {
            return this._182637929myViewStack;
        }// end function

        public function get viewDataArmor() : ArrayCollection
        {
            return this._993932656viewDataArmor;
        }// end function

        public function get weapon_data_list() : DataGrid
        {
            return this._513506736weapon_data_list;
        }// end function

        private function _SelectItemListWindow_DataGridColumn1_i() : DataGridColumn
        {
            var _loc_1:* = new DataGridColumn();
            _SelectItemListWindow_DataGridColumn1 = _loc_1;
            _loc_1.dataField = "nameLabel";
            _loc_1.width = 170;
            BindingManager.executeBindings(this, "_SelectItemListWindow_DataGridColumn1", _SelectItemListWindow_DataGridColumn1);
            return _loc_1;
        }// end function

        private function _SelectItemListWindow_DataGridColumn5_i() : DataGridColumn
        {
            var _loc_1:* = new DataGridColumn();
            _SelectItemListWindow_DataGridColumn5 = _loc_1;
            _loc_1.dataField = "description";
            BindingManager.executeBindings(this, "_SelectItemListWindow_DataGridColumn5", _SelectItemListWindow_DataGridColumn5);
            return _loc_1;
        }// end function

        private function _SelectItemListWindow_DataGridColumn9_i() : DataGridColumn
        {
            var _loc_1:* = new DataGridColumn();
            _SelectItemListWindow_DataGridColumn9 = _loc_1;
            _loc_1.dataField = "avoidance";
            _loc_1.width = 60;
            _loc_1.setStyle("textAlign", "center");
            BindingManager.executeBindings(this, "_SelectItemListWindow_DataGridColumn9", _SelectItemListWindow_DataGridColumn9);
            return _loc_1;
        }// end function

        public function set tabbar(param1:TabBar) : void
        {
            var _loc_2:* = this._881387426tabbar;
            if (_loc_2 !== param1)
            {
                this._881387426tabbar = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "tabbar", _loc_2, param1));
            }
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

        private function _SelectItemListWindow_DataGridColumn12_i() : DataGridColumn
        {
            var _loc_1:* = new DataGridColumn();
            _SelectItemListWindow_DataGridColumn12 = _loc_1;
            _loc_1.dataField = "effectLabelAll";
            _loc_1.width = 200;
            _loc_1.setStyle("textAlign", "center");
            BindingManager.executeBindings(this, "_SelectItemListWindow_DataGridColumn12", _SelectItemListWindow_DataGridColumn12);
            return _loc_1;
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

        private function _SelectItemListWindow_DataGridColumn16_i() : DataGridColumn
        {
            var _loc_1:* = new DataGridColumn();
            _SelectItemListWindow_DataGridColumn16 = _loc_1;
            _loc_1.dataField = "enduranceLabel";
            _loc_1.width = 60;
            _loc_1.editable = false;
            _loc_1.setStyle("textAlign", "center");
            BindingManager.executeBindings(this, "_SelectItemListWindow_DataGridColumn16", _SelectItemListWindow_DataGridColumn16);
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

        public function get item_data_list() : DataGrid
        {
            return this._1218335257item_data_list;
        }// end function

        public function get viewDataAccessory() : ArrayCollection
        {
            return this._1790814179viewDataAccessory;
        }// end function

        public function get viewDataWeapon() : ArrayCollection
        {
            return this._129662229viewDataWeapon;
        }// end function

        private function _SelectItemListWindow_DataGridColumn4_i() : DataGridColumn
        {
            var _loc_1:* = new DataGridColumn();
            _SelectItemListWindow_DataGridColumn4 = _loc_1;
            _loc_1.dataField = "enduranceLabel";
            _loc_1.width = 60;
            _loc_1.setStyle("textAlign", "center");
            BindingManager.executeBindings(this, "_SelectItemListWindow_DataGridColumn4", _SelectItemListWindow_DataGridColumn4);
            return _loc_1;
        }// end function

        private function _SelectItemListWindow_DataGridColumn8_i() : DataGridColumn
        {
            var _loc_1:* = new DataGridColumn();
            _SelectItemListWindow_DataGridColumn8 = _loc_1;
            _loc_1.dataField = "magicalDefense";
            _loc_1.width = 60;
            _loc_1.setStyle("textAlign", "center");
            BindingManager.executeBindings(this, "_SelectItemListWindow_DataGridColumn8", _SelectItemListWindow_DataGridColumn8);
            return _loc_1;
        }// end function

        public static function set watcherSetupUtil(param1:IWatcherSetupUtil) : void
        {
            SelectItemListWindow._watcherSetupUtil = param1;
            return;
        }// end function

    }
}
