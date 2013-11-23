package com.kbmj.viking.view.home
{
    import com.kbmj.viking.lib.*;
    import com.kbmj.viking.view.*;
    import com.kbmj.viking.vo.*;
    import com.kbmj.viking.vo.home.*;
    import flash.display.*;
    import flash.events.*;
    import flash.utils.*;
    import mx.binding.*;
    import mx.collections.*;
    import mx.containers.*;
    import mx.controls.*;
    import mx.core.*;
    import mx.events.*;
    import mx.managers.*;

    public class BaseBuildingWindow extends PopupWindow implements IBindingClient
    {
        private var _1536737662_swf_ceremony:MovieClipLoaderAsset;
        private var _1311442205goldColor:uint;
        private var _1064901855minutes:int;
        private var _1075873300_swf_window:MovieClipLoaderAsset;
        private var _1941286474_swf_enlarge:MovieClipLoaderAsset;
        private var _1623579737_swf_delete:MovieClipLoaderAsset;
        private var _ownMaterials:Array;
        private var _windowLabel:String;
        public var _BaseBuildingWindow_Canvas3:Canvas;
        private var _1151144213_strImgPosX:int = 65;
        public var _BaseBuildingWindow_Text1:Text;
        public var _BaseBuildingWindow_Text3:Text;
        private var _ownMoney:int;
        public var _BaseBuildingWindow_Image1:Image;
        public var _BaseBuildingWindow_Image3:Image;
        private var _1167548908_swf_close_update:MovieClipLoaderAsset;
        public var _BaseBuildingWindow_Text4:Text;
        private var _1469326001_buidingLevel:String;
        private var _1081154686maxNum:int = 0;
        var _bindingsByDestination:Object;
        private var _1789918360cancelVisible:Boolean = true;
        private var _1205943177_swf_power:MovieClipLoaderAsset;
        private var _1713538547moneyText:Text;
        public var units:Array;
        private var crashWindow:Crash;
        private var _1046077723_swf_close_ceremony:MovieClipLoaderAsset;
        private var _461356947buildingVO:BuildingVO;
        public var areaId:int;
        private var _689216666_swf_enlarge_off:MovieClipLoaderAsset;
        private var _1151144214_strImgPosY:int = 47;
        private var _1896677185windowLayer:Canvas;
        private var _materialMaster:Object;
        var _watchers:Array;
        private var _203859637materialVisible:Boolean = true;
        private var _735561065materialsColor:ArrayCollection;
        private var _1995960111construction:ConstructionVO;
        public var buttonEnabled:Boolean = false;
        private var _1879661617neccesaryRank:String;
        private var _embed_mxml__swf_common_button_close_window_swf_1370265653:Class;
        public var _BaseBuildingWindow_Label1:Label;
        public var _BaseBuildingWindow_Label2:Label;
        public var _BaseBuildingWindow_Label3:Label;
        public var _BaseBuildingWindow_Label4:Label;
        public var _BaseBuildingWindow_Label5:Label;
        public var _BaseBuildingWindow_Label6:Label;
        private var _560474467updateBuilding:Boolean = false;
        var _bindingsBeginWithWord:Object;
        private var _1599459278enlarge:Image;
        private var enoughObject:Array;
        private var _1124089891enlargeOff:Image;
        private var _208977483buildMaterial:Object;
        var _bindings:Array;
        public var buildingId:int;
        private var _287677740buildingCanvas:Canvas;
        private var _documentDescriptor_:UIComponentDescriptor;
        private static const ABILITY_LABELS:Object = {strength:Utils.i18n("generalStrength"), intelligence:Utils.i18n("generalIntelligence"), tech:Utils.i18n("generalTech"), agility:Utils.i18n("generalAgility"), defense:Utils.i18n("generalDefense"), luck:Utils.i18n("generalLuck")};
        private static var _watcherSetupUtil:IWatcherSetupUtil;
        public static const OPEN_UNIT_LIST:String = "BaseBuildingWindow/openUnitList";

        public function BaseBuildingWindow()
        {
            _documentDescriptor_ = new UIComponentDescriptor({type:PopupWindow, propertiesFactory:function () : Object
            {
                return {childDescriptors:[new UIComponentDescriptor({type:Canvas, id:"windowLayer"}), new UIComponentDescriptor({type:Image, id:"_BaseBuildingWindow_Image1", propertiesFactory:function () : Object
                {
                    return {x:0, y:0};
                }// end function
                }), new UIComponentDescriptor({type:Label, id:"_BaseBuildingWindow_Label1", propertiesFactory:function () : Object
                {
                    return {styleName:"ProductionTitle", x:340, y:145};
                }// end function
                }), new UIComponentDescriptor({type:Label, id:"_BaseBuildingWindow_Label2", propertiesFactory:function () : Object
                {
                    return {styleName:"ClickStructureName", x:70, y:180};
                }// end function
                }), new UIComponentDescriptor({type:Canvas, id:"buildingCanvas", propertiesFactory:function () : Object
                {
                    return {x:120, y:120, childDescriptors:[new UIComponentDescriptor({type:HBox, propertiesFactory:function () : Object
                    {
                        return {y:40};
                    }// end function
                    }), new UIComponentDescriptor({type:Image, events:{click:"___BaseBuildingWindow_Image2_click"}, propertiesFactory:function () : Object
                    {
                        return {x:435, y:25, source:_embed_mxml__swf_common_button_close_window_swf_1370265653};
                    }// end function
                    }), new UIComponentDescriptor({type:Image, id:"_BaseBuildingWindow_Image3", events:{click:"___BaseBuildingWindow_Image3_click"}, propertiesFactory:function () : Object
                    {
                        return {x:260, y:230};
                    }// end function
                    }), new UIComponentDescriptor({type:Image, id:"enlarge", events:{click:"__enlarge_click"}, propertiesFactory:function () : Object
                    {
                        return {x:130, y:230};
                    }// end function
                    }), new UIComponentDescriptor({type:Image, id:"enlargeOff", propertiesFactory:function () : Object
                    {
                        return {x:130, y:230};
                    }// end function
                    })]};
                }// end function
                }), new UIComponentDescriptor({type:Canvas, id:"_BaseBuildingWindow_Canvas3", propertiesFactory:function () : Object
                {
                    return {x:230, y:230, childDescriptors:[new UIComponentDescriptor({type:Grid, stylesFactory:function () : void
                    {
                        this.horizontalGap = 30;
                        this.verticalGap = 0;
                        return;
                    }// end function
                    , propertiesFactory:function () : Object
                    {
                        return {width:350, childDescriptors:[new UIComponentDescriptor({type:GridRow, propertiesFactory:function () : Object
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
                                return {childDescriptors:[new UIComponentDescriptor({type:Label, id:"_BaseBuildingWindow_Label3", stylesFactory:function () : void
                                {
                                    this.fontSize = 14;
                                    this.textAlign = "center";
                                    this.color = 15658734;
                                    return;
                                }// end function
                                , propertiesFactory:function () : Object
                                {
                                    return {width:80};
                                }// end function
                                })]};
                            }// end function
                            })]};
                        }// end function
                        }), new UIComponentDescriptor({type:GridRow, propertiesFactory:function () : Object
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
                                return {childDescriptors:[new UIComponentDescriptor({type:Label, id:"_BaseBuildingWindow_Label4", stylesFactory:function () : void
                                {
                                    this.fontSize = 14;
                                    this.textAlign = "center";
                                    this.color = 15658734;
                                    return;
                                }// end function
                                , propertiesFactory:function () : Object
                                {
                                    return {width:80};
                                }// end function
                                })]};
                            }// end function
                            })]};
                        }// end function
                        }), new UIComponentDescriptor({type:GridRow, propertiesFactory:function () : Object
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
                                return {childDescriptors:[new UIComponentDescriptor({type:Label, id:"_BaseBuildingWindow_Label5", stylesFactory:function () : void
                                {
                                    this.fontSize = 14;
                                    this.textAlign = "center";
                                    this.color = 15658734;
                                    return;
                                }// end function
                                , propertiesFactory:function () : Object
                                {
                                    return {width:80};
                                }// end function
                                })]};
                            }// end function
                            })]};
                        }// end function
                        }), new UIComponentDescriptor({type:GridRow, propertiesFactory:function () : Object
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
                                return {childDescriptors:[new UIComponentDescriptor({type:Label, id:"_BaseBuildingWindow_Label6", stylesFactory:function () : void
                                {
                                    this.fontSize = 14;
                                    this.textAlign = "center";
                                    this.color = 15658734;
                                    return;
                                }// end function
                                , propertiesFactory:function () : Object
                                {
                                    return {width:80};
                                }// end function
                                })]};
                            }// end function
                            })]};
                        }// end function
                        })]};
                    }// end function
                    }), new UIComponentDescriptor({type:Grid, stylesFactory:function () : void
                    {
                        this.horizontalGap = 30;
                        this.verticalGap = 0;
                        return;
                    }// end function
                    , propertiesFactory:function () : Object
                    {
                        return {x:84, width:310, childDescriptors:[new UIComponentDescriptor({type:GridRow, propertiesFactory:function () : Object
                        {
                            return {childDescriptors:[new UIComponentDescriptor({type:GridItem, stylesFactory:function () : void
                            {
                                this.borderStyle = "outset";
                                this.borderColor = 2829099;
                                this.backgroundColor = 14803650;
                                return;
                            }// end function
                            , propertiesFactory:function () : Object
                            {
                                return {childDescriptors:[new UIComponentDescriptor({type:Text, id:"_BaseBuildingWindow_Text1", stylesFactory:function () : void
                                {
                                    this.fontSize = 14;
                                    this.textAlign = "center";
                                    return;
                                }// end function
                                , propertiesFactory:function () : Object
                                {
                                    return {width:212};
                                }// end function
                                })]};
                            }// end function
                            })]};
                        }// end function
                        }), new UIComponentDescriptor({type:GridRow, propertiesFactory:function () : Object
                        {
                            return {childDescriptors:[new UIComponentDescriptor({type:GridItem, stylesFactory:function () : void
                            {
                                this.borderStyle = "outset";
                                this.borderColor = 2829099;
                                this.backgroundColor = 16119005;
                                return;
                            }// end function
                            , propertiesFactory:function () : Object
                            {
                                return {childDescriptors:[new UIComponentDescriptor({type:Text, id:"moneyText", stylesFactory:function () : void
                                {
                                    this.fontSize = 14;
                                    this.textAlign = "center";
                                    return;
                                }// end function
                                , propertiesFactory:function () : Object
                                {
                                    return {width:212};
                                }// end function
                                })]};
                            }// end function
                            })]};
                        }// end function
                        }), new UIComponentDescriptor({type:GridRow, propertiesFactory:function () : Object
                        {
                            return {childDescriptors:[new UIComponentDescriptor({type:GridItem, stylesFactory:function () : void
                            {
                                this.borderStyle = "outset";
                                this.borderColor = 2829099;
                                this.backgroundColor = 14803650;
                                return;
                            }// end function
                            , propertiesFactory:function () : Object
                            {
                                return {childDescriptors:[new UIComponentDescriptor({type:Text, id:"_BaseBuildingWindow_Text3", stylesFactory:function () : void
                                {
                                    this.fontSize = 14;
                                    this.textAlign = "center";
                                    return;
                                }// end function
                                , propertiesFactory:function () : Object
                                {
                                    return {width:212};
                                }// end function
                                })]};
                            }// end function
                            })]};
                        }// end function
                        }), new UIComponentDescriptor({type:GridRow, propertiesFactory:function () : Object
                        {
                            return {childDescriptors:[new UIComponentDescriptor({type:GridItem, stylesFactory:function () : void
                            {
                                this.borderStyle = "outset";
                                this.borderColor = 2829099;
                                this.backgroundColor = 16119005;
                                return;
                            }// end function
                            , propertiesFactory:function () : Object
                            {
                                return {childDescriptors:[new UIComponentDescriptor({type:Text, id:"_BaseBuildingWindow_Text4", stylesFactory:function () : void
                                {
                                    this.fontSize = 14;
                                    this.textAlign = "center";
                                    return;
                                }// end function
                                , propertiesFactory:function () : Object
                                {
                                    return {width:212};
                                }// end function
                                })]};
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
            _1167548908_swf_close_update = new Viking.EmbedSwfButtonCommon();
            _1941286474_swf_enlarge = new Viking.EmbedSwfButtonCommon();
            _689216666_swf_enlarge_off = new Viking.EmbedSwfButtonCommon();
            _1046077723_swf_close_ceremony = new Viking.EmbedSwfButtonCommon();
            _1536737662_swf_ceremony = new Viking.EmbedSwfButtonCommon();
            _1623579737_swf_delete = new Viking.EmbedSwfButtonCommon();
            _1205943177_swf_power = new Viking.EmbedSwfButtonPower();
            _1075873300_swf_window = new Viking.EmbedSwfWindowCommon();
            crashWindow = new Crash();
            _materialMaster = new Object();
            _ownMaterials = new Array();
            enoughObject = new Array();
            _735561065materialsColor = new ArrayCollection(new Array(3));
            _embed_mxml__swf_common_button_close_window_swf_1370265653 = BaseBuildingWindow__embed_mxml__swf_common_button_close_window_swf_1370265653;
            _bindings = [];
            _watchers = [];
            _bindingsByDestination = {};
            _bindingsBeginWithWord = {};
            mx_internal::_document = this;
            this.addEventListener("creationComplete", ___BaseBuildingWindow_PopupWindow1_creationComplete);
            return;
        }// end function

        private function set _swf_close_ceremony(param1:MovieClipLoaderAsset) : void
        {
            var _loc_2:* = this._1046077723_swf_close_ceremony;
            if (_loc_2 !== param1)
            {
                this._1046077723_swf_close_ceremony = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "_swf_close_ceremony", _loc_2, param1));
            }
            return;
        }// end function

        private function get _swf_close_ceremony() : MovieClipLoaderAsset
        {
            return this._1046077723_swf_close_ceremony;
        }// end function

        private function get cancelVisible() : Boolean
        {
            return this._1789918360cancelVisible;
        }// end function

        public function popupComplete() : void
        {
            return;
        }// end function

        public function get moneyText() : Text
        {
            return this._1713538547moneyText;
        }// end function

        private function get _swf_window() : MovieClipLoaderAsset
        {
            return this._1075873300_swf_window;
        }// end function

        private function set _swf_power(param1:MovieClipLoaderAsset) : void
        {
            var _loc_2:* = this._1205943177_swf_power;
            if (_loc_2 !== param1)
            {
                this._1205943177_swf_power = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "_swf_power", _loc_2, param1));
            }
            return;
        }// end function

        private function set maxNum(param1:int) : void
        {
            var _loc_2:* = this._1081154686maxNum;
            if (_loc_2 !== param1)
            {
                this._1081154686maxNum = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "maxNum", _loc_2, param1));
            }
            return;
        }// end function

        private function get _strImgPosX() : int
        {
            return this._1151144213_strImgPosX;
        }// end function

        private function get _strImgPosY() : int
        {
            return this._1151144214_strImgPosY;
        }// end function

        public function set moneyText(param1:Text) : void
        {
            var _loc_2:* = this._1713538547moneyText;
            if (_loc_2 !== param1)
            {
                this._1713538547moneyText = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "moneyText", _loc_2, param1));
            }
            return;
        }// end function

        public function init(param1:BuildingVO, param2:int, param3:Array, param4:ConstructionVO) : void
        {
            var _loc_6:int = 0;
            var _loc_7:Object = null;
            var _loc_8:int = 0;
            var _loc_9:Object = null;
            var _loc_10:Object = null;
            this.buildingVO = param1;
            this.areaId = param2;
            this.construction = param4;
            this.units = param3;
            buildingId = param1.buildingMasterId;
            var _loc_5:* = param1.buildingMasterVO.masterId;
            cancelVisible = !param1.underConstruction;
            _buidingLevel = "Lv." + param1.level;
            if (_loc_5 == 2)
            {
                updateBuilding = false;
                _strImgPosX = 70;
            }
            else if (_loc_5 == 3)
            {
                updateBuilding = false;
                _strImgPosX = 70;
            }
            else
            {
                minutes = this.construction.minutes;
                updateBuilding = true;
                _strImgPosX = 65;
                maxNum = 10 - param1.repeatCount;
                enoughObject = new Array(10, 10, 10, 10);
                _loc_6 = 0;
                if (_ownMaterials.length > 0)
                {
                    for each (_loc_9 in _ownMaterials)
                    {
                        
                        for each (_loc_10 in param4.materials)
                        {
                            
                            if (_loc_9.nameLabel == _loc_10.nameLabel && maxNum > _loc_9.quantity / _loc_10.quantity)
                            {
                                maxNum = int(_loc_9.quantity / _loc_10.quantity);
                                enoughObject[_loc_6] = maxNum;
                                _loc_6++;
                                continue;
                            }
                            if (_loc_9.nameLabel == _loc_10.nameLabel)
                            {
                                _loc_6++;
                            }
                        }
                    }
                }
                if (maxNum > _ownMoney / param4.gold)
                {
                    maxNum = int(_ownMoney / param4.gold);
                    enoughObject[3] = maxNum;
                }
                for each (_loc_7 in enoughObject)
                {
                    
                    trace("限界:" + _loc_7);
                }
                goldColor = param4.requirement.textGoldColor;
                _loc_8 = 0;
                while (_loc_8 < 3)
                {
                    
                    materialsColor.setItemAt(getColor(param4, _loc_8), _loc_8);
                    _loc_8++;
                }
            }
            if (param4)
            {
                neccesaryRank = PlayerVO.ONMYOU_RANK_LABELS[param4.playerRank];
            }
            return;
        }// end function

        private function onDestroy() : void
        {
            var _loc_1:* = new Crash();
            _loc_1.addEventListener(Crash.CONFIRMED, confirmedHandler);
            _loc_1.descriptionText = buildingVO.nameLabel + Utils.i18n("basebuilding_break_check");
            this.popupWindow(_loc_1);
            return;
        }// end function

        public function createComp() : void
        {
            if (!buildingVO.buildingMasterVO.repeatable || buildingVO.level >= buildingVO.buildingMasterVO.maxLevel)
            {
            }
            enlarge.visible = buttonEnabled;
            enlargeOff.visible = !buttonEnabled;
            Loader(_swf_close_update.getChildAt(0)).contentLoaderInfo.addEventListener(Event.COMPLETE, function () : void
            {
                Loader(_swf_close_update.getChildAt(0)).contentLoaderInfo.removeEventListener(Event.COMPLETE, arguments.callee);
                MovieClip(Loader(_swf_close_update.getChildAt(0)).content).gotoAndPlay("button_close");
                return;
            }// end function
            );
            Loader(_swf_enlarge.getChildAt(0)).contentLoaderInfo.addEventListener(Event.COMPLETE, function () : void
            {
                Loader(_swf_enlarge.getChildAt(0)).contentLoaderInfo.removeEventListener(Event.COMPLETE, arguments.callee);
                MovieClip(Loader(_swf_enlarge.getChildAt(0)).content).gotoAndPlay("button_decide");
                return;
            }// end function
            );
            Loader(_swf_enlarge_off.getChildAt(0)).contentLoaderInfo.addEventListener(Event.COMPLETE, function () : void
            {
                Loader(_swf_enlarge_off.getChildAt(0)).contentLoaderInfo.removeEventListener(Event.COMPLETE, arguments.callee);
                MovieClip(Loader(_swf_enlarge_off.getChildAt(0)).content).gotoAndPlay("button_decide_off");
                return;
            }// end function
            );
            Loader(_swf_close_ceremony.getChildAt(0)).contentLoaderInfo.addEventListener(Event.COMPLETE, function () : void
            {
                Loader(_swf_close_ceremony.getChildAt(0)).contentLoaderInfo.removeEventListener(Event.COMPLETE, arguments.callee);
                MovieClip(Loader(_swf_close_ceremony.getChildAt(0)).content).gotoAndPlay("button_close");
                return;
            }// end function
            );
            Loader(_swf_ceremony.getChildAt(0)).contentLoaderInfo.addEventListener(Event.COMPLETE, function () : void
            {
                Loader(_swf_ceremony.getChildAt(0)).contentLoaderInfo.removeEventListener(Event.COMPLETE, arguments.callee);
                MovieClip(Loader(_swf_ceremony.getChildAt(0)).content).gotoAndPlay("button_ceremony");
                return;
            }// end function
            );
            Loader(_swf_power.getChildAt(0)).contentLoaderInfo.addEventListener(Event.COMPLETE, function () : void
            {
                Loader(_swf_power.getChildAt(0)).contentLoaderInfo.removeEventListener(Event.COMPLETE, arguments.callee);
                MovieClip(Loader(_swf_power.getChildAt(0)).content).gotoAndPlay("button_power");
                return;
            }// end function
            );
            Loader(_swf_window.getChildAt(0)).contentLoaderInfo.addEventListener(Event.COMPLETE, function () : void
            {
                Loader(_swf_window.getChildAt(0)).contentLoaderInfo.removeEventListener(Event.COMPLETE, arguments.callee);
                MovieClip(Loader(_swf_window.getChildAt(0)).content).gotoAndPlay(_windowLabel);
                return;
            }// end function
            );
            Loader(_swf_delete.getChildAt(0)).contentLoaderInfo.addEventListener(Event.COMPLETE, function () : void
            {
                Loader(_swf_delete.getChildAt(0)).contentLoaderInfo.removeEventListener(Event.COMPLETE, arguments.callee);
                MovieClip(Loader(_swf_delete.getChildAt(0)).content).gotoAndPlay("button_delete_data");
                return;
            }// end function
            );
            return;
        }// end function

        private function set _strImgPosX(param1:int) : void
        {
            var _loc_2:* = this._1151144213_strImgPosX;
            if (_loc_2 !== param1)
            {
                this._1151144213_strImgPosX = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "_strImgPosX", _loc_2, param1));
            }
            return;
        }// end function

        public function ___BaseBuildingWindow_Image2_click(event:MouseEvent) : void
        {
            close();
            return;
        }// end function

        public function onUpgrade() : void
        {
            return;
        }// end function

        public function initMoreQuantity(param1:BuildingVO, param2:int, param3:Array, param4:ConstructionVO, param5:Array) : void
        {
            var constructions:Array;
            var materialArray:Array;
            var buildingVO:* = param1;
            var areaId:* = param2;
            var units:* = param3;
            var construction:* = param4;
            var constructionArray:* = param5;
            this.buildingVO = buildingVO;
            this.areaId = areaId;
            this.construction = construction;
            constructions = constructionArray;
            materialArray = constructions.filter(function (param1:ConstructionVO, param2:int, param3:Array) : Boolean
            {
                return param1.level == (buildingVO.level + 1);
            }// end function
            );
            buildMaterial = materialArray[0];
            this.units = units;
            buildingId = buildingVO.buildingMasterId;
            var buildId:* = buildingVO.buildingMasterVO.masterId;
            cancelVisible = !buildingVO.underConstruction;
            _buidingLevel = "Lv." + buildingVO.level;
            if (buildId != 2 && buildId != 3)
            {
                minutes = this.construction.minutes;
                updateBuilding = true;
            }
            else
            {
                updateBuilding = false;
            }
            maxNum = 10 - buildingVO.repeatCount;
            return;
        }// end function

        private function set materialsColor(param1:ArrayCollection) : void
        {
            var _loc_2:* = this._735561065materialsColor;
            if (_loc_2 !== param1)
            {
                this._735561065materialsColor = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "materialsColor", _loc_2, param1));
            }
            return;
        }// end function

        public function get windowLayer() : Canvas
        {
            return this._1896677185windowLayer;
        }// end function

        public function set updateBuilding(param1:Boolean) : void
        {
            var _loc_2:* = this._560474467updateBuilding;
            if (_loc_2 !== param1)
            {
                this._560474467updateBuilding = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "updateBuilding", _loc_2, param1));
            }
            return;
        }// end function

        public function quantityLendererFunction(param1:Object) : int
        {
            return param1.quantity;
        }// end function

        private function get _buidingLevel() : String
        {
            return this._1469326001_buidingLevel;
        }// end function

        private function get materialVisible() : Boolean
        {
            return this._203859637materialVisible;
        }// end function

        private function _BaseBuildingWindow_bindingsSetup() : Array
        {
            var binding:Binding;
            var result:Array;
            binding = new Binding(this, function () : Object
            {
                return _swf_window;
            }// end function
            , function (param1:Object) : void
            {
                _BaseBuildingWindow_Image1.source = param1;
                return;
            }// end function
            , "_BaseBuildingWindow_Image1.source");
            result[0] = binding;
            binding = new Binding(this, function () : String
            {
                var _loc_1:* = buildingVO.buildingMasterVO.nameLabel;
                var _loc_2:* = _loc_1 == undefined ? (null) : (String(_loc_1));
                return _loc_2;
            }// end function
            , function (param1:String) : void
            {
                _BaseBuildingWindow_Label1.text = param1;
                return;
            }// end function
            , "_BaseBuildingWindow_Label1.text");
            result[1] = binding;
            binding = new Binding(this, function () : String
            {
                var _loc_1:* = Utils.i18n("buildingVO.buildingMasterVO.nameLabel");
                var _loc_2:* = _loc_1 == undefined ? (null) : (String(_loc_1));
                return _loc_2;
            }// end function
            , function (param1:String) : void
            {
                _BaseBuildingWindow_Label2.text = param1;
                return;
            }// end function
            , "_BaseBuildingWindow_Label2.text");
            result[2] = binding;
            binding = new Binding(this, function () : Object
            {
                return _swf_close_update;
            }// end function
            , function (param1:Object) : void
            {
                _BaseBuildingWindow_Image3.source = param1;
                return;
            }// end function
            , "_BaseBuildingWindow_Image3.source");
            result[3] = binding;
            binding = new Binding(this, function () : Object
            {
                return _swf_enlarge;
            }// end function
            , function (param1:Object) : void
            {
                enlarge.source = param1;
                return;
            }// end function
            , "enlarge.source");
            result[4] = binding;
            binding = new Binding(this, function () : Object
            {
                return _swf_enlarge_off;
            }// end function
            , function (param1:Object) : void
            {
                enlargeOff.source = param1;
                return;
            }// end function
            , "enlargeOff.source");
            result[5] = binding;
            binding = new Binding(this, function () : Boolean
            {
                return updateBuilding;
            }// end function
            , function (param1:Boolean) : void
            {
                _BaseBuildingWindow_Canvas3.visible = param1;
                return;
            }// end function
            , "_BaseBuildingWindow_Canvas3.visible");
            result[6] = binding;
            binding = new Binding(this, function () : String
            {
                var _loc_1:* = Utils.i18n("baseBuildingNecessaryTime");
                var _loc_2:* = _loc_1 == undefined ? (null) : (String(_loc_1));
                return _loc_2;
            }// end function
            , function (param1:String) : void
            {
                _BaseBuildingWindow_Label3.text = param1;
                return;
            }// end function
            , "_BaseBuildingWindow_Label3.text");
            result[7] = binding;
            binding = new Binding(this, function () : String
            {
                var _loc_1:* = Utils.i18n("baseBuildingNecessaryMoney");
                var _loc_2:* = _loc_1 == undefined ? (null) : (String(_loc_1));
                return _loc_2;
            }// end function
            , function (param1:String) : void
            {
                _BaseBuildingWindow_Label4.text = param1;
                return;
            }// end function
            , "_BaseBuildingWindow_Label4.text");
            result[8] = binding;
            binding = new Binding(this, function () : String
            {
                var _loc_1:* = Utils.i18n("baseBuildingNecessaryRank");
                var _loc_2:* = _loc_1 == undefined ? (null) : (String(_loc_1));
                return _loc_2;
            }// end function
            , function (param1:String) : void
            {
                _BaseBuildingWindow_Label5.text = param1;
                return;
            }// end function
            , "_BaseBuildingWindow_Label5.text");
            result[9] = binding;
            binding = new Binding(this, function () : String
            {
                var _loc_1:* = Utils.i18n("generalMaterial");
                var _loc_2:* = _loc_1 == undefined ? (null) : (String(_loc_1));
                return _loc_2;
            }// end function
            , function (param1:String) : void
            {
                _BaseBuildingWindow_Label6.text = param1;
                return;
            }// end function
            , "_BaseBuildingWindow_Label6.text");
            result[10] = binding;
            binding = new Binding(this, function () : String
            {
                var _loc_1:* = construction.minutes + " " + Utils.i18n("generalMinuts");
                var _loc_2:* = _loc_1 == undefined ? (null) : (String(_loc_1));
                return _loc_2;
            }// end function
            , function (param1:String) : void
            {
                _BaseBuildingWindow_Text1.text = param1;
                return;
            }// end function
            , "_BaseBuildingWindow_Text1.text");
            result[11] = binding;
            binding = new Binding(this, function () : String
            {
                var _loc_1:* = construction.gold + " " + Utils.i18n("generalMoneyUnit");
                var _loc_2:* = _loc_1 == undefined ? (null) : (String(_loc_1));
                return _loc_2;
            }// end function
            , function (param1:String) : void
            {
                moneyText.text = param1;
                return;
            }// end function
            , "moneyText.text");
            result[12] = binding;
            binding = new Binding(this, function () : uint
            {
                return goldColor;
            }// end function
            , function (param1:uint) : void
            {
                moneyText.setStyle("color", param1);
                return;
            }// end function
            , "moneyText.color");
            result[13] = binding;
            binding = new Binding(this, function () : String
            {
                var _loc_1:* = neccesaryRank;
                var _loc_2:* = _loc_1 == undefined ? (null) : (String(_loc_1));
                return _loc_2;
            }// end function
            , function (param1:String) : void
            {
                _BaseBuildingWindow_Text3.text = param1;
                return;
            }// end function
            , "_BaseBuildingWindow_Text3.text");
            result[14] = binding;
            binding = new Binding(this, function () : String
            {
                var _loc_1:* = getMaterials(construction, 0) + "×" + getMaterialsSize(construction, 0);
                var _loc_2:* = _loc_1 == undefined ? (null) : (String(_loc_1));
                return _loc_2;
            }// end function
            , function (param1:String) : void
            {
                _BaseBuildingWindow_Text4.text = param1;
                return;
            }// end function
            , "_BaseBuildingWindow_Text4.text");
            result[15] = binding;
            binding = new Binding(this, function () : uint
            {
                return uint(materialsColor.getItemAt(0));
            }// end function
            , function (param1:uint) : void
            {
                _BaseBuildingWindow_Text4.setStyle("color", param1);
                return;
            }// end function
            , "_BaseBuildingWindow_Text4.color");
            result[16] = binding;
            return result;
        }// end function

        public function get enlarge() : Image
        {
            return this._1599459278enlarge;
        }// end function

        private function set _swf_delete(param1:MovieClipLoaderAsset) : void
        {
            var _loc_2:* = this._1623579737_swf_delete;
            if (_loc_2 !== param1)
            {
                this._1623579737_swf_delete = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "_swf_delete", _loc_2, param1));
            }
            return;
        }// end function

        public function set buildingCanvas(param1:Canvas) : void
        {
            var _loc_2:* = this._287677740buildingCanvas;
            if (_loc_2 !== param1)
            {
                this._287677740buildingCanvas = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "buildingCanvas", _loc_2, param1));
            }
            return;
        }// end function

        public function __enlarge_click(event:MouseEvent) : void
        {
            upgradeButtonClick();
            return;
        }// end function

        private function _BaseBuildingWindow_bindingExprs() : void
        {
            var _loc_1:* = undefined;
            _loc_1 = _swf_window;
            _loc_1 = buildingVO.buildingMasterVO.nameLabel;
            _loc_1 = Utils.i18n("buildingVO.buildingMasterVO.nameLabel");
            _loc_1 = _swf_close_update;
            _loc_1 = _swf_enlarge;
            _loc_1 = _swf_enlarge_off;
            _loc_1 = updateBuilding;
            _loc_1 = Utils.i18n("baseBuildingNecessaryTime");
            _loc_1 = Utils.i18n("baseBuildingNecessaryMoney");
            _loc_1 = Utils.i18n("baseBuildingNecessaryRank");
            _loc_1 = Utils.i18n("generalMaterial");
            _loc_1 = construction.minutes + " " + Utils.i18n("generalMinuts");
            _loc_1 = construction.gold + " " + Utils.i18n("generalMoneyUnit");
            _loc_1 = goldColor;
            _loc_1 = neccesaryRank;
            _loc_1 = getMaterials(construction, 0) + "×" + getMaterialsSize(construction, 0);
            _loc_1 = uint(materialsColor.getItemAt(0));
            return;
        }// end function

        private function get _swf_enlarge_off() : MovieClipLoaderAsset
        {
            return this._689216666_swf_enlarge_off;
        }// end function

        private function set cancelVisible(param1:Boolean) : void
        {
            var _loc_2:* = this._1789918360cancelVisible;
            if (_loc_2 !== param1)
            {
                this._1789918360cancelVisible = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "cancelVisible", _loc_2, param1));
            }
            return;
        }// end function

        private function set buildMaterial(param1:Object) : void
        {
            var _loc_2:* = this._208977483buildMaterial;
            if (_loc_2 !== param1)
            {
                this._208977483buildMaterial = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "buildMaterial", _loc_2, param1));
            }
            return;
        }// end function

        public function set enlarge(param1:Image) : void
        {
            var _loc_2:* = this._1599459278enlarge;
            if (_loc_2 !== param1)
            {
                this._1599459278enlarge = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "enlarge", _loc_2, param1));
            }
            return;
        }// end function

        public function ___BaseBuildingWindow_Image3_click(event:MouseEvent) : void
        {
            close();
            return;
        }// end function

        public function get buildingVO() : BuildingVO
        {
            return this._461356947buildingVO;
        }// end function

        public function get buidingLevel() : String
        {
            return _buidingLevel;
        }// end function

        private function set _swf_enlarge(param1:MovieClipLoaderAsset) : void
        {
            var _loc_2:* = this._1941286474_swf_enlarge;
            if (_loc_2 !== param1)
            {
                this._1941286474_swf_enlarge = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "_swf_enlarge", _loc_2, param1));
            }
            return;
        }// end function

        public function get strImgPosY() : int
        {
            return _strImgPosY;
        }// end function

        public function get buildingCanvas() : Canvas
        {
            return this._287677740buildingCanvas;
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

        public function set ownMaterials(param1:Array) : void
        {
            _ownMaterials = param1;
            return;
        }// end function

        private function getMaterials(param1:Object, param2:int) : String
        {
            if (!param1.materials[param2])
            {
                return " ";
            }
            return param1.materials[param2].masterVO.nameLabel;
        }// end function

        private function get maxNum() : int
        {
            return this._1081154686maxNum;
        }// end function

        override public function initialize() : void
        {
            var target:BaseBuildingWindow;
            var watcherSetupUtilClass:Object;
            .mx_internal::setDocumentDescriptor(_documentDescriptor_);
            var bindings:* = _BaseBuildingWindow_bindingsSetup();
            var watchers:Array;
            target;
            if (_watcherSetupUtil == null)
            {
                watcherSetupUtilClass = getDefinitionByName("_com_kbmj_viking_view_home_BaseBuildingWindowWatcherSetupUtil");
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

        private function get _swf_power() : MovieClipLoaderAsset
        {
            return this._1205943177_swf_power;
        }// end function

        public function get updateBuilding() : Boolean
        {
            return this._560474467updateBuilding;
        }// end function

        public function set construction(param1:ConstructionVO) : void
        {
            var _loc_2:* = this._1995960111construction;
            if (_loc_2 !== param1)
            {
                this._1995960111construction = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "construction", _loc_2, param1));
            }
            return;
        }// end function

        private function get _swf_ceremony() : MovieClipLoaderAsset
        {
            return this._1536737662_swf_ceremony;
        }// end function

        private function getColor(param1:Object, param2:int) : uint
        {
            return param1.requirement.materials[param2] && param1.requirement.materials[param2].isShort ? (15073298) : (0);
        }// end function

        public function set ownMoney(param1:int) : void
        {
            _ownMoney = param1;
            return;
        }// end function

        private function get buildMaterial() : Object
        {
            return this._208977483buildMaterial;
        }// end function

        private function set materialVisible(param1:Boolean) : void
        {
            var _loc_2:* = this._203859637materialVisible;
            if (_loc_2 !== param1)
            {
                this._203859637materialVisible = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "materialVisible", _loc_2, param1));
            }
            return;
        }// end function

        private function getMaterialsSize(param1:Object, param2:int)
        {
            return param1.materials[param2].quantity;
        }// end function

        private function get _swf_enlarge() : MovieClipLoaderAsset
        {
            return this._1941286474_swf_enlarge;
        }// end function

        private function get _swf_delete() : MovieClipLoaderAsset
        {
            return this._1623579737_swf_delete;
        }// end function

        private function set neccesaryRank(param1:String) : void
        {
            var _loc_2:* = this._1879661617neccesaryRank;
            if (_loc_2 !== param1)
            {
                this._1879661617neccesaryRank = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "neccesaryRank", _loc_2, param1));
            }
            return;
        }// end function

        private function set _strImgPosY(param1:int) : void
        {
            var _loc_2:* = this._1151144214_strImgPosY;
            if (_loc_2 !== param1)
            {
                this._1151144214_strImgPosY = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "_strImgPosY", _loc_2, param1));
            }
            return;
        }// end function

        private function get materialsColor() : ArrayCollection
        {
            return this._735561065materialsColor;
        }// end function

        private function set minutes(param1:int) : void
        {
            var _loc_2:* = this._1064901855minutes;
            if (_loc_2 !== param1)
            {
                this._1064901855minutes = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "minutes", _loc_2, param1));
            }
            return;
        }// end function

        private function set goldColor(param1:uint) : void
        {
            var _loc_2:* = this._1311442205goldColor;
            if (_loc_2 !== param1)
            {
                this._1311442205goldColor = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "goldColor", _loc_2, param1));
            }
            return;
        }// end function

        public function set materialMaster(param1:Object) : void
        {
            materialMaster = param1;
            return;
        }// end function

        public function set windowLabel(param1:String) : void
        {
            _windowLabel = param1;
            return;
        }// end function

        private function set _swf_close_update(param1:MovieClipLoaderAsset) : void
        {
            var _loc_2:* = this._1167548908_swf_close_update;
            if (_loc_2 !== param1)
            {
                this._1167548908_swf_close_update = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "_swf_close_update", _loc_2, param1));
            }
            return;
        }// end function

        private function set _swf_enlarge_off(param1:MovieClipLoaderAsset) : void
        {
            var _loc_2:* = this._689216666_swf_enlarge_off;
            if (_loc_2 !== param1)
            {
                this._689216666_swf_enlarge_off = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "_swf_enlarge_off", _loc_2, param1));
            }
            return;
        }// end function

        public function upgradeButtonClick() : void
        {
            if (!buttonEnabled)
            {
                return;
            }
            onUpgrade();
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

        public function set buidingLevel(param1:String) : void
        {
            _buidingLevel = param1;
            return;
        }// end function

        public function set buildingVO(param1:BuildingVO) : void
        {
            var _loc_2:* = this._461356947buildingVO;
            if (_loc_2 !== param1)
            {
                this._461356947buildingVO = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "buildingVO", _loc_2, param1));
            }
            return;
        }// end function

        public function onRitual() : void
        {
            return;
        }// end function

        private function get goldColor() : uint
        {
            return this._1311442205goldColor;
        }// end function

        private function get minutes() : int
        {
            return this._1064901855minutes;
        }// end function

        public function set enlargeOff(param1:Image) : void
        {
            var _loc_2:* = this._1124089891enlargeOff;
            if (_loc_2 !== param1)
            {
                this._1124089891enlargeOff = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "enlargeOff", _loc_2, param1));
            }
            return;
        }// end function

        public function get construction() : ConstructionVO
        {
            return this._1995960111construction;
        }// end function

        private function confirmedHandler(event:Event) : void
        {
            sendPopupEvent(Viking.HOME_DESTROY_BUILDING, buildingVO);
            PopUpManager.removePopUp(this);
            return;
        }// end function

        public function set strImgPosY(param1:int) : void
        {
            _strImgPosY = param1;
            return;
        }// end function

        private function get neccesaryRank() : String
        {
            return this._1879661617neccesaryRank;
        }// end function

        private function set _buidingLevel(param1:String) : void
        {
            var _loc_2:* = this._1469326001_buidingLevel;
            if (_loc_2 !== param1)
            {
                this._1469326001_buidingLevel = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "_buidingLevel", _loc_2, param1));
            }
            return;
        }// end function

        private function get _swf_close_update() : MovieClipLoaderAsset
        {
            return this._1167548908_swf_close_update;
        }// end function

        private function getAbility(param1:Object) : String
        {
            return ABILITY_LABELS[param1.abilities];
        }// end function

        public function ___BaseBuildingWindow_PopupWindow1_creationComplete(event:FlexEvent) : void
        {
            createComp();
            return;
        }// end function

        private function close() : void
        {
            onClose();
            return;
        }// end function

        private function set _swf_ceremony(param1:MovieClipLoaderAsset) : void
        {
            var _loc_2:* = this._1536737662_swf_ceremony;
            if (_loc_2 !== param1)
            {
                this._1536737662_swf_ceremony = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "_swf_ceremony", _loc_2, param1));
            }
            return;
        }// end function

        public function get enlargeOff() : Image
        {
            return this._1124089891enlargeOff;
        }// end function

        public static function set watcherSetupUtil(param1:IWatcherSetupUtil) : void
        {
            BaseBuildingWindow._watcherSetupUtil = param1;
            return;
        }// end function

    }
}
