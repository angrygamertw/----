package com.kbmj.viking.view.city
{
    import com.kbmj.viking.lib.*;
    import com.kbmj.viking.view.*;
    import flash.display.*;
    import flash.events.*;
    import flash.utils.*;
    import mx.binding.*;
    import mx.collections.*;
    import mx.containers.*;
    import mx.controls.*;
    import mx.controls.dataGridClasses.*;
    import mx.core.*;
    import mx.events.*;

    public class SearchGuildWindow extends PopupWindow implements IBindingClient
    {
        public var _SearchGuildWindow_TileList1:TileList;
        private var _embed_mxml__swf_home_buttons_button_list_search_swf_1353093037:Class;
        private var _652282499memberRenderer:ClassFactory;
        var _bindingsByDestination:Object;
        private var _1195361263viewData:ArrayCollection;
        private var factionId:int = 0;
        private var _1193840764_swf_close:MovieClipLoaderAsset;
        private var _192644587buttonRenderer:ClassFactory;
        private var _1218643219_swf_close_window:MovieClipLoaderAsset;
        public var _SearchGuildWindow_DataGridColumn3:DataGridColumn;
        public var _SearchGuildWindow_DataGridColumn4:DataGridColumn;
        public var _SearchGuildWindow_DataGridColumn5:DataGridColumn;
        public var _SearchGuildWindow_DataGridColumn6:DataGridColumn;
        public var _SearchGuildWindow_DataGridColumn7:DataGridColumn;
        public var _SearchGuildWindow_DataGridColumn2:DataGridColumn;
        private var alertWindow:AlertWindow;
        private var _admissionComment:String;
        public var _SearchGuildWindow_DataGridColumn8:DataGridColumn;
        public var _SearchGuildWindow_DataGridColumn1:DataGridColumn;
        private var _294239133searchGuildCanvas:Canvas;
        private var resetBelong:int;
        public var _SearchGuildWindow_DataGridColumn9:DataGridColumn;
        private var _1837521309factionArray:ArrayCollection;
        public var _SearchGuildWindow_Image2:Image;
        public var _SearchGuildWindow_Image3:Image;
        var _watchers:Array;
        private var _391131953dataArray:Array;
        private var _1896677185windowLayer:Canvas;
        public var factionName:Object;
        var _bindingsBeginWithWord:Object;
        private var _selectGuildId:int;
        private var _827594951strSearch:TextInput;
        public var _SearchGuildWindow_Text1:Text;
        var _bindings:Array;
        private var _658750173linkRenderer:ClassFactory;
        private var _documentDescriptor_:UIComponentDescriptor;
        private var _588961665listRenderer:ClassFactory;
        private var admissionGuildWindow:AdmissionGuildWindow;
        public static var selectButtonOff:Class = SearchGuildWindow_selectButtonOff;
        public static var selectButton:Class = SearchGuildWindow_selectButton;
        public static const SEARCH_PLAYER:String = "searchPlayer";
        public static var iconFaction01:Class = SearchGuildWindow_iconFaction01;
        public static var iconFaction02:Class = SearchGuildWindow_iconFaction02;
        public static var iconFaction03:Class = SearchGuildWindow_iconFaction03;
        public static var iconFaction04:Class = SearchGuildWindow_iconFaction04;
        private static var _watcherSetupUtil:IWatcherSetupUtil;
        public static const CLOSE_SEARCH_GUILD_WINDOW:String = "closeSearchGuildWindow";
        public static var iconFaction05:Class = SearchGuildWindow_iconFaction05;
        public static const DETAIL_GUILS:String = "detailGuilds";
        public static const ADMISSION_GUILD:String = "admissionGuild";

        public function SearchGuildWindow()
        {
            _documentDescriptor_ = new UIComponentDescriptor({type:PopupWindow, propertiesFactory:function () : Object
            {
                return {width:760, height:560, childDescriptors:[new UIComponentDescriptor({type:Canvas, id:"windowLayer"}), new UIComponentDescriptor({type:Canvas, id:"searchGuildCanvas", propertiesFactory:function () : Object
                {
                    return {childDescriptors:[new UIComponentDescriptor({type:Text, id:"_SearchGuildWindow_Text1", propertiesFactory:function () : Object
                    {
                        return {styleName:"DealTitle", x:20, y:80, width:560};
                    }// end function
                    }), new UIComponentDescriptor({type:Canvas, propertiesFactory:function () : Object
                    {
                        return {x:30, y:115, width:542, childDescriptors:[new UIComponentDescriptor({type:DataGrid, stylesFactory:function () : void
                        {
                            this.paddingTop = 0;
                            this.paddingBottom = 0;
                            return;
                        }// end function
                        , propertiesFactory:function () : Object
                        {
                            return {percentWidth:100, height:98, resizableColumns:false, rowCount:1, selectable:false, sortableColumns:false, verticalScrollPolicy:"off", styleName:"GuildListDataGrid", columns:[_SearchGuildWindow_DataGridColumn1_i(), _SearchGuildWindow_DataGridColumn2_i(), _SearchGuildWindow_DataGridColumn3_i(), _SearchGuildWindow_DataGridColumn4_i(), _SearchGuildWindow_DataGridColumn5_i(), _SearchGuildWindow_DataGridColumn6_i(), _SearchGuildWindow_DataGridColumn7_i(), _SearchGuildWindow_DataGridColumn8_i(), _SearchGuildWindow_DataGridColumn9_i()]};
                        }// end function
                        }), new UIComponentDescriptor({type:TileList, id:"_SearchGuildWindow_TileList1", stylesFactory:function () : void
                        {
                            this.paddingTop = 0;
                            this.paddingBottom = 0;
                            return;
                        }// end function
                        , propertiesFactory:function () : Object
                        {
                            return {y:20, styleName:"GuildAreaList", selectable:false, columnCount:3, rowCount:3};
                        }// end function
                        })]};
                    }// end function
                    }), new UIComponentDescriptor({type:TextInput, id:"strSearch", propertiesFactory:function () : Object
                    {
                        return {x:413, y:497, width:100, text:"", maxChars:12};
                    }// end function
                    }), new UIComponentDescriptor({type:Button, events:{click:"___SearchGuildWindow_Button1_click"}, propertiesFactory:function () : Object
                    {
                        return {label:"検索", x:515, y:497, buttonMode:true};
                    }// end function
                    }), new UIComponentDescriptor({type:Image, events:{click:"___SearchGuildWindow_Image1_click"}, propertiesFactory:function () : Object
                    {
                        return {x:513, y:497, source:_embed_mxml__swf_home_buttons_button_list_search_swf_1353093037};
                    }// end function
                    }), new UIComponentDescriptor({type:Image, id:"_SearchGuildWindow_Image2", events:{click:"___SearchGuildWindow_Image2_click"}, propertiesFactory:function () : Object
                    {
                        return {x:245, y:495};
                    }// end function
                    }), new UIComponentDescriptor({type:Image, id:"_SearchGuildWindow_Image3", events:{click:"___SearchGuildWindow_Image3_click"}, propertiesFactory:function () : Object
                    {
                        return {x:555, y:80};
                    }// end function
                    })]};
                }// end function
                })]};
            }// end function
            });
            _1193840764_swf_close = new Viking.EmbedSwfButtonCommon();
            _1218643219_swf_close_window = new Viking.EmbedSwfButtonCloseWindow();
            admissionGuildWindow = new AdmissionGuildWindow();
            factionName = {2:Utils.i18n("generalFactionNameBlueDragon"), 3:Utils.i18n("generalFactionNameSuzaku"), 4:Utils.i18n("generalFactionNameWhiteTiger"), 5:Utils.i18n("generalFactionNameTortoise")};
            _embed_mxml__swf_home_buttons_button_list_search_swf_1353093037 = SearchGuildWindow__embed_mxml__swf_home_buttons_button_list_search_swf_1353093037;
            _bindings = [];
            _watchers = [];
            _bindingsByDestination = {};
            _bindingsBeginWithWord = {};
            mx_internal::_document = this;
            this.width = 760;
            this.height = 560;
            _SearchGuildWindow_ClassFactory1_i();
            _SearchGuildWindow_ClassFactory2_i();
            _SearchGuildWindow_ClassFactory4_i();
            _SearchGuildWindow_ClassFactory3_i();
            this.addEventListener("creationComplete", ___SearchGuildWindow_PopupWindow1_creationComplete);
            return;
        }// end function

        private function set viewData(param1:ArrayCollection) : void
        {
            var _loc_2:* = this._1195361263viewData;
            if (_loc_2 !== param1)
            {
                this._1195361263viewData = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "viewData", _loc_2, param1));
            }
            return;
        }// end function

        public function set memberRenderer(param1:ClassFactory) : void
        {
            var _loc_2:* = this._652282499memberRenderer;
            if (_loc_2 !== param1)
            {
                this._652282499memberRenderer = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "memberRenderer", _loc_2, param1));
            }
            return;
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

        public function set listRenderer(param1:ClassFactory) : void
        {
            var _loc_2:* = this._588961665listRenderer;
            if (_loc_2 !== param1)
            {
                this._588961665listRenderer = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "listRenderer", _loc_2, param1));
            }
            return;
        }// end function

        public function ___SearchGuildWindow_Image3_click(event:MouseEvent) : void
        {
            onRemove();
            return;
        }// end function

        public function init(param1:Array, param2:Object) : void
        {
            var _loc_4:int = 0;
            var _loc_5:Object = null;
            var _loc_6:int = 0;
            dataArray = new Array();
            viewData = new ArrayCollection();
            factionArray = new ArrayCollection(new Array(param1.length));
            factionId = param2.factionId;
            var _loc_3:int = 0;
            while (_loc_3 < 9)
            {
                
                dataArray[_loc_3] = new Array();
                _loc_4 = 0;
                while (_loc_4 < 4)
                {
                    
                    _loc_5 = param1[_loc_3 * 4 + _loc_4];
                    _loc_6 = _loc_5.guild.faction_id;
                    dataArray[_loc_3].push({name:factionName[_loc_6], id:_loc_4, icon:_loc_6 == 2 ? (iconFaction02) : (_loc_6 == 3 ? (iconFaction03) : (_loc_6 == 4 ? (iconFaction04) : (_loc_6 == 5 ? (iconFaction05) : (iconFaction01)))), member:_loc_5.guild.guild_memberships_count, notoriety:_loc_5.guild.notoriety, army:"---", dedicationPoint:_loc_5.guild.dedication_point, guildId:_loc_5.guild.id, guild_rank:_loc_5.guild.guild_rank, factionId:_loc_5.guild.faction_id, territories_count:_loc_5.guild.all_territories_count, level_max_properties_count:_loc_5.guild.level_max_properties_count ? (_loc_5.guild.level_max_properties_count) : (0), maxCount:_loc_5.guild.max_guild_memberships_count});
                    _loc_4++;
                }
                _loc_3++;
            }
            viewData = new ArrayCollection(dataArray);
            admissionGuildWindow.addEventListener(AdmissionGuildWindow.ADMISSION, handleEvent);
            return;
        }// end function

        private function _SearchGuildWindow_DataGridColumn2_i() : DataGridColumn
        {
            var _loc_1:* = new DataGridColumn();
            _SearchGuildWindow_DataGridColumn2 = _loc_1;
            _loc_1.dataField = "member";
            BindingManager.executeBindings(this, "_SearchGuildWindow_DataGridColumn2", _SearchGuildWindow_DataGridColumn2);
            return _loc_1;
        }// end function

        public function get admissionGuildName() : String
        {
            return admissionGuildWindow.guildData.name;
        }// end function

        public function get admissionComment() : String
        {
            return _admissionComment;
        }// end function

        private function _SearchGuildWindow_DataGridColumn6_i() : DataGridColumn
        {
            var _loc_1:* = new DataGridColumn();
            _SearchGuildWindow_DataGridColumn6 = _loc_1;
            BindingManager.executeBindings(this, "_SearchGuildWindow_DataGridColumn6", _SearchGuildWindow_DataGridColumn6);
            return _loc_1;
        }// end function

        private function get _swf_close_window() : MovieClipLoaderAsset
        {
            return this._1218643219_swf_close_window;
        }// end function

        public function get buttonRenderer() : ClassFactory
        {
            return this._192644587buttonRenderer;
        }// end function

        public function getSelectButtonType(param1:Object) : Class
        {
            if (param1.factionId == factionId)
            {
                return selectButton;
            }
            return selectButtonOff;
        }// end function

        public function componentToolTip() : String
        {
            return Utils.i18n("generalShowDetail");
        }// end function

        public function set buttonRenderer(param1:ClassFactory) : void
        {
            var _loc_2:* = this._192644587buttonRenderer;
            if (_loc_2 !== param1)
            {
                this._192644587buttonRenderer = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "buttonRenderer", _loc_2, param1));
            }
            return;
        }// end function

        private function _SearchGuildWindow_ClassFactory1_i() : ClassFactory
        {
            var _loc_1:* = new ClassFactory();
            buttonRenderer = _loc_1;
            _loc_1.generator = SearchGuildWindow_inlineComponent1;
            _loc_1.properties = {outerDocument:this};
            return _loc_1;
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

        public function set factionArray(param1:ArrayCollection) : void
        {
            var _loc_2:* = this._1837521309factionArray;
            if (_loc_2 !== param1)
            {
                this._1837521309factionArray = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "factionArray", _loc_2, param1));
            }
            return;
        }// end function

        public function get strSearch() : TextInput
        {
            return this._827594951strSearch;
        }// end function

        public function get windowLayer() : Canvas
        {
            return this._1896677185windowLayer;
        }// end function

        public function onRemove() : void
        {
            strSearch.text = "";
            admissionGuildWindow.removeEventListener(AdmissionGuildWindow.ADMISSION, handleEvent);
            dispatchEvent(new Event(CLOSE_SEARCH_GUILD_WINDOW));
            onClose();
            MovieClip(Loader(_swf_close.getChildAt(0)).content).gotoAndPlay(0);
            MovieClip(Loader(_swf_close.getChildAt(0)).content).gotoAndPlay("button_close");
            MovieClip(Loader(_swf_close_window.getChildAt(0)).content).gotoAndPlay(1);
            return;
        }// end function

        private function handleEvent(event:Event) : void
        {
            _admissionComment = admissionGuildWindow.admissionComment;
            dispatchEvent(new Event(ADMISSION_GUILD));
            onRemove();
            return;
        }// end function

        private function _SearchGuildWindow_DataGridColumn5_i() : DataGridColumn
        {
            var _loc_1:* = new DataGridColumn();
            _SearchGuildWindow_DataGridColumn5 = _loc_1;
            _loc_1.dataField = "member";
            BindingManager.executeBindings(this, "_SearchGuildWindow_DataGridColumn5", _SearchGuildWindow_DataGridColumn5);
            return _loc_1;
        }// end function

        private function _SearchGuildWindow_DataGridColumn1_i() : DataGridColumn
        {
            var _loc_1:* = new DataGridColumn();
            _SearchGuildWindow_DataGridColumn1 = _loc_1;
            _loc_1.dataField = "name";
            _loc_1.width = 64;
            BindingManager.executeBindings(this, "_SearchGuildWindow_DataGridColumn1", _SearchGuildWindow_DataGridColumn1);
            return _loc_1;
        }// end function

        private function _SearchGuildWindow_DataGridColumn9_i() : DataGridColumn
        {
            var _loc_1:* = new DataGridColumn();
            _SearchGuildWindow_DataGridColumn9 = _loc_1;
            BindingManager.executeBindings(this, "_SearchGuildWindow_DataGridColumn9", _SearchGuildWindow_DataGridColumn9);
            return _loc_1;
        }// end function

        public function ___SearchGuildWindow_PopupWindow1_creationComplete(event:FlexEvent) : void
        {
            onCreate();
            return;
        }// end function

        public function get searchGuildCanvas() : Canvas
        {
            return this._294239133searchGuildCanvas;
        }// end function

        public function limitColor(param1:Object) : uint
        {
            if (param1.member >= param1.maxCount)
            {
                return 12337210;
            }
            return 0;
        }// end function

        private function _SearchGuildWindow_ClassFactory4_i() : ClassFactory
        {
            var _loc_1:* = new ClassFactory();
            listRenderer = _loc_1;
            _loc_1.generator = SearchGuildWindow_inlineComponent4;
            _loc_1.properties = {outerDocument:this};
            return _loc_1;
        }// end function

        public function getGuildName(param1:Object) : String
        {
            return param1.name;
        }// end function

        public function onAdmisstion(param1:Object) : void
        {
            if (param1.factionId != factionId)
            {
                return;
            }
            admissionGuildWindow.guildData = param1;
            _selectGuildId = param1.guildId;
            if (param1.member >= param1.maxCount)
            {
                maxLimitAlert();
            }
            else
            {
                this.popupWindow(admissionGuildWindow, false);
            }
            return;
        }// end function

        public function get listRenderer() : ClassFactory
        {
            return this._588961665listRenderer;
        }// end function

        public function ___SearchGuildWindow_Image1_click(event:MouseEvent) : void
        {
            stringSearchFilter(event);
            return;
        }// end function

        private function get _swf_close() : MovieClipLoaderAsset
        {
            return this._1193840764_swf_close;
        }// end function

        public function get memberRenderer() : ClassFactory
        {
            return this._652282499memberRenderer;
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

        public function set strSearch(param1:TextInput) : void
        {
            var _loc_2:* = this._827594951strSearch;
            if (_loc_2 !== param1)
            {
                this._827594951strSearch = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "strSearch", _loc_2, param1));
            }
            return;
        }// end function

        override public function initialize() : void
        {
            var target:SearchGuildWindow;
            var watcherSetupUtilClass:Object;
            .mx_internal::setDocumentDescriptor(_documentDescriptor_);
            var bindings:* = _SearchGuildWindow_bindingsSetup();
            var watchers:Array;
            target;
            if (_watcherSetupUtil == null)
            {
                watcherSetupUtilClass = getDefinitionByName("_com_kbmj_viking_view_city_SearchGuildWindowWatcherSetupUtil");
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

        private function _SearchGuildWindow_DataGridColumn4_i() : DataGridColumn
        {
            var _loc_1:* = new DataGridColumn();
            _SearchGuildWindow_DataGridColumn4 = _loc_1;
            _loc_1.dataField = "name";
            _loc_1.width = 64;
            BindingManager.executeBindings(this, "_SearchGuildWindow_DataGridColumn4", _SearchGuildWindow_DataGridColumn4);
            return _loc_1;
        }// end function

        private function _SearchGuildWindow_DataGridColumn8_i() : DataGridColumn
        {
            var _loc_1:* = new DataGridColumn();
            _SearchGuildWindow_DataGridColumn8 = _loc_1;
            _loc_1.dataField = "member";
            BindingManager.executeBindings(this, "_SearchGuildWindow_DataGridColumn8", _SearchGuildWindow_DataGridColumn8);
            return _loc_1;
        }// end function

        private function _SearchGuildWindow_bindingExprs() : void
        {
            var _loc_1:* = undefined;
            _loc_1 = Utils.i18n("searchGuildList");
            _loc_1 = Utils.i18n("createGuildName");
            _loc_1 = Utils.i18n("searchGuildMemberCount");
            _loc_1 = Utils.i18n("generalDevelopment2");
            _loc_1 = Utils.i18n("createGuildName");
            _loc_1 = Utils.i18n("searchGuildMemberCount");
            _loc_1 = Utils.i18n("generalDevelopment2");
            _loc_1 = Utils.i18n("createGuildName");
            _loc_1 = Utils.i18n("searchGuildMemberCount");
            _loc_1 = Utils.i18n("generalDevelopment2");
            _loc_1 = viewData;
            _loc_1 = listRenderer;
            _loc_1 = _swf_close;
            _loc_1 = _swf_close_window;
            return;
        }// end function

        private function set dataArray(param1:Array) : void
        {
            var _loc_2:* = this._391131953dataArray;
            if (_loc_2 !== param1)
            {
                this._391131953dataArray = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "dataArray", _loc_2, param1));
            }
            return;
        }// end function

        public function getMember(param1:Object) : String
        {
            return param1.member;
        }// end function

        public function get factionArray() : ArrayCollection
        {
            return this._1837521309factionArray;
        }// end function

        public function ___SearchGuildWindow_Button1_click(event:MouseEvent) : void
        {
            stringSearchFilter(event);
            return;
        }// end function

        private function _SearchGuildWindow_ClassFactory3_i() : ClassFactory
        {
            var _loc_1:* = new ClassFactory();
            memberRenderer = _loc_1;
            _loc_1.generator = SearchGuildWindow_inlineComponent3;
            _loc_1.properties = {outerDocument:this};
            return _loc_1;
        }// end function

        public function set linkRenderer(param1:ClassFactory) : void
        {
            var _loc_2:* = this._658750173linkRenderer;
            if (_loc_2 !== param1)
            {
                this._658750173linkRenderer = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "linkRenderer", _loc_2, param1));
            }
            return;
        }// end function

        private function onCreate() : void
        {
            strSearch.text = "";
            MovieClip(Loader(_swf_close.getChildAt(0)).content).gotoAndPlay("button_close");
            return;
        }// end function

        public function gridToolTip(param1:Object) : String
        {
            return Utils.i18n("generalShowDetail");
        }// end function

        public function ___SearchGuildWindow_Image2_click(event:MouseEvent) : void
        {
            onRemove();
            return;
        }// end function

        public function onGuildDetail(param1:Object) : void
        {
            _selectGuildId = param1.guildId;
            dispatchEvent(new Event(DETAIL_GUILS));
            return;
        }// end function

        public function set searchGuildCanvas(param1:Canvas) : void
        {
            var _loc_2:* = this._294239133searchGuildCanvas;
            if (_loc_2 !== param1)
            {
                this._294239133searchGuildCanvas = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "searchGuildCanvas", _loc_2, param1));
            }
            return;
        }// end function

        private function get dataArray() : Array
        {
            return this._391131953dataArray;
        }// end function

        private function _SearchGuildWindow_DataGridColumn7_i() : DataGridColumn
        {
            var _loc_1:* = new DataGridColumn();
            _SearchGuildWindow_DataGridColumn7 = _loc_1;
            _loc_1.dataField = "name";
            _loc_1.width = 64;
            BindingManager.executeBindings(this, "_SearchGuildWindow_DataGridColumn7", _SearchGuildWindow_DataGridColumn7);
            return _loc_1;
        }// end function

        public function get selectGuildId() : int
        {
            return _selectGuildId;
        }// end function

        private function _SearchGuildWindow_DataGridColumn3_i() : DataGridColumn
        {
            var _loc_1:* = new DataGridColumn();
            _SearchGuildWindow_DataGridColumn3 = _loc_1;
            BindingManager.executeBindings(this, "_SearchGuildWindow_DataGridColumn3", _SearchGuildWindow_DataGridColumn3);
            return _loc_1;
        }// end function

        private function maxLimitAlert() : void
        {
            var _loc_1:* = AlertWindow.show(Utils.i18n("searchGuildCanNotMax"));
            popupWindow(_loc_1, false);
            return;
        }// end function

        private function _SearchGuildWindow_ClassFactory2_i() : ClassFactory
        {
            var _loc_1:* = new ClassFactory();
            linkRenderer = _loc_1;
            _loc_1.generator = SearchGuildWindow_inlineComponent2;
            _loc_1.properties = {outerDocument:this};
            return _loc_1;
        }// end function

        public function getIcon(param1:Object) : Class
        {
            return param1.icon;
        }// end function

        public function stringSearchFilter(event:Event) : void
        {
            trace("検索文字列" + strSearch.text);
            trace(strSearch.text.length);
            if (strSearch.text != "")
            {
                dispatchEvent(new Event(SEARCH_PLAYER));
            }
            else if (strSearch.text.length > 12)
            {
                alertWindow = AlertWindow.show("12文字以内で入力してください。");
                popupWindow(alertWindow, false);
            }
            return;
        }// end function

        private function _SearchGuildWindow_bindingsSetup() : Array
        {
            var binding:Binding;
            var result:Array;
            binding = new Binding(this, function () : String
            {
                var _loc_1:* = Utils.i18n("searchGuildList");
                var _loc_2:* = _loc_1 == undefined ? (null) : (String(_loc_1));
                return _loc_2;
            }// end function
            , function (param1:String) : void
            {
                _SearchGuildWindow_Text1.text = param1;
                return;
            }// end function
            , "_SearchGuildWindow_Text1.text");
            result[0] = binding;
            binding = new Binding(this, function () : String
            {
                var _loc_1:* = Utils.i18n("createGuildName");
                var _loc_2:* = _loc_1 == undefined ? (null) : (String(_loc_1));
                return _loc_2;
            }// end function
            , function (param1:String) : void
            {
                _SearchGuildWindow_DataGridColumn1.headerText = param1;
                return;
            }// end function
            , "_SearchGuildWindow_DataGridColumn1.headerText");
            result[1] = binding;
            binding = new Binding(this, function () : String
            {
                var _loc_1:* = Utils.i18n("searchGuildMemberCount");
                var _loc_2:* = _loc_1 == undefined ? (null) : (String(_loc_1));
                return _loc_2;
            }// end function
            , function (param1:String) : void
            {
                _SearchGuildWindow_DataGridColumn2.headerText = param1;
                return;
            }// end function
            , "_SearchGuildWindow_DataGridColumn2.headerText");
            result[2] = binding;
            binding = new Binding(this, function () : String
            {
                var _loc_1:* = Utils.i18n("generalDevelopment2");
                var _loc_2:* = _loc_1 == undefined ? (null) : (String(_loc_1));
                return _loc_2;
            }// end function
            , function (param1:String) : void
            {
                _SearchGuildWindow_DataGridColumn3.headerText = param1;
                return;
            }// end function
            , "_SearchGuildWindow_DataGridColumn3.headerText");
            result[3] = binding;
            binding = new Binding(this, function () : String
            {
                var _loc_1:* = Utils.i18n("createGuildName");
                var _loc_2:* = _loc_1 == undefined ? (null) : (String(_loc_1));
                return _loc_2;
            }// end function
            , function (param1:String) : void
            {
                _SearchGuildWindow_DataGridColumn4.headerText = param1;
                return;
            }// end function
            , "_SearchGuildWindow_DataGridColumn4.headerText");
            result[4] = binding;
            binding = new Binding(this, function () : String
            {
                var _loc_1:* = Utils.i18n("searchGuildMemberCount");
                var _loc_2:* = _loc_1 == undefined ? (null) : (String(_loc_1));
                return _loc_2;
            }// end function
            , function (param1:String) : void
            {
                _SearchGuildWindow_DataGridColumn5.headerText = param1;
                return;
            }// end function
            , "_SearchGuildWindow_DataGridColumn5.headerText");
            result[5] = binding;
            binding = new Binding(this, function () : String
            {
                var _loc_1:* = Utils.i18n("generalDevelopment2");
                var _loc_2:* = _loc_1 == undefined ? (null) : (String(_loc_1));
                return _loc_2;
            }// end function
            , function (param1:String) : void
            {
                _SearchGuildWindow_DataGridColumn6.headerText = param1;
                return;
            }// end function
            , "_SearchGuildWindow_DataGridColumn6.headerText");
            result[6] = binding;
            binding = new Binding(this, function () : String
            {
                var _loc_1:* = Utils.i18n("createGuildName");
                var _loc_2:* = _loc_1 == undefined ? (null) : (String(_loc_1));
                return _loc_2;
            }// end function
            , function (param1:String) : void
            {
                _SearchGuildWindow_DataGridColumn7.headerText = param1;
                return;
            }// end function
            , "_SearchGuildWindow_DataGridColumn7.headerText");
            result[7] = binding;
            binding = new Binding(this, function () : String
            {
                var _loc_1:* = Utils.i18n("searchGuildMemberCount");
                var _loc_2:* = _loc_1 == undefined ? (null) : (String(_loc_1));
                return _loc_2;
            }// end function
            , function (param1:String) : void
            {
                _SearchGuildWindow_DataGridColumn8.headerText = param1;
                return;
            }// end function
            , "_SearchGuildWindow_DataGridColumn8.headerText");
            result[8] = binding;
            binding = new Binding(this, function () : String
            {
                var _loc_1:* = Utils.i18n("generalDevelopment2");
                var _loc_2:* = _loc_1 == undefined ? (null) : (String(_loc_1));
                return _loc_2;
            }// end function
            , function (param1:String) : void
            {
                _SearchGuildWindow_DataGridColumn9.headerText = param1;
                return;
            }// end function
            , "_SearchGuildWindow_DataGridColumn9.headerText");
            result[9] = binding;
            binding = new Binding(this, function () : Object
            {
                return viewData;
            }// end function
            , function (param1:Object) : void
            {
                _SearchGuildWindow_TileList1.dataProvider = param1;
                return;
            }// end function
            , "_SearchGuildWindow_TileList1.dataProvider");
            result[10] = binding;
            binding = new Binding(this, function () : IFactory
            {
                return listRenderer;
            }// end function
            , function (param1:IFactory) : void
            {
                _SearchGuildWindow_TileList1.itemRenderer = param1;
                return;
            }// end function
            , "_SearchGuildWindow_TileList1.itemRenderer");
            result[11] = binding;
            binding = new Binding(this, function () : Object
            {
                return _swf_close;
            }// end function
            , function (param1:Object) : void
            {
                _SearchGuildWindow_Image2.source = param1;
                return;
            }// end function
            , "_SearchGuildWindow_Image2.source");
            result[12] = binding;
            binding = new Binding(this, function () : Object
            {
                return _swf_close_window;
            }// end function
            , function (param1:Object) : void
            {
                _SearchGuildWindow_Image3.source = param1;
                return;
            }// end function
            , "_SearchGuildWindow_Image3.source");
            result[13] = binding;
            return result;
        }// end function

        public function get linkRenderer() : ClassFactory
        {
            return this._658750173linkRenderer;
        }// end function

        private function get viewData() : ArrayCollection
        {
            return this._1195361263viewData;
        }// end function

        public static function set watcherSetupUtil(param1:IWatcherSetupUtil) : void
        {
            SearchGuildWindow._watcherSetupUtil = param1;
            return;
        }// end function

    }
}
