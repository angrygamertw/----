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

    public class ConfirmSummonHeroWindow extends PopupWindow implements IBindingClient
    {
        private var _embed_mxml__images_icon_power_png_227571469:Class;
        private var _501268206typeLavel:String;
        var _watchers:Array;
        private var _1110417474label2:String;
        private var _106858757power:String;
        public var _ConfirmSummonHeroWindow_Label1:Label;
        public var _ConfirmSummonHeroWindow_Label2:Label;
        public var _ConfirmSummonHeroWindow_Label3:Label;
        public var _ConfirmSummonHeroWindow_Label5:Label;
        public var _ConfirmSummonHeroWindow_Label4:Label;
        var _bindingsByDestination:Object;
        var _bindingsBeginWithWord:Object;
        public var _ConfirmSummonHeroWindow_Text1:Text;
        private var _1110417475label1:String;
        var _bindings:Array;
        private var _1979017509titileLavel:String;
        private var _documentDescriptor_:UIComponentDescriptor;
        public static const CONFIRMED_BRAVE:String = "ConfirmSummonHeroWindow/ConfirmedBrave";
        private static var _watcherSetupUtil:IWatcherSetupUtil;
        public static const CONFIRMED:String = "ConfirmSummonHeroWindow/Confirmed";

        public function ConfirmSummonHeroWindow()
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
                        this.left = "95";
                        this.top = "62";
                        this.verticalGap = -4;
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
                            }), new UIComponentDescriptor({type:Label, id:"_ConfirmSummonHeroWindow_Label1", stylesFactory:function () : void
                            {
                                this.fontSize = 14;
                                return;
                            }// end function
                            , propertiesFactory:function () : Object
                            {
                                return {styleName:"UnitSelectText"};
                            }// end function
                            })]};
                        }// end function
                        }), new UIComponentDescriptor({type:Spacer, propertiesFactory:function () : Object
                        {
                            return {height:10};
                        }// end function
                        }), new UIComponentDescriptor({type:Label, id:"_ConfirmSummonHeroWindow_Label2", stylesFactory:function () : void
                        {
                            this.fontSize = 14;
                            return;
                        }// end function
                        , propertiesFactory:function () : Object
                        {
                            return {styleName:"UnitSelectText"};
                        }// end function
                        }), new UIComponentDescriptor({type:Text, id:"_ConfirmSummonHeroWindow_Text1", stylesFactory:function () : void
                        {
                            this.fontSize = 14;
                            return;
                        }// end function
                        , propertiesFactory:function () : Object
                        {
                            return {styleName:"UnitSelectText"};
                        }// end function
                        }), new UIComponentDescriptor({type:Spacer, propertiesFactory:function () : Object
                        {
                            return {height:10};
                        }// end function
                        }), new UIComponentDescriptor({type:HBox, propertiesFactory:function () : Object
                        {
                            return {childDescriptors:[new UIComponentDescriptor({type:Spacer, propertiesFactory:function () : Object
                            {
                                return {width:50};
                            }// end function
                            }), new UIComponentDescriptor({type:VBox, stylesFactory:function () : void
                            {
                                this.verticalGap = -4;
                                return;
                            }// end function
                            , propertiesFactory:function () : Object
                            {
                                return {childDescriptors:[new UIComponentDescriptor({type:Label, id:"_ConfirmSummonHeroWindow_Label3", propertiesFactory:function () : Object
                                {
                                    return {styleName:"UnitSelectText", text:"勇者召喚では出現しない固有式姫がいます。"};
                                }// end function
                                }), new UIComponentDescriptor({type:Label, id:"_ConfirmSummonHeroWindow_Label4", propertiesFactory:function () : Object
                                {
                                    return {styleName:"UnitSelectText", text:"0:00をまたぐと雇用出来る式姫が変更されますので"};
                                }// end function
                                }), new UIComponentDescriptor({type:Label, id:"_ConfirmSummonHeroWindow_Label5", propertiesFactory:function () : Object
                                {
                                    return {styleName:"UnitSelectText", text:"0:00付近でのご利用にはご注意下さい。"};
                                }// end function
                                })]};
                            }// end function
                            })]};
                        }// end function
                        })]};
                    }// end function
                    }), new UIComponentDescriptor({type:HBox, stylesFactory:function () : void
                    {
                        this.left = "210";
                        this.bottom = "15";
                        this.horizontalGap = 10;
                        return;
                    }// end function
                    , propertiesFactory:function () : Object
                    {
                        return {percentWidth:100, childDescriptors:[new UIComponentDescriptor({type:Button, events:{click:"___ConfirmSummonHeroWindow_Button1_click"}, propertiesFactory:function () : Object
                        {
                            return {label:"", styleName:"CancelCanaButton", buttonMode:true};
                        }// end function
                        }), new UIComponentDescriptor({type:Button, events:{click:"___ConfirmSummonHeroWindow_Button2_click"}, propertiesFactory:function () : Object
                        {
                            return {label:"", styleName:"OkButton", buttonMode:true};
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
            _embed_mxml__images_icon_power_png_227571469 = ConfirmSummonHeroWindow__embed_mxml__images_icon_power_png_227571469;
            _bindings = [];
            _watchers = [];
            _bindingsByDestination = {};
            _bindingsBeginWithWord = {};
            mx_internal::_document = this;
            this.percentHeight = 100;
            return;
        }// end function

        private function get power() : String
        {
            return this._106858757power;
        }// end function

        private function set power(param1:String) : void
        {
            var _loc_2:* = this._106858757power;
            if (_loc_2 !== param1)
            {
                this._106858757power = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "power", _loc_2, param1));
            }
            return;
        }// end function

        override public function initialize() : void
        {
            var target:ConfirmSummonHeroWindow;
            var watcherSetupUtilClass:Object;
            .mx_internal::setDocumentDescriptor(_documentDescriptor_);
            var bindings:* = _ConfirmSummonHeroWindow_bindingsSetup();
            var watchers:Array;
            target;
            if (_watcherSetupUtil == null)
            {
                watcherSetupUtilClass = getDefinitionByName("_com_kbmj_viking_view_home_ConfirmSummonHeroWindowWatcherSetupUtil");
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

        public function ___ConfirmSummonHeroWindow_Button1_click(event:MouseEvent) : void
        {
            onClose();
            return;
        }// end function

        private function get titileLavel() : String
        {
            return this._1979017509titileLavel;
        }// end function

        public function setLayout(param1:String) : void
        {
            typeLavel = param1;
            switch(param1)
            {
                case "Hero":
                {
                    titileLavel = "英雄召喚";
                    power = "600";
                    label1 = "英雄";
                    label2 = "ごくまれに固有式姫、まれに上級職式姫が出現します。";
                    break;
                }
                case "Brave":
                {
                    titileLavel = "勇者召喚";
                    power = "300";
                    label1 = "勇者";
                    label2 = "ごくまれに固有式姫、まれに上級職式姫、\n一定確率で血脈を持つ式姫が出現します。";
                    break;
                }
                default:
                {
                    break;
                }
            }
            return;
        }// end function

        private function _ConfirmSummonHeroWindow_bindingExprs() : void
        {
            var _loc_1:* = undefined;
            _loc_1 = "神力" + power + "を消費して" + label1 + "召喚をしますか？";
            _loc_1 = label1 + "召喚すると本日雇用出来る式姫が変更され、";
            _loc_1 = label2;
            _loc_1 = 12337210;
            _loc_1 = typeLavel == "Brave";
            _loc_1 = 12337210;
            _loc_1 = 12337210;
            return;
        }// end function

        private function get label1() : String
        {
            return this._1110417475label1;
        }// end function

        private function get label2() : String
        {
            return this._1110417474label2;
        }// end function

        public function ___ConfirmSummonHeroWindow_Button2_click(event:MouseEvent) : void
        {
            onConfirm();
            return;
        }// end function

        private function set titileLavel(param1:String) : void
        {
            var _loc_2:* = this._1979017509titileLavel;
            if (_loc_2 !== param1)
            {
                this._1979017509titileLavel = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "titileLavel", _loc_2, param1));
            }
            return;
        }// end function

        private function _ConfirmSummonHeroWindow_bindingsSetup() : Array
        {
            var binding:Binding;
            var result:Array;
            binding = new Binding(this, function () : String
            {
                var _loc_1:* = "神力" + power + "を消費して" + label1 + "召喚をしますか？";
                var _loc_2:* = _loc_1 == undefined ? (null) : (String(_loc_1));
                return _loc_2;
            }// end function
            , function (param1:String) : void
            {
                _ConfirmSummonHeroWindow_Label1.text = param1;
                return;
            }// end function
            , "_ConfirmSummonHeroWindow_Label1.text");
            result[0] = binding;
            binding = new Binding(this, function () : String
            {
                var _loc_1:* = label1 + "召喚すると本日雇用出来る式姫が変更され、";
                var _loc_2:* = _loc_1 == undefined ? (null) : (String(_loc_1));
                return _loc_2;
            }// end function
            , function (param1:String) : void
            {
                _ConfirmSummonHeroWindow_Label2.text = param1;
                return;
            }// end function
            , "_ConfirmSummonHeroWindow_Label2.text");
            result[1] = binding;
            binding = new Binding(this, function () : String
            {
                var _loc_1:* = label2;
                var _loc_2:* = _loc_1 == undefined ? (null) : (String(_loc_1));
                return _loc_2;
            }// end function
            , function (param1:String) : void
            {
                _ConfirmSummonHeroWindow_Text1.text = param1;
                return;
            }// end function
            , "_ConfirmSummonHeroWindow_Text1.text");
            result[2] = binding;
            binding = new Binding(this, function () : uint
            {
                return 12337210;
            }// end function
            , function (param1:uint) : void
            {
                _ConfirmSummonHeroWindow_Label3.setStyle("color", param1);
                return;
            }// end function
            , "_ConfirmSummonHeroWindow_Label3.color");
            result[3] = binding;
            binding = new Binding(this, function () : Boolean
            {
                return typeLavel == "Brave";
            }// end function
            , function (param1:Boolean) : void
            {
                _ConfirmSummonHeroWindow_Label3.visible = param1;
                return;
            }// end function
            , "_ConfirmSummonHeroWindow_Label3.visible");
            result[4] = binding;
            binding = new Binding(this, function () : uint
            {
                return 12337210;
            }// end function
            , function (param1:uint) : void
            {
                _ConfirmSummonHeroWindow_Label4.setStyle("color", param1);
                return;
            }// end function
            , "_ConfirmSummonHeroWindow_Label4.color");
            result[5] = binding;
            binding = new Binding(this, function () : uint
            {
                return 12337210;
            }// end function
            , function (param1:uint) : void
            {
                _ConfirmSummonHeroWindow_Label5.setStyle("color", param1);
                return;
            }// end function
            , "_ConfirmSummonHeroWindow_Label5.color");
            result[6] = binding;
            return result;
        }// end function

        private function onConfirm() : void
        {
            switch(typeLavel)
            {
                case "Hero":
                {
                    sendEvent(CONFIRMED);
                    break;
                }
                case "Brave":
                {
                    sendEvent(CONFIRMED_BRAVE);
                    break;
                }
                default:
                {
                    break;
                }
            }
            PopUpManager.removePopUp(this);
            return;
        }// end function

        private function set typeLavel(param1:String) : void
        {
            var _loc_2:* = this._501268206typeLavel;
            if (_loc_2 !== param1)
            {
                this._501268206typeLavel = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "typeLavel", _loc_2, param1));
            }
            return;
        }// end function

        private function get typeLavel() : String
        {
            return this._501268206typeLavel;
        }// end function

        private function set label1(param1:String) : void
        {
            var _loc_2:* = this._1110417475label1;
            if (_loc_2 !== param1)
            {
                this._1110417475label1 = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "label1", _loc_2, param1));
            }
            return;
        }// end function

        private function set label2(param1:String) : void
        {
            var _loc_2:* = this._1110417474label2;
            if (_loc_2 !== param1)
            {
                this._1110417474label2 = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "label2", _loc_2, param1));
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
