package com.kbmj.viking.view.home
{
    import com.kbmj.viking.lib.*;
    import com.kbmj.viking.vo.home.*;
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

    public class BuildUnitWindow extends Canvas implements IBindingClient
    {
        public var _BuildUnitWindow_Text1:Text;
        public var _BuildUnitWindow_Text2:Text;
        var _watchers:Array;
        private var _1720059900unitCanvas:Canvas;
        private var _1896677185windowLayer:Canvas;
        private var _292905918unitList:DataGrid;
        private var _embed_mxml__swf_common_button_close_window_swf_1370265653:Class;
        private var _1988954698_unitArray:ArrayCollection;
        var _bindingsByDestination:Object;
        public var _BuildUnitWindow_DataGridColumn1:DataGridColumn;
        public var _BuildUnitWindow_DataGridColumn2:DataGridColumn;
        public var _BuildUnitWindow_DataGridColumn3:DataGridColumn;
        public var _BuildUnitWindow_DataGridColumn5:DataGridColumn;
        var _bindingsBeginWithWord:Object;
        private var _1463764368_units:Array;
        private var _1958883625expLabel:ClassFactory;
        private var _195525296_construction:Object;
        var _bindings:Array;
        private var _documentDescriptor_:UIComponentDescriptor;
        public var selectedIndex:int;
        private var _1777504961buttonLayer:Canvas;
        private static var _watcherSetupUtil:IWatcherSetupUtil;
        public static const CLOSE_UNIT_LIST:String = "BuildUnitWinodw/closeUnitList";
        public static const UNIT_SELECTED:String = "BuildUnitWinodw/UnitSelected";

        public function BuildUnitWindow()
        {
            _documentDescriptor_ = new UIComponentDescriptor({type:Canvas, propertiesFactory:function () : Object
            {
                return {height:560, width:760, childDescriptors:[new UIComponentDescriptor({type:Canvas, id:"windowLayer"}), new UIComponentDescriptor({type:Canvas, id:"unitCanvas", propertiesFactory:function () : Object
                {
                    return {childDescriptors:[new UIComponentDescriptor({type:Text, id:"_BuildUnitWindow_Text1", stylesFactory:function () : void
                    {
                        this.top = "109";
                        this.left = "40";
                        return;
                    }// end function
                    , propertiesFactory:function () : Object
                    {
                        return {styleName:"UnitSelectText"};
                    }// end function
                    }), new UIComponentDescriptor({type:Text, id:"_BuildUnitWindow_Text2", propertiesFactory:function () : Object
                    {
                        return {styleName:"PanelBaseTitle", x:365, y:80};
                    }// end function
                    }), new UIComponentDescriptor({type:DataGrid, id:"unitList", propertiesFactory:function () : Object
                    {
                        return {styleName:"UnitListGrid", selectable:false, x:40, y:131, width:690, rowCount:12, sortableColumns:false, columns:[_BuildUnitWindow_DataGridColumn1_i(), _BuildUnitWindow_DataGridColumn2_i(), _BuildUnitWindow_DataGridColumn3_i(), _BuildUnitWindow_DataGridColumn4_c(), _BuildUnitWindow_DataGridColumn5_i(), _BuildUnitWindow_DataGridColumn6_c()]};
                    }// end function
                    }), new UIComponentDescriptor({type:Canvas, id:"buttonLayer"})]};
                }// end function
                }), new UIComponentDescriptor({type:Image, events:{click:"___BuildUnitWindow_Image1_click"}, stylesFactory:function () : void
                {
                    this.top = "80";
                    this.right = "20";
                    return;
                }// end function
                , propertiesFactory:function () : Object
                {
                    return {width:20, height:20, source:_embed_mxml__swf_common_button_close_window_swf_1370265653};
                }// end function
                })]};
            }// end function
            });
            _embed_mxml__swf_common_button_close_window_swf_1370265653 = BuildUnitWindow__embed_mxml__swf_common_button_close_window_swf_1370265653;
            _bindings = [];
            _watchers = [];
            _bindingsByDestination = {};
            _bindingsBeginWithWord = {};
            mx_internal::_document = this;
            this.height = 560;
            this.width = 760;
            _BuildUnitWindow_ClassFactory1_i();
            return;
        }// end function

        private function _BuildUnitWindow_DataGridColumn3_i() : DataGridColumn
        {
            var _loc_1:* = new DataGridColumn();
            _BuildUnitWindow_DataGridColumn3 = _loc_1;
            _loc_1.dataField = "unit.jobMasterVO.nameLabel";
            _loc_1.width = 120;
            _loc_1.setStyle("fontSize", 11);
            _loc_1.setStyle("textAlign", "center");
            BindingManager.executeBindings(this, "_BuildUnitWindow_DataGridColumn3", _BuildUnitWindow_DataGridColumn3);
            return _loc_1;
        }// end function

        public function get unitCanvas() : Canvas
        {
            return this._1720059900unitCanvas;
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

        private function _BuildUnitWindow_ClassFactory1_i() : ClassFactory
        {
            var _loc_1:* = new ClassFactory();
            expLabel = _loc_1;
            _loc_1.generator = BuildUnitWindow_inlineComponent1;
            _loc_1.properties = {outerDocument:this};
            return _loc_1;
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

        private function _BuildUnitWindow_bindingsSetup() : Array
        {
            var binding:Binding;
            var result:Array;
            binding = new Binding(this, function () : String
            {
                var _loc_1:* = Utils.i18n("buildUnit_someone");
                var _loc_2:* = _loc_1 == undefined ? (null) : (String(_loc_1));
                return _loc_2;
            }// end function
            , function (param1:String) : void
            {
                _BuildUnitWindow_Text1.text = param1;
                return;
            }// end function
            , "_BuildUnitWindow_Text1.text");
            result[0] = binding;
            binding = new Binding(this, function () : String
            {
                var _loc_1:* = Utils.i18n("generalResearch");
                var _loc_2:* = _loc_1 == undefined ? (null) : (String(_loc_1));
                return _loc_2;
            }// end function
            , function (param1:String) : void
            {
                _BuildUnitWindow_Text2.text = param1;
                return;
            }// end function
            , "_BuildUnitWindow_Text2.text");
            result[1] = binding;
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
            result[2] = binding;
            binding = new Binding(this, function () : String
            {
                var _loc_1:* = Utils.i18n("generalDecision");
                var _loc_2:* = _loc_1 == undefined ? (null) : (String(_loc_1));
                return _loc_2;
            }// end function
            , function (param1:String) : void
            {
                _BuildUnitWindow_DataGridColumn1.headerText = param1;
                return;
            }// end function
            , "_BuildUnitWindow_DataGridColumn1.headerText");
            result[3] = binding;
            binding = new Binding(this, function () : String
            {
                var _loc_1:* = Utils.i18n("generalName");
                var _loc_2:* = _loc_1 == undefined ? (null) : (String(_loc_1));
                return _loc_2;
            }// end function
            , function (param1:String) : void
            {
                _BuildUnitWindow_DataGridColumn2.headerText = param1;
                return;
            }// end function
            , "_BuildUnitWindow_DataGridColumn2.headerText");
            result[4] = binding;
            binding = new Binding(this, function () : String
            {
                var _loc_1:* = Utils.i18n("generalJob");
                var _loc_2:* = _loc_1 == undefined ? (null) : (String(_loc_1));
                return _loc_2;
            }// end function
            , function (param1:String) : void
            {
                _BuildUnitWindow_DataGridColumn3.headerText = param1;
                return;
            }// end function
            , "_BuildUnitWindow_DataGridColumn3.headerText");
            result[5] = binding;
            binding = new Binding(this, function () : String
            {
                var _loc_1:* = Utils.i18n("generalExp");
                var _loc_2:* = _loc_1 == undefined ? (null) : (String(_loc_1));
                return _loc_2;
            }// end function
            , function (param1:String) : void
            {
                _BuildUnitWindow_DataGridColumn5.headerText = param1;
                return;
            }// end function
            , "_BuildUnitWindow_DataGridColumn5.headerText");
            result[6] = binding;
            binding = new Binding(this, function () : IFactory
            {
                return expLabel;
            }// end function
            , function (param1:IFactory) : void
            {
                _BuildUnitWindow_DataGridColumn5.itemRenderer = param1;
                return;
            }// end function
            , "_BuildUnitWindow_DataGridColumn5.itemRenderer");
            result[7] = binding;
            return result;
        }// end function

        private function _BuildUnitWindow_bindingExprs() : void
        {
            var _loc_1:* = undefined;
            _loc_1 = Utils.i18n("buildUnit_someone");
            _loc_1 = Utils.i18n("generalResearch");
            _loc_1 = _unitArray;
            _loc_1 = Utils.i18n("generalDecision");
            _loc_1 = Utils.i18n("generalName");
            _loc_1 = Utils.i18n("generalJob");
            _loc_1 = Utils.i18n("generalExp");
            _loc_1 = expLabel;
            return;
        }// end function

        override public function initialize() : void
        {
            var target:BuildUnitWindow;
            var watcherSetupUtilClass:Object;
            .mx_internal::setDocumentDescriptor(_documentDescriptor_);
            var bindings:* = _BuildUnitWindow_bindingsSetup();
            var watchers:Array;
            target;
            if (_watcherSetupUtil == null)
            {
                watcherSetupUtilClass = getDefinitionByName("_com_kbmj_viking_view_home_BuildUnitWindowWatcherSetupUtil");
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

        private function _BuildUnitWindow_ClassFactory3_c() : ClassFactory
        {
            var _loc_1:* = new ClassFactory();
            _loc_1.generator = UnitDetailRendererForBuilding;
            return _loc_1;
        }// end function

        private function set _construction(param1:Object) : void
        {
            var _loc_2:* = this._195525296_construction;
            if (_loc_2 !== param1)
            {
                this._195525296_construction = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "_construction", _loc_2, param1));
            }
            return;
        }// end function

        public function init(param1:Array, param2:ConstructionVO) : void
        {
            var _loc_3:UnitVO = null;
            var _loc_4:Boolean = false;
            var _loc_5:uint = 0;
            var _loc_6:uint = 0;
            _units = param1;
            _construction = param2;
            _unitArray = new ArrayCollection();
            for each (_loc_3 in _units)
            {
                
                _loc_4 = false;
                _loc_5 = 0;
                _loc_6 = 0;
                if (_construction.requirement.units.getOne("unitId", _loc_3.unitId))
                {
                    _loc_4 = true;
                }
                else
                {
                    if (_construction.requirement.abilityName == "strength")
                    {
                        _loc_5 = 15073298;
                    }
                    if (_construction.requirement.abilityName == "intelligence")
                    {
                        _loc_6 = 15073298;
                    }
                }
                _unitArray.addItem({unit:_loc_3, canBuild:_loc_4, strengthColor:_loc_5, intelligenceColor:_loc_6});
            }
            return;
        }// end function

        public function set expLabel(param1:ClassFactory) : void
        {
            var _loc_2:* = this._1958883625expLabel;
            if (_loc_2 !== param1)
            {
                this._1958883625expLabel = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "expLabel", _loc_2, param1));
            }
            return;
        }// end function

        private function _BuildUnitWindow_DataGridColumn4_c() : DataGridColumn
        {
            var _loc_1:* = new DataGridColumn();
            _loc_1.dataField = "unit.level";
            _loc_1.headerText = "Lv";
            _loc_1.width = 50;
            _loc_1.setStyle("fontSize", 11);
            _loc_1.setStyle("textAlign", "center");
            return _loc_1;
        }// end function

        private function get _construction() : Object
        {
            return this._195525296_construction;
        }// end function

        private function _BuildUnitWindow_DataGridColumn6_c() : DataGridColumn
        {
            var _loc_1:* = new DataGridColumn();
            _loc_1.dataField = "unit.maxHp";
            _loc_1.headerText = "MAX HP";
            _loc_1.width = 80;
            _loc_1.setStyle("fontSize", 11);
            _loc_1.setStyle("textAlign", "center");
            return _loc_1;
        }// end function

        private function _BuildUnitWindow_DataGridColumn2_i() : DataGridColumn
        {
            var _loc_1:* = new DataGridColumn();
            _BuildUnitWindow_DataGridColumn2 = _loc_1;
            _loc_1.dataField = "unit.name";
            _loc_1.itemRenderer = _BuildUnitWindow_ClassFactory3_c();
            _loc_1.setStyle("fontSize", 11);
            BindingManager.executeBindings(this, "_BuildUnitWindow_DataGridColumn2", _BuildUnitWindow_DataGridColumn2);
            return _loc_1;
        }// end function

        private function get _unitArray() : ArrayCollection
        {
            return this._1988954698_unitArray;
        }// end function

        public function get buttonLayer() : Canvas
        {
            return this._1777504961buttonLayer;
        }// end function

        public function get unitList() : DataGrid
        {
            return this._292905918unitList;
        }// end function

        public function buildButtonClicked(param1:Object) : void
        {
            dispatchEvent(new PopupEvent(UNIT_SELECTED, {unit:param1}));
            return;
        }// end function

        private function _BuildUnitWindow_ClassFactory2_c() : ClassFactory
        {
            var _loc_1:* = new ClassFactory();
            _loc_1.generator = BuildButtonRenderer;
            return _loc_1;
        }// end function

        public function onClose() : void
        {
            PopUpManager.removePopUp(this);
            return;
        }// end function

        public function get windowLayer() : Canvas
        {
            return this._1896677185windowLayer;
        }// end function

        public function get expLabel() : ClassFactory
        {
            return this._1958883625expLabel;
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

        private function get _units() : Array
        {
            return this._1463764368_units;
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

        public function set unitCanvas(param1:Canvas) : void
        {
            var _loc_2:* = this._1720059900unitCanvas;
            if (_loc_2 !== param1)
            {
                this._1720059900unitCanvas = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "unitCanvas", _loc_2, param1));
            }
            return;
        }// end function

        private function _BuildUnitWindow_DataGridColumn1_i() : DataGridColumn
        {
            var _loc_1:* = new DataGridColumn();
            _BuildUnitWindow_DataGridColumn1 = _loc_1;
            _loc_1.dataField = "button";
            _loc_1.width = 50;
            _loc_1.itemRenderer = _BuildUnitWindow_ClassFactory2_c();
            BindingManager.executeBindings(this, "_BuildUnitWindow_DataGridColumn1", _BuildUnitWindow_DataGridColumn1);
            return _loc_1;
        }// end function

        public function ___BuildUnitWindow_Image1_click(event:MouseEvent) : void
        {
            onClose();
            return;
        }// end function

        private function _BuildUnitWindow_DataGridColumn5_i() : DataGridColumn
        {
            var _loc_1:* = new DataGridColumn();
            _BuildUnitWindow_DataGridColumn5 = _loc_1;
            _loc_1.dataField = "exp";
            _loc_1.width = 90;
            _loc_1.setStyle("fontSize", 11);
            _loc_1.setStyle("textAlign", "center");
            BindingManager.executeBindings(this, "_BuildUnitWindow_DataGridColumn5", _BuildUnitWindow_DataGridColumn5);
            return _loc_1;
        }// end function

        public static function set watcherSetupUtil(param1:IWatcherSetupUtil) : void
        {
            BuildUnitWindow._watcherSetupUtil = param1;
            return;
        }// end function

    }
}
