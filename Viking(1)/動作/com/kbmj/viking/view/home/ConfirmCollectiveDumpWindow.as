package com.kbmj.viking.view.home
{
    import com.kbmj.viking.lib.*;
    import com.kbmj.viking.view.*;
    import flash.display.*;
    import flash.events.*;
    import flash.utils.*;
    import mx.binding.*;
    import mx.containers.*;
    import mx.controls.*;
    import mx.controls.dataGridClasses.*;
    import mx.core.*;
    import mx.events.*;

    public class ConfirmCollectiveDumpWindow extends PopupWindow implements IBindingClient
    {
        public var _ConfirmCollectiveDumpWindow_Image1:Image;
        public var _ConfirmCollectiveDumpWindow_Image2:Image;
        public var _ConfirmCollectiveDumpWindow_Label1:Label;
        private var weaponDetail:WeaponDetail;
        var _watchers:Array;
        private var _487487717_swf_cancel_button:MovieClipLoaderAsset;
        public var _ConfirmCollectiveDumpWindow_DataGridColumn1:DataGridColumn;
        public var _ConfirmCollectiveDumpWindow_DataGridColumn2:DataGridColumn;
        public var _ConfirmCollectiveDumpWindow_DataGridColumn3:DataGridColumn;
        public var _ConfirmCollectiveDumpWindow_DataGridColumn4:DataGridColumn;
        public var _ConfirmCollectiveDumpWindow_DataGridColumn5:DataGridColumn;
        private var _1430704301_dumpItems:Array;
        private var _1896677185windowLayer:Canvas;
        private var _1389174581bigbox:Box;
        private var _1950226028smallerCanvas:Canvas;
        private var _2009475207_swf_ok_button:MovieClipLoaderAsset;
        var _bindingsBeginWithWord:Object;
        var _bindingsByDestination:Object;
        private var _563962990nameRenderer:ClassFactory;
        private var _1788817256dataList:DataGrid;
        var _bindings:Array;
        private var _documentDescriptor_:UIComponentDescriptor;
        private var equipmentDetail:EquipmentDetail;
        private static var _watcherSetupUtil:IWatcherSetupUtil;
        public static const CONFIRMED:String = "ConfirmCollectiveDumpWindow/confirmed";

        public function ConfirmCollectiveDumpWindow()
        {
            _documentDescriptor_ = new UIComponentDescriptor({type:PopupWindow, propertiesFactory:function () : Object
            {
                return {childDescriptors:[new UIComponentDescriptor({type:Canvas, id:"windowLayer"}), new UIComponentDescriptor({type:Box, id:"bigbox", propertiesFactory:function () : Object
                {
                    return {width:400, height:360, x:180, y:110, childDescriptors:[new UIComponentDescriptor({type:Canvas, id:"smallerCanvas", propertiesFactory:function () : Object
                    {
                        return {childDescriptors:[new UIComponentDescriptor({type:Label, id:"_ConfirmCollectiveDumpWindow_Label1", stylesFactory:function () : void
                        {
                            this.fontSize = 14;
                            return;
                        }// end function
                        , propertiesFactory:function () : Object
                        {
                            return {x:20, y:10};
                        }// end function
                        }), new UIComponentDescriptor({type:DataGrid, id:"dataList", stylesFactory:function () : void
                        {
                            this.verticalAlign = "middle";
                            return;
                        }// end function
                        , propertiesFactory:function () : Object
                        {
                            return {styleName:"DataGridBase", x:20, y:45, height:195, width:360, rowHeight:28, rowCount:7, sortableColumns:false, columns:[_ConfirmCollectiveDumpWindow_DataGridColumn1_i(), _ConfirmCollectiveDumpWindow_DataGridColumn2_i(), _ConfirmCollectiveDumpWindow_DataGridColumn3_i(), _ConfirmCollectiveDumpWindow_DataGridColumn4_i(), _ConfirmCollectiveDumpWindow_DataGridColumn5_i()]};
                        }// end function
                        }), new UIComponentDescriptor({type:Image, id:"_ConfirmCollectiveDumpWindow_Image1", events:{click:"___ConfirmCollectiveDumpWindow_Image1_click"}, propertiesFactory:function () : Object
                        {
                            return {x:80, y:280};
                        }// end function
                        }), new UIComponentDescriptor({type:Image, id:"_ConfirmCollectiveDumpWindow_Image2", events:{click:"___ConfirmCollectiveDumpWindow_Image2_click"}, propertiesFactory:function () : Object
                        {
                            return {x:200, y:280};
                        }// end function
                        })]};
                    }// end function
                    })]};
                }// end function
                })]};
            }// end function
            });
            weaponDetail = new WeaponDetail();
            equipmentDetail = new EquipmentDetail();
            _2009475207_swf_ok_button = new Viking.EmbedSwfButtonCommon();
            _487487717_swf_cancel_button = new Viking.EmbedSwfButtonCommon();
            _bindings = [];
            _watchers = [];
            _bindingsByDestination = {};
            _bindingsBeginWithWord = {};
            mx_internal::_document = this;
            _ConfirmCollectiveDumpWindow_ClassFactory1_i();
            this.addEventListener("creationComplete", ___ConfirmCollectiveDumpWindow_PopupWindow1_creationComplete);
            return;
        }// end function

        private function _ConfirmCollectiveDumpWindow_DataGridColumn2_i() : DataGridColumn
        {
            var _loc_1:* = new DataGridColumn();
            _ConfirmCollectiveDumpWindow_DataGridColumn2 = _loc_1;
            _loc_1.dataField = "enduranceLabel";
            _loc_1.width = 60;
            _loc_1.setStyle("textAlign", "center");
            BindingManager.executeBindings(this, "_ConfirmCollectiveDumpWindow_DataGridColumn2", _ConfirmCollectiveDumpWindow_DataGridColumn2);
            return _loc_1;
        }// end function

        override public function initialize() : void
        {
            var target:ConfirmCollectiveDumpWindow;
            var watcherSetupUtilClass:Object;
            .mx_internal::setDocumentDescriptor(_documentDescriptor_);
            var bindings:* = _ConfirmCollectiveDumpWindow_bindingsSetup();
            var watchers:Array;
            target;
            if (_watcherSetupUtil == null)
            {
                watcherSetupUtilClass = getDefinitionByName("_com_kbmj_viking_view_home_ConfirmCollectiveDumpWindowWatcherSetupUtil");
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

        private function _ConfirmCollectiveDumpWindow_DataGridColumn4_i() : DataGridColumn
        {
            var _loc_1:* = new DataGridColumn();
            _ConfirmCollectiveDumpWindow_DataGridColumn4 = _loc_1;
            _loc_1.dataField = "rarity";
            _loc_1.width = 40;
            _loc_1.setStyle("textAlign", "center");
            BindingManager.executeBindings(this, "_ConfirmCollectiveDumpWindow_DataGridColumn4", _ConfirmCollectiveDumpWindow_DataGridColumn4);
            return _loc_1;
        }// end function

        public function set bigbox(param1:Box) : void
        {
            var _loc_2:* = this._1389174581bigbox;
            if (_loc_2 !== param1)
            {
                this._1389174581bigbox = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "bigbox", _loc_2, param1));
            }
            return;
        }// end function

        public function onDecide() : void
        {
            sendPopupEvent(CONFIRMED, dumpItems);
            onClose();
            return;
        }// end function

        public function init() : void
        {
            MovieClip(Loader(_swf_ok_button.getChildAt(0)).content).gotoAndPlay(0);
            MovieClip(Loader(_swf_cancel_button.getChildAt(0)).content).gotoAndPlay(0);
            MovieClip(Loader(_swf_ok_button.getChildAt(0)).content).gotoAndPlay("button_decide");
            MovieClip(Loader(_swf_cancel_button.getChildAt(0)).content).gotoAndPlay("button_cancel");
            return;
        }// end function

        private function get _swf_cancel_button() : MovieClipLoaderAsset
        {
            return this._487487717_swf_cancel_button;
        }// end function

        public function ___ConfirmCollectiveDumpWindow_Image1_click(event:MouseEvent) : void
        {
            onDecide();
            return;
        }// end function

        public function get dumpItems() : Array
        {
            return _dumpItems;
        }// end function

        private function get _dumpItems() : Array
        {
            return this._1430704301_dumpItems;
        }// end function

        private function set _swf_cancel_button(param1:MovieClipLoaderAsset) : void
        {
            var _loc_2:* = this._487487717_swf_cancel_button;
            if (_loc_2 !== param1)
            {
                this._487487717_swf_cancel_button = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "_swf_cancel_button", _loc_2, param1));
            }
            return;
        }// end function

        public function onDetail(param1:Object) : void
        {
            if (param1.masterType == "WeaponMaster" || param1.masterType == "ArmorMaster" || param1.masterType == "AccessoryMaster")
            {
                weaponDetail.viewData = param1;
                if (weaponDetail.viewData)
                {
                    popupWindow(weaponDetail, false);
                }
            }
            else
            {
                equipmentDetail.viewData = param1;
                if (equipmentDetail.viewData)
                {
                    popupWindow(equipmentDetail);
                }
            }
            return;
        }// end function

        public function get windowLayer() : Canvas
        {
            return this._1896677185windowLayer;
        }// end function

        private function _ConfirmCollectiveDumpWindow_bindingExprs() : void
        {
            var _loc_1:* = undefined;
            _loc_1 = Utils.i18n("confirmCollectiveDump");
            _loc_1 = _dumpItems;
            _loc_1 = Utils.i18n("generalName");
            _loc_1 = nameRenderer;
            _loc_1 = Utils.i18n("changeEquipmentEndurance");
            _loc_1 = Utils.i18n("changeEquipmentType");
            _loc_1 = Utils.i18n("generalRarity");
            _loc_1 = Utils.i18n("generalDescription");
            _loc_1 = _swf_ok_button;
            _loc_1 = _swf_cancel_button;
            return;
        }// end function

        private function _ConfirmCollectiveDumpWindow_DataGridColumn1_i() : DataGridColumn
        {
            var _loc_1:* = new DataGridColumn();
            _ConfirmCollectiveDumpWindow_DataGridColumn1 = _loc_1;
            _loc_1.dataField = "nameLabel";
            _loc_1.width = 80;
            BindingManager.executeBindings(this, "_ConfirmCollectiveDumpWindow_DataGridColumn1", _ConfirmCollectiveDumpWindow_DataGridColumn1);
            return _loc_1;
        }// end function

        public function set dataList(param1:DataGrid) : void
        {
            var _loc_2:* = this._1788817256dataList;
            if (_loc_2 !== param1)
            {
                this._1788817256dataList = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "dataList", _loc_2, param1));
            }
            return;
        }// end function

        private function _ConfirmCollectiveDumpWindow_DataGridColumn3_i() : DataGridColumn
        {
            var _loc_1:* = new DataGridColumn();
            _ConfirmCollectiveDumpWindow_DataGridColumn3 = _loc_1;
            _loc_1.dataField = "belongingTypeLabel";
            _loc_1.width = 65;
            _loc_1.setStyle("textAlign", "center");
            BindingManager.executeBindings(this, "_ConfirmCollectiveDumpWindow_DataGridColumn3", _ConfirmCollectiveDumpWindow_DataGridColumn3);
            return _loc_1;
        }// end function

        private function _ConfirmCollectiveDumpWindow_DataGridColumn5_i() : DataGridColumn
        {
            var _loc_1:* = new DataGridColumn();
            _ConfirmCollectiveDumpWindow_DataGridColumn5 = _loc_1;
            _loc_1.dataField = "description";
            _loc_1.sortable = false;
            BindingManager.executeBindings(this, "_ConfirmCollectiveDumpWindow_DataGridColumn5", _ConfirmCollectiveDumpWindow_DataGridColumn5);
            return _loc_1;
        }// end function

        public function ___ConfirmCollectiveDumpWindow_PopupWindow1_creationComplete(event:FlexEvent) : void
        {
            init();
            return;
        }// end function

        public function set dumpItems(param1:Array) : void
        {
            _dumpItems = param1;
            return;
        }// end function

        private function _ConfirmCollectiveDumpWindow_ClassFactory1_i() : ClassFactory
        {
            var _loc_1:* = new ClassFactory();
            nameRenderer = _loc_1;
            _loc_1.generator = ConfirmCollectiveDumpWindow_inlineComponent1;
            _loc_1.properties = {outerDocument:this};
            return _loc_1;
        }// end function

        public function set smallerCanvas(param1:Canvas) : void
        {
            var _loc_2:* = this._1950226028smallerCanvas;
            if (_loc_2 !== param1)
            {
                this._1950226028smallerCanvas = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "smallerCanvas", _loc_2, param1));
            }
            return;
        }// end function

        private function _ConfirmCollectiveDumpWindow_bindingsSetup() : Array
        {
            var binding:Binding;
            var result:Array;
            binding = new Binding(this, function () : String
            {
                var _loc_1:* = Utils.i18n("confirmCollectiveDump");
                var _loc_2:* = _loc_1 == undefined ? (null) : (String(_loc_1));
                return _loc_2;
            }// end function
            , function (param1:String) : void
            {
                _ConfirmCollectiveDumpWindow_Label1.text = param1;
                return;
            }// end function
            , "_ConfirmCollectiveDumpWindow_Label1.text");
            result[0] = binding;
            binding = new Binding(this, function () : Object
            {
                return _dumpItems;
            }// end function
            , function (param1:Object) : void
            {
                dataList.dataProvider = param1;
                return;
            }// end function
            , "dataList.dataProvider");
            result[1] = binding;
            binding = new Binding(this, function () : String
            {
                var _loc_1:* = Utils.i18n("generalName");
                var _loc_2:* = _loc_1 == undefined ? (null) : (String(_loc_1));
                return _loc_2;
            }// end function
            , function (param1:String) : void
            {
                _ConfirmCollectiveDumpWindow_DataGridColumn1.headerText = param1;
                return;
            }// end function
            , "_ConfirmCollectiveDumpWindow_DataGridColumn1.headerText");
            result[2] = binding;
            binding = new Binding(this, function () : IFactory
            {
                return nameRenderer;
            }// end function
            , function (param1:IFactory) : void
            {
                _ConfirmCollectiveDumpWindow_DataGridColumn1.itemRenderer = param1;
                return;
            }// end function
            , "_ConfirmCollectiveDumpWindow_DataGridColumn1.itemRenderer");
            result[3] = binding;
            binding = new Binding(this, function () : String
            {
                var _loc_1:* = Utils.i18n("changeEquipmentEndurance");
                var _loc_2:* = _loc_1 == undefined ? (null) : (String(_loc_1));
                return _loc_2;
            }// end function
            , function (param1:String) : void
            {
                _ConfirmCollectiveDumpWindow_DataGridColumn2.headerText = param1;
                return;
            }// end function
            , "_ConfirmCollectiveDumpWindow_DataGridColumn2.headerText");
            result[4] = binding;
            binding = new Binding(this, function () : String
            {
                var _loc_1:* = Utils.i18n("changeEquipmentType");
                var _loc_2:* = _loc_1 == undefined ? (null) : (String(_loc_1));
                return _loc_2;
            }// end function
            , function (param1:String) : void
            {
                _ConfirmCollectiveDumpWindow_DataGridColumn3.headerText = param1;
                return;
            }// end function
            , "_ConfirmCollectiveDumpWindow_DataGridColumn3.headerText");
            result[5] = binding;
            binding = new Binding(this, function () : String
            {
                var _loc_1:* = Utils.i18n("generalRarity");
                var _loc_2:* = _loc_1 == undefined ? (null) : (String(_loc_1));
                return _loc_2;
            }// end function
            , function (param1:String) : void
            {
                _ConfirmCollectiveDumpWindow_DataGridColumn4.headerText = param1;
                return;
            }// end function
            , "_ConfirmCollectiveDumpWindow_DataGridColumn4.headerText");
            result[6] = binding;
            binding = new Binding(this, function () : String
            {
                var _loc_1:* = Utils.i18n("generalDescription");
                var _loc_2:* = _loc_1 == undefined ? (null) : (String(_loc_1));
                return _loc_2;
            }// end function
            , function (param1:String) : void
            {
                _ConfirmCollectiveDumpWindow_DataGridColumn5.headerText = param1;
                return;
            }// end function
            , "_ConfirmCollectiveDumpWindow_DataGridColumn5.headerText");
            result[7] = binding;
            binding = new Binding(this, function () : Object
            {
                return _swf_ok_button;
            }// end function
            , function (param1:Object) : void
            {
                _ConfirmCollectiveDumpWindow_Image1.source = param1;
                return;
            }// end function
            , "_ConfirmCollectiveDumpWindow_Image1.source");
            result[8] = binding;
            binding = new Binding(this, function () : Object
            {
                return _swf_cancel_button;
            }// end function
            , function (param1:Object) : void
            {
                _ConfirmCollectiveDumpWindow_Image2.source = param1;
                return;
            }// end function
            , "_ConfirmCollectiveDumpWindow_Image2.source");
            result[9] = binding;
            return result;
        }// end function

        public function get dataList() : DataGrid
        {
            return this._1788817256dataList;
        }// end function

        private function set _dumpItems(param1:Array) : void
        {
            var _loc_2:* = this._1430704301_dumpItems;
            if (_loc_2 !== param1)
            {
                this._1430704301_dumpItems = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "_dumpItems", _loc_2, param1));
            }
            return;
        }// end function

        public function set nameRenderer(param1:ClassFactory) : void
        {
            var _loc_2:* = this._563962990nameRenderer;
            if (_loc_2 !== param1)
            {
                this._563962990nameRenderer = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "nameRenderer", _loc_2, param1));
            }
            return;
        }// end function

        public function get nameRenderer() : ClassFactory
        {
            return this._563962990nameRenderer;
        }// end function

        private function set _swf_ok_button(param1:MovieClipLoaderAsset) : void
        {
            var _loc_2:* = this._2009475207_swf_ok_button;
            if (_loc_2 !== param1)
            {
                this._2009475207_swf_ok_button = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "_swf_ok_button", _loc_2, param1));
            }
            return;
        }// end function

        public function ___ConfirmCollectiveDumpWindow_Image2_click(event:MouseEvent) : void
        {
            onClose();
            return;
        }// end function

        public function get bigbox() : Box
        {
            return this._1389174581bigbox;
        }// end function

        private function get _swf_ok_button() : MovieClipLoaderAsset
        {
            return this._2009475207_swf_ok_button;
        }// end function

        public function get smallerCanvas() : Canvas
        {
            return this._1950226028smallerCanvas;
        }// end function

        public static function set watcherSetupUtil(param1:IWatcherSetupUtil) : void
        {
            ConfirmCollectiveDumpWindow._watcherSetupUtil = param1;
            return;
        }// end function

    }
}
