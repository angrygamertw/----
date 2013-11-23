package com.kbmj.viking.view.home
{
    import com.kbmj.viking.view.*;
    import flash.events.*;
    import flash.utils.*;
    import mx.binding.*;
    import mx.containers.*;
    import mx.controls.*;
    import mx.controls.dataGridClasses.*;
    import mx.core.*;
    import mx.events.*;

    public class HomeAllUnitListWindow extends PopupWindow implements IBindingClient
    {
        private var _723509744totalLabel:ClassFactory;
        var _watchers:Array;
        private var _3571652tw01:Panel;
        private var _940911795genderLabel:ClassFactory;
        public var _HomeAllUnitListWindow_DataGridColumn4:DataGridColumn;
        public var _HomeAllUnitListWindow_DataGridColumn6:DataGridColumn;
        public var _HomeAllUnitListWindow_DataGridColumn7:DataGridColumn;
        public var _HomeAllUnitListWindow_DataGridColumn8:DataGridColumn;
        public var _HomeAllUnitListWindow_DataGridColumn9:DataGridColumn;
        public var _HomeAllUnitListWindow_DataGridColumn10:DataGridColumn;
        public var _HomeAllUnitListWindow_DataGridColumn11:DataGridColumn;
        public var _HomeAllUnitListWindow_DataGridColumn13:DataGridColumn;
        private var _351342053_statusWindowWidth:int = 27;
        private var total:int = 0;
        var _bindingsByDestination:Object;
        private var _1463764368_units:Array;
        public var _HomeAllUnitListWindow_DataGrid1:DataGrid;
        private var _2064651809_statusVisible:Boolean = true;
        var _bindings:Array;
        var _bindingsBeginWithWord:Object;
        private var _documentDescriptor_:UIComponentDescriptor;
        private static var _watcherSetupUtil:IWatcherSetupUtil;

        public function HomeAllUnitListWindow()
        {
            _documentDescriptor_ = new UIComponentDescriptor({type:PopupWindow, propertiesFactory:function () : Object
            {
                return {height:567, width:750, childDescriptors:[new UIComponentDescriptor({type:Panel, id:"tw01", propertiesFactory:function () : Object
                {
                    return {layout:"absolute", title:"式姫一覧", width:700, height:567, styleName:"PanelBase", childDescriptors:[new UIComponentDescriptor({type:DataGrid, id:"_HomeAllUnitListWindow_DataGrid1", stylesFactory:function () : void
                    {
                        this.right = "25";
                        this.top = "76";
                        return;
                    }// end function
                    , propertiesFactory:function () : Object
                    {
                        return {width:650, height:373, styleName:"DataGridBase", sortableColumns:false, columns:[_HomeAllUnitListWindow_DataGridColumn1_c(), _HomeAllUnitListWindow_DataGridColumn2_c(), _HomeAllUnitListWindow_DataGridColumn3_c(), _HomeAllUnitListWindow_DataGridColumn4_i(), _HomeAllUnitListWindow_DataGridColumn5_c(), _HomeAllUnitListWindow_DataGridColumn6_i(), _HomeAllUnitListWindow_DataGridColumn7_i(), _HomeAllUnitListWindow_DataGridColumn8_i(), _HomeAllUnitListWindow_DataGridColumn9_i(), _HomeAllUnitListWindow_DataGridColumn10_i(), _HomeAllUnitListWindow_DataGridColumn11_i(), _HomeAllUnitListWindow_DataGridColumn12_c(), _HomeAllUnitListWindow_DataGridColumn13_i()]};
                    }// end function
                    })]};
                }// end function
                }), new UIComponentDescriptor({type:Canvas, propertiesFactory:function () : Object
                {
                    return {width:30, height:30, x:660, y:10, childDescriptors:[new UIComponentDescriptor({type:Button, events:{click:"___HomeAllUnitListWindow_Button1_click"}, stylesFactory:function () : void
                    {
                        this.fontSize = 30;
                        return;
                    }// end function
                    , propertiesFactory:function () : Object
                    {
                        return {width:26, height:26, x:5, styleName:"closeBtn", buttonMode:true};
                    }// end function
                    })]};
                }// end function
                })]};
            }// end function
            });
            _bindings = [];
            _watchers = [];
            _bindingsByDestination = {};
            _bindingsBeginWithWord = {};
            mx_internal::_document = this;
            this.height = 567;
            this.width = 750;
            _HomeAllUnitListWindow_ClassFactory1_i();
            _HomeAllUnitListWindow_ClassFactory2_i();
            return;
        }// end function

        private function _HomeAllUnitListWindow_bindingExprs() : void
        {
            var _loc_1:* = undefined;
            _loc_1 = _units;
            _loc_1 = genderLabel;
            _loc_1 = _statusWindowWidth;
            _loc_1 = _statusWindowWidth;
            _loc_1 = _statusWindowWidth;
            _loc_1 = _statusWindowWidth;
            _loc_1 = _statusWindowWidth;
            _loc_1 = _statusWindowWidth;
            _loc_1 = totalLabel;
            return;
        }// end function

        private function _HomeAllUnitListWindow_DataGridColumn2_c() : DataGridColumn
        {
            var _loc_1:* = new DataGridColumn();
            _loc_1.dataField = "jobName";
            _loc_1.headerText = "種族";
            _loc_1.width = 80;
            return _loc_1;
        }// end function

        public function genderRequest(param1:Object) : String
        {
            return param1.gender == 0 ? ("男") : ("女");
        }// end function

        public function set tw01(param1:Panel) : void
        {
            var _loc_2:* = this._3571652tw01;
            if (_loc_2 !== param1)
            {
                this._3571652tw01 = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "tw01", _loc_2, param1));
            }
            return;
        }// end function

        private function _HomeAllUnitListWindow_DataGridColumn6_i() : DataGridColumn
        {
            var _loc_1:* = new DataGridColumn();
            _HomeAllUnitListWindow_DataGridColumn6 = _loc_1;
            _loc_1.dataField = "strength";
            _loc_1.headerText = "力";
            _loc_1.setStyle("textAlign", "center");
            BindingManager.executeBindings(this, "_HomeAllUnitListWindow_DataGridColumn6", _HomeAllUnitListWindow_DataGridColumn6);
            return _loc_1;
        }// end function

        private function _HomeAllUnitListWindow_DataGridColumn8_i() : DataGridColumn
        {
            var _loc_1:* = new DataGridColumn();
            _HomeAllUnitListWindow_DataGridColumn8 = _loc_1;
            _loc_1.dataField = "agility";
            _loc_1.headerText = "速";
            _loc_1.setStyle("textAlign", "center");
            BindingManager.executeBindings(this, "_HomeAllUnitListWindow_DataGridColumn8", _HomeAllUnitListWindow_DataGridColumn8);
            return _loc_1;
        }// end function

        private function _HomeAllUnitListWindow_DataGridColumn4_i() : DataGridColumn
        {
            var _loc_1:* = new DataGridColumn();
            _HomeAllUnitListWindow_DataGridColumn4 = _loc_1;
            _loc_1.dataField = "gender";
            _loc_1.headerText = "性別";
            _loc_1.width = 40;
            _loc_1.setStyle("textAlign", "center");
            BindingManager.executeBindings(this, "_HomeAllUnitListWindow_DataGridColumn4", _HomeAllUnitListWindow_DataGridColumn4);
            return _loc_1;
        }// end function

        override public function initialize() : void
        {
            var target:HomeAllUnitListWindow;
            var watcherSetupUtilClass:Object;
            .mx_internal::setDocumentDescriptor(_documentDescriptor_);
            var bindings:* = _HomeAllUnitListWindow_bindingsSetup();
            var watchers:Array;
            target;
            if (_watcherSetupUtil == null)
            {
                watcherSetupUtilClass = getDefinitionByName("_com_kbmj_viking_view_home_HomeAllUnitListWindowWatcherSetupUtil");
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

        private function _HomeAllUnitListWindow_DataGridColumn11_i() : DataGridColumn
        {
            var _loc_1:* = new DataGridColumn();
            _HomeAllUnitListWindow_DataGridColumn11 = _loc_1;
            _loc_1.dataField = "luck";
            _loc_1.headerText = "運";
            _loc_1.setStyle("textAlign", "center");
            BindingManager.executeBindings(this, "_HomeAllUnitListWindow_DataGridColumn11", _HomeAllUnitListWindow_DataGridColumn11);
            return _loc_1;
        }// end function

        private function _HomeAllUnitListWindow_ClassFactory2_i() : ClassFactory
        {
            var _loc_1:* = new ClassFactory();
            totalLabel = _loc_1;
            _loc_1.generator = HomeAllUnitListWindow_inlineComponent2;
            _loc_1.properties = {outerDocument:this};
            return _loc_1;
        }// end function

        private function get _statusVisible() : Boolean
        {
            return this._2064651809_statusVisible;
        }// end function

        public function ___HomeAllUnitListWindow_Button1_click(event:MouseEvent) : void
        {
            onClose();
            return;
        }// end function

        public function totalRequest(param1:Object) : int
        {
            return param1.strength + param1.tech + param1.agility + param1.defense + param1.intelligence + param1.luck;
        }// end function

        private function _HomeAllUnitListWindow_DataGridColumn13_i() : DataGridColumn
        {
            var _loc_1:* = new DataGridColumn();
            _HomeAllUnitListWindow_DataGridColumn13 = _loc_1;
            _loc_1.headerText = "総合";
            _loc_1.width = 40;
            _loc_1.setStyle("textAlign", "center");
            BindingManager.executeBindings(this, "_HomeAllUnitListWindow_DataGridColumn13", _HomeAllUnitListWindow_DataGridColumn13);
            return _loc_1;
        }// end function

        public function get genderLabel() : ClassFactory
        {
            return this._940911795genderLabel;
        }// end function

        public function get totalLabel() : ClassFactory
        {
            return this._723509744totalLabel;
        }// end function

        public function set statusVisible(param1:Boolean) : void
        {
            _statusVisible = param1;
            return;
        }// end function

        public function set totalLabel(param1:ClassFactory) : void
        {
            var _loc_2:* = this._723509744totalLabel;
            if (_loc_2 !== param1)
            {
                this._723509744totalLabel = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "totalLabel", _loc_2, param1));
            }
            return;
        }// end function

        private function _HomeAllUnitListWindow_DataGridColumn1_c() : DataGridColumn
        {
            var _loc_1:* = new DataGridColumn();
            _loc_1.dataField = "name";
            _loc_1.headerText = "名前";
            _loc_1.itemRenderer = _HomeAllUnitListWindow_ClassFactory3_c();
            return _loc_1;
        }// end function

        private function _HomeAllUnitListWindow_DataGridColumn3_c() : DataGridColumn
        {
            var _loc_1:* = new DataGridColumn();
            _loc_1.dataField = "level";
            _loc_1.headerText = "レベル";
            _loc_1.width = 45;
            _loc_1.setStyle("textAlign", "center");
            return _loc_1;
        }// end function

        private function _HomeAllUnitListWindow_DataGridColumn5_c() : DataGridColumn
        {
            var _loc_1:* = new DataGridColumn();
            _loc_1.dataField = "age";
            _loc_1.headerText = "年齢";
            _loc_1.width = 40;
            _loc_1.setStyle("textAlign", "center");
            return _loc_1;
        }// end function

        public function get tw01() : Panel
        {
            return this._3571652tw01;
        }// end function

        private function _HomeAllUnitListWindow_DataGridColumn7_i() : DataGridColumn
        {
            var _loc_1:* = new DataGridColumn();
            _HomeAllUnitListWindow_DataGridColumn7 = _loc_1;
            _loc_1.dataField = "tech";
            _loc_1.headerText = "技";
            _loc_1.setStyle("textAlign", "center");
            BindingManager.executeBindings(this, "_HomeAllUnitListWindow_DataGridColumn7", _HomeAllUnitListWindow_DataGridColumn7);
            return _loc_1;
        }// end function

        private function _HomeAllUnitListWindow_DataGridColumn9_i() : DataGridColumn
        {
            var _loc_1:* = new DataGridColumn();
            _HomeAllUnitListWindow_DataGridColumn9 = _loc_1;
            _loc_1.dataField = "defense";
            _loc_1.headerText = "守";
            _loc_1.setStyle("textAlign", "center");
            BindingManager.executeBindings(this, "_HomeAllUnitListWindow_DataGridColumn9", _HomeAllUnitListWindow_DataGridColumn9);
            return _loc_1;
        }// end function

        private function _HomeAllUnitListWindow_DataGridColumn12_c() : DataGridColumn
        {
            var _loc_1:* = new DataGridColumn();
            _loc_1.dataField = "maxHp";
            _loc_1.headerText = "HP";
            _loc_1.width = 28;
            _loc_1.setStyle("textAlign", "center");
            return _loc_1;
        }// end function

        private function _HomeAllUnitListWindow_DataGridColumn10_i() : DataGridColumn
        {
            var _loc_1:* = new DataGridColumn();
            _HomeAllUnitListWindow_DataGridColumn10 = _loc_1;
            _loc_1.dataField = "intelligence";
            _loc_1.headerText = "賢";
            _loc_1.setStyle("textAlign", "center");
            BindingManager.executeBindings(this, "_HomeAllUnitListWindow_DataGridColumn10", _HomeAllUnitListWindow_DataGridColumn10);
            return _loc_1;
        }// end function

        private function _HomeAllUnitListWindow_ClassFactory3_c() : ClassFactory
        {
            var _loc_1:* = new ClassFactory();
            _loc_1.generator = UnitDetailLabelRenderer;
            return _loc_1;
        }// end function

        private function _HomeAllUnitListWindow_ClassFactory1_i() : ClassFactory
        {
            var _loc_1:* = new ClassFactory();
            genderLabel = _loc_1;
            _loc_1.generator = HomeAllUnitListWindow_inlineComponent1;
            _loc_1.properties = {outerDocument:this};
            return _loc_1;
        }// end function

        private function set _statusWindowWidth(param1:int) : void
        {
            var _loc_2:* = this._351342053_statusWindowWidth;
            if (_loc_2 !== param1)
            {
                this._351342053_statusWindowWidth = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "_statusWindowWidth", _loc_2, param1));
            }
            return;
        }// end function

        public function set units(param1:Array) : void
        {
            _units = param1;
            return;
        }// end function

        public function set genderLabel(param1:ClassFactory) : void
        {
            var _loc_2:* = this._940911795genderLabel;
            if (_loc_2 !== param1)
            {
                this._940911795genderLabel = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "genderLabel", _loc_2, param1));
            }
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

        public function get units() : Array
        {
            return _units;
        }// end function

        private function get _units() : Array
        {
            return this._1463764368_units;
        }// end function

        private function _HomeAllUnitListWindow_bindingsSetup() : Array
        {
            var binding:Binding;
            var result:Array;
            binding = new Binding(this, function () : Object
            {
                return _units;
            }// end function
            , function (param1:Object) : void
            {
                _HomeAllUnitListWindow_DataGrid1.dataProvider = param1;
                return;
            }// end function
            , "_HomeAllUnitListWindow_DataGrid1.dataProvider");
            result[0] = binding;
            binding = new Binding(this, function () : IFactory
            {
                return genderLabel;
            }// end function
            , function (param1:IFactory) : void
            {
                _HomeAllUnitListWindow_DataGridColumn4.itemRenderer = param1;
                return;
            }// end function
            , "_HomeAllUnitListWindow_DataGridColumn4.itemRenderer");
            result[1] = binding;
            binding = new Binding(this, function () : Number
            {
                return _statusWindowWidth;
            }// end function
            , function (param1:Number) : void
            {
                _HomeAllUnitListWindow_DataGridColumn6.width = param1;
                return;
            }// end function
            , "_HomeAllUnitListWindow_DataGridColumn6.width");
            result[2] = binding;
            binding = new Binding(this, function () : Number
            {
                return _statusWindowWidth;
            }// end function
            , function (param1:Number) : void
            {
                _HomeAllUnitListWindow_DataGridColumn7.width = param1;
                return;
            }// end function
            , "_HomeAllUnitListWindow_DataGridColumn7.width");
            result[3] = binding;
            binding = new Binding(this, function () : Number
            {
                return _statusWindowWidth;
            }// end function
            , function (param1:Number) : void
            {
                _HomeAllUnitListWindow_DataGridColumn8.width = param1;
                return;
            }// end function
            , "_HomeAllUnitListWindow_DataGridColumn8.width");
            result[4] = binding;
            binding = new Binding(this, function () : Number
            {
                return _statusWindowWidth;
            }// end function
            , function (param1:Number) : void
            {
                _HomeAllUnitListWindow_DataGridColumn9.width = param1;
                return;
            }// end function
            , "_HomeAllUnitListWindow_DataGridColumn9.width");
            result[5] = binding;
            binding = new Binding(this, function () : Number
            {
                return _statusWindowWidth;
            }// end function
            , function (param1:Number) : void
            {
                _HomeAllUnitListWindow_DataGridColumn10.width = param1;
                return;
            }// end function
            , "_HomeAllUnitListWindow_DataGridColumn10.width");
            result[6] = binding;
            binding = new Binding(this, function () : Number
            {
                return _statusWindowWidth;
            }// end function
            , function (param1:Number) : void
            {
                _HomeAllUnitListWindow_DataGridColumn11.width = param1;
                return;
            }// end function
            , "_HomeAllUnitListWindow_DataGridColumn11.width");
            result[7] = binding;
            binding = new Binding(this, function () : IFactory
            {
                return totalLabel;
            }// end function
            , function (param1:IFactory) : void
            {
                _HomeAllUnitListWindow_DataGridColumn13.itemRenderer = param1;
                return;
            }// end function
            , "_HomeAllUnitListWindow_DataGridColumn13.itemRenderer");
            result[8] = binding;
            return result;
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

        private function get _statusWindowWidth() : int
        {
            return this._351342053_statusWindowWidth;
        }// end function

        public static function set watcherSetupUtil(param1:IWatcherSetupUtil) : void
        {
            HomeAllUnitListWindow._watcherSetupUtil = param1;
            return;
        }// end function

    }
}
