package com.kbmj.viking.view.home
{
    import com.kbmj.viking.lib.*;
    import com.kbmj.viking.vo.home.*;
    import com.kbmj.viking.vo.tactics.*;
    import flash.events.*;
    import flash.utils.*;
    import mx.binding.*;
    import mx.containers.*;
    import mx.controls.*;
    import mx.controls.dataGridClasses.*;
    import mx.core.*;
    import mx.events.*;
    import mx.managers.*;

    public class ConfirmBuildWindow extends Canvas implements IBindingClient
    {
        var _watchers:Array;
        private var _227002312confirmCanvas:Canvas;
        private var _buildDetail:Object;
        public var _ConfirmBuildWindow_Text1:Text;
        private var _694296783confirmButtonEnabled:Boolean = true;
        private var _1896677185windowLayer:Canvas;
        private var _3594628unit:UnitVO;
        private var _1995960111construction:ConstructionVO;
        private var _1016406257unit_building:DataGrid;
        var _bindingsByDestination:Object;
        var _bindingsBeginWithWord:Object;
        public var _ConfirmBuildWindow_DataGridColumn1:DataGridColumn;
        public var _ConfirmBuildWindow_DataGridColumn2:DataGridColumn;
        public var _ConfirmBuildWindow_DataGridColumn3:DataGridColumn;
        var _bindings:Array;
        private var _documentDescriptor_:UIComponentDescriptor;
        private var _294407156buildDetails:Array;
        private var _1777504961buttonLayer:Canvas;
        public static const CLOSE_WINDOW:String = "ConfirmBuildWindow/closewindow";
        private static var _watcherSetupUtil:IWatcherSetupUtil;
        public static const CONFIRMED:String = "ConfirmBuildWindow/confirmed";

        public function ConfirmBuildWindow()
        {
            _documentDescriptor_ = new UIComponentDescriptor({type:Canvas, propertiesFactory:function () : Object
            {
                return {childDescriptors:[new UIComponentDescriptor({type:Canvas, id:"windowLayer"}), new UIComponentDescriptor({type:Canvas, id:"confirmCanvas", propertiesFactory:function () : Object
                {
                    return {childDescriptors:[new UIComponentDescriptor({type:Box, propertiesFactory:function () : Object
                    {
                        return {width:530, height:544, childDescriptors:[new UIComponentDescriptor({type:Canvas, propertiesFactory:function () : Object
                        {
                            return {childDescriptors:[new UIComponentDescriptor({type:Text, id:"_ConfirmBuildWindow_Text1", propertiesFactory:function () : Object
                            {
                                return {styleName:"DialogText", x:234, y:210};
                            }// end function
                            }), new UIComponentDescriptor({type:DataGrid, id:"unit_building", propertiesFactory:function () : Object
                            {
                                return {styleName:"UnitBuilding", width:290, rowHeight:55, rowCount:1, x:235, y:235, selectable:false, sortableColumns:false, columns:[_ConfirmBuildWindow_DataGridColumn1_i(), _ConfirmBuildWindow_DataGridColumn2_i(), _ConfirmBuildWindow_DataGridColumn3_i()]};
                            }// end function
                            }), new UIComponentDescriptor({type:Canvas, id:"buttonLayer"})]};
                        }// end function
                        })]};
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

        public function get unit() : UnitVO
        {
            return this._3594628unit;
        }// end function

        public function set unit(param1:UnitVO) : void
        {
            var _loc_2:* = this._3594628unit;
            if (_loc_2 !== param1)
            {
                this._3594628unit = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "unit", _loc_2, param1));
            }
            return;
        }// end function

        public function get unit_building() : DataGrid
        {
            return this._1016406257unit_building;
        }// end function

        override public function initialize() : void
        {
            var target:ConfirmBuildWindow;
            var watcherSetupUtilClass:Object;
            .mx_internal::setDocumentDescriptor(_documentDescriptor_);
            var bindings:* = _ConfirmBuildWindow_bindingsSetup();
            var watchers:Array;
            target;
            if (_watcherSetupUtil == null)
            {
                watcherSetupUtilClass = getDefinitionByName("_com_kbmj_viking_view_home_ConfirmBuildWindowWatcherSetupUtil");
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

        private function _ConfirmBuildWindow_DataGridColumn1_i() : DataGridColumn
        {
            var _loc_1:* = new DataGridColumn();
            _ConfirmBuildWindow_DataGridColumn1 = _loc_1;
            _loc_1.dataField = "materials";
            BindingManager.executeBindings(this, "_ConfirmBuildWindow_DataGridColumn1", _ConfirmBuildWindow_DataGridColumn1);
            return _loc_1;
        }// end function

        private function _ConfirmBuildWindow_DataGridColumn3_i() : DataGridColumn
        {
            var _loc_1:* = new DataGridColumn();
            _ConfirmBuildWindow_DataGridColumn3 = _loc_1;
            _loc_1.dataField = "days";
            _loc_1.width = 65;
            BindingManager.executeBindings(this, "_ConfirmBuildWindow_DataGridColumn3", _ConfirmBuildWindow_DataGridColumn3);
            return _loc_1;
        }// end function

        private function _ConfirmBuildWindow_ClassFactory1_c() : ClassFactory
        {
            var _loc_1:* = new ClassFactory();
            _loc_1.generator = UnitDetailRendererForBuilding;
            return _loc_1;
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

        public function set construction(param1:ConstructionVO) : void
        {
            var _loc_2:* = this._1995960111construction;
            if (_loc_2 !== param1)
            {
                this._1995960111construction = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "construction", _loc_2, param1));
            }
            return;
        }// end function

        private function _ConfirmBuildWindow_bindingsSetup() : Array
        {
            var binding:Binding;
            var result:Array;
            binding = new Binding(this, function () : String
            {
                var _loc_1:* = Utils.i18n("confirmBuildResearch", buildDetail.constructionName);
                var _loc_2:* = _loc_1 == undefined ? (null) : (String(_loc_1));
                return _loc_2;
            }// end function
            , function (param1:String) : void
            {
                _ConfirmBuildWindow_Text1.text = param1;
                return;
            }// end function
            , "_ConfirmBuildWindow_Text1.text");
            result[0] = binding;
            binding = new Binding(this, function () : Object
            {
                return buildDetails;
            }// end function
            , function (param1:Object) : void
            {
                unit_building.dataProvider = param1;
                return;
            }// end function
            , "unit_building.dataProvider");
            result[1] = binding;
            binding = new Binding(this, function () : String
            {
                var _loc_1:* = Utils.i18n("confirmBuildMaterial");
                var _loc_2:* = _loc_1 == undefined ? (null) : (String(_loc_1));
                return _loc_2;
            }// end function
            , function (param1:String) : void
            {
                _ConfirmBuildWindow_DataGridColumn1.headerText = param1;
                return;
            }// end function
            , "_ConfirmBuildWindow_DataGridColumn1.headerText");
            result[2] = binding;
            binding = new Binding(this, function () : String
            {
                var _loc_1:* = Utils.i18n("confirmBuildUnit");
                var _loc_2:* = _loc_1 == undefined ? (null) : (String(_loc_1));
                return _loc_2;
            }// end function
            , function (param1:String) : void
            {
                _ConfirmBuildWindow_DataGridColumn2.headerText = param1;
                return;
            }// end function
            , "_ConfirmBuildWindow_DataGridColumn2.headerText");
            result[3] = binding;
            binding = new Binding(this, function () : String
            {
                var _loc_1:* = Utils.i18n("confirmBuildTime");
                var _loc_2:* = _loc_1 == undefined ? (null) : (String(_loc_1));
                return _loc_2;
            }// end function
            , function (param1:String) : void
            {
                _ConfirmBuildWindow_DataGridColumn3.headerText = param1;
                return;
            }// end function
            , "_ConfirmBuildWindow_DataGridColumn3.headerText");
            result[4] = binding;
            return result;
        }// end function

        private function set confirmButtonEnabled(param1:Boolean) : void
        {
            var _loc_2:* = this._694296783confirmButtonEnabled;
            if (_loc_2 !== param1)
            {
                this._694296783confirmButtonEnabled = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "confirmButtonEnabled", _loc_2, param1));
            }
            return;
        }// end function

        public function get confirmCanvas() : Canvas
        {
            return this._227002312confirmCanvas;
        }// end function

        private function _ConfirmBuildWindow_bindingExprs() : void
        {
            var _loc_1:* = undefined;
            _loc_1 = Utils.i18n("confirmBuildResearch", buildDetail.constructionName);
            _loc_1 = buildDetails;
            _loc_1 = Utils.i18n("confirmBuildMaterial");
            _loc_1 = Utils.i18n("confirmBuildUnit");
            _loc_1 = Utils.i18n("confirmBuildTime");
            return;
        }// end function

        public function set buildDetail(param1:Object) : void
        {
            var _loc_2:* = this.buildDetail;
            if (_loc_2 !== param1)
            {
                this._1810612319buildDetail = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "buildDetail", _loc_2, param1));
            }
            return;
        }// end function

        public function get buttonLayer() : Canvas
        {
            return this._1777504961buttonLayer;
        }// end function

        public function get windowLayer() : Canvas
        {
            return this._1896677185windowLayer;
        }// end function

        public function get construction() : ConstructionVO
        {
            return this._1995960111construction;
        }// end function

        public function onClose() : void
        {
            PopUpManager.removePopUp(this);
            dispatchEvent(new Event(CLOSE_WINDOW));
            return;
        }// end function

        private function _ConfirmBuildWindow_DataGridColumn2_i() : DataGridColumn
        {
            var _loc_1:* = new DataGridColumn();
            _ConfirmBuildWindow_DataGridColumn2 = _loc_1;
            _loc_1.dataField = "unit.name";
            _loc_1.itemRenderer = _ConfirmBuildWindow_ClassFactory1_c();
            _loc_1.width = 90;
            BindingManager.executeBindings(this, "_ConfirmBuildWindow_DataGridColumn2", _ConfirmBuildWindow_DataGridColumn2);
            return _loc_1;
        }// end function

        private function get confirmButtonEnabled() : Boolean
        {
            return this._694296783confirmButtonEnabled;
        }// end function

        public function get buildDetail() : Object
        {
            return _buildDetail;
        }// end function

        public function onConfirm() : void
        {
            confirmButtonEnabled = false;
            dispatchEvent(new Event(CONFIRMED));
            PopUpManager.removePopUp(this);
            return;
        }// end function

        private function set buildDetails(param1:Array) : void
        {
            var _loc_2:* = this._294407156buildDetails;
            if (_loc_2 !== param1)
            {
                this._294407156buildDetails = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "buildDetails", _loc_2, param1));
            }
            return;
        }// end function

        public function set confirmCanvas(param1:Canvas) : void
        {
            var _loc_2:* = this._227002312confirmCanvas;
            if (_loc_2 !== param1)
            {
                this._227002312confirmCanvas = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "confirmCanvas", _loc_2, param1));
            }
            return;
        }// end function

        private function get buildDetails() : Array
        {
            return this._294407156buildDetails;
        }// end function

        private function set _1810612319buildDetail(param1:Object) : void
        {
            _buildDetail = param1;
            _buildDetail.days = _buildDetail.days + Utils.i18n("generalMinuts");
            buildDetails = [_buildDetail];
            confirmButtonEnabled = true;
            return;
        }// end function

        public function set buttonLayer(param1:Canvas) : void
        {
            var _loc_2:* = this._1777504961buttonLayer;
            if (_loc_2 !== param1)
            {
                this._1777504961buttonLayer = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "buttonLayer", _loc_2, param1));
            }
            return;
        }// end function

        public static function set watcherSetupUtil(param1:IWatcherSetupUtil) : void
        {
            _watcherSetupUtil = param1;
            return;
        }// end function

    }
}
