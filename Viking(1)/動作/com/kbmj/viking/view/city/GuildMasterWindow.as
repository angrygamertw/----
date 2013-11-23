package com.kbmj.viking.view.city
{
    import com.kbmj.viking.lib.*;
    import com.kbmj.viking.view.*;
    import com.kbmj.viking.vo.*;
    import flash.display.*;
    import flash.events.*;
    import flash.utils.*;
    import mx.binding.*;
    import mx.collections.*;
    import mx.controls.*;
    import mx.controls.dataGridClasses.*;
    import mx.core.*;
    import mx.events.*;
    import mx.utils.*;

    public class GuildMasterWindow extends PopupWindow implements IBindingClient
    {
        public var _GuildMasterWindow_DataGridColumn8:DataGridColumn;
        public var _GuildMasterWindow_Text2:Text;
        public var _GuildMasterWindow_DataGridColumn5:DataGridColumn;
        private var _appointmentPlayerName:String;
        var _bindings:Array;
        private var _1075873300_swf_window:MovieClipLoaderAsset;
        private var _408562176master_renderer:ClassFactory;
        var _bindingsByDestination:Object;
        private var _1612889972AppointmentButtonRenderer:ClassFactory;
        private var _1193840764_swf_close:MovieClipLoaderAsset;
        protected var playerVO:PlayerVO;
        private var _1840726072masterIconImg:Class;
        private var _1218643219_swf_close_window:MovieClipLoaderAsset;
        private var _name:Object;
        private var _1195140045masterCount:int;
        private var _495327094rank_renderer:ClassFactory;
        var _watchers:Array;
        protected var _957245630_guildData:ObjectProxy;
        private var _391131953dataArray:Array;
        private var _363613165data_list:DataGrid;
        var _bindingsBeginWithWord:Object;
        public var _GuildMasterWindow_Image1:Image;
        public var _GuildMasterWindow_Image2:Image;
        public var _GuildMasterWindow_Image3:Image;
        private var _224336476activeToolTipArray:Array;
        private var _appointmentPlayerId:int;
        private var _1441457469viewDataPlayers:ArrayCollection;
        public var _GuildMasterWindow_Text1:Text;
        public var _GuildMasterWindow_DataGridColumn1:DataGridColumn;
        public var _GuildMasterWindow_Text3:Text;
        public var _GuildMasterWindow_DataGridColumn4:DataGridColumn;
        private var _documentDescriptor_:UIComponentDescriptor;
        public var _GuildMasterWindow_DataGridColumn6:DataGridColumn;
        public var _GuildMasterWindow_DataGridColumn7:DataGridColumn;
        public var _GuildMasterWindow_DataGridColumn2:DataGridColumn;
        public var _GuildMasterWindow_DataGridColumn3:DataGridColumn;
        public static const RESIGN_MASTER:String = "resignMaster";
        private static const WINDOW_X:int = 20;
        private static const WINDOW_Y:int = 20;
        private static const BUTTON_X:int = 325;
        private static const BUTTON_Y:int = 490;
        private static var _watcherSetupUtil:IWatcherSetupUtil;
        public static const APPOINTMENT_MASTER:String = "appointmentMaster";
        private static const WINDOW_HT:int = 520;
        private static const WINDOW_WD:int = 720;

        public function GuildMasterWindow()
        {
            _documentDescriptor_ = new UIComponentDescriptor({type:PopupWindow, propertiesFactory:function () : Object
            {
                return {width:760, height:560, childDescriptors:[new UIComponentDescriptor({type:Image, id:"_GuildMasterWindow_Image1"}), new UIComponentDescriptor({type:Text, id:"_GuildMasterWindow_Text1", propertiesFactory:function () : Object
                {
                    return {styleName:"DealTitle"};
                }// end function
                }), new UIComponentDescriptor({type:Image, id:"_GuildMasterWindow_Image2", events:{click:"___GuildMasterWindow_Image2_click"}}), new UIComponentDescriptor({type:Text, id:"_GuildMasterWindow_Text2", propertiesFactory:function () : Object
                {
                    return {text:"Utils.i18n(\'guildMasterGuildName\')", styleName:"GuildSearchText"};
                }// end function
                }), new UIComponentDescriptor({type:Text, id:"_GuildMasterWindow_Text3", propertiesFactory:function () : Object
                {
                    return {styleName:"GuildSearchText"};
                }// end function
                }), new UIComponentDescriptor({type:DataGrid, id:"data_list", propertiesFactory:function () : Object
                {
                    return {styleName:"DataGridBase", rowCount:10, sortableColumns:false, selectable:false, columns:[_GuildMasterWindow_DataGridColumn1_i(), _GuildMasterWindow_DataGridColumn2_i(), _GuildMasterWindow_DataGridColumn3_i(), _GuildMasterWindow_DataGridColumn4_i(), _GuildMasterWindow_DataGridColumn5_i(), _GuildMasterWindow_DataGridColumn6_i(), _GuildMasterWindow_DataGridColumn7_i(), _GuildMasterWindow_DataGridColumn8_i()]};
                }// end function
                }), new UIComponentDescriptor({type:Image, id:"_GuildMasterWindow_Image3", events:{click:"___GuildMasterWindow_Image3_click"}})]};
            }// end function
            });
            _1075873300_swf_window = new Viking.EmbedSwfWindowCommon();
            _1218643219_swf_close_window = new Viking.EmbedSwfButtonCloseWindow();
            _1193840764_swf_close = new Viking.EmbedSwfButtonCommon();
            _name = {name:""};
            _957245630_guildData = new ObjectProxy(_name);
            _1840726072masterIconImg = GuildMasterWindow_masterIconImg;
            _224336476activeToolTipArray = [Utils.i18n("guildMasterLastLogin") + ":" + Utils.i18n("guildMasterWithinOneWeek"), Utils.i18n("guildMasterLastLogin") + ":" + Utils.i18n("guildMasterMoreOneWeek"), Utils.i18n("guildMasterLastLogin") + ":" + Utils.i18n("guildMasterMoreTwoWeeks")];
            _bindings = [];
            _watchers = [];
            _bindingsByDestination = {};
            _bindingsBeginWithWord = {};
            mx_internal::_document = this;
            this.width = 760;
            this.height = 560;
            _GuildMasterWindow_ClassFactory2_i();
            _GuildMasterWindow_ClassFactory1_i();
            _GuildMasterWindow_ClassFactory3_i();
            this.addEventListener("creationComplete", ___GuildMasterWindow_PopupWindow1_creationComplete);
            return;
        }// end function

        public function masterImg(param1:Object) : Class
        {
            if (param1.guild_master)
            {
                return masterIconImg;
            }
            return null;
        }// end function

        public function get master_renderer() : ClassFactory
        {
            return this._408562176master_renderer;
        }// end function

        public function closeWindow() : void
        {
            onClose();
            MovieClip(Loader(_swf_close_window.getChildAt(0)).content).gotoAndPlay(1);
            MovieClip(Loader(_swf_close.getChildAt(0)).content).gotoAndPlay(0);
            MovieClip(Loader(_swf_close.getChildAt(0)).content).gotoAndPlay("button_close");
            return;
        }// end function

        public function set AppointmentButtonRenderer(param1:ClassFactory) : void
        {
            var _loc_2:* = this._1612889972AppointmentButtonRenderer;
            if (_loc_2 !== param1)
            {
                this._1612889972AppointmentButtonRenderer = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "AppointmentButtonRenderer", _loc_2, param1));
            }
            return;
        }// end function

        public function get appointmentPlayerName() : String
        {
            return _appointmentPlayerName;
        }// end function

        public function set rank_renderer(param1:ClassFactory) : void
        {
            var _loc_2:* = this._495327094rank_renderer;
            if (_loc_2 !== param1)
            {
                this._495327094rank_renderer = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "rank_renderer", _loc_2, param1));
            }
            return;
        }// end function

        public function init(param1:PlayerVO, param2:Object) : void
        {
            playerVO = param1;
            _guildData.name = param2.name;
            masterCount = 1;
            dataArray = new Array();
            dataArray = param2.players;
            var _loc_3:* = dataArray.getOne("id", playerVO.playerId);
            var _loc_4:* = dataArray.indexOf(_loc_3);
            var _loc_5:* = dataArray.splice(_loc_4, 1);
            var _loc_6:int = 0;
            while (_loc_6 < dataArray.length)
            {
                
                if (dataArray[_loc_6].guild_master)
                {
                    var _loc_8:* = masterCount + 1;
                    masterCount = _loc_8;
                }
                _loc_6++;
            }
            dataArray.splice(0, 0, _loc_3);
            viewDataPlayers = new ArrayCollection(dataArray);
            return;
        }// end function

        public function playerName(param1:Object) : String
        {
            return param1.player_name;
        }// end function

        public function set appointmentPlayerName(param1:String) : void
        {
            _appointmentPlayerName = param1;
            return;
        }// end function

        private function get _swf_window() : MovieClipLoaderAsset
        {
            return this._1075873300_swf_window;
        }// end function

        public function get data_list() : DataGrid
        {
            return this._363613165data_list;
        }// end function

        private function _GuildMasterWindow_DataGridColumn2_i() : DataGridColumn
        {
            var _loc_1:* = new DataGridColumn();
            _GuildMasterWindow_DataGridColumn2 = _loc_1;
            _loc_1.dataField = "player_name";
            BindingManager.executeBindings(this, "_GuildMasterWindow_DataGridColumn2", _GuildMasterWindow_DataGridColumn2);
            return _loc_1;
        }// end function

        private function _GuildMasterWindow_DataGridColumn6_i() : DataGridColumn
        {
            var _loc_1:* = new DataGridColumn();
            _GuildMasterWindow_DataGridColumn6 = _loc_1;
            _loc_1.dataField = "max_unit_level";
            _loc_1.width = 50;
            _loc_1.setStyle("textAlign", "center");
            BindingManager.executeBindings(this, "_GuildMasterWindow_DataGridColumn6", _GuildMasterWindow_DataGridColumn6);
            return _loc_1;
        }// end function

        public function set data_list(param1:DataGrid) : void
        {
            var _loc_2:* = this._363613165data_list;
            if (_loc_2 !== param1)
            {
                this._363613165data_list = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "data_list", _loc_2, param1));
            }
            return;
        }// end function

        private function get _swf_close_window() : MovieClipLoaderAsset
        {
            return this._1218643219_swf_close_window;
        }// end function

        public function set master_renderer(param1:ClassFactory) : void
        {
            var _loc_2:* = this._408562176master_renderer;
            if (_loc_2 !== param1)
            {
                this._408562176master_renderer = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "master_renderer", _loc_2, param1));
            }
            return;
        }// end function

        private function _GuildMasterWindow_ClassFactory3_i() : ClassFactory
        {
            var _loc_1:* = new ClassFactory();
            rank_renderer = _loc_1;
            _loc_1.generator = GuildMasterWindow_inlineComponent3;
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

        public function set appointmentPlayerId(param1:int) : void
        {
            _appointmentPlayerId = param1;
            return;
        }// end function

        public function onAppointment(param1:Object) : void
        {
            appointmentPlayerId = param1.id;
            appointmentPlayerName = param1.player_name;
            if (param1.id == playerVO.playerId)
            {
                if (masterCount == 1)
                {
                    alertPopUp(Utils.i18n("guildMasterCanNotResignationIfLeaderOne"));
                }
                else
                {
                    dispatchEvent(new Event(RESIGN_MASTER));
                }
            }
            else if (!param1.guild_master)
            {
                if (masterCount == 3)
                {
                    alertPopUp(Utils.i18n("guildMasterCanNotAppointIfLeaderMoreThree"));
                }
                else
                {
                    dispatchEvent(new Event(APPOINTMENT_MASTER));
                }
            }
            return;
        }// end function

        private function _GuildMasterWindow_bindingExprs() : void
        {
            var _loc_1:* = undefined;
            _loc_1 = _swf_window;
            _loc_1 = WINDOW_X;
            _loc_1 = WINDOW_Y;
            _loc_1 = WINDOW_WD;
            _loc_1 = title;
            _loc_1 = WINDOW_X + WINDOW_WD - 25;
            _loc_1 = WINDOW_Y;
            _loc_1 = _swf_close_window;
            _loc_1 = WINDOW_X + 20;
            _loc_1 = WINDOW_Y + 35;
            _loc_1 = description;
            _loc_1 = WINDOW_X + 20;
            _loc_1 = WINDOW_Y + 65;
            _loc_1 = WINDOW_X + 20;
            _loc_1 = WINDOW_Y + 100;
            _loc_1 = WINDOW_WD - 40;
            _loc_1 = viewDataPlayers;
            _loc_1 = Utils.i18n("generalSelect");
            _loc_1 = Utils.i18n("generalName");
            _loc_1 = master_renderer;
            _loc_1 = Utils.i18n("generalRank");
            _loc_1 = rank_renderer;
            _loc_1 = Utils.i18n("generalPropertiesCount");
            _loc_1 = Utils.i18n("generalUnitCount");
            _loc_1 = Utils.i18n("guildApprovalMaxLvNum");
            _loc_1 = Utils.i18n("generalRarity");
            _loc_1 = Utils.i18n("generalState");
            _loc_1 = BUTTON_X;
            _loc_1 = BUTTON_Y;
            _loc_1 = _swf_close;
            return;
        }// end function

        protected function get title() : String
        {
            return Utils.i18n("guildMasterManagement");
        }// end function

        private function _GuildMasterWindow_DataGridColumn1_i() : DataGridColumn
        {
            var _loc_1:* = new DataGridColumn();
            _GuildMasterWindow_DataGridColumn1 = _loc_1;
            _loc_1.dataField = "button";
            _loc_1.width = 50;
            _loc_1.itemRenderer = _GuildMasterWindow_ClassFactory4_c();
            BindingManager.executeBindings(this, "_GuildMasterWindow_DataGridColumn1", _GuildMasterWindow_DataGridColumn1);
            return _loc_1;
        }// end function

        private function _GuildMasterWindow_DataGridColumn5_i() : DataGridColumn
        {
            var _loc_1:* = new DataGridColumn();
            _GuildMasterWindow_DataGridColumn5 = _loc_1;
            _loc_1.dataField = "units_count";
            _loc_1.width = 50;
            _loc_1.setStyle("textAlign", "center");
            BindingManager.executeBindings(this, "_GuildMasterWindow_DataGridColumn5", _GuildMasterWindow_DataGridColumn5);
            return _loc_1;
        }// end function

        private function get activeToolTipArray() : Array
        {
            return this._224336476activeToolTipArray;
        }// end function

        public function ___GuildMasterWindow_PopupWindow1_creationComplete(event:FlexEvent) : void
        {
            setup();
            return;
        }// end function

        private function _GuildMasterWindow_ClassFactory2_i() : ClassFactory
        {
            var _loc_1:* = new ClassFactory();
            AppointmentButtonRenderer = _loc_1;
            _loc_1.generator = GuildMasterWindow_inlineComponent2;
            _loc_1.properties = {outerDocument:this};
            return _loc_1;
        }// end function

        public function get AppointmentButtonRenderer() : ClassFactory
        {
            return this._1612889972AppointmentButtonRenderer;
        }// end function

        public function get rank_renderer() : ClassFactory
        {
            return this._495327094rank_renderer;
        }// end function

        public function ___GuildMasterWindow_Image2_click(event:MouseEvent) : void
        {
            closeWindow();
            return;
        }// end function

        public function set guildData(param1:Object) : void
        {
            _guildData.name = param1.name;
            return;
        }// end function

        private function get _swf_close() : MovieClipLoaderAsset
        {
            return this._1193840764_swf_close;
        }// end function

        private function setup() : void
        {
            MovieClip(Loader(_swf_window.getChildAt(0)).content).gotoAndPlay("center_720x520");
            MovieClip(Loader(_swf_close.getChildAt(0)).content).gotoAndPlay("button_close");
            return;
        }// end function

        protected function set _guildData(param1:ObjectProxy) : void
        {
            var _loc_2:* = this._957245630_guildData;
            if (_loc_2 !== param1)
            {
                this._957245630_guildData = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "_guildData", _loc_2, param1));
            }
            return;
        }// end function

        private function set viewDataPlayers(param1:ArrayCollection) : void
        {
            var _loc_2:* = this._1441457469viewDataPlayers;
            if (_loc_2 !== param1)
            {
                this._1441457469viewDataPlayers = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "viewDataPlayers", _loc_2, param1));
            }
            return;
        }// end function

        override public function initialize() : void
        {
            var target:GuildMasterWindow;
            var watcherSetupUtilClass:Object;
            .mx_internal::setDocumentDescriptor(_documentDescriptor_);
            var bindings:* = _GuildMasterWindow_bindingsSetup();
            var watchers:Array;
            target;
            if (_watcherSetupUtil == null)
            {
                watcherSetupUtilClass = getDefinitionByName("_com_kbmj_viking_view_city_GuildMasterWindowWatcherSetupUtil");
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

        public function onVisible(param1:Object) : Boolean
        {
            return param1.guild_master && param1.id != playerVO.playerId ? (false) : (true);
        }// end function

        private function _GuildMasterWindow_DataGridColumn4_i() : DataGridColumn
        {
            var _loc_1:* = new DataGridColumn();
            _GuildMasterWindow_DataGridColumn4 = _loc_1;
            _loc_1.dataField = "properties_count";
            _loc_1.width = 60;
            _loc_1.setStyle("textAlign", "center");
            BindingManager.executeBindings(this, "_GuildMasterWindow_DataGridColumn4", _GuildMasterWindow_DataGridColumn4);
            return _loc_1;
        }// end function

        private function set masterCount(param1:int) : void
        {
            var _loc_2:* = this._1195140045masterCount;
            if (_loc_2 !== param1)
            {
                this._1195140045masterCount = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "masterCount", _loc_2, param1));
            }
            return;
        }// end function

        private function _GuildMasterWindow_DataGridColumn8_i() : DataGridColumn
        {
            var _loc_1:* = new DataGridColumn();
            _GuildMasterWindow_DataGridColumn8 = _loc_1;
            _loc_1.width = 35;
            _loc_1.itemRenderer = _GuildMasterWindow_ClassFactory5_c();
            BindingManager.executeBindings(this, "_GuildMasterWindow_DataGridColumn8", _GuildMasterWindow_DataGridColumn8);
            return _loc_1;
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

        private function _GuildMasterWindow_ClassFactory5_c() : ClassFactory
        {
            var _loc_1:* = new ClassFactory();
            _loc_1.generator = GuildMasterWindowLoginLampRenderer;
            return _loc_1;
        }// end function

        private function _GuildMasterWindow_ClassFactory1_i() : ClassFactory
        {
            var _loc_1:* = new ClassFactory();
            master_renderer = _loc_1;
            _loc_1.generator = GuildMasterWindow_inlineComponent1;
            _loc_1.properties = {outerDocument:this};
            return _loc_1;
        }// end function

        private function set masterIconImg(param1:Class) : void
        {
            var _loc_2:* = this._1840726072masterIconImg;
            if (_loc_2 !== param1)
            {
                this._1840726072masterIconImg = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "masterIconImg", _loc_2, param1));
            }
            return;
        }// end function

        public function get appointmentPlayerId() : int
        {
            return _appointmentPlayerId;
        }// end function

        public function btnStyle(param1:Object) : String
        {
            if (param1.id == playerVO.playerId)
            {
                if (masterCount == 1)
                {
                    return "ResignationOff";
                }
                return "Resignation";
            }
            else
            {
                if (param1.guild_master)
                {
                    return "ResignationOff";
                }
                if (masterCount == 3)
                {
                    return "AppointmentOff";
                }
            }
            return "Appointment";
        }// end function

        public function activeString(param1:Object) : String
        {
            return activeToolTipArray[param1.active_status];
        }// end function

        public function ___GuildMasterWindow_Image3_click(event:MouseEvent) : void
        {
            closeWindow();
            return;
        }// end function

        protected function get _guildData() : ObjectProxy
        {
            return this._957245630_guildData;
        }// end function

        private function set activeToolTipArray(param1:Array) : void
        {
            var _loc_2:* = this._224336476activeToolTipArray;
            if (_loc_2 !== param1)
            {
                this._224336476activeToolTipArray = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "activeToolTipArray", _loc_2, param1));
            }
            return;
        }// end function

        private function get viewDataPlayers() : ArrayCollection
        {
            return this._1441457469viewDataPlayers;
        }// end function

        private function get masterIconImg() : Class
        {
            return this._1840726072masterIconImg;
        }// end function

        private function get masterCount() : int
        {
            return this._1195140045masterCount;
        }// end function

        private function alertPopUp(param1:String) : void
        {
            var _loc_2:* = AlertWindow.show(param1);
            popupWindow(_loc_2, false);
            return;
        }// end function

        private function _GuildMasterWindow_DataGridColumn3_i() : DataGridColumn
        {
            var _loc_1:* = new DataGridColumn();
            _GuildMasterWindow_DataGridColumn3 = _loc_1;
            _loc_1.dataField = "onmyou_rank_id";
            _loc_1.width = 90;
            _loc_1.setStyle("textAlign", "center");
            BindingManager.executeBindings(this, "_GuildMasterWindow_DataGridColumn3", _GuildMasterWindow_DataGridColumn3);
            return _loc_1;
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

        private function _GuildMasterWindow_DataGridColumn7_i() : DataGridColumn
        {
            var _loc_1:* = new DataGridColumn();
            _GuildMasterWindow_DataGridColumn7 = _loc_1;
            _loc_1.dataField = "rarity";
            _loc_1.width = 50;
            _loc_1.setStyle("textAlign", "center");
            BindingManager.executeBindings(this, "_GuildMasterWindow_DataGridColumn7", _GuildMasterWindow_DataGridColumn7);
            return _loc_1;
        }// end function

        private function get dataArray() : Array
        {
            return this._391131953dataArray;
        }// end function

        private function _GuildMasterWindow_ClassFactory4_c() : ClassFactory
        {
            var _loc_1:* = new ClassFactory();
            _loc_1.generator = GuildMasterWindowButtonRenderer;
            return _loc_1;
        }// end function

        public function getRankText(param1:Object) : String
        {
            return PlayerVO.ONMYOU_RANK_LABELS[param1.onmyou_rank_id];
        }// end function

        protected function get description() : String
        {
            return Utils.i18n("guildMasterAppointAndResignation", masterCount);
        }// end function

        private function _GuildMasterWindow_bindingsSetup() : Array
        {
            var binding:Binding;
            var result:Array;
            binding = new Binding(this, function () : Object
            {
                return _swf_window;
            }// end function
            , function (param1:Object) : void
            {
                _GuildMasterWindow_Image1.source = param1;
                return;
            }// end function
            , "_GuildMasterWindow_Image1.source");
            result[0] = binding;
            binding = new Binding(this, function () : Number
            {
                return WINDOW_X;
            }// end function
            , function (param1:Number) : void
            {
                _GuildMasterWindow_Text1.x = param1;
                return;
            }// end function
            , "_GuildMasterWindow_Text1.x");
            result[1] = binding;
            binding = new Binding(this, function () : Number
            {
                return WINDOW_Y;
            }// end function
            , function (param1:Number) : void
            {
                _GuildMasterWindow_Text1.y = param1;
                return;
            }// end function
            , "_GuildMasterWindow_Text1.y");
            result[2] = binding;
            binding = new Binding(this, function () : Number
            {
                return WINDOW_WD;
            }// end function
            , function (param1:Number) : void
            {
                _GuildMasterWindow_Text1.width = param1;
                return;
            }// end function
            , "_GuildMasterWindow_Text1.width");
            result[3] = binding;
            binding = new Binding(this, function () : String
            {
                var _loc_1:* = title;
                var _loc_2:* = _loc_1 == undefined ? (null) : (String(_loc_1));
                return _loc_2;
            }// end function
            , function (param1:String) : void
            {
                _GuildMasterWindow_Text1.text = param1;
                return;
            }// end function
            , "_GuildMasterWindow_Text1.text");
            result[4] = binding;
            binding = new Binding(this, function () : Number
            {
                return WINDOW_X + WINDOW_WD - 25;
            }// end function
            , function (param1:Number) : void
            {
                _GuildMasterWindow_Image2.x = param1;
                return;
            }// end function
            , "_GuildMasterWindow_Image2.x");
            result[5] = binding;
            binding = new Binding(this, function () : Number
            {
                return WINDOW_Y;
            }// end function
            , function (param1:Number) : void
            {
                _GuildMasterWindow_Image2.y = param1;
                return;
            }// end function
            , "_GuildMasterWindow_Image2.y");
            result[6] = binding;
            binding = new Binding(this, function () : Object
            {
                return _swf_close_window;
            }// end function
            , function (param1:Object) : void
            {
                _GuildMasterWindow_Image2.source = param1;
                return;
            }// end function
            , "_GuildMasterWindow_Image2.source");
            result[7] = binding;
            binding = new Binding(this, function () : Number
            {
                return WINDOW_X + 20;
            }// end function
            , function (param1:Number) : void
            {
                _GuildMasterWindow_Text2.x = param1;
                return;
            }// end function
            , "_GuildMasterWindow_Text2.x");
            result[8] = binding;
            binding = new Binding(this, function () : Number
            {
                return WINDOW_Y + 35;
            }// end function
            , function (param1:Number) : void
            {
                _GuildMasterWindow_Text2.y = param1;
                return;
            }// end function
            , "_GuildMasterWindow_Text2.y");
            result[9] = binding;
            binding = new Binding(this, function () : String
            {
                var _loc_1:* = description;
                var _loc_2:* = _loc_1 == undefined ? (null) : (String(_loc_1));
                return _loc_2;
            }// end function
            , function (param1:String) : void
            {
                _GuildMasterWindow_Text3.text = param1;
                return;
            }// end function
            , "_GuildMasterWindow_Text3.text");
            result[10] = binding;
            binding = new Binding(this, function () : Number
            {
                return WINDOW_X + 20;
            }// end function
            , function (param1:Number) : void
            {
                _GuildMasterWindow_Text3.x = param1;
                return;
            }// end function
            , "_GuildMasterWindow_Text3.x");
            result[11] = binding;
            binding = new Binding(this, function () : Number
            {
                return WINDOW_Y + 65;
            }// end function
            , function (param1:Number) : void
            {
                _GuildMasterWindow_Text3.y = param1;
                return;
            }// end function
            , "_GuildMasterWindow_Text3.y");
            result[12] = binding;
            binding = new Binding(this, function () : Number
            {
                return WINDOW_X + 20;
            }// end function
            , function (param1:Number) : void
            {
                data_list.x = param1;
                return;
            }// end function
            , "data_list.x");
            result[13] = binding;
            binding = new Binding(this, function () : Number
            {
                return WINDOW_Y + 100;
            }// end function
            , function (param1:Number) : void
            {
                data_list.y = param1;
                return;
            }// end function
            , "data_list.y");
            result[14] = binding;
            binding = new Binding(this, function () : Number
            {
                return WINDOW_WD - 40;
            }// end function
            , function (param1:Number) : void
            {
                data_list.width = param1;
                return;
            }// end function
            , "data_list.width");
            result[15] = binding;
            binding = new Binding(this, function () : Object
            {
                return viewDataPlayers;
            }// end function
            , function (param1:Object) : void
            {
                data_list.dataProvider = param1;
                return;
            }// end function
            , "data_list.dataProvider");
            result[16] = binding;
            binding = new Binding(this, function () : String
            {
                var _loc_1:* = Utils.i18n("generalSelect");
                var _loc_2:* = _loc_1 == undefined ? (null) : (String(_loc_1));
                return _loc_2;
            }// end function
            , function (param1:String) : void
            {
                _GuildMasterWindow_DataGridColumn1.headerText = param1;
                return;
            }// end function
            , "_GuildMasterWindow_DataGridColumn1.headerText");
            result[17] = binding;
            binding = new Binding(this, function () : String
            {
                var _loc_1:* = Utils.i18n("generalName");
                var _loc_2:* = _loc_1 == undefined ? (null) : (String(_loc_1));
                return _loc_2;
            }// end function
            , function (param1:String) : void
            {
                _GuildMasterWindow_DataGridColumn2.headerText = param1;
                return;
            }// end function
            , "_GuildMasterWindow_DataGridColumn2.headerText");
            result[18] = binding;
            binding = new Binding(this, function () : IFactory
            {
                return master_renderer;
            }// end function
            , function (param1:IFactory) : void
            {
                _GuildMasterWindow_DataGridColumn2.itemRenderer = param1;
                return;
            }// end function
            , "_GuildMasterWindow_DataGridColumn2.itemRenderer");
            result[19] = binding;
            binding = new Binding(this, function () : String
            {
                var _loc_1:* = Utils.i18n("generalRank");
                var _loc_2:* = _loc_1 == undefined ? (null) : (String(_loc_1));
                return _loc_2;
            }// end function
            , function (param1:String) : void
            {
                _GuildMasterWindow_DataGridColumn3.headerText = param1;
                return;
            }// end function
            , "_GuildMasterWindow_DataGridColumn3.headerText");
            result[20] = binding;
            binding = new Binding(this, function () : IFactory
            {
                return rank_renderer;
            }// end function
            , function (param1:IFactory) : void
            {
                _GuildMasterWindow_DataGridColumn3.itemRenderer = param1;
                return;
            }// end function
            , "_GuildMasterWindow_DataGridColumn3.itemRenderer");
            result[21] = binding;
            binding = new Binding(this, function () : String
            {
                var _loc_1:* = Utils.i18n("generalPropertiesCount");
                var _loc_2:* = _loc_1 == undefined ? (null) : (String(_loc_1));
                return _loc_2;
            }// end function
            , function (param1:String) : void
            {
                _GuildMasterWindow_DataGridColumn4.headerText = param1;
                return;
            }// end function
            , "_GuildMasterWindow_DataGridColumn4.headerText");
            result[22] = binding;
            binding = new Binding(this, function () : String
            {
                var _loc_1:* = Utils.i18n("generalUnitCount");
                var _loc_2:* = _loc_1 == undefined ? (null) : (String(_loc_1));
                return _loc_2;
            }// end function
            , function (param1:String) : void
            {
                _GuildMasterWindow_DataGridColumn5.headerText = param1;
                return;
            }// end function
            , "_GuildMasterWindow_DataGridColumn5.headerText");
            result[23] = binding;
            binding = new Binding(this, function () : String
            {
                var _loc_1:* = Utils.i18n("guildApprovalMaxLvNum");
                var _loc_2:* = _loc_1 == undefined ? (null) : (String(_loc_1));
                return _loc_2;
            }// end function
            , function (param1:String) : void
            {
                _GuildMasterWindow_DataGridColumn6.headerText = param1;
                return;
            }// end function
            , "_GuildMasterWindow_DataGridColumn6.headerText");
            result[24] = binding;
            binding = new Binding(this, function () : String
            {
                var _loc_1:* = Utils.i18n("generalRarity");
                var _loc_2:* = _loc_1 == undefined ? (null) : (String(_loc_1));
                return _loc_2;
            }// end function
            , function (param1:String) : void
            {
                _GuildMasterWindow_DataGridColumn7.headerText = param1;
                return;
            }// end function
            , "_GuildMasterWindow_DataGridColumn7.headerText");
            result[25] = binding;
            binding = new Binding(this, function () : String
            {
                var _loc_1:* = Utils.i18n("generalState");
                var _loc_2:* = _loc_1 == undefined ? (null) : (String(_loc_1));
                return _loc_2;
            }// end function
            , function (param1:String) : void
            {
                _GuildMasterWindow_DataGridColumn8.headerText = param1;
                return;
            }// end function
            , "_GuildMasterWindow_DataGridColumn8.headerText");
            result[26] = binding;
            binding = new Binding(this, function () : Number
            {
                return BUTTON_X;
            }// end function
            , function (param1:Number) : void
            {
                _GuildMasterWindow_Image3.x = param1;
                return;
            }// end function
            , "_GuildMasterWindow_Image3.x");
            result[27] = binding;
            binding = new Binding(this, function () : Number
            {
                return BUTTON_Y;
            }// end function
            , function (param1:Number) : void
            {
                _GuildMasterWindow_Image3.y = param1;
                return;
            }// end function
            , "_GuildMasterWindow_Image3.y");
            result[28] = binding;
            binding = new Binding(this, function () : Object
            {
                return _swf_close;
            }// end function
            , function (param1:Object) : void
            {
                _GuildMasterWindow_Image3.source = param1;
                return;
            }// end function
            , "_GuildMasterWindow_Image3.source");
            result[29] = binding;
            return result;
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

        public static function set watcherSetupUtil(param1:IWatcherSetupUtil) : void
        {
            GuildMasterWindow._watcherSetupUtil = param1;
            return;
        }// end function

    }
}
