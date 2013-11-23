package com.kbmj.viking.view.home
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
    import mx.controls.dataGridClasses.*;
    import mx.core.*;
    import mx.events.*;

    public class RaidReportWindow extends PopupWindow implements IBindingClient
    {
        private var _2054061552colonyBattleList:DataGrid;
        public var _RaidReportWindow_VBox4:VBox;
        private var _948502077guildMemberBattleList:DataGrid;
        private var _2093602091notorietyList:DataGrid;
        public var _RaidReportWindow_Text1:Text;
        private var _370369518ReportList:Canvas;
        var _bindingsByDestination:Object;
        private var _1420625135defenseValue:Label;
        private var _674471927attackValue:Label;
        private var _1193840764_swf_close:MovieClipLoaderAsset;
        private var _myReport:Boolean = true;
        private var _1404595217ReportViewStack:ViewStack;
        public var _RaidReportWindow_Image1:Image;
        private var _827618075_defenseWin:int = 0;
        private var _2013990597_raidReportList:Array;
        public var _RaidReportWindow_DataGridColumn2:DataGridColumn;
        public var _RaidReportWindow_DataGridColumn3:DataGridColumn;
        public var _RaidReportWindow_DataGridColumn4:DataGridColumn;
        public var _RaidReportWindow_DataGridColumn5:DataGridColumn;
        public var _RaidReportWindow_DataGridColumn6:DataGridColumn;
        private var _1722718208_player:PlayerVO;
        public var _RaidReportWindow_DataGridColumn8:DataGridColumn;
        public var _RaidReportWindow_DataGridColumn9:DataGridColumn;
        public var _RaidReportWindow_DataGridColumn7:DataGridColumn;
        private var _reports:Array;
        public var _RaidReportWindow_DataGridColumn1:DataGridColumn;
        private var _2137593194_guildMemberRaidReportList:Array;
        private var _522920908detailRenderer:ClassFactory;
        var _watchers:Array;
        private var _873391332_attackLose:int = 0;
        private var _1896677185windowLayer:Canvas;
        private var _113965130_defenseLose:int = 0;
        private var _1967826187_attackWin:int = 0;
        private var _1833978603_colonyReportList:Array;
        var _bindingsBeginWithWord:Object;
        public var _RaidReportWindow_VBox2:VBox;
        var _bindings:Array;
        public var _RaidReportWindow_VBox3:VBox;
        private var _documentDescriptor_:UIComponentDescriptor;
        public static const GUILD_MEMBER_RAID_DITAIL_REPORT:String = "guildMemberRaidDitailReport";
        public static const RAID_DITAIL_REPORT:String = "raidDitailReport";
        public static const TAB_LABEL:Object = {0:"tab_report_map", 1:"tab_report_colony", 2:"tab_report_guild_member"};
        public static const CLOSED_BATTLE_REPORT_LIST:String = "closedBattleReportList";
        public static const COLONY_DITAIL_REPORT:String = "colonyDitailReport";
        private static var _watcherSetupUtil:IWatcherSetupUtil;

        public function RaidReportWindow()
        {
            _documentDescriptor_ = new UIComponentDescriptor({type:PopupWindow, propertiesFactory:function () : Object
            {
                return {width:694, height:550, childDescriptors:[new UIComponentDescriptor({type:Canvas, id:"windowLayer"}), new UIComponentDescriptor({type:Canvas, id:"ReportList", propertiesFactory:function () : Object
                {
                    return {x:47, y:114};
                }// end function
                }), new UIComponentDescriptor({type:Text, id:"_RaidReportWindow_Text1", propertiesFactory:function () : Object
                {
                    return {styleName:"PanelBaseTitle", x:325, y:83};
                }// end function
                }), new UIComponentDescriptor({type:Label, id:"attackValue", stylesFactory:function () : void
                {
                    this.fontSize = 14;
                    return;
                }// end function
                , propertiesFactory:function () : Object
                {
                    return {x:380, y:117, mouseChildren:false};
                }// end function
                }), new UIComponentDescriptor({type:Label, id:"defenseValue", stylesFactory:function () : void
                {
                    this.fontSize = 14;
                    return;
                }// end function
                , propertiesFactory:function () : Object
                {
                    return {x:540, y:117, mouseChildren:false};
                }// end function
                }), new UIComponentDescriptor({type:VBox, stylesFactory:function () : void
                {
                    this.verticalGap = -2;
                    return;
                }// end function
                , propertiesFactory:function () : Object
                {
                    return {width:660, x:23, y:140, childDescriptors:[new UIComponentDescriptor({type:ViewStack, id:"ReportViewStack", stylesFactory:function () : void
                    {
                        this.borderStyle = "none";
                        this.paddingLeft = 12;
                        return;
                    }// end function
                    , propertiesFactory:function () : Object
                    {
                        return {width:656, height:334, childDescriptors:[new UIComponentDescriptor({type:VBox, id:"_RaidReportWindow_VBox2", propertiesFactory:function () : Object
                        {
                            return {percentWidth:100, percentHeight:100, childDescriptors:[new UIComponentDescriptor({type:DataGrid, id:"notorietyList", propertiesFactory:function () : Object
                            {
                                return {width:640, rowCount:11, rowHeight:27, styleName:"DataGridBase", selectable:false, sortableColumns:false, columns:[_RaidReportWindow_DataGridColumn1_i(), _RaidReportWindow_DataGridColumn2_i(), _RaidReportWindow_DataGridColumn3_i()]};
                            }// end function
                            })]};
                        }// end function
                        }), new UIComponentDescriptor({type:VBox, id:"_RaidReportWindow_VBox3", propertiesFactory:function () : Object
                        {
                            return {percentWidth:100, percentHeight:100, childDescriptors:[new UIComponentDescriptor({type:DataGrid, id:"colonyBattleList", propertiesFactory:function () : Object
                            {
                                return {width:640, rowCount:11, rowHeight:27, styleName:"DataGridBase", selectable:false, sortableColumns:false, columns:[_RaidReportWindow_DataGridColumn4_i(), _RaidReportWindow_DataGridColumn5_i(), _RaidReportWindow_DataGridColumn6_i()]};
                            }// end function
                            })]};
                        }// end function
                        }), new UIComponentDescriptor({type:VBox, id:"_RaidReportWindow_VBox4", propertiesFactory:function () : Object
                        {
                            return {percentWidth:100, percentHeight:100, childDescriptors:[new UIComponentDescriptor({type:DataGrid, id:"guildMemberBattleList", propertiesFactory:function () : Object
                            {
                                return {width:640, rowCount:11, rowHeight:27, styleName:"DataGridBase", selectable:false, sortableColumns:false, columns:[_RaidReportWindow_DataGridColumn7_i(), _RaidReportWindow_DataGridColumn8_i(), _RaidReportWindow_DataGridColumn9_i()]};
                            }// end function
                            })]};
                        }// end function
                        })]};
                    }// end function
                    })]};
                }// end function
                }), new UIComponentDescriptor({type:Image, id:"_RaidReportWindow_Image1", events:{click:"___RaidReportWindow_Image1_click"}, propertiesFactory:function () : Object
                {
                    return {x:315, y:485};
                }// end function
                })]};
            }// end function
            });
            _1193840764_swf_close = new Viking.EmbedSwfButtonCommon();
            _reports = new Array();
            _1722718208_player = new PlayerVO();
            _2013990597_raidReportList = new Array();
            _1833978603_colonyReportList = new Array();
            _2137593194_guildMemberRaidReportList = new Array();
            _bindings = [];
            _watchers = [];
            _bindingsByDestination = {};
            _bindingsBeginWithWord = {};
            mx_internal::_document = this;
            this.width = 694;
            this.height = 550;
            _RaidReportWindow_ClassFactory1_i();
            this.addEventListener("creationComplete", ___RaidReportWindow_PopupWindow1_creationComplete);
            return;
        }// end function

        private function get _colonyReportList() : Array
        {
            return this._1833978603_colonyReportList;
        }// end function

        public function get attackValue() : Label
        {
            return this._674471927attackValue;
        }// end function

        public function closeForAllMap() : void
        {
            this.onClose();
            return;
        }// end function

        private function comp() : void
        {
            MovieClip(Loader(_swf_close.getChildAt(0)).content).gotoAndPlay("button_close");
            return;
        }// end function

        public function init(param1:Array, param2:PlayerVO, param3:Boolean) : void
        {
            this.player = param2;
            myReport = param3;
            setReportList(param1);
            return;
        }// end function

        public function get ReportViewStack() : ViewStack
        {
            return this._1404595217ReportViewStack;
        }// end function

        public function onDetail(param1:Object) : void
        {
            if (param1.type == "colony_report")
            {
                sendPopupEvent(COLONY_DITAIL_REPORT, param1.id);
            }
            else
            {
                sendPopupEvent(RAID_DITAIL_REPORT, param1.id);
            }
            return;
        }// end function

        public function set myReport(param1:Boolean) : void
        {
            _myReport = param1;
            return;
        }// end function

        public function get ReportList() : Canvas
        {
            return this._370369518ReportList;
        }// end function

        private function get _defenseWin() : int
        {
            return this._827618075_defenseWin;
        }// end function

        private function get _attackLose() : int
        {
            return this._873391332_attackLose;
        }// end function

        public function get colonyBattleList() : DataGrid
        {
            return this._2054061552colonyBattleList;
        }// end function

        public function set colonyBattleList(param1:DataGrid) : void
        {
            var _loc_2:* = this._2054061552colonyBattleList;
            if (_loc_2 !== param1)
            {
                this._2054061552colonyBattleList = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "colonyBattleList", _loc_2, param1));
            }
            return;
        }// end function

        public function set attackValue(param1:Label) : void
        {
            var _loc_2:* = this._674471927attackValue;
            if (_loc_2 !== param1)
            {
                this._674471927attackValue = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "attackValue", _loc_2, param1));
            }
            return;
        }// end function

        public function set defenseValue(param1:Label) : void
        {
            var _loc_2:* = this._1420625135defenseValue;
            if (_loc_2 !== param1)
            {
                this._1420625135defenseValue = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "defenseValue", _loc_2, param1));
            }
            return;
        }// end function

        private function _RaidReportWindow_DataGridColumn1_i() : DataGridColumn
        {
            var _loc_1:* = new DataGridColumn();
            _RaidReportWindow_DataGridColumn1 = _loc_1;
            _loc_1.dataField = "day";
            _loc_1.width = 100;
            _loc_1.setStyle("textAlign", "center");
            BindingManager.executeBindings(this, "_RaidReportWindow_DataGridColumn1", _RaidReportWindow_DataGridColumn1);
            return _loc_1;
        }// end function

        public function set ReportList(param1:Canvas) : void
        {
            var _loc_2:* = this._370369518ReportList;
            if (_loc_2 !== param1)
            {
                this._370369518ReportList = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "ReportList", _loc_2, param1));
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

        private function _RaidReportWindow_DataGridColumn5_i() : DataGridColumn
        {
            var _loc_1:* = new DataGridColumn();
            _RaidReportWindow_DataGridColumn5 = _loc_1;
            _loc_1.dataField = "";
            _loc_1.width = 200;
            BindingManager.executeBindings(this, "_RaidReportWindow_DataGridColumn5", _RaidReportWindow_DataGridColumn5);
            return _loc_1;
        }// end function

        public function get defenseValue() : Label
        {
            return this._1420625135defenseValue;
        }// end function

        private function _RaidReportWindow_DataGridColumn9_i() : DataGridColumn
        {
            var _loc_1:* = new DataGridColumn();
            _RaidReportWindow_DataGridColumn9 = _loc_1;
            _loc_1.dataField = "result";
            _loc_1.width = 60;
            BindingManager.executeBindings(this, "_RaidReportWindow_DataGridColumn9", _RaidReportWindow_DataGridColumn9);
            return _loc_1;
        }// end function

        private function get _player() : PlayerVO
        {
            return this._1722718208_player;
        }// end function

        public function get detailRenderer() : ClassFactory
        {
            return this._522920908detailRenderer;
        }// end function

        private function set _defenseWin(param1:int) : void
        {
            var _loc_2:* = this._827618075_defenseWin;
            if (_loc_2 !== param1)
            {
                this._827618075_defenseWin = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "_defenseWin", _loc_2, param1));
            }
            return;
        }// end function

        private function _RaidReportWindow_ClassFactory1_i() : ClassFactory
        {
            var _loc_1:* = new ClassFactory();
            detailRenderer = _loc_1;
            _loc_1.generator = RaidReportWindow_inlineComponent1;
            _loc_1.properties = {outerDocument:this};
            return _loc_1;
        }// end function

        private function set _attackLose(param1:int) : void
        {
            var _loc_2:* = this._873391332_attackLose;
            if (_loc_2 !== param1)
            {
                this._873391332_attackLose = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "_attackLose", _loc_2, param1));
            }
            return;
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

        private function _RaidReportWindow_bindingExprs() : void
        {
            var _loc_1:* = undefined;
            _loc_1 = Utils.i18n("localize221");
            _loc_1 = Utils.i18n("localize222") + "" + (_attackWin + _attackLose) + "戰" + _attackWin + "勝" + _attackLose + "敗";
            _loc_1 = Utils.i18n("localize223") + "" + (_defenseWin + _defenseLose) + "戰" + _defenseWin + "勝" + _defenseLose + "敗";
            _loc_1 = Utils.i18n("generalInvasion");
            _loc_1 = _raidReportList;
            _loc_1 = Utils.i18n("localize224");
            _loc_1 = Utils.i18n("mailTransmitBody");
            _loc_1 = detailRenderer;
            _loc_1 = Utils.i18n("localize225");
            _loc_1 = Utils.i18n("colony_battle");
            _loc_1 = _colonyReportList;
            _loc_1 = Utils.i18n("localize224");
            _loc_1 = Utils.i18n("mailTransmitBody");
            _loc_1 = detailRenderer;
            _loc_1 = Utils.i18n("localize225");
            _loc_1 = Utils.i18n("guildMemberInvasion");
            _loc_1 = _guildMemberRaidReportList;
            _loc_1 = Utils.i18n("localize224");
            _loc_1 = Utils.i18n("mailTransmitBody");
            _loc_1 = detailRenderer;
            _loc_1 = Utils.i18n("localize225");
            _loc_1 = _swf_close;
            return;
        }// end function

        private function _RaidReportWindow_bindingsSetup() : Array
        {
            var binding:Binding;
            var result:Array;
            binding = new Binding(this, function () : String
            {
                var _loc_1:* = Utils.i18n("localize221");
                var _loc_2:* = _loc_1 == undefined ? (null) : (String(_loc_1));
                return _loc_2;
            }// end function
            , function (param1:String) : void
            {
                _RaidReportWindow_Text1.text = param1;
                return;
            }// end function
            , "_RaidReportWindow_Text1.text");
            result[0] = binding;
            binding = new Binding(this, function () : String
            {
                var _loc_1:* = Utils.i18n("localize222") + "" + (_attackWin + _attackLose) + "戰" + _attackWin + "勝" + _attackLose + "敗";
                var _loc_2:* = _loc_1 == undefined ? (null) : (String(_loc_1));
                return _loc_2;
            }// end function
            , function (param1:String) : void
            {
                attackValue.text = param1;
                return;
            }// end function
            , "attackValue.text");
            result[1] = binding;
            binding = new Binding(this, function () : String
            {
                var _loc_1:* = Utils.i18n("localize223") + "" + (_defenseWin + _defenseLose) + "戰" + _defenseWin + "勝" + _defenseLose + "敗";
                var _loc_2:* = _loc_1 == undefined ? (null) : (String(_loc_1));
                return _loc_2;
            }// end function
            , function (param1:String) : void
            {
                defenseValue.text = param1;
                return;
            }// end function
            , "defenseValue.text");
            result[2] = binding;
            binding = new Binding(this, function () : String
            {
                var _loc_1:* = Utils.i18n("generalInvasion");
                var _loc_2:* = _loc_1 == undefined ? (null) : (String(_loc_1));
                return _loc_2;
            }// end function
            , function (param1:String) : void
            {
                _RaidReportWindow_VBox2.label = param1;
                return;
            }// end function
            , "_RaidReportWindow_VBox2.label");
            result[3] = binding;
            binding = new Binding(this, function () : Object
            {
                return _raidReportList;
            }// end function
            , function (param1:Object) : void
            {
                notorietyList.dataProvider = param1;
                return;
            }// end function
            , "notorietyList.dataProvider");
            result[4] = binding;
            binding = new Binding(this, function () : String
            {
                var _loc_1:* = Utils.i18n("localize224");
                var _loc_2:* = _loc_1 == undefined ? (null) : (String(_loc_1));
                return _loc_2;
            }// end function
            , function (param1:String) : void
            {
                _RaidReportWindow_DataGridColumn1.headerText = param1;
                return;
            }// end function
            , "_RaidReportWindow_DataGridColumn1.headerText");
            result[5] = binding;
            binding = new Binding(this, function () : String
            {
                var _loc_1:* = Utils.i18n("mailTransmitBody");
                var _loc_2:* = _loc_1 == undefined ? (null) : (String(_loc_1));
                return _loc_2;
            }// end function
            , function (param1:String) : void
            {
                _RaidReportWindow_DataGridColumn2.headerText = param1;
                return;
            }// end function
            , "_RaidReportWindow_DataGridColumn2.headerText");
            result[6] = binding;
            binding = new Binding(this, function () : IFactory
            {
                return detailRenderer;
            }// end function
            , function (param1:IFactory) : void
            {
                _RaidReportWindow_DataGridColumn2.itemRenderer = param1;
                return;
            }// end function
            , "_RaidReportWindow_DataGridColumn2.itemRenderer");
            result[7] = binding;
            binding = new Binding(this, function () : String
            {
                var _loc_1:* = Utils.i18n("localize225");
                var _loc_2:* = _loc_1 == undefined ? (null) : (String(_loc_1));
                return _loc_2;
            }// end function
            , function (param1:String) : void
            {
                _RaidReportWindow_DataGridColumn3.headerText = param1;
                return;
            }// end function
            , "_RaidReportWindow_DataGridColumn3.headerText");
            result[8] = binding;
            binding = new Binding(this, function () : String
            {
                var _loc_1:* = Utils.i18n("colony_battle");
                var _loc_2:* = _loc_1 == undefined ? (null) : (String(_loc_1));
                return _loc_2;
            }// end function
            , function (param1:String) : void
            {
                _RaidReportWindow_VBox3.label = param1;
                return;
            }// end function
            , "_RaidReportWindow_VBox3.label");
            result[9] = binding;
            binding = new Binding(this, function () : Object
            {
                return _colonyReportList;
            }// end function
            , function (param1:Object) : void
            {
                colonyBattleList.dataProvider = param1;
                return;
            }// end function
            , "colonyBattleList.dataProvider");
            result[10] = binding;
            binding = new Binding(this, function () : String
            {
                var _loc_1:* = Utils.i18n("localize224");
                var _loc_2:* = _loc_1 == undefined ? (null) : (String(_loc_1));
                return _loc_2;
            }// end function
            , function (param1:String) : void
            {
                _RaidReportWindow_DataGridColumn4.headerText = param1;
                return;
            }// end function
            , "_RaidReportWindow_DataGridColumn4.headerText");
            result[11] = binding;
            binding = new Binding(this, function () : String
            {
                var _loc_1:* = Utils.i18n("mailTransmitBody");
                var _loc_2:* = _loc_1 == undefined ? (null) : (String(_loc_1));
                return _loc_2;
            }// end function
            , function (param1:String) : void
            {
                _RaidReportWindow_DataGridColumn5.headerText = param1;
                return;
            }// end function
            , "_RaidReportWindow_DataGridColumn5.headerText");
            result[12] = binding;
            binding = new Binding(this, function () : IFactory
            {
                return detailRenderer;
            }// end function
            , function (param1:IFactory) : void
            {
                _RaidReportWindow_DataGridColumn5.itemRenderer = param1;
                return;
            }// end function
            , "_RaidReportWindow_DataGridColumn5.itemRenderer");
            result[13] = binding;
            binding = new Binding(this, function () : String
            {
                var _loc_1:* = Utils.i18n("localize225");
                var _loc_2:* = _loc_1 == undefined ? (null) : (String(_loc_1));
                return _loc_2;
            }// end function
            , function (param1:String) : void
            {
                _RaidReportWindow_DataGridColumn6.headerText = param1;
                return;
            }// end function
            , "_RaidReportWindow_DataGridColumn6.headerText");
            result[14] = binding;
            binding = new Binding(this, function () : String
            {
                var _loc_1:* = Utils.i18n("guildMemberInvasion");
                var _loc_2:* = _loc_1 == undefined ? (null) : (String(_loc_1));
                return _loc_2;
            }// end function
            , function (param1:String) : void
            {
                _RaidReportWindow_VBox4.label = param1;
                return;
            }// end function
            , "_RaidReportWindow_VBox4.label");
            result[15] = binding;
            binding = new Binding(this, function () : Object
            {
                return _guildMemberRaidReportList;
            }// end function
            , function (param1:Object) : void
            {
                guildMemberBattleList.dataProvider = param1;
                return;
            }// end function
            , "guildMemberBattleList.dataProvider");
            result[16] = binding;
            binding = new Binding(this, function () : String
            {
                var _loc_1:* = Utils.i18n("localize224");
                var _loc_2:* = _loc_1 == undefined ? (null) : (String(_loc_1));
                return _loc_2;
            }// end function
            , function (param1:String) : void
            {
                _RaidReportWindow_DataGridColumn7.headerText = param1;
                return;
            }// end function
            , "_RaidReportWindow_DataGridColumn7.headerText");
            result[17] = binding;
            binding = new Binding(this, function () : String
            {
                var _loc_1:* = Utils.i18n("mailTransmitBody");
                var _loc_2:* = _loc_1 == undefined ? (null) : (String(_loc_1));
                return _loc_2;
            }// end function
            , function (param1:String) : void
            {
                _RaidReportWindow_DataGridColumn8.headerText = param1;
                return;
            }// end function
            , "_RaidReportWindow_DataGridColumn8.headerText");
            result[18] = binding;
            binding = new Binding(this, function () : IFactory
            {
                return detailRenderer;
            }// end function
            , function (param1:IFactory) : void
            {
                _RaidReportWindow_DataGridColumn8.itemRenderer = param1;
                return;
            }// end function
            , "_RaidReportWindow_DataGridColumn8.itemRenderer");
            result[19] = binding;
            binding = new Binding(this, function () : String
            {
                var _loc_1:* = Utils.i18n("localize225");
                var _loc_2:* = _loc_1 == undefined ? (null) : (String(_loc_1));
                return _loc_2;
            }// end function
            , function (param1:String) : void
            {
                _RaidReportWindow_DataGridColumn9.headerText = param1;
                return;
            }// end function
            , "_RaidReportWindow_DataGridColumn9.headerText");
            result[20] = binding;
            binding = new Binding(this, function () : Object
            {
                return _swf_close;
            }// end function
            , function (param1:Object) : void
            {
                _RaidReportWindow_Image1.source = param1;
                return;
            }// end function
            , "_RaidReportWindow_Image1.source");
            result[21] = binding;
            return result;
        }// end function

        public function get windowLayer() : Canvas
        {
            return this._1896677185windowLayer;
        }// end function

        private function get _raidReportList() : Array
        {
            return this._2013990597_raidReportList;
        }// end function

        private function makeTitleText(param1:Object) : String
        {
            var _loc_2:Array = null;
            var _loc_3:String = null;
            if (param1.type == "colony_report")
            {
                return param1.player.name + Utils.i18n("report_detail1") + param1.target.name + Utils.i18n("report_detail2");
            }
            if (param1.type == "raid_guild_report")
            {
                _loc_2 = ["", Utils.i18n("generalFactionNameBlueDragon"), Utils.i18n("generalFactionNameSuzaku"), Utils.i18n("generalFactionNameWhiteTiger"), Utils.i18n("generalFactionNameTortoise")];
                _loc_3 = "";
                if (_player.guild.id == param1.player.guild_id)
                {
                    _loc_3 = _loc_3 + (Utils.i18n("reportGuildMember") + param1.player.name + "," + param1.target.name + Utils.i18n("localize219"));
                }
                else
                {
                    _loc_3 = _loc_3 + (Utils.i18n("reportGuildMember") + param1.target.name + "," + param1.player.name + Utils.i18n("localize220"));
                }
                return _loc_3;
            }
            if (isInvader(param1))
            {
                return param1.target.name + Utils.i18n("localize219");
            }
            return param1.player.name + Utils.i18n("localize220");
        }// end function

        private function _RaidReportWindow_DataGridColumn4_i() : DataGridColumn
        {
            var _loc_1:* = new DataGridColumn();
            _RaidReportWindow_DataGridColumn4 = _loc_1;
            _loc_1.dataField = "day";
            _loc_1.width = 100;
            _loc_1.setStyle("textAlign", "center");
            BindingManager.executeBindings(this, "_RaidReportWindow_DataGridColumn4", _RaidReportWindow_DataGridColumn4);
            return _loc_1;
        }// end function

        private function _RaidReportWindow_DataGridColumn8_i() : DataGridColumn
        {
            var _loc_1:* = new DataGridColumn();
            _RaidReportWindow_DataGridColumn8 = _loc_1;
            _loc_1.dataField = "";
            _loc_1.width = 200;
            BindingManager.executeBindings(this, "_RaidReportWindow_DataGridColumn8", _RaidReportWindow_DataGridColumn8);
            return _loc_1;
        }// end function

        public function set detailRenderer(param1:ClassFactory) : void
        {
            var _loc_2:* = this._522920908detailRenderer;
            if (_loc_2 !== param1)
            {
                this._522920908detailRenderer = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "detailRenderer", _loc_2, param1));
            }
            return;
        }// end function

        private function get _guildMemberRaidReportList() : Array
        {
            return this._2137593194_guildMemberRaidReportList;
        }// end function

        private function set _defenseLose(param1:int) : void
        {
            var _loc_2:* = this._113965130_defenseLose;
            if (_loc_2 !== param1)
            {
                this._113965130_defenseLose = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "_defenseLose", _loc_2, param1));
            }
            return;
        }// end function

        private function set _raidReportList(param1:Array) : void
        {
            var _loc_2:* = this._2013990597_raidReportList;
            if (_loc_2 !== param1)
            {
                this._2013990597_raidReportList = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "_raidReportList", _loc_2, param1));
            }
            return;
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

        private function get _swf_close() : MovieClipLoaderAsset
        {
            return this._1193840764_swf_close;
        }// end function

        public function remove() : void
        {
            while (ReportList.numChildren > 0)
            {
                
                ReportList.removeChildAt(0);
            }
            while (windowLayer.numChildren > 0)
            {
                
                windowLayer.removeChildAt(0);
            }
            ReportViewStack.removeAllChildren();
            return;
        }// end function

        public function set guildMemberBattleList(param1:DataGrid) : void
        {
            var _loc_2:* = this._948502077guildMemberBattleList;
            if (_loc_2 !== param1)
            {
                this._948502077guildMemberBattleList = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "guildMemberBattleList", _loc_2, param1));
            }
            return;
        }// end function

        override public function initialize() : void
        {
            var target:RaidReportWindow;
            var watcherSetupUtilClass:Object;
            .mx_internal::setDocumentDescriptor(_documentDescriptor_);
            var bindings:* = _RaidReportWindow_bindingsSetup();
            var watchers:Array;
            target;
            if (_watcherSetupUtil == null)
            {
                watcherSetupUtilClass = getDefinitionByName("_com_kbmj_viking_view_home_RaidReportWindowWatcherSetupUtil");
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

        public function getTitle(param1:Object) : String
        {
            return param1 ? (param1.title) : ("");
        }// end function

        private function _RaidReportWindow_DataGridColumn3_i() : DataGridColumn
        {
            var _loc_1:* = new DataGridColumn();
            _RaidReportWindow_DataGridColumn3 = _loc_1;
            _loc_1.dataField = "result";
            _loc_1.width = 60;
            BindingManager.executeBindings(this, "_RaidReportWindow_DataGridColumn3", _RaidReportWindow_DataGridColumn3);
            return _loc_1;
        }// end function

        private function _RaidReportWindow_DataGridColumn7_i() : DataGridColumn
        {
            var _loc_1:* = new DataGridColumn();
            _RaidReportWindow_DataGridColumn7 = _loc_1;
            _loc_1.dataField = "day";
            _loc_1.width = 100;
            _loc_1.setStyle("textAlign", "center");
            BindingManager.executeBindings(this, "_RaidReportWindow_DataGridColumn7", _RaidReportWindow_DataGridColumn7);
            return _loc_1;
        }// end function

        public function set notorietyList(param1:DataGrid) : void
        {
            var _loc_2:* = this._2093602091notorietyList;
            if (_loc_2 !== param1)
            {
                this._2093602091notorietyList = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "notorietyList", _loc_2, param1));
            }
            return;
        }// end function

        private function get _defenseLose() : int
        {
            return this._113965130_defenseLose;
        }// end function

        public function set player(param1:PlayerVO) : void
        {
            _player = param1;
            return;
        }// end function

        public function get guildMemberBattleList() : DataGrid
        {
            return this._948502077guildMemberBattleList;
        }// end function

        public function ___RaidReportWindow_Image1_click(event:MouseEvent) : void
        {
            close();
            return;
        }// end function

        private function set _guildMemberRaidReportList(param1:Array) : void
        {
            var _loc_2:* = this._2137593194_guildMemberRaidReportList;
            if (_loc_2 !== param1)
            {
                this._2137593194_guildMemberRaidReportList = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "_guildMemberRaidReportList", _loc_2, param1));
            }
            return;
        }// end function

        public function get notorietyList() : DataGrid
        {
            return this._2093602091notorietyList;
        }// end function

        private function set _colonyReportList(param1:Array) : void
        {
            var _loc_2:* = this._1833978603_colonyReportList;
            if (_loc_2 !== param1)
            {
                this._1833978603_colonyReportList = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "_colonyReportList", _loc_2, param1));
            }
            return;
        }// end function

        public function set ReportViewStack(param1:ViewStack) : void
        {
            var _loc_2:* = this._1404595217ReportViewStack;
            if (_loc_2 !== param1)
            {
                this._1404595217ReportViewStack = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "ReportViewStack", _loc_2, param1));
            }
            return;
        }// end function

        private function _RaidReportWindow_DataGridColumn2_i() : DataGridColumn
        {
            var _loc_1:* = new DataGridColumn();
            _RaidReportWindow_DataGridColumn2 = _loc_1;
            _loc_1.dataField = "";
            _loc_1.width = 200;
            BindingManager.executeBindings(this, "_RaidReportWindow_DataGridColumn2", _RaidReportWindow_DataGridColumn2);
            return _loc_1;
        }// end function

        public function get player() : PlayerVO
        {
            return _player;
        }// end function

        private function set _attackWin(param1:int) : void
        {
            var _loc_2:* = this._1967826187_attackWin;
            if (_loc_2 !== param1)
            {
                this._1967826187_attackWin = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "_attackWin", _loc_2, param1));
            }
            return;
        }// end function

        private function _RaidReportWindow_DataGridColumn6_i() : DataGridColumn
        {
            var _loc_1:* = new DataGridColumn();
            _RaidReportWindow_DataGridColumn6 = _loc_1;
            _loc_1.dataField = "result";
            _loc_1.width = 60;
            BindingManager.executeBindings(this, "_RaidReportWindow_DataGridColumn6", _RaidReportWindow_DataGridColumn6);
            return _loc_1;
        }// end function

        public function ___RaidReportWindow_PopupWindow1_creationComplete(event:FlexEvent) : void
        {
            comp();
            return;
        }// end function

        public function setReportList(param1:Array) : void
        {
            var report:Object;
            var win:Boolean;
            var title:String;
            var day:String;
            var value:* = param1;
            _reports = new Array();
            _colonyReportList = new Array();
            _raidReportList = new Array();
            _guildMemberRaidReportList = new Array();
            _attackLose = 0;
            _attackWin = 0;
            _defenseLose = 0;
            _defenseWin = 0;
            var _loc_3:int = 0;
            var _loc_4:* = value;
            while (_loc_4 in _loc_3)
            {
                
                report = _loc_4[_loc_3];
                win = isInvader(report) ? (report.win) : (!report.win);
                title = makeTitleText(report);
                day = report.finished_at;
                _reports.push({title:title, result:win ? (Utils.i18n("localize107")) : (Utils.i18n("localize213")), day:day, id:report.id, type:report.type});
                _colonyReportList = _reports.filter(function (param1, param2:int, param3:Array) : Boolean
            {
                return param1.type == "colony_report";
            }// end function
            );
                _raidReportList = _reports.filter(function (param1, param2:int, param3:Array) : Boolean
            {
                return param1.type == "raid_report";
            }// end function
            );
                _guildMemberRaidReportList = _reports.filter(function (param1, param2:int, param3:Array) : Boolean
            {
                return param1.type == "raid_guild_report";
            }// end function
            );
                if (report.type == "raid_report")
                {
                    if (isInvader(report))
                    {
                        if (win)
                        {
                            (_attackWin + 1);
                        }
                        else
                        {
                            (_attackLose + 1);
                        }
                        continue;
                    }
                    if (win)
                    {
                        (_defenseWin + 1);
                        continue;
                    }
                    (_defenseLose + 1);
                }
            }
            return;
        }// end function

        private function get _attackWin() : int
        {
            return this._1967826187_attackWin;
        }// end function

        private function isInvader(param1:Object) : Boolean
        {
            if (param1.target.type == "colony")
            {
                return false;
            }
            if (param1.type == "raid_report")
            {
                return param1.target.id != _player.playerId;
            }
            return param1.player.guild_id == _player.guild.id;
        }// end function

        private function close() : void
        {
            sendPopupEvent(CLOSED_BATTLE_REPORT_LIST, {window:this});
            return;
        }// end function

        public static function set watcherSetupUtil(param1:IWatcherSetupUtil) : void
        {
            RaidReportWindow._watcherSetupUtil = param1;
            return;
        }// end function

    }
}
