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
    import mx.managers.*;

    public class RaidSelectTargetWindow extends CanvasWithPopUp implements IBindingClient
    {
        private var _1281630009_targetNotoriety:Array;
        var _watchers:Array;
        private var _1177280081itemList:ViewStack;
        private var _514188973revenge_list:DataGrid;
        private var _402381090development_list:DataGrid;
        private var _selectTargetName:String;
        private var _selectTargetId:int = 0;
        private var _loadCount:int = 0;
        var _bindingsBeginWithWord:Object;
        var _bindingsByDestination:Object;
        private var _1674607206_targetRevenge:Array;
        private var _1576028346_targetRival:Array;
        private var _459528634notoriety_list:DataGrid;
        var _bindings:Array;
        private var _documentDescriptor_:UIComponentDescriptor;
        private var _1291736593itemListTabBar:TabBar;
        private var _989304983cancel_button:Button;
        public static const TARGET_SELECT:String = "targetSerect";
        private static var _watcherSetupUtil:IWatcherSetupUtil;

        public function RaidSelectTargetWindow()
        {
            _documentDescriptor_ = new UIComponentDescriptor({type:CanvasWithPopUp, propertiesFactory:function () : Object
            {
                return {height:567, width:750, childDescriptors:[new UIComponentDescriptor({type:ViewStack, id:"itemList", propertiesFactory:function () : Object
                {
                    return {percentWidth:100, percentHeight:100, childDescriptors:[new UIComponentDescriptor({type:Canvas, propertiesFactory:function () : Object
                    {
                        return {label:"悪名", percentWidth:100, percentHeight:100, childDescriptors:[new UIComponentDescriptor({type:Box, propertiesFactory:function () : Object
                        {
                            return {x:27, y:89, height:317, width:515, childDescriptors:[new UIComponentDescriptor({type:DataGrid, id:"notoriety_list", stylesFactory:function () : void
                            {
                                this.verticalAlign = "middle";
                                return;
                            }// end function
                            , propertiesFactory:function () : Object
                            {
                                return {width:515, height:317, rowCount:20, styleName:"DataGridBase", selectable:false, sortableColumns:false, columns:[_RaidSelectTargetWindow_DataGridColumn1_c(), _RaidSelectTargetWindow_DataGridColumn2_c(), _RaidSelectTargetWindow_DataGridColumn3_c(), _RaidSelectTargetWindow_DataGridColumn4_c()]};
                            }// end function
                            })]};
                        }// end function
                        })]};
                    }// end function
                    }), new UIComponentDescriptor({type:Canvas, propertiesFactory:function () : Object
                    {
                        return {label:"襲撃可能対象", percentWidth:100, percentHeight:100, childDescriptors:[new UIComponentDescriptor({type:Box, propertiesFactory:function () : Object
                        {
                            return {x:27, y:89, height:317, width:515, childDescriptors:[new UIComponentDescriptor({type:DataGrid, id:"development_list", stylesFactory:function () : void
                            {
                                this.verticalAlign = "middle";
                                return;
                            }// end function
                            , propertiesFactory:function () : Object
                            {
                                return {width:515, height:317, rowCount:20, styleName:"DataGridBase", selectable:false, sortableColumns:false, columns:[_RaidSelectTargetWindow_DataGridColumn5_c(), _RaidSelectTargetWindow_DataGridColumn6_c(), _RaidSelectTargetWindow_DataGridColumn7_c(), _RaidSelectTargetWindow_DataGridColumn8_c()]};
                            }// end function
                            })]};
                        }// end function
                        })]};
                    }// end function
                    }), new UIComponentDescriptor({type:Canvas, propertiesFactory:function () : Object
                    {
                        return {label:"復讐", percentWidth:100, percentHeight:100, childDescriptors:[new UIComponentDescriptor({type:Box, propertiesFactory:function () : Object
                        {
                            return {x:27, y:89, height:317, width:515, childDescriptors:[new UIComponentDescriptor({type:DataGrid, id:"revenge_list", stylesFactory:function () : void
                            {
                                this.verticalAlign = "middle";
                                return;
                            }// end function
                            , propertiesFactory:function () : Object
                            {
                                return {width:515, height:317, rowCount:20, styleName:"DataGridBase", selectable:false, sortableColumns:false, columns:[_RaidSelectTargetWindow_DataGridColumn9_c(), _RaidSelectTargetWindow_DataGridColumn10_c(), _RaidSelectTargetWindow_DataGridColumn11_c(), _RaidSelectTargetWindow_DataGridColumn12_c()]};
                            }// end function
                            })]};
                        }// end function
                        })]};
                    }// end function
                    })]};
                }// end function
                }), new UIComponentDescriptor({type:Canvas, propertiesFactory:function () : Object
                {
                    return {x:25, y:59, childDescriptors:[new UIComponentDescriptor({type:TabBar, id:"itemListTabBar", propertiesFactory:function () : Object
                    {
                        return {styleName:"SortieEqpTab"};
                    }// end function
                    })]};
                }// end function
                }), new UIComponentDescriptor({type:Button, events:{click:"___RaidSelectTargetWindow_Button1_click"}, propertiesFactory:function () : Object
                {
                    return {width:26, height:26, x:535, y:10, styleName:"closeBtn", buttonMode:true};
                }// end function
                }), new UIComponentDescriptor({type:Button, id:"cancel_button", events:{click:"__cancel_button_click"}, propertiesFactory:function () : Object
                {
                    return {x:245, y:415, styleName:"CancelCanaButton", buttonMode:true};
                }// end function
                })]};
            }// end function
            });
            _1281630009_targetNotoriety = new Array();
            _1576028346_targetRival = new Array();
            _1674607206_targetRevenge = new Array();
            _bindings = [];
            _watchers = [];
            _bindingsByDestination = {};
            _bindingsBeginWithWord = {};
            mx_internal::_document = this;
            this.x = 100;
            this.y = 50;
            this.height = 567;
            this.width = 750;
            return;
        }// end function

        public function __cancel_button_click(event:MouseEvent) : void
        {
            onClose();
            return;
        }// end function

        public function get itemListTabBar() : TabBar
        {
            return this._1291736593itemListTabBar;
        }// end function

        public function set itemListTabBar(param1:TabBar) : void
        {
            var _loc_2:* = this._1291736593itemListTabBar;
            if (_loc_2 !== param1)
            {
                this._1291736593itemListTabBar = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "itemListTabBar", _loc_2, param1));
            }
            return;
        }// end function

        public function get targetNotoriety() : Array
        {
            return _targetNotoriety;
        }// end function

        public function set targetNotoriety(param1:Array) : void
        {
            _targetNotoriety = param1;
            var _loc_3:* = _loadCount + 1;
            _loadCount = _loc_3;
            return;
        }// end function

        private function set _targetNotoriety(param1:Array) : void
        {
            var _loc_2:* = this._1281630009_targetNotoriety;
            if (_loc_2 !== param1)
            {
                this._1281630009_targetNotoriety = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "_targetNotoriety", _loc_2, param1));
            }
            return;
        }// end function

        override public function initialize() : void
        {
            var target:RaidSelectTargetWindow;
            var watcherSetupUtilClass:Object;
            .mx_internal::setDocumentDescriptor(_documentDescriptor_);
            var bindings:* = _RaidSelectTargetWindow_bindingsSetup();
            var watchers:Array;
            target;
            if (_watcherSetupUtil == null)
            {
                watcherSetupUtilClass = getDefinitionByName("_com_kbmj_viking_view_home_RaidSelectTargetWindowWatcherSetupUtil");
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

        private function _RaidSelectTargetWindow_DataGridColumn4_c() : DataGridColumn
        {
            var _loc_1:* = new DataGridColumn();
            _loc_1.dataField = "civilization";
            _loc_1.headerText = "文明度";
            _loc_1.width = 80;
            _loc_1.setStyle("textAlign", "center");
            return _loc_1;
        }// end function

        private function get _targetRevenge() : Array
        {
            return this._1674607206_targetRevenge;
        }// end function

        private function _RaidSelectTargetWindow_DataGridColumn6_c() : DataGridColumn
        {
            var _loc_1:* = new DataGridColumn();
            _loc_1.dataField = "notoriety";
            _loc_1.headerText = "悪名";
            _loc_1.width = 80;
            _loc_1.setStyle("textAlign", "center");
            return _loc_1;
        }// end function

        private function _RaidSelectTargetWindow_DataGridColumn8_c() : DataGridColumn
        {
            var _loc_1:* = new DataGridColumn();
            _loc_1.dataField = "civilization";
            _loc_1.headerText = "文明度";
            _loc_1.width = 80;
            _loc_1.setStyle("textAlign", "center");
            return _loc_1;
        }// end function

        private function _RaidSelectTargetWindow_DataGridColumn2_c() : DataGridColumn
        {
            var _loc_1:* = new DataGridColumn();
            _loc_1.dataField = "notoriety";
            _loc_1.headerText = "悪名";
            _loc_1.width = 80;
            _loc_1.setStyle("textAlign", "center");
            return _loc_1;
        }// end function

        public function init() : void
        {
            _targetNotoriety = new Array();
            _targetRival = new Array();
            _targetRevenge = new Array();
            _selectTargetId = 0;
            _loadCount = 0;
            return;
        }// end function

        public function get targetRevenge() : Array
        {
            return _targetRevenge;
        }// end function

        public function get development_list() : DataGrid
        {
            return this._402381090development_list;
        }// end function

        private function _RaidSelectTargetWindow_DataGridColumn11_c() : DataGridColumn
        {
            var _loc_1:* = new DataGridColumn();
            _loc_1.dataField = "rarity";
            _loc_1.headerText = "お宝度";
            _loc_1.width = 80;
            _loc_1.setStyle("textAlign", "center");
            return _loc_1;
        }// end function

        public function set notoriety_list(param1:DataGrid) : void
        {
            var _loc_2:* = this._459528634notoriety_list;
            if (_loc_2 !== param1)
            {
                this._459528634notoriety_list = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "notoriety_list", _loc_2, param1));
            }
            return;
        }// end function

        public function get cancel_button() : Button
        {
            return this._989304983cancel_button;
        }// end function

        public function get selectTargetId() : int
        {
            return _selectTargetId;
        }// end function

        public function set itemList(param1:ViewStack) : void
        {
            var _loc_2:* = this._1177280081itemList;
            if (_loc_2 !== param1)
            {
                this._1177280081itemList = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "itemList", _loc_2, param1));
            }
            return;
        }// end function

        public function set revenge_list(param1:DataGrid) : void
        {
            var _loc_2:* = this._514188973revenge_list;
            if (_loc_2 !== param1)
            {
                this._514188973revenge_list = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "revenge_list", _loc_2, param1));
            }
            return;
        }// end function

        public function set cancel_button(param1:Button) : void
        {
            var _loc_2:* = this._989304983cancel_button;
            if (_loc_2 !== param1)
            {
                this._989304983cancel_button = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "cancel_button", _loc_2, param1));
            }
            return;
        }// end function

        public function set targetRevenge(param1:Array) : void
        {
            _targetRevenge = param1;
            var _loc_3:* = _loadCount + 1;
            _loadCount = _loc_3;
            return;
        }// end function

        private function get _targetRival() : Array
        {
            return this._1576028346_targetRival;
        }// end function

        private function set _targetRevenge(param1:Array) : void
        {
            var _loc_2:* = this._1674607206_targetRevenge;
            if (_loc_2 !== param1)
            {
                this._1674607206_targetRevenge = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "_targetRevenge", _loc_2, param1));
            }
            return;
        }// end function

        public function set development_list(param1:DataGrid) : void
        {
            var _loc_2:* = this._402381090development_list;
            if (_loc_2 !== param1)
            {
                this._402381090development_list = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "development_list", _loc_2, param1));
            }
            return;
        }// end function

        public function get notoriety_list() : DataGrid
        {
            return this._459528634notoriety_list;
        }// end function

        public function get loadCount() : int
        {
            return _loadCount;
        }// end function

        private function get _targetNotoriety() : Array
        {
            return this._1281630009_targetNotoriety;
        }// end function

        private function _RaidSelectTargetWindow_bindingExprs() : void
        {
            var _loc_1:* = undefined;
            _loc_1 = _targetNotoriety;
            _loc_1 = _targetRival;
            _loc_1 = _targetRevenge;
            _loc_1 = itemList;
            return;
        }// end function

        public function get revenge_list() : DataGrid
        {
            return this._514188973revenge_list;
        }// end function

        public function get selectTargetName() : String
        {
            return _selectTargetName;
        }// end function

        private function onClose() : void
        {
            PopUpManager.removePopUp(this);
            return;
        }// end function

        private function _RaidSelectTargetWindow_DataGridColumn5_c() : DataGridColumn
        {
            var _loc_1:* = new DataGridColumn();
            _loc_1.dataField = "name";
            _loc_1.headerText = "名前";
            _loc_1.width = 200;
            _loc_1.setStyle("textAlign", "center");
            return _loc_1;
        }// end function

        private function _RaidSelectTargetWindow_DataGridColumn7_c() : DataGridColumn
        {
            var _loc_1:* = new DataGridColumn();
            _loc_1.dataField = "rarity";
            _loc_1.headerText = "お宝度";
            _loc_1.width = 80;
            _loc_1.setStyle("textAlign", "center");
            return _loc_1;
        }// end function

        private function _RaidSelectTargetWindow_DataGridColumn1_c() : DataGridColumn
        {
            var _loc_1:* = new DataGridColumn();
            _loc_1.dataField = "name";
            _loc_1.headerText = "名前";
            _loc_1.width = 200;
            _loc_1.setStyle("textAlign", "center");
            return _loc_1;
        }// end function

        private function _RaidSelectTargetWindow_DataGridColumn3_c() : DataGridColumn
        {
            var _loc_1:* = new DataGridColumn();
            _loc_1.dataField = "rarity";
            _loc_1.headerText = "お宝度";
            _loc_1.width = 80;
            _loc_1.setStyle("textAlign", "center");
            return _loc_1;
        }// end function

        private function _RaidSelectTargetWindow_DataGridColumn12_c() : DataGridColumn
        {
            var _loc_1:* = new DataGridColumn();
            _loc_1.dataField = "civilization";
            _loc_1.headerText = "文明度";
            _loc_1.width = 80;
            _loc_1.setStyle("textAlign", "center");
            return _loc_1;
        }// end function

        private function _RaidSelectTargetWindow_DataGridColumn9_c() : DataGridColumn
        {
            var _loc_1:* = new DataGridColumn();
            _loc_1.dataField = "name";
            _loc_1.headerText = "名前";
            _loc_1.width = 200;
            _loc_1.setStyle("textAlign", "center");
            return _loc_1;
        }// end function

        public function onClick(param1:Object) : void
        {
            _selectTargetId = param1.id;
            _selectTargetName = param1.name;
            sendEvent(TARGET_SELECT);
            onClose();
            return;
        }// end function

        public function ___RaidSelectTargetWindow_Button1_click(event:MouseEvent) : void
        {
            onClose();
            return;
        }// end function

        private function _RaidSelectTargetWindow_DataGridColumn10_c() : DataGridColumn
        {
            var _loc_1:* = new DataGridColumn();
            _loc_1.dataField = "notoriety";
            _loc_1.headerText = "悪名";
            _loc_1.width = 80;
            _loc_1.setStyle("textAlign", "center");
            return _loc_1;
        }// end function

        public function set targetRival(param1:Array) : void
        {
            _targetRival = param1;
            var _loc_3:* = _loadCount + 1;
            _loadCount = _loc_3;
            return;
        }// end function

        public function get itemList() : ViewStack
        {
            return this._1177280081itemList;
        }// end function

        private function set _targetRival(param1:Array) : void
        {
            var _loc_2:* = this._1576028346_targetRival;
            if (_loc_2 !== param1)
            {
                this._1576028346_targetRival = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "_targetRival", _loc_2, param1));
            }
            return;
        }// end function

        public function get targetRival() : Array
        {
            return _targetRival;
        }// end function

        private function _RaidSelectTargetWindow_bindingsSetup() : Array
        {
            var binding:Binding;
            var result:Array;
            binding = new Binding(this, function () : Object
            {
                return _targetNotoriety;
            }// end function
            , function (param1:Object) : void
            {
                notoriety_list.dataProvider = param1;
                return;
            }// end function
            , "notoriety_list.dataProvider");
            result[0] = binding;
            binding = new Binding(this, function () : Object
            {
                return _targetRival;
            }// end function
            , function (param1:Object) : void
            {
                development_list.dataProvider = param1;
                return;
            }// end function
            , "development_list.dataProvider");
            result[1] = binding;
            binding = new Binding(this, function () : Object
            {
                return _targetRevenge;
            }// end function
            , function (param1:Object) : void
            {
                revenge_list.dataProvider = param1;
                return;
            }// end function
            , "revenge_list.dataProvider");
            result[2] = binding;
            binding = new Binding(this, function () : Object
            {
                return itemList;
            }// end function
            , function (param1:Object) : void
            {
                itemListTabBar.dataProvider = param1;
                return;
            }// end function
            , "itemListTabBar.dataProvider");
            result[3] = binding;
            return result;
        }// end function

        public static function set watcherSetupUtil(param1:IWatcherSetupUtil) : void
        {
            _watcherSetupUtil = param1;
            return;
        }// end function

    }
}
