package com.kbmj.viking
{
    import com.kbmj.viking.lib.*;
    import com.kbmj.viking.view.*;
    import com.kbmj.viking.view.city.*;
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

    public class City extends CanvasWithPopUp implements IBindingClient
    {
        private var _1433715808_swf_faction:MovieClipLoaderAsset;
        private var _1707870751_nextRankExp:int = 0;
        private var _99600088_swf_rank:MovieClipLoaderAsset;
        private var _1988993165cancelBtnOff:Image;
        private var _896581914questAcceptWindow:QuestAcceptWindow;
        private var _3016401base:Image;
        private var _592750547buyPaymentItem:Boolean = false;
        var _bindingsByDestination:Object;
        private var _2017146180onmyouRankUpMask:Image;
        private var _238121901confirmBtnOff:Image;
        private var _933984765_playerExp:int = 0;
        private var _embed_mxml__swf_window_info_home_swf_1388347787:Class;
        private var _3237038info:Image;
        private var rankUpCheckWindow:RankUpCheckWindow;
        private var _embed_mxml__swf_home_city_button_be_promoted_off_swf_162402921:Class;
        private var _1207364618_swf_rank2:MovieClipLoaderAsset;
        private var _1003761308products:Image;
        private var _550973029_swf_npc:MovieClipLoaderAsset;
        private var _1394698985loadingMask1:Image;
        private var _609572876completeBtnOff:Image;
        private var _1479771291acceptBtnOff:Image;
        private var _651852698guild_member:Label;
        private var _1453535911guild_area:Label;
        private var _1744201592pureGold:int = 0;
        private var _252712397playerStatus:PlayerStatus;
        private var _1453164713guild_name:Label;
        public var _City_Label1:Label;
        public var _City_Label2:Label;
        public var _City_Label3:Label;
        public var _City_Label4:Label;
        public var _City_Label5:Label;
        private var _1689471730questConfirmWindow:QuestConfirmWindow;
        private var _1252748247productionInfoWindow:ProductionInfoWindow;
        private var _78391490Quest:Canvas;
        private var _69159891Guild:Canvas;
        private var EmbedSwfBase:Class;
        private var _1394698986loadingMask2:Image;
        private var _930328611guildDetailVO:GuildDetailVO;
        private var _1879273818playerVO:PlayerVO;
        var _watchers:Array;
        private var _1081306052market:Market;
        private var _1997438884Market:Canvas;
        var _bindingsBeginWithWord:Object;
        public var _City_Image4:Image;
        public var _City_Image5:Image;
        public var _City_Image6:Image;
        public var _City_Image7:Image;
        private var _877351859temple:Temple;
        private var _embed_mxml__swf_window_info_products_swf_1304559433:Class;
        var _bindings:Array;
        private var _902311155silver:int = 0;
        private var _1064342965EmbedSwfOnmyouOff:Class;
        private var _1810261432cityViewStack:ViewStack;
        private var _documentDescriptor_:UIComponentDescriptor;
        private var _1110878132_playerRank:int = 0;
        private var _100076595_swf_base:MovieClipLoaderAsset;
        private var _1715715710guildMenuFlag:Boolean = false;
        private var _97299bar:Bar;
        private static var _watcherSetupUtil:IWatcherSetupUtil;
        public static var EmbedSwfSeimei:Class = City_EmbedSwfSeimei;

        public function City()
        {
            _documentDescriptor_ = new UIComponentDescriptor({type:CanvasWithPopUp, propertiesFactory:function () : Object
            {
                return {width:760, height:560, childDescriptors:[new UIComponentDescriptor({type:ViewStack, id:"cityViewStack", propertiesFactory:function () : Object
                {
                    return {childDescriptors:[new UIComponentDescriptor({type:Canvas, propertiesFactory:function () : Object
                    {
                        return {label:"Base", childDescriptors:[new UIComponentDescriptor({type:Image, id:"base"})]};
                    }// end function
                    }), new UIComponentDescriptor({type:Market, id:"market"}), new UIComponentDescriptor({type:Temple, id:"temple"}), new UIComponentDescriptor({type:Bar, id:"bar"})]};
                }// end function
                }), new UIComponentDescriptor({type:Canvas, propertiesFactory:function () : Object
                {
                    return {childDescriptors:[new UIComponentDescriptor({type:Image, id:"products", propertiesFactory:function () : Object
                    {
                        return {source:_embed_mxml__swf_window_info_products_swf_1304559433, x:363, y:0};
                    }// end function
                    }), new UIComponentDescriptor({type:Image, id:"info", propertiesFactory:function () : Object
                    {
                        return {source:_embed_mxml__swf_window_info_home_swf_1388347787, x:0, y:0};
                    }// end function
                    }), new UIComponentDescriptor({type:Image, id:"_City_Image4", propertiesFactory:function () : Object
                    {
                        return {x:37, y:17};
                    }// end function
                    }), new UIComponentDescriptor({type:Image, id:"_City_Image5", propertiesFactory:function () : Object
                    {
                        return {x:58, y:17};
                    }// end function
                    }), new UIComponentDescriptor({type:ProductionInfoWindow, id:"productionInfoWindow", propertiesFactory:function () : Object
                    {
                        return {x:380, y:14};
                    }// end function
                    }), new UIComponentDescriptor({type:PlayerStatus, id:"playerStatus", propertiesFactory:function () : Object
                    {
                        return {x:10};
                    }// end function
                    })]};
                }// end function
                }), new UIComponentDescriptor({type:Canvas, id:"Market", stylesFactory:function () : void
                {
                    this.fontSize = 14;
                    this.color = 4404528;
                    this.textAlign = "right";
                    return;
                }// end function
                , propertiesFactory:function () : Object
                {
                    return {visible:false, childDescriptors:[new UIComponentDescriptor({type:Label, id:"_City_Label1", propertiesFactory:function () : Object
                    {
                        return {x:610, y:109, width:125};
                    }// end function
                    }), new UIComponentDescriptor({type:Label, id:"_City_Label2", propertiesFactory:function () : Object
                    {
                        return {x:610, y:129, width:125};
                    }// end function
                    }), new UIComponentDescriptor({type:Label, id:"_City_Label3", propertiesFactory:function () : Object
                    {
                        return {x:610, y:149, width:125};
                    }// end function
                    })]};
                }// end function
                }), new UIComponentDescriptor({type:Canvas, id:"Quest", stylesFactory:function () : void
                {
                    this.fontSize = 14;
                    this.color = 4404528;
                    return;
                }// end function
                , propertiesFactory:function () : Object
                {
                    return {visible:false, childDescriptors:[new UIComponentDescriptor({type:Image, id:"_City_Image6", propertiesFactory:function () : Object
                    {
                        return {x:612, y:92};
                    }// end function
                    }), new UIComponentDescriptor({type:Label, id:"_City_Label4", stylesFactory:function () : void
                    {
                        this.textAlign = "center";
                        return;
                    }// end function
                    , propertiesFactory:function () : Object
                    {
                        return {x:610, y:109, width:125};
                    }// end function
                    }), new UIComponentDescriptor({type:Label, id:"_City_Label5", stylesFactory:function () : void
                    {
                        this.textAlign = "right";
                        return;
                    }// end function
                    , propertiesFactory:function () : Object
                    {
                        return {x:610, y:129, width:125};
                    }// end function
                    }), new UIComponentDescriptor({type:Image, id:"_City_Image7", propertiesFactory:function () : Object
                    {
                        return {y:75};
                    }// end function
                    }), new UIComponentDescriptor({type:Image, id:"onmyouRankUpMask", propertiesFactory:function () : Object
                    {
                        return {x:648, y:150, source:_embed_mxml__swf_home_city_button_be_promoted_off_swf_162402921, visible:false};
                    }// end function
                    }), new UIComponentDescriptor({type:Image, id:"acceptBtnOff", propertiesFactory:function () : Object
                    {
                        return {x:610, y:211, visible:false};
                    }// end function
                    }), new UIComponentDescriptor({type:Image, id:"confirmBtnOff", propertiesFactory:function () : Object
                    {
                        return {x:610, y:241, visible:false};
                    }// end function
                    }), new UIComponentDescriptor({type:Image, id:"cancelBtnOff", propertiesFactory:function () : Object
                    {
                        return {x:610, y:271, visible:false};
                    }// end function
                    }), new UIComponentDescriptor({type:Image, id:"completeBtnOff", propertiesFactory:function () : Object
                    {
                        return {x:610, y:301, visible:false};
                    }// end function
                    })]};
                }// end function
                }), new UIComponentDescriptor({type:Canvas, id:"Guild", stylesFactory:function () : void
                {
                    this.fontSize = 14;
                    this.color = 4404528;
                    return;
                }// end function
                , propertiesFactory:function () : Object
                {
                    return {visible:false, childDescriptors:[new UIComponentDescriptor({type:Label, id:"guild_name", stylesFactory:function () : void
                    {
                        this.textAlign = "center";
                        this.fontWeight = "bold";
                        return;
                    }// end function
                    , propertiesFactory:function () : Object
                    {
                        return {x:610, y:90, width:125};
                    }// end function
                    }), new UIComponentDescriptor({type:Label, id:"guild_member", stylesFactory:function () : void
                    {
                        this.textAlign = "right";
                        return;
                    }// end function
                    , propertiesFactory:function () : Object
                    {
                        return {x:610, y:115, width:125};
                    }// end function
                    }), new UIComponentDescriptor({type:Label, id:"guild_area", stylesFactory:function () : void
                    {
                        this.textAlign = "right";
                        return;
                    }// end function
                    , propertiesFactory:function () : Object
                    {
                        return {x:610, y:155, width:125};
                    }// end function
                    }), new UIComponentDescriptor({type:Image, id:"loadingMask1", propertiesFactory:function () : Object
                    {
                        return {x:610, y:211, visible:true};
                    }// end function
                    }), new UIComponentDescriptor({type:Image, id:"loadingMask2", propertiesFactory:function () : Object
                    {
                        return {x:610, y:241, visible:true};
                    }// end function
                    })]};
                }// end function
                }), new UIComponentDescriptor({type:QuestAcceptWindow, id:"questAcceptWindow", propertiesFactory:function () : Object
                {
                    return {visible:false};
                }// end function
                }), new UIComponentDescriptor({type:QuestConfirmWindow, id:"questConfirmWindow", propertiesFactory:function () : Object
                {
                    return {visible:false};
                }// end function
                })]};
            }// end function
            });
            EmbedSwfBase = City_EmbedSwfBase;
            _100076595_swf_base = new EmbedSwfBase();
            _1433715808_swf_faction = new Viking.EmbedSwfIconFaction();
            _99600088_swf_rank = new Viking.EmbedSwfIconRank();
            _1207364618_swf_rank2 = new Viking.EmbedSwfIconRank();
            _550973029_swf_npc = new EmbedSwfSeimei();
            _1064342965EmbedSwfOnmyouOff = City_EmbedSwfOnmyouOff;
            rankUpCheckWindow = new RankUpCheckWindow();
            _embed_mxml__swf_home_city_button_be_promoted_off_swf_162402921 = City__embed_mxml__swf_home_city_button_be_promoted_off_swf_162402921;
            _embed_mxml__swf_window_info_home_swf_1388347787 = City__embed_mxml__swf_window_info_home_swf_1388347787;
            _embed_mxml__swf_window_info_products_swf_1304559433 = City__embed_mxml__swf_window_info_products_swf_1304559433;
            _bindings = [];
            _watchers = [];
            _bindingsByDestination = {};
            _bindingsBeginWithWord = {};
            mx_internal::_document = this;
            this.width = 760;
            this.height = 560;
            this.addEventListener("creationComplete", ___City_CanvasWithPopUp1_creationComplete);
            return;
        }// end function

        private function get buyPaymentItem() : Boolean
        {
            return this._592750547buyPaymentItem;
        }// end function

        private function set _playerExp(param1:int) : void
        {
            var _loc_2:* = this._933984765_playerExp;
            if (_loc_2 !== param1)
            {
                this._933984765_playerExp = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "_playerExp", _loc_2, param1));
            }
            return;
        }// end function

        private function get _swf_rank2() : MovieClipLoaderAsset
        {
            return this._1207364618_swf_rank2;
        }// end function

        public function get completeBtnOff() : Image
        {
            return this._609572876completeBtnOff;
        }// end function

        private function set _swf_rank2(param1:MovieClipLoaderAsset) : void
        {
            var _loc_2:* = this._1207364618_swf_rank2;
            if (_loc_2 !== param1)
            {
                this._1207364618_swf_rank2 = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "_swf_rank2", _loc_2, param1));
            }
            return;
        }// end function

        public function announcementWindow() : void
        {
            popupWindow(rankUpCheckWindow);
            rankUpCheckWindow.rank = _playerRank;
            rankUpCheckWindow.check.visible = false;
            rankUpCheckWindow.announcement.visible = true;
            return;
        }// end function

        public function set completeBtnOff(param1:Image) : void
        {
            var _loc_2:* = this._609572876completeBtnOff;
            if (_loc_2 !== param1)
            {
                this._609572876completeBtnOff = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "completeBtnOff", _loc_2, param1));
            }
            return;
        }// end function

        public function set questConfirmWindow(param1:QuestConfirmWindow) : void
        {
            var _loc_2:* = this._1689471730questConfirmWindow;
            if (_loc_2 !== param1)
            {
                this._1689471730questConfirmWindow = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "questConfirmWindow", _loc_2, param1));
            }
            return;
        }// end function

        public function loadingMaskOff() : void
        {
            loadingMask1.visible = false;
            loadingMask2.visible = false;
            return;
        }// end function

        public function set silver(param1:int) : void
        {
            var _loc_2:* = this._902311155silver;
            if (_loc_2 !== param1)
            {
                this._902311155silver = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "silver", _loc_2, param1));
            }
            return;
        }// end function

        private function buildGuild() : void
        {
            sendEvent(Viking.CITY_ACTION_SHOW_TEMPLE);
            MovieClip(Loader(_swf_base.getChildAt(0)).content).gotoAndPlay("guild_nonmember");
            Loader(_swf_base.getChildAt(0)).content.addEventListener("ENLARGE_END", function (event:Event) : void
            {
                arguments = new activation;
                var e:* = event;
                var arguments:* = arguments;
                Loader(_swf_base.getChildAt(0)).content.removeEventListener("ENLARGE_END", callee);
                Guild.visible = true;
                Loader(_swf_base.getChildAt(0)).content.addEventListener("BUTTON_BACK", function (event:Event) : void
                {
                    Loader(_swf_base.getChildAt(0)).content.removeEventListener("BUTTON_BACK", arguments.callee);
                    Guild.visible = false;
                    guildMenuFlag = false;
                    loadingMaskOn();
                    sendEvent(Viking.CITY_ACTION_BACK_HOME);
                    return;
                }// end function
                );
                return;
            }// end function
            );
            guildMenuFlag = true;
            return;
        }// end function

        public function changeGuildMenu() : void
        {
            if (guildMenuFlag == false)
            {
                return;
            }
            loadingMaskOff();
            if (playerVO && playerVO.guild)
            {
                guild_name.text = guildDetailVO.guildName;
                guild_member.text = "" + guildDetailVO.membershipCount;
                guild_area.text = "" + guildDetailVO.allTerritoriesCount + "(" + guildDetailVO.levelMaxPropertiesCount + ")";
                MovieClip(Loader(_swf_base.getChildAt(0)).content).gotoAndPlay("guild_member");
            }
            else
            {
                guild_name.text = Utils.i18n("cityIndependent");
                guild_member.text = "---";
                guild_area.text = "----(----)";
                MovieClip(Loader(_swf_base.getChildAt(0)).content).gotoAndPlay("guild_nonmember");
            }
            return;
        }// end function

        public function get bar() : Bar
        {
            return this._97299bar;
        }// end function

        public function set bar(param1:Bar) : void
        {
            var _loc_2:* = this._97299bar;
            if (_loc_2 !== param1)
            {
                this._97299bar = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "bar", _loc_2, param1));
            }
            return;
        }// end function

        private function get _nextRankExp() : int
        {
            return this._1707870751_nextRankExp;
        }// end function

        public function set questAcceptWindow(param1:QuestAcceptWindow) : void
        {
            var _loc_2:* = this._896581914questAcceptWindow;
            if (_loc_2 !== param1)
            {
                this._896581914questAcceptWindow = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "questAcceptWindow", _loc_2, param1));
            }
            return;
        }// end function

        public function setLocation(param1:String, param2:int, param3:ConfigVO = null) : void
        {
            if (param3)
            {
                setConfig(param3);
            }
            if (param1 == "market")
            {
                buildMarket();
            }
            else if (param1 == "quest")
            {
                buildQuest(param2);
            }
            else
            {
                buildGuild();
            }
            return;
        }// end function

        public function get playerStatus() : PlayerStatus
        {
            return this._252712397playerStatus;
        }// end function

        public function get market() : Market
        {
            return this._1081306052market;
        }// end function

        private function set _nextRankExp(param1:int) : void
        {
            var _loc_2:* = this._1707870751_nextRankExp;
            if (_loc_2 !== param1)
            {
                this._1707870751_nextRankExp = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "_nextRankExp", _loc_2, param1));
            }
            return;
        }// end function

        private function setConfig(param1:ConfigVO) : void
        {
            buyPaymentItem = param1.buyPaymentItemsEnabled;
            return;
        }// end function

        public function loadingMaskOn() : void
        {
            loadingMask1.visible = true;
            loadingMask2.visible = true;
            return;
        }// end function

        private function buildMarket() : void
        {
            var marketLabel:* = buyPaymentItem ? ("market") : ("market_nojunction");
            MovieClip(Loader(_swf_base.getChildAt(0)).content).gotoAndPlay(marketLabel);
            sendEvent(Viking.CITY_ACTION_SHOW_MARKET);
            Loader(_swf_base.getChildAt(0)).content.addEventListener("ENLARGE_END", function (event:Event) : void
            {
                arguments = new activation;
                var e:* = event;
                var arguments:* = arguments;
                Loader(_swf_base.getChildAt(0)).content.removeEventListener("ENLARGE_END", callee);
                Market.visible = true;
                Loader(_swf_base.getChildAt(0)).content.addEventListener("BUTTON_BACK", function (event:Event) : void
                {
                    Loader(_swf_base.getChildAt(0)).content.removeEventListener("BUTTON_BACK", arguments.callee);
                    Market.visible = false;
                    sendEvent(Viking.CITY_ACTION_BACK_HOME);
                    return;
                }// end function
                );
                return;
            }// end function
            );
            return;
        }// end function

        public function changeFaction(param1) : void
        {
            MovieClip(Loader(_swf_faction.getChildAt(0)).content).gotoAndPlay(0);
            MovieClip(Loader(_swf_faction.getChildAt(0)).content).gotoAndPlay(param1);
            return;
        }// end function

        public function get temple() : Temple
        {
            return this._877351859temple;
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

        public function get confirmBtnOff() : Image
        {
            return this._238121901confirmBtnOff;
        }// end function

        private function get _playerRank() : int
        {
            return this._1110878132_playerRank;
        }// end function

        public function get Market() : Canvas
        {
            return this._1997438884Market;
        }// end function

        private function get _swf_npc() : MovieClipLoaderAsset
        {
            return this._550973029_swf_npc;
        }// end function

        public function get guild_member() : Label
        {
            return this._651852698guild_member;
        }// end function

        public function setButtonEnabled(param1:String) : void
        {
            switch(param1)
            {
                case "Accept":
                {
                    acceptBtnOff.visible = false;
                    var _loc_2:Boolean = true;
                    completeBtnOff.visible = true;
                    var _loc_2:* = _loc_2;
                    cancelBtnOff.visible = _loc_2;
                    confirmBtnOff.visible = _loc_2;
                    break;
                }
                case "Excuting":
                {
                    var _loc_2:Boolean = true;
                    completeBtnOff.visible = true;
                    acceptBtnOff.visible = _loc_2;
                    var _loc_2:Boolean = false;
                    cancelBtnOff.visible = false;
                    confirmBtnOff.visible = _loc_2;
                    break;
                }
                case "Complete":
                {
                    var _loc_2:Boolean = true;
                    cancelBtnOff.visible = true;
                    acceptBtnOff.visible = _loc_2;
                    var _loc_2:Boolean = false;
                    completeBtnOff.visible = false;
                    confirmBtnOff.visible = _loc_2;
                    break;
                }
                default:
                {
                    break;
                }
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

        private function get guildMenuFlag() : Boolean
        {
            return this._1715715710guildMenuFlag;
        }// end function

        public function set market(param1:Market) : void
        {
            var _loc_2:* = this._1081306052market;
            if (_loc_2 !== param1)
            {
                this._1081306052market = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "market", _loc_2, param1));
            }
            return;
        }// end function

        public function set onmyouRankUpMask(param1:Image) : void
        {
            var _loc_2:* = this._2017146180onmyouRankUpMask;
            if (_loc_2 !== param1)
            {
                this._2017146180onmyouRankUpMask = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "onmyouRankUpMask", _loc_2, param1));
            }
            return;
        }// end function

        public function get cancelBtnOff() : Image
        {
            return this._1988993165cancelBtnOff;
        }// end function

        private function set _playerRank(param1:int) : void
        {
            var _loc_2:* = this._1110878132_playerRank;
            if (_loc_2 !== param1)
            {
                this._1110878132_playerRank = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "_playerRank", _loc_2, param1));
            }
            return;
        }// end function

        public function set temple(param1:Temple) : void
        {
            var _loc_2:* = this._877351859temple;
            if (_loc_2 !== param1)
            {
                this._877351859temple = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "temple", _loc_2, param1));
            }
            return;
        }// end function

        public function get acceptBtnOff() : Image
        {
            return this._1479771291acceptBtnOff;
        }// end function

        public function ___City_CanvasWithPopUp1_creationComplete(event:FlexEvent) : void
        {
            init();
            return;
        }// end function

        public function set confirmBtnOff(param1:Image) : void
        {
            var _loc_2:* = this._238121901confirmBtnOff;
            if (_loc_2 !== param1)
            {
                this._238121901confirmBtnOff = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "confirmBtnOff", _loc_2, param1));
            }
            return;
        }// end function

        public function set guild_name(param1:Label) : void
        {
            var _loc_2:* = this._1453164713guild_name;
            if (_loc_2 !== param1)
            {
                this._1453164713guild_name = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "guild_name", _loc_2, param1));
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

        public function get info() : Image
        {
            return this._3237038info;
        }// end function

        public function set Market(param1:Canvas) : void
        {
            var _loc_2:* = this._1997438884Market;
            if (_loc_2 !== param1)
            {
                this._1997438884Market = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "Market", _loc_2, param1));
            }
            return;
        }// end function

        public function set guild_area(param1:Label) : void
        {
            var _loc_2:* = this._1453535911guild_area;
            if (_loc_2 !== param1)
            {
                this._1453535911guild_area = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "guild_area", _loc_2, param1));
            }
            return;
        }// end function

        public function get Quest() : Canvas
        {
            return this._78391490Quest;
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

        private function set _swf_npc(param1:MovieClipLoaderAsset) : void
        {
            var _loc_2:* = this._550973029_swf_npc;
            if (_loc_2 !== param1)
            {
                this._550973029_swf_npc = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "_swf_npc", _loc_2, param1));
            }
            return;
        }// end function

        public function set guild_member(param1:Label) : void
        {
            var _loc_2:* = this._651852698guild_member;
            if (_loc_2 !== param1)
            {
                this._651852698guild_member = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "guild_member", _loc_2, param1));
            }
            return;
        }// end function

        public function get base() : Image
        {
            return this._3016401base;
        }// end function

        public function openWindow(event:Event) : void
        {
            dispatchEvent(new Event(Viking.CITY_ACTION_SHOW_PAYMENT_COMMODITY_WINDOW));
            return;
        }// end function

        public function get loadingMask1() : Image
        {
            return this._1394698985loadingMask1;
        }// end function

        public function get loadingMask2() : Image
        {
            return this._1394698986loadingMask2;
        }// end function

        public function set pureGold(param1:int) : void
        {
            var _loc_2:* = this._1744201592pureGold;
            if (_loc_2 !== param1)
            {
                this._1744201592pureGold = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "pureGold", _loc_2, param1));
            }
            return;
        }// end function

        public function set playerExp(param1:int) : void
        {
            _playerExp = param1;
            onmyouRankUpMask.visible = !canRankUp();
            return;
        }// end function

        private function set guildMenuFlag(param1:Boolean) : void
        {
            var _loc_2:* = this._1715715710guildMenuFlag;
            if (_loc_2 !== param1)
            {
                this._1715715710guildMenuFlag = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "guildMenuFlag", _loc_2, param1));
            }
            return;
        }// end function

        public function get silver() : int
        {
            return this._902311155silver;
        }// end function

        public function get questConfirmWindow() : QuestConfirmWindow
        {
            return this._1689471730questConfirmWindow;
        }// end function

        private function buildQuest(param1:int) : void
        {
            var factionId:* = param1;
            MovieClip(Loader(_swf_base.getChildAt(0)).content).gotoAndPlay("quest_faction_0" + factionId);
            Loader(_swf_base.getChildAt(0)).content.addEventListener("ENLARGE_END", function (event:Event) : void
            {
                arguments = new activation;
                var e:* = event;
                var arguments:* = arguments;
                Loader(_swf_base.getChildAt(0)).content.removeEventListener("ENLARGE_END", callee);
                Quest.visible = true;
                onmyouRankUpMask.visible = !canRankUp();
                MovieClip(Loader(_swf_npc.getChildAt(0)).content).gotoAndPlay(0);
                MovieClip(Loader(_swf_npc.getChildAt(0)).content).gotoAndPlay("faction_0" + factionId);
                Loader(_swf_base.getChildAt(0)).content.addEventListener("BUTTON_BACK", function (event:Event) : void
                {
                    Loader(_swf_base.getChildAt(0)).content.removeEventListener("BUTTON_BACK", arguments.callee);
                    Quest.visible = false;
                    sendEvent(Viking.CITY_ACTION_BACK_HOME);
                    return;
                }// end function
                );
                return;
            }// end function
            );
            return;
        }// end function

        private function init() : void
        {
            Loader(_swf_base.getChildAt(0)).content.addEventListener("BUTTON_HOME", function (event:Event) : void
            {
                sendEvent(Viking.CITY_ACTION_BACK_HOME);
                return;
            }// end function
            );
            Loader(_swf_base.getChildAt(0)).content.addEventListener("MARKET", function (event:Event) : void
            {
                var e:* = event;
                sendEvent(Viking.CITY_ACTION_SHOW_MARKET);
                Loader(_swf_base.getChildAt(0)).content.addEventListener("ENLARGE_END", function (event:Event) : void
                {
                    arguments = new activation;
                    var e:* = event;
                    var arguments:* = arguments;
                    Loader(_swf_base.getChildAt(0)).content.removeEventListener("ENLARGE_END", callee);
                    Market.visible = true;
                    Loader(_swf_base.getChildAt(0)).content.addEventListener("BUTTON_BACK", function (event:Event) : void
                    {
                        Loader(_swf_base.getChildAt(0)).content.removeEventListener("BUTTON_BACK", arguments.callee);
                        Market.visible = false;
                        sendEvent(Viking.CITY_ACTION_BACK_HOME);
                        return;
                    }// end function
                    );
                    return;
                }// end function
                );
                return;
            }// end function
            );
            Loader(_swf_base.getChildAt(0)).content.addEventListener("BUTTON_SELL_SILVER", function (event:Event) : void
            {
                sendEvent(Viking.CITY_ACTION_SILVER_DEAL);
                return;
            }// end function
            );
            Loader(_swf_base.getChildAt(0)).content.addEventListener("BUTTON_SELL_GOLD", function (event:Event) : void
            {
                sendEvent(Viking.CITY_ACTION_GOLD_DEAL);
                return;
            }// end function
            );
            Loader(_swf_base.getChildAt(0)).content.addEventListener("BUTTON_BUY_ITEM", function (event:Event) : void
            {
                sendEvent(Viking.CITY_ACTION_SHOW_BUY_GOODS);
                return;
            }// end function
            );
            Loader(_swf_base.getChildAt(0)).content.addEventListener("BUTTON_SELL_ITEM", function (event:Event) : void
            {
                sendEvent(Viking.CITY_ACTION_SHOW_SELL_GOODS);
                return;
            }// end function
            );
            Loader(_swf_base.getChildAt(0)).content.addEventListener("BUTTON_BUY_JUNCTION", openWindow);
            Loader(_swf_base.getChildAt(0)).content.addEventListener("QUEST", function (event:Event) : void
            {
                var e:* = event;
                Loader(_swf_base.getChildAt(0)).content.addEventListener("ENLARGE_END", function (event:Event) : void
                {
                    arguments = new activation;
                    var e:* = event;
                    var arguments:* = arguments;
                    Loader(_swf_base.getChildAt(0)).content.removeEventListener("ENLARGE_END", callee);
                    Quest.visible = true;
                    onmyouRankUpMask.visible = !canRankUp();
                    Loader(_swf_base.getChildAt(0)).content.addEventListener("BUTTON_BACK", function (event:Event) : void
                    {
                        Loader(_swf_base.getChildAt(0)).content.removeEventListener("BUTTON_BACK", arguments.callee);
                        Quest.visible = false;
                        sendEvent(Viking.CITY_ACTION_BACK_HOME);
                        return;
                    }// end function
                    );
                    return;
                }// end function
                );
                return;
            }// end function
            );
            Loader(_swf_base.getChildAt(0)).content.addEventListener("BUTTON_TAKE_QUEST", function (event:Event) : void
            {
                sendEvent(Bar.BAR_ACCEPT_QUEST);
                return;
            }// end function
            );
            Loader(_swf_base.getChildAt(0)).content.addEventListener("BUTTON_CHECK_QUEST", function (event:Event) : void
            {
                sendEvent(Bar.BAR_CONFIRM_QUEST);
                return;
            }// end function
            );
            Loader(_swf_base.getChildAt(0)).content.addEventListener("BUTTON_STOP_QUEST", function (event:Event) : void
            {
                sendEvent(Bar.BAR_CANCEL_QUEST);
                return;
            }// end function
            );
            Loader(_swf_base.getChildAt(0)).content.addEventListener("BUTTON_FINISH_QUEST", function (event:Event) : void
            {
                sendEvent(Bar.BAR_QUEST_CLEAR);
                return;
            }// end function
            );
            Loader(_swf_base.getChildAt(0)).content.addEventListener("BUTTON_BE_PROMOTED", function (event:Event) : void
            {
                onRankUpButton();
                return;
            }// end function
            );
            Loader(_swf_base.getChildAt(0)).content.addEventListener("BUTTON_GUILD_DELIVER", function (event:Event) : void
            {
                deliveryGift();
                return;
            }// end function
            );
            Loader(_swf_base.getChildAt(0)).content.addEventListener("GUILD", function (event:Event) : void
            {
                var e:* = event;
                sendEvent(Viking.CITY_ACTION_SHOW_TEMPLE);
                Loader(_swf_base.getChildAt(0)).content.addEventListener("ENLARGE_END", function (event:Event) : void
                {
                    arguments = new activation;
                    var e:* = event;
                    var arguments:* = arguments;
                    Loader(_swf_base.getChildAt(0)).content.removeEventListener("ENLARGE_END", callee);
                    Guild.visible = true;
                    Loader(_swf_base.getChildAt(0)).content.addEventListener("BUTTON_BACK", function (event:Event) : void
                    {
                        Loader(_swf_base.getChildAt(0)).content.removeEventListener("BUTTON_BACK", arguments.callee);
                        Guild.visible = false;
                        guildMenuFlag = false;
                        loadingMaskOn();
                        sendEvent(Viking.CITY_ACTION_BACK_HOME);
                        return;
                    }// end function
                    );
                    return;
                }// end function
                );
                return;
            }// end function
            );
            Loader(_swf_base.getChildAt(0)).content.addEventListener("BUTTON_FOUND_GUILD", function (event:Event) : void
            {
                sendEvent(Viking.CITY_ACTION_CREATE_GUILD);
                return;
            }// end function
            );
            Loader(_swf_base.getChildAt(0)).content.addEventListener("BUTTON_JOIN_GUILD", function (event:Event) : void
            {
                sendEvent(Viking.CITY_ACTION_SEARCH_GUILD);
                return;
            }// end function
            );
            Loader(_swf_base.getChildAt(0)).content.addEventListener("BUTTON_GUILD_INFO", function (event:Event) : void
            {
                sendEvent(Viking.HOME_REPORT);
                return;
            }// end function
            );
            Loader(_swf_base.getChildAt(0)).content.addEventListener("BUTTON_ADMINISTER_GUILD", function (event:Event) : void
            {
                sendEvent(Viking.CITY_ACTION_MANAGE_GUILD);
                return;
            }// end function
            );
            Loader(_swf_base.getChildAt(0)).content.addEventListener("BUTTON_GUILD_LIST", function (event:Event) : void
            {
                sendEvent(Viking.CITY_ACTION_SEARCH_GUILD);
                return;
            }// end function
            );
            Loader(_swf_base.getChildAt(0)).content.addEventListener("BUTTON_LEAVE_GUILD", function (event:Event) : void
            {
                sendEvent(Viking.CITY_ACTION_QUIT_GUILD);
                return;
            }// end function
            );
            Loader(_swf_base.getChildAt(0)).content.addEventListener("BUTTON_CANCEL", function (event:Event) : void
            {
                sendEvent(Viking.CITY_ACTION_APPLICATION_CANCEL);
                return;
            }// end function
            );
            Loader(_swf_base.getChildAt(0)).content.addEventListener("SELECT_GUILD", function (event:Event) : void
            {
                guildMenuFlag = true;
                changeGuildMenu();
                return;
            }// end function
            );
            loadingMaskOn();
            return;
        }// end function

        public function set cancelBtnOff(param1:Image) : void
        {
            var _loc_2:* = this._1988993165cancelBtnOff;
            if (_loc_2 !== param1)
            {
                this._1988993165cancelBtnOff = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "cancelBtnOff", _loc_2, param1));
            }
            return;
        }// end function

        public function get questAcceptWindow() : QuestAcceptWindow
        {
            return this._896581914questAcceptWindow;
        }// end function

        private function get _swf_rank() : MovieClipLoaderAsset
        {
            return this._99600088_swf_rank;
        }// end function

        public function set acceptBtnOff(param1:Image) : void
        {
            var _loc_2:* = this._1479771291acceptBtnOff;
            if (_loc_2 !== param1)
            {
                this._1479771291acceptBtnOff = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "acceptBtnOff", _loc_2, param1));
            }
            return;
        }// end function

        private function set _swf_faction(param1:MovieClipLoaderAsset) : void
        {
            var _loc_2:* = this._1433715808_swf_faction;
            if (_loc_2 !== param1)
            {
                this._1433715808_swf_faction = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "_swf_faction", _loc_2, param1));
            }
            return;
        }// end function

        public function deliveryGift() : void
        {
            dispatchEvent(new Event(Viking.CITY_ACTION_DELIVERY_FACTION_GIFT));
            return;
        }// end function

        public function get onmyouRankUpMask() : Image
        {
            return this._2017146180onmyouRankUpMask;
        }// end function

        public function get guild_name() : Label
        {
            return this._1453164713guild_name;
        }// end function

        public function set playerRank(param1:int) : void
        {
            var _loc_2:String = null;
            _playerRank = param1;
            if (_playerRank >= 1 && _playerRank <= PlayerVO.ONMYOU_RANK_ID_ZENITH)
            {
                _loc_2 = "";
                if (_playerRank < 10)
                {
                    _loc_2 = "0";
                }
                MovieClip(Loader(_swf_rank.getChildAt(0)).content).gotoAndStop("rank_" + _loc_2 + _playerRank);
                MovieClip(Loader(_swf_rank2.getChildAt(0)).content).gotoAndStop("rank_" + _loc_2 + _playerRank);
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

        public function get guild_area() : Label
        {
            return this._1453535911guild_area;
        }// end function

        public function get playerVO() : PlayerVO
        {
            return this._1879273818playerVO;
        }// end function

        public function get products() : Image
        {
            return this._1003761308products;
        }// end function

        private function _City_bindingExprs() : void
        {
            var _loc_1:* = undefined;
            _loc_1 = _swf_base;
            _loc_1 = _swf_faction;
            _loc_1 = _swf_rank2;
            _loc_1 = playerVO.gold;
            _loc_1 = silver;
            _loc_1 = pureGold;
            _loc_1 = _swf_rank;
            _loc_1 = playerVO.playerName;
            _loc_1 = _playerExp + "/" + _nextRankExp;
            _loc_1 = _swf_npc;
            _loc_1 = EmbedSwfOnmyouOff;
            _loc_1 = EmbedSwfOnmyouOff;
            _loc_1 = EmbedSwfOnmyouOff;
            _loc_1 = EmbedSwfOnmyouOff;
            _loc_1 = EmbedSwfOnmyouOff;
            _loc_1 = EmbedSwfOnmyouOff;
            return;
        }// end function

        private function set EmbedSwfOnmyouOff(param1:Class) : void
        {
            var _loc_2:* = this._1064342965EmbedSwfOnmyouOff;
            if (_loc_2 !== param1)
            {
                this._1064342965EmbedSwfOnmyouOff = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "EmbedSwfOnmyouOff", _loc_2, param1));
            }
            return;
        }// end function

        public function set cityViewStack(param1:ViewStack) : void
        {
            var _loc_2:* = this._1810261432cityViewStack;
            if (_loc_2 !== param1)
            {
                this._1810261432cityViewStack = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "cityViewStack", _loc_2, param1));
            }
            return;
        }// end function

        private function onRankUpButton() : void
        {
            popupWindow(rankUpCheckWindow);
            rankUpCheckWindow.check.visible = true;
            rankUpCheckWindow.announcement.visible = false;
            rankUpCheckWindow.addEventListener(RankUpCheckWindow.RANK_UP, rankUp);
            return;
        }// end function

        private function _City_bindingsSetup() : Array
        {
            var binding:Binding;
            var result:Array;
            binding = new Binding(this, function () : Object
            {
                return _swf_base;
            }// end function
            , function (param1:Object) : void
            {
                base.source = param1;
                return;
            }// end function
            , "base.source");
            result[0] = binding;
            binding = new Binding(this, function () : Object
            {
                return _swf_faction;
            }// end function
            , function (param1:Object) : void
            {
                _City_Image4.source = param1;
                return;
            }// end function
            , "_City_Image4.source");
            result[1] = binding;
            binding = new Binding(this, function () : Object
            {
                return _swf_rank2;
            }// end function
            , function (param1:Object) : void
            {
                _City_Image5.source = param1;
                return;
            }// end function
            , "_City_Image5.source");
            result[2] = binding;
            binding = new Binding(this, function () : String
            {
                var _loc_1:* = playerVO.gold;
                var _loc_2:* = _loc_1 == undefined ? (null) : (String(_loc_1));
                return _loc_2;
            }// end function
            , function (param1:String) : void
            {
                _City_Label1.text = param1;
                return;
            }// end function
            , "_City_Label1.text");
            result[3] = binding;
            binding = new Binding(this, function () : String
            {
                var _loc_1:* = silver;
                var _loc_2:* = _loc_1 == undefined ? (null) : (String(_loc_1));
                return _loc_2;
            }// end function
            , function (param1:String) : void
            {
                _City_Label2.text = param1;
                return;
            }// end function
            , "_City_Label2.text");
            result[4] = binding;
            binding = new Binding(this, function () : String
            {
                var _loc_1:* = pureGold;
                var _loc_2:* = _loc_1 == undefined ? (null) : (String(_loc_1));
                return _loc_2;
            }// end function
            , function (param1:String) : void
            {
                _City_Label3.text = param1;
                return;
            }// end function
            , "_City_Label3.text");
            result[5] = binding;
            binding = new Binding(this, function () : Object
            {
                return _swf_rank;
            }// end function
            , function (param1:Object) : void
            {
                _City_Image6.source = param1;
                return;
            }// end function
            , "_City_Image6.source");
            result[6] = binding;
            binding = new Binding(this, function () : String
            {
                var _loc_1:* = playerVO.playerName;
                var _loc_2:* = _loc_1 == undefined ? (null) : (String(_loc_1));
                return _loc_2;
            }// end function
            , function (param1:String) : void
            {
                _City_Label4.text = param1;
                return;
            }// end function
            , "_City_Label4.text");
            result[7] = binding;
            binding = new Binding(this, function () : String
            {
                var _loc_1:* = _playerExp + "/" + _nextRankExp;
                var _loc_2:* = _loc_1 == undefined ? (null) : (String(_loc_1));
                return _loc_2;
            }// end function
            , function (param1:String) : void
            {
                _City_Label5.text = param1;
                return;
            }// end function
            , "_City_Label5.text");
            result[8] = binding;
            binding = new Binding(this, function () : Object
            {
                return _swf_npc;
            }// end function
            , function (param1:Object) : void
            {
                _City_Image7.source = param1;
                return;
            }// end function
            , "_City_Image7.source");
            result[9] = binding;
            binding = new Binding(this, function () : Object
            {
                return EmbedSwfOnmyouOff;
            }// end function
            , function (param1:Object) : void
            {
                acceptBtnOff.source = param1;
                return;
            }// end function
            , "acceptBtnOff.source");
            result[10] = binding;
            binding = new Binding(this, function () : Object
            {
                return EmbedSwfOnmyouOff;
            }// end function
            , function (param1:Object) : void
            {
                confirmBtnOff.source = param1;
                return;
            }// end function
            , "confirmBtnOff.source");
            result[11] = binding;
            binding = new Binding(this, function () : Object
            {
                return EmbedSwfOnmyouOff;
            }// end function
            , function (param1:Object) : void
            {
                cancelBtnOff.source = param1;
                return;
            }// end function
            , "cancelBtnOff.source");
            result[12] = binding;
            binding = new Binding(this, function () : Object
            {
                return EmbedSwfOnmyouOff;
            }// end function
            , function (param1:Object) : void
            {
                completeBtnOff.source = param1;
                return;
            }// end function
            , "completeBtnOff.source");
            result[13] = binding;
            binding = new Binding(this, function () : Object
            {
                return EmbedSwfOnmyouOff;
            }// end function
            , function (param1:Object) : void
            {
                loadingMask1.source = param1;
                return;
            }// end function
            , "loadingMask1.source");
            result[14] = binding;
            binding = new Binding(this, function () : Object
            {
                return EmbedSwfOnmyouOff;
            }// end function
            , function (param1:Object) : void
            {
                loadingMask2.source = param1;
                return;
            }// end function
            , "loadingMask2.source");
            result[15] = binding;
            return result;
        }// end function

        public function set Quest(param1:Canvas) : void
        {
            var _loc_2:* = this._78391490Quest;
            if (_loc_2 !== param1)
            {
                this._78391490Quest = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "Quest", _loc_2, param1));
            }
            return;
        }// end function

        public function get pureGold() : int
        {
            return this._1744201592pureGold;
        }// end function

        override public function initialize() : void
        {
            var target:City;
            var watcherSetupUtilClass:Object;
            .mx_internal::setDocumentDescriptor(_documentDescriptor_);
            var bindings:* = _City_bindingsSetup();
            var watchers:Array;
            target;
            if (_watcherSetupUtil == null)
            {
                watcherSetupUtilClass = getDefinitionByName("_com_kbmj_viking_CityWatcherSetupUtil");
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

        private function set _swf_base(param1:MovieClipLoaderAsset) : void
        {
            var _loc_2:* = this._100076595_swf_base;
            if (_loc_2 !== param1)
            {
                this._100076595_swf_base = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "_swf_base", _loc_2, param1));
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

        public function set Guild(param1:Canvas) : void
        {
            var _loc_2:* = this._69159891Guild;
            if (_loc_2 !== param1)
            {
                this._69159891Guild = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "Guild", _loc_2, param1));
            }
            return;
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

        private function get _swf_faction() : MovieClipLoaderAsset
        {
            return this._1433715808_swf_faction;
        }// end function

        private function get EmbedSwfOnmyouOff() : Class
        {
            return this._1064342965EmbedSwfOnmyouOff;
        }// end function

        public function get cityViewStack() : ViewStack
        {
            return this._1810261432cityViewStack;
        }// end function

        private function set buyPaymentItem(param1:Boolean) : void
        {
            var _loc_2:* = this._592750547buyPaymentItem;
            if (_loc_2 !== param1)
            {
                this._592750547buyPaymentItem = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "buyPaymentItem", _loc_2, param1));
            }
            return;
        }// end function

        public function set guildDetailVO(param1:GuildDetailVO) : void
        {
            var _loc_2:* = this._930328611guildDetailVO;
            if (_loc_2 !== param1)
            {
                this._930328611guildDetailVO = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "guildDetailVO", _loc_2, param1));
            }
            return;
        }// end function

        public function set nextRankExp(param1:int) : void
        {
            _nextRankExp = param1;
            return;
        }// end function

        private function get _swf_base() : MovieClipLoaderAsset
        {
            return this._100076595_swf_base;
        }// end function

        public function set loadingMask1(param1:Image) : void
        {
            var _loc_2:* = this._1394698985loadingMask1;
            if (_loc_2 !== param1)
            {
                this._1394698985loadingMask1 = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "loadingMask1", _loc_2, param1));
            }
            return;
        }// end function

        public function get Guild() : Canvas
        {
            return this._69159891Guild;
        }// end function

        public function set loadingMask2(param1:Image) : void
        {
            var _loc_2:* = this._1394698986loadingMask2;
            if (_loc_2 !== param1)
            {
                this._1394698986loadingMask2 = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "loadingMask2", _loc_2, param1));
            }
            return;
        }// end function

        private function canRankUp() : Boolean
        {
            if (_playerExp < _nextRankExp)
            {
                return false;
            }
            if (_playerRank >= PlayerVO.ONMYOU_RANK_ID_ZENITH)
            {
                return false;
            }
            return true;
        }// end function

        public function get guildDetailVO() : GuildDetailVO
        {
            return this._930328611guildDetailVO;
        }// end function

        public function get productionInfoWindow() : ProductionInfoWindow
        {
            return this._1252748247productionInfoWindow;
        }// end function

        private function rankUp(event:Event) : void
        {
            rankUpCheckWindow.removeEventListener(RankUpCheckWindow.RANK_UP, rankUp);
            sendEvent(Bar.PLAYER_RANK_UP);
            onmyouRankUpMask.visible = !canRankUp();
            return;
        }// end function

        private function get _playerExp() : int
        {
            return this._933984765_playerExp;
        }// end function

        public static function set watcherSetupUtil(param1:IWatcherSetupUtil) : void
        {
            City._watcherSetupUtil = param1;
            return;
        }// end function

    }
}
