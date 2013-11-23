package com.kbmj.viking.view.allMap
{
    import com.kbmj.viking.*;
    import com.kbmj.viking.lib.*;
    import com.kbmj.viking.view.*;
    import com.kbmj.viking.vo.tactics.*;
    import flash.display.*;
    import flash.events.*;
    import flash.geom.*;
    import flash.utils.*;
    import mx.binding.*;
    import mx.controls.*;
    import mx.controls.dataGridClasses.*;
    import mx.core.*;
    import mx.events.*;
    import mx.managers.*;

    public class AllMapCommandWindow extends PopupWindow implements IBindingClient
    {
        private var _enableFound:Boolean;
        private var _934610812remove:Image;
        private var _2030618217_buttonDestroy:MovieClipLoaderAsset;
        private var _1091888612faction:Image;
        private var _99600088_swf_rank:MovieClipLoaderAsset;
        private var _enablePurify:Boolean;
        private var _embed_mxml__swf_all_map_window_info_ground_swf_1244145623:Class;
        private var _1433715808_swf_faction:MovieClipLoaderAsset;
        public var reclaimActivity:Object;
        private var _enableChargeRemove:Boolean;
        private var _934535283repair:Image;
        var _bindings:Array;
        private var _475426212plunder:Image;
        private var _1783281954waitingUnits:Array;
        private var _1613371357garrison:Image;
        private var _1887425575_buttonClose:MovieClipLoaderAsset;
        private var selectedUnitId:int;
        private var _1196363970_buttonRepair:MovieClipLoaderAsset;
        private var eventName:String;
        private var _327294757topography:Label;
        public var propertiesCountFull:Boolean;
        private var _3343799mail:Image;
        private var _enableInvade:Boolean;
        private var _1555736664_buttonReclaim:MovieClipLoaderAsset;
        private var title:String;
        var _bindingsByDestination:Object;
        private var _172330900_buttonGarrison:MovieClipLoaderAsset;
        private var _1196439499_buttonRemove:MovieClipLoaderAsset;
        private var chargeRemoveWindow:ChargeRemoveWindow;
        private var commandName:String;
        private var _461616969_buttonChargeRemove:MovieClipLoaderAsset;
        public var _AllMapCommandWindow_Image20:Image;
        public var _AllMapCommandWindow_Image21:Image;
        private var _1848510178guildName:Label;
        private var unitWindow:AllMapUnitWindow;
        private var _playerName:String;
        private var _1803092966surrender:Image;
        private var foundSelectWindow:FoundSelectWindow;
        public var foundActivity:Object;
        private var _1252109907_outputs:Array;
        private var _1153372315_buttonSubdue:MovieClipLoaderAsset;
        public var lowOnmyouRankLevelUp:Boolean;
        private var _enableRepair:Boolean;
        private var _1446645160_buttonMail:MovieClipLoaderAsset;
        private var confirmWindow:AllMapConfirmWindow;
        public var lowOnmyouRankAttack:Boolean;
        private var _1183707375invade:Image;
        public var noUnit:Boolean;
        private var _enableReclaim:Boolean;
        private var _481501440hexImage:Image;
        private var _1695390169_buttonX:MovieClipLoaderAsset;
        private var _enableGarrison:Boolean;
        public var homePos:Point;
        private var _enableSubdue:Boolean;
        private var _enableDestroy:Boolean;
        private var _1890291121_buttonFound:MovieClipLoaderAsset;
        private var _976950065purify:Image;
        private var _1082491369reclaim:Image;
        private var _1445536062_buttonInvade:MovieClipLoaderAsset;
        public var _AllMapCommandWindow_DataGridColumn1:DataGridColumn;
        public var _AllMapCommandWindow_DataGridColumn2:DataGridColumn;
        public var _AllMapCommandWindow_DataGridColumn3:DataGridColumn;
        private var _2180917_buttonPlunder:MovieClipLoaderAsset;
        private var _1669087751_buttonAttack:MovieClipLoaderAsset;
        private var activity:Object;
        public var garrisonUnitWindow:GarrisonUnitWindow;
        private var _1066654314objectName:Label;
        private var _270165462_descriptions:Array;
        public var noPossessionTicket:Boolean;
        private var _enablePlunder:Boolean;
        private var _3446917posY:Label;
        private var _enableSurrender:Boolean;
        private var _1528810385tutMarkPurify:Image;
        private var _3492908rank:Image;
        public var notConnected:Boolean;
        private var _86559188descriptionDataGrid:DataGrid;
        private var _enableAttack:Boolean;
        public var selectedUnits:Array;
        private var _1225207896chargeRemove:Image;
        private var _1325288085_buttonSurrender:MovieClipLoaderAsset;
        var _watchers:Array;
        public var propertiesCount:int;
        private var _97621890found:Image;
        public var centerPos:Point;
        public var repairActivity:Object;
        private var _embed_mxml__swf_common_arrow_left_swf_534170583:Class;
        private var _enableRemove:Boolean;
        private var _1754907586outputsDataGrid:DataGrid;
        private var _891543628subdue:Image;
        var _bindingsBeginWithWord:Object;
        private var foundType:int;
        private var _1288281966objectState:Label;
        private var _3446916posX:Label;
        private var _1407259064attack:Image;
        private var _1557372922destroy:Image;
        private var _documentDescriptor_:UIComponentDescriptor;
        private var _1238778752_buttonPurify:MovieClipLoaderAsset;
        public static const SURRENDER:String = NAME + "/surrender";
        public static const ATTACK:String = NAME + "/attack";
        public static const RECLAIM:String = NAME + "/reclaim";
        public static const LOAD_ANIMATION:String = NAME + "/loadAnimation";
        public static const REPAIR:String = NAME + "/repair";
        public static const NAME:String = "AllMapCommandWindow";
        public static const REMOVE:String = NAME + "/remove";
        public static const GARRISON_CANCEL:String = NAME + "/garrisonCancel";
        public static const GARRISON_UNIT_WINDOW_OPEN:String = NAME + "/garrisonUnitWindowOpen";
        public static const FOUND:String = NAME + "/found";
        public static const GARRISON_ALL_RECOVERY:String = NAME + "/garrisonAllRecovery";
        private static var _watcherSetupUtil:IWatcherSetupUtil;
        public static const DESTROY:String = NAME + "/destroy";
        public static const SHOW_LOADING_WINDOW:String = NAME + "/showLoadingWindow";
        public static const CHARGE_REMOVE:String = NAME + "/chargeRemove";
        public static const MAIL:String = NAME + "/mail";
        public static const PLUNDER:String = NAME + "/plunder";
        public static const GARRISON_OK:String = NAME + "/garrisonOK";

        public function AllMapCommandWindow()
        {
            _documentDescriptor_ = new UIComponentDescriptor({type:PopupWindow, propertiesFactory:function () : Object
            {
                return {width:365, height:200, childDescriptors:[new UIComponentDescriptor({type:Image, propertiesFactory:function () : Object
                {
                    return {source:_embed_mxml__swf_all_map_window_info_ground_swf_1244145623};
                }// end function
                }), new UIComponentDescriptor({type:Image, id:"hexImage", propertiesFactory:function () : Object
                {
                    return {x:19, y:15};
                }// end function
                }), new UIComponentDescriptor({type:Label, id:"topography", stylesFactory:function () : void
                {
                    this.fontSize = 14;
                    this.textAlign = "center";
                    this.color = 16777215;
                    return;
                }// end function
                , propertiesFactory:function () : Object
                {
                    return {x:113, y:5, width:80};
                }// end function
                }), new UIComponentDescriptor({type:Label, id:"posX", stylesFactory:function () : void
                {
                    this.fontSize = 12;
                    this.textAlign = "right";
                    return;
                }// end function
                , propertiesFactory:function () : Object
                {
                    return {x:255, y:5, width:35};
                }// end function
                }), new UIComponentDescriptor({type:Label, stylesFactory:function () : void
                {
                    this.fontSize = 12;
                    this.textAlign = "left";
                    return;
                }// end function
                , propertiesFactory:function () : Object
                {
                    return {text:",", x:285, y:5};
                }// end function
                }), new UIComponentDescriptor({type:Label, id:"posY", stylesFactory:function () : void
                {
                    this.fontSize = 12;
                    this.textAlign = "right";
                    return;
                }// end function
                , propertiesFactory:function () : Object
                {
                    return {x:295, y:5, width:35};
                }// end function
                }), new UIComponentDescriptor({type:Image, id:"faction", propertiesFactory:function () : Object
                {
                    return {x:173, y:78};
                }// end function
                }), new UIComponentDescriptor({type:Label, id:"guildName", stylesFactory:function () : void
                {
                    this.fontSize = 13;
                    return;
                }// end function
                , propertiesFactory:function () : Object
                {
                    return {x:194, y:76, width:160};
                }// end function
                }), new UIComponentDescriptor({type:Image, id:"rank", propertiesFactory:function () : Object
                {
                    return {x:173, y:101};
                }// end function
                }), new UIComponentDescriptor({type:Label, id:"objectName", stylesFactory:function () : void
                {
                    this.fontSize = 13;
                    return;
                }// end function
                , propertiesFactory:function () : Object
                {
                    return {x:194, y:99, width:160};
                }// end function
                }), new UIComponentDescriptor({type:Label, id:"objectState", stylesFactory:function () : void
                {
                    this.fontSize = 13;
                    return;
                }// end function
                , propertiesFactory:function () : Object
                {
                    return {x:170, y:122, width:160};
                }// end function
                }), new UIComponentDescriptor({type:DataGrid, id:"outputsDataGrid", propertiesFactory:function () : Object
                {
                    return {x:20, y:74, width:145, rowHeight:20, rowCount:4, styleName:"UnitBuilding", horizontalScrollPolicy:"off", verticalScrollPolicy:"off", selectable:false, sortableColumns:false, columns:[_AllMapCommandWindow_DataGridColumn1_i(), _AllMapCommandWindow_DataGridColumn2_i()]};
                }// end function
                }), new UIComponentDescriptor({type:DataGrid, id:"descriptionDataGrid", propertiesFactory:function () : Object
                {
                    return {x:20, y:74, width:145, rowHeight:80, rowCount:1, styleName:"UnitBuilding", horizontalScrollPolicy:"off", verticalScrollPolicy:"off", selectable:false, sortableColumns:false, columns:[_AllMapCommandWindow_DataGridColumn3_i()]};
                }// end function
                }), new UIComponentDescriptor({type:Image, id:"purify", events:{click:"__purify_click"}, propertiesFactory:function () : Object
                {
                    return {y:42};
                }// end function
                }), new UIComponentDescriptor({type:Image, id:"tutMarkPurify", propertiesFactory:function () : Object
                {
                    return {source:_embed_mxml__swf_common_arrow_left_swf_534170583, visible:false, y:31, x:170};
                }// end function
                }), new UIComponentDescriptor({type:Image, id:"attack", events:{click:"__attack_click"}, propertiesFactory:function () : Object
                {
                    return {y:42};
                }// end function
                }), new UIComponentDescriptor({type:Image, id:"invade", events:{click:"__invade_click"}, propertiesFactory:function () : Object
                {
                    return {y:42};
                }// end function
                }), new UIComponentDescriptor({type:Image, id:"subdue", events:{click:"__subdue_click"}, propertiesFactory:function () : Object
                {
                    return {y:42};
                }// end function
                }), new UIComponentDescriptor({type:Image, id:"plunder", events:{click:"__plunder_click"}, propertiesFactory:function () : Object
                {
                    return {y:42};
                }// end function
                }), new UIComponentDescriptor({type:Image, id:"mail", events:{click:"__mail_click"}, propertiesFactory:function () : Object
                {
                    return {y:42};
                }// end function
                }), new UIComponentDescriptor({type:Image, id:"surrender", events:{click:"__surrender_click"}, propertiesFactory:function () : Object
                {
                    return {y:42};
                }// end function
                }), new UIComponentDescriptor({type:Image, id:"reclaim", events:{click:"__reclaim_click"}, propertiesFactory:function () : Object
                {
                    return {y:42};
                }// end function
                }), new UIComponentDescriptor({type:Image, id:"found", events:{click:"__found_click"}, propertiesFactory:function () : Object
                {
                    return {y:42};
                }// end function
                }), new UIComponentDescriptor({type:Image, id:"repair", events:{click:"__repair_click"}, propertiesFactory:function () : Object
                {
                    return {y:42};
                }// end function
                }), new UIComponentDescriptor({type:Image, id:"garrison", events:{click:"__garrison_click"}, propertiesFactory:function () : Object
                {
                    return {y:42};
                }// end function
                }), new UIComponentDescriptor({type:Image, id:"destroy", events:{click:"__destroy_click"}, propertiesFactory:function () : Object
                {
                    return {y:42};
                }// end function
                }), new UIComponentDescriptor({type:Image, id:"remove", events:{click:"__remove_click"}, propertiesFactory:function () : Object
                {
                    return {y:42};
                }// end function
                }), new UIComponentDescriptor({type:Image, id:"chargeRemove", events:{click:"__chargeRemove_click"}, propertiesFactory:function () : Object
                {
                    return {y:42};
                }// end function
                }), new UIComponentDescriptor({type:Image, id:"_AllMapCommandWindow_Image20", events:{click:"___AllMapCommandWindow_Image20_click"}, propertiesFactory:function () : Object
                {
                    return {x:210, y:150};
                }// end function
                }), new UIComponentDescriptor({type:Image, id:"_AllMapCommandWindow_Image21", events:{click:"___AllMapCommandWindow_Image21_click"}, propertiesFactory:function () : Object
                {
                    return {x:339, y:2};
                }// end function
                })]};
            }// end function
            });
            _1433715808_swf_faction = new Viking.EmbedSwfIconFaction();
            _99600088_swf_rank = new Viking.EmbedSwfIconRank();
            foundSelectWindow = new FoundSelectWindow();
            _1238778752_buttonPurify = new AllMap.EmbedSwfButtonCommonMap();
            _1669087751_buttonAttack = new AllMap.EmbedSwfButtonCommonMap();
            _1445536062_buttonInvade = new AllMap.EmbedSwfButtonCommonMap();
            _1153372315_buttonSubdue = new AllMap.EmbedSwfButtonCommonMap();
            _2180917_buttonPlunder = new AllMap.EmbedSwfButtonCommonMap();
            _1446645160_buttonMail = new AllMap.EmbedSwfButtonCommonMap();
            _1325288085_buttonSurrender = new AllMap.EmbedSwfButtonCommonMap();
            _1555736664_buttonReclaim = new AllMap.EmbedSwfButtonCommonMap();
            _1890291121_buttonFound = new AllMap.EmbedSwfButtonCommonMap();
            _1196363970_buttonRepair = new AllMap.EmbedSwfButtonCommonMap();
            _172330900_buttonGarrison = new AllMap.EmbedSwfButtonCommonMap();
            _2030618217_buttonDestroy = new AllMap.EmbedSwfButtonCommonMap();
            _1196439499_buttonRemove = new AllMap.EmbedSwfButtonCommonMap();
            _461616969_buttonChargeRemove = new AllMap.EmbedSwfButtonCommonMap();
            _1887425575_buttonClose = new Viking.EmbedSwfButtonCommon();
            _1695390169_buttonX = new Viking.EmbedSwfButtonCloseWindow();
            unitWindow = new AllMapUnitWindow();
            confirmWindow = new AllMapConfirmWindow();
            garrisonUnitWindow = new GarrisonUnitWindow();
            chargeRemoveWindow = new ChargeRemoveWindow();
            _embed_mxml__swf_all_map_window_info_ground_swf_1244145623 = AllMapCommandWindow__embed_mxml__swf_all_map_window_info_ground_swf_1244145623;
            _embed_mxml__swf_common_arrow_left_swf_534170583 = AllMapCommandWindow__embed_mxml__swf_common_arrow_left_swf_534170583;
            _bindings = [];
            _watchers = [];
            _bindingsByDestination = {};
            _bindingsBeginWithWord = {};
            mx_internal::_document = this;
            this.width = 365;
            this.height = 200;
            this.horizontalScrollPolicy = "off";
            this.verticalScrollPolicy = "off";
            this.addEventListener("creationComplete", ___AllMapCommandWindow_PopupWindow1_creationComplete);
            return;
        }// end function

        public function get reclaim() : Image
        {
            return this._1082491369reclaim;
        }// end function

        public function get surrender() : Image
        {
            return this._1803092966surrender;
        }// end function

        public function changeRank(param1) : void
        {
            MovieClip(Loader(_swf_rank.getChildAt(0)).content).gotoAndPlay(0);
            MovieClip(Loader(_swf_rank.getChildAt(0)).content).gotoAndPlay(param1);
            return;
        }// end function

        public function __plunder_click(event:MouseEvent) : void
        {
            if (_enablePlunder)
            {
                confirmPlunder(Utils.i18n("generalRobbery"));
            }
            return;
        }// end function

        private function set _buttonGarrison(param1:MovieClipLoaderAsset) : void
        {
            var _loc_2:* = this._172330900_buttonGarrison;
            if (_loc_2 !== param1)
            {
                this._172330900_buttonGarrison = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "_buttonGarrison", _loc_2, param1));
            }
            return;
        }// end function

        private function get _swf_faction() : MovieClipLoaderAsset
        {
            return this._1433715808_swf_faction;
        }// end function

        public function set playerName(param1:String) : void
        {
            _playerName = param1;
            return;
        }// end function

        public function set invade(param1:Image) : void
        {
            var _loc_2:* = this._1183707375invade;
            if (_loc_2 !== param1)
            {
                this._1183707375invade = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "invade", _loc_2, param1));
            }
            return;
        }// end function

        public function get garrison() : Image
        {
            return this._1613371357garrison;
        }// end function

        public function get faction() : Image
        {
            return this._1091888612faction;
        }// end function

        private function onClickGarrison() : void
        {
            dispatchEvent(new PopupEvent(LOAD_ANIMATION, {waitingUnits:waitingUnits, selectedUnits:selectedUnits}));
            return;
        }// end function

        public function set hexImage(param1:Image) : void
        {
            var _loc_2:* = this._481501440hexImage;
            if (_loc_2 !== param1)
            {
                this._481501440hexImage = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "hexImage", _loc_2, param1));
            }
            return;
        }// end function

        private function chargeRemoveOK(event:PopupEvent) : void
        {
            dispatchEvent(new PopupEvent(CHARGE_REMOVE, {area:event.param.area}));
            return;
        }// end function

        public function set enableSubdue(param1:Boolean) : void
        {
            MovieClip(Loader(_buttonSubdue.getChildAt(0)).content).gotoAndPlay(param1 ? ("button_subdue") : ("button_subdue_off"));
            _enableSubdue = param1;
            return;
        }// end function

        public function set faction(param1:Image) : void
        {
            var _loc_2:* = this._1091888612faction;
            if (_loc_2 !== param1)
            {
                this._1091888612faction = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "faction", _loc_2, param1));
            }
            return;
        }// end function

        public function set guildName(param1:Label) : void
        {
            var _loc_2:* = this._1848510178guildName;
            if (_loc_2 !== param1)
            {
                this._1848510178guildName = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "guildName", _loc_2, param1));
            }
            return;
        }// end function

        public function ___AllMapCommandWindow_PopupWindow1_creationComplete(event:FlexEvent) : void
        {
            init();
            return;
        }// end function

        public function set garrison(param1:Image) : void
        {
            var _loc_2:* = this._1613371357garrison;
            if (_loc_2 !== param1)
            {
                this._1613371357garrison = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "garrison", _loc_2, param1));
            }
            return;
        }// end function

        public function __surrender_click(event:MouseEvent) : void
        {
            if (_enableSurrender)
            {
                confirmSurrender();
            }
            return;
        }// end function

        private function get _buttonClose() : MovieClipLoaderAsset
        {
            return this._1887425575_buttonClose;
        }// end function

        public function changeFaction(param1) : void
        {
            MovieClip(Loader(_swf_faction.getChildAt(0)).content).gotoAndPlay(0);
            MovieClip(Loader(_swf_faction.getChildAt(0)).content).gotoAndPlay(param1);
            return;
        }// end function

        private function get _buttonRemove() : MovieClipLoaderAsset
        {
            return this._1196439499_buttonRemove;
        }// end function

        public function __repair_click(event:MouseEvent) : void
        {
            if (_enableRepair)
            {
                startUnitSelect(REPAIR, Utils.i18n("generalRepair"), Utils.i18n("allMapCommandFortRepair"), repairActivity);
            }
            return;
        }// end function

        public function get attack() : Image
        {
            return this._1407259064attack;
        }// end function

        private function initButtons() : void
        {
            MovieClip(Loader(_buttonPurify.getChildAt(0)).content).gotoAndPlay(0);
            MovieClip(Loader(_buttonAttack.getChildAt(0)).content).gotoAndPlay(0);
            MovieClip(Loader(_buttonInvade.getChildAt(0)).content).gotoAndPlay(0);
            MovieClip(Loader(_buttonSubdue.getChildAt(0)).content).gotoAndPlay(0);
            MovieClip(Loader(_buttonPlunder.getChildAt(0)).content).gotoAndPlay(0);
            MovieClip(Loader(_buttonMail.getChildAt(0)).content).gotoAndPlay("button_mail");
            MovieClip(Loader(_buttonSurrender.getChildAt(0)).content).gotoAndPlay(0);
            MovieClip(Loader(_buttonReclaim.getChildAt(0)).content).gotoAndPlay(0);
            MovieClip(Loader(_buttonFound.getChildAt(0)).content).gotoAndPlay(0);
            MovieClip(Loader(_buttonRepair.getChildAt(0)).content).gotoAndPlay(0);
            MovieClip(Loader(_buttonGarrison.getChildAt(0)).content).gotoAndPlay(0);
            MovieClip(Loader(_buttonDestroy.getChildAt(0)).content).gotoAndPlay(0);
            MovieClip(Loader(_buttonRemove.getChildAt(0)).content).gotoAndPlay(0);
            MovieClip(Loader(_buttonChargeRemove.getChildAt(0)).content).gotoAndPlay(0);
            MovieClip(Loader(_buttonClose.getChildAt(0)).content).gotoAndPlay(0);
            MovieClip(Loader(_buttonClose.getChildAt(0)).content).gotoAndPlay("button_close");
            MovieClip(Loader(_buttonX.getChildAt(0)).content).gotoAndPlay(0);
            MovieClip(Loader(_buttonX.getChildAt(0)).content).gotoAndPlay("button_close");
            return;
        }// end function

        private function get _buttonX() : MovieClipLoaderAsset
        {
            return this._1695390169_buttonX;
        }// end function

        public function set reclaim(param1:Image) : void
        {
            var _loc_2:* = this._1082491369reclaim;
            if (_loc_2 !== param1)
            {
                this._1082491369reclaim = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "reclaim", _loc_2, param1));
            }
            return;
        }// end function

        private function get _outputs() : Array
        {
            return this._1252109907_outputs;
        }// end function

        public function __garrison_click(event:MouseEvent) : void
        {
            if (_enableGarrison)
            {
                onClickGarrison();
            }
            return;
        }// end function

        private function set _buttonClose(param1:MovieClipLoaderAsset) : void
        {
            var _loc_2:* = this._1887425575_buttonClose;
            if (_loc_2 !== param1)
            {
                this._1887425575_buttonClose = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "_buttonClose", _loc_2, param1));
            }
            return;
        }// end function

        public function get plunder() : Image
        {
            return this._475426212plunder;
        }// end function

        public function set enablePurify(param1:Boolean) : void
        {
            MovieClip(Loader(_buttonPurify.getChildAt(0)).content).gotoAndPlay(param1 ? ("button_purify") : ("button_purify_off"));
            _enablePurify = param1;
            return;
        }// end function

        public function set waitingUnits(param1:Array) : void
        {
            var _loc_2:* = this._1783281954waitingUnits;
            if (_loc_2 !== param1)
            {
                this._1783281954waitingUnits = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "waitingUnits", _loc_2, param1));
            }
            return;
        }// end function

        public function get chargeRemove() : Image
        {
            return this._1225207896chargeRemove;
        }// end function

        private function get _buttonDestroy() : MovieClipLoaderAsset
        {
            return this._2030618217_buttonDestroy;
        }// end function

        public function get objectName() : Label
        {
            return this._1066654314objectName;
        }// end function

        public function get tutMarkPurify() : Image
        {
            return this._1528810385tutMarkPurify;
        }// end function

        public function set descriptionDataGrid(param1:DataGrid) : void
        {
            var _loc_2:* = this._86559188descriptionDataGrid;
            if (_loc_2 !== param1)
            {
                this._86559188descriptionDataGrid = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "descriptionDataGrid", _loc_2, param1));
            }
            return;
        }// end function

        private function set _buttonRemove(param1:MovieClipLoaderAsset) : void
        {
            var _loc_2:* = this._1196439499_buttonRemove;
            if (_loc_2 !== param1)
            {
                this._1196439499_buttonRemove = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "_buttonRemove", _loc_2, param1));
            }
            return;
        }// end function

        public function get descriptionDataGrid() : DataGrid
        {
            return this._86559188descriptionDataGrid;
        }// end function

        public function set topography(param1:Label) : void
        {
            var _loc_2:* = this._327294757topography;
            if (_loc_2 !== param1)
            {
                this._327294757topography = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "topography", _loc_2, param1));
            }
            return;
        }// end function

        public function set rank(param1:Image) : void
        {
            var _loc_2:* = this._3492908rank;
            if (_loc_2 !== param1)
            {
                this._3492908rank = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "rank", _loc_2, param1));
            }
            return;
        }// end function

        private function garrisonUnitSelectCancel(event:Event) : void
        {
            PopUpManager.removePopUp(garrisonUnitWindow);
            sendEvent(GARRISON_CANCEL);
            return;
        }// end function

        private function set _buttonRepair(param1:MovieClipLoaderAsset) : void
        {
            var _loc_2:* = this._1196363970_buttonRepair;
            if (_loc_2 !== param1)
            {
                this._1196363970_buttonRepair = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "_buttonRepair", _loc_2, param1));
            }
            return;
        }// end function

        public function get posX() : Label
        {
            return this._3446916posX;
        }// end function

        public function get posY() : Label
        {
            return this._3446917posY;
        }// end function

        public function closeChargeRemoveWindow() : void
        {
            PopUpManager.removePopUp(chargeRemoveWindow);
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

        public function get remove() : Image
        {
            return this._934610812remove;
        }// end function

        public function get rank() : Image
        {
            return this._3492908rank;
        }// end function

        public function set attack(param1:Image) : void
        {
            var _loc_2:* = this._1407259064attack;
            if (_loc_2 !== param1)
            {
                this._1407259064attack = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "attack", _loc_2, param1));
            }
            return;
        }// end function

        private function get _buttonReclaim() : MovieClipLoaderAsset
        {
            return this._1555736664_buttonReclaim;
        }// end function

        private function get _buttonSurrender() : MovieClipLoaderAsset
        {
            return this._1325288085_buttonSurrender;
        }// end function

        private function confirmMail() : void
        {
            sendPopupEvent(MAIL, playerName);
            return;
        }// end function

        private function get _buttonPurify() : MovieClipLoaderAsset
        {
            return this._1238778752_buttonPurify;
        }// end function

        public function get objectState() : Label
        {
            return this._1288281966objectState;
        }// end function

        private function set _buttonChargeRemove(param1:MovieClipLoaderAsset) : void
        {
            var _loc_2:* = this._461616969_buttonChargeRemove;
            if (_loc_2 !== param1)
            {
                this._461616969_buttonChargeRemove = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "_buttonChargeRemove", _loc_2, param1));
            }
            return;
        }// end function

        private function confirmFound() : void
        {
            this.popupWindow(foundSelectWindow, false);
            foundSelectWindow.addEventListener(FoundSelectWindow.SELECT_STRUCTURE, selectFound);
            return;
        }// end function

        public function ___AllMapCommandWindow_Image20_click(event:MouseEvent) : void
        {
            visible = false;
            return;
        }// end function

        public function set enablePlunder(param1:Boolean) : void
        {
            MovieClip(Loader(_buttonPlunder.getChildAt(0)).content).gotoAndPlay(param1 ? ("button_plunder") : ("button_plunder_off"));
            _enablePlunder = param1;
            return;
        }// end function

        private function set _outputs(param1:Array) : void
        {
            var _loc_2:* = this._1252109907_outputs;
            if (_loc_2 !== param1)
            {
                this._1252109907_outputs = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "_outputs", _loc_2, param1));
            }
            return;
        }// end function

        public function set chargeRemove(param1:Image) : void
        {
            var _loc_2:* = this._1225207896chargeRemove;
            if (_loc_2 !== param1)
            {
                this._1225207896chargeRemove = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "chargeRemove", _loc_2, param1));
            }
            return;
        }// end function

        public function __attack_click(event:MouseEvent) : void
        {
            if (_enableAttack)
            {
                confirmAttack(Utils.i18n("generalAtack"));
            }
            return;
        }// end function

        public function __invade_click(event:MouseEvent) : void
        {
            if (_enableInvade)
            {
                confirmAttack(Utils.i18n("generalInvasion"));
            }
            return;
        }// end function

        public function __chargeRemove_click(event:MouseEvent) : void
        {
            if (_enableChargeRemove)
            {
                startChargeRemove();
            }
            return;
        }// end function

        private function get _buttonInvade() : MovieClipLoaderAsset
        {
            return this._1445536062_buttonInvade;
        }// end function

        public function __found_click(event:MouseEvent) : void
        {
            if (_enableFound)
            {
                confirmFound();
            }
            return;
        }// end function

        public function set plunder(param1:Image) : void
        {
            var _loc_2:* = this._475426212plunder;
            if (_loc_2 !== param1)
            {
                this._475426212plunder = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "plunder", _loc_2, param1));
            }
            return;
        }// end function

        private function set _buttonSubdue(param1:MovieClipLoaderAsset) : void
        {
            var _loc_2:* = this._1153372315_buttonSubdue;
            if (_loc_2 !== param1)
            {
                this._1153372315_buttonSubdue = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "_buttonSubdue", _loc_2, param1));
            }
            return;
        }// end function

        private function get _buttonPlunder() : MovieClipLoaderAsset
        {
            return this._2180917_buttonPlunder;
        }// end function

        private function _AllMapCommandWindow_bindingsSetup() : Array
        {
            var binding:Binding;
            var result:Array;
            binding = new Binding(this, function () : Object
            {
                return _swf_faction;
            }// end function
            , function (param1:Object) : void
            {
                faction.source = param1;
                return;
            }// end function
            , "faction.source");
            result[0] = binding;
            binding = new Binding(this, function () : Object
            {
                return _swf_rank;
            }// end function
            , function (param1:Object) : void
            {
                rank.source = param1;
                return;
            }// end function
            , "rank.source");
            result[1] = binding;
            binding = new Binding(this, function () : Object
            {
                return _outputs;
            }// end function
            , function (param1:Object) : void
            {
                outputsDataGrid.dataProvider = param1;
                return;
            }// end function
            , "outputsDataGrid.dataProvider");
            result[2] = binding;
            binding = new Binding(this, function () : String
            {
                var _loc_1:* = Utils.i18n("generalGetMaterial");
                var _loc_2:* = _loc_1 == undefined ? (null) : (String(_loc_1));
                return _loc_2;
            }// end function
            , function (param1:String) : void
            {
                _AllMapCommandWindow_DataGridColumn1.headerText = param1;
                return;
            }// end function
            , "_AllMapCommandWindow_DataGridColumn1.headerText");
            result[3] = binding;
            binding = new Binding(this, function () : String
            {
                var _loc_1:* = Utils.i18n("generalAmount");
                var _loc_2:* = _loc_1 == undefined ? (null) : (String(_loc_1));
                return _loc_2;
            }// end function
            , function (param1:String) : void
            {
                _AllMapCommandWindow_DataGridColumn2.headerText = param1;
                return;
            }// end function
            , "_AllMapCommandWindow_DataGridColumn2.headerText");
            result[4] = binding;
            binding = new Binding(this, function () : Object
            {
                return _descriptions;
            }// end function
            , function (param1:Object) : void
            {
                descriptionDataGrid.dataProvider = param1;
                return;
            }// end function
            , "descriptionDataGrid.dataProvider");
            result[5] = binding;
            binding = new Binding(this, function () : String
            {
                var _loc_1:* = Utils.i18n("generalInfo");
                var _loc_2:* = _loc_1 == undefined ? (null) : (String(_loc_1));
                return _loc_2;
            }// end function
            , function (param1:String) : void
            {
                _AllMapCommandWindow_DataGridColumn3.headerText = param1;
                return;
            }// end function
            , "_AllMapCommandWindow_DataGridColumn3.headerText");
            result[6] = binding;
            binding = new Binding(this, function () : Object
            {
                return _buttonPurify;
            }// end function
            , function (param1:Object) : void
            {
                purify.source = param1;
                return;
            }// end function
            , "purify.source");
            result[7] = binding;
            binding = new Binding(this, function () : Object
            {
                return _buttonAttack;
            }// end function
            , function (param1:Object) : void
            {
                attack.source = param1;
                return;
            }// end function
            , "attack.source");
            result[8] = binding;
            binding = new Binding(this, function () : Object
            {
                return _buttonInvade;
            }// end function
            , function (param1:Object) : void
            {
                invade.source = param1;
                return;
            }// end function
            , "invade.source");
            result[9] = binding;
            binding = new Binding(this, function () : Object
            {
                return _buttonSubdue;
            }// end function
            , function (param1:Object) : void
            {
                subdue.source = param1;
                return;
            }// end function
            , "subdue.source");
            result[10] = binding;
            binding = new Binding(this, function () : Object
            {
                return _buttonPlunder;
            }// end function
            , function (param1:Object) : void
            {
                plunder.source = param1;
                return;
            }// end function
            , "plunder.source");
            result[11] = binding;
            binding = new Binding(this, function () : Object
            {
                return _buttonMail;
            }// end function
            , function (param1:Object) : void
            {
                mail.source = param1;
                return;
            }// end function
            , "mail.source");
            result[12] = binding;
            binding = new Binding(this, function () : Object
            {
                return _buttonSurrender;
            }// end function
            , function (param1:Object) : void
            {
                surrender.source = param1;
                return;
            }// end function
            , "surrender.source");
            result[13] = binding;
            binding = new Binding(this, function () : Object
            {
                return _buttonReclaim;
            }// end function
            , function (param1:Object) : void
            {
                reclaim.source = param1;
                return;
            }// end function
            , "reclaim.source");
            result[14] = binding;
            binding = new Binding(this, function () : Object
            {
                return _buttonFound;
            }// end function
            , function (param1:Object) : void
            {
                found.source = param1;
                return;
            }// end function
            , "found.source");
            result[15] = binding;
            binding = new Binding(this, function () : Object
            {
                return _buttonRepair;
            }// end function
            , function (param1:Object) : void
            {
                repair.source = param1;
                return;
            }// end function
            , "repair.source");
            result[16] = binding;
            binding = new Binding(this, function () : Object
            {
                return _buttonGarrison;
            }// end function
            , function (param1:Object) : void
            {
                garrison.source = param1;
                return;
            }// end function
            , "garrison.source");
            result[17] = binding;
            binding = new Binding(this, function () : Object
            {
                return _buttonDestroy;
            }// end function
            , function (param1:Object) : void
            {
                destroy.source = param1;
                return;
            }// end function
            , "destroy.source");
            result[18] = binding;
            binding = new Binding(this, function () : Object
            {
                return _buttonRemove;
            }// end function
            , function (param1:Object) : void
            {
                remove.source = param1;
                return;
            }// end function
            , "remove.source");
            result[19] = binding;
            binding = new Binding(this, function () : Object
            {
                return _buttonChargeRemove;
            }// end function
            , function (param1:Object) : void
            {
                chargeRemove.source = param1;
                return;
            }// end function
            , "chargeRemove.source");
            result[20] = binding;
            binding = new Binding(this, function () : Object
            {
                return _buttonClose;
            }// end function
            , function (param1:Object) : void
            {
                _AllMapCommandWindow_Image20.source = param1;
                return;
            }// end function
            , "_AllMapCommandWindow_Image20.source");
            result[21] = binding;
            binding = new Binding(this, function () : Object
            {
                return _buttonX;
            }// end function
            , function (param1:Object) : void
            {
                _AllMapCommandWindow_Image21.source = param1;
                return;
            }// end function
            , "_AllMapCommandWindow_Image21.source");
            result[22] = binding;
            return result;
        }// end function

        private function set _buttonReclaim(param1:MovieClipLoaderAsset) : void
        {
            var _loc_2:* = this._1555736664_buttonReclaim;
            if (_loc_2 !== param1)
            {
                this._1555736664_buttonReclaim = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "_buttonReclaim", _loc_2, param1));
            }
            return;
        }// end function

        public function set objectName(param1:Label) : void
        {
            var _loc_2:* = this._1066654314objectName;
            if (_loc_2 !== param1)
            {
                this._1066654314objectName = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "objectName", _loc_2, param1));
            }
            return;
        }// end function

        public function get purify() : Image
        {
            return this._976950065purify;
        }// end function

        private function endUnitSelect(event:PopupEvent) : void
        {
            var _loc_3:Object = null;
            PopUpManager.removePopUp(unitWindow);
            confirmWindow.init();
            var _loc_2:* = activity.money + Utils.i18n("generalMoneyUnit") + "\n";
            for each (_loc_3 in activity.materials)
            {
                
                _loc_2 = _loc_2 + (_loc_3.nameLabel + ":" + _loc_3.quantity + "\n");
            }
            confirmWindow.detail = {title:title, commandName:commandName, materials:_loc_2, unit:event.param.unit, terms:activity.terms};
            selectedUnitId = event.param.unit.unitId;
            this.popupWindow(confirmWindow, false);
            return;
        }// end function

        public function __mail_click(event:MouseEvent) : void
        {
            confirmMail();
            return;
        }// end function

        private function set _buttonDestroy(param1:MovieClipLoaderAsset) : void
        {
            var _loc_2:* = this._2030618217_buttonDestroy;
            if (_loc_2 !== param1)
            {
                this._2030618217_buttonDestroy = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "_buttonDestroy", _loc_2, param1));
            }
            return;
        }// end function

        private function set _buttonX(param1:MovieClipLoaderAsset) : void
        {
            var _loc_2:* = this._1695390169_buttonX;
            if (_loc_2 !== param1)
            {
                this._1695390169_buttonX = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "_buttonX", _loc_2, param1));
            }
            return;
        }// end function

        public function set enableInvade(param1:Boolean) : void
        {
            MovieClip(Loader(_buttonInvade.getChildAt(0)).content).gotoAndPlay(param1 ? ("button_invade") : ("button_invade_off"));
            _enableInvade = param1;
            return;
        }// end function

        public function set tutMarkPurify(param1:Image) : void
        {
            var _loc_2:* = this._1528810385tutMarkPurify;
            if (_loc_2 !== param1)
            {
                this._1528810385tutMarkPurify = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "tutMarkPurify", _loc_2, param1));
            }
            return;
        }// end function

        private function chargeRemoveCancel(event:Event) : void
        {
            closeChargeRemoveWindow();
            return;
        }// end function

        public function set enableChargeRemove(param1:Boolean) : void
        {
            MovieClip(Loader(_buttonChargeRemove.getChildAt(0)).content).gotoAndPlay(param1 ? ("button_charge_move") : ("button_charge_move_off"));
            _enableChargeRemove = param1;
            return;
        }// end function

        public function get hexImage() : Image
        {
            return this._481501440hexImage;
        }// end function

        public function set found(param1:Image) : void
        {
            var _loc_2:* = this._97621890found;
            if (_loc_2 !== param1)
            {
                this._97621890found = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "found", _loc_2, param1));
            }
            return;
        }// end function

        private function confirmSurrender() : void
        {
            confirmEvent(Utils.i18n("allMapCommandPropertyAbandonment"), SURRENDER);
            return;
        }// end function

        public function set posX(param1:Label) : void
        {
            var _loc_2:* = this._3446916posX;
            if (_loc_2 !== param1)
            {
                this._3446916posX = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "posX", _loc_2, param1));
            }
            return;
        }// end function

        public function set posY(param1:Label) : void
        {
            var _loc_2:* = this._3446917posY;
            if (_loc_2 !== param1)
            {
                this._3446917posY = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "posY", _loc_2, param1));
            }
            return;
        }// end function

        public function get playerName() : String
        {
            return _playerName;
        }// end function

        public function init() : void
        {
            initButtons();
            unitWindow.addEventListener(AllMapUnitWindow.UNIT_SELECTED, endUnitSelect);
            confirmWindow.addEventListener(AllMapConfirmWindow.CONFIRMED, confirmed);
            garrisonUnitWindow.addEventListener(GarrisonUnitWindow.UNIT_SELECT_OK, garrisonUnitSelectOK);
            garrisonUnitWindow.addEventListener(GarrisonUnitWindow.UNIT_SELECT_CANCEL, garrisonUnitSelectCancel);
            garrisonUnitWindow.addEventListener(GarrisonUnitWindow.ALL_UNIT_RECOVERY, garrisonUnitAllRecovery);
            chargeRemoveWindow.addEventListener(ChargeRemoveWindow.CHARGE_REMOVE_OK, chargeRemoveOK);
            chargeRemoveWindow.addEventListener(ChargeRemoveWindow.CHARGE_REMOVE_CANCEL, chargeRemoveCancel);
            return;
        }// end function

        public function get invade() : Image
        {
            return this._1183707375invade;
        }// end function

        private function set _buttonPurify(param1:MovieClipLoaderAsset) : void
        {
            var _loc_2:* = this._1238778752_buttonPurify;
            if (_loc_2 !== param1)
            {
                this._1238778752_buttonPurify = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "_buttonPurify", _loc_2, param1));
            }
            return;
        }// end function

        private function confirmDestroy() : void
        {
            confirmEvent(Utils.i18n("allMapCommandFortBreak"), DESTROY);
            return;
        }// end function

        public function __subdue_click(event:MouseEvent) : void
        {
            if (_enableSubdue)
            {
                confirmPlunder(Utils.i18n("generalSubjugation"));
            }
            return;
        }// end function

        private function _AllMapCommandWindow_bindingExprs() : void
        {
            var _loc_1:* = undefined;
            _loc_1 = _swf_faction;
            _loc_1 = _swf_rank;
            _loc_1 = _outputs;
            _loc_1 = Utils.i18n("generalGetMaterial");
            _loc_1 = Utils.i18n("generalAmount");
            _loc_1 = _descriptions;
            _loc_1 = Utils.i18n("generalInfo");
            _loc_1 = _buttonPurify;
            _loc_1 = _buttonAttack;
            _loc_1 = _buttonInvade;
            _loc_1 = _buttonSubdue;
            _loc_1 = _buttonPlunder;
            _loc_1 = _buttonMail;
            _loc_1 = _buttonSurrender;
            _loc_1 = _buttonReclaim;
            _loc_1 = _buttonFound;
            _loc_1 = _buttonRepair;
            _loc_1 = _buttonGarrison;
            _loc_1 = _buttonDestroy;
            _loc_1 = _buttonRemove;
            _loc_1 = _buttonChargeRemove;
            _loc_1 = _buttonClose;
            _loc_1 = _buttonX;
            return;
        }// end function

        public function set remove(param1:Image) : void
        {
            var _loc_2:* = this._934610812remove;
            if (_loc_2 !== param1)
            {
                this._934610812remove = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "remove", _loc_2, param1));
            }
            return;
        }// end function

        public function set repair(param1:Image) : void
        {
            var _loc_2:* = this._934535283repair;
            if (_loc_2 !== param1)
            {
                this._934535283repair = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "repair", _loc_2, param1));
            }
            return;
        }// end function

        public function get waitingUnits() : Array
        {
            return this._1783281954waitingUnits;
        }// end function

        public function __destroy_click(event:MouseEvent) : void
        {
            if (_enableDestroy)
            {
                confirmDestroy();
            }
            return;
        }// end function

        public function set outputs(param1:Object) : void
        {
            var _loc_2:Object = null;
            var _loc_3:Object = null;
            _outputs = new Array();
            for each (_loc_2 in param1)
            {
                
                _loc_3 = {nameLabel:_loc_2.name_label, quantity:_loc_2.quantity};
                _outputs.push(_loc_3);
            }
            return;
        }// end function

        public function get guildName() : Label
        {
            return this._1848510178guildName;
        }// end function

        private function set _buttonSurrender(param1:MovieClipLoaderAsset) : void
        {
            var _loc_2:* = this._1325288085_buttonSurrender;
            if (_loc_2 !== param1)
            {
                this._1325288085_buttonSurrender = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "_buttonSurrender", _loc_2, param1));
            }
            return;
        }// end function

        public function set objectState(param1:Label) : void
        {
            var _loc_2:* = this._1288281966objectState;
            if (_loc_2 !== param1)
            {
                this._1288281966objectState = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "objectState", _loc_2, param1));
            }
            return;
        }// end function

        public function get topography() : Label
        {
            return this._327294757topography;
        }// end function

        private function _AllMapCommandWindow_DataGridColumn3_i() : DataGridColumn
        {
            var _loc_1:* = new DataGridColumn();
            _AllMapCommandWindow_DataGridColumn3 = _loc_1;
            _loc_1.dataField = "description";
            BindingManager.executeBindings(this, "_AllMapCommandWindow_DataGridColumn3", _AllMapCommandWindow_DataGridColumn3);
            return _loc_1;
        }// end function

        private function get _buttonRepair() : MovieClipLoaderAsset
        {
            return this._1196363970_buttonRepair;
        }// end function

        private function garrisonUnitSelectOK(event:PopupEvent) : void
        {
            var _loc_3:UnitVO = null;
            var _loc_2:* = new Array();
            for each (_loc_3 in event.param.units)
            {
                
                if (_loc_3.name != "")
                {
                    _loc_2.push(_loc_3.unitId);
                }
            }
            PopUpManager.removePopUp(garrisonUnitWindow);
            dispatchEvent(new PopupEvent(GARRISON_OK, {unitIds:_loc_2}));
            return;
        }// end function

        private function confirmAttack(param1:String) : void
        {
            var _loc_2:String = null;
            var _loc_3:AlertWindow = null;
            if (lowOnmyouRankAttack)
            {
                _loc_2 = Utils.i18n("localize16") + param1 + Utils.i18n("localize17");
            }
            else if (noPossessionTicket)
            {
                _loc_2 = Utils.i18n("allMapCommandTicketNoMore");
            }
            else if (propertiesCountFull)
            {
                _loc_2 = Utils.i18n("allMapCommandLandsMaxNum");
            }
            else if (notConnected)
            {
                _loc_2 = Utils.i18n("allMapCommandCanNotAction", param1);
            }
            else if (noUnit)
            {
                _loc_2 = Utils.i18n("allMapCommandUnitsCanNotBattle");
            }
            if (_loc_2)
            {
                _loc_3 = AlertWindow.show(_loc_2);
                this.popupWindow(_loc_3, false);
            }
            else
            {
                sendEvent(ATTACK);
            }
            return;
        }// end function

        public function set enableSurrender(param1:Boolean) : void
        {
            MovieClip(Loader(_buttonSurrender.getChildAt(0)).content).gotoAndPlay(param1 ? ("button_abandon") : ("button_abandon_off"));
            _enableSurrender = param1;
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

        private function set _buttonMail(param1:MovieClipLoaderAsset) : void
        {
            var _loc_2:* = this._1446645160_buttonMail;
            if (_loc_2 !== param1)
            {
                this._1446645160_buttonMail = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "_buttonMail", _loc_2, param1));
            }
            return;
        }// end function

        private function get _swf_rank() : MovieClipLoaderAsset
        {
            return this._99600088_swf_rank;
        }// end function

        private function get _buttonChargeRemove() : MovieClipLoaderAsset
        {
            return this._461616969_buttonChargeRemove;
        }// end function

        private function confirmed(event:Event) : void
        {
            PopUpManager.removePopUp(confirmWindow);
            var _loc_2:Object = {unitId:selectedUnitId};
            if (eventName == FOUND)
            {
                _loc_2.foundType = foundType;
            }
            dispatchEvent(new PopupEvent(eventName, _loc_2));
            return;
        }// end function

        public function set enableAttack(param1:Boolean) : void
        {
            MovieClip(Loader(_buttonAttack.getChildAt(0)).content).gotoAndPlay(param1 ? ("button_attack") : ("button_attack_off"));
            _enableAttack = param1;
            return;
        }// end function

        public function set subdue(param1:Image) : void
        {
            var _loc_2:* = this._891543628subdue;
            if (_loc_2 !== param1)
            {
                this._891543628subdue = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "subdue", _loc_2, param1));
            }
            return;
        }// end function

        private function confirmRemove() : void
        {
            var _loc_1:String = "";
            if (propertiesCount > 0)
            {
                if (propertiesCount > 1)
                {
                    _loc_1 = _loc_1 + Utils.i18n("localize18");
                }
                _loc_1 = _loc_1 + Utils.i18n("localize19");
            }
            _loc_1 = _loc_1 + Utils.i18n("allMapCommandMoveHomeConfirm");
            confirmEvent(_loc_1, REMOVE);
            return;
        }// end function

        public function set mail(param1:Image) : void
        {
            var _loc_2:* = this._3343799mail;
            if (_loc_2 !== param1)
            {
                this._3343799mail = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "mail", _loc_2, param1));
            }
            return;
        }// end function

        private function set _buttonFound(param1:MovieClipLoaderAsset) : void
        {
            var _loc_2:* = this._1890291121_buttonFound;
            if (_loc_2 !== param1)
            {
                this._1890291121_buttonFound = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "_buttonFound", _loc_2, param1));
            }
            return;
        }// end function

        private function confirmPlunder(param1:String) : void
        {
            var _loc_2:String = null;
            var _loc_3:AlertWindow = null;
            if (noUnit)
            {
                _loc_2 = Utils.i18n("allMapCommandUnitsCanNotBattle");
            }
            if (_loc_2)
            {
                _loc_3 = AlertWindow.show(_loc_2);
                this.popupWindow(_loc_3, false);
            }
            else
            {
                sendEvent(PLUNDER);
            }
            return;
        }// end function

        private function get _buttonSubdue() : MovieClipLoaderAsset
        {
            return this._1153372315_buttonSubdue;
        }// end function

        private function _AllMapCommandWindow_DataGridColumn2_i() : DataGridColumn
        {
            var _loc_1:* = new DataGridColumn();
            _AllMapCommandWindow_DataGridColumn2 = _loc_1;
            _loc_1.dataField = "quantity";
            _loc_1.width = 50;
            _loc_1.setStyle("textAlign", "center");
            BindingManager.executeBindings(this, "_AllMapCommandWindow_DataGridColumn2", _AllMapCommandWindow_DataGridColumn2);
            return _loc_1;
        }// end function

        public function get found() : Image
        {
            return this._97621890found;
        }// end function

        public function set outputsDataGrid(param1:DataGrid) : void
        {
            var _loc_2:* = this._1754907586outputsDataGrid;
            if (_loc_2 !== param1)
            {
                this._1754907586outputsDataGrid = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "outputsDataGrid", _loc_2, param1));
            }
            return;
        }// end function

        private function set _buttonInvade(param1:MovieClipLoaderAsset) : void
        {
            var _loc_2:* = this._1445536062_buttonInvade;
            if (_loc_2 !== param1)
            {
                this._1445536062_buttonInvade = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "_buttonInvade", _loc_2, param1));
            }
            return;
        }// end function

        public function set enableFound(param1:Boolean) : void
        {
            MovieClip(Loader(_buttonFound.getChildAt(0)).content).gotoAndPlay(param1 ? ("button_build") : ("button_build_off"));
            _enableFound = param1;
            return;
        }// end function

        private function garrisonUnitAllRecovery(event:Event) : void
        {
            sendEvent(GARRISON_ALL_RECOVERY);
            return;
        }// end function

        override public function initialize() : void
        {
            var target:AllMapCommandWindow;
            var watcherSetupUtilClass:Object;
            .mx_internal::setDocumentDescriptor(_documentDescriptor_);
            var bindings:* = _AllMapCommandWindow_bindingsSetup();
            var watchers:Array;
            target;
            if (_watcherSetupUtil == null)
            {
                watcherSetupUtilClass = getDefinitionByName("_com_kbmj_viking_view_allMap_AllMapCommandWindowWatcherSetupUtil");
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

        public function set enableGarrison(param1:Boolean) : void
        {
            MovieClip(Loader(_buttonGarrison.getChildAt(0)).content).gotoAndPlay(param1 ? ("button_post_units") : ("button_post_units_off"));
            _enableGarrison = param1;
            return;
        }// end function

        public function startUnitSelect(param1:String, param2:String, param3:String, param4:Object) : void
        {
            var _loc_5:AlertWindow = null;
            if (param1 == RECLAIM)
            {
                if (lowOnmyouRankLevelUp)
                {
                    _loc_5 = AlertWindow.show(Utils.i18n("localize16") + param2 + Utils.i18n("localize17"));
                    this.popupWindow(_loc_5, false);
                    return;
                }
            }
            eventName = param1;
            title = param2;
            commandName = param3;
            activity = param4;
            unitWindow.init(title, commandName, waitingUnits);
            this.popupWindow(unitWindow, false);
            return;
        }// end function

        public function set purify(param1:Image) : void
        {
            var _loc_2:* = this._976950065purify;
            if (_loc_2 !== param1)
            {
                this._976950065purify = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "purify", _loc_2, param1));
            }
            return;
        }// end function

        private function get _buttonMail() : MovieClipLoaderAsset
        {
            return this._1446645160_buttonMail;
        }// end function

        private function set _descriptions(param1:Array) : void
        {
            var _loc_2:* = this._270165462_descriptions;
            if (_loc_2 !== param1)
            {
                this._270165462_descriptions = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "_descriptions", _loc_2, param1));
            }
            return;
        }// end function

        private function set _buttonPlunder(param1:MovieClipLoaderAsset) : void
        {
            var _loc_2:* = this._2180917_buttonPlunder;
            if (_loc_2 !== param1)
            {
                this._2180917_buttonPlunder = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "_buttonPlunder", _loc_2, param1));
            }
            return;
        }// end function

        public function get repair() : Image
        {
            return this._934535283repair;
        }// end function

        private function get _buttonFound() : MovieClipLoaderAsset
        {
            return this._1890291121_buttonFound;
        }// end function

        public function get subdue() : Image
        {
            return this._891543628subdue;
        }// end function

        private function get _buttonGarrison() : MovieClipLoaderAsset
        {
            return this._172330900_buttonGarrison;
        }// end function

        private function _AllMapCommandWindow_DataGridColumn1_i() : DataGridColumn
        {
            var _loc_1:* = new DataGridColumn();
            _AllMapCommandWindow_DataGridColumn1 = _loc_1;
            _loc_1.dataField = "nameLabel";
            _loc_1.width = 95;
            BindingManager.executeBindings(this, "_AllMapCommandWindow_DataGridColumn1", _AllMapCommandWindow_DataGridColumn1);
            return _loc_1;
        }// end function

        private function confirmEvent(param1:String, param2:String) : void
        {
            var msg:* = param1;
            var event:* = param2;
            AlertWindow.show(msg, "", AlertWindow.YES | AlertWindow.NO, this, function (event:CloseEvent) : void
            {
                if (event.detail == AlertWindow.YES)
                {
                    sendEvent(event);
                }
                return;
            }// end function
            );
            return;
        }// end function

        public function get mail() : Image
        {
            return this._3343799mail;
        }// end function

        public function get outputsDataGrid() : DataGrid
        {
            return this._1754907586outputsDataGrid;
        }// end function

        public function set enableReclaim(param1:Boolean) : void
        {
            MovieClip(Loader(_buttonReclaim.getChildAt(0)).content).gotoAndPlay(param1 ? ("button_reclaim") : ("button_reclaim_off"));
            _enableReclaim = param1;
            return;
        }// end function

        public function set enableRemove(param1:Boolean) : void
        {
            MovieClip(Loader(_buttonRemove.getChildAt(0)).content).gotoAndPlay(param1 ? ("button_move") : ("button_move_off"));
            _enableRemove = param1;
            return;
        }// end function

        private function get _descriptions() : Array
        {
            return this._270165462_descriptions;
        }// end function

        public function __reclaim_click(event:MouseEvent) : void
        {
            if (_enableReclaim)
            {
                startUnitSelect(RECLAIM, Utils.i18n("generalDevelopment"), Utils.i18n("localize20"), reclaimActivity);
            }
            return;
        }// end function

        private function startChargeRemove() : void
        {
            var _loc_1:AlertWindow = null;
            if (propertiesCount > 0)
            {
                _loc_1 = AlertWindow.show(Utils.i18n("allMapCommandCanNotMoveHome"));
                this.popupWindow(_loc_1, false);
            }
            else
            {
                chargeRemoveWindow.setDefaultArea(homePos);
                chargeRemoveWindow.updateMiniMapFrame(centerPos);
                this.popupWindow(chargeRemoveWindow, false);
            }
            return;
        }// end function

        public function set surrender(param1:Image) : void
        {
            var _loc_2:* = this._1803092966surrender;
            if (_loc_2 !== param1)
            {
                this._1803092966surrender = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "surrender", _loc_2, param1));
            }
            return;
        }// end function

        public function set enableRepair(param1:Boolean) : void
        {
            MovieClip(Loader(_buttonRepair.getChildAt(0)).content).gotoAndPlay(param1 ? ("button_repair") : ("button_repair_off"));
            _enableRepair = param1;
            return;
        }// end function

        public function startUnitSelectGarrison() : void
        {
            garrisonUnitWindow.waitingUnits = waitingUnits;
            garrisonUnitWindow.selectedUnits = selectedUnits;
            garrisonUnitWindow.callLater(garrisonUnitWindow.init);
            this.popupWindow(garrisonUnitWindow, false);
            sendEvent(GARRISON_UNIT_WINDOW_OPEN);
            return;
        }// end function

        private function selectFound(event:PopupEvent) : void
        {
            trace(event.param);
            foundType = event.param as int;
            if (foundType == 1)
            {
                startUnitSelect(FOUND, Utils.i18n("allMapCommandBuildFortTitle"), Utils.i18n("allMapCommandBuildFort"), foundActivity);
            }
            else
            {
                startUnitSelect(FOUND, Utils.i18n("allMapCommandBuildTowerTitle"), Utils.i18n("allMapCommandBuildTower"), foundActivity);
            }
            return;
        }// end function

        public function __remove_click(event:MouseEvent) : void
        {
            if (_enableRemove)
            {
                confirmRemove();
            }
            return;
        }// end function

        public function set descriptions(param1:Array) : void
        {
            _descriptions = param1;
            return;
        }// end function

        private function set _buttonAttack(param1:MovieClipLoaderAsset) : void
        {
            var _loc_2:* = this._1669087751_buttonAttack;
            if (_loc_2 !== param1)
            {
                this._1669087751_buttonAttack = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "_buttonAttack", _loc_2, param1));
            }
            return;
        }// end function

        public function ___AllMapCommandWindow_Image21_click(event:MouseEvent) : void
        {
            visible = false;
            return;
        }// end function

        public function set enableDestroy(param1:Boolean) : void
        {
            MovieClip(Loader(_buttonDestroy.getChildAt(0)).content).gotoAndPlay(param1 ? ("button_remove") : ("button_remove_off"));
            _enableDestroy = param1;
            return;
        }// end function

        public function __purify_click(event:MouseEvent) : void
        {
            if (_enablePurify)
            {
                confirmAttack(Utils.i18n("generalPurification"));
            }
            return;
        }// end function

        private function get _buttonAttack() : MovieClipLoaderAsset
        {
            return this._1669087751_buttonAttack;
        }// end function

        public function get destroy() : Image
        {
            return this._1557372922destroy;
        }// end function

        public function set destroy(param1:Image) : void
        {
            var _loc_2:* = this._1557372922destroy;
            if (_loc_2 !== param1)
            {
                this._1557372922destroy = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "destroy", _loc_2, param1));
            }
            return;
        }// end function

        public static function set watcherSetupUtil(param1:IWatcherSetupUtil) : void
        {
            AllMapCommandWindow._watcherSetupUtil = param1;
            return;
        }// end function

    }
}
