package com.kbmj.viking
{
    import com.kbmj.viking.lib.*;
    import com.kbmj.viking.view.*;
    import com.kbmj.viking.view.home.*;
    import com.kbmj.viking.vo.*;
    import com.kbmj.viking.vo.home.*;
    import flash.display.*;
    import flash.events.*;
    import flash.geom.*;
    import flash.utils.*;
    import mx.binding.*;
    import mx.collections.*;
    import mx.containers.*;
    import mx.controls.*;
    import mx.core.*;
    import mx.effects.*;
    import mx.events.*;
    import mx.managers.*;

    public class Home extends CanvasWithPopUp implements IBindingClient
    {
        private var _826559851buildingImages10:Image;
        private var _1645665610nowMonth:int;
        private var _109994508pressedButton:Image;
        private var _1550346158prodctionButton:Image;
        private var _2145428240galleryList:Canvas;
        private var _embed_mxml__swf_home_buttons_button_research_swf_688361655:Class;
        private var _1091436750fadeOut:Fade;
        private var _1039636250nowDay:int;
        private var _1351339399wipeOut:WipeDown;
        private var _embed_mxml__images_black_jpg_491440297:Class;
        private var _102939356galleryButton:Image;
        private var _3016401base:Image;
        public var landID:int = 0;
        var _bindingsByDestination:Object;
        private var _925711927buildingLevelIcon:Canvas;
        private var _847285043_swf_info_chat:MovieClipLoaderAsset;
        private var _embed_mxml__swf_home_buttons_button_report_50_swf_1031336821:Class;
        private var _1924554788pressedButtonPointX:int = 0;
        private var _embed_mxml__swf_window_info_home_swf_1388347787:Class;
        private var _1014770014firstTimeBG:Image;
        private var _1722718208_player:PlayerVO;
        private var _1292760154infoCanvas:Canvas;
        private var _1047942492notPressedShikihime:Image;
        private var oldSelectIndex:int = 0;
        private var _801262148descriptionButtonVisible:Boolean = true;
        private var _3237038info:Image;
        public var nowInfo:String;
        private var _1896677185windowLayer:Canvas;
        private var _embed_mxml__swf_home_window_scroll_swf_667863501:Class;
        private var _embed_mxml__swf_all_map_button_raid_start_swf_1270185481:Class;
        private var _embed_mxml__swf_common_arrow_bottom_swf_1091498217:Class;
        private var _146507084questButton:Image;
        private var _1689231208buildingImages4:Image;
        public var nowInfoId:int;
        private var _embed_mxml__swf_home_colony_button_colony_swf_1236500461:Class;
        private var _3135100fade:Image;
        private var _1465065841_tasks:Array;
        private var _1689231206buildingImages2:Image;
        private var _embed_mxml__swf_home_buttons_button_wu_xing_swf_79898025:Class;
        private var _postUnits:Array;
        private var _embed_mxml__swf_home_buttons_button_production_swf_1962213061:Class;
        private var _252712397playerStatus:PlayerStatus;
        private var _embed_mxml__swf_home_expedition_buttons_button_expedition_swf_123861613:Class;
        private var _182637929myViewStack:ViewStack;
        private var _1252748247productionInfoWindow:ProductionInfoWindow;
        private var _1689231204buildingImages0:Image;
        private var _embed_mxml__swf_home_subjugation_button_subjugation_swf_1866369907:Class;
        private var _1887281467tutMarkResearch:Image;
        private var _homeMaps:Array;
        private var _1690928843tutMarkShikihime:Image;
        private var _1689231213buildingImages9:Image;
        private var _1336606984infoButtonCanvas:Canvas;
        private var descriptionVisibleIndex:int = 0;
        private var _1863513346tutMarkTutorial:Image;
        private var _787692596wipeIn:WipeUp;
        private var confirmFinishTaskWindow:ConfirmFinishTaskWindow;
        private var _177431846infoChat:Image;
        private var _1795771447mailButton:Image;
        private var _1937363095_swf_research:MovieClipLoaderAsset;
        private var _embed_mxml__swf_home_buttons_button_guild_50_swf_817337175:Class;
        private var _1689231211buildingImages7:Image;
        private var _1842101532descriptionCloseButtonVisible:Boolean = false;
        private var _1149343527tribulationButton:Image;
        private var _1209556933_swf_tmark:MovieClipLoaderAsset;
        private var _embed_mxml__swf_home_buttons_button_mail_50_swf_77670281:Class;
        var _bindingsBeginWithWord:Object;
        private var _1020918119tutMarkSubjugation:Image;
        private var _1949052714descriptionVisible:ArrayCollection;
        private var _embed_mxml__swf_home_buttons_button_shikihime_swf_1006170409:Class;
        private var _embed_mxml__swf_home_buttons_button_quest_swf_1169381901:Class;
        private var _1733430099researchButton:Image;
        private var _1505818439_areasAdded:Boolean = false;
        private var _1966765157tutMarkAllMap:Image;
        private var _embed_mxml__swf_window_info_products_swf_1304559433:Class;
        private var _1354579210assistantImages:ArrayCollection;
        private var _1282133823fadeIn:Fade;
        private var _826559852buildingImages11:Image;
        private var _239521871assistantParam:ArrayCollection;
        private var _1433715808_swf_faction:MovieClipLoaderAsset;
        private var _99600088_swf_rank:MovieClipLoaderAsset;
        private var _1994884204_swf_balloon_close:MovieClipLoaderAsset;
        private var _1924554787pressedButtonPointY:int = 0;
        private var _970364505info_txt_box_news:Box;
        private var _embed_mxml__swf_all_map_button_battle_start_swf_144946677:Class;
        private var _1335693278pressedButtonVisible:Boolean = false;
        private var _embed_mxml__swf_home_buttons_button_market_50_swf_1496843013:Class;
        private var _410382397taskList:List;
        private var _1537268218taskBox:Box;
        private var _embed_mxml__images_home_base_bg_jpg_678991691:Class;
        private var _537666120guildChatText:ArrayCollection;
        private var _1227187142descriptionWindowVisible:Boolean = false;
        private var _1551673905notPressed:Image;
        private var _embed_mxml__swf_home_buttons_button_ceremony_swf_818387595:Class;
        private var _292905918unitList:Canvas;
        private var _1689231209buildingImages5:Image;
        private var _1746785189_unreadMail:Boolean = false;
        private var _16594280researchText:Canvas;
        private var _121712834glowoff:Glow;
        private var _1293073551assistantBalloon:Image;
        private var _1398237241sleepUnitList:Canvas;
        public var _Home_Text1:Text;
        public var _Home_Text2:Text;
        public var _Home_Text3:Text;
        public var _Home_Text4:Text;
        public var _Home_Text5:Text;
        private var _235834643assistantLayer:Canvas;
        private var _1003761308products:Image;
        private var _1689231207buildingImages3:Image;
        private var _embed_mxml__swf_home_buttons_button_quest_tutorial_swf_841274807:Class;
        private var _embed_mxml__swf_home_buttons_button_item_swf_924773449:Class;
        private var _501922133firstTimeCanvas:Canvas;
        private var _1670417707assistantText:TextArea;
        private var _1461869846researchLevels:ArrayCollection;
        private var _862677081tutMarkProduction:Image;
        private var toDay:Date;
        private var _1299191179homeAllItem:HomeAllItem;
        private var _1480760809establishment:Canvas;
        private var _1177280081itemList:Canvas;
        private var _1945385533infoBox:Box;
        private var _embed_mxml__swf_common_arrow_top_swf_788233961:Class;
        private var pageSize:Number = 0;
        private var _1689231205buildingImages1:Image;
        private var _913653896homeEstablishment:HomeEstablishment;
        public var _Home_Image15:Image;
        private var _embed_mxml__swf_home_icon_button_50_new_swf_933026285:Class;
        private var _117682566reportButton:Image;
        private var _470133324buildingImages:ArrayCollection;
        private var _1514583077itemButton:Image;
        private var _1022398728actionButton:Canvas;
        private var _739087187chatBox:Box;
        public var _Home_Image35:Image;
        public var _Home_Image36:Image;
        private var _1626687897balloonCanvas:Canvas;
        private var _3175821glow:Glow;
        private var _embed_mxml__swf_home_buttons_button_close_swf_1270316553:Class;
        public var _Home_Image43:Image;
        private var allDescription:String;
        private var _1204726198infoBoxVO:InfoBoxVO;
        private var _1689231212buildingImages8:Image;
        private var _IncrementTasks:TaskVO;
        var _watchers:Array;
        public var firstHome:Boolean = true;
        private var _614872707shikihimeButton:Image;
        public var savedInfo:String = "b_moving";
        private var _1486656034tutMarkCeremony:Image;
        private var _1689231210buildingImages6:Image;
        private var _680684109_swf_balloon:MovieClipLoaderAsset;
        var _bindings:Array;
        private var _1211793989guildChatWindow:GuildChatWindow;
        private var _documentDescriptor_:UIComponentDescriptor;
        public static var EmbedSwfResearch:Class = Home_EmbedSwfResearch;
        public static const RAID_COMMAND_SELECT:String = "raidCommandSelect";
        private static var _watcherSetupUtil:IWatcherSetupUtil;
        public static var EmbedSwfInfoChat:Class = Home_EmbedSwfInfoChat;
        public static const CHAT_UPDATE:String = "chatUpdate";
        public static const CHAT_LOG:String = "chatLog";
        public static var EmbedSwfBalloonIcon:Class = Home_EmbedSwfBalloonIcon;

        public function Home()
        {
            _documentDescriptor_ = new UIComponentDescriptor({type:CanvasWithPopUp, propertiesFactory:function () : Object
            {
                return {width:760, height:560, childDescriptors:[new UIComponentDescriptor({type:HBox, stylesFactory:function () : void
                {
                    this.horizontalGap = 0;
                    return;
                }// end function
                , propertiesFactory:function () : Object
                {
                    return {width:760, height:560, childDescriptors:[new UIComponentDescriptor({type:ViewStack, id:"myViewStack", propertiesFactory:function () : Object
                    {
                        return {percentWidth:100, percentHeight:100, x:0, y:0, childDescriptors:[new UIComponentDescriptor({type:Canvas, propertiesFactory:function () : Object
                        {
                            return {label:"Base", percentWidth:100, percentHeight:100, horizontalScrollPolicy:"off", childDescriptors:[new UIComponentDescriptor({type:Image, id:"buildingImages0", propertiesFactory:function () : Object
                            {
                                return {x:399, y:121};
                            }// end function
                            }), new UIComponentDescriptor({type:Image, id:"buildingImages1", propertiesFactory:function () : Object
                            {
                                return {x:453, y:148};
                            }// end function
                            }), new UIComponentDescriptor({type:Image, id:"buildingImages2", propertiesFactory:function () : Object
                            {
                                return {x:534, y:189};
                            }// end function
                            }), new UIComponentDescriptor({type:Image, id:"buildingImages3", propertiesFactory:function () : Object
                            {
                                return {x:595, y:218};
                            }// end function
                            }), new UIComponentDescriptor({type:Image, id:"buildingImages4", propertiesFactory:function () : Object
                            {
                                return {x:368, y:158};
                            }// end function
                            }), new UIComponentDescriptor({type:Image, id:"buildingImages10", propertiesFactory:function () : Object
                            {
                                return {x:432, y:194};
                            }// end function
                            }), new UIComponentDescriptor({type:Image, id:"buildingImages5", propertiesFactory:function () : Object
                            {
                                return {x:297, y:178};
                            }// end function
                            }), new UIComponentDescriptor({type:Image, id:"buildingImages11", propertiesFactory:function () : Object
                            {
                                return {x:376, y:223};
                            }// end function
                            }), new UIComponentDescriptor({type:Image, id:"buildingImages6", propertiesFactory:function () : Object
                            {
                                return {x:229, y:204};
                            }// end function
                            }), new UIComponentDescriptor({type:Image, id:"buildingImages7", propertiesFactory:function () : Object
                            {
                                return {x:312, y:255};
                            }// end function
                            }), new UIComponentDescriptor({type:Image, id:"buildingImages8", propertiesFactory:function () : Object
                            {
                                return {x:369, y:286};
                            }// end function
                            }), new UIComponentDescriptor({type:Image, id:"buildingImages9", propertiesFactory:function () : Object
                            {
                                return {x:425, y:316};
                            }// end function
                            }), new UIComponentDescriptor({type:Canvas, id:"buildingLevelIcon"}), new UIComponentDescriptor({type:Image, id:"base", propertiesFactory:function () : Object
                            {
                                return {source:_embed_mxml__images_home_base_bg_jpg_678991691};
                            }// end function
                            }), new UIComponentDescriptor({type:Image, propertiesFactory:function () : Object
                            {
                                return {source:_embed_mxml__swf_home_window_scroll_swf_667863501};
                            }// end function
                            }), new UIComponentDescriptor({type:Canvas, id:"assistantLayer"}), new UIComponentDescriptor({type:Image, id:"_Home_Image15"}), new UIComponentDescriptor({type:Canvas, id:"researchText", propertiesFactory:function () : Object
                            {
                                return {visible:false, childDescriptors:[new UIComponentDescriptor({type:Text, id:"_Home_Text1", stylesFactory:function () : void
                                {
                                    this.fontSize = 16;
                                    this.color = 16777215;
                                    return;
                                }// end function
                                , propertiesFactory:function () : Object
                                {
                                    return {x:55, y:490};
                                }// end function
                                }), new UIComponentDescriptor({type:Text, id:"_Home_Text2", stylesFactory:function () : void
                                {
                                    this.fontSize = 16;
                                    this.color = 16777215;
                                    return;
                                }// end function
                                , propertiesFactory:function () : Object
                                {
                                    return {x:123, y:490};
                                }// end function
                                }), new UIComponentDescriptor({type:Text, id:"_Home_Text3", stylesFactory:function () : void
                                {
                                    this.fontSize = 16;
                                    this.color = 16777215;
                                    return;
                                }// end function
                                , propertiesFactory:function () : Object
                                {
                                    return {x:191, y:490};
                                }// end function
                                }), new UIComponentDescriptor({type:Text, id:"_Home_Text4", stylesFactory:function () : void
                                {
                                    this.fontSize = 16;
                                    this.color = 16777215;
                                    return;
                                }// end function
                                , propertiesFactory:function () : Object
                                {
                                    return {x:89, y:528};
                                }// end function
                                }), new UIComponentDescriptor({type:Text, id:"_Home_Text5", stylesFactory:function () : void
                                {
                                    this.fontSize = 16;
                                    this.color = 16777215;
                                    return;
                                }// end function
                                , propertiesFactory:function () : Object
                                {
                                    return {x:157, y:528};
                                }// end function
                                })]};
                            }// end function
                            }), new UIComponentDescriptor({type:Image, events:{click:"___Home_Image16_click"}, propertiesFactory:function () : Object
                            {
                                return {x:235, y:155, source:_embed_mxml__swf_all_map_button_battle_start_swf_144946677};
                            }// end function
                            }), new UIComponentDescriptor({type:Image, events:{click:"___Home_Image17_click"}, propertiesFactory:function () : Object
                            {
                                return {x:440, y:275, source:_embed_mxml__swf_all_map_button_raid_start_swf_1270185481};
                            }// end function
                            }), new UIComponentDescriptor({type:Image, events:{click:"___Home_Image18_click"}, propertiesFactory:function () : Object
                            {
                                return {x:510, y:275, source:_embed_mxml__swf_home_subjugation_button_subjugation_swf_1866369907};
                            }// end function
                            }), new UIComponentDescriptor({type:Image, events:{click:"___Home_Image19_click"}, propertiesFactory:function () : Object
                            {
                                return {x:285, y:275, source:_embed_mxml__swf_home_colony_button_colony_swf_1236500461};
                            }// end function
                            }), new UIComponentDescriptor({type:Image, events:{click:"___Home_Image20_click"}, propertiesFactory:function () : Object
                            {
                                return {x:510, y:150, source:_embed_mxml__swf_home_expedition_buttons_button_expedition_swf_123861613};
                            }// end function
                            }), new UIComponentDescriptor({type:Image, events:{click:"___Home_Image21_click"}, propertiesFactory:function () : Object
                            {
                                return {x:366, y:192, source:_embed_mxml__swf_home_buttons_button_ceremony_swf_818387595};
                            }// end function
                            }), new UIComponentDescriptor({type:Image, id:"galleryButton", events:{click:"__galleryButton_click"}, propertiesFactory:function () : Object
                            {
                                return {source:_embed_mxml__swf_home_buttons_button_wu_xing_swf_79898025, y:192, x:439};
                            }// end function
                            }), new UIComponentDescriptor({type:Image, events:{click:"___Home_Image23_click"}, propertiesFactory:function () : Object
                            {
                                return {x:518, y:218, source:_embed_mxml__swf_home_buttons_button_market_50_swf_1496843013};
                            }// end function
                            }), new UIComponentDescriptor({type:Image, events:{click:"___Home_Image24_click"}, propertiesFactory:function () : Object
                            {
                                return {x:572, y:228, source:_embed_mxml__swf_home_buttons_button_guild_50_swf_817337175};
                            }// end function
                            }), new UIComponentDescriptor({type:Image, id:"tutMarkAllMap", propertiesFactory:function () : Object
                            {
                                return {source:_embed_mxml__swf_common_arrow_bottom_swf_1091498217, visible:false, y:130, x:280};
                            }// end function
                            }), new UIComponentDescriptor({type:Image, id:"tutMarkSubjugation", propertiesFactory:function () : Object
                            {
                                return {source:_embed_mxml__swf_common_arrow_top_swf_788233961, visible:false, y:335, x:570};
                            }// end function
                            }), new UIComponentDescriptor({type:Image, id:"tutMarkCeremony", propertiesFactory:function () : Object
                            {
                                return {source:_embed_mxml__swf_common_arrow_top_swf_788233961, visible:false, y:256, x:382};
                            }// end function
                            }), new UIComponentDescriptor({type:Canvas, id:"firstTimeCanvas", propertiesFactory:function () : Object
                            {
                                return {visible:true, childDescriptors:[new UIComponentDescriptor({type:Image, id:"assistantBalloon", events:{click:"__assistantBalloon_click"}, propertiesFactory:function () : Object
                                {
                                    return {x:217, y:80};
                                }// end function
                                }), new UIComponentDescriptor({type:Canvas, id:"balloonCanvas", events:{click:"__balloonCanvas_click"}, propertiesFactory:function () : Object
                                {
                                    return {childDescriptors:[new UIComponentDescriptor({type:TextArea, id:"assistantText", stylesFactory:function () : void
                                    {
                                        this.fontSize = 13;
                                        this.backgroundAlpha = 0;
                                        this.borderStyle = "none";
                                        return;
                                    }// end function
                                    , propertiesFactory:function () : Object
                                    {
                                        return {x:215, y:97, width:440, height:45, editable:false};
                                    }// end function
                                    })]};
                                }// end function
                                })]};
                            }// end function
                            }), new UIComponentDescriptor({type:Image, id:"questButton", events:{click:"__questButton_click"}, propertiesFactory:function () : Object
                            {
                                return {source:_embed_mxml__swf_home_buttons_button_quest_swf_1169381901, y:205, x:297, visible:true};
                            }// end function
                            }), new UIComponentDescriptor({type:Image, id:"tribulationButton", events:{click:"__tribulationButton_click"}, propertiesFactory:function () : Object
                            {
                                return {source:_embed_mxml__swf_home_buttons_button_quest_tutorial_swf_841274807, y:205, x:297, visible:false};
                            }// end function
                            }), new UIComponentDescriptor({type:Image, id:"tutMarkTutorial", propertiesFactory:function () : Object
                            {
                                return {source:_embed_mxml__swf_common_arrow_top_swf_788233961, visible:false, y:265, x:315};
                            }// end function
                            }), new UIComponentDescriptor({type:Canvas, id:"infoCanvas"}), new UIComponentDescriptor({type:Canvas, id:"infoButtonCanvas", propertiesFactory:function () : Object
                            {
                                return {x:68, visible:false};
                            }// end function
                            }), new UIComponentDescriptor({type:Image, id:"infoChat", propertiesFactory:function () : Object
                            {
                                return {visible:false};
                            }// end function
                            }), new UIComponentDescriptor({type:Image, id:"products", propertiesFactory:function () : Object
                            {
                                return {source:_embed_mxml__swf_window_info_products_swf_1304559433, x:363, y:0};
                            }// end function
                            }), new UIComponentDescriptor({type:Image, id:"info", propertiesFactory:function () : Object
                            {
                                return {source:_embed_mxml__swf_window_info_home_swf_1388347787, x:0, y:0};
                            }// end function
                            }), new UIComponentDescriptor({type:PlayerStatus, id:"playerStatus", propertiesFactory:function () : Object
                            {
                                return {x:10};
                            }// end function
                            }), new UIComponentDescriptor({type:ProductionInfoWindow, id:"productionInfoWindow", propertiesFactory:function () : Object
                            {
                                return {x:380, y:14};
                            }// end function
                            }), new UIComponentDescriptor({type:Image, id:"_Home_Image35", propertiesFactory:function () : Object
                            {
                                return {x:37, y:17};
                            }// end function
                            }), new UIComponentDescriptor({type:Image, id:"_Home_Image36", propertiesFactory:function () : Object
                            {
                                return {x:58, y:17};
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
                                        return {itemRenderer:_Home_ClassFactory1_c(), styleName:"InfoBoxTab", selectable:false, rowHeight:50};
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
                            }), new UIComponentDescriptor({type:Image, id:"notPressed", propertiesFactory:function () : Object
                            {
                                return {source:_embed_mxml__images_black_jpg_491440297, alpha:0, visible:false, percentWidth:100, percentHeight:100};
                            }// end function
                            }), new UIComponentDescriptor({type:Canvas, id:"actionButton", propertiesFactory:function () : Object
                            {
                                return {x:490, childDescriptors:[new UIComponentDescriptor({type:Image, id:"researchButton", events:{click:"__researchButton_click"}, propertiesFactory:function () : Object
                                {
                                    return {y:285, x:198, source:_embed_mxml__swf_home_buttons_button_research_swf_688361655};
                                }// end function
                                }), new UIComponentDescriptor({type:Image, id:"prodctionButton", events:{click:"__prodctionButton_click"}, propertiesFactory:function () : Object
                                {
                                    return {source:_embed_mxml__swf_home_buttons_button_production_swf_1962213061, y:145, x:198};
                                }// end function
                                }), new UIComponentDescriptor({type:Image, id:"shikihimeButton", events:{click:"__shikihimeButton_click"}, propertiesFactory:function () : Object
                                {
                                    return {source:_embed_mxml__swf_home_buttons_button_shikihime_swf_1006170409, y:75, x:198};
                                }// end function
                                }), new UIComponentDescriptor({type:Image, id:"itemButton", events:{click:"__itemButton_click"}, propertiesFactory:function () : Object
                                {
                                    return {source:_embed_mxml__swf_home_buttons_button_item_swf_924773449, y:215, x:198};
                                }// end function
                                }), new UIComponentDescriptor({type:HBox, propertiesFactory:function () : Object
                                {
                                    return {x:143, y:8, width:150, childDescriptors:[new UIComponentDescriptor({type:Canvas, propertiesFactory:function () : Object
                                    {
                                        return {childDescriptors:[new UIComponentDescriptor({type:Image, id:"mailButton", events:{click:"__mailButton_click"}, propertiesFactory:function () : Object
                                        {
                                            return {source:_embed_mxml__swf_home_buttons_button_mail_50_swf_77670281};
                                        }// end function
                                        }), new UIComponentDescriptor({type:Image, id:"_Home_Image43", propertiesFactory:function () : Object
                                        {
                                            return {source:_embed_mxml__swf_home_icon_button_50_new_swf_933026285, mouseEnabled:false, mouseChildren:false};
                                        }// end function
                                        })]};
                                    }// end function
                                    }), new UIComponentDescriptor({type:Spacer, propertiesFactory:function () : Object
                                    {
                                        return {width:0};
                                    }// end function
                                    }), new UIComponentDescriptor({type:Image, id:"reportButton", events:{click:"__reportButton_click"}, propertiesFactory:function () : Object
                                    {
                                        return {source:_embed_mxml__swf_home_buttons_button_report_50_swf_1031336821, x:205, y:8};
                                    }// end function
                                    })]};
                                }// end function
                                }), new UIComponentDescriptor({type:Image, id:"pressedButton", events:{click:"__pressedButton_click"}, propertiesFactory:function () : Object
                                {
                                    return {source:_embed_mxml__swf_home_buttons_button_close_swf_1270316553, width:50, height:50};
                                }// end function
                                }), new UIComponentDescriptor({type:Image, id:"tutMarkShikihime", propertiesFactory:function () : Object
                                {
                                    return {source:_embed_mxml__swf_common_arrow_top_swf_788233961, visible:false, y:130, x:212};
                                }// end function
                                }), new UIComponentDescriptor({type:Image, id:"tutMarkProduction", propertiesFactory:function () : Object
                                {
                                    return {source:_embed_mxml__swf_common_arrow_top_swf_788233961, visible:false, y:200, x:212};
                                }// end function
                                }), new UIComponentDescriptor({type:Image, id:"tutMarkResearch", propertiesFactory:function () : Object
                                {
                                    return {source:_embed_mxml__swf_common_arrow_top_swf_788233961, visible:false, y:345, x:212};
                                }// end function
                                })]};
                            }// end function
                            }), new UIComponentDescriptor({type:Image, id:"notPressedShikihime", propertiesFactory:function () : Object
                            {
                                return {source:_embed_mxml__images_black_jpg_491440297, alpha:0, visible:true, percentWidth:100, percentHeight:100};
                            }// end function
                            }), new UIComponentDescriptor({type:Image, id:"firstTimeBG", propertiesFactory:function () : Object
                            {
                                return {source:_embed_mxml__images_black_jpg_491440297, alpha:0, visible:true, percentWidth:100, percentHeight:100};
                            }// end function
                            }), new UIComponentDescriptor({type:Canvas, id:"windowLayer"}), new UIComponentDescriptor({type:Image, id:"fade", propertiesFactory:function () : Object
                            {
                                return {source:_embed_mxml__images_black_jpg_491440297, alpha:1, visible:true, percentWidth:100, percentHeight:100};
                            }// end function
                            })]};
                        }// end function
                        }), new UIComponentDescriptor({type:Canvas, id:"unitList", propertiesFactory:function () : Object
                        {
                            return {label:"View 2", percentWidth:100, percentHeight:100};
                        }// end function
                        }), new UIComponentDescriptor({type:Canvas, id:"galleryList", propertiesFactory:function () : Object
                        {
                            return {label:"View 6", percentWidth:100, percentHeight:100};
                        }// end function
                        }), new UIComponentDescriptor({type:Canvas, id:"itemList", propertiesFactory:function () : Object
                        {
                            return {label:"View 3", percentWidth:100, percentHeight:100, childDescriptors:[new UIComponentDescriptor({type:HomeAllItem, id:"homeAllItem"})]};
                        }// end function
                        }), new UIComponentDescriptor({type:Canvas, id:"sleepUnitList", propertiesFactory:function () : Object
                        {
                            return {label:"View 4", percentWidth:100, percentHeight:100};
                        }// end function
                        }), new UIComponentDescriptor({type:Canvas, id:"establishment", propertiesFactory:function () : Object
                        {
                            return {label:"View 5", percentWidth:100, percentHeight:100, childDescriptors:[new UIComponentDescriptor({type:HomeEstablishment, id:"homeEstablishment"})]};
                        }// end function
                        })]};
                    }// end function
                    })]};
                }// end function
                })]};
            }// end function
            });
            confirmFinishTaskWindow = new ConfirmFinishTaskWindow();
            _1433715808_swf_faction = new Viking.EmbedSwfIconFaction();
            _99600088_swf_rank = new Viking.EmbedSwfIconRank();
            _680684109_swf_balloon = new EmbedSwfBalloonIcon();
            _1994884204_swf_balloon_close = new Viking.EmbedSwfButtonCloseWindow();
            _1937363095_swf_research = new EmbedSwfResearch();
            _847285043_swf_info_chat = new EmbedSwfInfoChat();
            _1209556933_swf_tmark = new Viking.EmbedSwfTmark();
            toDay = new Date();
            _1645665610nowMonth = toDay.month + 1;
            _1039636250nowDay = toDay.date;
            _1204726198infoBoxVO = new InfoBoxVO();
            _postUnits = new Array();
            _1461869846researchLevels = new ArrayCollection(new Array(6));
            _470133324buildingImages = new ArrayCollection();
            _239521871assistantParam = new ArrayCollection(new Array(20));
            _1354579210assistantImages = new ArrayCollection(new Array(2));
            allDescription = new String();
            _IncrementTasks = new TaskVO();
            _embed_mxml__images_black_jpg_491440297 = Home__embed_mxml__images_black_jpg_491440297;
            _embed_mxml__images_home_base_bg_jpg_678991691 = Home__embed_mxml__images_home_base_bg_jpg_678991691;
            _embed_mxml__swf_all_map_button_battle_start_swf_144946677 = Home__embed_mxml__swf_all_map_button_battle_start_swf_144946677;
            _embed_mxml__swf_all_map_button_raid_start_swf_1270185481 = Home__embed_mxml__swf_all_map_button_raid_start_swf_1270185481;
            _embed_mxml__swf_common_arrow_bottom_swf_1091498217 = Home__embed_mxml__swf_common_arrow_bottom_swf_1091498217;
            _embed_mxml__swf_common_arrow_top_swf_788233961 = Home__embed_mxml__swf_common_arrow_top_swf_788233961;
            _embed_mxml__swf_home_buttons_button_ceremony_swf_818387595 = Home__embed_mxml__swf_home_buttons_button_ceremony_swf_818387595;
            _embed_mxml__swf_home_buttons_button_close_swf_1270316553 = Home__embed_mxml__swf_home_buttons_button_close_swf_1270316553;
            _embed_mxml__swf_home_buttons_button_guild_50_swf_817337175 = Home__embed_mxml__swf_home_buttons_button_guild_50_swf_817337175;
            _embed_mxml__swf_home_buttons_button_item_swf_924773449 = Home__embed_mxml__swf_home_buttons_button_item_swf_924773449;
            _embed_mxml__swf_home_buttons_button_mail_50_swf_77670281 = Home__embed_mxml__swf_home_buttons_button_mail_50_swf_77670281;
            _embed_mxml__swf_home_buttons_button_market_50_swf_1496843013 = Home__embed_mxml__swf_home_buttons_button_market_50_swf_1496843013;
            _embed_mxml__swf_home_buttons_button_production_swf_1962213061 = Home__embed_mxml__swf_home_buttons_button_production_swf_1962213061;
            _embed_mxml__swf_home_buttons_button_quest_swf_1169381901 = Home__embed_mxml__swf_home_buttons_button_quest_swf_1169381901;
            _embed_mxml__swf_home_buttons_button_quest_tutorial_swf_841274807 = Home__embed_mxml__swf_home_buttons_button_quest_tutorial_swf_841274807;
            _embed_mxml__swf_home_buttons_button_report_50_swf_1031336821 = Home__embed_mxml__swf_home_buttons_button_report_50_swf_1031336821;
            _embed_mxml__swf_home_buttons_button_research_swf_688361655 = Home__embed_mxml__swf_home_buttons_button_research_swf_688361655;
            _embed_mxml__swf_home_buttons_button_shikihime_swf_1006170409 = Home__embed_mxml__swf_home_buttons_button_shikihime_swf_1006170409;
            _embed_mxml__swf_home_buttons_button_wu_xing_swf_79898025 = Home__embed_mxml__swf_home_buttons_button_wu_xing_swf_79898025;
            _embed_mxml__swf_home_colony_button_colony_swf_1236500461 = Home__embed_mxml__swf_home_colony_button_colony_swf_1236500461;
            _embed_mxml__swf_home_expedition_buttons_button_expedition_swf_123861613 = Home__embed_mxml__swf_home_expedition_buttons_button_expedition_swf_123861613;
            _embed_mxml__swf_home_icon_button_50_new_swf_933026285 = Home__embed_mxml__swf_home_icon_button_50_new_swf_933026285;
            _embed_mxml__swf_home_subjugation_button_subjugation_swf_1866369907 = Home__embed_mxml__swf_home_subjugation_button_subjugation_swf_1866369907;
            _embed_mxml__swf_home_window_scroll_swf_667863501 = Home__embed_mxml__swf_home_window_scroll_swf_667863501;
            _embed_mxml__swf_window_info_home_swf_1388347787 = Home__embed_mxml__swf_window_info_home_swf_1388347787;
            _embed_mxml__swf_window_info_products_swf_1304559433 = Home__embed_mxml__swf_window_info_products_swf_1304559433;
            _bindings = [];
            _watchers = [];
            _bindingsByDestination = {};
            _bindingsBeginWithWord = {};
            mx_internal::_document = this;
            this.horizontalScrollPolicy = "off";
            this.verticalScrollPolicy = "off";
            this.width = 760;
            this.height = 560;
            _Home_Fade2_i();
            _Home_Fade1_i();
            _Home_Glow1_i();
            _Home_Glow2_i();
            _Home_WipeUp1_i();
            _Home_WipeDown1_i();
            this.addEventListener("creationComplete", ___Home_CanvasWithPopUp1_creationComplete);
            return;
        }// end function

        private function get _player() : PlayerVO
        {
            return this._1722718208_player;
        }// end function

        private function popupWindowByClass(param1:Class) : void
        {
            var _loc_2:* = PopUpManager.createPopUp(this, param1, true);
            _loc_2.x = 30;
            _loc_2.y = 5;
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

        private function setBuildingAt(param1:Object, param2:int) : void
        {
            if (!param1)
            {
                buildingImages.setItemAt(null, param2);
                return;
            }
            if (param1.underConstruction)
            {
                if (param1.buildingMasterVO.masterId == 14)
                {
                    buildingImages10.y = 200;
                }
            }
            else if (param1.buildingMasterVO.masterId == 14)
            {
                buildingImages10.y = 200;
            }
            return;
        }// end function

        public function setAllUnit(param1:HomeAllUnit, param2:Array) : void
        {
            param1.allUnits = param2;
            unitList.addChild(param1);
            return;
        }// end function

        public function set unreadMail(param1:Boolean) : void
        {
            _unreadMail = param1;
            return;
        }// end function

        public function get homeMaps() : Array
        {
            return _homeMaps;
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

        public function get itemButton() : Image
        {
            return this._1514583077itemButton;
        }// end function

        public function set establishment(param1:Canvas) : void
        {
            var _loc_2:* = this._1480760809establishment;
            if (_loc_2 !== param1)
            {
                this._1480760809establishment = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "establishment", _loc_2, param1));
            }
            return;
        }// end function

        public function getIncrementMaxTasksText() : String
        {
            if (isMaxTaskIncrement())
            {
                return Utils.i18n("localize0") + "<br/>&nbsp;&nbsp;" + player.incrementMaxTasksAtLabel + Utils.i18n("localize1");
            }
            return Utils.i18n("localize2") + "<br/>&nbsp;&nbsp;" + Utils.i18n("localize3");
        }// end function

        public function get sleepUnitList() : Canvas
        {
            return this._1398237241sleepUnitList;
        }// end function

        public function set tutMarkCeremony(param1:Image) : void
        {
            var _loc_2:* = this._1486656034tutMarkCeremony;
            if (_loc_2 !== param1)
            {
                this._1486656034tutMarkCeremony = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "tutMarkCeremony", _loc_2, param1));
            }
            return;
        }// end function

        public function get unitList() : Canvas
        {
            return this._292905918unitList;
        }// end function

        public function set homeMaps(param1:Array) : void
        {
            var _loc_2:* = this.homeMaps;
            if (_loc_2 !== param1)
            {
                this._486414314homeMaps = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "homeMaps", _loc_2, param1));
            }
            return;
        }// end function

        private function get assistantParam() : ArrayCollection
        {
            return this._239521871assistantParam;
        }// end function

        private function set _486414314homeMaps(param1:Array) : void
        {
            var _loc_4:HomeMapVO = null;
            _homeMaps = param1;
            var _loc_2:* = _homeMaps.length;
            buildingImages = new ArrayCollection(new Array(_loc_2));
            var _loc_3:int = 0;
            while (_loc_3 < _loc_2)
            {
                
                _loc_4 = homeMaps[_loc_3];
                if (_loc_4.buildingVO)
                {
                    setBuildingAt(_loc_4.buildingVO, _loc_3);
                }
                else
                {
                    removeBuildingAt(_loc_3);
                }
                _loc_3++;
            }
            getResearchLevel();
            return;
        }// end function

        public function set itemButton(param1:Image) : void
        {
            var _loc_2:* = this._1514583077itemButton;
            if (_loc_2 !== param1)
            {
                this._1514583077itemButton = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "itemButton", _loc_2, param1));
            }
            return;
        }// end function

        public function get prodctionButton() : Image
        {
            return this._1550346158prodctionButton;
        }// end function

        public function changeFaction(param1) : void
        {
            MovieClip(Loader(_swf_faction.getChildAt(0)).content).gotoAndPlay(0);
            MovieClip(Loader(_swf_faction.getChildAt(0)).content).gotoAndPlay(param1);
            return;
        }// end function

        public function get tutMarkProduction() : Image
        {
            return this._862677081tutMarkProduction;
        }// end function

        public function __questButton_click(event:MouseEvent) : void
        {
            dispatchEvent(new PopupEvent(Viking.HOME_ENTER_CITY, "quest"));
            return;
        }// end function

        public function __shikihimeButton_click(event:MouseEvent) : void
        {
            clickButtons(Viking.HOME_ALL_UNIT_VIEW, 193, 75);
            return;
        }// end function

        public function setPostUnits(param1:Array, param2:int, param3:String) : void
        {
            _postUnits[param2] = new Object();
            if (param3 == "Warrior")
            {
                _postUnits[param2].unit1 = param1[0];
                _postUnits[param2].unit2 = param1[1];
            }
            else if (param3 == "Fort")
            {
                _postUnits[param2].unit = param1[0];
            }
            return;
        }// end function

        public function set sleepUnitList(param1:Canvas) : void
        {
            var _loc_2:* = this._1398237241sleepUnitList;
            if (_loc_2 !== param1)
            {
                this._1398237241sleepUnitList = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "sleepUnitList", _loc_2, param1));
            }
            return;
        }// end function

        private function get _swf_balloon_close() : MovieClipLoaderAsset
        {
            return this._1994884204_swf_balloon_close;
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

        public function chatButtonsAnimation(param1:String) : void
        {
            MovieClip(Loader(_swf_info_chat.getChildAt(0)).content).gotoAndPlay(param1);
            return;
        }// end function

        private function onDescriptionNextButton() : void
        {
            var _loc_3:* = descriptionVisibleIndex + 1;
            descriptionVisibleIndex = _loc_3;
            var _loc_1:int = 0;
            while (_loc_1 < descriptionVisible.length)
            {
                
                descriptionVisible.setItemAt(false, _loc_1);
                _loc_1++;
            }
            descriptionVisible.setItemAt(true, descriptionVisibleIndex);
            if (pageSize <= descriptionVisibleIndex)
            {
                descriptionCloseButtonVisible = true;
                descriptionButtonVisible = false;
            }
            return;
        }// end function

        public function set unitList(param1:Canvas) : void
        {
            var _loc_2:* = this._292905918unitList;
            if (_loc_2 !== param1)
            {
                this._292905918unitList = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "unitList", _loc_2, param1));
            }
            return;
        }// end function

        public function onDescriptionOpen() : void
        {
            descriptionWindowVisible = true;
            return;
        }// end function

        private function get _swf_research() : MovieClipLoaderAsset
        {
            return this._1937363095_swf_research;
        }// end function

        private function set buildingImages(param1:ArrayCollection) : void
        {
            var _loc_2:* = this._470133324buildingImages;
            if (_loc_2 !== param1)
            {
                this._470133324buildingImages = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "buildingImages", _loc_2, param1));
            }
            return;
        }// end function

        private function set assistantParam(param1:ArrayCollection) : void
        {
            var _loc_2:* = this._239521871assistantParam;
            if (_loc_2 !== param1)
            {
                this._239521871assistantParam = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "assistantParam", _loc_2, param1));
            }
            return;
        }// end function

        private function set descriptionButtonVisible(param1:Boolean) : void
        {
            var _loc_2:* = this._801262148descriptionButtonVisible;
            if (_loc_2 !== param1)
            {
                this._801262148descriptionButtonVisible = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "descriptionButtonVisible", _loc_2, param1));
            }
            return;
        }// end function

        public function set itemList(param1:Canvas) : void
        {
            var _loc_2:* = this._1177280081itemList;
            if (_loc_2 !== param1)
            {
                this._1177280081itemList = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "itemList", _loc_2, param1));
            }
            return;
        }// end function

        public function ___Home_Image16_click(event:MouseEvent) : void
        {
            sendEvent(Viking.HOME_ACTION_GOTO_ALL_MAP);
            return;
        }// end function

        public function set prodctionButton(param1:Image) : void
        {
            var _loc_2:* = this._1550346158prodctionButton;
            if (_loc_2 !== param1)
            {
                this._1550346158prodctionButton = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "prodctionButton", _loc_2, param1));
            }
            return;
        }// end function

        public function get researchButton() : Image
        {
            return this._1733430099researchButton;
        }// end function

        public function get info() : Image
        {
            return this._3237038info;
        }// end function

        private function _Home_WipeDown1_i() : WipeDown
        {
            var _loc_1:* = new WipeDown();
            wipeOut = _loc_1;
            _loc_1.duration = 500;
            return _loc_1;
        }// end function

        public function set tutMarkProduction(param1:Image) : void
        {
            var _loc_2:* = this._862677081tutMarkProduction;
            if (_loc_2 !== param1)
            {
                this._862677081tutMarkProduction = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "tutMarkProduction", _loc_2, param1));
            }
            return;
        }// end function

        public function finishTask(param1:TaskVO) : void
        {
            confirmFinishTaskWindow.task = param1;
            confirmFinishTaskWindow.init();
            popupWindow(confirmFinishTaskWindow, false);
            return;
        }// end function

        private function get _areasAdded() : Boolean
        {
            return this._1505818439_areasAdded;
        }// end function

        private function clickCloseBalloon() : void
        {
            if (!balloonCanvas.visible)
            {
                return;
            }
            MovieClip(Loader(_swf_balloon.getChildAt(0)).content).gotoAndPlay("w_close");
            balloonCanvas.visible = false;
            return;
        }// end function

        public function get fadeIn() : Fade
        {
            return this._1282133823fadeIn;
        }// end function

        public function remarkStart() : void
        {
            assistantBalloon.visible = true;
            assistantText.visible = false;
            Loader(_swf_balloon.getChildAt(0)).content.addEventListener("ENLARGE_END", function (event:Event) : void
            {
                Loader(_swf_balloon.getChildAt(0)).content.removeEventListener("ENLARGE_END", arguments.callee);
                assistantText.visible = true;
                return;
            }// end function
            );
            balloonCanvas.visible = true;
            MovieClip(Loader(_swf_balloon.getChildAt(0)).content).gotoAndPlay(0);
            MovieClip(Loader(_swf_balloon_close.getChildAt(0)).content).gotoAndPlay(0);
            return;
        }// end function

        public function get glowoff() : Glow
        {
            return this._121712834glowoff;
        }// end function

        private function get _swf_info_chat() : MovieClipLoaderAsset
        {
            return this._847285043_swf_info_chat;
        }// end function

        public function __itemButton_click(event:MouseEvent) : void
        {
            clickButtons(Viking.HOME_ALL_ITEM_VIEW, 193, 215);
            return;
        }// end function

        public function set balloonCanvas(param1:Canvas) : void
        {
            var _loc_2:* = this._1626687897balloonCanvas;
            if (_loc_2 !== param1)
            {
                this._1626687897balloonCanvas = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "balloonCanvas", _loc_2, param1));
            }
            return;
        }// end function

        private function get descriptionVisible() : ArrayCollection
        {
            return this._1949052714descriptionVisible;
        }// end function

        private function set _swf_balloon_close(param1:MovieClipLoaderAsset) : void
        {
            var _loc_2:* = this._1994884204_swf_balloon_close;
            if (_loc_2 !== param1)
            {
                this._1994884204_swf_balloon_close = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "_swf_balloon_close", _loc_2, param1));
            }
            return;
        }// end function

        private function clickButtons(param1:String, param2:int, param3:int) : void
        {
            pressedButtonPointX = param2;
            pressedButtonPointY = param3;
            pressedButtonVisible = true;
            sendEvent(param1);
            return;
        }// end function

        private function get nowDay() : int
        {
            return this._1039636250nowDay;
        }// end function

        public function get tribulationButton() : Image
        {
            return this._1149343527tribulationButton;
        }// end function

        public function set homeAllItem(param1:HomeAllItem) : void
        {
            var _loc_2:* = this._1299191179homeAllItem;
            if (_loc_2 !== param1)
            {
                this._1299191179homeAllItem = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "homeAllItem", _loc_2, param1));
            }
            return;
        }// end function

        public function set fade(param1:Image) : void
        {
            var _loc_2:* = this._3135100fade;
            if (_loc_2 !== param1)
            {
                this._3135100fade = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "fade", _loc_2, param1));
            }
            return;
        }// end function

        public function get actionButton() : Canvas
        {
            return this._1022398728actionButton;
        }// end function

        private function init() : void
        {
            confirmFinishTaskWindow.addEventListener(ConfirmFinishTaskWindow.CONFIRMED, function (event:PopupEvent) : void
            {
                dispatchEvent(new PopupEvent(Viking.FINISH_TASK_IMMEDIATELY, event.param));
                return;
            }// end function
            );
            MovieClip(Loader(_swf_research.getChildAt(0)).content).gotoAndPlay("w_start");
            Loader(_swf_research.getChildAt(0)).content.addEventListener("ENLARGE_END", function (event:Event) : void
            {
                researchText.visible = true;
                return;
            }// end function
            );
            Loader(_swf_research.getChildAt(0)).content.addEventListener("CLOSE", function (event:Event) : void
            {
                researchText.visible = false;
                guildChatWindow.oldChatTextFilterRefresh();
                return;
            }// end function
            );
            MovieClip(Loader(_swf_info_chat.getChildAt(0)).content).gotoAndPlay("b_guild");
            return;
        }// end function

        public function get assistantLayer() : Canvas
        {
            return this._235834643assistantLayer;
        }// end function

        private function guildTabEvent(event:Event) : void
        {
            switch(event.type)
            {
                case "chatComment":
                {
                    dispatchEvent(new Event(CHAT_LOG));
                    break;
                }
                default:
                {
                    break;
                }
            }
            return;
        }// end function

        public function incrementMaxTasks() : void
        {
            sendEvent(Viking.INCREMENT_MAX_TASK_CONFIRM);
            return;
        }// end function

        private function toolTipCreateEventHandle(event:ToolTipEvent, param2:int) : void
        {
            var _loc_3:HomeMapBuildingMouseOver = null;
            var _loc_4:HomeMapVacantMouseOver = null;
            if (param2 > (homeMaps.length - 1))
            {
                return;
            }
            if (homeMaps[param2].buildingVO)
            {
                _loc_3 = new HomeMapBuildingMouseOver();
                _loc_3.building = homeMaps[param2].buildingVO;
                if (_postUnits[homeMaps[param2].buildingVO.buildingId])
                {
                    _loc_3.waitUnits = _postUnits[homeMaps[param2].buildingVO.buildingId];
                }
                event.toolTip = _loc_3;
            }
            else
            {
                _loc_4 = new HomeMapVacantMouseOver();
                event.toolTip = _loc_4;
            }
            return;
        }// end function

        public function get galleryButton() : Image
        {
            return this._102939356galleryButton;
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

        public function get infoChat() : Image
        {
            return this._177431846infoChat;
        }// end function

        private function get _swf_rank() : MovieClipLoaderAsset
        {
            return this._99600088_swf_rank;
        }// end function

        public function get assistantText() : TextArea
        {
            return this._1670417707assistantText;
        }// end function

        public function set myViewStack(param1:ViewStack) : void
        {
            var _loc_2:* = this._182637929myViewStack;
            if (_loc_2 !== param1)
            {
                this._182637929myViewStack = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "myViewStack", _loc_2, param1));
            }
            return;
        }// end function

        private function set _swf_research(param1:MovieClipLoaderAsset) : void
        {
            var _loc_2:* = this._1937363095_swf_research;
            if (_loc_2 !== param1)
            {
                this._1937363095_swf_research = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "_swf_research", _loc_2, param1));
            }
            return;
        }// end function

        public function set tutMarkSubjugation(param1:Image) : void
        {
            var _loc_2:* = this._1020918119tutMarkSubjugation;
            if (_loc_2 !== param1)
            {
                this._1020918119tutMarkSubjugation = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "tutMarkSubjugation", _loc_2, param1));
            }
            return;
        }// end function

        public function get tutMarkResearch() : Image
        {
            return this._1887281467tutMarkResearch;
        }// end function

        public function set firstTimeBG(param1:Image) : void
        {
            var _loc_2:* = this._1014770014firstTimeBG;
            if (_loc_2 !== param1)
            {
                this._1014770014firstTimeBG = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "firstTimeBG", _loc_2, param1));
            }
            return;
        }// end function

        public function ___Home_Image21_click(event:MouseEvent) : void
        {
            sendEvent(Viking.HOME_ACTION_OPEN_CEREMONY_WINDOW);
            return;
        }// end function

        private function get nowMonth() : int
        {
            return this._1645665610nowMonth;
        }// end function

        public function get firstTimeCanvas() : Canvas
        {
            return this._501922133firstTimeCanvas;
        }// end function

        public function set researchButton(param1:Image) : void
        {
            var _loc_2:* = this._1733430099researchButton;
            if (_loc_2 !== param1)
            {
                this._1733430099researchButton = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "researchButton", _loc_2, param1));
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

        public function get notPressedShikihime() : Image
        {
            return this._1047942492notPressedShikihime;
        }// end function

        public function get products() : Image
        {
            return this._1003761308products;
        }// end function

        public function set questButton(param1:Image) : void
        {
            var _loc_2:* = this._146507084questButton;
            if (_loc_2 !== param1)
            {
                this._146507084questButton = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "questButton", _loc_2, param1));
            }
            return;
        }// end function

        private function onDescriptionCloce() : void
        {
            descriptionWindowVisible = false;
            return;
        }// end function

        public function get buildingImages11() : Image
        {
            return this._826559852buildingImages11;
        }// end function

        private function _Home_Glow2_i() : Glow
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

        public function __reportButton_click(event:MouseEvent) : void
        {
            clickButtons(Viking.HOME_BATTLE_REPORT_LIST, 190, -5);
            return;
        }// end function

        public function get researchText() : Canvas
        {
            return this._16594280researchText;
        }// end function

        public function __mailButton_click(event:MouseEvent) : void
        {
            clickButtons(Viking.HOME_MAIL_LIST, 128, -5);
            return;
        }// end function

        public function get buildingImages10() : Image
        {
            return this._826559851buildingImages10;
        }// end function

        public function get shikihimeButton() : Image
        {
            return this._614872707shikihimeButton;
        }// end function

        private function set _areasAdded(param1:Boolean) : void
        {
            var _loc_2:* = this._1505818439_areasAdded;
            if (_loc_2 !== param1)
            {
                this._1505818439_areasAdded = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "_areasAdded", _loc_2, param1));
            }
            return;
        }// end function

        public function set fadeIn(param1:Fade) : void
        {
            var _loc_2:* = this._1282133823fadeIn;
            if (_loc_2 !== param1)
            {
                this._1282133823fadeIn = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "fadeIn", _loc_2, param1));
            }
            return;
        }// end function

        public function get reportButton() : Image
        {
            return this._117682566reportButton;
        }// end function

        public function get wipeOut() : WipeDown
        {
            return this._1351339399wipeOut;
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

        public function get glow() : Glow
        {
            return this._3175821glow;
        }// end function

        public function setAllItem(param1:HomeVO) : void
        {
            var homeVO:* = param1;
            homeAllItem.setEquipment(homeVO.resourceVO);
            homeAllItem.setMaterials(homeVO.resourceVO.materials.filter(function (param1, param2:int, param3:Array) : Boolean
            {
                return param1.quantity > 0;
            }// end function
            ));
            return;
        }// end function

        public function set tutMarkShikihime(param1:Image) : void
        {
            var _loc_2:* = this._1690928843tutMarkShikihime;
            if (_loc_2 !== param1)
            {
                this._1690928843tutMarkShikihime = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "tutMarkShikihime", _loc_2, param1));
            }
            return;
        }// end function

        public function removeTutMarks() : void
        {
            tutMarkAllMap.visible = false;
            tutMarkSubjugation.visible = false;
            tutMarkCeremony.visible = false;
            tutMarkShikihime.visible = false;
            tutMarkProduction.visible = false;
            tutMarkResearch.visible = false;
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

        private function _Home_ClassFactory1_c() : ClassFactory
        {
            var _loc_1:* = new ClassFactory();
            _loc_1.generator = TaskTextRenderer;
            return _loc_1;
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

        private function removeBuildingAt(param1:int) : void
        {
            setBuildingAt(null, param1);
            return;
        }// end function

        private function set descriptionVisible(param1:ArrayCollection) : void
        {
            var _loc_2:* = this._1949052714descriptionVisible;
            if (_loc_2 !== param1)
            {
                this._1949052714descriptionVisible = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "descriptionVisible", _loc_2, param1));
            }
            return;
        }// end function

        private function _Home_Glow1_i() : Glow
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

        public function get info_txt_box_news() : Box
        {
            return this._970364505info_txt_box_news;
        }// end function

        private function get _swf_balloon() : MovieClipLoaderAsset
        {
            return this._680684109_swf_balloon;
        }// end function

        private function get infoBoxVO() : InfoBoxVO
        {
            return this._1204726198infoBoxVO;
        }// end function

        public function set tribulationButton(param1:Image) : void
        {
            var _loc_2:* = this._1149343527tribulationButton;
            if (_loc_2 !== param1)
            {
                this._1149343527tribulationButton = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "tribulationButton", _loc_2, param1));
            }
            return;
        }// end function

        public function get guildChatWindow() : GuildChatWindow
        {
            return this._1211793989guildChatWindow;
        }// end function

        public function isMaxTaskIncrement() : Boolean
        {
            return player && player.incrementMaxTasks;
        }// end function

        public function set player(param1:PlayerVO) : void
        {
            _player = param1;
            _areasAdded = player.addedAreasCount > 0;
            unreadMail = player.unreadMail;
            return;
        }// end function

        private function get guildChatText() : ArrayCollection
        {
            return this._537666120guildChatText;
        }// end function

        public function get buildingLevelIcon() : Canvas
        {
            return this._925711927buildingLevelIcon;
        }// end function

        public function __balloonCanvas_click(event:MouseEvent) : void
        {
            clickCloseBalloon();
            return;
        }// end function

        private function set researchLevels(param1:ArrayCollection) : void
        {
            var _loc_2:* = this._1461869846researchLevels;
            if (_loc_2 !== param1)
            {
                this._1461869846researchLevels = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "researchLevels", _loc_2, param1));
            }
            return;
        }// end function

        private function set nowDay(param1:int) : void
        {
            var _loc_2:* = this._1039636250nowDay;
            if (_loc_2 !== param1)
            {
                this._1039636250nowDay = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "nowDay", _loc_2, param1));
            }
            return;
        }// end function

        public function get notPressed() : Image
        {
            return this._1551673905notPressed;
        }// end function

        private function set descriptionCloseButtonVisible(param1:Boolean) : void
        {
            var _loc_2:* = this._1842101532descriptionCloseButtonVisible;
            if (_loc_2 !== param1)
            {
                this._1842101532descriptionCloseButtonVisible = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "descriptionCloseButtonVisible", _loc_2, param1));
            }
            return;
        }// end function

        public function setAllSleepUnit(param1:HomeAllSleepUnit) : void
        {
            sleepUnitList.addChild(param1);
            return;
        }// end function

        public function breakString(param1:String) : void
        {
            var _loc_2:* = new String();
            var _loc_3:int = 0;
            var _loc_4:Boolean = false;
            var _loc_5:int = 0;
            while (_loc_5 < param1.length)
            {
                
                if (param1.charAt(_loc_5) == "$")
                {
                    if (_loc_4)
                    {
                        assistantParam.setItemAt(_loc_2, _loc_3);
                        _loc_2 = new String();
                        _loc_3++;
                    }
                    _loc_4 = true;
                }
                else
                {
                    _loc_2 = _loc_2 + param1.charAt(_loc_5);
                    _loc_4 = false;
                }
                _loc_5++;
            }
            assistantParam.setItemAt(_loc_2, _loc_3);
            descriptionVisible = new ArrayCollection(new Array((_loc_3 + 1)));
            var _loc_6:int = 0;
            while (_loc_6 < descriptionVisible.length)
            {
                
                descriptionVisible.setItemAt(false, _loc_6);
                var _loc_8:* = pageSize + 1;
                pageSize = _loc_8;
                _loc_6++;
            }
            pageSize = pageSize / 3;
            descriptionVisible.setItemAt(true, 0);
            if (pageSize <= (descriptionVisibleIndex + 1))
            {
                descriptionButtonVisible = false;
                descriptionCloseButtonVisible = true;
            }
            return;
        }// end function

        private function set assistantImages(param1:ArrayCollection) : void
        {
            var _loc_2:* = this._1354579210assistantImages;
            if (_loc_2 !== param1)
            {
                this._1354579210assistantImages = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "assistantImages", _loc_2, param1));
            }
            return;
        }// end function

        public function get pressedButton() : Image
        {
            return this._109994508pressedButton;
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

        public function ___Home_Image20_click(event:MouseEvent) : void
        {
            sendEvent(Viking.HOME_ACTION_GOTO_EXPEDITION_PORTAL);
            return;
        }// end function

        public function set tutMarkTutorial(param1:Image) : void
        {
            var _loc_2:* = this._1863513346tutMarkTutorial;
            if (_loc_2 !== param1)
            {
                this._1863513346tutMarkTutorial = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "tutMarkTutorial", _loc_2, param1));
            }
            return;
        }// end function

        public function get taskBox() : Box
        {
            return this._1537268218taskBox;
        }// end function

        public function set actionButton(param1:Canvas) : void
        {
            var _loc_2:* = this._1022398728actionButton;
            if (_loc_2 !== param1)
            {
                this._1022398728actionButton = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "actionButton", _loc_2, param1));
            }
            return;
        }// end function

        private function _Home_WipeUp1_i() : WipeUp
        {
            var _loc_1:* = new WipeUp();
            wipeIn = _loc_1;
            _loc_1.duration = 500;
            return _loc_1;
        }// end function

        public function get establishment() : Canvas
        {
            return this._1480760809establishment;
        }// end function

        private function _Home_Fade2_i() : Fade
        {
            var _loc_1:* = new Fade();
            fadeIn = _loc_1;
            _loc_1.duration = 700;
            _loc_1.alphaFrom = 0;
            _loc_1.alphaTo = 1;
            return _loc_1;
        }// end function

        public function set galleryList(param1:Canvas) : void
        {
            var _loc_2:* = this._2145428240galleryList;
            if (_loc_2 !== param1)
            {
                this._2145428240galleryList = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "galleryList", _loc_2, param1));
            }
            return;
        }// end function

        public function set assistantLayer(param1:Canvas) : void
        {
            var _loc_2:* = this._235834643assistantLayer;
            if (_loc_2 !== param1)
            {
                this._235834643assistantLayer = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "assistantLayer", _loc_2, param1));
            }
            return;
        }// end function

        public function get tutMarkCeremony() : Image
        {
            return this._1486656034tutMarkCeremony;
        }// end function

        public function get playerStatus() : PlayerStatus
        {
            return this._252712397playerStatus;
        }// end function

        private function MouseDownFunc() : void
        {
            stage.displayState = StageDisplayState.FULL_SCREEN;
            return;
        }// end function

        public function get infoBox() : Box
        {
            return this._1945385533infoBox;
        }// end function

        public function set galleryButton(param1:Image) : void
        {
            var _loc_2:* = this._102939356galleryButton;
            if (_loc_2 !== param1)
            {
                this._102939356galleryButton = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "galleryButton", _loc_2, param1));
            }
            return;
        }// end function

        private function get descriptionButtonVisible() : Boolean
        {
            return this._801262148descriptionButtonVisible;
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

        public function get itemList() : Canvas
        {
            return this._1177280081itemList;
        }// end function

        private function get buildingImages() : ArrayCollection
        {
            return this._470133324buildingImages;
        }// end function

        public function removeButtons() : void
        {
            pressedButtonVisible = false;
            return;
        }// end function

        private function _Home_bindingExprs() : void
        {
            var _loc_1:* = undefined;
            _loc_1 = buildingImages.getItemAt(0);
            _loc_1 = buildingImages.getItemAt(1);
            _loc_1 = buildingImages.getItemAt(2);
            _loc_1 = buildingImages.getItemAt(3);
            _loc_1 = buildingImages.getItemAt(4);
            _loc_1 = buildingImages.getItemAt(10);
            _loc_1 = buildingImages.getItemAt(5);
            _loc_1 = buildingImages.getItemAt(11);
            _loc_1 = buildingImages.getItemAt(6);
            _loc_1 = buildingImages.getItemAt(7);
            _loc_1 = buildingImages.getItemAt(8);
            _loc_1 = buildingImages.getItemAt(9);
            _loc_1 = _swf_research;
            _loc_1 = researchLevels.getItemAt(0);
            _loc_1 = researchLevels.getItemAt(1);
            _loc_1 = researchLevels.getItemAt(2);
            _loc_1 = researchLevels.getItemAt(3);
            _loc_1 = researchLevels.getItemAt(4);
            _loc_1 = _swf_balloon;
            _loc_1 = _swf_info_chat;
            _loc_1 = _swf_faction;
            _loc_1 = _swf_rank;
            _loc_1 = _tasks;
            _loc_1 = _unreadMail;
            _loc_1 = pressedButtonPointX;
            _loc_1 = pressedButtonPointY;
            _loc_1 = pressedButtonVisible;
            return;
        }// end function

        public function set fadeOut(param1:Fade) : void
        {
            var _loc_2:* = this._1091436750fadeOut;
            if (_loc_2 !== param1)
            {
                this._1091436750fadeOut = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "fadeOut", _loc_2, param1));
            }
            return;
        }// end function

        private function _Home_Fade1_i() : Fade
        {
            var _loc_1:* = new Fade();
            fadeOut = _loc_1;
            _loc_1.duration = 500;
            _loc_1.alphaFrom = 1;
            _loc_1.alphaTo = 0;
            return _loc_1;
        }// end function

        public function ___Home_Image19_click(event:MouseEvent) : void
        {
            sendEvent(Viking.HOME_ACTION_GOTO_COLONY);
            return;
        }// end function

        public function set assistantText(param1:TextArea) : void
        {
            var _loc_2:* = this._1670417707assistantText;
            if (_loc_2 !== param1)
            {
                this._1670417707assistantText = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "assistantText", _loc_2, param1));
            }
            return;
        }// end function

        private function sendBuildEvent(param1:String, param2:int = 0) : void
        {
            landID = param2;
            this.dispatchEvent(new Event(param1));
            return;
        }// end function

        public function get homeAllItem() : HomeAllItem
        {
            return this._1299191179homeAllItem;
        }// end function

        public function set tutMarkResearch(param1:Image) : void
        {
            var _loc_2:* = this._1887281467tutMarkResearch;
            if (_loc_2 !== param1)
            {
                this._1887281467tutMarkResearch = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "tutMarkResearch", _loc_2, param1));
            }
            return;
        }// end function

        public function get balloonCanvas() : Canvas
        {
            return this._1626687897balloonCanvas;
        }// end function

        public function get fade() : Image
        {
            return this._3135100fade;
        }// end function

        private function get _tasks() : Array
        {
            return this._1465065841_tasks;
        }// end function

        private function set nowMonth(param1:int) : void
        {
            var _loc_2:* = this._1645665610nowMonth;
            if (_loc_2 !== param1)
            {
                this._1645665610nowMonth = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "nowMonth", _loc_2, param1));
            }
            return;
        }// end function

        public function get myViewStack() : ViewStack
        {
            return this._182637929myViewStack;
        }// end function

        public function get tutMarkSubjugation() : Image
        {
            return this._1020918119tutMarkSubjugation;
        }// end function

        public function get firstTimeBG() : Image
        {
            return this._1014770014firstTimeBG;
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

        public function set firstTimeCanvas(param1:Canvas) : void
        {
            var _loc_2:* = this._501922133firstTimeCanvas;
            if (_loc_2 !== param1)
            {
                this._501922133firstTimeCanvas = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "firstTimeCanvas", _loc_2, param1));
            }
            return;
        }// end function

        public function get questButton() : Image
        {
            return this._146507084questButton;
        }// end function

        public function set notPressedShikihime(param1:Image) : void
        {
            var _loc_2:* = this._1047942492notPressedShikihime;
            if (_loc_2 !== param1)
            {
                this._1047942492notPressedShikihime = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "notPressedShikihime", _loc_2, param1));
            }
            return;
        }// end function

        public function __tribulationButton_click(event:MouseEvent) : void
        {
            sendEvent(Viking.HOME_SHOW_TUTORIAL_WINDOW);
            return;
        }// end function

        public function set buildingImages0(param1:Image) : void
        {
            var _loc_2:* = this._1689231204buildingImages0;
            if (_loc_2 !== param1)
            {
                this._1689231204buildingImages0 = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "buildingImages0", _loc_2, param1));
            }
            return;
        }// end function

        public function set buildingImages1(param1:Image) : void
        {
            var _loc_2:* = this._1689231205buildingImages1;
            if (_loc_2 !== param1)
            {
                this._1689231205buildingImages1 = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "buildingImages1", _loc_2, param1));
            }
            return;
        }// end function

        public function get tutMarkShikihime() : Image
        {
            return this._1690928843tutMarkShikihime;
        }// end function

        public function set buildingImages2(param1:Image) : void
        {
            var _loc_2:* = this._1689231206buildingImages2;
            if (_loc_2 !== param1)
            {
                this._1689231206buildingImages2 = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "buildingImages2", _loc_2, param1));
            }
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

        public function get base() : Image
        {
            return this._3016401base;
        }// end function

        public function set buildingImages5(param1:Image) : void
        {
            var _loc_2:* = this._1689231209buildingImages5;
            if (_loc_2 !== param1)
            {
                this._1689231209buildingImages5 = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "buildingImages5", _loc_2, param1));
            }
            return;
        }// end function

        public function __galleryButton_click(event:MouseEvent) : void
        {
            clickButtons(Viking.HOME_ALL_GALLERY_VIEW, 439, 192);
            return;
        }// end function

        public function set buildingImages3(param1:Image) : void
        {
            var _loc_2:* = this._1689231207buildingImages3;
            if (_loc_2 !== param1)
            {
                this._1689231207buildingImages3 = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "buildingImages3", _loc_2, param1));
            }
            return;
        }// end function

        public function set buildingImages7(param1:Image) : void
        {
            var _loc_2:* = this._1689231211buildingImages7;
            if (_loc_2 !== param1)
            {
                this._1689231211buildingImages7 = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "buildingImages7", _loc_2, param1));
            }
            return;
        }// end function

        public function set buildingImages9(param1:Image) : void
        {
            var _loc_2:* = this._1689231213buildingImages9;
            if (_loc_2 !== param1)
            {
                this._1689231213buildingImages9 = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "buildingImages9", _loc_2, param1));
            }
            return;
        }// end function

        public function set buildingImages6(param1:Image) : void
        {
            var _loc_2:* = this._1689231210buildingImages6;
            if (_loc_2 !== param1)
            {
                this._1689231210buildingImages6 = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "buildingImages6", _loc_2, param1));
            }
            return;
        }// end function

        public function set buildingImages11(param1:Image) : void
        {
            var _loc_2:* = this._826559852buildingImages11;
            if (_loc_2 !== param1)
            {
                this._826559852buildingImages11 = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "buildingImages11", _loc_2, param1));
            }
            return;
        }// end function

        public function get player() : PlayerVO
        {
            return _player;
        }// end function

        public function set assistantBalloon(param1:Image) : void
        {
            var _loc_2:* = this._1293073551assistantBalloon;
            if (_loc_2 !== param1)
            {
                this._1293073551assistantBalloon = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "assistantBalloon", _loc_2, param1));
            }
            return;
        }// end function

        public function set buildingImages8(param1:Image) : void
        {
            var _loc_2:* = this._1689231212buildingImages8;
            if (_loc_2 !== param1)
            {
                this._1689231212buildingImages8 = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "buildingImages8", _loc_2, param1));
            }
            return;
        }// end function

        private function get researchLevels() : ArrayCollection
        {
            return this._1461869846researchLevels;
        }// end function

        public function set buildingImages4(param1:Image) : void
        {
            var _loc_2:* = this._1689231208buildingImages4;
            if (_loc_2 !== param1)
            {
                this._1689231208buildingImages4 = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "buildingImages4", _loc_2, param1));
            }
            return;
        }// end function

        private function getResearchLevel() : void
        {
            researchLevels.setItemAt(_homeMaps[1].buildingVO.level, 0);
            researchLevels.setItemAt(_homeMaps[3].buildingVO.level, 1);
            researchLevels.setItemAt(_homeMaps[4].buildingVO.level, 2);
            researchLevels.setItemAt(_homeMaps[6].buildingVO.level, 3);
            researchLevels.setItemAt(_homeMaps[8].buildingVO.level, 4);
            return;
        }// end function

        private function get assistantImages() : ArrayCollection
        {
            return this._1354579210assistantImages;
        }// end function

        public function set homeEstablishment(param1:HomeEstablishment) : void
        {
            var _loc_2:* = this._913653896homeEstablishment;
            if (_loc_2 !== param1)
            {
                this._913653896homeEstablishment = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "homeEstablishment", _loc_2, param1));
            }
            return;
        }// end function

        public function set researchText(param1:Canvas) : void
        {
            var _loc_2:* = this._16594280researchText;
            if (_loc_2 !== param1)
            {
                this._16594280researchText = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "researchText", _loc_2, param1));
            }
            return;
        }// end function

        public function get tutMarkTutorial() : Image
        {
            return this._1863513346tutMarkTutorial;
        }// end function

        public function set shikihimeButton(param1:Image) : void
        {
            var _loc_2:* = this._614872707shikihimeButton;
            if (_loc_2 !== param1)
            {
                this._614872707shikihimeButton = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "shikihimeButton", _loc_2, param1));
            }
            return;
        }// end function

        public function ___Home_Image24_click(event:MouseEvent) : void
        {
            dispatchEvent(new PopupEvent(Viking.HOME_ENTER_CITY, "guild"));
            return;
        }// end function

        public function get infoButtonCanvas() : Canvas
        {
            return this._1336606984infoButtonCanvas;
        }// end function

        public function set reportButton(param1:Image) : void
        {
            var _loc_2:* = this._117682566reportButton;
            if (_loc_2 !== param1)
            {
                this._117682566reportButton = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "reportButton", _loc_2, param1));
            }
            return;
        }// end function

        public function set wipeOut(param1:WipeDown) : void
        {
            var _loc_2:* = this._1351339399wipeOut;
            if (_loc_2 !== param1)
            {
                this._1351339399wipeOut = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "wipeOut", _loc_2, param1));
            }
            return;
        }// end function

        public function set buildingImages10(param1:Image) : void
        {
            var _loc_2:* = this._826559851buildingImages10;
            if (_loc_2 !== param1)
            {
                this._826559851buildingImages10 = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "buildingImages10", _loc_2, param1));
            }
            return;
        }// end function

        public function get galleryList() : Canvas
        {
            return this._2145428240galleryList;
        }// end function

        public function ___Home_CanvasWithPopUp1_creationComplete(event:FlexEvent) : void
        {
            init();
            return;
        }// end function

        private function onItemClick() : void
        {
            switch(myViewStack.selectedIndex)
            {
                case 0:
                {
                    dispatchEvent(new Event(Viking.HOME_MAIN_VIEW));
                    break;
                }
                case 1:
                {
                    dispatchEvent(new Event(Viking.HOME_ALL_UNIT_VIEW));
                    break;
                }
                case 2:
                {
                    dispatchEvent(new Event(Viking.HOME_ALL_ITEM_VIEW));
                    break;
                }
                case 3:
                {
                    dispatchEvent(new Event(Viking.HOME_ALL_SLEEP_UNIT_VIEW));
                    break;
                }
                case 4:
                {
                    dispatchEvent(new Event(Viking.HOME_ESTABLISHMENT_VIEW));
                    break;
                }
                default:
                {
                    break;
                }
            }
            return;
        }// end function

        public function __assistantBalloon_click(event:MouseEvent) : void
        {
            clickCloseBalloon();
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

        private function get descriptionCloseButtonVisible() : Boolean
        {
            return this._1842101532descriptionCloseButtonVisible;
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

        public function ___Home_Image18_click(event:MouseEvent) : void
        {
            sendEvent(Viking.HOME_ACTION_GOTO_SUBJUGATION);
            return;
        }// end function

        public function set tutMarkAllMap(param1:Image) : void
        {
            var _loc_2:* = this._1966765157tutMarkAllMap;
            if (_loc_2 !== param1)
            {
                this._1966765157tutMarkAllMap = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "tutMarkAllMap", _loc_2, param1));
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

        public function get fadeOut() : Fade
        {
            return this._1091436750fadeOut;
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

        public function __researchButton_click(event:MouseEvent) : void
        {
            clickButtons(Viking.HOME_ACTION_OPEN_RESEARCH_WINDOW, 193, 285);
            return;
        }// end function

        public function get windowLayer() : Canvas
        {
            return this._1896677185windowLayer;
        }// end function

        public function set infoCanvas(param1:Canvas) : void
        {
            var _loc_2:* = this._1292760154infoCanvas;
            if (_loc_2 !== param1)
            {
                this._1292760154infoCanvas = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "infoCanvas", _loc_2, param1));
            }
            return;
        }// end function

        public function get buildingImages0() : Image
        {
            return this._1689231204buildingImages0;
        }// end function

        public function get buildingImages2() : Image
        {
            return this._1689231206buildingImages2;
        }// end function

        public function get buildingImages4() : Image
        {
            return this._1689231208buildingImages4;
        }// end function

        public function get buildingImages5() : Image
        {
            return this._1689231209buildingImages5;
        }// end function

        public function get buildingImages6() : Image
        {
            return this._1689231210buildingImages6;
        }// end function

        public function get buildingImages8() : Image
        {
            return this._1689231212buildingImages8;
        }// end function

        public function get buildingImages9() : Image
        {
            return this._1689231213buildingImages9;
        }// end function

        public function get buildingImages3() : Image
        {
            return this._1689231207buildingImages3;
        }// end function

        public function get buildingImages7() : Image
        {
            return this._1689231211buildingImages7;
        }// end function

        public function getBuildingPosition(param1:int) : Point
        {
            var _loc_2:* = "buildingImages" + param1 as String;
            var _loc_3:* = new Point(this[_loc_2].x, this[_loc_2].y);
            return _loc_3;
        }// end function

        private function set _swf_balloon(param1:MovieClipLoaderAsset) : void
        {
            var _loc_2:* = this._680684109_swf_balloon;
            if (_loc_2 !== param1)
            {
                this._680684109_swf_balloon = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "_swf_balloon", _loc_2, param1));
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

        private function set guildChatText(param1:ArrayCollection) : void
        {
            var _loc_2:* = this._537666120guildChatText;
            if (_loc_2 !== param1)
            {
                this._537666120guildChatText = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "guildChatText", _loc_2, param1));
            }
            return;
        }// end function

        public function __prodctionButton_click(event:MouseEvent) : void
        {
            clickButtons(Viking.HOME_SHOW_PRODUCTION_WINDOW, 193, 145);
            return;
        }// end function

        public function get homeEstablishment() : HomeEstablishment
        {
            return this._913653896homeEstablishment;
        }// end function

        public function get assistantBalloon() : Image
        {
            return this._1293073551assistantBalloon;
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

        public function get buildingImages1() : Image
        {
            return this._1689231205buildingImages1;
        }// end function

        private function set _swf_tmark(param1:MovieClipLoaderAsset) : void
        {
            var _loc_2:* = this._1209556933_swf_tmark;
            if (_loc_2 !== param1)
            {
                this._1209556933_swf_tmark = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "_swf_tmark", _loc_2, param1));
            }
            return;
        }// end function

        private function set descriptionWindowVisible(param1:Boolean) : void
        {
            var _loc_2:* = this._1227187142descriptionWindowVisible;
            if (_loc_2 !== param1)
            {
                this._1227187142descriptionWindowVisible = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "descriptionWindowVisible", _loc_2, param1));
            }
            return;
        }// end function

        public function get tasks() : Array
        {
            return _tasks;
        }// end function

        public function set buildingLevelIcon(param1:Canvas) : void
        {
            var _loc_2:* = this._925711927buildingLevelIcon;
            if (_loc_2 !== param1)
            {
                this._925711927buildingLevelIcon = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "buildingLevelIcon", _loc_2, param1));
            }
            return;
        }// end function

        private function lotClicked(param1:int) : void
        {
            sendBuildEvent(Viking.HOME_BUILD, param1);
            return;
        }// end function

        override public function initialize() : void
        {
            var target:Home;
            var watcherSetupUtilClass:Object;
            .mx_internal::setDocumentDescriptor(_documentDescriptor_);
            var bindings:* = _Home_bindingsSetup();
            var watchers:Array;
            target;
            if (_watcherSetupUtil == null)
            {
                watcherSetupUtilClass = getDefinitionByName("_com_kbmj_viking_HomeWatcherSetupUtil");
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

        private function get _swf_faction() : MovieClipLoaderAsset
        {
            return this._1433715808_swf_faction;
        }// end function

        public function set mailButton(param1:Image) : void
        {
            var _loc_2:* = this._1795771447mailButton;
            if (_loc_2 !== param1)
            {
                this._1795771447mailButton = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "mailButton", _loc_2, param1));
            }
            return;
        }// end function

        public function get infoCanvas() : Canvas
        {
            return this._1292760154infoCanvas;
        }// end function

        public function set wipeIn(param1:WipeUp) : void
        {
            var _loc_2:* = this._787692596wipeIn;
            if (_loc_2 !== param1)
            {
                this._787692596wipeIn = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "wipeIn", _loc_2, param1));
            }
            return;
        }// end function

        public function __pressedButton_click(event:MouseEvent) : void
        {
            sendEvent(Viking.HOME_CLOSE_NOW_WINDOW);
            return;
        }// end function

        public function set notPressed(param1:Image) : void
        {
            var _loc_2:* = this._1551673905notPressed;
            if (_loc_2 !== param1)
            {
                this._1551673905notPressed = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "notPressed", _loc_2, param1));
            }
            return;
        }// end function

        public function popupBuildWindow(param1:BuildWindow, param2:Array, param3:int, param4:Object) : void
        {
            param1.playerRank = param3;
            param1.constructions = param2;
            param1.buildings = param4;
            param1.homeBuildings = homeMaps;
            this.popupWindow(param1);
            return;
        }// end function

        public function get tutMarkAllMap() : Image
        {
            return this._1966765157tutMarkAllMap;
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

        private function set pressedButtonPointY(param1:int) : void
        {
            var _loc_2:* = this._1924554787pressedButtonPointY;
            if (_loc_2 !== param1)
            {
                this._1924554787pressedButtonPointY = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "pressedButtonPointY", _loc_2, param1));
            }
            return;
        }// end function

        private function set pressedButtonVisible(param1:Boolean) : void
        {
            var _loc_2:* = this._1335693278pressedButtonVisible;
            if (_loc_2 !== param1)
            {
                this._1335693278pressedButtonVisible = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "pressedButtonVisible", _loc_2, param1));
            }
            return;
        }// end function

        private function set pressedButtonPointX(param1:int) : void
        {
            var _loc_2:* = this._1924554788pressedButtonPointX;
            if (_loc_2 !== param1)
            {
                this._1924554788pressedButtonPointX = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "pressedButtonPointX", _loc_2, param1));
            }
            return;
        }// end function

        public function get taskList() : List
        {
            return this._410382397taskList;
        }// end function

        public function ___Home_Image23_click(event:MouseEvent) : void
        {
            dispatchEvent(new PopupEvent(Viking.HOME_ENTER_CITY, "market"));
            return;
        }// end function

        private function get _swf_tmark() : MovieClipLoaderAsset
        {
            return this._1209556933_swf_tmark;
        }// end function

        private function get descriptionWindowVisible() : Boolean
        {
            return this._1227187142descriptionWindowVisible;
        }// end function

        public function get mailButton() : Image
        {
            return this._1795771447mailButton;
        }// end function

        public function get wipeIn() : WipeUp
        {
            return this._787692596wipeIn;
        }// end function

        private function get pressedButtonPointX() : int
        {
            return this._1924554788pressedButtonPointX;
        }// end function

        private function get pressedButtonPointY() : int
        {
            return this._1924554787pressedButtonPointY;
        }// end function

        public function get productionInfoWindow() : ProductionInfoWindow
        {
            return this._1252748247productionInfoWindow;
        }// end function

        private function get pressedButtonVisible() : Boolean
        {
            return this._1335693278pressedButtonVisible;
        }// end function

        public function set pressedButton(param1:Image) : void
        {
            var _loc_2:* = this._109994508pressedButton;
            if (_loc_2 !== param1)
            {
                this._109994508pressedButton = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "pressedButton", _loc_2, param1));
            }
            return;
        }// end function

        public function ___Home_Image17_click(event:MouseEvent) : void
        {
            sendEvent(Viking.HOME_ACTION_GOTO_MATCH_PORTAL);
            return;
        }// end function

        private function _Home_bindingsSetup() : Array
        {
            var binding:Binding;
            var result:Array;
            binding = new Binding(this, function () : Object
            {
                return buildingImages.getItemAt(0);
            }// end function
            , function (param1:Object) : void
            {
                buildingImages0.source = param1;
                return;
            }// end function
            , "buildingImages0.source");
            result[0] = binding;
            binding = new Binding(this, function () : Object
            {
                return buildingImages.getItemAt(1);
            }// end function
            , function (param1:Object) : void
            {
                buildingImages1.source = param1;
                return;
            }// end function
            , "buildingImages1.source");
            result[1] = binding;
            binding = new Binding(this, function () : Object
            {
                return buildingImages.getItemAt(2);
            }// end function
            , function (param1:Object) : void
            {
                buildingImages2.source = param1;
                return;
            }// end function
            , "buildingImages2.source");
            result[2] = binding;
            binding = new Binding(this, function () : Object
            {
                return buildingImages.getItemAt(3);
            }// end function
            , function (param1:Object) : void
            {
                buildingImages3.source = param1;
                return;
            }// end function
            , "buildingImages3.source");
            result[3] = binding;
            binding = new Binding(this, function () : Object
            {
                return buildingImages.getItemAt(4);
            }// end function
            , function (param1:Object) : void
            {
                buildingImages4.source = param1;
                return;
            }// end function
            , "buildingImages4.source");
            result[4] = binding;
            binding = new Binding(this, function () : Object
            {
                return buildingImages.getItemAt(10);
            }// end function
            , function (param1:Object) : void
            {
                buildingImages10.source = param1;
                return;
            }// end function
            , "buildingImages10.source");
            result[5] = binding;
            binding = new Binding(this, function () : Object
            {
                return buildingImages.getItemAt(5);
            }// end function
            , function (param1:Object) : void
            {
                buildingImages5.source = param1;
                return;
            }// end function
            , "buildingImages5.source");
            result[6] = binding;
            binding = new Binding(this, function () : Object
            {
                return buildingImages.getItemAt(11);
            }// end function
            , function (param1:Object) : void
            {
                buildingImages11.source = param1;
                return;
            }// end function
            , "buildingImages11.source");
            result[7] = binding;
            binding = new Binding(this, function () : Object
            {
                return buildingImages.getItemAt(6);
            }// end function
            , function (param1:Object) : void
            {
                buildingImages6.source = param1;
                return;
            }// end function
            , "buildingImages6.source");
            result[8] = binding;
            binding = new Binding(this, function () : Object
            {
                return buildingImages.getItemAt(7);
            }// end function
            , function (param1:Object) : void
            {
                buildingImages7.source = param1;
                return;
            }// end function
            , "buildingImages7.source");
            result[9] = binding;
            binding = new Binding(this, function () : Object
            {
                return buildingImages.getItemAt(8);
            }// end function
            , function (param1:Object) : void
            {
                buildingImages8.source = param1;
                return;
            }// end function
            , "buildingImages8.source");
            result[10] = binding;
            binding = new Binding(this, function () : Object
            {
                return buildingImages.getItemAt(9);
            }// end function
            , function (param1:Object) : void
            {
                buildingImages9.source = param1;
                return;
            }// end function
            , "buildingImages9.source");
            result[11] = binding;
            binding = new Binding(this, function () : Object
            {
                return _swf_research;
            }// end function
            , function (param1:Object) : void
            {
                _Home_Image15.source = param1;
                return;
            }// end function
            , "_Home_Image15.source");
            result[12] = binding;
            binding = new Binding(this, function () : String
            {
                var _loc_1:* = researchLevels.getItemAt(0);
                var _loc_2:* = _loc_1 == undefined ? (null) : (String(_loc_1));
                return _loc_2;
            }// end function
            , function (param1:String) : void
            {
                _Home_Text1.text = param1;
                return;
            }// end function
            , "_Home_Text1.text");
            result[13] = binding;
            binding = new Binding(this, function () : String
            {
                var _loc_1:* = researchLevels.getItemAt(1);
                var _loc_2:* = _loc_1 == undefined ? (null) : (String(_loc_1));
                return _loc_2;
            }// end function
            , function (param1:String) : void
            {
                _Home_Text2.text = param1;
                return;
            }// end function
            , "_Home_Text2.text");
            result[14] = binding;
            binding = new Binding(this, function () : String
            {
                var _loc_1:* = researchLevels.getItemAt(2);
                var _loc_2:* = _loc_1 == undefined ? (null) : (String(_loc_1));
                return _loc_2;
            }// end function
            , function (param1:String) : void
            {
                _Home_Text3.text = param1;
                return;
            }// end function
            , "_Home_Text3.text");
            result[15] = binding;
            binding = new Binding(this, function () : String
            {
                var _loc_1:* = researchLevels.getItemAt(3);
                var _loc_2:* = _loc_1 == undefined ? (null) : (String(_loc_1));
                return _loc_2;
            }// end function
            , function (param1:String) : void
            {
                _Home_Text4.text = param1;
                return;
            }// end function
            , "_Home_Text4.text");
            result[16] = binding;
            binding = new Binding(this, function () : String
            {
                var _loc_1:* = researchLevels.getItemAt(4);
                var _loc_2:* = _loc_1 == undefined ? (null) : (String(_loc_1));
                return _loc_2;
            }// end function
            , function (param1:String) : void
            {
                _Home_Text5.text = param1;
                return;
            }// end function
            , "_Home_Text5.text");
            result[17] = binding;
            binding = new Binding(this, function () : Object
            {
                return _swf_balloon;
            }// end function
            , function (param1:Object) : void
            {
                assistantBalloon.source = param1;
                return;
            }// end function
            , "assistantBalloon.source");
            result[18] = binding;
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
            result[19] = binding;
            binding = new Binding(this, function () : Object
            {
                return _swf_faction;
            }// end function
            , function (param1:Object) : void
            {
                _Home_Image35.source = param1;
                return;
            }// end function
            , "_Home_Image35.source");
            result[20] = binding;
            binding = new Binding(this, function () : Object
            {
                return _swf_rank;
            }// end function
            , function (param1:Object) : void
            {
                _Home_Image36.source = param1;
                return;
            }// end function
            , "_Home_Image36.source");
            result[21] = binding;
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
            result[22] = binding;
            binding = new Binding(this, function () : Boolean
            {
                return _unreadMail;
            }// end function
            , function (param1:Boolean) : void
            {
                _Home_Image43.visible = param1;
                return;
            }// end function
            , "_Home_Image43.visible");
            result[23] = binding;
            binding = new Binding(this, function () : Number
            {
                return pressedButtonPointX;
            }// end function
            , function (param1:Number) : void
            {
                pressedButton.x = param1;
                return;
            }// end function
            , "pressedButton.x");
            result[24] = binding;
            binding = new Binding(this, function () : Number
            {
                return pressedButtonPointY;
            }// end function
            , function (param1:Number) : void
            {
                pressedButton.y = param1;
                return;
            }// end function
            , "pressedButton.y");
            result[25] = binding;
            binding = new Binding(this, function () : Boolean
            {
                return pressedButtonVisible;
            }// end function
            , function (param1:Boolean) : void
            {
                pressedButton.visible = param1;
                return;
            }// end function
            , "pressedButton.visible");
            result[26] = binding;
            return result;
        }// end function

        public function changeRank(param1) : void
        {
            MovieClip(Loader(_swf_rank.getChildAt(0)).content).gotoAndPlay(0);
            MovieClip(Loader(_swf_rank.getChildAt(0)).content).gotoAndPlay(param1);
            return;
        }// end function

        public static function set watcherSetupUtil(param1:IWatcherSetupUtil) : void
        {
            Home._watcherSetupUtil = param1;
            return;
        }// end function

    }
}
