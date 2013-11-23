package com.kbmj.viking.view.home
{
    import flash.events.*;
    import flash.utils.*;
    import mx.binding.*;
    import mx.containers.*;
    import mx.controls.*;
    import mx.core.*;
    import mx.events.*;
    import mx.managers.*;

    public class Crash extends Canvas implements IBindingClient
    {
        var _bindingsByDestination:Object;
        var _bindingsBeginWithWord:Object;
        var _watchers:Array;
        private var _985849673descriptionText:String;
        private var _1724546052description:Text;
        var _bindings:Array;
        private var _documentDescriptor_:UIComponentDescriptor;
        private static var _watcherSetupUtil:IWatcherSetupUtil;
        public static const CONFIRMED:String = "confirmed";

        public function Crash()
        {
            _documentDescriptor_ = new UIComponentDescriptor({type:Canvas, propertiesFactory:function () : Object
            {
                return {childDescriptors:[new UIComponentDescriptor({type:Box, propertiesFactory:function () : Object
                {
                    return {width:330, height:180, styleName:"DialogBg", childDescriptors:[new UIComponentDescriptor({type:Canvas, propertiesFactory:function () : Object
                    {
                        return {childDescriptors:[new UIComponentDescriptor({type:Text, id:"description", propertiesFactory:function () : Object
                        {
                            return {width:260, x:35, y:55, styleName:"CenterText"};
                        }// end function
                        }), new UIComponentDescriptor({type:HBox, stylesFactory:function () : void
                        {
                            this.horizontalCenter = "20";
                            this.horizontalGap = 20;
                            return;
                        }// end function
                        , propertiesFactory:function () : Object
                        {
                            return {y:145, childDescriptors:[new UIComponentDescriptor({type:Button, events:{click:"___Crash_Button1_click"}, propertiesFactory:function () : Object
                            {
                                return {label:"", styleName:"CancelCanaButton", buttonMode:true};
                            }// end function
                            }), new UIComponentDescriptor({type:Button, events:{click:"___Crash_Button2_click"}, propertiesFactory:function () : Object
                            {
                                return {label:"", styleName:"OkButton", buttonMode:true};
                            }// end function
                            })]};
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

        public function get descriptionText() : String
        {
            return this._985849673descriptionText;
        }// end function

        override public function initialize() : void
        {
            var target:Crash;
            var watcherSetupUtilClass:Object;
            .mx_internal::setDocumentDescriptor(_documentDescriptor_);
            var bindings:* = _Crash_bindingsSetup();
            var watchers:Array;
            target;
            if (_watcherSetupUtil == null)
            {
                watcherSetupUtilClass = getDefinitionByName("_com_kbmj_viking_view_home_CrashWatcherSetupUtil");
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

        public function ___Crash_Button1_click(event:MouseEvent) : void
        {
            cancelClick();
            return;
        }// end function

        public function ___Crash_Button2_click(event:MouseEvent) : void
        {
            confirmClick();
            return;
        }// end function

        public function set descriptionText(param1:String) : void
        {
            var _loc_2:* = this._985849673descriptionText;
            if (_loc_2 !== param1)
            {
                this._985849673descriptionText = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "descriptionText", _loc_2, param1));
            }
            return;
        }// end function

        private function _Crash_bindingsSetup() : Array
        {
            var binding:Binding;
            var result:Array;
            binding = new Binding(this, function () : String
            {
                var _loc_1:* = descriptionText;
                var _loc_2:* = _loc_1 == undefined ? (null) : (String(_loc_1));
                return _loc_2;
            }// end function
            , function (param1:String) : void
            {
                description.text = param1;
                return;
            }// end function
            , "description.text");
            result[0] = binding;
            return result;
        }// end function

        private function confirmClick() : void
        {
            dispatchEvent(new Event(CONFIRMED));
            PopUpManager.removePopUp(this);
            return;
        }// end function

        private function cancelClick() : void
        {
            PopUpManager.removePopUp(this);
            return;
        }// end function

        private function _Crash_bindingExprs() : void
        {
            var _loc_1:* = undefined;
            _loc_1 = descriptionText;
            return;
        }// end function

        public function set description(param1:Text) : void
        {
            var _loc_2:* = this._1724546052description;
            if (_loc_2 !== param1)
            {
                this._1724546052description = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "description", _loc_2, param1));
            }
            return;
        }// end function

        public function get description() : Text
        {
            return this._1724546052description;
        }// end function

        public static function set watcherSetupUtil(param1:IWatcherSetupUtil) : void
        {
            _watcherSetupUtil = param1;
            return;
        }// end function

    }
}
