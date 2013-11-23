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

    public class ShamBattleTargetListWindow extends PopupWindow implements IBindingClient
    {
        private var _reports:Array;
        public var _ShamBattleTargetListWindow_Text1:Text;
        public var _ShamBattleTargetListWindow_Text2:Text;
        private var _882741303_swf_practice:MovieClipLoaderAsset;
        var _watchers:Array;
        private var _1896677185windowLayer:Canvas;
        private var _2093602091notorietyList:DataGrid;
        public var _ShamBattleTargetListWindow_Image1:Image;
        public var _ShamBattleTargetListWindow_Image2:Image;
        public var _ShamBattleTargetListWindow_Image4:Image;
        private var _370369518ReportList:Canvas;
        private var _1745069921targetNameRenderer:ClassFactory;
        var _bindingsBeginWithWord:Object;
        public var _ShamBattleTargetListWindow_VBox2:VBox;
        private var _1193840764_swf_close:MovieClipLoaderAsset;
        private var _1818888257_swf_bg:MovieClipLoaderAsset;
        private var _396160974TargetViewStack:ViewStack;
        var _bindingsByDestination:Object;
        public var _ShamBattleTargetListWindow_DataGridColumn1:DataGridColumn;
        public var _ShamBattleTargetListWindow_DataGridColumn2:DataGridColumn;
        public var _ShamBattleTargetListWindow_DataGridColumn3:DataGridColumn;
        private var _825365999_targetPlayerList:Array;
        var _bindings:Array;
        private var _embed_mxml__images_home_line_640_png_1904048873:Class;
        private var _documentDescriptor_:UIComponentDescriptor;
        private var _1722718208_player:PlayerVO;
        public static const CLOSED_SHAM_BATTLE_TARGET_LIST:String = "closedBattleReportList";
        private static var _watcherSetupUtil:IWatcherSetupUtil;
        public static const SELECT_SHAM_BATTLE_TARGET_COMPLETE:String = "selectShamBattleTargetComplete";
        public static const SELECT_RANDOM_SHAM_BATTLE:String = "selectRandomShamBattle";

        public function ShamBattleTargetListWindow()
        {
            _documentDescriptor_ = new UIComponentDescriptor({type:PopupWindow, propertiesFactory:function () : Object
            {
                return {width:744, height:550, childDescriptors:[new UIComponentDescriptor({type:Image, id:"_ShamBattleTargetListWindow_Image1"}), new UIComponentDescriptor({type:Canvas, id:"windowLayer"}), new UIComponentDescriptor({type:Canvas, id:"ReportList", propertiesFactory:function () : Object
                {
                    return {x:44, y:114};
                }// end function
                }), new UIComponentDescriptor({type:Text, id:"_ShamBattleTargetListWindow_Text1", propertiesFactory:function () : Object
                {
                    return {styleName:"PanelBaseTitle", x:350, y:83};
                }// end function
                }), new UIComponentDescriptor({type:Image, id:"_ShamBattleTargetListWindow_Image2", events:{click:"___ShamBattleTargetListWindow_Image2_click"}, propertiesFactory:function () : Object
                {
                    return {width:100, x:58, y:115};
                }// end function
                }), new UIComponentDescriptor({type:Text, id:"_ShamBattleTargetListWindow_Text2", stylesFactory:function () : void
                {
                    this.fontSize = 14;
                    return;
                }// end function
                , propertiesFactory:function () : Object
                {
                    return {width:300, x:190, y:120};
                }// end function
                }), new UIComponentDescriptor({type:Image, propertiesFactory:function () : Object
                {
                    return {source:_embed_mxml__images_home_line_640_png_1904048873, width:640, x:62, y:155};
                }// end function
                }), new UIComponentDescriptor({type:VBox, stylesFactory:function () : void
                {
                    this.verticalGap = -2;
                    return;
                }// end function
                , propertiesFactory:function () : Object
                {
                    return {width:710, x:25, y:170, childDescriptors:[new UIComponentDescriptor({type:ViewStack, id:"TargetViewStack", stylesFactory:function () : void
                    {
                        this.borderStyle = "none";
                        this.paddingLeft = 12;
                        return;
                    }// end function
                    , propertiesFactory:function () : Object
                    {
                        return {width:706, height:334, childDescriptors:[new UIComponentDescriptor({type:VBox, id:"_ShamBattleTargetListWindow_VBox2", propertiesFactory:function () : Object
                        {
                            return {percentWidth:100, percentHeight:100, childDescriptors:[new UIComponentDescriptor({type:DataGrid, id:"notorietyList", propertiesFactory:function () : Object
                            {
                                return {width:690, rowCount:10, rowHeight:27, styleName:"DataGridBase", selectable:false, sortableColumns:false, columns:[_ShamBattleTargetListWindow_DataGridColumn1_i(), _ShamBattleTargetListWindow_DataGridColumn2_i(), _ShamBattleTargetListWindow_DataGridColumn3_i()]};
                            }// end function
                            })]};
                        }// end function
                        })]};
                    }// end function
                    })]};
                }// end function
                }), new UIComponentDescriptor({type:Image, id:"_ShamBattleTargetListWindow_Image4", events:{click:"___ShamBattleTargetListWindow_Image4_click"}, propertiesFactory:function () : Object
                {
                    return {x:315, y:485};
                }// end function
                })]};
            }// end function
            });
            _1818888257_swf_bg = new Viking.EmbedSwfWindowCommon();
            _1193840764_swf_close = new Viking.EmbedSwfButtonCommon();
            _882741303_swf_practice = new Viking.EmbedSwfButtonCommon();
            _reports = new Array();
            _1722718208_player = new PlayerVO();
            _825365999_targetPlayerList = new Array();
            _embed_mxml__images_home_line_640_png_1904048873 = ShamBattleTargetListWindow__embed_mxml__images_home_line_640_png_1904048873;
            _bindings = [];
            _watchers = [];
            _bindingsByDestination = {};
            _bindingsBeginWithWord = {};
            mx_internal::_document = this;
            this.width = 744;
            this.height = 550;
            _ShamBattleTargetListWindow_ClassFactory1_i();
            this.addEventListener("creationComplete", ___ShamBattleTargetListWindow_PopupWindow1_creationComplete);
            return;
        }// end function

        private function _ShamBattleTargetListWindow_bindingExprs() : void
        {
            var _loc_1:* = undefined;
            _loc_1 = _swf_bg;
            _loc_1 = Utils.i18n("generalShamBattle");
            _loc_1 = _swf_practice;
            _loc_1 = Utils.i18n("shamBattleExplanation");
            _loc_1 = Utils.i18n("generalInvasion");
            _loc_1 = _targetPlayerList;
            _loc_1 = Utils.i18n("shamBattleOpponent");
            _loc_1 = targetNameRenderer;
            _loc_1 = Utils.i18n("shamBattleTotalPoint");
            _loc_1 = Utils.i18n("shamBattleOnmyouRank");
            _loc_1 = _swf_close;
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
            TargetViewStack.removeAllChildren();
            return;
        }// end function

        public function set TargetViewStack(param1:ViewStack) : void
        {
            var _loc_2:* = this._396160974TargetViewStack;
            if (_loc_2 !== param1)
            {
                this._396160974TargetViewStack = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "TargetViewStack", _loc_2, param1));
            }
            return;
        }// end function

        public function getPlayerName(param1:Object) : String
        {
            return param1 ? (param1.target) : ("");
        }// end function

        public function closeForAllMap() : void
        {
            this.onClose();
            return;
        }// end function

        private function _ShamBattleTargetListWindow_DataGridColumn1_i() : DataGridColumn
        {
            var _loc_1:* = new DataGridColumn();
            _ShamBattleTargetListWindow_DataGridColumn1 = _loc_1;
            _loc_1.dataField = "target";
            _loc_1.width = 100;
            _loc_1.setStyle("textAlign", "center");
            BindingManager.executeBindings(this, "_ShamBattleTargetListWindow_DataGridColumn1", _ShamBattleTargetListWindow_DataGridColumn1);
            return _loc_1;
        }// end function

        private function comp() : void
        {
            MovieClip(Loader(_swf_close.getChildAt(0)).content).gotoAndPlay("button_close");
            MovieClip(Loader(_swf_practice.getChildAt(0)).content).gotoAndPlay("button_practice");
            MovieClip(Loader(_swf_bg.getChildAt(0)).content).gotoAndPlay("center_720x460");
            return;
        }// end function

        override public function initialize() : void
        {
            var target:ShamBattleTargetListWindow;
            var watcherSetupUtilClass:Object;
            .mx_internal::setDocumentDescriptor(_documentDescriptor_);
            var bindings:* = _ShamBattleTargetListWindow_bindingsSetup();
            var watchers:Array;
            target;
            if (_watcherSetupUtil == null)
            {
                watcherSetupUtilClass = getDefinitionByName("_com_kbmj_viking_view_home_ShamBattleTargetListWindowWatcherSetupUtil");
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

        public function get ReportList() : Canvas
        {
            return this._370369518ReportList;
        }// end function

        private function _ShamBattleTargetListWindow_DataGridColumn3_i() : DataGridColumn
        {
            var _loc_1:* = new DataGridColumn();
            _ShamBattleTargetListWindow_DataGridColumn3 = _loc_1;
            _loc_1.dataField = "rank";
            _loc_1.width = 60;
            _loc_1.setStyle("textAlign", "center");
            BindingManager.executeBindings(this, "_ShamBattleTargetListWindow_DataGridColumn3", _ShamBattleTargetListWindow_DataGridColumn3);
            return _loc_1;
        }// end function

        private function set _swf_bg(param1:MovieClipLoaderAsset) : void
        {
            var _loc_2:* = this._1818888257_swf_bg;
            if (_loc_2 !== param1)
            {
                this._1818888257_swf_bg = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "_swf_bg", _loc_2, param1));
            }
            return;
        }// end function

        public function init(param1:Array, param2:PlayerVO) : void
        {
            setReportList(param1);
            return;
        }// end function

        private function _ShamBattleTargetListWindow_ClassFactory1_i() : ClassFactory
        {
            var _loc_1:* = new ClassFactory();
            targetNameRenderer = _loc_1;
            _loc_1.generator = ShamBattleTargetListWindow_inlineComponent1;
            _loc_1.properties = {outerDocument:this};
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

        private function _ShamBattleTargetListWindow_bindingsSetup() : Array
        {
            var binding:Binding;
            var result:Array;
            binding = new Binding(this, function () : Object
            {
                return _swf_bg;
            }// end function
            , function (param1:Object) : void
            {
                _ShamBattleTargetListWindow_Image1.source = param1;
                return;
            }// end function
            , "_ShamBattleTargetListWindow_Image1.source");
            result[0] = binding;
            binding = new Binding(this, function () : String
            {
                var _loc_1:* = Utils.i18n("generalShamBattle");
                var _loc_2:* = _loc_1 == undefined ? (null) : (String(_loc_1));
                return _loc_2;
            }// end function
            , function (param1:String) : void
            {
                _ShamBattleTargetListWindow_Text1.text = param1;
                return;
            }// end function
            , "_ShamBattleTargetListWindow_Text1.text");
            result[1] = binding;
            binding = new Binding(this, function () : Object
            {
                return _swf_practice;
            }// end function
            , function (param1:Object) : void
            {
                _ShamBattleTargetListWindow_Image2.source = param1;
                return;
            }// end function
            , "_ShamBattleTargetListWindow_Image2.source");
            result[2] = binding;
            binding = new Binding(this, function () : String
            {
                var _loc_1:* = Utils.i18n("shamBattleExplanation");
                var _loc_2:* = _loc_1 == undefined ? (null) : (String(_loc_1));
                return _loc_2;
            }// end function
            , function (param1:String) : void
            {
                _ShamBattleTargetListWindow_Text2.text = param1;
                return;
            }// end function
            , "_ShamBattleTargetListWindow_Text2.text");
            result[3] = binding;
            binding = new Binding(this, function () : String
            {
                var _loc_1:* = Utils.i18n("generalInvasion");
                var _loc_2:* = _loc_1 == undefined ? (null) : (String(_loc_1));
                return _loc_2;
            }// end function
            , function (param1:String) : void
            {
                _ShamBattleTargetListWindow_VBox2.label = param1;
                return;
            }// end function
            , "_ShamBattleTargetListWindow_VBox2.label");
            result[4] = binding;
            binding = new Binding(this, function () : Object
            {
                return _targetPlayerList;
            }// end function
            , function (param1:Object) : void
            {
                notorietyList.dataProvider = param1;
                return;
            }// end function
            , "notorietyList.dataProvider");
            result[5] = binding;
            binding = new Binding(this, function () : String
            {
                var _loc_1:* = Utils.i18n("shamBattleOpponent");
                var _loc_2:* = _loc_1 == undefined ? (null) : (String(_loc_1));
                return _loc_2;
            }// end function
            , function (param1:String) : void
            {
                _ShamBattleTargetListWindow_DataGridColumn1.headerText = param1;
                return;
            }// end function
            , "_ShamBattleTargetListWindow_DataGridColumn1.headerText");
            result[6] = binding;
            binding = new Binding(this, function () : IFactory
            {
                return targetNameRenderer;
            }// end function
            , function (param1:IFactory) : void
            {
                _ShamBattleTargetListWindow_DataGridColumn1.itemRenderer = param1;
                return;
            }// end function
            , "_ShamBattleTargetListWindow_DataGridColumn1.itemRenderer");
            result[7] = binding;
            binding = new Binding(this, function () : String
            {
                var _loc_1:* = Utils.i18n("shamBattleTotalPoint");
                var _loc_2:* = _loc_1 == undefined ? (null) : (String(_loc_1));
                return _loc_2;
            }// end function
            , function (param1:String) : void
            {
                _ShamBattleTargetListWindow_DataGridColumn2.headerText = param1;
                return;
            }// end function
            , "_ShamBattleTargetListWindow_DataGridColumn2.headerText");
            result[8] = binding;
            binding = new Binding(this, function () : String
            {
                var _loc_1:* = Utils.i18n("shamBattleOnmyouRank");
                var _loc_2:* = _loc_1 == undefined ? (null) : (String(_loc_1));
                return _loc_2;
            }// end function
            , function (param1:String) : void
            {
                _ShamBattleTargetListWindow_DataGridColumn3.headerText = param1;
                return;
            }// end function
            , "_ShamBattleTargetListWindow_DataGridColumn3.headerText");
            result[9] = binding;
            binding = new Binding(this, function () : Object
            {
                return _swf_close;
            }// end function
            , function (param1:Object) : void
            {
                _ShamBattleTargetListWindow_Image4.source = param1;
                return;
            }// end function
            , "_ShamBattleTargetListWindow_Image4.source");
            result[10] = binding;
            return result;
        }// end function

        public function onDetail(param1:Object) : void
        {
            return;
        }// end function

        private function get _player() : PlayerVO
        {
            return this._1722718208_player;
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

        public function get TargetViewStack() : ViewStack
        {
            return this._396160974TargetViewStack;
        }// end function

        public function get targetNameRenderer() : ClassFactory
        {
            return this._1745069921targetNameRenderer;
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

        public function set player(param1:PlayerVO) : void
        {
            _player = param1;
            return;
        }// end function

        public function random_match() : void
        {
            sendPopupEvent(SELECT_RANDOM_SHAM_BATTLE, new Object());
            return;
        }// end function

        public function set targetNameRenderer(param1:ClassFactory) : void
        {
            var _loc_2:* = this._1745069921targetNameRenderer;
            if (_loc_2 !== param1)
            {
                this._1745069921targetNameRenderer = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "targetNameRenderer", _loc_2, param1));
            }
            return;
        }// end function

        private function _ShamBattleTargetListWindow_DataGridColumn2_i() : DataGridColumn
        {
            var _loc_1:* = new DataGridColumn();
            _ShamBattleTargetListWindow_DataGridColumn2 = _loc_1;
            _loc_1.dataField = "max_total_point";
            _loc_1.width = 100;
            _loc_1.setStyle("textAlign", "center");
            BindingManager.executeBindings(this, "_ShamBattleTargetListWindow_DataGridColumn2", _ShamBattleTargetListWindow_DataGridColumn2);
            return _loc_1;
        }// end function

        private function get _swf_practice() : MovieClipLoaderAsset
        {
            return this._882741303_swf_practice;
        }// end function

        public function get windowLayer() : Canvas
        {
            return this._1896677185windowLayer;
        }// end function

        public function ___ShamBattleTargetListWindow_PopupWindow1_creationComplete(event:FlexEvent) : void
        {
            comp();
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

        private function set _targetPlayerList(param1:Array) : void
        {
            var _loc_2:* = this._825365999_targetPlayerList;
            if (_loc_2 !== param1)
            {
                this._825365999_targetPlayerList = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "_targetPlayerList", _loc_2, param1));
            }
            return;
        }// end function

        public function get player() : PlayerVO
        {
            return _player;
        }// end function

        public function onUnitSelect(param1:Object) : void
        {
            sendPopupEvent(SELECT_SHAM_BATTLE_TARGET_COMPLETE, param1);
            return;
        }// end function

        public function ___ShamBattleTargetListWindow_Image2_click(event:MouseEvent) : void
        {
            random_match();
            return;
        }// end function

        public function ___ShamBattleTargetListWindow_Image4_click(event:MouseEvent) : void
        {
            close();
            return;
        }// end function

        private function get _swf_bg() : MovieClipLoaderAsset
        {
            return this._1818888257_swf_bg;
        }// end function

        private function get _targetPlayerList() : Array
        {
            return this._825365999_targetPlayerList;
        }// end function

        public function setReportList(param1:Array) : void
        {
            var _loc_2:Object = null;
            _reports = new Array();
            _targetPlayerList = new Array();
            for each (_loc_2 in param1)
            {
                
                _targetPlayerList.push({target:_loc_2.player.player_name, max_total_point:_loc_2.player.max_total_point, rank:_loc_2.player.onmyou_rank, id:_loc_2.player.id});
            }
            return;
        }// end function

        private function set _swf_practice(param1:MovieClipLoaderAsset) : void
        {
            var _loc_2:* = this._882741303_swf_practice;
            if (_loc_2 !== param1)
            {
                this._882741303_swf_practice = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "_swf_practice", _loc_2, param1));
            }
            return;
        }// end function

        public function get notorietyList() : DataGrid
        {
            return this._2093602091notorietyList;
        }// end function

        private function close() : void
        {
            sendPopupEvent(CLOSED_SHAM_BATTLE_TARGET_LIST, {window:this});
            return;
        }// end function

        public static function set watcherSetupUtil(param1:IWatcherSetupUtil) : void
        {
            ShamBattleTargetListWindow._watcherSetupUtil = param1;
            return;
        }// end function

    }
}
