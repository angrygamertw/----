package com.kbmj.viking.view.tactics
{
    import com.kbmj.viking.lib.*;
    import com.kbmj.viking.view.*;
    import com.kbmj.viking.vo.tactics.*;
    import flash.display.*;
    import flash.events.*;
    import flash.utils.*;
    import mx.binding.*;
    import mx.collections.*;
    import mx.containers.*;
    import mx.controls.*;
    import mx.controls.dataGridClasses.*;
    import mx.core.*;
    import mx.events.*;

    public class ArmsWindow extends PopupWindow implements IBindingClient
    {
        private var _1510757618eqpData:ArrayCollection;
        public var _ArmsWindow_Image3:Image;
        public var _ArmsWindow_Image4:Image;
        public var _ArmsWindow_Image5:Image;
        private var _91329123_unit:UnitVO;
        public var _ArmsWindow_Image1:Image;
        private var _1075873300_swf_window:MovieClipLoaderAsset;
        var _watchers:Array;
        public var _ArmsWindow_Image2:Image;
        public var _ArmsWindow_Text1:Text;
        private var _550983275_swf_yes:MovieClipLoaderAsset;
        public var _ArmsWindow_DataGridColumn3:DataGridColumn;
        public var _ArmsWindow_DataGridColumn4:DataGridColumn;
        public var _ArmsWindow_DataGridColumn1:DataGridColumn;
        public var _ArmsWindow_DataGridColumn2:DataGridColumn;
        public var _ArmsWindow_Text2:Text;
        var _bindingsByDestination:Object;
        var _bindingsBeginWithWord:Object;
        private var _1818888637_swf_no:MovieClipLoaderAsset;
        private var _391325715weapon_data:DataGrid;
        private var _1193840764_swf_close:MovieClipLoaderAsset;
        private var _486222035windowViewStack:ViewStack;
        private var _1218643219_swf_close_window:MovieClipLoaderAsset;
        var _bindings:Array;
        private var _documentDescriptor_:UIComponentDescriptor;
        private static const WINDOW_X:int = 180;
        private static const WINDOW_Y:int = 145;
        private static const BUTTON_X:int = 325;
        private static const BUTTON_Y:int = 365;
        private static var _watcherSetupUtil:IWatcherSetupUtil;
        private static const WINDOW_HT:int = 270;
        private static const WINDOW_WD:int = 400;

        public function ArmsWindow()
        {
            _documentDescriptor_ = new UIComponentDescriptor({type:PopupWindow, propertiesFactory:function () : Object
            {
                return {width:760, height:560, childDescriptors:[new UIComponentDescriptor({type:Image, id:"_ArmsWindow_Image1"}), new UIComponentDescriptor({type:Text, id:"_ArmsWindow_Text1", propertiesFactory:function () : Object
                {
                    return {styleName:"DealTitle"};
                }// end function
                }), new UIComponentDescriptor({type:Image, id:"_ArmsWindow_Image2", events:{click:"___ArmsWindow_Image2_click"}}), new UIComponentDescriptor({type:DataGrid, id:"weapon_data", events:{click:"__weapon_data_click"}, propertiesFactory:function () : Object
                {
                    return {rowCount:1, sortableColumns:false, styleName:"DataGridBase", columns:[_ArmsWindow_DataGridColumn1_i(), _ArmsWindow_DataGridColumn2_i(), _ArmsWindow_DataGridColumn3_i(), _ArmsWindow_DataGridColumn4_i()]};
                }// end function
                }), new UIComponentDescriptor({type:ViewStack, id:"windowViewStack", propertiesFactory:function () : Object
                {
                    return {width:760, height:560, selectedIndex:1, childDescriptors:[new UIComponentDescriptor({type:Canvas, propertiesFactory:function () : Object
                    {
                        return {childDescriptors:[new UIComponentDescriptor({type:Image, id:"_ArmsWindow_Image3", events:{click:"___ArmsWindow_Image3_click"}})]};
                    }// end function
                    }), new UIComponentDescriptor({type:Canvas, propertiesFactory:function () : Object
                    {
                        return {childDescriptors:[new UIComponentDescriptor({type:Text, id:"_ArmsWindow_Text2", propertiesFactory:function () : Object
                        {
                            return {styleName:"CenterText"};
                        }// end function
                        }), new UIComponentDescriptor({type:Image, id:"_ArmsWindow_Image4", events:{click:"___ArmsWindow_Image4_click"}}), new UIComponentDescriptor({type:Image, id:"_ArmsWindow_Image5", events:{click:"___ArmsWindow_Image5_click"}})]};
                    }// end function
                    })]};
                }// end function
                })]};
            }// end function
            });
            _1075873300_swf_window = new Viking.EmbedSwfWindowCommon();
            _1193840764_swf_close = new Viking.EmbedSwfButtonCommon();
            _550983275_swf_yes = new Viking.EmbedSwfButtonCommon();
            _1818888637_swf_no = new Viking.EmbedSwfButtonCommon();
            _1218643219_swf_close_window = new Viking.EmbedSwfButtonCloseWindow();
            _bindings = [];
            _watchers = [];
            _bindingsByDestination = {};
            _bindingsBeginWithWord = {};
            mx_internal::_document = this;
            this.width = 760;
            this.height = 560;
            this.addEventListener("creationComplete", ___ArmsWindow_PopupWindow1_creationComplete);
            return;
        }// end function

        private function onNo() : void
        {
            closeWindow();
            MovieClip(Loader(_swf_no.getChildAt(0)).content).gotoAndPlay(0);
            MovieClip(Loader(_swf_no.getChildAt(0)).content).gotoAndPlay("button_no");
            return;
        }// end function

        private function set _swf_no(param1:MovieClipLoaderAsset) : void
        {
            var _loc_2:* = this._1818888637_swf_no;
            if (_loc_2 !== param1)
            {
                this._1818888637_swf_no = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "_swf_no", _loc_2, param1));
            }
            return;
        }// end function

        private function get eqpData() : ArrayCollection
        {
            return this._1510757618eqpData;
        }// end function

        private function onYes() : void
        {
            sendPopupEvent(Viking.ARM_EQUIPPED, [_unit, _unit.subWeapon]);
            closeWindow();
            MovieClip(Loader(_swf_yes.getChildAt(0)).content).gotoAndPlay(0);
            MovieClip(Loader(_swf_yes.getChildAt(0)).content).gotoAndPlay("button_yes");
            return;
        }// end function

        public function closeWindow() : void
        {
            onClose();
            MovieClip(Loader(_swf_close.getChildAt(0)).content).gotoAndPlay(0);
            MovieClip(Loader(_swf_close.getChildAt(0)).content).gotoAndPlay("button_close");
            MovieClip(Loader(_swf_close_window.getChildAt(0)).content).gotoAndPlay(1);
            return;
        }// end function

        public function setArms() : void
        {
            var _loc_1:* = new Array();
            if (_unit.subWeapon)
            {
                _loc_1.push(_unit.subWeapon);
            }
            eqpData = new ArrayCollection(_loc_1);
            return;
        }// end function

        private function get _swf_close_window() : MovieClipLoaderAsset
        {
            return this._1218643219_swf_close_window;
        }// end function

        public function set unit(param1:UnitVO) : void
        {
            _unit = param1;
            return;
        }// end function

        private function _ArmsWindow_bindingExprs() : void
        {
            var _loc_1:* = undefined;
            _loc_1 = _swf_window;
            _loc_1 = WINDOW_X;
            _loc_1 = WINDOW_Y;
            _loc_1 = WINDOW_WD;
            _loc_1 = Utils.i18n("armsTitle");
            _loc_1 = WINDOW_X + WINDOW_WD - 25;
            _loc_1 = WINDOW_Y;
            _loc_1 = _swf_close_window;
            _loc_1 = eqpData;
            _loc_1 = WINDOW_X + 20;
            _loc_1 = WINDOW_Y + 35 + 20;
            _loc_1 = WINDOW_WD - 40;
            _loc_1 = Utils.i18n("armsSubArms");
            _loc_1 = Utils.i18n("changeEquipmentAttack");
            _loc_1 = Utils.i18n("changeEquipmentHit");
            _loc_1 = Utils.i18n("changeEquipmentEndurance");
            _loc_1 = BUTTON_X;
            _loc_1 = BUTTON_Y;
            _loc_1 = _swf_close;
            _loc_1 = WINDOW_X;
            _loc_1 = WINDOW_Y + 35 + 120;
            _loc_1 = WINDOW_WD;
            _loc_1 = Utils.i18n("armsChengeEquipConf");
            _loc_1 = BUTTON_X - 65;
            _loc_1 = BUTTON_Y;
            _loc_1 = _swf_yes;
            _loc_1 = BUTTON_X + 65;
            _loc_1 = BUTTON_Y;
            _loc_1 = _swf_no;
            return;
        }// end function

        private function _ArmsWindow_DataGridColumn1_i() : DataGridColumn
        {
            var _loc_1:* = new DataGridColumn();
            _ArmsWindow_DataGridColumn1 = _loc_1;
            _loc_1.dataField = "nameLabel";
            BindingManager.executeBindings(this, "_ArmsWindow_DataGridColumn1", _ArmsWindow_DataGridColumn1);
            return _loc_1;
        }// end function

        private function _ArmsWindow_DataGridColumn3_i() : DataGridColumn
        {
            var _loc_1:* = new DataGridColumn();
            _ArmsWindow_DataGridColumn3 = _loc_1;
            _loc_1.dataField = "hit";
            _loc_1.width = 60;
            _loc_1.setStyle("textAlign", "center");
            BindingManager.executeBindings(this, "_ArmsWindow_DataGridColumn3", _ArmsWindow_DataGridColumn3);
            return _loc_1;
        }// end function

        override public function initialize() : void
        {
            var target:ArmsWindow;
            var watcherSetupUtilClass:Object;
            .mx_internal::setDocumentDescriptor(_documentDescriptor_);
            var bindings:* = _ArmsWindow_bindingsSetup();
            var watchers:Array;
            target;
            if (_watcherSetupUtil == null)
            {
                watcherSetupUtilClass = getDefinitionByName("_com_kbmj_viking_view_tactics_ArmsWindowWatcherSetupUtil");
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

        public function set windowViewStack(param1:ViewStack) : void
        {
            var _loc_2:* = this._486222035windowViewStack;
            if (_loc_2 !== param1)
            {
                this._486222035windowViewStack = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "windowViewStack", _loc_2, param1));
            }
            return;
        }// end function

        private function _ArmsWindow_bindingsSetup() : Array
        {
            var binding:Binding;
            var result:Array;
            binding = new Binding(this, function () : Object
            {
                return _swf_window;
            }// end function
            , function (param1:Object) : void
            {
                _ArmsWindow_Image1.source = param1;
                return;
            }// end function
            , "_ArmsWindow_Image1.source");
            result[0] = binding;
            binding = new Binding(this, function () : Number
            {
                return WINDOW_X;
            }// end function
            , function (param1:Number) : void
            {
                _ArmsWindow_Text1.x = param1;
                return;
            }// end function
            , "_ArmsWindow_Text1.x");
            result[1] = binding;
            binding = new Binding(this, function () : Number
            {
                return WINDOW_Y;
            }// end function
            , function (param1:Number) : void
            {
                _ArmsWindow_Text1.y = param1;
                return;
            }// end function
            , "_ArmsWindow_Text1.y");
            result[2] = binding;
            binding = new Binding(this, function () : Number
            {
                return WINDOW_WD;
            }// end function
            , function (param1:Number) : void
            {
                _ArmsWindow_Text1.width = param1;
                return;
            }// end function
            , "_ArmsWindow_Text1.width");
            result[3] = binding;
            binding = new Binding(this, function () : String
            {
                var _loc_1:* = Utils.i18n("armsTitle");
                var _loc_2:* = _loc_1 == undefined ? (null) : (String(_loc_1));
                return _loc_2;
            }// end function
            , function (param1:String) : void
            {
                _ArmsWindow_Text1.text = param1;
                return;
            }// end function
            , "_ArmsWindow_Text1.text");
            result[4] = binding;
            binding = new Binding(this, function () : Number
            {
                return WINDOW_X + WINDOW_WD - 25;
            }// end function
            , function (param1:Number) : void
            {
                _ArmsWindow_Image2.x = param1;
                return;
            }// end function
            , "_ArmsWindow_Image2.x");
            result[5] = binding;
            binding = new Binding(this, function () : Number
            {
                return WINDOW_Y;
            }// end function
            , function (param1:Number) : void
            {
                _ArmsWindow_Image2.y = param1;
                return;
            }// end function
            , "_ArmsWindow_Image2.y");
            result[6] = binding;
            binding = new Binding(this, function () : Object
            {
                return _swf_close_window;
            }// end function
            , function (param1:Object) : void
            {
                _ArmsWindow_Image2.source = param1;
                return;
            }// end function
            , "_ArmsWindow_Image2.source");
            result[7] = binding;
            binding = new Binding(this, function () : Object
            {
                return eqpData;
            }// end function
            , function (param1:Object) : void
            {
                weapon_data.dataProvider = param1;
                return;
            }// end function
            , "weapon_data.dataProvider");
            result[8] = binding;
            binding = new Binding(this, function () : Number
            {
                return WINDOW_X + 20;
            }// end function
            , function (param1:Number) : void
            {
                weapon_data.x = param1;
                return;
            }// end function
            , "weapon_data.x");
            result[9] = binding;
            binding = new Binding(this, function () : Number
            {
                return WINDOW_Y + 35 + 20;
            }// end function
            , function (param1:Number) : void
            {
                weapon_data.y = param1;
                return;
            }// end function
            , "weapon_data.y");
            result[10] = binding;
            binding = new Binding(this, function () : Number
            {
                return WINDOW_WD - 40;
            }// end function
            , function (param1:Number) : void
            {
                weapon_data.width = param1;
                return;
            }// end function
            , "weapon_data.width");
            result[11] = binding;
            binding = new Binding(this, function () : String
            {
                var _loc_1:* = Utils.i18n("armsSubArms");
                var _loc_2:* = _loc_1 == undefined ? (null) : (String(_loc_1));
                return _loc_2;
            }// end function
            , function (param1:String) : void
            {
                _ArmsWindow_DataGridColumn1.headerText = param1;
                return;
            }// end function
            , "_ArmsWindow_DataGridColumn1.headerText");
            result[12] = binding;
            binding = new Binding(this, function () : String
            {
                var _loc_1:* = Utils.i18n("changeEquipmentAttack");
                var _loc_2:* = _loc_1 == undefined ? (null) : (String(_loc_1));
                return _loc_2;
            }// end function
            , function (param1:String) : void
            {
                _ArmsWindow_DataGridColumn2.headerText = param1;
                return;
            }// end function
            , "_ArmsWindow_DataGridColumn2.headerText");
            result[13] = binding;
            binding = new Binding(this, function () : String
            {
                var _loc_1:* = Utils.i18n("changeEquipmentHit");
                var _loc_2:* = _loc_1 == undefined ? (null) : (String(_loc_1));
                return _loc_2;
            }// end function
            , function (param1:String) : void
            {
                _ArmsWindow_DataGridColumn3.headerText = param1;
                return;
            }// end function
            , "_ArmsWindow_DataGridColumn3.headerText");
            result[14] = binding;
            binding = new Binding(this, function () : String
            {
                var _loc_1:* = Utils.i18n("changeEquipmentEndurance");
                var _loc_2:* = _loc_1 == undefined ? (null) : (String(_loc_1));
                return _loc_2;
            }// end function
            , function (param1:String) : void
            {
                _ArmsWindow_DataGridColumn4.headerText = param1;
                return;
            }// end function
            , "_ArmsWindow_DataGridColumn4.headerText");
            result[15] = binding;
            binding = new Binding(this, function () : Number
            {
                return BUTTON_X;
            }// end function
            , function (param1:Number) : void
            {
                _ArmsWindow_Image3.x = param1;
                return;
            }// end function
            , "_ArmsWindow_Image3.x");
            result[16] = binding;
            binding = new Binding(this, function () : Number
            {
                return BUTTON_Y;
            }// end function
            , function (param1:Number) : void
            {
                _ArmsWindow_Image3.y = param1;
                return;
            }// end function
            , "_ArmsWindow_Image3.y");
            result[17] = binding;
            binding = new Binding(this, function () : Object
            {
                return _swf_close;
            }// end function
            , function (param1:Object) : void
            {
                _ArmsWindow_Image3.source = param1;
                return;
            }// end function
            , "_ArmsWindow_Image3.source");
            result[18] = binding;
            binding = new Binding(this, function () : Number
            {
                return WINDOW_X;
            }// end function
            , function (param1:Number) : void
            {
                _ArmsWindow_Text2.x = param1;
                return;
            }// end function
            , "_ArmsWindow_Text2.x");
            result[19] = binding;
            binding = new Binding(this, function () : Number
            {
                return WINDOW_Y + 35 + 120;
            }// end function
            , function (param1:Number) : void
            {
                _ArmsWindow_Text2.y = param1;
                return;
            }// end function
            , "_ArmsWindow_Text2.y");
            result[20] = binding;
            binding = new Binding(this, function () : Number
            {
                return WINDOW_WD;
            }// end function
            , function (param1:Number) : void
            {
                _ArmsWindow_Text2.width = param1;
                return;
            }// end function
            , "_ArmsWindow_Text2.width");
            result[21] = binding;
            binding = new Binding(this, function () : String
            {
                var _loc_1:* = Utils.i18n("armsChengeEquipConf");
                var _loc_2:* = _loc_1 == undefined ? (null) : (String(_loc_1));
                return _loc_2;
            }// end function
            , function (param1:String) : void
            {
                _ArmsWindow_Text2.text = param1;
                return;
            }// end function
            , "_ArmsWindow_Text2.text");
            result[22] = binding;
            binding = new Binding(this, function () : Number
            {
                return BUTTON_X - 65;
            }// end function
            , function (param1:Number) : void
            {
                _ArmsWindow_Image4.x = param1;
                return;
            }// end function
            , "_ArmsWindow_Image4.x");
            result[23] = binding;
            binding = new Binding(this, function () : Number
            {
                return BUTTON_Y;
            }// end function
            , function (param1:Number) : void
            {
                _ArmsWindow_Image4.y = param1;
                return;
            }// end function
            , "_ArmsWindow_Image4.y");
            result[24] = binding;
            binding = new Binding(this, function () : Object
            {
                return _swf_yes;
            }// end function
            , function (param1:Object) : void
            {
                _ArmsWindow_Image4.source = param1;
                return;
            }// end function
            , "_ArmsWindow_Image4.source");
            result[25] = binding;
            binding = new Binding(this, function () : Number
            {
                return BUTTON_X + 65;
            }// end function
            , function (param1:Number) : void
            {
                _ArmsWindow_Image5.x = param1;
                return;
            }// end function
            , "_ArmsWindow_Image5.x");
            result[26] = binding;
            binding = new Binding(this, function () : Number
            {
                return BUTTON_Y;
            }// end function
            , function (param1:Number) : void
            {
                _ArmsWindow_Image5.y = param1;
                return;
            }// end function
            , "_ArmsWindow_Image5.y");
            result[27] = binding;
            binding = new Binding(this, function () : Object
            {
                return _swf_no;
            }// end function
            , function (param1:Object) : void
            {
                _ArmsWindow_Image5.source = param1;
                return;
            }// end function
            , "_ArmsWindow_Image5.source");
            result[28] = binding;
            return result;
        }// end function

        public function ___ArmsWindow_Image5_click(event:MouseEvent) : void
        {
            onNo();
            return;
        }// end function

        private function get _swf_no() : MovieClipLoaderAsset
        {
            return this._1818888637_swf_no;
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

        public function ___ArmsWindow_Image3_click(event:MouseEvent) : void
        {
            closeWindow();
            return;
        }// end function

        private function set _unit(param1:UnitVO) : void
        {
            var _loc_2:* = this._91329123_unit;
            if (_loc_2 !== param1)
            {
                this._91329123_unit = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "_unit", _loc_2, param1));
            }
            return;
        }// end function

        private function set eqpData(param1:ArrayCollection) : void
        {
            var _loc_2:* = this._1510757618eqpData;
            if (_loc_2 !== param1)
            {
                this._1510757618eqpData = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "eqpData", _loc_2, param1));
            }
            return;
        }// end function

        public function get windowViewStack() : ViewStack
        {
            return this._486222035windowViewStack;
        }// end function

        private function _ArmsWindow_DataGridColumn4_i() : DataGridColumn
        {
            var _loc_1:* = new DataGridColumn();
            _ArmsWindow_DataGridColumn4 = _loc_1;
            _loc_1.dataField = "endurance";
            _loc_1.width = 70;
            _loc_1.setStyle("textAlign", "center");
            BindingManager.executeBindings(this, "_ArmsWindow_DataGridColumn4", _ArmsWindow_DataGridColumn4);
            return _loc_1;
        }// end function

        public function set weapon_data(param1:DataGrid) : void
        {
            var _loc_2:* = this._391325715weapon_data;
            if (_loc_2 !== param1)
            {
                this._391325715weapon_data = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "weapon_data", _loc_2, param1));
            }
            return;
        }// end function

        private function get _unit() : UnitVO
        {
            return this._91329123_unit;
        }// end function

        public function __weapon_data_click(event:MouseEvent) : void
        {
            onYes();
            return;
        }// end function

        private function onClick() : void
        {
            if (_unit.subWeapon == null)
            {
                return;
            }
            return;
        }// end function

        private function get _swf_yes() : MovieClipLoaderAsset
        {
            return this._550983275_swf_yes;
        }// end function

        private function set _swf_yes(param1:MovieClipLoaderAsset) : void
        {
            var _loc_2:* = this._550983275_swf_yes;
            if (_loc_2 !== param1)
            {
                this._550983275_swf_yes = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "_swf_yes", _loc_2, param1));
            }
            return;
        }// end function

        public function ___ArmsWindow_PopupWindow1_creationComplete(event:FlexEvent) : void
        {
            setup();
            return;
        }// end function

        private function get _swf_window() : MovieClipLoaderAsset
        {
            return this._1075873300_swf_window;
        }// end function

        public function get weapon_data() : DataGrid
        {
            return this._391325715weapon_data;
        }// end function

        private function _ArmsWindow_DataGridColumn2_i() : DataGridColumn
        {
            var _loc_1:* = new DataGridColumn();
            _ArmsWindow_DataGridColumn2 = _loc_1;
            _loc_1.dataField = "damage";
            _loc_1.width = 60;
            _loc_1.setStyle("textAlign", "center");
            BindingManager.executeBindings(this, "_ArmsWindow_DataGridColumn2", _ArmsWindow_DataGridColumn2);
            return _loc_1;
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

        public function ___ArmsWindow_Image2_click(event:MouseEvent) : void
        {
            closeWindow();
            return;
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

        public function ___ArmsWindow_Image4_click(event:MouseEvent) : void
        {
            onYes();
            return;
        }// end function

        private function get _swf_close() : MovieClipLoaderAsset
        {
            return this._1193840764_swf_close;
        }// end function

        private function setup() : void
        {
            MovieClip(Loader(_swf_window.getChildAt(0)).content).gotoAndPlay("center_400x270");
            MovieClip(Loader(_swf_close.getChildAt(0)).content).gotoAndPlay("button_close");
            MovieClip(Loader(_swf_yes.getChildAt(0)).content).gotoAndPlay("button_yes");
            MovieClip(Loader(_swf_no.getChildAt(0)).content).gotoAndPlay("button_no");
            return;
        }// end function

        public static function set watcherSetupUtil(param1:IWatcherSetupUtil) : void
        {
            _watcherSetupUtil = param1;
            return;
        }// end function

    }
}
