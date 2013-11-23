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
    import mx.managers.*;

    public class CollectUnitWindow extends Canvas implements IBindingClient
    {
        public var _CollectUnitWindow_Text2:Text;
        public var _CollectUnitWindow_Text3:Text;
        private var _1720059900unitCanvas:Canvas;
        private var _281230495_swf_ok_training:MovieClipLoaderAsset;
        var _bindingsByDestination:Object;
        private var _1193840764_swf_close:MovieClipLoaderAsset;
        private var _1285004149quantity:NumericStepper;
        private var _1029693905counterBox:VBox;
        private var trainingFlag:Boolean;
        private var unitStatus:UnitStatus;
        private var _1896677185windowLayer:Canvas;
        private var _1345645291listText:Text;
        private var _1053257947countLabel:ClassFactory;
        private var _defArray:Array;
        private var _292905918unitList:DataGrid;
        var _watchers:Array;
        private var _embed_mxml__swf_common_button_close_window_swf_1370265653:Class;
        private var _981562685_swf_close_training:MovieClipLoaderAsset;
        private var _1988954698_unitArray:ArrayCollection;
        public var _CollectUnitWindow_DataGridColumn1:DataGridColumn;
        public var _CollectUnitWindow_DataGridColumn2:DataGridColumn;
        public var _CollectUnitWindow_DataGridColumn4:DataGridColumn;
        private var _1463764368_units:Array;
        public var _CollectUnitWindow_DataGridColumn6:DataGridColumn;
        private var _2113345169trainingBox:HBox;
        private var _1557746809actionCount:int = 0;
        public var _CollectUnitWindow_Image1:Image;
        public var _CollectUnitWindow_Image2:Image;
        public var _CollectUnitWindow_Image3:Image;
        public var _CollectUnitWindow_Image4:Image;
        private var _1234553766listTitle:Label;
        private var _1089717543trainingText:Text;
        var _bindingsBeginWithWord:Object;
        private var _1818888664_swf_ok:MovieClipLoaderAsset;
        var _bindings:Array;
        private var _1958883625expLabel:ClassFactory;
        private var _documentDescriptor_:UIComponentDescriptor;
        private var selectedIndex:int = 99;
        private static var _watcherSetupUtil:IWatcherSetupUtil;
        public static const CLOSE_UNIT_LIST:String = "CollectUnitWindow/closeUnitList";
        public static const SELECTED:String = "CollectUnitWindow/Selected";

        public function CollectUnitWindow()
        {
            _documentDescriptor_ = new UIComponentDescriptor({type:Canvas, propertiesFactory:function () : Object
            {
                return {height:600, width:760, childDescriptors:[new UIComponentDescriptor({type:Canvas, id:"windowLayer"}), new UIComponentDescriptor({type:Canvas, id:"unitCanvas", propertiesFactory:function () : Object
                {
                    return {childDescriptors:[new UIComponentDescriptor({type:Label, id:"listTitle", stylesFactory:function () : void
                    {
                        this.fontSize = 14;
                        this.fontWeight = "bold";
                        this.color = 16777215;
                        return;
                    }// end function
                    , propertiesFactory:function () : Object
                    {
                        return {text:"", x:335, y:80};
                    }// end function
                    }), new UIComponentDescriptor({type:Text, id:"listText", stylesFactory:function () : void
                    {
                        this.top = "108";
                        this.left = "35";
                        return;
                    }// end function
                    , propertiesFactory:function () : Object
                    {
                        return {styleName:"UnitSelectText"};
                    }// end function
                    }), new UIComponentDescriptor({type:Canvas, propertiesFactory:function () : Object
                    {
                        return {x:35, y:50, childDescriptors:[new UIComponentDescriptor({type:DataGrid, id:"unitList", events:{click:"__unitList_click"}, stylesFactory:function () : void
                        {
                            this.right = "25";
                            this.top = "80";
                            return;
                        }// end function
                        , propertiesFactory:function () : Object
                        {
                            return {width:640, rowCount:13, rowHeight:25, styleName:"UnitListGrid", sortableColumns:false, columns:[_CollectUnitWindow_DataGridColumn1_i(), _CollectUnitWindow_DataGridColumn2_i(), _CollectUnitWindow_DataGridColumn3_c(), _CollectUnitWindow_DataGridColumn4_i(), _CollectUnitWindow_DataGridColumn5_c(), _CollectUnitWindow_DataGridColumn6_i()]};
                        }// end function
                        })]};
                    }// end function
                    }), new UIComponentDescriptor({type:Canvas, propertiesFactory:function () : Object
                    {
                        return {x:32, y:491, width:620, childDescriptors:[new UIComponentDescriptor({type:VBox, id:"counterBox", stylesFactory:function () : void
                        {
                            this.horizontalCenter = "0";
                            this.horizontalGap = 10;
                            return;
                        }// end function
                        , propertiesFactory:function () : Object
                        {
                            return {childDescriptors:[new UIComponentDescriptor({type:HBox, stylesFactory:function () : void
                            {
                                this.horizontalCenter = "0";
                                this.horizontalGap = 20;
                                return;
                            }// end function
                            , propertiesFactory:function () : Object
                            {
                                return {childDescriptors:[new UIComponentDescriptor({type:Text, id:"_CollectUnitWindow_Text2", propertiesFactory:function () : Object
                                {
                                    return {styleName:"UnitSelectText"};
                                }// end function
                                }), new UIComponentDescriptor({type:NumericStepper, id:"quantity", stylesFactory:function () : void
                                {
                                    this.cornerRadius = 0;
                                    this.borderColor = 10058583;
                                    this.iconColor = 5318420;
                                    this.color = 734012;
                                    this.themeColor = 16737843;
                                    return;
                                }// end function
                                , propertiesFactory:function () : Object
                                {
                                    return {x:500, y:525, minimum:1, value:1};
                                }// end function
                                }), new UIComponentDescriptor({type:Text, id:"_CollectUnitWindow_Text3", propertiesFactory:function () : Object
                                {
                                    return {styleName:"UnitSelectText"};
                                }// end function
                                }), new UIComponentDescriptor({type:Image, id:"_CollectUnitWindow_Image1", events:{click:"___CollectUnitWindow_Image1_click"}, propertiesFactory:function () : Object
                                {
                                    return {width:110, height:30};
                                }// end function
                                }), new UIComponentDescriptor({type:Image, id:"_CollectUnitWindow_Image2", events:{click:"___CollectUnitWindow_Image2_click"}, propertiesFactory:function () : Object
                                {
                                    return {width:110, height:30};
                                }// end function
                                })]};
                            }// end function
                            })]};
                        }// end function
                        }), new UIComponentDescriptor({type:HBox, id:"trainingBox", stylesFactory:function () : void
                        {
                            this.horizontalCenter = "0";
                            this.horizontalGap = 15;
                            return;
                        }// end function
                        , propertiesFactory:function () : Object
                        {
                            return {visible:false, childDescriptors:[new UIComponentDescriptor({type:Text, id:"trainingText", propertiesFactory:function () : Object
                            {
                                return {styleName:"UnitSelectText"};
                            }// end function
                            }), new UIComponentDescriptor({type:Image, id:"_CollectUnitWindow_Image3", events:{click:"___CollectUnitWindow_Image3_click"}, propertiesFactory:function () : Object
                            {
                                return {width:110, height:30};
                            }// end function
                            }), new UIComponentDescriptor({type:Image, id:"_CollectUnitWindow_Image4", events:{click:"___CollectUnitWindow_Image4_click"}, propertiesFactory:function () : Object
                            {
                                return {width:110, height:30};
                            }// end function
                            })]};
                        }// end function
                        })]};
                    }// end function
                    }), new UIComponentDescriptor({type:Canvas, propertiesFactory:function () : Object
                    {
                        return {x:665, y:50, childDescriptors:[new UIComponentDescriptor({type:Image, events:{click:"___CollectUnitWindow_Image5_click"}, stylesFactory:function () : void
                        {
                            this.top = "30";
                            return;
                        }// end function
                        , propertiesFactory:function () : Object
                        {
                            return {source:_embed_mxml__swf_common_button_close_window_swf_1370265653};
                        }// end function
                        })]};
                    }// end function
                    })]};
                }// end function
                })]};
            }// end function
            });
            _defArray = new Array();
            unitStatus = new UnitStatus();
            _1818888664_swf_ok = new Viking.EmbedSwfButtonCommon();
            _281230495_swf_ok_training = new Viking.EmbedSwfButtonCommon();
            _1193840764_swf_close = new Viking.EmbedSwfButtonCommon();
            _981562685_swf_close_training = new Viking.EmbedSwfButtonCommon();
            _embed_mxml__swf_common_button_close_window_swf_1370265653 = CollectUnitWindow__embed_mxml__swf_common_button_close_window_swf_1370265653;
            _bindings = [];
            _watchers = [];
            _bindingsByDestination = {};
            _bindingsBeginWithWord = {};
            mx_internal::_document = this;
            this.x = 5;
            this.y = 5;
            this.height = 600;
            this.width = 760;
            _CollectUnitWindow_ClassFactory2_i();
            _CollectUnitWindow_ClassFactory1_i();
            return;
        }// end function

        public function ___CollectUnitWindow_Image5_click(event:MouseEvent) : void
        {
            onClose();
            return;
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

        public function get unitCanvas() : Canvas
        {
            return this._1720059900unitCanvas;
        }// end function

        private function _CollectUnitWindow_bindingsSetup() : Array
        {
            var binding:Binding;
            var result:Array;
            binding = new Binding(this, function () : String
            {
                var _loc_1:* = Utils.i18n("collectUnitSelectActionUnit");
                var _loc_2:* = _loc_1 == undefined ? (null) : (String(_loc_1));
                return _loc_2;
            }// end function
            , function (param1:String) : void
            {
                listText.text = param1;
                return;
            }// end function
            , "listText.text");
            result[0] = binding;
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
            result[1] = binding;
            binding = new Binding(this, function () : String
            {
                var _loc_1:* = Utils.i18n("generalName");
                var _loc_2:* = _loc_1 == undefined ? (null) : (String(_loc_1));
                return _loc_2;
            }// end function
            , function (param1:String) : void
            {
                _CollectUnitWindow_DataGridColumn1.headerText = param1;
                return;
            }// end function
            , "_CollectUnitWindow_DataGridColumn1.headerText");
            result[2] = binding;
            binding = new Binding(this, function () : String
            {
                var _loc_1:* = Utils.i18n("generalJob");
                var _loc_2:* = _loc_1 == undefined ? (null) : (String(_loc_1));
                return _loc_2;
            }// end function
            , function (param1:String) : void
            {
                _CollectUnitWindow_DataGridColumn2.headerText = param1;
                return;
            }// end function
            , "_CollectUnitWindow_DataGridColumn2.headerText");
            result[3] = binding;
            binding = new Binding(this, function () : String
            {
                var _loc_1:* = Utils.i18n("generalExp");
                var _loc_2:* = _loc_1 == undefined ? (null) : (String(_loc_1));
                return _loc_2;
            }// end function
            , function (param1:String) : void
            {
                _CollectUnitWindow_DataGridColumn4.headerText = param1;
                return;
            }// end function
            , "_CollectUnitWindow_DataGridColumn4.headerText");
            result[4] = binding;
            binding = new Binding(this, function () : IFactory
            {
                return expLabel;
            }// end function
            , function (param1:IFactory) : void
            {
                _CollectUnitWindow_DataGridColumn4.itemRenderer = param1;
                return;
            }// end function
            , "_CollectUnitWindow_DataGridColumn4.itemRenderer");
            result[5] = binding;
            binding = new Binding(this, function () : String
            {
                var _loc_1:* = Utils.i18n("collectUnitMaxActionCount");
                var _loc_2:* = _loc_1 == undefined ? (null) : (String(_loc_1));
                return _loc_2;
            }// end function
            , function (param1:String) : void
            {
                _CollectUnitWindow_DataGridColumn6.headerText = param1;
                return;
            }// end function
            , "_CollectUnitWindow_DataGridColumn6.headerText");
            result[6] = binding;
            binding = new Binding(this, function () : IFactory
            {
                return countLabel;
            }// end function
            , function (param1:IFactory) : void
            {
                _CollectUnitWindow_DataGridColumn6.itemRenderer = param1;
                return;
            }// end function
            , "_CollectUnitWindow_DataGridColumn6.itemRenderer");
            result[7] = binding;
            binding = new Binding(this, function () : String
            {
                var _loc_1:* = Utils.i18n("collectUnitSelectedUnit", unitList.selectedItem.name);
                var _loc_2:* = _loc_1 == undefined ? (null) : (String(_loc_1));
                return _loc_2;
            }// end function
            , function (param1:String) : void
            {
                _CollectUnitWindow_Text2.text = param1;
                return;
            }// end function
            , "_CollectUnitWindow_Text2.text");
            result[8] = binding;
            binding = new Binding(this, function () : Number
            {
                return actionCount;
            }// end function
            , function (param1:Number) : void
            {
                quantity.maximum = param1;
                return;
            }// end function
            , "quantity.maximum");
            result[9] = binding;
            binding = new Binding(this, function () : String
            {
                var _loc_1:* = Utils.i18n("collectUnitSelectedActionCount");
                var _loc_2:* = _loc_1 == undefined ? (null) : (String(_loc_1));
                return _loc_2;
            }// end function
            , function (param1:String) : void
            {
                _CollectUnitWindow_Text3.text = param1;
                return;
            }// end function
            , "_CollectUnitWindow_Text3.text");
            result[10] = binding;
            binding = new Binding(this, function () : Object
            {
                return _swf_ok;
            }// end function
            , function (param1:Object) : void
            {
                _CollectUnitWindow_Image1.source = param1;
                return;
            }// end function
            , "_CollectUnitWindow_Image1.source");
            result[11] = binding;
            binding = new Binding(this, function () : Object
            {
                return _swf_close;
            }// end function
            , function (param1:Object) : void
            {
                _CollectUnitWindow_Image2.source = param1;
                return;
            }// end function
            , "_CollectUnitWindow_Image2.source");
            result[12] = binding;
            binding = new Binding(this, function () : String
            {
                var _loc_1:* = Utils.i18n("collectUnitTraining", unitList.selectedItem.name);
                var _loc_2:* = _loc_1 == undefined ? (null) : (String(_loc_1));
                return _loc_2;
            }// end function
            , function (param1:String) : void
            {
                trainingText.text = param1;
                return;
            }// end function
            , "trainingText.text");
            result[13] = binding;
            binding = new Binding(this, function () : Object
            {
                return _swf_ok_training;
            }// end function
            , function (param1:Object) : void
            {
                _CollectUnitWindow_Image3.source = param1;
                return;
            }// end function
            , "_CollectUnitWindow_Image3.source");
            result[14] = binding;
            binding = new Binding(this, function () : Object
            {
                return _swf_close_training;
            }// end function
            , function (param1:Object) : void
            {
                _CollectUnitWindow_Image4.source = param1;
                return;
            }// end function
            , "_CollectUnitWindow_Image4.source");
            result[15] = binding;
            return result;
        }// end function

        public function init() : void
        {
            MovieClip(Loader(_swf_ok.getChildAt(0)).content).gotoAndPlay(0);
            MovieClip(Loader(_swf_ok.getChildAt(0)).content).gotoAndPlay("button_decide");
            MovieClip(Loader(_swf_ok_training.getChildAt(0)).content).gotoAndPlay(0);
            MovieClip(Loader(_swf_ok_training.getChildAt(0)).content).gotoAndPlay("button_decide");
            MovieClip(Loader(_swf_close.getChildAt(0)).content).gotoAndPlay(0);
            MovieClip(Loader(_swf_close.getChildAt(0)).content).gotoAndPlay("button_close");
            MovieClip(Loader(_swf_close_training.getChildAt(0)).content).gotoAndPlay(0);
            MovieClip(Loader(_swf_close_training.getChildAt(0)).content).gotoAndPlay("button_close");
            return;
        }// end function

        private function _CollectUnitWindow_ClassFactory3_c() : ClassFactory
        {
            var _loc_1:* = new ClassFactory();
            _loc_1.generator = UnitDetailLabelRenderer;
            return _loc_1;
        }// end function

        private function onItemClick() : void
        {
            var _loc_1:int = 0;
            if (unitList.selectedItem)
            {
                selectedIndex = unitList.selectedIndex;
                _loc_1 = trainingFlag ? (1) : (quantity.value);
                this.dispatchEvent(new PopupEvent(SELECTED, {unitId:unitList.selectedItem.unitId, quantity:_loc_1}));
            }
            return;
        }// end function

        private function _CollectUnitWindow_bindingExprs() : void
        {
            var _loc_1:* = undefined;
            _loc_1 = Utils.i18n("collectUnitSelectActionUnit");
            _loc_1 = _unitArray;
            _loc_1 = Utils.i18n("generalName");
            _loc_1 = Utils.i18n("generalJob");
            _loc_1 = Utils.i18n("generalExp");
            _loc_1 = expLabel;
            _loc_1 = Utils.i18n("collectUnitMaxActionCount");
            _loc_1 = countLabel;
            _loc_1 = Utils.i18n("collectUnitSelectedUnit", unitList.selectedItem.name);
            _loc_1 = actionCount;
            _loc_1 = Utils.i18n("collectUnitSelectedActionCount");
            _loc_1 = _swf_ok;
            _loc_1 = _swf_close;
            _loc_1 = Utils.i18n("collectUnitTraining", unitList.selectedItem.name);
            _loc_1 = _swf_ok_training;
            _loc_1 = _swf_close_training;
            return;
        }// end function

        public function set quantity(param1:NumericStepper) : void
        {
            var _loc_2:* = this._1285004149quantity;
            if (_loc_2 !== param1)
            {
                this._1285004149quantity = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "quantity", _loc_2, param1));
            }
            return;
        }// end function

        public function set trainingBox(param1:HBox) : void
        {
            var _loc_2:* = this._2113345169trainingBox;
            if (_loc_2 !== param1)
            {
                this._2113345169trainingBox = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "trainingBox", _loc_2, param1));
            }
            return;
        }// end function

        public function get countLabel() : ClassFactory
        {
            return this._1053257947countLabel;
        }// end function

        public function get trainingText() : Text
        {
            return this._1089717543trainingText;
        }// end function

        public function __unitList_click(event:MouseEvent) : void
        {
            calcuCount();
            return;
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
                actionCount = setAcitonCount(unitList.selectedItem.level);
            }
            return;
        }// end function

        public function get counterBox() : VBox
        {
            return this._1029693905counterBox;
        }// end function

        private function _CollectUnitWindow_DataGridColumn4_i() : DataGridColumn
        {
            var _loc_1:* = new DataGridColumn();
            _CollectUnitWindow_DataGridColumn4 = _loc_1;
            _loc_1.dataField = "exp";
            _loc_1.width = 90;
            _loc_1.setStyle("textAlign", "center");
            BindingManager.executeBindings(this, "_CollectUnitWindow_DataGridColumn4", _CollectUnitWindow_DataGridColumn4);
            return _loc_1;
        }// end function

        private function get _swf_close_training() : MovieClipLoaderAsset
        {
            return this._981562685_swf_close_training;
        }// end function

        public function setAcitonCount(param1:int) : int
        {
            if (param1 < 10)
            {
                return 60;
            }
            if (param1 < 20)
            {
                return 120;
            }
            return 180;
        }// end function

        public function get unitList() : DataGrid
        {
            return this._292905918unitList;
        }// end function

        public function ___CollectUnitWindow_Image2_click(event:MouseEvent) : void
        {
            onClose();
            return;
        }// end function

        private function _CollectUnitWindow_ClassFactory2_i() : ClassFactory
        {
            var _loc_1:* = new ClassFactory();
            countLabel = _loc_1;
            _loc_1.generator = CollectUnitWindow_inlineComponent2;
            _loc_1.properties = {outerDocument:this};
            return _loc_1;
        }// end function

        public function set trainingText(param1:Text) : void
        {
            var _loc_2:* = this._1089717543trainingText;
            if (_loc_2 !== param1)
            {
                this._1089717543trainingText = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "trainingText", _loc_2, param1));
            }
            return;
        }// end function

        public function get windowLayer() : Canvas
        {
            return this._1896677185windowLayer;
        }// end function

        public function get listTitle() : Label
        {
            return this._1234553766listTitle;
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

        private function get _swf_ok_training() : MovieClipLoaderAsset
        {
            return this._281230495_swf_ok_training;
        }// end function

        public function onClose() : void
        {
            PopUpManager.removePopUp(this);
            dispatchEvent(new Event(CLOSE_UNIT_LIST));
            return;
        }// end function

        public function set countLabel(param1:ClassFactory) : void
        {
            var _loc_2:* = this._1053257947countLabel;
            if (_loc_2 !== param1)
            {
                this._1053257947countLabel = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "countLabel", _loc_2, param1));
            }
            return;
        }// end function

        public function get units() : Array
        {
            return _units;
        }// end function

        private function get _units() : Array
        {
            return this._1463764368_units;
        }// end function

        private function _CollectUnitWindow_DataGridColumn3_c() : DataGridColumn
        {
            var _loc_1:* = new DataGridColumn();
            _loc_1.dataField = "level";
            _loc_1.headerText = "Lv";
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

        private function get actionCount() : int
        {
            return this._1557746809actionCount;
        }// end function

        private function set _swf_close_training(param1:MovieClipLoaderAsset) : void
        {
            var _loc_2:* = this._981562685_swf_close_training;
            if (_loc_2 !== param1)
            {
                this._981562685_swf_close_training = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "_swf_close_training", _loc_2, param1));
            }
            return;
        }// end function

        public function ___CollectUnitWindow_Image3_click(event:MouseEvent) : void
        {
            onItemClick();
            return;
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

        private function get _swf_close() : MovieClipLoaderAsset
        {
            return this._1193840764_swf_close;
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

        private function _CollectUnitWindow_ClassFactory1_i() : ClassFactory
        {
            var _loc_1:* = new ClassFactory();
            expLabel = _loc_1;
            _loc_1.generator = CollectUnitWindow_inlineComponent1;
            _loc_1.properties = {outerDocument:this};
            return _loc_1;
        }// end function

        public function get quantity() : NumericStepper
        {
            return this._1285004149quantity;
        }// end function

        override public function initialize() : void
        {
            var target:CollectUnitWindow;
            var watcherSetupUtilClass:Object;
            .mx_internal::setDocumentDescriptor(_documentDescriptor_);
            var bindings:* = _CollectUnitWindow_bindingsSetup();
            var watchers:Array;
            target;
            if (_watcherSetupUtil == null)
            {
                watcherSetupUtilClass = getDefinitionByName("_com_kbmj_viking_view_home_CollectUnitWindowWatcherSetupUtil");
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

        public function get trainingBox() : HBox
        {
            return this._2113345169trainingBox;
        }// end function

        public function set listTitle(param1:Label) : void
        {
            var _loc_2:* = this._1234553766listTitle;
            if (_loc_2 !== param1)
            {
                this._1234553766listTitle = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "listTitle", _loc_2, param1));
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

        private function _CollectUnitWindow_DataGridColumn2_i() : DataGridColumn
        {
            var _loc_1:* = new DataGridColumn();
            _CollectUnitWindow_DataGridColumn2 = _loc_1;
            _loc_1.dataField = "jobMasterVO.nameLabel";
            _loc_1.width = 115;
            _loc_1.setStyle("textAlign", "center");
            BindingManager.executeBindings(this, "_CollectUnitWindow_DataGridColumn2", _CollectUnitWindow_DataGridColumn2);
            return _loc_1;
        }// end function

        private function _CollectUnitWindow_DataGridColumn6_i() : DataGridColumn
        {
            var _loc_1:* = new DataGridColumn();
            _CollectUnitWindow_DataGridColumn6 = _loc_1;
            _loc_1.dataField = "level";
            _loc_1.width = 90;
            _loc_1.setStyle("textAlign", "center");
            BindingManager.executeBindings(this, "_CollectUnitWindow_DataGridColumn6", _CollectUnitWindow_DataGridColumn6);
            return _loc_1;
        }// end function

        private function get _unitArray() : ArrayCollection
        {
            return this._1988954698_unitArray;
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

        public function ___CollectUnitWindow_Image4_click(event:MouseEvent) : void
        {
            onClose();
            return;
        }// end function

        public function training(param1:Boolean) : void
        {
            trainingFlag = param1;
            if (param1)
            {
                counterBox.visible = false;
                trainingBox.visible = true;
            }
            else
            {
                counterBox.visible = true;
                trainingBox.visible = false;
            }
            return;
        }// end function

        public function set units(param1:Array) : void
        {
            _units = param1;
            setUnits();
            return;
        }// end function

        private function get _swf_ok() : MovieClipLoaderAsset
        {
            return this._1818888664_swf_ok;
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

        public function get expLabel() : ClassFactory
        {
            return this._1958883625expLabel;
        }// end function

        public function get listText() : Text
        {
            return this._1345645291listText;
        }// end function

        private function set _swf_ok_training(param1:MovieClipLoaderAsset) : void
        {
            var _loc_2:* = this._281230495_swf_ok_training;
            if (_loc_2 !== param1)
            {
                this._281230495_swf_ok_training = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "_swf_ok_training", _loc_2, param1));
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

        private function _CollectUnitWindow_DataGridColumn5_c() : DataGridColumn
        {
            var _loc_1:* = new DataGridColumn();
            _loc_1.dataField = "maxHp";
            _loc_1.headerText = "MAX HP";
            _loc_1.width = 90;
            _loc_1.setStyle("textAlign", "center");
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

        private function _CollectUnitWindow_DataGridColumn1_i() : DataGridColumn
        {
            var _loc_1:* = new DataGridColumn();
            _CollectUnitWindow_DataGridColumn1 = _loc_1;
            _loc_1.dataField = "name";
            _loc_1.itemRenderer = _CollectUnitWindow_ClassFactory3_c();
            BindingManager.executeBindings(this, "_CollectUnitWindow_DataGridColumn1", _CollectUnitWindow_DataGridColumn1);
            return _loc_1;
        }// end function

        public function ___CollectUnitWindow_Image1_click(event:MouseEvent) : void
        {
            onItemClick();
            return;
        }// end function

        public static function set watcherSetupUtil(param1:IWatcherSetupUtil) : void
        {
            CollectUnitWindow._watcherSetupUtil = param1;
            return;
        }// end function

    }
}
