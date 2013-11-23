package com.kbmj.viking.view.home
{
    import com.kbmj.viking.view.*;
    import flash.events.*;
    import flash.utils.*;
    import mx.binding.*;
    import mx.containers.*;
    import mx.controls.*;
    import mx.core.*;
    import mx.managers.*;

    public class SquareRefreshConfirmWindow extends PopupWindow implements IBindingClient
    {
        var _bindingsBeginWithWord:Object;
        var _bindingsByDestination:Object;
        public var _SquareRefreshConfirmWindow_Label2:Label;
        public var _SquareRefreshConfirmWindow_Label3:Label;
        var _bindings:Array;
        private var _documentDescriptor_:UIComponentDescriptor;
        private var _embed_mxml__images_icon_power_png_227571469:Class;
        var _watchers:Array;
        private static var _watcherSetupUtil:IWatcherSetupUtil;
        public static const CONFIRMED:String = "squareRefreshConfirmWindow/Confirmed";

        public function SquareRefreshConfirmWindow()
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
                        this.left = "85";
                        this.top = "80";
                        return;
                    }// end function
                    , propertiesFactory:function () : Object
                    {
                        return {childDescriptors:[new UIComponentDescriptor({type:HBox, stylesFactory:function () : void
                        {
                            this.horizontalGap = 4;
                            return;
                        }// end function
                        , propertiesFactory:function () : Object
                        {
                            return {childDescriptors:[new UIComponentDescriptor({type:Image, propertiesFactory:function () : Object
                            {
                                return {source:_embed_mxml__images_icon_power_png_227571469};
                            }// end function
                            }), new UIComponentDescriptor({type:Label, propertiesFactory:function () : Object
                            {
                                return {styleName:"UnitSelectText", text:"神力100を消費して本日雇用出来る式姫を変更しますか？"};
                            }// end function
                            })]};
                        }// end function
                        }), new UIComponentDescriptor({type:HBox, propertiesFactory:function () : Object
                        {
                            return {childDescriptors:[new UIComponentDescriptor({type:Spacer, propertiesFactory:function () : Object
                            {
                                return {width:30};
                            }// end function
                            }), new UIComponentDescriptor({type:VBox, propertiesFactory:function () : Object
                            {
                                return {childDescriptors:[new UIComponentDescriptor({type:Label, id:"_SquareRefreshConfirmWindow_Label2", propertiesFactory:function () : Object
                                {
                                    return {styleName:"UnitSelectText", text:"0:00をまたぐと雇用出来る式姫が変更されますので"};
                                }// end function
                                }), new UIComponentDescriptor({type:Label, id:"_SquareRefreshConfirmWindow_Label3", propertiesFactory:function () : Object
                                {
                                    return {styleName:"UnitSelectText", text:"0:00付近でのご利用にはご注意下さい。"};
                                }// end function
                                })]};
                            }// end function
                            })]};
                        }// end function
                        }), new UIComponentDescriptor({type:Spacer, propertiesFactory:function () : Object
                        {
                            return {height:20};
                        }// end function
                        }), new UIComponentDescriptor({type:HBox, stylesFactory:function () : void
                        {
                            this.left = "255";
                            this.horizontalGap = 10;
                            return;
                        }// end function
                        , propertiesFactory:function () : Object
                        {
                            return {percentWidth:100, childDescriptors:[new UIComponentDescriptor({type:Spacer, propertiesFactory:function () : Object
                            {
                                return {percentWidth:100};
                            }// end function
                            }), new UIComponentDescriptor({type:Button, events:{click:"___SquareRefreshConfirmWindow_Button1_click"}, propertiesFactory:function () : Object
                            {
                                return {label:"", styleName:"CancelCanaButton", buttonMode:true};
                            }// end function
                            }), new UIComponentDescriptor({type:Button, events:{click:"___SquareRefreshConfirmWindow_Button2_click"}, propertiesFactory:function () : Object
                            {
                                return {label:"", styleName:"OkButton", buttonMode:true};
                            }// end function
                            }), new UIComponentDescriptor({type:Spacer, propertiesFactory:function () : Object
                            {
                                return {percentWidth:100};
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
            _embed_mxml__images_icon_power_png_227571469 = SquareRefreshConfirmWindow__embed_mxml__images_icon_power_png_227571469;
            _bindings = [];
            _watchers = [];
            _bindingsByDestination = {};
            _bindingsBeginWithWord = {};
            mx_internal::_document = this;
            this.percentHeight = 100;
            return;
        }// end function

        private function onConfirm() : void
        {
            sendEvent(CONFIRMED);
            PopUpManager.removePopUp(this);
            return;
        }// end function

        private function _SquareRefreshConfirmWindow_bindingExprs() : void
        {
            var _loc_1:* = undefined;
            _loc_1 = 12337210;
            _loc_1 = 12337210;
            return;
        }// end function

        private function _SquareRefreshConfirmWindow_bindingsSetup() : Array
        {
            var binding:Binding;
            var result:Array;
            binding = new Binding(this, function () : uint
            {
                return 12337210;
            }// end function
            , function (param1:uint) : void
            {
                _SquareRefreshConfirmWindow_Label2.setStyle("color", param1);
                return;
            }// end function
            , "_SquareRefreshConfirmWindow_Label2.color");
            result[0] = binding;
            binding = new Binding(this, function () : uint
            {
                return 12337210;
            }// end function
            , function (param1:uint) : void
            {
                _SquareRefreshConfirmWindow_Label3.setStyle("color", param1);
                return;
            }// end function
            , "_SquareRefreshConfirmWindow_Label3.color");
            result[1] = binding;
            return result;
        }// end function

        override public function initialize() : void
        {
            var target:SquareRefreshConfirmWindow;
            var watcherSetupUtilClass:Object;
            .mx_internal::setDocumentDescriptor(_documentDescriptor_);
            var bindings:* = _SquareRefreshConfirmWindow_bindingsSetup();
            var watchers:Array;
            target;
            if (_watcherSetupUtil == null)
            {
                watcherSetupUtilClass = getDefinitionByName("_com_kbmj_viking_view_home_SquareRefreshConfirmWindowWatcherSetupUtil");
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

        public function ___SquareRefreshConfirmWindow_Button1_click(event:MouseEvent) : void
        {
            onClose();
            return;
        }// end function

        public function ___SquareRefreshConfirmWindow_Button2_click(event:MouseEvent) : void
        {
            onConfirm();
            return;
        }// end function

        public static function set watcherSetupUtil(param1:IWatcherSetupUtil) : void
        {
            _watcherSetupUtil = param1;
            return;
        }// end function

    }
}
