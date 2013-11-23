package com.kbmj.viking.view.city
{
    import com.kbmj.viking.lib.*;
    import com.kbmj.viking.view.*;
    import com.kbmj.viking.vo.*;
    import com.kbmj.viking.vo.city.*;
    import flash.display.*;
    import flash.events.*;
    import flash.utils.*;
    import mx.binding.*;
    import mx.containers.*;
    import mx.controls.*;
    import mx.core.*;
    import mx.events.*;

    public class GuildManagementWindow extends PopupWindow implements IBindingClient
    {
        private var _documentDescriptor_:UIComponentDescriptor;
        private var _embed_mxml__swf_home_city_button_guild_info_swf_348601741:Class;
        private var _1334344881canLevelUp:Boolean = false;
        private var _696348470needsTerritoryText:String;
        public var _GuildManagementWindow_Label1:Label;
        public var _GuildManagementWindow_Label2:Label;
        private var _embed_mxml__swf_home_city_button_guild_be_promoted_swf_974574999:Class;
        var _bindingsByDestination:Object;
        public var _GuildManagementWindow_Text1:Text;
        public var _GuildManagementWindow_Text2:Text;
        public var _GuildManagementWindow_Text3:Text;
        public var _GuildManagementWindow_Text4:Text;
        public var _GuildManagementWindow_Text5:Text;
        public var _GuildManagementWindow_Text6:Text;
        public var _GuildManagementWindow_Text7:Text;
        public var _GuildManagementWindow_Grid1:Grid;
        public var _GuildManagementWindow_Grid2:Grid;
        private var _1193840764_swf_close:MovieClipLoaderAsset;
        public var _GuildManagementWindow_Text8:Text;
        private var _1218643219_swf_close_window:MovieClipLoaderAsset;
        private var _embed_mxml__swf_home_city_button_guild_dismiss_swf_1933349709:Class;
        private var _1618494886masterCanvas:Canvas;
        public var _GuildManagementWindow_Image1:Image;
        private var _1879273818playerVO:PlayerVO;
        public var _GuildManagementWindow_Image7:Image;
        public var _GuildManagementWindow_Image8:Image;
        var _watchers:Array;
        private var _embed_mxml__swf_home_city_button_guild_appoint_swf_54321453:Class;
        public var _GuildManagementWindow_GridItem10:GridItem;
        private var _1896677185windowLayer:Canvas;
        private var _1834129611levelUpMask:Sprite;
        var _bindingsBeginWithWord:Object;
        private var _1713757730_guildDetailVO:GuildDetailVO;
        var _bindings:Array;
        private var _1579749686needsRankText:String;
        private var _embed_mxml__swf_home_city_button_guild_withdraw_swf_1285950597:Class;
        private static const WINDOW_X:int = 20;
        private static const WINDOW_Y:int = 80;
        private static const BUTTON_X:int = 245;
        private static const BUTTON_Y:int = 490;
        public static const GUILD_LEVEL_UP:String = "guildLevelRankUp";
        public static const CLOSE_GUILD_MANAGEMENT_WINDOW:String = "closeGuildManagementWindow";
        private static var _watcherSetupUtil:IWatcherSetupUtil;
        private static const WINDOW_HT:int = 460;
        private static const WINDOW_WD:int = 560;

        public function GuildManagementWindow()
        {
            _documentDescriptor_ = new UIComponentDescriptor({type:PopupWindow, propertiesFactory:function () : Object
            {
                return {width:760, height:560, childDescriptors:[new UIComponentDescriptor({type:Canvas, id:"windowLayer"}), new UIComponentDescriptor({type:Text, id:"_GuildManagementWindow_Text1", propertiesFactory:function () : Object
                {
                    return {styleName:"DealTitle"};
                }// end function
                }), new UIComponentDescriptor({type:Image, id:"_GuildManagementWindow_Image1", events:{click:"___GuildManagementWindow_Image1_click"}}), new UIComponentDescriptor({type:Grid, id:"_GuildManagementWindow_Grid1", stylesFactory:function () : void
                {
                    this.horizontalGap = 0;
                    this.verticalGap = 0;
                    return;
                }// end function
                , propertiesFactory:function () : Object
                {
                    return {childDescriptors:[new UIComponentDescriptor({type:GridRow, propertiesFactory:function () : Object
                    {
                        return {childDescriptors:[new UIComponentDescriptor({type:GridItem, stylesFactory:function () : void
                        {
                            this.borderStyle = "solid";
                            this.borderColor = 2829099;
                            this.borderSides = "top bottom left right";
                            this.backgroundColor = 2115121;
                            return;
                        }// end function
                        , propertiesFactory:function () : Object
                        {
                            return {childDescriptors:[new UIComponentDescriptor({type:Image, events:{click:"___GuildManagementWindow_Image2_click"}, propertiesFactory:function () : Object
                            {
                                return {source:_embed_mxml__swf_home_city_button_guild_withdraw_swf_1285950597};
                            }// end function
                            })]};
                        }// end function
                        }), new UIComponentDescriptor({type:GridItem, stylesFactory:function () : void
                        {
                            this.borderStyle = "solid";
                            this.borderColor = 2829099;
                            this.borderSides = "top bottom right";
                            this.backgroundColor = 14803650;
                            return;
                        }// end function
                        , propertiesFactory:function () : Object
                        {
                            return {childDescriptors:[new UIComponentDescriptor({type:Text, id:"_GuildManagementWindow_Text2", propertiesFactory:function () : Object
                            {
                                return {styleName:"DealText3"};
                            }// end function
                            })]};
                        }// end function
                        })]};
                    }// end function
                    }), new UIComponentDescriptor({type:GridRow, propertiesFactory:function () : Object
                    {
                        return {childDescriptors:[new UIComponentDescriptor({type:GridItem, stylesFactory:function () : void
                        {
                            this.borderStyle = "solid";
                            this.borderColor = 2829099;
                            this.borderSides = "bottom left right";
                            this.backgroundColor = 2115121;
                            return;
                        }// end function
                        , propertiesFactory:function () : Object
                        {
                            return {childDescriptors:[new UIComponentDescriptor({type:Image, events:{click:"___GuildManagementWindow_Image3_click"}, propertiesFactory:function () : Object
                            {
                                return {source:_embed_mxml__swf_home_city_button_guild_appoint_swf_54321453};
                            }// end function
                            })]};
                        }// end function
                        }), new UIComponentDescriptor({type:GridItem, stylesFactory:function () : void
                        {
                            this.borderStyle = "solid";
                            this.borderColor = 2829099;
                            this.borderSides = "bottom right";
                            this.backgroundColor = 16119005;
                            return;
                        }// end function
                        , propertiesFactory:function () : Object
                        {
                            return {childDescriptors:[new UIComponentDescriptor({type:Text, id:"_GuildManagementWindow_Text3", propertiesFactory:function () : Object
                            {
                                return {styleName:"DealText3"};
                            }// end function
                            })]};
                        }// end function
                        })]};
                    }// end function
                    }), new UIComponentDescriptor({type:GridRow, propertiesFactory:function () : Object
                    {
                        return {childDescriptors:[new UIComponentDescriptor({type:GridItem, stylesFactory:function () : void
                        {
                            this.borderStyle = "solid";
                            this.borderColor = 2829099;
                            this.borderSides = "bottom left right";
                            this.backgroundColor = 2115121;
                            return;
                        }// end function
                        , propertiesFactory:function () : Object
                        {
                            return {childDescriptors:[new UIComponentDescriptor({type:Image, events:{click:"___GuildManagementWindow_Image4_click"}, propertiesFactory:function () : Object
                            {
                                return {source:_embed_mxml__swf_home_city_button_guild_info_swf_348601741};
                            }// end function
                            })]};
                        }// end function
                        }), new UIComponentDescriptor({type:GridItem, stylesFactory:function () : void
                        {
                            this.borderStyle = "solid";
                            this.borderColor = 2829099;
                            this.borderSides = "bottom right";
                            this.backgroundColor = 14803650;
                            return;
                        }// end function
                        , propertiesFactory:function () : Object
                        {
                            return {childDescriptors:[new UIComponentDescriptor({type:Text, id:"_GuildManagementWindow_Text4", propertiesFactory:function () : Object
                            {
                                return {styleName:"DealText3"};
                            }// end function
                            })]};
                        }// end function
                        })]};
                    }// end function
                    }), new UIComponentDescriptor({type:GridRow, propertiesFactory:function () : Object
                    {
                        return {childDescriptors:[new UIComponentDescriptor({type:GridItem, stylesFactory:function () : void
                        {
                            this.borderStyle = "solid";
                            this.borderColor = 2829099;
                            this.borderSides = "bottom left right";
                            this.backgroundColor = 2115121;
                            return;
                        }// end function
                        , propertiesFactory:function () : Object
                        {
                            return {childDescriptors:[new UIComponentDescriptor({type:Image, events:{click:"___GuildManagementWindow_Image5_click"}, propertiesFactory:function () : Object
                            {
                                return {source:_embed_mxml__swf_home_city_button_guild_dismiss_swf_1933349709};
                            }// end function
                            })]};
                        }// end function
                        }), new UIComponentDescriptor({type:GridItem, stylesFactory:function () : void
                        {
                            this.borderStyle = "solid";
                            this.borderColor = 2829099;
                            this.borderSides = "bottom right";
                            this.backgroundColor = 16119005;
                            return;
                        }// end function
                        , propertiesFactory:function () : Object
                        {
                            return {childDescriptors:[new UIComponentDescriptor({type:Text, id:"_GuildManagementWindow_Text5", propertiesFactory:function () : Object
                            {
                                return {styleName:"DealText3"};
                            }// end function
                            })]};
                        }// end function
                        })]};
                    }// end function
                    })]};
                }// end function
                }), new UIComponentDescriptor({type:Grid, id:"_GuildManagementWindow_Grid2", stylesFactory:function () : void
                {
                    this.horizontalGap = 0;
                    this.verticalGap = 0;
                    return;
                }// end function
                , propertiesFactory:function () : Object
                {
                    return {childDescriptors:[new UIComponentDescriptor({type:GridRow, propertiesFactory:function () : Object
                    {
                        return {childDescriptors:[new UIComponentDescriptor({type:GridItem, stylesFactory:function () : void
                        {
                            this.borderStyle = "solid";
                            this.borderColor = 2829099;
                            this.borderSides = "top bottom left right";
                            this.backgroundColor = 2115121;
                            this.verticalAlign = "middle";
                            return;
                        }// end function
                        , propertiesFactory:function () : Object
                        {
                            return {rowSpan:4, childDescriptors:[new UIComponentDescriptor({type:Image, events:{click:"___GuildManagementWindow_Image6_click"}, propertiesFactory:function () : Object
                            {
                                return {source:_embed_mxml__swf_home_city_button_guild_be_promoted_swf_974574999};
                            }// end function
                            })]};
                        }// end function
                        })]};
                    }// end function
                    }), new UIComponentDescriptor({type:GridRow, propertiesFactory:function () : Object
                    {
                        return {childDescriptors:[new UIComponentDescriptor({type:GridItem, id:"_GuildManagementWindow_GridItem10", stylesFactory:function () : void
                        {
                            this.borderStyle = "solid";
                            this.borderColor = 2829099;
                            this.borderSides = "top bottom right";
                            this.backgroundColor = 14803650;
                            return;
                        }// end function
                        , propertiesFactory:function () : Object
                        {
                            return {colSpan:2, childDescriptors:[new UIComponentDescriptor({type:Text, id:"_GuildManagementWindow_Text6", propertiesFactory:function () : Object
                            {
                                return {styleName:"DealText3"};
                            }// end function
                            })]};
                        }// end function
                        })]};
                    }// end function
                    }), new UIComponentDescriptor({type:GridRow, propertiesFactory:function () : Object
                    {
                        return {childDescriptors:[new UIComponentDescriptor({type:GridItem, stylesFactory:function () : void
                        {
                            this.borderStyle = "solid";
                            this.borderColor = 2829099;
                            this.borderSides = "bottom right";
                            this.backgroundColor = 2115121;
                            return;
                        }// end function
                        , propertiesFactory:function () : Object
                        {
                            return {percentWidth:24, childDescriptors:[new UIComponentDescriptor({type:Label, id:"_GuildManagementWindow_Label1", stylesFactory:function () : void
                            {
                                this.fontSize = 14;
                                this.textIndent = 8;
                                this.color = 15658734;
                                return;
                            }// end function
                            })]};
                        }// end function
                        }), new UIComponentDescriptor({type:GridItem, stylesFactory:function () : void
                        {
                            this.borderStyle = "solid";
                            this.borderColor = 2829099;
                            this.borderSides = "bottom right";
                            this.backgroundColor = 16119005;
                            return;
                        }// end function
                        , propertiesFactory:function () : Object
                        {
                            return {percentWidth:80, childDescriptors:[new UIComponentDescriptor({type:Text, id:"_GuildManagementWindow_Text7", propertiesFactory:function () : Object
                            {
                                return {styleName:"DealText3"};
                            }// end function
                            })]};
                        }// end function
                        })]};
                    }// end function
                    }), new UIComponentDescriptor({type:GridRow, propertiesFactory:function () : Object
                    {
                        return {childDescriptors:[new UIComponentDescriptor({type:GridItem, stylesFactory:function () : void
                        {
                            this.borderStyle = "solid";
                            this.borderColor = 2829099;
                            this.borderSides = "bottom right";
                            this.backgroundColor = 2115121;
                            return;
                        }// end function
                        , propertiesFactory:function () : Object
                        {
                            return {percentWidth:24, childDescriptors:[new UIComponentDescriptor({type:Label, id:"_GuildManagementWindow_Label2", stylesFactory:function () : void
                            {
                                this.fontSize = 14;
                                this.textIndent = 8;
                                this.color = 15658734;
                                return;
                            }// end function
                            })]};
                        }// end function
                        }), new UIComponentDescriptor({type:GridItem, stylesFactory:function () : void
                        {
                            this.borderStyle = "solid";
                            this.borderColor = 2829099;
                            this.borderSides = "bottom right";
                            this.backgroundColor = 14803650;
                            return;
                        }// end function
                        , propertiesFactory:function () : Object
                        {
                            return {percentWidth:80, childDescriptors:[new UIComponentDescriptor({type:Text, id:"_GuildManagementWindow_Text8", propertiesFactory:function () : Object
                            {
                                return {width:100, styleName:"DealText3"};
                            }// end function
                            })]};
                        }// end function
                        })]};
                    }// end function
                    })]};
                }// end function
                }), new UIComponentDescriptor({type:Image, id:"_GuildManagementWindow_Image7"}), new UIComponentDescriptor({type:Image, id:"_GuildManagementWindow_Image8", events:{click:"___GuildManagementWindow_Image8_click"}}), new UIComponentDescriptor({type:Canvas, id:"masterCanvas"})]};
            }// end function
            });
            _1193840764_swf_close = new Viking.EmbedSwfButtonCommon();
            _1218643219_swf_close_window = new Viking.EmbedSwfButtonCloseWindow();
            _1834129611levelUpMask = drawSquare(0, 0, 76, 73, 0);
            _embed_mxml__swf_home_city_button_guild_appoint_swf_54321453 = GuildManagementWindow__embed_mxml__swf_home_city_button_guild_appoint_swf_54321453;
            _embed_mxml__swf_home_city_button_guild_be_promoted_swf_974574999 = GuildManagementWindow__embed_mxml__swf_home_city_button_guild_be_promoted_swf_974574999;
            _embed_mxml__swf_home_city_button_guild_dismiss_swf_1933349709 = GuildManagementWindow__embed_mxml__swf_home_city_button_guild_dismiss_swf_1933349709;
            _embed_mxml__swf_home_city_button_guild_info_swf_348601741 = GuildManagementWindow__embed_mxml__swf_home_city_button_guild_info_swf_348601741;
            _embed_mxml__swf_home_city_button_guild_withdraw_swf_1285950597 = GuildManagementWindow__embed_mxml__swf_home_city_button_guild_withdraw_swf_1285950597;
            _bindings = [];
            _watchers = [];
            _bindingsByDestination = {};
            _bindingsBeginWithWord = {};
            mx_internal::_document = this;
            this.width = 760;
            this.height = 560;
            this.addEventListener("creationComplete", ___GuildManagementWindow_PopupWindow1_creationComplete);
            return;
        }// end function

        public function closeWindow() : void
        {
            dispatchEvent(new Event(CLOSE_GUILD_MANAGEMENT_WINDOW));
            onClose();
            MovieClip(Loader(_swf_close.getChildAt(0)).content).gotoAndPlay(0);
            MovieClip(Loader(_swf_close.getChildAt(0)).content).gotoAndPlay("button_close");
            MovieClip(Loader(_swf_close_window.getChildAt(0)).content).gotoAndPlay(1);
            return;
        }// end function

        private function get _swf_close_window() : MovieClipLoaderAsset
        {
            return this._1218643219_swf_close_window;
        }// end function

        private function set _swf_close_window(param1:MovieClipLoaderAsset) : void
        {
            var _loc_2:* = this._1218643219_swf_close_window;
            if (_loc_2 !== param1)
            {
                this._1218643219_swf_close_window = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "_swf_close_window", _loc_2, param1));
            }
            return;
        }// end function

        private function get needsRankText() : String
        {
            return this._1579749686needsRankText;
        }// end function

        public function ___GuildManagementWindow_Image3_click(event:MouseEvent) : void
        {
            sendEvent(Viking.CITY_ACTION_APPOINT_GUILDMASTER);
            return;
        }// end function

        public function get windowLayer() : Canvas
        {
            return this._1896677185windowLayer;
        }// end function

        private function _GuildManagementWindow_bindingsSetup() : Array
        {
            var binding:Binding;
            var result:Array;
            binding = new Binding(this, function () : Number
            {
                return WINDOW_X;
            }// end function
            , function (param1:Number) : void
            {
                _GuildManagementWindow_Text1.x = param1;
                return;
            }// end function
            , "_GuildManagementWindow_Text1.x");
            result[0] = binding;
            binding = new Binding(this, function () : Number
            {
                return WINDOW_Y;
            }// end function
            , function (param1:Number) : void
            {
                _GuildManagementWindow_Text1.y = param1;
                return;
            }// end function
            , "_GuildManagementWindow_Text1.y");
            result[1] = binding;
            binding = new Binding(this, function () : Number
            {
                return WINDOW_WD;
            }// end function
            , function (param1:Number) : void
            {
                _GuildManagementWindow_Text1.width = param1;
                return;
            }// end function
            , "_GuildManagementWindow_Text1.width");
            result[2] = binding;
            binding = new Binding(this, function () : String
            {
                var _loc_1:* = Utils.i18n("guildManagementManagement");
                var _loc_2:* = _loc_1 == undefined ? (null) : (String(_loc_1));
                return _loc_2;
            }// end function
            , function (param1:String) : void
            {
                _GuildManagementWindow_Text1.text = param1;
                return;
            }// end function
            , "_GuildManagementWindow_Text1.text");
            result[3] = binding;
            binding = new Binding(this, function () : Number
            {
                return WINDOW_X + WINDOW_WD - 25;
            }// end function
            , function (param1:Number) : void
            {
                _GuildManagementWindow_Image1.x = param1;
                return;
            }// end function
            , "_GuildManagementWindow_Image1.x");
            result[4] = binding;
            binding = new Binding(this, function () : Number
            {
                return WINDOW_Y;
            }// end function
            , function (param1:Number) : void
            {
                _GuildManagementWindow_Image1.y = param1;
                return;
            }// end function
            , "_GuildManagementWindow_Image1.y");
            result[5] = binding;
            binding = new Binding(this, function () : Object
            {
                return _swf_close_window;
            }// end function
            , function (param1:Object) : void
            {
                _GuildManagementWindow_Image1.source = param1;
                return;
            }// end function
            , "_GuildManagementWindow_Image1.source");
            result[6] = binding;
            binding = new Binding(this, function () : Number
            {
                return WINDOW_X + 20;
            }// end function
            , function (param1:Number) : void
            {
                _GuildManagementWindow_Grid1.x = param1;
                return;
            }// end function
            , "_GuildManagementWindow_Grid1.x");
            result[7] = binding;
            binding = new Binding(this, function () : Number
            {
                return WINDOW_Y + 60;
            }// end function
            , function (param1:Number) : void
            {
                _GuildManagementWindow_Grid1.y = param1;
                return;
            }// end function
            , "_GuildManagementWindow_Grid1.y");
            result[8] = binding;
            binding = new Binding(this, function () : Number
            {
                return WINDOW_WD - 40 - 80;
            }// end function
            , function (param1:Number) : void
            {
                _GuildManagementWindow_Text2.width = param1;
                return;
            }// end function
            , "_GuildManagementWindow_Text2.width");
            result[9] = binding;
            binding = new Binding(this, function () : String
            {
                var _loc_1:* = Utils.i18n("guildManagementWithdrawal");
                var _loc_2:* = _loc_1 == undefined ? (null) : (String(_loc_1));
                return _loc_2;
            }// end function
            , function (param1:String) : void
            {
                _GuildManagementWindow_Text2.text = param1;
                return;
            }// end function
            , "_GuildManagementWindow_Text2.text");
            result[10] = binding;
            binding = new Binding(this, function () : Number
            {
                return WINDOW_WD - 40 - 80;
            }// end function
            , function (param1:Number) : void
            {
                _GuildManagementWindow_Text3.width = param1;
                return;
            }// end function
            , "_GuildManagementWindow_Text3.width");
            result[11] = binding;
            binding = new Binding(this, function () : String
            {
                var _loc_1:* = Utils.i18n("guildManagementAppointManagerAndResignation");
                var _loc_2:* = _loc_1 == undefined ? (null) : (String(_loc_1));
                return _loc_2;
            }// end function
            , function (param1:String) : void
            {
                _GuildManagementWindow_Text3.text = param1;
                return;
            }// end function
            , "_GuildManagementWindow_Text3.text");
            result[12] = binding;
            binding = new Binding(this, function () : Number
            {
                return WINDOW_WD - 40 - 80;
            }// end function
            , function (param1:Number) : void
            {
                _GuildManagementWindow_Text4.width = param1;
                return;
            }// end function
            , "_GuildManagementWindow_Text4.width");
            result[13] = binding;
            binding = new Binding(this, function () : String
            {
                var _loc_1:* = Utils.i18n("guildManagemenatChangeInfo");
                var _loc_2:* = _loc_1 == undefined ? (null) : (String(_loc_1));
                return _loc_2;
            }// end function
            , function (param1:String) : void
            {
                _GuildManagementWindow_Text4.text = param1;
                return;
            }// end function
            , "_GuildManagementWindow_Text4.text");
            result[14] = binding;
            binding = new Binding(this, function () : Number
            {
                return WINDOW_WD - 40 - 80;
            }// end function
            , function (param1:Number) : void
            {
                _GuildManagementWindow_Text5.width = param1;
                return;
            }// end function
            , "_GuildManagementWindow_Text5.width");
            result[15] = binding;
            binding = new Binding(this, function () : String
            {
                var _loc_1:* = Utils.i18n("guildManagementExpulsion");
                var _loc_2:* = _loc_1 == undefined ? (null) : (String(_loc_1));
                return _loc_2;
            }// end function
            , function (param1:String) : void
            {
                _GuildManagementWindow_Text5.text = param1;
                return;
            }// end function
            , "_GuildManagementWindow_Text5.text");
            result[16] = binding;
            binding = new Binding(this, function () : Number
            {
                return WINDOW_X + 20;
            }// end function
            , function (param1:Number) : void
            {
                _GuildManagementWindow_Grid2.x = param1;
                return;
            }// end function
            , "_GuildManagementWindow_Grid2.x");
            result[17] = binding;
            binding = new Binding(this, function () : Number
            {
                return WINDOW_Y + 240;
            }// end function
            , function (param1:Number) : void
            {
                _GuildManagementWindow_Grid2.y = param1;
                return;
            }// end function
            , "_GuildManagementWindow_Grid2.y");
            result[18] = binding;
            binding = new Binding(this, function () : Number
            {
                return WINDOW_WD - 40;
            }// end function
            , function (param1:Number) : void
            {
                _GuildManagementWindow_Grid2.width = param1;
                return;
            }// end function
            , "_GuildManagementWindow_Grid2.width");
            result[19] = binding;
            binding = new Binding(this, function () : Number
            {
                return WINDOW_WD - 40 - 80;
            }// end function
            , function (param1:Number) : void
            {
                _GuildManagementWindow_GridItem10.width = param1;
                return;
            }// end function
            , "_GuildManagementWindow_GridItem10.width");
            result[20] = binding;
            binding = new Binding(this, function () : String
            {
                var _loc_1:* = Utils.i18n("guildManagementLevelUp");
                var _loc_2:* = _loc_1 == undefined ? (null) : (String(_loc_1));
                return _loc_2;
            }// end function
            , function (param1:String) : void
            {
                _GuildManagementWindow_Text6.text = param1;
                return;
            }// end function
            , "_GuildManagementWindow_Text6.text");
            result[21] = binding;
            binding = new Binding(this, function () : String
            {
                var _loc_1:* = Utils.i18n("guildManagementNecessaryRank");
                var _loc_2:* = _loc_1 == undefined ? (null) : (String(_loc_1));
                return _loc_2;
            }// end function
            , function (param1:String) : void
            {
                _GuildManagementWindow_Label1.text = param1;
                return;
            }// end function
            , "_GuildManagementWindow_Label1.text");
            result[22] = binding;
            binding = new Binding(this, function () : String
            {
                var _loc_1:* = needsRankText;
                var _loc_2:* = _loc_1 == undefined ? (null) : (String(_loc_1));
                return _loc_2;
            }// end function
            , function (param1:String) : void
            {
                _GuildManagementWindow_Text7.text = param1;
                return;
            }// end function
            , "_GuildManagementWindow_Text7.text");
            result[23] = binding;
            binding = new Binding(this, function () : String
            {
                var _loc_1:* = Utils.i18n("guildManagementNecessaryProperty");
                var _loc_2:* = _loc_1 == undefined ? (null) : (String(_loc_1));
                return _loc_2;
            }// end function
            , function (param1:String) : void
            {
                _GuildManagementWindow_Label2.text = param1;
                return;
            }// end function
            , "_GuildManagementWindow_Label2.text");
            result[24] = binding;
            binding = new Binding(this, function () : String
            {
                var _loc_1:* = needsTerritoryText;
                var _loc_2:* = _loc_1 == undefined ? (null) : (String(_loc_1));
                return _loc_2;
            }// end function
            , function (param1:String) : void
            {
                _GuildManagementWindow_Text8.text = param1;
                return;
            }// end function
            , "_GuildManagementWindow_Text8.text");
            result[25] = binding;
            binding = new Binding(this, function () : Number
            {
                return WINDOW_X + 20;
            }// end function
            , function (param1:Number) : void
            {
                _GuildManagementWindow_Image7.x = param1;
                return;
            }// end function
            , "_GuildManagementWindow_Image7.x");
            result[26] = binding;
            binding = new Binding(this, function () : Number
            {
                return WINDOW_Y + 240;
            }// end function
            , function (param1:Number) : void
            {
                _GuildManagementWindow_Image7.y = param1;
                return;
            }// end function
            , "_GuildManagementWindow_Image7.y");
            result[27] = binding;
            binding = new Binding(this, function () : Object
            {
                return levelUpMask;
            }// end function
            , function (param1:Object) : void
            {
                _GuildManagementWindow_Image7.source = param1;
                return;
            }// end function
            , "_GuildManagementWindow_Image7.source");
            result[28] = binding;
            binding = new Binding(this, function () : Boolean
            {
                return !canLevelUp;
            }// end function
            , function (param1:Boolean) : void
            {
                _GuildManagementWindow_Image7.visible = param1;
                return;
            }// end function
            , "_GuildManagementWindow_Image7.visible");
            result[29] = binding;
            binding = new Binding(this, function () : Number
            {
                return BUTTON_X;
            }// end function
            , function (param1:Number) : void
            {
                _GuildManagementWindow_Image8.x = param1;
                return;
            }// end function
            , "_GuildManagementWindow_Image8.x");
            result[30] = binding;
            binding = new Binding(this, function () : Number
            {
                return BUTTON_Y;
            }// end function
            , function (param1:Number) : void
            {
                _GuildManagementWindow_Image8.y = param1;
                return;
            }// end function
            , "_GuildManagementWindow_Image8.y");
            result[31] = binding;
            binding = new Binding(this, function () : Object
            {
                return _swf_close;
            }// end function
            , function (param1:Object) : void
            {
                _GuildManagementWindow_Image8.source = param1;
                return;
            }// end function
            , "_GuildManagementWindow_Image8.source");
            result[32] = binding;
            return result;
        }// end function

        public function get masterCanvas() : Canvas
        {
            return this._1618494886masterCanvas;
        }// end function

        private function get canLevelUp() : Boolean
        {
            return this._1334344881canLevelUp;
        }// end function

        public function get playerVO() : PlayerVO
        {
            return this._1879273818playerVO;
        }// end function

        private function set needsRankText(param1:String) : void
        {
            var _loc_2:* = this._1579749686needsRankText;
            if (_loc_2 !== param1)
            {
                this._1579749686needsRankText = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "needsRankText", _loc_2, param1));
            }
            return;
        }// end function

        public function ___GuildManagementWindow_Image4_click(event:MouseEvent) : void
        {
            sendEvent(Viking.CITY_ACTION_CHANGE_GUILD_INFORMATION);
            return;
        }// end function

        private function get _swf_close() : MovieClipLoaderAsset
        {
            return this._1193840764_swf_close;
        }// end function

        private function setup() : void
        {
            MovieClip(Loader(_swf_close.getChildAt(0)).content).gotoAndPlay("button_close");
            return;
        }// end function

        public function ___GuildManagementWindow_Image8_click(event:MouseEvent) : void
        {
            closeWindow();
            return;
        }// end function

        private function drawSquare(param1:int, param2:int, param3:int, param4:int, param5:uint) : Sprite
        {
            var _loc_6:* = new Sprite();
            new Sprite().graphics.beginFill(param5, 0.4);
            _loc_6.graphics.drawRect(param1, param2, param3, param4);
            _loc_6.graphics.endFill();
            return _loc_6;
        }// end function

        public function set windowLayer(param1:Canvas) : void
        {
            var _loc_2:* = this._1896677185windowLayer;
            if (_loc_2 !== param1)
            {
                this._1896677185windowLayer = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "windowLayer", _loc_2, param1));
            }
            return;
        }// end function

        override public function initialize() : void
        {
            var target:GuildManagementWindow;
            var watcherSetupUtilClass:Object;
            .mx_internal::setDocumentDescriptor(_documentDescriptor_);
            var bindings:* = _GuildManagementWindow_bindingsSetup();
            var watchers:Array;
            target;
            if (_watcherSetupUtil == null)
            {
                watcherSetupUtilClass = getDefinitionByName("_com_kbmj_viking_view_city_GuildManagementWindowWatcherSetupUtil");
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

        private function set levelUpMask(param1:Sprite) : void
        {
            var _loc_2:* = this._1834129611levelUpMask;
            if (_loc_2 !== param1)
            {
                this._1834129611levelUpMask = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "levelUpMask", _loc_2, param1));
            }
            return;
        }// end function

        private function set needsTerritoryText(param1:String) : void
        {
            var _loc_2:* = this._696348470needsTerritoryText;
            if (_loc_2 !== param1)
            {
                this._696348470needsTerritoryText = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "needsTerritoryText", _loc_2, param1));
            }
            return;
        }// end function

        private function set canLevelUp(param1:Boolean) : void
        {
            var _loc_2:* = this._1334344881canLevelUp;
            if (_loc_2 !== param1)
            {
                this._1334344881canLevelUp = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "canLevelUp", _loc_2, param1));
            }
            return;
        }// end function

        public function set masterCanvas(param1:Canvas) : void
        {
            var _loc_2:* = this._1618494886masterCanvas;
            if (_loc_2 !== param1)
            {
                this._1618494886masterCanvas = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "masterCanvas", _loc_2, param1));
            }
            return;
        }// end function

        public function ___GuildManagementWindow_Image1_click(event:MouseEvent) : void
        {
            closeWindow();
            return;
        }// end function

        public function set guildDetailVO(param1:GuildDetailVO) : void
        {
            var _loc_2:Array = null;
            var _loc_3:Array = null;
            var _loc_4:Array = null;
            if (param1)
            {
                _guildDetailVO = param1;
                _loc_2 = [PlayerVO.ONMYOU_RANK_ID_RED, PlayerVO.ONMYOU_RANK_ID_YELLOW, PlayerVO.ONMYOU_RANK_ID_BLUE, PlayerVO.ONMYOU_RANK_ID_DIAMOND, PlayerVO.ONMYOU_RANK_ID_ZENITH, (PlayerVO.ONMYOU_RANK_ID_ZENITH + 1)];
                _loc_3 = ["0", "100", "200", "400", "800", "---"];
                _loc_4 = [0, 100, 200, 400, 800, 999999];
                needsRankText = Utils.i18n("guildManagementNeedRank", PlayerVO.ONMYOU_RANK_LABELS[_loc_2[guildDetailVO.rank]], PlayerVO.ONMYOU_RANK_LABELS[playerVO.playerRankId]);
                needsTerritoryText = _loc_3[guildDetailVO.rank];
                if (_loc_2[guildDetailVO.rank] <= playerVO.playerRankId && _loc_4[guildDetailVO.rank] <= guildDetailVO.allTerritoriesCount)
                {
                    canLevelUp = true;
                }
                else
                {
                    canLevelUp = false;
                }
            }
            return;
        }// end function

        public function ___GuildManagementWindow_Image5_click(event:MouseEvent) : void
        {
            sendEvent(Viking.CITY_ACTION_SHOW_REMOVE_MEMBER_WINDOW);
            return;
        }// end function

        private function set _guildDetailVO(param1:GuildDetailVO) : void
        {
            var _loc_2:* = this._1713757730_guildDetailVO;
            if (_loc_2 !== param1)
            {
                this._1713757730_guildDetailVO = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "_guildDetailVO", _loc_2, param1));
            }
            return;
        }// end function

        public function set playerVO(param1:PlayerVO) : void
        {
            var _loc_2:* = this._1879273818playerVO;
            if (_loc_2 !== param1)
            {
                this._1879273818playerVO = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "playerVO", _loc_2, param1));
            }
            return;
        }// end function

        public function ___GuildManagementWindow_PopupWindow1_creationComplete(event:FlexEvent) : void
        {
            setup();
            return;
        }// end function

        private function get levelUpMask() : Sprite
        {
            return this._1834129611levelUpMask;
        }// end function

        private function guildLevelUp() : void
        {
            if (canLevelUp)
            {
                trace("GuildManagementWindow:guildLevelUp()");
                sendEvent(GUILD_LEVEL_UP);
            }
            return;
        }// end function

        private function _GuildManagementWindow_bindingExprs() : void
        {
            var _loc_1:* = undefined;
            _loc_1 = WINDOW_X;
            _loc_1 = WINDOW_Y;
            _loc_1 = WINDOW_WD;
            _loc_1 = Utils.i18n("guildManagementManagement");
            _loc_1 = WINDOW_X + WINDOW_WD - 25;
            _loc_1 = WINDOW_Y;
            _loc_1 = _swf_close_window;
            _loc_1 = WINDOW_X + 20;
            _loc_1 = WINDOW_Y + 60;
            _loc_1 = WINDOW_WD - 40 - 80;
            _loc_1 = Utils.i18n("guildManagementWithdrawal");
            _loc_1 = WINDOW_WD - 40 - 80;
            _loc_1 = Utils.i18n("guildManagementAppointManagerAndResignation");
            _loc_1 = WINDOW_WD - 40 - 80;
            _loc_1 = Utils.i18n("guildManagemenatChangeInfo");
            _loc_1 = WINDOW_WD - 40 - 80;
            _loc_1 = Utils.i18n("guildManagementExpulsion");
            _loc_1 = WINDOW_X + 20;
            _loc_1 = WINDOW_Y + 240;
            _loc_1 = WINDOW_WD - 40;
            _loc_1 = WINDOW_WD - 40 - 80;
            _loc_1 = Utils.i18n("guildManagementLevelUp");
            _loc_1 = Utils.i18n("guildManagementNecessaryRank");
            _loc_1 = needsRankText;
            _loc_1 = Utils.i18n("guildManagementNecessaryProperty");
            _loc_1 = needsTerritoryText;
            _loc_1 = WINDOW_X + 20;
            _loc_1 = WINDOW_Y + 240;
            _loc_1 = levelUpMask;
            _loc_1 = !canLevelUp;
            _loc_1 = BUTTON_X;
            _loc_1 = BUTTON_Y;
            _loc_1 = _swf_close;
            return;
        }// end function

        private function get needsTerritoryText() : String
        {
            return this._696348470needsTerritoryText;
        }// end function

        public function get guildDetailVO() : GuildDetailVO
        {
            return _guildDetailVO;
        }// end function

        private function get _guildDetailVO() : GuildDetailVO
        {
            return this._1713757730_guildDetailVO;
        }// end function

        private function set _swf_close(param1:MovieClipLoaderAsset) : void
        {
            var _loc_2:* = this._1193840764_swf_close;
            if (_loc_2 !== param1)
            {
                this._1193840764_swf_close = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "_swf_close", _loc_2, param1));
            }
            return;
        }// end function

        public function ___GuildManagementWindow_Image6_click(event:MouseEvent) : void
        {
            guildLevelUp();
            return;
        }// end function

        public function ___GuildManagementWindow_Image2_click(event:MouseEvent) : void
        {
            sendEvent(Viking.CITY_ACTION_QUIT_GUILD);
            return;
        }// end function

        public static function set watcherSetupUtil(param1:IWatcherSetupUtil) : void
        {
            _watcherSetupUtil = param1;
            return;
        }// end function

    }
}
