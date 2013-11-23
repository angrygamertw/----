package com.kbmj.viking.view.tactics
{
    import com.kbmj.viking.lib.*;
    import com.kbmj.viking.view.*;
    import com.kbmj.viking.vo.tactics.*;
    import flash.events.*;
    import flash.utils.*;
    import mx.binding.*;
    import mx.containers.*;
    import mx.controls.*;
    import mx.controls.dataGridClasses.*;
    import mx.core.*;
    import mx.events.*;

    public class StageClear extends PopupWindow implements IBindingClient
    {
        private var _embed_mxml__swf_battle_report_windou_buttlereport_lost_swf_1742544055:Class;
        var _watchers:Array;
        private var _1626556255get_item_list:DataGrid;
        private var _treasures:Array;
        private var _292905918unitList:TileList;
        private var _reloadAfterFinish:Boolean = false;
        public var _StageClear_DataGridColumn2:DataGridColumn;
        public var _StageClear_DataGridColumn1:DataGridColumn;
        private var _1646233630bgViewStack:ViewStack;
        private var _embed_mxml__swf_battle_report_windou_buttlereport_victory_swf_1746862583:Class;
        var _bindingsByDestination:Object;
        var _bindingsBeginWithWord:Object;
        private var _wipeout:Boolean;
        var _bindings:Array;
        private var _units:Array;
        private var _isRaid:Boolean;
        private var _cleared:Boolean;
        private var _documentDescriptor_:UIComponentDescriptor;
        private var _embed_mxml__swf_battle_report_button_last_swf_1304263173:Class;
        private static var _watcherSetupUtil:IWatcherSetupUtil;

        public function StageClear()
        {
            _documentDescriptor_ = new UIComponentDescriptor({type:PopupWindow, propertiesFactory:function () : Object
            {
                return {width:760, height:560, childDescriptors:[new UIComponentDescriptor({type:ViewStack, id:"bgViewStack", propertiesFactory:function () : Object
                {
                    return {childDescriptors:[new UIComponentDescriptor({type:Canvas, propertiesFactory:function () : Object
                    {
                        return {verticalScrollPolicy:"off", horizontalScrollPolicy:"off", childDescriptors:[new UIComponentDescriptor({type:Image, propertiesFactory:function () : Object
                        {
                            return {source:_embed_mxml__swf_battle_report_windou_buttlereport_victory_swf_1746862583};
                        }// end function
                        })]};
                    }// end function
                    }), new UIComponentDescriptor({type:Canvas, propertiesFactory:function () : Object
                    {
                        return {verticalScrollPolicy:"off", horizontalScrollPolicy:"off", childDescriptors:[new UIComponentDescriptor({type:Image, propertiesFactory:function () : Object
                        {
                            return {source:_embed_mxml__swf_battle_report_windou_buttlereport_lost_swf_1742544055};
                        }// end function
                        })]};
                    }// end function
                    }), new UIComponentDescriptor({type:Canvas, propertiesFactory:function () : Object
                    {
                        return {verticalScrollPolicy:"off", horizontalScrollPolicy:"off", childDescriptors:[new UIComponentDescriptor({type:Image, propertiesFactory:function () : Object
                        {
                            return {source:_embed_mxml__swf_battle_report_windou_buttlereport_victory_swf_1746862583};
                        }// end function
                        })]};
                    }// end function
                    }), new UIComponentDescriptor({type:Canvas, propertiesFactory:function () : Object
                    {
                        return {verticalScrollPolicy:"off", horizontalScrollPolicy:"off", childDescriptors:[new UIComponentDescriptor({type:Image, propertiesFactory:function () : Object
                        {
                            return {source:_embed_mxml__swf_battle_report_windou_buttlereport_lost_swf_1742544055};
                        }// end function
                        })]};
                    }// end function
                    })]};
                }// end function
                }), new UIComponentDescriptor({type:Box, propertiesFactory:function () : Object
                {
                    return {x:8, y:154, childDescriptors:[new UIComponentDescriptor({type:TileList, id:"unitList", stylesFactory:function () : void
                    {
                        this.backgroundAlpha = 0;
                        this.borderStyle = "none";
                        return;
                    }// end function
                    , propertiesFactory:function () : Object
                    {
                        return {columnWidth:263, maxColumns:2, rowHeight:128, percentHeight:100, itemRenderer:_StageClear_ClassFactory1_c(), selectable:false};
                    }// end function
                    })]};
                }// end function
                }), new UIComponentDescriptor({type:DataGrid, id:"get_item_list", propertiesFactory:function () : Object
                {
                    return {width:150, height:190, styleName:"GetItemList", selectable:false, showHeaders:false, x:584, y:256, sortableColumns:false, columns:[_StageClear_DataGridColumn1_i(), _StageClear_DataGridColumn2_i()]};
                }// end function
                }), new UIComponentDescriptor({type:Image, events:{click:"___StageClear_Image5_click"}, propertiesFactory:function () : Object
                {
                    return {x:300, y:444, source:_embed_mxml__swf_battle_report_button_last_swf_1304263173};
                }// end function
                })]};
            }// end function
            });
            _units = new Array();
            _treasures = new Array();
            _embed_mxml__swf_battle_report_button_last_swf_1304263173 = StageClear__embed_mxml__swf_battle_report_button_last_swf_1304263173;
            _embed_mxml__swf_battle_report_windou_buttlereport_lost_swf_1742544055 = StageClear__embed_mxml__swf_battle_report_windou_buttlereport_lost_swf_1742544055;
            _embed_mxml__swf_battle_report_windou_buttlereport_victory_swf_1746862583 = StageClear__embed_mxml__swf_battle_report_windou_buttlereport_victory_swf_1746862583;
            _bindings = [];
            _watchers = [];
            _bindingsByDestination = {};
            _bindingsBeginWithWord = {};
            mx_internal::_document = this;
            this.width = 760;
            this.height = 560;
            this.verticalScrollPolicy = "off";
            this.horizontalScrollPolicy = "off";
            return;
        }// end function

        private function set _111433583units(param1:Array) : void
        {
            _units = param1;
            return;
        }// end function

        public function set unitList(param1:TileList) : void
        {
            var _loc_2:* = this._292905918unitList;
            if (_loc_2 !== param1)
            {
                this._292905918unitList = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "unitList", _loc_2, param1));
            }
            return;
        }// end function

        private function _StageClear_bindingExprs() : void
        {
            var _loc_1:* = undefined;
            _loc_1 = units;
            _loc_1 = treasures;
            _loc_1 = Utils.i18n("localize274");
            _loc_1 = Utils.i18n("generalQuantity");
            return;
        }// end function

        private function set _1351370151wipeout(param1:Boolean) : void
        {
            _wipeout = param1;
            return;
        }// end function

        private function set _64015452treasures(param1:Array) : void
        {
            _treasures = param1;
            return;
        }// end function

        override public function initialize() : void
        {
            var target:StageClear;
            var watcherSetupUtilClass:Object;
            .mx_internal::setDocumentDescriptor(_documentDescriptor_);
            var bindings:* = _StageClear_bindingsSetup();
            var watchers:Array;
            target;
            if (_watcherSetupUtil == null)
            {
                watcherSetupUtilClass = getDefinitionByName("_com_kbmj_viking_view_tactics_StageClearWatcherSetupUtil");
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

        public function get bgViewStack() : ViewStack
        {
            return this._1646233630bgViewStack;
        }// end function

        public function setResult(param1:FinishVO, param2:Boolean = false) : void
        {
            treasures = param1.reward.items;
            units = param1.reward.unitExps;
            wipeout = param1.wipeout;
            _cleared = param1.won;
            _isRaid = param1.isRaid;
            _reloadAfterFinish = param2 || param1.needRestart;
            return;
        }// end function

        public function get get_item_list() : DataGrid
        {
            return this._1626556255get_item_list;
        }// end function

        public function get treasures() : Array
        {
            return _treasures;
        }// end function

        public function get wipeout() : Boolean
        {
            return _wipeout;
        }// end function

        private function _StageClear_DataGridColumn1_i() : DataGridColumn
        {
            var _loc_1:* = new DataGridColumn();
            _StageClear_DataGridColumn1 = _loc_1;
            _loc_1.dataField = "name";
            BindingManager.executeBindings(this, "_StageClear_DataGridColumn1", _StageClear_DataGridColumn1);
            return _loc_1;
        }// end function

        public function ___StageClear_Image5_click(event:MouseEvent) : void
        {
            backToStage();
            return;
        }// end function

        public function set bgViewStack(param1:ViewStack) : void
        {
            var _loc_2:* = this._1646233630bgViewStack;
            if (_loc_2 !== param1)
            {
                this._1646233630bgViewStack = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "bgViewStack", _loc_2, param1));
            }
            return;
        }// end function

        private function _StageClear_bindingsSetup() : Array
        {
            var binding:Binding;
            var result:Array;
            binding = new Binding(this, function () : Object
            {
                return units;
            }// end function
            , function (param1:Object) : void
            {
                unitList.dataProvider = param1;
                return;
            }// end function
            , "unitList.dataProvider");
            result[0] = binding;
            binding = new Binding(this, function () : Object
            {
                return treasures;
            }// end function
            , function (param1:Object) : void
            {
                get_item_list.dataProvider = param1;
                return;
            }// end function
            , "get_item_list.dataProvider");
            result[1] = binding;
            binding = new Binding(this, function () : String
            {
                var _loc_1:* = Utils.i18n("localize274");
                var _loc_2:* = _loc_1 == undefined ? (null) : (String(_loc_1));
                return _loc_2;
            }// end function
            , function (param1:String) : void
            {
                _StageClear_DataGridColumn1.headerText = param1;
                return;
            }// end function
            , "_StageClear_DataGridColumn1.headerText");
            result[2] = binding;
            binding = new Binding(this, function () : String
            {
                var _loc_1:* = Utils.i18n("generalQuantity");
                var _loc_2:* = _loc_1 == undefined ? (null) : (String(_loc_1));
                return _loc_2;
            }// end function
            , function (param1:String) : void
            {
                _StageClear_DataGridColumn2.headerText = param1;
                return;
            }// end function
            , "_StageClear_DataGridColumn2.headerText");
            result[3] = binding;
            return result;
        }// end function

        public function set get_item_list(param1:DataGrid) : void
        {
            var _loc_2:* = this._1626556255get_item_list;
            if (_loc_2 !== param1)
            {
                this._1626556255get_item_list = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "get_item_list", _loc_2, param1));
            }
            return;
        }// end function

        public function set treasures(param1:Array) : void
        {
            var _loc_2:* = this.treasures;
            if (_loc_2 !== param1)
            {
                this._64015452treasures = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "treasures", _loc_2, param1));
            }
            return;
        }// end function

        public function get unitList() : TileList
        {
            return this._292905918unitList;
        }// end function

        public function initResult() : void
        {
            treasures = new Array();
            units = new Array();
            visible = false;
            return;
        }// end function

        public function set wipeout(param1:Boolean) : void
        {
            var _loc_2:* = this.wipeout;
            if (_loc_2 !== param1)
            {
                this._1351370151wipeout = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "wipeout", _loc_2, param1));
            }
            return;
        }// end function

        private function backToStage() : void
        {
            if (_reloadAfterFinish)
            {
                sendEvent(Viking.ACTION_RESTART_GAME);
            }
            else if (wipeout)
            {
                AlertWindow.show(Utils.i18n("localize273"), "", AlertWindow.OK, this, function (event:CloseEvent) : void
            {
                sendEvent(Viking.ACTION_RESTART_GAME);
                return;
            }// end function
            );
            }
            else
            {
                sendEvent(Viking.ACTION_RETURN);
            }
            return;
        }// end function

        public function set units(param1:Array) : void
        {
            var _loc_2:* = this.units;
            if (_loc_2 !== param1)
            {
                this._111433583units = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "units", _loc_2, param1));
            }
            return;
        }// end function

        private function _StageClear_DataGridColumn2_i() : DataGridColumn
        {
            var _loc_1:* = new DataGridColumn();
            _StageClear_DataGridColumn2 = _loc_1;
            _loc_1.dataField = "quantity";
            _loc_1.width = 50;
            _loc_1.setStyle("textAlign", "right");
            BindingManager.executeBindings(this, "_StageClear_DataGridColumn2", _StageClear_DataGridColumn2);
            return _loc_1;
        }// end function

        public function get units() : Array
        {
            return _units;
        }// end function

        private function _StageClear_ClassFactory1_c() : ClassFactory
        {
            var _loc_1:* = new ClassFactory();
            _loc_1.generator = ResultItemRenderer;
            return _loc_1;
        }// end function

        public function showResult() : void
        {
            if (_cleared)
            {
                if (_isRaid)
                {
                    bgViewStack.selectedIndex = 2;
                }
                else
                {
                    bgViewStack.selectedIndex = 0;
                }
            }
            else if (_isRaid)
            {
                bgViewStack.selectedIndex = 3;
            }
            else
            {
                bgViewStack.selectedIndex = 1;
            }
            visible = true;
            return;
        }// end function

        public static function set watcherSetupUtil(param1:IWatcherSetupUtil) : void
        {
            StageClear._watcherSetupUtil = param1;
            return;
        }// end function

    }
}
