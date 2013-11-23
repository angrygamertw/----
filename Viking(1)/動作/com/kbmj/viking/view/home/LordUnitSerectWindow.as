package com.kbmj.viking.view.home
{
    import com.kbmj.viking.lib.*;
    import com.kbmj.viking.view.*;
    import com.kbmj.viking.vo.tactics.*;
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

    public class LordUnitSerectWindow extends Canvas implements IBindingClient
    {
        var _watchers:Array;
        private var _292905918unitList:DataGrid;
        private var _1988954698_unitArray:ArrayCollection;
        var _bindingsByDestination:Object;
        private var _defArray:Array;
        var _bindingsBeginWithWord:Object;
        private var _1463764368_units:Array;
        var _bindings:Array;
        private var _documentDescriptor_:UIComponentDescriptor;
        public var selectedIndex:int;
        public static const CLOSE:String = "LordUnitSerectWinodw/close";
        private static var _watcherSetupUtil:IWatcherSetupUtil;
        public static const UNIT_SELECTED:String = "LordUnitSerectWinodw/UnitSelected";

        public function LordUnitSerectWindow()
        {
            _documentDescriptor_ = new UIComponentDescriptor({type:Canvas, propertiesFactory:function () : Object
            {
                return {height:570, width:750, childDescriptors:[new UIComponentDescriptor({type:Text, stylesFactory:function () : void
                {
                    this.top = "55";
                    this.left = "25";
                    return;
                }// end function
                , propertiesFactory:function () : Object
                {
                    return {styleName:"UnitSelectText", text:"新しい首領にする式姫を選択して下さい。"};
                }// end function
                }), new UIComponentDescriptor({type:DataGrid, id:"unitList", stylesFactory:function () : void
                {
                    this.right = "18";
                    return;
                }// end function
                , propertiesFactory:function () : Object
                {
                    return {styleName:"UnitListGrid", selectable:false, y:90, width:700, rowCount:10, sortableColumns:false, columns:[_LordUnitSerectWindow_DataGridColumn1_c(), _LordUnitSerectWindow_DataGridColumn2_c(), _LordUnitSerectWindow_DataGridColumn3_c(), _LordUnitSerectWindow_DataGridColumn4_c(), _LordUnitSerectWindow_DataGridColumn5_c(), _LordUnitSerectWindow_DataGridColumn6_c(), _LordUnitSerectWindow_DataGridColumn7_c(), _LordUnitSerectWindow_DataGridColumn8_c(), _LordUnitSerectWindow_DataGridColumn9_c()]};
                }// end function
                }), new UIComponentDescriptor({type:Button, events:{click:"___LordUnitSerectWindow_Button1_click"}, stylesFactory:function () : void
                {
                    this.horizontalCenter = "0";
                    this.bottom = "15";
                    return;
                }// end function
                , propertiesFactory:function () : Object
                {
                    return {label:"", width:87, height:28, styleName:"CancelCanaButton", buttonMode:true};
                }// end function
                }), new UIComponentDescriptor({type:Button, events:{click:"___LordUnitSerectWindow_Button2_click"}, stylesFactory:function () : void
                {
                    this.fontSize = 30;
                    this.top = "10";
                    this.right = "15";
                    return;
                }// end function
                , propertiesFactory:function () : Object
                {
                    return {width:26, height:26, styleName:"closeBtn", buttonMode:true};
                }// end function
                })]};
            }// end function
            });
            _defArray = new Array();
            _bindings = [];
            _watchers = [];
            _bindingsByDestination = {};
            _bindingsBeginWithWord = {};
            mx_internal::_document = this;
            this.x = 20;
            this.y = 10;
            this.height = 570;
            this.width = 750;
            this.addEventListener("creationComplete", ___LordUnitSerectWindow_Canvas1_creationComplete);
            return;
        }// end function

        private function _LordUnitSerectWindow_ClassFactory2_c() : ClassFactory
        {
            var _loc_1:* = new ClassFactory();
            _loc_1.generator = UnitDetailLabelRenderer;
            return _loc_1;
        }// end function

        public function set unitList(param1:DataGrid) : void
        {
            var _loc_2:* = this._292905918unitList;
            if (_loc_2 !== param1)
            {
                this._292905918unitList = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "unitList", _loc_2, param1));
            }
            return;
        }// end function

        public function ___LordUnitSerectWindow_Button1_click(event:MouseEvent) : void
        {
            onClose();
            return;
        }// end function

        private function _LordUnitSerectWindow_bindingsSetup() : Array
        {
            var binding:Binding;
            var result:Array;
            binding = new Binding(this, function () : Object
            {
                return _unitArray;
            }// end function
            , function (param1:Object) : void
            {
                unitList.dataProvider = param1;
                return;
            }// end function
            , "unitList.dataProvider");
            result[0] = binding;
            return result;
        }// end function

        private function init() : void
        {
            return;
        }// end function

        override public function initialize() : void
        {
            var target:LordUnitSerectWindow;
            var watcherSetupUtilClass:Object;
            .mx_internal::setDocumentDescriptor(_documentDescriptor_);
            var bindings:* = _LordUnitSerectWindow_bindingsSetup();
            var watchers:Array;
            target;
            if (_watcherSetupUtil == null)
            {
                watcherSetupUtilClass = getDefinitionByName("_com_kbmj_viking_view_home_LordUnitSerectWindowWatcherSetupUtil");
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

        public function okButtonClicked(param1:Object) : void
        {
            dispatchEvent(new PopupEvent(UNIT_SELECTED, {unit:param1}));
            return;
        }// end function

        public function setUnits() : void
        {
            var _loc_2:UnitVO = null;
            if (_defArray)
            {
                _defArray = new Array();
            }
            var _loc_1:int = 0;
            while (_loc_1 < _units.length)
            {
                
                _loc_2 = _units[_loc_1];
                _defArray.push(_units[_loc_1]);
                _loc_1++;
            }
            _unitArray = new ArrayCollection(_defArray);
            return;
        }// end function

        private function _LordUnitSerectWindow_DataGridColumn2_c() : DataGridColumn
        {
            var _loc_1:* = new DataGridColumn();
            _loc_1.dataField = "name";
            _loc_1.headerText = "名前";
            _loc_1.itemRenderer = _LordUnitSerectWindow_ClassFactory2_c();
            return _loc_1;
        }// end function

        private function _LordUnitSerectWindow_DataGridColumn4_c() : DataGridColumn
        {
            var _loc_1:* = new DataGridColumn();
            _loc_1.dataField = "level";
            _loc_1.headerText = "Lv";
            _loc_1.width = 50;
            _loc_1.setStyle("textAlign", "center");
            return _loc_1;
        }// end function

        private function _LordUnitSerectWindow_DataGridColumn6_c() : DataGridColumn
        {
            var _loc_1:* = new DataGridColumn();
            _loc_1.dataField = "gender";
            _loc_1.headerText = "性別";
            _loc_1.width = 50;
            _loc_1.setStyle("textAlign", "center");
            return _loc_1;
        }// end function

        private function _LordUnitSerectWindow_DataGridColumn8_c() : DataGridColumn
        {
            var _loc_1:* = new DataGridColumn();
            _loc_1.dataField = "strength";
            _loc_1.headerText = "力";
            _loc_1.width = 50;
            _loc_1.setStyle("textAlign", "center");
            return _loc_1;
        }// end function

        private function get _unitArray() : ArrayCollection
        {
            return this._1988954698_unitArray;
        }// end function

        private function gridToolTip(param1:Object) : String
        {
            return "詳細を見る";
        }// end function

        private function _LordUnitSerectWindow_bindingExprs() : void
        {
            var _loc_1:* = undefined;
            _loc_1 = _unitArray;
            return;
        }// end function

        private function _LordUnitSerectWindow_ClassFactory1_c() : ClassFactory
        {
            var _loc_1:* = new ClassFactory();
            _loc_1.generator = SelectLordButtonRenderer;
            return _loc_1;
        }// end function

        public function ___LordUnitSerectWindow_Button2_click(event:MouseEvent) : void
        {
            onClose();
            return;
        }// end function

        public function get unitList() : DataGrid
        {
            return this._292905918unitList;
        }// end function

        private function onClose() : void
        {
            PopUpManager.removePopUp(this);
            return;
        }// end function

        public function set units(param1:Array) : void
        {
            _units = param1;
            setUnits();
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

        private function _LordUnitSerectWindow_DataGridColumn3_c() : DataGridColumn
        {
            var _loc_1:* = new DataGridColumn();
            _loc_1.dataField = "jobName";
            _loc_1.headerText = "種族";
            _loc_1.width = 120;
            return _loc_1;
        }// end function

        private function _LordUnitSerectWindow_DataGridColumn5_c() : DataGridColumn
        {
            var _loc_1:* = new DataGridColumn();
            _loc_1.dataField = "age";
            _loc_1.headerText = "年齢";
            _loc_1.width = 50;
            _loc_1.setStyle("textAlign", "center");
            return _loc_1;
        }// end function

        private function set _unitArray(param1:ArrayCollection) : void
        {
            var _loc_2:* = this._1988954698_unitArray;
            if (_loc_2 !== param1)
            {
                this._1988954698_unitArray = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "_unitArray", _loc_2, param1));
            }
            return;
        }// end function

        private function _LordUnitSerectWindow_DataGridColumn1_c() : DataGridColumn
        {
            var _loc_1:* = new DataGridColumn();
            _loc_1.dataField = "button";
            _loc_1.headerText = "決定";
            _loc_1.width = 50;
            _loc_1.itemRenderer = _LordUnitSerectWindow_ClassFactory1_c();
            return _loc_1;
        }// end function

        private function _LordUnitSerectWindow_DataGridColumn9_c() : DataGridColumn
        {
            var _loc_1:* = new DataGridColumn();
            _loc_1.dataField = "intelligence";
            _loc_1.headerText = "賢さ";
            _loc_1.width = 50;
            _loc_1.setStyle("textAlign", "center");
            return _loc_1;
        }// end function

        private function get _units() : Array
        {
            return this._1463764368_units;
        }// end function

        private function _LordUnitSerectWindow_DataGridColumn7_c() : DataGridColumn
        {
            var _loc_1:* = new DataGridColumn();
            _loc_1.dataField = "hp";
            _loc_1.headerText = "HP";
            _loc_1.width = 50;
            _loc_1.setStyle("textAlign", "center");
            return _loc_1;
        }// end function

        public function ___LordUnitSerectWindow_Canvas1_creationComplete(event:FlexEvent) : void
        {
            init();
            return;
        }// end function

        public static function set watcherSetupUtil(param1:IWatcherSetupUtil) : void
        {
            _watcherSetupUtil = param1;
            return;
        }// end function

    }
}
