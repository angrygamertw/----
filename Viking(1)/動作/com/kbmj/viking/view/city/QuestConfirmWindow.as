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
    import mx.core.*;
    import mx.events.*;

    public class QuestConfirmWindow extends Canvas implements IBindingClient
    {
        private var _1075873300_swf_window:MovieClipLoaderAsset;
        private var _98622893grid3:GridRow;
        public var _QuestConfirmWindow_Image10:Image;
        private var _98622890grid0:GridRow;
        private var primaryRemarkConfirm:Object;
        private var _156601162topComment:String;
        public var _QuestConfirmWindow_VBox1:VBox;
        private var _embed_mxml__swf_home_city_button_onmyou_off_swf_1992088147:Class;
        var _bindingsByDestination:Object;
        private var _1218643219_swf_close_window:MovieClipLoaderAsset;
        private var i:int = 0;
        private var _1240155524grid4_tab:Label;
        private var _104079552money:Image;
        private var _277236744closeWindow:Image;
        private var _1236454854grid0_mes:Label;
        private var _1896677185windowLayer:Canvas;
        private var _98622894grid4:GridRow;
        private var _1880045744_dataArray:ArrayCollection;
        private var _defArray:Array;
        private var _84277Top:Box;
        private var _1238301896grid2_mes:Label;
        private var _1239225417grid3_mes:Label;
        private var _factionId:int = 0;
        public var _QuestConfirmWindow_Text11:Text;
        public var _QuestConfirmWindow_Text12:Text;
        public var _QuestConfirmWindow_Text13:Text;
        public var _QuestConfirmWindow_Image2:Image;
        public var _QuestConfirmWindow_Image3:Image;
        public var _QuestConfirmWindow_Image4:Image;
        public var _QuestConfirmWindow_Image5:Image;
        public var _QuestConfirmWindow_Image6:Image;
        public var _QuestConfirmWindow_Image7:Image;
        public var _QuestConfirmWindow_Image8:Image;
        public var _QuestConfirmWindow_Image9:Image;
        private var _1985952972_swf_stack0_yes:MovieClipLoaderAsset;
        private var _1479771291acceptBtnOff:Image;
        private var _1987800014_swf_stack2_yes:MovieClipLoaderAsset;
        private var _227002312confirmCanvas:Canvas;
        private var _462293789questComment:Text;
        private var primaryRemarkCancel:Object;
        private var _1657768674_swf_stack5_close:MovieClipLoaderAsset;
        private var _embed_mxml__swf_home_unit_status_icon_icon_money_swf_196506313:Class;
        private var _1238308482grid2_tab:Label;
        private var primaryRemarkClear:Object;
        private var _296854193questReward:Text;
        private var _351519750_swf_stack2_no:MovieClipLoaderAsset;
        private var _1240148938grid4_mes:Label;
        private var _1892246050_swf_stack1_close:MovieClipLoaderAsset;
        private var _98622892grid2:GridRow;
        public var _QuestConfirmWindow_Text1:Text;
        public var _QuestConfirmWindow_Text2:Text;
        public var _QuestConfirmWindow_Text3:Text;
        public var _QuestConfirmWindow_Text4:Text;
        public var _QuestConfirmWindow_Text5:Text;
        public var _QuestConfirmWindow_Text6:Text;
        public var _QuestConfirmWindow_Text7:Text;
        public var _QuestConfirmWindow_Text8:Text;
        var _watchers:Array;
        private var primaryRemarkOrders:Object;
        private var _117238688_swf_stack3_close:MovieClipLoaderAsset;
        private var questData:Object;
        private var _770264993_swf_stack4_close:MovieClipLoaderAsset;
        private var _1236461440grid0_tab:Label;
        var _bindingsBeginWithWord:Object;
        private var _1239232003grid3_tab:Label;
        private var _486222035windowViewStack:ViewStack;
        private var _351579332_swf_stack0_no:MovieClipLoaderAsset;
        var _bindings:Array;
        private var _documentDescriptor_:UIComponentDescriptor;
        private static const WINDOW_HT:int = 310;
        private static const BUTTON2_X:int = 325;
        private static const WINDOW_X:int = 350;
        private static const BUTTON_X:int = 490;
        private static const BUTTON_Y:int = 490;
        private static const WINDOW_Y:int = 230;
        public static const QUEST_ACCEPT_CANCEL:String = "questAcceptCancel";
        public static const QUEST_COMPLETE_FINISH:String = "questCompleteFinish";
        private static const BUTTON2_Y:int = 330;
        private static const WINDOW2_Y:int = 180;
        public static const QUEST_ACCEPT:String = "questAccept";
        public static const REMOVE_SWF:String = "questConfirmWindow/removeSWF";
        private static const WINDOW2_HT:int = 200;
        public static const QUEST_ACCEPT_FINISH:String = "questAcceptFinish";
        public static const BUTTON_ENABLE:String = "buttonEnable";
        private static const WINDOW2_WD:int = 300;
        private static const WINDOW2_X:int = 230;
        public static const QUEST_ACCEPT_CANCEL_CASE_BY_MARIA_QUEST:String = "questAcceptCancelCaseByMariaQuest";
        public static const QUEST_DECLINE_FINISH:String = "questDeclineFinish";
        private static var _watcherSetupUtil:IWatcherSetupUtil;
        public static const QUEST_CANCEL_FINISH:String = "questCancelFinish";
        private static const WINDOW_WD:int = 390;

        public function QuestConfirmWindow()
        {
            _documentDescriptor_ = new UIComponentDescriptor({type:Canvas, propertiesFactory:function () : Object
            {
                return {childDescriptors:[new UIComponentDescriptor({type:Canvas, id:"windowLayer"}), new UIComponentDescriptor({type:Image, id:"acceptBtnOff", propertiesFactory:function () : Object
                {
                    return {x:610, y:211, source:_embed_mxml__swf_home_city_button_onmyou_off_swf_1992088147, visible:true};
                }// end function
                }), new UIComponentDescriptor({type:Image, id:"_QuestConfirmWindow_Image2"}), new UIComponentDescriptor({type:Canvas, id:"confirmCanvas", propertiesFactory:function () : Object
                {
                    return {childDescriptors:[new UIComponentDescriptor({type:Box, id:"Top", stylesFactory:function () : void
                    {
                        this.verticalAlign = "middle";
                        return;
                    }// end function
                    , propertiesFactory:function () : Object
                    {
                        return {childDescriptors:[new UIComponentDescriptor({type:Text, id:"_QuestConfirmWindow_Text1", stylesFactory:function () : void
                        {
                            this.fontSize = 14;
                            this.leading = 0;
                            return;
                        }// end function
                        })]};
                    }// end function
                    }), new UIComponentDescriptor({type:Grid, stylesFactory:function () : void
                    {
                        this.horizontalGap = -1;
                        this.verticalGap = -1;
                        return;
                    }// end function
                    , propertiesFactory:function () : Object
                    {
                        return {x:370, y:300, childDescriptors:[new UIComponentDescriptor({type:GridRow, id:"grid0", propertiesFactory:function () : Object
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
                                return {childDescriptors:[new UIComponentDescriptor({type:Label, id:"grid0_tab", stylesFactory:function () : void
                                {
                                    this.fontSize = 14;
                                    this.textAlign = "center";
                                    this.color = 15658734;
                                    return;
                                }// end function
                                , propertiesFactory:function () : Object
                                {
                                    return {width:100};
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
                                return {childDescriptors:[new UIComponentDescriptor({type:Label, id:"grid0_mes", stylesFactory:function () : void
                                {
                                    this.fontSize = 14;
                                    this.textIndent = 8;
                                    this.color = 0;
                                    return;
                                }// end function
                                , propertiesFactory:function () : Object
                                {
                                    return {width:245};
                                }// end function
                                })]};
                            }// end function
                            })]};
                        }// end function
                        }), new UIComponentDescriptor({type:GridRow, id:"grid2", propertiesFactory:function () : Object
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
                                return {childDescriptors:[new UIComponentDescriptor({type:Label, id:"grid2_tab", stylesFactory:function () : void
                                {
                                    this.fontSize = 14;
                                    this.textAlign = "center";
                                    this.color = 15658734;
                                    return;
                                }// end function
                                , propertiesFactory:function () : Object
                                {
                                    return {width:100};
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
                                return {childDescriptors:[new UIComponentDescriptor({type:Label, id:"grid2_mes", stylesFactory:function () : void
                                {
                                    this.fontSize = 14;
                                    this.textIndent = 8;
                                    this.color = 0;
                                    return;
                                }// end function
                                , propertiesFactory:function () : Object
                                {
                                    return {width:245};
                                }// end function
                                })]};
                            }// end function
                            })]};
                        }// end function
                        }), new UIComponentDescriptor({type:GridRow, id:"grid3", propertiesFactory:function () : Object
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
                                return {childDescriptors:[new UIComponentDescriptor({type:Label, id:"grid3_tab", stylesFactory:function () : void
                                {
                                    this.fontSize = 14;
                                    this.textAlign = "center";
                                    this.color = 15658734;
                                    return;
                                }// end function
                                , propertiesFactory:function () : Object
                                {
                                    return {width:100};
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
                                return {childDescriptors:[new UIComponentDescriptor({type:Label, id:"grid3_mes", stylesFactory:function () : void
                                {
                                    this.fontSize = 14;
                                    this.textIndent = 8;
                                    this.color = 0;
                                    return;
                                }// end function
                                , propertiesFactory:function () : Object
                                {
                                    return {width:245};
                                }// end function
                                })]};
                            }// end function
                            })]};
                        }// end function
                        }), new UIComponentDescriptor({type:GridRow, id:"grid4", propertiesFactory:function () : Object
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
                                return {childDescriptors:[new UIComponentDescriptor({type:Label, id:"grid4_tab", stylesFactory:function () : void
                                {
                                    this.fontSize = 14;
                                    this.textAlign = "center";
                                    this.color = 15658734;
                                    return;
                                }// end function
                                , propertiesFactory:function () : Object
                                {
                                    return {width:100};
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
                                return {childDescriptors:[new UIComponentDescriptor({type:Label, id:"grid4_mes", stylesFactory:function () : void
                                {
                                    this.fontSize = 14;
                                    this.textIndent = 8;
                                    this.color = 0;
                                    return;
                                }// end function
                                , propertiesFactory:function () : Object
                                {
                                    return {width:245};
                                }// end function
                                })]};
                            }// end function
                            })]};
                        }// end function
                        })]};
                    }// end function
                    }), new UIComponentDescriptor({type:ViewStack, id:"windowViewStack", propertiesFactory:function () : Object
                    {
                        return {selectedIndex:0, childDescriptors:[new UIComponentDescriptor({type:Canvas, propertiesFactory:function () : Object
                        {
                            return {childDescriptors:[new UIComponentDescriptor({type:Text, id:"_QuestConfirmWindow_Text2", propertiesFactory:function () : Object
                            {
                                return {styleName:"DealTitle"};
                            }// end function
                            }), new UIComponentDescriptor({type:Text, id:"_QuestConfirmWindow_Text3", stylesFactory:function () : void
                            {
                                this.fontSize = 14;
                                return;
                            }// end function
                            , propertiesFactory:function () : Object
                            {
                                return {x:473, y:455};
                            }// end function
                            }), new UIComponentDescriptor({type:Image, id:"_QuestConfirmWindow_Image3", events:{click:"___QuestConfirmWindow_Image3_click"}}), new UIComponentDescriptor({type:Image, id:"_QuestConfirmWindow_Image4", events:{click:"___QuestConfirmWindow_Image4_click"}})]};
                        }// end function
                        }), new UIComponentDescriptor({type:Canvas, propertiesFactory:function () : Object
                        {
                            return {childDescriptors:[new UIComponentDescriptor({type:Text, id:"_QuestConfirmWindow_Text4", propertiesFactory:function () : Object
                            {
                                return {styleName:"DealTitle"};
                            }// end function
                            }), new UIComponentDescriptor({type:Image, id:"_QuestConfirmWindow_Image5", events:{click:"___QuestConfirmWindow_Image5_click"}})]};
                        }// end function
                        }), new UIComponentDescriptor({type:Canvas, propertiesFactory:function () : Object
                        {
                            return {childDescriptors:[new UIComponentDescriptor({type:Text, id:"_QuestConfirmWindow_Text5", propertiesFactory:function () : Object
                            {
                                return {styleName:"DealTitle"};
                            }// end function
                            }), new UIComponentDescriptor({type:Text, id:"_QuestConfirmWindow_Text6", stylesFactory:function () : void
                            {
                                this.fontSize = 14;
                                return;
                            }// end function
                            , propertiesFactory:function () : Object
                            {
                                return {x:473, y:455};
                            }// end function
                            }), new UIComponentDescriptor({type:Image, id:"_QuestConfirmWindow_Image6", events:{click:"___QuestConfirmWindow_Image6_click"}}), new UIComponentDescriptor({type:Image, id:"_QuestConfirmWindow_Image7", events:{click:"___QuestConfirmWindow_Image7_click"}})]};
                        }// end function
                        }), new UIComponentDescriptor({type:Canvas, propertiesFactory:function () : Object
                        {
                            return {childDescriptors:[new UIComponentDescriptor({type:Text, id:"_QuestConfirmWindow_Text7", propertiesFactory:function () : Object
                            {
                                return {styleName:"DealTitle"};
                            }// end function
                            }), new UIComponentDescriptor({type:Text, id:"_QuestConfirmWindow_Text8", stylesFactory:function () : void
                            {
                                this.fontSize = 14;
                                return;
                            }// end function
                            }), new UIComponentDescriptor({type:Image, id:"_QuestConfirmWindow_Image8", events:{click:"___QuestConfirmWindow_Image8_click"}})]};
                        }// end function
                        }), new UIComponentDescriptor({type:Canvas, propertiesFactory:function () : Object
                        {
                            return {childDescriptors:[new UIComponentDescriptor({type:VBox, id:"_QuestConfirmWindow_VBox1", propertiesFactory:function () : Object
                            {
                                return {childDescriptors:[new UIComponentDescriptor({type:Text, id:"questComment", stylesFactory:function () : void
                                {
                                    this.fontSize = 14;
                                    return;
                                }// end function
                                }), new UIComponentDescriptor({type:Text, id:"questReward", stylesFactory:function () : void
                                {
                                    this.fontSize = 14;
                                    return;
                                }// end function
                                }), new UIComponentDescriptor({type:Text, id:"_QuestConfirmWindow_Text11", stylesFactory:function () : void
                                {
                                    this.fontSize = 14;
                                    return;
                                }// end function
                                })]};
                            }// end function
                            }), new UIComponentDescriptor({type:Text, id:"_QuestConfirmWindow_Text12", propertiesFactory:function () : Object
                            {
                                return {styleName:"DealTitle"};
                            }// end function
                            }), new UIComponentDescriptor({type:Image, id:"_QuestConfirmWindow_Image9", events:{click:"___QuestConfirmWindow_Image9_click"}})]};
                        }// end function
                        }), new UIComponentDescriptor({type:Canvas, propertiesFactory:function () : Object
                        {
                            return {childDescriptors:[new UIComponentDescriptor({type:Text, id:"_QuestConfirmWindow_Text13", propertiesFactory:function () : Object
                            {
                                return {styleName:"DealTitle"};
                            }// end function
                            }), new UIComponentDescriptor({type:Image, id:"_QuestConfirmWindow_Image10", events:{click:"___QuestConfirmWindow_Image10_click"}, propertiesFactory:function () : Object
                            {
                                return {x:490, y:490};
                            }// end function
                            })]};
                        }// end function
                        })]};
                    }// end function
                    }), new UIComponentDescriptor({type:Image, id:"closeWindow", events:{click:"__closeWindow_click"}}), new UIComponentDescriptor({type:Image, id:"money", propertiesFactory:function () : Object
                    {
                        return {source:_embed_mxml__swf_home_unit_status_icon_icon_money_swf_196506313};
                    }// end function
                    })]};
                }// end function
                })]};
            }// end function
            });
            _defArray = new Array();
            _1075873300_swf_window = new Viking.EmbedSwfWindowCommon();
            _1985952972_swf_stack0_yes = new Viking.EmbedSwfButtonCommon();
            _351579332_swf_stack0_no = new Viking.EmbedSwfButtonCommon();
            _1892246050_swf_stack1_close = new Viking.EmbedSwfButtonCommon();
            _1987800014_swf_stack2_yes = new Viking.EmbedSwfButtonCommon();
            _351519750_swf_stack2_no = new Viking.EmbedSwfButtonCommon();
            _117238688_swf_stack3_close = new Viking.EmbedSwfButtonCommon();
            _770264993_swf_stack4_close = new Viking.EmbedSwfButtonCommon();
            _1657768674_swf_stack5_close = new Viking.EmbedSwfButtonCommon();
            _1218643219_swf_close_window = new Viking.EmbedSwfButtonCloseWindow();
            primaryRemarkConfirm = {2:Utils.i18n("questConfirmOrderQuestBlue"), 3:Utils.i18n("questConfirmOrderQuestRed"), 4:Utils.i18n("questConfirmOrderQuestWhite"), 5:Utils.i18n("questConfirmOrderQuestBlack")};
            primaryRemarkCancel = {2:Utils.i18n("questConfirmOrderCancelBlue"), 3:Utils.i18n("questConfirmOrderCancelRed"), 4:Utils.i18n("questConfirmOrderCancelWhite"), 5:Utils.i18n("questConfirmOrderCancelBlack")};
            primaryRemarkClear = {2:Utils.i18n("questConfirmQuestCompleteBlue"), 3:Utils.i18n("questConfirmQuestCompleteRed"), 4:Utils.i18n("questConfirmQuestCompleteWhite"), 5:Utils.i18n("questConfirmQuestCompleteBlack")};
            primaryRemarkOrders = {2:Utils.i18n("questConfirmOrderQuestConfBlue"), 3:Utils.i18n("questConfirmOrderQuestConfRed"), 4:Utils.i18n("questConfirmOrderQuestConfWhite"), 5:Utils.i18n("questConfirmOrderQuestConfBlack")};
            _embed_mxml__swf_home_city_button_onmyou_off_swf_1992088147 = QuestConfirmWindow__embed_mxml__swf_home_city_button_onmyou_off_swf_1992088147;
            _embed_mxml__swf_home_unit_status_icon_icon_money_swf_196506313 = QuestConfirmWindow__embed_mxml__swf_home_unit_status_icon_icon_money_swf_196506313;
            _bindings = [];
            _watchers = [];
            _bindingsByDestination = {};
            _bindingsBeginWithWord = {};
            mx_internal::_document = this;
            this.addEventListener("creationComplete", ___QuestConfirmWindow_Canvas1_creationComplete);
            return;
        }// end function

        public function get grid3_tab() : Label
        {
            return this._1239232003grid3_tab;
        }// end function

        public function set grid3_tab(param1:Label) : void
        {
            var _loc_2:* = this._1239232003grid3_tab;
            if (_loc_2 !== param1)
            {
                this._1239232003grid3_tab = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "grid3_tab", _loc_2, param1));
            }
            return;
        }// end function

        public function get closeWindow() : Image
        {
            return this._277236744closeWindow;
        }// end function

        public function set closeWindow(param1:Image) : void
        {
            var _loc_2:* = this._277236744closeWindow;
            if (_loc_2 !== param1)
            {
                this._277236744closeWindow = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "closeWindow", _loc_2, param1));
            }
            return;
        }// end function

        private function onDecline() : void
        {
            dispatchEvent(new Event(QUEST_DECLINE_FINISH));
            dispatchEvent(new Event(QUEST_CANCEL_FINISH));
            onAcceptFinish();
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

        public function ___QuestConfirmWindow_Image8_click(event:MouseEvent) : void
        {
            onAcceptFinish();
            return;
        }// end function

        public function get confirmCanvas() : Canvas
        {
            return this._227002312confirmCanvas;
        }// end function

        public function set questComment(param1:Text) : void
        {
            var _loc_2:* = this._462293789questComment;
            if (_loc_2 !== param1)
            {
                this._462293789questComment = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "questComment", _loc_2, param1));
            }
            return;
        }// end function

        public function get grid3_mes() : Label
        {
            return this._1239225417grid3_mes;
        }// end function

        private function get _swf_stack3_close() : MovieClipLoaderAsset
        {
            return this._117238688_swf_stack3_close;
        }// end function

        public function set Top(param1:Box) : void
        {
            var _loc_2:* = this._84277Top;
            if (_loc_2 !== param1)
            {
                this._84277Top = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "Top", _loc_2, param1));
            }
            return;
        }// end function

        public function set confirmCanvas(param1:Canvas) : void
        {
            var _loc_2:* = this._227002312confirmCanvas;
            if (_loc_2 !== param1)
            {
                this._227002312confirmCanvas = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "confirmCanvas", _loc_2, param1));
            }
            return;
        }// end function

        public function ___QuestConfirmWindow_Image5_click(event:MouseEvent) : void
        {
            onAcceptFinish();
            return;
        }// end function

        private function set _swf_stack0_no(param1:MovieClipLoaderAsset) : void
        {
            var _loc_2:* = this._351579332_swf_stack0_no;
            if (_loc_2 !== param1)
            {
                this._351579332_swf_stack0_no = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "_swf_stack0_no", _loc_2, param1));
            }
            return;
        }// end function

        public function get grid2_tab() : Label
        {
            return this._1238308482grid2_tab;
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

        public function set grid3_mes(param1:Label) : void
        {
            var _loc_2:* = this._1239225417grid3_mes;
            if (_loc_2 !== param1)
            {
                this._1239225417grid3_mes = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "grid3_mes", _loc_2, param1));
            }
            return;
        }// end function

        private function set _dataArray(param1:ArrayCollection) : void
        {
            var _loc_2:* = this._1880045744_dataArray;
            if (_loc_2 !== param1)
            {
                this._1880045744_dataArray = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "_dataArray", _loc_2, param1));
            }
            return;
        }// end function

        public function get acceptBtnOff() : Image
        {
            return this._1479771291acceptBtnOff;
        }// end function

        public function onDeclineConfirm() : void
        {
            MovieClip(Loader(_swf_window.getChildAt(0)).content).gotoAndPlay("center_300x200");
            closeWindow.x = WINDOW2_X + WINDOW2_WD - 25;
            closeWindow.y = WINDOW2_Y;
            windowViewStack.selectedIndex = 3;
            grid0.visible = false;
            grid2.visible = false;
            grid3.visible = false;
            grid4.visible = false;
            setCommentStatus("");
            return;
        }// end function

        private function set topComment(param1:String) : void
        {
            var _loc_2:* = this._156601162topComment;
            if (_loc_2 !== param1)
            {
                this._156601162topComment = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "topComment", _loc_2, param1));
            }
            return;
        }// end function

        public function set factionId(param1:int) : void
        {
            _factionId = param1;
            return;
        }// end function

        public function __closeWindow_click(event:MouseEvent) : void
        {
            onCancel();
            return;
        }// end function

        public function get questReward() : Text
        {
            return this._296854193questReward;
        }// end function

        private function setQuestContent(param1:Object, param2:int = 100, param3:int = 200, param4:int = 300, param5:int = 400, param6:Boolean = true, param7:Boolean = true, param8:Boolean = true, param9:Boolean = true) : void
        {
            var _loc_10:int = 0;
            if (windowViewStack.selectedIndex == 5 && param1.kills && param1.kills > 0)
            {
                _loc_10 = 0;
                while (_loc_10 < param1.reward.length)
                {
                    
                    if (param1.reward[_loc_10])
                    {
                    }
                    _loc_10++;
                }
            }
            return;
        }// end function

        public function get money() : Image
        {
            return this._104079552money;
        }// end function

        private function set _swf_stack3_close(param1:MovieClipLoaderAsset) : void
        {
            var _loc_2:* = this._117238688_swf_stack3_close;
            if (_loc_2 !== param1)
            {
                this._117238688_swf_stack3_close = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "_swf_stack3_close", _loc_2, param1));
            }
            return;
        }// end function

        public function get grid2_mes() : Label
        {
            return this._1238301896grid2_mes;
        }// end function

        private function _QuestConfirmWindow_bindingExprs() : void
        {
            var _loc_1:* = undefined;
            _loc_1 = _swf_window;
            _loc_1 = topComment;
            _loc_1 = WINDOW_X;
            _loc_1 = WINDOW_Y;
            _loc_1 = WINDOW_WD;
            _loc_1 = Utils.i18n("generalShowDetail");
            _loc_1 = Utils.i18n("questConfirmOrderConf");
            _loc_1 = BUTTON_X - 65;
            _loc_1 = BUTTON_Y;
            _loc_1 = _swf_stack0_yes;
            _loc_1 = BUTTON_X + 65;
            _loc_1 = BUTTON_Y;
            _loc_1 = _swf_stack0_no;
            _loc_1 = WINDOW_X;
            _loc_1 = WINDOW_Y;
            _loc_1 = WINDOW_WD;
            _loc_1 = Utils.i18n("generalConfirmation");
            _loc_1 = BUTTON_X;
            _loc_1 = BUTTON_Y;
            _loc_1 = _swf_stack1_close;
            _loc_1 = WINDOW_X;
            _loc_1 = WINDOW_Y;
            _loc_1 = WINDOW_WD;
            _loc_1 = Utils.i18n("questConfirmQuestCancelTitle");
            _loc_1 = Utils.i18n("questConfirmQuestCancelConf");
            _loc_1 = BUTTON_X - 65;
            _loc_1 = BUTTON_Y;
            _loc_1 = _swf_stack2_yes;
            _loc_1 = BUTTON_X + 65;
            _loc_1 = BUTTON_Y;
            _loc_1 = _swf_stack2_no;
            _loc_1 = WINDOW2_X;
            _loc_1 = WINDOW2_Y;
            _loc_1 = WINDOW2_WD;
            _loc_1 = Utils.i18n("generalConfirmation");
            _loc_1 = WINDOW2_X + 60;
            _loc_1 = WINDOW2_Y + WINDOW2_HT / 2 - 16;
            _loc_1 = Utils.i18n("questConfirmOrderCancelComplete");
            _loc_1 = BUTTON2_X;
            _loc_1 = BUTTON2_Y;
            _loc_1 = _swf_stack3_close;
            _loc_1 = WINDOW_X + 20;
            _loc_1 = WINDOW_Y + 35;
            _loc_1 = Utils.i18n("questConfirmGetCompensation");
            _loc_1 = WINDOW_X;
            _loc_1 = WINDOW_Y;
            _loc_1 = WINDOW_WD;
            _loc_1 = Utils.i18n("questConfirmQuestCOmplete");
            _loc_1 = BUTTON_X;
            _loc_1 = BUTTON_Y;
            _loc_1 = _swf_stack4_close;
            _loc_1 = WINDOW_X;
            _loc_1 = WINDOW_Y;
            _loc_1 = WINDOW_WD;
            _loc_1 = Utils.i18n("questConfirmQuestConf");
            _loc_1 = _swf_stack5_close;
            _loc_1 = WINDOW_X + WINDOW_WD - 25;
            _loc_1 = WINDOW_Y;
            _loc_1 = _swf_close_window;
            return;
        }// end function

        private function get _swf_stack0_yes() : MovieClipLoaderAsset
        {
            return this._1985952972_swf_stack0_yes;
        }// end function

        public function ___QuestConfirmWindow_Image10_click(event:MouseEvent) : void
        {
            onClose();
            return;
        }// end function

        public function get windowViewStack() : ViewStack
        {
            return this._486222035windowViewStack;
        }// end function

        private function get _swf_stack5_close() : MovieClipLoaderAsset
        {
            return this._1657768674_swf_stack5_close;
        }// end function

        private function onCompleteFinish() : void
        {
            this.visible = false;
            dispatchEvent(new Event(QUEST_COMPLETE_FINISH));
            dispatchEvent(new Event(REMOVE_SWF));
            return;
        }// end function

        public function ___QuestConfirmWindow_Image7_click(event:MouseEvent) : void
        {
            onClose();
            return;
        }// end function

        public function onAcceptConfirm(param1:int) : void
        {
            windowViewStack.selectedIndex = 1;
            grid0.visible = true;
            grid0_tab.text = Utils.i18n("generalRequest");
            grid0_mes.text = questData.questName;
            grid2.visible = true;
            grid2_tab.text = Utils.i18n("checkQuestCompensation");
            grid2_mes.text = makeRewardText(484, 331);
            grid3.visible = true;
            grid3_tab.text = Utils.i18n("checkQuestConditions");
            grid3_mes.text = questData.condition;
            grid4.visible = false;
            setCommentStatus(primaryRemarkOrders[param1]);
            return;
        }// end function

        public function set grid0_tab(param1:Label) : void
        {
            var _loc_2:* = this._1236461440grid0_tab;
            if (_loc_2 !== param1)
            {
                this._1236461440grid0_tab = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "grid0_tab", _loc_2, param1));
            }
            return;
        }// end function

        public function set grid4_tab(param1:Label) : void
        {
            var _loc_2:* = this._1240155524grid4_tab;
            if (_loc_2 !== param1)
            {
                this._1240155524grid4_tab = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "grid4_tab", _loc_2, param1));
            }
            return;
        }// end function

        public function set grid2_tab(param1:Label) : void
        {
            var _loc_2:* = this._1238308482grid2_tab;
            if (_loc_2 !== param1)
            {
                this._1238308482grid2_tab = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "grid2_tab", _loc_2, param1));
            }
            return;
        }// end function

        public function init(param1:String, param2:Object) : void
        {
            questData = param2;
            MovieClip(Loader(_swf_window.getChildAt(0)).content).gotoAndPlay("right_390x310");
            closeWindow.x = WINDOW_X + WINDOW_WD - 25;
            closeWindow.y = WINDOW_Y;
            acceptBtnOff.visible = false;
            money.visible = false;
            switch(param1)
            {
                case "questAccept":
                {
                    windowViewStack.selectedIndex = 0;
                    grid0.visible = true;
                    grid0_tab.text = Utils.i18n("generalRequest");
                    grid0_mes.text = questData.questName;
                    grid2.visible = true;
                    grid2_tab.text = Utils.i18n("checkQuestConditions");
                    grid2_mes.text = questData.condition;
                    grid3.visible = false;
                    grid4.visible = false;
                    setCommentStatus(questData.description);
                    acceptBtnOff.visible = true;
                    break;
                }
                case "questConfirm":
                {
                    windowViewStack.selectedIndex = 5;
                    grid0.visible = true;
                    grid0_tab.text = Utils.i18n("generalRequest");
                    grid0_mes.text = questData.questName;
                    grid2.visible = true;
                    grid2_tab.text = Utils.i18n("checkQuestCompensation");
                    grid2_mes.text = makeRewardText(484, 331);
                    grid3.visible = true;
                    grid3_tab.text = Utils.i18n("checkQuestConditions");
                    grid3_mes.text = questData.condition;
                    if (questData.kills < 0)
                    {
                        grid4.visible = false;
                    }
                    else
                    {
                        grid4.visible = true;
                        grid4_tab.text = Utils.i18n("generalLillsCount");
                        grid4_mes.text = Utils.i18n("checkQuestKillsCount", questData.kills);
                    }
                    setCommentStatus(primaryRemarkConfirm[_factionId]);
                    break;
                }
                case "questDecline":
                {
                    windowViewStack.selectedIndex = 2;
                    grid0.visible = true;
                    grid0_tab.text = Utils.i18n("generalRequest");
                    grid0_mes.text = questData.questName;
                    grid2.visible = true;
                    grid2_tab.text = Utils.i18n("checkQuestCompensation");
                    grid2_mes.text = makeRewardText(484, 331);
                    grid3.visible = true;
                    grid3_tab.text = Utils.i18n("checkQuestConditions");
                    grid3_mes.text = questData.condition;
                    grid4.visible = false;
                    setCommentStatus(primaryRemarkCancel[_factionId]);
                    break;
                }
                case "questClear":
                {
                    windowViewStack.selectedIndex = 4;
                    grid0.visible = false;
                    grid2.visible = false;
                    grid3.visible = false;
                    grid4.visible = false;
                    setCommentStatus(primaryRemarkClear[_factionId]);
                    questComment.text = Utils.i18n("questConfirmQuestComplete", questData.questName);
                    questReward.text = makeRewardText(371, 296);
                    break;
                }
                case "questConfirmOther":
                {
                    windowViewStack.selectedIndex = 5;
                    setQuestContent(questData, 57, 89, 122, 152);
                    topComment = "";
                    break;
                }
                default:
                {
                    break;
                }
            }
            return;
        }// end function

        private function get _swf_close_window() : MovieClipLoaderAsset
        {
            return this._1218643219_swf_close_window;
        }// end function

        public function get questComment() : Text
        {
            return this._462293789questComment;
        }// end function

        public function ___QuestConfirmWindow_Canvas1_creationComplete(event:FlexEvent) : void
        {
            _init();
            return;
        }// end function

        public function ___QuestConfirmWindow_Image4_click(event:MouseEvent) : void
        {
            onCancel();
            return;
        }// end function

        public function get Top() : Box
        {
            return this._84277Top;
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

        private function onCancel() : void
        {
            this.visible = false;
            if (questData.clientType != "npc_01.png")
            {
                dispatchEvent(new Event(QUEST_ACCEPT_CANCEL));
            }
            else
            {
                dispatchEvent(new Event(QUEST_ACCEPT_CANCEL_CASE_BY_MARIA_QUEST));
            }
            return;
        }// end function

        private function onAcceptFinish() : void
        {
            this.visible = false;
            dispatchEvent(new Event(QUEST_ACCEPT_FINISH));
            return;
        }// end function

        private function get _swf_stack0_no() : MovieClipLoaderAsset
        {
            return this._351579332_swf_stack0_no;
        }// end function

        public function get windowLayer() : Canvas
        {
            return this._1896677185windowLayer;
        }// end function

        private function set _swf_stack4_close(param1:MovieClipLoaderAsset) : void
        {
            var _loc_2:* = this._770264993_swf_stack4_close;
            if (_loc_2 !== param1)
            {
                this._770264993_swf_stack4_close = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "_swf_stack4_close", _loc_2, param1));
            }
            return;
        }// end function

        private function get _dataArray() : ArrayCollection
        {
            return this._1880045744_dataArray;
        }// end function

        private function get topComment() : String
        {
            return this._156601162topComment;
        }// end function

        public function set grid0(param1:GridRow) : void
        {
            var _loc_2:* = this._98622890grid0;
            if (_loc_2 !== param1)
            {
                this._98622890grid0 = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "grid0", _loc_2, param1));
            }
            return;
        }// end function

        private function onClose() : void
        {
            this.visible = false;
            dispatchEvent(new Event(BUTTON_ENABLE));
            dispatchEvent(new Event(REMOVE_SWF));
            return;
        }// end function

        public function set grid4(param1:GridRow) : void
        {
            var _loc_2:* = this._98622894grid4;
            if (_loc_2 !== param1)
            {
                this._98622894grid4 = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "grid4", _loc_2, param1));
            }
            return;
        }// end function

        public function set grid3(param1:GridRow) : void
        {
            var _loc_2:* = this._98622893grid3;
            if (_loc_2 !== param1)
            {
                this._98622893grid3 = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "grid3", _loc_2, param1));
            }
            return;
        }// end function

        public function set questReward(param1:Text) : void
        {
            var _loc_2:* = this._296854193questReward;
            if (_loc_2 !== param1)
            {
                this._296854193questReward = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "questReward", _loc_2, param1));
            }
            return;
        }// end function

        public function set grid2(param1:GridRow) : void
        {
            var _loc_2:* = this._98622892grid2;
            if (_loc_2 !== param1)
            {
                this._98622892grid2 = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "grid2", _loc_2, param1));
            }
            return;
        }// end function

        public function ___QuestConfirmWindow_Image9_click(event:MouseEvent) : void
        {
            onCompleteFinish();
            return;
        }// end function

        public function get grid0_tab() : Label
        {
            return this._1236461440grid0_tab;
        }// end function

        public function set money(param1:Image) : void
        {
            var _loc_2:* = this._104079552money;
            if (_loc_2 !== param1)
            {
                this._104079552money = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "money", _loc_2, param1));
            }
            return;
        }// end function

        private function makeRewardText(param1:int, param2:int) : String
        {
            var _loc_4:RegExp = null;
            var _loc_3:* = new String();
            i = 0;
            while (i < questData.reward.length)
            {
                
                if (questData.reward[i])
                {
                    _loc_3 = _loc_3 + questData.reward[i];
                }
                var _loc_6:* = i + 1;
                i = _loc_6;
            }
            if (_loc_3.charAt(0) == "$")
            {
                _loc_4 = /\$""\$/;
                _loc_3 = _loc_3.replace(_loc_4, "　 ");
                money.x = param1;
                money.y = param2;
                money.visible = true;
                return _loc_3;
            }
            money.visible = false;
            return _loc_3;
        }// end function

        public function get grid4_tab() : Label
        {
            return this._1240155524grid4_tab;
        }// end function

        public function set grid0_mes(param1:Label) : void
        {
            var _loc_2:* = this._1236454854grid0_mes;
            if (_loc_2 !== param1)
            {
                this._1236454854grid0_mes = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "grid0_mes", _loc_2, param1));
            }
            return;
        }// end function

        public function set grid4_mes(param1:Label) : void
        {
            var _loc_2:* = this._1240148938grid4_mes;
            if (_loc_2 !== param1)
            {
                this._1240148938grid4_mes = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "grid4_mes", _loc_2, param1));
            }
            return;
        }// end function

        private function set _swf_stack2_yes(param1:MovieClipLoaderAsset) : void
        {
            var _loc_2:* = this._1987800014_swf_stack2_yes;
            if (_loc_2 !== param1)
            {
                this._1987800014_swf_stack2_yes = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "_swf_stack2_yes", _loc_2, param1));
            }
            return;
        }// end function

        private function _QuestConfirmWindow_bindingsSetup() : Array
        {
            var binding:Binding;
            var result:Array;
            binding = new Binding(this, function () : Object
            {
                return _swf_window;
            }// end function
            , function (param1:Object) : void
            {
                _QuestConfirmWindow_Image2.source = param1;
                return;
            }// end function
            , "_QuestConfirmWindow_Image2.source");
            result[0] = binding;
            binding = new Binding(this, function () : String
            {
                var _loc_1:* = topComment;
                var _loc_2:* = _loc_1 == undefined ? (null) : (String(_loc_1));
                return _loc_2;
            }// end function
            , function (param1:String) : void
            {
                _QuestConfirmWindow_Text1.text = param1;
                return;
            }// end function
            , "_QuestConfirmWindow_Text1.text");
            result[1] = binding;
            binding = new Binding(this, function () : Number
            {
                return WINDOW_X;
            }// end function
            , function (param1:Number) : void
            {
                _QuestConfirmWindow_Text2.x = param1;
                return;
            }// end function
            , "_QuestConfirmWindow_Text2.x");
            result[2] = binding;
            binding = new Binding(this, function () : Number
            {
                return WINDOW_Y;
            }// end function
            , function (param1:Number) : void
            {
                _QuestConfirmWindow_Text2.y = param1;
                return;
            }// end function
            , "_QuestConfirmWindow_Text2.y");
            result[3] = binding;
            binding = new Binding(this, function () : Number
            {
                return WINDOW_WD;
            }// end function
            , function (param1:Number) : void
            {
                _QuestConfirmWindow_Text2.width = param1;
                return;
            }// end function
            , "_QuestConfirmWindow_Text2.width");
            result[4] = binding;
            binding = new Binding(this, function () : String
            {
                var _loc_1:* = Utils.i18n("generalShowDetail");
                var _loc_2:* = _loc_1 == undefined ? (null) : (String(_loc_1));
                return _loc_2;
            }// end function
            , function (param1:String) : void
            {
                _QuestConfirmWindow_Text2.text = param1;
                return;
            }// end function
            , "_QuestConfirmWindow_Text2.text");
            result[5] = binding;
            binding = new Binding(this, function () : String
            {
                var _loc_1:* = Utils.i18n("questConfirmOrderConf");
                var _loc_2:* = _loc_1 == undefined ? (null) : (String(_loc_1));
                return _loc_2;
            }// end function
            , function (param1:String) : void
            {
                _QuestConfirmWindow_Text3.text = param1;
                return;
            }// end function
            , "_QuestConfirmWindow_Text3.text");
            result[6] = binding;
            binding = new Binding(this, function () : Number
            {
                return BUTTON_X - 65;
            }// end function
            , function (param1:Number) : void
            {
                _QuestConfirmWindow_Image3.x = param1;
                return;
            }// end function
            , "_QuestConfirmWindow_Image3.x");
            result[7] = binding;
            binding = new Binding(this, function () : Number
            {
                return BUTTON_Y;
            }// end function
            , function (param1:Number) : void
            {
                _QuestConfirmWindow_Image3.y = param1;
                return;
            }// end function
            , "_QuestConfirmWindow_Image3.y");
            result[8] = binding;
            binding = new Binding(this, function () : Object
            {
                return _swf_stack0_yes;
            }// end function
            , function (param1:Object) : void
            {
                _QuestConfirmWindow_Image3.source = param1;
                return;
            }// end function
            , "_QuestConfirmWindow_Image3.source");
            result[9] = binding;
            binding = new Binding(this, function () : Number
            {
                return BUTTON_X + 65;
            }// end function
            , function (param1:Number) : void
            {
                _QuestConfirmWindow_Image4.x = param1;
                return;
            }// end function
            , "_QuestConfirmWindow_Image4.x");
            result[10] = binding;
            binding = new Binding(this, function () : Number
            {
                return BUTTON_Y;
            }// end function
            , function (param1:Number) : void
            {
                _QuestConfirmWindow_Image4.y = param1;
                return;
            }// end function
            , "_QuestConfirmWindow_Image4.y");
            result[11] = binding;
            binding = new Binding(this, function () : Object
            {
                return _swf_stack0_no;
            }// end function
            , function (param1:Object) : void
            {
                _QuestConfirmWindow_Image4.source = param1;
                return;
            }// end function
            , "_QuestConfirmWindow_Image4.source");
            result[12] = binding;
            binding = new Binding(this, function () : Number
            {
                return WINDOW_X;
            }// end function
            , function (param1:Number) : void
            {
                _QuestConfirmWindow_Text4.x = param1;
                return;
            }// end function
            , "_QuestConfirmWindow_Text4.x");
            result[13] = binding;
            binding = new Binding(this, function () : Number
            {
                return WINDOW_Y;
            }// end function
            , function (param1:Number) : void
            {
                _QuestConfirmWindow_Text4.y = param1;
                return;
            }// end function
            , "_QuestConfirmWindow_Text4.y");
            result[14] = binding;
            binding = new Binding(this, function () : Number
            {
                return WINDOW_WD;
            }// end function
            , function (param1:Number) : void
            {
                _QuestConfirmWindow_Text4.width = param1;
                return;
            }// end function
            , "_QuestConfirmWindow_Text4.width");
            result[15] = binding;
            binding = new Binding(this, function () : String
            {
                var _loc_1:* = Utils.i18n("generalConfirmation");
                var _loc_2:* = _loc_1 == undefined ? (null) : (String(_loc_1));
                return _loc_2;
            }// end function
            , function (param1:String) : void
            {
                _QuestConfirmWindow_Text4.text = param1;
                return;
            }// end function
            , "_QuestConfirmWindow_Text4.text");
            result[16] = binding;
            binding = new Binding(this, function () : Number
            {
                return BUTTON_X;
            }// end function
            , function (param1:Number) : void
            {
                _QuestConfirmWindow_Image5.x = param1;
                return;
            }// end function
            , "_QuestConfirmWindow_Image5.x");
            result[17] = binding;
            binding = new Binding(this, function () : Number
            {
                return BUTTON_Y;
            }// end function
            , function (param1:Number) : void
            {
                _QuestConfirmWindow_Image5.y = param1;
                return;
            }// end function
            , "_QuestConfirmWindow_Image5.y");
            result[18] = binding;
            binding = new Binding(this, function () : Object
            {
                return _swf_stack1_close;
            }// end function
            , function (param1:Object) : void
            {
                _QuestConfirmWindow_Image5.source = param1;
                return;
            }// end function
            , "_QuestConfirmWindow_Image5.source");
            result[19] = binding;
            binding = new Binding(this, function () : Number
            {
                return WINDOW_X;
            }// end function
            , function (param1:Number) : void
            {
                _QuestConfirmWindow_Text5.x = param1;
                return;
            }// end function
            , "_QuestConfirmWindow_Text5.x");
            result[20] = binding;
            binding = new Binding(this, function () : Number
            {
                return WINDOW_Y;
            }// end function
            , function (param1:Number) : void
            {
                _QuestConfirmWindow_Text5.y = param1;
                return;
            }// end function
            , "_QuestConfirmWindow_Text5.y");
            result[21] = binding;
            binding = new Binding(this, function () : Number
            {
                return WINDOW_WD;
            }// end function
            , function (param1:Number) : void
            {
                _QuestConfirmWindow_Text5.width = param1;
                return;
            }// end function
            , "_QuestConfirmWindow_Text5.width");
            result[22] = binding;
            binding = new Binding(this, function () : String
            {
                var _loc_1:* = Utils.i18n("questConfirmQuestCancelTitle");
                var _loc_2:* = _loc_1 == undefined ? (null) : (String(_loc_1));
                return _loc_2;
            }// end function
            , function (param1:String) : void
            {
                _QuestConfirmWindow_Text5.text = param1;
                return;
            }// end function
            , "_QuestConfirmWindow_Text5.text");
            result[23] = binding;
            binding = new Binding(this, function () : String
            {
                var _loc_1:* = Utils.i18n("questConfirmQuestCancelConf");
                var _loc_2:* = _loc_1 == undefined ? (null) : (String(_loc_1));
                return _loc_2;
            }// end function
            , function (param1:String) : void
            {
                _QuestConfirmWindow_Text6.text = param1;
                return;
            }// end function
            , "_QuestConfirmWindow_Text6.text");
            result[24] = binding;
            binding = new Binding(this, function () : Number
            {
                return BUTTON_X - 65;
            }// end function
            , function (param1:Number) : void
            {
                _QuestConfirmWindow_Image6.x = param1;
                return;
            }// end function
            , "_QuestConfirmWindow_Image6.x");
            result[25] = binding;
            binding = new Binding(this, function () : Number
            {
                return BUTTON_Y;
            }// end function
            , function (param1:Number) : void
            {
                _QuestConfirmWindow_Image6.y = param1;
                return;
            }// end function
            , "_QuestConfirmWindow_Image6.y");
            result[26] = binding;
            binding = new Binding(this, function () : Object
            {
                return _swf_stack2_yes;
            }// end function
            , function (param1:Object) : void
            {
                _QuestConfirmWindow_Image6.source = param1;
                return;
            }// end function
            , "_QuestConfirmWindow_Image6.source");
            result[27] = binding;
            binding = new Binding(this, function () : Number
            {
                return BUTTON_X + 65;
            }// end function
            , function (param1:Number) : void
            {
                _QuestConfirmWindow_Image7.x = param1;
                return;
            }// end function
            , "_QuestConfirmWindow_Image7.x");
            result[28] = binding;
            binding = new Binding(this, function () : Number
            {
                return BUTTON_Y;
            }// end function
            , function (param1:Number) : void
            {
                _QuestConfirmWindow_Image7.y = param1;
                return;
            }// end function
            , "_QuestConfirmWindow_Image7.y");
            result[29] = binding;
            binding = new Binding(this, function () : Object
            {
                return _swf_stack2_no;
            }// end function
            , function (param1:Object) : void
            {
                _QuestConfirmWindow_Image7.source = param1;
                return;
            }// end function
            , "_QuestConfirmWindow_Image7.source");
            result[30] = binding;
            binding = new Binding(this, function () : Number
            {
                return WINDOW2_X;
            }// end function
            , function (param1:Number) : void
            {
                _QuestConfirmWindow_Text7.x = param1;
                return;
            }// end function
            , "_QuestConfirmWindow_Text7.x");
            result[31] = binding;
            binding = new Binding(this, function () : Number
            {
                return WINDOW2_Y;
            }// end function
            , function (param1:Number) : void
            {
                _QuestConfirmWindow_Text7.y = param1;
                return;
            }// end function
            , "_QuestConfirmWindow_Text7.y");
            result[32] = binding;
            binding = new Binding(this, function () : Number
            {
                return WINDOW2_WD;
            }// end function
            , function (param1:Number) : void
            {
                _QuestConfirmWindow_Text7.width = param1;
                return;
            }// end function
            , "_QuestConfirmWindow_Text7.width");
            result[33] = binding;
            binding = new Binding(this, function () : String
            {
                var _loc_1:* = Utils.i18n("generalConfirmation");
                var _loc_2:* = _loc_1 == undefined ? (null) : (String(_loc_1));
                return _loc_2;
            }// end function
            , function (param1:String) : void
            {
                _QuestConfirmWindow_Text7.text = param1;
                return;
            }// end function
            , "_QuestConfirmWindow_Text7.text");
            result[34] = binding;
            binding = new Binding(this, function () : Number
            {
                return WINDOW2_X + 60;
            }// end function
            , function (param1:Number) : void
            {
                _QuestConfirmWindow_Text8.x = param1;
                return;
            }// end function
            , "_QuestConfirmWindow_Text8.x");
            result[35] = binding;
            binding = new Binding(this, function () : Number
            {
                return WINDOW2_Y + WINDOW2_HT / 2 - 16;
            }// end function
            , function (param1:Number) : void
            {
                _QuestConfirmWindow_Text8.y = param1;
                return;
            }// end function
            , "_QuestConfirmWindow_Text8.y");
            result[36] = binding;
            binding = new Binding(this, function () : String
            {
                var _loc_1:* = Utils.i18n("questConfirmOrderCancelComplete");
                var _loc_2:* = _loc_1 == undefined ? (null) : (String(_loc_1));
                return _loc_2;
            }// end function
            , function (param1:String) : void
            {
                _QuestConfirmWindow_Text8.text = param1;
                return;
            }// end function
            , "_QuestConfirmWindow_Text8.text");
            result[37] = binding;
            binding = new Binding(this, function () : Number
            {
                return BUTTON2_X;
            }// end function
            , function (param1:Number) : void
            {
                _QuestConfirmWindow_Image8.x = param1;
                return;
            }// end function
            , "_QuestConfirmWindow_Image8.x");
            result[38] = binding;
            binding = new Binding(this, function () : Number
            {
                return BUTTON2_Y;
            }// end function
            , function (param1:Number) : void
            {
                _QuestConfirmWindow_Image8.y = param1;
                return;
            }// end function
            , "_QuestConfirmWindow_Image8.y");
            result[39] = binding;
            binding = new Binding(this, function () : Object
            {
                return _swf_stack3_close;
            }// end function
            , function (param1:Object) : void
            {
                _QuestConfirmWindow_Image8.source = param1;
                return;
            }// end function
            , "_QuestConfirmWindow_Image8.source");
            result[40] = binding;
            binding = new Binding(this, function () : Number
            {
                return WINDOW_X + 20;
            }// end function
            , function (param1:Number) : void
            {
                _QuestConfirmWindow_VBox1.x = param1;
                return;
            }// end function
            , "_QuestConfirmWindow_VBox1.x");
            result[41] = binding;
            binding = new Binding(this, function () : Number
            {
                return WINDOW_Y + 35;
            }// end function
            , function (param1:Number) : void
            {
                _QuestConfirmWindow_VBox1.y = param1;
                return;
            }// end function
            , "_QuestConfirmWindow_VBox1.y");
            result[42] = binding;
            binding = new Binding(this, function () : String
            {
                var _loc_1:* = Utils.i18n("questConfirmGetCompensation");
                var _loc_2:* = _loc_1 == undefined ? (null) : (String(_loc_1));
                return _loc_2;
            }// end function
            , function (param1:String) : void
            {
                _QuestConfirmWindow_Text11.text = param1;
                return;
            }// end function
            , "_QuestConfirmWindow_Text11.text");
            result[43] = binding;
            binding = new Binding(this, function () : Number
            {
                return WINDOW_X;
            }// end function
            , function (param1:Number) : void
            {
                _QuestConfirmWindow_Text12.x = param1;
                return;
            }// end function
            , "_QuestConfirmWindow_Text12.x");
            result[44] = binding;
            binding = new Binding(this, function () : Number
            {
                return WINDOW_Y;
            }// end function
            , function (param1:Number) : void
            {
                _QuestConfirmWindow_Text12.y = param1;
                return;
            }// end function
            , "_QuestConfirmWindow_Text12.y");
            result[45] = binding;
            binding = new Binding(this, function () : Number
            {
                return WINDOW_WD;
            }// end function
            , function (param1:Number) : void
            {
                _QuestConfirmWindow_Text12.width = param1;
                return;
            }// end function
            , "_QuestConfirmWindow_Text12.width");
            result[46] = binding;
            binding = new Binding(this, function () : String
            {
                var _loc_1:* = Utils.i18n("questConfirmQuestCOmplete");
                var _loc_2:* = _loc_1 == undefined ? (null) : (String(_loc_1));
                return _loc_2;
            }// end function
            , function (param1:String) : void
            {
                _QuestConfirmWindow_Text12.text = param1;
                return;
            }// end function
            , "_QuestConfirmWindow_Text12.text");
            result[47] = binding;
            binding = new Binding(this, function () : Number
            {
                return BUTTON_X;
            }// end function
            , function (param1:Number) : void
            {
                _QuestConfirmWindow_Image9.x = param1;
                return;
            }// end function
            , "_QuestConfirmWindow_Image9.x");
            result[48] = binding;
            binding = new Binding(this, function () : Number
            {
                return BUTTON_Y;
            }// end function
            , function (param1:Number) : void
            {
                _QuestConfirmWindow_Image9.y = param1;
                return;
            }// end function
            , "_QuestConfirmWindow_Image9.y");
            result[49] = binding;
            binding = new Binding(this, function () : Object
            {
                return _swf_stack4_close;
            }// end function
            , function (param1:Object) : void
            {
                _QuestConfirmWindow_Image9.source = param1;
                return;
            }// end function
            , "_QuestConfirmWindow_Image9.source");
            result[50] = binding;
            binding = new Binding(this, function () : Number
            {
                return WINDOW_X;
            }// end function
            , function (param1:Number) : void
            {
                _QuestConfirmWindow_Text13.x = param1;
                return;
            }// end function
            , "_QuestConfirmWindow_Text13.x");
            result[51] = binding;
            binding = new Binding(this, function () : Number
            {
                return WINDOW_Y;
            }// end function
            , function (param1:Number) : void
            {
                _QuestConfirmWindow_Text13.y = param1;
                return;
            }// end function
            , "_QuestConfirmWindow_Text13.y");
            result[52] = binding;
            binding = new Binding(this, function () : Number
            {
                return WINDOW_WD;
            }// end function
            , function (param1:Number) : void
            {
                _QuestConfirmWindow_Text13.width = param1;
                return;
            }// end function
            , "_QuestConfirmWindow_Text13.width");
            result[53] = binding;
            binding = new Binding(this, function () : String
            {
                var _loc_1:* = Utils.i18n("questConfirmQuestConf");
                var _loc_2:* = _loc_1 == undefined ? (null) : (String(_loc_1));
                return _loc_2;
            }// end function
            , function (param1:String) : void
            {
                _QuestConfirmWindow_Text13.text = param1;
                return;
            }// end function
            , "_QuestConfirmWindow_Text13.text");
            result[54] = binding;
            binding = new Binding(this, function () : Object
            {
                return _swf_stack5_close;
            }// end function
            , function (param1:Object) : void
            {
                _QuestConfirmWindow_Image10.source = param1;
                return;
            }// end function
            , "_QuestConfirmWindow_Image10.source");
            result[55] = binding;
            binding = new Binding(this, function () : Number
            {
                return WINDOW_X + WINDOW_WD - 25;
            }// end function
            , function (param1:Number) : void
            {
                closeWindow.x = param1;
                return;
            }// end function
            , "closeWindow.x");
            result[56] = binding;
            binding = new Binding(this, function () : Number
            {
                return WINDOW_Y;
            }// end function
            , function (param1:Number) : void
            {
                closeWindow.y = param1;
                return;
            }// end function
            , "closeWindow.y");
            result[57] = binding;
            binding = new Binding(this, function () : Object
            {
                return _swf_close_window;
            }// end function
            , function (param1:Object) : void
            {
                closeWindow.source = param1;
                return;
            }// end function
            , "closeWindow.source");
            result[58] = binding;
            return result;
        }// end function

        override public function initialize() : void
        {
            var target:QuestConfirmWindow;
            var watcherSetupUtilClass:Object;
            .mx_internal::setDocumentDescriptor(_documentDescriptor_);
            var bindings:* = _QuestConfirmWindow_bindingsSetup();
            var watchers:Array;
            target;
            if (_watcherSetupUtil == null)
            {
                watcherSetupUtilClass = getDefinitionByName("_com_kbmj_viking_view_city_QuestConfirmWindowWatcherSetupUtil");
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

        private function get _swf_stack4_close() : MovieClipLoaderAsset
        {
            return this._770264993_swf_stack4_close;
        }// end function

        public function set windowViewStack(param1:ViewStack) : void
        {
            var _loc_2:* = this._486222035windowViewStack;
            if (_loc_2 !== param1)
            {
                this._486222035windowViewStack = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "windowViewStack", _loc_2, param1));
            }
            return;
        }// end function

        public function set grid2_mes(param1:Label) : void
        {
            var _loc_2:* = this._1238301896grid2_mes;
            if (_loc_2 !== param1)
            {
                this._1238301896grid2_mes = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "grid2_mes", _loc_2, param1));
            }
            return;
        }// end function

        public function get grid0() : GridRow
        {
            return this._98622890grid0;
        }// end function

        public function get grid4() : GridRow
        {
            return this._98622894grid4;
        }// end function

        public function get grid2() : GridRow
        {
            return this._98622892grid2;
        }// end function

        public function get grid3() : GridRow
        {
            return this._98622893grid3;
        }// end function

        public function ___QuestConfirmWindow_Image6_click(event:MouseEvent) : void
        {
            onDecline();
            return;
        }// end function

        private function set _swf_stack1_close(param1:MovieClipLoaderAsset) : void
        {
            var _loc_2:* = this._1892246050_swf_stack1_close;
            if (_loc_2 !== param1)
            {
                this._1892246050_swf_stack1_close = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "_swf_stack1_close", _loc_2, param1));
            }
            return;
        }// end function

        private function set _swf_stack5_close(param1:MovieClipLoaderAsset) : void
        {
            var _loc_2:* = this._1657768674_swf_stack5_close;
            if (_loc_2 !== param1)
            {
                this._1657768674_swf_stack5_close = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "_swf_stack5_close", _loc_2, param1));
            }
            return;
        }// end function

        private function set _swf_stack0_yes(param1:MovieClipLoaderAsset) : void
        {
            var _loc_2:* = this._1985952972_swf_stack0_yes;
            if (_loc_2 !== param1)
            {
                this._1985952972_swf_stack0_yes = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "_swf_stack0_yes", _loc_2, param1));
            }
            return;
        }// end function

        public function get grid0_mes() : Label
        {
            return this._1236454854grid0_mes;
        }// end function

        public function get grid4_mes() : Label
        {
            return this._1240148938grid4_mes;
        }// end function

        private function get _swf_stack2_yes() : MovieClipLoaderAsset
        {
            return this._1987800014_swf_stack2_yes;
        }// end function

        private function onAccept() : void
        {
            dispatchEvent(new Event(QUEST_ACCEPT));
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

        private function get _swf_stack1_close() : MovieClipLoaderAsset
        {
            return this._1892246050_swf_stack1_close;
        }// end function

        private function _init() : void
        {
            MovieClip(Loader(_swf_window.getChildAt(0)).content).gotoAndPlay("right_390x310");
            MovieClip(Loader(_swf_stack0_yes.getChildAt(0)).content).gotoAndPlay("button_yes");
            MovieClip(Loader(_swf_stack0_no.getChildAt(0)).content).gotoAndPlay("button_no");
            MovieClip(Loader(_swf_stack1_close.getChildAt(0)).content).gotoAndPlay("button_close");
            MovieClip(Loader(_swf_stack2_yes.getChildAt(0)).content).gotoAndPlay("button_yes");
            MovieClip(Loader(_swf_stack2_no.getChildAt(0)).content).gotoAndPlay("button_no");
            MovieClip(Loader(_swf_stack3_close.getChildAt(0)).content).gotoAndPlay("button_close");
            MovieClip(Loader(_swf_stack4_close.getChildAt(0)).content).gotoAndPlay("button_close");
            MovieClip(Loader(_swf_stack5_close.getChildAt(0)).content).gotoAndPlay("button_close");
            return;
        }// end function

        public function ___QuestConfirmWindow_Image3_click(event:MouseEvent) : void
        {
            onAccept();
            return;
        }// end function

        private function set _swf_stack2_no(param1:MovieClipLoaderAsset) : void
        {
            var _loc_2:* = this._351519750_swf_stack2_no;
            if (_loc_2 !== param1)
            {
                this._351519750_swf_stack2_no = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "_swf_stack2_no", _loc_2, param1));
            }
            return;
        }// end function

        private function get _swf_stack2_no() : MovieClipLoaderAsset
        {
            return this._351519750_swf_stack2_no;
        }// end function

        private function get _swf_window() : MovieClipLoaderAsset
        {
            return this._1075873300_swf_window;
        }// end function

        private function setCommentStatus(param1:String, param2:int = 370, param3:int = 80, param4:int = 370, param5:int = 130) : void
        {
            topComment = param1;
            Top.x = param2;
            Top.y = param3;
            Top.width = param4;
            Top.height = param5;
            return;
        }// end function

        public static function set watcherSetupUtil(param1:IWatcherSetupUtil) : void
        {
            QuestConfirmWindow._watcherSetupUtil = param1;
            return;
        }// end function

    }
}
