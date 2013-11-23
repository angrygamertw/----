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

    public class NormalUnionWindow extends PopupWindow implements IBindingClient
    {
        private var _1584105757viewStack:ViewStack;
        var _bindings:Array;
        private var _654690143yangNecessarySoul:int = 0;
        private var _891986333yangUnitCanvas:Canvas;
        public var _NormalUnionWindow_DataGridColumn10:DataGridColumn;
        public var _NormalUnionWindow_DataGridColumn11:DataGridColumn;
        public var _NormalUnionWindow_DataGridColumn12:DataGridColumn;
        public var _NormalUnionWindow_DataGridColumn13:DataGridColumn;
        public var _NormalUnionWindow_DataGridColumn14:DataGridColumn;
        public var _NormalUnionWindow_DataGridColumn17:DataGridColumn;
        public var _NormalUnionWindow_DataGridColumn18:DataGridColumn;
        public var _NormalUnionWindow_DataGridColumn19:DataGridColumn;
        private var _1655845770_swf_cancel:MovieClipLoaderAsset;
        private var _1243907876yinNecessarySoul:int = 0;
        public var _NormalUnionWindow_DataGridColumn20:DataGridColumn;
        public var _NormalUnionWindow_DataGridColumn21:DataGridColumn;
        public var _NormalUnionWindow_DataGridColumn22:DataGridColumn;
        var _bindingsByDestination:Object;
        private var _1766773752totalSoulSize:Text;
        private var _490381779unitLayer:Canvas;
        public var _NormalUnionWindow_Text1:Text;
        private var leyLine:Boolean = false;
        private var _522920908detailRenderer:ClassFactory;
        public var _NormalUnionWindow_DataGridColumn1:DataGridColumn;
        public var _NormalUnionWindow_DataGridColumn2:DataGridColumn;
        public var _NormalUnionWindow_DataGridColumn3:DataGridColumn;
        public var _NormalUnionWindow_DataGridColumn6:DataGridColumn;
        public var _NormalUnionWindow_DataGridColumn7:DataGridColumn;
        public var _NormalUnionWindow_DataGridColumn8:DataGridColumn;
        public var _NormalUnionWindow_DataGridColumn9:DataGridColumn;
        private var _512787452_soulCrystal:int;
        private var _973379008yinUnitList:DataGrid;
        private var _100077085_swf_back:MovieClipLoaderAsset;
        private var _1150838278yinUnitCanvas:Canvas;
        private var _985849673descriptionText:Text;
        private var _432832539yangUnit:UnitVO;
        public var _NormalUnionWindow_Label1:Label;
        public var _NormalUnionWindow_Label2:Label;
        public var _NormalUnionWindow_Label3:Label;
        public var _NormalUnionWindow_Label4:Label;
        public var _NormalUnionWindow_Label5:Label;
        public var _NormalUnionWindow_Label6:Label;
        public var _NormalUnionWindow_Label7:Label;
        public var _NormalUnionWindow_Label8:Label;
        private var _1724546052description:String;
        private var unitStatusPopUpWindow:UnitStatusPopUpWindow;
        private var checkUnionWindow:CheckUnionWindow;
        private var _1170914814yinUnit:UnitVO;
        private var _1625609693yangUnitList:DataGrid;
        var _watchers:Array;
        public var _NormalUnionWindow_Image1:Image;
        public var _NormalUnionWindow_Image2:Image;
        var _bindingsBeginWithWord:Object;
        private var _582172204_homeAllUnits:Array;
        private var _1958883625expLabel:ClassFactory;
        private var _2126098153yinCandidateUnit:Array;
        private var _documentDescriptor_:UIComponentDescriptor;
        public static const NORMAL_UNION_RUN:String = NAME + "normalUnion";
        public static const ADD_UNIT_SWF:String = NAME + "addUnitSwf";
        public static const REMOVE_UNIT_SWF:String = NAME + "subUnitSwf";
        public static const NAME:String = "normalUnionWindow";
        private static var _watcherSetupUtil:IWatcherSetupUtil;
        public static const NORMAL_UNION_END:String = NAME + "normalUnionEnd";

        public function NormalUnionWindow()
        {
            _documentDescriptor_ = new UIComponentDescriptor({type:PopupWindow, propertiesFactory:function () : Object
            {
                return {childDescriptors:[new UIComponentDescriptor({type:Canvas, id:"unitLayer"}), new UIComponentDescriptor({type:Text, id:"_NormalUnionWindow_Text1", propertiesFactory:function () : Object
                {
                    return {x:350, y:302, styleName:"PanelBaseTitle"};
                }// end function
                }), new UIComponentDescriptor({type:Text, id:"descriptionText", stylesFactory:function () : void
                {
                    this.fontSize = 11;
                    return;
                }// end function
                , propertiesFactory:function () : Object
                {
                    return {x:85, y:330};
                }// end function
                }), new UIComponentDescriptor({type:ViewStack, id:"viewStack", propertiesFactory:function () : Object
                {
                    return {width:600, x:85, y:355, childDescriptors:[new UIComponentDescriptor({type:VBox, propertiesFactory:function () : Object
                    {
                        return {childDescriptors:[new UIComponentDescriptor({type:DataGrid, id:"yangUnitList", propertiesFactory:function () : Object
                        {
                            return {rowCount:4, width:590, styleName:"DataGridBase", selectable:false, sortableColumns:false, columns:[_NormalUnionWindow_DataGridColumn1_i(), _NormalUnionWindow_DataGridColumn2_i(), _NormalUnionWindow_DataGridColumn3_i(), _NormalUnionWindow_DataGridColumn4_c(), _NormalUnionWindow_DataGridColumn5_c(), _NormalUnionWindow_DataGridColumn6_i(), _NormalUnionWindow_DataGridColumn7_i(), _NormalUnionWindow_DataGridColumn8_i(), _NormalUnionWindow_DataGridColumn9_i(), _NormalUnionWindow_DataGridColumn10_i(), _NormalUnionWindow_DataGridColumn11_i()]};
                        }// end function
                        }), new UIComponentDescriptor({type:HBox, propertiesFactory:function () : Object
                        {
                            return {childDescriptors:[new UIComponentDescriptor({type:Spacer, propertiesFactory:function () : Object
                            {
                                return {width:230};
                            }// end function
                            }), new UIComponentDescriptor({type:Image, id:"_NormalUnionWindow_Image1", events:{click:"___NormalUnionWindow_Image1_click"}})]};
                        }// end function
                        })]};
                    }// end function
                    }), new UIComponentDescriptor({type:VBox, propertiesFactory:function () : Object
                    {
                        return {childDescriptors:[new UIComponentDescriptor({type:DataGrid, id:"yinUnitList", propertiesFactory:function () : Object
                        {
                            return {rowCount:4, width:590, styleName:"DataGridBase", selectable:false, sortableColumns:false, columns:[_NormalUnionWindow_DataGridColumn12_i(), _NormalUnionWindow_DataGridColumn13_i(), _NormalUnionWindow_DataGridColumn14_i(), _NormalUnionWindow_DataGridColumn15_c(), _NormalUnionWindow_DataGridColumn16_c(), _NormalUnionWindow_DataGridColumn17_i(), _NormalUnionWindow_DataGridColumn18_i(), _NormalUnionWindow_DataGridColumn19_i(), _NormalUnionWindow_DataGridColumn20_i(), _NormalUnionWindow_DataGridColumn21_i(), _NormalUnionWindow_DataGridColumn22_i()]};
                        }// end function
                        }), new UIComponentDescriptor({type:HBox, propertiesFactory:function () : Object
                        {
                            return {childDescriptors:[new UIComponentDescriptor({type:Spacer, propertiesFactory:function () : Object
                            {
                                return {width:230};
                            }// end function
                            }), new UIComponentDescriptor({type:Image, id:"_NormalUnionWindow_Image2", events:{click:"___NormalUnionWindow_Image2_click"}})]};
                        }// end function
                        })]};
                    }// end function
                    })]};
                }// end function
                }), new UIComponentDescriptor({type:Canvas, propertiesFactory:function () : Object
                {
                    return {childDescriptors:[new UIComponentDescriptor({type:Canvas, id:"yangUnitCanvas", propertiesFactory:function () : Object
                    {
                        return {visible:false, childDescriptors:[new UIComponentDescriptor({type:Label, id:"_NormalUnionWindow_Label1", events:{click:"___NormalUnionWindow_Label1_click"}, stylesFactory:function () : void
                        {
                            this.textDecoration = "underline";
                            return;
                        }// end function
                        , propertiesFactory:function () : Object
                        {
                            return {x:90, y:190, buttonMode:true, mouseChildren:false};
                        }// end function
                        }), new UIComponentDescriptor({type:Label, id:"_NormalUnionWindow_Label2", propertiesFactory:function () : Object
                        {
                            return {x:90, y:210};
                        }// end function
                        }), new UIComponentDescriptor({type:Label, id:"_NormalUnionWindow_Label3", propertiesFactory:function () : Object
                        {
                            return {x:90, y:230};
                        }// end function
                        }), new UIComponentDescriptor({type:Label, id:"_NormalUnionWindow_Label4", propertiesFactory:function () : Object
                        {
                            return {x:90, y:250};
                        }// end function
                        })]};
                    }// end function
                    }), new UIComponentDescriptor({type:Canvas, id:"yinUnitCanvas", propertiesFactory:function () : Object
                    {
                        return {visible:false, childDescriptors:[new UIComponentDescriptor({type:Label, id:"_NormalUnionWindow_Label5", events:{click:"___NormalUnionWindow_Label5_click"}, stylesFactory:function () : void
                        {
                            this.textDecoration = "underline";
                            return;
                        }// end function
                        , propertiesFactory:function () : Object
                        {
                            return {x:520, y:190, buttonMode:true, mouseChildren:false};
                        }// end function
                        }), new UIComponentDescriptor({type:Label, id:"_NormalUnionWindow_Label6", propertiesFactory:function () : Object
                        {
                            return {x:520, y:210};
                        }// end function
                        }), new UIComponentDescriptor({type:Label, id:"_NormalUnionWindow_Label7", propertiesFactory:function () : Object
                        {
                            return {x:520, y:230};
                        }// end function
                        }), new UIComponentDescriptor({type:Label, id:"_NormalUnionWindow_Label8", propertiesFactory:function () : Object
                        {
                            return {x:520, y:250};
                        }// end function
                        })]};
                    }// end function
                    }), new UIComponentDescriptor({type:Text, id:"totalSoulSize", stylesFactory:function () : void
                    {
                        this.fontSize = 14;
                        return;
                    }// end function
                    , propertiesFactory:function () : Object
                    {
                        return {x:285, y:103};
                    }// end function
                    }), new UIComponentDescriptor({type:Text, stylesFactory:function () : void
                    {
                        this.fontSize = 14;
                        return;
                    }// end function
                    , propertiesFactory:function () : Object
                    {
                        return {text:"0", x:345, y:103};
                    }// end function
                    }), new UIComponentDescriptor({type:Text, stylesFactory:function () : void
                    {
                        this.fontSize = 14;
                        return;
                    }// end function
                    , propertiesFactory:function () : Object
                    {
                        return {text:"0", x:405, y:103};
                    }// end function
                    }), new UIComponentDescriptor({type:Text, stylesFactory:function () : void
                    {
                        this.fontSize = 14;
                        return;
                    }// end function
                    , propertiesFactory:function () : Object
                    {
                        return {text:"0", x:465, y:103};
                    }// end function
                    })]};
                }// end function
                })]};
            }// end function
            });
            checkUnionWindow = new CheckUnionWindow();
            _100077085_swf_back = new Viking.EmbedSwfButtonCommon();
            _1655845770_swf_cancel = new Viking.EmbedSwfButtonCommon();
            _582172204_homeAllUnits = new Array();
            _432832539yangUnit = new UnitVO();
            _1170914814yinUnit = new UnitVO();
            _1724546052description = new String();
            _bindings = [];
            _watchers = [];
            _bindingsByDestination = {};
            _bindingsBeginWithWord = {};
            mx_internal::_document = this;
            _NormalUnionWindow_ClassFactory3_i();
            _NormalUnionWindow_ClassFactory4_i();
            this.addEventListener("creationComplete", ___NormalUnionWindow_PopupWindow1_creationComplete);
            return;
        }// end function

        private function set yinUnit(param1:UnitVO) : void
        {
            var _loc_2:* = this._1170914814yinUnit;
            if (_loc_2 !== param1)
            {
                this._1170914814yinUnit = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "yinUnit", _loc_2, param1));
            }
            return;
        }// end function

        private function set _soulCrystal(param1:int) : void
        {
            var _loc_2:* = this._512787452_soulCrystal;
            if (_loc_2 !== param1)
            {
                this._512787452_soulCrystal = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "_soulCrystal", _loc_2, param1));
            }
            return;
        }// end function

        private function get yinUnit() : UnitVO
        {
            return this._1170914814yinUnit;
        }// end function

        private function getSoulSize(param1:int) : int
        {
            if (leyLine)
            {
                return addLeyLineEffect(param1);
            }
            return param1;
        }// end function

        private function get _soulCrystal() : int
        {
            return this._512787452_soulCrystal;
        }// end function

        private function _NormalUnionWindow_DataGridColumn6_i() : DataGridColumn
        {
            var _loc_1:* = new DataGridColumn();
            _NormalUnionWindow_DataGridColumn6 = _loc_1;
            _loc_1.dataField = "strength";
            _loc_1.width = 30;
            _loc_1.setStyle("textAlign", "center");
            BindingManager.executeBindings(this, "_NormalUnionWindow_DataGridColumn6", _NormalUnionWindow_DataGridColumn6);
            return _loc_1;
        }// end function

        private function _NormalUnionWindow_DataGridColumn15_c() : DataGridColumn
        {
            var _loc_1:* = new DataGridColumn();
            _loc_1.dataField = "level";
            _loc_1.headerText = "Lv";
            _loc_1.width = 50;
            _loc_1.setStyle("textAlign", "center");
            return _loc_1;
        }// end function

        public function get unitLayer() : Canvas
        {
            return this._490381779unitLayer;
        }// end function

        private function createComp() : void
        {
            checkUnionWindow.addEventListener(CheckUnionWindow.START_UNION, function (event:Event) : void
            {
                unionCeremony();
                return;
            }// end function
            );
            checkUnionWindow.addEventListener(CheckUnionWindow.START_INDEX, function (event:Event) : void
            {
                startIndex();
                return;
            }// end function
            );
            MovieClip(Loader(_swf_back.getChildAt(0)).content).gotoAndPlay("button_back");
            MovieClip(Loader(_swf_cancel.getChildAt(0)).content).gotoAndPlay("button_back");
            return;
        }// end function

        private function get _homeAllUnits() : Array
        {
            return this._582172204_homeAllUnits;
        }// end function

        public function get yangUnitList() : DataGrid
        {
            return this._1625609693yangUnitList;
        }// end function

        public function set yangUnitList(param1:DataGrid) : void
        {
            var _loc_2:* = this._1625609693yangUnitList;
            if (_loc_2 !== param1)
            {
                this._1625609693yangUnitList = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "yangUnitList", _loc_2, param1));
            }
            return;
        }// end function

        private function set yinNecessarySoul(param1:int) : void
        {
            var _loc_2:* = this._1243907876yinNecessarySoul;
            if (_loc_2 !== param1)
            {
                this._1243907876yinNecessarySoul = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "yinNecessarySoul", _loc_2, param1));
            }
            return;
        }// end function

        private function _NormalUnionWindow_DataGridColumn5_c() : DataGridColumn
        {
            var _loc_1:* = new DataGridColumn();
            _loc_1.dataField = "hp";
            _loc_1.headerText = "HP";
            _loc_1.width = 40;
            _loc_1.setStyle("textAlign", "center");
            return _loc_1;
        }// end function

        private function _NormalUnionWindow_DataGridColumn14_i() : DataGridColumn
        {
            var _loc_1:* = new DataGridColumn();
            _NormalUnionWindow_DataGridColumn14 = _loc_1;
            _loc_1.dataField = "jobMasterVO.nameLabel";
            _loc_1.width = 80;
            _loc_1.setStyle("textAlign", "center");
            BindingManager.executeBindings(this, "_NormalUnionWindow_DataGridColumn14", _NormalUnionWindow_DataGridColumn14);
            return _loc_1;
        }// end function

        private function set _homeAllUnits(param1:Array) : void
        {
            var _loc_2:* = this._582172204_homeAllUnits;
            if (_loc_2 !== param1)
            {
                this._582172204_homeAllUnits = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "_homeAllUnits", _loc_2, param1));
            }
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

        private function _NormalUnionWindow_bindingsSetup() : Array
        {
            var binding:Binding;
            var result:Array;
            binding = new Binding(this, function () : String
            {
                var _loc_1:* = Utils.i18n("normalUnionTitle");
                var _loc_2:* = _loc_1 == undefined ? (null) : (String(_loc_1));
                return _loc_2;
            }// end function
            , function (param1:String) : void
            {
                _NormalUnionWindow_Text1.text = param1;
                return;
            }// end function
            , "_NormalUnionWindow_Text1.text");
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
                return _homeAllUnits;
            }// end function
            , function (param1:Object) : void
            {
                yangUnitList.dataProvider = param1;
                return;
            }// end function
            , "yangUnitList.dataProvider");
            result[2] = binding;
            binding = new Binding(this, function () : String
            {
                var _loc_1:* = Utils.i18n("generalSelect");
                var _loc_2:* = _loc_1 == undefined ? (null) : (String(_loc_1));
                return _loc_2;
            }// end function
            , function (param1:String) : void
            {
                _NormalUnionWindow_DataGridColumn1.headerText = param1;
                return;
            }// end function
            , "_NormalUnionWindow_DataGridColumn1.headerText");
            result[3] = binding;
            binding = new Binding(this, function () : IFactory
            {
                return detailRenderer;
            }// end function
            , function (param1:IFactory) : void
            {
                _NormalUnionWindow_DataGridColumn1.itemRenderer = param1;
                return;
            }// end function
            , "_NormalUnionWindow_DataGridColumn1.itemRenderer");
            result[4] = binding;
            binding = new Binding(this, function () : String
            {
                var _loc_1:* = Utils.i18n("generalName");
                var _loc_2:* = _loc_1 == undefined ? (null) : (String(_loc_1));
                return _loc_2;
            }// end function
            , function (param1:String) : void
            {
                _NormalUnionWindow_DataGridColumn2.headerText = param1;
                return;
            }// end function
            , "_NormalUnionWindow_DataGridColumn2.headerText");
            result[5] = binding;
            binding = new Binding(this, function () : String
            {
                var _loc_1:* = Utils.i18n("generalJob");
                var _loc_2:* = _loc_1 == undefined ? (null) : (String(_loc_1));
                return _loc_2;
            }// end function
            , function (param1:String) : void
            {
                _NormalUnionWindow_DataGridColumn3.headerText = param1;
                return;
            }// end function
            , "_NormalUnionWindow_DataGridColumn3.headerText");
            result[6] = binding;
            binding = new Binding(this, function () : String
            {
                var _loc_1:* = Utils.i18n("generalStrength");
                var _loc_2:* = _loc_1 == undefined ? (null) : (String(_loc_1));
                return _loc_2;
            }// end function
            , function (param1:String) : void
            {
                _NormalUnionWindow_DataGridColumn6.headerText = param1;
                return;
            }// end function
            , "_NormalUnionWindow_DataGridColumn6.headerText");
            result[7] = binding;
            binding = new Binding(this, function () : String
            {
                var _loc_1:* = Utils.i18n("generalTech");
                var _loc_2:* = _loc_1 == undefined ? (null) : (String(_loc_1));
                return _loc_2;
            }// end function
            , function (param1:String) : void
            {
                _NormalUnionWindow_DataGridColumn7.headerText = param1;
                return;
            }// end function
            , "_NormalUnionWindow_DataGridColumn7.headerText");
            result[8] = binding;
            binding = new Binding(this, function () : String
            {
                var _loc_1:* = Utils.i18n("generalAgility");
                var _loc_2:* = _loc_1 == undefined ? (null) : (String(_loc_1));
                return _loc_2;
            }// end function
            , function (param1:String) : void
            {
                _NormalUnionWindow_DataGridColumn8.headerText = param1;
                return;
            }// end function
            , "_NormalUnionWindow_DataGridColumn8.headerText");
            result[9] = binding;
            binding = new Binding(this, function () : String
            {
                var _loc_1:* = Utils.i18n("generalDefense");
                var _loc_2:* = _loc_1 == undefined ? (null) : (String(_loc_1));
                return _loc_2;
            }// end function
            , function (param1:String) : void
            {
                _NormalUnionWindow_DataGridColumn9.headerText = param1;
                return;
            }// end function
            , "_NormalUnionWindow_DataGridColumn9.headerText");
            result[10] = binding;
            binding = new Binding(this, function () : String
            {
                var _loc_1:* = Utils.i18n("generalIntelligence");
                var _loc_2:* = _loc_1 == undefined ? (null) : (String(_loc_1));
                return _loc_2;
            }// end function
            , function (param1:String) : void
            {
                _NormalUnionWindow_DataGridColumn10.headerText = param1;
                return;
            }// end function
            , "_NormalUnionWindow_DataGridColumn10.headerText");
            result[11] = binding;
            binding = new Binding(this, function () : String
            {
                var _loc_1:* = Utils.i18n("generalLuck");
                var _loc_2:* = _loc_1 == undefined ? (null) : (String(_loc_1));
                return _loc_2;
            }// end function
            , function (param1:String) : void
            {
                _NormalUnionWindow_DataGridColumn11.headerText = param1;
                return;
            }// end function
            , "_NormalUnionWindow_DataGridColumn11.headerText");
            result[12] = binding;
            binding = new Binding(this, function () : Object
            {
                return _swf_back;
            }// end function
            , function (param1:Object) : void
            {
                _NormalUnionWindow_Image1.source = param1;
                return;
            }// end function
            , "_NormalUnionWindow_Image1.source");
            result[13] = binding;
            binding = new Binding(this, function () : Object
            {
                return yinCandidateUnit;
            }// end function
            , function (param1:Object) : void
            {
                yinUnitList.dataProvider = param1;
                return;
            }// end function
            , "yinUnitList.dataProvider");
            result[14] = binding;
            binding = new Binding(this, function () : String
            {
                var _loc_1:* = Utils.i18n("generalSelect");
                var _loc_2:* = _loc_1 == undefined ? (null) : (String(_loc_1));
                return _loc_2;
            }// end function
            , function (param1:String) : void
            {
                _NormalUnionWindow_DataGridColumn12.headerText = param1;
                return;
            }// end function
            , "_NormalUnionWindow_DataGridColumn12.headerText");
            result[15] = binding;
            binding = new Binding(this, function () : IFactory
            {
                return detailRenderer;
            }// end function
            , function (param1:IFactory) : void
            {
                _NormalUnionWindow_DataGridColumn12.itemRenderer = param1;
                return;
            }// end function
            , "_NormalUnionWindow_DataGridColumn12.itemRenderer");
            result[16] = binding;
            binding = new Binding(this, function () : String
            {
                var _loc_1:* = Utils.i18n("generalName");
                var _loc_2:* = _loc_1 == undefined ? (null) : (String(_loc_1));
                return _loc_2;
            }// end function
            , function (param1:String) : void
            {
                _NormalUnionWindow_DataGridColumn13.headerText = param1;
                return;
            }// end function
            , "_NormalUnionWindow_DataGridColumn13.headerText");
            result[17] = binding;
            binding = new Binding(this, function () : String
            {
                var _loc_1:* = Utils.i18n("generalJob");
                var _loc_2:* = _loc_1 == undefined ? (null) : (String(_loc_1));
                return _loc_2;
            }// end function
            , function (param1:String) : void
            {
                _NormalUnionWindow_DataGridColumn14.headerText = param1;
                return;
            }// end function
            , "_NormalUnionWindow_DataGridColumn14.headerText");
            result[18] = binding;
            binding = new Binding(this, function () : String
            {
                var _loc_1:* = Utils.i18n("generalStrength");
                var _loc_2:* = _loc_1 == undefined ? (null) : (String(_loc_1));
                return _loc_2;
            }// end function
            , function (param1:String) : void
            {
                _NormalUnionWindow_DataGridColumn17.headerText = param1;
                return;
            }// end function
            , "_NormalUnionWindow_DataGridColumn17.headerText");
            result[19] = binding;
            binding = new Binding(this, function () : String
            {
                var _loc_1:* = Utils.i18n("generalTech");
                var _loc_2:* = _loc_1 == undefined ? (null) : (String(_loc_1));
                return _loc_2;
            }// end function
            , function (param1:String) : void
            {
                _NormalUnionWindow_DataGridColumn18.headerText = param1;
                return;
            }// end function
            , "_NormalUnionWindow_DataGridColumn18.headerText");
            result[20] = binding;
            binding = new Binding(this, function () : String
            {
                var _loc_1:* = Utils.i18n("generalAgility");
                var _loc_2:* = _loc_1 == undefined ? (null) : (String(_loc_1));
                return _loc_2;
            }// end function
            , function (param1:String) : void
            {
                _NormalUnionWindow_DataGridColumn19.headerText = param1;
                return;
            }// end function
            , "_NormalUnionWindow_DataGridColumn19.headerText");
            result[21] = binding;
            binding = new Binding(this, function () : String
            {
                var _loc_1:* = Utils.i18n("generalDefense");
                var _loc_2:* = _loc_1 == undefined ? (null) : (String(_loc_1));
                return _loc_2;
            }// end function
            , function (param1:String) : void
            {
                _NormalUnionWindow_DataGridColumn20.headerText = param1;
                return;
            }// end function
            , "_NormalUnionWindow_DataGridColumn20.headerText");
            result[22] = binding;
            binding = new Binding(this, function () : String
            {
                var _loc_1:* = Utils.i18n("generalIntelligence");
                var _loc_2:* = _loc_1 == undefined ? (null) : (String(_loc_1));
                return _loc_2;
            }// end function
            , function (param1:String) : void
            {
                _NormalUnionWindow_DataGridColumn21.headerText = param1;
                return;
            }// end function
            , "_NormalUnionWindow_DataGridColumn21.headerText");
            result[23] = binding;
            binding = new Binding(this, function () : String
            {
                var _loc_1:* = Utils.i18n("generalLuck");
                var _loc_2:* = _loc_1 == undefined ? (null) : (String(_loc_1));
                return _loc_2;
            }// end function
            , function (param1:String) : void
            {
                _NormalUnionWindow_DataGridColumn22.headerText = param1;
                return;
            }// end function
            , "_NormalUnionWindow_DataGridColumn22.headerText");
            result[24] = binding;
            binding = new Binding(this, function () : Object
            {
                return _swf_cancel;
            }// end function
            , function (param1:Object) : void
            {
                _NormalUnionWindow_Image2.source = param1;
                return;
            }// end function
            , "_NormalUnionWindow_Image2.source");
            result[25] = binding;
            binding = new Binding(this, function () : String
            {
                var _loc_1:* = Utils.i18n("generalName") + ":" + yangUnit.name;
                var _loc_2:* = _loc_1 == undefined ? (null) : (String(_loc_1));
                return _loc_2;
            }// end function
            , function (param1:String) : void
            {
                _NormalUnionWindow_Label1.text = param1;
                return;
            }// end function
            , "_NormalUnionWindow_Label1.text");
            result[26] = binding;
            binding = new Binding(this, function () : String
            {
                var _loc_1:* = Utils.i18n("generalJob") + ":" + yangUnit.jobMasterVO.nameLabel;
                var _loc_2:* = _loc_1 == undefined ? (null) : (String(_loc_1));
                return _loc_2;
            }// end function
            , function (param1:String) : void
            {
                _NormalUnionWindow_Label2.text = param1;
                return;
            }// end function
            , "_NormalUnionWindow_Label2.text");
            result[27] = binding;
            binding = new Binding(this, function () : String
            {
                var _loc_1:* = "Lv:" + yangUnit.level;
                var _loc_2:* = _loc_1 == undefined ? (null) : (String(_loc_1));
                return _loc_2;
            }// end function
            , function (param1:String) : void
            {
                _NormalUnionWindow_Label3.text = param1;
                return;
            }// end function
            , "_NormalUnionWindow_Label3.text");
            result[28] = binding;
            binding = new Binding(this, function () : String
            {
                var _loc_1:* = Utils.i18n("normalUnionNecessorySoulCrystalCount") + ":" + yangNecessarySoul;
                var _loc_2:* = _loc_1 == undefined ? (null) : (String(_loc_1));
                return _loc_2;
            }// end function
            , function (param1:String) : void
            {
                _NormalUnionWindow_Label4.text = param1;
                return;
            }// end function
            , "_NormalUnionWindow_Label4.text");
            result[29] = binding;
            binding = new Binding(this, function () : String
            {
                var _loc_1:* = Utils.i18n("generalName") + ":" + yinUnit.name;
                var _loc_2:* = _loc_1 == undefined ? (null) : (String(_loc_1));
                return _loc_2;
            }// end function
            , function (param1:String) : void
            {
                _NormalUnionWindow_Label5.text = param1;
                return;
            }// end function
            , "_NormalUnionWindow_Label5.text");
            result[30] = binding;
            binding = new Binding(this, function () : String
            {
                var _loc_1:* = Utils.i18n("generalJob") + ":" + yinUnit.jobMasterVO.nameLabel;
                var _loc_2:* = _loc_1 == undefined ? (null) : (String(_loc_1));
                return _loc_2;
            }// end function
            , function (param1:String) : void
            {
                _NormalUnionWindow_Label6.text = param1;
                return;
            }// end function
            , "_NormalUnionWindow_Label6.text");
            result[31] = binding;
            binding = new Binding(this, function () : String
            {
                var _loc_1:* = "Lv:" + yinUnit.level;
                var _loc_2:* = _loc_1 == undefined ? (null) : (String(_loc_1));
                return _loc_2;
            }// end function
            , function (param1:String) : void
            {
                _NormalUnionWindow_Label7.text = param1;
                return;
            }// end function
            , "_NormalUnionWindow_Label7.text");
            result[32] = binding;
            binding = new Binding(this, function () : String
            {
                var _loc_1:* = Utils.i18n("normalUnionNecessorySoulCrystalCount") + ":" + yinNecessarySoul;
                var _loc_2:* = _loc_1 == undefined ? (null) : (String(_loc_1));
                return _loc_2;
            }// end function
            , function (param1:String) : void
            {
                _NormalUnionWindow_Label8.text = param1;
                return;
            }// end function
            , "_NormalUnionWindow_Label8.text");
            result[33] = binding;
            binding = new Binding(this, function () : String
            {
                var _loc_1:* = yangNecessarySoul + yinNecessarySoul;
                var _loc_2:* = _loc_1 == undefined ? (null) : (String(_loc_1));
                return _loc_2;
            }// end function
            , function (param1:String) : void
            {
                totalSoulSize.text = param1;
                return;
            }// end function
            , "totalSoulSize.text");
            result[34] = binding;
            binding = new Binding(this, function () : uint
            {
                return getColor(yangNecessarySoul, yinNecessarySoul);
            }// end function
            , function (param1:uint) : void
            {
                totalSoulSize.setStyle("color", param1);
                return;
            }// end function
            , "totalSoulSize.color");
            result[35] = binding;
            return result;
        }// end function

        private function unionCeremony() : void
        {
            sendPopupEvent(REMOVE_UNIT_SWF, {unit:yangUnit});
            sendPopupEvent(REMOVE_UNIT_SWF, {unit:yinUnit});
            viewStack.selectedIndex = 0;
            sendPopupEvent(NORMAL_UNION_RUN, {yangUnit:yangUnit, yinUnit:yinUnit});
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

        public function get detailRenderer() : ClassFactory
        {
            return this._522920908detailRenderer;
        }// end function

        private function get _swf_cancel() : MovieClipLoaderAsset
        {
            return this._1655845770_swf_cancel;
        }// end function

        private function _NormalUnionWindow_bindingExprs() : void
        {
            var _loc_1:* = undefined;
            _loc_1 = Utils.i18n("normalUnionTitle");
            _loc_1 = description;
            _loc_1 = _homeAllUnits;
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
            _loc_1 = _swf_back;
            _loc_1 = yinCandidateUnit;
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
            _loc_1 = Utils.i18n("generalName") + ":" + yangUnit.name;
            _loc_1 = Utils.i18n("generalJob") + ":" + yangUnit.jobMasterVO.nameLabel;
            _loc_1 = "Lv:" + yangUnit.level;
            _loc_1 = Utils.i18n("normalUnionNecessorySoulCrystalCount") + ":" + yangNecessarySoul;
            _loc_1 = Utils.i18n("generalName") + ":" + yinUnit.name;
            _loc_1 = Utils.i18n("generalJob") + ":" + yinUnit.jobMasterVO.nameLabel;
            _loc_1 = "Lv:" + yinUnit.level;
            _loc_1 = Utils.i18n("normalUnionNecessorySoulCrystalCount") + ":" + yinNecessarySoul;
            _loc_1 = yangNecessarySoul + yinNecessarySoul;
            _loc_1 = getColor(yangNecessarySoul, yinNecessarySoul);
            return;
        }// end function

        private function _NormalUnionWindow_DataGridColumn4_c() : DataGridColumn
        {
            var _loc_1:* = new DataGridColumn();
            _loc_1.dataField = "level";
            _loc_1.headerText = "Lv";
            _loc_1.width = 50;
            _loc_1.setStyle("textAlign", "center");
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

        public function set homeAllUnits(param1:Array) : void
        {
            _homeAllUnits = param1;
            return;
        }// end function

        private function _NormalUnionWindow_DataGridColumn13_i() : DataGridColumn
        {
            var _loc_1:* = new DataGridColumn();
            _NormalUnionWindow_DataGridColumn13 = _loc_1;
            _loc_1.dataField = "name";
            _loc_1.itemRenderer = _NormalUnionWindow_ClassFactory2_c();
            _loc_1.width = 80;
            BindingManager.executeBindings(this, "_NormalUnionWindow_DataGridColumn13", _NormalUnionWindow_DataGridColumn13);
            return _loc_1;
        }// end function

        private function get yangNecessarySoul() : int
        {
            return this._654690143yangNecessarySoul;
        }// end function

        public function ___NormalUnionWindow_Label5_click(event:MouseEvent) : void
        {
            onClick(yinUnit);
            return;
        }// end function

        private function _NormalUnionWindow_ClassFactory4_i() : ClassFactory
        {
            var _loc_1:* = new ClassFactory();
            expLabel = _loc_1;
            _loc_1.generator = NormalUnionWindow_inlineComponent2;
            _loc_1.properties = {outerDocument:this};
            return _loc_1;
        }// end function

        public function get yang() : UnitVO
        {
            return yangUnit;
        }// end function

        public function ___NormalUnionWindow_Image2_click(event:MouseEvent) : void
        {
            subSelectIndex();
            return;
        }// end function

        private function _NormalUnionWindow_DataGridColumn3_i() : DataGridColumn
        {
            var _loc_1:* = new DataGridColumn();
            _NormalUnionWindow_DataGridColumn3 = _loc_1;
            _loc_1.dataField = "jobMasterVO.nameLabel";
            _loc_1.width = 80;
            _loc_1.setStyle("textAlign", "center");
            BindingManager.executeBindings(this, "_NormalUnionWindow_DataGridColumn3", _NormalUnionWindow_DataGridColumn3);
            return _loc_1;
        }// end function

        private function necessaryUnionSoul(param1:UnitVO) : int
        {
            return getSoulSize(Math.ceil(param1.jobMasterVO.consumptionAnima * param1.level * 0.5));
        }// end function

        private function subSelectIndex() : void
        {
            var _loc_1:* = viewStack;
            var _loc_2:* = viewStack.selectedIndex - 1;
            _loc_1.selectedIndex = _loc_2;
            sendPopupEvent(REMOVE_UNIT_SWF, {unit:yangUnit});
            yinUnit = new UnitVO();
            yangUnit = new UnitVO();
            description = Utils.i18n("normalUnionSelectYangUnit");
            yangNecessarySoul = 0;
            yinNecessarySoul = 0;
            yangUnitCanvas.visible = false;
            yinUnitCanvas.visible = false;
            return;
        }// end function

        private function _NormalUnionWindow_DataGridColumn12_i() : DataGridColumn
        {
            var _loc_1:* = new DataGridColumn();
            _NormalUnionWindow_DataGridColumn12 = _loc_1;
            _loc_1.width = 50;
            BindingManager.executeBindings(this, "_NormalUnionWindow_DataGridColumn12", _NormalUnionWindow_DataGridColumn12);
            return _loc_1;
        }// end function

        public function get expLabel() : ClassFactory
        {
            return this._1958883625expLabel;
        }// end function

        public function get viewStack() : ViewStack
        {
            return this._1584105757viewStack;
        }// end function

        private function _NormalUnionWindow_ClassFactory3_i() : ClassFactory
        {
            var _loc_1:* = new ClassFactory();
            detailRenderer = _loc_1;
            _loc_1.generator = NormalUnionWindow_inlineComponent1;
            _loc_1.properties = {outerDocument:this};
            return _loc_1;
        }// end function

        private function get yinCandidateUnit() : Array
        {
            return this._2126098153yinCandidateUnit;
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

        private function onClick(param1:UnitVO) : void
        {
            if (param1.unitId == 0)
            {
                return;
            }
            unitStatusPopUpWindow = new UnitStatusPopUpWindow();
            unitStatusPopUpWindow.unit = param1;
            this.popupWindow(unitStatusPopUpWindow, false);
            return;
        }// end function

        public function init(param1:Boolean) : void
        {
            yinUnit = new UnitVO();
            yangUnit = new UnitVO();
            description = Utils.i18n("normalUnionSelectYangUnit");
            leyLine = param1;
            return;
        }// end function

        private function closeNormalUnion() : void
        {
            yinUnit = new UnitVO();
            yangUnit = new UnitVO();
            sendEvent(NORMAL_UNION_END);
            return;
        }// end function

        private function _NormalUnionWindow_ClassFactory2_c() : ClassFactory
        {
            var _loc_1:* = new ClassFactory();
            _loc_1.generator = UnitDetailLabelRenderer;
            return _loc_1;
        }// end function

        private function _NormalUnionWindow_DataGridColumn2_i() : DataGridColumn
        {
            var _loc_1:* = new DataGridColumn();
            _NormalUnionWindow_DataGridColumn2 = _loc_1;
            _loc_1.dataField = "name";
            _loc_1.itemRenderer = _NormalUnionWindow_ClassFactory1_c();
            _loc_1.width = 80;
            BindingManager.executeBindings(this, "_NormalUnionWindow_DataGridColumn2", _NormalUnionWindow_DataGridColumn2);
            return _loc_1;
        }// end function

        private function _NormalUnionWindow_DataGridColumn11_i() : DataGridColumn
        {
            var _loc_1:* = new DataGridColumn();
            _NormalUnionWindow_DataGridColumn11 = _loc_1;
            _loc_1.dataField = "luck";
            _loc_1.width = 30;
            _loc_1.setStyle("textAlign", "center");
            BindingManager.executeBindings(this, "_NormalUnionWindow_DataGridColumn11", _NormalUnionWindow_DataGridColumn11);
            return _loc_1;
        }// end function

        private function get yinNecessarySoul() : int
        {
            return this._1243907876yinNecessarySoul;
        }// end function

        private function _NormalUnionWindow_DataGridColumn19_i() : DataGridColumn
        {
            var _loc_1:* = new DataGridColumn();
            _NormalUnionWindow_DataGridColumn19 = _loc_1;
            _loc_1.dataField = "agility";
            _loc_1.width = 30;
            _loc_1.setStyle("textAlign", "center");
            BindingManager.executeBindings(this, "_NormalUnionWindow_DataGridColumn19", _NormalUnionWindow_DataGridColumn19);
            return _loc_1;
        }// end function

        public function set yangUnitCanvas(param1:Canvas) : void
        {
            var _loc_2:* = this._891986333yangUnitCanvas;
            if (_loc_2 !== param1)
            {
                this._891986333yangUnitCanvas = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "yangUnitCanvas", _loc_2, param1));
            }
            return;
        }// end function

        private function _NormalUnionWindow_DataGridColumn22_i() : DataGridColumn
        {
            var _loc_1:* = new DataGridColumn();
            _NormalUnionWindow_DataGridColumn22 = _loc_1;
            _loc_1.dataField = "luck";
            _loc_1.width = 30;
            _loc_1.setStyle("textAlign", "center");
            BindingManager.executeBindings(this, "_NormalUnionWindow_DataGridColumn22", _NormalUnionWindow_DataGridColumn22);
            return _loc_1;
        }// end function

        private function set yangNecessarySoul(param1:int) : void
        {
            var _loc_2:* = this._654690143yangNecessarySoul;
            if (_loc_2 !== param1)
            {
                this._654690143yangNecessarySoul = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "yangNecessarySoul", _loc_2, param1));
            }
            return;
        }// end function

        private function _NormalUnionWindow_DataGridColumn1_i() : DataGridColumn
        {
            var _loc_1:* = new DataGridColumn();
            _NormalUnionWindow_DataGridColumn1 = _loc_1;
            _loc_1.width = 50;
            BindingManager.executeBindings(this, "_NormalUnionWindow_DataGridColumn1", _NormalUnionWindow_DataGridColumn1);
            return _loc_1;
        }// end function

        public function get descriptionText() : Text
        {
            return this._985849673descriptionText;
        }// end function

        private function _NormalUnionWindow_DataGridColumn10_i() : DataGridColumn
        {
            var _loc_1:* = new DataGridColumn();
            _NormalUnionWindow_DataGridColumn10 = _loc_1;
            _loc_1.dataField = "intelligence";
            _loc_1.width = 30;
            _loc_1.setStyle("textAlign", "center");
            BindingManager.executeBindings(this, "_NormalUnionWindow_DataGridColumn10", _NormalUnionWindow_DataGridColumn10);
            return _loc_1;
        }// end function

        private function _NormalUnionWindow_DataGridColumn9_i() : DataGridColumn
        {
            var _loc_1:* = new DataGridColumn();
            _NormalUnionWindow_DataGridColumn9 = _loc_1;
            _loc_1.dataField = "defense";
            _loc_1.width = 30;
            _loc_1.setStyle("textAlign", "center");
            BindingManager.executeBindings(this, "_NormalUnionWindow_DataGridColumn9", _NormalUnionWindow_DataGridColumn9);
            return _loc_1;
        }// end function

        private function _NormalUnionWindow_ClassFactory1_c() : ClassFactory
        {
            var _loc_1:* = new ClassFactory();
            _loc_1.generator = UnitDetailLabelRenderer;
            return _loc_1;
        }// end function

        private function _NormalUnionWindow_DataGridColumn18_i() : DataGridColumn
        {
            var _loc_1:* = new DataGridColumn();
            _NormalUnionWindow_DataGridColumn18 = _loc_1;
            _loc_1.dataField = "tech";
            _loc_1.width = 30;
            _loc_1.setStyle("textAlign", "center");
            BindingManager.executeBindings(this, "_NormalUnionWindow_DataGridColumn18", _NormalUnionWindow_DataGridColumn18);
            return _loc_1;
        }// end function

        public function ___NormalUnionWindow_Image1_click(event:MouseEvent) : void
        {
            closeNormalUnion();
            return;
        }// end function

        private function _NormalUnionWindow_DataGridColumn21_i() : DataGridColumn
        {
            var _loc_1:* = new DataGridColumn();
            _NormalUnionWindow_DataGridColumn21 = _loc_1;
            _loc_1.dataField = "intelligence";
            _loc_1.width = 30;
            _loc_1.setStyle("textAlign", "center");
            BindingManager.executeBindings(this, "_NormalUnionWindow_DataGridColumn21", _NormalUnionWindow_DataGridColumn21);
            return _loc_1;
        }// end function

        public function set yinUnitList(param1:DataGrid) : void
        {
            var _loc_2:* = this._973379008yinUnitList;
            if (_loc_2 !== param1)
            {
                this._973379008yinUnitList = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "yinUnitList", _loc_2, param1));
            }
            return;
        }// end function

        public function set soulCrystal(param1:int) : void
        {
            _soulCrystal = param1;
            return;
        }// end function

        override public function initialize() : void
        {
            var target:NormalUnionWindow;
            var watcherSetupUtilClass:Object;
            .mx_internal::setDocumentDescriptor(_documentDescriptor_);
            var bindings:* = _NormalUnionWindow_bindingsSetup();
            var watchers:Array;
            target;
            if (_watcherSetupUtil == null)
            {
                watcherSetupUtilClass = getDefinitionByName("_com_kbmj_viking_view_home_NormalUnionWindowWatcherSetupUtil");
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

        private function _NormalUnionWindow_DataGridColumn8_i() : DataGridColumn
        {
            var _loc_1:* = new DataGridColumn();
            _NormalUnionWindow_DataGridColumn8 = _loc_1;
            _loc_1.dataField = "agility";
            _loc_1.width = 30;
            _loc_1.setStyle("textAlign", "center");
            BindingManager.executeBindings(this, "_NormalUnionWindow_DataGridColumn8", _NormalUnionWindow_DataGridColumn8);
            return _loc_1;
        }// end function

        private function _NormalUnionWindow_DataGridColumn17_i() : DataGridColumn
        {
            var _loc_1:* = new DataGridColumn();
            _NormalUnionWindow_DataGridColumn17 = _loc_1;
            _loc_1.dataField = "strength";
            _loc_1.width = 30;
            _loc_1.setStyle("textAlign", "center");
            BindingManager.executeBindings(this, "_NormalUnionWindow_DataGridColumn17", _NormalUnionWindow_DataGridColumn17);
            return _loc_1;
        }// end function

        private function startIndex() : void
        {
            viewStack.selectedIndex = 0;
            sendPopupEvent(REMOVE_UNIT_SWF, {unit:yangUnit});
            sendPopupEvent(REMOVE_UNIT_SWF, {unit:yinUnit});
            yinUnit = new UnitVO();
            yangUnit = new UnitVO();
            description = Utils.i18n("normalUnionSelectYangUnit");
            yangNecessarySoul = 0;
            yinNecessarySoul = 0;
            yangUnitCanvas.visible = false;
            yinUnitCanvas.visible = false;
            return;
        }// end function

        public function ___NormalUnionWindow_Label1_click(event:MouseEvent) : void
        {
            onClick(yangUnit);
            return;
        }// end function

        private function getColor(param1:int, param2:int) : uint
        {
            if (param1 == 0)
            {
                return 0;
            }
            return param1 + param2 > _soulCrystal ? (15073298) : (0);
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

        private function _NormalUnionWindow_DataGridColumn20_i() : DataGridColumn
        {
            var _loc_1:* = new DataGridColumn();
            _NormalUnionWindow_DataGridColumn20 = _loc_1;
            _loc_1.dataField = "defense";
            _loc_1.width = 30;
            _loc_1.setStyle("textAlign", "center");
            BindingManager.executeBindings(this, "_NormalUnionWindow_DataGridColumn20", _NormalUnionWindow_DataGridColumn20);
            return _loc_1;
        }// end function

        public function get yangUnitCanvas() : Canvas
        {
            return this._891986333yangUnitCanvas;
        }// end function

        public function get yinUnitList() : DataGrid
        {
            return this._973379008yinUnitList;
        }// end function

        private function addLeyLineEffect(param1:int) : int
        {
            return param1 - Math.ceil(param1 * 0.1);
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

        private function set yangUnit(param1:UnitVO) : void
        {
            var _loc_2:* = this._432832539yangUnit;
            if (_loc_2 !== param1)
            {
                this._432832539yangUnit = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "yangUnit", _loc_2, param1));
            }
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

        public function addSelectIndex(param1:Object) : void
        {
            var data:* = param1;
            if (viewStack.selectedIndex == 0)
            {
                yangUnit = new UnitVO();
                yangUnit = UnitVO(data);
                yinCandidateUnit = new Array();
                yinCandidateUnit = _homeAllUnits.filter(function (param1:UnitVO, param2:int, param3:Array) : Boolean
            {
                return param1.unitId != yangUnit.unitId;
            }// end function
            );
                description = Utils.i18n("normalUnionSelectYinUnit");
                yangNecessarySoul = necessaryUnionSoul(yangUnit);
                yangUnitCanvas.visible = true;
                sendPopupEvent(ADD_UNIT_SWF, {unit:yangUnit, type:"yang"});
                var _loc_3:* = viewStack;
                var _loc_4:* = viewStack.selectedIndex + 1;
                _loc_3.selectedIndex = _loc_4;
            }
            else if (viewStack.selectedIndex == 1)
            {
                yinUnit = new UnitVO();
                yinUnit = UnitVO(data);
                description = "";
                yinNecessarySoul = necessaryUnionSoul(yinUnit);
                yinUnitCanvas.visible = true;
                checkUnionWindow.yangUnit = yangUnit;
                checkUnionWindow.yinUnit = yinUnit;
                checkUnionWindow.init();
                this.popupWindow(checkUnionWindow, false);
                sendPopupEvent(ADD_UNIT_SWF, {unit:yinUnit, type:"yin"});
                if (yangNecessarySoul + yinNecessarySoul > _soulCrystal)
                {
                    checkUnionWindow.viewStack.selectedIndex = 1;
                }
            }
            return;
        }// end function

        private function set yinCandidateUnit(param1:Array) : void
        {
            var _loc_2:* = this._2126098153yinCandidateUnit;
            if (_loc_2 !== param1)
            {
                this._2126098153yinCandidateUnit = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "yinCandidateUnit", _loc_2, param1));
            }
            return;
        }// end function

        public function ___NormalUnionWindow_PopupWindow1_creationComplete(event:FlexEvent) : void
        {
            createComp();
            return;
        }// end function

        private function get _swf_back() : MovieClipLoaderAsset
        {
            return this._100077085_swf_back;
        }// end function

        private function _NormalUnionWindow_DataGridColumn7_i() : DataGridColumn
        {
            var _loc_1:* = new DataGridColumn();
            _NormalUnionWindow_DataGridColumn7 = _loc_1;
            _loc_1.dataField = "tech";
            _loc_1.width = 30;
            _loc_1.setStyle("textAlign", "center");
            BindingManager.executeBindings(this, "_NormalUnionWindow_DataGridColumn7", _NormalUnionWindow_DataGridColumn7);
            return _loc_1;
        }// end function

        private function get yangUnit() : UnitVO
        {
            return this._432832539yangUnit;
        }// end function

        private function _NormalUnionWindow_DataGridColumn16_c() : DataGridColumn
        {
            var _loc_1:* = new DataGridColumn();
            _loc_1.dataField = "hp";
            _loc_1.headerText = "HP";
            _loc_1.width = 40;
            _loc_1.setStyle("textAlign", "center");
            return _loc_1;
        }// end function

        public function set totalSoulSize(param1:Text) : void
        {
            var _loc_2:* = this._1766773752totalSoulSize;
            if (_loc_2 !== param1)
            {
                this._1766773752totalSoulSize = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "totalSoulSize", _loc_2, param1));
            }
            return;
        }// end function

        public function set yinUnitCanvas(param1:Canvas) : void
        {
            var _loc_2:* = this._1150838278yinUnitCanvas;
            if (_loc_2 !== param1)
            {
                this._1150838278yinUnitCanvas = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "yinUnitCanvas", _loc_2, param1));
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

        public function get yinUnitCanvas() : Canvas
        {
            return this._1150838278yinUnitCanvas;
        }// end function

        private function get description() : String
        {
            return this._1724546052description;
        }// end function

        public function get totalSoulSize() : Text
        {
            return this._1766773752totalSoulSize;
        }// end function

        public static function set watcherSetupUtil(param1:IWatcherSetupUtil) : void
        {
            NormalUnionWindow._watcherSetupUtil = param1;
            return;
        }// end function

    }
}
