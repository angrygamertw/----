package com.kbmj.viking.view.city
{
    import com.kbmj.viking.lib.*;
    import flash.utils.*;
    import mx.binding.*;
    import mx.containers.*;
    import mx.controls.*;
    import mx.controls.dataGridClasses.*;
    import mx.core.*;
    import mx.events.*;
    import mx.styles.*;

    public class SearchGuildWindow_inlineComponent4 extends Canvas implements IBindingClient
    {
        var _bindingsBeginWithWord:Object;
        var _bindingsByDestination:Object;
        public var _SearchGuildWindow_inlineComponent4_DataGrid1:DataGrid;
        var _watchers:Array;
        private var _88844982outerDocument:SearchGuildWindow;
        public var _SearchGuildWindow_inlineComponent4_DataGridColumn1:DataGridColumn;
        public var _SearchGuildWindow_inlineComponent4_DataGridColumn2:DataGridColumn;
        public var _SearchGuildWindow_inlineComponent4_DataGridColumn3:DataGridColumn;
        var _bindings:Array;
        private var _documentDescriptor_:UIComponentDescriptor;
        private static var _watcherSetupUtil:IWatcherSetupUtil;

        public function SearchGuildWindow_inlineComponent4()
        {
            _documentDescriptor_ = new UIComponentDescriptor({type:Canvas, propertiesFactory:function () : Object
            {
                return {childDescriptors:[new UIComponentDescriptor({type:DataGrid, id:"_SearchGuildWindow_inlineComponent4_DataGrid1", stylesFactory:function () : void
                {
                    this.paddingTop = 0;
                    this.paddingBottom = 0;
                    return;
                }// end function
                , propertiesFactory:function () : Object
                {
                    return {styleName:"GuildListDataGrid", width:180, height:117, rowHeight:29, rowCount:3, selectable:false, sortableColumns:false, verticalScrollPolicy:"off", showHeaders:false, columns:[_SearchGuildWindow_inlineComponent4_DataGridColumn1_i(), _SearchGuildWindow_inlineComponent4_DataGridColumn2_i(), _SearchGuildWindow_inlineComponent4_DataGridColumn3_i()]};
                }// end function
                })]};
            }// end function
            });
            _bindings = [];
            _watchers = [];
            _bindingsByDestination = {};
            _bindingsBeginWithWord = {};
            mx_internal::_document = this;
            if (!this.styleDeclaration)
            {
                this.styleDeclaration = new CSSStyleDeclaration();
            }
            this.styleDeclaration.defaultFactory = function () : void
            {
                this.borderSides = "top left right bottom";
                return;
            }// end function
            ;
            return;
        }// end function

        public function set outerDocument(param1:SearchGuildWindow) : void
        {
            var _loc_2:* = this._88844982outerDocument;
            if (_loc_2 !== param1)
            {
                this._88844982outerDocument = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "outerDocument", _loc_2, param1));
            }
            return;
        }// end function

        private function _SearchGuildWindow_inlineComponent4_bindingExprs() : void
        {
            var _loc_1:* = undefined;
            _loc_1 = data;
            _loc_1 = Utils.i18n("createGuildName");
            _loc_1 = outerDocument.linkRenderer;
            _loc_1 = Utils.i18n("localize44");
            _loc_1 = outerDocument.memberRenderer;
            _loc_1 = Utils.i18n("generalTerritory");
            return;
        }// end function

        private function _SearchGuildWindow_inlineComponent4_DataGridColumn1_i() : DataGridColumn
        {
            var _loc_1:* = new DataGridColumn();
            _SearchGuildWindow_inlineComponent4_DataGridColumn1 = _loc_1;
            _loc_1.dataField = "name";
            _loc_1.width = 62;
            BindingManager.executeBindings(this, "_SearchGuildWindow_inlineComponent4_DataGridColumn1", _SearchGuildWindow_inlineComponent4_DataGridColumn1);
            return _loc_1;
        }// end function

        private function _SearchGuildWindow_inlineComponent4_DataGridColumn2_i() : DataGridColumn
        {
            var _loc_1:* = new DataGridColumn();
            _SearchGuildWindow_inlineComponent4_DataGridColumn2 = _loc_1;
            _loc_1.dataField = "member";
            _loc_1.setStyle("textAlign", "center");
            BindingManager.executeBindings(this, "_SearchGuildWindow_inlineComponent4_DataGridColumn2", _SearchGuildWindow_inlineComponent4_DataGridColumn2);
            return _loc_1;
        }// end function

        private function _SearchGuildWindow_inlineComponent4_DataGridColumn3_i() : DataGridColumn
        {
            var _loc_1:* = new DataGridColumn();
            _SearchGuildWindow_inlineComponent4_DataGridColumn3 = _loc_1;
            _loc_1.dataField = "level_max_properties_count";
            _loc_1.setStyle("textAlign", "center");
            _loc_1.setStyle("paddingRight", 0);
            _loc_1.setStyle("paddingLeft", 0);
            BindingManager.executeBindings(this, "_SearchGuildWindow_inlineComponent4_DataGridColumn3", _SearchGuildWindow_inlineComponent4_DataGridColumn3);
            return _loc_1;
        }// end function

        override public function initialize() : void
        {
            var target:SearchGuildWindow_inlineComponent4;
            var watcherSetupUtilClass:Object;
            .mx_internal::setDocumentDescriptor(_documentDescriptor_);
            var bindings:* = _SearchGuildWindow_inlineComponent4_bindingsSetup();
            var watchers:Array;
            target;
            if (_watcherSetupUtil == null)
            {
                watcherSetupUtilClass = getDefinitionByName("_com_kbmj_viking_view_city_SearchGuildWindow_inlineComponent4WatcherSetupUtil");
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

        private function _SearchGuildWindow_inlineComponent4_bindingsSetup() : Array
        {
            var binding:Binding;
            var result:Array;
            binding = new Binding(this, function () : Object
            {
                return data;
            }// end function
            , function (param1:Object) : void
            {
                _SearchGuildWindow_inlineComponent4_DataGrid1.dataProvider = param1;
                return;
            }// end function
            , "_SearchGuildWindow_inlineComponent4_DataGrid1.dataProvider");
            result[0] = binding;
            binding = new Binding(this, function () : String
            {
                var _loc_1:* = Utils.i18n("createGuildName");
                var _loc_2:* = _loc_1 == undefined ? (null) : (String(_loc_1));
                return _loc_2;
            }// end function
            , function (param1:String) : void
            {
                _SearchGuildWindow_inlineComponent4_DataGridColumn1.headerText = param1;
                return;
            }// end function
            , "_SearchGuildWindow_inlineComponent4_DataGridColumn1.headerText");
            result[1] = binding;
            binding = new Binding(this, function () : IFactory
            {
                return outerDocument.linkRenderer;
            }// end function
            , function (param1:IFactory) : void
            {
                _SearchGuildWindow_inlineComponent4_DataGridColumn1.itemRenderer = param1;
                return;
            }// end function
            , "_SearchGuildWindow_inlineComponent4_DataGridColumn1.itemRenderer");
            result[2] = binding;
            binding = new Binding(this, function () : String
            {
                var _loc_1:* = Utils.i18n("localize44");
                var _loc_2:* = _loc_1 == undefined ? (null) : (String(_loc_1));
                return _loc_2;
            }// end function
            , function (param1:String) : void
            {
                _SearchGuildWindow_inlineComponent4_DataGridColumn2.headerText = param1;
                return;
            }// end function
            , "_SearchGuildWindow_inlineComponent4_DataGridColumn2.headerText");
            result[3] = binding;
            binding = new Binding(this, function () : IFactory
            {
                return outerDocument.memberRenderer;
            }// end function
            , function (param1:IFactory) : void
            {
                _SearchGuildWindow_inlineComponent4_DataGridColumn2.itemRenderer = param1;
                return;
            }// end function
            , "_SearchGuildWindow_inlineComponent4_DataGridColumn2.itemRenderer");
            result[4] = binding;
            binding = new Binding(this, function () : String
            {
                var _loc_1:* = Utils.i18n("generalTerritory");
                var _loc_2:* = _loc_1 == undefined ? (null) : (String(_loc_1));
                return _loc_2;
            }// end function
            , function (param1:String) : void
            {
                _SearchGuildWindow_inlineComponent4_DataGridColumn3.headerText = param1;
                return;
            }// end function
            , "_SearchGuildWindow_inlineComponent4_DataGridColumn3.headerText");
            result[5] = binding;
            return result;
        }// end function

        public function get outerDocument() : SearchGuildWindow
        {
            return this._88844982outerDocument;
        }// end function

        public static function set watcherSetupUtil(param1:IWatcherSetupUtil) : void
        {
            SearchGuildWindow_inlineComponent4._watcherSetupUtil = param1;
            return;
        }// end function

    }
}
