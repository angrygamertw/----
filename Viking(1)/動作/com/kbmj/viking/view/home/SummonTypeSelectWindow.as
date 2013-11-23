package com.kbmj.viking.view.home
{
    import com.kbmj.viking.lib.*;
    import com.kbmj.viking.view.*;
    import flash.display.*;
    import flash.events.*;
    import flash.utils.*;
    import mx.binding.*;
    import mx.containers.*;
    import mx.controls.*;
    import mx.core.*;
    import mx.events.*;

    public class SummonTypeSelectWindow extends PopupWindow implements IBindingClient
    {
        private var _1584105757viewStack:ViewStack;
        public var _SummonTypeSelectWindow_Image11:Image;
        public var _SummonTypeSelectWindow_Image13:Image;
        public var _SummonTypeSelectWindow_Image15:Image;
        public var _SummonTypeSelectWindow_Image19:Image;
        private var _embed_mxml__swf_home_ceremony_button_ceremony_summon_special_50_swf_915386509:Class;
        private var _embed_mxml__swf_home_ceremony_button_ceremony_summon_pump03_50_swf_2089023273:Class;
        public var _SummonTypeSelectWindow_Image17:Image;
        public var _SummonTypeSelectWindow_Image3:Image;
        public var _SummonTypeSelectWindow_Image5:Image;
        public var _SummonTypeSelectWindow_Image7:Image;
        public var _SummonTypeSelectWindow_Image9:Image;
        public var _SummonTypeSelectWindow_Image6:Image;
        public var _SummonTypeSelectWindow_Image21:Image;
        public var _SummonTypeSelectWindow_Image22:Image;
        public var _SummonTypeSelectWindow_Image23:Image;
        public var _SummonTypeSelectWindow_Image24:Image;
        public var _SummonTypeSelectWindow_Image26:Image;
        public var _SummonTypeSelectWindow_Image28:Image;
        private var _767659960tutMarkNormalSummon:Image;
        public var _SummonTypeSelectWindow_Image30:Image;
        private var _1645641929_swf_close3:MovieClipLoaderAsset;
        public var _SummonTypeSelectWindow_TextArea10:TextArea;
        public var _SummonTypeSelectWindow_TextArea11:TextArea;
        public var _SummonTypeSelectWindow_TextArea12:TextArea;
        public var _SummonTypeSelectWindow_TextArea13:TextArea;
        public var _SummonTypeSelectWindow_TextArea14:TextArea;
        private var _1193840764_swf_close:MovieClipLoaderAsset;
        private var _embed_mxml__swf_home_ceremony_button_ceremony_summon_race01_50_swf_1335634135:Class;
        private var _embed_mxml__swf_home_ceremony_button_ceremony_summon_ex_50_swf_311190487:Class;
        private var _1645641930_swf_close2:MovieClipLoaderAsset;
        private var _embed_mxml__swf_home_ceremony_button_ceremony_summon_hero_50_swf_314880055:Class;
        var _bindingsByDestination:Object;
        private var _embed_mxml__swf_home_ceremony_button_ceremony_summon_race02_50_swf_1084292457:Class;
        private var _embed_mxml__images_icon_power_png_227571469:Class;
        var _watchers:Array;
        private var _1748459tutMarkNormalVisible:Boolean = false;
        public var _SummonTypeSelectWindow_TextArea1:TextArea;
        public var _SummonTypeSelectWindow_TextArea2:TextArea;
        public var _SummonTypeSelectWindow_TextArea3:TextArea;
        public var _SummonTypeSelectWindow_TextArea4:TextArea;
        public var _SummonTypeSelectWindow_TextArea5:TextArea;
        public var _SummonTypeSelectWindow_TextArea6:TextArea;
        public var _SummonTypeSelectWindow_TextArea8:TextArea;
        public var _SummonTypeSelectWindow_TextArea7:TextArea;
        public var _SummonTypeSelectWindow_Text2:Text;
        public var _SummonTypeSelectWindow_Text3:Text;
        public var _SummonTypeSelectWindow_Text4:Text;
        public var _SummonTypeSelectWindow_Text8:Text;
        public var _SummonTypeSelectWindow_Text9:Text;
        public var _SummonTypeSelectWindow_TextArea9:TextArea;
        private var _embed_mxml__swf_home_ceremony_button_ceremony_summon_pump02_50_swf_1551998441:Class;
        private var _embed_mxml__swf_home_ceremony_button_ceremony_summon_pump01_50_swf_1552415541:Class;
        private var _embed_mxml__swf_home_ceremony_button_ceremony_summon_brave_50_swf_1067012877:Class;
        private var _embed_mxml__swf_common_arrow_bottom_swf_1091498217:Class;
        var _bindingsBeginWithWord:Object;
        private var _embed_mxml__swf_home_ceremony_button_ceremony_summon_race03_50_swf_1356897069:Class;
        public var _SummonTypeSelectWindow_Text10:Text;
        public var _SummonTypeSelectWindow_Text11:Text;
        public var _SummonTypeSelectWindow_Text12:Text;
        public var _SummonTypeSelectWindow_Text13:Text;
        public var _SummonTypeSelectWindow_Text14:Text;
        public var _SummonTypeSelectWindow_Text15:Text;
        var _bindings:Array;
        private var _1645641928_swf_close4:MovieClipLoaderAsset;
        private var _embed_mxml__swf_home_ceremony_button_ceremony_summon_item_50_swf_382269079:Class;
        private var _embed_mxml__swf_home_ceremony_button_ceremony_summon_rainbow_50_swf_379564169:Class;
        private var _embed_mxml__swf_home_ceremony_button_ceremony_summon_nomal_50_swf_1080482551:Class;
        private var _794229178summonHeroEnabled:Boolean;
        private var _110371416title:Text;
        private var _documentDescriptor_:UIComponentDescriptor;
        public static const SUMMON_TYPE_ITEM:String = NAME + "summonTypeItem";
        public static const CEREMONY_WINDOW_CHANGE:String = NAME + "ceremonyWindowChange";
        public static const NAME:String = "summonTypeSelectWindow";
        private static var _watcherSetupUtil:IWatcherSetupUtil;
        public static const SUMMON_TYPE_SPECIAL:String = NAME + "summonTypeSpecial";
        public static const SUMMON_TYPE:String = NAME + "summonType";
        public static const SUMMON_END:String = NAME + "summonEnd";

        public function SummonTypeSelectWindow()
        {
            _documentDescriptor_ = new UIComponentDescriptor({type:PopupWindow, propertiesFactory:function () : Object
            {
                return {childDescriptors:[new UIComponentDescriptor({type:Canvas, propertiesFactory:function () : Object
                {
                    return {childDescriptors:[new UIComponentDescriptor({type:Text, id:"title", propertiesFactory:function () : Object
                    {
                        return {x:335, y:302, styleName:"PanelBaseTitle"};
                    }// end function
                    }), new UIComponentDescriptor({type:ViewStack, id:"viewStack", propertiesFactory:function () : Object
                    {
                        return {height:550, childDescriptors:[new UIComponentDescriptor({type:Canvas, propertiesFactory:function () : Object
                        {
                            return {childDescriptors:[new UIComponentDescriptor({type:HBox, propertiesFactory:function () : Object
                            {
                                return {x:80, y:302, width:620, childDescriptors:[new UIComponentDescriptor({type:Spacer, propertiesFactory:function () : Object
                                {
                                    return {percentWidth:100};
                                }// end function
                                }), new UIComponentDescriptor({type:Canvas, propertiesFactory:function () : Object
                                {
                                    return {childDescriptors:[new UIComponentDescriptor({type:Image, events:{click:"___SummonTypeSelectWindow_Image1_click"}, propertiesFactory:function () : Object
                                    {
                                        return {source:_embed_mxml__swf_home_ceremony_button_ceremony_summon_nomal_50_swf_1080482551, x:25, y:60};
                                    }// end function
                                    }), new UIComponentDescriptor({type:Text, id:"_SummonTypeSelectWindow_Text2", propertiesFactory:function () : Object
                                    {
                                        return {x:20, y:110, styleName:"BuildingName"};
                                    }// end function
                                    }), new UIComponentDescriptor({type:TextArea, id:"_SummonTypeSelectWindow_TextArea1", stylesFactory:function () : void
                                    {
                                        this.fontSize = 12;
                                        this.backgroundAlpha = 0;
                                        this.borderStyle = "none";
                                        return;
                                    }// end function
                                    , propertiesFactory:function () : Object
                                    {
                                        return {x:0, y:135, width:120, height:60, editable:false};
                                    }// end function
                                    }), new UIComponentDescriptor({type:Image, id:"tutMarkNormalSummon", propertiesFactory:function () : Object
                                    {
                                        return {source:_embed_mxml__swf_common_arrow_bottom_swf_1091498217, y:10, x:28, height:75, width:75};
                                    }// end function
                                    })]};
                                }// end function
                                }), new UIComponentDescriptor({type:Spacer, propertiesFactory:function () : Object
                                {
                                    return {percentWidth:100};
                                }// end function
                                }), new UIComponentDescriptor({type:Canvas, propertiesFactory:function () : Object
                                {
                                    return {childDescriptors:[new UIComponentDescriptor({type:Image, id:"_SummonTypeSelectWindow_Image3", events:{click:"___SummonTypeSelectWindow_Image3_click"}, propertiesFactory:function () : Object
                                    {
                                        return {source:_embed_mxml__swf_home_ceremony_button_ceremony_summon_special_50_swf_915386509, x:35, y:60};
                                    }// end function
                                    }), new UIComponentDescriptor({type:Text, id:"_SummonTypeSelectWindow_Text3", propertiesFactory:function () : Object
                                    {
                                        return {x:30, y:110, styleName:"BuildingName"};
                                    }// end function
                                    }), new UIComponentDescriptor({type:Image, propertiesFactory:function () : Object
                                    {
                                        return {source:_embed_mxml__images_icon_power_png_227571469, x:0, y:136};
                                    }// end function
                                    }), new UIComponentDescriptor({type:TextArea, id:"_SummonTypeSelectWindow_TextArea2", stylesFactory:function () : void
                                    {
                                        this.fontSize = 12;
                                        this.backgroundAlpha = 0;
                                        this.borderStyle = "none";
                                        return;
                                    }// end function
                                    , propertiesFactory:function () : Object
                                    {
                                        return {x:15, y:135, width:130, height:60, editable:false};
                                    }// end function
                                    })]};
                                }// end function
                                }), new UIComponentDescriptor({type:Spacer, propertiesFactory:function () : Object
                                {
                                    return {percentWidth:100};
                                }// end function
                                }), new UIComponentDescriptor({type:Canvas, propertiesFactory:function () : Object
                                {
                                    return {childDescriptors:[new UIComponentDescriptor({type:Image, id:"_SummonTypeSelectWindow_Image5", events:{click:"___SummonTypeSelectWindow_Image5_click"}, propertiesFactory:function () : Object
                                    {
                                        return {source:_embed_mxml__swf_home_ceremony_button_ceremony_summon_item_50_swf_382269079, x:25, y:60};
                                    }// end function
                                    }), new UIComponentDescriptor({type:Text, id:"_SummonTypeSelectWindow_Text4", propertiesFactory:function () : Object
                                    {
                                        return {x:10, y:110, styleName:"BuildingName"};
                                    }// end function
                                    }), new UIComponentDescriptor({type:TextArea, id:"_SummonTypeSelectWindow_TextArea3", stylesFactory:function () : void
                                    {
                                        this.fontSize = 12;
                                        this.backgroundAlpha = 0;
                                        this.borderStyle = "none";
                                        return;
                                    }// end function
                                    , propertiesFactory:function () : Object
                                    {
                                        return {x:0, y:135, width:120, height:60, editable:false};
                                    }// end function
                                    })]};
                                }// end function
                                }), new UIComponentDescriptor({type:Spacer, propertiesFactory:function () : Object
                                {
                                    return {percentWidth:100};
                                }// end function
                                })]};
                            }// end function
                            }), new UIComponentDescriptor({type:HBox, propertiesFactory:function () : Object
                            {
                                return {x:325, y:495, childDescriptors:[new UIComponentDescriptor({type:Image, id:"_SummonTypeSelectWindow_Image6", events:{click:"___SummonTypeSelectWindow_Image6_click"}})]};
                            }// end function
                            })]};
                        }// end function
                        }), new UIComponentDescriptor({type:Canvas, propertiesFactory:function () : Object
                        {
                            return {childDescriptors:[new UIComponentDescriptor({type:VBox, propertiesFactory:function () : Object
                            {
                                return {x:80, y:162, width:600, childDescriptors:[new UIComponentDescriptor({type:HBox, propertiesFactory:function () : Object
                                {
                                    return {width:600, height:180, childDescriptors:[new UIComponentDescriptor({type:Spacer, propertiesFactory:function () : Object
                                    {
                                        return {percentWidth:100};
                                    }// end function
                                    }), new UIComponentDescriptor({type:Canvas, propertiesFactory:function () : Object
                                    {
                                        return {childDescriptors:[new UIComponentDescriptor({type:Image, id:"_SummonTypeSelectWindow_Image7", events:{click:"___SummonTypeSelectWindow_Image7_click"}, propertiesFactory:function () : Object
                                        {
                                            return {source:_embed_mxml__swf_home_ceremony_button_ceremony_summon_race01_50_swf_1335634135, x:35, y:0};
                                        }// end function
                                        }), new UIComponentDescriptor({type:Text, propertiesFactory:function () : Object
                                        {
                                            return {text:"刀斧種族召喚", x:30, y:50, styleName:"BuildingName"};
                                        }// end function
                                        }), new UIComponentDescriptor({type:Image, propertiesFactory:function () : Object
                                        {
                                            return {source:_embed_mxml__images_icon_power_png_227571469, x:0, y:76};
                                        }// end function
                                        }), new UIComponentDescriptor({type:TextArea, id:"_SummonTypeSelectWindow_TextArea4", stylesFactory:function () : void
                                        {
                                            this.fontSize = 12;
                                            this.backgroundAlpha = 0;
                                            this.borderStyle = "none";
                                            return;
                                        }// end function
                                        , propertiesFactory:function () : Object
                                        {
                                            return {x:15, y:75, width:115, height:60, editable:false};
                                        }// end function
                                        })]};
                                    }// end function
                                    }), new UIComponentDescriptor({type:Spacer, propertiesFactory:function () : Object
                                    {
                                        return {percentWidth:100};
                                    }// end function
                                    }), new UIComponentDescriptor({type:Canvas, propertiesFactory:function () : Object
                                    {
                                        return {childDescriptors:[new UIComponentDescriptor({type:Image, id:"_SummonTypeSelectWindow_Image9", events:{click:"___SummonTypeSelectWindow_Image9_click"}, propertiesFactory:function () : Object
                                        {
                                            return {source:_embed_mxml__swf_home_ceremony_button_ceremony_summon_race02_50_swf_1084292457, x:35, y:0};
                                        }// end function
                                        }), new UIComponentDescriptor({type:Text, propertiesFactory:function () : Object
                                        {
                                            return {text:"槍弓種族召喚", x:30, y:50, styleName:"BuildingName"};
                                        }// end function
                                        }), new UIComponentDescriptor({type:Image, propertiesFactory:function () : Object
                                        {
                                            return {source:_embed_mxml__images_icon_power_png_227571469, x:0, y:76};
                                        }// end function
                                        }), new UIComponentDescriptor({type:TextArea, id:"_SummonTypeSelectWindow_TextArea5", stylesFactory:function () : void
                                        {
                                            this.fontSize = 12;
                                            this.backgroundAlpha = 0;
                                            this.borderStyle = "none";
                                            return;
                                        }// end function
                                        , propertiesFactory:function () : Object
                                        {
                                            return {x:15, y:75, width:115, height:60, editable:false};
                                        }// end function
                                        })]};
                                    }// end function
                                    }), new UIComponentDescriptor({type:Spacer, propertiesFactory:function () : Object
                                    {
                                        return {percentWidth:100};
                                    }// end function
                                    }), new UIComponentDescriptor({type:Canvas, propertiesFactory:function () : Object
                                    {
                                        return {childDescriptors:[new UIComponentDescriptor({type:Image, id:"_SummonTypeSelectWindow_Image11", events:{click:"___SummonTypeSelectWindow_Image11_click"}, propertiesFactory:function () : Object
                                        {
                                            return {source:_embed_mxml__swf_home_ceremony_button_ceremony_summon_race03_50_swf_1356897069, x:35, y:0};
                                        }// end function
                                        }), new UIComponentDescriptor({type:Text, propertiesFactory:function () : Object
                                        {
                                            return {text:"術種族召喚", x:30, y:50, styleName:"BuildingName"};
                                        }// end function
                                        }), new UIComponentDescriptor({type:Image, propertiesFactory:function () : Object
                                        {
                                            return {source:_embed_mxml__images_icon_power_png_227571469, x:0, y:76};
                                        }// end function
                                        }), new UIComponentDescriptor({type:TextArea, id:"_SummonTypeSelectWindow_TextArea6", stylesFactory:function () : void
                                        {
                                            this.fontSize = 12;
                                            this.backgroundAlpha = 0;
                                            this.borderStyle = "none";
                                            return;
                                        }// end function
                                        , propertiesFactory:function () : Object
                                        {
                                            return {x:15, y:75, width:115, height:60, editable:false};
                                        }// end function
                                        })]};
                                    }// end function
                                    }), new UIComponentDescriptor({type:Spacer, propertiesFactory:function () : Object
                                    {
                                        return {percentWidth:100};
                                    }// end function
                                    })]};
                                }// end function
                                }), new UIComponentDescriptor({type:HBox, propertiesFactory:function () : Object
                                {
                                    return {width:600, height:180, childDescriptors:[new UIComponentDescriptor({type:Spacer, propertiesFactory:function () : Object
                                    {
                                        return {percentWidth:100};
                                    }// end function
                                    }), new UIComponentDescriptor({type:Canvas, propertiesFactory:function () : Object
                                    {
                                        return {childDescriptors:[new UIComponentDescriptor({type:Image, id:"_SummonTypeSelectWindow_Image13", events:{click:"___SummonTypeSelectWindow_Image13_click"}, propertiesFactory:function () : Object
                                        {
                                            return {source:_embed_mxml__swf_home_ceremony_button_ceremony_summon_brave_50_swf_1067012877, x:35, y:0};
                                        }// end function
                                        }), new UIComponentDescriptor({type:Text, id:"_SummonTypeSelectWindow_Text8", propertiesFactory:function () : Object
                                        {
                                            return {x:30, y:50, styleName:"BuildingName"};
                                        }// end function
                                        }), new UIComponentDescriptor({type:Image, propertiesFactory:function () : Object
                                        {
                                            return {source:_embed_mxml__images_icon_power_png_227571469, x:0, y:76};
                                        }// end function
                                        }), new UIComponentDescriptor({type:TextArea, id:"_SummonTypeSelectWindow_TextArea7", stylesFactory:function () : void
                                        {
                                            this.fontSize = 12;
                                            this.backgroundAlpha = 0;
                                            this.borderStyle = "none";
                                            return;
                                        }// end function
                                        , propertiesFactory:function () : Object
                                        {
                                            return {x:15, y:75, width:115, height:60, editable:false};
                                        }// end function
                                        })]};
                                    }// end function
                                    }), new UIComponentDescriptor({type:Spacer, propertiesFactory:function () : Object
                                    {
                                        return {percentWidth:100};
                                    }// end function
                                    }), new UIComponentDescriptor({type:Canvas, propertiesFactory:function () : Object
                                    {
                                        return {childDescriptors:[new UIComponentDescriptor({type:Image, id:"_SummonTypeSelectWindow_Image15", events:{click:"___SummonTypeSelectWindow_Image15_click"}, propertiesFactory:function () : Object
                                        {
                                            return {source:_embed_mxml__swf_home_ceremony_button_ceremony_summon_hero_50_swf_314880055, x:35, y:0};
                                        }// end function
                                        }), new UIComponentDescriptor({type:Text, id:"_SummonTypeSelectWindow_Text9", propertiesFactory:function () : Object
                                        {
                                            return {x:30, y:50, styleName:"BuildingName"};
                                        }// end function
                                        }), new UIComponentDescriptor({type:Image, propertiesFactory:function () : Object
                                        {
                                            return {source:_embed_mxml__images_icon_power_png_227571469, x:0, y:76};
                                        }// end function
                                        }), new UIComponentDescriptor({type:TextArea, id:"_SummonTypeSelectWindow_TextArea8", stylesFactory:function () : void
                                        {
                                            this.fontSize = 12;
                                            this.backgroundAlpha = 0;
                                            this.borderStyle = "none";
                                            return;
                                        }// end function
                                        , propertiesFactory:function () : Object
                                        {
                                            return {x:15, y:75, width:115, height:60, editable:false};
                                        }// end function
                                        })]};
                                    }// end function
                                    }), new UIComponentDescriptor({type:Spacer, propertiesFactory:function () : Object
                                    {
                                        return {percentWidth:100};
                                    }// end function
                                    }), new UIComponentDescriptor({type:Canvas, propertiesFactory:function () : Object
                                    {
                                        return {childDescriptors:[new UIComponentDescriptor({type:Image, id:"_SummonTypeSelectWindow_Image17", events:{click:"___SummonTypeSelectWindow_Image17_click"}, propertiesFactory:function () : Object
                                        {
                                            return {source:_embed_mxml__swf_home_ceremony_button_ceremony_summon_rainbow_50_swf_379564169, x:35, y:0};
                                        }// end function
                                        }), new UIComponentDescriptor({type:Text, id:"_SummonTypeSelectWindow_Text10", propertiesFactory:function () : Object
                                        {
                                            return {x:30, y:50, styleName:"BuildingName"};
                                        }// end function
                                        }), new UIComponentDescriptor({type:Image, propertiesFactory:function () : Object
                                        {
                                            return {source:_embed_mxml__images_icon_power_png_227571469, x:0, y:76};
                                        }// end function
                                        }), new UIComponentDescriptor({type:TextArea, id:"_SummonTypeSelectWindow_TextArea9", stylesFactory:function () : void
                                        {
                                            this.fontSize = 12;
                                            this.backgroundAlpha = 0;
                                            this.borderStyle = "none";
                                            return;
                                        }// end function
                                        , propertiesFactory:function () : Object
                                        {
                                            return {x:15, y:75, width:115, height:60, editable:false};
                                        }// end function
                                        })]};
                                    }// end function
                                    }), new UIComponentDescriptor({type:Spacer, propertiesFactory:function () : Object
                                    {
                                        return {percentWidth:100};
                                    }// end function
                                    }), new UIComponentDescriptor({type:Canvas, propertiesFactory:function () : Object
                                    {
                                        return {childDescriptors:[new UIComponentDescriptor({type:Image, id:"_SummonTypeSelectWindow_Image19", events:{click:"___SummonTypeSelectWindow_Image19_click"}, propertiesFactory:function () : Object
                                        {
                                            return {source:_embed_mxml__swf_home_ceremony_button_ceremony_summon_ex_50_swf_311190487, x:35, y:0};
                                        }// end function
                                        }), new UIComponentDescriptor({type:Text, id:"_SummonTypeSelectWindow_Text11", propertiesFactory:function () : Object
                                        {
                                            return {x:30, y:50, styleName:"BuildingName"};
                                        }// end function
                                        }), new UIComponentDescriptor({type:Image, propertiesFactory:function () : Object
                                        {
                                            return {source:_embed_mxml__images_icon_power_png_227571469, x:0, y:76};
                                        }// end function
                                        }), new UIComponentDescriptor({type:TextArea, id:"_SummonTypeSelectWindow_TextArea10", stylesFactory:function () : void
                                        {
                                            this.fontSize = 12;
                                            this.backgroundAlpha = 0;
                                            this.borderStyle = "none";
                                            return;
                                        }// end function
                                        , propertiesFactory:function () : Object
                                        {
                                            return {x:15, y:75, width:120, height:60, editable:false};
                                        }// end function
                                        })]};
                                    }// end function
                                    }), new UIComponentDescriptor({type:Spacer, propertiesFactory:function () : Object
                                    {
                                        return {percentWidth:100};
                                    }// end function
                                    })]};
                                }// end function
                                })]};
                            }// end function
                            }), new UIComponentDescriptor({type:HBox, propertiesFactory:function () : Object
                            {
                                return {x:325, y:495, childDescriptors:[new UIComponentDescriptor({type:Image, id:"_SummonTypeSelectWindow_Image21", events:{click:"___SummonTypeSelectWindow_Image21_click"}})]};
                            }// end function
                            })]};
                        }// end function
                        }), new UIComponentDescriptor({type:Canvas, propertiesFactory:function () : Object
                        {
                            return {childDescriptors:[new UIComponentDescriptor({type:HBox, propertiesFactory:function () : Object
                            {
                                return {x:80, y:302, width:600, childDescriptors:[new UIComponentDescriptor({type:Spacer, propertiesFactory:function () : Object
                                {
                                    return {percentWidth:100};
                                }// end function
                                }), new UIComponentDescriptor({type:Canvas, propertiesFactory:function () : Object
                                {
                                    return {childDescriptors:[new UIComponentDescriptor({type:Image, id:"_SummonTypeSelectWindow_Image22", events:{click:"___SummonTypeSelectWindow_Image22_click"}, propertiesFactory:function () : Object
                                    {
                                        return {source:_embed_mxml__swf_home_ceremony_button_ceremony_summon_item_50_swf_382269079, x:40, y:55};
                                    }// end function
                                    }), new UIComponentDescriptor({type:Text, id:"_SummonTypeSelectWindow_Text12", propertiesFactory:function () : Object
                                    {
                                        return {x:35, y:110, styleName:"BuildingName"};
                                    }// end function
                                    }), new UIComponentDescriptor({type:TextArea, id:"_SummonTypeSelectWindow_TextArea11", stylesFactory:function () : void
                                    {
                                        this.fontSize = 12;
                                        this.backgroundAlpha = 0;
                                        this.borderStyle = "none";
                                        return;
                                    }// end function
                                    , propertiesFactory:function () : Object
                                    {
                                        return {x:15, y:135, width:135, height:60, editable:false};
                                    }// end function
                                    })]};
                                }// end function
                                }), new UIComponentDescriptor({type:Spacer, propertiesFactory:function () : Object
                                {
                                    return {percentWidth:100};
                                }// end function
                                })]};
                            }// end function
                            }), new UIComponentDescriptor({type:HBox, propertiesFactory:function () : Object
                            {
                                return {x:325, y:495, childDescriptors:[new UIComponentDescriptor({type:Image, id:"_SummonTypeSelectWindow_Image23", events:{click:"___SummonTypeSelectWindow_Image23_click"}})]};
                            }// end function
                            })]};
                        }// end function
                        }), new UIComponentDescriptor({type:Canvas, propertiesFactory:function () : Object
                        {
                            return {childDescriptors:[new UIComponentDescriptor({type:HBox, propertiesFactory:function () : Object
                            {
                                return {x:80, y:302, width:600, childDescriptors:[new UIComponentDescriptor({type:Spacer, propertiesFactory:function () : Object
                                {
                                    return {percentWidth:100};
                                }// end function
                                }), new UIComponentDescriptor({type:Canvas, propertiesFactory:function () : Object
                                {
                                    return {childDescriptors:[new UIComponentDescriptor({type:Image, id:"_SummonTypeSelectWindow_Image24", events:{click:"___SummonTypeSelectWindow_Image24_click"}, propertiesFactory:function () : Object
                                    {
                                        return {source:_embed_mxml__swf_home_ceremony_button_ceremony_summon_pump01_50_swf_1552415541, x:40, y:55};
                                    }// end function
                                    }), new UIComponentDescriptor({type:Text, id:"_SummonTypeSelectWindow_Text13", propertiesFactory:function () : Object
                                    {
                                        return {x:25, y:110, styleName:"BuildingName"};
                                    }// end function
                                    }), new UIComponentDescriptor({type:Image, propertiesFactory:function () : Object
                                    {
                                        return {source:_embed_mxml__images_icon_power_png_227571469, x:0, y:136};
                                    }// end function
                                    }), new UIComponentDescriptor({type:TextArea, id:"_SummonTypeSelectWindow_TextArea12", stylesFactory:function () : void
                                    {
                                        this.fontSize = 12;
                                        this.backgroundAlpha = 0;
                                        this.borderStyle = "none";
                                        return;
                                    }// end function
                                    , propertiesFactory:function () : Object
                                    {
                                        return {x:15, y:135, width:135, height:60, editable:false};
                                    }// end function
                                    })]};
                                }// end function
                                }), new UIComponentDescriptor({type:Spacer, propertiesFactory:function () : Object
                                {
                                    return {percentWidth:100};
                                }// end function
                                }), new UIComponentDescriptor({type:Canvas, propertiesFactory:function () : Object
                                {
                                    return {childDescriptors:[new UIComponentDescriptor({type:Image, id:"_SummonTypeSelectWindow_Image26", events:{click:"___SummonTypeSelectWindow_Image26_click"}, propertiesFactory:function () : Object
                                    {
                                        return {source:_embed_mxml__swf_home_ceremony_button_ceremony_summon_pump02_50_swf_1551998441, x:40, y:55};
                                    }// end function
                                    }), new UIComponentDescriptor({type:Text, id:"_SummonTypeSelectWindow_Text14", propertiesFactory:function () : Object
                                    {
                                        return {x:25, y:110, styleName:"BuildingName"};
                                    }// end function
                                    }), new UIComponentDescriptor({type:Image, propertiesFactory:function () : Object
                                    {
                                        return {source:_embed_mxml__images_icon_power_png_227571469, x:0, y:136};
                                    }// end function
                                    }), new UIComponentDescriptor({type:TextArea, id:"_SummonTypeSelectWindow_TextArea13", stylesFactory:function () : void
                                    {
                                        this.fontSize = 12;
                                        this.backgroundAlpha = 0;
                                        this.borderStyle = "none";
                                        return;
                                    }// end function
                                    , propertiesFactory:function () : Object
                                    {
                                        return {x:15, y:135, width:135, height:60, editable:false};
                                    }// end function
                                    })]};
                                }// end function
                                }), new UIComponentDescriptor({type:Spacer, propertiesFactory:function () : Object
                                {
                                    return {percentWidth:100};
                                }// end function
                                }), new UIComponentDescriptor({type:Canvas, propertiesFactory:function () : Object
                                {
                                    return {childDescriptors:[new UIComponentDescriptor({type:Image, id:"_SummonTypeSelectWindow_Image28", events:{click:"___SummonTypeSelectWindow_Image28_click"}, propertiesFactory:function () : Object
                                    {
                                        return {source:_embed_mxml__swf_home_ceremony_button_ceremony_summon_pump03_50_swf_2089023273, x:40, y:55};
                                    }// end function
                                    }), new UIComponentDescriptor({type:Text, id:"_SummonTypeSelectWindow_Text15", propertiesFactory:function () : Object
                                    {
                                        return {x:25, y:110, styleName:"BuildingName"};
                                    }// end function
                                    }), new UIComponentDescriptor({type:Image, propertiesFactory:function () : Object
                                    {
                                        return {source:_embed_mxml__images_icon_power_png_227571469, x:0, y:136};
                                    }// end function
                                    }), new UIComponentDescriptor({type:TextArea, id:"_SummonTypeSelectWindow_TextArea14", stylesFactory:function () : void
                                    {
                                        this.fontSize = 12;
                                        this.backgroundAlpha = 0;
                                        this.borderStyle = "none";
                                        return;
                                    }// end function
                                    , propertiesFactory:function () : Object
                                    {
                                        return {x:15, y:135, width:135, height:60, editable:false};
                                    }// end function
                                    })]};
                                }// end function
                                }), new UIComponentDescriptor({type:Spacer, propertiesFactory:function () : Object
                                {
                                    return {percentWidth:100};
                                }// end function
                                })]};
                            }// end function
                            }), new UIComponentDescriptor({type:HBox, propertiesFactory:function () : Object
                            {
                                return {x:325, y:495, childDescriptors:[new UIComponentDescriptor({type:Image, id:"_SummonTypeSelectWindow_Image30", events:{click:"___SummonTypeSelectWindow_Image30_click"}})]};
                            }// end function
                            })]};
                        }// end function
                        })]};
                    }// end function
                    })]};
                }// end function
                })]};
            }// end function
            });
            _1193840764_swf_close = new Viking.EmbedSwfButtonCommon();
            _1645641930_swf_close2 = new Viking.EmbedSwfButtonCommon();
            _1645641929_swf_close3 = new Viking.EmbedSwfButtonCommon();
            _1645641928_swf_close4 = new Viking.EmbedSwfButtonCommon();
            _794229178summonHeroEnabled = Viking.summonHeroEnabled;
            _embed_mxml__images_icon_power_png_227571469 = SummonTypeSelectWindow__embed_mxml__images_icon_power_png_227571469;
            _embed_mxml__swf_common_arrow_bottom_swf_1091498217 = SummonTypeSelectWindow__embed_mxml__swf_common_arrow_bottom_swf_1091498217;
            _embed_mxml__swf_home_ceremony_button_ceremony_summon_brave_50_swf_1067012877 = SummonTypeSelectWindow__embed_mxml__swf_home_ceremony_button_ceremony_summon_brave_50_swf_1067012877;
            _embed_mxml__swf_home_ceremony_button_ceremony_summon_ex_50_swf_311190487 = SummonTypeSelectWindow__embed_mxml__swf_home_ceremony_button_ceremony_summon_ex_50_swf_311190487;
            _embed_mxml__swf_home_ceremony_button_ceremony_summon_hero_50_swf_314880055 = SummonTypeSelectWindow__embed_mxml__swf_home_ceremony_button_ceremony_summon_hero_50_swf_314880055;
            _embed_mxml__swf_home_ceremony_button_ceremony_summon_item_50_swf_382269079 = SummonTypeSelectWindow__embed_mxml__swf_home_ceremony_button_ceremony_summon_item_50_swf_382269079;
            _embed_mxml__swf_home_ceremony_button_ceremony_summon_nomal_50_swf_1080482551 = SummonTypeSelectWindow__embed_mxml__swf_home_ceremony_button_ceremony_summon_nomal_50_swf_1080482551;
            _embed_mxml__swf_home_ceremony_button_ceremony_summon_pump01_50_swf_1552415541 = SummonTypeSelectWindow__embed_mxml__swf_home_ceremony_button_ceremony_summon_pump01_50_swf_1552415541;
            _embed_mxml__swf_home_ceremony_button_ceremony_summon_pump02_50_swf_1551998441 = SummonTypeSelectWindow__embed_mxml__swf_home_ceremony_button_ceremony_summon_pump02_50_swf_1551998441;
            _embed_mxml__swf_home_ceremony_button_ceremony_summon_pump03_50_swf_2089023273 = SummonTypeSelectWindow__embed_mxml__swf_home_ceremony_button_ceremony_summon_pump03_50_swf_2089023273;
            _embed_mxml__swf_home_ceremony_button_ceremony_summon_race01_50_swf_1335634135 = SummonTypeSelectWindow__embed_mxml__swf_home_ceremony_button_ceremony_summon_race01_50_swf_1335634135;
            _embed_mxml__swf_home_ceremony_button_ceremony_summon_race02_50_swf_1084292457 = SummonTypeSelectWindow__embed_mxml__swf_home_ceremony_button_ceremony_summon_race02_50_swf_1084292457;
            _embed_mxml__swf_home_ceremony_button_ceremony_summon_race03_50_swf_1356897069 = SummonTypeSelectWindow__embed_mxml__swf_home_ceremony_button_ceremony_summon_race03_50_swf_1356897069;
            _embed_mxml__swf_home_ceremony_button_ceremony_summon_rainbow_50_swf_379564169 = SummonTypeSelectWindow__embed_mxml__swf_home_ceremony_button_ceremony_summon_rainbow_50_swf_379564169;
            _embed_mxml__swf_home_ceremony_button_ceremony_summon_special_50_swf_915386509 = SummonTypeSelectWindow__embed_mxml__swf_home_ceremony_button_ceremony_summon_special_50_swf_915386509;
            _bindings = [];
            _watchers = [];
            _bindingsByDestination = {};
            _bindingsBeginWithWord = {};
            mx_internal::_document = this;
            this.addEventListener("creationComplete", ___SummonTypeSelectWindow_PopupWindow1_creationComplete);
            return;
        }// end function

        public function get viewStack() : ViewStack
        {
            return this._1584105757viewStack;
        }// end function

        private function summonPopupEvent(param1:String, param2:String) : void
        {
            sendPopupEvent(param1, param2);
            initSwf();
            return;
        }// end function

        public function ___SummonTypeSelectWindow_Image21_click(event:MouseEvent) : void
        {
            viewSummonType();
            return;
        }// end function

        public function init() : void
        {
            viewSummonType();
            return;
        }// end function

        public function ___SummonTypeSelectWindow_Image11_click(event:MouseEvent) : void
        {
            summonPopupEvent(SUMMON_TYPE_SPECIAL, "racial3");
            return;
        }// end function

        private function addSwf() : void
        {
            viewSummonType();
            MovieClip(Loader(_swf_close.getChildAt(0)).content).gotoAndPlay("button_back");
            MovieClip(Loader(_swf_close2.getChildAt(0)).content).gotoAndPlay("button_back");
            MovieClip(Loader(_swf_close3.getChildAt(0)).content).gotoAndPlay("button_back");
            MovieClip(Loader(_swf_close4.getChildAt(0)).content).gotoAndPlay("button_back");
            return;
        }// end function

        private function get _swf_close3() : MovieClipLoaderAsset
        {
            return this._1645641929_swf_close3;
        }// end function

        public function ___SummonTypeSelectWindow_Image1_click(event:MouseEvent) : void
        {
            summonCeremony(SUMMON_TYPE);
            return;
        }// end function

        private function summonEnd() : void
        {
            sendEvent(SUMMON_END);
            initSwf();
            return;
        }// end function

        public function changeLargeWindow() : void
        {
            sendPopupEvent(CEREMONY_WINDOW_CHANGE, "bottom_600x400");
            title.y = 102;
            return;
        }// end function

        private function get _swf_close2() : MovieClipLoaderAsset
        {
            return this._1645641930_swf_close2;
        }// end function

        public function ___SummonTypeSelectWindow_Image5_click(event:MouseEvent) : void
        {
            viewItemSummonType();
            return;
        }// end function

        private function viewSpecialSummonType() : void
        {
            viewStack.selectedIndex = 1;
            changeWindowSize();
            return;
        }// end function

        public function ___SummonTypeSelectWindow_Image15_click(event:MouseEvent) : void
        {
            summonPopupEvent(SUMMON_TYPE_SPECIAL, "hero");
            return;
        }// end function

        public function get tutMarkNormalSummon() : Image
        {
            return this._767659960tutMarkNormalSummon;
        }// end function

        public function initSwf() : void
        {
            MovieClip(Loader(_swf_close.getChildAt(0)).content).gotoAndPlay(0);
            MovieClip(Loader(_swf_close.getChildAt(0)).content).gotoAndPlay("button_back");
            MovieClip(Loader(_swf_close2.getChildAt(0)).content).gotoAndPlay("button_back");
            MovieClip(Loader(_swf_close3.getChildAt(0)).content).gotoAndPlay("button_back");
            MovieClip(Loader(_swf_close4.getChildAt(0)).content).gotoAndPlay("button_back");
            return;
        }// end function

        public function ___SummonTypeSelectWindow_Image26_click(event:MouseEvent) : void
        {
            summonPopupEvent(SUMMON_TYPE_SPECIAL, "campaign3");
            return;
        }// end function

        public function get title() : Text
        {
            return this._110371416title;
        }// end function

        private function viewItemSummonType() : void
        {
            viewStack.selectedIndex = 2;
            changeWindowSize();
            return;
        }// end function

        private function viewSummonType() : void
        {
            viewStack.selectedIndex = 0;
            changeWindowSize();
            return;
        }// end function

        public function ___SummonTypeSelectWindow_Image22_click(event:MouseEvent) : void
        {
            summonPopupEvent(SUMMON_TYPE_ITEM, "gold");
            return;
        }// end function

        public function ___SummonTypeSelectWindow_PopupWindow1_creationComplete(event:FlexEvent) : void
        {
            addSwf();
            return;
        }// end function

        public function ___SummonTypeSelectWindow_Image9_click(event:MouseEvent) : void
        {
            summonPopupEvent(SUMMON_TYPE_SPECIAL, "racial2");
            return;
        }// end function

        private function set _swf_close4(param1:MovieClipLoaderAsset) : void
        {
            var _loc_2:* = this._1645641928_swf_close4;
            if (_loc_2 !== param1)
            {
                this._1645641928_swf_close4 = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "_swf_close4", _loc_2, param1));
            }
            return;
        }// end function

        private function viewLimitSummonType() : void
        {
            viewStack.selectedIndex = 3;
            changeWindowSize();
            return;
        }// end function

        private function set _swf_close2(param1:MovieClipLoaderAsset) : void
        {
            var _loc_2:* = this._1645641930_swf_close2;
            if (_loc_2 !== param1)
            {
                this._1645641930_swf_close2 = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "_swf_close2", _loc_2, param1));
            }
            return;
        }// end function

        public function ___SummonTypeSelectWindow_Image19_click(event:MouseEvent) : void
        {
            summonPopupEvent(SUMMON_TYPE_SPECIAL, "sky");
            return;
        }// end function

        private function get _swf_close() : MovieClipLoaderAsset
        {
            return this._1193840764_swf_close;
        }// end function

        public function ___SummonTypeSelectWindow_Image6_click(event:MouseEvent) : void
        {
            summonEnd();
            return;
        }// end function

        private function get summonHeroEnabled() : Boolean
        {
            return this._794229178summonHeroEnabled;
        }// end function

        private function summonCeremony(param1:String) : void
        {
            sendEvent(param1);
            initSwf();
            changeDefaultWindow();
            return;
        }// end function

        private function set _swf_close3(param1:MovieClipLoaderAsset) : void
        {
            var _loc_2:* = this._1645641929_swf_close3;
            if (_loc_2 !== param1)
            {
                this._1645641929_swf_close3 = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "_swf_close3", _loc_2, param1));
            }
            return;
        }// end function

        public function ___SummonTypeSelectWindow_Image23_click(event:MouseEvent) : void
        {
            viewSummonType();
            return;
        }// end function

        public function showTutMarkNormal() : void
        {
            tutMarkNormalVisible = visible;
            return;
        }// end function

        private function _SummonTypeSelectWindow_bindingExprs() : void
        {
            var _loc_1:* = undefined;
            _loc_1 = Utils.i18n("summonTypeSelectTitle");
            _loc_1 = Utils.i18n("generalNormalSummon");
            _loc_1 = Utils.i18n("summonTypeSelectNormalSummonConf");
            _loc_1 = tutMarkNormalVisible;
            _loc_1 = summonHeroEnabled;
            _loc_1 = Utils.i18n("generalSpecialSummon");
            _loc_1 = !summonHeroEnabled ? (Utils.i18n("summonTypeSelectCanNotUseNow")) : (Utils.i18n("summonTypeSelectSummonDescription"));
            _loc_1 = summonHeroEnabled;
            _loc_1 = Utils.i18n("summonTypeSelectItem");
            _loc_1 = !summonHeroEnabled ? (Utils.i18n("summonTypeSelectCanNotUseNow")) : (Utils.i18n("summonTypeSelectItemSummonDescriptionNew"));
            _loc_1 = _swf_close;
            _loc_1 = summonHeroEnabled;
            _loc_1 = !summonHeroEnabled ? (Utils.i18n("summonTypeSelectCanNotUseNow")) : (Utils.i18n("summonTypeSelectUsePower900"));
            _loc_1 = summonHeroEnabled;
            _loc_1 = !summonHeroEnabled ? (Utils.i18n("summonTypeSelectCanNotUseNow")) : (Utils.i18n("summonTypeSelectUsePower900"));
            _loc_1 = summonHeroEnabled;
            _loc_1 = !summonHeroEnabled ? (Utils.i18n("summonTypeSelectCanNotUseNow")) : (Utils.i18n("summonTypeSelectUsePower900"));
            _loc_1 = summonHeroEnabled;
            _loc_1 = Utils.i18n("specialSummonSilver");
            _loc_1 = !summonHeroEnabled ? (Utils.i18n("summonTypeSelectCanNotUseNow")) : (Utils.i18n("summonTypeSelectUsePower300"));
            _loc_1 = summonHeroEnabled;
            _loc_1 = Utils.i18n("specialSummonGold");
            _loc_1 = !summonHeroEnabled ? (Utils.i18n("summonTypeSelectCanNotUseNow")) : (Utils.i18n("summonTypeSelectUsePower600"));
            _loc_1 = summonHeroEnabled;
            _loc_1 = Utils.i18n("specialSummonRainbow");
            _loc_1 = !summonHeroEnabled ? (Utils.i18n("summonTypeSelectCanNotUseNow")) : (Utils.i18n("summonTypeSelectUsePower900"));
            _loc_1 = summonHeroEnabled;
            _loc_1 = Utils.i18n("specialSummonSky");
            _loc_1 = !summonHeroEnabled ? (Utils.i18n("summonTypeSelectCanNotUseNow")) : (Utils.i18n("summonSkyDetail"));
            _loc_1 = _swf_close2;
            _loc_1 = summonHeroEnabled;
            _loc_1 = Utils.i18n("summonTypeSelectBronzeItem");
            _loc_1 = !summonHeroEnabled ? (Utils.i18n("summonTypeSelectCanNotUseNow")) : (Utils.i18n("summonTypeSelectItemSummonDescriptionNew"));
            _loc_1 = _swf_close3;
            _loc_1 = summonHeroEnabled;
            _loc_1 = Utils.i18n("summonTypeSelectPumpkinSummon");
            _loc_1 = !summonHeroEnabled ? (Utils.i18n("summonTypeSelectCanNotUseNow")) : (Utils.i18n("summonTypeSelectPumpkinSummonDescription1"));
            _loc_1 = summonHeroEnabled;
            _loc_1 = Utils.i18n("summonTypeSelectBarahimeSummon");
            _loc_1 = !summonHeroEnabled ? (Utils.i18n("summonTypeSelectCanNotUseNow")) : (Utils.i18n("summonTypeSelectPumpkinSummonDescription2"));
            _loc_1 = summonHeroEnabled;
            _loc_1 = Utils.i18n("summonTypeSelectYamihimeSummon");
            _loc_1 = !summonHeroEnabled ? (Utils.i18n("summonTypeSelectCanNotUseNow")) : (Utils.i18n("summonTypeSelectPumpkinSummonDescription2"));
            _loc_1 = _swf_close4;
            return;
        }// end function

        private function set summonHeroEnabled(param1:Boolean) : void
        {
            var _loc_2:* = this._794229178summonHeroEnabled;
            if (_loc_2 !== param1)
            {
                this._794229178summonHeroEnabled = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "summonHeroEnabled", _loc_2, param1));
            }
            return;
        }// end function

        override public function initialize() : void
        {
            var target:SummonTypeSelectWindow;
            var watcherSetupUtilClass:Object;
            .mx_internal::setDocumentDescriptor(_documentDescriptor_);
            var bindings:* = _SummonTypeSelectWindow_bindingsSetup();
            var watchers:Array;
            target;
            if (_watcherSetupUtil == null)
            {
                watcherSetupUtilClass = getDefinitionByName("_com_kbmj_viking_view_home_SummonTypeSelectWindowWatcherSetupUtil");
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

        private function get _swf_close4() : MovieClipLoaderAsset
        {
            return this._1645641928_swf_close4;
        }// end function

        public function removeTutMarks() : void
        {
            tutMarkNormalVisible = false;
            return;
        }// end function

        public function set title(param1:Text) : void
        {
            var _loc_2:* = this._110371416title;
            if (_loc_2 !== param1)
            {
                this._110371416title = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "title", _loc_2, param1));
            }
            return;
        }// end function

        public function ___SummonTypeSelectWindow_Image17_click(event:MouseEvent) : void
        {
            summonPopupEvent(SUMMON_TYPE_SPECIAL, "rainbow");
            return;
        }// end function

        public function ___SummonTypeSelectWindow_Image13_click(event:MouseEvent) : void
        {
            summonPopupEvent(SUMMON_TYPE_SPECIAL, "brave");
            return;
        }// end function

        private function _SummonTypeSelectWindow_bindingsSetup() : Array
        {
            var binding:Binding;
            var result:Array;
            binding = new Binding(this, function () : String
            {
                var _loc_1:* = Utils.i18n("summonTypeSelectTitle");
                var _loc_2:* = _loc_1 == undefined ? (null) : (String(_loc_1));
                return _loc_2;
            }// end function
            , function (param1:String) : void
            {
                title.text = param1;
                return;
            }// end function
            , "title.text");
            result[0] = binding;
            binding = new Binding(this, function () : String
            {
                var _loc_1:* = Utils.i18n("generalNormalSummon");
                var _loc_2:* = _loc_1 == undefined ? (null) : (String(_loc_1));
                return _loc_2;
            }// end function
            , function (param1:String) : void
            {
                _SummonTypeSelectWindow_Text2.text = param1;
                return;
            }// end function
            , "_SummonTypeSelectWindow_Text2.text");
            result[1] = binding;
            binding = new Binding(this, function () : String
            {
                var _loc_1:* = Utils.i18n("summonTypeSelectNormalSummonConf");
                var _loc_2:* = _loc_1 == undefined ? (null) : (String(_loc_1));
                return _loc_2;
            }// end function
            , function (param1:String) : void
            {
                _SummonTypeSelectWindow_TextArea1.text = param1;
                return;
            }// end function
            , "_SummonTypeSelectWindow_TextArea1.text");
            result[2] = binding;
            binding = new Binding(this, function () : Boolean
            {
                return tutMarkNormalVisible;
            }// end function
            , function (param1:Boolean) : void
            {
                tutMarkNormalSummon.visible = param1;
                return;
            }// end function
            , "tutMarkNormalSummon.visible");
            result[3] = binding;
            binding = new Binding(this, function () : Boolean
            {
                return summonHeroEnabled;
            }// end function
            , function (param1:Boolean) : void
            {
                _SummonTypeSelectWindow_Image3.enabled = param1;
                return;
            }// end function
            , "_SummonTypeSelectWindow_Image3.enabled");
            result[4] = binding;
            binding = new Binding(this, function () : String
            {
                var _loc_1:* = Utils.i18n("generalSpecialSummon");
                var _loc_2:* = _loc_1 == undefined ? (null) : (String(_loc_1));
                return _loc_2;
            }// end function
            , function (param1:String) : void
            {
                _SummonTypeSelectWindow_Text3.text = param1;
                return;
            }// end function
            , "_SummonTypeSelectWindow_Text3.text");
            result[5] = binding;
            binding = new Binding(this, function () : String
            {
                var _loc_1:* = !summonHeroEnabled ? (Utils.i18n("summonTypeSelectCanNotUseNow")) : (Utils.i18n("summonTypeSelectSummonDescription"));
                var _loc_2:* = _loc_1 == undefined ? (null) : (String(_loc_1));
                return _loc_2;
            }// end function
            , function (param1:String) : void
            {
                _SummonTypeSelectWindow_TextArea2.text = param1;
                return;
            }// end function
            , "_SummonTypeSelectWindow_TextArea2.text");
            result[6] = binding;
            binding = new Binding(this, function () : Boolean
            {
                return summonHeroEnabled;
            }// end function
            , function (param1:Boolean) : void
            {
                _SummonTypeSelectWindow_Image5.enabled = param1;
                return;
            }// end function
            , "_SummonTypeSelectWindow_Image5.enabled");
            result[7] = binding;
            binding = new Binding(this, function () : String
            {
                var _loc_1:* = Utils.i18n("summonTypeSelectItem");
                var _loc_2:* = _loc_1 == undefined ? (null) : (String(_loc_1));
                return _loc_2;
            }// end function
            , function (param1:String) : void
            {
                _SummonTypeSelectWindow_Text4.text = param1;
                return;
            }// end function
            , "_SummonTypeSelectWindow_Text4.text");
            result[8] = binding;
            binding = new Binding(this, function () : String
            {
                var _loc_1:* = !summonHeroEnabled ? (Utils.i18n("summonTypeSelectCanNotUseNow")) : (Utils.i18n("summonTypeSelectItemSummonDescriptionNew"));
                var _loc_2:* = _loc_1 == undefined ? (null) : (String(_loc_1));
                return _loc_2;
            }// end function
            , function (param1:String) : void
            {
                _SummonTypeSelectWindow_TextArea3.text = param1;
                return;
            }// end function
            , "_SummonTypeSelectWindow_TextArea3.text");
            result[9] = binding;
            binding = new Binding(this, function () : Object
            {
                return _swf_close;
            }// end function
            , function (param1:Object) : void
            {
                _SummonTypeSelectWindow_Image6.source = param1;
                return;
            }// end function
            , "_SummonTypeSelectWindow_Image6.source");
            result[10] = binding;
            binding = new Binding(this, function () : Boolean
            {
                return summonHeroEnabled;
            }// end function
            , function (param1:Boolean) : void
            {
                _SummonTypeSelectWindow_Image7.enabled = param1;
                return;
            }// end function
            , "_SummonTypeSelectWindow_Image7.enabled");
            result[11] = binding;
            binding = new Binding(this, function () : String
            {
                var _loc_1:* = !summonHeroEnabled ? (Utils.i18n("summonTypeSelectCanNotUseNow")) : (Utils.i18n("summonTypeSelectUsePower900"));
                var _loc_2:* = _loc_1 == undefined ? (null) : (String(_loc_1));
                return _loc_2;
            }// end function
            , function (param1:String) : void
            {
                _SummonTypeSelectWindow_TextArea4.text = param1;
                return;
            }// end function
            , "_SummonTypeSelectWindow_TextArea4.text");
            result[12] = binding;
            binding = new Binding(this, function () : Boolean
            {
                return summonHeroEnabled;
            }// end function
            , function (param1:Boolean) : void
            {
                _SummonTypeSelectWindow_Image9.enabled = param1;
                return;
            }// end function
            , "_SummonTypeSelectWindow_Image9.enabled");
            result[13] = binding;
            binding = new Binding(this, function () : String
            {
                var _loc_1:* = !summonHeroEnabled ? (Utils.i18n("summonTypeSelectCanNotUseNow")) : (Utils.i18n("summonTypeSelectUsePower900"));
                var _loc_2:* = _loc_1 == undefined ? (null) : (String(_loc_1));
                return _loc_2;
            }// end function
            , function (param1:String) : void
            {
                _SummonTypeSelectWindow_TextArea5.text = param1;
                return;
            }// end function
            , "_SummonTypeSelectWindow_TextArea5.text");
            result[14] = binding;
            binding = new Binding(this, function () : Boolean
            {
                return summonHeroEnabled;
            }// end function
            , function (param1:Boolean) : void
            {
                _SummonTypeSelectWindow_Image11.enabled = param1;
                return;
            }// end function
            , "_SummonTypeSelectWindow_Image11.enabled");
            result[15] = binding;
            binding = new Binding(this, function () : String
            {
                var _loc_1:* = !summonHeroEnabled ? (Utils.i18n("summonTypeSelectCanNotUseNow")) : (Utils.i18n("summonTypeSelectUsePower900"));
                var _loc_2:* = _loc_1 == undefined ? (null) : (String(_loc_1));
                return _loc_2;
            }// end function
            , function (param1:String) : void
            {
                _SummonTypeSelectWindow_TextArea6.text = param1;
                return;
            }// end function
            , "_SummonTypeSelectWindow_TextArea6.text");
            result[16] = binding;
            binding = new Binding(this, function () : Boolean
            {
                return summonHeroEnabled;
            }// end function
            , function (param1:Boolean) : void
            {
                _SummonTypeSelectWindow_Image13.enabled = param1;
                return;
            }// end function
            , "_SummonTypeSelectWindow_Image13.enabled");
            result[17] = binding;
            binding = new Binding(this, function () : String
            {
                var _loc_1:* = Utils.i18n("specialSummonSilver");
                var _loc_2:* = _loc_1 == undefined ? (null) : (String(_loc_1));
                return _loc_2;
            }// end function
            , function (param1:String) : void
            {
                _SummonTypeSelectWindow_Text8.text = param1;
                return;
            }// end function
            , "_SummonTypeSelectWindow_Text8.text");
            result[18] = binding;
            binding = new Binding(this, function () : String
            {
                var _loc_1:* = !summonHeroEnabled ? (Utils.i18n("summonTypeSelectCanNotUseNow")) : (Utils.i18n("summonTypeSelectUsePower300"));
                var _loc_2:* = _loc_1 == undefined ? (null) : (String(_loc_1));
                return _loc_2;
            }// end function
            , function (param1:String) : void
            {
                _SummonTypeSelectWindow_TextArea7.text = param1;
                return;
            }// end function
            , "_SummonTypeSelectWindow_TextArea7.text");
            result[19] = binding;
            binding = new Binding(this, function () : Boolean
            {
                return summonHeroEnabled;
            }// end function
            , function (param1:Boolean) : void
            {
                _SummonTypeSelectWindow_Image15.enabled = param1;
                return;
            }// end function
            , "_SummonTypeSelectWindow_Image15.enabled");
            result[20] = binding;
            binding = new Binding(this, function () : String
            {
                var _loc_1:* = Utils.i18n("specialSummonGold");
                var _loc_2:* = _loc_1 == undefined ? (null) : (String(_loc_1));
                return _loc_2;
            }// end function
            , function (param1:String) : void
            {
                _SummonTypeSelectWindow_Text9.text = param1;
                return;
            }// end function
            , "_SummonTypeSelectWindow_Text9.text");
            result[21] = binding;
            binding = new Binding(this, function () : String
            {
                var _loc_1:* = !summonHeroEnabled ? (Utils.i18n("summonTypeSelectCanNotUseNow")) : (Utils.i18n("summonTypeSelectUsePower600"));
                var _loc_2:* = _loc_1 == undefined ? (null) : (String(_loc_1));
                return _loc_2;
            }// end function
            , function (param1:String) : void
            {
                _SummonTypeSelectWindow_TextArea8.text = param1;
                return;
            }// end function
            , "_SummonTypeSelectWindow_TextArea8.text");
            result[22] = binding;
            binding = new Binding(this, function () : Boolean
            {
                return summonHeroEnabled;
            }// end function
            , function (param1:Boolean) : void
            {
                _SummonTypeSelectWindow_Image17.enabled = param1;
                return;
            }// end function
            , "_SummonTypeSelectWindow_Image17.enabled");
            result[23] = binding;
            binding = new Binding(this, function () : String
            {
                var _loc_1:* = Utils.i18n("specialSummonRainbow");
                var _loc_2:* = _loc_1 == undefined ? (null) : (String(_loc_1));
                return _loc_2;
            }// end function
            , function (param1:String) : void
            {
                _SummonTypeSelectWindow_Text10.text = param1;
                return;
            }// end function
            , "_SummonTypeSelectWindow_Text10.text");
            result[24] = binding;
            binding = new Binding(this, function () : String
            {
                var _loc_1:* = !summonHeroEnabled ? (Utils.i18n("summonTypeSelectCanNotUseNow")) : (Utils.i18n("summonTypeSelectUsePower900"));
                var _loc_2:* = _loc_1 == undefined ? (null) : (String(_loc_1));
                return _loc_2;
            }// end function
            , function (param1:String) : void
            {
                _SummonTypeSelectWindow_TextArea9.text = param1;
                return;
            }// end function
            , "_SummonTypeSelectWindow_TextArea9.text");
            result[25] = binding;
            binding = new Binding(this, function () : Boolean
            {
                return summonHeroEnabled;
            }// end function
            , function (param1:Boolean) : void
            {
                _SummonTypeSelectWindow_Image19.enabled = param1;
                return;
            }// end function
            , "_SummonTypeSelectWindow_Image19.enabled");
            result[26] = binding;
            binding = new Binding(this, function () : String
            {
                var _loc_1:* = Utils.i18n("specialSummonSky");
                var _loc_2:* = _loc_1 == undefined ? (null) : (String(_loc_1));
                return _loc_2;
            }// end function
            , function (param1:String) : void
            {
                _SummonTypeSelectWindow_Text11.text = param1;
                return;
            }// end function
            , "_SummonTypeSelectWindow_Text11.text");
            result[27] = binding;
            binding = new Binding(this, function () : String
            {
                var _loc_1:* = !summonHeroEnabled ? (Utils.i18n("summonTypeSelectCanNotUseNow")) : (Utils.i18n("summonSkyDetail"));
                var _loc_2:* = _loc_1 == undefined ? (null) : (String(_loc_1));
                return _loc_2;
            }// end function
            , function (param1:String) : void
            {
                _SummonTypeSelectWindow_TextArea10.text = param1;
                return;
            }// end function
            , "_SummonTypeSelectWindow_TextArea10.text");
            result[28] = binding;
            binding = new Binding(this, function () : Object
            {
                return _swf_close2;
            }// end function
            , function (param1:Object) : void
            {
                _SummonTypeSelectWindow_Image21.source = param1;
                return;
            }// end function
            , "_SummonTypeSelectWindow_Image21.source");
            result[29] = binding;
            binding = new Binding(this, function () : Boolean
            {
                return summonHeroEnabled;
            }// end function
            , function (param1:Boolean) : void
            {
                _SummonTypeSelectWindow_Image22.enabled = param1;
                return;
            }// end function
            , "_SummonTypeSelectWindow_Image22.enabled");
            result[30] = binding;
            binding = new Binding(this, function () : String
            {
                var _loc_1:* = Utils.i18n("summonTypeSelectBronzeItem");
                var _loc_2:* = _loc_1 == undefined ? (null) : (String(_loc_1));
                return _loc_2;
            }// end function
            , function (param1:String) : void
            {
                _SummonTypeSelectWindow_Text12.text = param1;
                return;
            }// end function
            , "_SummonTypeSelectWindow_Text12.text");
            result[31] = binding;
            binding = new Binding(this, function () : String
            {
                var _loc_1:* = !summonHeroEnabled ? (Utils.i18n("summonTypeSelectCanNotUseNow")) : (Utils.i18n("summonTypeSelectItemSummonDescriptionNew"));
                var _loc_2:* = _loc_1 == undefined ? (null) : (String(_loc_1));
                return _loc_2;
            }// end function
            , function (param1:String) : void
            {
                _SummonTypeSelectWindow_TextArea11.text = param1;
                return;
            }// end function
            , "_SummonTypeSelectWindow_TextArea11.text");
            result[32] = binding;
            binding = new Binding(this, function () : Object
            {
                return _swf_close3;
            }// end function
            , function (param1:Object) : void
            {
                _SummonTypeSelectWindow_Image23.source = param1;
                return;
            }// end function
            , "_SummonTypeSelectWindow_Image23.source");
            result[33] = binding;
            binding = new Binding(this, function () : Boolean
            {
                return summonHeroEnabled;
            }// end function
            , function (param1:Boolean) : void
            {
                _SummonTypeSelectWindow_Image24.enabled = param1;
                return;
            }// end function
            , "_SummonTypeSelectWindow_Image24.enabled");
            result[34] = binding;
            binding = new Binding(this, function () : String
            {
                var _loc_1:* = Utils.i18n("summonTypeSelectPumpkinSummon");
                var _loc_2:* = _loc_1 == undefined ? (null) : (String(_loc_1));
                return _loc_2;
            }// end function
            , function (param1:String) : void
            {
                _SummonTypeSelectWindow_Text13.text = param1;
                return;
            }// end function
            , "_SummonTypeSelectWindow_Text13.text");
            result[35] = binding;
            binding = new Binding(this, function () : String
            {
                var _loc_1:* = !summonHeroEnabled ? (Utils.i18n("summonTypeSelectCanNotUseNow")) : (Utils.i18n("summonTypeSelectPumpkinSummonDescription1"));
                var _loc_2:* = _loc_1 == undefined ? (null) : (String(_loc_1));
                return _loc_2;
            }// end function
            , function (param1:String) : void
            {
                _SummonTypeSelectWindow_TextArea12.text = param1;
                return;
            }// end function
            , "_SummonTypeSelectWindow_TextArea12.text");
            result[36] = binding;
            binding = new Binding(this, function () : Boolean
            {
                return summonHeroEnabled;
            }// end function
            , function (param1:Boolean) : void
            {
                _SummonTypeSelectWindow_Image26.enabled = param1;
                return;
            }// end function
            , "_SummonTypeSelectWindow_Image26.enabled");
            result[37] = binding;
            binding = new Binding(this, function () : String
            {
                var _loc_1:* = Utils.i18n("summonTypeSelectBarahimeSummon");
                var _loc_2:* = _loc_1 == undefined ? (null) : (String(_loc_1));
                return _loc_2;
            }// end function
            , function (param1:String) : void
            {
                _SummonTypeSelectWindow_Text14.text = param1;
                return;
            }// end function
            , "_SummonTypeSelectWindow_Text14.text");
            result[38] = binding;
            binding = new Binding(this, function () : String
            {
                var _loc_1:* = !summonHeroEnabled ? (Utils.i18n("summonTypeSelectCanNotUseNow")) : (Utils.i18n("summonTypeSelectPumpkinSummonDescription2"));
                var _loc_2:* = _loc_1 == undefined ? (null) : (String(_loc_1));
                return _loc_2;
            }// end function
            , function (param1:String) : void
            {
                _SummonTypeSelectWindow_TextArea13.text = param1;
                return;
            }// end function
            , "_SummonTypeSelectWindow_TextArea13.text");
            result[39] = binding;
            binding = new Binding(this, function () : Boolean
            {
                return summonHeroEnabled;
            }// end function
            , function (param1:Boolean) : void
            {
                _SummonTypeSelectWindow_Image28.enabled = param1;
                return;
            }// end function
            , "_SummonTypeSelectWindow_Image28.enabled");
            result[40] = binding;
            binding = new Binding(this, function () : String
            {
                var _loc_1:* = Utils.i18n("summonTypeSelectYamihimeSummon");
                var _loc_2:* = _loc_1 == undefined ? (null) : (String(_loc_1));
                return _loc_2;
            }// end function
            , function (param1:String) : void
            {
                _SummonTypeSelectWindow_Text15.text = param1;
                return;
            }// end function
            , "_SummonTypeSelectWindow_Text15.text");
            result[41] = binding;
            binding = new Binding(this, function () : String
            {
                var _loc_1:* = !summonHeroEnabled ? (Utils.i18n("summonTypeSelectCanNotUseNow")) : (Utils.i18n("summonTypeSelectPumpkinSummonDescription2"));
                var _loc_2:* = _loc_1 == undefined ? (null) : (String(_loc_1));
                return _loc_2;
            }// end function
            , function (param1:String) : void
            {
                _SummonTypeSelectWindow_TextArea14.text = param1;
                return;
            }// end function
            , "_SummonTypeSelectWindow_TextArea14.text");
            result[42] = binding;
            binding = new Binding(this, function () : Object
            {
                return _swf_close4;
            }// end function
            , function (param1:Object) : void
            {
                _SummonTypeSelectWindow_Image30.source = param1;
                return;
            }// end function
            , "_SummonTypeSelectWindow_Image30.source");
            result[43] = binding;
            return result;
        }// end function

        public function ___SummonTypeSelectWindow_Image30_click(event:MouseEvent) : void
        {
            viewSummonType();
            return;
        }// end function

        public function ___SummonTypeSelectWindow_Image3_click(event:MouseEvent) : void
        {
            viewSpecialSummonType();
            return;
        }// end function

        public function ___SummonTypeSelectWindow_Image7_click(event:MouseEvent) : void
        {
            summonPopupEvent(SUMMON_TYPE_SPECIAL, "racial1");
            return;
        }// end function

        public function changeDefaultWindow() : void
        {
            sendPopupEvent(CEREMONY_WINDOW_CHANGE, "bottom_600x200");
            title.y = 302;
            return;
        }// end function

        public function set tutMarkNormalSummon(param1:Image) : void
        {
            var _loc_2:* = this._767659960tutMarkNormalSummon;
            if (_loc_2 !== param1)
            {
                this._767659960tutMarkNormalSummon = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "tutMarkNormalSummon", _loc_2, param1));
            }
            return;
        }// end function

        public function ___SummonTypeSelectWindow_Image24_click(event:MouseEvent) : void
        {
            summonPopupEvent(SUMMON_TYPE_SPECIAL, "campaign2");
            return;
        }// end function

        public function ___SummonTypeSelectWindow_Image28_click(event:MouseEvent) : void
        {
            summonPopupEvent(SUMMON_TYPE_SPECIAL, "campaign1");
            return;
        }// end function

        private function set tutMarkNormalVisible(param1:Boolean) : void
        {
            var _loc_2:* = this._1748459tutMarkNormalVisible;
            if (_loc_2 !== param1)
            {
                this._1748459tutMarkNormalVisible = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "tutMarkNormalVisible", _loc_2, param1));
            }
            return;
        }// end function

        public function set viewStack(param1:ViewStack) : void
        {
            var _loc_2:* = this._1584105757viewStack;
            if (_loc_2 !== param1)
            {
                this._1584105757viewStack = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "viewStack", _loc_2, param1));
            }
            return;
        }// end function

        public function changeWindowSize() : void
        {
            if (viewStack.selectedIndex == 1)
            {
                changeLargeWindow();
            }
            else
            {
                changeDefaultWindow();
            }
            return;
        }// end function

        private function get tutMarkNormalVisible() : Boolean
        {
            return this._1748459tutMarkNormalVisible;
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
            SummonTypeSelectWindow._watcherSetupUtil = param1;
            return;
        }// end function

    }
}
