package com.kbmj.viking.view.home
{
    import com.kbmj.viking.lib.*;
    import com.kbmj.viking.view.*;
    import com.kbmj.viking.vo.*;
    import com.kbmj.viking.vo.tactics.*;
    import flash.display.*;
    import flash.events.*;
    import flash.utils.*;
    import mx.binding.*;
    import mx.containers.*;
    import mx.controls.*;
    import mx.controls.dataGridClasses.*;
    import mx.core.*;
    import mx.events.*;

    public class RecipeUnionWindow extends PopupWindow implements IBindingClient
    {
        private var _1584105757viewStack:ViewStack;
        private var _654690143yangNecessarySoul:int = 0;
        private var _891986333yangUnitCanvas:Canvas;
        private var _157742664selectOffImage:Class;
        var _bindingsByDestination:Object;
        private var _94427871tutVisible:Boolean = false;
        public var _RecipeUnionWindow_DataGridColumn13:DataGridColumn;
        public var _RecipeUnionWindow_DataGridColumn14:DataGridColumn;
        public var _RecipeUnionWindow_DataGridColumn15:DataGridColumn;
        public var _RecipeUnionWindow_DataGridColumn16:DataGridColumn;
        public var _RecipeUnionWindow_DataGridColumn17:DataGridColumn;
        public var _RecipeUnionWindow_DataGridColumn18:DataGridColumn;
        public var _RecipeUnionWindow_DataGridColumn12:DataGridColumn;
        public var _RecipeUnionWindow_DataGridColumn19:DataGridColumn;
        private var _987638546recipe_list_tutorial:DataGrid;
        private var _1774141206_swf_cancel_yang:MovieClipLoaderAsset;
        public var _RecipeUnionWindow_DataGridColumn20:DataGridColumn;
        public var _RecipeUnionWindow_DataGridColumn23:DataGridColumn;
        public var _RecipeUnionWindow_DataGridColumn24:DataGridColumn;
        public var _RecipeUnionWindow_DataGridColumn25:DataGridColumn;
        public var _RecipeUnionWindow_DataGridColumn26:DataGridColumn;
        public var _RecipeUnionWindow_DataGridColumn27:DataGridColumn;
        public var _RecipeUnionWindow_DataGridColumn28:DataGridColumn;
        public var _RecipeUnionWindow_DataGridColumn29:DataGridColumn;
        public var _RecipeUnionWindow_DataGridColumn30:DataGridColumn;
        public var _RecipeUnionWindow_DataGridColumn31:DataGridColumn;
        public var _RecipeUnionWindow_DataGridColumn34:DataGridColumn;
        public var _RecipeUnionWindow_DataGridColumn35:DataGridColumn;
        public var _RecipeUnionWindow_DataGridColumn36:DataGridColumn;
        public var _RecipeUnionWindow_DataGridColumn37:DataGridColumn;
        public var _RecipeUnionWindow_DataGridColumn38:DataGridColumn;
        public var _RecipeUnionWindow_DataGridColumn39:DataGridColumn;
        public var _RecipeUnionWindow_Text1:Text;
        private var _1998871727recipe_list:DataGrid;
        private var _227500134yangCandidateUnit:Array;
        public var _RecipeUnionWindow_Image1:Image;
        public var _RecipeUnionWindow_Image2:Image;
        public var _RecipeUnionWindow_Image3:Image;
        public var _RecipeUnionWindow_DataGridColumn40:DataGridColumn;
        public var _RecipeUnionWindow_DataGridColumn42:DataGridColumn;
        private var _1882432533_swf_cancel_yin:MovieClipLoaderAsset;
        public var _RecipeUnionWindow_DataGridColumn46:DataGridColumn;
        public var _RecipeUnionWindow_DataGridColumn41:DataGridColumn;
        public var _RecipeUnionWindow_DataGridColumn49:DataGridColumn;
        public var _RecipeUnionWindow_DataGridColumn45:DataGridColumn;
        public var _RecipeUnionWindow_DataGridColumn47:DataGridColumn;
        public var _RecipeUnionWindow_DataGridColumn48:DataGridColumn;
        private var _512787452_soulCrystal:int;
        private var _973379008yinUnitList:DataGrid;
        public var _RecipeUnionWindow_DataGridColumn50:DataGridColumn;
        public var _RecipeUnionWindow_Text3:Text;
        private var _resourceVO:ResourceVO;
        private var _100077085_swf_back:MovieClipLoaderAsset;
        private var _1963312880_allRecipe:Array;
        private var _969321085detailRenderer1:ClassFactory;
        private var _1150838278yinUnitCanvas:Canvas;
        private var _1717567168detailRendererTutorial2:ClassFactory;
        private var recipeAbsentWindow:RecipeAbsentWindow;
        private var _194920895selectImage:Class;
        public var checkUnionWindow:CheckUnionWindow;
        private var _1720641671totalEarthSize:Text;
        private var _1625609693yangUnitList:DataGrid;
        private var selectRecipe:Object;
        private var _240110594spiritOfFire:Object;
        private var _783139075yinUnitList_tutorial:DataGrid;
        var _bindingsBeginWithWord:Object;
        private var _1225459084nonTutVisible:Boolean = true;
        private var _606037716totalWaterSize:Text;
        private var _embed_mxml__images_home_btn_makemail_on_png_429251209:Class;
        private var _1958883625expLabel:ClassFactory;
        private var _1145344898spiritOfEarth:Object;
        public var _RecipeUnionWindow_Label1:Label;
        public var _RecipeUnionWindow_Label2:Label;
        public var _RecipeUnionWindow_Label3:Label;
        public var _RecipeUnionWindow_Label4:Label;
        public var _RecipeUnionWindow_Label5:Label;
        public var _RecipeUnionWindow_Label6:Label;
        public var _RecipeUnionWindow_Label7:Label;
        public var _RecipeUnionWindow_Label8:Label;
        private var leyLine:Boolean = false;
        private var _embed_mxml__images_home_btn_makemail_off_png_1742476087:Class;
        private var _1717567167detailRendererTutorial1:ClassFactory;
        private var _1243907876yinNecessarySoul:int = 0;
        private var _1766773752totalSoulSize:Text;
        private var _490381779unitLayer:Canvas;
        private var _embed_mxml__images_home_st_btn_delcancel_on_png_138482313:Class;
        private var _537331013totalFireSize:Text;
        private var _1295455750yangUnitList_tutorial:DataGrid;
        private var _embed_mxml__images_home_st_btn_delcancel_off_png_818309943:Class;
        private var _969321086detailRenderer2:ClassFactory;
        private var _2004539108recipeNameRenderer:ClassFactory;
        private var _985849673descriptionText:Text;
        private var recipeDescriptionWindow:RecipeDescriptionWindow;
        private var _432832539yangUnit:UnitVO;
        private var _969321084detailRenderer0:ClassFactory;
        private var _1717567166detailRendererTutorial0:ClassFactory;
        private var _1724546052description:String;
        private var unitStatusPopUpWindow:UnitStatusPopUpWindow;
        private var _tutMarkRecipeUnionVisible:Boolean = false;
        private var _1170914814yinUnit:UnitVO;
        var _watchers:Array;
        private var _560437760selectUnitConfirm:Boolean = false;
        public var _RecipeUnionWindow_DataGridColumn1:DataGridColumn;
        public var _RecipeUnionWindow_DataGridColumn2:DataGridColumn;
        public var _RecipeUnionWindow_DataGridColumn3:DataGridColumn;
        public var _RecipeUnionWindow_DataGridColumn4:DataGridColumn;
        public var _RecipeUnionWindow_DataGridColumn5:DataGridColumn;
        public var _RecipeUnionWindow_DataGridColumn6:DataGridColumn;
        public var _RecipeUnionWindow_DataGridColumn7:DataGridColumn;
        public var _RecipeUnionWindow_DataGridColumn8:DataGridColumn;
        public var _RecipeUnionWindow_DataGridColumn9:DataGridColumn;
        private var _582172204_homeAllUnits:Array;
        private var _1161969743spiritOfWater:Object;
        private var _2126098153yinCandidateUnit:Array;
        var _bindings:Array;
        private var _documentDescriptor_:UIComponentDescriptor;
        public static const ADD_UNIT_SWF:String = NAME + "addUnitSwf";
        public static const REMOVE_UNIT_SWF:String = NAME + "subUnitSwf";
        public static const NAME:String = "recipeUnionWindow";
        private static var _watcherSetupUtil:IWatcherSetupUtil;
        public static const RECIPE_UNION_RUN:String = NAME + "recipeUnion";
        public static const RECIPE_UNION_END:String = NAME + "recipeUnionEnd";

        public function RecipeUnionWindow()
        {
            _documentDescriptor_ = new UIComponentDescriptor({type:PopupWindow, propertiesFactory:function () : Object
            {
                return {childDescriptors:[new UIComponentDescriptor({type:Canvas, id:"unitLayer", propertiesFactory:function () : Object
                {
                    return {x:-35, y:-100};
                }// end function
                }), new UIComponentDescriptor({type:Text, id:"_RecipeUnionWindow_Text1", propertiesFactory:function () : Object
                {
                    return {styleName:"PanelBaseTitle", x:300, y:201};
                }// end function
                }), new UIComponentDescriptor({type:Text, id:"descriptionText", stylesFactory:function () : void
                {
                    this.fontSize = 11;
                    return;
                }// end function
                , propertiesFactory:function () : Object
                {
                    return {x:55, y:230};
                }// end function
                }), new UIComponentDescriptor({type:Canvas, propertiesFactory:function () : Object
                {
                    return {height:470, width:680, childDescriptors:[new UIComponentDescriptor({type:ViewStack, id:"viewStack", propertiesFactory:function () : Object
                    {
                        return {x:55, y:255, childDescriptors:[new UIComponentDescriptor({type:VBox, propertiesFactory:function () : Object
                        {
                            return {height:200, childDescriptors:[new UIComponentDescriptor({type:DataGrid, id:"recipe_list", propertiesFactory:function () : Object
                            {
                                return {rowCount:4, width:590, styleName:"DataGridBase", selectable:false, sortableColumns:false, includeInLayout:false, columns:[_RecipeUnionWindow_DataGridColumn1_i(), _RecipeUnionWindow_DataGridColumn2_i(), _RecipeUnionWindow_DataGridColumn3_i()]};
                            }// end function
                            }), new UIComponentDescriptor({type:DataGrid, id:"recipe_list_tutorial", propertiesFactory:function () : Object
                            {
                                return {rowCount:4, width:590, styleName:"DataGridBase", selectable:false, sortableColumns:false, columns:[_RecipeUnionWindow_DataGridColumn4_i(), _RecipeUnionWindow_DataGridColumn5_i(), _RecipeUnionWindow_DataGridColumn6_i()]};
                            }// end function
                            }), new UIComponentDescriptor({type:HBox, propertiesFactory:function () : Object
                            {
                                return {childDescriptors:[new UIComponentDescriptor({type:Spacer, propertiesFactory:function () : Object
                                {
                                    return {width:230};
                                }// end function
                                }), new UIComponentDescriptor({type:Image, id:"_RecipeUnionWindow_Image1", events:{click:"___RecipeUnionWindow_Image1_click"}})]};
                            }// end function
                            })]};
                        }// end function
                        }), new UIComponentDescriptor({type:VBox, propertiesFactory:function () : Object
                        {
                            return {childDescriptors:[new UIComponentDescriptor({type:DataGrid, id:"yangUnitList", propertiesFactory:function () : Object
                            {
                                return {rowCount:4, width:590, styleName:"DataGridBase", selectable:false, sortableColumns:false, includeInLayout:false, columns:[_RecipeUnionWindow_DataGridColumn7_i(), _RecipeUnionWindow_DataGridColumn8_i(), _RecipeUnionWindow_DataGridColumn9_i(), _RecipeUnionWindow_DataGridColumn10_c(), _RecipeUnionWindow_DataGridColumn11_c(), _RecipeUnionWindow_DataGridColumn12_i(), _RecipeUnionWindow_DataGridColumn13_i(), _RecipeUnionWindow_DataGridColumn14_i(), _RecipeUnionWindow_DataGridColumn15_i(), _RecipeUnionWindow_DataGridColumn16_i(), _RecipeUnionWindow_DataGridColumn17_i()]};
                            }// end function
                            }), new UIComponentDescriptor({type:DataGrid, id:"yangUnitList_tutorial", propertiesFactory:function () : Object
                            {
                                return {rowCount:4, width:590, styleName:"DataGridBase", selectable:false, sortableColumns:false, columns:[_RecipeUnionWindow_DataGridColumn18_i(), _RecipeUnionWindow_DataGridColumn19_i(), _RecipeUnionWindow_DataGridColumn20_i(), _RecipeUnionWindow_DataGridColumn21_c(), _RecipeUnionWindow_DataGridColumn22_c(), _RecipeUnionWindow_DataGridColumn23_i(), _RecipeUnionWindow_DataGridColumn24_i(), _RecipeUnionWindow_DataGridColumn25_i(), _RecipeUnionWindow_DataGridColumn26_i(), _RecipeUnionWindow_DataGridColumn27_i(), _RecipeUnionWindow_DataGridColumn28_i()]};
                            }// end function
                            }), new UIComponentDescriptor({type:HBox, propertiesFactory:function () : Object
                            {
                                return {childDescriptors:[new UIComponentDescriptor({type:Spacer, propertiesFactory:function () : Object
                                {
                                    return {width:230};
                                }// end function
                                }), new UIComponentDescriptor({type:Image, id:"_RecipeUnionWindow_Image2", events:{click:"___RecipeUnionWindow_Image2_click"}})]};
                            }// end function
                            })]};
                        }// end function
                        }), new UIComponentDescriptor({type:VBox, propertiesFactory:function () : Object
                        {
                            return {childDescriptors:[new UIComponentDescriptor({type:DataGrid, id:"yinUnitList", propertiesFactory:function () : Object
                            {
                                return {rowCount:4, width:590, styleName:"DataGridBase", selectable:false, sortableColumns:false, includeInLayout:false, columns:[_RecipeUnionWindow_DataGridColumn29_i(), _RecipeUnionWindow_DataGridColumn30_i(), _RecipeUnionWindow_DataGridColumn31_i(), _RecipeUnionWindow_DataGridColumn32_c(), _RecipeUnionWindow_DataGridColumn33_c(), _RecipeUnionWindow_DataGridColumn34_i(), _RecipeUnionWindow_DataGridColumn35_i(), _RecipeUnionWindow_DataGridColumn36_i(), _RecipeUnionWindow_DataGridColumn37_i(), _RecipeUnionWindow_DataGridColumn38_i(), _RecipeUnionWindow_DataGridColumn39_i()]};
                            }// end function
                            }), new UIComponentDescriptor({type:DataGrid, id:"yinUnitList_tutorial", propertiesFactory:function () : Object
                            {
                                return {rowCount:4, width:590, styleName:"DataGridBase", selectable:false, sortableColumns:false, columns:[_RecipeUnionWindow_DataGridColumn40_i(), _RecipeUnionWindow_DataGridColumn41_i(), _RecipeUnionWindow_DataGridColumn42_i(), _RecipeUnionWindow_DataGridColumn43_c(), _RecipeUnionWindow_DataGridColumn44_c(), _RecipeUnionWindow_DataGridColumn45_i(), _RecipeUnionWindow_DataGridColumn46_i(), _RecipeUnionWindow_DataGridColumn47_i(), _RecipeUnionWindow_DataGridColumn48_i(), _RecipeUnionWindow_DataGridColumn49_i(), _RecipeUnionWindow_DataGridColumn50_i()]};
                            }// end function
                            }), new UIComponentDescriptor({type:HBox, propertiesFactory:function () : Object
                            {
                                return {childDescriptors:[new UIComponentDescriptor({type:Spacer, propertiesFactory:function () : Object
                                {
                                    return {width:230};
                                }// end function
                                }), new UIComponentDescriptor({type:Image, id:"_RecipeUnionWindow_Image3", events:{click:"___RecipeUnionWindow_Image3_click"}})]};
                            }// end function
                            })]};
                        }// end function
                        }), new UIComponentDescriptor({type:VBox, propertiesFactory:function () : Object
                        {
                            return {childDescriptors:[new UIComponentDescriptor({type:Text, id:"_RecipeUnionWindow_Text3", propertiesFactory:function () : Object
                            {
                                return {x:120, y:60};
                            }// end function
                            }), new UIComponentDescriptor({type:HBox, propertiesFactory:function () : Object
                            {
                                return {width:300, x:110, y:250, childDescriptors:[new UIComponentDescriptor({type:Button, events:{click:"___RecipeUnionWindow_Button1_click"}, stylesFactory:function () : void
                                {
                                    this.overSkin = _embed_mxml__images_home_btn_makemail_on_png_429251209;
                                    this.upSkin = _embed_mxml__images_home_btn_makemail_off_png_1742476087;
                                    this.downSkin = _embed_mxml__images_home_btn_makemail_on_png_429251209;
                                    return;
                                }// end function
                                , propertiesFactory:function () : Object
                                {
                                    return {x:10, y:60, buttonMode:true};
                                }// end function
                                }), new UIComponentDescriptor({type:Button, events:{click:"___RecipeUnionWindow_Button2_click"}, stylesFactory:function () : void
                                {
                                    this.overSkin = _embed_mxml__images_home_st_btn_delcancel_on_png_138482313;
                                    this.upSkin = _embed_mxml__images_home_st_btn_delcancel_off_png_818309943;
                                    this.downSkin = _embed_mxml__images_home_st_btn_delcancel_on_png_138482313;
                                    return;
                                }// end function
                                , propertiesFactory:function () : Object
                                {
                                    return {x:10, y:150, buttonMode:true};
                                }// end function
                                })]};
                            }// end function
                            })]};
                        }// end function
                        })]};
                    }// end function
                    })]};
                }// end function
                }), new UIComponentDescriptor({type:Canvas, propertiesFactory:function () : Object
                {
                    return {childDescriptors:[new UIComponentDescriptor({type:Canvas, id:"yangUnitCanvas", propertiesFactory:function () : Object
                    {
                        return {visible:false, childDescriptors:[new UIComponentDescriptor({type:Label, id:"_RecipeUnionWindow_Label1", events:{click:"___RecipeUnionWindow_Label1_click"}, stylesFactory:function () : void
                        {
                            this.textDecoration = "underline";
                            return;
                        }// end function
                        , propertiesFactory:function () : Object
                        {
                            return {x:70, y:90, buttonMode:true, mouseChildren:false};
                        }// end function
                        }), new UIComponentDescriptor({type:Label, id:"_RecipeUnionWindow_Label2", propertiesFactory:function () : Object
                        {
                            return {x:70, y:110};
                        }// end function
                        }), new UIComponentDescriptor({type:Label, id:"_RecipeUnionWindow_Label3", propertiesFactory:function () : Object
                        {
                            return {x:70, y:130};
                        }// end function
                        }), new UIComponentDescriptor({type:Label, id:"_RecipeUnionWindow_Label4", propertiesFactory:function () : Object
                        {
                            return {x:70, y:150};
                        }// end function
                        })]};
                    }// end function
                    }), new UIComponentDescriptor({type:Canvas, id:"yinUnitCanvas", propertiesFactory:function () : Object
                    {
                        return {visible:false, childDescriptors:[new UIComponentDescriptor({type:Label, id:"_RecipeUnionWindow_Label5", events:{click:"___RecipeUnionWindow_Label5_click"}, stylesFactory:function () : void
                        {
                            this.textDecoration = "underline";
                            return;
                        }// end function
                        , propertiesFactory:function () : Object
                        {
                            return {x:500, y:90, buttonMode:true, mouseChildren:false};
                        }// end function
                        }), new UIComponentDescriptor({type:Label, id:"_RecipeUnionWindow_Label6", propertiesFactory:function () : Object
                        {
                            return {x:500, y:110};
                        }// end function
                        }), new UIComponentDescriptor({type:Label, id:"_RecipeUnionWindow_Label7", propertiesFactory:function () : Object
                        {
                            return {x:500, y:130};
                        }// end function
                        }), new UIComponentDescriptor({type:Label, id:"_RecipeUnionWindow_Label8", propertiesFactory:function () : Object
                        {
                            return {x:500, y:150};
                        }// end function
                        })]};
                    }// end function
                    }), new UIComponentDescriptor({type:Text, id:"totalSoulSize", stylesFactory:function () : void
                    {
                        this.fontSize = 12;
                        return;
                    }// end function
                    , propertiesFactory:function () : Object
                    {
                        return {x:255, y:5};
                    }// end function
                    }), new UIComponentDescriptor({type:Text, id:"totalFireSize", stylesFactory:function () : void
                    {
                        this.fontSize = 12;
                        return;
                    }// end function
                    , propertiesFactory:function () : Object
                    {
                        return {x:315, y:5};
                    }// end function
                    }), new UIComponentDescriptor({type:Text, id:"totalEarthSize", stylesFactory:function () : void
                    {
                        this.fontSize = 12;
                        return;
                    }// end function
                    , propertiesFactory:function () : Object
                    {
                        return {x:375, y:5};
                    }// end function
                    }), new UIComponentDescriptor({type:Text, id:"totalWaterSize", stylesFactory:function () : void
                    {
                        this.fontSize = 12;
                        return;
                    }// end function
                    , propertiesFactory:function () : Object
                    {
                        return {x:435, y:5};
                    }// end function
                    })]};
                }// end function
                })]};
            }// end function
            });
            recipeDescriptionWindow = new RecipeDescriptionWindow();
            recipeAbsentWindow = new RecipeAbsentWindow();
            checkUnionWindow = new CheckUnionWindow();
            _100077085_swf_back = new Viking.EmbedSwfButtonCommon();
            _1774141206_swf_cancel_yang = new Viking.EmbedSwfButtonCommon();
            _1882432533_swf_cancel_yin = new Viking.EmbedSwfButtonCommon();
            _582172204_homeAllUnits = new Array();
            _1963312880_allRecipe = new Array();
            _227500134yangCandidateUnit = new Array();
            _2126098153yinCandidateUnit = new Array();
            _432832539yangUnit = new UnitVO();
            _1170914814yinUnit = new UnitVO();
            _1724546052description = new String();
            selectRecipe = new Object();
            _194920895selectImage = RecipeUnionWindow_selectImage;
            _157742664selectOffImage = RecipeUnionWindow_selectOffImage;
            _embed_mxml__images_home_btn_makemail_off_png_1742476087 = RecipeUnionWindow__embed_mxml__images_home_btn_makemail_off_png_1742476087;
            _embed_mxml__images_home_btn_makemail_on_png_429251209 = RecipeUnionWindow__embed_mxml__images_home_btn_makemail_on_png_429251209;
            _embed_mxml__images_home_st_btn_delcancel_off_png_818309943 = RecipeUnionWindow__embed_mxml__images_home_st_btn_delcancel_off_png_818309943;
            _embed_mxml__images_home_st_btn_delcancel_on_png_138482313 = RecipeUnionWindow__embed_mxml__images_home_st_btn_delcancel_on_png_138482313;
            _bindings = [];
            _watchers = [];
            _bindingsByDestination = {};
            _bindingsBeginWithWord = {};
            mx_internal::_document = this;
            _RecipeUnionWindow_ClassFactory5_i();
            _RecipeUnionWindow_ClassFactory6_i();
            _RecipeUnionWindow_ClassFactory7_i();
            _RecipeUnionWindow_ClassFactory8_i();
            _RecipeUnionWindow_ClassFactory9_i();
            _RecipeUnionWindow_ClassFactory10_i();
            _RecipeUnionWindow_ClassFactory11_i();
            _RecipeUnionWindow_ClassFactory12_i();
            this.addEventListener("creationComplete", ___RecipeUnionWindow_PopupWindow1_creationComplete);
            return;
        }// end function

        private function set selectUnitConfirm(param1:Boolean) : void
        {
            var _loc_2:* = this._560437760selectUnitConfirm;
            if (_loc_2 !== param1)
            {
                this._560437760selectUnitConfirm = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "selectUnitConfirm", _loc_2, param1));
            }
            return;
        }// end function

        private function set yinUnit(param1:UnitVO) : void
        {
            var _loc_2:* = this._1170914814yinUnit;
            if (_loc_2 !== param1)
            {
                this._1170914814yinUnit = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "yinUnit", _loc_2, param1));
            }
            return;
        }// end function

        private function _RecipeUnionWindow_DataGridColumn1_i() : DataGridColumn
        {
            var _loc_1:* = new DataGridColumn();
            _RecipeUnionWindow_DataGridColumn1 = _loc_1;
            _loc_1.width = 50;
            _loc_1.setStyle("textAlign", "center");
            BindingManager.executeBindings(this, "_RecipeUnionWindow_DataGridColumn1", _RecipeUnionWindow_DataGridColumn1);
            return _loc_1;
        }// end function

        private function get _soulCrystal() : int
        {
            return this._512787452_soulCrystal;
        }// end function

        private function set _soulCrystal(param1:int) : void
        {
            var _loc_2:* = this._512787452_soulCrystal;
            if (_loc_2 !== param1)
            {
                this._512787452_soulCrystal = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "_soulCrystal", _loc_2, param1));
            }
            return;
        }// end function

        private function set spiritOfFire(param1:Object) : void
        {
            var _loc_2:* = this._240110594spiritOfFire;
            if (_loc_2 !== param1)
            {
                this._240110594spiritOfFire = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "spiritOfFire", _loc_2, param1));
            }
            return;
        }// end function

        private function get _swf_cancel_yin() : MovieClipLoaderAsset
        {
            return this._1882432533_swf_cancel_yin;
        }// end function

        private function _RecipeUnionWindow_DataGridColumn43_c() : DataGridColumn
        {
            var _loc_1:* = new DataGridColumn();
            _loc_1.dataField = "level";
            _loc_1.headerText = "Lv";
            _loc_1.width = 37;
            _loc_1.setStyle("textAlign", "center");
            return _loc_1;
        }// end function

        private function _RecipeUnionWindow_DataGridColumn20_i() : DataGridColumn
        {
            var _loc_1:* = new DataGridColumn();
            _RecipeUnionWindow_DataGridColumn20 = _loc_1;
            _loc_1.dataField = "jobMasterVO.nameLabel";
            _loc_1.width = 80;
            _loc_1.setStyle("textAlign", "center");
            BindingManager.executeBindings(this, "_RecipeUnionWindow_DataGridColumn20", _RecipeUnionWindow_DataGridColumn20);
            return _loc_1;
        }// end function

        private function set _swf_cancel_yin(param1:MovieClipLoaderAsset) : void
        {
            var _loc_2:* = this._1882432533_swf_cancel_yin;
            if (_loc_2 !== param1)
            {
                this._1882432533_swf_cancel_yin = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "_swf_cancel_yin", _loc_2, param1));
            }
            return;
        }// end function

        private function _RecipeUnionWindow_DataGridColumn31_i() : DataGridColumn
        {
            var _loc_1:* = new DataGridColumn();
            _RecipeUnionWindow_DataGridColumn31 = _loc_1;
            _loc_1.dataField = "jobMasterVO.nameLabel";
            _loc_1.width = 80;
            _loc_1.setStyle("textAlign", "center");
            BindingManager.executeBindings(this, "_RecipeUnionWindow_DataGridColumn31", _RecipeUnionWindow_DataGridColumn31);
            return _loc_1;
        }// end function

        public function set yangUnitList(param1:DataGrid) : void
        {
            var _loc_2:* = this._1625609693yangUnitList;
            if (_loc_2 !== param1)
            {
                this._1625609693yangUnitList = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "yangUnitList", _loc_2, param1));
            }
            return;
        }// end function

        private function get spiritOfWater() : Object
        {
            return this._1161969743spiritOfWater;
        }// end function

        private function _RecipeUnionWindow_ClassFactory9_i() : ClassFactory
        {
            var _loc_1:* = new ClassFactory();
            detailRendererTutorial1 = _loc_1;
            _loc_1.generator = RecipeUnionWindow_inlineComponent5;
            _loc_1.properties = {outerDocument:this};
            return _loc_1;
        }// end function

        public function ___RecipeUnionWindow_Label5_click(event:MouseEvent) : void
        {
            onClick(yinUnit);
            return;
        }// end function

        private function set _homeAllUnits(param1:Array) : void
        {
            var _loc_2:* = this._582172204_homeAllUnits;
            if (_loc_2 !== param1)
            {
                this._582172204_homeAllUnits = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "_homeAllUnits", _loc_2, param1));
            }
            return;
        }// end function

        private function _RecipeUnionWindow_DataGridColumn42_i() : DataGridColumn
        {
            var _loc_1:* = new DataGridColumn();
            _RecipeUnionWindow_DataGridColumn42 = _loc_1;
            _loc_1.dataField = "jobMasterVO.nameLabel";
            _loc_1.width = 80;
            _loc_1.setStyle("textAlign", "center");
            BindingManager.executeBindings(this, "_RecipeUnionWindow_DataGridColumn42", _RecipeUnionWindow_DataGridColumn42);
            return _loc_1;
        }// end function

        private function get yangCandidateUnit() : Array
        {
            return this._227500134yangCandidateUnit;
        }// end function

        public function getItemText(param1:Object) : String
        {
            return param1 ? (param1.quantity.toString()) : ("0");
        }// end function

        public function set unitLayer(param1:Canvas) : void
        {
            var _loc_2:* = this._490381779unitLayer;
            if (_loc_2 !== param1)
            {
                this._490381779unitLayer = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "unitLayer", _loc_2, param1));
            }
            return;
        }// end function

        private function _RecipeUnionWindow_DataGridColumn30_i() : DataGridColumn
        {
            var _loc_1:* = new DataGridColumn();
            _RecipeUnionWindow_DataGridColumn30 = _loc_1;
            _loc_1.dataField = "name";
            _loc_1.itemRenderer = _RecipeUnionWindow_ClassFactory3_c();
            _loc_1.width = 80;
            BindingManager.executeBindings(this, "_RecipeUnionWindow_DataGridColumn30", _RecipeUnionWindow_DataGridColumn30);
            return _loc_1;
        }// end function

        public function setSelectUnitButton(param1:Object) : Class
        {
            if (isLack(spiritOfFire) || isLack(spiritOfEarth) || isLack(spiritOfFire))
            {
                return selectOffImage;
            }
            return selectImage;
        }// end function

        public function get totalEarthSize() : Text
        {
            return this._1720641671totalEarthSize;
        }// end function

        public function set homeAllUnits(param1:Array) : void
        {
            _homeAllUnits = param1;
            return;
        }// end function

        public function ___RecipeUnionWindow_Button2_click(event:MouseEvent) : void
        {
            startIndex();
            return;
        }// end function

        private function get yangNecessarySoul() : int
        {
            return this._654690143yangNecessarySoul;
        }// end function

        private function _RecipeUnionWindow_DataGridColumn41_i() : DataGridColumn
        {
            var _loc_1:* = new DataGridColumn();
            _RecipeUnionWindow_DataGridColumn41 = _loc_1;
            _loc_1.dataField = "name";
            _loc_1.itemRenderer = _RecipeUnionWindow_ClassFactory4_c();
            _loc_1.width = 75;
            BindingManager.executeBindings(this, "_RecipeUnionWindow_DataGridColumn41", _RecipeUnionWindow_DataGridColumn41);
            return _loc_1;
        }// end function

        private function set spiritOfWater(param1:Object) : void
        {
            var _loc_2:* = this._1161969743spiritOfWater;
            if (_loc_2 !== param1)
            {
                this._1161969743spiritOfWater = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "spiritOfWater", _loc_2, param1));
            }
            return;
        }// end function

        private function closeRecipeUnion() : void
        {
            yinUnit = new UnitVO();
            yangUnit = new UnitVO();
            selectUnitConfirm = false;
            yangNecessarySoul = 0;
            yinNecessarySoul = 0;
            var _loc_1:String = null;
            spiritOfWater = null;
            var _loc_1:* = _loc_1;
            spiritOfEarth = _loc_1;
            spiritOfFire = _loc_1;
            sendEvent(RECIPE_UNION_END);
            return;
        }// end function

        private function set yangCandidateUnit(param1:Array) : void
        {
            var _loc_2:* = this._227500134yangCandidateUnit;
            if (_loc_2 !== param1)
            {
                this._227500134yangCandidateUnit = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "yangCandidateUnit", _loc_2, param1));
            }
            return;
        }// end function

        private function _RecipeUnionWindow_ClassFactory8_i() : ClassFactory
        {
            var _loc_1:* = new ClassFactory();
            detailRendererTutorial0 = _loc_1;
            _loc_1.generator = RecipeUnionWindow_inlineComponent4;
            _loc_1.properties = {outerDocument:this};
            return _loc_1;
        }// end function

        public function get recipe_list() : DataGrid
        {
            return this._1998871727recipe_list;
        }// end function

        private function set selectOffImage(param1:Class) : void
        {
            var _loc_2:* = this._157742664selectOffImage;
            if (_loc_2 !== param1)
            {
                this._157742664selectOffImage = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "selectOffImage", _loc_2, param1));
            }
            return;
        }// end function

        private function _RecipeUnionWindow_DataGridColumn40_i() : DataGridColumn
        {
            var _loc_1:* = new DataGridColumn();
            _RecipeUnionWindow_DataGridColumn40 = _loc_1;
            _loc_1.width = 78;
            _loc_1.setStyle("textAlign", "center");
            BindingManager.executeBindings(this, "_RecipeUnionWindow_DataGridColumn40", _RecipeUnionWindow_DataGridColumn40);
            return _loc_1;
        }// end function

        public function isLack(param1:Object) : Boolean
        {
            return param1 && param1.quantity > getMaterial(param1.itemId).quantity;
        }// end function

        private function _RecipeUnionWindow_ClassFactory7_i() : ClassFactory
        {
            var _loc_1:* = new ClassFactory();
            detailRenderer2 = _loc_1;
            _loc_1.generator = RecipeUnionWindow_inlineComponent3;
            _loc_1.properties = {outerDocument:this};
            return _loc_1;
        }// end function

        private function get _swf_cancel_yang() : MovieClipLoaderAsset
        {
            return this._1774141206_swf_cancel_yang;
        }// end function

        public function get recipe_list_tutorial() : DataGrid
        {
            return this._987638546recipe_list_tutorial;
        }// end function

        public function set detailRenderer0(param1:ClassFactory) : void
        {
            var _loc_2:* = this._969321084detailRenderer0;
            if (_loc_2 !== param1)
            {
                this._969321084detailRenderer0 = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "detailRenderer0", _loc_2, param1));
            }
            return;
        }// end function

        public function set detailRenderer1(param1:ClassFactory) : void
        {
            var _loc_2:* = this._969321085detailRenderer1;
            if (_loc_2 !== param1)
            {
                this._969321085detailRenderer1 = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "detailRenderer1", _loc_2, param1));
            }
            return;
        }// end function

        public function set detailRenderer2(param1:ClassFactory) : void
        {
            var _loc_2:* = this._969321086detailRenderer2;
            if (_loc_2 !== param1)
            {
                this._969321086detailRenderer2 = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "detailRenderer2", _loc_2, param1));
            }
            return;
        }// end function

        public function set totalEarthSize(param1:Text) : void
        {
            var _loc_2:* = this._1720641671totalEarthSize;
            if (_loc_2 !== param1)
            {
                this._1720641671totalEarthSize = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "totalEarthSize", _loc_2, param1));
            }
            return;
        }// end function

        public function init(param1:Boolean) : void
        {
            yinUnit = new UnitVO();
            yangUnit = new UnitVO();
            description = Utils.i18n("pecipeUnionPleaseSelectedRecipe");
            selectUnitConfirm = false;
            leyLine = param1;
            yangNecessarySoul = 0;
            yinNecessarySoul = 0;
            var _loc_2:String = null;
            spiritOfWater = null;
            var _loc_2:* = _loc_2;
            spiritOfEarth = _loc_2;
            spiritOfFire = _loc_2;
            return;
        }// end function

        private function get _allRecipe() : Array
        {
            return this._1963312880_allRecipe;
        }// end function

        public function get recipeNameRenderer() : ClassFactory
        {
            return this._2004539108recipeNameRenderer;
        }// end function

        public function set allRecipe(param1:Array) : void
        {
            _allRecipe = param1.removeSame("name");
            return;
        }// end function

        public function showYinTutMark(param1:Object) : Boolean
        {
            var _loc_2:* = yinUnitList_tutorial.dataProvider.getItemIndex(param1);
            if (_loc_2 == 0 && _tutMarkRecipeUnionVisible)
            {
                return visible;
            }
            return false;
        }// end function

        private function _RecipeUnionWindow_ClassFactory6_i() : ClassFactory
        {
            var _loc_1:* = new ClassFactory();
            detailRenderer1 = _loc_1;
            _loc_1.generator = RecipeUnionWindow_inlineComponent2;
            _loc_1.properties = {outerDocument:this};
            return _loc_1;
        }// end function

        private function _RecipeUnionWindow_DataGridColumn50_i() : DataGridColumn
        {
            var _loc_1:* = new DataGridColumn();
            _RecipeUnionWindow_DataGridColumn50 = _loc_1;
            _loc_1.dataField = "luck";
            _loc_1.width = 30;
            _loc_1.setStyle("textAlign", "center");
            BindingManager.executeBindings(this, "_RecipeUnionWindow_DataGridColumn50", _RecipeUnionWindow_DataGridColumn50);
            return _loc_1;
        }// end function

        private function set yangNecessarySoul(param1:int) : void
        {
            var _loc_2:* = this._654690143yangNecessarySoul;
            if (_loc_2 !== param1)
            {
                this._654690143yangNecessarySoul = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "yangNecessarySoul", _loc_2, param1));
            }
            return;
        }// end function

        public function getItemColor(param1:Object) : uint
        {
            return isLack(param1) ? (15073298) : (0);
        }// end function

        public function ___RecipeUnionWindow_Button1_click(event:MouseEvent) : void
        {
            unionCeremony();
            return;
        }// end function

        public function set recipe_list(param1:DataGrid) : void
        {
            var _loc_2:* = this._1998871727recipe_list;
            if (_loc_2 !== param1)
            {
                this._1998871727recipe_list = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "recipe_list", _loc_2, param1));
            }
            return;
        }// end function

        private function _RecipeUnionWindow_ClassFactory5_i() : ClassFactory
        {
            var _loc_1:* = new ClassFactory();
            detailRenderer0 = _loc_1;
            _loc_1.generator = RecipeUnionWindow_inlineComponent1;
            _loc_1.properties = {outerDocument:this};
            return _loc_1;
        }// end function

        public function set totalFireSize(param1:Text) : void
        {
            var _loc_2:* = this._537331013totalFireSize;
            if (_loc_2 !== param1)
            {
                this._537331013totalFireSize = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "totalFireSize", _loc_2, param1));
            }
            return;
        }// end function

        public function set detailRendererTutorial0(param1:ClassFactory) : void
        {
            var _loc_2:* = this._1717567166detailRendererTutorial0;
            if (_loc_2 !== param1)
            {
                this._1717567166detailRendererTutorial0 = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "detailRendererTutorial0", _loc_2, param1));
            }
            return;
        }// end function

        public function setSelectRecipeButton(param1:Object) : Class
        {
            var data:* = param1;
            if (_homeAllUnits.filter(function (param1:UnitVO, param2:int, param3:Array) : Boolean
            {
                return param1.jobMasterVO.masterId == data.yangUnit.job_id && param1.level >= data.yangUnit.level;
            }// end function
            ).length <= 0)
            {
                return selectOffImage;
            }
            if (_homeAllUnits.filter(function (param1:UnitVO, param2:int, param3:Array) : Boolean
            {
                return param1.jobMasterVO.masterId == data.yinUnit.job_id && param1.level >= data.yinUnit.level;
            }// end function
            ).length <= 0)
            {
                return selectOffImage;
            }
            return selectImage;
        }// end function

        public function set detailRendererTutorial2(param1:ClassFactory) : void
        {
            var _loc_2:* = this._1717567168detailRendererTutorial2;
            if (_loc_2 !== param1)
            {
                this._1717567168detailRendererTutorial2 = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "detailRendererTutorial2", _loc_2, param1));
            }
            return;
        }// end function

        private function _RecipeUnionWindow_DataGridColumn19_i() : DataGridColumn
        {
            var _loc_1:* = new DataGridColumn();
            _RecipeUnionWindow_DataGridColumn19 = _loc_1;
            _loc_1.dataField = "name";
            _loc_1.itemRenderer = _RecipeUnionWindow_ClassFactory2_c();
            _loc_1.width = 75;
            BindingManager.executeBindings(this, "_RecipeUnionWindow_DataGridColumn19", _RecipeUnionWindow_DataGridColumn19);
            return _loc_1;
        }// end function

        private function get nonTutVisible() : Boolean
        {
            return this._1225459084nonTutVisible;
        }// end function

        public function set detailRendererTutorial1(param1:ClassFactory) : void
        {
            var _loc_2:* = this._1717567167detailRendererTutorial1;
            if (_loc_2 !== param1)
            {
                this._1717567167detailRendererTutorial1 = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "detailRendererTutorial1", _loc_2, param1));
            }
            return;
        }// end function

        private function startIndex() : void
        {
            sendPopupEvent(REMOVE_UNIT_SWF, {unit:yangUnit});
            sendPopupEvent(REMOVE_UNIT_SWF, {unit:yinUnit});
            viewStack.selectedIndex = 0;
            yinUnit = new UnitVO();
            yangUnit = new UnitVO();
            description = Utils.i18n("pecipeUnionPleaseSelectedRecipe");
            yangNecessarySoul = 0;
            yinNecessarySoul = 0;
            selectUnitConfirm = false;
            yangUnitCanvas.visible = false;
            yinUnitCanvas.visible = false;
            return;
        }// end function

        public function recipeDescription(param1:Object) : void
        {
            popupWindow(recipeDescriptionWindow);
            recipeDescriptionWindow.description = param1.recipeDescription;
            return;
        }// end function

        private function _RecipeUnionWindow_ClassFactory4_c() : ClassFactory
        {
            var _loc_1:* = new ClassFactory();
            _loc_1.generator = UnitDetailLabelRenderer;
            return _loc_1;
        }// end function

        public function get yangUnitCanvas() : Canvas
        {
            return this._891986333yangUnitCanvas;
        }// end function

        private function _RecipeUnionWindow_bindingsSetup() : Array
        {
            var binding:Binding;
            var result:Array;
            binding = new Binding(this, function () : String
            {
                var _loc_1:* = Utils.i18n("recipeUnionTitle");
                var _loc_2:* = _loc_1 == undefined ? (null) : (String(_loc_1));
                return _loc_2;
            }// end function
            , function (param1:String) : void
            {
                _RecipeUnionWindow_Text1.text = param1;
                return;
            }// end function
            , "_RecipeUnionWindow_Text1.text");
            result[0] = binding;
            binding = new Binding(this, function () : String
            {
                var _loc_1:* = description;
                var _loc_2:* = _loc_1 == undefined ? (null) : (String(_loc_1));
                return _loc_2;
            }// end function
            , function (param1:String) : void
            {
                descriptionText.text = param1;
                return;
            }// end function
            , "descriptionText.text");
            result[1] = binding;
            binding = new Binding(this, function () : Object
            {
                return _allRecipe;
            }// end function
            , function (param1:Object) : void
            {
                recipe_list.dataProvider = param1;
                return;
            }// end function
            , "recipe_list.dataProvider");
            result[2] = binding;
            binding = new Binding(this, function () : Boolean
            {
                return nonTutVisible;
            }// end function
            , function (param1:Boolean) : void
            {
                recipe_list.visible = param1;
                return;
            }// end function
            , "recipe_list.visible");
            result[3] = binding;
            binding = new Binding(this, function () : String
            {
                var _loc_1:* = Utils.i18n("generalSelect");
                var _loc_2:* = _loc_1 == undefined ? (null) : (String(_loc_1));
                return _loc_2;
            }// end function
            , function (param1:String) : void
            {
                _RecipeUnionWindow_DataGridColumn1.headerText = param1;
                return;
            }// end function
            , "_RecipeUnionWindow_DataGridColumn1.headerText");
            result[4] = binding;
            binding = new Binding(this, function () : IFactory
            {
                return detailRenderer0;
            }// end function
            , function (param1:IFactory) : void
            {
                _RecipeUnionWindow_DataGridColumn1.itemRenderer = param1;
                return;
            }// end function
            , "_RecipeUnionWindow_DataGridColumn1.itemRenderer");
            result[5] = binding;
            binding = new Binding(this, function () : String
            {
                var _loc_1:* = Utils.i18n("generalName");
                var _loc_2:* = _loc_1 == undefined ? (null) : (String(_loc_1));
                return _loc_2;
            }// end function
            , function (param1:String) : void
            {
                _RecipeUnionWindow_DataGridColumn2.headerText = param1;
                return;
            }// end function
            , "_RecipeUnionWindow_DataGridColumn2.headerText");
            result[6] = binding;
            binding = new Binding(this, function () : IFactory
            {
                return recipeNameRenderer;
            }// end function
            , function (param1:IFactory) : void
            {
                _RecipeUnionWindow_DataGridColumn2.itemRenderer = param1;
                return;
            }// end function
            , "_RecipeUnionWindow_DataGridColumn2.itemRenderer");
            result[7] = binding;
            binding = new Binding(this, function () : String
            {
                var _loc_1:* = Utils.i18n("generalDescription");
                var _loc_2:* = _loc_1 == undefined ? (null) : (String(_loc_1));
                return _loc_2;
            }// end function
            , function (param1:String) : void
            {
                _RecipeUnionWindow_DataGridColumn3.headerText = param1;
                return;
            }// end function
            , "_RecipeUnionWindow_DataGridColumn3.headerText");
            result[8] = binding;
            binding = new Binding(this, function () : Object
            {
                return _allRecipe;
            }// end function
            , function (param1:Object) : void
            {
                recipe_list_tutorial.dataProvider = param1;
                return;
            }// end function
            , "recipe_list_tutorial.dataProvider");
            result[9] = binding;
            binding = new Binding(this, function () : Boolean
            {
                return tutVisible;
            }// end function
            , function (param1:Boolean) : void
            {
                recipe_list_tutorial.visible = param1;
                return;
            }// end function
            , "recipe_list_tutorial.visible");
            result[10] = binding;
            binding = new Binding(this, function () : String
            {
                var _loc_1:* = Utils.i18n("generalSelect");
                var _loc_2:* = _loc_1 == undefined ? (null) : (String(_loc_1));
                return _loc_2;
            }// end function
            , function (param1:String) : void
            {
                _RecipeUnionWindow_DataGridColumn4.headerText = param1;
                return;
            }// end function
            , "_RecipeUnionWindow_DataGridColumn4.headerText");
            result[11] = binding;
            binding = new Binding(this, function () : IFactory
            {
                return detailRendererTutorial0;
            }// end function
            , function (param1:IFactory) : void
            {
                _RecipeUnionWindow_DataGridColumn4.itemRenderer = param1;
                return;
            }// end function
            , "_RecipeUnionWindow_DataGridColumn4.itemRenderer");
            result[12] = binding;
            binding = new Binding(this, function () : String
            {
                var _loc_1:* = Utils.i18n("generalName");
                var _loc_2:* = _loc_1 == undefined ? (null) : (String(_loc_1));
                return _loc_2;
            }// end function
            , function (param1:String) : void
            {
                _RecipeUnionWindow_DataGridColumn5.headerText = param1;
                return;
            }// end function
            , "_RecipeUnionWindow_DataGridColumn5.headerText");
            result[13] = binding;
            binding = new Binding(this, function () : IFactory
            {
                return recipeNameRenderer;
            }// end function
            , function (param1:IFactory) : void
            {
                _RecipeUnionWindow_DataGridColumn5.itemRenderer = param1;
                return;
            }// end function
            , "_RecipeUnionWindow_DataGridColumn5.itemRenderer");
            result[14] = binding;
            binding = new Binding(this, function () : String
            {
                var _loc_1:* = Utils.i18n("generalDescription");
                var _loc_2:* = _loc_1 == undefined ? (null) : (String(_loc_1));
                return _loc_2;
            }// end function
            , function (param1:String) : void
            {
                _RecipeUnionWindow_DataGridColumn6.headerText = param1;
                return;
            }// end function
            , "_RecipeUnionWindow_DataGridColumn6.headerText");
            result[15] = binding;
            binding = new Binding(this, function () : Object
            {
                return _swf_back;
            }// end function
            , function (param1:Object) : void
            {
                _RecipeUnionWindow_Image1.source = param1;
                return;
            }// end function
            , "_RecipeUnionWindow_Image1.source");
            result[16] = binding;
            binding = new Binding(this, function () : Object
            {
                return yangCandidateUnit;
            }// end function
            , function (param1:Object) : void
            {
                yangUnitList.dataProvider = param1;
                return;
            }// end function
            , "yangUnitList.dataProvider");
            result[17] = binding;
            binding = new Binding(this, function () : Boolean
            {
                return nonTutVisible;
            }// end function
            , function (param1:Boolean) : void
            {
                yangUnitList.visible = param1;
                return;
            }// end function
            , "yangUnitList.visible");
            result[18] = binding;
            binding = new Binding(this, function () : String
            {
                var _loc_1:* = Utils.i18n("generalSelect");
                var _loc_2:* = _loc_1 == undefined ? (null) : (String(_loc_1));
                return _loc_2;
            }// end function
            , function (param1:String) : void
            {
                _RecipeUnionWindow_DataGridColumn7.headerText = param1;
                return;
            }// end function
            , "_RecipeUnionWindow_DataGridColumn7.headerText");
            result[19] = binding;
            binding = new Binding(this, function () : IFactory
            {
                return detailRenderer1;
            }// end function
            , function (param1:IFactory) : void
            {
                _RecipeUnionWindow_DataGridColumn7.itemRenderer = param1;
                return;
            }// end function
            , "_RecipeUnionWindow_DataGridColumn7.itemRenderer");
            result[20] = binding;
            binding = new Binding(this, function () : String
            {
                var _loc_1:* = Utils.i18n("generalName");
                var _loc_2:* = _loc_1 == undefined ? (null) : (String(_loc_1));
                return _loc_2;
            }// end function
            , function (param1:String) : void
            {
                _RecipeUnionWindow_DataGridColumn8.headerText = param1;
                return;
            }// end function
            , "_RecipeUnionWindow_DataGridColumn8.headerText");
            result[21] = binding;
            binding = new Binding(this, function () : String
            {
                var _loc_1:* = Utils.i18n("generalJob");
                var _loc_2:* = _loc_1 == undefined ? (null) : (String(_loc_1));
                return _loc_2;
            }// end function
            , function (param1:String) : void
            {
                _RecipeUnionWindow_DataGridColumn9.headerText = param1;
                return;
            }// end function
            , "_RecipeUnionWindow_DataGridColumn9.headerText");
            result[22] = binding;
            binding = new Binding(this, function () : String
            {
                var _loc_1:* = Utils.i18n("generalStrength");
                var _loc_2:* = _loc_1 == undefined ? (null) : (String(_loc_1));
                return _loc_2;
            }// end function
            , function (param1:String) : void
            {
                _RecipeUnionWindow_DataGridColumn12.headerText = param1;
                return;
            }// end function
            , "_RecipeUnionWindow_DataGridColumn12.headerText");
            result[23] = binding;
            binding = new Binding(this, function () : String
            {
                var _loc_1:* = Utils.i18n("generalTech");
                var _loc_2:* = _loc_1 == undefined ? (null) : (String(_loc_1));
                return _loc_2;
            }// end function
            , function (param1:String) : void
            {
                _RecipeUnionWindow_DataGridColumn13.headerText = param1;
                return;
            }// end function
            , "_RecipeUnionWindow_DataGridColumn13.headerText");
            result[24] = binding;
            binding = new Binding(this, function () : String
            {
                var _loc_1:* = Utils.i18n("generalAgility");
                var _loc_2:* = _loc_1 == undefined ? (null) : (String(_loc_1));
                return _loc_2;
            }// end function
            , function (param1:String) : void
            {
                _RecipeUnionWindow_DataGridColumn14.headerText = param1;
                return;
            }// end function
            , "_RecipeUnionWindow_DataGridColumn14.headerText");
            result[25] = binding;
            binding = new Binding(this, function () : String
            {
                var _loc_1:* = Utils.i18n("generalDefense");
                var _loc_2:* = _loc_1 == undefined ? (null) : (String(_loc_1));
                return _loc_2;
            }// end function
            , function (param1:String) : void
            {
                _RecipeUnionWindow_DataGridColumn15.headerText = param1;
                return;
            }// end function
            , "_RecipeUnionWindow_DataGridColumn15.headerText");
            result[26] = binding;
            binding = new Binding(this, function () : String
            {
                var _loc_1:* = Utils.i18n("generalIntelligence");
                var _loc_2:* = _loc_1 == undefined ? (null) : (String(_loc_1));
                return _loc_2;
            }// end function
            , function (param1:String) : void
            {
                _RecipeUnionWindow_DataGridColumn16.headerText = param1;
                return;
            }// end function
            , "_RecipeUnionWindow_DataGridColumn16.headerText");
            result[27] = binding;
            binding = new Binding(this, function () : String
            {
                var _loc_1:* = Utils.i18n("generalLuck");
                var _loc_2:* = _loc_1 == undefined ? (null) : (String(_loc_1));
                return _loc_2;
            }// end function
            , function (param1:String) : void
            {
                _RecipeUnionWindow_DataGridColumn17.headerText = param1;
                return;
            }// end function
            , "_RecipeUnionWindow_DataGridColumn17.headerText");
            result[28] = binding;
            binding = new Binding(this, function () : Object
            {
                return yangCandidateUnit;
            }// end function
            , function (param1:Object) : void
            {
                yangUnitList_tutorial.dataProvider = param1;
                return;
            }// end function
            , "yangUnitList_tutorial.dataProvider");
            result[29] = binding;
            binding = new Binding(this, function () : Boolean
            {
                return tutVisible;
            }// end function
            , function (param1:Boolean) : void
            {
                yangUnitList_tutorial.visible = param1;
                return;
            }// end function
            , "yangUnitList_tutorial.visible");
            result[30] = binding;
            binding = new Binding(this, function () : String
            {
                var _loc_1:* = Utils.i18n("generalSelect");
                var _loc_2:* = _loc_1 == undefined ? (null) : (String(_loc_1));
                return _loc_2;
            }// end function
            , function (param1:String) : void
            {
                _RecipeUnionWindow_DataGridColumn18.headerText = param1;
                return;
            }// end function
            , "_RecipeUnionWindow_DataGridColumn18.headerText");
            result[31] = binding;
            binding = new Binding(this, function () : IFactory
            {
                return detailRendererTutorial1;
            }// end function
            , function (param1:IFactory) : void
            {
                _RecipeUnionWindow_DataGridColumn18.itemRenderer = param1;
                return;
            }// end function
            , "_RecipeUnionWindow_DataGridColumn18.itemRenderer");
            result[32] = binding;
            binding = new Binding(this, function () : String
            {
                var _loc_1:* = Utils.i18n("generalName");
                var _loc_2:* = _loc_1 == undefined ? (null) : (String(_loc_1));
                return _loc_2;
            }// end function
            , function (param1:String) : void
            {
                _RecipeUnionWindow_DataGridColumn19.headerText = param1;
                return;
            }// end function
            , "_RecipeUnionWindow_DataGridColumn19.headerText");
            result[33] = binding;
            binding = new Binding(this, function () : String
            {
                var _loc_1:* = Utils.i18n("generalJob");
                var _loc_2:* = _loc_1 == undefined ? (null) : (String(_loc_1));
                return _loc_2;
            }// end function
            , function (param1:String) : void
            {
                _RecipeUnionWindow_DataGridColumn20.headerText = param1;
                return;
            }// end function
            , "_RecipeUnionWindow_DataGridColumn20.headerText");
            result[34] = binding;
            binding = new Binding(this, function () : String
            {
                var _loc_1:* = Utils.i18n("generalStrength");
                var _loc_2:* = _loc_1 == undefined ? (null) : (String(_loc_1));
                return _loc_2;
            }// end function
            , function (param1:String) : void
            {
                _RecipeUnionWindow_DataGridColumn23.headerText = param1;
                return;
            }// end function
            , "_RecipeUnionWindow_DataGridColumn23.headerText");
            result[35] = binding;
            binding = new Binding(this, function () : String
            {
                var _loc_1:* = Utils.i18n("generalTech");
                var _loc_2:* = _loc_1 == undefined ? (null) : (String(_loc_1));
                return _loc_2;
            }// end function
            , function (param1:String) : void
            {
                _RecipeUnionWindow_DataGridColumn24.headerText = param1;
                return;
            }// end function
            , "_RecipeUnionWindow_DataGridColumn24.headerText");
            result[36] = binding;
            binding = new Binding(this, function () : String
            {
                var _loc_1:* = Utils.i18n("generalAgility");
                var _loc_2:* = _loc_1 == undefined ? (null) : (String(_loc_1));
                return _loc_2;
            }// end function
            , function (param1:String) : void
            {
                _RecipeUnionWindow_DataGridColumn25.headerText = param1;
                return;
            }// end function
            , "_RecipeUnionWindow_DataGridColumn25.headerText");
            result[37] = binding;
            binding = new Binding(this, function () : String
            {
                var _loc_1:* = Utils.i18n("generalDefense");
                var _loc_2:* = _loc_1 == undefined ? (null) : (String(_loc_1));
                return _loc_2;
            }// end function
            , function (param1:String) : void
            {
                _RecipeUnionWindow_DataGridColumn26.headerText = param1;
                return;
            }// end function
            , "_RecipeUnionWindow_DataGridColumn26.headerText");
            result[38] = binding;
            binding = new Binding(this, function () : String
            {
                var _loc_1:* = Utils.i18n("generalIntelligence");
                var _loc_2:* = _loc_1 == undefined ? (null) : (String(_loc_1));
                return _loc_2;
            }// end function
            , function (param1:String) : void
            {
                _RecipeUnionWindow_DataGridColumn27.headerText = param1;
                return;
            }// end function
            , "_RecipeUnionWindow_DataGridColumn27.headerText");
            result[39] = binding;
            binding = new Binding(this, function () : String
            {
                var _loc_1:* = Utils.i18n("generalLuck");
                var _loc_2:* = _loc_1 == undefined ? (null) : (String(_loc_1));
                return _loc_2;
            }// end function
            , function (param1:String) : void
            {
                _RecipeUnionWindow_DataGridColumn28.headerText = param1;
                return;
            }// end function
            , "_RecipeUnionWindow_DataGridColumn28.headerText");
            result[40] = binding;
            binding = new Binding(this, function () : Object
            {
                return _swf_cancel_yang;
            }// end function
            , function (param1:Object) : void
            {
                _RecipeUnionWindow_Image2.source = param1;
                return;
            }// end function
            , "_RecipeUnionWindow_Image2.source");
            result[41] = binding;
            binding = new Binding(this, function () : Object
            {
                return yinCandidateUnit;
            }// end function
            , function (param1:Object) : void
            {
                yinUnitList.dataProvider = param1;
                return;
            }// end function
            , "yinUnitList.dataProvider");
            result[42] = binding;
            binding = new Binding(this, function () : Boolean
            {
                return nonTutVisible;
            }// end function
            , function (param1:Boolean) : void
            {
                yinUnitList.visible = param1;
                return;
            }// end function
            , "yinUnitList.visible");
            result[43] = binding;
            binding = new Binding(this, function () : String
            {
                var _loc_1:* = Utils.i18n("generalSelect");
                var _loc_2:* = _loc_1 == undefined ? (null) : (String(_loc_1));
                return _loc_2;
            }// end function
            , function (param1:String) : void
            {
                _RecipeUnionWindow_DataGridColumn29.headerText = param1;
                return;
            }// end function
            , "_RecipeUnionWindow_DataGridColumn29.headerText");
            result[44] = binding;
            binding = new Binding(this, function () : IFactory
            {
                return detailRenderer2;
            }// end function
            , function (param1:IFactory) : void
            {
                _RecipeUnionWindow_DataGridColumn29.itemRenderer = param1;
                return;
            }// end function
            , "_RecipeUnionWindow_DataGridColumn29.itemRenderer");
            result[45] = binding;
            binding = new Binding(this, function () : String
            {
                var _loc_1:* = Utils.i18n("generalName");
                var _loc_2:* = _loc_1 == undefined ? (null) : (String(_loc_1));
                return _loc_2;
            }// end function
            , function (param1:String) : void
            {
                _RecipeUnionWindow_DataGridColumn30.headerText = param1;
                return;
            }// end function
            , "_RecipeUnionWindow_DataGridColumn30.headerText");
            result[46] = binding;
            binding = new Binding(this, function () : String
            {
                var _loc_1:* = Utils.i18n("generalJob");
                var _loc_2:* = _loc_1 == undefined ? (null) : (String(_loc_1));
                return _loc_2;
            }// end function
            , function (param1:String) : void
            {
                _RecipeUnionWindow_DataGridColumn31.headerText = param1;
                return;
            }// end function
            , "_RecipeUnionWindow_DataGridColumn31.headerText");
            result[47] = binding;
            binding = new Binding(this, function () : String
            {
                var _loc_1:* = Utils.i18n("generalStrength");
                var _loc_2:* = _loc_1 == undefined ? (null) : (String(_loc_1));
                return _loc_2;
            }// end function
            , function (param1:String) : void
            {
                _RecipeUnionWindow_DataGridColumn34.headerText = param1;
                return;
            }// end function
            , "_RecipeUnionWindow_DataGridColumn34.headerText");
            result[48] = binding;
            binding = new Binding(this, function () : String
            {
                var _loc_1:* = Utils.i18n("generalTech");
                var _loc_2:* = _loc_1 == undefined ? (null) : (String(_loc_1));
                return _loc_2;
            }// end function
            , function (param1:String) : void
            {
                _RecipeUnionWindow_DataGridColumn35.headerText = param1;
                return;
            }// end function
            , "_RecipeUnionWindow_DataGridColumn35.headerText");
            result[49] = binding;
            binding = new Binding(this, function () : String
            {
                var _loc_1:* = Utils.i18n("generalAgility");
                var _loc_2:* = _loc_1 == undefined ? (null) : (String(_loc_1));
                return _loc_2;
            }// end function
            , function (param1:String) : void
            {
                _RecipeUnionWindow_DataGridColumn36.headerText = param1;
                return;
            }// end function
            , "_RecipeUnionWindow_DataGridColumn36.headerText");
            result[50] = binding;
            binding = new Binding(this, function () : String
            {
                var _loc_1:* = Utils.i18n("generalDefense");
                var _loc_2:* = _loc_1 == undefined ? (null) : (String(_loc_1));
                return _loc_2;
            }// end function
            , function (param1:String) : void
            {
                _RecipeUnionWindow_DataGridColumn37.headerText = param1;
                return;
            }// end function
            , "_RecipeUnionWindow_DataGridColumn37.headerText");
            result[51] = binding;
            binding = new Binding(this, function () : String
            {
                var _loc_1:* = Utils.i18n("generalIntelligence");
                var _loc_2:* = _loc_1 == undefined ? (null) : (String(_loc_1));
                return _loc_2;
            }// end function
            , function (param1:String) : void
            {
                _RecipeUnionWindow_DataGridColumn38.headerText = param1;
                return;
            }// end function
            , "_RecipeUnionWindow_DataGridColumn38.headerText");
            result[52] = binding;
            binding = new Binding(this, function () : String
            {
                var _loc_1:* = Utils.i18n("generalLuck");
                var _loc_2:* = _loc_1 == undefined ? (null) : (String(_loc_1));
                return _loc_2;
            }// end function
            , function (param1:String) : void
            {
                _RecipeUnionWindow_DataGridColumn39.headerText = param1;
                return;
            }// end function
            , "_RecipeUnionWindow_DataGridColumn39.headerText");
            result[53] = binding;
            binding = new Binding(this, function () : Object
            {
                return yinCandidateUnit;
            }// end function
            , function (param1:Object) : void
            {
                yinUnitList_tutorial.dataProvider = param1;
                return;
            }// end function
            , "yinUnitList_tutorial.dataProvider");
            result[54] = binding;
            binding = new Binding(this, function () : Boolean
            {
                return tutVisible;
            }// end function
            , function (param1:Boolean) : void
            {
                yinUnitList_tutorial.visible = param1;
                return;
            }// end function
            , "yinUnitList_tutorial.visible");
            result[55] = binding;
            binding = new Binding(this, function () : String
            {
                var _loc_1:* = Utils.i18n("generalSelect");
                var _loc_2:* = _loc_1 == undefined ? (null) : (String(_loc_1));
                return _loc_2;
            }// end function
            , function (param1:String) : void
            {
                _RecipeUnionWindow_DataGridColumn40.headerText = param1;
                return;
            }// end function
            , "_RecipeUnionWindow_DataGridColumn40.headerText");
            result[56] = binding;
            binding = new Binding(this, function () : IFactory
            {
                return detailRendererTutorial2;
            }// end function
            , function (param1:IFactory) : void
            {
                _RecipeUnionWindow_DataGridColumn40.itemRenderer = param1;
                return;
            }// end function
            , "_RecipeUnionWindow_DataGridColumn40.itemRenderer");
            result[57] = binding;
            binding = new Binding(this, function () : String
            {
                var _loc_1:* = Utils.i18n("generalName");
                var _loc_2:* = _loc_1 == undefined ? (null) : (String(_loc_1));
                return _loc_2;
            }// end function
            , function (param1:String) : void
            {
                _RecipeUnionWindow_DataGridColumn41.headerText = param1;
                return;
            }// end function
            , "_RecipeUnionWindow_DataGridColumn41.headerText");
            result[58] = binding;
            binding = new Binding(this, function () : String
            {
                var _loc_1:* = Utils.i18n("generalJob");
                var _loc_2:* = _loc_1 == undefined ? (null) : (String(_loc_1));
                return _loc_2;
            }// end function
            , function (param1:String) : void
            {
                _RecipeUnionWindow_DataGridColumn42.headerText = param1;
                return;
            }// end function
            , "_RecipeUnionWindow_DataGridColumn42.headerText");
            result[59] = binding;
            binding = new Binding(this, function () : String
            {
                var _loc_1:* = Utils.i18n("generalStrength");
                var _loc_2:* = _loc_1 == undefined ? (null) : (String(_loc_1));
                return _loc_2;
            }// end function
            , function (param1:String) : void
            {
                _RecipeUnionWindow_DataGridColumn45.headerText = param1;
                return;
            }// end function
            , "_RecipeUnionWindow_DataGridColumn45.headerText");
            result[60] = binding;
            binding = new Binding(this, function () : String
            {
                var _loc_1:* = Utils.i18n("generalTech");
                var _loc_2:* = _loc_1 == undefined ? (null) : (String(_loc_1));
                return _loc_2;
            }// end function
            , function (param1:String) : void
            {
                _RecipeUnionWindow_DataGridColumn46.headerText = param1;
                return;
            }// end function
            , "_RecipeUnionWindow_DataGridColumn46.headerText");
            result[61] = binding;
            binding = new Binding(this, function () : String
            {
                var _loc_1:* = Utils.i18n("generalAgility");
                var _loc_2:* = _loc_1 == undefined ? (null) : (String(_loc_1));
                return _loc_2;
            }// end function
            , function (param1:String) : void
            {
                _RecipeUnionWindow_DataGridColumn47.headerText = param1;
                return;
            }// end function
            , "_RecipeUnionWindow_DataGridColumn47.headerText");
            result[62] = binding;
            binding = new Binding(this, function () : String
            {
                var _loc_1:* = Utils.i18n("generalDefense");
                var _loc_2:* = _loc_1 == undefined ? (null) : (String(_loc_1));
                return _loc_2;
            }// end function
            , function (param1:String) : void
            {
                _RecipeUnionWindow_DataGridColumn48.headerText = param1;
                return;
            }// end function
            , "_RecipeUnionWindow_DataGridColumn48.headerText");
            result[63] = binding;
            binding = new Binding(this, function () : String
            {
                var _loc_1:* = Utils.i18n("generalIntelligence");
                var _loc_2:* = _loc_1 == undefined ? (null) : (String(_loc_1));
                return _loc_2;
            }// end function
            , function (param1:String) : void
            {
                _RecipeUnionWindow_DataGridColumn49.headerText = param1;
                return;
            }// end function
            , "_RecipeUnionWindow_DataGridColumn49.headerText");
            result[64] = binding;
            binding = new Binding(this, function () : String
            {
                var _loc_1:* = Utils.i18n("generalLuck");
                var _loc_2:* = _loc_1 == undefined ? (null) : (String(_loc_1));
                return _loc_2;
            }// end function
            , function (param1:String) : void
            {
                _RecipeUnionWindow_DataGridColumn50.headerText = param1;
                return;
            }// end function
            , "_RecipeUnionWindow_DataGridColumn50.headerText");
            result[65] = binding;
            binding = new Binding(this, function () : Object
            {
                return _swf_cancel_yin;
            }// end function
            , function (param1:Object) : void
            {
                _RecipeUnionWindow_Image3.source = param1;
                return;
            }// end function
            , "_RecipeUnionWindow_Image3.source");
            result[66] = binding;
            binding = new Binding(this, function () : String
            {
                var _loc_1:* = Utils.i18n("recipeUnionConf", yangUnit.name, yinUnit.name);
                var _loc_2:* = _loc_1 == undefined ? (null) : (String(_loc_1));
                return _loc_2;
            }// end function
            , function (param1:String) : void
            {
                _RecipeUnionWindow_Text3.text = param1;
                return;
            }// end function
            , "_RecipeUnionWindow_Text3.text");
            result[67] = binding;
            binding = new Binding(this, function () : String
            {
                var _loc_1:* = Utils.i18n("generalName") + ":" + yangUnit.name;
                var _loc_2:* = _loc_1 == undefined ? (null) : (String(_loc_1));
                return _loc_2;
            }// end function
            , function (param1:String) : void
            {
                _RecipeUnionWindow_Label1.text = param1;
                return;
            }// end function
            , "_RecipeUnionWindow_Label1.text");
            result[68] = binding;
            binding = new Binding(this, function () : String
            {
                var _loc_1:* = Utils.i18n("generalJob") + ":" + yangUnit.jobMasterVO.nameLabel;
                var _loc_2:* = _loc_1 == undefined ? (null) : (String(_loc_1));
                return _loc_2;
            }// end function
            , function (param1:String) : void
            {
                _RecipeUnionWindow_Label2.text = param1;
                return;
            }// end function
            , "_RecipeUnionWindow_Label2.text");
            result[69] = binding;
            binding = new Binding(this, function () : String
            {
                var _loc_1:* = "Lv:" + yangUnit.level;
                var _loc_2:* = _loc_1 == undefined ? (null) : (String(_loc_1));
                return _loc_2;
            }// end function
            , function (param1:String) : void
            {
                _RecipeUnionWindow_Label3.text = param1;
                return;
            }// end function
            , "_RecipeUnionWindow_Label3.text");
            result[70] = binding;
            binding = new Binding(this, function () : String
            {
                var _loc_1:* = Utils.i18n("normalUnionNecessorySoulCrystalCount") + ":" + yangNecessarySoul;
                var _loc_2:* = _loc_1 == undefined ? (null) : (String(_loc_1));
                return _loc_2;
            }// end function
            , function (param1:String) : void
            {
                _RecipeUnionWindow_Label4.text = param1;
                return;
            }// end function
            , "_RecipeUnionWindow_Label4.text");
            result[71] = binding;
            binding = new Binding(this, function () : String
            {
                var _loc_1:* = Utils.i18n("generalName") + ":" + yinUnit.name;
                var _loc_2:* = _loc_1 == undefined ? (null) : (String(_loc_1));
                return _loc_2;
            }// end function
            , function (param1:String) : void
            {
                _RecipeUnionWindow_Label5.text = param1;
                return;
            }// end function
            , "_RecipeUnionWindow_Label5.text");
            result[72] = binding;
            binding = new Binding(this, function () : String
            {
                var _loc_1:* = Utils.i18n("generalJob") + ":" + yinUnit.jobMasterVO.nameLabel;
                var _loc_2:* = _loc_1 == undefined ? (null) : (String(_loc_1));
                return _loc_2;
            }// end function
            , function (param1:String) : void
            {
                _RecipeUnionWindow_Label6.text = param1;
                return;
            }// end function
            , "_RecipeUnionWindow_Label6.text");
            result[73] = binding;
            binding = new Binding(this, function () : String
            {
                var _loc_1:* = "Lv:" + yinUnit.level;
                var _loc_2:* = _loc_1 == undefined ? (null) : (String(_loc_1));
                return _loc_2;
            }// end function
            , function (param1:String) : void
            {
                _RecipeUnionWindow_Label7.text = param1;
                return;
            }// end function
            , "_RecipeUnionWindow_Label7.text");
            result[74] = binding;
            binding = new Binding(this, function () : String
            {
                var _loc_1:* = Utils.i18n("normalUnionNecessorySoulCrystalCount") + ":" + yinNecessarySoul;
                var _loc_2:* = _loc_1 == undefined ? (null) : (String(_loc_1));
                return _loc_2;
            }// end function
            , function (param1:String) : void
            {
                _RecipeUnionWindow_Label8.text = param1;
                return;
            }// end function
            , "_RecipeUnionWindow_Label8.text");
            result[75] = binding;
            binding = new Binding(this, function () : String
            {
                var _loc_1:* = yangNecessarySoul + yinNecessarySoul;
                var _loc_2:* = _loc_1 == undefined ? (null) : (String(_loc_1));
                return _loc_2;
            }// end function
            , function (param1:String) : void
            {
                totalSoulSize.text = param1;
                return;
            }// end function
            , "totalSoulSize.text");
            result[76] = binding;
            binding = new Binding(this, function () : uint
            {
                return getSoulColor(yangNecessarySoul, yinNecessarySoul);
            }// end function
            , function (param1:uint) : void
            {
                totalSoulSize.setStyle("color", param1);
                return;
            }// end function
            , "totalSoulSize.color");
            result[77] = binding;
            binding = new Binding(this, function () : String
            {
                var _loc_1:* = getItemText(spiritOfFire);
                var _loc_2:* = _loc_1 == undefined ? (null) : (String(_loc_1));
                return _loc_2;
            }// end function
            , function (param1:String) : void
            {
                totalFireSize.text = param1;
                return;
            }// end function
            , "totalFireSize.text");
            result[78] = binding;
            binding = new Binding(this, function () : uint
            {
                return getItemColor(spiritOfFire);
            }// end function
            , function (param1:uint) : void
            {
                totalFireSize.setStyle("color", param1);
                return;
            }// end function
            , "totalFireSize.color");
            result[79] = binding;
            binding = new Binding(this, function () : String
            {
                var _loc_1:* = getItemText(spiritOfEarth);
                var _loc_2:* = _loc_1 == undefined ? (null) : (String(_loc_1));
                return _loc_2;
            }// end function
            , function (param1:String) : void
            {
                totalEarthSize.text = param1;
                return;
            }// end function
            , "totalEarthSize.text");
            result[80] = binding;
            binding = new Binding(this, function () : uint
            {
                return getItemColor(spiritOfEarth);
            }// end function
            , function (param1:uint) : void
            {
                totalEarthSize.setStyle("color", param1);
                return;
            }// end function
            , "totalEarthSize.color");
            result[81] = binding;
            binding = new Binding(this, function () : String
            {
                var _loc_1:* = getItemText(spiritOfWater);
                var _loc_2:* = _loc_1 == undefined ? (null) : (String(_loc_1));
                return _loc_2;
            }// end function
            , function (param1:String) : void
            {
                totalWaterSize.text = param1;
                return;
            }// end function
            , "totalWaterSize.text");
            result[82] = binding;
            binding = new Binding(this, function () : uint
            {
                return getItemColor(spiritOfWater);
            }// end function
            , function (param1:uint) : void
            {
                totalWaterSize.setStyle("color", param1);
                return;
            }// end function
            , "totalWaterSize.color");
            result[83] = binding;
            return result;
        }// end function

        public function ___RecipeUnionWindow_Image3_click(event:MouseEvent) : void
        {
            subSelectIndex();
            return;
        }// end function

        public function set totalWaterSize(param1:Text) : void
        {
            var _loc_2:* = this._606037716totalWaterSize;
            if (_loc_2 !== param1)
            {
                this._606037716totalWaterSize = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "totalWaterSize", _loc_2, param1));
            }
            return;
        }// end function

        public function set expLabel(param1:ClassFactory) : void
        {
            var _loc_2:* = this._1958883625expLabel;
            if (_loc_2 !== param1)
            {
                this._1958883625expLabel = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "expLabel", _loc_2, param1));
            }
            return;
        }// end function

        private function set tutVisible(param1:Boolean) : void
        {
            var _loc_2:* = this._94427871tutVisible;
            if (_loc_2 !== param1)
            {
                this._94427871tutVisible = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "tutVisible", _loc_2, param1));
            }
            return;
        }// end function

        private function get selectImage() : Class
        {
            return this._194920895selectImage;
        }// end function

        public function get yinUnitList() : DataGrid
        {
            return this._973379008yinUnitList;
        }// end function

        private function addLeyLineEffect(param1:int) : int
        {
            return param1 - Math.ceil(param1 * 0.1);
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

        private function _RecipeUnionWindow_DataGridColumn18_i() : DataGridColumn
        {
            var _loc_1:* = new DataGridColumn();
            _RecipeUnionWindow_DataGridColumn18 = _loc_1;
            _loc_1.width = 78;
            _loc_1.setStyle("textAlign", "center");
            BindingManager.executeBindings(this, "_RecipeUnionWindow_DataGridColumn18", _RecipeUnionWindow_DataGridColumn18);
            return _loc_1;
        }// end function

        private function set yinCandidateUnit(param1:Array) : void
        {
            var _loc_2:* = this._2126098153yinCandidateUnit;
            if (_loc_2 !== param1)
            {
                this._2126098153yinCandidateUnit = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "yinCandidateUnit", _loc_2, param1));
            }
            return;
        }// end function

        private function set _swf_cancel_yang(param1:MovieClipLoaderAsset) : void
        {
            var _loc_2:* = this._1774141206_swf_cancel_yang;
            if (_loc_2 !== param1)
            {
                this._1774141206_swf_cancel_yang = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "_swf_cancel_yang", _loc_2, param1));
            }
            return;
        }// end function

        private function _RecipeUnionWindow_ClassFactory3_c() : ClassFactory
        {
            var _loc_1:* = new ClassFactory();
            _loc_1.generator = UnitDetailLabelRenderer;
            return _loc_1;
        }// end function

        public function setTutMarkVisible(param1:Boolean) : void
        {
            if (!param1)
            {
                tutVisible = true;
                nonTutVisible = false;
                _tutMarkRecipeUnionVisible = true;
            }
            else
            {
                _tutMarkRecipeUnionVisible = false;
                tutVisible = false;
                nonTutVisible = true;
            }
            return;
        }// end function

        public function addSelectIndex(param1:Object) : void
        {
            var data:* = param1;
            if (isLack(spiritOfFire) || isLack(spiritOfEarth) || isLack(spiritOfFire))
            {
                return;
            }
            if (viewStack.selectedIndex == 0)
            {
                selectRecipe = data;
                if (_homeAllUnits.filter(function (param1:UnitVO, param2:int, param3:Array) : Boolean
            {
                return param1.jobMasterVO.masterId == selectRecipe.yangUnit.job_id && param1.level >= selectRecipe.yangUnit.level;
            }// end function
            ).length <= 0 || _homeAllUnits.filter(function (param1:UnitVO, param2:int, param3:Array) : Boolean
            {
                return param1.jobMasterVO.masterId == selectRecipe.yinUnit.job_id && param1.level >= selectRecipe.yinUnit.level;
            }// end function
            ).length <= 0)
                {
                    return;
                }
                spiritOfFire = getItem("spirit_of_fire");
                spiritOfEarth = getItem("spirit_of_earth");
                spiritOfWater = getItem("spirit_of_water");
                description = Utils.i18n("normalUnionSelectYangUnit");
                selectUnitConfirm = false;
                yangCandidateUnit = _homeAllUnits.filter(function (param1:UnitVO, param2:int, param3:Array) : Boolean
            {
                return param1.jobMasterVO.masterId == selectRecipe.yangUnit.job_id && param1.level >= selectRecipe.yangUnit.level;
            }// end function
            );
                var _loc_3:* = viewStack;
                var _loc_4:* = viewStack.selectedIndex + 1;
                _loc_3.selectedIndex = _loc_4;
            }
            else if (viewStack.selectedIndex == 1)
            {
                yangUnit = new UnitVO();
                yangUnit = UnitVO(data);
                description = Utils.i18n("normalUnionSelectYinUnit");
                selectUnitConfirm = true;
                yangUnitCanvas.visible = true;
                yangNecessarySoul = necessaryUnionSoul(yangUnit);
                sendPopupEvent(ADD_UNIT_SWF, {unit:yangUnit, type:"yang"});
                yinCandidateUnit = _homeAllUnits.filter(function (param1:UnitVO, param2:int, param3:Array) : Boolean
            {
                return param1.jobMasterVO.masterId == selectRecipe.yinUnit.job_id && param1.level >= selectRecipe.yinUnit.level && param1 != yangUnit;
            }// end function
            );
                var _loc_3:* = viewStack;
                var _loc_4:* = viewStack.selectedIndex + 1;
                _loc_3.selectedIndex = _loc_4;
            }
            else if (viewStack.selectedIndex == 2)
            {
                yinUnit = new UnitVO();
                yinUnit = UnitVO(data);
                description = "";
                selectUnitConfirm = true;
                yinNecessarySoul = necessaryUnionSoul(yinUnit);
                yinUnitCanvas.visible = true;
                checkUnionWindow.yangUnit = yangUnit;
                checkUnionWindow.yinUnit = yinUnit;
                checkUnionWindow.init();
                sendPopupEvent(ADD_UNIT_SWF, {unit:yinUnit, type:"yin"});
                this.popupWindow(checkUnionWindow, false);
                if (yangNecessarySoul + yinNecessarySoul > _soulCrystal)
                {
                    checkUnionWindow.viewStack.selectedIndex = 1;
                }
            }
            return;
        }// end function

        public function set recipe_list_tutorial(param1:DataGrid) : void
        {
            var _loc_2:* = this._987638546recipe_list_tutorial;
            if (_loc_2 !== param1)
            {
                this._987638546recipe_list_tutorial = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "recipe_list_tutorial", _loc_2, param1));
            }
            return;
        }// end function

        private function _RecipeUnionWindow_DataGridColumn29_i() : DataGridColumn
        {
            var _loc_1:* = new DataGridColumn();
            _RecipeUnionWindow_DataGridColumn29 = _loc_1;
            _loc_1.width = 50;
            _loc_1.setStyle("textAlign", "center");
            BindingManager.executeBindings(this, "_RecipeUnionWindow_DataGridColumn29", _RecipeUnionWindow_DataGridColumn29);
            return _loc_1;
        }// end function

        private function get _swf_back() : MovieClipLoaderAsset
        {
            return this._100077085_swf_back;
        }// end function

        public function get yinUnitCanvas() : Canvas
        {
            return this._1150838278yinUnitCanvas;
        }// end function

        private function get selectUnitConfirm() : Boolean
        {
            return this._560437760selectUnitConfirm;
        }// end function

        public function set yinUnitList_tutorial(param1:DataGrid) : void
        {
            var _loc_2:* = this._783139075yinUnitList_tutorial;
            if (_loc_2 !== param1)
            {
                this._783139075yinUnitList_tutorial = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "yinUnitList_tutorial", _loc_2, param1));
            }
            return;
        }// end function

        private function get yinUnit() : UnitVO
        {
            return this._1170914814yinUnit;
        }// end function

        private function _RecipeUnionWindow_DataGridColumn17_i() : DataGridColumn
        {
            var _loc_1:* = new DataGridColumn();
            _RecipeUnionWindow_DataGridColumn17 = _loc_1;
            _loc_1.dataField = "luck";
            _loc_1.width = 30;
            _loc_1.setStyle("textAlign", "center");
            BindingManager.executeBindings(this, "_RecipeUnionWindow_DataGridColumn17", _RecipeUnionWindow_DataGridColumn17);
            return _loc_1;
        }// end function

        public function get yangUnitList_tutorial() : DataGrid
        {
            return this._1295455750yangUnitList_tutorial;
        }// end function

        private function _RecipeUnionWindow_DataGridColumn9_i() : DataGridColumn
        {
            var _loc_1:* = new DataGridColumn();
            _RecipeUnionWindow_DataGridColumn9 = _loc_1;
            _loc_1.dataField = "jobMasterVO.nameLabel";
            _loc_1.width = 80;
            _loc_1.setStyle("textAlign", "center");
            BindingManager.executeBindings(this, "_RecipeUnionWindow_DataGridColumn9", _RecipeUnionWindow_DataGridColumn9);
            return _loc_1;
        }// end function

        private function getSoulSize(param1:int) : int
        {
            if (leyLine)
            {
                return addLeyLineEffect(param1);
            }
            return param1;
        }// end function

        public function showRecipeTutMark(param1:Object) : Boolean
        {
            var _loc_2:* = recipe_list_tutorial.dataProvider.getItemIndex(param1);
            if (_loc_2 == 0 && _tutMarkRecipeUnionVisible)
            {
                return visible;
            }
            return false;
        }// end function

        private function _RecipeUnionWindow_ClassFactory2_c() : ClassFactory
        {
            var _loc_1:* = new ClassFactory();
            _loc_1.generator = UnitDetailLabelRenderer;
            return _loc_1;
        }// end function

        private function set _allRecipe(param1:Array) : void
        {
            var _loc_2:* = this._1963312880_allRecipe;
            if (_loc_2 !== param1)
            {
                this._1963312880_allRecipe = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "_allRecipe", _loc_2, param1));
            }
            return;
        }// end function

        private function _RecipeUnionWindow_DataGridColumn28_i() : DataGridColumn
        {
            var _loc_1:* = new DataGridColumn();
            _RecipeUnionWindow_DataGridColumn28 = _loc_1;
            _loc_1.dataField = "luck";
            _loc_1.width = 30;
            _loc_1.setStyle("textAlign", "center");
            BindingManager.executeBindings(this, "_RecipeUnionWindow_DataGridColumn28", _RecipeUnionWindow_DataGridColumn28);
            return _loc_1;
        }// end function

        private function _RecipeUnionWindow_bindingExprs() : void
        {
            var _loc_1:* = undefined;
            _loc_1 = Utils.i18n("recipeUnionTitle");
            _loc_1 = description;
            _loc_1 = _allRecipe;
            _loc_1 = nonTutVisible;
            _loc_1 = Utils.i18n("generalSelect");
            _loc_1 = detailRenderer0;
            _loc_1 = Utils.i18n("generalName");
            _loc_1 = recipeNameRenderer;
            _loc_1 = Utils.i18n("generalDescription");
            _loc_1 = _allRecipe;
            _loc_1 = tutVisible;
            _loc_1 = Utils.i18n("generalSelect");
            _loc_1 = detailRendererTutorial0;
            _loc_1 = Utils.i18n("generalName");
            _loc_1 = recipeNameRenderer;
            _loc_1 = Utils.i18n("generalDescription");
            _loc_1 = _swf_back;
            _loc_1 = yangCandidateUnit;
            _loc_1 = nonTutVisible;
            _loc_1 = Utils.i18n("generalSelect");
            _loc_1 = detailRenderer1;
            _loc_1 = Utils.i18n("generalName");
            _loc_1 = Utils.i18n("generalJob");
            _loc_1 = Utils.i18n("generalStrength");
            _loc_1 = Utils.i18n("generalTech");
            _loc_1 = Utils.i18n("generalAgility");
            _loc_1 = Utils.i18n("generalDefense");
            _loc_1 = Utils.i18n("generalIntelligence");
            _loc_1 = Utils.i18n("generalLuck");
            _loc_1 = yangCandidateUnit;
            _loc_1 = tutVisible;
            _loc_1 = Utils.i18n("generalSelect");
            _loc_1 = detailRendererTutorial1;
            _loc_1 = Utils.i18n("generalName");
            _loc_1 = Utils.i18n("generalJob");
            _loc_1 = Utils.i18n("generalStrength");
            _loc_1 = Utils.i18n("generalTech");
            _loc_1 = Utils.i18n("generalAgility");
            _loc_1 = Utils.i18n("generalDefense");
            _loc_1 = Utils.i18n("generalIntelligence");
            _loc_1 = Utils.i18n("generalLuck");
            _loc_1 = _swf_cancel_yang;
            _loc_1 = yinCandidateUnit;
            _loc_1 = nonTutVisible;
            _loc_1 = Utils.i18n("generalSelect");
            _loc_1 = detailRenderer2;
            _loc_1 = Utils.i18n("generalName");
            _loc_1 = Utils.i18n("generalJob");
            _loc_1 = Utils.i18n("generalStrength");
            _loc_1 = Utils.i18n("generalTech");
            _loc_1 = Utils.i18n("generalAgility");
            _loc_1 = Utils.i18n("generalDefense");
            _loc_1 = Utils.i18n("generalIntelligence");
            _loc_1 = Utils.i18n("generalLuck");
            _loc_1 = yinCandidateUnit;
            _loc_1 = tutVisible;
            _loc_1 = Utils.i18n("generalSelect");
            _loc_1 = detailRendererTutorial2;
            _loc_1 = Utils.i18n("generalName");
            _loc_1 = Utils.i18n("generalJob");
            _loc_1 = Utils.i18n("generalStrength");
            _loc_1 = Utils.i18n("generalTech");
            _loc_1 = Utils.i18n("generalAgility");
            _loc_1 = Utils.i18n("generalDefense");
            _loc_1 = Utils.i18n("generalIntelligence");
            _loc_1 = Utils.i18n("generalLuck");
            _loc_1 = _swf_cancel_yin;
            _loc_1 = Utils.i18n("recipeUnionConf", yangUnit.name, yinUnit.name);
            _loc_1 = Utils.i18n("generalName") + ":" + yangUnit.name;
            _loc_1 = Utils.i18n("generalJob") + ":" + yangUnit.jobMasterVO.nameLabel;
            _loc_1 = "Lv:" + yangUnit.level;
            _loc_1 = Utils.i18n("normalUnionNecessorySoulCrystalCount") + ":" + yangNecessarySoul;
            _loc_1 = Utils.i18n("generalName") + ":" + yinUnit.name;
            _loc_1 = Utils.i18n("generalJob") + ":" + yinUnit.jobMasterVO.nameLabel;
            _loc_1 = "Lv:" + yinUnit.level;
            _loc_1 = Utils.i18n("normalUnionNecessorySoulCrystalCount") + ":" + yinNecessarySoul;
            _loc_1 = yangNecessarySoul + yinNecessarySoul;
            _loc_1 = getSoulColor(yangNecessarySoul, yinNecessarySoul);
            _loc_1 = getItemText(spiritOfFire);
            _loc_1 = getItemColor(spiritOfFire);
            _loc_1 = getItemText(spiritOfEarth);
            _loc_1 = getItemColor(spiritOfEarth);
            _loc_1 = getItemText(spiritOfWater);
            _loc_1 = getItemColor(spiritOfWater);
            return;
        }// end function

        private function createComp() : void
        {
            checkUnionWindow.addEventListener(CheckUnionWindow.START_UNION, function (event:Event) : void
            {
                unionCeremony();
                return;
            }// end function
            );
            checkUnionWindow.addEventListener(CheckUnionWindow.START_INDEX, function (event:Event) : void
            {
                startIndex();
                return;
            }// end function
            );
            MovieClip(Loader(_swf_back.getChildAt(0)).content).gotoAndPlay("button_back");
            MovieClip(Loader(_swf_cancel_yang.getChildAt(0)).content).gotoAndPlay("button_back");
            MovieClip(Loader(_swf_cancel_yin.getChildAt(0)).content).gotoAndPlay("button_back");
            return;
        }// end function

        private function get _homeAllUnits() : Array
        {
            return this._582172204_homeAllUnits;
        }// end function

        public function get yangUnitList() : DataGrid
        {
            return this._1625609693yangUnitList;
        }// end function

        public function set recipeNameRenderer(param1:ClassFactory) : void
        {
            var _loc_2:* = this._2004539108recipeNameRenderer;
            if (_loc_2 !== param1)
            {
                this._2004539108recipeNameRenderer = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "recipeNameRenderer", _loc_2, param1));
            }
            return;
        }// end function

        public function showYangTutMark(param1:Object) : Boolean
        {
            var _loc_2:* = yangUnitList_tutorial.dataProvider.getItemIndex(param1);
            if (_loc_2 == 0 && _tutMarkRecipeUnionVisible)
            {
                return visible;
            }
            return false;
        }// end function

        private function _RecipeUnionWindow_DataGridColumn39_i() : DataGridColumn
        {
            var _loc_1:* = new DataGridColumn();
            _RecipeUnionWindow_DataGridColumn39 = _loc_1;
            _loc_1.dataField = "luck";
            _loc_1.width = 30;
            _loc_1.setStyle("textAlign", "center");
            BindingManager.executeBindings(this, "_RecipeUnionWindow_DataGridColumn39", _RecipeUnionWindow_DataGridColumn39);
            return _loc_1;
        }// end function

        public function get unitLayer() : Canvas
        {
            return this._490381779unitLayer;
        }// end function

        private function set yinNecessarySoul(param1:int) : void
        {
            var _loc_2:* = this._1243907876yinNecessarySoul;
            if (_loc_2 !== param1)
            {
                this._1243907876yinNecessarySoul = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "yinNecessarySoul", _loc_2, param1));
            }
            return;
        }// end function

        public function ___RecipeUnionWindow_Image2_click(event:MouseEvent) : void
        {
            subSelectIndex();
            return;
        }// end function

        private function _RecipeUnionWindow_DataGridColumn8_i() : DataGridColumn
        {
            var _loc_1:* = new DataGridColumn();
            _RecipeUnionWindow_DataGridColumn8 = _loc_1;
            _loc_1.dataField = "name";
            _loc_1.itemRenderer = _RecipeUnionWindow_ClassFactory1_c();
            _loc_1.width = 80;
            BindingManager.executeBindings(this, "_RecipeUnionWindow_DataGridColumn8", _RecipeUnionWindow_DataGridColumn8);
            return _loc_1;
        }// end function

        private function _RecipeUnionWindow_DataGridColumn16_i() : DataGridColumn
        {
            var _loc_1:* = new DataGridColumn();
            _RecipeUnionWindow_DataGridColumn16 = _loc_1;
            _loc_1.dataField = "intelligence";
            _loc_1.width = 30;
            _loc_1.setStyle("textAlign", "center");
            BindingManager.executeBindings(this, "_RecipeUnionWindow_DataGridColumn16", _RecipeUnionWindow_DataGridColumn16);
            return _loc_1;
        }// end function

        private function _RecipeUnionWindow_ClassFactory1_c() : ClassFactory
        {
            var _loc_1:* = new ClassFactory();
            _loc_1.generator = UnitDetailLabelRenderer;
            return _loc_1;
        }// end function

        private function get selectOffImage() : Class
        {
            return this._157742664selectOffImage;
        }// end function

        private function _RecipeUnionWindow_DataGridColumn27_i() : DataGridColumn
        {
            var _loc_1:* = new DataGridColumn();
            _RecipeUnionWindow_DataGridColumn27 = _loc_1;
            _loc_1.dataField = "intelligence";
            _loc_1.width = 30;
            _loc_1.setStyle("textAlign", "center");
            BindingManager.executeBindings(this, "_RecipeUnionWindow_DataGridColumn27", _RecipeUnionWindow_DataGridColumn27);
            return _loc_1;
        }// end function

        private function unionCeremony() : void
        {
            sendPopupEvent(REMOVE_UNIT_SWF, {unit:yangUnit});
            sendPopupEvent(REMOVE_UNIT_SWF, {unit:yinUnit});
            viewStack.selectedIndex = 0;
            selectUnitConfirm = false;
            yangNecessarySoul = 0;
            yinNecessarySoul = 0;
            var _loc_1:String = null;
            spiritOfWater = null;
            var _loc_1:* = _loc_1;
            spiritOfEarth = _loc_1;
            spiritOfFire = _loc_1;
            sendPopupEvent(RECIPE_UNION_RUN, {yangUnit:yangUnit, yinUnit:yinUnit, recipeId:selectRecipe.master.masterId});
            return;
        }// end function

        private function getSoulColor(param1:int, param2:int) : uint
        {
            if (param1 == 0)
            {
                return 0;
            }
            return param1 + param2 > _soulCrystal ? (15073298) : (0);
        }// end function

        public function get detailRenderer0() : ClassFactory
        {
            return this._969321084detailRenderer0;
        }// end function

        public function get detailRenderer1() : ClassFactory
        {
            return this._969321085detailRenderer1;
        }// end function

        public function get detailRenderer2() : ClassFactory
        {
            return this._969321086detailRenderer2;
        }// end function

        private function _RecipeUnionWindow_DataGridColumn15_i() : DataGridColumn
        {
            var _loc_1:* = new DataGridColumn();
            _RecipeUnionWindow_DataGridColumn15 = _loc_1;
            _loc_1.dataField = "defense";
            _loc_1.width = 30;
            _loc_1.setStyle("textAlign", "center");
            BindingManager.executeBindings(this, "_RecipeUnionWindow_DataGridColumn15", _RecipeUnionWindow_DataGridColumn15);
            return _loc_1;
        }// end function

        private function _RecipeUnionWindow_DataGridColumn38_i() : DataGridColumn
        {
            var _loc_1:* = new DataGridColumn();
            _RecipeUnionWindow_DataGridColumn38 = _loc_1;
            _loc_1.dataField = "intelligence";
            _loc_1.width = 30;
            _loc_1.setStyle("textAlign", "center");
            BindingManager.executeBindings(this, "_RecipeUnionWindow_DataGridColumn38", _RecipeUnionWindow_DataGridColumn38);
            return _loc_1;
        }// end function

        public function set resourceVO(param1:ResourceVO) : void
        {
            _resourceVO = param1;
            return;
        }// end function

        public function set descriptionText(param1:Text) : void
        {
            var _loc_2:* = this._985849673descriptionText;
            if (_loc_2 !== param1)
            {
                this._985849673descriptionText = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "descriptionText", _loc_2, param1));
            }
            return;
        }// end function

        private function _RecipeUnionWindow_DataGridColumn7_i() : DataGridColumn
        {
            var _loc_1:* = new DataGridColumn();
            _RecipeUnionWindow_DataGridColumn7 = _loc_1;
            _loc_1.width = 50;
            _loc_1.setStyle("textAlign", "center");
            BindingManager.executeBindings(this, "_RecipeUnionWindow_DataGridColumn7", _RecipeUnionWindow_DataGridColumn7);
            return _loc_1;
        }// end function

        public function getMaterial(param1:int) : MaterialVO
        {
            var _loc_2:MaterialVO = null;
            for each (_loc_2 in _resourceVO.materials)
            {
                
                if (_loc_2.masterVO.masterId == param1)
                {
                    break;
                }
            }
            return _loc_2;
        }// end function

        private function _RecipeUnionWindow_DataGridColumn26_i() : DataGridColumn
        {
            var _loc_1:* = new DataGridColumn();
            _RecipeUnionWindow_DataGridColumn26 = _loc_1;
            _loc_1.dataField = "defense";
            _loc_1.width = 30;
            _loc_1.setStyle("textAlign", "center");
            BindingManager.executeBindings(this, "_RecipeUnionWindow_DataGridColumn26", _RecipeUnionWindow_DataGridColumn26);
            return _loc_1;
        }// end function

        private function _RecipeUnionWindow_DataGridColumn49_i() : DataGridColumn
        {
            var _loc_1:* = new DataGridColumn();
            _RecipeUnionWindow_DataGridColumn49 = _loc_1;
            _loc_1.dataField = "intelligence";
            _loc_1.width = 30;
            _loc_1.setStyle("textAlign", "center");
            BindingManager.executeBindings(this, "_RecipeUnionWindow_DataGridColumn49", _RecipeUnionWindow_DataGridColumn49);
            return _loc_1;
        }// end function

        public function get totalFireSize() : Text
        {
            return this._537331013totalFireSize;
        }// end function

        public function get detailRendererTutorial1() : ClassFactory
        {
            return this._1717567167detailRendererTutorial1;
        }// end function

        private function _RecipeUnionWindow_DataGridColumn14_i() : DataGridColumn
        {
            var _loc_1:* = new DataGridColumn();
            _RecipeUnionWindow_DataGridColumn14 = _loc_1;
            _loc_1.dataField = "agility";
            _loc_1.width = 30;
            _loc_1.setStyle("textAlign", "center");
            BindingManager.executeBindings(this, "_RecipeUnionWindow_DataGridColumn14", _RecipeUnionWindow_DataGridColumn14);
            return _loc_1;
        }// end function

        public function get yang() : UnitVO
        {
            return yangUnit;
        }// end function

        public function get detailRendererTutorial0() : ClassFactory
        {
            return this._1717567166detailRendererTutorial0;
        }// end function

        public function get detailRendererTutorial2() : ClassFactory
        {
            return this._1717567168detailRendererTutorial2;
        }// end function

        private function _RecipeUnionWindow_DataGridColumn37_i() : DataGridColumn
        {
            var _loc_1:* = new DataGridColumn();
            _RecipeUnionWindow_DataGridColumn37 = _loc_1;
            _loc_1.dataField = "defense";
            _loc_1.width = 30;
            _loc_1.setStyle("textAlign", "center");
            BindingManager.executeBindings(this, "_RecipeUnionWindow_DataGridColumn37", _RecipeUnionWindow_DataGridColumn37);
            return _loc_1;
        }// end function

        private function _RecipeUnionWindow_DataGridColumn6_i() : DataGridColumn
        {
            var _loc_1:* = new DataGridColumn();
            _RecipeUnionWindow_DataGridColumn6 = _loc_1;
            _loc_1.dataField = "description";
            _loc_1.setStyle("fontSize", 11);
            BindingManager.executeBindings(this, "_RecipeUnionWindow_DataGridColumn6", _RecipeUnionWindow_DataGridColumn6);
            return _loc_1;
        }// end function

        private function necessaryUnionSoul(param1:UnitVO) : int
        {
            return getSoulSize(Math.ceil(param1.jobMasterVO.consumptionAnima * param1.level * 0.5));
        }// end function

        public function get totalWaterSize() : Text
        {
            return this._606037716totalWaterSize;
        }// end function

        private function subSelectIndex() : void
        {
            yangUnitCanvas.visible = false;
            yinUnitCanvas.visible = false;
            if (viewStack.selectedIndex == 2)
            {
                viewStack.selectedIndex = 1;
                sendPopupEvent(REMOVE_UNIT_SWF, {unit:yangUnit});
                yinUnit = new UnitVO();
                yangUnit = new UnitVO();
                yangNecessarySoul = 0;
                yinNecessarySoul = 0;
                description = Utils.i18n("normalUnionSelectYangUnit");
                selectUnitConfirm = false;
            }
            else if (viewStack.selectedIndex == 1)
            {
                viewStack.selectedIndex = 0;
                yinUnit = new UnitVO();
                yangUnit = new UnitVO();
                description = Utils.i18n("pecipeUnionPleaseSelectedRecipe");
                yangNecessarySoul = 0;
                yinNecessarySoul = 0;
                selectUnitConfirm = false;
                var _loc_1:String = null;
                spiritOfWater = null;
                var _loc_1:* = _loc_1;
                spiritOfEarth = _loc_1;
                spiritOfFire = _loc_1;
            }
            return;
        }// end function

        public function get expLabel() : ClassFactory
        {
            return this._1958883625expLabel;
        }// end function

        private function get tutVisible() : Boolean
        {
            return this._94427871tutVisible;
        }// end function

        private function _RecipeUnionWindow_DataGridColumn25_i() : DataGridColumn
        {
            var _loc_1:* = new DataGridColumn();
            _RecipeUnionWindow_DataGridColumn25 = _loc_1;
            _loc_1.dataField = "agility";
            _loc_1.width = 30;
            _loc_1.setStyle("textAlign", "center");
            BindingManager.executeBindings(this, "_RecipeUnionWindow_DataGridColumn25", _RecipeUnionWindow_DataGridColumn25);
            return _loc_1;
        }// end function

        private function _RecipeUnionWindow_DataGridColumn48_i() : DataGridColumn
        {
            var _loc_1:* = new DataGridColumn();
            _RecipeUnionWindow_DataGridColumn48 = _loc_1;
            _loc_1.dataField = "defense";
            _loc_1.width = 30;
            _loc_1.setStyle("textAlign", "center");
            BindingManager.executeBindings(this, "_RecipeUnionWindow_DataGridColumn48", _RecipeUnionWindow_DataGridColumn48);
            return _loc_1;
        }// end function

        public function get viewStack() : ViewStack
        {
            return this._1584105757viewStack;
        }// end function

        private function onClick(param1:UnitVO) : void
        {
            if (param1.unitId == 0)
            {
                return;
            }
            unitStatusPopUpWindow = new UnitStatusPopUpWindow();
            unitStatusPopUpWindow.unit = param1;
            this.popupWindow(unitStatusPopUpWindow, false);
            return;
        }// end function

        private function get yinCandidateUnit() : Array
        {
            return this._2126098153yinCandidateUnit;
        }// end function

        public function get yinUnitList_tutorial() : DataGrid
        {
            return this._783139075yinUnitList_tutorial;
        }// end function

        private function _RecipeUnionWindow_DataGridColumn13_i() : DataGridColumn
        {
            var _loc_1:* = new DataGridColumn();
            _RecipeUnionWindow_DataGridColumn13 = _loc_1;
            _loc_1.dataField = "tech";
            _loc_1.width = 30;
            _loc_1.setStyle("textAlign", "center");
            BindingManager.executeBindings(this, "_RecipeUnionWindow_DataGridColumn13", _RecipeUnionWindow_DataGridColumn13);
            return _loc_1;
        }// end function

        private function _RecipeUnionWindow_DataGridColumn36_i() : DataGridColumn
        {
            var _loc_1:* = new DataGridColumn();
            _RecipeUnionWindow_DataGridColumn36 = _loc_1;
            _loc_1.dataField = "agility";
            _loc_1.width = 30;
            _loc_1.setStyle("textAlign", "center");
            BindingManager.executeBindings(this, "_RecipeUnionWindow_DataGridColumn36", _RecipeUnionWindow_DataGridColumn36);
            return _loc_1;
        }// end function

        private function set spiritOfEarth(param1:Object) : void
        {
            var _loc_2:* = this._1145344898spiritOfEarth;
            if (_loc_2 !== param1)
            {
                this._1145344898spiritOfEarth = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "spiritOfEarth", _loc_2, param1));
            }
            return;
        }// end function

        private function _RecipeUnionWindow_DataGridColumn5_i() : DataGridColumn
        {
            var _loc_1:* = new DataGridColumn();
            _RecipeUnionWindow_DataGridColumn5 = _loc_1;
            _loc_1.width = 127;
            BindingManager.executeBindings(this, "_RecipeUnionWindow_DataGridColumn5", _RecipeUnionWindow_DataGridColumn5);
            return _loc_1;
        }// end function

        public function ___RecipeUnionWindow_Image1_click(event:MouseEvent) : void
        {
            closeRecipeUnion();
            return;
        }// end function

        public function ___RecipeUnionWindow_PopupWindow1_creationComplete(event:FlexEvent) : void
        {
            createComp();
            return;
        }// end function

        private function set nonTutVisible(param1:Boolean) : void
        {
            var _loc_2:* = this._1225459084nonTutVisible;
            if (_loc_2 !== param1)
            {
                this._1225459084nonTutVisible = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "nonTutVisible", _loc_2, param1));
            }
            return;
        }// end function

        private function _RecipeUnionWindow_DataGridColumn24_i() : DataGridColumn
        {
            var _loc_1:* = new DataGridColumn();
            _RecipeUnionWindow_DataGridColumn24 = _loc_1;
            _loc_1.dataField = "tech";
            _loc_1.width = 30;
            _loc_1.setStyle("textAlign", "center");
            BindingManager.executeBindings(this, "_RecipeUnionWindow_DataGridColumn24", _RecipeUnionWindow_DataGridColumn24);
            return _loc_1;
        }// end function

        private function _RecipeUnionWindow_DataGridColumn47_i() : DataGridColumn
        {
            var _loc_1:* = new DataGridColumn();
            _RecipeUnionWindow_DataGridColumn47 = _loc_1;
            _loc_1.dataField = "agility";
            _loc_1.width = 30;
            _loc_1.setStyle("textAlign", "center");
            BindingManager.executeBindings(this, "_RecipeUnionWindow_DataGridColumn47", _RecipeUnionWindow_DataGridColumn47);
            return _loc_1;
        }// end function

        private function get yinNecessarySoul() : int
        {
            return this._1243907876yinNecessarySoul;
        }// end function

        public function candidateExist(param1:Object) : Boolean
        {
            var recipe:* = param1;
            if (_homeAllUnits.filter(function (param1:UnitVO, param2:int, param3:Array) : Boolean
            {
                return param1.jobMasterVO.code == recipe.yangCode;
            }// end function
            ).length <= 0)
            {
                return false;
            }
            if (_homeAllUnits.filter(function (param1:UnitVO, param2:int, param3:Array) : Boolean
            {
                return param1.jobMasterVO.code == recipe.yinCode;
            }// end function
            ).length <= 0)
            {
                return false;
            }
            return true;
        }// end function

        public function set yangUnitCanvas(param1:Canvas) : void
        {
            var _loc_2:* = this._891986333yangUnitCanvas;
            if (_loc_2 !== param1)
            {
                this._891986333yangUnitCanvas = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "yangUnitCanvas", _loc_2, param1));
            }
            return;
        }// end function

        private function _RecipeUnionWindow_DataGridColumn35_i() : DataGridColumn
        {
            var _loc_1:* = new DataGridColumn();
            _RecipeUnionWindow_DataGridColumn35 = _loc_1;
            _loc_1.dataField = "tech";
            _loc_1.width = 30;
            _loc_1.setStyle("textAlign", "center");
            BindingManager.executeBindings(this, "_RecipeUnionWindow_DataGridColumn35", _RecipeUnionWindow_DataGridColumn35);
            return _loc_1;
        }// end function

        private function _RecipeUnionWindow_DataGridColumn12_i() : DataGridColumn
        {
            var _loc_1:* = new DataGridColumn();
            _RecipeUnionWindow_DataGridColumn12 = _loc_1;
            _loc_1.dataField = "strength";
            _loc_1.width = 30;
            _loc_1.setStyle("textAlign", "center");
            BindingManager.executeBindings(this, "_RecipeUnionWindow_DataGridColumn12", _RecipeUnionWindow_DataGridColumn12);
            return _loc_1;
        }// end function

        public function get descriptionText() : Text
        {
            return this._985849673descriptionText;
        }// end function

        private function _RecipeUnionWindow_DataGridColumn4_i() : DataGridColumn
        {
            var _loc_1:* = new DataGridColumn();
            _RecipeUnionWindow_DataGridColumn4 = _loc_1;
            _loc_1.width = 78;
            _loc_1.setStyle("textAlign", "center");
            BindingManager.executeBindings(this, "_RecipeUnionWindow_DataGridColumn4", _RecipeUnionWindow_DataGridColumn4);
            return _loc_1;
        }// end function

        public function ___RecipeUnionWindow_Label1_click(event:MouseEvent) : void
        {
            onClick(yangUnit);
            return;
        }// end function

        private function _RecipeUnionWindow_DataGridColumn23_i() : DataGridColumn
        {
            var _loc_1:* = new DataGridColumn();
            _RecipeUnionWindow_DataGridColumn23 = _loc_1;
            _loc_1.dataField = "strength";
            _loc_1.width = 30;
            _loc_1.setStyle("textAlign", "center");
            BindingManager.executeBindings(this, "_RecipeUnionWindow_DataGridColumn23", _RecipeUnionWindow_DataGridColumn23);
            return _loc_1;
        }// end function

        private function _RecipeUnionWindow_ClassFactory12_i() : ClassFactory
        {
            var _loc_1:* = new ClassFactory();
            recipeNameRenderer = _loc_1;
            _loc_1.generator = RecipeUnionWindow_inlineComponent8;
            _loc_1.properties = {outerDocument:this};
            return _loc_1;
        }// end function

        private function _RecipeUnionWindow_DataGridColumn46_i() : DataGridColumn
        {
            var _loc_1:* = new DataGridColumn();
            _RecipeUnionWindow_DataGridColumn46 = _loc_1;
            _loc_1.dataField = "tech";
            _loc_1.width = 30;
            _loc_1.setStyle("textAlign", "center");
            BindingManager.executeBindings(this, "_RecipeUnionWindow_DataGridColumn46", _RecipeUnionWindow_DataGridColumn46);
            return _loc_1;
        }// end function

        private function _RecipeUnionWindow_DataGridColumn11_c() : DataGridColumn
        {
            var _loc_1:* = new DataGridColumn();
            _loc_1.dataField = "hp";
            _loc_1.headerText = "HP";
            _loc_1.width = 40;
            _loc_1.setStyle("textAlign", "center");
            return _loc_1;
        }// end function

        private function _RecipeUnionWindow_DataGridColumn34_i() : DataGridColumn
        {
            var _loc_1:* = new DataGridColumn();
            _RecipeUnionWindow_DataGridColumn34 = _loc_1;
            _loc_1.dataField = "strength";
            _loc_1.width = 30;
            _loc_1.setStyle("textAlign", "center");
            BindingManager.executeBindings(this, "_RecipeUnionWindow_DataGridColumn34", _RecipeUnionWindow_DataGridColumn34);
            return _loc_1;
        }// end function

        public function set yinUnitList(param1:DataGrid) : void
        {
            var _loc_2:* = this._973379008yinUnitList;
            if (_loc_2 !== param1)
            {
                this._973379008yinUnitList = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "yinUnitList", _loc_2, param1));
            }
            return;
        }// end function

        private function get spiritOfEarth() : Object
        {
            return this._1145344898spiritOfEarth;
        }// end function

        private function set selectImage(param1:Class) : void
        {
            var _loc_2:* = this._194920895selectImage;
            if (_loc_2 !== param1)
            {
                this._194920895selectImage = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "selectImage", _loc_2, param1));
            }
            return;
        }// end function

        public function set soulCrystal(param1:int) : void
        {
            _soulCrystal = param1;
            return;
        }// end function

        public function getItem(param1:String) : Object
        {
            var _loc_2:Object = null;
            for each (_loc_2 in selectRecipe.master.items)
            {
                
                if (_loc_2.name == param1)
                {
                    return _loc_2;
                }
            }
            return null;
        }// end function

        private function _RecipeUnionWindow_DataGridColumn3_i() : DataGridColumn
        {
            var _loc_1:* = new DataGridColumn();
            _RecipeUnionWindow_DataGridColumn3 = _loc_1;
            _loc_1.dataField = "description";
            _loc_1.setStyle("fontSize", 11);
            BindingManager.executeBindings(this, "_RecipeUnionWindow_DataGridColumn3", _RecipeUnionWindow_DataGridColumn3);
            return _loc_1;
        }// end function

        override public function initialize() : void
        {
            var target:RecipeUnionWindow;
            var watcherSetupUtilClass:Object;
            .mx_internal::setDocumentDescriptor(_documentDescriptor_);
            var bindings:* = _RecipeUnionWindow_bindingsSetup();
            var watchers:Array;
            target;
            if (_watcherSetupUtil == null)
            {
                watcherSetupUtilClass = getDefinitionByName("_com_kbmj_viking_view_home_RecipeUnionWindowWatcherSetupUtil");
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

        private function _RecipeUnionWindow_ClassFactory11_i() : ClassFactory
        {
            var _loc_1:* = new ClassFactory();
            expLabel = _loc_1;
            _loc_1.generator = RecipeUnionWindow_inlineComponent7;
            _loc_1.properties = {outerDocument:this};
            return _loc_1;
        }// end function

        private function _RecipeUnionWindow_DataGridColumn45_i() : DataGridColumn
        {
            var _loc_1:* = new DataGridColumn();
            _RecipeUnionWindow_DataGridColumn45 = _loc_1;
            _loc_1.dataField = "strength";
            _loc_1.width = 30;
            _loc_1.setStyle("textAlign", "center");
            BindingManager.executeBindings(this, "_RecipeUnionWindow_DataGridColumn45", _RecipeUnionWindow_DataGridColumn45);
            return _loc_1;
        }// end function

        private function _RecipeUnionWindow_DataGridColumn22_c() : DataGridColumn
        {
            var _loc_1:* = new DataGridColumn();
            _loc_1.dataField = "hp";
            _loc_1.headerText = "HP";
            _loc_1.width = 30;
            _loc_1.setStyle("textAlign", "center");
            return _loc_1;
        }// end function

        private function _RecipeUnionWindow_DataGridColumn33_c() : DataGridColumn
        {
            var _loc_1:* = new DataGridColumn();
            _loc_1.dataField = "hp";
            _loc_1.headerText = "HP";
            _loc_1.width = 40;
            _loc_1.setStyle("textAlign", "center");
            return _loc_1;
        }// end function

        private function _RecipeUnionWindow_DataGridColumn10_c() : DataGridColumn
        {
            var _loc_1:* = new DataGridColumn();
            _loc_1.dataField = "level";
            _loc_1.headerText = "Lv";
            _loc_1.width = 50;
            _loc_1.setStyle("textAlign", "center");
            return _loc_1;
        }// end function

        private function set _swf_back(param1:MovieClipLoaderAsset) : void
        {
            var _loc_2:* = this._100077085_swf_back;
            if (_loc_2 !== param1)
            {
                this._100077085_swf_back = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "_swf_back", _loc_2, param1));
            }
            return;
        }// end function

        private function _RecipeUnionWindow_DataGridColumn2_i() : DataGridColumn
        {
            var _loc_1:* = new DataGridColumn();
            _RecipeUnionWindow_DataGridColumn2 = _loc_1;
            _loc_1.width = 130;
            BindingManager.executeBindings(this, "_RecipeUnionWindow_DataGridColumn2", _RecipeUnionWindow_DataGridColumn2);
            return _loc_1;
        }// end function

        private function set yangUnit(param1:UnitVO) : void
        {
            var _loc_2:* = this._432832539yangUnit;
            if (_loc_2 !== param1)
            {
                this._432832539yangUnit = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "yangUnit", _loc_2, param1));
            }
            return;
        }// end function

        private function _RecipeUnionWindow_DataGridColumn44_c() : DataGridColumn
        {
            var _loc_1:* = new DataGridColumn();
            _loc_1.dataField = "hp";
            _loc_1.headerText = "HP";
            _loc_1.width = 30;
            _loc_1.setStyle("textAlign", "center");
            return _loc_1;
        }// end function

        private function _RecipeUnionWindow_DataGridColumn21_c() : DataGridColumn
        {
            var _loc_1:* = new DataGridColumn();
            _loc_1.dataField = "level";
            _loc_1.headerText = "Lv";
            _loc_1.width = 37;
            _loc_1.setStyle("textAlign", "center");
            return _loc_1;
        }// end function

        private function get yangUnit() : UnitVO
        {
            return this._432832539yangUnit;
        }// end function

        private function _RecipeUnionWindow_ClassFactory10_i() : ClassFactory
        {
            var _loc_1:* = new ClassFactory();
            detailRendererTutorial2 = _loc_1;
            _loc_1.generator = RecipeUnionWindow_inlineComponent6;
            _loc_1.properties = {outerDocument:this};
            return _loc_1;
        }// end function

        public function set totalSoulSize(param1:Text) : void
        {
            var _loc_2:* = this._1766773752totalSoulSize;
            if (_loc_2 !== param1)
            {
                this._1766773752totalSoulSize = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "totalSoulSize", _loc_2, param1));
            }
            return;
        }// end function

        public function set yangUnitList_tutorial(param1:DataGrid) : void
        {
            var _loc_2:* = this._1295455750yangUnitList_tutorial;
            if (_loc_2 !== param1)
            {
                this._1295455750yangUnitList_tutorial = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "yangUnitList_tutorial", _loc_2, param1));
            }
            return;
        }// end function

        private function _RecipeUnionWindow_DataGridColumn32_c() : DataGridColumn
        {
            var _loc_1:* = new DataGridColumn();
            _loc_1.dataField = "level";
            _loc_1.headerText = "Lv";
            _loc_1.width = 50;
            _loc_1.setStyle("textAlign", "center");
            return _loc_1;
        }// end function

        private function set description(param1:String) : void
        {
            var _loc_2:* = this._1724546052description;
            if (_loc_2 !== param1)
            {
                this._1724546052description = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "description", _loc_2, param1));
            }
            return;
        }// end function

        public function set yinUnitCanvas(param1:Canvas) : void
        {
            var _loc_2:* = this._1150838278yinUnitCanvas;
            if (_loc_2 !== param1)
            {
                this._1150838278yinUnitCanvas = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "yinUnitCanvas", _loc_2, param1));
            }
            return;
        }// end function

        private function get description() : String
        {
            return this._1724546052description;
        }// end function

        private function get spiritOfFire() : Object
        {
            return this._240110594spiritOfFire;
        }// end function

        public function get totalSoulSize() : Text
        {
            return this._1766773752totalSoulSize;
        }// end function

        public static function set watcherSetupUtil(param1:IWatcherSetupUtil) : void
        {
            RecipeUnionWindow._watcherSetupUtil = param1;
            return;
        }// end function

    }
}
