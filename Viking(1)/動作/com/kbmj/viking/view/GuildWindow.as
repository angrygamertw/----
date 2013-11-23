package com.kbmj.viking.view
{
    import com.kbmj.viking.lib.*;
    import com.kbmj.viking.view.allMap.*;
    import com.kbmj.viking.view.city.*;
    import com.kbmj.viking.vo.*;
    import com.kbmj.viking.vo.allMap.*;
    import com.kbmj.viking.vo.city.*;
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
    import mx.utils.*;

    public class GuildWindow extends PopupWindow implements IBindingClient
    {
        private var _documentDescriptor_:UIComponentDescriptor;
        private var _214228994application_detail_renderer:ClassFactory;
        private var _1075873300_swf_window:MovieClipLoaderAsset;
        public var _GuildWindow_HBox1:HBox;
        public var _GuildWindow_HBox2:HBox;
        private var _155160093GuildData:ObjectProxy;
        private var _1882083300application_data_list:DataGrid;
        private var _644343563players_list:DataGrid;
        var _bindingsByDestination:Object;
        private var leyLineDescriptions:Array;
        public var _GuildWindow_Canvas2:Canvas;
        public var _GuildWindow_Canvas3:Canvas;
        public var _GuildWindow_Canvas4:Canvas;
        public var _GuildWindow_Canvas5:Canvas;
        public var _GuildWindow_Canvas1:Canvas;
        private var _1218643219_swf_close_window:MovieClipLoaderAsset;
        public var _GuildWindow_Text1:Text;
        public var _GuildWindow_Text2:Text;
        public var _GuildWindow_Text3:Text;
        public var _GuildWindow_Text4:Text;
        public var _GuildWindow_Text5:Text;
        public var _GuildWindow_Text6:Text;
        private var _1007627721icon_renderer:ClassFactory;
        private var _502202555guildDedicationPoint:int;
        private var _837588365pointRenderer:ClassFactory;
        private var _114581tab:Image;
        private var _99540935_swf_tab2:MovieClipLoaderAsset;
        private var _495327094rank_renderer:ClassFactory;
        private var _1848510178guildName:String;
        private var _1978383842_leyLines:ArrayCollection;
        private var _907161885isMyGuild:Boolean = false;
        private var _873010014guildMemberCount:int;
        private var _1060122216guildMemberMaxCount:int;
        private var _1441457469viewDataPlayers:ArrayCollection;
        private var guildApprovalWindow:GuildApprovalWindow;
        private var _1918977415ley_line_data_list:DataGrid;
        private var _526638274_guildArmyUnits:ArrayCollection;
        public var _GuildWindow_DataGridColumn4:DataGridColumn;
        public var _GuildWindow_DataGridColumn5:DataGridColumn;
        public var _GuildWindow_DataGridColumn6:DataGridColumn;
        public var _GuildWindow_DataGridColumn1:DataGridColumn;
        public var _GuildWindow_DataGridColumn2:DataGridColumn;
        private var _selectGuildMemberName:String;
        public var _GuildWindow_DataGridColumn8:DataGridColumn;
        public var _GuildWindow_DataGridColumn9:DataGridColumn;
        private var _222489911guildLevelMaxPropertiesCount:int;
        private var _149158146topPointrenderer:ClassFactory;
        public var _GuildWindow_DataGridColumn7:DataGridColumn;
        public var _GuildWindow_DataGridColumn3:DataGridColumn;
        public var _GuildWindow_Image1:Image;
        public var _GuildWindow_Image3:Image;
        public var _GuildWindow_Image4:Image;
        private var _comment:Object;
        private var _1177280081itemList:ViewStack;
        public var _GuildWindow_DataGridColumn10:DataGridColumn;
        public var _GuildWindow_DataGridColumn13:DataGridColumn;
        public var _GuildWindow_DataGridColumn14:DataGridColumn;
        public var _GuildWindow_DataGridColumn15:DataGridColumn;
        public var _GuildWindow_DataGridColumn16:DataGridColumn;
        public var _GuildWindow_DataGridColumn17:DataGridColumn;
        public var _GuildWindow_DataGridColumn18:DataGridColumn;
        public var _GuildWindow_DataGridColumn19:DataGridColumn;
        private var _1619918214guildTotalNotoriety:int;
        private var _62054385army_data_list:DataGrid;
        private var _1193840764_swf_close:MovieClipLoaderAsset;
        public var _GuildWindow_DataGridColumn20:DataGridColumn;
        public var _GuildWindow_DataGridColumn21:DataGridColumn;
        public var _GuildWindow_Box1:Box;
        public var _GuildWindow_DataGridColumn23:DataGridColumn;
        public var _GuildWindow_Box3:Box;
        public var _GuildWindow_Box4:Box;
        public var _GuildWindow_Box5:Box;
        public var _GuildWindow_DataGridColumn22:DataGridColumn;
        public var _GuildWindow_Box2:Box;
        public var _GuildWindow_DataGridColumn24:DataGridColumn;
        private var _1969791673_playerVO:PlayerVO;
        private var _104531212positionRenderer:ClassFactory;
        private var _1475547248leyLinesCount:int = 0;
        private var _selectedPlayer:PlayerVO;
        var _watchers:Array;
        private var _1791137499_applicationData:ArrayCollection;
        private var _1979158907guildAllTerritoriesCount:int;
        private var _407233492isMaster:Boolean = false;
        private var _1814149313_coloniesData:ArrayCollection;
        private var _224336476activeToolTipArray:Array;
        var _bindingsBeginWithWord:Object;
        var _bindings:Array;
        private var _1824729220rank_renderer2:ClassFactory;
        private var _386815278unitListWindow:UnitListWindow;
        public var anotherPlayerId:int;
        public static const SHOW_RAID_REPORT:String = "showRaidReport";
        public static const FEATURE_1:String = Utils.i18n("guildDonsitions1");
        private static const WINDOW_X:int = 20;
        private static const WINDOW_Y:int = 80;
        private static const BUTTON_X:int = 325;
        private static const BUTTON_Y:int = 486;
        public static const FEATURE_6:String = Utils.i18n("guildDonsitions6");
        public static const FEATURE_8:String = Utils.i18n("guildDonsitions8");
        public static const FEATURE_2:String = Utils.i18n("guildDonsitions2");
        public static const FEATURE_3:String = Utils.i18n("guildDonsitions3");
        public static const FEATURE_5:String = Utils.i18n("guildDonsitions5");
        public static const FEATURE_7:String = Utils.i18n("guildDonsitions7");
        public static const FEATURE_4:String = Utils.i18n("guildDonsitions4");
        public static const FEATURE_9:String = Utils.i18n("guildDonsitions9");
        private static var _watcherSetupUtil:IWatcherSetupUtil;
        public static const SHOW_PLAYERS_ARMY:String = "showPlayersArmy";
        public static const LOAD_APPLICATION_DETAIL:String = "loadApplicationDetail";
        private static const WINDOW_HT:int = 460;
        private static const WINDOW_WD:int = 720;

        public function GuildWindow()
        {
            _documentDescriptor_ = new UIComponentDescriptor({type:PopupWindow, propertiesFactory:function () : Object
            {
                return {width:800, height:600, childDescriptors:[new UIComponentDescriptor({type:Image, id:"_GuildWindow_Image1"}), new UIComponentDescriptor({type:Text, id:"_GuildWindow_Text1", propertiesFactory:function () : Object
                {
                    return {styleName:"DealTitle"};
                }// end function
                }), new UIComponentDescriptor({type:HBox, id:"_GuildWindow_HBox1", propertiesFactory:function () : Object
                {
                    return {childDescriptors:[new UIComponentDescriptor({type:Text, id:"_GuildWindow_Text2", propertiesFactory:function () : Object
                    {
                        return {styleName:"GildWindowInfo"};
                    }// end function
                    })]};
                }// end function
                }), new UIComponentDescriptor({type:HBox, id:"_GuildWindow_HBox2", propertiesFactory:function () : Object
                {
                    return {childDescriptors:[new UIComponentDescriptor({type:Text, id:"_GuildWindow_Text3", propertiesFactory:function () : Object
                    {
                        return {styleName:"GildWindowInfo"};
                    }// end function
                    }), new UIComponentDescriptor({type:Text, id:"_GuildWindow_Text4", propertiesFactory:function () : Object
                    {
                        return {styleName:"GildWindowInfo"};
                    }// end function
                    }), new UIComponentDescriptor({type:Text, id:"_GuildWindow_Text5", propertiesFactory:function () : Object
                    {
                        return {styleName:"GildWindowInfo"};
                    }// end function
                    })]};
                }// end function
                }), new UIComponentDescriptor({type:ViewStack, id:"itemList", propertiesFactory:function () : Object
                {
                    return {percentWidth:100, percentHeight:100, childDescriptors:[new UIComponentDescriptor({type:Canvas, id:"_GuildWindow_Canvas1", propertiesFactory:function () : Object
                    {
                        return {percentWidth:100, percentHeight:100, childDescriptors:[new UIComponentDescriptor({type:Box, id:"_GuildWindow_Box1", stylesFactory:function () : void
                        {
                            this.borderColor = 2829099;
                            this.borderStyle = "solid";
                            this.backgroundColor = 16777215;
                            return;
                        }// end function
                        , propertiesFactory:function () : Object
                        {
                            return {height:260, childDescriptors:[new UIComponentDescriptor({type:Text, id:"_GuildWindow_Text6", stylesFactory:function () : void
                            {
                                this.color = 0;
                                this.fontSize = 14;
                                this.leading = 0;
                                return;
                            }// end function
                            , propertiesFactory:function () : Object
                            {
                                return {height:160};
                            }// end function
                            })]};
                        }// end function
                        })]};
                    }// end function
                    }), new UIComponentDescriptor({type:Canvas, id:"_GuildWindow_Canvas2", propertiesFactory:function () : Object
                    {
                        return {percentWidth:100, percentHeight:100, childDescriptors:[new UIComponentDescriptor({type:Box, id:"_GuildWindow_Box2", propertiesFactory:function () : Object
                        {
                            return {height:280, childDescriptors:[new UIComponentDescriptor({type:DataGrid, id:"players_list", propertiesFactory:function () : Object
                            {
                                return {rowCount:11, rowHeight:23, styleName:"DataGridBase", selectable:false, sortableColumns:false, columns:[_GuildWindow_DataGridColumn1_i(), _GuildWindow_DataGridColumn2_i(), _GuildWindow_DataGridColumn3_i(), _GuildWindow_DataGridColumn4_i(), _GuildWindow_DataGridColumn5_i(), _GuildWindow_DataGridColumn6_i(), _GuildWindow_DataGridColumn7_i()]};
                            }// end function
                            })]};
                        }// end function
                        })]};
                    }// end function
                    }), new UIComponentDescriptor({type:Canvas, id:"_GuildWindow_Canvas3", propertiesFactory:function () : Object
                    {
                        return {percentWidth:100, percentHeight:100, childDescriptors:[new UIComponentDescriptor({type:Box, id:"_GuildWindow_Box3", propertiesFactory:function () : Object
                        {
                            return {height:260, childDescriptors:[new UIComponentDescriptor({type:DataGrid, id:"army_data_list", propertiesFactory:function () : Object
                            {
                                return {rowCount:10, rowHeight:23, styleName:"DataGridBase", selectable:false, sortableColumns:false, columns:[_GuildWindow_DataGridColumn8_i(), _GuildWindow_DataGridColumn9_i(), _GuildWindow_DataGridColumn10_i(), _GuildWindow_DataGridColumn11_c(), _GuildWindow_DataGridColumn12_c(), _GuildWindow_DataGridColumn13_i(), _GuildWindow_DataGridColumn14_i(), _GuildWindow_DataGridColumn15_i()]};
                            }// end function
                            })]};
                        }// end function
                        })]};
                    }// end function
                    }), new UIComponentDescriptor({type:Canvas, id:"_GuildWindow_Canvas4", propertiesFactory:function () : Object
                    {
                        return {percentWidth:100, percentHeight:100, childDescriptors:[new UIComponentDescriptor({type:Box, id:"_GuildWindow_Box4", propertiesFactory:function () : Object
                        {
                            return {height:280, childDescriptors:[new UIComponentDescriptor({type:DataGrid, id:"application_data_list", propertiesFactory:function () : Object
                            {
                                return {rowCount:9, rowHeight:23, styleName:"DataGridBase", selectable:false, sortableColumns:false, columns:[_GuildWindow_DataGridColumn16_i(), _GuildWindow_DataGridColumn17_i(), _GuildWindow_DataGridColumn18_i(), _GuildWindow_DataGridColumn19_i(), _GuildWindow_DataGridColumn20_i(), _GuildWindow_DataGridColumn21_i(), _GuildWindow_DataGridColumn22_i()]};
                            }// end function
                            })]};
                        }// end function
                        })]};
                    }// end function
                    }), new UIComponentDescriptor({type:Canvas, id:"_GuildWindow_Canvas5", propertiesFactory:function () : Object
                    {
                        return {percentWidth:100, percentHeight:100, childDescriptors:[new UIComponentDescriptor({type:Box, id:"_GuildWindow_Box5", propertiesFactory:function () : Object
                        {
                            return {height:280, childDescriptors:[new UIComponentDescriptor({type:DataGrid, id:"ley_line_data_list", propertiesFactory:function () : Object
                            {
                                return {rowCount:11, rowHeight:23, styleName:"DataGridBase", selectable:false, sortableColumns:false, horizontalScrollPolicy:"off", columns:[_GuildWindow_DataGridColumn23_i(), _GuildWindow_DataGridColumn24_i()]};
                            }// end function
                            })]};
                        }// end function
                        })]};
                    }// end function
                    })]};
                }// end function
                }), new UIComponentDescriptor({type:Image, id:"tab"}), new UIComponentDescriptor({type:Image, id:"_GuildWindow_Image3", events:{click:"___GuildWindow_Image3_click"}}), new UIComponentDescriptor({type:Button, propertiesFactory:function () : Object
                {
                    return {visible:false};
                }// end function
                }), new UIComponentDescriptor({type:Image, id:"_GuildWindow_Image4", events:{click:"___GuildWindow_Image4_click"}}), new UIComponentDescriptor({type:UnitListWindow, id:"unitListWindow", propertiesFactory:function () : Object
                {
                    return {visible:false, y:0, x:15};
                }// end function
                })]};
            }// end function
            });
            _1075873300_swf_window = new Viking.EmbedSwfWindowCommon();
            _1193840764_swf_close = new Viking.EmbedSwfButtonCommon();
            _1218643219_swf_close_window = new Viking.EmbedSwfButtonCloseWindow();
            _99540935_swf_tab2 = new Viking.EmbedSwfTabCommon();
            leyLineDescriptions = [Utils.i18n("guildLey1"), Utils.i18n("guildLey2"), Utils.i18n("guildLey3"), Utils.i18n("guildLey4"), Utils.i18n("guildLey5"), Utils.i18n("guildLey6"), Utils.i18n("guildLey7"), Utils.i18n("guildLey8"), Utils.i18n("guildLey9"), Utils.i18n("guildLey10"), Utils.i18n("guildLey11"), Utils.i18n("guildLey12"), Utils.i18n("guildLey13"), Utils.i18n("guildLey14"), Utils.i18n("guildLey15"), Utils.i18n("guildLey16"), Utils.i18n("guildLey17"), Utils.i18n("guildLey18"), Utils.i18n("guildLey19"), Utils.i18n("guildLey20"), Utils.i18n("guildLey21"), Utils.i18n("guildLey22")];
            guildApprovalWindow = new GuildApprovalWindow();
            _comment = {comment:""};
            _155160093GuildData = new ObjectProxy(_comment);
            _224336476activeToolTipArray = [Utils.i18n("guildMasterLastLogin") + ":" + Utils.i18n("guildMasterWithinOneWeek"), Utils.i18n("guildMasterLastLogin") + ":" + Utils.i18n("guildMasterMoreOneWeek"), Utils.i18n("guildMasterLastLogin") + ":" + Utils.i18n("guildMasterMoreTwoWeeks")];
            _bindings = [];
            _watchers = [];
            _bindingsByDestination = {};
            _bindingsBeginWithWord = {};
            mx_internal::_document = this;
            this.width = 800;
            this.height = 600;
            _GuildWindow_ClassFactory7_i();
            _GuildWindow_ClassFactory1_i();
            _GuildWindow_ClassFactory4_i();
            _GuildWindow_ClassFactory6_i();
            _GuildWindow_ClassFactory2_i();
            _GuildWindow_ClassFactory3_i();
            _GuildWindow_ClassFactory5_i();
            this.addEventListener("creationComplete", ___GuildWindow_PopupWindow1_creationComplete);
            return;
        }// end function

        public function get application_detail_renderer() : ClassFactory
        {
            return this._214228994application_detail_renderer;
        }// end function

        public function set topPointrenderer(param1:ClassFactory) : void
        {
            var _loc_2:* = this._149158146topPointrenderer;
            if (_loc_2 !== param1)
            {
                this._149158146topPointrenderer = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "topPointrenderer", _loc_2, param1));
            }
            return;
        }// end function

        public function setArmyUnitPlayer() : void
        {
            var _loc_2:int = 0;
            var _loc_1:int = 0;
            while (_loc_1 < _guildArmyUnits.length)
            {
                
                _loc_2 = 0;
                while (_loc_2 < viewDataPlayers.length)
                {
                    
                    if (viewDataPlayers[_loc_2].playerId as int == _guildArmyUnits[_loc_1].playerId as int)
                    {
                        _guildArmyUnits[_loc_1].playerName = viewDataPlayers[_loc_2].name;
                    }
                    _loc_2++;
                }
                _loc_1++;
            }
            return;
        }// end function

        private function _GuildWindow_DataGridColumn15_i() : DataGridColumn
        {
            var _loc_1:* = new DataGridColumn();
            _GuildWindow_DataGridColumn15 = _loc_1;
            _loc_1.dataField = "weaponName";
            _loc_1.width = 100;
            _loc_1.setStyle("textAlign", "center");
            BindingManager.executeBindings(this, "_GuildWindow_DataGridColumn15", _GuildWindow_DataGridColumn15);
            return _loc_1;
        }// end function

        public function closeWindow() : void
        {
            onClose();
            MovieClip(Loader(_swf_close.getChildAt(0)).content).gotoAndPlay(0);
            MovieClip(Loader(_swf_close.getChildAt(0)).content).gotoAndPlay("button_close");
            MovieClip(Loader(_swf_close_window.getChildAt(0)).content).gotoAndPlay(1);
            return;
        }// end function

        public function set application_detail_renderer(param1:ClassFactory) : void
        {
            var _loc_2:* = this._214228994application_detail_renderer;
            if (_loc_2 !== param1)
            {
                this._214228994application_detail_renderer = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "application_detail_renderer", _loc_2, param1));
            }
            return;
        }// end function

        public function set players_list(param1:DataGrid) : void
        {
            var _loc_2:* = this._644343563players_list;
            if (_loc_2 !== param1)
            {
                this._644343563players_list = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "players_list", _loc_2, param1));
            }
            return;
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

        private function get _swf_window() : MovieClipLoaderAsset
        {
            return this._1075873300_swf_window;
        }// end function

        private function _GuildWindow_bindingExprs() : void
        {
            var _loc_1:* = undefined;
            _loc_1 = _swf_window;
            _loc_1 = WINDOW_X;
            _loc_1 = WINDOW_Y;
            _loc_1 = WINDOW_WD;
            _loc_1 = Utils.i18n("generalGuildInfo");
            _loc_1 = WINDOW_X + 20;
            _loc_1 = WINDOW_Y + 35;
            _loc_1 = WINDOW_WD - 40;
            _loc_1 = Utils.i18n("createGuildName") + "：" + guildName;
            _loc_1 = WINDOW_X + 20;
            _loc_1 = WINDOW_Y + 35 + 20;
            _loc_1 = WINDOW_WD - 40;
            _loc_1 = Utils.i18n("searchGuildMemberCount") + "：" + guildMemberCount;
            _loc_1 = Utils.i18n("searchGuildTerritoryCount") + "：" + guildAllTerritoriesCount + "(" + guildLevelMaxPropertiesCount + ")";
            _loc_1 = Utils.i18n("localize66") + "：" + leyLinesCount;
            _loc_1 = Utils.i18n("generalGuildInfo");
            _loc_1 = WINDOW_X + 20;
            _loc_1 = WINDOW_Y + 35 + 78;
            _loc_1 = WINDOW_WD - 40;
            _loc_1 = "　" + GuildData.comment;
            _loc_1 = WINDOW_WD - 40 - 10;
            _loc_1 = Utils.i18n("generalMember");
            _loc_1 = WINDOW_X + 20;
            _loc_1 = WINDOW_Y + 35 + 78;
            _loc_1 = viewDataPlayers;
            _loc_1 = WINDOW_WD - 40;
            _loc_1 = Utils.i18n("generalName");
            _loc_1 = Utils.i18n("generalPosition");
            _loc_1 = positionRenderer;
            _loc_1 = Utils.i18n("generalRank");
            _loc_1 = rank_renderer;
            _loc_1 = Utils.i18n("generalPropertiesCount");
            _loc_1 = Utils.i18n("earthLeyPoint");
            _loc_1 = Utils.i18n("generalUnitsCount");
            _loc_1 = Utils.i18n("guildApprovalMaxLvNum");
            _loc_1 = Utils.i18n("generalDispatchList");
            _loc_1 = WINDOW_X + 20;
            _loc_1 = WINDOW_Y + 35 + 78;
            _loc_1 = _guildArmyUnits;
            _loc_1 = WINDOW_WD - 40;
            _loc_1 = Utils.i18n("generalName");
            _loc_1 = Utils.i18n("generalAffiliation");
            _loc_1 = Utils.i18n("generalJob");
            _loc_1 = Utils.i18n("changeEquipmentAttack");
            _loc_1 = Utils.i18n("generalDefence");
            _loc_1 = Utils.i18n("generalEquipWeapon");
            _loc_1 = Utils.i18n("admissionGuildRequest");
            _loc_1 = WINDOW_X + 20;
            _loc_1 = WINDOW_Y + 35 + 78;
            _loc_1 = _applicationData;
            _loc_1 = WINDOW_WD - 40;
            _loc_1 = Utils.i18n("generalTime");
            _loc_1 = Utils.i18n("generalApplicant");
            _loc_1 = application_detail_renderer;
            _loc_1 = Utils.i18n("generalRank");
            _loc_1 = rank_renderer2;
            _loc_1 = Utils.i18n("generalPropertiesCount");
            _loc_1 = Utils.i18n("generalUnitsCount");
            _loc_1 = Utils.i18n("guildApprovalMaxLvNum");
            _loc_1 = Utils.i18n("generalRarity");
            _loc_1 = Utils.i18n("localize68");
            _loc_1 = WINDOW_X + 20;
            _loc_1 = WINDOW_Y + 35 + 78;
            _loc_1 = _leyLines;
            _loc_1 = WINDOW_WD - 40;
            _loc_1 = Utils.i18n("localize69");
            _loc_1 = Utils.i18n("changeEquipmentEffect");
            _loc_1 = WINDOW_X + 20;
            _loc_1 = WINDOW_Y + 35 + 50;
            _loc_1 = _swf_tab2;
            _loc_1 = BUTTON_X;
            _loc_1 = BUTTON_Y;
            _loc_1 = _swf_close;
            _loc_1 = WINDOW_X + WINDOW_WD - 25;
            _loc_1 = WINDOW_Y;
            _loc_1 = _swf_close_window;
            return;
        }// end function

        private function _GuildWindow_DataGridColumn4_i() : DataGridColumn
        {
            var _loc_1:* = new DataGridColumn();
            _GuildWindow_DataGridColumn4 = _loc_1;
            _loc_1.dataField = "propertiesCount";
            _loc_1.width = 70;
            _loc_1.setStyle("textAlign", "center");
            BindingManager.executeBindings(this, "_GuildWindow_DataGridColumn4", _GuildWindow_DataGridColumn4);
            return _loc_1;
        }// end function

        private function get _leyLines() : ArrayCollection
        {
            return this._1978383842_leyLines;
        }// end function

        private function get GuildData() : ObjectProxy
        {
            return this._155160093GuildData;
        }// end function

        private function _GuildWindow_DataGridColumn14_i() : DataGridColumn
        {
            var _loc_1:* = new DataGridColumn();
            _GuildWindow_DataGridColumn14 = _loc_1;
            _loc_1.dataField = "realDefense";
            _loc_1.width = 50;
            _loc_1.setStyle("textAlign", "center");
            BindingManager.executeBindings(this, "_GuildWindow_DataGridColumn14", _GuildWindow_DataGridColumn14);
            return _loc_1;
        }// end function

        public function set applicationData(param1:Array) : void
        {
            _applicationData = new ArrayCollection(param1);
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

        private function onComplete() : void
        {
            guildApprovalWindow.addEventListener(GuildApprovalWindow.ALLOW_APPLICATION, handleEvent);
            guildApprovalWindow.addEventListener(GuildApprovalWindow.REJECT_APPLICATION, handleEvent);
            MovieClip(Loader(_swf_window.getChildAt(0)).content).gotoAndPlay("center_720x460");
            MovieClip(Loader(_swf_close.getChildAt(0)).content).gotoAndPlay("button_close");
            Loader(_swf_tab2.getChildAt(0)).content.addEventListener("TAB_GUILD_OTHER_MEMBER", function (event:Event) : void
            {
                itemList.selectedIndex = 1;
                return;
            }// end function
            );
            Loader(_swf_tab2.getChildAt(0)).content.addEventListener("TAB_GUILD_OTHER_LEY_LINE", function (event:Event) : void
            {
                itemList.selectedIndex = 4;
                return;
            }// end function
            );
            MovieClip(Loader(_swf_tab2.getChildAt(0)).content).gotoAndPlay("tab_guild_other_member");
            return;
        }// end function

        private function get _swf_tab2() : MovieClipLoaderAsset
        {
            return this._99540935_swf_tab2;
        }// end function

        private function set GuildData(param1:ObjectProxy) : void
        {
            var _loc_2:* = this._155160093GuildData;
            if (_loc_2 !== param1)
            {
                this._155160093GuildData = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "GuildData", _loc_2, param1));
            }
            return;
        }// end function

        private function _GuildWindow_ClassFactory7_i() : ClassFactory
        {
            var _loc_1:* = new ClassFactory();
            application_detail_renderer = _loc_1;
            _loc_1.generator = GuildWindow_inlineComponent7;
            _loc_1.properties = {outerDocument:this};
            return _loc_1;
        }// end function

        public function set guildArmyUnits(param1:Array) : void
        {
            _guildArmyUnits = new ArrayCollection(param1);
            return;
        }// end function

        public function set isMyGuild(param1:Boolean) : void
        {
            var _loc_2:* = this._907161885isMyGuild;
            if (_loc_2 !== param1)
            {
                this._907161885isMyGuild = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "isMyGuild", _loc_2, param1));
            }
            return;
        }// end function

        private function set guildName(param1:String) : void
        {
            var _loc_2:* = this._1848510178guildName;
            if (_loc_2 !== param1)
            {
                this._1848510178guildName = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "guildName", _loc_2, param1));
            }
            return;
        }// end function

        public function setGuildLeyLinesLabel(param1:GuildDetailVO) : void
        {
            leyLinesCount = 0;
            var _loc_2:Array = [];
            var _loc_3:int = 0;
            while (_loc_3 <= AllMapVO.TOPOGRAPHY_LEY_LINE_NUM)
            {
                
                if (param1.hasLeyLine(_loc_3))
                {
                    _loc_2.push({name:AllMapVO.TOPOGRAPHY_NAMES[_loc_3 + AllMapVO.TOPOGRAPHY_LEY_LINE], description:leyLineDescriptions[_loc_3]});
                    (leyLinesCount + 1);
                }
                _loc_3++;
            }
            leyLines = _loc_2;
            return;
        }// end function

        public function get isMaster() : Boolean
        {
            return this._407233492isMaster;
        }// end function

        public function get itemList() : ViewStack
        {
            return this._1177280081itemList;
        }// end function

        private function set _leyLines(param1:ArrayCollection) : void
        {
            var _loc_2:* = this._1978383842_leyLines;
            if (_loc_2 !== param1)
            {
                this._1978383842_leyLines = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "_leyLines", _loc_2, param1));
            }
            return;
        }// end function

        private function _GuildWindow_DataGridColumn3_i() : DataGridColumn
        {
            var _loc_1:* = new DataGridColumn();
            _GuildWindow_DataGridColumn3 = _loc_1;
            _loc_1.dataField = "playerRankId";
            _loc_1.width = 90;
            _loc_1.setStyle("textAlign", "center");
            BindingManager.executeBindings(this, "_GuildWindow_DataGridColumn3", _GuildWindow_DataGridColumn3);
            return _loc_1;
        }// end function

        private function get activeToolTipArray() : Array
        {
            return this._224336476activeToolTipArray;
        }// end function

        private function set _swf_tab2(param1:MovieClipLoaderAsset) : void
        {
            var _loc_2:* = this._99540935_swf_tab2;
            if (_loc_2 !== param1)
            {
                this._99540935_swf_tab2 = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "_swf_tab2", _loc_2, param1));
            }
            return;
        }// end function

        private function _GuildWindow_ClassFactory6_i() : ClassFactory
        {
            var _loc_1:* = new ClassFactory();
            positionRenderer = _loc_1;
            _loc_1.generator = GuildWindow_inlineComponent6;
            _loc_1.properties = {outerDocument:this};
            return _loc_1;
        }// end function

        private function _GuildWindow_DataGridColumn13_i() : DataGridColumn
        {
            var _loc_1:* = new DataGridColumn();
            _GuildWindow_DataGridColumn13 = _loc_1;
            _loc_1.dataField = "realStrength";
            _loc_1.width = 50;
            _loc_1.setStyle("textAlign", "center");
            BindingManager.executeBindings(this, "_GuildWindow_DataGridColumn13", _GuildWindow_DataGridColumn13);
            return _loc_1;
        }// end function

        public function showApprovalWindow(param1:GuildApplicationVO, param2:PlayerVO) : void
        {
            popupWindow(guildApprovalWindow);
            guildApprovalWindow.init(param1, param2, param1.comment);
            return;
        }// end function

        public function get pointRenderer() : ClassFactory
        {
            return this._837588365pointRenderer;
        }// end function

        private function get _swf_close() : MovieClipLoaderAsset
        {
            return this._1193840764_swf_close;
        }// end function

        private function get guildAllTerritoriesCount() : int
        {
            return this._1979158907guildAllTerritoriesCount;
        }// end function

        private function set _guildArmyUnits(param1:ArrayCollection) : void
        {
            var _loc_2:* = this._526638274_guildArmyUnits;
            if (_loc_2 !== param1)
            {
                this._526638274_guildArmyUnits = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "_guildArmyUnits", _loc_2, param1));
            }
            return;
        }// end function

        private function _GuildWindow_DataGridColumn24_i() : DataGridColumn
        {
            var _loc_1:* = new DataGridColumn();
            _GuildWindow_DataGridColumn24 = _loc_1;
            _loc_1.dataField = "description";
            BindingManager.executeBindings(this, "_GuildWindow_DataGridColumn24", _GuildWindow_DataGridColumn24);
            return _loc_1;
        }// end function

        private function _GuildWindow_DataGridColumn2_i() : DataGridColumn
        {
            var _loc_1:* = new DataGridColumn();
            _GuildWindow_DataGridColumn2 = _loc_1;
            _loc_1.dataField = "";
            _loc_1.width = 90;
            BindingManager.executeBindings(this, "_GuildWindow_DataGridColumn2", _GuildWindow_DataGridColumn2);
            return _loc_1;
        }// end function

        public function set isMaster(param1:Boolean) : void
        {
            var _loc_2:* = this._407233492isMaster;
            if (_loc_2 !== param1)
            {
                this._407233492isMaster = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "isMaster", _loc_2, param1));
            }
            return;
        }// end function

        public function set itemList(param1:ViewStack) : void
        {
            var _loc_2:* = this._1177280081itemList;
            if (_loc_2 !== param1)
            {
                this._1177280081itemList = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "itemList", _loc_2, param1));
            }
            return;
        }// end function

        private function _GuildWindow_DataGridColumn12_c() : DataGridColumn
        {
            var _loc_1:* = new DataGridColumn();
            _loc_1.dataField = "maxHp";
            _loc_1.headerText = "HP";
            _loc_1.width = 40;
            _loc_1.setStyle("textAlign", "center");
            return _loc_1;
        }// end function

        private function get guildMemberCount() : int
        {
            return this._873010014guildMemberCount;
        }// end function

        private function _GuildWindow_ClassFactory5_i() : ClassFactory
        {
            var _loc_1:* = new ClassFactory();
            topPointrenderer = _loc_1;
            _loc_1.generator = GuildWindow_inlineComponent5;
            _loc_1.properties = {outerDocument:this};
            return _loc_1;
        }// end function

        public function activeString(param1:Object) : String
        {
            return isMyGuild ? (activeToolTipArray[param1.activeStatus]) : (null);
        }// end function

        public function set selectedPlayer(param1:PlayerVO) : void
        {
            _selectedPlayer = param1;
            return;
        }// end function

        private function get _playerVO() : PlayerVO
        {
            return this._1969791673_playerVO;
        }// end function

        public function ___GuildWindow_Image4_click(event:MouseEvent) : void
        {
            closeWindow();
            return;
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

        private function get _coloniesData() : ArrayCollection
        {
            return this._1814149313_coloniesData;
        }// end function

        private function _GuildWindow_DataGridColumn23_i() : DataGridColumn
        {
            var _loc_1:* = new DataGridColumn();
            _GuildWindow_DataGridColumn23 = _loc_1;
            _loc_1.dataField = "name";
            _loc_1.width = 100;
            _loc_1.setStyle("textAlign", "center");
            BindingManager.executeBindings(this, "_GuildWindow_DataGridColumn23", _GuildWindow_DataGridColumn23);
            return _loc_1;
        }// end function

        private function get guildLevelMaxPropertiesCount() : int
        {
            return this._222489911guildLevelMaxPropertiesCount;
        }// end function

        private function set guildDedicationPoint(param1:int) : void
        {
            var _loc_2:* = this._502202555guildDedicationPoint;
            if (_loc_2 !== param1)
            {
                this._502202555guildDedicationPoint = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "guildDedicationPoint", _loc_2, param1));
            }
            return;
        }// end function

        private function _GuildWindow_DataGridColumn9_i() : DataGridColumn
        {
            var _loc_1:* = new DataGridColumn();
            _GuildWindow_DataGridColumn9 = _loc_1;
            _loc_1.dataField = "playerName";
            _loc_1.width = 130;
            _loc_1.setStyle("textAlign", "center");
            BindingManager.executeBindings(this, "_GuildWindow_DataGridColumn9", _GuildWindow_DataGridColumn9);
            return _loc_1;
        }// end function

        private function _GuildWindow_DataGridColumn11_c() : DataGridColumn
        {
            var _loc_1:* = new DataGridColumn();
            _loc_1.dataField = "level";
            _loc_1.headerText = "Lv";
            _loc_1.width = 40;
            _loc_1.setStyle("textAlign", "center");
            return _loc_1;
        }// end function

        public function ___GuildWindow_PopupWindow1_creationComplete(event:FlexEvent) : void
        {
            onComplete();
            return;
        }// end function

        private function _GuildWindow_DataGridColumn1_i() : DataGridColumn
        {
            var _loc_1:* = new DataGridColumn();
            _GuildWindow_DataGridColumn1 = _loc_1;
            _loc_1.dataField = "playerName";
            _loc_1.setStyle("textAlign", "left");
            BindingManager.executeBindings(this, "_GuildWindow_DataGridColumn1", _GuildWindow_DataGridColumn1);
            return _loc_1;
        }// end function

        public function get unitListWindow() : UnitListWindow
        {
            return this._386815278unitListWindow;
        }// end function

        public function set pointRenderer(param1:ClassFactory) : void
        {
            var _loc_2:* = this._837588365pointRenderer;
            if (_loc_2 !== param1)
            {
                this._837588365pointRenderer = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "pointRenderer", _loc_2, param1));
            }
            return;
        }// end function

        public function getRankText(param1:int) : String
        {
            return PlayerVO.ONMYOU_RANK_LABELS[param1];
        }// end function

        private function _GuildWindow_ClassFactory4_i() : ClassFactory
        {
            var _loc_1:* = new ClassFactory();
            pointRenderer = _loc_1;
            _loc_1.generator = GuildWindow_inlineComponent4;
            _loc_1.properties = {outerDocument:this};
            return _loc_1;
        }// end function

        public function disappearTab(param1:Array) : void
        {
            tab.source = _swf_tab2;
            MovieClip(Loader(_swf_tab2.getChildAt(0)).content).gotoAndPlay("tab_guild_other_member");
            itemList.selectedIndex = 1;
            return;
        }// end function

        private function _GuildWindow_DataGridColumn19_i() : DataGridColumn
        {
            var _loc_1:* = new DataGridColumn();
            _GuildWindow_DataGridColumn19 = _loc_1;
            _loc_1.dataField = "playerVO.propertiesCount";
            _loc_1.width = 60;
            _loc_1.setStyle("textAlign", "center");
            BindingManager.executeBindings(this, "_GuildWindow_DataGridColumn19", _GuildWindow_DataGridColumn19);
            return _loc_1;
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

        private function get viewDataPlayers() : ArrayCollection
        {
            return this._1441457469viewDataPlayers;
        }// end function

        private function get _applicationData() : ArrayCollection
        {
            return this._1791137499_applicationData;
        }// end function

        private function _GuildWindow_DataGridColumn22_i() : DataGridColumn
        {
            var _loc_1:* = new DataGridColumn();
            _GuildWindow_DataGridColumn22 = _loc_1;
            _loc_1.dataField = "playerVO.rarity";
            _loc_1.width = 50;
            _loc_1.setStyle("textAlign", "center");
            BindingManager.executeBindings(this, "_GuildWindow_DataGridColumn22", _GuildWindow_DataGridColumn22);
            return _loc_1;
        }// end function

        public function get positionRenderer() : ClassFactory
        {
            return this._104531212positionRenderer;
        }// end function

        public function get topPointrenderer() : ClassFactory
        {
            return this._149158146topPointrenderer;
        }// end function

        public function set ley_line_data_list(param1:DataGrid) : void
        {
            var _loc_2:* = this._1918977415ley_line_data_list;
            if (_loc_2 !== param1)
            {
                this._1918977415ley_line_data_list = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "ley_line_data_list", _loc_2, param1));
            }
            return;
        }// end function

        public function init(param1:GuildDetailVO, param2:PlayerVO) : void
        {
            _playerVO = param2;
            guildName = param1.guildName;
            setGuildLeyLinesLabel(param1);
            guildAllTerritoriesCount = param1.allTerritoriesCount;
            guildLevelMaxPropertiesCount = param1.levelMaxPropertiesCount;
            guildMemberCount = param1.membershipCount;
            guildTotalNotoriety = param1.totalNotoriety;
            guildDedicationPoint = param1.dedicationPoint;
            GuildData.comment = param1.comment;
            viewDataPlayers = new ArrayCollection(param1.players);
            isMyGuild = param2.guild && param2.guild.id == param1.guildId;
            isMaster = isMyGuild && param2.guildMaster;
            return;
        }// end function

        public function getPositionStr(param1:Object) : String
        {
            return AllMapMediator.hexXtoGameX(param1.homeAllMapPos.x).toString() + ", " + AllMapMediator.hexYtoGameY(param1.homeAllMapPos.y).toString();
        }// end function

        private function set guildAllTerritoriesCount(param1:int) : void
        {
            var _loc_2:* = this._1979158907guildAllTerritoriesCount;
            if (_loc_2 !== param1)
            {
                this._1979158907guildAllTerritoriesCount = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "guildAllTerritoriesCount", _loc_2, param1));
            }
            return;
        }// end function

        public function get players_list() : DataGrid
        {
            return this._644343563players_list;
        }// end function

        private function set guildTotalNotoriety(param1:int) : void
        {
            var _loc_2:* = this._1619918214guildTotalNotoriety;
            if (_loc_2 !== param1)
            {
                this._1619918214guildTotalNotoriety = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "guildTotalNotoriety", _loc_2, param1));
            }
            return;
        }// end function

        public function get isMyGuild() : Boolean
        {
            return this._907161885isMyGuild;
        }// end function

        private function get guildName() : String
        {
            return this._1848510178guildName;
        }// end function

        private function _GuildWindow_DataGridColumn8_i() : DataGridColumn
        {
            var _loc_1:* = new DataGridColumn();
            _GuildWindow_DataGridColumn8 = _loc_1;
            _loc_1.dataField = "name";
            _loc_1.itemRenderer = _GuildWindow_ClassFactory8_c();
            BindingManager.executeBindings(this, "_GuildWindow_DataGridColumn8", _GuildWindow_DataGridColumn8);
            return _loc_1;
        }// end function

        private function get _swf_close_window() : MovieClipLoaderAsset
        {
            return this._1218643219_swf_close_window;
        }// end function

        public function set rank_renderer2(param1:ClassFactory) : void
        {
            var _loc_2:* = this._1824729220rank_renderer2;
            if (_loc_2 !== param1)
            {
                this._1824729220rank_renderer2 = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "rank_renderer2", _loc_2, param1));
            }
            return;
        }// end function

        private function _GuildWindow_DataGridColumn10_i() : DataGridColumn
        {
            var _loc_1:* = new DataGridColumn();
            _GuildWindow_DataGridColumn10 = _loc_1;
            _loc_1.dataField = "jobName";
            _loc_1.width = 100;
            _loc_1.setStyle("textAlign", "center");
            BindingManager.executeBindings(this, "_GuildWindow_DataGridColumn10", _GuildWindow_DataGridColumn10);
            return _loc_1;
        }// end function

        private function _GuildWindow_ClassFactory3_i() : ClassFactory
        {
            var _loc_1:* = new ClassFactory();
            rank_renderer2 = _loc_1;
            _loc_1.generator = GuildWindow_inlineComponent3;
            _loc_1.properties = {outerDocument:this};
            return _loc_1;
        }// end function

        public function set tab(param1:Image) : void
        {
            var _loc_2:* = this._114581tab;
            if (_loc_2 !== param1)
            {
                this._114581tab = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "tab", _loc_2, param1));
            }
            return;
        }// end function

        private function _GuildWindow_DataGridColumn18_i() : DataGridColumn
        {
            var _loc_1:* = new DataGridColumn();
            _GuildWindow_DataGridColumn18 = _loc_1;
            _loc_1.dataField = "playerVO.playerRankId";
            _loc_1.width = 70;
            _loc_1.setStyle("textAlign", "center");
            BindingManager.executeBindings(this, "_GuildWindow_DataGridColumn18", _GuildWindow_DataGridColumn18);
            return _loc_1;
        }// end function

        private function set guildMemberMaxCount(param1:int) : void
        {
            var _loc_2:* = this._1060122216guildMemberMaxCount;
            if (_loc_2 !== param1)
            {
                this._1060122216guildMemberMaxCount = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "guildMemberMaxCount", _loc_2, param1));
            }
            return;
        }// end function

        private function set leyLinesCount(param1:int) : void
        {
            var _loc_2:* = this._1475547248leyLinesCount;
            if (_loc_2 !== param1)
            {
                this._1475547248leyLinesCount = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "leyLinesCount", _loc_2, param1));
            }
            return;
        }// end function

        public function onShowArmy(param1:int) : void
        {
            anotherPlayerId = param1;
            sendPopupEvent(SHOW_PLAYERS_ARMY, param1);
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

        private function _GuildWindow_DataGridColumn21_i() : DataGridColumn
        {
            var _loc_1:* = new DataGridColumn();
            _GuildWindow_DataGridColumn21 = _loc_1;
            _loc_1.dataField = "playerVO.maxUnitLevel";
            _loc_1.width = 50;
            _loc_1.setStyle("textAlign", "center");
            BindingManager.executeBindings(this, "_GuildWindow_DataGridColumn21", _GuildWindow_DataGridColumn21);
            return _loc_1;
        }// end function

        private function set guildMemberCount(param1:int) : void
        {
            var _loc_2:* = this._873010014guildMemberCount;
            if (_loc_2 !== param1)
            {
                this._873010014guildMemberCount = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "guildMemberCount", _loc_2, param1));
            }
            return;
        }// end function

        private function handleEvent(event:PopupEvent) : void
        {
            switch(event.type)
            {
                case GuildApprovalWindow.ALLOW_APPLICATION:
                {
                    sendPopupEvent(GuildApprovalWindow.ALLOW_APPLICATION, event.param);
                    break;
                }
                case GuildApprovalWindow.REJECT_APPLICATION:
                {
                    sendPopupEvent(GuildApprovalWindow.REJECT_APPLICATION, event.param);
                    break;
                }
                default:
                {
                    break;
                }
            }
            return;
        }// end function

        private function get guildDedicationPoint() : int
        {
            return this._502202555guildDedicationPoint;
        }// end function

        private function _GuildWindow_DataGridColumn7_i() : DataGridColumn
        {
            var _loc_1:* = new DataGridColumn();
            _GuildWindow_DataGridColumn7 = _loc_1;
            _loc_1.dataField = "maxUnitLevel";
            _loc_1.width = 60;
            _loc_1.setStyle("textAlign", "center");
            BindingManager.executeBindings(this, "_GuildWindow_DataGridColumn7", _GuildWindow_DataGridColumn7);
            return _loc_1;
        }// end function

        public function get selectedPlayer() : PlayerVO
        {
            return _selectedPlayer;
        }// end function

        private function _GuildWindow_ClassFactory2_i() : ClassFactory
        {
            var _loc_1:* = new ClassFactory();
            rank_renderer = _loc_1;
            _loc_1.generator = GuildWindow_inlineComponent2;
            _loc_1.properties = {outerDocument:this};
            return _loc_1;
        }// end function

        private function _GuildWindow_bindingsSetup() : Array
        {
            var binding:Binding;
            var result:Array;
            binding = new Binding(this, function () : Object
            {
                return _swf_window;
            }// end function
            , function (param1:Object) : void
            {
                _GuildWindow_Image1.source = param1;
                return;
            }// end function
            , "_GuildWindow_Image1.source");
            result[0] = binding;
            binding = new Binding(this, function () : Number
            {
                return WINDOW_X;
            }// end function
            , function (param1:Number) : void
            {
                _GuildWindow_Text1.x = param1;
                return;
            }// end function
            , "_GuildWindow_Text1.x");
            result[1] = binding;
            binding = new Binding(this, function () : Number
            {
                return WINDOW_Y;
            }// end function
            , function (param1:Number) : void
            {
                _GuildWindow_Text1.y = param1;
                return;
            }// end function
            , "_GuildWindow_Text1.y");
            result[2] = binding;
            binding = new Binding(this, function () : Number
            {
                return WINDOW_WD;
            }// end function
            , function (param1:Number) : void
            {
                _GuildWindow_Text1.width = param1;
                return;
            }// end function
            , "_GuildWindow_Text1.width");
            result[3] = binding;
            binding = new Binding(this, function () : String
            {
                var _loc_1:* = Utils.i18n("generalGuildInfo");
                var _loc_2:* = _loc_1 == undefined ? (null) : (String(_loc_1));
                return _loc_2;
            }// end function
            , function (param1:String) : void
            {
                _GuildWindow_Text1.text = param1;
                return;
            }// end function
            , "_GuildWindow_Text1.text");
            result[4] = binding;
            binding = new Binding(this, function () : Number
            {
                return WINDOW_X + 20;
            }// end function
            , function (param1:Number) : void
            {
                _GuildWindow_HBox1.x = param1;
                return;
            }// end function
            , "_GuildWindow_HBox1.x");
            result[5] = binding;
            binding = new Binding(this, function () : Number
            {
                return WINDOW_Y + 35;
            }// end function
            , function (param1:Number) : void
            {
                _GuildWindow_HBox1.y = param1;
                return;
            }// end function
            , "_GuildWindow_HBox1.y");
            result[6] = binding;
            binding = new Binding(this, function () : Number
            {
                return WINDOW_WD - 40;
            }// end function
            , function (param1:Number) : void
            {
                _GuildWindow_HBox1.width = param1;
                return;
            }// end function
            , "_GuildWindow_HBox1.width");
            result[7] = binding;
            binding = new Binding(this, function () : String
            {
                var _loc_1:* = Utils.i18n("createGuildName") + "：" + guildName;
                var _loc_2:* = _loc_1 == undefined ? (null) : (String(_loc_1));
                return _loc_2;
            }// end function
            , function (param1:String) : void
            {
                _GuildWindow_Text2.text = param1;
                return;
            }// end function
            , "_GuildWindow_Text2.text");
            result[8] = binding;
            binding = new Binding(this, function () : Number
            {
                return WINDOW_X + 20;
            }// end function
            , function (param1:Number) : void
            {
                _GuildWindow_HBox2.x = param1;
                return;
            }// end function
            , "_GuildWindow_HBox2.x");
            result[9] = binding;
            binding = new Binding(this, function () : Number
            {
                return WINDOW_Y + 35 + 20;
            }// end function
            , function (param1:Number) : void
            {
                _GuildWindow_HBox2.y = param1;
                return;
            }// end function
            , "_GuildWindow_HBox2.y");
            result[10] = binding;
            binding = new Binding(this, function () : Number
            {
                return WINDOW_WD - 40;
            }// end function
            , function (param1:Number) : void
            {
                _GuildWindow_HBox2.width = param1;
                return;
            }// end function
            , "_GuildWindow_HBox2.width");
            result[11] = binding;
            binding = new Binding(this, function () : String
            {
                var _loc_1:* = Utils.i18n("searchGuildMemberCount") + "：" + guildMemberCount;
                var _loc_2:* = _loc_1 == undefined ? (null) : (String(_loc_1));
                return _loc_2;
            }// end function
            , function (param1:String) : void
            {
                _GuildWindow_Text3.text = param1;
                return;
            }// end function
            , "_GuildWindow_Text3.text");
            result[12] = binding;
            binding = new Binding(this, function () : String
            {
                var _loc_1:* = Utils.i18n("searchGuildTerritoryCount") + "：" + guildAllTerritoriesCount + "(" + guildLevelMaxPropertiesCount + ")";
                var _loc_2:* = _loc_1 == undefined ? (null) : (String(_loc_1));
                return _loc_2;
            }// end function
            , function (param1:String) : void
            {
                _GuildWindow_Text4.text = param1;
                return;
            }// end function
            , "_GuildWindow_Text4.text");
            result[13] = binding;
            binding = new Binding(this, function () : String
            {
                var _loc_1:* = Utils.i18n("localize66") + "：" + leyLinesCount;
                var _loc_2:* = _loc_1 == undefined ? (null) : (String(_loc_1));
                return _loc_2;
            }// end function
            , function (param1:String) : void
            {
                _GuildWindow_Text5.text = param1;
                return;
            }// end function
            , "_GuildWindow_Text5.text");
            result[14] = binding;
            binding = new Binding(this, function () : String
            {
                var _loc_1:* = Utils.i18n("generalGuildInfo");
                var _loc_2:* = _loc_1 == undefined ? (null) : (String(_loc_1));
                return _loc_2;
            }// end function
            , function (param1:String) : void
            {
                _GuildWindow_Canvas1.label = param1;
                return;
            }// end function
            , "_GuildWindow_Canvas1.label");
            result[15] = binding;
            binding = new Binding(this, function () : Number
            {
                return WINDOW_X + 20;
            }// end function
            , function (param1:Number) : void
            {
                _GuildWindow_Box1.x = param1;
                return;
            }// end function
            , "_GuildWindow_Box1.x");
            result[16] = binding;
            binding = new Binding(this, function () : Number
            {
                return WINDOW_Y + 35 + 78;
            }// end function
            , function (param1:Number) : void
            {
                _GuildWindow_Box1.y = param1;
                return;
            }// end function
            , "_GuildWindow_Box1.y");
            result[17] = binding;
            binding = new Binding(this, function () : Number
            {
                return WINDOW_WD - 40;
            }// end function
            , function (param1:Number) : void
            {
                _GuildWindow_Box1.width = param1;
                return;
            }// end function
            , "_GuildWindow_Box1.width");
            result[18] = binding;
            binding = new Binding(this, function () : String
            {
                var _loc_1:* = "　" + GuildData.comment;
                var _loc_2:* = _loc_1 == undefined ? (null) : (String(_loc_1));
                return _loc_2;
            }// end function
            , function (param1:String) : void
            {
                _GuildWindow_Text6.text = param1;
                return;
            }// end function
            , "_GuildWindow_Text6.text");
            result[19] = binding;
            binding = new Binding(this, function () : Number
            {
                return WINDOW_WD - 40 - 10;
            }// end function
            , function (param1:Number) : void
            {
                _GuildWindow_Text6.width = param1;
                return;
            }// end function
            , "_GuildWindow_Text6.width");
            result[20] = binding;
            binding = new Binding(this, function () : String
            {
                var _loc_1:* = Utils.i18n("generalMember");
                var _loc_2:* = _loc_1 == undefined ? (null) : (String(_loc_1));
                return _loc_2;
            }// end function
            , function (param1:String) : void
            {
                _GuildWindow_Canvas2.label = param1;
                return;
            }// end function
            , "_GuildWindow_Canvas2.label");
            result[21] = binding;
            binding = new Binding(this, function () : Number
            {
                return WINDOW_X + 20;
            }// end function
            , function (param1:Number) : void
            {
                _GuildWindow_Box2.x = param1;
                return;
            }// end function
            , "_GuildWindow_Box2.x");
            result[22] = binding;
            binding = new Binding(this, function () : Number
            {
                return WINDOW_Y + 35 + 78;
            }// end function
            , function (param1:Number) : void
            {
                _GuildWindow_Box2.y = param1;
                return;
            }// end function
            , "_GuildWindow_Box2.y");
            result[23] = binding;
            binding = new Binding(this, function () : Object
            {
                return viewDataPlayers;
            }// end function
            , function (param1:Object) : void
            {
                players_list.dataProvider = param1;
                return;
            }// end function
            , "players_list.dataProvider");
            result[24] = binding;
            binding = new Binding(this, function () : Number
            {
                return WINDOW_WD - 40;
            }// end function
            , function (param1:Number) : void
            {
                players_list.width = param1;
                return;
            }// end function
            , "players_list.width");
            result[25] = binding;
            binding = new Binding(this, function () : String
            {
                var _loc_1:* = Utils.i18n("generalName");
                var _loc_2:* = _loc_1 == undefined ? (null) : (String(_loc_1));
                return _loc_2;
            }// end function
            , function (param1:String) : void
            {
                _GuildWindow_DataGridColumn1.headerText = param1;
                return;
            }// end function
            , "_GuildWindow_DataGridColumn1.headerText");
            result[26] = binding;
            binding = new Binding(this, function () : String
            {
                var _loc_1:* = Utils.i18n("generalPosition");
                var _loc_2:* = _loc_1 == undefined ? (null) : (String(_loc_1));
                return _loc_2;
            }// end function
            , function (param1:String) : void
            {
                _GuildWindow_DataGridColumn2.headerText = param1;
                return;
            }// end function
            , "_GuildWindow_DataGridColumn2.headerText");
            result[27] = binding;
            binding = new Binding(this, function () : IFactory
            {
                return positionRenderer;
            }// end function
            , function (param1:IFactory) : void
            {
                _GuildWindow_DataGridColumn2.itemRenderer = param1;
                return;
            }// end function
            , "_GuildWindow_DataGridColumn2.itemRenderer");
            result[28] = binding;
            binding = new Binding(this, function () : String
            {
                var _loc_1:* = Utils.i18n("generalRank");
                var _loc_2:* = _loc_1 == undefined ? (null) : (String(_loc_1));
                return _loc_2;
            }// end function
            , function (param1:String) : void
            {
                _GuildWindow_DataGridColumn3.headerText = param1;
                return;
            }// end function
            , "_GuildWindow_DataGridColumn3.headerText");
            result[29] = binding;
            binding = new Binding(this, function () : IFactory
            {
                return rank_renderer;
            }// end function
            , function (param1:IFactory) : void
            {
                _GuildWindow_DataGridColumn3.itemRenderer = param1;
                return;
            }// end function
            , "_GuildWindow_DataGridColumn3.itemRenderer");
            result[30] = binding;
            binding = new Binding(this, function () : String
            {
                var _loc_1:* = Utils.i18n("generalPropertiesCount");
                var _loc_2:* = _loc_1 == undefined ? (null) : (String(_loc_1));
                return _loc_2;
            }// end function
            , function (param1:String) : void
            {
                _GuildWindow_DataGridColumn4.headerText = param1;
                return;
            }// end function
            , "_GuildWindow_DataGridColumn4.headerText");
            result[31] = binding;
            binding = new Binding(this, function () : String
            {
                var _loc_1:* = Utils.i18n("earthLeyPoint");
                var _loc_2:* = _loc_1 == undefined ? (null) : (String(_loc_1));
                return _loc_2;
            }// end function
            , function (param1:String) : void
            {
                _GuildWindow_DataGridColumn5.headerText = param1;
                return;
            }// end function
            , "_GuildWindow_DataGridColumn5.headerText");
            result[32] = binding;
            binding = new Binding(this, function () : String
            {
                var _loc_1:* = Utils.i18n("generalUnitsCount");
                var _loc_2:* = _loc_1 == undefined ? (null) : (String(_loc_1));
                return _loc_2;
            }// end function
            , function (param1:String) : void
            {
                _GuildWindow_DataGridColumn6.headerText = param1;
                return;
            }// end function
            , "_GuildWindow_DataGridColumn6.headerText");
            result[33] = binding;
            binding = new Binding(this, function () : String
            {
                var _loc_1:* = Utils.i18n("guildApprovalMaxLvNum");
                var _loc_2:* = _loc_1 == undefined ? (null) : (String(_loc_1));
                return _loc_2;
            }// end function
            , function (param1:String) : void
            {
                _GuildWindow_DataGridColumn7.headerText = param1;
                return;
            }// end function
            , "_GuildWindow_DataGridColumn7.headerText");
            result[34] = binding;
            binding = new Binding(this, function () : String
            {
                var _loc_1:* = Utils.i18n("generalDispatchList");
                var _loc_2:* = _loc_1 == undefined ? (null) : (String(_loc_1));
                return _loc_2;
            }// end function
            , function (param1:String) : void
            {
                _GuildWindow_Canvas3.label = param1;
                return;
            }// end function
            , "_GuildWindow_Canvas3.label");
            result[35] = binding;
            binding = new Binding(this, function () : Number
            {
                return WINDOW_X + 20;
            }// end function
            , function (param1:Number) : void
            {
                _GuildWindow_Box3.x = param1;
                return;
            }// end function
            , "_GuildWindow_Box3.x");
            result[36] = binding;
            binding = new Binding(this, function () : Number
            {
                return WINDOW_Y + 35 + 78;
            }// end function
            , function (param1:Number) : void
            {
                _GuildWindow_Box3.y = param1;
                return;
            }// end function
            , "_GuildWindow_Box3.y");
            result[37] = binding;
            binding = new Binding(this, function () : Object
            {
                return _guildArmyUnits;
            }// end function
            , function (param1:Object) : void
            {
                army_data_list.dataProvider = param1;
                return;
            }// end function
            , "army_data_list.dataProvider");
            result[38] = binding;
            binding = new Binding(this, function () : Number
            {
                return WINDOW_WD - 40;
            }// end function
            , function (param1:Number) : void
            {
                army_data_list.width = param1;
                return;
            }// end function
            , "army_data_list.width");
            result[39] = binding;
            binding = new Binding(this, function () : String
            {
                var _loc_1:* = Utils.i18n("generalName");
                var _loc_2:* = _loc_1 == undefined ? (null) : (String(_loc_1));
                return _loc_2;
            }// end function
            , function (param1:String) : void
            {
                _GuildWindow_DataGridColumn8.headerText = param1;
                return;
            }// end function
            , "_GuildWindow_DataGridColumn8.headerText");
            result[40] = binding;
            binding = new Binding(this, function () : String
            {
                var _loc_1:* = Utils.i18n("generalAffiliation");
                var _loc_2:* = _loc_1 == undefined ? (null) : (String(_loc_1));
                return _loc_2;
            }// end function
            , function (param1:String) : void
            {
                _GuildWindow_DataGridColumn9.headerText = param1;
                return;
            }// end function
            , "_GuildWindow_DataGridColumn9.headerText");
            result[41] = binding;
            binding = new Binding(this, function () : String
            {
                var _loc_1:* = Utils.i18n("generalJob");
                var _loc_2:* = _loc_1 == undefined ? (null) : (String(_loc_1));
                return _loc_2;
            }// end function
            , function (param1:String) : void
            {
                _GuildWindow_DataGridColumn10.headerText = param1;
                return;
            }// end function
            , "_GuildWindow_DataGridColumn10.headerText");
            result[42] = binding;
            binding = new Binding(this, function () : String
            {
                var _loc_1:* = Utils.i18n("changeEquipmentAttack");
                var _loc_2:* = _loc_1 == undefined ? (null) : (String(_loc_1));
                return _loc_2;
            }// end function
            , function (param1:String) : void
            {
                _GuildWindow_DataGridColumn13.headerText = param1;
                return;
            }// end function
            , "_GuildWindow_DataGridColumn13.headerText");
            result[43] = binding;
            binding = new Binding(this, function () : String
            {
                var _loc_1:* = Utils.i18n("generalDefence");
                var _loc_2:* = _loc_1 == undefined ? (null) : (String(_loc_1));
                return _loc_2;
            }// end function
            , function (param1:String) : void
            {
                _GuildWindow_DataGridColumn14.headerText = param1;
                return;
            }// end function
            , "_GuildWindow_DataGridColumn14.headerText");
            result[44] = binding;
            binding = new Binding(this, function () : String
            {
                var _loc_1:* = Utils.i18n("generalEquipWeapon");
                var _loc_2:* = _loc_1 == undefined ? (null) : (String(_loc_1));
                return _loc_2;
            }// end function
            , function (param1:String) : void
            {
                _GuildWindow_DataGridColumn15.headerText = param1;
                return;
            }// end function
            , "_GuildWindow_DataGridColumn15.headerText");
            result[45] = binding;
            binding = new Binding(this, function () : String
            {
                var _loc_1:* = Utils.i18n("admissionGuildRequest");
                var _loc_2:* = _loc_1 == undefined ? (null) : (String(_loc_1));
                return _loc_2;
            }// end function
            , function (param1:String) : void
            {
                _GuildWindow_Canvas4.label = param1;
                return;
            }// end function
            , "_GuildWindow_Canvas4.label");
            result[46] = binding;
            binding = new Binding(this, function () : Number
            {
                return WINDOW_X + 20;
            }// end function
            , function (param1:Number) : void
            {
                _GuildWindow_Box4.x = param1;
                return;
            }// end function
            , "_GuildWindow_Box4.x");
            result[47] = binding;
            binding = new Binding(this, function () : Number
            {
                return WINDOW_Y + 35 + 78;
            }// end function
            , function (param1:Number) : void
            {
                _GuildWindow_Box4.y = param1;
                return;
            }// end function
            , "_GuildWindow_Box4.y");
            result[48] = binding;
            binding = new Binding(this, function () : Object
            {
                return _applicationData;
            }// end function
            , function (param1:Object) : void
            {
                application_data_list.dataProvider = param1;
                return;
            }// end function
            , "application_data_list.dataProvider");
            result[49] = binding;
            binding = new Binding(this, function () : Number
            {
                return WINDOW_WD - 40;
            }// end function
            , function (param1:Number) : void
            {
                application_data_list.width = param1;
                return;
            }// end function
            , "application_data_list.width");
            result[50] = binding;
            binding = new Binding(this, function () : String
            {
                var _loc_1:* = Utils.i18n("generalTime");
                var _loc_2:* = _loc_1 == undefined ? (null) : (String(_loc_1));
                return _loc_2;
            }// end function
            , function (param1:String) : void
            {
                _GuildWindow_DataGridColumn16.headerText = param1;
                return;
            }// end function
            , "_GuildWindow_DataGridColumn16.headerText");
            result[51] = binding;
            binding = new Binding(this, function () : String
            {
                var _loc_1:* = Utils.i18n("generalApplicant");
                var _loc_2:* = _loc_1 == undefined ? (null) : (String(_loc_1));
                return _loc_2;
            }// end function
            , function (param1:String) : void
            {
                _GuildWindow_DataGridColumn17.headerText = param1;
                return;
            }// end function
            , "_GuildWindow_DataGridColumn17.headerText");
            result[52] = binding;
            binding = new Binding(this, function () : IFactory
            {
                return application_detail_renderer;
            }// end function
            , function (param1:IFactory) : void
            {
                _GuildWindow_DataGridColumn17.itemRenderer = param1;
                return;
            }// end function
            , "_GuildWindow_DataGridColumn17.itemRenderer");
            result[53] = binding;
            binding = new Binding(this, function () : String
            {
                var _loc_1:* = Utils.i18n("generalRank");
                var _loc_2:* = _loc_1 == undefined ? (null) : (String(_loc_1));
                return _loc_2;
            }// end function
            , function (param1:String) : void
            {
                _GuildWindow_DataGridColumn18.headerText = param1;
                return;
            }// end function
            , "_GuildWindow_DataGridColumn18.headerText");
            result[54] = binding;
            binding = new Binding(this, function () : IFactory
            {
                return rank_renderer2;
            }// end function
            , function (param1:IFactory) : void
            {
                _GuildWindow_DataGridColumn18.itemRenderer = param1;
                return;
            }// end function
            , "_GuildWindow_DataGridColumn18.itemRenderer");
            result[55] = binding;
            binding = new Binding(this, function () : String
            {
                var _loc_1:* = Utils.i18n("generalPropertiesCount");
                var _loc_2:* = _loc_1 == undefined ? (null) : (String(_loc_1));
                return _loc_2;
            }// end function
            , function (param1:String) : void
            {
                _GuildWindow_DataGridColumn19.headerText = param1;
                return;
            }// end function
            , "_GuildWindow_DataGridColumn19.headerText");
            result[56] = binding;
            binding = new Binding(this, function () : String
            {
                var _loc_1:* = Utils.i18n("generalUnitsCount");
                var _loc_2:* = _loc_1 == undefined ? (null) : (String(_loc_1));
                return _loc_2;
            }// end function
            , function (param1:String) : void
            {
                _GuildWindow_DataGridColumn20.headerText = param1;
                return;
            }// end function
            , "_GuildWindow_DataGridColumn20.headerText");
            result[57] = binding;
            binding = new Binding(this, function () : String
            {
                var _loc_1:* = Utils.i18n("guildApprovalMaxLvNum");
                var _loc_2:* = _loc_1 == undefined ? (null) : (String(_loc_1));
                return _loc_2;
            }// end function
            , function (param1:String) : void
            {
                _GuildWindow_DataGridColumn21.headerText = param1;
                return;
            }// end function
            , "_GuildWindow_DataGridColumn21.headerText");
            result[58] = binding;
            binding = new Binding(this, function () : String
            {
                var _loc_1:* = Utils.i18n("generalRarity");
                var _loc_2:* = _loc_1 == undefined ? (null) : (String(_loc_1));
                return _loc_2;
            }// end function
            , function (param1:String) : void
            {
                _GuildWindow_DataGridColumn22.headerText = param1;
                return;
            }// end function
            , "_GuildWindow_DataGridColumn22.headerText");
            result[59] = binding;
            binding = new Binding(this, function () : String
            {
                var _loc_1:* = Utils.i18n("localize68");
                var _loc_2:* = _loc_1 == undefined ? (null) : (String(_loc_1));
                return _loc_2;
            }// end function
            , function (param1:String) : void
            {
                _GuildWindow_Canvas5.label = param1;
                return;
            }// end function
            , "_GuildWindow_Canvas5.label");
            result[60] = binding;
            binding = new Binding(this, function () : Number
            {
                return WINDOW_X + 20;
            }// end function
            , function (param1:Number) : void
            {
                _GuildWindow_Box5.x = param1;
                return;
            }// end function
            , "_GuildWindow_Box5.x");
            result[61] = binding;
            binding = new Binding(this, function () : Number
            {
                return WINDOW_Y + 35 + 78;
            }// end function
            , function (param1:Number) : void
            {
                _GuildWindow_Box5.y = param1;
                return;
            }// end function
            , "_GuildWindow_Box5.y");
            result[62] = binding;
            binding = new Binding(this, function () : Object
            {
                return _leyLines;
            }// end function
            , function (param1:Object) : void
            {
                ley_line_data_list.dataProvider = param1;
                return;
            }// end function
            , "ley_line_data_list.dataProvider");
            result[63] = binding;
            binding = new Binding(this, function () : Number
            {
                return WINDOW_WD - 40;
            }// end function
            , function (param1:Number) : void
            {
                ley_line_data_list.width = param1;
                return;
            }// end function
            , "ley_line_data_list.width");
            result[64] = binding;
            binding = new Binding(this, function () : String
            {
                var _loc_1:* = Utils.i18n("localize69");
                var _loc_2:* = _loc_1 == undefined ? (null) : (String(_loc_1));
                return _loc_2;
            }// end function
            , function (param1:String) : void
            {
                _GuildWindow_DataGridColumn23.headerText = param1;
                return;
            }// end function
            , "_GuildWindow_DataGridColumn23.headerText");
            result[65] = binding;
            binding = new Binding(this, function () : String
            {
                var _loc_1:* = Utils.i18n("changeEquipmentEffect");
                var _loc_2:* = _loc_1 == undefined ? (null) : (String(_loc_1));
                return _loc_2;
            }// end function
            , function (param1:String) : void
            {
                _GuildWindow_DataGridColumn24.headerText = param1;
                return;
            }// end function
            , "_GuildWindow_DataGridColumn24.headerText");
            result[66] = binding;
            binding = new Binding(this, function () : Number
            {
                return WINDOW_X + 20;
            }// end function
            , function (param1:Number) : void
            {
                tab.x = param1;
                return;
            }// end function
            , "tab.x");
            result[67] = binding;
            binding = new Binding(this, function () : Number
            {
                return WINDOW_Y + 35 + 50;
            }// end function
            , function (param1:Number) : void
            {
                tab.y = param1;
                return;
            }// end function
            , "tab.y");
            result[68] = binding;
            binding = new Binding(this, function () : Object
            {
                return _swf_tab2;
            }// end function
            , function (param1:Object) : void
            {
                tab.source = param1;
                return;
            }// end function
            , "tab.source");
            result[69] = binding;
            binding = new Binding(this, function () : Number
            {
                return BUTTON_X;
            }// end function
            , function (param1:Number) : void
            {
                _GuildWindow_Image3.x = param1;
                return;
            }// end function
            , "_GuildWindow_Image3.x");
            result[70] = binding;
            binding = new Binding(this, function () : Number
            {
                return BUTTON_Y;
            }// end function
            , function (param1:Number) : void
            {
                _GuildWindow_Image3.y = param1;
                return;
            }// end function
            , "_GuildWindow_Image3.y");
            result[71] = binding;
            binding = new Binding(this, function () : Object
            {
                return _swf_close;
            }// end function
            , function (param1:Object) : void
            {
                _GuildWindow_Image3.source = param1;
                return;
            }// end function
            , "_GuildWindow_Image3.source");
            result[72] = binding;
            binding = new Binding(this, function () : Number
            {
                return WINDOW_X + WINDOW_WD - 25;
            }// end function
            , function (param1:Number) : void
            {
                _GuildWindow_Image4.x = param1;
                return;
            }// end function
            , "_GuildWindow_Image4.x");
            result[73] = binding;
            binding = new Binding(this, function () : Number
            {
                return WINDOW_Y;
            }// end function
            , function (param1:Number) : void
            {
                _GuildWindow_Image4.y = param1;
                return;
            }// end function
            , "_GuildWindow_Image4.y");
            result[74] = binding;
            binding = new Binding(this, function () : Object
            {
                return _swf_close_window;
            }// end function
            , function (param1:Object) : void
            {
                _GuildWindow_Image4.source = param1;
                return;
            }// end function
            , "_GuildWindow_Image4.source");
            result[75] = binding;
            return result;
        }// end function

        public function get rank_renderer() : ClassFactory
        {
            return this._495327094rank_renderer;
        }// end function

        private function get _guildArmyUnits() : ArrayCollection
        {
            return this._526638274_guildArmyUnits;
        }// end function

        private function _GuildWindow_DataGridColumn17_i() : DataGridColumn
        {
            var _loc_1:* = new DataGridColumn();
            _GuildWindow_DataGridColumn17 = _loc_1;
            _loc_1.width = 260;
            BindingManager.executeBindings(this, "_GuildWindow_DataGridColumn17", _GuildWindow_DataGridColumn17);
            return _loc_1;
        }// end function

        public function ___GuildWindow_Image3_click(event:MouseEvent) : void
        {
            closeWindow();
            return;
        }// end function

        public function set leyLines(param1:Array) : void
        {
            _leyLines = new ArrayCollection(param1);
            return;
        }// end function

        private function set _playerVO(param1:PlayerVO) : void
        {
            var _loc_2:* = this._1969791673_playerVO;
            if (_loc_2 !== param1)
            {
                this._1969791673_playerVO = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "_playerVO", _loc_2, param1));
            }
            return;
        }// end function

        private function set _coloniesData(param1:ArrayCollection) : void
        {
            var _loc_2:* = this._1814149313_coloniesData;
            if (_loc_2 !== param1)
            {
                this._1814149313_coloniesData = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "_coloniesData", _loc_2, param1));
            }
            return;
        }// end function

        public function get rank_renderer2() : ClassFactory
        {
            return this._1824729220rank_renderer2;
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

        public function get ley_line_data_list() : DataGrid
        {
            return this._1918977415ley_line_data_list;
        }// end function

        private function _GuildWindow_DataGridColumn20_i() : DataGridColumn
        {
            var _loc_1:* = new DataGridColumn();
            _GuildWindow_DataGridColumn20 = _loc_1;
            _loc_1.dataField = "playerVO.unitCount";
            _loc_1.width = 50;
            _loc_1.setStyle("textAlign", "center");
            BindingManager.executeBindings(this, "_GuildWindow_DataGridColumn20", _GuildWindow_DataGridColumn20);
            return _loc_1;
        }// end function

        private function get guildTotalNotoriety() : int
        {
            return this._1619918214guildTotalNotoriety;
        }// end function

        override public function initialize() : void
        {
            var target:GuildWindow;
            var watcherSetupUtilClass:Object;
            .mx_internal::setDocumentDescriptor(_documentDescriptor_);
            var bindings:* = _GuildWindow_bindingsSetup();
            var watchers:Array;
            target;
            if (_watcherSetupUtil == null)
            {
                watcherSetupUtilClass = getDefinitionByName("_com_kbmj_viking_view_GuildWindowWatcherSetupUtil");
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

        public function set icon_renderer(param1:ClassFactory) : void
        {
            var _loc_2:* = this._1007627721icon_renderer;
            if (_loc_2 !== param1)
            {
                this._1007627721icon_renderer = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "icon_renderer", _loc_2, param1));
            }
            return;
        }// end function

        public function get tab() : Image
        {
            return this._114581tab;
        }// end function

        private function set guildLevelMaxPropertiesCount(param1:int) : void
        {
            var _loc_2:* = this._222489911guildLevelMaxPropertiesCount;
            if (_loc_2 !== param1)
            {
                this._222489911guildLevelMaxPropertiesCount = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "guildLevelMaxPropertiesCount", _loc_2, param1));
            }
            return;
        }// end function

        public function onApplicationDetail(param1:Object) : void
        {
            sendPopupEvent(LOAD_APPLICATION_DETAIL, param1.id);
            return;
        }// end function

        public function set unitListWindow(param1:UnitListWindow) : void
        {
            var _loc_2:* = this._386815278unitListWindow;
            if (_loc_2 !== param1)
            {
                this._386815278unitListWindow = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "unitListWindow", _loc_2, param1));
            }
            return;
        }// end function

        private function get guildMemberMaxCount() : int
        {
            return this._1060122216guildMemberMaxCount;
        }// end function

        public function unitListPopUp(param1:Array) : void
        {
            unitListWindow.units = param1;
            unitListWindow.visible = true;
            return;
        }// end function

        private function _GuildWindow_ClassFactory1_i() : ClassFactory
        {
            var _loc_1:* = new ClassFactory();
            icon_renderer = _loc_1;
            _loc_1.generator = GuildWindow_inlineComponent1;
            _loc_1.properties = {outerDocument:this};
            return _loc_1;
        }// end function

        private function _GuildWindow_DataGridColumn16_i() : DataGridColumn
        {
            var _loc_1:* = new DataGridColumn();
            _GuildWindow_DataGridColumn16 = _loc_1;
            _loc_1.dataField = "date";
            _loc_1.width = 140;
            BindingManager.executeBindings(this, "_GuildWindow_DataGridColumn16", _GuildWindow_DataGridColumn16);
            return _loc_1;
        }// end function

        private function get leyLinesCount() : int
        {
            return this._1475547248leyLinesCount;
        }// end function

        private function _GuildWindow_DataGridColumn6_i() : DataGridColumn
        {
            var _loc_1:* = new DataGridColumn();
            _GuildWindow_DataGridColumn6 = _loc_1;
            _loc_1.dataField = "unitCount";
            _loc_1.width = 60;
            _loc_1.setStyle("textAlign", "center");
            BindingManager.executeBindings(this, "_GuildWindow_DataGridColumn6", _GuildWindow_DataGridColumn6);
            return _loc_1;
        }// end function

        private function gridToolTip(param1:Object) : String
        {
            return Utils.i18n("generalShowDetail");
        }// end function

        public function set coloniesData(param1:Array) : void
        {
            _coloniesData = new ArrayCollection(param1);
            return;
        }// end function

        private function set _applicationData(param1:ArrayCollection) : void
        {
            var _loc_2:* = this._1791137499_applicationData;
            if (_loc_2 !== param1)
            {
                this._1791137499_applicationData = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "_applicationData", _loc_2, param1));
            }
            return;
        }// end function

        public function set application_data_list(param1:DataGrid) : void
        {
            var _loc_2:* = this._1882083300application_data_list;
            if (_loc_2 !== param1)
            {
                this._1882083300application_data_list = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "application_data_list", _loc_2, param1));
            }
            return;
        }// end function

        public function get icon_renderer() : ClassFactory
        {
            return this._1007627721icon_renderer;
        }// end function

        public function onShowReport(param1:Object) : void
        {
            var _loc_2:* = param1 as PlayerVO;
            selectedPlayer = _loc_2;
            sendPopupEvent(SHOW_RAID_REPORT, _loc_2.playerId);
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

        private function _GuildWindow_DataGridColumn5_i() : DataGridColumn
        {
            var _loc_1:* = new DataGridColumn();
            _GuildWindow_DataGridColumn5 = _loc_1;
            _loc_1.dataField = "levelMaxPropertiesCount";
            _loc_1.width = 140;
            _loc_1.setStyle("textAlign", "center");
            BindingManager.executeBindings(this, "_GuildWindow_DataGridColumn5", _GuildWindow_DataGridColumn5);
            return _loc_1;
        }// end function

        public function set army_data_list(param1:DataGrid) : void
        {
            var _loc_2:* = this._62054385army_data_list;
            if (_loc_2 !== param1)
            {
                this._62054385army_data_list = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "army_data_list", _loc_2, param1));
            }
            return;
        }// end function

        public function get application_data_list() : DataGrid
        {
            return this._1882083300application_data_list;
        }// end function

        private function _GuildWindow_ClassFactory8_c() : ClassFactory
        {
            var _loc_1:* = new ClassFactory();
            _loc_1.generator = UnitDetailLabelWithDownIconRenderer;
            return _loc_1;
        }// end function

        public function get army_data_list() : DataGrid
        {
            return this._62054385army_data_list;
        }// end function

        public function componentStr(param1:int) : String
        {
            if (param1 == 0)
            {
                return Utils.i18n("generalExpulsion");
            }
            return Utils.i18n("generalConfirmation");
        }// end function

        public function set selectGuildMemberName(param1:String) : void
        {
            _selectGuildMemberName = param1;
            return;
        }// end function

        public function get selectGuildMemberName() : String
        {
            return _selectGuildMemberName;
        }// end function

        public static function set watcherSetupUtil(param1:IWatcherSetupUtil) : void
        {
            GuildWindow._watcherSetupUtil = param1;
            return;
        }// end function

    }
}
