package com.kbmj.viking.view.home
{
    import com.kbmj.viking.lib.*;
    import com.kbmj.viking.view.*;
    import com.kbmj.viking.vo.tactics.*;
    import flash.display.*;
    import flash.events.*;
    import flash.utils.*;
    import mx.binding.*;
    import mx.containers.*;
    import mx.controls.*;
    import mx.controls.dataGridClasses.*;
    import mx.core.*;
    import mx.events.*;

    public class SacrificeUnitWindow extends PopupWindow implements IBindingClient
    {
        private var _1584105757viewStack:ViewStack;
        private var _1655845770_swf_cancel:MovieClipLoaderAsset;
        var _bindingsByDestination:Object;
        private var _490381779unitLayer:Canvas;
        private var _2048064645sacrifice_data_list:DataGrid;
        private var _763496874_sacrificeUnit:UnitVO;
        private var _522920908detailRenderer:ClassFactory;
        var _watchers:Array;
        public var _SacrificeUnitWindow_DataGridColumn10:DataGridColumn;
        public var _SacrificeUnitWindow_DataGridColumn11:DataGridColumn;
        private var _1195989067_swf_sacrifice:MovieClipLoaderAsset;
        public var _SacrificeUnitWindow_Text1:Text;
        public var _SacrificeUnitWindow_Text2:Text;
        public var _SacrificeUnitWindow_Text3:Text;
        public var _SacrificeUnitWindow_Text4:Text;
        public var _SacrificeUnitWindow_DataGridColumn1:DataGridColumn;
        public var _SacrificeUnitWindow_DataGridColumn2:DataGridColumn;
        public var _SacrificeUnitWindow_DataGridColumn3:DataGridColumn;
        public var _SacrificeUnitWindow_DataGridColumn6:DataGridColumn;
        public var _SacrificeUnitWindow_DataGridColumn7:DataGridColumn;
        public var _SacrificeUnitWindow_DataGridColumn8:DataGridColumn;
        public var _SacrificeUnitWindow_DataGridColumn9:DataGridColumn;
        var _bindingsBeginWithWord:Object;
        private var _2101400797_sacrificeUnits:Array;
        var _bindings:Array;
        public var _SacrificeUnitWindow_Image2:Image;
        public var _SacrificeUnitWindow_Image3:Image;
        private var _100077085_swf_back:MovieClipLoaderAsset;
        private var _documentDescriptor_:UIComponentDescriptor;
        public var _SacrificeUnitWindow_Image1:Image;
        public static const ADD_UNIT_SWF:String = NAME + "addUnitSwf";
        public static const REMOVE_UNIT_SWF:String = NAME + "subUnitSwf";
        public static const NAME:String = "sacrificeWindow";
        private static var _watcherSetupUtil:IWatcherSetupUtil;
        public static const SACRIFICE_WINDOW_END:String = NAME + "/sacrificeEnd";
        public static const SACRIFICE_UNIT_RUN:String = NAME + "/sacrificeStart";

        public function SacrificeUnitWindow()
        {
            _documentDescriptor_ = new UIComponentDescriptor({type:PopupWindow, propertiesFactory:function () : Object
            {
                return {childDescriptors:[new UIComponentDescriptor({type:Canvas, id:"unitLayer"}), new UIComponentDescriptor({type:Text, id:"_SacrificeUnitWindow_Text1", propertiesFactory:function () : Object
                {
                    return {x:350, y:302, styleName:"PanelBaseTitle"};
                }// end function
                }), new UIComponentDescriptor({type:ViewStack, id:"viewStack", propertiesFactory:function () : Object
                {
                    return {width:570, height:200, x:100, y:335, childDescriptors:[new UIComponentDescriptor({type:VBox, propertiesFactory:function () : Object
                    {
                        return {childDescriptors:[new UIComponentDescriptor({type:Text, id:"_SacrificeUnitWindow_Text2", stylesFactory:function () : void
                        {
                            this.fontSize = 11;
                            return;
                        }// end function
                        }), new UIComponentDescriptor({type:DataGrid, id:"sacrifice_data_list", propertiesFactory:function () : Object
                        {
                            return {rowCount:4, width:560, styleName:"DataGridBase", selectable:false, sortableColumns:false, columns:[_SacrificeUnitWindow_DataGridColumn1_i(), _SacrificeUnitWindow_DataGridColumn2_i(), _SacrificeUnitWindow_DataGridColumn3_i(), _SacrificeUnitWindow_DataGridColumn4_c(), _SacrificeUnitWindow_DataGridColumn5_c(), _SacrificeUnitWindow_DataGridColumn6_i(), _SacrificeUnitWindow_DataGridColumn7_i(), _SacrificeUnitWindow_DataGridColumn8_i(), _SacrificeUnitWindow_DataGridColumn9_i(), _SacrificeUnitWindow_DataGridColumn10_i(), _SacrificeUnitWindow_DataGridColumn11_i()]};
                        }// end function
                        }), new UIComponentDescriptor({type:HBox, propertiesFactory:function () : Object
                        {
                            return {childDescriptors:[new UIComponentDescriptor({type:Spacer, propertiesFactory:function () : Object
                            {
                                return {width:210};
                            }// end function
                            }), new UIComponentDescriptor({type:Image, id:"_SacrificeUnitWindow_Image1", events:{click:"___SacrificeUnitWindow_Image1_click"}})]};
                        }// end function
                        })]};
                    }// end function
                    }), new UIComponentDescriptor({type:VBox, propertiesFactory:function () : Object
                    {
                        return {childDescriptors:[new UIComponentDescriptor({type:Spacer, propertiesFactory:function () : Object
                        {
                            return {height:20};
                        }// end function
                        }), new UIComponentDescriptor({type:HBox, propertiesFactory:function () : Object
                        {
                            return {childDescriptors:[new UIComponentDescriptor({type:Spacer, propertiesFactory:function () : Object
                            {
                                return {width:180};
                            }// end function
                            }), new UIComponentDescriptor({type:Text, id:"_SacrificeUnitWindow_Text3", stylesFactory:function () : void
                            {
                                this.textAlign = "center";
                                this.fontSize = 14;
                                return;
                            }// end function
                            })]};
                        }// end function
                        }), new UIComponentDescriptor({type:HBox, propertiesFactory:function () : Object
                        {
                            return {childDescriptors:[new UIComponentDescriptor({type:Spacer, propertiesFactory:function () : Object
                            {
                                return {width:180};
                            }// end function
                            }), new UIComponentDescriptor({type:Text, id:"_SacrificeUnitWindow_Text4", stylesFactory:function () : void
                            {
                                this.textAlign = "center";
                                this.fontSize = 14;
                                return;
                            }// end function
                            })]};
                        }// end function
                        }), new UIComponentDescriptor({type:Spacer, propertiesFactory:function () : Object
                        {
                            return {height:50};
                        }// end function
                        }), new UIComponentDescriptor({type:HBox, stylesFactory:function () : void
                        {
                            this.horizontalGap = 120;
                            return;
                        }// end function
                        , propertiesFactory:function () : Object
                        {
                            return {childDescriptors:[new UIComponentDescriptor({type:Spacer, propertiesFactory:function () : Object
                            {
                                return {width:40};
                            }// end function
                            }), new UIComponentDescriptor({type:Image, id:"_SacrificeUnitWindow_Image2", events:{click:"___SacrificeUnitWindow_Image2_click"}}), new UIComponentDescriptor({type:Image, id:"_SacrificeUnitWindow_Image3", events:{click:"___SacrificeUnitWindow_Image3_click"}})]};
                        }// end function
                        })]};
                    }// end function
                    })]};
                }// end function
                })]};
            }// end function
            });
            _1655845770_swf_cancel = new Viking.EmbedSwfButtonCommon();
            _100077085_swf_back = new Viking.EmbedSwfButtonCommon();
            _1195989067_swf_sacrifice = new Viking.EmbedSwfButtonCommon();
            _bindings = [];
            _watchers = [];
            _bindingsByDestination = {};
            _bindingsBeginWithWord = {};
            mx_internal::_document = this;
            _SacrificeUnitWindow_ClassFactory2_i();
            this.addEventListener("creationComplete", ___SacrificeUnitWindow_PopupWindow1_creationComplete);
            return;
        }// end function

        private function _SacrificeUnitWindow_DataGridColumn6_i() : DataGridColumn
        {
            var _loc_1:* = new DataGridColumn();
            _SacrificeUnitWindow_DataGridColumn6 = _loc_1;
            _loc_1.dataField = "strength";
            _loc_1.width = 30;
            _loc_1.setStyle("textAlign", "center");
            BindingManager.executeBindings(this, "_SacrificeUnitWindow_DataGridColumn6", _SacrificeUnitWindow_DataGridColumn6);
            return _loc_1;
        }// end function

        public function set sacrifice_data_list(param1:DataGrid) : void
        {
            var _loc_2:* = this._2048064645sacrifice_data_list;
            if (_loc_2 !== param1)
            {
                this._2048064645sacrifice_data_list = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "sacrifice_data_list", _loc_2, param1));
            }
            return;
        }// end function

        private function _SacrificeUnitWindow_DataGridColumn10_i() : DataGridColumn
        {
            var _loc_1:* = new DataGridColumn();
            _SacrificeUnitWindow_DataGridColumn10 = _loc_1;
            _loc_1.dataField = "intelligence";
            _loc_1.width = 30;
            _loc_1.setStyle("textAlign", "center");
            BindingManager.executeBindings(this, "_SacrificeUnitWindow_DataGridColumn10", _SacrificeUnitWindow_DataGridColumn10);
            return _loc_1;
        }// end function

        public function init(param1:Array) : void
        {
            _sacrificeUnits = param1;
            return;
        }// end function

        private function createComp() : void
        {
            MovieClip(Loader(_swf_cancel.getChildAt(0)).content).gotoAndPlay("button_back");
            MovieClip(Loader(_swf_sacrifice.getChildAt(0)).content).gotoAndPlay("button_yes");
            MovieClip(Loader(_swf_back.getChildAt(0)).content).gotoAndPlay("button_no");
            return;
        }// end function

        public function get unitLayer() : Canvas
        {
            return this._490381779unitLayer;
        }// end function

        public function get detailRenderer() : ClassFactory
        {
            return this._522920908detailRenderer;
        }// end function

        private function _SacrificeUnitWindow_DataGridColumn5_c() : DataGridColumn
        {
            var _loc_1:* = new DataGridColumn();
            _loc_1.dataField = "hp";
            _loc_1.headerText = "HP";
            _loc_1.width = 40;
            _loc_1.setStyle("textAlign", "center");
            return _loc_1;
        }// end function

        private function _SacrificeUnitWindow_DataGridColumn1_i() : DataGridColumn
        {
            var _loc_1:* = new DataGridColumn();
            _SacrificeUnitWindow_DataGridColumn1 = _loc_1;
            _loc_1.width = 50;
            BindingManager.executeBindings(this, "_SacrificeUnitWindow_DataGridColumn1", _SacrificeUnitWindow_DataGridColumn1);
            return _loc_1;
        }// end function

        private function _SacrificeUnitWindow_DataGridColumn9_i() : DataGridColumn
        {
            var _loc_1:* = new DataGridColumn();
            _SacrificeUnitWindow_DataGridColumn9 = _loc_1;
            _loc_1.dataField = "defense";
            _loc_1.width = 30;
            _loc_1.setStyle("textAlign", "center");
            BindingManager.executeBindings(this, "_SacrificeUnitWindow_DataGridColumn9", _SacrificeUnitWindow_DataGridColumn9);
            return _loc_1;
        }// end function

        public function ___SacrificeUnitWindow_PopupWindow1_creationComplete(event:FlexEvent) : void
        {
            createComp();
            return;
        }// end function

        private function _SacrificeUnitWindow_ClassFactory2_i() : ClassFactory
        {
            var _loc_1:* = new ClassFactory();
            detailRenderer = _loc_1;
            _loc_1.generator = SacrificeUnitWindow_inlineComponent1;
            _loc_1.properties = {outerDocument:this};
            return _loc_1;
        }// end function

        private function get _sacrificeUnit() : UnitVO
        {
            return this._763496874_sacrificeUnit;
        }// end function

        public function ___SacrificeUnitWindow_Image1_click(event:MouseEvent) : void
        {
            closeSacrificeWindow();
            return;
        }// end function

        public function set unitLayer(param1:Canvas) : void
        {
            var _loc_2:* = this._490381779unitLayer;
            if (_loc_2 !== param1)
            {
                this._490381779unitLayer = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "unitLayer", _loc_2, param1));
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

        private function closeSacrificeWindow() : void
        {
            viewStack.selectedIndex = 0;
            sendEvent(SACRIFICE_WINDOW_END);
            return;
        }// end function

        private function set _swf_sacrifice(param1:MovieClipLoaderAsset) : void
        {
            var _loc_2:* = this._1195989067_swf_sacrifice;
            if (_loc_2 !== param1)
            {
                this._1195989067_swf_sacrifice = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "_swf_sacrifice", _loc_2, param1));
            }
            return;
        }// end function

        private function _SacrificeUnitWindow_bindingExprs() : void
        {
            var _loc_1:* = undefined;
            _loc_1 = Utils.i18n("ceremonyTypeSelectAscension");
            _loc_1 = Utils.i18n("localize233");
            _loc_1 = _sacrificeUnits;
            _loc_1 = Utils.i18n("generalSelect");
            _loc_1 = detailRenderer;
            _loc_1 = Utils.i18n("generalName");
            _loc_1 = Utils.i18n("generalJob");
            _loc_1 = Utils.i18n("generalStrength");
            _loc_1 = Utils.i18n("generalTech");
            _loc_1 = Utils.i18n("generalAgility");
            _loc_1 = Utils.i18n("generalDefense");
            _loc_1 = Utils.i18n("generalIntelligence");
            _loc_1 = Utils.i18n("generalLuck");
            _loc_1 = _swf_cancel;
            _loc_1 = Utils.i18n("localize234", _sacrificeUnit.name);
            _loc_1 = Utils.i18n("normalSummonCreateConfirm3");
            _loc_1 = _swf_sacrifice;
            _loc_1 = _swf_back;
            return;
        }// end function

        private function get _swf_cancel() : MovieClipLoaderAsset
        {
            return this._1655845770_swf_cancel;
        }// end function

        private function _SacrificeUnitWindow_DataGridColumn4_c() : DataGridColumn
        {
            var _loc_1:* = new DataGridColumn();
            _loc_1.dataField = "level";
            _loc_1.headerText = "Lv";
            _loc_1.width = 50;
            _loc_1.setStyle("textAlign", "center");
            return _loc_1;
        }// end function

        private function _SacrificeUnitWindow_DataGridColumn8_i() : DataGridColumn
        {
            var _loc_1:* = new DataGridColumn();
            _SacrificeUnitWindow_DataGridColumn8 = _loc_1;
            _loc_1.dataField = "agility";
            _loc_1.width = 30;
            _loc_1.setStyle("textAlign", "center");
            BindingManager.executeBindings(this, "_SacrificeUnitWindow_DataGridColumn8", _SacrificeUnitWindow_DataGridColumn8);
            return _loc_1;
        }// end function

        public function get sacrifice_data_list() : DataGrid
        {
            return this._2048064645sacrifice_data_list;
        }// end function

        private function _SacrificeUnitWindow_ClassFactory1_c() : ClassFactory
        {
            var _loc_1:* = new ClassFactory();
            _loc_1.generator = UnitDetailLabelRenderer;
            return _loc_1;
        }// end function

        override public function initialize() : void
        {
            var target:SacrificeUnitWindow;
            var watcherSetupUtilClass:Object;
            .mx_internal::setDocumentDescriptor(_documentDescriptor_);
            var bindings:* = _SacrificeUnitWindow_bindingsSetup();
            var watchers:Array;
            target;
            if (_watcherSetupUtil == null)
            {
                watcherSetupUtilClass = getDefinitionByName("_com_kbmj_viking_view_home_SacrificeUnitWindowWatcherSetupUtil");
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

        public function ___SacrificeUnitWindow_Image2_click(event:MouseEvent) : void
        {
            startSacrifice();
            return;
        }// end function

        private function set _sacrificeUnit(param1:UnitVO) : void
        {
            var _loc_2:* = this._763496874_sacrificeUnit;
            if (_loc_2 !== param1)
            {
                this._763496874_sacrificeUnit = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "_sacrificeUnit", _loc_2, param1));
            }
            return;
        }// end function

        private function get _swf_sacrifice() : MovieClipLoaderAsset
        {
            return this._1195989067_swf_sacrifice;
        }// end function

        private function _SacrificeUnitWindow_DataGridColumn3_i() : DataGridColumn
        {
            var _loc_1:* = new DataGridColumn();
            _SacrificeUnitWindow_DataGridColumn3 = _loc_1;
            _loc_1.dataField = "jobMasterVO.nameLabel";
            _loc_1.width = 80;
            _loc_1.setStyle("textAlign", "center");
            BindingManager.executeBindings(this, "_SacrificeUnitWindow_DataGridColumn3", _SacrificeUnitWindow_DataGridColumn3);
            return _loc_1;
        }// end function

        private function set _sacrificeUnits(param1:Array) : void
        {
            var _loc_2:* = this._2101400797_sacrificeUnits;
            if (_loc_2 !== param1)
            {
                this._2101400797_sacrificeUnits = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "_sacrificeUnits", _loc_2, param1));
            }
            return;
        }// end function

        private function _SacrificeUnitWindow_DataGridColumn7_i() : DataGridColumn
        {
            var _loc_1:* = new DataGridColumn();
            _SacrificeUnitWindow_DataGridColumn7 = _loc_1;
            _loc_1.dataField = "tech";
            _loc_1.width = 30;
            _loc_1.setStyle("textAlign", "center");
            BindingManager.executeBindings(this, "_SacrificeUnitWindow_DataGridColumn7", _SacrificeUnitWindow_DataGridColumn7);
            return _loc_1;
        }// end function

        public function set viewStack(param1:ViewStack) : void
        {
            var _loc_2:* = this._1584105757viewStack;
            if (_loc_2 !== param1)
            {
                this._1584105757viewStack = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "viewStack", _loc_2, param1));
            }
            return;
        }// end function

        private function _SacrificeUnitWindow_DataGridColumn11_i() : DataGridColumn
        {
            var _loc_1:* = new DataGridColumn();
            _SacrificeUnitWindow_DataGridColumn11 = _loc_1;
            _loc_1.dataField = "luck";
            _loc_1.width = 30;
            _loc_1.setStyle("textAlign", "center");
            BindingManager.executeBindings(this, "_SacrificeUnitWindow_DataGridColumn11", _SacrificeUnitWindow_DataGridColumn11);
            return _loc_1;
        }// end function

        public function addSelectIndex(param1:Object) : void
        {
            _sacrificeUnit = param1 as UnitVO;
            viewStack.selectedIndex = 1;
            sendPopupEvent(ADD_UNIT_SWF, {unit:_sacrificeUnit, type:"sacrifice"});
            return;
        }// end function

        private function subSelectIndex() : void
        {
            viewStack.selectedIndex = 0;
            sendPopupEvent(REMOVE_UNIT_SWF, {unit:_sacrificeUnit});
            return;
        }// end function

        public function ___SacrificeUnitWindow_Image3_click(event:MouseEvent) : void
        {
            subSelectIndex();
            return;
        }// end function

        public function get viewStack() : ViewStack
        {
            return this._1584105757viewStack;
        }// end function

        private function get _sacrificeUnits() : Array
        {
            return this._2101400797_sacrificeUnits;
        }// end function

        private function get _swf_back() : MovieClipLoaderAsset
        {
            return this._100077085_swf_back;
        }// end function

        private function _SacrificeUnitWindow_bindingsSetup() : Array
        {
            var binding:Binding;
            var result:Array;
            binding = new Binding(this, function () : String
            {
                var _loc_1:* = Utils.i18n("ceremonyTypeSelectAscension");
                var _loc_2:* = _loc_1 == undefined ? (null) : (String(_loc_1));
                return _loc_2;
            }// end function
            , function (param1:String) : void
            {
                _SacrificeUnitWindow_Text1.text = param1;
                return;
            }// end function
            , "_SacrificeUnitWindow_Text1.text");
            result[0] = binding;
            binding = new Binding(this, function () : String
            {
                var _loc_1:* = Utils.i18n("localize233");
                var _loc_2:* = _loc_1 == undefined ? (null) : (String(_loc_1));
                return _loc_2;
            }// end function
            , function (param1:String) : void
            {
                _SacrificeUnitWindow_Text2.text = param1;
                return;
            }// end function
            , "_SacrificeUnitWindow_Text2.text");
            result[1] = binding;
            binding = new Binding(this, function () : Object
            {
                return _sacrificeUnits;
            }// end function
            , function (param1:Object) : void
            {
                sacrifice_data_list.dataProvider = param1;
                return;
            }// end function
            , "sacrifice_data_list.dataProvider");
            result[2] = binding;
            binding = new Binding(this, function () : String
            {
                var _loc_1:* = Utils.i18n("generalSelect");
                var _loc_2:* = _loc_1 == undefined ? (null) : (String(_loc_1));
                return _loc_2;
            }// end function
            , function (param1:String) : void
            {
                _SacrificeUnitWindow_DataGridColumn1.headerText = param1;
                return;
            }// end function
            , "_SacrificeUnitWindow_DataGridColumn1.headerText");
            result[3] = binding;
            binding = new Binding(this, function () : IFactory
            {
                return detailRenderer;
            }// end function
            , function (param1:IFactory) : void
            {
                _SacrificeUnitWindow_DataGridColumn1.itemRenderer = param1;
                return;
            }// end function
            , "_SacrificeUnitWindow_DataGridColumn1.itemRenderer");
            result[4] = binding;
            binding = new Binding(this, function () : String
            {
                var _loc_1:* = Utils.i18n("generalName");
                var _loc_2:* = _loc_1 == undefined ? (null) : (String(_loc_1));
                return _loc_2;
            }// end function
            , function (param1:String) : void
            {
                _SacrificeUnitWindow_DataGridColumn2.headerText = param1;
                return;
            }// end function
            , "_SacrificeUnitWindow_DataGridColumn2.headerText");
            result[5] = binding;
            binding = new Binding(this, function () : String
            {
                var _loc_1:* = Utils.i18n("generalJob");
                var _loc_2:* = _loc_1 == undefined ? (null) : (String(_loc_1));
                return _loc_2;
            }// end function
            , function (param1:String) : void
            {
                _SacrificeUnitWindow_DataGridColumn3.headerText = param1;
                return;
            }// end function
            , "_SacrificeUnitWindow_DataGridColumn3.headerText");
            result[6] = binding;
            binding = new Binding(this, function () : String
            {
                var _loc_1:* = Utils.i18n("generalStrength");
                var _loc_2:* = _loc_1 == undefined ? (null) : (String(_loc_1));
                return _loc_2;
            }// end function
            , function (param1:String) : void
            {
                _SacrificeUnitWindow_DataGridColumn6.headerText = param1;
                return;
            }// end function
            , "_SacrificeUnitWindow_DataGridColumn6.headerText");
            result[7] = binding;
            binding = new Binding(this, function () : String
            {
                var _loc_1:* = Utils.i18n("generalTech");
                var _loc_2:* = _loc_1 == undefined ? (null) : (String(_loc_1));
                return _loc_2;
            }// end function
            , function (param1:String) : void
            {
                _SacrificeUnitWindow_DataGridColumn7.headerText = param1;
                return;
            }// end function
            , "_SacrificeUnitWindow_DataGridColumn7.headerText");
            result[8] = binding;
            binding = new Binding(this, function () : String
            {
                var _loc_1:* = Utils.i18n("generalAgility");
                var _loc_2:* = _loc_1 == undefined ? (null) : (String(_loc_1));
                return _loc_2;
            }// end function
            , function (param1:String) : void
            {
                _SacrificeUnitWindow_DataGridColumn8.headerText = param1;
                return;
            }// end function
            , "_SacrificeUnitWindow_DataGridColumn8.headerText");
            result[9] = binding;
            binding = new Binding(this, function () : String
            {
                var _loc_1:* = Utils.i18n("generalDefense");
                var _loc_2:* = _loc_1 == undefined ? (null) : (String(_loc_1));
                return _loc_2;
            }// end function
            , function (param1:String) : void
            {
                _SacrificeUnitWindow_DataGridColumn9.headerText = param1;
                return;
            }// end function
            , "_SacrificeUnitWindow_DataGridColumn9.headerText");
            result[10] = binding;
            binding = new Binding(this, function () : String
            {
                var _loc_1:* = Utils.i18n("generalIntelligence");
                var _loc_2:* = _loc_1 == undefined ? (null) : (String(_loc_1));
                return _loc_2;
            }// end function
            , function (param1:String) : void
            {
                _SacrificeUnitWindow_DataGridColumn10.headerText = param1;
                return;
            }// end function
            , "_SacrificeUnitWindow_DataGridColumn10.headerText");
            result[11] = binding;
            binding = new Binding(this, function () : String
            {
                var _loc_1:* = Utils.i18n("generalLuck");
                var _loc_2:* = _loc_1 == undefined ? (null) : (String(_loc_1));
                return _loc_2;
            }// end function
            , function (param1:String) : void
            {
                _SacrificeUnitWindow_DataGridColumn11.headerText = param1;
                return;
            }// end function
            , "_SacrificeUnitWindow_DataGridColumn11.headerText");
            result[12] = binding;
            binding = new Binding(this, function () : Object
            {
                return _swf_cancel;
            }// end function
            , function (param1:Object) : void
            {
                _SacrificeUnitWindow_Image1.source = param1;
                return;
            }// end function
            , "_SacrificeUnitWindow_Image1.source");
            result[13] = binding;
            binding = new Binding(this, function () : String
            {
                var _loc_1:* = Utils.i18n("localize234", _sacrificeUnit.name);
                var _loc_2:* = _loc_1 == undefined ? (null) : (String(_loc_1));
                return _loc_2;
            }// end function
            , function (param1:String) : void
            {
                _SacrificeUnitWindow_Text3.text = param1;
                return;
            }// end function
            , "_SacrificeUnitWindow_Text3.text");
            result[14] = binding;
            binding = new Binding(this, function () : String
            {
                var _loc_1:* = Utils.i18n("normalSummonCreateConfirm3");
                var _loc_2:* = _loc_1 == undefined ? (null) : (String(_loc_1));
                return _loc_2;
            }// end function
            , function (param1:String) : void
            {
                _SacrificeUnitWindow_Text4.text = param1;
                return;
            }// end function
            , "_SacrificeUnitWindow_Text4.text");
            result[15] = binding;
            binding = new Binding(this, function () : Object
            {
                return _swf_sacrifice;
            }// end function
            , function (param1:Object) : void
            {
                _SacrificeUnitWindow_Image2.source = param1;
                return;
            }// end function
            , "_SacrificeUnitWindow_Image2.source");
            result[16] = binding;
            binding = new Binding(this, function () : Object
            {
                return _swf_back;
            }// end function
            , function (param1:Object) : void
            {
                _SacrificeUnitWindow_Image3.source = param1;
                return;
            }// end function
            , "_SacrificeUnitWindow_Image3.source");
            result[17] = binding;
            return result;
        }// end function

        private function startSacrifice() : void
        {
            viewStack.selectedIndex = 0;
            sendPopupEvent(SACRIFICE_UNIT_RUN, {unit:_sacrificeUnit});
            return;
        }// end function

        private function set _swf_cancel(param1:MovieClipLoaderAsset) : void
        {
            var _loc_2:* = this._1655845770_swf_cancel;
            if (_loc_2 !== param1)
            {
                this._1655845770_swf_cancel = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "_swf_cancel", _loc_2, param1));
            }
            return;
        }// end function

        private function _SacrificeUnitWindow_DataGridColumn2_i() : DataGridColumn
        {
            var _loc_1:* = new DataGridColumn();
            _SacrificeUnitWindow_DataGridColumn2 = _loc_1;
            _loc_1.dataField = "name";
            _loc_1.itemRenderer = _SacrificeUnitWindow_ClassFactory1_c();
            _loc_1.width = 80;
            BindingManager.executeBindings(this, "_SacrificeUnitWindow_DataGridColumn2", _SacrificeUnitWindow_DataGridColumn2);
            return _loc_1;
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

        public static function set watcherSetupUtil(param1:IWatcherSetupUtil) : void
        {
            SacrificeUnitWindow._watcherSetupUtil = param1;
            return;
        }// end function

    }
}
