package com.kbmj.viking.view.home
{
    import com.kbmj.viking.lib.*;
    import com.kbmj.viking.view.*;
    import com.kbmj.viking.vo.*;
    import com.kbmj.viking.vo.tactics.*;
    import flash.display.*;
    import flash.events.*;
    import flash.geom.*;
    import flash.utils.*;
    import mx.binding.*;
    import mx.containers.*;
    import mx.controls.*;
    import mx.core.*;
    import mx.events.*;

    public class CeremonyWindow extends PopupWindow implements IBindingClient
    {
        private var _1590523544windowCanvas:Canvas;
        public var _CeremonyWindow_Image2:Image;
        private var ceremonyTypeSelectWindow:CeremonyTypeSelectWindow;
        var _bindingsBeginWithWord:Object;
        public var checkUnitFromCeremony:CheckUnitFromCeremony;
        private var _embed_mxml__swf_home_ceremony_button_shikihime_lock_50_swf_88206537:Class;
        private var recipeUnionWindow:RecipeUnionWindow;
        public var normalUnionWindow:NormalUnionWindow;
        private var hasLeyLine:Boolean = false;
        private var _252712397playerStatus:PlayerStatus;
        private var unionRecipe:Array;
        private var resourceVO:ResourceVO;
        private var _1252748247productionInfoWindow:ProductionInfoWindow;
        private var _109256131soulCrystal:int;
        private var _490381779unitLayer:Box;
        private var sacrificeUnit:UnitVO;
        private var unionTypeSelectWindow:UnionTypeSelectWindow;
        private var playerVO:PlayerVO;
        private var summonTypeSelectWindow:SummonTypeSelectWindow;
        private var dismissMessageWindow:CeremonyMessageWindow;
        private var ceremonyMessageWindow:CeremonyMessageWindow;
        private var summonAnimationType:String = "normal";
        private var specialSummonWindow:SpecialSummonWindow;
        private var _embed_mxml__images_home_ceremony_jpg_657291853:Class;
        private var _embed_mxml__swf_home_ceremony_button_shikihime_sorting_50_swf_232905261:Class;
        private var _embed_mxml__swf_window_info_home_swf_1388347787:Class;
        private var _embed_mxml__swf_home_ceremony_window_ceremony_swf_1543033097:Class;
        var _watchers:Array;
        private var _2099682666unitStatus:UnitStatus;
        private var _3237038info:Image;
        private var _embed_mxml__swf_home_ceremony_button_shikihime_50_swf_1376704539:Class;
        private var EmbedSwfWindowCommon:Class;
        private var sacrificeUnitWindow:SacrificeUnitWindow;
        private var _1896677185windowLayer:Canvas;
        private var _684773124unitStatusVisible:Boolean = false;
        private var _1847180437factionLayer:Canvas;
        private var ceremonyUnitWindow:CeremonyUnitWindow;
        private var normalSummonWindow:NormalSummonWindow;
        var _bindingsByDestination:Object;
        private var _37701730_summonSwf:MovieClipLoaderAsset;
        private var _659794811rankLayer:Canvas;
        private var _582172204_homeAllUnits:Array;
        private var awakeUnionWindow:AwakeUnionWindow;
        private var summonUnitType:Array;
        private var itemSummonWindow:ItemSummonWindow;
        private var _210758288ceremonyBackGround:Panel;
        private var _embed_mxml__swf_window_info_products_swf_1304559433:Class;
        private var _1003761308products:Image;
        var _bindings:Array;
        private var _documentDescriptor_:UIComponentDescriptor;
        public static const REMOVE_UNIT_SWF:String = NAME + "removeUnitSwf";
        public static const RECIPE_UNION_NEW_UNIT:String = NAME + "recipeUnionNewUnit";
        public static const MESSAGE_WINDOW_END:String = NAME + "messageWindowEnd";
        public static const AWAKE_UNION_NEW_UNIT:String = NAME + "awakeUnionNewUnit";
        public static const OPEN_UNIT_WINDOW_FROM_CEREMONY:String = NAME + "openUnitWindowFromCeremony";
        public static const SHOW_ALERT_CEREMONY_ERROR:String = NAME + "showAlertCeremonyError";
        public static const NORMAL_UNION_NEW_UNIT:String = NAME + "nomalUnionNewUnit";
        public static const SORT_UNIT_LIST:String = NAME + "sortUnitList";
        public static const SPECIAL_SUMMON_NEW_UNIT:String = NAME + "specialSumonNewUnit";
        public static const DISMISSION_UNIT_FROM_CEREMONY:String = NAME + "dismissionUnitFromCeremony";
        public static const INIT_AWAKE_UNION_UNIT_LIST:String = NAME + "initAwakeUnionUnitList";
        public static const NAME:String = "ceremonyWindow";
        public static const CEREMONY_WINDOW_ANIMATION_CHANGE:String = NAME + "ceremonyWindowAnimationChange";
        public static const ADD_UNIT_SWF:String = NAME + "addUnitSwf";
        public static const NO_SACRIFIE_UNITS:String = NAME + "noSacrificeUnits";
        public static const NORMAL_SUMMON_NEW_UNIT:String = NAME + "nomalSumonNewUnit";
        public static const LOCK_UNIT_LIST:String = NAME + "lockUnitList";
        public static const CONFIRM_ITEM_SUMMON:String = NAME + "confirmItemSummon";
        private static var _watcherSetupUtil:IWatcherSetupUtil;
        public static const SACRIFICE_RUN:String = NAME + "sacrificeRun";

        public function CeremonyWindow()
        {
            _documentDescriptor_ = new UIComponentDescriptor({type:PopupWindow, propertiesFactory:function () : Object
            {
                return {childDescriptors:[new UIComponentDescriptor({type:Panel, id:"ceremonyBackGround", stylesFactory:function () : void
                {
                    this.borderSkin = _embed_mxml__images_home_ceremony_jpg_657291853;
                    return;
                }// end function
                , propertiesFactory:function () : Object
                {
                    return {layout:"absolute", width:760, height:560, styleName:"PanelBase"};
                }// end function
                }), new UIComponentDescriptor({type:Image, propertiesFactory:function () : Object
                {
                    return {source:_embed_mxml__swf_home_ceremony_window_ceremony_swf_1543033097};
                }// end function
                }), new UIComponentDescriptor({type:Image, id:"_CeremonyWindow_Image2"}), new UIComponentDescriptor({type:Image, id:"products", propertiesFactory:function () : Object
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
                }), new UIComponentDescriptor({type:Canvas, id:"windowLayer"}), new UIComponentDescriptor({type:Canvas, id:"windowCanvas"}), new UIComponentDescriptor({type:UnitStatus, id:"unitStatus", propertiesFactory:function () : Object
                {
                    return {x:5, y:290};
                }// end function
                }), new UIComponentDescriptor({type:Canvas, propertiesFactory:function () : Object
                {
                    return {x:500, y:5, childDescriptors:[new UIComponentDescriptor({type:HBox, propertiesFactory:function () : Object
                    {
                        return {width:250, height:150};
                    }// end function
                    }), new UIComponentDescriptor({type:Image, events:{click:"___CeremonyWindow_Image5_click"}, propertiesFactory:function () : Object
                    {
                        return {source:_embed_mxml__swf_home_ceremony_button_shikihime_50_swf_1376704539, x:200, y:75};
                    }// end function
                    }), new UIComponentDescriptor({type:Image, events:{click:"___CeremonyWindow_Image6_click"}, propertiesFactory:function () : Object
                    {
                        return {source:_embed_mxml__swf_home_ceremony_button_shikihime_lock_50_swf_88206537, x:200, y:145};
                    }// end function
                    }), new UIComponentDescriptor({type:Image, events:{click:"___CeremonyWindow_Image7_click"}, propertiesFactory:function () : Object
                    {
                        return {source:_embed_mxml__swf_home_ceremony_button_shikihime_sorting_50_swf_232905261, x:200, y:215};
                    }// end function
                    })]};
                }// end function
                }), new UIComponentDescriptor({type:Canvas, id:"factionLayer", propertiesFactory:function () : Object
                {
                    return {x:37, y:17};
                }// end function
                }), new UIComponentDescriptor({type:Canvas, id:"rankLayer", propertiesFactory:function () : Object
                {
                    return {x:58, y:17};
                }// end function
                }), new UIComponentDescriptor({type:Canvas, propertiesFactory:function () : Object
                {
                    return {width:760, height:560, childDescriptors:[new UIComponentDescriptor({type:Box, id:"unitLayer", propertiesFactory:function () : Object
                    {
                        return {x:340, y:195, width:100, height:100};
                    }// end function
                    })]};
                }// end function
                })]};
            }// end function
            });
            ceremonyTypeSelectWindow = new CeremonyTypeSelectWindow();
            summonTypeSelectWindow = new SummonTypeSelectWindow();
            unionTypeSelectWindow = new UnionTypeSelectWindow();
            normalSummonWindow = new NormalSummonWindow();
            itemSummonWindow = new ItemSummonWindow();
            recipeUnionWindow = new RecipeUnionWindow();
            awakeUnionWindow = new AwakeUnionWindow();
            ceremonyMessageWindow = new CeremonyMessageWindow();
            checkUnitFromCeremony = new CheckUnitFromCeremony();
            dismissMessageWindow = new CeremonyMessageWindow();
            sacrificeUnitWindow = new SacrificeUnitWindow();
            EmbedSwfWindowCommon = CeremonyWindow_EmbedSwfWindowCommon;
            _37701730_summonSwf = new EmbedSwfWindowCommon();
            playerVO = new PlayerVO();
            _embed_mxml__images_home_ceremony_jpg_657291853 = CeremonyWindow__embed_mxml__images_home_ceremony_jpg_657291853;
            _embed_mxml__swf_home_ceremony_button_shikihime_50_swf_1376704539 = CeremonyWindow__embed_mxml__swf_home_ceremony_button_shikihime_50_swf_1376704539;
            _embed_mxml__swf_home_ceremony_button_shikihime_lock_50_swf_88206537 = CeremonyWindow__embed_mxml__swf_home_ceremony_button_shikihime_lock_50_swf_88206537;
            _embed_mxml__swf_home_ceremony_button_shikihime_sorting_50_swf_232905261 = CeremonyWindow__embed_mxml__swf_home_ceremony_button_shikihime_sorting_50_swf_232905261;
            _embed_mxml__swf_home_ceremony_window_ceremony_swf_1543033097 = CeremonyWindow__embed_mxml__swf_home_ceremony_window_ceremony_swf_1543033097;
            _embed_mxml__swf_window_info_home_swf_1388347787 = CeremonyWindow__embed_mxml__swf_window_info_home_swf_1388347787;
            _embed_mxml__swf_window_info_products_swf_1304559433 = CeremonyWindow__embed_mxml__swf_window_info_products_swf_1304559433;
            _bindings = [];
            _watchers = [];
            _bindingsByDestination = {};
            _bindingsBeginWithWord = {};
            mx_internal::_document = this;
            return;
        }// end function

        private function get unitStatusVisible() : Boolean
        {
            return this._684773124unitStatusVisible;
        }// end function

        public function showTutMarkNormalSummon() : void
        {
            summonTypeSelectWindow.showTutMarkNormal();
            return;
        }// end function

        private function gotoFirst(event:Event) : void
        {
            addChildCeremonyType();
            this.windowCanvas.removeChild(ceremonyMessageWindow);
            sendEvent(MESSAGE_WINDOW_END);
            return;
        }// end function

        public function initAwakeUnionWindow(param1:Array, param2:Array, param3:ResourceVO) : void
        {
            var units:* = param1;
            var master:* = param2;
            var resource:* = param3;
            if (!awakeUnionWindow.hasEventListener(AwakeUnionWindow.AWAKE_UNION_RUN))
            {
                addEvent(awakeUnionWindow, new Array(AwakeUnionWindow.AWAKE_UNION_RUN, AwakeUnionWindow.AWAKE_UNION_END, AwakeUnionWindow.ADD_UNIT_SWF, AwakeUnionWindow.REMOVE_UNIT_SWF), new Array(awakeUnionRun, closeAwakeUnion, function (event:PopupEvent) : void
            {
                sendPopupEvent(ADD_UNIT_SWF, {unit:event.param.unit, type:event.param.type, window:awakeUnionWindow});
                return;
            }// end function
            , function (event:PopupEvent) : void
            {
                sendPopupEvent(REMOVE_UNIT_SWF, {unit:event.param.unit, window:awakeUnionWindow});
                return;
            }// end function
            ));
            }
            sendPopupEvent(CEREMONY_WINDOW_ANIMATION_CHANGE, {animationName:"bottom_600x200"});
            setUpWindow(awakeUnionWindow, new Point(30, 100));
            awakeUnionWindow.init(units, master, resource);
            this.windowCanvas.removeChild(unionTypeSelectWindow);
            return;
        }// end function

        public function ___CeremonyWindow_Image7_click(event:MouseEvent) : void
        {
            popUpSortWindow();
            return;
        }// end function

        private function addChildSummonType() : void
        {
            if (!summonTypeSelectWindow.hasEventListener(SummonTypeSelectWindow.SUMMON_END))
            {
                summonTypeSelectWindow.addEventListener(SummonTypeSelectWindow.SUMMON_END, closeSummon);
                summonTypeSelectWindow.addEventListener(SummonTypeSelectWindow.CEREMONY_WINDOW_CHANGE, changeSummonWindow);
                addEvent(summonTypeSelectWindow, new Array(SummonTypeSelectWindow.SUMMON_TYPE, SummonTypeSelectWindow.SUMMON_TYPE_SPECIAL, SummonTypeSelectWindow.SUMMON_TYPE_ITEM, SummonTypeSelectWindow.SUMMON_END), new Array(normalSummon, specialSummon, itemSummon, closeSummon));
            }
            summonTypeSelectWindow.callLater(function () : void
            {
                summonTypeSelectWindow.changeWindowSize();
                return;
            }// end function
            );
            setUpWindow(summonTypeSelectWindow, new Point(0, 0));
            return;
        }// end function

        private function itemSummonRun(event:PopupEvent) : void
        {
            sendPopupEvent(CONFIRM_ITEM_SUMMON, event.param);
            return;
        }// end function

        private function changeSummonWindow(event:PopupEvent) : void
        {
            sendPopupEvent(CEREMONY_WINDOW_ANIMATION_CHANGE, {animationName:event.param as String});
            return;
        }// end function

        private function popUpSortWindow() : void
        {
            dispatchEvent(new Event(SORT_UNIT_LIST));
            return;
        }// end function

        public function showTutMarkRecipeUnion() : void
        {
            unionTypeSelectWindow.showTutMarkUnionType();
            return;
        }// end function

        public function init(param1:Object, param2:Array, param3:PlayerVO, param4:ResourceVO, param5:Boolean) : void
        {
            summonUnitType = new Array();
            summonUnitType = param1.summon;
            unionRecipe = param4.recipes;
            _homeAllUnits = new Array();
            _homeAllUnits = param2;
            playerVO = param3;
            resourceVO = param4;
            soulCrystal = playerVO.soulCrystal;
            addChildCeremonyType();
            hasLeyLine = param5;
            return;
        }// end function

        private function _CeremonyWindow_bindingsSetup() : Array
        {
            var binding:Binding;
            var result:Array;
            binding = new Binding(this, function () : Object
            {
                return _summonSwf;
            }// end function
            , function (param1:Object) : void
            {
                _CeremonyWindow_Image2.source = param1;
                return;
            }// end function
            , "_CeremonyWindow_Image2.source");
            result[0] = binding;
            binding = new Binding(this, function () : Boolean
            {
                return unitStatusVisible;
            }// end function
            , function (param1:Boolean) : void
            {
                unitStatus.visible = param1;
                return;
            }// end function
            , "unitStatus.visible");
            result[1] = binding;
            return result;
        }// end function

        private function normalUnion(event:Event) : void
        {
            if (playerVO.playerRankId < 2)
            {
                return;
            }
            addChildNormalUnion();
            this.windowCanvas.removeChild(unionTypeSelectWindow);
            return;
        }// end function

        private function addChildNormalUnion() : void
        {
            if (!normalUnionWindow)
            {
                normalUnionWindow = new NormalUnionWindow();
                addEvent(normalUnionWindow, new Array(NormalUnionWindow.NORMAL_UNION_RUN, NormalUnionWindow.NORMAL_UNION_END, NormalUnionWindow.ADD_UNIT_SWF, NormalUnionWindow.REMOVE_UNIT_SWF), new Array(normalUnionRun, closeNormalUnion, function (event:PopupEvent) : void
            {
                sendPopupEvent(ADD_UNIT_SWF, {unit:event.param.unit, type:event.param.type, window:normalUnionWindow});
                return;
            }// end function
            , function (event:PopupEvent) : void
            {
                sendPopupEvent(REMOVE_UNIT_SWF, {unit:event.param.unit, window:normalUnionWindow});
                return;
            }// end function
            ));
            }
            sendPopupEvent(CEREMONY_WINDOW_ANIMATION_CHANGE, {animationName:"bottom_600x200_unite"});
            setUpWindow(normalUnionWindow, new Point(0, 0));
            normalUnionWindow.homeAllUnits = _homeAllUnits;
            normalUnionWindow.soulCrystal = playerVO.soulCrystal;
            normalUnionWindow.init(hasLeyLine);
            return;
        }// end function

        public function get unitLayer() : Box
        {
            return this._490381779unitLayer;
        }// end function

        private function get soulCrystal() : int
        {
            return this._109256131soulCrystal;
        }// end function

        public function set rankLayer(param1:Canvas) : void
        {
            var _loc_2:* = this._659794811rankLayer;
            if (_loc_2 !== param1)
            {
                this._659794811rankLayer = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "rankLayer", _loc_2, param1));
            }
            return;
        }// end function

        public function set factionLayer(param1:Canvas) : void
        {
            var _loc_2:* = this._1847180437factionLayer;
            if (_loc_2 !== param1)
            {
                this._1847180437factionLayer = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "factionLayer", _loc_2, param1));
            }
            return;
        }// end function

        public function set unitStatus(param1:UnitStatus) : void
        {
            var _loc_2:* = this._2099682666unitStatus;
            if (_loc_2 !== param1)
            {
                this._2099682666unitStatus = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "unitStatus", _loc_2, param1));
            }
            return;
        }// end function

        private function specialSummonRun(event:PopupEvent) : void
        {
            if (summonTypeSelectWindow)
            {
                summonTypeSelectWindow.init();
            }
            sendPopupEvent(SPECIAL_SUMMON_NEW_UNIT, {type:event.param});
            this.windowCanvas.removeChild(specialSummonWindow);
            windowLayer.visible = false;
            if (event.param == "brave")
            {
                startSummonAnimation("summon_brave");
            }
            else
            {
                startSummonAnimation("summon_hero");
            }
            return;
        }// end function

        public function stopSummonAnimation() : void
        {
            var _loc_1:* = MovieClip(Loader(_summonSwf.getChildAt(0)).content).currentLabel;
            if (_loc_1 != "stage_first")
            {
                MovieClip(Loader(_summonSwf.getChildAt(0)).content).gotoAndPlay("stage_" + summonAnimationType + "_02");
            }
            return;
        }// end function

        private function normalUnionRun(event:PopupEvent) : void
        {
            sendPopupEvent(NORMAL_UNION_NEW_UNIT, {yangUnit:event.param.yangUnit, yinUnit:event.param.yinUnit});
            this.windowCanvas.removeChild(normalUnionWindow);
            windowLayer.visible = false;
            startSummonAnimation("summon_normal");
            return;
        }// end function

        private function closeSacrificeUnit(event:Event) : void
        {
            addChildCeremonyType();
            this.windowCanvas.removeChild(sacrificeUnitWindow);
            return;
        }// end function

        private function closeNormalUnion(event:Event) : void
        {
            addChildUnionType();
            this.windowCanvas.removeChild(normalUnionWindow);
            return;
        }// end function

        public function get playerStatus() : PlayerStatus
        {
            return this._252712397playerStatus;
        }// end function

        public function get windowLayer() : Canvas
        {
            return this._1896677185windowLayer;
        }// end function

        private function awakeUnion(event:Event) : void
        {
            sendEvent(INIT_AWAKE_UNION_UNIT_LIST);
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

        public function initNormalSummonTmarks(param1:Boolean) : void
        {
            normalSummonWindow.setTutMarkVisible(param1);
            return;
        }// end function

        public function initAnimation() : void
        {
            MovieClip(Loader(_summonSwf.getChildAt(0)).content).gotoAndPlay("stage_first");
            return;
        }// end function

        public function finishAnimation(param1:Function) : void
        {
            var afterCallback:* = param1;
            Loader(_summonSwf.getChildAt(0)).content.addEventListener("ENLARGE_END", function (event:Event) : void
            {
                Loader(_summonSwf.getChildAt(0)).content.removeEventListener("ENLARGE_END", arguments.callee);
                if (afterCallback != null)
                {
                    afterCallback.call();
                }
                return;
            }// end function
            );
            MovieClip(Loader(_summonSwf.getChildAt(0)).content).gotoAndPlay("stage_" + summonAnimationType + "_02");
            trace("finishAnimation type:" + summonAnimationType);
            return;
        }// end function

        public function initRecipeUnionTmarks(param1:Boolean) : void
        {
            recipeUnionWindow.setTutMarkVisible(param1);
            return;
        }// end function

        private function addChildNormalSummon() : void
        {
            if (!normalSummonWindow.hasEventListener(NormalSummonWindow.NORMAL_SUMMON_RUN))
            {
                addEvent(normalSummonWindow, new Array(NormalSummonWindow.NORMAL_SUMMON_RUN, NormalSummonWindow.NORMAL_SUMMON_END), new Array(normalSummonRun, closeNormalSummon));
            }
            normalSummonWindow.init(playerVO, resourceVO, summonUnitType, hasLeyLine);
            setUpWindow(normalSummonWindow, new Point(0, 0));
            return;
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

        public function get windowCanvas() : Canvas
        {
            return this._1590523544windowCanvas;
        }// end function

        private function closeAwakeUnion(event:Event) : void
        {
            addChildUnionType();
            this.windowCanvas.removeChild(awakeUnionWindow);
            return;
        }// end function

        public function removeSacrificeUnit() : void
        {
            unitLayer.removeAllChildren();
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

        private function unionCeremony(event:Event) : void
        {
            addChildUnionType();
            this.windowCanvas.removeChild(ceremonyTypeSelectWindow);
            return;
        }// end function

        public function set unitLayer(param1:Box) : void
        {
            var _loc_2:* = this._490381779unitLayer;
            if (_loc_2 !== param1)
            {
                this._490381779unitLayer = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "unitLayer", _loc_2, param1));
            }
            return;
        }// end function

        public function get products() : Image
        {
            return this._1003761308products;
        }// end function

        private function addEvent(param1:DisplayObject, param2:Array, param3:Array) : void
        {
            var _loc_4:int = 0;
            while (_loc_4 < param2.length)
            {
                
                param1.addEventListener(param2[_loc_4], param3[_loc_4]);
                _loc_4++;
            }
            return;
        }// end function

        public function addChildCeremonyType() : void
        {
            windowLayer.visible = true;
            initAnimation();
            if (!ceremonyTypeSelectWindow.hasEventListener(CeremonyTypeSelectWindow.SUMMON_CEREMONY))
            {
                addEvent(ceremonyTypeSelectWindow, new Array(CeremonyTypeSelectWindow.SUMMON_CEREMONY, CeremonyTypeSelectWindow.UNION_CEREMONY, CeremonyTypeSelectWindow.SACRIFICE_CEREMONY, CeremonyTypeSelectWindow.CLOSE_CEREMONY), new Array(summonCeremony, unionCeremony, sacrificeCeremony, closeCeremony));
            }
            else
            {
                sendPopupEvent(CEREMONY_WINDOW_ANIMATION_CHANGE, {animationName:"bottom_600x200"});
            }
            setUpWindow(ceremonyTypeSelectWindow, new Point(0, 0));
            return;
        }// end function

        public function get ceremonyBackGround() : Panel
        {
            return this._210758288ceremonyBackGround;
        }// end function

        private function popUpUnitWindow() : void
        {
            if (!checkUnitFromCeremony.hasEventListener(CheckUnitFromCeremony.DISMISS_FROM_CEREMONY))
            {
                checkUnitFromCeremony.addEventListener(CheckUnitFromCeremony.DISMISS_FROM_CEREMONY, function (event:Event) : void
            {
                sendPopupEvent(DISMISSION_UNIT_FROM_CEREMONY, {unit:checkUnitFromCeremony.selectUnit});
                return;
            }// end function
            );
            }
            checkUnitFromCeremony.gold = playerVO.gold;
            checkUnitFromCeremony.units = _homeAllUnits;
            if (normalUnionWindow)
            {
                if (this.windowCanvas.contains(normalUnionWindow))
                {
                    checkUnitFromCeremony.unionUnit = normalUnionWindow.yang;
                }
            }
            if (recipeUnionWindow)
            {
                if (this.windowCanvas.contains(recipeUnionWindow))
                {
                    checkUnitFromCeremony.unionUnit = recipeUnionWindow.yang;
                }
            }
            popupWindow(checkUnitFromCeremony);
            checkUnitFromCeremony.init();
            dispatchEvent(new Event(OPEN_UNIT_WINDOW_FROM_CEREMONY));
            unitStatusVisible = false;
            return;
        }// end function

        private function summonCeremony(event:Event) : void
        {
            addChildSummonType();
            this.windowCanvas.removeChild(ceremonyTypeSelectWindow);
            return;
        }// end function

        private function addChildSprecialSummon(param1:String) : void
        {
            if (!specialSummonWindow)
            {
                specialSummonWindow = new SpecialSummonWindow();
                addEvent(specialSummonWindow, new Array(SpecialSummonWindow.CLOSE_WINDOW, SpecialSummonWindow.SPECIAL_SUMMON_RUN), new Array(closeSpecialSummon, specialSummonRun));
            }
            setUpWindow(specialSummonWindow, new Point(0, 0));
            specialSummonWindow.init(playerVO, param1, resourceVO);
            return;
        }// end function

        public function get rankLayer() : Canvas
        {
            return this._659794811rankLayer;
        }// end function

        private function set soulCrystal(param1:int) : void
        {
            var _loc_2:* = this._109256131soulCrystal;
            if (_loc_2 !== param1)
            {
                this._109256131soulCrystal = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "soulCrystal", _loc_2, param1));
            }
            return;
        }// end function

        public function itemSummonFinish(param1:Object) : void
        {
            popupWindow(itemSummonWindow, false);
            if (this.windowCanvas.contains(summonTypeSelectWindow))
            {
                this.windowCanvas.removeChild(summonTypeSelectWindow);
            }
            itemSummonWindow.setDrawItem(param1);
            return;
        }// end function

        public function ___CeremonyWindow_Image5_click(event:MouseEvent) : void
        {
            popUpUnitWindow();
            return;
        }// end function

        public function showTutMarkSummon() : void
        {
            ceremonyTypeSelectWindow.showTutMarkSummon();
            return;
        }// end function

        public function addChildMessage(param1:Object, param2:String, param3:ResourceVO) : void
        {
            if (!ceremonyMessageWindow.hasEventListener(CeremonyMessageWindow.MESSAGE_OK))
            {
                addEvent(ceremonyMessageWindow, new Array(CeremonyMessageWindow.MESSAGE_OK), new Array(gotoFirst));
            }
            setUpWindow(ceremonyMessageWindow, new Point(0, 0), true);
            ceremonyMessageWindow.newUnit = param1;
            unitStatus.unit = new UnitVO();
            unitStatus.unit = UnitVO(param1);
            switch(param2)
            {
                case CeremonyMessageWindow.NORMAL_SUMMON_MESSAGE:
                {
                    ceremonyMessageWindow.init("top_240x80");
                    ceremonyMessageWindow.messageText = Utils.i18n("ceremonySummonComplete");
                    break;
                }
                case CeremonyMessageWindow.SUMMON_MESSAGE:
                {
                    ceremonyMessageWindow.init("top_240x80");
                    ceremonyMessageWindow.messageText = Utils.i18n("ceremonySummonCompleteNew");
                    break;
                }
                case CeremonyMessageWindow.UNION_MESSAGE:
                {
                    ceremonyMessageWindow.messageText = Utils.i18n("ceremonyUnionComplete");
                    break;
                }
                case CeremonyMessageWindow.AWAKE_UNION_MESSAGE:
                {
                    ceremonyMessageWindow.messageText = Utils.i18n("ceremonyAwakeUnionComplete");
                    break;
                }
                default:
                {
                    break;
                }
            }
            soulCrystal = playerVO.soulCrystal;
            resourceVO = param3;
            return;
        }// end function

        public function set windowCanvas(param1:Canvas) : void
        {
            var _loc_2:* = this._1590523544windowCanvas;
            if (_loc_2 !== param1)
            {
                this._1590523544windowCanvas = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "windowCanvas", _loc_2, param1));
            }
            return;
        }// end function

        private function get _summonSwf() : MovieClipLoaderAsset
        {
            return this._37701730_summonSwf;
        }// end function

        override public function initialize() : void
        {
            var target:CeremonyWindow;
            var watcherSetupUtilClass:Object;
            .mx_internal::setDocumentDescriptor(_documentDescriptor_);
            var bindings:* = _CeremonyWindow_bindingsSetup();
            var watchers:Array;
            target;
            if (_watcherSetupUtil == null)
            {
                watcherSetupUtilClass = getDefinitionByName("_com_kbmj_viking_view_home_CeremonyWindowWatcherSetupUtil");
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

        public function set homeAllUnits(param1:Array) : void
        {
            _homeAllUnits = param1;
            return;
        }// end function

        public function get unitStatus() : UnitStatus
        {
            return this._2099682666unitStatus;
        }// end function

        public function removeTutMarks() : void
        {
            ceremonyTypeSelectWindow.removeTutMarks();
            summonTypeSelectWindow.removeTutMarks();
            unionTypeSelectWindow.removeTutMarks();
            return;
        }// end function

        public function get info() : Image
        {
            return this._3237038info;
        }// end function

        private function normalSummon(event:Event) : void
        {
            addChildNormalSummon();
            this.windowCanvas.removeChild(summonTypeSelectWindow);
            return;
        }// end function

        private function get _homeAllUnits() : Array
        {
            return this._582172204_homeAllUnits;
        }// end function

        private function closeCeremony(event:Event) : void
        {
            this.windowCanvas.removeChild(ceremonyTypeSelectWindow);
            this.onClose();
            return;
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

        private function closeUnion(event:Event) : void
        {
            addChildCeremonyType();
            this.windowCanvas.removeChild(unionTypeSelectWindow);
            return;
        }// end function

        public function ___CeremonyWindow_Image6_click(event:MouseEvent) : void
        {
            popUpLockWindow();
            return;
        }// end function

        private function closeNormalSummon(event:Event) : void
        {
            addChildSummonType();
            this.windowCanvas.removeChild(normalSummonWindow);
            return;
        }// end function

        public function get factionLayer() : Canvas
        {
            return this._1847180437factionLayer;
        }// end function

        private function _CeremonyWindow_bindingExprs() : void
        {
            var _loc_1:* = undefined;
            _loc_1 = _summonSwf;
            _loc_1 = unitStatusVisible;
            return;
        }// end function

        private function closeRecipeUnion(event:Event) : void
        {
            addChildUnionType();
            this.windowCanvas.removeChild(recipeUnionWindow);
            return;
        }// end function

        private function normalSummonRun(event:PopupEvent) : void
        {
            sendPopupEvent(NORMAL_SUMMON_NEW_UNIT, {summon:event.param.summon});
            this.windowCanvas.removeChild(normalSummonWindow);
            windowLayer.visible = false;
            startSummonAnimation("summon_normal");
            return;
        }// end function

        private function set _summonSwf(param1:MovieClipLoaderAsset) : void
        {
            var _loc_2:* = this._37701730_summonSwf;
            if (_loc_2 !== param1)
            {
                this._37701730_summonSwf = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "_summonSwf", _loc_2, param1));
            }
            return;
        }// end function

        public function showTutMarkUnion() : void
        {
            ceremonyTypeSelectWindow.showTutMarkUnion();
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

        private function addChildSacrificeType() : void
        {
            var units:* = _homeAllUnits.filter(function (param1:UnitVO, param2:int, param3:Array) : Boolean
            {
                return param1.sacrificible;
            }// end function
            );
            if (units.length == 0)
            {
                sendEvent(NO_SACRIFIE_UNITS);
                addChildCeremonyType();
                return;
            }
            if (!sacrificeUnitWindow.hasEventListener(SacrificeUnitWindow.SACRIFICE_UNIT_RUN))
            {
                addEvent(sacrificeUnitWindow, new Array(SacrificeUnitWindow.SACRIFICE_UNIT_RUN, SacrificeUnitWindow.SACRIFICE_WINDOW_END, SacrificeUnitWindow.ADD_UNIT_SWF, SacrificeUnitWindow.REMOVE_UNIT_SWF), new Array(sacrificeUnitRun, closeSacrificeUnit, function (event:PopupEvent) : void
            {
                sendPopupEvent(ADD_UNIT_SWF, {unit:event.param.unit, type:event.param.type, window:null});
                sacrificeUnit = event.param.unit;
                return;
            }// end function
            , function (event:PopupEvent) : void
            {
                removeSacrificeUnit();
                return;
            }// end function
            ));
            }
            sacrificeUnitWindow.init(_homeAllUnits.filter(function (param1:UnitVO, param2:int, param3:Array) : Boolean
            {
                return param1.sacrificible;
            }// end function
            ));
            setUpWindow(sacrificeUnitWindow, new Point(0, 0));
            return;
        }// end function

        private function sacrificeCeremony(event:Event) : void
        {
            this.windowCanvas.removeChild(ceremonyTypeSelectWindow);
            addChildSacrificeType();
            return;
        }// end function

        private function itemSummon(event:PopupEvent) : void
        {
            addEvent(itemSummonWindow, new Array(ItemSummonWindow.ITEM_SUMMON_START, ItemSummonWindow.ITEM_SUMMON_END), new Array(itemSummonRun, closeItemSummon));
            sendPopupEvent(CONFIRM_ITEM_SUMMON, event.param);
            return;
        }// end function

        public function get productionInfoWindow() : ProductionInfoWindow
        {
            return this._1252748247productionInfoWindow;
        }// end function

        public function set ceremonyBackGround(param1:Panel) : void
        {
            var _loc_2:* = this._210758288ceremonyBackGround;
            if (_loc_2 !== param1)
            {
                this._210758288ceremonyBackGround = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "ceremonyBackGround", _loc_2, param1));
            }
            return;
        }// end function

        private function awakeUnionRun(event:PopupEvent) : void
        {
            sendPopupEvent(AWAKE_UNION_NEW_UNIT, {unit:event.param.unit});
            this.windowCanvas.removeChild(awakeUnionWindow);
            windowLayer.visible = false;
            startSummonAnimation("summon_normal");
            return;
        }// end function

        private function closeSpecialSummon(event:Event) : void
        {
            addChildSummonType();
            this.windowCanvas.removeChild(specialSummonWindow);
            specialSummonWindow = null;
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

        private function addChildRecipeUnion() : void
        {
            if (!recipeUnionWindow.hasEventListener(RecipeUnionWindow.RECIPE_UNION_RUN))
            {
                addEvent(recipeUnionWindow, new Array(RecipeUnionWindow.RECIPE_UNION_RUN, RecipeUnionWindow.RECIPE_UNION_END, RecipeUnionWindow.ADD_UNIT_SWF, RecipeUnionWindow.REMOVE_UNIT_SWF), new Array(recipeUnionRun, closeRecipeUnion, function (event:PopupEvent) : void
            {
                sendPopupEvent(ADD_UNIT_SWF, {unit:event.param.unit, type:event.param.type, window:recipeUnionWindow});
                return;
            }// end function
            , function (event:PopupEvent) : void
            {
                sendPopupEvent(REMOVE_UNIT_SWF, {unit:event.param.unit, window:recipeUnionWindow});
                return;
            }// end function
            ));
            }
            sendPopupEvent(CEREMONY_WINDOW_ANIMATION_CHANGE, {animationName:"bottom_600x200_unite"});
            setUpWindow(recipeUnionWindow, new Point(30, 100));
            recipeUnionWindow.homeAllUnits = _homeAllUnits;
            recipeUnionWindow.allRecipe = unionRecipe;
            recipeUnionWindow.soulCrystal = playerVO.soulCrystal;
            recipeUnionWindow.resourceVO = resourceVO;
            recipeUnionWindow.init(hasLeyLine);
            return;
        }// end function

        private function popUpLockWindow() : void
        {
            dispatchEvent(new Event(LOCK_UNIT_LIST));
            return;
        }// end function

        private function recipeUnion(event:Event) : void
        {
            addChildRecipeUnion();
            this.windowCanvas.removeChild(unionTypeSelectWindow);
            return;
        }// end function

        private function setUpWindow(param1:DisplayObject, param2:Point, param3:Boolean = false) : void
        {
            this.windowCanvas.addChild(param1);
            param1.x = param2.x;
            param1.y = param2.y;
            unitStatusVisible = param3;
            return;
        }// end function

        private function startSummonAnimation(param1:String) : void
        {
            MovieClip(Loader(_summonSwf.getChildAt(0)).content).gotoAndPlay("stage_" + param1 + "_01");
            summonAnimationType = param1;
            trace("startAnimation type:" + summonAnimationType);
            return;
        }// end function

        private function recipeUnionRun(event:PopupEvent) : void
        {
            sendPopupEvent(RECIPE_UNION_NEW_UNIT, {yangUnit:event.param.yangUnit, yinUnit:event.param.yinUnit, recipeId:event.param.recipeId});
            this.windowCanvas.removeChild(recipeUnionWindow);
            windowLayer.visible = false;
            startSummonAnimation("summon_normal");
            return;
        }// end function

        private function closeItemSummon(event:Event) : void
        {
            addChildSummonType();
            return;
        }// end function

        private function addChildUnionType() : void
        {
            if (!unionTypeSelectWindow.hasEventListener(UnionTypeSelectWindow.UNION_END))
            {
                unionTypeSelectWindow.addEventListener(UnionTypeSelectWindow.UNION_END, closeUnion);
                addEvent(unionTypeSelectWindow, new Array(UnionTypeSelectWindow.UNION_TYPE_NORMAL, UnionTypeSelectWindow.UNION_TYPE_RECIPE, UnionTypeSelectWindow.UNION_TYPE_AWAKE, UnionTypeSelectWindow.UNION_END), new Array(normalUnion, recipeUnion, awakeUnion, closeUnion));
            }
            else
            {
                sendPopupEvent(CEREMONY_WINDOW_ANIMATION_CHANGE, {animationName:"bottom_600x200"});
            }
            unionTypeSelectWindow.init(playerVO.playerRankId);
            setUpWindow(unionTypeSelectWindow, new Point(0, 0));
            return;
        }// end function

        private function sacrificeUnitRun(event:PopupEvent) : void
        {
            sendPopupEvent(SACRIFICE_RUN, event.param);
            this.windowCanvas.removeChild(sacrificeUnitWindow);
            windowLayer.visible = false;
            startSummonAnimation("sacrifice");
            return;
        }// end function

        public function addChildDismissMessage() : void
        {
            popupWindow(dismissMessageWindow, false);
            dismissMessageWindow.init("top_240x80");
            dismissMessageWindow.addEventListener(CeremonyMessageWindow.MESSAGE_OK, function (event:Event) : void
            {
                dismissMessageWindow.closed();
                return;
            }// end function
            );
            dismissMessageWindow.messageText = Utils.i18n("ceremonyDismissComplete");
            dismissMessageWindow.newUnit = checkUnitFromCeremony.selectUnit;
            return;
        }// end function

        private function closeSummon(event:Event) : void
        {
            addChildCeremonyType();
            this.windowCanvas.removeChild(summonTypeSelectWindow);
            return;
        }// end function

        private function specialSummon(event:PopupEvent) : void
        {
            var _loc_2:* = event.param as String;
            if (_loc_2 == "rainbow" && playerVO.playerRankId < 9)
            {
                sendPopupEvent(SHOW_ALERT_CEREMONY_ERROR, Utils.i18n("localize90"));
                return;
            }
            summonTypeSelectWindow.changeDefaultWindow();
            addChildSprecialSummon(_loc_2);
            this.windowCanvas.removeChild(summonTypeSelectWindow);
            return;
        }// end function

        private function set unitStatusVisible(param1:Boolean) : void
        {
            var _loc_2:* = this._684773124unitStatusVisible;
            if (_loc_2 !== param1)
            {
                this._684773124unitStatusVisible = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "unitStatusVisible", _loc_2, param1));
            }
            return;
        }// end function

        public static function set watcherSetupUtil(param1:IWatcherSetupUtil) : void
        {
            _watcherSetupUtil = param1;
            return;
        }// end function

    }
}
