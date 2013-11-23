package com.kbmj.viking.view.allMap
{
    import com.kbmj.viking.lib.*;
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
    import mx.managers.*;

    public class AllMapUnitWindow extends Canvas implements IBindingClient
    {
        public var _AllMapUnitWindow_Text1:Text;
        public var _AllMapUnitWindow_DataGridColumn2:DataGridColumn;
        public var _AllMapUnitWindow_DataGridColumn3:DataGridColumn;
        var _bindings:Array;
        private var _1024861772_windowBg:MovieClipLoaderAsset;
        var _watchers:Array;
        private var _2083483977_commandName:String;
        private var _1629553109_buttonCancel:MovieClipLoaderAsset;
        private var _292905918unitList:DataGrid;
        private var _1988954698_unitArray:ArrayCollection;
        public var _AllMapUnitWindow_Panel1:Panel;
        public var _AllMapUnitWindow_Image1:Image;
        public var _AllMapUnitWindow_Image2:Image;
        public var _AllMapUnitWindow_Image3:Image;
        var _bindingsBeginWithWord:Object;
        private var _1463764368_units:Array;
        var _bindingsByDestination:Object;
        private var _1958883625expLabel:ClassFactory;
        private var _1695390169_buttonX:MovieClipLoaderAsset;
        private var _1464826535_title:String;
        public var selectedIndex:int;
        public var _AllMapUnitWindow_DataGridColumn1:DataGridColumn;
        private var _documentDescriptor_:UIComponentDescriptor;
        public var _AllMapUnitWindow_DataGridColumn5:DataGridColumn;
        private static var _watcherSetupUtil:IWatcherSetupUtil;
        public static const UNIT_SELECTED:String = "AllMapUnitWinodw/UnitSelected";

        public function AllMapUnitWindow()
        {
            _documentDescriptor_ = new UIComponentDescriptor({type:Canvas, propertiesFactory:function () : Object
            {
                return {width:760, height:560, childDescriptors:[new UIComponentDescriptor({type:Image, id:"_AllMapUnitWindow_Image1"}), new UIComponentDescriptor({type:Panel, id:"_AllMapUnitWindow_Panel1", propertiesFactory:function () : Object
                {
                    return {layout:"absolute", styleName:"PanelBase", x:10, y:72, width:720, height:460, childDescriptors:[new UIComponentDescriptor({type:Text, id:"_AllMapUnitWindow_Text1", stylesFactory:function () : void
                    {
                        this.top = "0";
                        this.left = "20";
                        return;
                    }// end function
                    , propertiesFactory:function () : Object
                    {
                        return {styleName:"UnitSelectText"};
                    }// end function
                    }), new UIComponentDescriptor({type:DataGrid, id:"unitList", propertiesFactory:function () : Object
                    {
                        return {styleName:"UnitListGrid", selectable:false, x:20, y:28, width:680, rowCount:11, sortableColumns:false, columns:[_AllMapUnitWindow_DataGridColumn1_i(), _AllMapUnitWindow_DataGridColumn2_i(), _AllMapUnitWindow_DataGridColumn3_i(), _AllMapUnitWindow_DataGridColumn4_c(), _AllMapUnitWindow_DataGridColumn5_i(), _AllMapUnitWindow_DataGridColumn6_c()]};
                    }// end function
                    })]};
                }// end function
                }), new UIComponentDescriptor({type:Image, id:"_AllMapUnitWindow_Image2", stylesFactory:function () : void
                {
                    this.horizontalCenter = "0";
                    this.bottom = "79";
                    return;
                }// end function
                , propertiesFactory:function () : Object
                {
                    return {width:110};
                }// end function
                }), new UIComponentDescriptor({type:Image, id:"_AllMapUnitWindow_Image3", stylesFactory:function () : void
                {
                    this.top = "80";
                    this.right = "45";
                    return;
                }// end function
                })]};
            }// end function
            });
            _1024861772_windowBg = new Viking.EmbedSwfWindowCommon();
            _1629553109_buttonCancel = new Viking.EmbedSwfButtonCommon();
            _1695390169_buttonX = new Viking.EmbedSwfButtonCloseWindow();
            _bindings = [];
            _watchers = [];
            _bindingsByDestination = {};
            _bindingsBeginWithWord = {};
            mx_internal::_document = this;
            this.width = 760;
            this.height = 560;
            _AllMapUnitWindow_ClassFactory1_i();
            return;
        }// end function

        private function set _windowBg(param1:MovieClipLoaderAsset) : void
        {
            var _loc_2:* = this._1024861772_windowBg;
            if (_loc_2 !== param1)
            {
                this._1024861772_windowBg = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "_windowBg", _loc_2, param1));
            }
            return;
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

        private function _AllMapUnitWindow_bindingsSetup() : Array
        {
            var binding:Binding;
            var result:Array;
            binding = new Binding(this, function () : Object
            {
                return _windowBg;
            }// end function
            , function (param1:Object) : void
            {
                _AllMapUnitWindow_Image1.source = param1;
                return;
            }// end function
            , "_AllMapUnitWindow_Image1.source");
            result[0] = binding;
            binding = new Binding(this, function () : String
            {
                var _loc_1:* = _title;
                var _loc_2:* = _loc_1 == undefined ? (null) : (String(_loc_1));
                return _loc_2;
            }// end function
            , function (param1:String) : void
            {
                _AllMapUnitWindow_Panel1.title = param1;
                return;
            }// end function
            , "_AllMapUnitWindow_Panel1.title");
            result[1] = binding;
            binding = new Binding(this, function () : String
            {
                var _loc_1:* = Utils.i18n("allMapUnitSomeone", _commandName);
                var _loc_2:* = _loc_1 == undefined ? (null) : (String(_loc_1));
                return _loc_2;
            }// end function
            , function (param1:String) : void
            {
                _AllMapUnitWindow_Text1.text = param1;
                return;
            }// end function
            , "_AllMapUnitWindow_Text1.text");
            result[2] = binding;
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
            result[3] = binding;
            binding = new Binding(this, function () : String
            {
                var _loc_1:* = Utils.i18n("generalDecision");
                var _loc_2:* = _loc_1 == undefined ? (null) : (String(_loc_1));
                return _loc_2;
            }// end function
            , function (param1:String) : void
            {
                _AllMapUnitWindow_DataGridColumn1.headerText = param1;
                return;
            }// end function
            , "_AllMapUnitWindow_DataGridColumn1.headerText");
            result[4] = binding;
            binding = new Binding(this, function () : String
            {
                var _loc_1:* = Utils.i18n("generalName");
                var _loc_2:* = _loc_1 == undefined ? (null) : (String(_loc_1));
                return _loc_2;
            }// end function
            , function (param1:String) : void
            {
                _AllMapUnitWindow_DataGridColumn2.headerText = param1;
                return;
            }// end function
            , "_AllMapUnitWindow_DataGridColumn2.headerText");
            result[5] = binding;
            binding = new Binding(this, function () : String
            {
                var _loc_1:* = Utils.i18n("generalJob");
                var _loc_2:* = _loc_1 == undefined ? (null) : (String(_loc_1));
                return _loc_2;
            }// end function
            , function (param1:String) : void
            {
                _AllMapUnitWindow_DataGridColumn3.headerText = param1;
                return;
            }// end function
            , "_AllMapUnitWindow_DataGridColumn3.headerText");
            result[6] = binding;
            binding = new Binding(this, function () : String
            {
                var _loc_1:* = Utils.i18n("generalExp");
                var _loc_2:* = _loc_1 == undefined ? (null) : (String(_loc_1));
                return _loc_2;
            }// end function
            , function (param1:String) : void
            {
                _AllMapUnitWindow_DataGridColumn5.headerText = param1;
                return;
            }// end function
            , "_AllMapUnitWindow_DataGridColumn5.headerText");
            result[7] = binding;
            binding = new Binding(this, function () : IFactory
            {
                return expLabel;
            }// end function
            , function (param1:IFactory) : void
            {
                _AllMapUnitWindow_DataGridColumn5.itemRenderer = param1;
                return;
            }// end function
            , "_AllMapUnitWindow_DataGridColumn5.itemRenderer");
            result[8] = binding;
            binding = new Binding(this, function () : Object
            {
                return _buttonCancel;
            }// end function
            , function (param1:Object) : void
            {
                _AllMapUnitWindow_Image2.source = param1;
                return;
            }// end function
            , "_AllMapUnitWindow_Image2.source");
            result[9] = binding;
            binding = new Binding(this, function () : Object
            {
                return _buttonX;
            }// end function
            , function (param1:Object) : void
            {
                _AllMapUnitWindow_Image3.source = param1;
                return;
            }// end function
            , "_AllMapUnitWindow_Image3.source");
            result[10] = binding;
            return result;
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

        override public function initialize() : void
        {
            var target:AllMapUnitWindow;
            var watcherSetupUtilClass:Object;
            .mx_internal::setDocumentDescriptor(_documentDescriptor_);
            var bindings:* = _AllMapUnitWindow_bindingsSetup();
            var watchers:Array;
            target;
            if (_watcherSetupUtil == null)
            {
                watcherSetupUtilClass = getDefinitionByName("_com_kbmj_viking_view_allMap_AllMapUnitWindowWatcherSetupUtil");
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

        private function _AllMapUnitWindow_DataGridColumn4_c() : DataGridColumn
        {
            var _loc_1:* = new DataGridColumn();
            _loc_1.dataField = "unit.level";
            _loc_1.headerText = "Lv";
            _loc_1.width = 50;
            _loc_1.setStyle("textAlign", "center");
            return _loc_1;
        }// end function

        private function _AllMapUnitWindow_DataGridColumn6_c() : DataGridColumn
        {
            var _loc_1:* = new DataGridColumn();
            _loc_1.dataField = "unit.hp";
            _loc_1.headerText = "HP";
            _loc_1.width = 50;
            _loc_1.setStyle("textAlign", "center");
            return _loc_1;
        }// end function

        private function _AllMapUnitWindow_DataGridColumn2_i() : DataGridColumn
        {
            var _loc_1:* = new DataGridColumn();
            _AllMapUnitWindow_DataGridColumn2 = _loc_1;
            _loc_1.dataField = "unit.name";
            _loc_1.itemRenderer = _AllMapUnitWindow_ClassFactory3_c();
            BindingManager.executeBindings(this, "_AllMapUnitWindow_DataGridColumn2", _AllMapUnitWindow_DataGridColumn2);
            return _loc_1;
        }// end function

        private function get _buttonX() : MovieClipLoaderAsset
        {
            return this._1695390169_buttonX;
        }// end function

        public function init(param1:String, param2:String, param3:Array) : void
        {
            var unit:UnitVO;
            var title:* = param1;
            var commandName:* = param2;
            var units:* = param3;
            MovieClip(Loader(_windowBg.getChildAt(0)).content).gotoAndPlay("center_720x460");
            Loader(_buttonCancel.getChildAt(0)).content.addEventListener("click", function (event:Event) : void
            {
                onCancel();
                return;
            }// end function
            );
            MovieClip(Loader(_buttonCancel.getChildAt(0)).content).gotoAndStop(0);
            MovieClip(Loader(_buttonCancel.getChildAt(0)).content).gotoAndPlay("button_cancel");
            Loader(_buttonX.getChildAt(0)).content.addEventListener("click", function (event:Event) : void
            {
                onCancel();
                return;
            }// end function
            );
            MovieClip(Loader(_buttonX.getChildAt(0)).content).gotoAndStop(0);
            MovieClip(Loader(_buttonX.getChildAt(0)).content).gotoAndPlay("button_close");
            _title = title;
            _commandName = commandName;
            _units = units;
            _unitArray = new ArrayCollection();
            var _loc_5:int = 0;
            var _loc_6:* = _units;
            while (_loc_6 in _loc_5)
            {
                
                unit = _loc_6[_loc_5];
                _unitArray.addItem({unit:unit});
            }
            return;
        }// end function

        private function get _buttonCancel() : MovieClipLoaderAsset
        {
            return this._1629553109_buttonCancel;
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

        public function okButtonClicked(param1:Object) : void
        {
            dispatchEvent(new PopupEvent(UNIT_SELECTED, {unit:param1}));
            return;
        }// end function

        private function _AllMapUnitWindow_ClassFactory3_c() : ClassFactory
        {
            var _loc_1:* = new ClassFactory();
            _loc_1.generator = AllMapUnitNameRenderer;
            return _loc_1;
        }// end function

        private function get _unitArray() : ArrayCollection
        {
            return this._1988954698_unitArray;
        }// end function

        private function get _commandName() : String
        {
            return this._2083483977_commandName;
        }// end function

        private function _AllMapUnitWindow_ClassFactory1_i() : ClassFactory
        {
            var _loc_1:* = new ClassFactory();
            expLabel = _loc_1;
            _loc_1.generator = AllMapUnitWindow_inlineComponent1;
            _loc_1.properties = {outerDocument:this};
            return _loc_1;
        }// end function

        private function onCancel() : void
        {
            PopUpManager.removePopUp(this);
            return;
        }// end function

        private function get _windowBg() : MovieClipLoaderAsset
        {
            return this._1024861772_windowBg;
        }// end function

        private function gridToolTip(param1:Object) : String
        {
            return Utils.i18n("allMapUnitShowDetail");
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

        public function get unitList() : DataGrid
        {
            return this._292905918unitList;
        }// end function

        private function _AllMapUnitWindow_bindingExprs() : void
        {
            var _loc_1:* = undefined;
            _loc_1 = _windowBg;
            _loc_1 = _title;
            _loc_1 = Utils.i18n("allMapUnitSomeone", _commandName);
            _loc_1 = _unitArray;
            _loc_1 = Utils.i18n("generalDecision");
            _loc_1 = Utils.i18n("generalName");
            _loc_1 = Utils.i18n("generalJob");
            _loc_1 = Utils.i18n("generalExp");
            _loc_1 = expLabel;
            _loc_1 = _buttonCancel;
            _loc_1 = _buttonX;
            return;
        }// end function

        private function set _title(param1:String) : void
        {
            var _loc_2:* = this._1464826535_title;
            if (_loc_2 !== param1)
            {
                this._1464826535_title = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "_title", _loc_2, param1));
            }
            return;
        }// end function

        private function set _buttonX(param1:MovieClipLoaderAsset) : void
        {
            var _loc_2:* = this._1695390169_buttonX;
            if (_loc_2 !== param1)
            {
                this._1695390169_buttonX = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "_buttonX", _loc_2, param1));
            }
            return;
        }// end function

        private function set _buttonCancel(param1:MovieClipLoaderAsset) : void
        {
            var _loc_2:* = this._1629553109_buttonCancel;
            if (_loc_2 !== param1)
            {
                this._1629553109_buttonCancel = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "_buttonCancel", _loc_2, param1));
            }
            return;
        }// end function

        public function get expLabel() : ClassFactory
        {
            return this._1958883625expLabel;
        }// end function

        private function get _title() : String
        {
            return this._1464826535_title;
        }// end function

        private function _AllMapUnitWindow_DataGridColumn1_i() : DataGridColumn
        {
            var _loc_1:* = new DataGridColumn();
            _AllMapUnitWindow_DataGridColumn1 = _loc_1;
            _loc_1.dataField = "button";
            _loc_1.width = 50;
            _loc_1.itemRenderer = _AllMapUnitWindow_ClassFactory2_c();
            BindingManager.executeBindings(this, "_AllMapUnitWindow_DataGridColumn1", _AllMapUnitWindow_DataGridColumn1);
            return _loc_1;
        }// end function

        private function _AllMapUnitWindow_DataGridColumn3_i() : DataGridColumn
        {
            var _loc_1:* = new DataGridColumn();
            _AllMapUnitWindow_DataGridColumn3 = _loc_1;
            _loc_1.dataField = "unit.jobMasterVO.nameLabel";
            _loc_1.width = 120;
            _loc_1.setStyle("textAlign", "center");
            BindingManager.executeBindings(this, "_AllMapUnitWindow_DataGridColumn3", _AllMapUnitWindow_DataGridColumn3);
            return _loc_1;
        }// end function

        private function _AllMapUnitWindow_DataGridColumn5_i() : DataGridColumn
        {
            var _loc_1:* = new DataGridColumn();
            _AllMapUnitWindow_DataGridColumn5 = _loc_1;
            _loc_1.dataField = "exp";
            _loc_1.width = 90;
            _loc_1.setStyle("textAlign", "center");
            BindingManager.executeBindings(this, "_AllMapUnitWindow_DataGridColumn5", _AllMapUnitWindow_DataGridColumn5);
            return _loc_1;
        }// end function

        private function get _units() : Array
        {
            return this._1463764368_units;
        }// end function

        private function _AllMapUnitWindow_ClassFactory2_c() : ClassFactory
        {
            var _loc_1:* = new ClassFactory();
            _loc_1.generator = AllMapOkButtonRenderer;
            return _loc_1;
        }// end function

        private function set _commandName(param1:String) : void
        {
            var _loc_2:* = this._2083483977_commandName;
            if (_loc_2 !== param1)
            {
                this._2083483977_commandName = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "_commandName", _loc_2, param1));
            }
            return;
        }// end function

        public static function set watcherSetupUtil(param1:IWatcherSetupUtil) : void
        {
            AllMapUnitWindow._watcherSetupUtil = param1;
            return;
        }// end function

    }
}
