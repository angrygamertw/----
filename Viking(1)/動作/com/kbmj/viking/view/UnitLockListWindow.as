package com.kbmj.viking.view
{
    import com.kbmj.viking.lib.*;
    import com.kbmj.viking.vo.tactics.*;
    import flash.display.*;
    import flash.events.*;
    import flash.utils.*;
    import mx.binding.*;
    import mx.controls.*;
    import mx.controls.dataGridClasses.*;
    import mx.core.*;
    import mx.events.*;

    public class UnitLockListWindow extends PopupWindow implements IBindingClient
    {
        private var _1075873300_swf_window:MovieClipLoaderAsset;
        private var _1957330940_rollbackFlags:Object;
        var _watchers:Array;
        private var _1623844508_swf_decide:MovieClipLoaderAsset;
        public var _UnitLockListWindow_DataGrid1:DataGrid;
        public var _UnitLockListWindow_Text1:Text;
        public var _UnitLockListWindow_DataGridColumn1:DataGridColumn;
        public var _UnitLockListWindow_DataGridColumn2:DataGridColumn;
        public var _UnitLockListWindow_DataGridColumn3:DataGridColumn;
        public var _UnitLockListWindow_DataGridColumn8:DataGridColumn;
        var _bindingsByDestination:Object;
        var _bindingsBeginWithWord:Object;
        private var _1463764368_units:Array;
        private var _1193840764_swf_close:MovieClipLoaderAsset;
        public var _UnitLockListWindow_Image1:Image;
        public var _UnitLockListWindow_Image2:Image;
        public var _UnitLockListWindow_Image3:Image;
        public var _UnitLockListWindow_Image4:Image;
        private var _1780229152lockButtonRenderer:ClassFactory;
        private var _1218643219_swf_close_window:MovieClipLoaderAsset;
        var _bindings:Array;
        private var _documentDescriptor_:UIComponentDescriptor;
        public static var imageLock:Class = UnitLockListWindow_imageLock;
        private static const WINDOW_X:int = 20;
        private static const WINDOW_Y:int = 20;
        private static const BUTTON_X:int = 325;
        private static const BUTTON_Y:int = 490;
        public static const DECIDE_UNIT_LOCK:String = "UnitLockListWindow/decideUnitLock";
        public static var imageLockOff:Class = UnitLockListWindow_imageLockOff;
        private static var _watcherSetupUtil:IWatcherSetupUtil;
        private static const WINDOW_HT:int = 520;
        private static const WINDOW_WD:int = 720;

        public function UnitLockListWindow()
        {
            _documentDescriptor_ = new UIComponentDescriptor({type:PopupWindow, propertiesFactory:function () : Object
            {
                return {width:760, height:560, childDescriptors:[new UIComponentDescriptor({type:Image, id:"_UnitLockListWindow_Image1"}), new UIComponentDescriptor({type:Text, id:"_UnitLockListWindow_Text1", propertiesFactory:function () : Object
                {
                    return {styleName:"DealTitle"};
                }// end function
                }), new UIComponentDescriptor({type:DataGrid, id:"_UnitLockListWindow_DataGrid1", propertiesFactory:function () : Object
                {
                    return {rowCount:14, styleName:"DataGridBase", selectable:false, sortableColumns:false, columns:[_UnitLockListWindow_DataGridColumn1_i(), _UnitLockListWindow_DataGridColumn2_i(), _UnitLockListWindow_DataGridColumn3_i(), _UnitLockListWindow_DataGridColumn4_c(), _UnitLockListWindow_DataGridColumn5_c(), _UnitLockListWindow_DataGridColumn6_c(), _UnitLockListWindow_DataGridColumn7_c(), _UnitLockListWindow_DataGridColumn8_i()]};
                }// end function
                }), new UIComponentDescriptor({type:Image, id:"_UnitLockListWindow_Image2", events:{click:"___UnitLockListWindow_Image2_click"}}), new UIComponentDescriptor({type:Image, id:"_UnitLockListWindow_Image3", events:{click:"___UnitLockListWindow_Image3_click"}}), new UIComponentDescriptor({type:Image, id:"_UnitLockListWindow_Image4", events:{click:"___UnitLockListWindow_Image4_click"}})]};
            }// end function
            });
            _1075873300_swf_window = new Viking.EmbedSwfWindowCommon();
            _1193840764_swf_close = new Viking.EmbedSwfButtonCommon();
            _1623844508_swf_decide = new Viking.EmbedSwfButtonCommon();
            _1218643219_swf_close_window = new Viking.EmbedSwfButtonCloseWindow();
            _1957330940_rollbackFlags = new Object();
            _bindings = [];
            _watchers = [];
            _bindingsByDestination = {};
            _bindingsBeginWithWord = {};
            mx_internal::_document = this;
            this.width = 760;
            this.height = 560;
            _UnitLockListWindow_ClassFactory1_i();
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

        public function ___UnitLockListWindow_Image3_click(event:MouseEvent) : void
        {
            decideLock();
            return;
        }// end function

        public function closeWindow(param1:Boolean) : void
        {
            var _loc_2:UnitVO = null;
            onClose();
            MovieClip(Loader(_swf_close.getChildAt(0)).content).gotoAndPlay(0);
            MovieClip(Loader(_swf_close.getChildAt(0)).content).gotoAndPlay("button_close");
            MovieClip(Loader(_swf_decide.getChildAt(0)).content).gotoAndPlay(0);
            MovieClip(Loader(_swf_decide.getChildAt(0)).content).gotoAndPlay("button_decide");
            MovieClip(Loader(_swf_close_window.getChildAt(0)).content).gotoAndPlay(1);
            if (param1)
            {
                for each (_loc_2 in units)
                {
                    
                    _loc_2.lockFlag = _rollbackFlags[_loc_2.unitId];
                }
            }
            return;
        }// end function

        private function get _rollbackFlags() : Object
        {
            return this._1957330940_rollbackFlags;
        }// end function

        private function set _rollbackFlags(param1:Object) : void
        {
            var _loc_2:* = this._1957330940_rollbackFlags;
            if (_loc_2 !== param1)
            {
                this._1957330940_rollbackFlags = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "_rollbackFlags", _loc_2, param1));
            }
            return;
        }// end function

        override public function initialize() : void
        {
            var target:UnitLockListWindow;
            var watcherSetupUtilClass:Object;
            .mx_internal::setDocumentDescriptor(_documentDescriptor_);
            var bindings:* = _UnitLockListWindow_bindingsSetup();
            var watchers:Array;
            target;
            if (_watcherSetupUtil == null)
            {
                watcherSetupUtilClass = getDefinitionByName("_com_kbmj_viking_view_UnitLockListWindowWatcherSetupUtil");
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

        private function _UnitLockListWindow_DataGridColumn3_i() : DataGridColumn
        {
            var _loc_1:* = new DataGridColumn();
            _UnitLockListWindow_DataGridColumn3 = _loc_1;
            _loc_1.dataField = "jobName";
            BindingManager.executeBindings(this, "_UnitLockListWindow_DataGridColumn3", _UnitLockListWindow_DataGridColumn3);
            return _loc_1;
        }// end function

        private function _UnitLockListWindow_DataGridColumn1_i() : DataGridColumn
        {
            var _loc_1:* = new DataGridColumn();
            _UnitLockListWindow_DataGridColumn1 = _loc_1;
            _loc_1.dataField = "lockFlag";
            _loc_1.width = 60;
            _loc_1.setStyle("textAlign", "center");
            BindingManager.executeBindings(this, "_UnitLockListWindow_DataGridColumn1", _UnitLockListWindow_DataGridColumn1);
            return _loc_1;
        }// end function

        public function changeUnitLock(param1:Object) : void
        {
            param1.lockFlag = !param1.lockFlag;
            return;
        }// end function

        public function get lockButtonRenderer() : ClassFactory
        {
            return this._1780229152lockButtonRenderer;
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

        private function _UnitLockListWindow_ClassFactory2_c() : ClassFactory
        {
            var _loc_1:* = new ClassFactory();
            _loc_1.generator = UnitDetailLabelRenderer;
            return _loc_1;
        }// end function

        public function getLockImage(param1:Object) : Class
        {
            if (param1.lockFlag)
            {
                return imageLock;
            }
            return imageLockOff;
        }// end function

        private function _UnitLockListWindow_DataGridColumn5_c() : DataGridColumn
        {
            var _loc_1:* = new DataGridColumn();
            _loc_1.dataField = "maskedMaxHp";
            _loc_1.headerText = "HP";
            _loc_1.width = 40;
            _loc_1.setStyle("textAlign", "center");
            return _loc_1;
        }// end function

        private function _UnitLockListWindow_DataGridColumn7_c() : DataGridColumn
        {
            var _loc_1:* = new DataGridColumn();
            _loc_1.dataField = "baseDefense";
            _loc_1.headerText = "防";
            _loc_1.width = 40;
            _loc_1.setStyle("textAlign", "center");
            return _loc_1;
        }// end function

        public function set lockButtonRenderer(param1:ClassFactory) : void
        {
            var _loc_2:* = this._1780229152lockButtonRenderer;
            if (_loc_2 !== param1)
            {
                this._1780229152lockButtonRenderer = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "lockButtonRenderer", _loc_2, param1));
            }
            return;
        }// end function

        public function ___UnitLockListWindow_Image2_click(event:MouseEvent) : void
        {
            closeWindow(true);
            return;
        }// end function

        private function _UnitLockListWindow_bindingsSetup() : Array
        {
            var binding:Binding;
            var result:Array;
            binding = new Binding(this, function () : Object
            {
                return _swf_window;
            }// end function
            , function (param1:Object) : void
            {
                _UnitLockListWindow_Image1.source = param1;
                return;
            }// end function
            , "_UnitLockListWindow_Image1.source");
            result[0] = binding;
            binding = new Binding(this, function () : Number
            {
                return WINDOW_X;
            }// end function
            , function (param1:Number) : void
            {
                _UnitLockListWindow_Text1.x = param1;
                return;
            }// end function
            , "_UnitLockListWindow_Text1.x");
            result[1] = binding;
            binding = new Binding(this, function () : Number
            {
                return WINDOW_Y;
            }// end function
            , function (param1:Number) : void
            {
                _UnitLockListWindow_Text1.y = param1;
                return;
            }// end function
            , "_UnitLockListWindow_Text1.y");
            result[2] = binding;
            binding = new Binding(this, function () : Number
            {
                return WINDOW_WD;
            }// end function
            , function (param1:Number) : void
            {
                _UnitLockListWindow_Text1.width = param1;
                return;
            }// end function
            , "_UnitLockListWindow_Text1.width");
            result[3] = binding;
            binding = new Binding(this, function () : String
            {
                var _loc_1:* = Utils.i18n("unitListTitle");
                var _loc_2:* = _loc_1 == undefined ? (null) : (String(_loc_1));
                return _loc_2;
            }// end function
            , function (param1:String) : void
            {
                _UnitLockListWindow_Text1.text = param1;
                return;
            }// end function
            , "_UnitLockListWindow_Text1.text");
            result[4] = binding;
            binding = new Binding(this, function () : Object
            {
                return _units;
            }// end function
            , function (param1:Object) : void
            {
                _UnitLockListWindow_DataGrid1.dataProvider = param1;
                return;
            }// end function
            , "_UnitLockListWindow_DataGrid1.dataProvider");
            result[5] = binding;
            binding = new Binding(this, function () : Number
            {
                return WINDOW_X + 20;
            }// end function
            , function (param1:Number) : void
            {
                _UnitLockListWindow_DataGrid1.x = param1;
                return;
            }// end function
            , "_UnitLockListWindow_DataGrid1.x");
            result[6] = binding;
            binding = new Binding(this, function () : Number
            {
                return WINDOW_Y + 35 + 10;
            }// end function
            , function (param1:Number) : void
            {
                _UnitLockListWindow_DataGrid1.y = param1;
                return;
            }// end function
            , "_UnitLockListWindow_DataGrid1.y");
            result[7] = binding;
            binding = new Binding(this, function () : Number
            {
                return WINDOW_WD - 40;
            }// end function
            , function (param1:Number) : void
            {
                _UnitLockListWindow_DataGrid1.width = param1;
                return;
            }// end function
            , "_UnitLockListWindow_DataGrid1.width");
            result[8] = binding;
            binding = new Binding(this, function () : String
            {
                var _loc_1:* = Utils.i18n("unitLock");
                var _loc_2:* = _loc_1 == undefined ? (null) : (String(_loc_1));
                return _loc_2;
            }// end function
            , function (param1:String) : void
            {
                _UnitLockListWindow_DataGridColumn1.headerText = param1;
                return;
            }// end function
            , "_UnitLockListWindow_DataGridColumn1.headerText");
            result[9] = binding;
            binding = new Binding(this, function () : IFactory
            {
                return lockButtonRenderer;
            }// end function
            , function (param1:IFactory) : void
            {
                _UnitLockListWindow_DataGridColumn1.itemRenderer = param1;
                return;
            }// end function
            , "_UnitLockListWindow_DataGridColumn1.itemRenderer");
            result[10] = binding;
            binding = new Binding(this, function () : String
            {
                var _loc_1:* = Utils.i18n("generalName");
                var _loc_2:* = _loc_1 == undefined ? (null) : (String(_loc_1));
                return _loc_2;
            }// end function
            , function (param1:String) : void
            {
                _UnitLockListWindow_DataGridColumn2.headerText = param1;
                return;
            }// end function
            , "_UnitLockListWindow_DataGridColumn2.headerText");
            result[11] = binding;
            binding = new Binding(this, function () : String
            {
                var _loc_1:* = Utils.i18n("generalJob");
                var _loc_2:* = _loc_1 == undefined ? (null) : (String(_loc_1));
                return _loc_2;
            }// end function
            , function (param1:String) : void
            {
                _UnitLockListWindow_DataGridColumn3.headerText = param1;
                return;
            }// end function
            , "_UnitLockListWindow_DataGridColumn3.headerText");
            result[12] = binding;
            binding = new Binding(this, function () : String
            {
                var _loc_1:* = Utils.i18n("generalWeapon");
                var _loc_2:* = _loc_1 == undefined ? (null) : (String(_loc_1));
                return _loc_2;
            }// end function
            , function (param1:String) : void
            {
                _UnitLockListWindow_DataGridColumn8.headerText = param1;
                return;
            }// end function
            , "_UnitLockListWindow_DataGridColumn8.headerText");
            result[13] = binding;
            binding = new Binding(this, function () : Number
            {
                return BUTTON_X - 100;
            }// end function
            , function (param1:Number) : void
            {
                _UnitLockListWindow_Image2.x = param1;
                return;
            }// end function
            , "_UnitLockListWindow_Image2.x");
            result[14] = binding;
            binding = new Binding(this, function () : Number
            {
                return BUTTON_Y;
            }// end function
            , function (param1:Number) : void
            {
                _UnitLockListWindow_Image2.y = param1;
                return;
            }// end function
            , "_UnitLockListWindow_Image2.y");
            result[15] = binding;
            binding = new Binding(this, function () : Object
            {
                return _swf_close;
            }// end function
            , function (param1:Object) : void
            {
                _UnitLockListWindow_Image2.source = param1;
                return;
            }// end function
            , "_UnitLockListWindow_Image2.source");
            result[16] = binding;
            binding = new Binding(this, function () : Number
            {
                return BUTTON_X + 50;
            }// end function
            , function (param1:Number) : void
            {
                _UnitLockListWindow_Image3.x = param1;
                return;
            }// end function
            , "_UnitLockListWindow_Image3.x");
            result[17] = binding;
            binding = new Binding(this, function () : Number
            {
                return BUTTON_Y;
            }// end function
            , function (param1:Number) : void
            {
                _UnitLockListWindow_Image3.y = param1;
                return;
            }// end function
            , "_UnitLockListWindow_Image3.y");
            result[18] = binding;
            binding = new Binding(this, function () : Object
            {
                return _swf_decide;
            }// end function
            , function (param1:Object) : void
            {
                _UnitLockListWindow_Image3.source = param1;
                return;
            }// end function
            , "_UnitLockListWindow_Image3.source");
            result[19] = binding;
            binding = new Binding(this, function () : Number
            {
                return WINDOW_X + WINDOW_WD - 25;
            }// end function
            , function (param1:Number) : void
            {
                _UnitLockListWindow_Image4.x = param1;
                return;
            }// end function
            , "_UnitLockListWindow_Image4.x");
            result[20] = binding;
            binding = new Binding(this, function () : Number
            {
                return WINDOW_Y;
            }// end function
            , function (param1:Number) : void
            {
                _UnitLockListWindow_Image4.y = param1;
                return;
            }// end function
            , "_UnitLockListWindow_Image4.y");
            result[21] = binding;
            binding = new Binding(this, function () : Object
            {
                return _swf_close_window;
            }// end function
            , function (param1:Object) : void
            {
                _UnitLockListWindow_Image4.source = param1;
                return;
            }// end function
            , "_UnitLockListWindow_Image4.source");
            result[22] = binding;
            return result;
        }// end function

        public function ___UnitLockListWindow_Image4_click(event:MouseEvent) : void
        {
            closeWindow(true);
            return;
        }// end function

        private function set _swf_decide(param1:MovieClipLoaderAsset) : void
        {
            var _loc_2:* = this._1623844508_swf_decide;
            if (_loc_2 !== param1)
            {
                this._1623844508_swf_decide = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "_swf_decide", _loc_2, param1));
            }
            return;
        }// end function

        public function decideLock() : void
        {
            var _loc_2:UnitVO = null;
            var _loc_1:Array = [];
            for each (_loc_2 in units)
            {
                
                if (_loc_2.lockFlag)
                {
                    _loc_1.push(_loc_2.unitId);
                }
            }
            sendPopupEvent(DECIDE_UNIT_LOCK, _loc_1);
            closeWindow(false);
            return;
        }// end function

        private function _UnitLockListWindow_DataGridColumn6_c() : DataGridColumn
        {
            var _loc_1:* = new DataGridColumn();
            _loc_1.dataField = "baseDamage";
            _loc_1.headerText = "攻";
            _loc_1.width = 40;
            _loc_1.setStyle("textAlign", "center");
            return _loc_1;
        }// end function

        private function _UnitLockListWindow_DataGridColumn2_i() : DataGridColumn
        {
            var _loc_1:* = new DataGridColumn();
            _UnitLockListWindow_DataGridColumn2 = _loc_1;
            _loc_1.dataField = "name";
            _loc_1.itemRenderer = _UnitLockListWindow_ClassFactory2_c();
            BindingManager.executeBindings(this, "_UnitLockListWindow_DataGridColumn2", _UnitLockListWindow_DataGridColumn2);
            return _loc_1;
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

        public function set units(param1:Array) : void
        {
            var _loc_2:Object = null;
            _units = param1;
            for each (_loc_2 in _units)
            {
                
                _rollbackFlags[_loc_2.unitId] = _loc_2.lockFlag;
            }
            setup();
            return;
        }// end function

        private function _UnitLockListWindow_DataGridColumn8_i() : DataGridColumn
        {
            var _loc_1:* = new DataGridColumn();
            _UnitLockListWindow_DataGridColumn8 = _loc_1;
            _loc_1.dataField = "weaponName";
            BindingManager.executeBindings(this, "_UnitLockListWindow_DataGridColumn8", _UnitLockListWindow_DataGridColumn8);
            return _loc_1;
        }// end function

        private function _UnitLockListWindow_bindingExprs() : void
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
            _loc_1 = Utils.i18n("unitLock");
            _loc_1 = lockButtonRenderer;
            _loc_1 = Utils.i18n("generalName");
            _loc_1 = Utils.i18n("generalJob");
            _loc_1 = Utils.i18n("generalWeapon");
            _loc_1 = BUTTON_X - 100;
            _loc_1 = BUTTON_Y;
            _loc_1 = _swf_close;
            _loc_1 = BUTTON_X + 50;
            _loc_1 = BUTTON_Y;
            _loc_1 = _swf_decide;
            _loc_1 = WINDOW_X + WINDOW_WD - 25;
            _loc_1 = WINDOW_Y;
            _loc_1 = _swf_close_window;
            return;
        }// end function

        private function get _swf_decide() : MovieClipLoaderAsset
        {
            return this._1623844508_swf_decide;
        }// end function

        private function _UnitLockListWindow_ClassFactory1_i() : ClassFactory
        {
            var _loc_1:* = new ClassFactory();
            lockButtonRenderer = _loc_1;
            _loc_1.generator = UnitLockListWindow_inlineComponent1;
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

        private function _UnitLockListWindow_DataGridColumn4_c() : DataGridColumn
        {
            var _loc_1:* = new DataGridColumn();
            _loc_1.dataField = "level";
            _loc_1.headerText = "Lv";
            _loc_1.width = 50;
            _loc_1.setStyle("textAlign", "center");
            return _loc_1;
        }// end function

        private function get _swf_window() : MovieClipLoaderAsset
        {
            return this._1075873300_swf_window;
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

        private function get _swf_close() : MovieClipLoaderAsset
        {
            return this._1193840764_swf_close;
        }// end function

        private function setup() : void
        {
            MovieClip(Loader(_swf_window.getChildAt(0)).content).gotoAndPlay("center_720x520");
            MovieClip(Loader(_swf_close.getChildAt(0)).content).gotoAndPlay("button_close");
            MovieClip(Loader(_swf_decide.getChildAt(0)).content).gotoAndPlay("button_decide");
            return;
        }// end function

        public static function set watcherSetupUtil(param1:IWatcherSetupUtil) : void
        {
            UnitLockListWindow._watcherSetupUtil = param1;
            return;
        }// end function

    }
}
