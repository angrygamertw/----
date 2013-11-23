package com.kbmj.viking.view.home
{
    import com.kbmj.viking.view.*;
    import flash.events.*;
    import flash.utils.*;
    import mx.binding.*;
    import mx.containers.*;
    import mx.controls.*;
    import mx.core.*;

    public class ConfirmPassYearWindow extends PopupWindow implements IBindingClient
    {
        private var _embed_mxml__images_icon_power_png_227571469:Class;
        public var _ConfirmPassYearWindow_Text1:Text;
        var _bindingsByDestination:Object;
        var _bindings:Array;
        var _bindingsBeginWithWord:Object;
        private var _documentDescriptor_:UIComponentDescriptor;
        var _watchers:Array;
        private static var _watcherSetupUtil:IWatcherSetupUtil;
        public static const NAME:String = "ConfirmPassTextWindow";
        public static const CONFIRMED:String = NAME + "/confirmed";

        public function ConfirmPassYearWindow()
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
                            }), new UIComponentDescriptor({type:Text, id:"_ConfirmPassYearWindow_Text1", propertiesFactory:function () : Object
                            {
                                return {styleName:"UnitSelectText"};
                            }// end function
                            })]};
                        }// end function
                        }), new UIComponentDescriptor({type:Spacer, propertiesFactory:function () : Object
                        {
                            return {height:35};
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
                                return {width:20};
                            }// end function
                            }), new UIComponentDescriptor({type:Button, events:{click:"___ConfirmPassYearWindow_Button1_click"}, propertiesFactory:function () : Object
                            {
                                return {label:"", styleName:"CancelCanaButton", buttonMode:true};
                            }// end function
                            }), new UIComponentDescriptor({type:Button, events:{click:"___ConfirmPassYearWindow_Button2_click"}, propertiesFactory:function () : Object
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
            _embed_mxml__images_icon_power_png_227571469 = ConfirmPassYearWindow__embed_mxml__images_icon_power_png_227571469;
            _bindings = [];
            _watchers = [];
            _bindingsByDestination = {};
            _bindingsBeginWithWord = {};
            mx_internal::_document = this;
            this.percentHeight = 100;
            return;
        }// end function

        public function ___ConfirmPassYearWindow_Button1_click(event:MouseEvent) : void
        {
            onClose();
            return;
        }// end function

        private function onConfirm() : void
        {
            sendPopupEvent(CONFIRMED, 0);
            onClose();
            return;
        }// end function

        public function ___ConfirmPassYearWindow_Button2_click(event:MouseEvent) : void
        {
            onConfirm();
            return;
        }// end function

        private function _ConfirmPassYearWindow_bindingsSetup() : Array
        {
            var binding:Binding;
            var result:Array;
            binding = new Binding(this, function () : String
            {
                var _loc_1:* = "神力30を消費して１年経過させますか?" + "\n" + "※翌年の1/1になります";
                var _loc_2:* = _loc_1 == undefined ? (null) : (String(_loc_1));
                return _loc_2;
            }// end function
            , function (param1:String) : void
            {
                _ConfirmPassYearWindow_Text1.text = param1;
                return;
            }// end function
            , "_ConfirmPassYearWindow_Text1.text");
            result[0] = binding;
            return result;
        }// end function

        override public function initialize() : void
        {
            var target:ConfirmPassYearWindow;
            var watcherSetupUtilClass:Object;
            .mx_internal::setDocumentDescriptor(_documentDescriptor_);
            var bindings:* = _ConfirmPassYearWindow_bindingsSetup();
            var watchers:Array;
            target;
            if (_watcherSetupUtil == null)
            {
                watcherSetupUtilClass = getDefinitionByName("_com_kbmj_viking_view_home_ConfirmPassYearWindowWatcherSetupUtil");
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

        private function _ConfirmPassYearWindow_bindingExprs() : void
        {
            var _loc_1:* = undefined;
            _loc_1 = "神力30を消費して１年経過させますか?" + "\n" + "※翌年の1/1になります";
            return;
        }// end function

        public static function set watcherSetupUtil(param1:IWatcherSetupUtil) : void
        {
            _watcherSetupUtil = param1;
            return;
        }// end function

    }
}
