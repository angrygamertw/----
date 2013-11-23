package com.kbmj.viking
{
    import com.kbmj.viking.lib.*;
    import com.kbmj.viking.proxy.allMap.*;
    import com.kbmj.viking.view.*;
    import com.kbmj.viking.view.allMap.*;
    import com.kbmj.viking.view.home.*;
    import com.kbmj.viking.vo.*;
    import com.kbmj.viking.vo.home.*;
    import flash.display.*;
    import flash.events.*;
    import flash.utils.*;
    import mx.binding.*;
    import mx.containers.*;
    import mx.controls.*;
    import mx.core.*;
    import mx.effects.*;
    import mx.events.*;

    public class AllMap extends CanvasWithPopUp implements IBindingClient
    {
        private var _embed_mxml__swf_window_info_products_swf_1304559433:Class;
        private var _1292779374infoCanbas:Canvas;
        private var _831240641hexInputWindow:HexInputWindow;
        private var _970364505info_txt_box_news:Box;
        var _bindingsByDestination:Object;
        private var _190117943swf_rank:MovieClipLoaderAsset;
        private var _410382397taskList:List;
        private var _embed_mxml__swf_all_map_button_back_swf_2104410221:Class;
        private var _847285043_swf_info_chat:MovieClipLoaderAsset;
        private var _98171833hexInfoWindow:HexInfoWindow;
        private var _embed_mxml__swf_home_buttons_button_report_50_swf_1031336821:Class;
        private var _embed_mxml__swf_window_info_home_swf_1388347787:Class;
        private var _1537268218taskBox:Box;
        private var _1722718208_player:PlayerVO;
        private var _3237038info:Image;
        private var _2112314167fort_range:Image;
        private var _657113376allMapCommandWindow:AllMapCommandWindow;
        public var nowInfo:String;
        private var _2054004626functionButtonX:int;
        private var _1353678945_config:ConfigVO;
        private var _1746785189_unreadMail:Boolean = false;
        private var _2054004625functionButtonY:int;
        private var _121712834glowoff:Glow;
        public var nowInfoId:int;
        private var _1003761308products:Image;
        private var _1465065841_tasks:Array;
        public var _AllMap_Image6:Image;
        public var _AllMap_Image7:Image;
        private var _embed_mxml__images_all_map_hex_cursor_png_1223338699:Class;
        public var _AllMap_Image9:Image;
        private var _1835614690rangeImage:Class;
        private var _144088989functionButtonClicked:Boolean = false;
        private var _1945385533infoBox:Box;
        private var _252712397playerStatus:PlayerStatus;
        private var _1252748247productionInfoWindow:ProductionInfoWindow;
        private var _embed_mxml__swf_home_icon_button_50_new_swf_933026285:Class;
        private var _2068552195bgCanvas:Canvas;
        private var _739087187chatBox:Box;
        private var _3175821glow:Glow;
        private var _1336606984infoButtonCanvas:Canvas;
        private var _1349119146cursor:Image;
        private var _IncrementTasks:TaskVO;
        private var _811672225swf_faction:MovieClipLoaderAsset;
        private var _1204726198infoBoxVO:InfoBoxVO;
        var _watchers:Array;
        private var _177431846infoChat:Image;
        private var confirmFinishTaskWindow:ConfirmFinishTaskWindow;
        private var _embed_mxml__swf_home_buttons_button_mail_50_swf_77670281:Class;
        var _bindingsBeginWithWord:Object;
        public var savedInfo:String;
        private var _1762243195guildMemberListWindow:GuildMemberListWindow;
        var _bindings:Array;
        private var _1776491051miniMapWindow:MiniMapWindow;
        private var _1211793989guildChatWindow:GuildChatWindow;
        private var _documentDescriptor_:UIComponentDescriptor;
        public static var fortRange:Class = AllMap_fortRange;
        private static var _watcherSetupUtil:IWatcherSetupUtil;
        public static var EmbedSwfWindowUnitSelectForColony:Class = AllMap_EmbedSwfWindowUnitSelectForColony;
        public static const NAME:String = "AllMap";
        public static var EmbedSwfInfoChat:Class = AllMap_EmbedSwfInfoChat;
        public static var EmbedSwfWindowUnitSelectForInvasion:Class = AllMap_EmbedSwfWindowUnitSelectForInvasion;
        public static const BACK_HOME:String = NAME + "/backHome";
        public static var EmbedSwfWindowUnitSelect:Class = AllMap_EmbedSwfWindowUnitSelect;
        public static var towerRange:Class = AllMap_towerRange;
        public static var EmbedSwfButtonCommonMap:Class = AllMap_EmbedSwfButtonCommonMap;

        public function AllMap()
        {
            _documentDescriptor_ = new UIComponentDescriptor({type:CanvasWithPopUp, propertiesFactory:function () : Object
            {
                return {childDescriptors:[new UIComponentDescriptor({type:Canvas, id:"bgCanvas", propertiesFactory:function () : Object
                {
                    return {horizontalScrollPolicy:"off", verticalScrollPolicy:"off", childDescriptors:[new UIComponentDescriptor({type:Image, id:"fort_range"}), new UIComponentDescriptor({type:Image, id:"cursor", propertiesFactory:function () : Object
                    {
                        return {source:_embed_mxml__images_all_map_hex_cursor_png_1223338699};
                    }// end function
                    })]};
                }// end function
                }), new UIComponentDescriptor({type:HexInfoWindow, id:"hexInfoWindow"}), new UIComponentDescriptor({type:MiniMapWindow, id:"miniMapWindow"}), new UIComponentDescriptor({type:HexInputWindow, id:"hexInputWindow"}), new UIComponentDescriptor({type:GuildMemberListWindow, id:"guildMemberListWindow"}), new UIComponentDescriptor({type:Canvas, id:"infoCanbas"}), new UIComponentDescriptor({type:Canvas, id:"infoButtonCanvas", propertiesFactory:function () : Object
                {
                    return {x:68, visible:false};
                }// end function
                }), new UIComponentDescriptor({type:Image, id:"infoChat", propertiesFactory:function () : Object
                {
                    return {visible:false};
                }// end function
                }), new UIComponentDescriptor({type:Canvas, propertiesFactory:function () : Object
                {
                    return {childDescriptors:[new UIComponentDescriptor({type:Box, id:"taskBox", propertiesFactory:function () : Object
                    {
                        return {visible:false, x:225, y:392, height:150, width:450, childDescriptors:[new UIComponentDescriptor({type:List, id:"taskList", stylesFactory:function () : void
                        {
                            this.backgroundAlpha = 0;
                            return;
                        }// end function
                        , propertiesFactory:function () : Object
                        {
                            return {itemRenderer:_AllMap_ClassFactory1_c(), styleName:"InfoBoxTab", selectable:false, rowHeight:50};
                        }// end function
                        })]};
                    }// end function
                    }), new UIComponentDescriptor({type:Box, id:"infoBox", propertiesFactory:function () : Object
                    {
                        return {visible:false, x:225, y:382, childDescriptors:[new UIComponentDescriptor({type:Box, id:"info_txt_box_news", propertiesFactory:function () : Object
                        {
                            return {styleName:"InfoTxtBox", height:176, width:450, buttonMode:false, useHandCursor:false};
                        }// end function
                        })]};
                    }// end function
                    }), new UIComponentDescriptor({type:Box, id:"chatBox", propertiesFactory:function () : Object
                    {
                        return {visible:false, x:225, y:332, childDescriptors:[new UIComponentDescriptor({type:GuildChatWindow, id:"guildChatWindow", propertiesFactory:function () : Object
                        {
                            return {width:455, height:178, location:"home", y:5};
                        }// end function
                        })]};
                    }// end function
                    })]};
                }// end function
                }), new UIComponentDescriptor({type:Image, id:"products", propertiesFactory:function () : Object
                {
                    return {x:363, y:0, source:_embed_mxml__swf_window_info_products_swf_1304559433};
                }// end function
                }), new UIComponentDescriptor({type:ProductionInfoWindow, id:"productionInfoWindow", propertiesFactory:function () : Object
                {
                    return {x:380, y:14};
                }// end function
                }), new UIComponentDescriptor({type:Image, id:"info", propertiesFactory:function () : Object
                {
                    return {x:0, y:0, source:_embed_mxml__swf_window_info_home_swf_1388347787};
                }// end function
                }), new UIComponentDescriptor({type:PlayerStatus, id:"playerStatus", propertiesFactory:function () : Object
                {
                    return {x:10};
                }// end function
                }), new UIComponentDescriptor({type:Image, id:"_AllMap_Image6", propertiesFactory:function () : Object
                {
                    return {x:37, y:17};
                }// end function
                }), new UIComponentDescriptor({type:Image, id:"_AllMap_Image7", propertiesFactory:function () : Object
                {
                    return {x:58, y:17};
                }// end function
                }), new UIComponentDescriptor({type:Canvas, propertiesFactory:function () : Object
                {
                    return {x:633, y:8, childDescriptors:[new UIComponentDescriptor({type:Image, events:{click:"___AllMap_Image8_click"}, propertiesFactory:function () : Object
                    {
                        return {source:_embed_mxml__swf_home_buttons_button_mail_50_swf_77670281};
                    }// end function
                    }), new UIComponentDescriptor({type:Image, id:"_AllMap_Image9", propertiesFactory:function () : Object
                    {
                        return {source:_embed_mxml__swf_home_icon_button_50_new_swf_933026285, mouseEnabled:false, mouseChildren:false};
                    }// end function
                    })]};
                }// end function
                }), new UIComponentDescriptor({type:Image, events:{click:"___AllMap_Image10_click"}, propertiesFactory:function () : Object
                {
                    return {x:695, y:8, source:_embed_mxml__swf_home_buttons_button_report_50_swf_1031336821};
                }// end function
                }), new UIComponentDescriptor({type:Image, events:{click:"___AllMap_Image11_click"}, propertiesFactory:function () : Object
                {
                    return {x:688, y:75, source:_embed_mxml__swf_all_map_button_back_swf_2104410221};
                }// end function
                }), new UIComponentDescriptor({type:AllMapCommandWindow, id:"allMapCommandWindow", propertiesFactory:function () : Object
                {
                    return {visible:false};
                }// end function
                })]};
            }// end function
            });
            _811672225swf_faction = new Viking.EmbedSwfIconFaction();
            _190117943swf_rank = new Viking.EmbedSwfIconRank();
            _IncrementTasks = new TaskVO();
            _1204726198infoBoxVO = new InfoBoxVO();
            confirmFinishTaskWindow = new ConfirmFinishTaskWindow();
            _847285043_swf_info_chat = new EmbedSwfInfoChat();
            _embed_mxml__images_all_map_hex_cursor_png_1223338699 = AllMap__embed_mxml__images_all_map_hex_cursor_png_1223338699;
            _embed_mxml__swf_all_map_button_back_swf_2104410221 = AllMap__embed_mxml__swf_all_map_button_back_swf_2104410221;
            _embed_mxml__swf_home_buttons_button_mail_50_swf_77670281 = AllMap__embed_mxml__swf_home_buttons_button_mail_50_swf_77670281;
            _embed_mxml__swf_home_buttons_button_report_50_swf_1031336821 = AllMap__embed_mxml__swf_home_buttons_button_report_50_swf_1031336821;
            _embed_mxml__swf_home_icon_button_50_new_swf_933026285 = AllMap__embed_mxml__swf_home_icon_button_50_new_swf_933026285;
            _embed_mxml__swf_window_info_home_swf_1388347787 = AllMap__embed_mxml__swf_window_info_home_swf_1388347787;
            _embed_mxml__swf_window_info_products_swf_1304559433 = AllMap__embed_mxml__swf_window_info_products_swf_1304559433;
            _bindings = [];
            _watchers = [];
            _bindingsByDestination = {};
            _bindingsBeginWithWord = {};
            mx_internal::_document = this;
            this.horizontalScrollPolicy = "off";
            this.verticalScrollPolicy = "off";
            _AllMap_Glow1_i();
            _AllMap_Glow2_i();
            this.addEventListener("creationComplete", ___AllMap_CanvasWithPopUp1_creationComplete);
            return;
        }// end function

        private function get _player() : PlayerVO
        {
            return this._1722718208_player;
        }// end function

        public function set unreadMail(param1:Boolean) : void
        {
            _unreadMail = param1;
            return;
        }// end function

        public function get taskBox() : Box
        {
            return this._1537268218taskBox;
        }// end function

        private function set _player(param1:PlayerVO) : void
        {
            var _loc_2:* = this._1722718208_player;
            if (_loc_2 !== param1)
            {
                this._1722718208_player = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "_player", _loc_2, param1));
            }
            return;
        }// end function

        public function set taskBox(param1:Box) : void
        {
            var _loc_2:* = this._1537268218taskBox;
            if (_loc_2 !== param1)
            {
                this._1537268218taskBox = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "taskBox", _loc_2, param1));
            }
            return;
        }// end function

        public function set announcements(param1:Array) : void
        {
            var _loc_4:Object = null;
            info_txt_box_news.removeAllChildren();
            var _loc_2:int = 0;
            var _loc_3:* = new Text();
            _loc_3.styleName = "InfoTxt";
            _loc_3.width = 360;
            for each (_loc_4 in param1)
            {
                
                if (_loc_3.htmlText)
                {
                    _loc_3.htmlText = _loc_4.announcement.body + "\n\n" + _loc_3.htmlText;
                }
                else
                {
                    _loc_3.htmlText = _loc_3.htmlText + (_loc_4.announcement.body + "\n\n");
                }
                _loc_2++;
                if (_loc_2 > 200)
                {
                    break;
                }
            }
            info_txt_box_news.addChild(_loc_3);
            info_txt_box_news.validateNow();
            info_txt_box_news.verticalScrollPosition = info_txt_box_news.maxVerticalScrollPosition;
            return;
        }// end function

        private function get rangeImage() : Class
        {
            return this._1835614690rangeImage;
        }// end function

        public function getIncrementMaxTasksText() : String
        {
            if (isMaxTaskIncrement())
            {
                return Utils.i18n("localize0") + "<br/>&nbsp;&nbsp;" + player.incrementMaxTasksAtLabel + Utils.i18n("localize1");
            }
            return Utils.i18n("localize2") + "<br/>&nbsp;&nbsp;" + Utils.i18n("localize3");
        }// end function

        public function get playerStatus() : PlayerStatus
        {
            return this._252712397playerStatus;
        }// end function

        private function set rangeImage(param1:Class) : void
        {
            var _loc_2:* = this._1835614690rangeImage;
            if (_loc_2 !== param1)
            {
                this._1835614690rangeImage = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "rangeImage", _loc_2, param1));
            }
            return;
        }// end function

        public function get infoBox() : Box
        {
            return this._1945385533infoBox;
        }// end function

        public function get hexInputWindow() : HexInputWindow
        {
            return this._831240641hexInputWindow;
        }// end function

        private function _AllMap_bindingsSetup() : Array
        {
            var binding:Binding;
            var result:Array;
            binding = new Binding(this, function () : Object
            {
                return rangeImage;
            }// end function
            , function (param1:Object) : void
            {
                fort_range.source = param1;
                return;
            }// end function
            , "fort_range.source");
            result[0] = binding;
            binding = new Binding(this, function () : Object
            {
                return _swf_info_chat;
            }// end function
            , function (param1:Object) : void
            {
                infoChat.source = param1;
                return;
            }// end function
            , "infoChat.source");
            result[1] = binding;
            binding = new Binding(this, function () : Object
            {
                return _tasks;
            }// end function
            , function (param1:Object) : void
            {
                taskList.dataProvider = param1;
                return;
            }// end function
            , "taskList.dataProvider");
            result[2] = binding;
            binding = new Binding(this, function () : Object
            {
                return swf_faction;
            }// end function
            , function (param1:Object) : void
            {
                _AllMap_Image6.source = param1;
                return;
            }// end function
            , "_AllMap_Image6.source");
            result[3] = binding;
            binding = new Binding(this, function () : Object
            {
                return swf_rank;
            }// end function
            , function (param1:Object) : void
            {
                _AllMap_Image7.source = param1;
                return;
            }// end function
            , "_AllMap_Image7.source");
            result[4] = binding;
            binding = new Binding(this, function () : Boolean
            {
                return _unreadMail;
            }// end function
            , function (param1:Boolean) : void
            {
                _AllMap_Image9.visible = param1;
                return;
            }// end function
            , "_AllMap_Image9.visible");
            result[5] = binding;
            return result;
        }// end function

        public function setFortRangeImage() : void
        {
            rangeImage = fortRange;
            return;
        }// end function

        public function changeFaction(param1) : void
        {
            MovieClip(Loader(swf_faction.getChildAt(0)).content).gotoAndPlay(0);
            MovieClip(Loader(swf_faction.getChildAt(0)).content).gotoAndPlay(param1);
            return;
        }// end function

        private function get _config() : ConfigVO
        {
            return this._1353678945_config;
        }// end function

        public function set infoChat(param1:Image) : void
        {
            var _loc_2:* = this._177431846infoChat;
            if (_loc_2 !== param1)
            {
                this._177431846infoChat = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "infoChat", _loc_2, param1));
            }
            return;
        }// end function

        public function set playerStatus(param1:PlayerStatus) : void
        {
            var _loc_2:* = this._252712397playerStatus;
            if (_loc_2 !== param1)
            {
                this._252712397playerStatus = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "playerStatus", _loc_2, param1));
            }
            return;
        }// end function

        private function get functionButtonX() : int
        {
            return this._2054004626functionButtonX;
        }// end function

        private function get functionButtonY() : int
        {
            return this._2054004625functionButtonY;
        }// end function

        public function chatButtonsAnimation(param1:String) : void
        {
            MovieClip(Loader(_swf_info_chat.getChildAt(0)).content).gotoAndPlay(param1);
            return;
        }// end function

        private function _AllMap_bindingExprs() : void
        {
            var _loc_1:* = undefined;
            _loc_1 = rangeImage;
            _loc_1 = _swf_info_chat;
            _loc_1 = _tasks;
            _loc_1 = swf_faction;
            _loc_1 = swf_rank;
            _loc_1 = _unreadMail;
            return;
        }// end function

        public function set infoBox(param1:Box) : void
        {
            var _loc_2:* = this._1945385533infoBox;
            if (_loc_2 !== param1)
            {
                this._1945385533infoBox = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "infoBox", _loc_2, param1));
            }
            return;
        }// end function

        public function get guildMemberListWindow() : GuildMemberListWindow
        {
            return this._1762243195guildMemberListWindow;
        }// end function

        public function set config(param1:ConfigVO) : void
        {
            _config = param1;
            hexInfoWindow.fourByFourAreaFlag = _config.fourByFourAreaFlag;
            return;
        }// end function

        public function set hexInputWindow(param1:HexInputWindow) : void
        {
            var _loc_2:* = this._831240641hexInputWindow;
            if (_loc_2 !== param1)
            {
                this._831240641hexInputWindow = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "hexInputWindow", _loc_2, param1));
            }
            return;
        }// end function

        private function get _tasks() : Array
        {
            return this._1465065841_tasks;
        }// end function

        public function get infoCanbas() : Canvas
        {
            return this._1292779374infoCanbas;
        }// end function

        public function set chatBox(param1:Box) : void
        {
            var _loc_2:* = this._739087187chatBox;
            if (_loc_2 !== param1)
            {
                this._739087187chatBox = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "chatBox", _loc_2, param1));
            }
            return;
        }// end function

        public function onClickCloseButton() : void
        {
            functionButtonClicked = false;
            sendEvent(Viking.HOME_CLOSE_NOW_WINDOW);
            return;
        }// end function

        public function get info() : Image
        {
            return this._3237038info;
        }// end function

        public function finishTask(param1:TaskVO) : void
        {
            confirmFinishTaskWindow.task = param1;
            confirmFinishTaskWindow.init();
            popupWindow(confirmFinishTaskWindow, false);
            return;
        }// end function

        public function set cursor(param1:Image) : void
        {
            var _loc_2:* = this._1349119146cursor;
            if (_loc_2 !== param1)
            {
                this._1349119146cursor = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "cursor", _loc_2, param1));
            }
            return;
        }// end function

        private function set swf_faction(param1:MovieClipLoaderAsset) : void
        {
            var _loc_2:* = this._811672225swf_faction;
            if (_loc_2 !== param1)
            {
                this._811672225swf_faction = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "swf_faction", _loc_2, param1));
            }
            return;
        }// end function

        public function get glowoff() : Glow
        {
            return this._121712834glowoff;
        }// end function

        public function ___AllMap_Image11_click(event:MouseEvent) : void
        {
            dispatchEvent(new Event(BACK_HOME));
            return;
        }// end function

        public function set products(param1:Image) : void
        {
            var _loc_2:* = this._1003761308products;
            if (_loc_2 !== param1)
            {
                this._1003761308products = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "products", _loc_2, param1));
            }
            return;
        }// end function

        public function get fort_range() : Image
        {
            return this._2112314167fort_range;
        }// end function

        private function _AllMap_Glow2_i() : Glow
        {
            var _loc_1:* = new Glow();
            glowoff = _loc_1;
            _loc_1.alphaFrom = 0.9;
            _loc_1.alphaTo = 0;
            _loc_1.blurXFrom = 10;
            _loc_1.blurXTo = 2;
            _loc_1.blurYFrom = 10;
            _loc_1.blurYTo = 2;
            _loc_1.color = 16766976;
            _loc_1.inner = false;
            _loc_1.knockout = false;
            _loc_1.strength = 1;
            return _loc_1;
        }// end function

        private function get _swf_info_chat() : MovieClipLoaderAsset
        {
            return this._847285043_swf_info_chat;
        }// end function

        private function set _config(param1:ConfigVO) : void
        {
            var _loc_2:* = this._1353678945_config;
            if (_loc_2 !== param1)
            {
                this._1353678945_config = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "_config", _loc_2, param1));
            }
            return;
        }// end function

        private function set functionButtonX(param1:int) : void
        {
            var _loc_2:* = this._2054004626functionButtonX;
            if (_loc_2 !== param1)
            {
                this._2054004626functionButtonX = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "functionButtonX", _loc_2, param1));
            }
            return;
        }// end function

        private function set functionButtonY(param1:int) : void
        {
            var _loc_2:* = this._2054004625functionButtonY;
            if (_loc_2 !== param1)
            {
                this._2054004625functionButtonY = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "functionButtonY", _loc_2, param1));
            }
            return;
        }// end function

        public function get allMapCommandWindow() : AllMapCommandWindow
        {
            return this._657113376allMapCommandWindow;
        }// end function

        public function get player() : PlayerVO
        {
            return _player;
        }// end function

        private function initApp() : void
        {
            return;
        }// end function

        public function set guildMemberListWindow(param1:GuildMemberListWindow) : void
        {
            var _loc_2:* = this._1762243195guildMemberListWindow;
            if (_loc_2 !== param1)
            {
                this._1762243195guildMemberListWindow = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "guildMemberListWindow", _loc_2, param1));
            }
            return;
        }// end function

        public function get infoButtonCanvas() : Canvas
        {
            return this._1336606984infoButtonCanvas;
        }// end function

        private function _AllMap_ClassFactory1_c() : ClassFactory
        {
            var _loc_1:* = new ClassFactory();
            _loc_1.generator = TaskTextRenderer;
            return _loc_1;
        }// end function

        private function _AllMap_Glow1_i() : Glow
        {
            var _loc_1:* = new Glow();
            glow = _loc_1;
            _loc_1.alphaFrom = 0.1;
            _loc_1.alphaTo = 0.9;
            _loc_1.blurXFrom = 2;
            _loc_1.blurXTo = 10;
            _loc_1.blurYFrom = 2;
            _loc_1.blurYTo = 10;
            _loc_1.color = 16766976;
            _loc_1.inner = false;
            _loc_1.knockout = false;
            _loc_1.strength = 1;
            return _loc_1;
        }// end function

        private function init() : void
        {
            var x:int;
            var image:Image;
            confirmFinishTaskWindow.addEventListener(ConfirmFinishTaskWindow.CONFIRMED, function (event:PopupEvent) : void
            {
                dispatchEvent(new PopupEvent(Viking.FINISH_TASK_IMMEDIATELY, event.param));
                return;
            }// end function
            );
            width = AllMapProxy.BG_IMAGE_WIDTH * AllMapProxy.BG_IMAGE_COLUMN;
            height = AllMapProxy.BG_IMAGE_HEIGHT * AllMapProxy.BG_IMAGE_ROW;
            var cursor:* = bgCanvas.removeChildAt((bgCanvas.numChildren - 1));
            var fort_range:* = bgCanvas.removeChildAt((bgCanvas.numChildren - 1));
            var index:int;
            var y:int;
            while (y < AllMapProxy.BG_IMAGE_ROW)
            {
                
                x;
                while (x < AllMapProxy.BG_IMAGE_COLUMN)
                {
                    
                    image = new Image();
                    image.x = AllMapProxy.BG_IMAGE_WIDTH * x;
                    image.y = AllMapProxy.BG_IMAGE_HEIGHT * y;
                    bgCanvas.addChild(image);
                    index = (index + 1);
                    x = (x + 1);
                }
                y = (y + 1);
            }
            bgCanvas.addChild(fort_range);
            bgCanvas.addChild(cursor);
            MovieClip(Loader(_swf_info_chat.getChildAt(0)).content).gotoAndPlay("b_guild");
            return;
        }// end function

        public function incrementMaxTasks() : void
        {
            sendEvent(Viking.INCREMENT_MAX_TASK_CONFIRM);
            return;
        }// end function

        public function set tasks(param1:Array) : void
        {
            _tasks = param1.concat();
            if (player)
            {
                _IncrementTasks.activityType = TaskVO.MAX_TASKS_INCREMENT_VIEW;
                _tasks[param1.length] = _IncrementTasks;
            }
            taskList.height = taskList.rowHeight * _tasks.length;
            return;
        }// end function

        private function set _tasks(param1:Array) : void
        {
            var _loc_2:* = this._1465065841_tasks;
            if (_loc_2 !== param1)
            {
                this._1465065841_tasks = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "_tasks", _loc_2, param1));
            }
            return;
        }// end function

        public function set infoCanbas(param1:Canvas) : void
        {
            var _loc_2:* = this._1292779374infoCanbas;
            if (_loc_2 !== param1)
            {
                this._1292779374infoCanbas = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "infoCanbas", _loc_2, param1));
            }
            return;
        }// end function

        public function get infoChat() : Image
        {
            return this._177431846infoChat;
        }// end function

        public function set glow(param1:Glow) : void
        {
            var _loc_2:* = this._3175821glow;
            if (_loc_2 !== param1)
            {
                this._3175821glow = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "glow", _loc_2, param1));
            }
            return;
        }// end function

        private function set functionButtonClicked(param1:Boolean) : void
        {
            var _loc_2:* = this._144088989functionButtonClicked;
            if (_loc_2 !== param1)
            {
                this._144088989functionButtonClicked = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "functionButtonClicked", _loc_2, param1));
            }
            return;
        }// end function

        public function setTowerRangeImage() : void
        {
            rangeImage = towerRange;
            return;
        }// end function

        public function get config() : ConfigVO
        {
            return _config;
        }// end function

        private function set _unreadMail(param1:Boolean) : void
        {
            var _loc_2:* = this._1746785189_unreadMail;
            if (_loc_2 !== param1)
            {
                this._1746785189_unreadMail = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "_unreadMail", _loc_2, param1));
            }
            return;
        }// end function

        public function get chatBox() : Box
        {
            return this._739087187chatBox;
        }// end function

        public function set info_txt_box_news(param1:Box) : void
        {
            var _loc_2:* = this._970364505info_txt_box_news;
            if (_loc_2 !== param1)
            {
                this._970364505info_txt_box_news = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "info_txt_box_news", _loc_2, param1));
            }
            return;
        }// end function

        public function set info(param1:Image) : void
        {
            var _loc_2:* = this._3237038info;
            if (_loc_2 !== param1)
            {
                this._3237038info = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "info", _loc_2, param1));
            }
            return;
        }// end function

        public function get cursor() : Image
        {
            return this._1349119146cursor;
        }// end function

        private function get swf_faction() : MovieClipLoaderAsset
        {
            return this._811672225swf_faction;
        }// end function

        public function get products() : Image
        {
            return this._1003761308products;
        }// end function

        private function set infoBoxVO(param1:InfoBoxVO) : void
        {
            var _loc_2:* = this._1204726198infoBoxVO;
            if (_loc_2 !== param1)
            {
                this._1204726198infoBoxVO = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "infoBoxVO", _loc_2, param1));
            }
            return;
        }// end function

        public function ___AllMap_CanvasWithPopUp1_creationComplete(event:FlexEvent) : void
        {
            init();
            return;
        }// end function

        public function set hexInfoWindow(param1:HexInfoWindow) : void
        {
            var _loc_2:* = this._98171833hexInfoWindow;
            if (_loc_2 !== param1)
            {
                this._98171833hexInfoWindow = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "hexInfoWindow", _loc_2, param1));
            }
            return;
        }// end function

        public function set guildChatWindow(param1:GuildChatWindow) : void
        {
            var _loc_2:* = this._1211793989guildChatWindow;
            if (_loc_2 !== param1)
            {
                this._1211793989guildChatWindow = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "guildChatWindow", _loc_2, param1));
            }
            return;
        }// end function

        public function set glowoff(param1:Glow) : void
        {
            var _loc_2:* = this._121712834glowoff;
            if (_loc_2 !== param1)
            {
                this._121712834glowoff = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "glowoff", _loc_2, param1));
            }
            return;
        }// end function

        public function ___AllMap_Image10_click(event:MouseEvent) : void
        {
            sendEvent(Viking.ALL_MAP_BATTLE_REPORT_LIST);
            return;
        }// end function

        public function set taskList(param1:List) : void
        {
            var _loc_2:* = this._410382397taskList;
            if (_loc_2 !== param1)
            {
                this._410382397taskList = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "taskList", _loc_2, param1));
            }
            return;
        }// end function

        public function get glow() : Glow
        {
            return this._3175821glow;
        }// end function

        public function get tasks() : Array
        {
            return _tasks;
        }// end function

        override public function initialize() : void
        {
            var target:AllMap;
            var watcherSetupUtilClass:Object;
            .mx_internal::setDocumentDescriptor(_documentDescriptor_);
            var bindings:* = _AllMap_bindingsSetup();
            var watchers:Array;
            target;
            if (_watcherSetupUtil == null)
            {
                watcherSetupUtilClass = getDefinitionByName("_com_kbmj_viking_AllMapWatcherSetupUtil");
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

        public function set fort_range(param1:Image) : void
        {
            var _loc_2:* = this._2112314167fort_range;
            if (_loc_2 !== param1)
            {
                this._2112314167fort_range = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "fort_range", _loc_2, param1));
            }
            return;
        }// end function

        private function set swf_rank(param1:MovieClipLoaderAsset) : void
        {
            var _loc_2:* = this._190117943swf_rank;
            if (_loc_2 !== param1)
            {
                this._190117943swf_rank = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "swf_rank", _loc_2, param1));
            }
            return;
        }// end function

        private function set _swf_info_chat(param1:MovieClipLoaderAsset) : void
        {
            var _loc_2:* = this._847285043_swf_info_chat;
            if (_loc_2 !== param1)
            {
                this._847285043_swf_info_chat = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "_swf_info_chat", _loc_2, param1));
            }
            return;
        }// end function

        private function get functionButtonClicked() : Boolean
        {
            return this._144088989functionButtonClicked;
        }// end function

        private function get _unreadMail() : Boolean
        {
            return this._1746785189_unreadMail;
        }// end function

        public function set productionInfoWindow(param1:ProductionInfoWindow) : void
        {
            var _loc_2:* = this._1252748247productionInfoWindow;
            if (_loc_2 !== param1)
            {
                this._1252748247productionInfoWindow = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "productionInfoWindow", _loc_2, param1));
            }
            return;
        }// end function

        public function isMaxTaskIncrement() : Boolean
        {
            return player && player.incrementMaxTasks;
        }// end function

        public function set miniMapWindow(param1:MiniMapWindow) : void
        {
            var _loc_2:* = this._1776491051miniMapWindow;
            if (_loc_2 !== param1)
            {
                this._1776491051miniMapWindow = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "miniMapWindow", _loc_2, param1));
            }
            return;
        }// end function

        public function get info_txt_box_news() : Box
        {
            return this._970364505info_txt_box_news;
        }// end function

        public function get hexInfoWindow() : HexInfoWindow
        {
            return this._98171833hexInfoWindow;
        }// end function

        public function get guildChatWindow() : GuildChatWindow
        {
            return this._1211793989guildChatWindow;
        }// end function

        private function get infoBoxVO() : InfoBoxVO
        {
            return this._1204726198infoBoxVO;
        }// end function

        public function set allMapCommandWindow(param1:AllMapCommandWindow) : void
        {
            var _loc_2:* = this._657113376allMapCommandWindow;
            if (_loc_2 !== param1)
            {
                this._657113376allMapCommandWindow = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "allMapCommandWindow", _loc_2, param1));
            }
            return;
        }// end function

        public function set player(param1:PlayerVO) : void
        {
            _player = param1;
            unreadMail = player.unreadMail;
            return;
        }// end function

        public function get taskList() : List
        {
            return this._410382397taskList;
        }// end function

        private function get swf_rank() : MovieClipLoaderAsset
        {
            return this._190117943swf_rank;
        }// end function

        public function get productionInfoWindow() : ProductionInfoWindow
        {
            return this._1252748247productionInfoWindow;
        }// end function

        public function ___AllMap_Image8_click(event:MouseEvent) : void
        {
            sendEvent(Viking.ALL_MAP_MAIL_LIST);
            return;
        }// end function

        public function set infoButtonCanvas(param1:Canvas) : void
        {
            var _loc_2:* = this._1336606984infoButtonCanvas;
            if (_loc_2 !== param1)
            {
                this._1336606984infoButtonCanvas = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "infoButtonCanvas", _loc_2, param1));
            }
            return;
        }// end function

        public function get miniMapWindow() : MiniMapWindow
        {
            return this._1776491051miniMapWindow;
        }// end function

        public function set bgCanvas(param1:Canvas) : void
        {
            var _loc_2:* = this._2068552195bgCanvas;
            if (_loc_2 !== param1)
            {
                this._2068552195bgCanvas = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "bgCanvas", _loc_2, param1));
            }
            return;
        }// end function

        public function changeRank(param1) : void
        {
            MovieClip(Loader(swf_rank.getChildAt(0)).content).gotoAndPlay(0);
            MovieClip(Loader(swf_rank.getChildAt(0)).content).gotoAndPlay(param1);
            return;
        }// end function

        public function get bgCanvas() : Canvas
        {
            return this._2068552195bgCanvas;
        }// end function

        public static function set watcherSetupUtil(param1:IWatcherSetupUtil) : void
        {
            AllMap._watcherSetupUtil = param1;
            return;
        }// end function

    }
}
