package com.kbmj.viking.view
{
    import com.kbmj.viking.lib.*;
    import flash.display.*;
    import flash.events.*;
    import flash.utils.*;
    import mx.binding.*;
    import mx.controls.*;
    import mx.controls.dataGridClasses.*;
    import mx.core.*;
    import mx.events.*;

    public class UnitListWindow extends PopupWindow implements IBindingClient
    {
        private var _1075873300_swf_window:MovieClipLoaderAsset;
        var _watchers:Array;
        public var _UnitListWindow_DataGridColumn1:DataGridColumn;
        public var _UnitListWindow_DataGridColumn2:DataGridColumn;
        public var _UnitListWindow_DataGridColumn3:DataGridColumn;
        public var _UnitListWindow_DataGridColumn4:DataGridColumn;
        public var _UnitListWindow_DataGridColumn7:DataGridColumn;
        public var _UnitListWindow_DataGridColumn8:DataGridColumn;
        public var _UnitListWindow_DataGridColumn9:DataGridColumn;
        public var _UnitListWindow_Image1:Image;
        public var _UnitListWindow_Image2:Image;
        public var _UnitListWindow_Image3:Image;
        private var _1463764368_units:Array;
        var _bindingsByDestination:Object;
        public var _UnitListWindow_DataGrid1:DataGrid;
        public var _UnitListWindow_Text1:Text;
        private var _142355337turnLabel:ClassFactory;
        private var _193839465teamLabel:ClassFactory;
        private var _1958883625expLabel:ClassFactory;
        private var _2064651809_statusVisible:Boolean = true;
        var _bindings:Array;
        private var _1193840764_swf_close:MovieClipLoaderAsset;
        private var _documentDescriptor_:UIComponentDescriptor;
        var _bindingsBeginWithWord:Object;
        private var _1218643219_swf_close_window:MovieClipLoaderAsset;
        private static const WINDOW_X:int = 20;
        private static const WINDOW_Y:int = 20;
        private static const BUTTON_X:int = 325;
        private static const BUTTON_Y:int = 490;
        private static var _watcherSetupUtil:IWatcherSetupUtil;
        private static const WINDOW_HT:int = 520;
        private static const WINDOW_WD:int = 720;

        public function UnitListWindow()
        {
            _documentDescriptor_ = new UIComponentDescriptor({type:PopupWindow, propertiesFactory:function () : Object
            {
                return {width:760, height:560, childDescriptors:[new UIComponentDescriptor({type:Image, id:"_UnitListWindow_Image1"}), new UIComponentDescriptor({type:Text, id:"_UnitListWindow_Text1", propertiesFactory:function () : Object
                {
                    return {styleName:"DealTitle"};
                }// end function
                }), new UIComponentDescriptor({type:DataGrid, id:"_UnitListWindow_DataGrid1", propertiesFactory:function () : Object
                {
                    return {rowCount:16, styleName:"DataGridBase", sortableColumns:false, columns:[_UnitListWindow_DataGridColumn1_i(), _UnitListWindow_DataGridColumn2_i(), _UnitListWindow_DataGridColumn3_i(), _UnitListWindow_DataGridColumn4_i(), _UnitListWindow_DataGridColumn5_c(), _UnitListWindow_DataGridColumn6_c(), _UnitListWindow_DataGridColumn7_i(), _UnitListWindow_DataGridColumn8_i(), _UnitListWindow_DataGridColumn9_i()]};
                }// end function
                }), new UIComponentDescriptor({type:Image, id:"_UnitListWindow_Image2", events:{click:"___UnitListWindow_Image2_click"}}), new UIComponentDescriptor({type:Image, id:"_UnitListWindow_Image3", events:{click:"___UnitListWindow_Image3_click"}})]};
            }// end function
            });
            _1075873300_swf_window = new Viking.EmbedSwfWindowCommon();
            _1193840764_swf_close = new Viking.EmbedSwfButtonCommon();
            _1218643219_swf_close_window = new Viking.EmbedSwfButtonCloseWindow();
            _bindings = [];
            _watchers = [];
            _bindingsByDestination = {};
            _bindingsBeginWithWord = {};
            mx_internal::_document = this;
            this.width = 760;
            this.height = 560;
            _UnitListWindow_ClassFactory3_i();
            _UnitListWindow_ClassFactory2_i();
            _UnitListWindow_ClassFactory1_i();
            return;
        }// end function

        private function _UnitListWindow_DataGridColumn6_c() : DataGridColumn
        {
            var _loc_1:* = new DataGridColumn();
            _loc_1.dataField = "maskedMaxHp";
            _loc_1.headerText = "HP";
            _loc_1.width = 40;
            _loc_1.setStyle("textAlign", "center");
            return _loc_1;
        }// end function

        private function _UnitListWindow_bindingExprs() : void
        {
            var _loc_1:* = undefined;
            _loc_1 = _swf_window;
            _loc_1 = WINDOW_X;
            _loc_1 = WINDOW_Y;
            _loc_1 = WINDOW_WD;
            _loc_1 = Utils.i18n("unitListTitle");
            _loc_1 = _units;
            _loc_1 = WINDOW_X + 20;
            _loc_1 = WINDOW_Y + 35 + 10;
            _loc_1 = WINDOW_WD - 40;
            _loc_1 = Utils.i18n("unitListTurn");
            _loc_1 = turnLabel;
            _loc_1 = _statusVisible;
            _loc_1 = Utils.i18n("generalName");
            _loc_1 = Utils.i18n("generalJob");
            _loc_1 = Utils.i18n("unitListArmy");
            _loc_1 = teamLabel;
            _loc_1 = _statusVisible;
            _loc_1 = Utils.i18n("generalAtack");
            _loc_1 = Utils.i18n("changeEquipmentDefense");
            _loc_1 = Utils.i18n("generalWeapon");
            _loc_1 = BUTTON_X;
            _loc_1 = BUTTON_Y;
            _loc_1 = _swf_close;
            _loc_1 = WINDOW_X + WINDOW_WD - 25;
            _loc_1 = WINDOW_Y;
            _loc_1 = _swf_close_window;
            return;
        }// end function

        private function _UnitListWindow_DataGridColumn8_i() : DataGridColumn
        {
            var _loc_1:* = new DataGridColumn();
            _UnitListWindow_DataGridColumn8 = _loc_1;
            _loc_1.dataField = "baseDefense";
            _loc_1.width = 40;
            _loc_1.setStyle("textAlign", "center");
            BindingManager.executeBindings(this, "_UnitListWindow_DataGridColumn8", _UnitListWindow_DataGridColumn8);
            return _loc_1;
        }// end function

        public function closeWindow() : void
        {
            onClose();
            MovieClip(Loader(_swf_close.getChildAt(0)).content).gotoAndPlay(0);
            MovieClip(Loader(_swf_close.getChildAt(0)).content).gotoAndPlay("button_close");
            MovieClip(Loader(_swf_close_window.getChildAt(0)).content).gotoAndPlay(1);
            return;
        }// end function

        override public function initialize() : void
        {
            var target:UnitListWindow;
            var watcherSetupUtilClass:Object;
            .mx_internal::setDocumentDescriptor(_documentDescriptor_);
            var bindings:* = _UnitListWindow_bindingsSetup();
            var watchers:Array;
            target;
            if (_watcherSetupUtil == null)
            {
                watcherSetupUtilClass = getDefinitionByName("_com_kbmj_viking_view_UnitListWindowWatcherSetupUtil");
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

        private function get _swf_close_window() : MovieClipLoaderAsset
        {
            return this._1218643219_swf_close_window;
        }// end function

        private function _UnitListWindow_ClassFactory4_c() : ClassFactory
        {
            var _loc_1:* = new ClassFactory();
            _loc_1.generator = UnitDetailLabelRenderer;
            return _loc_1;
        }// end function

        private function _UnitListWindow_DataGridColumn4_i() : DataGridColumn
        {
            var _loc_1:* = new DataGridColumn();
            _UnitListWindow_DataGridColumn4 = _loc_1;
            _loc_1.dataField = "team";
            _loc_1.width = 40;
            BindingManager.executeBindings(this, "_UnitListWindow_DataGridColumn4", _UnitListWindow_DataGridColumn4);
            return _loc_1;
        }// end function

        public function set turnLabel(param1:ClassFactory) : void
        {
            var _loc_2:* = this._142355337turnLabel;
            if (_loc_2 !== param1)
            {
                this._142355337turnLabel = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "turnLabel", _loc_2, param1));
            }
            return;
        }// end function

        private function _UnitListWindow_ClassFactory2_i() : ClassFactory
        {
            var _loc_1:* = new ClassFactory();
            teamLabel = _loc_1;
            _loc_1.generator = UnitListWindow_inlineComponent2;
            _loc_1.properties = {outerDocument:this};
            return _loc_1;
        }// end function

        private function get _statusVisible() : Boolean
        {
            return this._2064651809_statusVisible;
        }// end function

        private function _UnitListWindow_DataGridColumn2_i() : DataGridColumn
        {
            var _loc_1:* = new DataGridColumn();
            _UnitListWindow_DataGridColumn2 = _loc_1;
            _loc_1.dataField = "name";
            _loc_1.itemRenderer = _UnitListWindow_ClassFactory4_c();
            BindingManager.executeBindings(this, "_UnitListWindow_DataGridColumn2", _UnitListWindow_DataGridColumn2);
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

        public function ___UnitListWindow_Image3_click(event:MouseEvent) : void
        {
            closeWindow();
            return;
        }// end function

        public function expRequest(param1:Object) : String
        {
            return param1.team == 0 ? (param1.exp + "/" + param1.nextExp) : ("----");
        }// end function

        public function set teamLabel(param1:ClassFactory) : void
        {
            var _loc_2:* = this._193839465teamLabel;
            if (_loc_2 !== param1)
            {
                this._193839465teamLabel = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "teamLabel", _loc_2, param1));
            }
            return;
        }// end function

        public function get teamLabel() : ClassFactory
        {
            return this._193839465teamLabel;
        }// end function

        private function set _statusVisible(param1:Boolean) : void
        {
            var _loc_2:* = this._2064651809_statusVisible;
            if (_loc_2 !== param1)
            {
                this._2064651809_statusVisible = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "_statusVisible", _loc_2, param1));
            }
            return;
        }// end function

        public function set statusVisible(param1:Boolean) : void
        {
            _statusVisible = param1;
            return;
        }// end function

        private function _UnitListWindow_DataGridColumn3_i() : DataGridColumn
        {
            var _loc_1:* = new DataGridColumn();
            _UnitListWindow_DataGridColumn3 = _loc_1;
            _loc_1.dataField = "jobName";
            BindingManager.executeBindings(this, "_UnitListWindow_DataGridColumn3", _UnitListWindow_DataGridColumn3);
            return _loc_1;
        }// end function

        private function _UnitListWindow_DataGridColumn5_c() : DataGridColumn
        {
            var _loc_1:* = new DataGridColumn();
            _loc_1.dataField = "level";
            _loc_1.headerText = "Lv";
            _loc_1.width = 50;
            _loc_1.setStyle("textAlign", "center");
            return _loc_1;
        }// end function

        public function turnRequest(param1:Object) : int
        {
            return (_units.indexOf(param1) + 1);
        }// end function

        private function _UnitListWindow_DataGridColumn7_i() : DataGridColumn
        {
            var _loc_1:* = new DataGridColumn();
            _UnitListWindow_DataGridColumn7 = _loc_1;
            _loc_1.dataField = "baseDamage";
            _loc_1.width = 40;
            _loc_1.setStyle("textAlign", "center");
            BindingManager.executeBindings(this, "_UnitListWindow_DataGridColumn7", _UnitListWindow_DataGridColumn7);
            return _loc_1;
        }// end function

        public function get expLabel() : ClassFactory
        {
            return this._1958883625expLabel;
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

        private function _UnitListWindow_ClassFactory1_i() : ClassFactory
        {
            var _loc_1:* = new ClassFactory();
            turnLabel = _loc_1;
            _loc_1.generator = UnitListWindow_inlineComponent1;
            _loc_1.properties = {outerDocument:this};
            return _loc_1;
        }// end function

        public function set units(param1:Array) : void
        {
            var _loc_2:* = param1.concat();
            _units = _loc_2;
            setup();
            return;
        }// end function

        private function _UnitListWindow_DataGridColumn1_i() : DataGridColumn
        {
            var _loc_1:* = new DataGridColumn();
            _UnitListWindow_DataGridColumn1 = _loc_1;
            _loc_1.dataField = "turn";
            _loc_1.width = 60;
            _loc_1.setStyle("textAlign", "center");
            BindingManager.executeBindings(this, "_UnitListWindow_DataGridColumn1", _UnitListWindow_DataGridColumn1);
            return _loc_1;
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

        private function _UnitListWindow_bindingsSetup() : Array
        {
            var binding:Binding;
            var result:Array;
            binding = new Binding(this, function () : Object
            {
                return _swf_window;
            }// end function
            , function (param1:Object) : void
            {
                _UnitListWindow_Image1.source = param1;
                return;
            }// end function
            , "_UnitListWindow_Image1.source");
            result[0] = binding;
            binding = new Binding(this, function () : Number
            {
                return WINDOW_X;
            }// end function
            , function (param1:Number) : void
            {
                _UnitListWindow_Text1.x = param1;
                return;
            }// end function
            , "_UnitListWindow_Text1.x");
            result[1] = binding;
            binding = new Binding(this, function () : Number
            {
                return WINDOW_Y;
            }// end function
            , function (param1:Number) : void
            {
                _UnitListWindow_Text1.y = param1;
                return;
            }// end function
            , "_UnitListWindow_Text1.y");
            result[2] = binding;
            binding = new Binding(this, function () : Number
            {
                return WINDOW_WD;
            }// end function
            , function (param1:Number) : void
            {
                _UnitListWindow_Text1.width = param1;
                return;
            }// end function
            , "_UnitListWindow_Text1.width");
            result[3] = binding;
            binding = new Binding(this, function () : String
            {
                var _loc_1:* = Utils.i18n("unitListTitle");
                var _loc_2:* = _loc_1 == undefined ? (null) : (String(_loc_1));
                return _loc_2;
            }// end function
            , function (param1:String) : void
            {
                _UnitListWindow_Text1.text = param1;
                return;
            }// end function
            , "_UnitListWindow_Text1.text");
            result[4] = binding;
            binding = new Binding(this, function () : Object
            {
                return _units;
            }// end function
            , function (param1:Object) : void
            {
                _UnitListWindow_DataGrid1.dataProvider = param1;
                return;
            }// end function
            , "_UnitListWindow_DataGrid1.dataProvider");
            result[5] = binding;
            binding = new Binding(this, function () : Number
            {
                return WINDOW_X + 20;
            }// end function
            , function (param1:Number) : void
            {
                _UnitListWindow_DataGrid1.x = param1;
                return;
            }// end function
            , "_UnitListWindow_DataGrid1.x");
            result[6] = binding;
            binding = new Binding(this, function () : Number
            {
                return WINDOW_Y + 35 + 10;
            }// end function
            , function (param1:Number) : void
            {
                _UnitListWindow_DataGrid1.y = param1;
                return;
            }// end function
            , "_UnitListWindow_DataGrid1.y");
            result[7] = binding;
            binding = new Binding(this, function () : Number
            {
                return WINDOW_WD - 40;
            }// end function
            , function (param1:Number) : void
            {
                _UnitListWindow_DataGrid1.width = param1;
                return;
            }// end function
            , "_UnitListWindow_DataGrid1.width");
            result[8] = binding;
            binding = new Binding(this, function () : String
            {
                var _loc_1:* = Utils.i18n("unitListTurn");
                var _loc_2:* = _loc_1 == undefined ? (null) : (String(_loc_1));
                return _loc_2;
            }// end function
            , function (param1:String) : void
            {
                _UnitListWindow_DataGridColumn1.headerText = param1;
                return;
            }// end function
            , "_UnitListWindow_DataGridColumn1.headerText");
            result[9] = binding;
            binding = new Binding(this, function () : IFactory
            {
                return turnLabel;
            }// end function
            , function (param1:IFactory) : void
            {
                _UnitListWindow_DataGridColumn1.itemRenderer = param1;
                return;
            }// end function
            , "_UnitListWindow_DataGridColumn1.itemRenderer");
            result[10] = binding;
            binding = new Binding(this, function () : Boolean
            {
                return _statusVisible;
            }// end function
            , function (param1:Boolean) : void
            {
                _UnitListWindow_DataGridColumn1.visible = param1;
                return;
            }// end function
            , "_UnitListWindow_DataGridColumn1.visible");
            result[11] = binding;
            binding = new Binding(this, function () : String
            {
                var _loc_1:* = Utils.i18n("generalName");
                var _loc_2:* = _loc_1 == undefined ? (null) : (String(_loc_1));
                return _loc_2;
            }// end function
            , function (param1:String) : void
            {
                _UnitListWindow_DataGridColumn2.headerText = param1;
                return;
            }// end function
            , "_UnitListWindow_DataGridColumn2.headerText");
            result[12] = binding;
            binding = new Binding(this, function () : String
            {
                var _loc_1:* = Utils.i18n("generalJob");
                var _loc_2:* = _loc_1 == undefined ? (null) : (String(_loc_1));
                return _loc_2;
            }// end function
            , function (param1:String) : void
            {
                _UnitListWindow_DataGridColumn3.headerText = param1;
                return;
            }// end function
            , "_UnitListWindow_DataGridColumn3.headerText");
            result[13] = binding;
            binding = new Binding(this, function () : String
            {
                var _loc_1:* = Utils.i18n("unitListArmy");
                var _loc_2:* = _loc_1 == undefined ? (null) : (String(_loc_1));
                return _loc_2;
            }// end function
            , function (param1:String) : void
            {
                _UnitListWindow_DataGridColumn4.headerText = param1;
                return;
            }// end function
            , "_UnitListWindow_DataGridColumn4.headerText");
            result[14] = binding;
            binding = new Binding(this, function () : IFactory
            {
                return teamLabel;
            }// end function
            , function (param1:IFactory) : void
            {
                _UnitListWindow_DataGridColumn4.itemRenderer = param1;
                return;
            }// end function
            , "_UnitListWindow_DataGridColumn4.itemRenderer");
            result[15] = binding;
            binding = new Binding(this, function () : Boolean
            {
                return _statusVisible;
            }// end function
            , function (param1:Boolean) : void
            {
                _UnitListWindow_DataGridColumn4.visible = param1;
                return;
            }// end function
            , "_UnitListWindow_DataGridColumn4.visible");
            result[16] = binding;
            binding = new Binding(this, function () : String
            {
                var _loc_1:* = Utils.i18n("generalAtack");
                var _loc_2:* = _loc_1 == undefined ? (null) : (String(_loc_1));
                return _loc_2;
            }// end function
            , function (param1:String) : void
            {
                _UnitListWindow_DataGridColumn7.headerText = param1;
                return;
            }// end function
            , "_UnitListWindow_DataGridColumn7.headerText");
            result[17] = binding;
            binding = new Binding(this, function () : String
            {
                var _loc_1:* = Utils.i18n("changeEquipmentDefense");
                var _loc_2:* = _loc_1 == undefined ? (null) : (String(_loc_1));
                return _loc_2;
            }// end function
            , function (param1:String) : void
            {
                _UnitListWindow_DataGridColumn8.headerText = param1;
                return;
            }// end function
            , "_UnitListWindow_DataGridColumn8.headerText");
            result[18] = binding;
            binding = new Binding(this, function () : String
            {
                var _loc_1:* = Utils.i18n("generalWeapon");
                var _loc_2:* = _loc_1 == undefined ? (null) : (String(_loc_1));
                return _loc_2;
            }// end function
            , function (param1:String) : void
            {
                _UnitListWindow_DataGridColumn9.headerText = param1;
                return;
            }// end function
            , "_UnitListWindow_DataGridColumn9.headerText");
            result[19] = binding;
            binding = new Binding(this, function () : Number
            {
                return BUTTON_X;
            }// end function
            , function (param1:Number) : void
            {
                _UnitListWindow_Image2.x = param1;
                return;
            }// end function
            , "_UnitListWindow_Image2.x");
            result[20] = binding;
            binding = new Binding(this, function () : Number
            {
                return BUTTON_Y;
            }// end function
            , function (param1:Number) : void
            {
                _UnitListWindow_Image2.y = param1;
                return;
            }// end function
            , "_UnitListWindow_Image2.y");
            result[21] = binding;
            binding = new Binding(this, function () : Object
            {
                return _swf_close;
            }// end function
            , function (param1:Object) : void
            {
                _UnitListWindow_Image2.source = param1;
                return;
            }// end function
            , "_UnitListWindow_Image2.source");
            result[22] = binding;
            binding = new Binding(this, function () : Number
            {
                return WINDOW_X + WINDOW_WD - 25;
            }// end function
            , function (param1:Number) : void
            {
                _UnitListWindow_Image3.x = param1;
                return;
            }// end function
            , "_UnitListWindow_Image3.x");
            result[23] = binding;
            binding = new Binding(this, function () : Number
            {
                return WINDOW_Y;
            }// end function
            , function (param1:Number) : void
            {
                _UnitListWindow_Image3.y = param1;
                return;
            }// end function
            , "_UnitListWindow_Image3.y");
            result[24] = binding;
            binding = new Binding(this, function () : Object
            {
                return _swf_close_window;
            }// end function
            , function (param1:Object) : void
            {
                _UnitListWindow_Image3.source = param1;
                return;
            }// end function
            , "_UnitListWindow_Image3.source");
            result[25] = binding;
            return result;
        }// end function

        private function _UnitListWindow_ClassFactory3_i() : ClassFactory
        {
            var _loc_1:* = new ClassFactory();
            expLabel = _loc_1;
            _loc_1.generator = UnitListWindow_inlineComponent3;
            _loc_1.properties = {outerDocument:this};
            return _loc_1;
        }// end function

        public function get units() : Array
        {
            return _units;
        }// end function

        private function get _units() : Array
        {
            return this._1463764368_units;
        }// end function

        private function _UnitListWindow_DataGridColumn9_i() : DataGridColumn
        {
            var _loc_1:* = new DataGridColumn();
            _UnitListWindow_DataGridColumn9 = _loc_1;
            _loc_1.dataField = "weaponName";
            BindingManager.executeBindings(this, "_UnitListWindow_DataGridColumn9", _UnitListWindow_DataGridColumn9);
            return _loc_1;
        }// end function

        public function teamRequest(param1:Object) : String
        {
            return param1.team == 0 ? (Utils.i18n("unitListMyArmy")) : (Utils.i18n("unitListEnemy"));
        }// end function

        private function get _swf_window() : MovieClipLoaderAsset
        {
            return this._1075873300_swf_window;
        }// end function

        public function ___UnitListWindow_Image2_click(event:MouseEvent) : void
        {
            closeWindow();
            return;
        }// end function

        public function get turnLabel() : ClassFactory
        {
            return this._142355337turnLabel;
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

        private function get _swf_close() : MovieClipLoaderAsset
        {
            return this._1193840764_swf_close;
        }// end function

        private function setup() : void
        {
            MovieClip(Loader(_swf_window.getChildAt(0)).content).gotoAndPlay("center_720x520");
            Loader(_swf_close.getChildAt(0)).content.addEventListener("BUTTON_CLOSE", function (event:Event) : void
            {
                closeWindow();
                return;
            }// end function
            );
            MovieClip(Loader(_swf_close.getChildAt(0)).content).gotoAndPlay("button_close");
            return;
        }// end function

        public static function set watcherSetupUtil(param1:IWatcherSetupUtil) : void
        {
            UnitListWindow._watcherSetupUtil = param1;
            return;
        }// end function

    }
}
