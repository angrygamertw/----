package com.kbmj.viking.view.city
{
    import com.kbmj.viking.lib.*;
    import com.kbmj.viking.view.*;
    import flash.events.*;
    import flash.utils.*;
    import mx.binding.*;
    import mx.containers.*;
    import mx.controls.*;
    import mx.controls.dataGridClasses.*;
    import mx.core.*;
    import mx.events.*;

    public class ArmiesListWindow extends PopupWindow implements IBindingClient
    {
        public var _ArmiesListWindow_DataGrid1:DataGrid;
        public var _ArmiesListWindow_Text1:Text;
        public var _ArmiesListWindow_DataGridColumn2:DataGridColumn;
        public var _ArmiesListWindow_DataGridColumn3:DataGridColumn;
        public var _ArmiesListWindow_DataGridColumn6:DataGridColumn;
        public var _ArmiesListWindow_DataGridColumn8:DataGridColumn;
        private var _backUnitName:String;
        var _watchers:Array;
        public var _ArmiesListWindow_DataGridColumn7:DataGridColumn;
        public var _ArmiesListWindow_DataGridColumn1:DataGridColumn;
        private var _unitID:int;
        var _bindingsByDestination:Object;
        private var _1463764368_units:Array;
        var _bindingsBeginWithWord:Object;
        var _bindings:Array;
        private var _documentDescriptor_:UIComponentDescriptor;
        public static const SEARCH_UNITS:String = NAME + "/searchUnits";
        private static var _watcherSetupUtil:IWatcherSetupUtil;
        public static const NAME:String = "ArmiesListWindow";

        public function ArmiesListWindow()
        {
            _documentDescriptor_ = new UIComponentDescriptor({type:PopupWindow, propertiesFactory:function () : Object
            {
                return {height:567, width:750, childDescriptors:[new UIComponentDescriptor({type:Text, id:"_ArmiesListWindow_Text1", propertiesFactory:function () : Object
                {
                    return {x:25, y:60, styleName:"GuildSearchText"};
                }// end function
                }), new UIComponentDescriptor({type:Button, events:{click:"___ArmiesListWindow_Button1_click"}, stylesFactory:function () : void
                {
                    this.fontSize = 30;
                    this.top = "30";
                    this.right = "20";
                    return;
                }// end function
                , propertiesFactory:function () : Object
                {
                    return {width:26, height:26, styleName:"closeBtn", buttonMode:true};
                }// end function
                }), new UIComponentDescriptor({type:DataGrid, id:"_ArmiesListWindow_DataGrid1", stylesFactory:function () : void
                {
                    this.right = "25";
                    this.top = "100";
                    return;
                }// end function
                , propertiesFactory:function () : Object
                {
                    return {width:650, height:373, styleName:"DataGridBase", sortableColumns:false, columns:[_ArmiesListWindow_DataGridColumn1_i(), _ArmiesListWindow_DataGridColumn2_i(), _ArmiesListWindow_DataGridColumn3_i(), _ArmiesListWindow_DataGridColumn4_c(), _ArmiesListWindow_DataGridColumn5_c(), _ArmiesListWindow_DataGridColumn6_i(), _ArmiesListWindow_DataGridColumn7_i(), _ArmiesListWindow_DataGridColumn8_i()]};
                }// end function
                }), new UIComponentDescriptor({type:HBox, stylesFactory:function () : void
                {
                    this.horizontalGap = 20;
                    return;
                }// end function
                , propertiesFactory:function () : Object
                {
                    return {y:500, x:312, childDescriptors:[new UIComponentDescriptor({type:Button, events:{click:"___ArmiesListWindow_Button2_click"}, propertiesFactory:function () : Object
                    {
                        return {label:"", styleName:"CancelCanaButton", buttonMode:true};
                    }// end function
                    })]};
                }// end function
                })]};
            }// end function
            });
            _bindings = [];
            _watchers = [];
            _bindingsByDestination = {};
            _bindingsBeginWithWord = {};
            mx_internal::_document = this;
            this.x = 35;
            this.y = 10;
            this.height = 567;
            this.width = 750;
            this.addEventListener("creationComplete", ___ArmiesListWindow_PopupWindow1_creationComplete);
            return;
        }// end function

        private function _ArmiesListWindow_DataGridColumn3_i() : DataGridColumn
        {
            var _loc_1:* = new DataGridColumn();
            _ArmiesListWindow_DataGridColumn3 = _loc_1;
            _loc_1.dataField = "jobName";
            _loc_1.width = 100;
            BindingManager.executeBindings(this, "_ArmiesListWindow_DataGridColumn3", _ArmiesListWindow_DataGridColumn3);
            return _loc_1;
        }// end function

        private function _ArmiesListWindow_DataGridColumn5_c() : DataGridColumn
        {
            var _loc_1:* = new DataGridColumn();
            _loc_1.dataField = "maxHp";
            _loc_1.headerText = "HP";
            _loc_1.width = 40;
            _loc_1.setStyle("textAlign", "center");
            return _loc_1;
        }// end function

        private function _ArmiesListWindow_DataGridColumn7_i() : DataGridColumn
        {
            var _loc_1:* = new DataGridColumn();
            _ArmiesListWindow_DataGridColumn7 = _loc_1;
            _loc_1.dataField = "baseDefense";
            _loc_1.width = 50;
            _loc_1.setStyle("textAlign", "center");
            BindingManager.executeBindings(this, "_ArmiesListWindow_DataGridColumn7", _ArmiesListWindow_DataGridColumn7);
            return _loc_1;
        }// end function

        public function closeWindow() : void
        {
            onClose();
            return;
        }// end function

        private function init() : void
        {
            return;
        }// end function

        public function ___ArmiesListWindow_Button1_click(event:MouseEvent) : void
        {
            onClose();
            return;
        }// end function

        override public function initialize() : void
        {
            var target:ArmiesListWindow;
            var watcherSetupUtilClass:Object;
            .mx_internal::setDocumentDescriptor(_documentDescriptor_);
            var bindings:* = _ArmiesListWindow_bindingsSetup();
            var watchers:Array;
            target;
            if (_watcherSetupUtil == null)
            {
                watcherSetupUtilClass = getDefinitionByName("_com_kbmj_viking_view_city_ArmiesListWindowWatcherSetupUtil");
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

        private function _ArmiesListWindow_bindingsSetup() : Array
        {
            var binding:Binding;
            var result:Array;
            binding = new Binding(this, function () : String
            {
                var _loc_1:* = description;
                var _loc_2:* = _loc_1 == undefined ? (null) : (String(_loc_1));
                return _loc_2;
            }// end function
            , function (param1:String) : void
            {
                _ArmiesListWindow_Text1.text = param1;
                return;
            }// end function
            , "_ArmiesListWindow_Text1.text");
            result[0] = binding;
            binding = new Binding(this, function () : Object
            {
                return _units;
            }// end function
            , function (param1:Object) : void
            {
                _ArmiesListWindow_DataGrid1.dataProvider = param1;
                return;
            }// end function
            , "_ArmiesListWindow_DataGrid1.dataProvider");
            result[1] = binding;
            binding = new Binding(this, function () : String
            {
                var _loc_1:* = Utils.i18n("generalName");
                var _loc_2:* = _loc_1 == undefined ? (null) : (String(_loc_1));
                return _loc_2;
            }// end function
            , function (param1:String) : void
            {
                _ArmiesListWindow_DataGridColumn1.headerText = param1;
                return;
            }// end function
            , "_ArmiesListWindow_DataGridColumn1.headerText");
            result[2] = binding;
            binding = new Binding(this, function () : String
            {
                var _loc_1:* = Utils.i18n("generalAffiliation");
                var _loc_2:* = _loc_1 == undefined ? (null) : (String(_loc_1));
                return _loc_2;
            }// end function
            , function (param1:String) : void
            {
                _ArmiesListWindow_DataGridColumn2.headerText = param1;
                return;
            }// end function
            , "_ArmiesListWindow_DataGridColumn2.headerText");
            result[3] = binding;
            binding = new Binding(this, function () : String
            {
                var _loc_1:* = Utils.i18n("generalJob");
                var _loc_2:* = _loc_1 == undefined ? (null) : (String(_loc_1));
                return _loc_2;
            }// end function
            , function (param1:String) : void
            {
                _ArmiesListWindow_DataGridColumn3.headerText = param1;
                return;
            }// end function
            , "_ArmiesListWindow_DataGridColumn3.headerText");
            result[4] = binding;
            binding = new Binding(this, function () : String
            {
                var _loc_1:* = Utils.i18n("changeEquipmentAttack");
                var _loc_2:* = _loc_1 == undefined ? (null) : (String(_loc_1));
                return _loc_2;
            }// end function
            , function (param1:String) : void
            {
                _ArmiesListWindow_DataGridColumn6.headerText = param1;
                return;
            }// end function
            , "_ArmiesListWindow_DataGridColumn6.headerText");
            result[5] = binding;
            binding = new Binding(this, function () : String
            {
                var _loc_1:* = Utils.i18n("generalDefence");
                var _loc_2:* = _loc_1 == undefined ? (null) : (String(_loc_1));
                return _loc_2;
            }// end function
            , function (param1:String) : void
            {
                _ArmiesListWindow_DataGridColumn7.headerText = param1;
                return;
            }// end function
            , "_ArmiesListWindow_DataGridColumn7.headerText");
            result[6] = binding;
            binding = new Binding(this, function () : String
            {
                var _loc_1:* = Utils.i18n("generalEquipWeapon");
                var _loc_2:* = _loc_1 == undefined ? (null) : (String(_loc_1));
                return _loc_2;
            }// end function
            , function (param1:String) : void
            {
                _ArmiesListWindow_DataGridColumn8.headerText = param1;
                return;
            }// end function
            , "_ArmiesListWindow_DataGridColumn8.headerText");
            result[7] = binding;
            return result;
        }// end function

        public function get unitID() : int
        {
            return _unitID;
        }// end function

        public function unitNon() : void
        {
            alertPopUp(Utils.i18n("ArmiesListRepatriationUnitNon"));
            return;
        }// end function

        public function setUnits(param1:Array, param2:Array) : void
        {
            var _loc_4:int = 0;
            var _loc_3:int = 0;
            while (_loc_3 < param1.length)
            {
                
                _loc_4 = 0;
                while (_loc_4 < param2.length)
                {
                    
                    if (param2[_loc_4].playerId as int == param1[_loc_3].playerId as int)
                    {
                        param1[_loc_3].playerName = param2[_loc_4].name;
                    }
                    _loc_4++;
                }
                _loc_3++;
            }
            _units = param1;
            return;
        }// end function

        public function get backUnitName() : String
        {
            return _backUnitName;
        }// end function

        private function _ArmiesListWindow_DataGridColumn4_c() : DataGridColumn
        {
            var _loc_1:* = new DataGridColumn();
            _loc_1.dataField = "level";
            _loc_1.headerText = "Lv";
            _loc_1.width = 40;
            _loc_1.setStyle("textAlign", "center");
            return _loc_1;
        }// end function

        private function _ArmiesListWindow_DataGridColumn2_i() : DataGridColumn
        {
            var _loc_1:* = new DataGridColumn();
            _ArmiesListWindow_DataGridColumn2 = _loc_1;
            _loc_1.dataField = "playerName";
            _loc_1.width = 130;
            _loc_1.setStyle("textAlign", "center");
            BindingManager.executeBindings(this, "_ArmiesListWindow_DataGridColumn2", _ArmiesListWindow_DataGridColumn2);
            return _loc_1;
        }// end function

        private function _ArmiesListWindow_DataGridColumn6_i() : DataGridColumn
        {
            var _loc_1:* = new DataGridColumn();
            _ArmiesListWindow_DataGridColumn6 = _loc_1;
            _loc_1.dataField = "baseDamage";
            _loc_1.width = 50;
            _loc_1.setStyle("textAlign", "center");
            BindingManager.executeBindings(this, "_ArmiesListWindow_DataGridColumn6", _ArmiesListWindow_DataGridColumn6);
            return _loc_1;
        }// end function

        private function _ArmiesListWindow_DataGridColumn8_i() : DataGridColumn
        {
            var _loc_1:* = new DataGridColumn();
            _ArmiesListWindow_DataGridColumn8 = _loc_1;
            _loc_1.dataField = "weaponName";
            _loc_1.width = 100;
            _loc_1.setStyle("textAlign", "center");
            BindingManager.executeBindings(this, "_ArmiesListWindow_DataGridColumn8", _ArmiesListWindow_DataGridColumn8);
            return _loc_1;
        }// end function

        public function ___ArmiesListWindow_PopupWindow1_creationComplete(event:FlexEvent) : void
        {
            init();
            return;
        }// end function

        private function _ArmiesListWindow_ClassFactory1_c() : ClassFactory
        {
            var _loc_1:* = new ClassFactory();
            _loc_1.generator = UnitDetailLabelRenderer;
            return _loc_1;
        }// end function

        private function alertPopUp(param1:String) : void
        {
            var _loc_2:* = AlertWindow.show(param1);
            popupWindow(_loc_2, false);
            return;
        }// end function

        public function ___ArmiesListWindow_Button2_click(event:MouseEvent) : void
        {
            onClose();
            return;
        }// end function

        private function set _units(param1:Array) : void
        {
            var _loc_2:* = this._1463764368_units;
            if (_loc_2 !== param1)
            {
                this._1463764368_units = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "_units", _loc_2, param1));
            }
            return;
        }// end function

        public function get units() : Array
        {
            return _units;
        }// end function

        private function _ArmiesListWindow_bindingExprs() : void
        {
            var _loc_1:* = undefined;
            _loc_1 = description;
            _loc_1 = _units;
            _loc_1 = Utils.i18n("generalName");
            _loc_1 = Utils.i18n("generalAffiliation");
            _loc_1 = Utils.i18n("generalJob");
            _loc_1 = Utils.i18n("changeEquipmentAttack");
            _loc_1 = Utils.i18n("generalDefence");
            _loc_1 = Utils.i18n("generalEquipWeapon");
            return;
        }// end function

        public function onClickSearch(param1:Object) : void
        {
            _backUnitName = param1.name;
            _unitID = param1.unitId;
            dispatchEvent(new Event(SEARCH_UNITS));
            return;
        }// end function

        private function get _units() : Array
        {
            return this._1463764368_units;
        }// end function

        protected function get description() : String
        {
            return Utils.i18n("ArmiesListRepatriationDescription");
        }// end function

        private function _ArmiesListWindow_DataGridColumn1_i() : DataGridColumn
        {
            var _loc_1:* = new DataGridColumn();
            _ArmiesListWindow_DataGridColumn1 = _loc_1;
            _loc_1.dataField = "name";
            _loc_1.width = 100;
            _loc_1.itemRenderer = _ArmiesListWindow_ClassFactory1_c();
            BindingManager.executeBindings(this, "_ArmiesListWindow_DataGridColumn1", _ArmiesListWindow_DataGridColumn1);
            return _loc_1;
        }// end function

        public static function set watcherSetupUtil(param1:IWatcherSetupUtil) : void
        {
            _watcherSetupUtil = param1;
            return;
        }// end function

    }
}
