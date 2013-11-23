package com.kbmj.viking.view.home
{
    import com.kbmj.viking.lib.*;
    import com.kbmj.viking.view.*;
    import com.kbmj.viking.vo.*;
    import com.kbmj.viking.vo.home.*;
    import flash.events.*;
    import flash.utils.*;
    import mx.binding.*;
    import mx.collections.*;
    import mx.containers.*;
    import mx.controls.*;
    import mx.core.*;
    import mx.events.*;
    import mx.managers.*;

    public class BuildWindow extends CanvasWithPopUp implements IBindingClient
    {
        private var _111433583units:Array;
        private var _documentDescriptor_:UIComponentDescriptor;
        private var selectedConstruction:ConstructionVO;
        var _watchers:Array;
        private var _homeBuildings:Array;
        private var _1896677185windowLayer:Canvas;
        private var _750462013viewDataBuilding:ArrayCollection;
        private var selectedUnitId:int;
        private var _embed_mxml__swf_common_button_close_window_swf_1370265653:Class;
        private var _buildings:Object;
        private var _constructions:Array;
        private var _confirmBuildWindow:ConfirmBuildWindow;
        var _bindingsByDestination:Object;
        private var _playerRank:int;
        private var _410382397taskList:TileList;
        public var selectUnitId:int;
        private var _buildUnitWindow:BuildUnitWindow;
        private var _892519817buildingsCanvas:Canvas;
        var _bindings:Array;
        var _bindingsBeginWithWord:Object;
        public var selectBuildName:String;
        public static const OPEN_WINDOW:String = NAME + "openwindow";
        private static var _watcherSetupUtil:IWatcherSetupUtil;
        public static const OPEN_UNIT_LIST:String = NAME + "openUnitList";
        public static const SELECT_BUILDING_CLOSE:String = NAME + "selectBuildingClose";
        public static const CLOSE_UNIT_LIST:String = NAME + "closeUnitList";
        private static const ABILITY_LABELS:Object = {strength:"力", intelligence:"賢さ", tech:"技", agility:"速", defense:"守", luck:"運"};
        public static const NAME:String = "buildWindow";

        public function BuildWindow()
        {
            _documentDescriptor_ = new UIComponentDescriptor({type:CanvasWithPopUp, propertiesFactory:function () : Object
            {
                return {height:567, width:750, childDescriptors:[new UIComponentDescriptor({type:Canvas, id:"windowLayer"}), new UIComponentDescriptor({type:Canvas, id:"buildingsCanvas", propertiesFactory:function () : Object
                {
                    return {childDescriptors:[new UIComponentDescriptor({type:Text, propertiesFactory:function () : Object
                    {
                        return {text:"建築", styleName:"PanelBaseTitle", x:350, y:80};
                    }// end function
                    }), new UIComponentDescriptor({type:Image, events:{click:"___BuildWindow_Image1_click"}, propertiesFactory:function () : Object
                    {
                        return {y:80, x:710, source:_embed_mxml__swf_common_button_close_window_swf_1370265653};
                    }// end function
                    }), new UIComponentDescriptor({type:TileList, id:"taskList", stylesFactory:function () : void
                    {
                        this.backgroundAlpha = 0;
                        return;
                    }// end function
                    , propertiesFactory:function () : Object
                    {
                        return {itemRenderer:_BuildWindow_ClassFactory1_c(), styleName:"InfoBoxTab", selectable:false, height:420, width:740, x:0, y:110};
                    }// end function
                    })]};
                }// end function
                })]};
            }// end function
            });
            _buildings = new Object();
            _homeBuildings = new Array();
            _buildUnitWindow = new BuildUnitWindow();
            _confirmBuildWindow = new ConfirmBuildWindow();
            _embed_mxml__swf_common_button_close_window_swf_1370265653 = BuildWindow__embed_mxml__swf_common_button_close_window_swf_1370265653;
            _bindings = [];
            _watchers = [];
            _bindingsByDestination = {};
            _bindingsBeginWithWord = {};
            mx_internal::_document = this;
            this.height = 567;
            this.width = 750;
            this.addEventListener("creationComplete", ___BuildWindow_CanvasWithPopUp1_creationComplete);
            return;
        }// end function

        public function set constructions(param1:Array) : void
        {
            var constructions:* = param1;
            _constructions = constructions;
            if (!viewDataBuilding)
            {
                viewDataBuilding = new ArrayCollection(constructions.filter(function (param1, param2:int, param3:Array) : Boolean
            {
                return param1.playerRank <= _playerRank && param1.code != "c1001";
            }// end function
            ).sort(xOrder));
            }
            return;
        }// end function

        public function get units() : Array
        {
            return this._111433583units;
        }// end function

        public function set taskList(param1:TileList) : void
        {
            var _loc_2:* = this._410382397taskList;
            if (_loc_2 !== param1)
            {
                this._410382397taskList = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "taskList", _loc_2, param1));
            }
            return;
        }// end function

        override public function initialize() : void
        {
            var target:BuildWindow;
            var watcherSetupUtilClass:Object;
            .mx_internal::setDocumentDescriptor(_documentDescriptor_);
            var bindings:* = _BuildWindow_bindingsSetup();
            var watchers:Array;
            target;
            if (_watcherSetupUtil == null)
            {
                watcherSetupUtilClass = getDefinitionByName("_com_kbmj_viking_view_home_BuildWindowWatcherSetupUtil");
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

        public function getAbilities(param1:Object) : String
        {
            var _loc_3:String = null;
            var _loc_2:String = "";
            for (_loc_3 in param1)
            {
                
                _loc_2 = _loc_2 + (ABILITY_LABELS[_loc_3] + ":" + param1[_loc_3] + "\n");
            }
            return _loc_2;
        }// end function

        public function set viewDataBuilding(param1:ArrayCollection) : void
        {
            var _loc_2:* = this._750462013viewDataBuilding;
            if (_loc_2 !== param1)
            {
                this._750462013viewDataBuilding = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "viewDataBuilding", _loc_2, param1));
            }
            return;
        }// end function

        public function getGridVisible(param1:Object, param2:int) : Boolean
        {
            return param1.requirement.materials[param2].required ? (true) : (false);
        }// end function

        public function get confirmBuildWindow() : ConfirmBuildWindow
        {
            return _confirmBuildWindow;
        }// end function

        public function get buildUnitWindow() : BuildUnitWindow
        {
            return _buildUnitWindow;
        }// end function

        private function init() : void
        {
            _buildUnitWindow.addEventListener(BuildUnitWindow.UNIT_SELECTED, confirmBuildHandler);
            return;
        }// end function

        public function getColor(param1:Object, param2:int) : uint
        {
            return param1.requirement.materials[param2].isShort ? (15073298) : (0);
        }// end function

        public function ___BuildWindow_Image1_click(event:MouseEvent) : void
        {
            onClose();
            return;
        }// end function

        public function getMaterialsSize(param1:Object, param2:int) : String
        {
            return param1.requirement.materials[param2].required;
        }// end function

        public function toolTipBuilding(event:ToolTipEvent, param2:Object) : void
        {
            var _loc_3:* = new BuildingMouseOver();
            _loc_3.description = param2.description;
            event.toolTip = _loc_3;
            return;
        }// end function

        private function _BuildWindow_bindingExprs() : void
        {
            var _loc_1:* = undefined;
            _loc_1 = viewDataBuilding;
            return;
        }// end function

        private function xOrder(param1:ConstructionVO, param2:ConstructionVO) : int
        {
            if (param1.code > param2.code)
            {
                return 1;
            }
            if (param1.code < param2.code)
            {
                return -1;
            }
            return 0;
        }// end function

        public function get windowLayer() : Canvas
        {
            return this._1896677185windowLayer;
        }// end function

        public function set homeBuildings(param1:Array) : void
        {
            _homeBuildings = param1;
            return;
        }// end function

        public function toolTipBuildingButton(event:ToolTipEvent, param2:Object) : void
        {
            var _loc_3:* = new ButtonMouseOver();
            _loc_3.abilityColor = param2.requirement.textAbilityColor;
            _loc_3.goldColor = param2.requirement.textGoldColor;
            _loc_3.abilities = param2.abilities;
            _loc_3.materials = param2.requirement.materials;
            _loc_3.days = param2.days;
            _loc_3.gold = param2.gold;
            _loc_3.constructionName = param2.nameLabel;
            event.toolTip = _loc_3;
            return;
        }// end function

        public function get taskList() : TileList
        {
            return this._410382397taskList;
        }// end function

        public function ___BuildWindow_CanvasWithPopUp1_creationComplete(event:FlexEvent) : void
        {
            init();
            return;
        }// end function

        private function onClose() : void
        {
            sendEvent(SELECT_BUILDING_CLOSE);
            PopUpManager.removePopUp(this);
            return;
        }// end function

        public function set playerRank(param1:int) : void
        {
            _playerRank = param1;
            return;
        }// end function

        private function confirmBuildHandler(event:PopupEvent) : void
        {
            var materialVO:MaterialVO;
            var e:* = event;
            PopUpManager.removePopUp(_buildUnitWindow);
            var materialText:* = selectedConstruction.gold + "文\n";
            var _loc_3:int = 0;
            var _loc_4:* = selectedConstruction.materials;
            while (_loc_4 in _loc_3)
            {
                
                materialVO = _loc_4[_loc_3];
                materialText = materialText + (materialVO.nameLabel + ":" + materialVO.quantity + "\n");
            }
            confirmBuildWindow.buildDetail = {constructionName:selectedConstruction.nameLabel, days:selectedConstruction.minutes, materials:materialText, unit:e.param.unit};
            selectedUnitId = e.param.unit.unitId;
            if (!confirmBuildWindow.hasEventListener(ConfirmBuildWindow.CONFIRMED))
            {
                confirmBuildWindow.addEventListener(ConfirmBuildWindow.CONFIRMED, function (event:Event) : void
            {
                dispatchEvent(new PopupEvent(Viking.HOME_BUILD_START, {buildingName:selectBuildName, unitId:selectedUnitId, buildingCode:selectedConstruction.code}));
                onClose();
                confirmBuildWindow.removeEventListener(ConfirmBuildWindow.CONFIRMED, arguments.callee);
                return;
            }// end function
            );
            }
            this.popupWindow(confirmBuildWindow, false);
            dispatchEvent(new Event(OPEN_WINDOW));
            return;
        }// end function

        public function set units(param1:Array) : void
        {
            var _loc_2:* = this._111433583units;
            if (_loc_2 !== param1)
            {
                this._111433583units = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "units", _loc_2, param1));
            }
            return;
        }// end function

        public function get viewDataBuilding() : ArrayCollection
        {
            return this._750462013viewDataBuilding;
        }// end function

        public function onClick(param1:Object) : void
        {
            var alertWindow:AlertWindow;
            var construction:* = param1;
            if (!construction.requirement.canBuild)
            {
                return;
            }
            var arr:* = new Array();
            arr = _homeBuildings.filter(function (param1, param2:int, param3:Array) : Boolean
            {
                if (param1.buildingVO)
                {
                    return param1.buildingVO.nameLabel == construction.nameLabel ? (true) : (false);
                }
                return false;
            }// end function
            );
            if (construction.maxBuild > arr.length)
            {
                selectedConstruction = construction as ConstructionVO;
                selectBuildName = construction.name;
                _buildUnitWindow.init(units, selectedConstruction);
                this.popupWindow(_buildUnitWindow, false);
                _buildUnitWindow.addEventListener(BuildUnitWindow.CLOSE_UNIT_LIST, function () : void
            {
                _buildUnitWindow.removeEventListener(BuildUnitWindow.CLOSE_UNIT_LIST, arguments.callee);
                sendEvent(CLOSE_UNIT_LIST);
                return;
            }// end function
            );
                sendEvent(OPEN_UNIT_LIST);
            }
            else
            {
                alertWindow = AlertWindow.show(construction.nameLabel + "は\nこれ以上建築出来ません。");
                popupWindow(alertWindow, false);
            }
            return;
        }// end function

        private function _BuildWindow_ClassFactory1_c() : ClassFactory
        {
            var _loc_1:* = new ClassFactory();
            _loc_1.generator = BuildDitailRenderer;
            return _loc_1;
        }// end function

        private function _BuildWindow_bindingsSetup() : Array
        {
            var binding:Binding;
            var result:Array;
            binding = new Binding(this, function () : Object
            {
                return viewDataBuilding;
            }// end function
            , function (param1:Object) : void
            {
                taskList.dataProvider = param1;
                return;
            }// end function
            , "taskList.dataProvider");
            result[0] = binding;
            return result;
        }// end function

        public function getBuildingDescription(param1:Object) : String
        {
            var _loc_2:Object = null;
            for each (_loc_2 in _buildings)
            {
                
                if (_loc_2.name == param1.name)
                {
                    return _loc_2.description;
                }
            }
            return null;
        }// end function

        public function set buildingsCanvas(param1:Canvas) : void
        {
            var _loc_2:* = this._892519817buildingsCanvas;
            if (_loc_2 !== param1)
            {
                this._892519817buildingsCanvas = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "buildingsCanvas", _loc_2, param1));
            }
            return;
        }// end function

        public function getMaterials(param1:Object, param2:int) : String
        {
            return param1.requirement.materials[param2].vo.nameLabel;
        }// end function

        public function get buildingsCanvas() : Canvas
        {
            return this._892519817buildingsCanvas;
        }// end function

        public function set buildings(param1:Object) : void
        {
            _buildings = param1;
            return;
        }// end function

        public static function set watcherSetupUtil(param1:IWatcherSetupUtil) : void
        {
            BuildWindow._watcherSetupUtil = param1;
            return;
        }// end function

    }
}
