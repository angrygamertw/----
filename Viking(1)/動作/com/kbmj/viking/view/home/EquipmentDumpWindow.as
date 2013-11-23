package com.kbmj.viking.view.home
{
    import com.kbmj.viking.lib.*;
    import flash.display.*;
    import flash.events.*;
    import flash.utils.*;
    import mx.binding.*;
    import mx.containers.*;
    import mx.controls.*;
    import mx.core.*;
    import mx.events.*;
    import mx.managers.*;

    public class EquipmentDumpWindow extends Canvas implements IBindingClient
    {
        public var _EquipmentDumpWindow_Image1:Image;
        public var _EquipmentDumpWindow_Image2:Image;
        public var _EquipmentDumpWindow_Image3:Image;
        private var _1818888664_swf_ok:MovieClipLoaderAsset;
        private var _1075873300_swf_window:MovieClipLoaderAsset;
        private var _2070223196_dumpEqipment:Object;
        private var _1193840764_swf_close:MovieClipLoaderAsset;
        public var _EquipmentDumpWindow_Text1:Text;
        var _bindingsBeginWithWord:Object;
        var _watchers:Array;
        var _bindings:Array;
        private var _documentDescriptor_:UIComponentDescriptor;
        var _bindingsByDestination:Object;
        private static var _watcherSetupUtil:IWatcherSetupUtil;

        public function EquipmentDumpWindow()
        {
            _documentDescriptor_ = new UIComponentDescriptor({type:Canvas, propertiesFactory:function () : Object
            {
                return {childDescriptors:[new UIComponentDescriptor({type:Image, id:"_EquipmentDumpWindow_Image1"}), new UIComponentDescriptor({type:Box, propertiesFactory:function () : Object
                {
                    return {width:330, height:180, styleName:"DialogBg", x:220, y:180, childDescriptors:[new UIComponentDescriptor({type:Canvas, propertiesFactory:function () : Object
                    {
                        return {childDescriptors:[new UIComponentDescriptor({type:Text, id:"_EquipmentDumpWindow_Text1", propertiesFactory:function () : Object
                        {
                            return {width:260, x:35, y:35, styleName:"CenterText"};
                        }// end function
                        }), new UIComponentDescriptor({type:Image, id:"_EquipmentDumpWindow_Image2", events:{click:"___EquipmentDumpWindow_Image2_click"}, propertiesFactory:function () : Object
                        {
                            return {x:42, y:140};
                        }// end function
                        }), new UIComponentDescriptor({type:Image, id:"_EquipmentDumpWindow_Image3", events:{click:"___EquipmentDumpWindow_Image3_click"}, propertiesFactory:function () : Object
                        {
                            return {x:172, y:140};
                        }// end function
                        })]};
                    }// end function
                    })]};
                }// end function
                })]};
            }// end function
            });
            _2070223196_dumpEqipment = new Object();
            _1075873300_swf_window = new Viking.EmbedSwfWindowCommon();
            _1193840764_swf_close = new Viking.EmbedSwfButtonCommon();
            _1818888664_swf_ok = new Viking.EmbedSwfButtonCommon();
            _bindings = [];
            _watchers = [];
            _bindingsByDestination = {};
            _bindingsBeginWithWord = {};
            mx_internal::_document = this;
            this.addEventListener("creationComplete", ___EquipmentDumpWindow_Canvas1_creationComplete);
            return;
        }// end function

        public function get dumpEqipment() : Object
        {
            return _dumpEqipment;
        }// end function

        public function set dumpEqipment(param1:Object) : void
        {
            _dumpEqipment = param1;
            return;
        }// end function

        private function _EquipmentDumpWindow_bindingExprs() : void
        {
            var _loc_1:* = undefined;
            _loc_1 = _swf_window;
            _loc_1 = Utils.i18n("equipmentDumpConfirm", _dumpEqipment.nameLabel);
            _loc_1 = _swf_ok;
            _loc_1 = _swf_close;
            return;
        }// end function

        public function ___EquipmentDumpWindow_Image2_click(event:MouseEvent) : void
        {
            onDump();
            return;
        }// end function

        private function init() : void
        {
            MovieClip(Loader(_swf_window.getChildAt(0)).content).gotoAndPlay("center_300x200");
            MovieClip(Loader(_swf_ok.getChildAt(0)).content).gotoAndPlay("button_yes");
            MovieClip(Loader(_swf_close.getChildAt(0)).content).gotoAndPlay("button_no");
            return;
        }// end function

        override public function initialize() : void
        {
            var target:EquipmentDumpWindow;
            var watcherSetupUtilClass:Object;
            .mx_internal::setDocumentDescriptor(_documentDescriptor_);
            var bindings:* = _EquipmentDumpWindow_bindingsSetup();
            var watchers:Array;
            target;
            if (_watcherSetupUtil == null)
            {
                watcherSetupUtilClass = getDefinitionByName("_com_kbmj_viking_view_home_EquipmentDumpWindowWatcherSetupUtil");
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

        private function onClose() : void
        {
            PopUpManager.removePopUp(this);
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

        private function set _dumpEqipment(param1:Object) : void
        {
            var _loc_2:* = this._2070223196_dumpEqipment;
            if (_loc_2 !== param1)
            {
                this._2070223196_dumpEqipment = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "_dumpEqipment", _loc_2, param1));
            }
            return;
        }// end function

        private function _EquipmentDumpWindow_bindingsSetup() : Array
        {
            var binding:Binding;
            var result:Array;
            binding = new Binding(this, function () : Object
            {
                return _swf_window;
            }// end function
            , function (param1:Object) : void
            {
                _EquipmentDumpWindow_Image1.source = param1;
                return;
            }// end function
            , "_EquipmentDumpWindow_Image1.source");
            result[0] = binding;
            binding = new Binding(this, function () : String
            {
                var _loc_1:* = Utils.i18n("equipmentDumpConfirm", _dumpEqipment.nameLabel);
                var _loc_2:* = _loc_1 == undefined ? (null) : (String(_loc_1));
                return _loc_2;
            }// end function
            , function (param1:String) : void
            {
                _EquipmentDumpWindow_Text1.text = param1;
                return;
            }// end function
            , "_EquipmentDumpWindow_Text1.text");
            result[1] = binding;
            binding = new Binding(this, function () : Object
            {
                return _swf_ok;
            }// end function
            , function (param1:Object) : void
            {
                _EquipmentDumpWindow_Image2.source = param1;
                return;
            }// end function
            , "_EquipmentDumpWindow_Image2.source");
            result[2] = binding;
            binding = new Binding(this, function () : Object
            {
                return _swf_close;
            }// end function
            , function (param1:Object) : void
            {
                _EquipmentDumpWindow_Image3.source = param1;
                return;
            }// end function
            , "_EquipmentDumpWindow_Image3.source");
            result[3] = binding;
            return result;
        }// end function

        private function get _dumpEqipment() : Object
        {
            return this._2070223196_dumpEqipment;
        }// end function

        public function ___EquipmentDumpWindow_Image3_click(event:MouseEvent) : void
        {
            onClose();
            return;
        }// end function

        private function get _swf_ok() : MovieClipLoaderAsset
        {
            return this._1818888664_swf_ok;
        }// end function

        private function get _swf_window() : MovieClipLoaderAsset
        {
            return this._1075873300_swf_window;
        }// end function

        public function ___EquipmentDumpWindow_Canvas1_creationComplete(event:FlexEvent) : void
        {
            init();
            return;
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

        private function onDump() : void
        {
            PopUpManager.removePopUp(this);
            dispatchEvent(new PopupEvent(Viking.HOME_EQUIPMENT_DUMP, _dumpEqipment));
            return;
        }// end function

        private function get _swf_close() : MovieClipLoaderAsset
        {
            return this._1193840764_swf_close;
        }// end function

        private function set _swf_ok(param1:MovieClipLoaderAsset) : void
        {
            var _loc_2:* = this._1818888664_swf_ok;
            if (_loc_2 !== param1)
            {
                this._1818888664_swf_ok = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "_swf_ok", _loc_2, param1));
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
