package com.kbmj.viking.view.home
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
    import mx.core.*;
    import mx.events.*;

    public class UnitUtilityWindow extends PopupWindow implements IBindingClient
    {
        private var confirmRejuvenateWindow:ConfirmRejuvenateWindow;
        private var _91329123_unit:UnitVO;
        private var _power:Object;
        private var _1698058155reunion_button:Image;
        private var _612754204recovery_button:Image;
        private var _1270467126_swf_power3:MovieClipLoaderAsset;
        private var _1759834555_swf_blood_reunion:MovieClipLoaderAsset;
        var _bindingsByDestination:Object;
        private var _1193840764_swf_close:MovieClipLoaderAsset;
        private var _343417063decideOff:Class;
        private var _1218643219_swf_close_window:MovieClipLoaderAsset;
        private var _903080787rename_button:Image;
        public var _UnitUtilityWindow_Text1:Text;
        public var _UnitUtilityWindow_Text2:Text;
        public var _UnitUtilityWindow_Text3:Text;
        public var _UnitUtilityWindow_Text4:Text;
        public var _UnitUtilityWindow_Text5:Text;
        public var _UnitUtilityWindow_Text6:Text;
        private var _1335723160decide:Class;
        private var _1270467127_swf_power2:MovieClipLoaderAsset;
        private var _1726125357_powers:ArrayCollection;
        var _watchers:Array;
        public var _UnitUtilityWindow_Image1:Image;
        public var _UnitUtilityWindow_Image6:Image;
        private var _1896677185windowLayer:Canvas;
        private var confirmReunionWindow:ConfirmReunionWindow;
        private var confirmRenameWindow:ConfirmRenameWindow;
        private var _1259444934blood_reunion_button:Image;
        private var confirmRecoveryWindow:ConfirmRecoveryWindow;
        var _bindingsBeginWithWord:Object;
        private var confirmImageChangeWindow:ConfirmImageChangeWindow;
        private var _101371420utilityCanvas:Canvas;
        private var _1270467128_swf_power1:MovieClipLoaderAsset;
        private var _1924885727descriptionRenderer:ClassFactory;
        var _bindings:Array;
        private var _documentDescriptor_:UIComponentDescriptor;
        private var _1241645780priceRenderer:ClassFactory;
        public static const UTILITY_WINDOW_CLOSE:String = NAME + "utilityWindowClose";
        public static const RENAME:String = NAME + "rename";
        private static var _watcherSetupUtil:IWatcherSetupUtil;
        public static const NAME:String = "UnitUtilityWindow";
        public static const IMAGE_CHANGE:String = NAME + "changeImage";
        public static const RECOVERY:String = NAME + "recovery";
        public static const REUNION:String = NAME + "reunion";

        public function UnitUtilityWindow()
        {
            _documentDescriptor_ = new UIComponentDescriptor({type:PopupWindow, propertiesFactory:function () : Object
            {
                return {childDescriptors:[new UIComponentDescriptor({type:Canvas, id:"windowLayer"}), new UIComponentDescriptor({type:Canvas, id:"utilityCanvas", propertiesFactory:function () : Object
                {
                    return {x:30, childDescriptors:[new UIComponentDescriptor({type:Image, id:"_UnitUtilityWindow_Image1", events:{click:"___UnitUtilityWindow_Image1_click"}, propertiesFactory:function () : Object
                    {
                        return {x:685, y:20};
                    }// end function
                    }), new UIComponentDescriptor({type:Text, id:"_UnitUtilityWindow_Text1", stylesFactory:function () : void
                    {
                        this.color = 15658734;
                        return;
                    }// end function
                    , propertiesFactory:function () : Object
                    {
                        return {x:315, y:22, styleName:"PanelBaseTitle"};
                    }// end function
                    }), new UIComponentDescriptor({type:Text, id:"_UnitUtilityWindow_Text2", stylesFactory:function () : void
                    {
                        this.fontSize = 11;
                        return;
                    }// end function
                    , propertiesFactory:function () : Object
                    {
                        return {x:10, y:50};
                    }// end function
                    }), new UIComponentDescriptor({type:Image, id:"reunion_button", events:{click:"__reunion_button_click"}, propertiesFactory:function () : Object
                    {
                        return {x:20, y:80};
                    }// end function
                    }), new UIComponentDescriptor({type:Text, id:"_UnitUtilityWindow_Text3", stylesFactory:function () : void
                    {
                        this.fontSize = 15;
                        return;
                    }// end function
                    , propertiesFactory:function () : Object
                    {
                        return {x:150, y:75};
                    }// end function
                    }), new UIComponentDescriptor({type:Image, id:"rename_button", events:{click:"__rename_button_click"}, propertiesFactory:function () : Object
                    {
                        return {x:20, y:120};
                    }// end function
                    }), new UIComponentDescriptor({type:Text, id:"_UnitUtilityWindow_Text4", stylesFactory:function () : void
                    {
                        this.fontSize = 15;
                        return;
                    }// end function
                    , propertiesFactory:function () : Object
                    {
                        return {x:150, y:125};
                    }// end function
                    }), new UIComponentDescriptor({type:Image, id:"recovery_button", events:{click:"__recovery_button_click"}, propertiesFactory:function () : Object
                    {
                        return {x:20, y:160};
                    }// end function
                    }), new UIComponentDescriptor({type:Text, id:"_UnitUtilityWindow_Text5", stylesFactory:function () : void
                    {
                        this.fontSize = 15;
                        return;
                    }// end function
                    , propertiesFactory:function () : Object
                    {
                        return {x:150, y:165};
                    }// end function
                    }), new UIComponentDescriptor({type:Image, id:"blood_reunion_button", events:{click:"__blood_reunion_button_click"}, propertiesFactory:function () : Object
                    {
                        return {x:20, y:200};
                    }// end function
                    }), new UIComponentDescriptor({type:Text, id:"_UnitUtilityWindow_Text6", stylesFactory:function () : void
                    {
                        this.fontSize = 15;
                        return;
                    }// end function
                    , propertiesFactory:function () : Object
                    {
                        return {x:150, y:195};
                    }// end function
                    }), new UIComponentDescriptor({type:Image, id:"_UnitUtilityWindow_Image6", events:{click:"___UnitUtilityWindow_Image6_click"}, propertiesFactory:function () : Object
                    {
                        return {x:295, y:247};
                    }// end function
                    })]};
                }// end function
                })]};
            }// end function
            });
            confirmReunionWindow = new ConfirmReunionWindow();
            confirmRejuvenateWindow = new ConfirmRejuvenateWindow();
            confirmRenameWindow = new ConfirmRenameWindow();
            confirmRecoveryWindow = new ConfirmRecoveryWindow();
            confirmImageChangeWindow = new ConfirmImageChangeWindow();
            _1726125357_powers = new ArrayCollection([{name:Utils.i18n("localize248"), price:250, id:1, description:"{Utils.i18n(\'localize249\')}Lv1、Exp:0の式姫のみ可能です。"}, {name:Utils.i18n("localize252"), price:30, id:3, description:Utils.i18n("localize253")}]);
            _1270467128_swf_power1 = new Viking.EmbedSwfButtonPower();
            _1759834555_swf_blood_reunion = new Viking.EmbedSwfButtonPower();
            _1270467127_swf_power2 = new Viking.EmbedSwfButtonPower();
            _1270467126_swf_power3 = new Viking.EmbedSwfButtonPower();
            _1193840764_swf_close = new Viking.EmbedSwfButtonCommon();
            _1218643219_swf_close_window = new Viking.EmbedSwfButtonCloseWindow();
            _1335723160decide = UnitUtilityWindow_decide;
            _343417063decideOff = UnitUtilityWindow_decideOff;
            _bindings = [];
            _watchers = [];
            _bindingsByDestination = {};
            _bindingsBeginWithWord = {};
            mx_internal::_document = this;
            _UnitUtilityWindow_ClassFactory2_i();
            _UnitUtilityWindow_ClassFactory1_i();
            this.addEventListener("creationComplete", ___UnitUtilityWindow_PopupWindow1_creationComplete);
            return;
        }// end function

        public function ___UnitUtilityWindow_PopupWindow1_creationComplete(event:FlexEvent) : void
        {
            init();
            return;
        }// end function

        public function set unit(param1:UnitVO) : void
        {
            _unit = param1;
            return;
        }// end function

        public function get powers() : ArrayCollection
        {
            return _powers;
        }// end function

        public function init() : void
        {
            confirmReunionWindow.addEventListener(ConfirmReunionWindow.CONFIRMED, reunion);
            confirmReunionWindow.addEventListener(ConfirmReunionWindow.BLOOD_REUNION_CONFIRMED, blood_reunion);
            confirmRejuvenateWindow.addEventListener(ConfirmRejuvenateWindow.CONFIRMED, useGodPower);
            confirmRenameWindow.addEventListener(ConfirmRenameWindow.CONFIRMED, rename);
            confirmRecoveryWindow.addEventListener(ConfirmRenameWindow.CONFIRMED, recovery);
            confirmImageChangeWindow.addEventListener(ConfirmImageChangeWindow.CONFIRMED, useGodPowerForImageChange);
            MovieClip(Loader(_swf_power1.getChildAt(0)).content).gotoAndPlay("button_reunion_off");
            MovieClip(Loader(_swf_close.getChildAt(0)).content).gotoAndPlay("button_close");
            if (_unit.parentsCount < 2 || _unit.level > 1 || _unit.exp > 0)
            {
                MovieClip(Loader(_swf_power1.getChildAt(0)).content).gotoAndPlay("button_reunion_off");
                MovieClip(Loader(_swf_blood_reunion.getChildAt(0)).content).gotoAndPlay("button_wu-xing_off");
            }
            else
            {
                MovieClip(Loader(_swf_power1.getChildAt(0)).content).gotoAndPlay("button_reunion");
                MovieClip(Loader(_swf_blood_reunion.getChildAt(0)).content).gotoAndPlay("button_wu-xing");
            }
            MovieClip(Loader(_swf_power2.getChildAt(0)).content).gotoAndPlay("button_rename_off");
            MovieClip(Loader(_swf_close.getChildAt(0)).content).gotoAndPlay("button_close");
            MovieClip(Loader(_swf_power2.getChildAt(0)).content).gotoAndPlay("button_rename");
            MovieClip(Loader(_swf_power3.getChildAt(0)).content).gotoAndPlay("button_recovery");
            return;
        }// end function

        private function useGodPowerForImageChange(event:PopupEvent) : void
        {
            removeWindow();
            return;
        }// end function

        private function get _swf_close_window() : MovieClipLoaderAsset
        {
            return this._1218643219_swf_close_window;
        }// end function

        public function set powers(param1:ArrayCollection) : void
        {
            _powers = param1;
            return;
        }// end function

        public function __blood_reunion_button_click(event:MouseEvent) : void
        {
            showReunionConfirmWindow(true);
            return;
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

        public function canExecuteUtility() : Class
        {
            if (_unit.parentsCount < 2)
            {
                return decideOff;
            }
            return decide;
        }// end function

        public function get recovery_button() : Image
        {
            return this._612754204recovery_button;
        }// end function

        private function get _powers() : ArrayCollection
        {
            return this._1726125357_powers;
        }// end function

        public function blood_reunion(event:Event) : void
        {
            dispatchEvent(new PopupEvent(REUNION, {unitId:_unit.unitId, blood_reunion:true}));
            removeWindow();
            return;
        }// end function

        public function get blood_reunion_button() : Image
        {
            return this._1259444934blood_reunion_button;
        }// end function

        public function showRecoveryConfirmWindow() : void
        {
            confirmRecoveryWindow.init();
            popupWindow(confirmRecoveryWindow, false);
            return;
        }// end function

        public function set recovery_button(param1:Image) : void
        {
            var _loc_2:* = this._612754204recovery_button;
            if (_loc_2 !== param1)
            {
                this._612754204recovery_button = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "recovery_button", _loc_2, param1));
            }
            return;
        }// end function

        public function get windowLayer() : Canvas
        {
            return this._1896677185windowLayer;
        }// end function

        private function _UnitUtilityWindow_ClassFactory2_i() : ClassFactory
        {
            var _loc_1:* = new ClassFactory();
            descriptionRenderer = _loc_1;
            _loc_1.generator = UnitUtilityWindow_inlineComponent2;
            _loc_1.properties = {outerDocument:this};
            return _loc_1;
        }// end function

        public function rename(event:Event) : void
        {
            dispatchEvent(new PopupEvent(RENAME, {unit:_unit}));
            removeWindow();
            return;
        }// end function

        public function get priceRenderer() : ClassFactory
        {
            return this._1241645780priceRenderer;
        }// end function

        public function showReunionConfirmWindow(param1:Boolean = false) : void
        {
            if (_unit.parentsCount < 2 || _unit.level > 1 || _unit.exp > 0)
            {
                return;
            }
            popupWindow(confirmReunionWindow, false);
            confirmReunionWindow.bloodReunion = param1;
            return;
        }// end function

        public function get rename_button() : Image
        {
            return this._903080787rename_button;
        }// end function

        public function ___UnitUtilityWindow_Image1_click(event:MouseEvent) : void
        {
            removeWindow();
            return;
        }// end function

        public function get reunion_button() : Image
        {
            return this._1698058155reunion_button;
        }// end function

        private function set _powers(param1:ArrayCollection) : void
        {
            var _loc_2:* = this._1726125357_powers;
            if (_loc_2 !== param1)
            {
                this._1726125357_powers = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "_powers", _loc_2, param1));
            }
            return;
        }// end function

        private function _UnitUtilityWindow_bindingExprs() : void
        {
            var _loc_1:* = undefined;
            _loc_1 = _swf_close_window;
            _loc_1 = Utils.i18n("localize254");
            _loc_1 = Utils.i18n("localize255") + "：" + _unit.name;
            _loc_1 = _swf_power1;
            _loc_1 = Utils.i18n("localize249") + "" + "\n" + "" + Utils.i18n("localize250");
            _loc_1 = _swf_power2;
            _loc_1 = Utils.i18n("localize253");
            _loc_1 = _swf_power3;
            _loc_1 = Utils.i18n("localize257") + "HP" + Utils.i18n("localize258");
            _loc_1 = _swf_blood_reunion;
            _loc_1 = Utils.i18n("bloodReunionDetail") + "" + "\n" + "" + Utils.i18n("localize250");
            _loc_1 = _swf_close;
            return;
        }// end function

        private function get _unit() : UnitVO
        {
            return this._91329123_unit;
        }// end function

        public function get decide() : Class
        {
            return this._1335723160decide;
        }// end function

        public function set priceRenderer(param1:ClassFactory) : void
        {
            var _loc_2:* = this._1241645780priceRenderer;
            if (_loc_2 !== param1)
            {
                this._1241645780priceRenderer = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "priceRenderer", _loc_2, param1));
            }
            return;
        }// end function

        public function set blood_reunion_button(param1:Image) : void
        {
            var _loc_2:* = this._1259444934blood_reunion_button;
            if (_loc_2 !== param1)
            {
                this._1259444934blood_reunion_button = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "blood_reunion_button", _loc_2, param1));
            }
            return;
        }// end function

        private function set _swf_blood_reunion(param1:MovieClipLoaderAsset) : void
        {
            var _loc_2:* = this._1759834555_swf_blood_reunion;
            if (_loc_2 !== param1)
            {
                this._1759834555_swf_blood_reunion = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "_swf_blood_reunion", _loc_2, param1));
            }
            return;
        }// end function

        public function reunion(event:Event) : void
        {
            dispatchEvent(new PopupEvent(REUNION, {unitId:_unit.unitId, blood_reunion:false}));
            removeWindow();
            return;
        }// end function

        public function get unit() : UnitVO
        {
            return _unit;
        }// end function

        private function _UnitUtilityWindow_bindingsSetup() : Array
        {
            var binding:Binding;
            var result:Array;
            binding = new Binding(this, function () : Object
            {
                return _swf_close_window;
            }// end function
            , function (param1:Object) : void
            {
                _UnitUtilityWindow_Image1.source = param1;
                return;
            }// end function
            , "_UnitUtilityWindow_Image1.source");
            result[0] = binding;
            binding = new Binding(this, function () : String
            {
                var _loc_1:* = Utils.i18n("localize254");
                var _loc_2:* = _loc_1 == undefined ? (null) : (String(_loc_1));
                return _loc_2;
            }// end function
            , function (param1:String) : void
            {
                _UnitUtilityWindow_Text1.text = param1;
                return;
            }// end function
            , "_UnitUtilityWindow_Text1.text");
            result[1] = binding;
            binding = new Binding(this, function () : String
            {
                var _loc_1:* = Utils.i18n("localize255") + "：" + _unit.name;
                var _loc_2:* = _loc_1 == undefined ? (null) : (String(_loc_1));
                return _loc_2;
            }// end function
            , function (param1:String) : void
            {
                _UnitUtilityWindow_Text2.text = param1;
                return;
            }// end function
            , "_UnitUtilityWindow_Text2.text");
            result[2] = binding;
            binding = new Binding(this, function () : Object
            {
                return _swf_power1;
            }// end function
            , function (param1:Object) : void
            {
                reunion_button.source = param1;
                return;
            }// end function
            , "reunion_button.source");
            result[3] = binding;
            binding = new Binding(this, function () : String
            {
                var _loc_1:* = Utils.i18n("localize249") + "" + "\n" + "" + Utils.i18n("localize250");
                var _loc_2:* = _loc_1 == undefined ? (null) : (String(_loc_1));
                return _loc_2;
            }// end function
            , function (param1:String) : void
            {
                _UnitUtilityWindow_Text3.text = param1;
                return;
            }// end function
            , "_UnitUtilityWindow_Text3.text");
            result[4] = binding;
            binding = new Binding(this, function () : Object
            {
                return _swf_power2;
            }// end function
            , function (param1:Object) : void
            {
                rename_button.source = param1;
                return;
            }// end function
            , "rename_button.source");
            result[5] = binding;
            binding = new Binding(this, function () : String
            {
                var _loc_1:* = Utils.i18n("localize253");
                var _loc_2:* = _loc_1 == undefined ? (null) : (String(_loc_1));
                return _loc_2;
            }// end function
            , function (param1:String) : void
            {
                _UnitUtilityWindow_Text4.text = param1;
                return;
            }// end function
            , "_UnitUtilityWindow_Text4.text");
            result[6] = binding;
            binding = new Binding(this, function () : Object
            {
                return _swf_power3;
            }// end function
            , function (param1:Object) : void
            {
                recovery_button.source = param1;
                return;
            }// end function
            , "recovery_button.source");
            result[7] = binding;
            binding = new Binding(this, function () : String
            {
                var _loc_1:* = Utils.i18n("localize257") + "HP" + Utils.i18n("localize258");
                var _loc_2:* = _loc_1 == undefined ? (null) : (String(_loc_1));
                return _loc_2;
            }// end function
            , function (param1:String) : void
            {
                _UnitUtilityWindow_Text5.text = param1;
                return;
            }// end function
            , "_UnitUtilityWindow_Text5.text");
            result[8] = binding;
            binding = new Binding(this, function () : Object
            {
                return _swf_blood_reunion;
            }// end function
            , function (param1:Object) : void
            {
                blood_reunion_button.source = param1;
                return;
            }// end function
            , "blood_reunion_button.source");
            result[9] = binding;
            binding = new Binding(this, function () : String
            {
                var _loc_1:* = Utils.i18n("bloodReunionDetail") + "" + "\n" + "" + Utils.i18n("localize250");
                var _loc_2:* = _loc_1 == undefined ? (null) : (String(_loc_1));
                return _loc_2;
            }// end function
            , function (param1:String) : void
            {
                _UnitUtilityWindow_Text6.text = param1;
                return;
            }// end function
            , "_UnitUtilityWindow_Text6.text");
            result[10] = binding;
            binding = new Binding(this, function () : Object
            {
                return _swf_close;
            }// end function
            , function (param1:Object) : void
            {
                _UnitUtilityWindow_Image6.source = param1;
                return;
            }// end function
            , "_UnitUtilityWindow_Image6.source");
            result[11] = binding;
            return result;
        }// end function

        private function get _swf_close() : MovieClipLoaderAsset
        {
            return this._1193840764_swf_close;
        }// end function

        override public function initialize() : void
        {
            var target:UnitUtilityWindow;
            var watcherSetupUtilClass:Object;
            .mx_internal::setDocumentDescriptor(_documentDescriptor_);
            var bindings:* = _UnitUtilityWindow_bindingsSetup();
            var watchers:Array;
            target;
            if (_watcherSetupUtil == null)
            {
                watcherSetupUtilClass = getDefinitionByName("_com_kbmj_viking_view_home_UnitUtilityWindowWatcherSetupUtil");
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

        public function ___UnitUtilityWindow_Image6_click(event:MouseEvent) : void
        {
            removeWindow();
            return;
        }// end function

        private function removeWindow() : void
        {
            dispatchEvent(new Event(UTILITY_WINDOW_CLOSE));
            this.onClose();
            return;
        }// end function

        public function recovery(event:Event) : void
        {
            sendEvent(RECOVERY);
            removeWindow();
            return;
        }// end function

        private function set _swf_power2(param1:MovieClipLoaderAsset) : void
        {
            var _loc_2:* = this._1270467127_swf_power2;
            if (_loc_2 !== param1)
            {
                this._1270467127_swf_power2 = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "_swf_power2", _loc_2, param1));
            }
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

        private function _UnitUtilityWindow_ClassFactory1_i() : ClassFactory
        {
            var _loc_1:* = new ClassFactory();
            priceRenderer = _loc_1;
            _loc_1.generator = UnitUtilityWindow_inlineComponent1;
            _loc_1.properties = {outerDocument:this};
            return _loc_1;
        }// end function

        private function useGodPower(event:Event) : void
        {
            removeWindow();
            return;
        }// end function

        private function set _swf_power1(param1:MovieClipLoaderAsset) : void
        {
            var _loc_2:* = this._1270467128_swf_power1;
            if (_loc_2 !== param1)
            {
                this._1270467128_swf_power1 = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "_swf_power1", _loc_2, param1));
            }
            return;
        }// end function

        public function set reunion_button(param1:Image) : void
        {
            var _loc_2:* = this._1698058155reunion_button;
            if (_loc_2 !== param1)
            {
                this._1698058155reunion_button = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "reunion_button", _loc_2, param1));
            }
            return;
        }// end function

        public function set rename_button(param1:Image) : void
        {
            var _loc_2:* = this._903080787rename_button;
            if (_loc_2 !== param1)
            {
                this._903080787rename_button = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "rename_button", _loc_2, param1));
            }
            return;
        }// end function

        private function get _swf_blood_reunion() : MovieClipLoaderAsset
        {
            return this._1759834555_swf_blood_reunion;
        }// end function

        public function __rename_button_click(event:MouseEvent) : void
        {
            showRenameConfirmWindow();
            return;
        }// end function

        public function set descriptionRenderer(param1:ClassFactory) : void
        {
            var _loc_2:* = this._1924885727descriptionRenderer;
            if (_loc_2 !== param1)
            {
                this._1924885727descriptionRenderer = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "descriptionRenderer", _loc_2, param1));
            }
            return;
        }// end function

        private function set _swf_power3(param1:MovieClipLoaderAsset) : void
        {
            var _loc_2:* = this._1270467126_swf_power3;
            if (_loc_2 !== param1)
            {
                this._1270467126_swf_power3 = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "_swf_power3", _loc_2, param1));
            }
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

        public function set utilityCanvas(param1:Canvas) : void
        {
            var _loc_2:* = this._101371420utilityCanvas;
            if (_loc_2 !== param1)
            {
                this._101371420utilityCanvas = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "utilityCanvas", _loc_2, param1));
            }
            return;
        }// end function

        private function get _swf_power2() : MovieClipLoaderAsset
        {
            return this._1270467127_swf_power2;
        }// end function

        private function get _swf_power3() : MovieClipLoaderAsset
        {
            return this._1270467126_swf_power3;
        }// end function

        public function __recovery_button_click(event:MouseEvent) : void
        {
            showRecoveryConfirmWindow();
            return;
        }// end function

        private function get _swf_power1() : MovieClipLoaderAsset
        {
            return this._1270467128_swf_power1;
        }// end function

        public function set decideOff(param1:Class) : void
        {
            var _loc_2:* = this._343417063decideOff;
            if (_loc_2 !== param1)
            {
                this._343417063decideOff = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "decideOff", _loc_2, param1));
            }
            return;
        }// end function

        public function set decide(param1:Class) : void
        {
            var _loc_2:* = this._1335723160decide;
            if (_loc_2 !== param1)
            {
                this._1335723160decide = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "decide", _loc_2, param1));
            }
            return;
        }// end function

        public function get descriptionRenderer() : ClassFactory
        {
            return this._1924885727descriptionRenderer;
        }// end function

        public function get utilityCanvas() : Canvas
        {
            return this._101371420utilityCanvas;
        }// end function

        public function get decideOff() : Class
        {
            return this._343417063decideOff;
        }// end function

        public function showRenameConfirmWindow() : void
        {
            popupWindow(confirmRenameWindow, false);
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

        public function __reunion_button_click(event:MouseEvent) : void
        {
            showReunionConfirmWindow();
            return;
        }// end function

        public static function set watcherSetupUtil(param1:IWatcherSetupUtil) : void
        {
            UnitUtilityWindow._watcherSetupUtil = param1;
            return;
        }// end function

    }
}
