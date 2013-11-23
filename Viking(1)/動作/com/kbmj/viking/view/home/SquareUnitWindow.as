package com.kbmj.viking.view.home
{
    import com.kbmj.viking.lib.*;
    import com.kbmj.viking.view.*;
    import com.kbmj.viking.vo.home.*;
    import flash.events.*;
    import flash.utils.*;
    import mx.binding.*;
    import mx.collections.*;
    import mx.containers.*;
    import mx.controls.*;
    import mx.controls.dataGridClasses.*;
    import mx.core.*;
    import mx.events.*;
    import mx.managers.*;

    public class SquareUnitWindow extends PopupWindow implements IBindingClient
    {
        private var _1580349024employButton:Button;
        public var _SquareUnitWindow_Text2:Text;
        var _watchers:Array;
        private var confirmSummonHeroWindow:ConfirmSummonHeroWindow;
        private var _292905918unitList:DataGrid;
        private var squareConfirmWindow:SquareConfirmWindow;
        var _bindingsByDestination:Object;
        var _bindingsBeginWithWord:Object;
        private var _mercenaries:ArrayCollection;
        var _bindings:Array;
        private var squareRefreshConfirmWindow:SquareRefreshConfirmWindow;
        private var _documentDescriptor_:UIComponentDescriptor;
        private var _794229178summonHeroEnabled:Boolean;
        private static var _watcherSetupUtil:IWatcherSetupUtil;

        public function SquareUnitWindow()
        {
            _documentDescriptor_ = new UIComponentDescriptor({type:PopupWindow, propertiesFactory:function () : Object
            {
                return {width:740, height:567, childDescriptors:[new UIComponentDescriptor({type:Button, events:{click:"___SquareUnitWindow_Button1_click"}, stylesFactory:function () : void
                {
                    this.fontSize = 30;
                    this.top = "30";
                    this.right = "20";
                    return;
                }// end function
                , propertiesFactory:function () : Object
                {
                    return {width:26, height:26, styleName:"closeBtn", buttonMode:true};
                }// end function
                }), new UIComponentDescriptor({type:VBox, stylesFactory:function () : void
                {
                    this.top = "38";
                    this.horizontalCenter = "0";
                    return;
                }// end function
                , propertiesFactory:function () : Object
                {
                    return {childDescriptors:[new UIComponentDescriptor({type:Text, stylesFactory:function () : void
                    {
                        this.top = "45";
                        this.left = "25";
                        return;
                    }// end function
                    , propertiesFactory:function () : Object
                    {
                        return {styleName:"UnitSelectText", text:"本日雇用出来る式姫です。毎日0:00に雇用出来る式姫が変更されます。"};
                    }// end function
                    }), new UIComponentDescriptor({type:DataGrid, id:"unitList", events:{itemClick:"__unitList_itemClick"}, stylesFactory:function () : void
                    {
                        this.right = "25";
                        return;
                    }// end function
                    , propertiesFactory:function () : Object
                    {
                        return {styleName:"UnitListGrid", y:70, width:700, rowCount:3, height:96, sortableColumns:false, verticalScrollPolicy:"off", columns:[_SquareUnitWindow_DataGridColumn1_c(), _SquareUnitWindow_DataGridColumn2_c(), _SquareUnitWindow_DataGridColumn3_c(), _SquareUnitWindow_DataGridColumn4_c(), _SquareUnitWindow_DataGridColumn5_c(), _SquareUnitWindow_DataGridColumn6_c(), _SquareUnitWindow_DataGridColumn7_c(), _SquareUnitWindow_DataGridColumn8_c()]};
                    }// end function
                    }), new UIComponentDescriptor({type:Text, id:"_SquareUnitWindow_Text2", stylesFactory:function () : void
                    {
                        this.top = "120";
                        this.left = "25";
                        return;
                    }// end function
                    , propertiesFactory:function () : Object
                    {
                        return {styleName:"UnitSelectText", text:"0:00をまたぐと表示されている式姫が雇えなくなるのでご注意下さい。"};
                    }// end function
                    }), new UIComponentDescriptor({type:HBox, propertiesFactory:function () : Object
                    {
                        return {percentWidth:100, childDescriptors:[new UIComponentDescriptor({type:Spacer, propertiesFactory:function () : Object
                        {
                            return {percentWidth:100};
                        }// end function
                        }), new UIComponentDescriptor({type:Button, events:{click:"___SquareUnitWindow_Button2_click"}, propertiesFactory:function () : Object
                        {
                            return {label:"", width:87, height:28, styleName:"CancelCanaButton", buttonMode:true};
                        }// end function
                        }), new UIComponentDescriptor({type:Button, id:"employButton", events:{click:"__employButton_click"}, propertiesFactory:function () : Object
                        {
                            return {label:"", width:87, height:28, styleName:"OnlyOkButton", buttonMode:true};
                        }// end function
                        }), new UIComponentDescriptor({type:Spacer, propertiesFactory:function () : Object
                        {
                            return {percentWidth:100};
                        }// end function
                        })]};
                    }// end function
                    })]};
                }// end function
                })]};
            }// end function
            });
            squareConfirmWindow = new SquareConfirmWindow();
            squareRefreshConfirmWindow = new SquareRefreshConfirmWindow();
            confirmSummonHeroWindow = new ConfirmSummonHeroWindow();
            _794229178summonHeroEnabled = Viking.summonHeroEnabled;
            _bindings = [];
            _watchers = [];
            _bindingsByDestination = {};
            _bindingsBeginWithWord = {};
            mx_internal::_document = this;
            this.y = 150;
            this.x = 15;
            this.width = 740;
            this.height = 567;
            this.addEventListener("creationComplete", ___SquareUnitWindow_PopupWindow1_creationComplete);
            return;
        }// end function

        private function _SquareUnitWindow_DataGridColumn1_c() : DataGridColumn
        {
            var _loc_1:* = new DataGridColumn();
            _loc_1.dataField = "unit.name";
            _loc_1.headerText = "名前";
            _loc_1.width = 100;
            _loc_1.itemRenderer = _SquareUnitWindow_ClassFactory1_c();
            return _loc_1;
        }// end function

        private function _SquareUnitWindow_DataGridColumn3_c() : DataGridColumn
        {
            var _loc_1:* = new DataGridColumn();
            _loc_1.dataField = "unit.level";
            _loc_1.headerText = "Lv";
            _loc_1.width = 25;
            return _loc_1;
        }// end function

        private function _SquareUnitWindow_DataGridColumn5_c() : DataGridColumn
        {
            var _loc_1:* = new DataGridColumn();
            _loc_1.dataField = "unit.genderLabel";
            _loc_1.headerText = "性別";
            _loc_1.width = 25;
            return _loc_1;
        }// end function

        private function _SquareUnitWindow_DataGridColumn7_c() : DataGridColumn
        {
            var _loc_1:* = new DataGridColumn();
            _loc_1.dataField = "requirement.nameLabel";
            _loc_1.headerText = "雇用条件";
            _loc_1.width = 100;
            return _loc_1;
        }// end function

        public function set unitList(param1:DataGrid) : void
        {
            var _loc_2:* = this._292905918unitList;
            if (_loc_2 !== param1)
            {
                this._292905918unitList = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "unitList", _loc_2, param1));
            }
            return;
        }// end function

        private function set summonHeroEnabled(param1:Boolean) : void
        {
            var _loc_2:* = this._794229178summonHeroEnabled;
            if (_loc_2 !== param1)
            {
                this._794229178summonHeroEnabled = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "summonHeroEnabled", _loc_2, param1));
            }
            return;
        }// end function

        public function init() : void
        {
            squareConfirmWindow.addEventListener(SquareConfirmWindow.CONFIRMED, confirmHandler);
            squareRefreshConfirmWindow.addEventListener(SquareRefreshConfirmWindow.CONFIRMED, confirmRefreshHandler);
            confirmSummonHeroWindow.addEventListener(ConfirmSummonHeroWindow.CONFIRMED, confirmSummonHeroHandler);
            confirmSummonHeroWindow.addEventListener(ConfirmSummonHeroWindow.CONFIRMED_BRAVE, confirmSummonHeroHandler);
            return;
        }// end function

        public function get mercenaries() : ArrayCollection
        {
            return _mercenaries;
        }// end function

        public function ___SquareUnitWindow_Button1_click(event:MouseEvent) : void
        {
            onClose();
            return;
        }// end function

        private function _SquareUnitWindow_ClassFactory2_c() : ClassFactory
        {
            var _loc_1:* = new ClassFactory();
            _loc_1.generator = BloodImageRenderer;
            return _loc_1;
        }// end function

        override public function initialize() : void
        {
            var target:SquareUnitWindow;
            var watcherSetupUtilClass:Object;
            .mx_internal::setDocumentDescriptor(_documentDescriptor_);
            var bindings:* = _SquareUnitWindow_bindingsSetup();
            var watchers:Array;
            target;
            if (_watcherSetupUtil == null)
            {
                watcherSetupUtilClass = getDefinitionByName("_com_kbmj_viking_view_home_SquareUnitWindowWatcherSetupUtil");
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

        private function _SquareUnitWindow_bindingsSetup() : Array
        {
            var binding:Binding;
            var result:Array;
            binding = new Binding(this, function () : Object
            {
                return mercenaries;
            }// end function
            , function (param1:Object) : void
            {
                unitList.dataProvider = param1;
                return;
            }// end function
            , "unitList.dataProvider");
            result[0] = binding;
            binding = new Binding(this, function () : uint
            {
                return 12337210;
            }// end function
            , function (param1:uint) : void
            {
                _SquareUnitWindow_Text2.setStyle("color", param1);
                return;
            }// end function
            , "_SquareUnitWindow_Text2.color");
            result[1] = binding;
            return result;
        }// end function

        private function summonBrave() : void
        {
            confirmSummonHeroWindow.x = 100;
            confirmSummonHeroWindow.y = 150;
            confirmSummonHeroWindow.setLayout("Brave");
            this.popupWindow(confirmSummonHeroWindow, false);
            return;
        }// end function

        public function set mercenaries(param1:ArrayCollection) : void
        {
            var _loc_2:* = this.mercenaries;
            if (_loc_2 !== param1)
            {
                this._1728164844mercenaries = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "mercenaries", _loc_2, param1));
            }
            return;
        }// end function

        private function refreshMercenaries() : void
        {
            squareRefreshConfirmWindow.x = 100;
            squareRefreshConfirmWindow.y = 150;
            this.popupWindow(squareRefreshConfirmWindow, false);
            return;
        }// end function

        private function set _1728164844mercenaries(param1:ArrayCollection) : void
        {
            _mercenaries = param1;
            return;
        }// end function

        private function _SquareUnitWindow_DataGridColumn2_c() : DataGridColumn
        {
            var _loc_1:* = new DataGridColumn();
            _loc_1.dataField = "unit.jobName";
            _loc_1.headerText = "種族";
            _loc_1.width = 100;
            return _loc_1;
        }// end function

        public function get unitList() : DataGrid
        {
            return this._292905918unitList;
        }// end function

        private function _SquareUnitWindow_DataGridColumn4_c() : DataGridColumn
        {
            var _loc_1:* = new DataGridColumn();
            _loc_1.dataField = "unit.age";
            _loc_1.headerText = "年齢";
            _loc_1.width = 25;
            return _loc_1;
        }// end function

        private function _SquareUnitWindow_DataGridColumn6_c() : DataGridColumn
        {
            var _loc_1:* = new DataGridColumn();
            _loc_1.headerText = "血脈";
            _loc_1.width = 25;
            _loc_1.itemRenderer = _SquareUnitWindow_ClassFactory2_c();
            return _loc_1;
        }// end function

        private function get summonHeroEnabled() : Boolean
        {
            return this._794229178summonHeroEnabled;
        }// end function

        private function _SquareUnitWindow_DataGridColumn8_c() : DataGridColumn
        {
            var _loc_1:* = new DataGridColumn();
            _loc_1.dataField = "price";
            _loc_1.headerText = "費用";
            _loc_1.width = 50;
            return _loc_1;
        }// end function

        public function __employButton_click(event:MouseEvent) : void
        {
            showConfirmation();
            return;
        }// end function

        private function confirmRefreshHandler(event:Event) : void
        {
            sendEvent(Viking.HOME_REFRESH_MERCENARY);
            return;
        }// end function

        public function showConfirmation() : void
        {
            var _loc_1:MercenaryVO = null;
            if (unitList.selectedIndex >= 0)
            {
                _loc_1 = mercenaries.getItemAt(unitList.selectedIndex) as MercenaryVO;
                if (_loc_1)
                {
                    squareConfirmWindow.mercenary = _loc_1;
                    squareConfirmWindow.x = 200;
                    squareConfirmWindow.y = 150;
                    this.popupWindow(squareConfirmWindow, false);
                }
            }
            return;
        }// end function

        public function ___SquareUnitWindow_PopupWindow1_creationComplete(event:FlexEvent) : void
        {
            init();
            return;
        }// end function

        private function _SquareUnitWindow_ClassFactory1_c() : ClassFactory
        {
            var _loc_1:* = new ClassFactory();
            _loc_1.generator = UnitDetailLabelRenderer;
            return _loc_1;
        }// end function

        public function __unitList_itemClick(event:ListEvent) : void
        {
            itemClickHandler(event);
            return;
        }// end function

        public function ___SquareUnitWindow_Button2_click(event:MouseEvent) : void
        {
            onClose();
            return;
        }// end function

        private function itemClickHandler(event:ListEvent) : void
        {
            var _loc_2:* = mercenaries.getItemAt(event.rowIndex) as MercenaryVO;
            employButton.enabled = _loc_2.canEmploy;
            return;
        }// end function

        public function set employButton(param1:Button) : void
        {
            var _loc_2:* = this._1580349024employButton;
            if (_loc_2 !== param1)
            {
                this._1580349024employButton = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "employButton", _loc_2, param1));
            }
            return;
        }// end function

        public function get employButton() : Button
        {
            return this._1580349024employButton;
        }// end function

        private function _SquareUnitWindow_bindingExprs() : void
        {
            var _loc_1:* = undefined;
            _loc_1 = mercenaries;
            _loc_1 = 12337210;
            return;
        }// end function

        private function confirmHandler(event:PopupEvent) : void
        {
            sendPopupEvent(Viking.HOME_EMPLOY_MERCENARY, event.param);
            PopUpManager.removePopUp(this);
            return;
        }// end function

        private function confirmSummonHeroHandler(event:Event) : void
        {
            switch(event.type)
            {
                case ConfirmSummonHeroWindow.CONFIRMED:
                {
                    sendEvent(Viking.HOME_SUMMON_HERO);
                    break;
                }
                case ConfirmSummonHeroWindow.CONFIRMED_BRAVE:
                {
                    sendEvent(Viking.HOME_SUMMON_BRAVE);
                    break;
                }
                default:
                {
                    break;
                }
            }
            return;
        }// end function

        private function summonHero() : void
        {
            confirmSummonHeroWindow.x = 100;
            confirmSummonHeroWindow.y = 150;
            confirmSummonHeroWindow.setLayout("Hero");
            this.popupWindow(confirmSummonHeroWindow, false);
            return;
        }// end function

        public static function set watcherSetupUtil(param1:IWatcherSetupUtil) : void
        {
            SquareUnitWindow._watcherSetupUtil = param1;
            return;
        }// end function

    }
}
