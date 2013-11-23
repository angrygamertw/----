package com.kbmj.viking.view.allMap
{
    import com.kbmj.viking.lib.*;
    import flash.display.*;
    import flash.events.*;
    import flash.utils.*;
    import mx.binding.*;
    import mx.containers.*;
    import mx.controls.*;
    import mx.controls.dataGridClasses.*;
    import mx.core.*;
    import mx.events.*;
    import mx.managers.*;

    public class AllMapConfirmWindow extends Canvas implements IBindingClient
    {
        public var _AllMapConfirmWindow_Image2:Image;
        public var _AllMapConfirmWindow_Image3:Image;
        private var _documentDescriptor_:UIComponentDescriptor;
        private var _1024861772_windowBg:MovieClipLoaderAsset;
        var _watchers:Array;
        private var _1629553109_buttonCancel:MovieClipLoaderAsset;
        private var _2083483977_commandName:String;
        private var _1424362799_buttonConfirm:MovieClipLoaderAsset;
        public var _AllMapConfirmWindow_Text2:Text;
        private var _1557721666details:Array;
        private var _1016406257unit_building:DataGrid;
        public var _AllMapConfirmWindow_DataGridColumn1:DataGridColumn;
        public var _AllMapConfirmWindow_DataGridColumn2:DataGridColumn;
        public var _AllMapConfirmWindow_DataGridColumn3:DataGridColumn;
        var _bindingsBeginWithWord:Object;
        public var _AllMapConfirmWindow_Text1:Text;
        var _bindingsByDestination:Object;
        var _bindings:Array;
        private var _detail:Object;
        private var _1464826535_title:String;
        public var _AllMapConfirmWindow_Image1:Image;
        private static var _watcherSetupUtil:IWatcherSetupUtil;
        public static const CONFIRMED:String = "AllMapComfirmWindow/confirmed";

        public function AllMapConfirmWindow()
        {
            _documentDescriptor_ = new UIComponentDescriptor({type:Canvas, propertiesFactory:function () : Object
            {
                return {width:760, height:560, childDescriptors:[new UIComponentDescriptor({type:Image, id:"_AllMapConfirmWindow_Image1"}), new UIComponentDescriptor({type:Text, id:"_AllMapConfirmWindow_Text1", propertiesFactory:function () : Object
                {
                    return {styleName:"PanelBaseTitle", x:0, y:182, width:760};
                }// end function
                }), new UIComponentDescriptor({type:Text, id:"_AllMapConfirmWindow_Text2", propertiesFactory:function () : Object
                {
                    return {styleName:"DialogText", x:255, y:206};
                }// end function
                }), new UIComponentDescriptor({type:DataGrid, id:"unit_building", propertiesFactory:function () : Object
                {
                    return {styleName:"UnitBuilding", x:255, y:228, width:250, rowHeight:75, rowCount:1, selectable:false, sortableColumns:false, columns:[_AllMapConfirmWindow_DataGridColumn1_i(), _AllMapConfirmWindow_DataGridColumn2_i(), _AllMapConfirmWindow_DataGridColumn3_i()]};
                }// end function
                }), new UIComponentDescriptor({type:HBox, stylesFactory:function () : void
                {
                    this.horizontalCenter = "0";
                    this.horizontalGap = 0;
                    return;
                }// end function
                , propertiesFactory:function () : Object
                {
                    return {y:334, childDescriptors:[new UIComponentDescriptor({type:Image, id:"_AllMapConfirmWindow_Image2", events:{click:"___AllMapConfirmWindow_Image2_click"}, propertiesFactory:function () : Object
                    {
                        return {width:110};
                    }// end function
                    }), new UIComponentDescriptor({type:Image, id:"_AllMapConfirmWindow_Image3", events:{click:"___AllMapConfirmWindow_Image3_click"}, propertiesFactory:function () : Object
                    {
                        return {width:110};
                    }// end function
                    })]};
                }// end function
                })]};
            }// end function
            });
            _1024861772_windowBg = new Viking.EmbedSwfWindowCommon();
            _1424362799_buttonConfirm = new Viking.EmbedSwfButtonCommon();
            _1629553109_buttonCancel = new Viking.EmbedSwfButtonCommon();
            _bindings = [];
            _watchers = [];
            _bindingsByDestination = {};
            _bindingsBeginWithWord = {};
            mx_internal::_document = this;
            this.width = 760;
            this.height = 560;
            return;
        }// end function

        private function _AllMapConfirmWindow_bindingExprs() : void
        {
            var _loc_1:* = undefined;
            _loc_1 = _windowBg;
            _loc_1 = _title;
            _loc_1 = Utils.i18n("allMapConfirmConf", _commandName);
            _loc_1 = details;
            _loc_1 = Utils.i18n("confirmBuildMaterial");
            _loc_1 = Utils.i18n("confirmBuildUnit");
            _loc_1 = Utils.i18n("confirmBuildTime");
            _loc_1 = _buttonConfirm;
            _loc_1 = _buttonCancel;
            return;
        }// end function

        private function set details(param1:Array) : void
        {
            var _loc_2:* = this._1557721666details;
            if (_loc_2 !== param1)
            {
                this._1557721666details = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "details", _loc_2, param1));
            }
            return;
        }// end function

        public function get unit_building() : DataGrid
        {
            return this._1016406257unit_building;
        }// end function

        override public function initialize() : void
        {
            var target:AllMapConfirmWindow;
            var watcherSetupUtilClass:Object;
            .mx_internal::setDocumentDescriptor(_documentDescriptor_);
            var bindings:* = _AllMapConfirmWindow_bindingsSetup();
            var watchers:Array;
            target;
            if (_watcherSetupUtil == null)
            {
                watcherSetupUtilClass = getDefinitionByName("_com_kbmj_viking_view_allMap_AllMapConfirmWindowWatcherSetupUtil");
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

        public function set unit_building(param1:DataGrid) : void
        {
            var _loc_2:* = this._1016406257unit_building;
            if (_loc_2 !== param1)
            {
                this._1016406257unit_building = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "unit_building", _loc_2, param1));
            }
            return;
        }// end function

        public function init() : void
        {
            MovieClip(Loader(_windowBg.getChildAt(0)).content).gotoAndPlay("center_300x200");
            MovieClip(Loader(_buttonConfirm.getChildAt(0)).content).gotoAndStop(0);
            MovieClip(Loader(_buttonConfirm.getChildAt(0)).content).gotoAndPlay("button_decide");
            MovieClip(Loader(_buttonCancel.getChildAt(0)).content).gotoAndStop(0);
            MovieClip(Loader(_buttonCancel.getChildAt(0)).content).gotoAndPlay("button_cancel");
            return;
        }// end function

        public function set detail(param1:Object) : void
        {
            var _loc_2:* = this.detail;
            if (_loc_2 !== param1)
            {
                this._1335224239detail = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "detail", _loc_2, param1));
            }
            return;
        }// end function

        public function ___AllMapConfirmWindow_Image2_click(event:MouseEvent) : void
        {
            onConfirm();
            return;
        }// end function

        private function get _buttonCancel() : MovieClipLoaderAsset
        {
            return this._1629553109_buttonCancel;
        }// end function

        private function _AllMapConfirmWindow_DataGridColumn1_i() : DataGridColumn
        {
            var _loc_1:* = new DataGridColumn();
            _AllMapConfirmWindow_DataGridColumn1 = _loc_1;
            _loc_1.dataField = "materials";
            BindingManager.executeBindings(this, "_AllMapConfirmWindow_DataGridColumn1", _AllMapConfirmWindow_DataGridColumn1);
            return _loc_1;
        }// end function

        private function _AllMapConfirmWindow_DataGridColumn3_i() : DataGridColumn
        {
            var _loc_1:* = new DataGridColumn();
            _AllMapConfirmWindow_DataGridColumn3 = _loc_1;
            _loc_1.dataField = "terms";
            BindingManager.executeBindings(this, "_AllMapConfirmWindow_DataGridColumn3", _AllMapConfirmWindow_DataGridColumn3);
            return _loc_1;
        }// end function

        private function get _buttonConfirm() : MovieClipLoaderAsset
        {
            return this._1424362799_buttonConfirm;
        }// end function

        private function set _1335224239detail(param1:Object) : void
        {
            _detail = param1;
            _detail.terms = _detail.terms + Utils.i18n("generalMinuts");
            details = [_detail];
            _title = _detail.title;
            _commandName = _detail.commandName;
            return;
        }// end function

        private function get _windowBg() : MovieClipLoaderAsset
        {
            return this._1024861772_windowBg;
        }// end function

        private function get _commandName() : String
        {
            return this._2083483977_commandName;
        }// end function

        private function onCancel() : void
        {
            PopUpManager.removePopUp(this);
            return;
        }// end function

        private function _AllMapConfirmWindow_bindingsSetup() : Array
        {
            var binding:Binding;
            var result:Array;
            binding = new Binding(this, function () : Object
            {
                return _windowBg;
            }// end function
            , function (param1:Object) : void
            {
                _AllMapConfirmWindow_Image1.source = param1;
                return;
            }// end function
            , "_AllMapConfirmWindow_Image1.source");
            result[0] = binding;
            binding = new Binding(this, function () : String
            {
                var _loc_1:* = _title;
                var _loc_2:* = _loc_1 == undefined ? (null) : (String(_loc_1));
                return _loc_2;
            }// end function
            , function (param1:String) : void
            {
                _AllMapConfirmWindow_Text1.text = param1;
                return;
            }// end function
            , "_AllMapConfirmWindow_Text1.text");
            result[1] = binding;
            binding = new Binding(this, function () : String
            {
                var _loc_1:* = Utils.i18n("allMapConfirmConf", _commandName);
                var _loc_2:* = _loc_1 == undefined ? (null) : (String(_loc_1));
                return _loc_2;
            }// end function
            , function (param1:String) : void
            {
                _AllMapConfirmWindow_Text2.text = param1;
                return;
            }// end function
            , "_AllMapConfirmWindow_Text2.text");
            result[2] = binding;
            binding = new Binding(this, function () : Object
            {
                return details;
            }// end function
            , function (param1:Object) : void
            {
                unit_building.dataProvider = param1;
                return;
            }// end function
            , "unit_building.dataProvider");
            result[3] = binding;
            binding = new Binding(this, function () : String
            {
                var _loc_1:* = Utils.i18n("confirmBuildMaterial");
                var _loc_2:* = _loc_1 == undefined ? (null) : (String(_loc_1));
                return _loc_2;
            }// end function
            , function (param1:String) : void
            {
                _AllMapConfirmWindow_DataGridColumn1.headerText = param1;
                return;
            }// end function
            , "_AllMapConfirmWindow_DataGridColumn1.headerText");
            result[4] = binding;
            binding = new Binding(this, function () : String
            {
                var _loc_1:* = Utils.i18n("confirmBuildUnit");
                var _loc_2:* = _loc_1 == undefined ? (null) : (String(_loc_1));
                return _loc_2;
            }// end function
            , function (param1:String) : void
            {
                _AllMapConfirmWindow_DataGridColumn2.headerText = param1;
                return;
            }// end function
            , "_AllMapConfirmWindow_DataGridColumn2.headerText");
            result[5] = binding;
            binding = new Binding(this, function () : String
            {
                var _loc_1:* = Utils.i18n("confirmBuildTime");
                var _loc_2:* = _loc_1 == undefined ? (null) : (String(_loc_1));
                return _loc_2;
            }// end function
            , function (param1:String) : void
            {
                _AllMapConfirmWindow_DataGridColumn3.headerText = param1;
                return;
            }// end function
            , "_AllMapConfirmWindow_DataGridColumn3.headerText");
            result[6] = binding;
            binding = new Binding(this, function () : Object
            {
                return _buttonConfirm;
            }// end function
            , function (param1:Object) : void
            {
                _AllMapConfirmWindow_Image2.source = param1;
                return;
            }// end function
            , "_AllMapConfirmWindow_Image2.source");
            result[7] = binding;
            binding = new Binding(this, function () : Object
            {
                return _buttonCancel;
            }// end function
            , function (param1:Object) : void
            {
                _AllMapConfirmWindow_Image3.source = param1;
                return;
            }// end function
            , "_AllMapConfirmWindow_Image3.source");
            result[8] = binding;
            return result;
        }// end function

        private function get details() : Array
        {
            return this._1557721666details;
        }// end function

        public function get detail() : Object
        {
            return _detail;
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

        private function set _buttonConfirm(param1:MovieClipLoaderAsset) : void
        {
            var _loc_2:* = this._1424362799_buttonConfirm;
            if (_loc_2 !== param1)
            {
                this._1424362799_buttonConfirm = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "_buttonConfirm", _loc_2, param1));
            }
            return;
        }// end function

        private function onConfirm() : void
        {
            dispatchEvent(new Event(CONFIRMED));
            PopUpManager.removePopUp(this);
            return;
        }// end function

        public function ___AllMapConfirmWindow_Image3_click(event:MouseEvent) : void
        {
            onCancel();
            return;
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

        private function get _title() : String
        {
            return this._1464826535_title;
        }// end function

        private function _AllMapConfirmWindow_DataGridColumn2_i() : DataGridColumn
        {
            var _loc_1:* = new DataGridColumn();
            _AllMapConfirmWindow_DataGridColumn2 = _loc_1;
            _loc_1.dataField = "unit.name";
            _loc_1.itemRenderer = _AllMapConfirmWindow_ClassFactory1_c();
            BindingManager.executeBindings(this, "_AllMapConfirmWindow_DataGridColumn2", _AllMapConfirmWindow_DataGridColumn2);
            return _loc_1;
        }// end function

        private function _AllMapConfirmWindow_ClassFactory1_c() : ClassFactory
        {
            var _loc_1:* = new ClassFactory();
            _loc_1.generator = AllMapUnitNameRenderer;
            return _loc_1;
        }// end function

        public static function set watcherSetupUtil(param1:IWatcherSetupUtil) : void
        {
            AllMapConfirmWindow._watcherSetupUtil = param1;
            return;
        }// end function

    }
}
