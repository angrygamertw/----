package com.kbmj.viking.view.home
{
    import com.kbmj.viking.lib.*;
    import com.kbmj.viking.view.*;
    import flash.display.*;
    import flash.events.*;
    import flash.utils.*;
    import mx.binding.*;
    import mx.controls.*;
    import mx.controls.dataGridClasses.*;
    import mx.core.*;
    import mx.events.*;

    public class SubjugationSelectLevelWindow extends PopupWindow implements IBindingClient
    {
        private var _513506736weapon_data_list:DataGrid;
        private var locationNum:Object;
        private var _522920908detailRenderer:ClassFactory;
        var _watchers:Array;
        private var _2135756891titleText:String;
        private var _evilPoints:Array;
        private var _tutMarkSubVisible:Boolean = false;
        public var _SubjugationSelectLevelWindow_DataGridColumn1:DataGridColumn;
        private var _1195361263viewData:Array;
        public var _SubjugationSelectLevelWindow_DataGridColumn3:DataGridColumn;
        public var _SubjugationSelectLevelWindow_DataGridColumn4:DataGridColumn;
        public var _SubjugationSelectLevelWindow_DataGridColumn6:DataGridColumn;
        private var _1209556933_swf_tmark:MovieClipLoaderAsset;
        private var _914425934detailRendererTutorial:ClassFactory;
        var _bindingsBeginWithWord:Object;
        private var _1822308912subjugation_data_list_tutorial:DataGrid;
        private var _1193840764_swf_close:MovieClipLoaderAsset;
        private var _1818888257_swf_bg:MovieClipLoaderAsset;
        private var _94427871tutVisible:Boolean = false;
        private var _1225459084nonTutVisible:Boolean = true;
        private var locationName:Object;
        var _bindingsByDestination:Object;
        var _bindings:Array;
        private var _documentDescriptor_:UIComponentDescriptor;
        public var _SubjugationSelectLevelWindow_Image1:Image;
        public var _SubjugationSelectLevelWindow_Image2:Image;
        public var _SubjugationSelectLevelWindow_Label1:Label;
        public static const SELECT_LEVEL_COMPLETE:String = NAME + "/selectLevelComplete";
        private static var _watcherSetupUtil:IWatcherSetupUtil;
        public static const NAME:String = "SubjugationSelectLevelWindow";

        public function SubjugationSelectLevelWindow()
        {
            _documentDescriptor_ = new UIComponentDescriptor({type:PopupWindow, propertiesFactory:function () : Object
            {
                return {childDescriptors:[new UIComponentDescriptor({type:Image, id:"_SubjugationSelectLevelWindow_Image1"}), new UIComponentDescriptor({type:Label, id:"_SubjugationSelectLevelWindow_Label1", stylesFactory:function () : void
                {
                    this.color = 16777215;
                    this.textAlign = "center";
                    return;
                }// end function
                , propertiesFactory:function () : Object
                {
                    return {x:180, y:148, width:400, styleName:"PanelBaseTitle"};
                }// end function
                }), new UIComponentDescriptor({type:DataGrid, id:"weapon_data_list", propertiesFactory:function () : Object
                {
                    return {x:190, y:180, width:380, rowCount:3, rowHeight:55, styleName:"DataGridBase", selectable:false, sortableColumns:false, includeInLayout:false, columns:[_SubjugationSelectLevelWindow_DataGridColumn1_i(), _SubjugationSelectLevelWindow_DataGridColumn2_c(), _SubjugationSelectLevelWindow_DataGridColumn3_i()]};
                }// end function
                }), new UIComponentDescriptor({type:DataGrid, id:"subjugation_data_list_tutorial", propertiesFactory:function () : Object
                {
                    return {x:190, y:180, width:380, rowCount:3, rowHeight:55, styleName:"DataGridBase", selectable:false, sortableColumns:false, columns:[_SubjugationSelectLevelWindow_DataGridColumn4_i(), _SubjugationSelectLevelWindow_DataGridColumn5_c(), _SubjugationSelectLevelWindow_DataGridColumn6_i()]};
                }// end function
                }), new UIComponentDescriptor({type:Image, id:"_SubjugationSelectLevelWindow_Image2", events:{click:"___SubjugationSelectLevelWindow_Image2_click"}, propertiesFactory:function () : Object
                {
                    return {x:330, y:370};
                }// end function
                })]};
            }// end function
            });
            _1818888257_swf_bg = new Viking.EmbedSwfWindowCommon();
            _1193840764_swf_close = new Viking.EmbedSwfButtonCommon();
            _1209556933_swf_tmark = new Viking.EmbedSwfTmark();
            _evilPoints = new Array();
            _1195361263viewData = new Array();
            _2135756891titleText = new String();
            locationNum = {BUTTON_GL:2, BUTTON_RK:4, BUTTON_WS:1, BUTTON_LG:6, BUTTON_MN:5, BUTTON_FR:3};
            locationName = {BUTTON_GL:Utils.i18n("generalLocationGL"), BUTTON_RK:Utils.i18n("generalLocationRK"), BUTTON_WS:Utils.i18n("generalLocationWS"), BUTTON_LG:Utils.i18n("generalLocationLG"), BUTTON_MN:Utils.i18n("generalLocationMN"), BUTTON_FR:Utils.i18n("generalLocationFR")};
            _bindings = [];
            _watchers = [];
            _bindingsByDestination = {};
            _bindingsBeginWithWord = {};
            mx_internal::_document = this;
            _SubjugationSelectLevelWindow_ClassFactory1_i();
            _SubjugationSelectLevelWindow_ClassFactory2_i();
            this.addEventListener("creationComplete", ___SubjugationSelectLevelWindow_PopupWindow1_creationComplete);
            return;
        }// end function

        public function ___SubjugationSelectLevelWindow_PopupWindow1_creationComplete(event:FlexEvent) : void
        {
            comp();
            return;
        }// end function

        private function set _swf_bg(param1:MovieClipLoaderAsset) : void
        {
            var _loc_2:* = this._1818888257_swf_bg;
            if (_loc_2 !== param1)
            {
                this._1818888257_swf_bg = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "_swf_bg", _loc_2, param1));
            }
            return;
        }// end function

        private function get _swf_close() : MovieClipLoaderAsset
        {
            return this._1193840764_swf_close;
        }// end function

        private function _SubjugationSelectLevelWindow_DataGridColumn4_i() : DataGridColumn
        {
            var _loc_1:* = new DataGridColumn();
            _SubjugationSelectLevelWindow_DataGridColumn4 = _loc_1;
            _loc_1.width = 60;
            BindingManager.executeBindings(this, "_SubjugationSelectLevelWindow_DataGridColumn4", _SubjugationSelectLevelWindow_DataGridColumn4);
            return _loc_1;
        }// end function

        private function _SubjugationSelectLevelWindow_ClassFactory1_i() : ClassFactory
        {
            var _loc_1:* = new ClassFactory();
            detailRenderer = _loc_1;
            _loc_1.generator = SubjugationSelectLevelWindow_inlineComponent1;
            _loc_1.properties = {outerDocument:this};
            return _loc_1;
        }// end function

        public function set _swf_tmark(param1:MovieClipLoaderAsset) : void
        {
            var _loc_2:* = this._1209556933_swf_tmark;
            if (_loc_2 !== param1)
            {
                this._1209556933_swf_tmark = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "_swf_tmark", _loc_2, param1));
            }
            return;
        }// end function

        private function get nonTutVisible() : Boolean
        {
            return this._1225459084nonTutVisible;
        }// end function

        private function comp() : void
        {
            MovieClip(Loader(_swf_bg.getChildAt(0)).content).gotoAndPlay("center_400x270");
            MovieClip(Loader(_swf_close.getChildAt(0)).content).gotoAndPlay("button_back");
            return;
        }// end function

        override public function initialize() : void
        {
            var target:SubjugationSelectLevelWindow;
            var watcherSetupUtilClass:Object;
            .mx_internal::setDocumentDescriptor(_documentDescriptor_);
            var bindings:* = _SubjugationSelectLevelWindow_bindingsSetup();
            var watchers:Array;
            target;
            if (_watcherSetupUtil == null)
            {
                watcherSetupUtilClass = getDefinitionByName("_com_kbmj_viking_view_home_SubjugationSelectLevelWindowWatcherSetupUtil");
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

        private function get viewData() : Array
        {
            return this._1195361263viewData;
        }// end function

        public function init(param1:String) : void
        {
            var location:* = param1;
            MovieClip(Loader(_swf_close.getChildAt(0)).content).gotoAndPlay(0);
            MovieClip(Loader(_swf_close.getChildAt(0)).content).gotoAndPlay("button_back");
            viewData = _evilPoints.filter(function (param1, param2:int, param3:Array) : Boolean
            {
                return int(param1.topography_id) == locationNum[location];
            }// end function
            );
            titleText = locationName[location];
            return;
        }// end function

        public function set subjugation_data_list_tutorial(param1:DataGrid) : void
        {
            var _loc_2:* = this._1822308912subjugation_data_list_tutorial;
            if (_loc_2 !== param1)
            {
                this._1822308912subjugation_data_list_tutorial = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "subjugation_data_list_tutorial", _loc_2, param1));
            }
            return;
        }// end function

        private function get titleText() : String
        {
            return this._2135756891titleText;
        }// end function

        public function clicked(param1:Object) : void
        {
            trace("topography_id:" + param1.topography_id);
            trace("level:" + param1.level);
            dispatchEvent(new PopupEvent(SELECT_LEVEL_COMPLETE, {topographyId:param1.topography_id, level:param1.level}));
            this.onClose();
            return;
        }// end function

        public function set evilPoints(param1:Array) : void
        {
            _evilPoints = param1;
            return;
        }// end function

        private function set titleText(param1:String) : void
        {
            var _loc_2:* = this._2135756891titleText;
            if (_loc_2 !== param1)
            {
                this._2135756891titleText = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "titleText", _loc_2, param1));
            }
            return;
        }// end function

        private function _SubjugationSelectLevelWindow_DataGridColumn5_c() : DataGridColumn
        {
            var _loc_1:* = new DataGridColumn();
            _loc_1.dataField = "level";
            _loc_1.headerText = "Lv";
            _loc_1.width = 30;
            return _loc_1;
        }// end function

        private function _SubjugationSelectLevelWindow_DataGridColumn1_i() : DataGridColumn
        {
            var _loc_1:* = new DataGridColumn();
            _SubjugationSelectLevelWindow_DataGridColumn1 = _loc_1;
            _loc_1.width = 60;
            BindingManager.executeBindings(this, "_SubjugationSelectLevelWindow_DataGridColumn1", _SubjugationSelectLevelWindow_DataGridColumn1);
            return _loc_1;
        }// end function

        public function get weapon_data_list() : DataGrid
        {
            return this._513506736weapon_data_list;
        }// end function

        public function get detailRenderer() : ClassFactory
        {
            return this._522920908detailRenderer;
        }// end function

        public function get detailRendererTutorial() : ClassFactory
        {
            return this._914425934detailRendererTutorial;
        }// end function

        private function _SubjugationSelectLevelWindow_DataGridColumn3_i() : DataGridColumn
        {
            var _loc_1:* = new DataGridColumn();
            _SubjugationSelectLevelWindow_DataGridColumn3 = _loc_1;
            _loc_1.dataField = "description";
            BindingManager.executeBindings(this, "_SubjugationSelectLevelWindow_DataGridColumn3", _SubjugationSelectLevelWindow_DataGridColumn3);
            return _loc_1;
        }// end function

        private function set tutVisible(param1:Boolean) : void
        {
            var _loc_2:* = this._94427871tutVisible;
            if (_loc_2 !== param1)
            {
                this._94427871tutVisible = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "tutVisible", _loc_2, param1));
            }
            return;
        }// end function

        private function get _swf_bg() : MovieClipLoaderAsset
        {
            return this._1818888257_swf_bg;
        }// end function

        public function showTutMark(param1:Object) : Boolean
        {
            if (param1.topography_id == 2 && param1.level == 1 && _tutMarkSubVisible)
            {
                return true;
            }
            return false;
        }// end function

        private function _SubjugationSelectLevelWindow_ClassFactory2_i() : ClassFactory
        {
            var _loc_1:* = new ClassFactory();
            detailRendererTutorial = _loc_1;
            _loc_1.generator = SubjugationSelectLevelWindow_inlineComponent2;
            _loc_1.properties = {outerDocument:this};
            return _loc_1;
        }// end function

        private function _SubjugationSelectLevelWindow_bindingsSetup() : Array
        {
            var binding:Binding;
            var result:Array;
            binding = new Binding(this, function () : Object
            {
                return _swf_bg;
            }// end function
            , function (param1:Object) : void
            {
                _SubjugationSelectLevelWindow_Image1.source = param1;
                return;
            }// end function
            , "_SubjugationSelectLevelWindow_Image1.source");
            result[0] = binding;
            binding = new Binding(this, function () : String
            {
                var _loc_1:* = titleText;
                var _loc_2:* = _loc_1 == undefined ? (null) : (String(_loc_1));
                return _loc_2;
            }// end function
            , function (param1:String) : void
            {
                _SubjugationSelectLevelWindow_Label1.text = param1;
                return;
            }// end function
            , "_SubjugationSelectLevelWindow_Label1.text");
            result[1] = binding;
            binding = new Binding(this, function () : Object
            {
                return viewData;
            }// end function
            , function (param1:Object) : void
            {
                weapon_data_list.dataProvider = param1;
                return;
            }// end function
            , "weapon_data_list.dataProvider");
            result[2] = binding;
            binding = new Binding(this, function () : Boolean
            {
                return nonTutVisible;
            }// end function
            , function (param1:Boolean) : void
            {
                weapon_data_list.visible = param1;
                return;
            }// end function
            , "weapon_data_list.visible");
            result[3] = binding;
            binding = new Binding(this, function () : String
            {
                var _loc_1:* = Utils.i18n("generalSubjugation");
                var _loc_2:* = _loc_1 == undefined ? (null) : (String(_loc_1));
                return _loc_2;
            }// end function
            , function (param1:String) : void
            {
                _SubjugationSelectLevelWindow_DataGridColumn1.headerText = param1;
                return;
            }// end function
            , "_SubjugationSelectLevelWindow_DataGridColumn1.headerText");
            result[4] = binding;
            binding = new Binding(this, function () : IFactory
            {
                return detailRenderer;
            }// end function
            , function (param1:IFactory) : void
            {
                _SubjugationSelectLevelWindow_DataGridColumn1.itemRenderer = param1;
                return;
            }// end function
            , "_SubjugationSelectLevelWindow_DataGridColumn1.itemRenderer");
            result[5] = binding;
            binding = new Binding(this, function () : String
            {
                var _loc_1:* = Utils.i18n("generalDescription");
                var _loc_2:* = _loc_1 == undefined ? (null) : (String(_loc_1));
                return _loc_2;
            }// end function
            , function (param1:String) : void
            {
                _SubjugationSelectLevelWindow_DataGridColumn3.headerText = param1;
                return;
            }// end function
            , "_SubjugationSelectLevelWindow_DataGridColumn3.headerText");
            result[6] = binding;
            binding = new Binding(this, function () : Object
            {
                return viewData;
            }// end function
            , function (param1:Object) : void
            {
                subjugation_data_list_tutorial.dataProvider = param1;
                return;
            }// end function
            , "subjugation_data_list_tutorial.dataProvider");
            result[7] = binding;
            binding = new Binding(this, function () : Boolean
            {
                return tutVisible;
            }// end function
            , function (param1:Boolean) : void
            {
                subjugation_data_list_tutorial.visible = param1;
                return;
            }// end function
            , "subjugation_data_list_tutorial.visible");
            result[8] = binding;
            binding = new Binding(this, function () : String
            {
                var _loc_1:* = Utils.i18n("generalSubjugation");
                var _loc_2:* = _loc_1 == undefined ? (null) : (String(_loc_1));
                return _loc_2;
            }// end function
            , function (param1:String) : void
            {
                _SubjugationSelectLevelWindow_DataGridColumn4.headerText = param1;
                return;
            }// end function
            , "_SubjugationSelectLevelWindow_DataGridColumn4.headerText");
            result[9] = binding;
            binding = new Binding(this, function () : IFactory
            {
                return detailRendererTutorial;
            }// end function
            , function (param1:IFactory) : void
            {
                _SubjugationSelectLevelWindow_DataGridColumn4.itemRenderer = param1;
                return;
            }// end function
            , "_SubjugationSelectLevelWindow_DataGridColumn4.itemRenderer");
            result[10] = binding;
            binding = new Binding(this, function () : String
            {
                var _loc_1:* = Utils.i18n("generalDescription");
                var _loc_2:* = _loc_1 == undefined ? (null) : (String(_loc_1));
                return _loc_2;
            }// end function
            , function (param1:String) : void
            {
                _SubjugationSelectLevelWindow_DataGridColumn6.headerText = param1;
                return;
            }// end function
            , "_SubjugationSelectLevelWindow_DataGridColumn6.headerText");
            result[11] = binding;
            binding = new Binding(this, function () : Object
            {
                return _swf_close;
            }// end function
            , function (param1:Object) : void
            {
                _SubjugationSelectLevelWindow_Image2.source = param1;
                return;
            }// end function
            , "_SubjugationSelectLevelWindow_Image2.source");
            result[12] = binding;
            return result;
        }// end function

        public function get subjugation_data_list_tutorial() : DataGrid
        {
            return this._1822308912subjugation_data_list_tutorial;
        }// end function

        public function setTutMarkVisible(param1:Boolean) : void
        {
            if (param1)
            {
                tutVisible = true;
                nonTutVisible = false;
                _tutMarkSubVisible = true;
            }
            else
            {
                _tutMarkSubVisible = false;
                tutVisible = false;
                nonTutVisible = true;
            }
            return;
        }// end function

        public function get _swf_tmark() : MovieClipLoaderAsset
        {
            return this._1209556933_swf_tmark;
        }// end function

        private function set viewData(param1:Array) : void
        {
            var _loc_2:* = this._1195361263viewData;
            if (_loc_2 !== param1)
            {
                this._1195361263viewData = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "viewData", _loc_2, param1));
            }
            return;
        }// end function

        private function get tutVisible() : Boolean
        {
            return this._94427871tutVisible;
        }// end function

        public function ___SubjugationSelectLevelWindow_Image2_click(event:MouseEvent) : void
        {
            onClose();
            return;
        }// end function

        public function set detailRendererTutorial(param1:ClassFactory) : void
        {
            var _loc_2:* = this._914425934detailRendererTutorial;
            if (_loc_2 !== param1)
            {
                this._914425934detailRendererTutorial = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "detailRendererTutorial", _loc_2, param1));
            }
            return;
        }// end function

        public function set weapon_data_list(param1:DataGrid) : void
        {
            var _loc_2:* = this._513506736weapon_data_list;
            if (_loc_2 !== param1)
            {
                this._513506736weapon_data_list = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "weapon_data_list", _loc_2, param1));
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

        private function _SubjugationSelectLevelWindow_DataGridColumn2_c() : DataGridColumn
        {
            var _loc_1:* = new DataGridColumn();
            _loc_1.dataField = "level";
            _loc_1.headerText = "Lv";
            _loc_1.width = 30;
            return _loc_1;
        }// end function

        private function _SubjugationSelectLevelWindow_DataGridColumn6_i() : DataGridColumn
        {
            var _loc_1:* = new DataGridColumn();
            _SubjugationSelectLevelWindow_DataGridColumn6 = _loc_1;
            _loc_1.dataField = "description";
            BindingManager.executeBindings(this, "_SubjugationSelectLevelWindow_DataGridColumn6", _SubjugationSelectLevelWindow_DataGridColumn6);
            return _loc_1;
        }// end function

        private function _SubjugationSelectLevelWindow_bindingExprs() : void
        {
            var _loc_1:* = undefined;
            _loc_1 = _swf_bg;
            _loc_1 = titleText;
            _loc_1 = viewData;
            _loc_1 = nonTutVisible;
            _loc_1 = Utils.i18n("generalSubjugation");
            _loc_1 = detailRenderer;
            _loc_1 = Utils.i18n("generalDescription");
            _loc_1 = viewData;
            _loc_1 = tutVisible;
            _loc_1 = Utils.i18n("generalSubjugation");
            _loc_1 = detailRendererTutorial;
            _loc_1 = Utils.i18n("generalDescription");
            _loc_1 = _swf_close;
            return;
        }// end function

        private function set nonTutVisible(param1:Boolean) : void
        {
            var _loc_2:* = this._1225459084nonTutVisible;
            if (_loc_2 !== param1)
            {
                this._1225459084nonTutVisible = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "nonTutVisible", _loc_2, param1));
            }
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

        public static function set watcherSetupUtil(param1:IWatcherSetupUtil) : void
        {
            SubjugationSelectLevelWindow._watcherSetupUtil = param1;
            return;
        }// end function

    }
}
