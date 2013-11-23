package com.kbmj.viking.view.home
{
    import com.kbmj.viking.view.*;
    import com.kbmj.viking.vo.tactics.*;
    import flash.events.*;
    import flash.utils.*;
    import mx.binding.*;
    import mx.containers.*;
    import mx.controls.*;
    import mx.core.*;
    import mx.events.*;

    public class RitualCheckWindow extends PopupWindow implements IBindingClient
    {
        var _bindingsByDestination:Object;
        var _bindingsBeginWithWord:Object;
        var _watchers:Array;
        public var _RitualCheckWindow_Text1:Text;
        private var _68945653ok_button:Button;
        private var _91329123_unit:UnitVO;
        var _bindings:Array;
        private var _documentDescriptor_:UIComponentDescriptor;
        private var _989304983cancel_button:Button;
        public static const RITUAL:String = NAME + "/notes/ritual";
        private static var _watcherSetupUtil:IWatcherSetupUtil;
        public static const NAME:String = "RitualCheckWindow";

        public function RitualCheckWindow()
        {
            _documentDescriptor_ = new UIComponentDescriptor({type:PopupWindow, propertiesFactory:function () : Object
            {
                return {childDescriptors:[new UIComponentDescriptor({type:Box, propertiesFactory:function () : Object
                {
                    return {width:350, height:180, styleName:"DialogBg", childDescriptors:[new UIComponentDescriptor({type:Canvas, propertiesFactory:function () : Object
                    {
                        return {childDescriptors:[new UIComponentDescriptor({type:Text, id:"_RitualCheckWindow_Text1", stylesFactory:function () : void
                        {
                            this.textAlign = "center";
                            this.fontSize = 12;
                            return;
                        }// end function
                        , propertiesFactory:function () : Object
                        {
                            return {width:330, x:10, y:55};
                        }// end function
                        }), new UIComponentDescriptor({type:Text, stylesFactory:function () : void
                        {
                            this.fontSize = 12;
                            return;
                        }// end function
                        , propertiesFactory:function () : Object
                        {
                            return {width:180, x:120, y:75, text:"よろしいですか？"};
                        }// end function
                        }), new UIComponentDescriptor({type:Button, id:"ok_button", events:{click:"__ok_button_click"}, propertiesFactory:function () : Object
                        {
                            return {x:177, y:145, styleName:"OkButton", buttonMode:true};
                        }// end function
                        }), new UIComponentDescriptor({type:Button, id:"cancel_button", events:{click:"__cancel_button_click"}, propertiesFactory:function () : Object
                        {
                            return {x:97, y:145, styleName:"CancelCanaButton", buttonMode:true};
                        }// end function
                        })]};
                    }// end function
                    })]};
                }// end function
                })]};
            }// end function
            });
            _bindings = [];
            _watchers = [];
            _bindingsByDestination = {};
            _bindingsBeginWithWord = {};
            mx_internal::_document = this;
            this.x = 250;
            this.y = 200;
            return;
        }// end function

        public function __cancel_button_click(event:MouseEvent) : void
        {
            onClose();
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

        public function setUnitAndItemName(param1:UnitVO) : void
        {
            _unit = new UnitVO();
            _unit = param1;
            return;
        }// end function

        override public function initialize() : void
        {
            var target:RitualCheckWindow;
            var watcherSetupUtilClass:Object;
            .mx_internal::setDocumentDescriptor(_documentDescriptor_);
            var bindings:* = _RitualCheckWindow_bindingsSetup();
            var watchers:Array;
            target;
            if (_watcherSetupUtil == null)
            {
                watcherSetupUtilClass = getDefinitionByName("_com_kbmj_viking_view_home_RitualCheckWindowWatcherSetupUtil");
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

        public function __ok_button_click(event:MouseEvent) : void
        {
            onOk();
            return;
        }// end function

        private function _RitualCheckWindow_bindingExprs() : void
        {
            var _loc_1:* = undefined;
            _loc_1 = _unit.item.nameLabel + "を" + _unit.name + "に使用します。";
            return;
        }// end function

        private function _RitualCheckWindow_bindingsSetup() : Array
        {
            var binding:Binding;
            var result:Array;
            binding = new Binding(this, function () : String
            {
                var _loc_1:* = _unit.item.nameLabel + "を" + _unit.name + "に使用します。";
                var _loc_2:* = _loc_1 == undefined ? (null) : (String(_loc_1));
                return _loc_2;
            }// end function
            , function (param1:String) : void
            {
                _RitualCheckWindow_Text1.text = param1;
                return;
            }// end function
            , "_RitualCheckWindow_Text1.text");
            result[0] = binding;
            return result;
        }// end function

        private function onOk() : void
        {
            sendPopupEvent(RITUAL, {unit:_unit});
            onClose();
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

        public function get cancel_button() : Button
        {
            return this._989304983cancel_button;
        }// end function

        public function set ok_button(param1:Button) : void
        {
            var _loc_2:* = this._68945653ok_button;
            if (_loc_2 !== param1)
            {
                this._68945653ok_button = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "ok_button", _loc_2, param1));
            }
            return;
        }// end function

        private function get _unit() : UnitVO
        {
            return this._91329123_unit;
        }// end function

        public function get ok_button() : Button
        {
            return this._68945653ok_button;
        }// end function

        public static function set watcherSetupUtil(param1:IWatcherSetupUtil) : void
        {
            _watcherSetupUtil = param1;
            return;
        }// end function

    }
}
