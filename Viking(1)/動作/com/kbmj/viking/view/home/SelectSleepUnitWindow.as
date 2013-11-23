package com.kbmj.viking.view.home
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

    public class SelectSleepUnitWindow extends PopupWindow implements IBindingClient
    {
        private var _1075873300_swf_window:MovieClipLoaderAsset;
        public var _SelectSleepUnitWindow_DataGridColumn1:DataGridColumn;
        public var _SelectSleepUnitWindow_DataGridColumn2:DataGridColumn;
        public var _SelectSleepUnitWindow_DataGridColumn4:DataGridColumn;
        public var _SelectSleepUnitWindow_DataGridColumn5:DataGridColumn;
        public var _SelectSleepUnitWindow_DataGridColumn6:DataGridColumn;
        private var _1345645291listText:Text;
        private var _coffinId:int;
        var _watchers:Array;
        private var _292905918unitList:DataGrid;
        private var _1988954698_unitArray:ArrayCollection;
        private var _1463764368_units:Array;
        var _bindingsByDestination:Object;
        var _bindingsBeginWithWord:Object;
        private var _1818888664_swf_ok:MovieClipLoaderAsset;
        private var _1029693905counterBox:VBox;
        public var _SelectSleepUnitWindow_Image1:Image;
        public var _SelectSleepUnitWindow_Image2:Image;
        public var _SelectSleepUnitWindow_Image3:Image;
        public var _SelectSleepUnitWindow_Image4:Image;
        var _bindings:Array;
        private var _1218643219_swf_close_window:MovieClipLoaderAsset;
        private var _100077085_swf_back:MovieClipLoaderAsset;
        private var _documentDescriptor_:UIComponentDescriptor;
        private var _2070195386expLabelRenderer:ClassFactory;
        public static const SELECT_SLEEPING_UNIT:String = "selectSleepingUnit";
        private static var _watcherSetupUtil:IWatcherSetupUtil;
        public static const SELECTED:String = "CollectUnitWindow/Selected";

        public function SelectSleepUnitWindow()
        {
            _documentDescriptor_ = new UIComponentDescriptor({type:PopupWindow, propertiesFactory:function () : Object
            {
                return {childDescriptors:[new UIComponentDescriptor({type:Image, id:"_SelectSleepUnitWindow_Image1"}), new UIComponentDescriptor({type:Canvas, propertiesFactory:function () : Object
                {
                    return {x:30, y:100, height:460, childDescriptors:[new UIComponentDescriptor({type:Text, id:"listText", propertiesFactory:function () : Object
                    {
                        return {y:10, x:30, styleName:"UnitSelectText"};
                    }// end function
                    }), new UIComponentDescriptor({type:DataGrid, id:"unitList", propertiesFactory:function () : Object
                    {
                        return {width:650, rowHeight:24, y:30, x:20, rowCount:14, styleName:"UnitListGrid", sortableColumns:false, columns:[_SelectSleepUnitWindow_DataGridColumn1_i(), _SelectSleepUnitWindow_DataGridColumn2_i(), _SelectSleepUnitWindow_DataGridColumn3_c(), _SelectSleepUnitWindow_DataGridColumn4_i(), _SelectSleepUnitWindow_DataGridColumn5_i(), _SelectSleepUnitWindow_DataGridColumn6_i(), _SelectSleepUnitWindow_DataGridColumn7_c()]};
                    }// end function
                    }), new UIComponentDescriptor({type:VBox, id:"counterBox", stylesFactory:function () : void
                    {
                        this.horizontalCenter = "0";
                        this.horizontalGap = 20;
                        return;
                    }// end function
                    , propertiesFactory:function () : Object
                    {
                        return {y:395, childDescriptors:[new UIComponentDescriptor({type:HBox, propertiesFactory:function () : Object
                        {
                            return {childDescriptors:[new UIComponentDescriptor({type:Image, id:"_SelectSleepUnitWindow_Image2", events:{click:"___SelectSleepUnitWindow_Image2_click"}}), new UIComponentDescriptor({type:Spacer, propertiesFactory:function () : Object
                            {
                                return {width:120};
                            }// end function
                            }), new UIComponentDescriptor({type:Image, id:"_SelectSleepUnitWindow_Image3", events:{click:"___SelectSleepUnitWindow_Image3_click"}})]};
                        }// end function
                        })]};
                    }// end function
                    })]};
                }// end function
                }), new UIComponentDescriptor({type:Image, id:"_SelectSleepUnitWindow_Image4", events:{click:"___SelectSleepUnitWindow_Image4_click"}, propertiesFactory:function () : Object
                {
                    return {x:715, y:80};
                }// end function
                })]};
            }// end function
            });
            _1075873300_swf_window = new Viking.EmbedSwfWindowCommon();
            _1218643219_swf_close_window = new Viking.EmbedSwfButtonCloseWindow();
            _1818888664_swf_ok = new Viking.EmbedSwfButtonCommon();
            _100077085_swf_back = new Viking.EmbedSwfButtonCommon();
            _bindings = [];
            _watchers = [];
            _bindingsByDestination = {};
            _bindingsBeginWithWord = {};
            mx_internal::_document = this;
            _SelectSleepUnitWindow_ClassFactory1_i();
            this.addEventListener("creationComplete", ___SelectSleepUnitWindow_PopupWindow1_creationComplete);
            return;
        }// end function

        private function _SelectSleepUnitWindow_bindingExprs() : void
        {
            var _loc_1:* = undefined;
            _loc_1 = _swf_window;
            _loc_1 = Utils.i18n("localize236");
            _loc_1 = _unitArray;
            _loc_1 = Utils.i18n("generalName");
            _loc_1 = Utils.i18n("generalJob");
            _loc_1 = Utils.i18n("generalExp");
            _loc_1 = expLabelRenderer;
            _loc_1 = Utils.i18n("changeEquipmentAttack");
            _loc_1 = Utils.i18n("generalDefence");
            _loc_1 = _swf_ok;
            _loc_1 = _swf_back;
            _loc_1 = _swf_close_window;
            return;
        }// end function

        private function _SelectSleepUnitWindow_DataGridColumn3_c() : DataGridColumn
        {
            var _loc_1:* = new DataGridColumn();
            _loc_1.dataField = "level";
            _loc_1.headerText = "Lv";
            _loc_1.width = 50;
            _loc_1.setStyle("textAlign", "center");
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

        private function _SelectSleepUnitWindow_DataGridColumn1_i() : DataGridColumn
        {
            var _loc_1:* = new DataGridColumn();
            _SelectSleepUnitWindow_DataGridColumn1 = _loc_1;
            _loc_1.dataField = "name";
            _loc_1.itemRenderer = _SelectSleepUnitWindow_ClassFactory2_c();
            BindingManager.executeBindings(this, "_SelectSleepUnitWindow_DataGridColumn1", _SelectSleepUnitWindow_DataGridColumn1);
            return _loc_1;
        }// end function

        private function _SelectSleepUnitWindow_DataGridColumn5_i() : DataGridColumn
        {
            var _loc_1:* = new DataGridColumn();
            _SelectSleepUnitWindow_DataGridColumn5 = _loc_1;
            _loc_1.dataField = "strength";
            _loc_1.width = 50;
            _loc_1.setStyle("textAlign", "center");
            BindingManager.executeBindings(this, "_SelectSleepUnitWindow_DataGridColumn5", _SelectSleepUnitWindow_DataGridColumn5);
            return _loc_1;
        }// end function

        public function set counterBox(param1:VBox) : void
        {
            var _loc_2:* = this._1029693905counterBox;
            if (_loc_2 !== param1)
            {
                this._1029693905counterBox = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "counterBox", _loc_2, param1));
            }
            return;
        }// end function

        public function set expLabelRenderer(param1:ClassFactory) : void
        {
            var _loc_2:* = this._2070195386expLabelRenderer;
            if (_loc_2 !== param1)
            {
                this._2070195386expLabelRenderer = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "expLabelRenderer", _loc_2, param1));
            }
            return;
        }// end function

        private function _SelectSleepUnitWindow_DataGridColumn7_c() : DataGridColumn
        {
            var _loc_1:* = new DataGridColumn();
            _loc_1.dataField = "hp";
            _loc_1.headerText = "HP";
            _loc_1.width = 50;
            _loc_1.setStyle("textAlign", "center");
            return _loc_1;
        }// end function

        private function get _swf_window() : MovieClipLoaderAsset
        {
            return this._1075873300_swf_window;
        }// end function

        public function ___SelectSleepUnitWindow_Image2_click(event:MouseEvent) : void
        {
            onItemClick();
            return;
        }// end function

        override public function initialize() : void
        {
            var target:SelectSleepUnitWindow;
            var watcherSetupUtilClass:Object;
            .mx_internal::setDocumentDescriptor(_documentDescriptor_);
            var bindings:* = _SelectSleepUnitWindow_bindingsSetup();
            var watchers:Array;
            target;
            if (_watcherSetupUtil == null)
            {
                watcherSetupUtilClass = getDefinitionByName("_com_kbmj_viking_view_home_SelectSleepUnitWindowWatcherSetupUtil");
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

        public function ___SelectSleepUnitWindow_PopupWindow1_creationComplete(event:FlexEvent) : void
        {
            init();
            return;
        }// end function

        private function _SelectSleepUnitWindow_ClassFactory2_c() : ClassFactory
        {
            var _loc_1:* = new ClassFactory();
            _loc_1.generator = UnitDetailLabelRenderer;
            return _loc_1;
        }// end function

        private function onItemClick() : void
        {
            if (unitList.selectedItem)
            {
                sendPopupEvent(SELECT_SLEEPING_UNIT, {unitId:unitList.selectedItem.unitId, coffinId:_coffinId});
                init();
                this.onClose();
            }
            return;
        }// end function

        public function set coffinId(param1:int) : void
        {
            _coffinId = param1;
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

        private function init() : void
        {
            MovieClip(Loader(_swf_window.getChildAt(0)).content).gotoAndPlay("center_720x460");
            MovieClip(Loader(_swf_ok.getChildAt(0)).content).gotoAndPlay("button_yes");
            MovieClip(Loader(_swf_back.getChildAt(0)).content).gotoAndPlay("button_no");
            MovieClip(Loader(_swf_close_window.getChildAt(0)).content).gotoAndPlay(1);
            return;
        }// end function

        public function ___SelectSleepUnitWindow_Image4_click(event:MouseEvent) : void
        {
            onClose();
            return;
        }// end function

        private function _SelectSleepUnitWindow_bindingsSetup() : Array
        {
            var binding:Binding;
            var result:Array;
            binding = new Binding(this, function () : Object
            {
                return _swf_window;
            }// end function
            , function (param1:Object) : void
            {
                _SelectSleepUnitWindow_Image1.source = param1;
                return;
            }// end function
            , "_SelectSleepUnitWindow_Image1.source");
            result[0] = binding;
            binding = new Binding(this, function () : String
            {
                var _loc_1:* = Utils.i18n("localize236");
                var _loc_2:* = _loc_1 == undefined ? (null) : (String(_loc_1));
                return _loc_2;
            }// end function
            , function (param1:String) : void
            {
                listText.text = param1;
                return;
            }// end function
            , "listText.text");
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
                var _loc_1:* = Utils.i18n("generalName");
                var _loc_2:* = _loc_1 == undefined ? (null) : (String(_loc_1));
                return _loc_2;
            }// end function
            , function (param1:String) : void
            {
                _SelectSleepUnitWindow_DataGridColumn1.headerText = param1;
                return;
            }// end function
            , "_SelectSleepUnitWindow_DataGridColumn1.headerText");
            result[3] = binding;
            binding = new Binding(this, function () : String
            {
                var _loc_1:* = Utils.i18n("generalJob");
                var _loc_2:* = _loc_1 == undefined ? (null) : (String(_loc_1));
                return _loc_2;
            }// end function
            , function (param1:String) : void
            {
                _SelectSleepUnitWindow_DataGridColumn2.headerText = param1;
                return;
            }// end function
            , "_SelectSleepUnitWindow_DataGridColumn2.headerText");
            result[4] = binding;
            binding = new Binding(this, function () : String
            {
                var _loc_1:* = Utils.i18n("generalExp");
                var _loc_2:* = _loc_1 == undefined ? (null) : (String(_loc_1));
                return _loc_2;
            }// end function
            , function (param1:String) : void
            {
                _SelectSleepUnitWindow_DataGridColumn4.headerText = param1;
                return;
            }// end function
            , "_SelectSleepUnitWindow_DataGridColumn4.headerText");
            result[5] = binding;
            binding = new Binding(this, function () : IFactory
            {
                return expLabelRenderer;
            }// end function
            , function (param1:IFactory) : void
            {
                _SelectSleepUnitWindow_DataGridColumn4.itemRenderer = param1;
                return;
            }// end function
            , "_SelectSleepUnitWindow_DataGridColumn4.itemRenderer");
            result[6] = binding;
            binding = new Binding(this, function () : String
            {
                var _loc_1:* = Utils.i18n("changeEquipmentAttack");
                var _loc_2:* = _loc_1 == undefined ? (null) : (String(_loc_1));
                return _loc_2;
            }// end function
            , function (param1:String) : void
            {
                _SelectSleepUnitWindow_DataGridColumn5.headerText = param1;
                return;
            }// end function
            , "_SelectSleepUnitWindow_DataGridColumn5.headerText");
            result[7] = binding;
            binding = new Binding(this, function () : String
            {
                var _loc_1:* = Utils.i18n("generalDefence");
                var _loc_2:* = _loc_1 == undefined ? (null) : (String(_loc_1));
                return _loc_2;
            }// end function
            , function (param1:String) : void
            {
                _SelectSleepUnitWindow_DataGridColumn6.headerText = param1;
                return;
            }// end function
            , "_SelectSleepUnitWindow_DataGridColumn6.headerText");
            result[8] = binding;
            binding = new Binding(this, function () : Object
            {
                return _swf_ok;
            }// end function
            , function (param1:Object) : void
            {
                _SelectSleepUnitWindow_Image2.source = param1;
                return;
            }// end function
            , "_SelectSleepUnitWindow_Image2.source");
            result[9] = binding;
            binding = new Binding(this, function () : Object
            {
                return _swf_back;
            }// end function
            , function (param1:Object) : void
            {
                _SelectSleepUnitWindow_Image3.source = param1;
                return;
            }// end function
            , "_SelectSleepUnitWindow_Image3.source");
            result[10] = binding;
            binding = new Binding(this, function () : Object
            {
                return _swf_close_window;
            }// end function
            , function (param1:Object) : void
            {
                _SelectSleepUnitWindow_Image4.source = param1;
                return;
            }// end function
            , "_SelectSleepUnitWindow_Image4.source");
            result[11] = binding;
            return result;
        }// end function

        public function get counterBox() : VBox
        {
            return this._1029693905counterBox;
        }// end function

        private function set _swf_ok(param1:MovieClipLoaderAsset) : void
        {
            var _loc_2:* = this._1818888664_swf_ok;
            if (_loc_2 !== param1)
            {
                this._1818888664_swf_ok = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "_swf_ok", _loc_2, param1));
            }
            return;
        }// end function

        private function get _unitArray() : ArrayCollection
        {
            return this._1988954698_unitArray;
        }// end function

        private function set _swf_back(param1:MovieClipLoaderAsset) : void
        {
            var _loc_2:* = this._100077085_swf_back;
            if (_loc_2 !== param1)
            {
                this._100077085_swf_back = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "_swf_back", _loc_2, param1));
            }
            return;
        }// end function

        private function _SelectSleepUnitWindow_DataGridColumn4_i() : DataGridColumn
        {
            var _loc_1:* = new DataGridColumn();
            _SelectSleepUnitWindow_DataGridColumn4 = _loc_1;
            _loc_1.dataField = "exp";
            _loc_1.width = 90;
            _loc_1.setStyle("textAlign", "center");
            BindingManager.executeBindings(this, "_SelectSleepUnitWindow_DataGridColumn4", _SelectSleepUnitWindow_DataGridColumn4);
            return _loc_1;
        }// end function

        private function _SelectSleepUnitWindow_DataGridColumn6_i() : DataGridColumn
        {
            var _loc_1:* = new DataGridColumn();
            _SelectSleepUnitWindow_DataGridColumn6 = _loc_1;
            _loc_1.dataField = "defense";
            _loc_1.width = 50;
            _loc_1.setStyle("textAlign", "center");
            BindingManager.executeBindings(this, "_SelectSleepUnitWindow_DataGridColumn6", _SelectSleepUnitWindow_DataGridColumn6);
            return _loc_1;
        }// end function

        public function get expLabelRenderer() : ClassFactory
        {
            return this._2070195386expLabelRenderer;
        }// end function

        public function ___SelectSleepUnitWindow_Image3_click(event:MouseEvent) : void
        {
            onClose();
            return;
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

        private function _SelectSleepUnitWindow_ClassFactory1_i() : ClassFactory
        {
            var _loc_1:* = new ClassFactory();
            expLabelRenderer = _loc_1;
            _loc_1.generator = SelectSleepUnitWindow_inlineComponent1;
            _loc_1.properties = {outerDocument:this};
            return _loc_1;
        }// end function

        public function set units(param1:Array) : void
        {
            _units = param1;
            _unitArray = new ArrayCollection(_units);
            return;
        }// end function

        private function _SelectSleepUnitWindow_DataGridColumn2_i() : DataGridColumn
        {
            var _loc_1:* = new DataGridColumn();
            _SelectSleepUnitWindow_DataGridColumn2 = _loc_1;
            _loc_1.dataField = "jobMasterVO.nameLabel";
            _loc_1.width = 115;
            _loc_1.setStyle("textAlign", "center");
            BindingManager.executeBindings(this, "_SelectSleepUnitWindow_DataGridColumn2", _SelectSleepUnitWindow_DataGridColumn2);
            return _loc_1;
        }// end function

        private function get _swf_back() : MovieClipLoaderAsset
        {
            return this._100077085_swf_back;
        }// end function

        public function get unitList() : DataGrid
        {
            return this._292905918unitList;
        }// end function

        public function get listText() : Text
        {
            return this._1345645291listText;
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

        public function set listText(param1:Text) : void
        {
            var _loc_2:* = this._1345645291listText;
            if (_loc_2 !== param1)
            {
                this._1345645291listText = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "listText", _loc_2, param1));
            }
            return;
        }// end function

        private function get _swf_ok() : MovieClipLoaderAsset
        {
            return this._1818888664_swf_ok;
        }// end function

        public static function set watcherSetupUtil(param1:IWatcherSetupUtil) : void
        {
            SelectSleepUnitWindow._watcherSetupUtil = param1;
            return;
        }// end function

    }
}
