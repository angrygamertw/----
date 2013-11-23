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

    public class UpgradeItemWindow extends PopupWindow implements IBindingClient
    {
        private var _documentDescriptor_:UIComponentDescriptor;
        private var _1824046992_materialItemNameLabel:String = "";
        public var _UpgradeItemWindow_Image2:Image;
        private var confirmUpgradeItemWindow:ConfirmUpgradeItemWindow;
        private var _2009475207_swf_ok_button:MovieClipLoaderAsset;
        var _bindingsByDestination:Object;
        private var _1788817256dataList:DataGrid;
        private var _72042391_upgradedMaster:Object;
        private var _1952873254_materialItems:Array;
        public var _UpgradeItemWindow_Label1:Label;
        public var _UpgradeItemWindow_Label2:Label;
        public var _UpgradeItemWindow_Label4:Label;
        public var _UpgradeItemWindow_Label5:Label;
        public var _UpgradeItemWindow_Label6:Label;
        private var _1777504961buttonLayer:Canvas;
        public var _UpgradeItemWindow_DataGridColumn1:DataGridColumn;
        public var _UpgradeItemWindow_DataGridColumn2:DataGridColumn;
        public var _UpgradeItemWindow_DataGridColumn3:DataGridColumn;
        var _watchers:Array;
        private var _487487717_swf_cancel_button:MovieClipLoaderAsset;
        private var weaponDetail:WeaponDetail;
        public var _UpgradeItemWindow_Label3:Label;
        private var _1896677185windowLayer:Canvas;
        private var _1389174581bigbox:Box;
        private var _materialItem:Object;
        private var _1950226028smallerCanvas:Canvas;
        var _bindingsBeginWithWord:Object;
        private var _1828026768_upgradeItem:Object;
        var _bindings:Array;
        public var _UpgradeItemWindow_Image1:Image;
        private static var _watcherSetupUtil:IWatcherSetupUtil;
        public static const UPGRADE_ITEM:String = "UpgradeItemWindow/UpgradeItem";

        public function UpgradeItemWindow()
        {
            _documentDescriptor_ = new UIComponentDescriptor({type:PopupWindow, propertiesFactory:function () : Object
            {
                return {childDescriptors:[new UIComponentDescriptor({type:Canvas, id:"windowLayer"}), new UIComponentDescriptor({type:Box, id:"bigbox", propertiesFactory:function () : Object
                {
                    return {width:400, height:360, x:180, y:110, childDescriptors:[new UIComponentDescriptor({type:Canvas, id:"smallerCanvas", propertiesFactory:function () : Object
                    {
                        return {childDescriptors:[new UIComponentDescriptor({type:Label, id:"_UpgradeItemWindow_Label1", stylesFactory:function () : void
                        {
                            this.fontSize = 14;
                            return;
                        }// end function
                        , propertiesFactory:function () : Object
                        {
                            return {x:20, y:10};
                        }// end function
                        }), new UIComponentDescriptor({type:DataGrid, id:"dataList", events:{itemClick:"__dataList_itemClick"}, stylesFactory:function () : void
                        {
                            this.verticalAlign = "middle";
                            return;
                        }// end function
                        , propertiesFactory:function () : Object
                        {
                            return {styleName:"ProductionGrid", x:20, y:45, height:85, rowHeight:28, rowCount:3, sortableColumns:false, columns:[_UpgradeItemWindow_DataGridColumn1_i(), _UpgradeItemWindow_DataGridColumn2_i(), _UpgradeItemWindow_DataGridColumn3_i()]};
                        }// end function
                        }), new UIComponentDescriptor({type:Label, id:"_UpgradeItemWindow_Label2", stylesFactory:function () : void
                        {
                            this.fontSize = 14;
                            return;
                        }// end function
                        , propertiesFactory:function () : Object
                        {
                            return {x:30, y:150};
                        }// end function
                        }), new UIComponentDescriptor({type:Label, id:"_UpgradeItemWindow_Label3", events:{click:"___UpgradeItemWindow_Label3_click"}, stylesFactory:function () : void
                        {
                            this.fontSize = 14;
                            this.color = 12337210;
                            this.textDecoration = "underline";
                            return;
                        }// end function
                        , propertiesFactory:function () : Object
                        {
                            return {x:85, y:150};
                        }// end function
                        }), new UIComponentDescriptor({type:Label, id:"_UpgradeItemWindow_Label4", stylesFactory:function () : void
                        {
                            this.fontSize = 14;
                            return;
                        }// end function
                        , propertiesFactory:function () : Object
                        {
                            return {x:30, y:190};
                        }// end function
                        }), new UIComponentDescriptor({type:Label, id:"_UpgradeItemWindow_Label5", events:{click:"___UpgradeItemWindow_Label5_click"}, stylesFactory:function () : void
                        {
                            this.fontSize = 14;
                            this.color = 12337210;
                            this.textDecoration = "underline";
                            return;
                        }// end function
                        , propertiesFactory:function () : Object
                        {
                            return {x:85, y:190};
                        }// end function
                        }), new UIComponentDescriptor({type:Label, id:"_UpgradeItemWindow_Label6", stylesFactory:function () : void
                        {
                            this.fontSize = 14;
                            return;
                        }// end function
                        , propertiesFactory:function () : Object
                        {
                            return {x:30, y:230};
                        }// end function
                        }), new UIComponentDescriptor({type:Canvas, id:"buttonLayer"}), new UIComponentDescriptor({type:Image, id:"_UpgradeItemWindow_Image1", events:{click:"___UpgradeItemWindow_Image1_click"}, propertiesFactory:function () : Object
                        {
                            return {x:80, y:280};
                        }// end function
                        }), new UIComponentDescriptor({type:Image, id:"_UpgradeItemWindow_Image2", events:{click:"___UpgradeItemWindow_Image2_click"}, propertiesFactory:function () : Object
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
            confirmUpgradeItemWindow = new ConfirmUpgradeItemWindow();
            _2009475207_swf_ok_button = new Viking.EmbedSwfButtonCommon();
            _487487717_swf_cancel_button = new Viking.EmbedSwfButtonCommon();
            _bindings = [];
            _watchers = [];
            _bindingsByDestination = {};
            _bindingsBeginWithWord = {};
            mx_internal::_document = this;
            this.addEventListener("creationComplete", ___UpgradeItemWindow_PopupWindow1_creationComplete);
            return;
        }// end function

        public function __dataList_itemClick(event:ListEvent) : void
        {
            selectMaterialItem();
            return;
        }// end function

        public function init() : void
        {
            materialItem = null;
            MovieClip(Loader(_swf_ok_button.getChildAt(0)).content).gotoAndPlay(0);
            MovieClip(Loader(_swf_cancel_button.getChildAt(0)).content).gotoAndPlay(0);
            MovieClip(Loader(_swf_ok_button.getChildAt(0)).content).gotoAndPlay("button_decide");
            MovieClip(Loader(_swf_cancel_button.getChildAt(0)).content).gotoAndPlay("button_cancel");
            return;
        }// end function

        private function get _materialItems() : Array
        {
            return this._1952873254_materialItems;
        }// end function

        public function onDetail(param1:Object) : void
        {
            weaponDetail.viewData = param1;
            if (weaponDetail.viewData)
            {
                popupWindow(weaponDetail);
            }
            return;
        }// end function

        private function get _swf_cancel_button() : MovieClipLoaderAsset
        {
            return this._487487717_swf_cancel_button;
        }// end function

        private function set _upgradeItem(param1:Object) : void
        {
            var _loc_2:* = this._1828026768_upgradeItem;
            if (_loc_2 !== param1)
            {
                this._1828026768_upgradeItem = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "_upgradeItem", _loc_2, param1));
            }
            return;
        }// end function

        public function upgrade() : void
        {
            if (!_materialItem)
            {
                return;
            }
            confirmUpgradeItemWindow.upgradeItemName = _upgradeItem.nameLabel;
            confirmUpgradeItemWindow.upgradedMasterName = _upgradedMaster.nameLabel;
            confirmUpgradeItemWindow.upgradeMaterialName = _materialItem.masterVO.nameLabel;
            confirmUpgradeItemWindow.addEventListener(ConfirmUpgradeItemWindow.CONFIRMED, upgradeItemHandler);
            popupWindow(confirmUpgradeItemWindow, false);
            return;
        }// end function

        public function ___UpgradeItemWindow_Image2_click(event:MouseEvent) : void
        {
            onClose();
            return;
        }// end function

        private function _UpgradeItemWindow_bindingsSetup() : Array
        {
            var binding:Binding;
            var result:Array;
            binding = new Binding(this, function () : String
            {
                var _loc_1:* = Utils.i18n("confirmUpgradeSelectItem");
                var _loc_2:* = _loc_1 == undefined ? (null) : (String(_loc_1));
                return _loc_2;
            }// end function
            , function (param1:String) : void
            {
                _UpgradeItemWindow_Label1.text = param1;
                return;
            }// end function
            , "_UpgradeItemWindow_Label1.text");
            result[0] = binding;
            binding = new Binding(this, function () : Object
            {
                return _materialItems;
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
                var _loc_1:* = Utils.i18n("confirmUpgradeMaterial");
                var _loc_2:* = _loc_1 == undefined ? (null) : (String(_loc_1));
                return _loc_2;
            }// end function
            , function (param1:String) : void
            {
                _UpgradeItemWindow_DataGridColumn1.headerText = param1;
                return;
            }// end function
            , "_UpgradeItemWindow_DataGridColumn1.headerText");
            result[2] = binding;
            binding = new Binding(this, function () : String
            {
                var _loc_1:* = Utils.i18n("changeEquipmentEffect");
                var _loc_2:* = _loc_1 == undefined ? (null) : (String(_loc_1));
                return _loc_2;
            }// end function
            , function (param1:String) : void
            {
                _UpgradeItemWindow_DataGridColumn2.headerText = param1;
                return;
            }// end function
            , "_UpgradeItemWindow_DataGridColumn2.headerText");
            result[3] = binding;
            binding = new Binding(this, function () : String
            {
                var _loc_1:* = Utils.i18n("generalPossessionCount");
                var _loc_2:* = _loc_1 == undefined ? (null) : (String(_loc_1));
                return _loc_2;
            }// end function
            , function (param1:String) : void
            {
                _UpgradeItemWindow_DataGridColumn3.headerText = param1;
                return;
            }// end function
            , "_UpgradeItemWindow_DataGridColumn3.headerText");
            result[4] = binding;
            binding = new Binding(this, function () : String
            {
                var _loc_1:* = Utils.i18n("confirmItemBeforeUpgrade") + "：";
                var _loc_2:* = _loc_1 == undefined ? (null) : (String(_loc_1));
                return _loc_2;
            }// end function
            , function (param1:String) : void
            {
                _UpgradeItemWindow_Label2.text = param1;
                return;
            }// end function
            , "_UpgradeItemWindow_Label2.text");
            result[5] = binding;
            binding = new Binding(this, function () : String
            {
                var _loc_1:* = _upgradeItem.nameLabel;
                var _loc_2:* = _loc_1 == undefined ? (null) : (String(_loc_1));
                return _loc_2;
            }// end function
            , function (param1:String) : void
            {
                _UpgradeItemWindow_Label3.text = param1;
                return;
            }// end function
            , "_UpgradeItemWindow_Label3.text");
            result[6] = binding;
            binding = new Binding(this, function () : String
            {
                var _loc_1:* = Utils.i18n("confirmItemAfterUpgrade") + "：";
                var _loc_2:* = _loc_1 == undefined ? (null) : (String(_loc_1));
                return _loc_2;
            }// end function
            , function (param1:String) : void
            {
                _UpgradeItemWindow_Label4.text = param1;
                return;
            }// end function
            , "_UpgradeItemWindow_Label4.text");
            result[7] = binding;
            binding = new Binding(this, function () : String
            {
                var _loc_1:* = _upgradedMaster.nameLabel;
                var _loc_2:* = _loc_1 == undefined ? (null) : (String(_loc_1));
                return _loc_2;
            }// end function
            , function (param1:String) : void
            {
                _UpgradeItemWindow_Label5.text = param1;
                return;
            }// end function
            , "_UpgradeItemWindow_Label5.text");
            result[8] = binding;
            binding = new Binding(this, function () : String
            {
                var _loc_1:* = Utils.i18n("confirmUpgradeItem") + "：" + _materialItemNameLabel;
                var _loc_2:* = _loc_1 == undefined ? (null) : (String(_loc_1));
                return _loc_2;
            }// end function
            , function (param1:String) : void
            {
                _UpgradeItemWindow_Label6.text = param1;
                return;
            }// end function
            , "_UpgradeItemWindow_Label6.text");
            result[9] = binding;
            binding = new Binding(this, function () : Object
            {
                return _swf_ok_button;
            }// end function
            , function (param1:Object) : void
            {
                _UpgradeItemWindow_Image1.source = param1;
                return;
            }// end function
            , "_UpgradeItemWindow_Image1.source");
            result[10] = binding;
            binding = new Binding(this, function () : Object
            {
                return _swf_cancel_button;
            }// end function
            , function (param1:Object) : void
            {
                _UpgradeItemWindow_Image2.source = param1;
                return;
            }// end function
            , "_UpgradeItemWindow_Image2.source");
            result[11] = binding;
            return result;
        }// end function

        public function ___UpgradeItemWindow_Label5_click(event:MouseEvent) : void
        {
            onDetail(_upgradedMaster);
            return;
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

        private function _UpgradeItemWindow_DataGridColumn2_i() : DataGridColumn
        {
            var _loc_1:* = new DataGridColumn();
            _UpgradeItemWindow_DataGridColumn2 = _loc_1;
            _loc_1.dataField = "description";
            _loc_1.width = 200;
            _loc_1.setStyle("textAlign", "center");
            BindingManager.executeBindings(this, "_UpgradeItemWindow_DataGridColumn2", _UpgradeItemWindow_DataGridColumn2);
            return _loc_1;
        }// end function

        public function get windowLayer() : Canvas
        {
            return this._1896677185windowLayer;
        }// end function

        public function get buttonLayer() : Canvas
        {
            return this._1777504961buttonLayer;
        }// end function

        public function get upgradeItem() : Object
        {
            return _upgradeItem;
        }// end function

        public function get dataList() : DataGrid
        {
            return this._1788817256dataList;
        }// end function

        private function get _upgradedMaster() : Object
        {
            return this._72042391_upgradedMaster;
        }// end function

        public function get smallerCanvas() : Canvas
        {
            return this._1950226028smallerCanvas;
        }// end function

        private function get _materialItemNameLabel() : String
        {
            return this._1824046992_materialItemNameLabel;
        }// end function

        private function _UpgradeItemWindow_DataGridColumn1_i() : DataGridColumn
        {
            var _loc_1:* = new DataGridColumn();
            _UpgradeItemWindow_DataGridColumn1 = _loc_1;
            _loc_1.dataField = "masterVO.nameLabel";
            _loc_1.width = 100;
            BindingManager.executeBindings(this, "_UpgradeItemWindow_DataGridColumn1", _UpgradeItemWindow_DataGridColumn1);
            return _loc_1;
        }// end function

        private function get _swf_ok_button() : MovieClipLoaderAsset
        {
            return this._2009475207_swf_ok_button;
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

        public function ___UpgradeItemWindow_PopupWindow1_creationComplete(event:FlexEvent) : void
        {
            init();
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

        override public function initialize() : void
        {
            var target:UpgradeItemWindow;
            var watcherSetupUtilClass:Object;
            .mx_internal::setDocumentDescriptor(_documentDescriptor_);
            var bindings:* = _UpgradeItemWindow_bindingsSetup();
            var watchers:Array;
            target;
            if (_watcherSetupUtil == null)
            {
                watcherSetupUtilClass = getDefinitionByName("_com_kbmj_viking_view_home_UpgradeItemWindowWatcherSetupUtil");
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

        public function set upgradedMaster(param1:Object) : void
        {
            _upgradedMaster = param1;
            return;
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

        public function set upgradeItem(param1:Object) : void
        {
            _upgradeItem = param1;
            return;
        }// end function

        private function get _upgradeItem() : Object
        {
            return this._1828026768_upgradeItem;
        }// end function

        public function ___UpgradeItemWindow_Label3_click(event:MouseEvent) : void
        {
            onDetail(_upgradeItem.masterVO);
            return;
        }// end function

        public function set materialItems(param1:Array) : void
        {
            _materialItems = param1;
            return;
        }// end function

        public function set materialItem(param1:Object) : void
        {
            _materialItem = param1;
            _materialItemNameLabel = param1 ? (param1.masterVO.nameLabel) : ("");
            return;
        }// end function

        private function set _materialItems(param1:Array) : void
        {
            var _loc_2:* = this._1952873254_materialItems;
            if (_loc_2 !== param1)
            {
                this._1952873254_materialItems = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "_materialItems", _loc_2, param1));
            }
            return;
        }// end function

        public function get bigbox() : Box
        {
            return this._1389174581bigbox;
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

        private function set _upgradedMaster(param1:Object) : void
        {
            var _loc_2:* = this._72042391_upgradedMaster;
            if (_loc_2 !== param1)
            {
                this._72042391_upgradedMaster = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "_upgradedMaster", _loc_2, param1));
            }
            return;
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

        public function get materialItems() : Array
        {
            return _materialItems;
        }// end function

        public function ___UpgradeItemWindow_Image1_click(event:MouseEvent) : void
        {
            upgrade();
            return;
        }// end function

        private function set _materialItemNameLabel(param1:String) : void
        {
            var _loc_2:* = this._1824046992_materialItemNameLabel;
            if (_loc_2 !== param1)
            {
                this._1824046992_materialItemNameLabel = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "_materialItemNameLabel", _loc_2, param1));
            }
            return;
        }// end function

        public function get materialItem() : Object
        {
            return _materialItem;
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

        private function _UpgradeItemWindow_DataGridColumn3_i() : DataGridColumn
        {
            var _loc_1:* = new DataGridColumn();
            _UpgradeItemWindow_DataGridColumn3 = _loc_1;
            _loc_1.dataField = "quantity";
            _loc_1.width = 60;
            _loc_1.setStyle("textAlign", "center");
            BindingManager.executeBindings(this, "_UpgradeItemWindow_DataGridColumn3", _UpgradeItemWindow_DataGridColumn3);
            return _loc_1;
        }// end function

        public function upgradeItemHandler(event:Event) : void
        {
            confirmUpgradeItemWindow.removeEventListener(ConfirmUpgradeItemWindow.CONFIRMED, upgradeItemHandler);
            sendPopupEvent(UPGRADE_ITEM, {materialCode:_materialItem.code, upgradeItemId:_upgradeItem.belongingId, type:_upgradeItem.belongingType});
            onClose();
            return;
        }// end function

        public function selectMaterialItem() : void
        {
            materialItem = dataList.selectedItem;
            return;
        }// end function

        private function _UpgradeItemWindow_bindingExprs() : void
        {
            var _loc_1:* = undefined;
            _loc_1 = Utils.i18n("confirmUpgradeSelectItem");
            _loc_1 = _materialItems;
            _loc_1 = Utils.i18n("confirmUpgradeMaterial");
            _loc_1 = Utils.i18n("changeEquipmentEffect");
            _loc_1 = Utils.i18n("generalPossessionCount");
            _loc_1 = Utils.i18n("confirmItemBeforeUpgrade") + "：";
            _loc_1 = _upgradeItem.nameLabel;
            _loc_1 = Utils.i18n("confirmItemAfterUpgrade") + "：";
            _loc_1 = _upgradedMaster.nameLabel;
            _loc_1 = Utils.i18n("confirmUpgradeItem") + "：" + _materialItemNameLabel;
            _loc_1 = _swf_ok_button;
            _loc_1 = _swf_cancel_button;
            return;
        }// end function

        public static function set watcherSetupUtil(param1:IWatcherSetupUtil) : void
        {
            UpgradeItemWindow._watcherSetupUtil = param1;
            return;
        }// end function

    }
}
