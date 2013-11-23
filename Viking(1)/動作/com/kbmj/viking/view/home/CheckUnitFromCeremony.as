package com.kbmj.viking.view.home
{
    import com.kbmj.viking.lib.*;
    import com.kbmj.viking.view.*;
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

    public class CheckUnitFromCeremony extends PopupWindow implements IBindingClient
    {
        public var _CheckUnitFromCeremony_DataGridColumn1:DataGridColumn;
        public var _CheckUnitFromCeremony_DataGridColumn2:DataGridColumn;
        public var _CheckUnitFromCeremony_DataGridColumn4:DataGridColumn;
        public var _CheckUnitFromCeremony_DataGridColumn7:DataGridColumn;
        public var _CheckUnitFromCeremony_DataGridColumn9:DataGridColumn;
        private var unitDismissWindow:UnitDismissWindow;
        public var _CheckUnitFromCeremony_DataGridColumn6:DataGridColumn;
        public var _CheckUnitFromCeremony_DataGridColumn8:DataGridColumn;
        private var _1720059900unitCanvas:Canvas;
        private var _gold:int;
        private var _selectUnit:Object;
        var _bindingsByDestination:Object;
        private var _1193840764_swf_close:MovieClipLoaderAsset;
        public var _CheckUnitFromCeremony_Image1:Image;
        public var _CheckUnitFromCeremony_Image2:Image;
        private var trainingFlag:Boolean;
        private var _1218643219_swf_close_window:MovieClipLoaderAsset;
        private var _unionUnit:UnitVO;
        private var _414507658dismissLabel:ClassFactory;
        private var unitStatus:UnitStatus;
        var _watchers:Array;
        private var _1896677185windowLayer:Canvas;
        private var _292905918unitList:DataGrid;
        private var _defArray:Array;
        private var _1988954698_unitArray:ArrayCollection;
        public var _CheckUnitFromCeremony_DataGridColumn10:DataGridColumn;
        public var _CheckUnitFromCeremony_DataGridColumn11:DataGridColumn;
        public var _CheckUnitFromCeremony_DataGridColumn12:DataGridColumn;
        private var _1463764368_units:Array;
        private var _1557746809actionCount:int = 0;
        var _bindingsBeginWithWord:Object;
        private var _1958883625expLabel:ClassFactory;
        var _bindings:Array;
        private var selectedIndex:int = 99;
        private var _documentDescriptor_:UIComponentDescriptor;
        public static var imageDismissOff:Class = CheckUnitFromCeremony_imageDismissOff;
        private static var _watcherSetupUtil:IWatcherSetupUtil;
        public static const DISMISS_FROM_CEREMONY:String = "dismissFromCeremony";
        public static const SELECTED:String = "CollectUnitWindow/Selected";
        public static var imageDismiss:Class = CheckUnitFromCeremony_imageDismiss;

        public function CheckUnitFromCeremony()
        {
            _documentDescriptor_ = new UIComponentDescriptor({type:PopupWindow, propertiesFactory:function () : Object
            {
                return {height:567, width:750, childDescriptors:[new UIComponentDescriptor({type:Canvas, id:"windowLayer"}), new UIComponentDescriptor({type:Canvas, id:"unitCanvas", propertiesFactory:function () : Object
                {
                    return {childDescriptors:[new UIComponentDescriptor({type:DataGrid, id:"unitList", events:{click:"__unitList_click"}, stylesFactory:function () : void
                    {
                        this.top = "120";
                        return;
                    }// end function
                    , propertiesFactory:function () : Object
                    {
                        return {width:690, x:35, rowCount:12, styleName:"UnitListGrid", sortableColumns:false, columns:[_CheckUnitFromCeremony_DataGridColumn1_i(), _CheckUnitFromCeremony_DataGridColumn2_i(), _CheckUnitFromCeremony_DataGridColumn3_c(), _CheckUnitFromCeremony_DataGridColumn4_i(), _CheckUnitFromCeremony_DataGridColumn5_c(), _CheckUnitFromCeremony_DataGridColumn6_i(), _CheckUnitFromCeremony_DataGridColumn7_i(), _CheckUnitFromCeremony_DataGridColumn8_i(), _CheckUnitFromCeremony_DataGridColumn9_i(), _CheckUnitFromCeremony_DataGridColumn10_i(), _CheckUnitFromCeremony_DataGridColumn11_i(), _CheckUnitFromCeremony_DataGridColumn12_i()]};
                    }// end function
                    })]};
                }// end function
                }), new UIComponentDescriptor({type:Image, id:"_CheckUnitFromCeremony_Image1", events:{click:"___CheckUnitFromCeremony_Image1_click"}, propertiesFactory:function () : Object
                {
                    return {x:325, y:485};
                }// end function
                }), new UIComponentDescriptor({type:Image, id:"_CheckUnitFromCeremony_Image2", events:{click:"___CheckUnitFromCeremony_Image2_click"}, propertiesFactory:function () : Object
                {
                    return {x:715, y:80};
                }// end function
                })]};
            }// end function
            });
            _1193840764_swf_close = new Viking.EmbedSwfButtonCommon();
            _1218643219_swf_close_window = new Viking.EmbedSwfButtonCloseWindow();
            unitDismissWindow = new UnitDismissWindow();
            _unionUnit = new UnitVO();
            _defArray = new Array();
            unitStatus = new UnitStatus();
            _bindings = [];
            _watchers = [];
            _bindingsByDestination = {};
            _bindingsBeginWithWord = {};
            mx_internal::_document = this;
            this.height = 567;
            this.width = 750;
            _CheckUnitFromCeremony_ClassFactory2_i();
            _CheckUnitFromCeremony_ClassFactory1_i();
            this.addEventListener("creationComplete", ___CheckUnitFromCeremony_PopupWindow1_creationComplete);
            return;
        }// end function

        public function init() : void
        {
            MovieClip(Loader(_swf_close.getChildAt(0)).content).gotoAndPlay(0);
            MovieClip(Loader(_swf_close.getChildAt(0)).content).gotoAndPlay("button_close");
            return;
        }// end function

        public function set dismissLabel(param1:ClassFactory) : void
        {
            var _loc_2:* = this._414507658dismissLabel;
            if (_loc_2 !== param1)
            {
                this._414507658dismissLabel = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "dismissLabel", _loc_2, param1));
            }
            return;
        }// end function

        public function ___CheckUnitFromCeremony_Image1_click(event:MouseEvent) : void
        {
            onCloseWindow();
            return;
        }// end function

        private function _CheckUnitFromCeremony_bindingExprs() : void
        {
            var _loc_1:* = undefined;
            _loc_1 = _unitArray;
            _loc_1 = Utils.i18n("generalName");
            _loc_1 = Utils.i18n("generalJob");
            _loc_1 = Utils.i18n("generalExp");
            _loc_1 = expLabel;
            _loc_1 = Utils.i18n("generalStrength");
            _loc_1 = Utils.i18n("generalTech");
            _loc_1 = Utils.i18n("generalAgility");
            _loc_1 = Utils.i18n("generalDefense");
            _loc_1 = Utils.i18n("generalIntelligence");
            _loc_1 = Utils.i18n("generalLuck");
            _loc_1 = Utils.i18n("generalExpulsion");
            _loc_1 = dismissLabel;
            _loc_1 = _swf_close;
            _loc_1 = _swf_close_window;
            return;
        }// end function

        private function addSwf() : void
        {
            Loader(_swf_close.getChildAt(0)).content.addEventListener("BUTTON_CLOSE", function (event:Event) : void
            {
                onCloseWindow();
                return;
            }// end function
            );
            MovieClip(Loader(_swf_close.getChildAt(0)).content).gotoAndPlay("button_close");
            return;
        }// end function

        private function get _swf_close_window() : MovieClipLoaderAsset
        {
            return this._1218643219_swf_close_window;
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

        private function _CheckUnitFromCeremony_DataGridColumn3_c() : DataGridColumn
        {
            var _loc_1:* = new DataGridColumn();
            _loc_1.dataField = "level";
            _loc_1.headerText = "Lv";
            _loc_1.width = 55;
            _loc_1.setStyle("textAlign", "center");
            return _loc_1;
        }// end function

        public function setUnits() : void
        {
            selectedIndex = 99;
            if (_defArray)
            {
                _defArray = new Array();
            }
            var _loc_1:int = 0;
            while (_loc_1 < _units.length)
            {
                
                _defArray.push(_units[_loc_1]);
                _loc_1++;
            }
            _unitArray = new ArrayCollection(_defArray);
            return;
        }// end function

        public function calcuCount() : void
        {
            if (unitList.selectedItem)
            {
                if (unitList.selectedItem.level <= 10)
                {
                    actionCount = 60;
                }
                else if (unitList.selectedItem.level > 10 && unitList.selectedItem.level <= 20)
                {
                    actionCount = 120;
                }
                else
                {
                    actionCount = 180;
                }
            }
            return;
        }// end function

        public function __unitList_click(event:MouseEvent) : void
        {
            calcuCount();
            return;
        }// end function

        private function _CheckUnitFromCeremony_DataGridColumn7_i() : DataGridColumn
        {
            var _loc_1:* = new DataGridColumn();
            _CheckUnitFromCeremony_DataGridColumn7 = _loc_1;
            _loc_1.dataField = "tech";
            _loc_1.width = 35;
            _loc_1.setStyle("textAlign", "center");
            BindingManager.executeBindings(this, "_CheckUnitFromCeremony_DataGridColumn7", _CheckUnitFromCeremony_DataGridColumn7);
            return _loc_1;
        }// end function

        public function ___CheckUnitFromCeremony_PopupWindow1_creationComplete(event:FlexEvent) : void
        {
            addSwf();
            return;
        }// end function

        public function get windowLayer() : Canvas
        {
            return this._1896677185windowLayer;
        }// end function

        public function get unitList() : DataGrid
        {
            return this._292905918unitList;
        }// end function

        public function ___CheckUnitFromCeremony_Image2_click(event:MouseEvent) : void
        {
            onCloseWindow();
            return;
        }// end function

        private function _CheckUnitFromCeremony_ClassFactory3_c() : ClassFactory
        {
            var _loc_1:* = new ClassFactory();
            _loc_1.generator = UnitDetailLabelRenderer;
            return _loc_1;
        }// end function

        public function getDismissImage(param1:Object) : Class
        {
            if (_unionUnit.unitId == param1.unitId)
            {
                return imageDismissOff;
            }
            return imageDismiss;
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

        private function unitDismiss(event:Event) : void
        {
            PopUpManager.removePopUp(this);
            this.dispatchEvent(new Event(DISMISS_FROM_CEREMONY));
            return;
        }// end function

        public function get units() : Array
        {
            return _units;
        }// end function

        private function _CheckUnitFromCeremony_DataGridColumn2_i() : DataGridColumn
        {
            var _loc_1:* = new DataGridColumn();
            _CheckUnitFromCeremony_DataGridColumn2 = _loc_1;
            _loc_1.dataField = "jobMasterVO.nameLabel";
            _loc_1.width = 115;
            _loc_1.setStyle("textAlign", "center");
            BindingManager.executeBindings(this, "_CheckUnitFromCeremony_DataGridColumn2", _CheckUnitFromCeremony_DataGridColumn2);
            return _loc_1;
        }// end function

        private function _CheckUnitFromCeremony_DataGridColumn6_i() : DataGridColumn
        {
            var _loc_1:* = new DataGridColumn();
            _CheckUnitFromCeremony_DataGridColumn6 = _loc_1;
            _loc_1.dataField = "strength";
            _loc_1.width = 35;
            _loc_1.setStyle("textAlign", "center");
            BindingManager.executeBindings(this, "_CheckUnitFromCeremony_DataGridColumn6", _CheckUnitFromCeremony_DataGridColumn6);
            return _loc_1;
        }// end function

        private function _CheckUnitFromCeremony_DataGridColumn12_i() : DataGridColumn
        {
            var _loc_1:* = new DataGridColumn();
            _CheckUnitFromCeremony_DataGridColumn12 = _loc_1;
            _loc_1.width = 50;
            _loc_1.setStyle("textAlign", "center");
            BindingManager.executeBindings(this, "_CheckUnitFromCeremony_DataGridColumn12", _CheckUnitFromCeremony_DataGridColumn12);
            return _loc_1;
        }// end function

        private function get actionCount() : int
        {
            return this._1557746809actionCount;
        }// end function

        private function get _swf_close() : MovieClipLoaderAsset
        {
            return this._1193840764_swf_close;
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

        private function _CheckUnitFromCeremony_ClassFactory2_i() : ClassFactory
        {
            var _loc_1:* = new ClassFactory();
            dismissLabel = _loc_1;
            _loc_1.generator = CheckUnitFromCeremony_inlineComponent2;
            _loc_1.properties = {outerDocument:this};
            return _loc_1;
        }// end function

        private function get _units() : Array
        {
            return this._1463764368_units;
        }// end function

        public function get dismissLabel() : ClassFactory
        {
            return this._414507658dismissLabel;
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

        override public function initialize() : void
        {
            var target:CheckUnitFromCeremony;
            var watcherSetupUtilClass:Object;
            .mx_internal::setDocumentDescriptor(_documentDescriptor_);
            var bindings:* = _CheckUnitFromCeremony_bindingsSetup();
            var watchers:Array;
            target;
            if (_watcherSetupUtil == null)
            {
                watcherSetupUtilClass = getDefinitionByName("_com_kbmj_viking_view_home_CheckUnitFromCeremonyWatcherSetupUtil");
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

        public function get selectUnit() : Object
        {
            return _selectUnit;
        }// end function

        private function onCloseWindow() : void
        {
            PopUpManager.removePopUp(this);
            return;
        }// end function

        private function _CheckUnitFromCeremony_DataGridColumn5_c() : DataGridColumn
        {
            var _loc_1:* = new DataGridColumn();
            _loc_1.dataField = "maxHp";
            _loc_1.headerText = "MAX HP";
            _loc_1.width = 65;
            _loc_1.setStyle("textAlign", "center");
            return _loc_1;
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

        private function _CheckUnitFromCeremony_DataGridColumn1_i() : DataGridColumn
        {
            var _loc_1:* = new DataGridColumn();
            _CheckUnitFromCeremony_DataGridColumn1 = _loc_1;
            _loc_1.dataField = "name";
            _loc_1.itemRenderer = _CheckUnitFromCeremony_ClassFactory3_c();
            BindingManager.executeBindings(this, "_CheckUnitFromCeremony_DataGridColumn1", _CheckUnitFromCeremony_DataGridColumn1);
            return _loc_1;
        }// end function

        private function _CheckUnitFromCeremony_DataGridColumn11_i() : DataGridColumn
        {
            var _loc_1:* = new DataGridColumn();
            _CheckUnitFromCeremony_DataGridColumn11 = _loc_1;
            _loc_1.dataField = "luck";
            _loc_1.width = 35;
            _loc_1.setStyle("textAlign", "center");
            BindingManager.executeBindings(this, "_CheckUnitFromCeremony_DataGridColumn11", _CheckUnitFromCeremony_DataGridColumn11);
            return _loc_1;
        }// end function

        private function _CheckUnitFromCeremony_DataGridColumn9_i() : DataGridColumn
        {
            var _loc_1:* = new DataGridColumn();
            _CheckUnitFromCeremony_DataGridColumn9 = _loc_1;
            _loc_1.dataField = "defense";
            _loc_1.width = 35;
            _loc_1.setStyle("textAlign", "center");
            BindingManager.executeBindings(this, "_CheckUnitFromCeremony_DataGridColumn9", _CheckUnitFromCeremony_DataGridColumn9);
            return _loc_1;
        }// end function

        private function get _unitArray() : ArrayCollection
        {
            return this._1988954698_unitArray;
        }// end function

        public function set gold(param1:int) : void
        {
            _gold = param1;
            return;
        }// end function

        private function _CheckUnitFromCeremony_ClassFactory1_i() : ClassFactory
        {
            var _loc_1:* = new ClassFactory();
            expLabel = _loc_1;
            _loc_1.generator = CheckUnitFromCeremony_inlineComponent1;
            _loc_1.properties = {outerDocument:this};
            return _loc_1;
        }// end function

        private function _CheckUnitFromCeremony_bindingsSetup() : Array
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
            binding = new Binding(this, function () : String
            {
                var _loc_1:* = Utils.i18n("generalName");
                var _loc_2:* = _loc_1 == undefined ? (null) : (String(_loc_1));
                return _loc_2;
            }// end function
            , function (param1:String) : void
            {
                _CheckUnitFromCeremony_DataGridColumn1.headerText = param1;
                return;
            }// end function
            , "_CheckUnitFromCeremony_DataGridColumn1.headerText");
            result[1] = binding;
            binding = new Binding(this, function () : String
            {
                var _loc_1:* = Utils.i18n("generalJob");
                var _loc_2:* = _loc_1 == undefined ? (null) : (String(_loc_1));
                return _loc_2;
            }// end function
            , function (param1:String) : void
            {
                _CheckUnitFromCeremony_DataGridColumn2.headerText = param1;
                return;
            }// end function
            , "_CheckUnitFromCeremony_DataGridColumn2.headerText");
            result[2] = binding;
            binding = new Binding(this, function () : String
            {
                var _loc_1:* = Utils.i18n("generalExp");
                var _loc_2:* = _loc_1 == undefined ? (null) : (String(_loc_1));
                return _loc_2;
            }// end function
            , function (param1:String) : void
            {
                _CheckUnitFromCeremony_DataGridColumn4.headerText = param1;
                return;
            }// end function
            , "_CheckUnitFromCeremony_DataGridColumn4.headerText");
            result[3] = binding;
            binding = new Binding(this, function () : IFactory
            {
                return expLabel;
            }// end function
            , function (param1:IFactory) : void
            {
                _CheckUnitFromCeremony_DataGridColumn4.itemRenderer = param1;
                return;
            }// end function
            , "_CheckUnitFromCeremony_DataGridColumn4.itemRenderer");
            result[4] = binding;
            binding = new Binding(this, function () : String
            {
                var _loc_1:* = Utils.i18n("generalStrength");
                var _loc_2:* = _loc_1 == undefined ? (null) : (String(_loc_1));
                return _loc_2;
            }// end function
            , function (param1:String) : void
            {
                _CheckUnitFromCeremony_DataGridColumn6.headerText = param1;
                return;
            }// end function
            , "_CheckUnitFromCeremony_DataGridColumn6.headerText");
            result[5] = binding;
            binding = new Binding(this, function () : String
            {
                var _loc_1:* = Utils.i18n("generalTech");
                var _loc_2:* = _loc_1 == undefined ? (null) : (String(_loc_1));
                return _loc_2;
            }// end function
            , function (param1:String) : void
            {
                _CheckUnitFromCeremony_DataGridColumn7.headerText = param1;
                return;
            }// end function
            , "_CheckUnitFromCeremony_DataGridColumn7.headerText");
            result[6] = binding;
            binding = new Binding(this, function () : String
            {
                var _loc_1:* = Utils.i18n("generalAgility");
                var _loc_2:* = _loc_1 == undefined ? (null) : (String(_loc_1));
                return _loc_2;
            }// end function
            , function (param1:String) : void
            {
                _CheckUnitFromCeremony_DataGridColumn8.headerText = param1;
                return;
            }// end function
            , "_CheckUnitFromCeremony_DataGridColumn8.headerText");
            result[7] = binding;
            binding = new Binding(this, function () : String
            {
                var _loc_1:* = Utils.i18n("generalDefense");
                var _loc_2:* = _loc_1 == undefined ? (null) : (String(_loc_1));
                return _loc_2;
            }// end function
            , function (param1:String) : void
            {
                _CheckUnitFromCeremony_DataGridColumn9.headerText = param1;
                return;
            }// end function
            , "_CheckUnitFromCeremony_DataGridColumn9.headerText");
            result[8] = binding;
            binding = new Binding(this, function () : String
            {
                var _loc_1:* = Utils.i18n("generalIntelligence");
                var _loc_2:* = _loc_1 == undefined ? (null) : (String(_loc_1));
                return _loc_2;
            }// end function
            , function (param1:String) : void
            {
                _CheckUnitFromCeremony_DataGridColumn10.headerText = param1;
                return;
            }// end function
            , "_CheckUnitFromCeremony_DataGridColumn10.headerText");
            result[9] = binding;
            binding = new Binding(this, function () : String
            {
                var _loc_1:* = Utils.i18n("generalLuck");
                var _loc_2:* = _loc_1 == undefined ? (null) : (String(_loc_1));
                return _loc_2;
            }// end function
            , function (param1:String) : void
            {
                _CheckUnitFromCeremony_DataGridColumn11.headerText = param1;
                return;
            }// end function
            , "_CheckUnitFromCeremony_DataGridColumn11.headerText");
            result[10] = binding;
            binding = new Binding(this, function () : String
            {
                var _loc_1:* = Utils.i18n("generalExpulsion");
                var _loc_2:* = _loc_1 == undefined ? (null) : (String(_loc_1));
                return _loc_2;
            }// end function
            , function (param1:String) : void
            {
                _CheckUnitFromCeremony_DataGridColumn12.headerText = param1;
                return;
            }// end function
            , "_CheckUnitFromCeremony_DataGridColumn12.headerText");
            result[11] = binding;
            binding = new Binding(this, function () : IFactory
            {
                return dismissLabel;
            }// end function
            , function (param1:IFactory) : void
            {
                _CheckUnitFromCeremony_DataGridColumn12.itemRenderer = param1;
                return;
            }// end function
            , "_CheckUnitFromCeremony_DataGridColumn12.itemRenderer");
            result[12] = binding;
            binding = new Binding(this, function () : Object
            {
                return _swf_close;
            }// end function
            , function (param1:Object) : void
            {
                _CheckUnitFromCeremony_Image1.source = param1;
                return;
            }// end function
            , "_CheckUnitFromCeremony_Image1.source");
            result[13] = binding;
            binding = new Binding(this, function () : Object
            {
                return _swf_close_window;
            }// end function
            , function (param1:Object) : void
            {
                _CheckUnitFromCeremony_Image2.source = param1;
                return;
            }// end function
            , "_CheckUnitFromCeremony_Image2.source");
            result[14] = binding;
            return result;
        }// end function

        public function get expLabel() : ClassFactory
        {
            return this._1958883625expLabel;
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

        public function dismissionUnit(param1:Object) : void
        {
            if (_unionUnit.unitId == param1.unitId)
            {
                return;
            }
            _selectUnit = new Object();
            _selectUnit = param1;
            popupWindow(unitDismissWindow, false);
            unitDismissWindow.init();
            unitDismissWindow.setdata(UnitVO(param1), _gold);
            unitDismissWindow.addEventListener(UnitDismissWindow.UNIT_DISMISS, unitDismiss);
            return;
        }// end function

        public function set unionUnit(param1:UnitVO) : void
        {
            _unionUnit = param1;
            return;
        }// end function

        private function _CheckUnitFromCeremony_DataGridColumn4_i() : DataGridColumn
        {
            var _loc_1:* = new DataGridColumn();
            _CheckUnitFromCeremony_DataGridColumn4 = _loc_1;
            _loc_1.dataField = "exp";
            _loc_1.width = 80;
            _loc_1.setStyle("textAlign", "center");
            BindingManager.executeBindings(this, "_CheckUnitFromCeremony_DataGridColumn4", _CheckUnitFromCeremony_DataGridColumn4);
            return _loc_1;
        }// end function

        private function _CheckUnitFromCeremony_DataGridColumn10_i() : DataGridColumn
        {
            var _loc_1:* = new DataGridColumn();
            _CheckUnitFromCeremony_DataGridColumn10 = _loc_1;
            _loc_1.dataField = "intelligence";
            _loc_1.width = 35;
            _loc_1.setStyle("textAlign", "center");
            BindingManager.executeBindings(this, "_CheckUnitFromCeremony_DataGridColumn10", _CheckUnitFromCeremony_DataGridColumn10);
            return _loc_1;
        }// end function

        private function _CheckUnitFromCeremony_DataGridColumn8_i() : DataGridColumn
        {
            var _loc_1:* = new DataGridColumn();
            _CheckUnitFromCeremony_DataGridColumn8 = _loc_1;
            _loc_1.dataField = "agility";
            _loc_1.width = 35;
            _loc_1.setStyle("textAlign", "center");
            BindingManager.executeBindings(this, "_CheckUnitFromCeremony_DataGridColumn8", _CheckUnitFromCeremony_DataGridColumn8);
            return _loc_1;
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

        private function set actionCount(param1:int) : void
        {
            var _loc_2:* = this._1557746809actionCount;
            if (_loc_2 !== param1)
            {
                this._1557746809actionCount = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "actionCount", _loc_2, param1));
            }
            return;
        }// end function

        public function get unitCanvas() : Canvas
        {
            return this._1720059900unitCanvas;
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

        public static function set watcherSetupUtil(param1:IWatcherSetupUtil) : void
        {
            CheckUnitFromCeremony._watcherSetupUtil = param1;
            return;
        }// end function

    }
}
