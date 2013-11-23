package com.kbmj.viking.view.city
{
    import com.kbmj.viking.view.*;
    import com.kbmj.viking.vo.*;
    import flash.events.*;
    import flash.utils.*;
    import mx.binding.*;
    import mx.containers.*;
    import mx.controls.*;
    import mx.core.*;
    import mx.events.*;

    public class Temple extends CanvasWithPopUp implements IBindingClient
    {
        private var _1645665610nowMonth:int;
        private var toDay:Date;
        private var _1039636250nowDay:int;
        private var _1471415882_menu4:Class;
        var _watchers:Array;
        private var _1471415884_menu2:Class;
        private var _604321667menuBar1:Image;
        private var _embed_mxml__images_city_onmyo_guild_jpg_1561510005:Class;
        private var _604321666menuBar2:Image;
        private var _3016401base:Image;
        public var _Temple_VBox1:VBox;
        public var _Temple_VBox2:VBox;
        public var _Temple_VBox3:VBox;
        var _bindingsByDestination:Object;
        public var _Temple_VBox4:VBox;
        var _bindingsBeginWithWord:Object;
        private var _1979637922guildButtonViewStack:ViewStack;
        private var _1471415885_menu1:Class;
        private var _1969791673_playerVO:PlayerVO;
        var _bindings:Array;
        private var _documentDescriptor_:UIComponentDescriptor;
        private var _1471415883_menu3:Class;
        private static var _watcherSetupUtil:IWatcherSetupUtil;

        public function Temple()
        {
            _documentDescriptor_ = new UIComponentDescriptor({type:CanvasWithPopUp, propertiesFactory:function () : Object
            {
                return {width:760, height:560, childDescriptors:[new UIComponentDescriptor({type:Box, propertiesFactory:function () : Object
                {
                    return {childDescriptors:[new UIComponentDescriptor({type:Canvas, propertiesFactory:function () : Object
                    {
                        return {label:"Base", width:760, height:560, childDescriptors:[new UIComponentDescriptor({type:Image, id:"base", propertiesFactory:function () : Object
                        {
                            return {source:_embed_mxml__images_city_onmyo_guild_jpg_1561510005};
                        }// end function
                        }), new UIComponentDescriptor({type:Image, id:"menuBar2", propertiesFactory:function () : Object
                        {
                            return {x:599, y:176};
                        }// end function
                        }), new UIComponentDescriptor({type:Image, id:"menuBar1", propertiesFactory:function () : Object
                        {
                            return {x:599, y:256};
                        }// end function
                        }), new UIComponentDescriptor({type:ViewStack, id:"guildButtonViewStack", propertiesFactory:function () : Object
                        {
                            return {width:168, height:113, selectedIndex:0, x:599, y:70, childDescriptors:[new UIComponentDescriptor({type:VBox, id:"_Temple_VBox1", stylesFactory:function () : void
                            {
                                this.right = "30";
                                this.horizontalAlign = "center";
                                this.verticalAlign = "middle";
                                return;
                            }// end function
                            , propertiesFactory:function () : Object
                            {
                                return {y:64, percentWidth:100, height:113, childDescriptors:[new UIComponentDescriptor({type:Button, events:{click:"___Temple_Button1_click"}, stylesFactory:function () : void
                                {
                                    this.right = "30";
                                    return;
                                }// end function
                                , propertiesFactory:function () : Object
                                {
                                    return {label:"", styleName:"ManagementButton", buttonMode:true};
                                }// end function
                                }), new UIComponentDescriptor({type:Button, events:{click:"___Temple_Button2_click"}, stylesFactory:function () : void
                                {
                                    this.right = "30";
                                    return;
                                }// end function
                                , propertiesFactory:function () : Object
                                {
                                    return {label:"", styleName:"SearchButton", buttonMode:true};
                                }// end function
                                }), new UIComponentDescriptor({type:Button, events:{click:"___Temple_Button3_click"}, stylesFactory:function () : void
                                {
                                    this.right = "30";
                                    return;
                                }// end function
                                , propertiesFactory:function () : Object
                                {
                                    return {label:"", styleName:"IndulgenceButton", buttonMode:true};
                                }// end function
                                })]};
                            }// end function
                            }), new UIComponentDescriptor({type:VBox, id:"_Temple_VBox2", stylesFactory:function () : void
                            {
                                this.right = "30";
                                this.horizontalAlign = "center";
                                this.verticalAlign = "middle";
                                return;
                            }// end function
                            , propertiesFactory:function () : Object
                            {
                                return {y:64, percentWidth:100, height:113, childDescriptors:[new UIComponentDescriptor({type:Button, events:{click:"___Temple_Button4_click"}, stylesFactory:function () : void
                                {
                                    this.right = "30";
                                    return;
                                }// end function
                                , propertiesFactory:function () : Object
                                {
                                    return {label:"", styleName:"QuitGuildButton", buttonMode:true};
                                }// end function
                                }), new UIComponentDescriptor({type:Button, events:{click:"___Temple_Button5_click"}, stylesFactory:function () : void
                                {
                                    this.right = "30";
                                    return;
                                }// end function
                                , propertiesFactory:function () : Object
                                {
                                    return {label:"", styleName:"SearchButton", buttonMode:true};
                                }// end function
                                }), new UIComponentDescriptor({type:Button, events:{click:"___Temple_Button6_click"}, stylesFactory:function () : void
                                {
                                    this.right = "30";
                                    return;
                                }// end function
                                , propertiesFactory:function () : Object
                                {
                                    return {label:"", styleName:"IndulgenceButton", buttonMode:true};
                                }// end function
                                })]};
                            }// end function
                            }), new UIComponentDescriptor({type:VBox, id:"_Temple_VBox3", stylesFactory:function () : void
                            {
                                this.right = "30";
                                this.horizontalAlign = "center";
                                this.verticalAlign = "middle";
                                return;
                            }// end function
                            , propertiesFactory:function () : Object
                            {
                                return {y:64, percentWidth:100, height:113, childDescriptors:[new UIComponentDescriptor({type:Button, events:{click:"___Temple_Button7_click"}, stylesFactory:function () : void
                                {
                                    this.right = "30";
                                    return;
                                }// end function
                                , propertiesFactory:function () : Object
                                {
                                    return {label:"", styleName:"CancelAdmissionButton", buttonMode:true};
                                }// end function
                                }), new UIComponentDescriptor({type:Button, events:{click:"___Temple_Button8_click"}, stylesFactory:function () : void
                                {
                                    this.right = "30";
                                    return;
                                }// end function
                                , propertiesFactory:function () : Object
                                {
                                    return {label:"", styleName:"SearchButton", buttonMode:true};
                                }// end function
                                }), new UIComponentDescriptor({type:Button, events:{click:"___Temple_Button9_click"}, stylesFactory:function () : void
                                {
                                    this.right = "30";
                                    return;
                                }// end function
                                , propertiesFactory:function () : Object
                                {
                                    return {label:"", styleName:"IndulgenceButton", buttonMode:true};
                                }// end function
                                })]};
                            }// end function
                            }), new UIComponentDescriptor({type:VBox, id:"_Temple_VBox4", stylesFactory:function () : void
                            {
                                this.right = "30";
                                this.horizontalAlign = "center";
                                this.verticalAlign = "middle";
                                return;
                            }// end function
                            , propertiesFactory:function () : Object
                            {
                                return {y:64, percentWidth:100, height:113, childDescriptors:[new UIComponentDescriptor({type:Button, events:{click:"___Temple_Button10_click"}, stylesFactory:function () : void
                                {
                                    this.right = "30";
                                    return;
                                }// end function
                                , propertiesFactory:function () : Object
                                {
                                    return {label:"", styleName:"EstablishmentButton", buttonMode:true};
                                }// end function
                                }), new UIComponentDescriptor({type:Button, events:{click:"___Temple_Button11_click"}, stylesFactory:function () : void
                                {
                                    this.right = "30";
                                    return;
                                }// end function
                                , propertiesFactory:function () : Object
                                {
                                    return {label:"", styleName:"AdmissionButton", buttonMode:true};
                                }// end function
                                }), new UIComponentDescriptor({type:Button, events:{click:"___Temple_Button12_click"}, stylesFactory:function () : void
                                {
                                    this.right = "30";
                                    return;
                                }// end function
                                , propertiesFactory:function () : Object
                                {
                                    return {label:"", styleName:"IndulgenceButton", buttonMode:true};
                                }// end function
                                })]};
                            }// end function
                            })]};
                        }// end function
                        }), new UIComponentDescriptor({type:VBox, stylesFactory:function () : void
                        {
                            this.right = "30";
                            return;
                        }// end function
                        , propertiesFactory:function () : Object
                        {
                            return {y:191, childDescriptors:[new UIComponentDescriptor({type:Button, events:{click:"___Temple_Button13_click"}, propertiesFactory:function () : Object
                            {
                                return {label:"", styleName:"MarketButton", buttonMode:true};
                            }// end function
                            }), new UIComponentDescriptor({type:Button, events:{click:"___Temple_Button14_click"}, propertiesFactory:function () : Object
                            {
                                return {label:"", styleName:"BarButton", buttonMode:true};
                            }// end function
                            }), new UIComponentDescriptor({type:Button, events:{click:"___Temple_Button15_click"}, propertiesFactory:function () : Object
                            {
                                return {label:"", styleName:"ColosseumButton", buttonMode:true};
                            }// end function
                            })]};
                        }// end function
                        }), new UIComponentDescriptor({type:Button, events:{click:"___Temple_Button16_click"}, stylesFactory:function () : void
                        {
                            this.right = "30";
                            return;
                        }// end function
                        , propertiesFactory:function () : Object
                        {
                            return {label:"", styleName:"Home", y:272, buttonMode:true};
                        }// end function
                        })]};
                    }// end function
                    })]};
                }// end function
                })]};
            }// end function
            });
            toDay = new Date();
            _1645665610nowMonth = toDay.month + 1;
            _1039636250nowDay = toDay.date;
            _embed_mxml__images_city_onmyo_guild_jpg_1561510005 = Temple__embed_mxml__images_city_onmyo_guild_jpg_1561510005;
            _bindings = [];
            _watchers = [];
            _bindingsByDestination = {};
            _bindingsBeginWithWord = {};
            mx_internal::_document = this;
            this.width = 760;
            this.height = 560;
            return;
        }// end function

        private function get _menu1() : Class
        {
            return this._1471415885_menu1;
        }// end function

        private function set _menu1(param1:Class) : void
        {
            var _loc_2:* = this._1471415885_menu1;
            if (_loc_2 !== param1)
            {
                this._1471415885_menu1 = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "_menu1", _loc_2, param1));
            }
            return;
        }// end function

        public function set menuBar1(param1:Image) : void
        {
            var _loc_2:* = this._604321667menuBar1;
            if (_loc_2 !== param1)
            {
                this._604321667menuBar1 = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "menuBar1", _loc_2, param1));
            }
            return;
        }// end function

        private function _Temple_bindingExprs() : void
        {
            var _loc_1:* = undefined;
            _loc_1 = _menu2;
            _loc_1 = _menu1;
            _loc_1 = _menu3;
            _loc_1 = _menu3;
            _loc_1 = _menu3;
            _loc_1 = _menu3;
            return;
        }// end function

        public function init() : void
        {
            if (_playerVO.guildMaster)
            {
                guildButtonViewStack.selectedIndex = 0;
            }
            else if (_playerVO.guild)
            {
                guildButtonViewStack.selectedIndex = 1;
            }
            else if (_playerVO.application)
            {
                guildButtonViewStack.selectedIndex = 2;
            }
            else
            {
                guildButtonViewStack.selectedIndex = 3;
            }
            return;
        }// end function

        public function ___Temple_Button1_click(event:MouseEvent) : void
        {
            sendEvent(Viking.CITY_ACTION_MANAGE_GUILD);
            return;
        }// end function

        override public function initialize() : void
        {
            var target:Temple;
            var watcherSetupUtilClass:Object;
            .mx_internal::setDocumentDescriptor(_documentDescriptor_);
            var bindings:* = _Temple_bindingsSetup();
            var watchers:Array;
            target;
            if (_watcherSetupUtil == null)
            {
                watcherSetupUtilClass = getDefinitionByName("_com_kbmj_viking_view_city_TempleWatcherSetupUtil");
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

        public function ___Temple_Button5_click(event:MouseEvent) : void
        {
            sendEvent(Viking.CITY_ACTION_SEARCH_GUILD);
            return;
        }// end function

        public function ___Temple_Button7_click(event:MouseEvent) : void
        {
            sendEvent(Viking.CITY_ACTION_APPLICATION_CANCEL);
            return;
        }// end function

        private function _Temple_bindingsSetup() : Array
        {
            var binding:Binding;
            var result:Array;
            binding = new Binding(this, function () : Object
            {
                return _menu2;
            }// end function
            , function (param1:Object) : void
            {
                menuBar2.source = param1;
                return;
            }// end function
            , "menuBar2.source");
            result[0] = binding;
            binding = new Binding(this, function () : Object
            {
                return _menu1;
            }// end function
            , function (param1:Object) : void
            {
                menuBar1.source = param1;
                return;
            }// end function
            , "menuBar1.source");
            result[1] = binding;
            binding = new Binding(this, function () : Object
            {
                return _menu3;
            }// end function
            , function (param1:Object) : void
            {
                _Temple_VBox1.setStyle("backgroundImage", param1);
                return;
            }// end function
            , "_Temple_VBox1.backgroundImage");
            result[2] = binding;
            binding = new Binding(this, function () : Object
            {
                return _menu3;
            }// end function
            , function (param1:Object) : void
            {
                _Temple_VBox2.setStyle("backgroundImage", param1);
                return;
            }// end function
            , "_Temple_VBox2.backgroundImage");
            result[3] = binding;
            binding = new Binding(this, function () : Object
            {
                return _menu3;
            }// end function
            , function (param1:Object) : void
            {
                _Temple_VBox3.setStyle("backgroundImage", param1);
                return;
            }// end function
            , "_Temple_VBox3.backgroundImage");
            result[4] = binding;
            binding = new Binding(this, function () : Object
            {
                return _menu3;
            }// end function
            , function (param1:Object) : void
            {
                _Temple_VBox4.setStyle("backgroundImage", param1);
                return;
            }// end function
            , "_Temple_VBox4.backgroundImage");
            result[5] = binding;
            return result;
        }// end function

        public function ___Temple_Button9_click(event:MouseEvent) : void
        {
            sendEvent(Viking.CITY_ACTION_BUY_INDULGENCE);
            return;
        }// end function

        private function set nowDay(param1:int) : void
        {
            var _loc_2:* = this._1039636250nowDay;
            if (_loc_2 !== param1)
            {
                this._1039636250nowDay = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "nowDay", _loc_2, param1));
            }
            return;
        }// end function

        public function set base(param1:Image) : void
        {
            var _loc_2:* = this._3016401base;
            if (_loc_2 !== param1)
            {
                this._3016401base = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "base", _loc_2, param1));
            }
            return;
        }// end function

        public function ___Temple_Button3_click(event:MouseEvent) : void
        {
            sendEvent(Viking.CITY_ACTION_BUY_INDULGENCE);
            return;
        }// end function

        public function ___Temple_Button10_click(event:MouseEvent) : void
        {
            sendEvent(Viking.CITY_ACTION_CREATE_GUILD);
            return;
        }// end function

        public function ___Temple_Button12_click(event:MouseEvent) : void
        {
            sendEvent(Viking.CITY_ACTION_BUY_INDULGENCE);
            return;
        }// end function

        public function ___Temple_Button14_click(event:MouseEvent) : void
        {
            sendEvent(Viking.CITY_ACTION_SHOW_BAR);
            return;
        }// end function

        private function set _menu4(param1:Class) : void
        {
            var _loc_2:* = this._1471415882_menu4;
            if (_loc_2 !== param1)
            {
                this._1471415882_menu4 = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "_menu4", _loc_2, param1));
            }
            return;
        }// end function

        public function set playerVO(param1:PlayerVO) : void
        {
            _playerVO = param1;
            return;
        }// end function

        private function get _menu3() : Class
        {
            return this._1471415883_menu3;
        }// end function

        private function set nowMonth(param1:int) : void
        {
            var _loc_2:* = this._1645665610nowMonth;
            if (_loc_2 !== param1)
            {
                this._1645665610nowMonth = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "nowMonth", _loc_2, param1));
            }
            return;
        }// end function

        private function get _menu2() : Class
        {
            return this._1471415884_menu2;
        }// end function

        private function get _playerVO() : PlayerVO
        {
            return this._1969791673_playerVO;
        }// end function

        public function set guildButtonViewStack(param1:ViewStack) : void
        {
            var _loc_2:* = this._1979637922guildButtonViewStack;
            if (_loc_2 !== param1)
            {
                this._1979637922guildButtonViewStack = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "guildButtonViewStack", _loc_2, param1));
            }
            return;
        }// end function

        private function get _menu4() : Class
        {
            return this._1471415882_menu4;
        }// end function

        public function ___Temple_Button16_click(event:MouseEvent) : void
        {
            sendEvent(Viking.CITY_ACTION_BACK_HOME);
            return;
        }// end function

        public function ___Temple_Button2_click(event:MouseEvent) : void
        {
            sendEvent(Viking.CITY_ACTION_SEARCH_GUILD);
            return;
        }// end function

        public function ___Temple_Button4_click(event:MouseEvent) : void
        {
            sendEvent(Viking.CITY_ACTION_QUIT_GUILD);
            return;
        }// end function

        private function get nowMonth() : int
        {
            return this._1645665610nowMonth;
        }// end function

        public function ___Temple_Button6_click(event:MouseEvent) : void
        {
            sendEvent(Viking.CITY_ACTION_BUY_INDULGENCE);
            return;
        }// end function

        public function ___Temple_Button8_click(event:MouseEvent) : void
        {
            sendEvent(Viking.CITY_ACTION_SEARCH_GUILD);
            return;
        }// end function

        public function get guildButtonViewStack() : ViewStack
        {
            return this._1979637922guildButtonViewStack;
        }// end function

        public function get base() : Image
        {
            return this._3016401base;
        }// end function

        public function set menu1(param1:Class) : void
        {
            _menu1 = param1;
            return;
        }// end function

        public function set menu3(param1:Class) : void
        {
            _menu3 = param1;
            return;
        }// end function

        public function set menu4(param1:Class) : void
        {
            _menu4 = param1;
            return;
        }// end function

        public function set menu2(param1:Class) : void
        {
            _menu2 = param1;
            return;
        }// end function

        public function ___Temple_Button11_click(event:MouseEvent) : void
        {
            sendEvent(Viking.CITY_ACTION_SEARCH_GUILD);
            return;
        }// end function

        private function set _menu2(param1:Class) : void
        {
            var _loc_2:* = this._1471415884_menu2;
            if (_loc_2 !== param1)
            {
                this._1471415884_menu2 = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "_menu2", _loc_2, param1));
            }
            return;
        }// end function

        private function set _menu3(param1:Class) : void
        {
            var _loc_2:* = this._1471415883_menu3;
            if (_loc_2 !== param1)
            {
                this._1471415883_menu3 = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "_menu3", _loc_2, param1));
            }
            return;
        }// end function

        public function ___Temple_Button15_click(event:MouseEvent) : void
        {
            sendEvent(Viking.ENTER_LOBBY);
            return;
        }// end function

        private function get nowDay() : int
        {
            return this._1039636250nowDay;
        }// end function

        public function ___Temple_Button13_click(event:MouseEvent) : void
        {
            sendEvent(Viking.CITY_ACTION_SHOW_MARKET);
            return;
        }// end function

        private function set _playerVO(param1:PlayerVO) : void
        {
            var _loc_2:* = this._1969791673_playerVO;
            if (_loc_2 !== param1)
            {
                this._1969791673_playerVO = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "_playerVO", _loc_2, param1));
            }
            return;
        }// end function

        public function set menuBar2(param1:Image) : void
        {
            var _loc_2:* = this._604321666menuBar2;
            if (_loc_2 !== param1)
            {
                this._604321666menuBar2 = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "menuBar2", _loc_2, param1));
            }
            return;
        }// end function

        public function get menuBar1() : Image
        {
            return this._604321667menuBar1;
        }// end function

        public function get menuBar2() : Image
        {
            return this._604321666menuBar2;
        }// end function

        public static function set watcherSetupUtil(param1:IWatcherSetupUtil) : void
        {
            Temple._watcherSetupUtil = param1;
            return;
        }// end function

    }
}
