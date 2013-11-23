package com.kbmj.viking.view.allMap
{
    import com.kbmj.viking.lib.*;
    import flash.display.*;
    import flash.events.*;
    import flash.geom.*;
    import flash.utils.*;
    import mx.binding.*;
    import mx.containers.*;
    import mx.controls.*;
    import mx.controls.dataGridClasses.*;
    import mx.core.*;
    import mx.events.*;

    public class GuildMemberListWindow extends Canvas implements IBindingClient
    {
        private var _2095605535playerList:Canvas;
        var _watchers:Array;
        public var _GuildMemberListWindow_Image1:Image;
        var _bindingsByDestination:Object;
        var _bindingsBeginWithWord:Object;
        private var _563962990nameRenderer:ClassFactory;
        private var _903828556weaponDataGrid:DataGrid;
        private var _104531212positionRenderer:ClassFactory;
        public var _GuildMemberListWindow_DataGridColumn1:DataGridColumn;
        public var _GuildMemberListWindow_DataGridColumn2:DataGridColumn;
        var _bindings:Array;
        private var _1864657011_players:Array;
        private var _1557553101_listWindow:MovieClipLoaderAsset;
        private var _documentDescriptor_:UIComponentDescriptor;
        private static var _watcherSetupUtil:IWatcherSetupUtil;
        public static const CLICK_GUILD_MEMBER_POS:String = "clickGuildMemberPos";
        public static var ListSwf:Class = GuildMemberListWindow_ListSwf;

        public function GuildMemberListWindow()
        {
            _documentDescriptor_ = new UIComponentDescriptor({type:Canvas, propertiesFactory:function () : Object
            {
                return {childDescriptors:[new UIComponentDescriptor({type:Image, id:"_GuildMemberListWindow_Image1"}), new UIComponentDescriptor({type:Canvas, id:"playerList", propertiesFactory:function () : Object
                {
                    return {visible:false, childDescriptors:[new UIComponentDescriptor({type:Box, propertiesFactory:function () : Object
                    {
                        return {x:21, y:97, childDescriptors:[new UIComponentDescriptor({type:DataGrid, id:"weaponDataGrid", propertiesFactory:function () : Object
                        {
                            return {showHeaders:false, width:180, height:422, rowCount:21, rowHeight:21, styleName:"DataGridBase", sortableColumns:false, selectable:false, columns:[_GuildMemberListWindow_DataGridColumn1_i(), _GuildMemberListWindow_DataGridColumn2_i()]};
                        }// end function
                        })]};
                    }// end function
                    })]};
                }// end function
                })]};
            }// end function
            });
            _1557553101_listWindow = new ListSwf();
            _1864657011_players = new Array();
            _bindings = [];
            _watchers = [];
            _bindingsByDestination = {};
            _bindingsBeginWithWord = {};
            mx_internal::_document = this;
            this.horizontalScrollPolicy = "off";
            this.verticalScrollPolicy = "off";
            _GuildMemberListWindow_ClassFactory2_i();
            _GuildMemberListWindow_ClassFactory1_i();
            this.addEventListener("creationComplete", ___GuildMemberListWindow_Canvas1_creationComplete);
            return;
        }// end function

        public function openList(event:Event) : void
        {
            playerList.visible = true;
            return;
        }// end function

        public function get positionRenderer() : ClassFactory
        {
            return this._104531212positionRenderer;
        }// end function

        public function comp() : void
        {
            Loader(_listWindow.getChildAt(0)).content.addEventListener("ENLARGE_END", openList);
            Loader(_listWindow.getChildAt(0)).content.addEventListener("CLOSE", closeList);
            MovieClip(Loader(_listWindow.getChildAt(0)).content).gotoAndPlay("w_null");
            return;
        }// end function

        override public function initialize() : void
        {
            var target:GuildMemberListWindow;
            var watcherSetupUtilClass:Object;
            .mx_internal::setDocumentDescriptor(_documentDescriptor_);
            var bindings:* = _GuildMemberListWindow_bindingsSetup();
            var watchers:Array;
            target;
            if (_watcherSetupUtil == null)
            {
                watcherSetupUtilClass = getDefinitionByName("_com_kbmj_viking_view_allMap_GuildMemberListWindowWatcherSetupUtil");
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

        public function getPositionStr(param1:Object) : String
        {
            return " (" + AllMapMediator.hexXtoGameX(param1.homeAllMapPos.x).toString() + "," + AllMapMediator.hexYtoGameY(param1.homeAllMapPos.y).toString() + ")";
        }// end function

        private function _GuildMemberListWindow_DataGridColumn2_i() : DataGridColumn
        {
            var _loc_1:* = new DataGridColumn();
            _GuildMemberListWindow_DataGridColumn2 = _loc_1;
            _loc_1.dataField = "";
            _loc_1.width = 80;
            BindingManager.executeBindings(this, "_GuildMemberListWindow_DataGridColumn2", _GuildMemberListWindow_DataGridColumn2);
            return _loc_1;
        }// end function

        public function set positionRenderer(param1:ClassFactory) : void
        {
            var _loc_2:* = this._104531212positionRenderer;
            if (_loc_2 !== param1)
            {
                this._104531212positionRenderer = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "positionRenderer", _loc_2, param1));
            }
            return;
        }// end function

        private function set _listWindow(param1:MovieClipLoaderAsset) : void
        {
            var _loc_2:* = this._1557553101_listWindow;
            if (_loc_2 !== param1)
            {
                this._1557553101_listWindow = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "_listWindow", _loc_2, param1));
            }
            return;
        }// end function

        private function _GuildMemberListWindow_bindingExprs() : void
        {
            var _loc_1:* = undefined;
            _loc_1 = _listWindow;
            _loc_1 = Utils.i18n("guildMemberListMemberList");
            _loc_1 = _players;
            _loc_1 = Utils.i18n("guildMemberListPlayerName");
            _loc_1 = nameRenderer;
            _loc_1 = Utils.i18n("guildMemberListPosition");
            _loc_1 = positionRenderer;
            return;
        }// end function

        public function ___GuildMemberListWindow_Canvas1_creationComplete(event:FlexEvent) : void
        {
            comp();
            return;
        }// end function

        private function _GuildMemberListWindow_ClassFactory1_i() : ClassFactory
        {
            var _loc_1:* = new ClassFactory();
            positionRenderer = _loc_1;
            _loc_1.generator = GuildMemberListWindow_inlineComponent1;
            _loc_1.properties = {outerDocument:this};
            return _loc_1;
        }// end function

        public function set weaponDataGrid(param1:DataGrid) : void
        {
            var _loc_2:* = this._903828556weaponDataGrid;
            if (_loc_2 !== param1)
            {
                this._903828556weaponDataGrid = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "weaponDataGrid", _loc_2, param1));
            }
            return;
        }// end function

        public function get playerList() : Canvas
        {
            return this._2095605535playerList;
        }// end function

        public function closeList(event:Event) : void
        {
            playerList.visible = false;
            return;
        }// end function

        public function chengeViewPosition(param1:Object) : void
        {
            dispatchEvent(new PopupEvent(CLICK_GUILD_MEMBER_POS, new Point(param1.homeAllMapPos.x, param1.homeAllMapPos.y)));
            return;
        }// end function

        public function init(param1:Array) : void
        {
            _players = param1;
            if (!param1.length)
            {
                MovieClip(Loader(_listWindow.getChildAt(0)).content).gotoAndPlay("w_null");
                playerList.visible = false;
            }
            else if (!playerList.visible)
            {
                MovieClip(Loader(_listWindow.getChildAt(0)).content).gotoAndPlay("w_minimization");
            }
            return;
        }// end function

        public function set playerList(param1:Canvas) : void
        {
            var _loc_2:* = this._2095605535playerList;
            if (_loc_2 !== param1)
            {
                this._2095605535playerList = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "playerList", _loc_2, param1));
            }
            return;
        }// end function

        private function get _listWindow() : MovieClipLoaderAsset
        {
            return this._1557553101_listWindow;
        }// end function

        public function get weaponDataGrid() : DataGrid
        {
            return this._903828556weaponDataGrid;
        }// end function

        public function set nameRenderer(param1:ClassFactory) : void
        {
            var _loc_2:* = this._563962990nameRenderer;
            if (_loc_2 !== param1)
            {
                this._563962990nameRenderer = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "nameRenderer", _loc_2, param1));
            }
            return;
        }// end function

        public function set players(param1:Array) : void
        {
            _players = param1;
            return;
        }// end function

        private function set _players(param1:Array) : void
        {
            var _loc_2:* = this._1864657011_players;
            if (_loc_2 !== param1)
            {
                this._1864657011_players = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "_players", _loc_2, param1));
            }
            return;
        }// end function

        private function _GuildMemberListWindow_ClassFactory2_i() : ClassFactory
        {
            var _loc_1:* = new ClassFactory();
            nameRenderer = _loc_1;
            _loc_1.generator = GuildMemberListWindow_inlineComponent2;
            _loc_1.properties = {outerDocument:this};
            return _loc_1;
        }// end function

        private function _GuildMemberListWindow_DataGridColumn1_i() : DataGridColumn
        {
            var _loc_1:* = new DataGridColumn();
            _GuildMemberListWindow_DataGridColumn1 = _loc_1;
            _loc_1.dataField = "playerName";
            _loc_1.width = 100;
            BindingManager.executeBindings(this, "_GuildMemberListWindow_DataGridColumn1", _GuildMemberListWindow_DataGridColumn1);
            return _loc_1;
        }// end function

        public function get nameRenderer() : ClassFactory
        {
            return this._563962990nameRenderer;
        }// end function

        private function _GuildMemberListWindow_bindingsSetup() : Array
        {
            var binding:Binding;
            var result:Array;
            binding = new Binding(this, function () : Object
            {
                return _listWindow;
            }// end function
            , function (param1:Object) : void
            {
                _GuildMemberListWindow_Image1.source = param1;
                return;
            }// end function
            , "_GuildMemberListWindow_Image1.source");
            result[0] = binding;
            binding = new Binding(this, function () : String
            {
                var _loc_1:* = Utils.i18n("guildMemberListMemberList");
                var _loc_2:* = _loc_1 == undefined ? (null) : (String(_loc_1));
                return _loc_2;
            }// end function
            , function (param1:String) : void
            {
                playerList.label = param1;
                return;
            }// end function
            , "playerList.label");
            result[1] = binding;
            binding = new Binding(this, function () : Object
            {
                return _players;
            }// end function
            , function (param1:Object) : void
            {
                weaponDataGrid.dataProvider = param1;
                return;
            }// end function
            , "weaponDataGrid.dataProvider");
            result[2] = binding;
            binding = new Binding(this, function () : String
            {
                var _loc_1:* = Utils.i18n("guildMemberListPlayerName");
                var _loc_2:* = _loc_1 == undefined ? (null) : (String(_loc_1));
                return _loc_2;
            }// end function
            , function (param1:String) : void
            {
                _GuildMemberListWindow_DataGridColumn1.headerText = param1;
                return;
            }// end function
            , "_GuildMemberListWindow_DataGridColumn1.headerText");
            result[3] = binding;
            binding = new Binding(this, function () : IFactory
            {
                return nameRenderer;
            }// end function
            , function (param1:IFactory) : void
            {
                _GuildMemberListWindow_DataGridColumn1.itemRenderer = param1;
                return;
            }// end function
            , "_GuildMemberListWindow_DataGridColumn1.itemRenderer");
            result[4] = binding;
            binding = new Binding(this, function () : String
            {
                var _loc_1:* = Utils.i18n("guildMemberListPosition");
                var _loc_2:* = _loc_1 == undefined ? (null) : (String(_loc_1));
                return _loc_2;
            }// end function
            , function (param1:String) : void
            {
                _GuildMemberListWindow_DataGridColumn2.headerText = param1;
                return;
            }// end function
            , "_GuildMemberListWindow_DataGridColumn2.headerText");
            result[5] = binding;
            binding = new Binding(this, function () : IFactory
            {
                return positionRenderer;
            }// end function
            , function (param1:IFactory) : void
            {
                _GuildMemberListWindow_DataGridColumn2.itemRenderer = param1;
                return;
            }// end function
            , "_GuildMemberListWindow_DataGridColumn2.itemRenderer");
            result[6] = binding;
            return result;
        }// end function

        private function get _players() : Array
        {
            return this._1864657011_players;
        }// end function

        public static function set watcherSetupUtil(param1:IWatcherSetupUtil) : void
        {
            GuildMemberListWindow._watcherSetupUtil = param1;
            return;
        }// end function

    }
}
