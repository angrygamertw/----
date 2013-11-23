package com.kbmj.viking.view.city
{
    import com.kbmj.viking.lib.*;
    import com.kbmj.viking.view.*;
    import com.kbmj.viking.vo.*;
    import flash.display.*;
    import flash.events.*;
    import flash.utils.*;
    import mx.binding.*;
    import mx.containers.*;
    import mx.controls.*;
    import mx.core.*;
    import mx.events.*;

    public class GuildApprovalWindow extends PopupWindow implements IBindingClient
    {
        private var templeCheckWindow:TempleCheckWindow;
        private var _applicationId:int;
        public var _GuildApprovalWindow_Image1:Image;
        public var _GuildApprovalWindow_Image2:Image;
        public var _GuildApprovalWindow_Image4:Image;
        public var _GuildApprovalWindow_Image5:Image;
        public var _GuildApprovalWindow_Image6:Image;
        public var _GuildApprovalWindow_Label1:Label;
        public var _GuildApprovalWindow_Label2:Label;
        public var _GuildApprovalWindow_Image3:Image;
        public var _GuildApprovalWindow_Label5:Label;
        public var _GuildApprovalWindow_Label6:Label;
        public var _GuildApprovalWindow_Label7:Label;
        private var _755248704_swf_reserve:MovieClipLoaderAsset;
        public var _GuildApprovalWindow_Label3:Label;
        public var _GuildApprovalWindow_Label4:Label;
        private var _1075873300_swf_window:MovieClipLoaderAsset;
        private var _99600088_swf_rank:MovieClipLoaderAsset;
        var _watchers:Array;
        public var _GuildApprovalWindow_Text1:Text;
        public var _GuildApprovalWindow_Text2:Text;
        private var _1134877487_swf_approve:MovieClipLoaderAsset;
        public var _GuildApprovalWindow_Text3:Text;
        var _bindingsByDestination:Object;
        var _bindingsBeginWithWord:Object;
        private var _1218643219_swf_close_window:MovieClipLoaderAsset;
        var _bindings:Array;
        private var _documentDescriptor_:UIComponentDescriptor;
        private var _1927407605_applicationPlayerVO:Object;
        private var _1222935024_swf_refuse:MovieClipLoaderAsset;
        private var _1969791673_playerVO:PlayerVO;
        public var _GuildApprovalWindow_HBox1:HBox;
        private var _364851978_guild_name:String;
        private static const WINDOW_X:int = 180;
        private static const WINDOW_Y:int = 145;
        private static const BUTTON_X:int = 325;
        private static const BUTTON_Y:int = 365;
        public static const REJECT_APPLICATION:String = "rejectApplication";
        public static const NAME:String = "TempleCheckWindow";
        public static const CHECK_REJECT:String = "checkReject";
        public static const ALLOW_APPLICATION:String = "allowApplication";
        public static const CHECK_ALLOW:String = "checkAllow";
        public static const RELOAD_GUILD_DETAIL:String = NAME + "notes/reloadGuildDetail";
        private static var _watcherSetupUtil:IWatcherSetupUtil;
        private static const WINDOW_HT:int = 270;
        private static const WINDOW_WD:int = 400;

        public function GuildApprovalWindow()
        {
            _documentDescriptor_ = new UIComponentDescriptor({type:PopupWindow, propertiesFactory:function () : Object
            {
                return {width:760, height:560, childDescriptors:[new UIComponentDescriptor({type:Image, id:"_GuildApprovalWindow_Image1"}), new UIComponentDescriptor({type:Text, id:"_GuildApprovalWindow_Text1", propertiesFactory:function () : Object
                {
                    return {styleName:"DealTitle"};
                }// end function
                }), new UIComponentDescriptor({type:Image, id:"_GuildApprovalWindow_Image2", events:{click:"___GuildApprovalWindow_Image2_click"}}), new UIComponentDescriptor({type:Text, id:"_GuildApprovalWindow_Text2", propertiesFactory:function () : Object
                {
                    return {styleName:"CenterText"};
                }// end function
                }), new UIComponentDescriptor({type:Text, id:"_GuildApprovalWindow_Text3", stylesFactory:function () : void
                {
                    this.fontWeight = "bold";
                    this.fontSize = 15;
                    return;
                }// end function
                }), new UIComponentDescriptor({type:Grid, stylesFactory:function () : void
                {
                    this.horizontalGap = -1;
                    this.verticalGap = -1;
                    return;
                }// end function
                , propertiesFactory:function () : Object
                {
                    return {x:197, y:230, childDescriptors:[new UIComponentDescriptor({type:GridRow, propertiesFactory:function () : Object
                    {
                        return {childDescriptors:[new UIComponentDescriptor({type:GridItem, stylesFactory:function () : void
                        {
                            this.borderStyle = "outset";
                            this.borderColor = 2829099;
                            this.borderSides = "bottom right";
                            this.backgroundColor = 2115121;
                            return;
                        }// end function
                        , propertiesFactory:function () : Object
                        {
                            return {childDescriptors:[new UIComponentDescriptor({type:Label, id:"_GuildApprovalWindow_Label1", stylesFactory:function () : void
                            {
                                this.fontSize = 14;
                                this.textIndent = 8;
                                this.color = 15658734;
                                return;
                            }// end function
                            , propertiesFactory:function () : Object
                            {
                                return {width:180};
                            }// end function
                            })]};
                        }// end function
                        }), new UIComponentDescriptor({type:GridItem, stylesFactory:function () : void
                        {
                            this.borderStyle = "outset";
                            this.borderColor = 2829099;
                            this.borderSides = "bottom right";
                            this.backgroundColor = 14803650;
                            return;
                        }// end function
                        , propertiesFactory:function () : Object
                        {
                            return {childDescriptors:[new UIComponentDescriptor({type:Canvas, propertiesFactory:function () : Object
                            {
                                return {childDescriptors:[new UIComponentDescriptor({type:Image, id:"_GuildApprovalWindow_Image3", stylesFactory:function () : void
                                {
                                    this.horizontalAlign = "right";
                                    this.top = "3";
                                    return;
                                }// end function
                                , propertiesFactory:function () : Object
                                {
                                    return {width:180};
                                }// end function
                                })]};
                            }// end function
                            })]};
                        }// end function
                        })]};
                    }// end function
                    }), new UIComponentDescriptor({type:GridRow, propertiesFactory:function () : Object
                    {
                        return {childDescriptors:[new UIComponentDescriptor({type:GridItem, stylesFactory:function () : void
                        {
                            this.borderStyle = "outset";
                            this.borderColor = 2829099;
                            this.borderSides = "bottom right";
                            this.backgroundColor = 2115121;
                            return;
                        }// end function
                        , propertiesFactory:function () : Object
                        {
                            return {childDescriptors:[new UIComponentDescriptor({type:Label, id:"_GuildApprovalWindow_Label2", stylesFactory:function () : void
                            {
                                this.fontSize = 14;
                                this.textIndent = 8;
                                this.color = 15658734;
                                return;
                            }// end function
                            , propertiesFactory:function () : Object
                            {
                                return {width:180};
                            }// end function
                            })]};
                        }// end function
                        }), new UIComponentDescriptor({type:GridItem, stylesFactory:function () : void
                        {
                            this.borderStyle = "outset";
                            this.borderColor = 2829099;
                            this.borderSides = "bottom right";
                            this.backgroundColor = 16119005;
                            return;
                        }// end function
                        , propertiesFactory:function () : Object
                        {
                            return {childDescriptors:[new UIComponentDescriptor({type:Label, id:"_GuildApprovalWindow_Label3", stylesFactory:function () : void
                            {
                                this.fontSize = 14;
                                this.textAlign = "right";
                                this.color = 0;
                                return;
                            }// end function
                            , propertiesFactory:function () : Object
                            {
                                return {width:180};
                            }// end function
                            })]};
                        }// end function
                        })]};
                    }// end function
                    }), new UIComponentDescriptor({type:GridRow, propertiesFactory:function () : Object
                    {
                        return {childDescriptors:[new UIComponentDescriptor({type:GridItem, stylesFactory:function () : void
                        {
                            this.borderStyle = "outset";
                            this.borderColor = 2829099;
                            this.borderSides = "bottom right";
                            this.backgroundColor = 2115121;
                            return;
                        }// end function
                        , propertiesFactory:function () : Object
                        {
                            return {childDescriptors:[new UIComponentDescriptor({type:Label, id:"_GuildApprovalWindow_Label4", stylesFactory:function () : void
                            {
                                this.fontSize = 14;
                                this.textIndent = 8;
                                this.color = 15658734;
                                return;
                            }// end function
                            , propertiesFactory:function () : Object
                            {
                                return {width:180};
                            }// end function
                            })]};
                        }// end function
                        }), new UIComponentDescriptor({type:GridItem, stylesFactory:function () : void
                        {
                            this.borderStyle = "outset";
                            this.borderColor = 2829099;
                            this.borderSides = "bottom right";
                            this.backgroundColor = 14803650;
                            return;
                        }// end function
                        , propertiesFactory:function () : Object
                        {
                            return {childDescriptors:[new UIComponentDescriptor({type:Label, id:"_GuildApprovalWindow_Label5", stylesFactory:function () : void
                            {
                                this.fontSize = 14;
                                this.textAlign = "right";
                                this.color = 0;
                                return;
                            }// end function
                            , propertiesFactory:function () : Object
                            {
                                return {width:180};
                            }// end function
                            })]};
                        }// end function
                        })]};
                    }// end function
                    }), new UIComponentDescriptor({type:GridRow, propertiesFactory:function () : Object
                    {
                        return {childDescriptors:[new UIComponentDescriptor({type:GridItem, stylesFactory:function () : void
                        {
                            this.borderStyle = "outset";
                            this.borderColor = 2829099;
                            this.borderSides = "bottom right";
                            this.backgroundColor = 2115121;
                            return;
                        }// end function
                        , propertiesFactory:function () : Object
                        {
                            return {childDescriptors:[new UIComponentDescriptor({type:Label, id:"_GuildApprovalWindow_Label6", stylesFactory:function () : void
                            {
                                this.fontSize = 14;
                                this.textIndent = 8;
                                this.color = 15658734;
                                return;
                            }// end function
                            , propertiesFactory:function () : Object
                            {
                                return {width:180};
                            }// end function
                            })]};
                        }// end function
                        }), new UIComponentDescriptor({type:GridItem, stylesFactory:function () : void
                        {
                            this.borderStyle = "outset";
                            this.borderColor = 2829099;
                            this.borderSides = "bottom right";
                            this.backgroundColor = 16119005;
                            return;
                        }// end function
                        , propertiesFactory:function () : Object
                        {
                            return {childDescriptors:[new UIComponentDescriptor({type:Label, id:"_GuildApprovalWindow_Label7", stylesFactory:function () : void
                            {
                                this.fontSize = 14;
                                this.textAlign = "right";
                                this.color = 0;
                                return;
                            }// end function
                            , propertiesFactory:function () : Object
                            {
                                return {width:180};
                            }// end function
                            })]};
                        }// end function
                        })]};
                    }// end function
                    })]};
                }// end function
                }), new UIComponentDescriptor({type:HBox, id:"_GuildApprovalWindow_HBox1", stylesFactory:function () : void
                {
                    this.horizontalGap = 130;
                    return;
                }// end function
                , propertiesFactory:function () : Object
                {
                    return {childDescriptors:[new UIComponentDescriptor({type:Image, id:"_GuildApprovalWindow_Image4", events:{click:"___GuildApprovalWindow_Image4_click"}}), new UIComponentDescriptor({type:Image, id:"_GuildApprovalWindow_Image5", events:{click:"___GuildApprovalWindow_Image5_click"}}), new UIComponentDescriptor({type:Image, id:"_GuildApprovalWindow_Image6", events:{click:"___GuildApprovalWindow_Image6_click"}})]};
                }// end function
                })]};
            }// end function
            });
            _1075873300_swf_window = new Viking.EmbedSwfWindowCommon();
            _1218643219_swf_close_window = new Viking.EmbedSwfButtonCloseWindow();
            _755248704_swf_reserve = new Viking.EmbedSwfButtonCommon();
            _1134877487_swf_approve = new Viking.EmbedSwfButtonCommon();
            _1222935024_swf_refuse = new Viking.EmbedSwfButtonCommon();
            _99600088_swf_rank = new Viking.EmbedSwfIconRank();
            templeCheckWindow = new TempleCheckWindow();
            _bindings = [];
            _watchers = [];
            _bindingsByDestination = {};
            _bindingsBeginWithWord = {};
            mx_internal::_document = this;
            this.width = 760;
            this.height = 560;
            this.addEventListener("creationComplete", ___GuildApprovalWindow_PopupWindow1_creationComplete);
            return;
        }// end function

        private function set _swf_reserve(param1:MovieClipLoaderAsset) : void
        {
            var _loc_2:* = this._755248704_swf_reserve;
            if (_loc_2 !== param1)
            {
                this._755248704_swf_reserve = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "_swf_reserve", _loc_2, param1));
            }
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

        public function ___GuildApprovalWindow_Image6_click(event:MouseEvent) : void
        {
            onReject();
            return;
        }// end function

        private function get _swf_window() : MovieClipLoaderAsset
        {
            return this._1075873300_swf_window;
        }// end function

        private function get _guild_name() : String
        {
            return this._364851978_guild_name;
        }// end function

        public function closeWindow() : void
        {
            onClose();
            MovieClip(Loader(_swf_close_window.getChildAt(0)).content).gotoAndPlay(1);
            MovieClip(Loader(_swf_reserve.getChildAt(0)).content).gotoAndPlay(0);
            MovieClip(Loader(_swf_reserve.getChildAt(0)).content).gotoAndPlay("button_reserve");
            return;
        }// end function

        override public function initialize() : void
        {
            var target:GuildApprovalWindow;
            var watcherSetupUtilClass:Object;
            .mx_internal::setDocumentDescriptor(_documentDescriptor_);
            var bindings:* = _GuildApprovalWindow_bindingsSetup();
            var watchers:Array;
            target;
            if (_watcherSetupUtil == null)
            {
                watcherSetupUtilClass = getDefinitionByName("_com_kbmj_viking_view_city_GuildApprovalWindowWatcherSetupUtil");
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

        private function get _swf_close_window() : MovieClipLoaderAsset
        {
            return this._1218643219_swf_close_window;
        }// end function

        private function set _swf_refuse(param1:MovieClipLoaderAsset) : void
        {
            var _loc_2:* = this._1222935024_swf_refuse;
            if (_loc_2 !== param1)
            {
                this._1222935024_swf_refuse = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "_swf_refuse", _loc_2, param1));
            }
            return;
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

        private function get _swf_rank() : MovieClipLoaderAsset
        {
            return this._99600088_swf_rank;
        }// end function

        private function onAllow() : void
        {
            popupWindow(templeCheckWindow);
            templeCheckWindow.eventName = CHECK_ALLOW;
            templeCheckWindow.setGuildName(_applicationPlayerVO.playerName, TempleCheckWindow.INDEX_GUILD_CHECK_ALLOW);
            return;
        }// end function

        private function onComp() : void
        {
            templeCheckWindow.addEventListener(CHECK_ALLOW, handleEvent);
            templeCheckWindow.addEventListener(CHECK_REJECT, handleEvent);
            MovieClip(Loader(_swf_window.getChildAt(0)).content).gotoAndPlay("center_400x270");
            MovieClip(Loader(_swf_reserve.getChildAt(0)).content).gotoAndPlay("button_reserve");
            MovieClip(Loader(_swf_approve.getChildAt(0)).content).gotoAndPlay("button_approve");
            MovieClip(Loader(_swf_refuse.getChildAt(0)).content).gotoAndPlay("button_refuse");
            return;
        }// end function

        public function init(param1:Object, param2:PlayerVO, param3:String) : void
        {
            var _loc_4:String = null;
            _applicationPlayerVO = param1.playerVO;
            _applicationId = param1.id;
            _playerVO = param2;
            _guild_name = _playerVO.guild.name;
            if (_applicationPlayerVO.playerRankId >= 1 && _applicationPlayerVO.playerRankId <= PlayerVO.ONMYOU_RANK_ID_ZENITH)
            {
                _loc_4 = "";
                if (_applicationPlayerVO.playerRankId < 10)
                {
                    _loc_4 = "0";
                }
                MovieClip(Loader(_swf_rank.getChildAt(0)).content).gotoAndStop("rank_" + _loc_4 + _applicationPlayerVO.playerRankId);
            }
            return;
        }// end function

        private function get _swf_reserve() : MovieClipLoaderAsset
        {
            return this._755248704_swf_reserve;
        }// end function

        public function ___GuildApprovalWindow_Image5_click(event:MouseEvent) : void
        {
            onAllow();
            return;
        }// end function

        private function get _applicationPlayerVO() : Object
        {
            return this._1927407605_applicationPlayerVO;
        }// end function

        private function get _swf_refuse() : MovieClipLoaderAsset
        {
            return this._1222935024_swf_refuse;
        }// end function

        public function ___GuildApprovalWindow_PopupWindow1_creationComplete(event:FlexEvent) : void
        {
            onComp();
            return;
        }// end function

        private function set _swf_approve(param1:MovieClipLoaderAsset) : void
        {
            var _loc_2:* = this._1134877487_swf_approve;
            if (_loc_2 !== param1)
            {
                this._1134877487_swf_approve = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "_swf_approve", _loc_2, param1));
            }
            return;
        }// end function

        private function set _swf_rank(param1:MovieClipLoaderAsset) : void
        {
            var _loc_2:* = this._99600088_swf_rank;
            if (_loc_2 !== param1)
            {
                this._99600088_swf_rank = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "_swf_rank", _loc_2, param1));
            }
            return;
        }// end function

        private function _GuildApprovalWindow_bindingExprs() : void
        {
            var _loc_1:* = undefined;
            _loc_1 = _swf_window;
            _loc_1 = WINDOW_X;
            _loc_1 = WINDOW_Y;
            _loc_1 = WINDOW_WD;
            _loc_1 = Utils.i18n("guildApprovalAdmissionApproval");
            _loc_1 = WINDOW_X + WINDOW_WD - 25;
            _loc_1 = WINDOW_Y;
            _loc_1 = _swf_close_window;
            _loc_1 = WINDOW_X + 20;
            _loc_1 = WINDOW_Y + 35;
            _loc_1 = WINDOW_WD - 40;
            _loc_1 = Utils.i18n("guildApprovalReception", _applicationPlayerVO.playerName);
            _loc_1 = WINDOW_X + 20;
            _loc_1 = WINDOW_Y + 65;
            _loc_1 = _applicationPlayerVO.playerName;
            _loc_1 = Utils.i18n("generalRank");
            _loc_1 = _swf_rank;
            _loc_1 = Utils.i18n("generalPropertiesCount");
            _loc_1 = _applicationPlayerVO.propertiesCount;
            _loc_1 = Utils.i18n("generalUnitCount");
            _loc_1 = _applicationPlayerVO.unitCount;
            _loc_1 = Utils.i18n("guildApprovalMaxLvNum");
            _loc_1 = _applicationPlayerVO.maxUnitLevel;
            _loc_1 = BUTTON_X - 130;
            _loc_1 = BUTTON_Y;
            _loc_1 = _swf_reserve;
            _loc_1 = _swf_approve;
            _loc_1 = _swf_refuse;
            return;
        }// end function

        private function handleEvent(event:Event) : void
        {
            switch(event.type)
            {
                case CHECK_ALLOW:
                {
                    sendPopupEvent(ALLOW_APPLICATION, _applicationId);
                    sendEvent(RELOAD_GUILD_DETAIL);
                    onClose();
                    break;
                }
                case CHECK_REJECT:
                {
                    sendPopupEvent(REJECT_APPLICATION, _applicationId);
                    onClose();
                    break;
                }
                default:
                {
                    break;
                }
            }
            return;
        }// end function

        private function _GuildApprovalWindow_bindingsSetup() : Array
        {
            var binding:Binding;
            var result:Array;
            binding = new Binding(this, function () : Object
            {
                return _swf_window;
            }// end function
            , function (param1:Object) : void
            {
                _GuildApprovalWindow_Image1.source = param1;
                return;
            }// end function
            , "_GuildApprovalWindow_Image1.source");
            result[0] = binding;
            binding = new Binding(this, function () : Number
            {
                return WINDOW_X;
            }// end function
            , function (param1:Number) : void
            {
                _GuildApprovalWindow_Text1.x = param1;
                return;
            }// end function
            , "_GuildApprovalWindow_Text1.x");
            result[1] = binding;
            binding = new Binding(this, function () : Number
            {
                return WINDOW_Y;
            }// end function
            , function (param1:Number) : void
            {
                _GuildApprovalWindow_Text1.y = param1;
                return;
            }// end function
            , "_GuildApprovalWindow_Text1.y");
            result[2] = binding;
            binding = new Binding(this, function () : Number
            {
                return WINDOW_WD;
            }// end function
            , function (param1:Number) : void
            {
                _GuildApprovalWindow_Text1.width = param1;
                return;
            }// end function
            , "_GuildApprovalWindow_Text1.width");
            result[3] = binding;
            binding = new Binding(this, function () : String
            {
                var _loc_1:* = Utils.i18n("guildApprovalAdmissionApproval");
                var _loc_2:* = _loc_1 == undefined ? (null) : (String(_loc_1));
                return _loc_2;
            }// end function
            , function (param1:String) : void
            {
                _GuildApprovalWindow_Text1.text = param1;
                return;
            }// end function
            , "_GuildApprovalWindow_Text1.text");
            result[4] = binding;
            binding = new Binding(this, function () : Number
            {
                return WINDOW_X + WINDOW_WD - 25;
            }// end function
            , function (param1:Number) : void
            {
                _GuildApprovalWindow_Image2.x = param1;
                return;
            }// end function
            , "_GuildApprovalWindow_Image2.x");
            result[5] = binding;
            binding = new Binding(this, function () : Number
            {
                return WINDOW_Y;
            }// end function
            , function (param1:Number) : void
            {
                _GuildApprovalWindow_Image2.y = param1;
                return;
            }// end function
            , "_GuildApprovalWindow_Image2.y");
            result[6] = binding;
            binding = new Binding(this, function () : Object
            {
                return _swf_close_window;
            }// end function
            , function (param1:Object) : void
            {
                _GuildApprovalWindow_Image2.source = param1;
                return;
            }// end function
            , "_GuildApprovalWindow_Image2.source");
            result[7] = binding;
            binding = new Binding(this, function () : Number
            {
                return WINDOW_X + 20;
            }// end function
            , function (param1:Number) : void
            {
                _GuildApprovalWindow_Text2.x = param1;
                return;
            }// end function
            , "_GuildApprovalWindow_Text2.x");
            result[8] = binding;
            binding = new Binding(this, function () : Number
            {
                return WINDOW_Y + 35;
            }// end function
            , function (param1:Number) : void
            {
                _GuildApprovalWindow_Text2.y = param1;
                return;
            }// end function
            , "_GuildApprovalWindow_Text2.y");
            result[9] = binding;
            binding = new Binding(this, function () : Number
            {
                return WINDOW_WD - 40;
            }// end function
            , function (param1:Number) : void
            {
                _GuildApprovalWindow_Text2.width = param1;
                return;
            }// end function
            , "_GuildApprovalWindow_Text2.width");
            result[10] = binding;
            binding = new Binding(this, function () : String
            {
                var _loc_1:* = Utils.i18n("guildApprovalReception", _applicationPlayerVO.playerName);
                var _loc_2:* = _loc_1 == undefined ? (null) : (String(_loc_1));
                return _loc_2;
            }// end function
            , function (param1:String) : void
            {
                _GuildApprovalWindow_Text2.text = param1;
                return;
            }// end function
            , "_GuildApprovalWindow_Text2.text");
            result[11] = binding;
            binding = new Binding(this, function () : Number
            {
                return WINDOW_X + 20;
            }// end function
            , function (param1:Number) : void
            {
                _GuildApprovalWindow_Text3.x = param1;
                return;
            }// end function
            , "_GuildApprovalWindow_Text3.x");
            result[12] = binding;
            binding = new Binding(this, function () : Number
            {
                return WINDOW_Y + 65;
            }// end function
            , function (param1:Number) : void
            {
                _GuildApprovalWindow_Text3.y = param1;
                return;
            }// end function
            , "_GuildApprovalWindow_Text3.y");
            result[13] = binding;
            binding = new Binding(this, function () : String
            {
                var _loc_1:* = _applicationPlayerVO.playerName;
                var _loc_2:* = _loc_1 == undefined ? (null) : (String(_loc_1));
                return _loc_2;
            }// end function
            , function (param1:String) : void
            {
                _GuildApprovalWindow_Text3.text = param1;
                return;
            }// end function
            , "_GuildApprovalWindow_Text3.text");
            result[14] = binding;
            binding = new Binding(this, function () : String
            {
                var _loc_1:* = Utils.i18n("generalRank");
                var _loc_2:* = _loc_1 == undefined ? (null) : (String(_loc_1));
                return _loc_2;
            }// end function
            , function (param1:String) : void
            {
                _GuildApprovalWindow_Label1.text = param1;
                return;
            }// end function
            , "_GuildApprovalWindow_Label1.text");
            result[15] = binding;
            binding = new Binding(this, function () : Object
            {
                return _swf_rank;
            }// end function
            , function (param1:Object) : void
            {
                _GuildApprovalWindow_Image3.source = param1;
                return;
            }// end function
            , "_GuildApprovalWindow_Image3.source");
            result[16] = binding;
            binding = new Binding(this, function () : String
            {
                var _loc_1:* = Utils.i18n("generalPropertiesCount");
                var _loc_2:* = _loc_1 == undefined ? (null) : (String(_loc_1));
                return _loc_2;
            }// end function
            , function (param1:String) : void
            {
                _GuildApprovalWindow_Label2.text = param1;
                return;
            }// end function
            , "_GuildApprovalWindow_Label2.text");
            result[17] = binding;
            binding = new Binding(this, function () : String
            {
                var _loc_1:* = _applicationPlayerVO.propertiesCount;
                var _loc_2:* = _loc_1 == undefined ? (null) : (String(_loc_1));
                return _loc_2;
            }// end function
            , function (param1:String) : void
            {
                _GuildApprovalWindow_Label3.text = param1;
                return;
            }// end function
            , "_GuildApprovalWindow_Label3.text");
            result[18] = binding;
            binding = new Binding(this, function () : String
            {
                var _loc_1:* = Utils.i18n("generalUnitCount");
                var _loc_2:* = _loc_1 == undefined ? (null) : (String(_loc_1));
                return _loc_2;
            }// end function
            , function (param1:String) : void
            {
                _GuildApprovalWindow_Label4.text = param1;
                return;
            }// end function
            , "_GuildApprovalWindow_Label4.text");
            result[19] = binding;
            binding = new Binding(this, function () : String
            {
                var _loc_1:* = _applicationPlayerVO.unitCount;
                var _loc_2:* = _loc_1 == undefined ? (null) : (String(_loc_1));
                return _loc_2;
            }// end function
            , function (param1:String) : void
            {
                _GuildApprovalWindow_Label5.text = param1;
                return;
            }// end function
            , "_GuildApprovalWindow_Label5.text");
            result[20] = binding;
            binding = new Binding(this, function () : String
            {
                var _loc_1:* = Utils.i18n("guildApprovalMaxLvNum");
                var _loc_2:* = _loc_1 == undefined ? (null) : (String(_loc_1));
                return _loc_2;
            }// end function
            , function (param1:String) : void
            {
                _GuildApprovalWindow_Label6.text = param1;
                return;
            }// end function
            , "_GuildApprovalWindow_Label6.text");
            result[21] = binding;
            binding = new Binding(this, function () : String
            {
                var _loc_1:* = _applicationPlayerVO.maxUnitLevel;
                var _loc_2:* = _loc_1 == undefined ? (null) : (String(_loc_1));
                return _loc_2;
            }// end function
            , function (param1:String) : void
            {
                _GuildApprovalWindow_Label7.text = param1;
                return;
            }// end function
            , "_GuildApprovalWindow_Label7.text");
            result[22] = binding;
            binding = new Binding(this, function () : Number
            {
                return BUTTON_X - 130;
            }// end function
            , function (param1:Number) : void
            {
                _GuildApprovalWindow_HBox1.x = param1;
                return;
            }// end function
            , "_GuildApprovalWindow_HBox1.x");
            result[23] = binding;
            binding = new Binding(this, function () : Number
            {
                return BUTTON_Y;
            }// end function
            , function (param1:Number) : void
            {
                _GuildApprovalWindow_HBox1.y = param1;
                return;
            }// end function
            , "_GuildApprovalWindow_HBox1.y");
            result[24] = binding;
            binding = new Binding(this, function () : Object
            {
                return _swf_reserve;
            }// end function
            , function (param1:Object) : void
            {
                _GuildApprovalWindow_Image4.source = param1;
                return;
            }// end function
            , "_GuildApprovalWindow_Image4.source");
            result[25] = binding;
            binding = new Binding(this, function () : Object
            {
                return _swf_approve;
            }// end function
            , function (param1:Object) : void
            {
                _GuildApprovalWindow_Image5.source = param1;
                return;
            }// end function
            , "_GuildApprovalWindow_Image5.source");
            result[26] = binding;
            binding = new Binding(this, function () : Object
            {
                return _swf_refuse;
            }// end function
            , function (param1:Object) : void
            {
                _GuildApprovalWindow_Image6.source = param1;
                return;
            }// end function
            , "_GuildApprovalWindow_Image6.source");
            result[27] = binding;
            return result;
        }// end function

        private function set _applicationPlayerVO(param1:Object) : void
        {
            var _loc_2:* = this._1927407605_applicationPlayerVO;
            if (_loc_2 !== param1)
            {
                this._1927407605_applicationPlayerVO = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "_applicationPlayerVO", _loc_2, param1));
            }
            return;
        }// end function

        private function onReject() : void
        {
            popupWindow(templeCheckWindow);
            templeCheckWindow.eventName = CHECK_REJECT;
            templeCheckWindow.setGuildName(_applicationPlayerVO.playerName, TempleCheckWindow.INDEX_GUILD_CHECK_REJECT);
            return;
        }// end function

        private function set _swf_window(param1:MovieClipLoaderAsset) : void
        {
            var _loc_2:* = this._1075873300_swf_window;
            if (_loc_2 !== param1)
            {
                this._1075873300_swf_window = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "_swf_window", _loc_2, param1));
            }
            return;
        }// end function

        private function get _swf_approve() : MovieClipLoaderAsset
        {
            return this._1134877487_swf_approve;
        }// end function

        private function get _playerVO() : PlayerVO
        {
            return this._1969791673_playerVO;
        }// end function

        private function set _guild_name(param1:String) : void
        {
            var _loc_2:* = this._364851978_guild_name;
            if (_loc_2 !== param1)
            {
                this._364851978_guild_name = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "_guild_name", _loc_2, param1));
            }
            return;
        }// end function

        public function ___GuildApprovalWindow_Image2_click(event:MouseEvent) : void
        {
            closeWindow();
            return;
        }// end function

        public function ___GuildApprovalWindow_Image4_click(event:MouseEvent) : void
        {
            closeWindow();
            return;
        }// end function

        public static function set watcherSetupUtil(param1:IWatcherSetupUtil) : void
        {
            GuildApprovalWindow._watcherSetupUtil = param1;
            return;
        }// end function

    }
}
