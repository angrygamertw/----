package com.kbmj.viking.view.city
{
    import com.kbmj.viking.lib.*;
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

    public class QuestAcceptWindow extends Canvas implements IBindingClient
    {
        private var _1900735253_subjugationQuests:ArrayCollection;
        private var _1075873300_swf_window:MovieClipLoaderAsset;
        private var questConfirmWindow:QuestConfirmWindow;
        private var primaryRemark:Object;
        private var _questData:Object;
        private var _1040677128questItemRenderer:ClassFactory;
        public var _QuestAcceptWindow_DataGrid2:DataGrid;
        public var _QuestAcceptWindow_DataGrid3:DataGrid;
        public var _QuestAcceptWindow_DataGrid4:DataGrid;
        public var _QuestAcceptWindow_DataGrid1:DataGrid;
        private var _1111593609mariaComment:String;
        var _bindingsByDestination:Object;
        private var _1193840764_swf_close:MovieClipLoaderAsset;
        private var _364203260_deliveryQuests:ArrayCollection;
        private var _1903684846windowStage:Canvas;
        private var _playerRank:Object;
        private var _1218643219_swf_close_window:MovieClipLoaderAsset;
        public var _QuestAcceptWindow_DataGridColumn1:DataGridColumn;
        public var _QuestAcceptWindow_DataGridColumn2:DataGridColumn;
        public var _QuestAcceptWindow_DataGridColumn3:DataGridColumn;
        public var _QuestAcceptWindow_DataGridColumn4:DataGridColumn;
        private var _571959320ConfirmCanvas:Canvas;
        var _watchers:Array;
        public var _QuestAcceptWindow_Image1:Image;
        public var _QuestAcceptWindow_Image2:Image;
        public var _QuestAcceptWindow_Image3:Image;
        public var _QuestAcceptWindow_Image4:Image;
        private var _1896677185windowLayer:Canvas;
        private var _925796981_dailyQuests:ArrayCollection;
        public var _QuestAcceptWindow_Text1:Text;
        public var _QuestAcceptWindow_Text2:Text;
        private var _550978329_swf_tab:MovieClipLoaderAsset;
        var _bindingsBeginWithWord:Object;
        private var _563301697_requestQuests:ArrayCollection;
        private var primaryRemarkQuestNon:Object;
        private var _factionId:int = 0;
        private var _2142550472questListStack:ViewStack;
        var _bindings:Array;
        private var _documentDescriptor_:UIComponentDescriptor;
        public var _QuestAcceptWindow_Canvas4:Canvas;
        public var _QuestAcceptWindow_Canvas5:Canvas;
        public var _QuestAcceptWindow_Canvas6:Canvas;
        private var _1948557375_purificationQuests:ArrayCollection;
        public static const CASE_BY_CLIENT_MARIA:String = "caseByClientMaria";
        private static const WINDOW_X:int = 350;
        private static const BUTTON_X:int = 490;
        private static const BUTTON_Y:int = 490;
        public static const ACCEPT_INTO_MARIA:String = "acceptIntoMaria";
        private static const WINDOW_Y:int = 160;
        public static const ACCEPT_CANCEL_INTO_MARIA:String = "acceptCancelIntoMaria";
        public static const REMOVE_SWF:String = "removeSWF";
        private static var _watcherSetupUtil:IWatcherSetupUtil;
        public static const QUEST_ACCEPT_FINISH:String = "questAcceptFinish";
        public static const BUTTON_ENABLE:String = "buttonEnable";
        public static const CHANGE_CHARACTER:String = "changeCharacter";
        private static const WINDOW_HT:int = 380;
        private static const WINDOW_WD:int = 390;

        public function QuestAcceptWindow()
        {
            _documentDescriptor_ = new UIComponentDescriptor({type:Canvas, propertiesFactory:function () : Object
            {
                return {width:920, height:560, childDescriptors:[new UIComponentDescriptor({type:Canvas, id:"windowLayer"}), new UIComponentDescriptor({type:Canvas, id:"windowStage", propertiesFactory:function () : Object
                {
                    return {childDescriptors:[new UIComponentDescriptor({type:Image, id:"_QuestAcceptWindow_Image1"}), new UIComponentDescriptor({type:Text, id:"_QuestAcceptWindow_Text1", propertiesFactory:function () : Object
                    {
                        return {styleName:"DealTitle"};
                    }// end function
                    }), new UIComponentDescriptor({type:Image, id:"_QuestAcceptWindow_Image2", events:{click:"___QuestAcceptWindow_Image2_click"}}), new UIComponentDescriptor({type:Text, id:"_QuestAcceptWindow_Text2", stylesFactory:function () : void
                    {
                        this.fontSize = 14;
                        return;
                    }// end function
                    , propertiesFactory:function () : Object
                    {
                        return {y:90};
                    }// end function
                    }), new UIComponentDescriptor({type:Image, id:"_QuestAcceptWindow_Image3"}), new UIComponentDescriptor({type:ViewStack, id:"questListStack", propertiesFactory:function () : Object
                    {
                        return {childDescriptors:[new UIComponentDescriptor({type:Canvas, id:"_QuestAcceptWindow_Canvas4", propertiesFactory:function () : Object
                        {
                            return {childDescriptors:[new UIComponentDescriptor({type:DataGrid, id:"_QuestAcceptWindow_DataGrid1", propertiesFactory:function () : Object
                            {
                                return {y:223, height:257, rowCount:5, styleName:"DataGridBase", sortableColumns:false, showHeaders:false, selectable:false, columns:[_QuestAcceptWindow_DataGridColumn1_i()]};
                            }// end function
                            })]};
                        }// end function
                        }), new UIComponentDescriptor({type:Canvas, id:"_QuestAcceptWindow_Canvas5", propertiesFactory:function () : Object
                        {
                            return {childDescriptors:[new UIComponentDescriptor({type:DataGrid, id:"_QuestAcceptWindow_DataGrid2", propertiesFactory:function () : Object
                            {
                                return {y:223, height:257, rowCount:5, styleName:"DataGridBase", sortableColumns:false, showHeaders:false, selectable:false, columns:[_QuestAcceptWindow_DataGridColumn2_i()]};
                            }// end function
                            })]};
                        }// end function
                        }), new UIComponentDescriptor({type:Canvas, id:"_QuestAcceptWindow_Canvas6", propertiesFactory:function () : Object
                        {
                            return {childDescriptors:[new UIComponentDescriptor({type:DataGrid, id:"_QuestAcceptWindow_DataGrid3", propertiesFactory:function () : Object
                            {
                                return {y:223, height:257, rowCount:5, styleName:"DataGridBase", sortableColumns:false, showHeaders:false, selectable:false, columns:[_QuestAcceptWindow_DataGridColumn3_i()]};
                            }// end function
                            })]};
                        }// end function
                        }), new UIComponentDescriptor({type:Canvas, propertiesFactory:function () : Object
                        {
                            return {label:"日替り", childDescriptors:[new UIComponentDescriptor({type:DataGrid, id:"_QuestAcceptWindow_DataGrid4", propertiesFactory:function () : Object
                            {
                                return {y:223, height:257, rowCount:5, styleName:"DataGridBase", sortableColumns:false, showHeaders:false, selectable:false, columns:[_QuestAcceptWindow_DataGridColumn4_i()]};
                            }// end function
                            })]};
                        }// end function
                        })]};
                    }// end function
                    }), new UIComponentDescriptor({type:Image, id:"_QuestAcceptWindow_Image4", events:{click:"___QuestAcceptWindow_Image4_click"}})]};
                }// end function
                }), new UIComponentDescriptor({type:Canvas, id:"ConfirmCanvas"})]};
            }// end function
            });
            _1075873300_swf_window = new Viking.EmbedSwfWindowCommon();
            _1193840764_swf_close = new Viking.EmbedSwfButtonCommon();
            _550978329_swf_tab = new Viking.EmbedSwfTabCommon();
            _1218643219_swf_close_window = new Viking.EmbedSwfButtonCloseWindow();
            _playerRank = new Object();
            primaryRemark = {2:Utils.i18n("questAcceptQuestListBlue"), 3:Utils.i18n("questAcceptQuestListRed"), 4:Utils.i18n("questAcceptQuestListWhite"), 5:Utils.i18n("questAcceptQuestListBlack")};
            primaryRemarkQuestNon = {2:Utils.i18n("questAcceptNoQuestBlue"), 3:Utils.i18n("questAcceptNoQuestRed"), 4:Utils.i18n("questAcceptNoQuestWhite"), 5:Utils.i18n("questAcceptNoQuestBlack")};
            questConfirmWindow = new QuestConfirmWindow();
            _bindings = [];
            _watchers = [];
            _bindingsByDestination = {};
            _bindingsBeginWithWord = {};
            mx_internal::_document = this;
            this.width = 920;
            this.height = 560;
            _QuestAcceptWindow_ClassFactory1_i();
            this.addEventListener("creationComplete", ___QuestAcceptWindow_Canvas1_creationComplete);
            return;
        }// end function

        public function onAcceptConfirm(param1:int) : void
        {
            questConfirmWindow.onAcceptConfirm(param1);
            return;
        }// end function

        public function changeChara(param1:Object) : void
        {
            windowStage.visible = false;
            _questData = param1;
            if (param1.clientType != "npc_01.png")
            {
                dispatchEvent(new Event(CHANGE_CHARACTER));
            }
            else
            {
                questConfirmWindow.init("questAccept", _questData);
                questConfirmWindow.visible = true;
            }
            return;
        }// end function

        public function ___QuestAcceptWindow_Image2_click(event:MouseEvent) : void
        {
            onClose();
            return;
        }// end function

        public function get questItemRenderer() : ClassFactory
        {
            return this._1040677128questItemRenderer;
        }// end function

        private function set _deliveryQuests(param1:ArrayCollection) : void
        {
            var _loc_2:* = this._364203260_deliveryQuests;
            if (_loc_2 !== param1)
            {
                this._364203260_deliveryQuests = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "_deliveryQuests", _loc_2, param1));
            }
            return;
        }// end function

        private function get _deliveryQuests() : ArrayCollection
        {
            return this._364203260_deliveryQuests;
        }// end function

        private function get _swf_close_window() : MovieClipLoaderAsset
        {
            return this._1218643219_swf_close_window;
        }// end function

        private function set _dailyQuests(param1:ArrayCollection) : void
        {
            var _loc_2:* = this._925796981_dailyQuests;
            if (_loc_2 !== param1)
            {
                this._925796981_dailyQuests = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "_dailyQuests", _loc_2, param1));
            }
            return;
        }// end function

        private function init() : void
        {
            questConfirmWindow.visible = false;
            ConfirmCanvas.addChild(questConfirmWindow);
            questConfirmWindow.addEventListener(QuestConfirmWindow.QUEST_ACCEPT, handleEvent);
            questConfirmWindow.addEventListener(QuestConfirmWindow.QUEST_ACCEPT_CANCEL, handleEvent);
            questConfirmWindow.addEventListener(QuestConfirmWindow.QUEST_ACCEPT_FINISH, handleEvent);
            questConfirmWindow.addEventListener(QuestConfirmWindow.QUEST_ACCEPT_CANCEL_CASE_BY_MARIA_QUEST, handleEvent);
            MovieClip(Loader(_swf_window.getChildAt(0)).content).gotoAndPlay("right_390x380");
            MovieClip(Loader(_swf_close.getChildAt(0)).content).gotoAndPlay("button_close");
            Loader(_swf_tab.getChildAt(0)).content.addEventListener("TAB_QUEST_BE_PROMOTED", function (event:Event) : void
            {
                questListStack.selectedIndex = 0;
                return;
            }// end function
            );
            Loader(_swf_tab.getChildAt(0)).content.addEventListener("TAB_QUEST_SUBJUGATION", function (event:Event) : void
            {
                questListStack.selectedIndex = 1;
                return;
            }// end function
            );
            Loader(_swf_tab.getChildAt(0)).content.addEventListener("TAB_QUEST_DELIVER", function (event:Event) : void
            {
                questListStack.selectedIndex = 2;
                return;
            }// end function
            );
            Loader(_swf_tab.getChildAt(0)).content.addEventListener("TAB_QUEST_DAILY", function (event:Event) : void
            {
                questListStack.selectedIndex = 3;
                return;
            }// end function
            );
            MovieClip(Loader(_swf_tab.getChildAt(0)).content).gotoAndPlay("tab_quest_be_promoted");
            return;
        }// end function

        public function get ConfirmCanvas() : Canvas
        {
            return this._571959320ConfirmCanvas;
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

        private function get _swf_tab() : MovieClipLoaderAsset
        {
            return this._550978329_swf_tab;
        }// end function

        private function set mariaComment(param1:String) : void
        {
            var _loc_2:* = this._1111593609mariaComment;
            if (_loc_2 !== param1)
            {
                this._1111593609mariaComment = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "mariaComment", _loc_2, param1));
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

        public function set ConfirmCanvas(param1:Canvas) : void
        {
            var _loc_2:* = this._571959320ConfirmCanvas;
            if (_loc_2 !== param1)
            {
                this._571959320ConfirmCanvas = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "ConfirmCanvas", _loc_2, param1));
            }
            return;
        }// end function

        private function set _swf_tab(param1:MovieClipLoaderAsset) : void
        {
            var _loc_2:* = this._550978329_swf_tab;
            if (_loc_2 !== param1)
            {
                this._550978329_swf_tab = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "_swf_tab", _loc_2, param1));
            }
            return;
        }// end function

        public function get windowLayer() : Canvas
        {
            return this._1896677185windowLayer;
        }// end function

        private function _QuestAcceptWindow_DataGridColumn3_i() : DataGridColumn
        {
            var _loc_1:* = new DataGridColumn();
            _QuestAcceptWindow_DataGridColumn3 = _loc_1;
            BindingManager.executeBindings(this, "_QuestAcceptWindow_DataGridColumn3", _QuestAcceptWindow_DataGridColumn3);
            return _loc_1;
        }// end function

        private function _QuestAcceptWindow_ClassFactory1_i() : ClassFactory
        {
            var _loc_1:* = new ClassFactory();
            questItemRenderer = _loc_1;
            _loc_1.generator = QuestAcceptWindow_inlineComponent1;
            _loc_1.properties = {outerDocument:this};
            return _loc_1;
        }// end function

        private function get _requestQuests() : ArrayCollection
        {
            return this._563301697_requestQuests;
        }// end function

        private function handleEvent(event:Event) : void
        {
            switch(event.type)
            {
                case QuestConfirmWindow.QUEST_ACCEPT:
                {
                    dispatchEvent(new Event(ACCEPT_INTO_MARIA));
                    break;
                }
                case QuestConfirmWindow.QUEST_ACCEPT_CANCEL:
                {
                    dispatchEvent(new Event(ACCEPT_CANCEL_INTO_MARIA));
                    break;
                }
                case QuestConfirmWindow.QUEST_ACCEPT_FINISH:
                {
                    dispatchEvent(new Event(REMOVE_SWF));
                    dispatchEvent(new Event(QUEST_ACCEPT_FINISH));
                    onClose();
                    break;
                }
                case QuestConfirmWindow.QUEST_ACCEPT_CANCEL_CASE_BY_MARIA_QUEST:
                {
                    windowStage.visible = true;
                    break;
                }
                default:
                {
                    break;
                }
            }
            return;
        }// end function

        private function onClose() : void
        {
            this.visible = false;
            dispatchEvent(new Event(BUTTON_ENABLE));
            dispatchEvent(new Event(REMOVE_SWF));
            MovieClip(Loader(_swf_close.getChildAt(0)).content).gotoAndPlay(0);
            MovieClip(Loader(_swf_close.getChildAt(0)).content).gotoAndPlay("button_close");
            MovieClip(Loader(_swf_close_window.getChildAt(0)).content).gotoAndPlay(1);
            return;
        }// end function

        public function set playerRank(param1:Object) : void
        {
            _playerRank = param1;
            return;
        }// end function

        public function ___QuestAcceptWindow_Canvas1_creationComplete(event:FlexEvent) : void
        {
            init();
            return;
        }// end function

        private function _QuestAcceptWindow_DataGridColumn2_i() : DataGridColumn
        {
            var _loc_1:* = new DataGridColumn();
            _QuestAcceptWindow_DataGridColumn2 = _loc_1;
            BindingManager.executeBindings(this, "_QuestAcceptWindow_DataGridColumn2", _QuestAcceptWindow_DataGridColumn2);
            return _loc_1;
        }// end function

        private function get _swf_close() : MovieClipLoaderAsset
        {
            return this._1193840764_swf_close;
        }// end function

        public function ___QuestAcceptWindow_Image4_click(event:MouseEvent) : void
        {
            onClose();
            return;
        }// end function

        private function get _dailyQuests() : ArrayCollection
        {
            return this._925796981_dailyQuests;
        }// end function

        override public function initialize() : void
        {
            var target:QuestAcceptWindow;
            var watcherSetupUtilClass:Object;
            .mx_internal::setDocumentDescriptor(_documentDescriptor_);
            var bindings:* = _QuestAcceptWindow_bindingsSetup();
            var watchers:Array;
            target;
            if (_watcherSetupUtil == null)
            {
                watcherSetupUtilClass = getDefinitionByName("_com_kbmj_viking_view_city_QuestAcceptWindowWatcherSetupUtil");
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

        public function onVisible() : void
        {
            windowStage.visible = true;
            return;
        }// end function

        public function setQuest(param1:Array, param2:Array) : void
        {
            var obj:Object;
            var questList:* = param1;
            var completeQuests:* = param2;
            var quests:* = questList.filter(function (param1, param2:int, param3:Array) : Boolean
            {
                if (param1.upperLimitRank && param1.upperLimitRank <= _playerRank)
                {
                    return false;
                }
                if (param1.rank <= _playerRank)
                {
                    if (param1.parentId == 0 || completeQuests.indexOf(param1.parentId) >= 0)
                    {
                        return true;
                    }
                }
                return false;
            }// end function
            );
            var _loc_4:int = 0;
            var _loc_5:* = completeQuests;
            while (_loc_5 in _loc_4)
            {
                
                obj = _loc_5[_loc_4];
                quests = quests.filter(function (param1, param2:int, param3:Array) : Boolean
            {
                if (param1.repeatable == 1)
                {
                    return true;
                }
                return param1.questId != obj;
            }// end function
            );
            }
            quests = quests.filter(function (param1, param2:int, param3:Array) : Boolean
            {
                return param1.description != null;
            }// end function
            );
            if (quests.length > 0)
            {
                mariaComment = primaryRemark[_factionId];
            }
            else
            {
                mariaComment = primaryRemarkQuestNon[_factionId];
            }
            _subjugationQuests = new ArrayCollection(quests.filter(function (param1, param2:int, param3:Array) : Boolean
            {
                return param1.questType == 1;
            }// end function
            ));
            _deliveryQuests = new ArrayCollection(quests.filter(function (param1, param2:int, param3:Array) : Boolean
            {
                return param1.questType == 2;
            }// end function
            ));
            _purificationQuests = new ArrayCollection(quests.filter(function (param1, param2:int, param3:Array) : Boolean
            {
                return param1.questType == 3;
            }// end function
            ));
            _dailyQuests = new ArrayCollection(quests.filter(function (param1, param2:int, param3:Array) : Boolean
            {
                return param1.questType == 4;
            }// end function
            ));
            return;
        }// end function

        private function set _purificationQuests(param1:ArrayCollection) : void
        {
            var _loc_2:* = this._1948557375_purificationQuests;
            if (_loc_2 !== param1)
            {
                this._1948557375_purificationQuests = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "_purificationQuests", _loc_2, param1));
            }
            return;
        }// end function

        public function set questListStack(param1:ViewStack) : void
        {
            var _loc_2:* = this._2142550472questListStack;
            if (_loc_2 !== param1)
            {
                this._2142550472questListStack = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "questListStack", _loc_2, param1));
            }
            return;
        }// end function

        private function get mariaComment() : String
        {
            return this._1111593609mariaComment;
        }// end function

        public function set factionId(param1:int) : void
        {
            _factionId = param1;
            return;
        }// end function

        private function set _requestQuests(param1:ArrayCollection) : void
        {
            var _loc_2:* = this._563301697_requestQuests;
            if (_loc_2 !== param1)
            {
                this._563301697_requestQuests = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "_requestQuests", _loc_2, param1));
            }
            return;
        }// end function

        private function _QuestAcceptWindow_DataGridColumn1_i() : DataGridColumn
        {
            var _loc_1:* = new DataGridColumn();
            _QuestAcceptWindow_DataGridColumn1 = _loc_1;
            BindingManager.executeBindings(this, "_QuestAcceptWindow_DataGridColumn1", _QuestAcceptWindow_DataGridColumn1);
            return _loc_1;
        }// end function

        public function get questData() : Object
        {
            return _questData;
        }// end function

        public function componrntToolTip(param1:int) : String
        {
            if (param1 == 0)
            {
                return Utils.i18n("generalRequest");
            }
            if (param1 == 1)
            {
                return Utils.i18n("generalShowDetail");
            }
            return Utils.i18n("checkQuestCompensation");
        }// end function

        public function getClient(param1:Object) : String
        {
            var _loc_4:RegExp = null;
            var _loc_2:* = new String();
            var _loc_3:int = 0;
            while (_loc_3 < param1.reward.length)
            {
                
                if (param1.reward[_loc_3])
                {
                    _loc_2 = _loc_2 + param1.reward[_loc_3];
                }
                _loc_3++;
            }
            if (_loc_2.charAt(0) == "$")
            {
                _loc_4 = /\$""\$/;
                _loc_2 = _loc_2.replace(_loc_4, "");
                _loc_2 = Utils.i18n("generalMoney") + ":" + _loc_2;
                return _loc_2;
            }
            return _loc_2;
        }// end function

        private function _QuestAcceptWindow_bindingsSetup() : Array
        {
            var binding:Binding;
            var result:Array;
            binding = new Binding(this, function () : Object
            {
                return _swf_window;
            }// end function
            , function (param1:Object) : void
            {
                _QuestAcceptWindow_Image1.source = param1;
                return;
            }// end function
            , "_QuestAcceptWindow_Image1.source");
            result[0] = binding;
            binding = new Binding(this, function () : Number
            {
                return WINDOW_X;
            }// end function
            , function (param1:Number) : void
            {
                _QuestAcceptWindow_Text1.x = param1;
                return;
            }// end function
            , "_QuestAcceptWindow_Text1.x");
            result[1] = binding;
            binding = new Binding(this, function () : Number
            {
                return WINDOW_Y;
            }// end function
            , function (param1:Number) : void
            {
                _QuestAcceptWindow_Text1.y = param1;
                return;
            }// end function
            , "_QuestAcceptWindow_Text1.y");
            result[2] = binding;
            binding = new Binding(this, function () : Number
            {
                return WINDOW_WD;
            }// end function
            , function (param1:Number) : void
            {
                _QuestAcceptWindow_Text1.width = param1;
                return;
            }// end function
            , "_QuestAcceptWindow_Text1.width");
            result[3] = binding;
            binding = new Binding(this, function () : String
            {
                var _loc_1:* = Utils.i18n("questAcceptQuestList");
                var _loc_2:* = _loc_1 == undefined ? (null) : (String(_loc_1));
                return _loc_2;
            }// end function
            , function (param1:String) : void
            {
                _QuestAcceptWindow_Text1.text = param1;
                return;
            }// end function
            , "_QuestAcceptWindow_Text1.text");
            result[4] = binding;
            binding = new Binding(this, function () : Number
            {
                return WINDOW_X + WINDOW_WD - 25;
            }// end function
            , function (param1:Number) : void
            {
                _QuestAcceptWindow_Image2.x = param1;
                return;
            }// end function
            , "_QuestAcceptWindow_Image2.x");
            result[5] = binding;
            binding = new Binding(this, function () : Number
            {
                return WINDOW_Y;
            }// end function
            , function (param1:Number) : void
            {
                _QuestAcceptWindow_Image2.y = param1;
                return;
            }// end function
            , "_QuestAcceptWindow_Image2.y");
            result[6] = binding;
            binding = new Binding(this, function () : Object
            {
                return _swf_close_window;
            }// end function
            , function (param1:Object) : void
            {
                _QuestAcceptWindow_Image2.source = param1;
                return;
            }// end function
            , "_QuestAcceptWindow_Image2.source");
            result[7] = binding;
            binding = new Binding(this, function () : Number
            {
                return WINDOW_X + 20;
            }// end function
            , function (param1:Number) : void
            {
                _QuestAcceptWindow_Text2.x = param1;
                return;
            }// end function
            , "_QuestAcceptWindow_Text2.x");
            result[8] = binding;
            binding = new Binding(this, function () : String
            {
                var _loc_1:* = mariaComment;
                var _loc_2:* = _loc_1 == undefined ? (null) : (String(_loc_1));
                return _loc_2;
            }// end function
            , function (param1:String) : void
            {
                _QuestAcceptWindow_Text2.text = param1;
                return;
            }// end function
            , "_QuestAcceptWindow_Text2.text");
            result[9] = binding;
            binding = new Binding(this, function () : Number
            {
                return WINDOW_X + 20;
            }// end function
            , function (param1:Number) : void
            {
                _QuestAcceptWindow_Image3.x = param1;
                return;
            }// end function
            , "_QuestAcceptWindow_Image3.x");
            result[10] = binding;
            binding = new Binding(this, function () : Number
            {
                return WINDOW_Y + 35;
            }// end function
            , function (param1:Number) : void
            {
                _QuestAcceptWindow_Image3.y = param1;
                return;
            }// end function
            , "_QuestAcceptWindow_Image3.y");
            result[11] = binding;
            binding = new Binding(this, function () : Object
            {
                return _swf_tab;
            }// end function
            , function (param1:Object) : void
            {
                _QuestAcceptWindow_Image3.source = param1;
                return;
            }// end function
            , "_QuestAcceptWindow_Image3.source");
            result[12] = binding;
            binding = new Binding(this, function () : String
            {
                var _loc_1:* = Utils.i18n("rankUpCheckTitle");
                var _loc_2:* = _loc_1 == undefined ? (null) : (String(_loc_1));
                return _loc_2;
            }// end function
            , function (param1:String) : void
            {
                _QuestAcceptWindow_Canvas4.label = param1;
                return;
            }// end function
            , "_QuestAcceptWindow_Canvas4.label");
            result[13] = binding;
            binding = new Binding(this, function () : Object
            {
                return _subjugationQuests;
            }// end function
            , function (param1:Object) : void
            {
                _QuestAcceptWindow_DataGrid1.dataProvider = param1;
                return;
            }// end function
            , "_QuestAcceptWindow_DataGrid1.dataProvider");
            result[14] = binding;
            binding = new Binding(this, function () : Number
            {
                return WINDOW_X + 20;
            }// end function
            , function (param1:Number) : void
            {
                _QuestAcceptWindow_DataGrid1.x = param1;
                return;
            }// end function
            , "_QuestAcceptWindow_DataGrid1.x");
            result[15] = binding;
            binding = new Binding(this, function () : Number
            {
                return WINDOW_WD - 40;
            }// end function
            , function (param1:Number) : void
            {
                _QuestAcceptWindow_DataGrid1.width = param1;
                return;
            }// end function
            , "_QuestAcceptWindow_DataGrid1.width");
            result[16] = binding;
            binding = new Binding(this, function () : IFactory
            {
                return questItemRenderer;
            }// end function
            , function (param1:IFactory) : void
            {
                _QuestAcceptWindow_DataGridColumn1.itemRenderer = param1;
                return;
            }// end function
            , "_QuestAcceptWindow_DataGridColumn1.itemRenderer");
            result[17] = binding;
            binding = new Binding(this, function () : String
            {
                var _loc_1:* = Utils.i18n("generalSubjugation");
                var _loc_2:* = _loc_1 == undefined ? (null) : (String(_loc_1));
                return _loc_2;
            }// end function
            , function (param1:String) : void
            {
                _QuestAcceptWindow_Canvas5.label = param1;
                return;
            }// end function
            , "_QuestAcceptWindow_Canvas5.label");
            result[18] = binding;
            binding = new Binding(this, function () : Object
            {
                return _deliveryQuests;
            }// end function
            , function (param1:Object) : void
            {
                _QuestAcceptWindow_DataGrid2.dataProvider = param1;
                return;
            }// end function
            , "_QuestAcceptWindow_DataGrid2.dataProvider");
            result[19] = binding;
            binding = new Binding(this, function () : Number
            {
                return WINDOW_X + 20;
            }// end function
            , function (param1:Number) : void
            {
                _QuestAcceptWindow_DataGrid2.x = param1;
                return;
            }// end function
            , "_QuestAcceptWindow_DataGrid2.x");
            result[20] = binding;
            binding = new Binding(this, function () : Number
            {
                return WINDOW_WD - 40;
            }// end function
            , function (param1:Number) : void
            {
                _QuestAcceptWindow_DataGrid2.width = param1;
                return;
            }// end function
            , "_QuestAcceptWindow_DataGrid2.width");
            result[21] = binding;
            binding = new Binding(this, function () : IFactory
            {
                return questItemRenderer;
            }// end function
            , function (param1:IFactory) : void
            {
                _QuestAcceptWindow_DataGridColumn2.itemRenderer = param1;
                return;
            }// end function
            , "_QuestAcceptWindow_DataGridColumn2.itemRenderer");
            result[22] = binding;
            binding = new Binding(this, function () : String
            {
                var _loc_1:* = Utils.i18n("generalDelivery");
                var _loc_2:* = _loc_1 == undefined ? (null) : (String(_loc_1));
                return _loc_2;
            }// end function
            , function (param1:String) : void
            {
                _QuestAcceptWindow_Canvas6.label = param1;
                return;
            }// end function
            , "_QuestAcceptWindow_Canvas6.label");
            result[23] = binding;
            binding = new Binding(this, function () : Object
            {
                return _purificationQuests;
            }// end function
            , function (param1:Object) : void
            {
                _QuestAcceptWindow_DataGrid3.dataProvider = param1;
                return;
            }// end function
            , "_QuestAcceptWindow_DataGrid3.dataProvider");
            result[24] = binding;
            binding = new Binding(this, function () : Number
            {
                return WINDOW_X + 20;
            }// end function
            , function (param1:Number) : void
            {
                _QuestAcceptWindow_DataGrid3.x = param1;
                return;
            }// end function
            , "_QuestAcceptWindow_DataGrid3.x");
            result[25] = binding;
            binding = new Binding(this, function () : Number
            {
                return WINDOW_WD - 40;
            }// end function
            , function (param1:Number) : void
            {
                _QuestAcceptWindow_DataGrid3.width = param1;
                return;
            }// end function
            , "_QuestAcceptWindow_DataGrid3.width");
            result[26] = binding;
            binding = new Binding(this, function () : IFactory
            {
                return questItemRenderer;
            }// end function
            , function (param1:IFactory) : void
            {
                _QuestAcceptWindow_DataGridColumn3.itemRenderer = param1;
                return;
            }// end function
            , "_QuestAcceptWindow_DataGridColumn3.itemRenderer");
            result[27] = binding;
            binding = new Binding(this, function () : Object
            {
                return _dailyQuests;
            }// end function
            , function (param1:Object) : void
            {
                _QuestAcceptWindow_DataGrid4.dataProvider = param1;
                return;
            }// end function
            , "_QuestAcceptWindow_DataGrid4.dataProvider");
            result[28] = binding;
            binding = new Binding(this, function () : Number
            {
                return WINDOW_X + 20;
            }// end function
            , function (param1:Number) : void
            {
                _QuestAcceptWindow_DataGrid4.x = param1;
                return;
            }// end function
            , "_QuestAcceptWindow_DataGrid4.x");
            result[29] = binding;
            binding = new Binding(this, function () : Number
            {
                return WINDOW_WD - 40;
            }// end function
            , function (param1:Number) : void
            {
                _QuestAcceptWindow_DataGrid4.width = param1;
                return;
            }// end function
            , "_QuestAcceptWindow_DataGrid4.width");
            result[30] = binding;
            binding = new Binding(this, function () : IFactory
            {
                return questItemRenderer;
            }// end function
            , function (param1:IFactory) : void
            {
                _QuestAcceptWindow_DataGridColumn4.itemRenderer = param1;
                return;
            }// end function
            , "_QuestAcceptWindow_DataGridColumn4.itemRenderer");
            result[31] = binding;
            binding = new Binding(this, function () : Number
            {
                return BUTTON_X;
            }// end function
            , function (param1:Number) : void
            {
                _QuestAcceptWindow_Image4.x = param1;
                return;
            }// end function
            , "_QuestAcceptWindow_Image4.x");
            result[32] = binding;
            binding = new Binding(this, function () : Number
            {
                return BUTTON_Y;
            }// end function
            , function (param1:Number) : void
            {
                _QuestAcceptWindow_Image4.y = param1;
                return;
            }// end function
            , "_QuestAcceptWindow_Image4.y");
            result[33] = binding;
            binding = new Binding(this, function () : Object
            {
                return _swf_close;
            }// end function
            , function (param1:Object) : void
            {
                _QuestAcceptWindow_Image4.source = param1;
                return;
            }// end function
            , "_QuestAcceptWindow_Image4.source");
            result[34] = binding;
            return result;
        }// end function

        public function get questListStack() : ViewStack
        {
            return this._2142550472questListStack;
        }// end function

        private function get _purificationQuests() : ArrayCollection
        {
            return this._1948557375_purificationQuests;
        }// end function

        public function questDetail() : void
        {
            questConfirmWindow.init("questAccept", _questData);
            questConfirmWindow.visible = true;
            return;
        }// end function

        private function set _subjugationQuests(param1:ArrayCollection) : void
        {
            var _loc_2:* = this._1900735253_subjugationQuests;
            if (_loc_2 !== param1)
            {
                this._1900735253_subjugationQuests = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "_subjugationQuests", _loc_2, param1));
            }
            return;
        }// end function

        public function getQuestName(param1:Object) : String
        {
            return param1.questName;
        }// end function

        public function set windowStage(param1:Canvas) : void
        {
            var _loc_2:* = this._1903684846windowStage;
            if (_loc_2 !== param1)
            {
                this._1903684846windowStage = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "windowStage", _loc_2, param1));
            }
            return;
        }// end function

        private function _QuestAcceptWindow_bindingExprs() : void
        {
            var _loc_1:* = undefined;
            _loc_1 = _swf_window;
            _loc_1 = WINDOW_X;
            _loc_1 = WINDOW_Y;
            _loc_1 = WINDOW_WD;
            _loc_1 = Utils.i18n("questAcceptQuestList");
            _loc_1 = WINDOW_X + WINDOW_WD - 25;
            _loc_1 = WINDOW_Y;
            _loc_1 = _swf_close_window;
            _loc_1 = WINDOW_X + 20;
            _loc_1 = mariaComment;
            _loc_1 = WINDOW_X + 20;
            _loc_1 = WINDOW_Y + 35;
            _loc_1 = _swf_tab;
            _loc_1 = Utils.i18n("rankUpCheckTitle");
            _loc_1 = _subjugationQuests;
            _loc_1 = WINDOW_X + 20;
            _loc_1 = WINDOW_WD - 40;
            _loc_1 = questItemRenderer;
            _loc_1 = Utils.i18n("generalSubjugation");
            _loc_1 = _deliveryQuests;
            _loc_1 = WINDOW_X + 20;
            _loc_1 = WINDOW_WD - 40;
            _loc_1 = questItemRenderer;
            _loc_1 = Utils.i18n("generalDelivery");
            _loc_1 = _purificationQuests;
            _loc_1 = WINDOW_X + 20;
            _loc_1 = WINDOW_WD - 40;
            _loc_1 = questItemRenderer;
            _loc_1 = _dailyQuests;
            _loc_1 = WINDOW_X + 20;
            _loc_1 = WINDOW_WD - 40;
            _loc_1 = questItemRenderer;
            _loc_1 = BUTTON_X;
            _loc_1 = BUTTON_Y;
            _loc_1 = _swf_close;
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

        private function get _subjugationQuests() : ArrayCollection
        {
            return this._1900735253_subjugationQuests;
        }// end function

        public function get windowStage() : Canvas
        {
            return this._1903684846windowStage;
        }// end function

        private function get _swf_window() : MovieClipLoaderAsset
        {
            return this._1075873300_swf_window;
        }// end function

        private function _QuestAcceptWindow_DataGridColumn4_i() : DataGridColumn
        {
            var _loc_1:* = new DataGridColumn();
            _QuestAcceptWindow_DataGridColumn4 = _loc_1;
            BindingManager.executeBindings(this, "_QuestAcceptWindow_DataGridColumn4", _QuestAcceptWindow_DataGridColumn4);
            return _loc_1;
        }// end function

        public function set questItemRenderer(param1:ClassFactory) : void
        {
            var _loc_2:* = this._1040677128questItemRenderer;
            if (_loc_2 !== param1)
            {
                this._1040677128questItemRenderer = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "questItemRenderer", _loc_2, param1));
            }
            return;
        }// end function

        public static function set watcherSetupUtil(param1:IWatcherSetupUtil) : void
        {
            QuestAcceptWindow._watcherSetupUtil = param1;
            return;
        }// end function

    }
}
