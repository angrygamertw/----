package com.kbmj.viking.view.allMap
{
    import com.kbmj.viking.*;
    import com.kbmj.viking.proxy.allMap.*;
    import flash.display.*;
    import flash.events.*;
    import flash.utils.*;
    import mx.binding.*;
    import mx.containers.*;
    import mx.controls.*;
    import mx.core.*;
    import mx.events.*;

    public class HexInputWindow extends Canvas implements IBindingClient
    {
        private var _1334812983back_home:MovieClipLoaderAsset;
        var _bindingsBeginWithWord:Object;
        var _bindingsByDestination:Object;
        var _watchers:Array;
        private var _3446916posX:Label;
        private var _1160872699xTextInput:TextInput;
        private var _3446917posY:Label;
        private var _1357386204yTextInput:TextInput;
        var _bindings:Array;
        private var _documentDescriptor_:UIComponentDescriptor;
        public var _HexInputWindow_Image1:Image;
        public var _HexInputWindow_Image2:Image;
        private var _1096196143change_all_map:MovieClipLoaderAsset;
        public static const BACK_HOME:String = NAME + "/backHome";
        public static const CHANGE_X:String = NAME + "/changeX";
        private static var _watcherSetupUtil:IWatcherSetupUtil;
        public static const NAME:String = "HexInputWindow";
        public static const CHANGE_ALL_MAP:String = NAME + "/changeAllMap";

        public function HexInputWindow()
        {
            _documentDescriptor_ = new UIComponentDescriptor({type:Canvas, propertiesFactory:function () : Object
            {
                return {childDescriptors:[new UIComponentDescriptor({type:TextInput, id:"xTextInput", events:{change:"__xTextInput_change"}, stylesFactory:function () : void
                {
                    this.fontSize = 11;
                    this.paddingRight = 8;
                    this.textAlign = "right";
                    this.borderStyle = "none";
                    this.backgroundAlpha = 0;
                    this.cornerRadius = 1;
                    return;
                }// end function
                , propertiesFactory:function () : Object
                {
                    return {restrict:"0-9\\-", text:"0", x:101, y:10, width:48, height:16};
                }// end function
                }), new UIComponentDescriptor({type:TextInput, id:"yTextInput", events:{change:"__yTextInput_change"}, stylesFactory:function () : void
                {
                    this.fontSize = 11;
                    this.paddingRight = 8;
                    this.textAlign = "right";
                    this.borderStyle = "none";
                    this.backgroundAlpha = 0;
                    this.cornerRadius = 1;
                    return;
                }// end function
                , propertiesFactory:function () : Object
                {
                    return {restrict:"0-9\\-", text:"0", x:157, y:10, width:48, height:16};
                }// end function
                }), new UIComponentDescriptor({type:Image, id:"_HexInputWindow_Image1", events:{click:"___HexInputWindow_Image1_click"}, propertiesFactory:function () : Object
                {
                    return {x:15, y:8};
                }// end function
                }), new UIComponentDescriptor({type:Image, id:"_HexInputWindow_Image2", events:{click:"___HexInputWindow_Image2_click"}, propertiesFactory:function () : Object
                {
                    return {x:15, y:34};
                }// end function
                }), new UIComponentDescriptor({type:Label, stylesFactory:function () : void
                {
                    this.fontSize = 12;
                    this.textAlign = "left";
                    return;
                }// end function
                , propertiesFactory:function () : Object
                {
                    return {text:"[", x:96, y:34, width:12};
                }// end function
                }), new UIComponentDescriptor({type:Label, id:"posX", stylesFactory:function () : void
                {
                    this.fontSize = 12;
                    this.textAlign = "right";
                    return;
                }// end function
                , propertiesFactory:function () : Object
                {
                    return {x:106, y:34, width:36};
                }// end function
                }), new UIComponentDescriptor({type:Label, stylesFactory:function () : void
                {
                    this.fontSize = 12;
                    this.textAlign = "center";
                    return;
                }// end function
                , propertiesFactory:function () : Object
                {
                    return {text:"][", x:142, y:34, width:24};
                }// end function
                }), new UIComponentDescriptor({type:Label, id:"posY", stylesFactory:function () : void
                {
                    this.fontSize = 12;
                    this.textAlign = "right";
                    return;
                }// end function
                , propertiesFactory:function () : Object
                {
                    return {x:161, y:34, width:36};
                }// end function
                }), new UIComponentDescriptor({type:Label, stylesFactory:function () : void
                {
                    this.fontSize = 12;
                    this.textAlign = "left";
                    return;
                }// end function
                , propertiesFactory:function () : Object
                {
                    return {text:"]", x:200, y:34, width:12};
                }// end function
                })]};
            }// end function
            });
            _1096196143change_all_map = new AllMap.EmbedSwfButtonCommonMap();
            _1334812983back_home = new AllMap.EmbedSwfButtonCommonMap();
            _bindings = [];
            _watchers = [];
            _bindingsByDestination = {};
            _bindingsBeginWithWord = {};
            mx_internal::_document = this;
            this.x = 0;
            this.y = 492;
            this.addEventListener("creationComplete", ___HexInputWindow_Canvas1_creationComplete);
            return;
        }// end function

        public function set posY(param1:Label) : void
        {
            var _loc_2:* = this._3446917posY;
            if (_loc_2 !== param1)
            {
                this._3446917posY = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "posY", _loc_2, param1));
            }
            return;
        }// end function

        private function get back_home() : MovieClipLoaderAsset
        {
            return this._1334812983back_home;
        }// end function

        public function set posX(param1:Label) : void
        {
            var _loc_2:* = this._3446916posX;
            if (_loc_2 !== param1)
            {
                this._3446916posX = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "posX", _loc_2, param1));
            }
            return;
        }// end function

        private function _HexInputWindow_bindingExprs() : void
        {
            var _loc_1:* = undefined;
            _loc_1 = change_all_map;
            _loc_1 = back_home;
            return;
        }// end function

        public function __xTextInput_change(event:Event) : void
        {
            onChange(event, (AllMapProxy.HEX_H_NUM - 1) / 2);
            return;
        }// end function

        public function __yTextInput_change(event:Event) : void
        {
            onChange(event, (AllMapProxy.HEX_V_NUM - 1) / 2);
            return;
        }// end function

        public function ___HexInputWindow_Image1_click(event:MouseEvent) : void
        {
            dispatchEvent(new Event(CHANGE_ALL_MAP));
            return;
        }// end function

        private function _HexInputWindow_bindingsSetup() : Array
        {
            var binding:Binding;
            var result:Array;
            binding = new Binding(this, function () : Object
            {
                return change_all_map;
            }// end function
            , function (param1:Object) : void
            {
                _HexInputWindow_Image1.source = param1;
                return;
            }// end function
            , "_HexInputWindow_Image1.source");
            result[0] = binding;
            binding = new Binding(this, function () : Object
            {
                return back_home;
            }// end function
            , function (param1:Object) : void
            {
                _HexInputWindow_Image2.source = param1;
                return;
            }// end function
            , "_HexInputWindow_Image2.source");
            result[1] = binding;
            return result;
        }// end function

        public function set yTextInput(param1:TextInput) : void
        {
            var _loc_2:* = this._1357386204yTextInput;
            if (_loc_2 !== param1)
            {
                this._1357386204yTextInput = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "yTextInput", _loc_2, param1));
            }
            return;
        }// end function

        override public function initialize() : void
        {
            var target:HexInputWindow;
            var watcherSetupUtilClass:Object;
            .mx_internal::setDocumentDescriptor(_documentDescriptor_);
            var bindings:* = _HexInputWindow_bindingsSetup();
            var watchers:Array;
            target;
            if (_watcherSetupUtil == null)
            {
                watcherSetupUtilClass = getDefinitionByName("_com_kbmj_viking_view_allMap_HexInputWindowWatcherSetupUtil");
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

        public function get posX() : Label
        {
            return this._3446916posX;
        }// end function

        public function get posY() : Label
        {
            return this._3446917posY;
        }// end function

        public function set xTextInput(param1:TextInput) : void
        {
            var _loc_2:* = this._1160872699xTextInput;
            if (_loc_2 !== param1)
            {
                this._1160872699xTextInput = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "xTextInput", _loc_2, param1));
            }
            return;
        }// end function

        public function init() : void
        {
            MovieClip(Loader(change_all_map.getChildAt(0)).content).gotoAndPlay("button_shift");
            MovieClip(Loader(back_home.getChildAt(0)).content).gotoAndPlay("button_shift_home");
            return;
        }// end function

        public function get yTextInput() : TextInput
        {
            return this._1357386204yTextInput;
        }// end function

        private function set change_all_map(param1:MovieClipLoaderAsset) : void
        {
            var _loc_2:* = this._1096196143change_all_map;
            if (_loc_2 !== param1)
            {
                this._1096196143change_all_map = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "change_all_map", _loc_2, param1));
            }
            return;
        }// end function

        public function ___HexInputWindow_Image2_click(event:MouseEvent) : void
        {
            dispatchEvent(new Event(BACK_HOME));
            return;
        }// end function

        private function onChange(event:Event, param2:int) : void
        {
            var _loc_3:int = 0;
            var _loc_4:* = event.target.text.length;
            if (event.target.text.length > 0)
            {
                _loc_3 = Number(event.target.text);
                if (_loc_3 > param2)
                {
                    _loc_3 = param2;
                }
                else if (_loc_3 < -param2)
                {
                    _loc_3 = -param2;
                }
                else
                {
                    return;
                }
            }
            event.target.text = String(_loc_3);
            _loc_4 = event.target.text.length;
            event.target.setSelection(_loc_4, _loc_4);
            return;
        }// end function

        public function get xTextInput() : TextInput
        {
            return this._1160872699xTextInput;
        }// end function

        private function set back_home(param1:MovieClipLoaderAsset) : void
        {
            var _loc_2:* = this._1334812983back_home;
            if (_loc_2 !== param1)
            {
                this._1334812983back_home = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "back_home", _loc_2, param1));
            }
            return;
        }// end function

        private function get change_all_map() : MovieClipLoaderAsset
        {
            return this._1096196143change_all_map;
        }// end function

        public function ___HexInputWindow_Canvas1_creationComplete(event:FlexEvent) : void
        {
            init();
            return;
        }// end function

        public static function set watcherSetupUtil(param1:IWatcherSetupUtil) : void
        {
            HexInputWindow._watcherSetupUtil = param1;
            return;
        }// end function

    }
}
