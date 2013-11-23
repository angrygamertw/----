package com.kbmj.viking.view.home
{
    import com.kbmj.viking.lib.*;
    import com.kbmj.viking.view.*;
    import com.kbmj.viking.vo.*;
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

    public class AwakeUnionWindow extends PopupWindow implements IBindingClient
    {
        private var _969321085detailRenderer1:ClassFactory;
        private var _976515340awakeMasters:Array;
        private var _985849673descriptionText:Text;
        public var _AwakeUnionWindow_Text1:Text;
        private var _1233491599listUnits:Array;
        private var _194920895selectImage:Class;
        private var _157742664selectOffImage:Class;
        var _bindingsByDestination:Object;
        private var _490381779unitLayer:Canvas;
        private var _1724546052description:String;
        public var _AwakeUnionWindow_DataGridColumn2:DataGridColumn;
        public var _AwakeUnionWindow_DataGridColumn3:DataGridColumn;
        public var _AwakeUnionWindow_DataGridColumn6:DataGridColumn;
        public var _AwakeUnionWindow_DataGridColumn10:DataGridColumn;
        public var _AwakeUnionWindow_DataGridColumn1:DataGridColumn;
        public var _AwakeUnionWindow_DataGridColumn9:DataGridColumn;
        public var _AwakeUnionWindow_DataGridColumn7:DataGridColumn;
        public var _AwakeUnionWindow_DataGridColumn11:DataGridColumn;
        private var unitStatusPopUpWindow:UnitStatusPopUpWindow;
        public var checkUnionWindow:ConfirmWindow;
        public var _AwakeUnionWindow_DataGridColumn8:DataGridColumn;
        var _watchers:Array;
        private var _341064690resource:ResourceVO;
        private var _292905918unitList:DataGrid;
        var _bindingsBeginWithWord:Object;
        var _bindings:Array;
        private var _567608769_selectUnit:UnitVO;
        private var _100077085_swf_back:MovieClipLoaderAsset;
        public var _AwakeUnionWindow_Image1:Image;
        private var _documentDescriptor_:UIComponentDescriptor;
        public static const AWAKE_UNION_RUN:String = NAME + "awakeUnion";
        public static const ADD_UNIT_SWF:String = NAME + "addUnitSwf";
        public static const REMOVE_UNIT_SWF:String = NAME + "subUnitSwf";
        public static const NAME:String = "awakeUnionWindow";
        public static const AWAKE_UNION_END:String = NAME + "awakeUnionEnd";
        private static var _watcherSetupUtil:IWatcherSetupUtil;

        public function AwakeUnionWindow()
        {
            _documentDescriptor_ = new UIComponentDescriptor({type:PopupWindow, propertiesFactory:function () : Object
            {
                return {childDescriptors:[new UIComponentDescriptor({type:Canvas, id:"unitLayer", propertiesFactory:function () : Object
                {
                    return {x:-35, y:-100};
                }// end function
                }), new UIComponentDescriptor({type:Text, id:"_AwakeUnionWindow_Text1", propertiesFactory:function () : Object
                {
                    return {styleName:"PanelBaseTitle", x:300, y:201};
                }// end function
                }), new UIComponentDescriptor({type:Text, id:"descriptionText", stylesFactory:function () : void
                {
                    this.fontSize = 11;
                    return;
                }// end function
                , propertiesFactory:function () : Object
                {
                    return {x:55, y:230};
                }// end function
                }), new UIComponentDescriptor({type:Canvas, propertiesFactory:function () : Object
                {
                    return {height:470, width:680, x:55, y:255, childDescriptors:[new UIComponentDescriptor({type:VBox, propertiesFactory:function () : Object
                    {
                        return {childDescriptors:[new UIComponentDescriptor({type:DataGrid, id:"unitList", propertiesFactory:function () : Object
                        {
                            return {rowCount:4, width:590, styleName:"DataGridBase", selectable:false, sortableColumns:false, columns:[_AwakeUnionWindow_DataGridColumn1_i(), _AwakeUnionWindow_DataGridColumn2_i(), _AwakeUnionWindow_DataGridColumn3_i(), _AwakeUnionWindow_DataGridColumn4_c(), _AwakeUnionWindow_DataGridColumn5_c(), _AwakeUnionWindow_DataGridColumn6_i(), _AwakeUnionWindow_DataGridColumn7_i(), _AwakeUnionWindow_DataGridColumn8_i(), _AwakeUnionWindow_DataGridColumn9_i(), _AwakeUnionWindow_DataGridColumn10_i(), _AwakeUnionWindow_DataGridColumn11_i()]};
                        }// end function
                        }), new UIComponentDescriptor({type:HBox, propertiesFactory:function () : Object
                        {
                            return {childDescriptors:[new UIComponentDescriptor({type:Spacer, propertiesFactory:function () : Object
                            {
                                return {width:230};
                            }// end function
                            }), new UIComponentDescriptor({type:Image, id:"_AwakeUnionWindow_Image1", events:{click:"___AwakeUnionWindow_Image1_click"}})]};
                        }// end function
                        })]};
                    }// end function
                    })]};
                }// end function
                })]};
            }// end function
            });
            checkUnionWindow = new ConfirmWindow();
            _100077085_swf_back = new Viking.EmbedSwfButtonCommon();
            _1233491599listUnits = new Array();
            _976515340awakeMasters = new Array();
            _341064690resource = new ResourceVO();
            _1724546052description = new String();
            _194920895selectImage = AwakeUnionWindow_selectImage;
            _157742664selectOffImage = AwakeUnionWindow_selectOffImage;
            _bindings = [];
            _watchers = [];
            _bindingsByDestination = {};
            _bindingsBeginWithWord = {};
            mx_internal::_document = this;
            _AwakeUnionWindow_ClassFactory2_i();
            this.addEventListener("creationComplete", ___AwakeUnionWindow_PopupWindow1_creationComplete);
            return;
        }// end function

        private function get description() : String
        {
            return this._1724546052description;
        }// end function

        private function get awakeMasters() : Array
        {
            return this._976515340awakeMasters;
        }// end function

        private function _AwakeUnionWindow_DataGridColumn5_c() : DataGridColumn
        {
            var _loc_1:* = new DataGridColumn();
            _loc_1.dataField = "hp";
            _loc_1.headerText = "HP";
            _loc_1.width = 40;
            _loc_1.setStyle("textAlign", "center");
            return _loc_1;
        }// end function

        private function get resource() : ResourceVO
        {
            return this._341064690resource;
        }// end function

        private function _AwakeUnionWindow_DataGridColumn1_i() : DataGridColumn
        {
            var _loc_1:* = new DataGridColumn();
            _AwakeUnionWindow_DataGridColumn1 = _loc_1;
            _loc_1.width = 50;
            _loc_1.setStyle("textAlign", "center");
            BindingManager.executeBindings(this, "_AwakeUnionWindow_DataGridColumn1", _AwakeUnionWindow_DataGridColumn1);
            return _loc_1;
        }// end function

        public function init(param1:Array, param2:Array, param3:ResourceVO) : void
        {
            _selectUnit = null;
            description = Utils.i18n("awakeUnionSelectUnit");
            awakeMasters = param2;
            resource = param3;
            listUnits = param1;
            return;
        }// end function

        private function _AwakeUnionWindow_DataGridColumn9_i() : DataGridColumn
        {
            var _loc_1:* = new DataGridColumn();
            _AwakeUnionWindow_DataGridColumn9 = _loc_1;
            _loc_1.dataField = "defense";
            _loc_1.width = 30;
            _loc_1.setStyle("textAlign", "center");
            BindingManager.executeBindings(this, "_AwakeUnionWindow_DataGridColumn9", _AwakeUnionWindow_DataGridColumn9);
            return _loc_1;
        }// end function

        private function set awakeMasters(param1:Array) : void
        {
            var _loc_2:* = this._976515340awakeMasters;
            if (_loc_2 !== param1)
            {
                this._976515340awakeMasters = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "awakeMasters", _loc_2, param1));
            }
            return;
        }// end function

        private function set resource(param1:ResourceVO) : void
        {
            var _loc_2:* = this._341064690resource;
            if (_loc_2 !== param1)
            {
                this._341064690resource = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "resource", _loc_2, param1));
            }
            return;
        }// end function

        private function _AwakeUnionWindow_ClassFactory1_c() : ClassFactory
        {
            var _loc_1:* = new ClassFactory();
            _loc_1.generator = UnitDetailLabelRenderer;
            return _loc_1;
        }// end function

        private function _AwakeUnionWindow_bindingsSetup() : Array
        {
            var binding:Binding;
            var result:Array;
            binding = new Binding(this, function () : String
            {
                var _loc_1:* = Utils.i18n("awakeUnionTitle");
                var _loc_2:* = _loc_1 == undefined ? (null) : (String(_loc_1));
                return _loc_2;
            }// end function
            , function (param1:String) : void
            {
                _AwakeUnionWindow_Text1.text = param1;
                return;
            }// end function
            , "_AwakeUnionWindow_Text1.text");
            result[0] = binding;
            binding = new Binding(this, function () : String
            {
                var _loc_1:* = description;
                var _loc_2:* = _loc_1 == undefined ? (null) : (String(_loc_1));
                return _loc_2;
            }// end function
            , function (param1:String) : void
            {
                descriptionText.text = param1;
                return;
            }// end function
            , "descriptionText.text");
            result[1] = binding;
            binding = new Binding(this, function () : Object
            {
                return listUnits;
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
                var _loc_1:* = Utils.i18n("generalSelect");
                var _loc_2:* = _loc_1 == undefined ? (null) : (String(_loc_1));
                return _loc_2;
            }// end function
            , function (param1:String) : void
            {
                _AwakeUnionWindow_DataGridColumn1.headerText = param1;
                return;
            }// end function
            , "_AwakeUnionWindow_DataGridColumn1.headerText");
            result[3] = binding;
            binding = new Binding(this, function () : IFactory
            {
                return detailRenderer1;
            }// end function
            , function (param1:IFactory) : void
            {
                _AwakeUnionWindow_DataGridColumn1.itemRenderer = param1;
                return;
            }// end function
            , "_AwakeUnionWindow_DataGridColumn1.itemRenderer");
            result[4] = binding;
            binding = new Binding(this, function () : String
            {
                var _loc_1:* = Utils.i18n("generalName");
                var _loc_2:* = _loc_1 == undefined ? (null) : (String(_loc_1));
                return _loc_2;
            }// end function
            , function (param1:String) : void
            {
                _AwakeUnionWindow_DataGridColumn2.headerText = param1;
                return;
            }// end function
            , "_AwakeUnionWindow_DataGridColumn2.headerText");
            result[5] = binding;
            binding = new Binding(this, function () : String
            {
                var _loc_1:* = Utils.i18n("generalJob");
                var _loc_2:* = _loc_1 == undefined ? (null) : (String(_loc_1));
                return _loc_2;
            }// end function
            , function (param1:String) : void
            {
                _AwakeUnionWindow_DataGridColumn3.headerText = param1;
                return;
            }// end function
            , "_AwakeUnionWindow_DataGridColumn3.headerText");
            result[6] = binding;
            binding = new Binding(this, function () : String
            {
                var _loc_1:* = Utils.i18n("generalStrength");
                var _loc_2:* = _loc_1 == undefined ? (null) : (String(_loc_1));
                return _loc_2;
            }// end function
            , function (param1:String) : void
            {
                _AwakeUnionWindow_DataGridColumn6.headerText = param1;
                return;
            }// end function
            , "_AwakeUnionWindow_DataGridColumn6.headerText");
            result[7] = binding;
            binding = new Binding(this, function () : String
            {
                var _loc_1:* = Utils.i18n("generalTech");
                var _loc_2:* = _loc_1 == undefined ? (null) : (String(_loc_1));
                return _loc_2;
            }// end function
            , function (param1:String) : void
            {
                _AwakeUnionWindow_DataGridColumn7.headerText = param1;
                return;
            }// end function
            , "_AwakeUnionWindow_DataGridColumn7.headerText");
            result[8] = binding;
            binding = new Binding(this, function () : String
            {
                var _loc_1:* = Utils.i18n("generalAgility");
                var _loc_2:* = _loc_1 == undefined ? (null) : (String(_loc_1));
                return _loc_2;
            }// end function
            , function (param1:String) : void
            {
                _AwakeUnionWindow_DataGridColumn8.headerText = param1;
                return;
            }// end function
            , "_AwakeUnionWindow_DataGridColumn8.headerText");
            result[9] = binding;
            binding = new Binding(this, function () : String
            {
                var _loc_1:* = Utils.i18n("generalDefense");
                var _loc_2:* = _loc_1 == undefined ? (null) : (String(_loc_1));
                return _loc_2;
            }// end function
            , function (param1:String) : void
            {
                _AwakeUnionWindow_DataGridColumn9.headerText = param1;
                return;
            }// end function
            , "_AwakeUnionWindow_DataGridColumn9.headerText");
            result[10] = binding;
            binding = new Binding(this, function () : String
            {
                var _loc_1:* = Utils.i18n("generalIntelligence");
                var _loc_2:* = _loc_1 == undefined ? (null) : (String(_loc_1));
                return _loc_2;
            }// end function
            , function (param1:String) : void
            {
                _AwakeUnionWindow_DataGridColumn10.headerText = param1;
                return;
            }// end function
            , "_AwakeUnionWindow_DataGridColumn10.headerText");
            result[11] = binding;
            binding = new Binding(this, function () : String
            {
                var _loc_1:* = Utils.i18n("generalLuck");
                var _loc_2:* = _loc_1 == undefined ? (null) : (String(_loc_1));
                return _loc_2;
            }// end function
            , function (param1:String) : void
            {
                _AwakeUnionWindow_DataGridColumn11.headerText = param1;
                return;
            }// end function
            , "_AwakeUnionWindow_DataGridColumn11.headerText");
            result[12] = binding;
            binding = new Binding(this, function () : Object
            {
                return _swf_back;
            }// end function
            , function (param1:Object) : void
            {
                _AwakeUnionWindow_Image1.source = param1;
                return;
            }// end function
            , "_AwakeUnionWindow_Image1.source");
            result[13] = binding;
            return result;
        }// end function

        private function createComp() : void
        {
            MovieClip(Loader(_swf_back.getChildAt(0)).content).gotoAndPlay("button_back");
            return;
        }// end function

        public function get unitLayer() : Canvas
        {
            return this._490381779unitLayer;
        }// end function

        private function get _selectUnit() : UnitVO
        {
            return this._567608769_selectUnit;
        }// end function

        public function get unitList() : DataGrid
        {
            return this._292905918unitList;
        }// end function

        private function get selectOffImage() : Class
        {
            return this._157742664selectOffImage;
        }// end function

        public function get descriptionText() : Text
        {
            return this._985849673descriptionText;
        }// end function

        private function _AwakeUnionWindow_DataGridColumn4_c() : DataGridColumn
        {
            var _loc_1:* = new DataGridColumn();
            _loc_1.dataField = "level";
            _loc_1.headerText = "Lv";
            _loc_1.width = 50;
            _loc_1.setStyle("textAlign", "center");
            return _loc_1;
        }// end function

        private function _AwakeUnionWindow_DataGridColumn8_i() : DataGridColumn
        {
            var _loc_1:* = new DataGridColumn();
            _AwakeUnionWindow_DataGridColumn8 = _loc_1;
            _loc_1.dataField = "agility";
            _loc_1.width = 30;
            _loc_1.setStyle("textAlign", "center");
            BindingManager.executeBindings(this, "_AwakeUnionWindow_DataGridColumn8", _AwakeUnionWindow_DataGridColumn8);
            return _loc_1;
        }// end function

        public function selectUnionUnit(param1:Object) : void
        {
            if (!hasAwakeMaterialItem(param1 as UnitVO))
            {
                return;
            }
            if (_selectUnit)
            {
                sendPopupEvent(REMOVE_UNIT_SWF, {unit:listUnits.find("unitId", _selectUnit.unitId)[0]});
            }
            _selectUnit = UnitVO(param1);
            sendPopupEvent(ADD_UNIT_SWF, {unit:_selectUnit, type:"center"});
            description = "";
            this.popupWindow(checkUnionWindow, false);
            checkUnionWindow.x = 250;
            checkUnionWindow.y = 250;
            checkUnionWindow.confirmText = Utils.i18n("awakeUnionDescription", _selectUnit.name);
            checkUnionWindow.addEventListener(ConfirmWindow.CONFIRMED, unionCeremony);
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

        private function _AwakeUnionWindow_DataGridColumn11_i() : DataGridColumn
        {
            var _loc_1:* = new DataGridColumn();
            _AwakeUnionWindow_DataGridColumn11 = _loc_1;
            _loc_1.dataField = "luck";
            _loc_1.width = 30;
            _loc_1.setStyle("textAlign", "center");
            BindingManager.executeBindings(this, "_AwakeUnionWindow_DataGridColumn11", _AwakeUnionWindow_DataGridColumn11);
            return _loc_1;
        }// end function

        public function ___AwakeUnionWindow_Image1_click(event:MouseEvent) : void
        {
            closeRecipeUnion();
            return;
        }// end function

        private function unionCeremony(event:PopupEvent) : void
        {
            checkUnionWindow.removeEventListener(ConfirmWindow.CONFIRMED, unionCeremony);
            sendPopupEvent(REMOVE_UNIT_SWF, {unit:_selectUnit});
            sendPopupEvent(AWAKE_UNION_RUN, {unit:_selectUnit});
            return;
        }// end function

        public function setSelectUnitButton(param1:Object) : Class
        {
            if (!hasAwakeMaterialItem(param1 as UnitVO))
            {
                return selectOffImage;
            }
            return selectImage;
        }// end function

        private function get listUnits() : Array
        {
            return this._1233491599listUnits;
        }// end function

        public function get detailRenderer1() : ClassFactory
        {
            return this._969321085detailRenderer1;
        }// end function

        private function set _selectUnit(param1:UnitVO) : void
        {
            var _loc_2:* = this._567608769_selectUnit;
            if (_loc_2 !== param1)
            {
                this._567608769_selectUnit = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "_selectUnit", _loc_2, param1));
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

        private function hasAwakeMaterialItem(param1:UnitVO) : Boolean
        {
            var _loc_2:* = awakeMasters.getOne("beforeGalleryCode", param1.galleryCode);
            if (resource.accessories.getOne("code", _loc_2.itemCode))
            {
                return true;
            }
            return false;
        }// end function

        private function set selectImage(param1:Class) : void
        {
            var _loc_2:* = this._194920895selectImage;
            if (_loc_2 !== param1)
            {
                this._194920895selectImage = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "selectImage", _loc_2, param1));
            }
            return;
        }// end function

        override public function initialize() : void
        {
            var target:AwakeUnionWindow;
            var watcherSetupUtilClass:Object;
            .mx_internal::setDocumentDescriptor(_documentDescriptor_);
            var bindings:* = _AwakeUnionWindow_bindingsSetup();
            var watchers:Array;
            target;
            if (_watcherSetupUtil == null)
            {
                watcherSetupUtilClass = getDefinitionByName("_com_kbmj_viking_view_home_AwakeUnionWindowWatcherSetupUtil");
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

        private function _AwakeUnionWindow_DataGridColumn3_i() : DataGridColumn
        {
            var _loc_1:* = new DataGridColumn();
            _AwakeUnionWindow_DataGridColumn3 = _loc_1;
            _loc_1.dataField = "jobMasterVO.nameLabel";
            _loc_1.width = 80;
            _loc_1.setStyle("textAlign", "center");
            BindingManager.executeBindings(this, "_AwakeUnionWindow_DataGridColumn3", _AwakeUnionWindow_DataGridColumn3);
            return _loc_1;
        }// end function

        public function set descriptionText(param1:Text) : void
        {
            var _loc_2:* = this._985849673descriptionText;
            if (_loc_2 !== param1)
            {
                this._985849673descriptionText = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "descriptionText", _loc_2, param1));
            }
            return;
        }// end function

        private function _AwakeUnionWindow_DataGridColumn7_i() : DataGridColumn
        {
            var _loc_1:* = new DataGridColumn();
            _AwakeUnionWindow_DataGridColumn7 = _loc_1;
            _loc_1.dataField = "tech";
            _loc_1.width = 30;
            _loc_1.setStyle("textAlign", "center");
            BindingManager.executeBindings(this, "_AwakeUnionWindow_DataGridColumn7", _AwakeUnionWindow_DataGridColumn7);
            return _loc_1;
        }// end function

        private function _AwakeUnionWindow_DataGridColumn10_i() : DataGridColumn
        {
            var _loc_1:* = new DataGridColumn();
            _AwakeUnionWindow_DataGridColumn10 = _loc_1;
            _loc_1.dataField = "intelligence";
            _loc_1.width = 30;
            _loc_1.setStyle("textAlign", "center");
            BindingManager.executeBindings(this, "_AwakeUnionWindow_DataGridColumn10", _AwakeUnionWindow_DataGridColumn10);
            return _loc_1;
        }// end function

        private function set selectOffImage(param1:Class) : void
        {
            var _loc_2:* = this._157742664selectOffImage;
            if (_loc_2 !== param1)
            {
                this._157742664selectOffImage = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "selectOffImage", _loc_2, param1));
            }
            return;
        }// end function

        public function get selectUnit() : UnitVO
        {
            return selectUnit;
        }// end function

        private function _AwakeUnionWindow_bindingExprs() : void
        {
            var _loc_1:* = undefined;
            _loc_1 = Utils.i18n("awakeUnionTitle");
            _loc_1 = description;
            _loc_1 = listUnits;
            _loc_1 = Utils.i18n("generalSelect");
            _loc_1 = detailRenderer1;
            _loc_1 = Utils.i18n("generalName");
            _loc_1 = Utils.i18n("generalJob");
            _loc_1 = Utils.i18n("generalStrength");
            _loc_1 = Utils.i18n("generalTech");
            _loc_1 = Utils.i18n("generalAgility");
            _loc_1 = Utils.i18n("generalDefense");
            _loc_1 = Utils.i18n("generalIntelligence");
            _loc_1 = Utils.i18n("generalLuck");
            _loc_1 = _swf_back;
            return;
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

        private function closeRecipeUnion() : void
        {
            if (_selectUnit)
            {
                sendPopupEvent(REMOVE_UNIT_SWF, {unit:_selectUnit});
            }
            _selectUnit = null;
            sendEvent(AWAKE_UNION_END);
            return;
        }// end function

        private function _AwakeUnionWindow_DataGridColumn2_i() : DataGridColumn
        {
            var _loc_1:* = new DataGridColumn();
            _AwakeUnionWindow_DataGridColumn2 = _loc_1;
            _loc_1.dataField = "name";
            _loc_1.itemRenderer = _AwakeUnionWindow_ClassFactory1_c();
            _loc_1.width = 80;
            BindingManager.executeBindings(this, "_AwakeUnionWindow_DataGridColumn2", _AwakeUnionWindow_DataGridColumn2);
            return _loc_1;
        }// end function

        private function get selectImage() : Class
        {
            return this._194920895selectImage;
        }// end function

        public function ___AwakeUnionWindow_PopupWindow1_creationComplete(event:FlexEvent) : void
        {
            createComp();
            return;
        }// end function

        private function set listUnits(param1:Array) : void
        {
            var _loc_2:* = this._1233491599listUnits;
            if (_loc_2 !== param1)
            {
                this._1233491599listUnits = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "listUnits", _loc_2, param1));
            }
            return;
        }// end function

        private function get _swf_back() : MovieClipLoaderAsset
        {
            return this._100077085_swf_back;
        }// end function

        private function _AwakeUnionWindow_ClassFactory2_i() : ClassFactory
        {
            var _loc_1:* = new ClassFactory();
            detailRenderer1 = _loc_1;
            _loc_1.generator = AwakeUnionWindow_inlineComponent1;
            _loc_1.properties = {outerDocument:this};
            return _loc_1;
        }// end function

        private function _AwakeUnionWindow_DataGridColumn6_i() : DataGridColumn
        {
            var _loc_1:* = new DataGridColumn();
            _AwakeUnionWindow_DataGridColumn6 = _loc_1;
            _loc_1.dataField = "strength";
            _loc_1.width = 30;
            _loc_1.setStyle("textAlign", "center");
            BindingManager.executeBindings(this, "_AwakeUnionWindow_DataGridColumn6", _AwakeUnionWindow_DataGridColumn6);
            return _loc_1;
        }// end function

        public function set detailRenderer1(param1:ClassFactory) : void
        {
            var _loc_2:* = this._969321085detailRenderer1;
            if (_loc_2 !== param1)
            {
                this._969321085detailRenderer1 = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "detailRenderer1", _loc_2, param1));
            }
            return;
        }// end function

        private function set description(param1:String) : void
        {
            var _loc_2:* = this._1724546052description;
            if (_loc_2 !== param1)
            {
                this._1724546052description = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "description", _loc_2, param1));
            }
            return;
        }// end function

        public static function set watcherSetupUtil(param1:IWatcherSetupUtil) : void
        {
            AwakeUnionWindow._watcherSetupUtil = param1;
            return;
        }// end function

    }
}
