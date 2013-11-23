package com.kbmj.viking.view.home
{
    import com.kbmj.viking.view.*;
    import flash.events.*;
    import flash.utils.*;
    import mx.binding.*;
    import mx.containers.*;
    import mx.controls.*;
    import mx.core.*;
    import mx.events.*;
    import mx.managers.*;

    public class ConfirmAddAreaWindow extends PopupWindow implements IBindingClient
    {
        private var _embed_mxml__images_icon_power_png_227571469:Class;
        var _bindingsByDestination:Object;
        var _bindingsBeginWithWord:Object;
        var _watchers:Array;
        private var _1468339194_power:int;
        public var _ConfirmAddAreaWindow_Label1:Label;
        private var _91294401_tier:int;
        private var _875991680_confirmEnabled:Boolean = true;
        var _bindings:Array;
        private var _documentDescriptor_:UIComponentDescriptor;
        private static var _watcherSetupUtil:IWatcherSetupUtil;
        private static const PRICES:Array = [0, 600, 900, 1200];
        public static const CONFIRMED:String = "ConfirmAddAreaWindow/Confirmed";

        public function ConfirmAddAreaWindow()
        {
            _documentDescriptor_ = new UIComponentDescriptor({type:PopupWindow, propertiesFactory:function () : Object
            {
                return {childDescriptors:[new UIComponentDescriptor({type:VBox, propertiesFactory:function () : Object
                {
                    return {childDescriptors:[new UIComponentDescriptor({type:Spacer, propertiesFactory:function () : Object
                    {
                        return {percentHeight:100};
                    }// end function
                    }), new UIComponentDescriptor({type:VBox, stylesFactory:function () : void
                    {
                        this.horizontalCenter = "20";
                        this.top = "100";
                        return;
                    }// end function
                    , propertiesFactory:function () : Object
                    {
                        return {childDescriptors:[new UIComponentDescriptor({type:HBox, stylesFactory:function () : void
                        {
                            this.horizontalGap = 2;
                            return;
                        }// end function
                        , propertiesFactory:function () : Object
                        {
                            return {childDescriptors:[new UIComponentDescriptor({type:Image, propertiesFactory:function () : Object
                            {
                                return {source:_embed_mxml__images_icon_power_png_227571469};
                            }// end function
                            }), new UIComponentDescriptor({type:Label, id:"_ConfirmAddAreaWindow_Label1", propertiesFactory:function () : Object
                            {
                                return {styleName:"UnitSelectText"};
                            }// end function
                            })]};
                        }// end function
                        }), new UIComponentDescriptor({type:Spacer, propertiesFactory:function () : Object
                        {
                            return {height:50};
                        }// end function
                        }), new UIComponentDescriptor({type:HBox, stylesFactory:function () : void
                        {
                            this.horizontalGap = 10;
                            return;
                        }// end function
                        , propertiesFactory:function () : Object
                        {
                            return {percentWidth:100, childDescriptors:[new UIComponentDescriptor({type:Spacer, propertiesFactory:function () : Object
                            {
                                return {width:65};
                            }// end function
                            }), new UIComponentDescriptor({type:Button, events:{click:"___ConfirmAddAreaWindow_Button1_click"}, propertiesFactory:function () : Object
                            {
                                return {label:"", styleName:"CancelCanaButton", buttonMode:true};
                            }// end function
                            }), new UIComponentDescriptor({type:Button, events:{click:"___ConfirmAddAreaWindow_Button2_click"}, propertiesFactory:function () : Object
                            {
                                return {label:"", styleName:"OkButton", buttonMode:true};
                            }// end function
                            })]};
                        }// end function
                        })]};
                    }// end function
                    }), new UIComponentDescriptor({type:Spacer, propertiesFactory:function () : Object
                    {
                        return {percentHeight:100};
                    }// end function
                    })]};
                }// end function
                })]};
            }// end function
            });
            _embed_mxml__images_icon_power_png_227571469 = ConfirmAddAreaWindow__embed_mxml__images_icon_power_png_227571469;
            _bindings = [];
            _watchers = [];
            _bindingsByDestination = {};
            _bindingsBeginWithWord = {};
            mx_internal::_document = this;
            this.percentHeight = 100;
            return;
        }// end function

        private function get _confirmEnabled() : Boolean
        {
            return this._875991680_confirmEnabled;
        }// end function

        public function ___ConfirmAddAreaWindow_Button1_click(event:MouseEvent) : void
        {
            onClose();
            return;
        }// end function

        public function ___ConfirmAddAreaWindow_Button2_click(event:MouseEvent) : void
        {
            onConfirm();
            return;
        }// end function

        private function get _tier() : int
        {
            return this._91294401_tier;
        }// end function

        private function _ConfirmAddAreaWindow_bindingsSetup() : Array
        {
            var binding:Binding;
            var result:Array;
            binding = new Binding(this, function () : String
            {
                var _loc_1:* = "神力" + _power + "を消費して本拠地に空き地を追加しますか？";
                var _loc_2:* = _loc_1 == undefined ? (null) : (String(_loc_1));
                return _loc_2;
            }// end function
            , function (param1:String) : void
            {
                _ConfirmAddAreaWindow_Label1.text = param1;
                return;
            }// end function
            , "_ConfirmAddAreaWindow_Label1.text");
            result[0] = binding;
            return result;
        }// end function

        private function set _confirmEnabled(param1:Boolean) : void
        {
            var _loc_2:* = this._875991680_confirmEnabled;
            if (_loc_2 !== param1)
            {
                this._875991680_confirmEnabled = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "_confirmEnabled", _loc_2, param1));
            }
            return;
        }// end function

        override public function initialize() : void
        {
            var target:ConfirmAddAreaWindow;
            var watcherSetupUtilClass:Object;
            .mx_internal::setDocumentDescriptor(_documentDescriptor_);
            var bindings:* = _ConfirmAddAreaWindow_bindingsSetup();
            var watchers:Array;
            target;
            if (_watcherSetupUtil == null)
            {
                watcherSetupUtilClass = getDefinitionByName("_com_kbmj_viking_view_home_ConfirmAddAreaWindowWatcherSetupUtil");
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

        private function set _tier(param1:int) : void
        {
            var _loc_2:* = this._91294401_tier;
            if (_loc_2 !== param1)
            {
                this._91294401_tier = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "_tier", _loc_2, param1));
            }
            return;
        }// end function

        private function set _power(param1:int) : void
        {
            var _loc_2:* = this._1468339194_power;
            if (_loc_2 !== param1)
            {
                this._1468339194_power = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "_power", _loc_2, param1));
            }
            return;
        }// end function

        private function get _power() : int
        {
            return this._1468339194_power;
        }// end function

        private function _ConfirmAddAreaWindow_bindingExprs() : void
        {
            var _loc_1:* = undefined;
            _loc_1 = "神力" + _power + "を消費して本拠地に空き地を追加しますか？";
            return;
        }// end function

        private function onConfirm() : void
        {
            if (_confirmEnabled)
            {
                _confirmEnabled = false;
                sendPopupEvent(CONFIRMED, _tier);
                PopUpManager.removePopUp(this);
            }
            return;
        }// end function

        public function show(param1:CanvasWithPopUp, param2:int) : void
        {
            _tier = param2;
            _power = PRICES[_tier];
            _confirmEnabled = true;
            param1.popupWindow(this);
            return;
        }// end function

        public static function set watcherSetupUtil(param1:IWatcherSetupUtil) : void
        {
            _watcherSetupUtil = param1;
            return;
        }// end function

    }
}
