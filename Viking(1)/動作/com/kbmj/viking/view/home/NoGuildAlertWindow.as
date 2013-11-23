package com.kbmj.viking.view.home
{
    import com.kbmj.viking.lib.*;
    import com.kbmj.viking.view.*;
    import flash.events.*;
    import flash.utils.*;
    import mx.binding.*;
    import mx.containers.*;
    import mx.controls.*;
    import mx.core.*;
    import mx.events.*;

    public class NoGuildAlertWindow extends PopupWindow implements IBindingClient
    {
        var _bindingsBeginWithWord:Object;
        public var _NoGuildAlertWindow_Text1:Text;
        var _bindingsByDestination:Object;
        var _bindings:Array;
        private var _documentDescriptor_:UIComponentDescriptor;
        private var _68945653ok_button:Button;
        var _watchers:Array;
        private static var _watcherSetupUtil:IWatcherSetupUtil;

        public function NoGuildAlertWindow()
        {
            _documentDescriptor_ = new UIComponentDescriptor({type:PopupWindow, propertiesFactory:function () : Object
            {
                return {childDescriptors:[new UIComponentDescriptor({type:Box, propertiesFactory:function () : Object
                {
                    return {width:330, height:180, styleName:"DialogBg", childDescriptors:[new UIComponentDescriptor({type:Canvas, propertiesFactory:function () : Object
                    {
                        return {childDescriptors:[new UIComponentDescriptor({type:Text, id:"_NoGuildAlertWindow_Text1", stylesFactory:function () : void
                        {
                            this.fontSize = 12;
                            return;
                        }// end function
                        , propertiesFactory:function () : Object
                        {
                            return {width:200, x:107, y:65};
                        }// end function
                        }), new UIComponentDescriptor({type:Button, id:"ok_button", events:{click:"__ok_button_click"}, propertiesFactory:function () : Object
                        {
                            return {x:123, y:145, styleName:"OkButton", buttonMode:true};
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

        private function confirm() : void
        {
            onClose();
            return;
        }// end function

        private function _NoGuildAlertWindow_bindingsSetup() : Array
        {
            var binding:Binding;
            var result:Array;
            binding = new Binding(this, function () : String
            {
                var _loc_1:* = Utils.i18n("noGuildAlertWindowNoGuild");
                var _loc_2:* = _loc_1 == undefined ? (null) : (String(_loc_1));
                return _loc_2;
            }// end function
            , function (param1:String) : void
            {
                _NoGuildAlertWindow_Text1.text = param1;
                return;
            }// end function
            , "_NoGuildAlertWindow_Text1.text");
            result[0] = binding;
            return result;
        }// end function

        override public function initialize() : void
        {
            var target:NoGuildAlertWindow;
            var watcherSetupUtilClass:Object;
            .mx_internal::setDocumentDescriptor(_documentDescriptor_);
            var bindings:* = _NoGuildAlertWindow_bindingsSetup();
            var watchers:Array;
            target;
            if (_watcherSetupUtil == null)
            {
                watcherSetupUtilClass = getDefinitionByName("_com_kbmj_viking_view_home_NoGuildAlertWindowWatcherSetupUtil");
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

        public function get ok_button() : Button
        {
            return this._68945653ok_button;
        }// end function

        public function __ok_button_click(event:MouseEvent) : void
        {
            onClose();
            return;
        }// end function

        private function _NoGuildAlertWindow_bindingExprs() : void
        {
            var _loc_1:* = undefined;
            _loc_1 = Utils.i18n("noGuildAlertWindowNoGuild");
            return;
        }// end function

        public static function set watcherSetupUtil(param1:IWatcherSetupUtil) : void
        {
            _watcherSetupUtil = param1;
            return;
        }// end function

    }
}
