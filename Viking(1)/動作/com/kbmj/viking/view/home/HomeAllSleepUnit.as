package com.kbmj.viking.view.home
{
    import com.kbmj.viking.view.*;
    import com.kbmj.viking.vo.home.*;
    import com.kbmj.viking.vo.tactics.*;
    import flash.events.*;
    import flash.utils.*;
    import mx.binding.*;
    import mx.collections.*;
    import mx.controls.*;
    import mx.core.*;
    import mx.events.*;

    public class HomeAllSleepUnit extends PopupWindow implements IBindingClient
    {
        private var _943729158coffin7:Coffin;
        private var _943729160coffin9:Coffin;
        private var _943729157coffin6:Coffin;
        private var _embed_mxml__images_home_bg_rest_jpg_932484247:Class;
        var _bindingsByDestination:Object;
        private var _embed_mxml__swf_all_map_button_back_swf_2104410221:Class;
        private var _943729156coffin5:Coffin;
        private var _3015911back:Image;
        private var _943729155coffin4:Coffin;
        var _watchers:Array;
        private var _943729154coffin3:Coffin;
        private var _2099682666unitStatus:UnitStatus;
        private var _993013501_coffins:ArrayCollection;
        private var _943729153coffin2:Coffin;
        private var _809167309coffin13:Coffin;
        private var _809167308coffin14:Coffin;
        var _bindingsBeginWithWord:Object;
        private var _809167311coffin11:Coffin;
        private var _943729152coffin1:Coffin;
        private var _809167310coffin12:Coffin;
        private var _809167312coffin10:Coffin;
        var _bindings:Array;
        private var _158535007mapImage:Image;
        private var _documentDescriptor_:UIComponentDescriptor;
        private var _943729151coffin0:Coffin;
        private var _943729159coffin8:Coffin;
        public static const SLEEP_UNIT_WINDOW_BACK:String = NAME + "/sleepUnitWindowBack";
        public static const UNIT_ICING_SLEEP:String = NAME + "/unitIcingSleep";
        private static var _watcherSetupUtil:IWatcherSetupUtil;
        public static const NAME:String = "HomeAllSleepUnit";
        public static const CHECK_ICE:String = NAME + "/checkIce";
        public static const AWAKE_UNIT:String = NAME + "/defrostUnit";

        public function HomeAllSleepUnit()
        {
            _documentDescriptor_ = new UIComponentDescriptor({type:PopupWindow, propertiesFactory:function () : Object
            {
                return {height:560, childDescriptors:[new UIComponentDescriptor({type:Image, id:"mapImage", propertiesFactory:function () : Object
                {
                    return {source:_embed_mxml__images_home_bg_rest_jpg_932484247};
                }// end function
                }), new UIComponentDescriptor({type:UnitStatus, id:"unitStatus", propertiesFactory:function () : Object
                {
                    return {x:1, y:290};
                }// end function
                }), new UIComponentDescriptor({type:Coffin, id:"coffin0", propertiesFactory:function () : Object
                {
                    return {x:380, y:35, unitDirection:3};
                }// end function
                }), new UIComponentDescriptor({type:Coffin, id:"coffin1", propertiesFactory:function () : Object
                {
                    return {x:290, y:40, unitDirection:2};
                }// end function
                }), new UIComponentDescriptor({type:Coffin, id:"coffin2", propertiesFactory:function () : Object
                {
                    return {x:435, y:55, unitDirection:3};
                }// end function
                }), new UIComponentDescriptor({type:Coffin, id:"coffin3", propertiesFactory:function () : Object
                {
                    return {x:235, y:75, unitDirection:2};
                }// end function
                }), new UIComponentDescriptor({type:Coffin, id:"coffin4", propertiesFactory:function () : Object
                {
                    return {x:490, y:80, unitDirection:3};
                }// end function
                }), new UIComponentDescriptor({type:Coffin, id:"coffin5", propertiesFactory:function () : Object
                {
                    return {x:200, y:135, unitDirection:3};
                }// end function
                }), new UIComponentDescriptor({type:Coffin, id:"coffin6", propertiesFactory:function () : Object
                {
                    return {x:360, y:135, unitDirection:2};
                }// end function
                }), new UIComponentDescriptor({type:Coffin, id:"coffin7", propertiesFactory:function () : Object
                {
                    return {x:415, y:135, unitDirection:3};
                }// end function
                }), new UIComponentDescriptor({type:Coffin, id:"coffin8", propertiesFactory:function () : Object
                {
                    return {x:250, y:160, unitDirection:3};
                }// end function
                }), new UIComponentDescriptor({type:Coffin, id:"coffin9", propertiesFactory:function () : Object
                {
                    return {x:515, y:160, unitDirection:2};
                }// end function
                }), new UIComponentDescriptor({type:Coffin, id:"coffin10", propertiesFactory:function () : Object
                {
                    return {x:600, y:160, unitDirection:3};
                }// end function
                }), new UIComponentDescriptor({type:Coffin, id:"coffin11", propertiesFactory:function () : Object
                {
                    return {x:360, y:210, unitDirection:3};
                }// end function
                }), new UIComponentDescriptor({type:Coffin, id:"coffin12", propertiesFactory:function () : Object
                {
                    return {x:470, y:210, unitDirection:2};
                }// end function
                }), new UIComponentDescriptor({type:Coffin, id:"coffin13", propertiesFactory:function () : Object
                {
                    return {x:555, y:210, unitDirection:3};
                }// end function
                }), new UIComponentDescriptor({type:Coffin, id:"coffin14", propertiesFactory:function () : Object
                {
                    return {x:415, y:235, unitDirection:3};
                }// end function
                }), new UIComponentDescriptor({type:Image, id:"back", events:{click:"__back_click"}, propertiesFactory:function () : Object
                {
                    return {x:685, y:7, source:_embed_mxml__swf_all_map_button_back_swf_2104410221};
                }// end function
                })]};
            }// end function
            });
            _embed_mxml__images_home_bg_rest_jpg_932484247 = HomeAllSleepUnit__embed_mxml__images_home_bg_rest_jpg_932484247;
            _embed_mxml__swf_all_map_button_back_swf_2104410221 = HomeAllSleepUnit__embed_mxml__swf_all_map_button_back_swf_2104410221;
            _bindings = [];
            _watchers = [];
            _bindingsByDestination = {};
            _bindingsBeginWithWord = {};
            mx_internal::_document = this;
            this.height = 560;
            this.horizontalScrollPolicy = "off";
            this.verticalScrollPolicy = "off";
            this.addEventListener("creationComplete", ___HomeAllSleepUnit_PopupWindow1_creationComplete);
            return;
        }// end function

        public function get coffin1() : Coffin
        {
            return this._943729152coffin1;
        }// end function

        public function get coffin2() : Coffin
        {
            return this._943729153coffin2;
        }// end function

        public function set coffin2(param1:Coffin) : void
        {
            var _loc_2:* = this._943729153coffin2;
            if (_loc_2 !== param1)
            {
                this._943729153coffin2 = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "coffin2", _loc_2, param1));
            }
            return;
        }// end function

        public function get coffin4() : Coffin
        {
            return this._943729155coffin4;
        }// end function

        public function set coffin3(param1:Coffin) : void
        {
            var _loc_2:* = this._943729154coffin3;
            if (_loc_2 !== param1)
            {
                this._943729154coffin3 = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "coffin3", _loc_2, param1));
            }
            return;
        }// end function

        public function get coffin6() : Coffin
        {
            return this._943729157coffin6;
        }// end function

        public function set coffin4(param1:Coffin) : void
        {
            var _loc_2:* = this._943729155coffin4;
            if (_loc_2 !== param1)
            {
                this._943729155coffin4 = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "coffin4", _loc_2, param1));
            }
            return;
        }// end function

        public function get coffin8() : Coffin
        {
            return this._943729159coffin8;
        }// end function

        public function closeWindow() : void
        {
            sendEvent(SLEEP_UNIT_WINDOW_BACK);
            return;
        }// end function

        public function get coffin3() : Coffin
        {
            return this._943729154coffin3;
        }// end function

        public function set coffin6(param1:Coffin) : void
        {
            var _loc_2:* = this._943729157coffin6;
            if (_loc_2 !== param1)
            {
                this._943729157coffin6 = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "coffin6", _loc_2, param1));
            }
            return;
        }// end function

        public function get coffin5() : Coffin
        {
            return this._943729156coffin5;
        }// end function

        public function set coffin7(param1:Coffin) : void
        {
            var _loc_2:* = this._943729158coffin7;
            if (_loc_2 !== param1)
            {
                this._943729158coffin7 = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "coffin7", _loc_2, param1));
            }
            return;
        }// end function

        public function set coffin0(param1:Coffin) : void
        {
            var _loc_2:* = this._943729151coffin0;
            if (_loc_2 !== param1)
            {
                this._943729151coffin0 = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "coffin0", _loc_2, param1));
            }
            return;
        }// end function

        public function set coffin8(param1:Coffin) : void
        {
            var _loc_2:* = this._943729159coffin8;
            if (_loc_2 !== param1)
            {
                this._943729159coffin8 = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "coffin8", _loc_2, param1));
            }
            return;
        }// end function

        public function set coffin5(param1:Coffin) : void
        {
            var _loc_2:* = this._943729156coffin5;
            if (_loc_2 !== param1)
            {
                this._943729156coffin5 = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "coffin5", _loc_2, param1));
            }
            return;
        }// end function

        private function init() : void
        {
            unitStatus.unit = new UnitVO();
            return;
        }// end function

        private function get _coffins() : ArrayCollection
        {
            return this._993013501_coffins;
        }// end function

        public function get coffin7() : Coffin
        {
            return this._943729158coffin7;
        }// end function

        public function set coffin1(param1:Coffin) : void
        {
            var _loc_2:* = this._943729152coffin1;
            if (_loc_2 !== param1)
            {
                this._943729152coffin1 = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "coffin1", _loc_2, param1));
            }
            return;
        }// end function

        private function set _coffins(param1:ArrayCollection) : void
        {
            var _loc_2:* = this._993013501_coffins;
            if (_loc_2 !== param1)
            {
                this._993013501_coffins = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "_coffins", _loc_2, param1));
            }
            return;
        }// end function

        public function __back_click(event:MouseEvent) : void
        {
            closeWindow();
            return;
        }// end function

        private function _HomeAllSleepUnit_bindingExprs() : void
        {
            var _loc_1:* = undefined;
            _loc_1 = CoffinVO(_coffins.getItemAt(0));
            _loc_1 = mouseEventHandler;
            _loc_1 = CoffinVO(_coffins.getItemAt(1));
            _loc_1 = mouseEventHandler;
            _loc_1 = CoffinVO(_coffins.getItemAt(2));
            _loc_1 = mouseEventHandler;
            _loc_1 = CoffinVO(_coffins.getItemAt(3));
            _loc_1 = mouseEventHandler;
            _loc_1 = CoffinVO(_coffins.getItemAt(4));
            _loc_1 = mouseEventHandler;
            _loc_1 = CoffinVO(_coffins.getItemAt(5));
            _loc_1 = mouseEventHandler;
            _loc_1 = CoffinVO(_coffins.getItemAt(6));
            _loc_1 = mouseEventHandler;
            _loc_1 = CoffinVO(_coffins.getItemAt(7));
            _loc_1 = mouseEventHandler;
            _loc_1 = CoffinVO(_coffins.getItemAt(8));
            _loc_1 = mouseEventHandler;
            _loc_1 = CoffinVO(_coffins.getItemAt(9));
            _loc_1 = mouseEventHandler;
            _loc_1 = CoffinVO(_coffins.getItemAt(10));
            _loc_1 = mouseEventHandler;
            _loc_1 = CoffinVO(_coffins.getItemAt(11));
            _loc_1 = mouseEventHandler;
            _loc_1 = CoffinVO(_coffins.getItemAt(12));
            _loc_1 = mouseEventHandler;
            _loc_1 = CoffinVO(_coffins.getItemAt(13));
            _loc_1 = mouseEventHandler;
            _loc_1 = CoffinVO(_coffins.getItemAt(14));
            _loc_1 = mouseEventHandler;
            return;
        }// end function

        public function set coffin9(param1:Coffin) : void
        {
            var _loc_2:* = this._943729160coffin9;
            if (_loc_2 !== param1)
            {
                this._943729160coffin9 = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "coffin9", _loc_2, param1));
            }
            return;
        }// end function

        public function get coffin9() : Coffin
        {
            return this._943729160coffin9;
        }// end function

        public function get coffin10() : Coffin
        {
            return this._809167312coffin10;
        }// end function

        public function get coffin11() : Coffin
        {
            return this._809167311coffin11;
        }// end function

        public function get coffin14() : Coffin
        {
            return this._809167308coffin14;
        }// end function

        public function get coffin12() : Coffin
        {
            return this._809167310coffin12;
        }// end function

        public function get coffin13() : Coffin
        {
            return this._809167309coffin13;
        }// end function

        public function set unitStatus(param1:UnitStatus) : void
        {
            var _loc_2:* = this._2099682666unitStatus;
            if (_loc_2 !== param1)
            {
                this._2099682666unitStatus = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "unitStatus", _loc_2, param1));
            }
            return;
        }// end function

        public function resetUnitStatus() : void
        {
            unitStatus.unit = new UnitVO();
            return;
        }// end function

        public function get mapImage() : Image
        {
            return this._158535007mapImage;
        }// end function

        public function set coffin11(param1:Coffin) : void
        {
            var _loc_2:* = this._809167311coffin11;
            if (_loc_2 !== param1)
            {
                this._809167311coffin11 = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "coffin11", _loc_2, param1));
            }
            return;
        }// end function

        public function set coffin12(param1:Coffin) : void
        {
            var _loc_2:* = this._809167310coffin12;
            if (_loc_2 !== param1)
            {
                this._809167310coffin12 = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "coffin12", _loc_2, param1));
            }
            return;
        }// end function

        public function set coffin13(param1:Coffin) : void
        {
            var _loc_2:* = this._809167309coffin13;
            if (_loc_2 !== param1)
            {
                this._809167309coffin13 = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "coffin13", _loc_2, param1));
            }
            return;
        }// end function

        public function set coffin10(param1:Coffin) : void
        {
            var _loc_2:* = this._809167312coffin10;
            if (_loc_2 !== param1)
            {
                this._809167312coffin10 = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "coffin10", _loc_2, param1));
            }
            return;
        }// end function

        public function set coffin14(param1:Coffin) : void
        {
            var _loc_2:* = this._809167308coffin14;
            if (_loc_2 !== param1)
            {
                this._809167308coffin14 = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "coffin14", _loc_2, param1));
            }
            return;
        }// end function

        public function setCoffins(param1:Array) : void
        {
            _coffins = new ArrayCollection(param1);
            return;
        }// end function

        public function mouseEventHandler(event:MouseEvent, param2:CoffinVO) : void
        {
            switch(event.type)
            {
                case MouseEvent.CLICK:
                {
                    lotClick(param2);
                    break;
                }
                case MouseEvent.MOUSE_OVER:
                {
                    if (param2 && param2.unit)
                    {
                        setUnitStatus(param2.unit);
                    }
                    break;
                }
                case MouseEvent.MOUSE_OUT:
                {
                    resetUnitStatus();
                    break;
                }
                default:
                {
                    break;
                }
            }
            return;
        }// end function

        public function setUnitStatus(param1:UnitVO) : void
        {
            unitStatus.unit = param1;
            return;
        }// end function

        public function ___HomeAllSleepUnit_PopupWindow1_creationComplete(event:FlexEvent) : void
        {
            init();
            return;
        }// end function

        public function get unitStatus() : UnitStatus
        {
            return this._2099682666unitStatus;
        }// end function

        override public function initialize() : void
        {
            var target:HomeAllSleepUnit;
            var watcherSetupUtilClass:Object;
            .mx_internal::setDocumentDescriptor(_documentDescriptor_);
            var bindings:* = _HomeAllSleepUnit_bindingsSetup();
            var watchers:Array;
            target;
            if (_watcherSetupUtil == null)
            {
                watcherSetupUtilClass = getDefinitionByName("_com_kbmj_viking_view_home_HomeAllSleepUnitWatcherSetupUtil");
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

        private function lotClick(param1:CoffinVO) : void
        {
            switch(param1.state)
            {
                case CoffinVO.STATE_INACTIVE:
                {
                    sendPopupEvent(CHECK_ICE, {coffin:param1});
                    break;
                }
                case CoffinVO.STATE_ACTIVE:
                {
                    sendPopupEvent(UNIT_ICING_SLEEP, {coffinId:param1.coffinId});
                    break;
                }
                case CoffinVO.STATE_UNIT_IN:
                {
                    sendPopupEvent(AWAKE_UNIT, {coffin:param1});
                    break;
                }
                default:
                {
                    break;
                }
            }
            return;
        }// end function

        public function set mapImage(param1:Image) : void
        {
            var _loc_2:* = this._158535007mapImage;
            if (_loc_2 !== param1)
            {
                this._158535007mapImage = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "mapImage", _loc_2, param1));
            }
            return;
        }// end function

        public function set back(param1:Image) : void
        {
            var _loc_2:* = this._3015911back;
            if (_loc_2 !== param1)
            {
                this._3015911back = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "back", _loc_2, param1));
            }
            return;
        }// end function

        public function get back() : Image
        {
            return this._3015911back;
        }// end function

        private function _HomeAllSleepUnit_bindingsSetup() : Array
        {
            var binding:Binding;
            var result:Array;
            binding = new Binding(this, function () : CoffinVO
            {
                return CoffinVO(_coffins.getItemAt(0));
            }// end function
            , function (param1:CoffinVO) : void
            {
                coffin0.coffin = param1;
                return;
            }// end function
            , "coffin0.coffin");
            result[0] = binding;
            binding = new Binding(this, function () : Function
            {
                return mouseEventHandler;
            }// end function
            , function (param1:Function) : void
            {
                coffin0.mouseEventHandler = param1;
                return;
            }// end function
            , "coffin0.mouseEventHandler");
            result[1] = binding;
            binding = new Binding(this, function () : CoffinVO
            {
                return CoffinVO(_coffins.getItemAt(1));
            }// end function
            , function (param1:CoffinVO) : void
            {
                coffin1.coffin = param1;
                return;
            }// end function
            , "coffin1.coffin");
            result[2] = binding;
            binding = new Binding(this, function () : Function
            {
                return mouseEventHandler;
            }// end function
            , function (param1:Function) : void
            {
                coffin1.mouseEventHandler = param1;
                return;
            }// end function
            , "coffin1.mouseEventHandler");
            result[3] = binding;
            binding = new Binding(this, function () : CoffinVO
            {
                return CoffinVO(_coffins.getItemAt(2));
            }// end function
            , function (param1:CoffinVO) : void
            {
                coffin2.coffin = param1;
                return;
            }// end function
            , "coffin2.coffin");
            result[4] = binding;
            binding = new Binding(this, function () : Function
            {
                return mouseEventHandler;
            }// end function
            , function (param1:Function) : void
            {
                coffin2.mouseEventHandler = param1;
                return;
            }// end function
            , "coffin2.mouseEventHandler");
            result[5] = binding;
            binding = new Binding(this, function () : CoffinVO
            {
                return CoffinVO(_coffins.getItemAt(3));
            }// end function
            , function (param1:CoffinVO) : void
            {
                coffin3.coffin = param1;
                return;
            }// end function
            , "coffin3.coffin");
            result[6] = binding;
            binding = new Binding(this, function () : Function
            {
                return mouseEventHandler;
            }// end function
            , function (param1:Function) : void
            {
                coffin3.mouseEventHandler = param1;
                return;
            }// end function
            , "coffin3.mouseEventHandler");
            result[7] = binding;
            binding = new Binding(this, function () : CoffinVO
            {
                return CoffinVO(_coffins.getItemAt(4));
            }// end function
            , function (param1:CoffinVO) : void
            {
                coffin4.coffin = param1;
                return;
            }// end function
            , "coffin4.coffin");
            result[8] = binding;
            binding = new Binding(this, function () : Function
            {
                return mouseEventHandler;
            }// end function
            , function (param1:Function) : void
            {
                coffin4.mouseEventHandler = param1;
                return;
            }// end function
            , "coffin4.mouseEventHandler");
            result[9] = binding;
            binding = new Binding(this, function () : CoffinVO
            {
                return CoffinVO(_coffins.getItemAt(5));
            }// end function
            , function (param1:CoffinVO) : void
            {
                coffin5.coffin = param1;
                return;
            }// end function
            , "coffin5.coffin");
            result[10] = binding;
            binding = new Binding(this, function () : Function
            {
                return mouseEventHandler;
            }// end function
            , function (param1:Function) : void
            {
                coffin5.mouseEventHandler = param1;
                return;
            }// end function
            , "coffin5.mouseEventHandler");
            result[11] = binding;
            binding = new Binding(this, function () : CoffinVO
            {
                return CoffinVO(_coffins.getItemAt(6));
            }// end function
            , function (param1:CoffinVO) : void
            {
                coffin6.coffin = param1;
                return;
            }// end function
            , "coffin6.coffin");
            result[12] = binding;
            binding = new Binding(this, function () : Function
            {
                return mouseEventHandler;
            }// end function
            , function (param1:Function) : void
            {
                coffin6.mouseEventHandler = param1;
                return;
            }// end function
            , "coffin6.mouseEventHandler");
            result[13] = binding;
            binding = new Binding(this, function () : CoffinVO
            {
                return CoffinVO(_coffins.getItemAt(7));
            }// end function
            , function (param1:CoffinVO) : void
            {
                coffin7.coffin = param1;
                return;
            }// end function
            , "coffin7.coffin");
            result[14] = binding;
            binding = new Binding(this, function () : Function
            {
                return mouseEventHandler;
            }// end function
            , function (param1:Function) : void
            {
                coffin7.mouseEventHandler = param1;
                return;
            }// end function
            , "coffin7.mouseEventHandler");
            result[15] = binding;
            binding = new Binding(this, function () : CoffinVO
            {
                return CoffinVO(_coffins.getItemAt(8));
            }// end function
            , function (param1:CoffinVO) : void
            {
                coffin8.coffin = param1;
                return;
            }// end function
            , "coffin8.coffin");
            result[16] = binding;
            binding = new Binding(this, function () : Function
            {
                return mouseEventHandler;
            }// end function
            , function (param1:Function) : void
            {
                coffin8.mouseEventHandler = param1;
                return;
            }// end function
            , "coffin8.mouseEventHandler");
            result[17] = binding;
            binding = new Binding(this, function () : CoffinVO
            {
                return CoffinVO(_coffins.getItemAt(9));
            }// end function
            , function (param1:CoffinVO) : void
            {
                coffin9.coffin = param1;
                return;
            }// end function
            , "coffin9.coffin");
            result[18] = binding;
            binding = new Binding(this, function () : Function
            {
                return mouseEventHandler;
            }// end function
            , function (param1:Function) : void
            {
                coffin9.mouseEventHandler = param1;
                return;
            }// end function
            , "coffin9.mouseEventHandler");
            result[19] = binding;
            binding = new Binding(this, function () : CoffinVO
            {
                return CoffinVO(_coffins.getItemAt(10));
            }// end function
            , function (param1:CoffinVO) : void
            {
                coffin10.coffin = param1;
                return;
            }// end function
            , "coffin10.coffin");
            result[20] = binding;
            binding = new Binding(this, function () : Function
            {
                return mouseEventHandler;
            }// end function
            , function (param1:Function) : void
            {
                coffin10.mouseEventHandler = param1;
                return;
            }// end function
            , "coffin10.mouseEventHandler");
            result[21] = binding;
            binding = new Binding(this, function () : CoffinVO
            {
                return CoffinVO(_coffins.getItemAt(11));
            }// end function
            , function (param1:CoffinVO) : void
            {
                coffin11.coffin = param1;
                return;
            }// end function
            , "coffin11.coffin");
            result[22] = binding;
            binding = new Binding(this, function () : Function
            {
                return mouseEventHandler;
            }// end function
            , function (param1:Function) : void
            {
                coffin11.mouseEventHandler = param1;
                return;
            }// end function
            , "coffin11.mouseEventHandler");
            result[23] = binding;
            binding = new Binding(this, function () : CoffinVO
            {
                return CoffinVO(_coffins.getItemAt(12));
            }// end function
            , function (param1:CoffinVO) : void
            {
                coffin12.coffin = param1;
                return;
            }// end function
            , "coffin12.coffin");
            result[24] = binding;
            binding = new Binding(this, function () : Function
            {
                return mouseEventHandler;
            }// end function
            , function (param1:Function) : void
            {
                coffin12.mouseEventHandler = param1;
                return;
            }// end function
            , "coffin12.mouseEventHandler");
            result[25] = binding;
            binding = new Binding(this, function () : CoffinVO
            {
                return CoffinVO(_coffins.getItemAt(13));
            }// end function
            , function (param1:CoffinVO) : void
            {
                coffin13.coffin = param1;
                return;
            }// end function
            , "coffin13.coffin");
            result[26] = binding;
            binding = new Binding(this, function () : Function
            {
                return mouseEventHandler;
            }// end function
            , function (param1:Function) : void
            {
                coffin13.mouseEventHandler = param1;
                return;
            }// end function
            , "coffin13.mouseEventHandler");
            result[27] = binding;
            binding = new Binding(this, function () : CoffinVO
            {
                return CoffinVO(_coffins.getItemAt(14));
            }// end function
            , function (param1:CoffinVO) : void
            {
                coffin14.coffin = param1;
                return;
            }// end function
            , "coffin14.coffin");
            result[28] = binding;
            binding = new Binding(this, function () : Function
            {
                return mouseEventHandler;
            }// end function
            , function (param1:Function) : void
            {
                coffin14.mouseEventHandler = param1;
                return;
            }// end function
            , "coffin14.mouseEventHandler");
            result[29] = binding;
            return result;
        }// end function

        public function get coffin0() : Coffin
        {
            return this._943729151coffin0;
        }// end function

        public static function set watcherSetupUtil(param1:IWatcherSetupUtil) : void
        {
            _watcherSetupUtil = param1;
            return;
        }// end function

    }
}
