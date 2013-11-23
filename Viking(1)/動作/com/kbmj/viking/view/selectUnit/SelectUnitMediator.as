package com.kbmj.viking.view.selectUnit
{
    import com.kbmj.viking.*;
    import com.kbmj.viking.controller.*;
    import com.kbmj.viking.controller.raid.*;
    import com.kbmj.viking.controller.selectUnit.*;
    import com.kbmj.viking.controller.sendArmy.*;
    import com.kbmj.viking.lib.*;
    import com.kbmj.viking.proxy.*;
    import com.kbmj.viking.proxy.allMap.*;
    import com.kbmj.viking.proxy.home.*;
    import com.kbmj.viking.proxy.selectUnit.*;
    import com.kbmj.viking.proxy.tactics.*;
    import com.kbmj.viking.view.*;
    import com.kbmj.viking.view.home.*;
    import com.kbmj.viking.vo.selectUnit.*;
    import com.kbmj.viking.vo.tactics.*;
    import flash.display.*;
    import flash.events.*;
    import mx.collections.*;
    import mx.core.*;
    import org.puremvc.as3.interfaces.*;
    import org.puremvc.as3.patterns.mediator.*;

    public class SelectUnitMediator extends Mediator
    {
        private var levelUpWindow:LevelUpWindow;
        private var _removeIndexArray:Array;
        private var _cost:int;
        private var _unitIndex:Object;
        private var _maxNumberOfUnits:int;
        private var _selectUnit:SelectUnitVO;
        private var _removeCount:int = 0;
        private var levelUpIconRenderer:LevelUpIconRenderer;
        private var _arrayStack:Object;
        private var _tacticsUnits:Array;
        private var _tacticsArray_X:Array;
        private var _tacticsArray_Y:Array;
        private var _tacticsNum:int = 0;
        private var _standbyUnit_X:Array;
        private var _standbyUnit_Y:Array;
        private var _previousViewIndex:int;
        private var confirmRaidWindow:ConfirmRaid;
        private var _nowReinforcementUnit:UnitVO;
        public static const REMOVE:String = NAME + "/notes/remove";
        private static const COL_NUM:int = 5;
        public static const NAME:String = "SelectUnitMediator";
        public static const CHANGE_HILIGHT:String = "chageHiLight";
        private static const UNIT_SEL_MAX:int = 5;
        public static const CHANGE_EQUIPMENT_CANCEL:String = "changeEquipmentCancel";
        public static const RESULT_CHANGE_ARMS:String = NAME + "/notes/chenge_arms";
        public static const ALL_UNIT_RECOVERY_COMPLETE:String = NAME + "/notes/allUnitRecoveryComplete";
        public static const RELOAD_UNITS:String = NAME + "/notes/reloadUnits";
        public static const UNIT_LEVEL_UP:String = NAME + "/UnitLvUp";
        public static const ALL_UNIT_RECOVERY:String = NAME + "/notes/allUnitRecovery";
        public static const CHANGE_EQUIPMENT_FINISH:String = "changeEquipmentFinish";
        public static const UNIT_IN:String = NAME + "/notes/unitInBySelectUnit";
        public static const PREPARE_TACTICS:String = NAME + "/notes/prepareTactics";
        public static const PREPARE_COLONY_BATTLE:String = NAME + "/notes/prepareColonyBattle";
        public static const RELOAD_HOME_UNITS:String = NAME + "/notes/reloadHomeUnits";
        private static const ROW_NUM:int = 3;
        public static const PREPARE_RAID:String = NAME + "/notes/prepareRaid";
        public static const CLICK:String = NAME + "/notes/click";
        private static const UNIT_PER_PAGE:int = 15;
        public static const UNIT_OUT:String = NAME + "/notes/unitOutBySelectUnit";
        public static const RELOAD_RESOURCE:String = NAME + "/notes/reloadResource";
        public static const SHOW_LOADING_WINDOW:String = NAME + "/notes/showLoadingWindow";
        public static const LEVELUP_ANIMATION_FINISH_BY_SELECTUNIT:String = NAME + "/levelUpAnimationFinishBySelectUnit";
        public static const CHANGE_EQUIPMENT_AT_SELECT_UNIT:String = NAME + "/changeEquipment";
        public static const LEVELUP:String = NAME + "/notes/levelUp";

        public function SelectUnitMediator(param1:Viking)
        {
            levelUpWindow = new LevelUpWindow();
            levelUpIconRenderer = new LevelUpIconRenderer();
            confirmRaidWindow = new ConfirmRaid();
            _standbyUnit_X = new Array();
            _standbyUnit_Y = new Array();
            _tacticsArray_X = new Array();
            _tacticsArray_Y = new Array();
            _arrayStack = new Object();
            _unitIndex = new Object();
            _removeIndexArray = new Array();
            _tacticsUnits = new Array();
            _selectUnit = new SelectUnitVO();
            _nowReinforcementUnit = new UnitVO();
            super(NAME, param1);
            return;
        }// end function

        private function closeCommandWindow(event:TimerEvent) : void
        {
            app.selectUnit.unitStatus.unit = new UnitVO();
            return;
        }// end function

        private function listViewEvent(event:Event) : void
        {
            var _loc_2:* = SelectUnitProxy(facade.retrieveProxy(SelectUnitProxy.NAME));
            switch(event.type)
            {
                case Viking.SELECT_ITEM_LIST:
                {
                    app.selectUnit.selectItemListWindow.visible = true;
                    break;
                }
                default:
                {
                    break;
                }
            }
            return;
        }// end function

        private function filteringSelectUnits(param1:Array) : Array
        {
            var selectUnitProxy:SelectUnitProxy;
            var selectUnits:Array;
            var homeUnits:* = param1;
            selectUnitProxy = SelectUnitProxy(facade.retrieveProxy(SelectUnitProxy.NAME));
            switch(selectUnitProxy.selectUnitFor)
            {
                case SelectUnitProxy.FOR_RAID:
                case SelectUnitProxy.FOR_ALL_MAP:
                case SelectUnitProxy.FOR_EVIL_POINT:
                case SelectUnitProxy.FOR_COLONY:
                case SelectUnitProxy.FOR_SHAM_BATTLE:
                case SelectUnitProxy.FOR_MATCH_BATTLE:
                case SelectUnitProxy.FOR_SPECIAL_MATCH_BATTLE:
                {
                    selectUnits = homeUnits.filter(function (param1:UnitVO, param2:int, param3:Array) : Boolean
            {
                return param1.status == 0;
            }// end function
            );
                    break;
                }
                case SelectUnitProxy.FOR_EXPEDITION:
                case SelectUnitProxy.FOR_EXPEDITION2:
                case SelectUnitProxy.FOR_EXPEDITION3:
                case SelectUnitProxy.FOR_CONTINUATION:
                {
                    selectUnits = homeUnits.filter(function (param1:UnitVO, param2:int, param3:Array) : Boolean
            {
                if (!selectUnitProxy.forbiddenJobIds)
                {
                    return param1.status == 0;
                }
                var _loc_4:* = selectUnitProxy.forbiddenJobIds.split(",");
                if (selectUnitProxy.forbiddenJobIds.split(",").indexOf(param1.jobMasterVO.code) < 0 && param1.status == 0)
                {
                    return true;
                }
                return false;
            }// end function
            );
                    break;
                }
                default:
                {
                    break;
                }
            }
            return selectUnits;
        }// end function

        private function initialize(param1:Boolean = false) : void
        {
            var ui:UIComponent;
            var tempTacticsUnitIds:Array;
            var unit:UnitVO;
            var levelUp:* = param1;
            var selectUnitProxy:* = SelectUnitProxy(facade.retrieveProxy(SelectUnitProxy.NAME));
            var animationProxy:* = AnimationProxy(facade.retrieveProxy(AnimationProxy.NAME));
            var sakuraProxy:* = SakuraProxy(facade.retrieveProxy(SakuraProxy.NAME));
            _unitIndex = new Object();
            setUnitInitPosition();
            var i:int;
            while (i < selectUnitProxy.units.length)
            {
                
                ui = new UIComponent();
                if (!levelUp)
                {
                    selectUnitProxy.units[i].loader.x = getUnitStandByPositionX(i);
                    selectUnitProxy.units[i].loader.y = getUnitStandByPositionY(i);
                }
                else
                {
                    selectUnitProxy.units[i].loader.x = selectUnitProxy.tempUnitDataArray[i].positionX;
                    selectUnitProxy.units[i].loader.y = selectUnitProxy.tempUnitDataArray[i].positionY;
                }
                selectUnitProxy.units[i].loader.contentLoaderInfo.addEventListener(Event.COMPLETE, function (event:Event) : void
            {
                var _loc_2:* = LoaderInfo(event.target);
                MovieClip(_loc_2.content).gotoAndStop("item_f_l");
                return;
            }// end function
            );
                selectUnitProxy.units[i].loader.loadBytes(animationProxy.getUnitAnimation(selectUnitProxy.units[i].jobMasterVO.code, selectUnitProxy.units[i].gender));
                selectUnitProxy.units[i].uic.addChild(selectUnitProxy.units[i].loader);
                ui.addChild(selectUnitProxy.units[i].uic);
                app.selectUnit.addUnitUic(ui);
                selectUnitProxy.units[i].loader.addEventListener(MouseEvent.CLICK, handleMouseEvent(i));
                selectUnitProxy.units[i].loader.addEventListener(MouseEvent.MOUSE_OVER, handleMouseEvent(i));
                selectUnitProxy.units[i].loader.addEventListener(MouseEvent.MOUSE_OUT, handleMouseEvent(i));
                selectUnitProxy.units[i].loader.name = "unit" + i;
                _unitIndex[selectUnitProxy.units[i].loader.name] = i;
                if (selectUnitProxy.selectUnitFor == SelectUnitProxy.FOR_SEND_ARMY)
                {
                    selectUnitProxy.units[i].uic.toolTip = selectUnitProxy.units[i].downExpiredAtLabelForTooltip;
                }
                else
                {
                    selectUnitProxy.units[i].uic.toolTip = "";
                }
                selectUnitProxy.units[i].canLevelUp = false;
                if (selectUnitProxy.units[i].level < selectUnitProxy.units[i].jobMasterVO.levelCap && selectUnitProxy.units[i].exp >= selectUnitProxy.units[i].nextExp)
                {
                    selectUnitProxy.units[i].canLevelUp = true;
                }
                i = (i + 1);
            }
            app.selectUnit.units = selectUnitProxy.units;
            app.selectUnit.removeAllUnitIcon();
            levelUpIconAdd();
            if (levelUp)
            {
                _tacticsNum = selectUnitProxy.tempDataArray[0].tacticsNum;
                _removeCount = selectUnitProxy.tempDataArray[0].removeCount;
                tempTacticsUnitIds = new Array();
                i;
                while (i < _tacticsUnits.length)
                {
                    
                    tempTacticsUnitIds.push(_tacticsUnits[i].unitId);
                    i = (i + 1);
                }
                _tacticsUnits = new Array();
                i;
                while (i < tempTacticsUnitIds.length)
                {
                    
                    unit = selectUnitProxy.units.getOne("unitId", tempTacticsUnitIds[i]);
                    _tacticsUnits.push(unit);
                    i = (i + 1);
                }
            }
            sakuraProxy.addSakuraSwf(app.selectUnit.sakura, SelectUnitMediator, "selectUnit");
            app.selectUnit.setPage(0);
            return;
        }// end function

        private function initializeListeners() : void
        {
            app.selectUnit.addEventListener(Viking.SELECT_UNIT_ACTION_START_TACTICS, handleEvent);
            app.selectUnit.addEventListener(Viking.SELECT_UNIT_ACTION_START_MOVIE, handleEvent);
            app.selectUnit.addEventListener(Viking.SELECT_UNIT_ACTION_BACK, handleEvent);
            app.selectUnit.addEventListener(SelectUnit.ALL_UNIT_RECOVERY, handleEvent);
            app.selectUnit.addEventListener(Viking.SELECT_ITEM_LIST, listViewEvent);
            app.selectUnit.changeEquipmentWindow.addEventListener(CHANGE_EQUIPMENT_FINISH, changeEquipmentFinish);
            app.selectUnit.changeEquipmentWindow.addEventListener(CHANGE_EQUIPMENT_CANCEL, changeEquipmentFinish);
            app.selectUnit.changeEquipmentWindow.addEventListener(CHANGE_HILIGHT, changeEquipmentFinish);
            var _loc_1:* = SelectUnitProxy(facade.retrieveProxy(SelectUnitProxy.NAME));
            _loc_1.closeCommandTimer.addEventListener(TimerEvent.TIMER, closeCommandWindow);
            levelUpWindow.addEventListener(Viking.LEVELUP_WITH_SELECTED_SKILL, handlePopupEvent);
            return;
        }// end function

        private function getUnitStandByPositionY(param1:int) : int
        {
            var _loc_2:* = param1 % 15;
            return _standbyUnit_Y[_loc_2];
        }// end function

        public function get app() : Viking
        {
            return viewComponent as Viking;
        }// end function

        override public function onRegister() : void
        {
            initializeListeners();
            confirmRaidWindow.addEventListener(ConfirmRaid.CONFIRMED, handleConfirmRaid);
            confirmRaidWindow.addEventListener(ConfirmRaid.CANCELED, handleCancelRaid);
            return;
        }// end function

        private function getUnitStandByPositionX(param1:int) : int
        {
            var _loc_2:* = param1 % 15;
            return _standbyUnit_X[_loc_2];
        }// end function

        private function commandWindowMouseOut(event:MouseEvent) : void
        {
            var _loc_2:* = SelectUnitProxy(facade.retrieveProxy(SelectUnitProxy.NAME));
            if (!app.selectUnit.changeEquipmentWindow.visible)
            {
                _loc_2.closeCommandTimer.start();
            }
            return;
        }// end function

        private function entryUnit() : void
        {
            var _loc_2:LoaderInfo = null;
            var _loc_3:int = 0;
            var _loc_4:int = 0;
            var _loc_5:UnitVO = null;
            var _loc_6:int = 0;
            var _loc_7:int = 0;
            var _loc_1:* = SelectUnitProxy(facade.retrieveProxy(SelectUnitProxy.NAME));
            if (!isSelected())
            {
                if (_tacticsUnits.length >= _loc_1.maxNumberOfUnits)
                {
                    return;
                }
                if (_removeCount == 0)
                {
                    _selectUnit.selectedUnit.loader.x = _tacticsArray_X[_tacticsNum];
                    _selectUnit.selectedUnit.loader.y = _tacticsArray_Y[_tacticsNum];
                    _arrayStack[_selectUnit.selectedUnit.unitId] = _tacticsNum;
                    var _loc_9:* = _tacticsNum + 1;
                    _tacticsNum = _loc_9;
                    _tacticsUnits.push(_selectUnit.selectedUnit);
                    app.selectUnit.selectUnits.push(_selectUnit.selectedUnit.unitId);
                    _loc_2 = LoaderInfo(_selectUnit.selectedUnit.loader.contentLoaderInfo);
                    MovieClip(_loc_2.content).gotoAndPlay("walk_f_l");
                }
                else
                {
                    _loc_3 = _removeIndexArray.pop();
                    _selectUnit.selectedUnit.loader.x = _tacticsArray_X[_loc_3];
                    _selectUnit.selectedUnit.loader.y = _tacticsArray_Y[_loc_3];
                    _arrayStack[_selectUnit.selectedUnit.unitId] = _loc_3;
                    var _loc_9:* = _removeCount - 1;
                    _removeCount = _loc_9;
                    _tacticsUnits.splice(_loc_3, 0, _selectUnit.selectedUnit);
                    app.selectUnit.selectUnits.splice(_loc_3, 0, _selectUnit.selectedUnit.unitId);
                    _loc_2 = LoaderInfo(_selectUnit.selectedUnit.loader.contentLoaderInfo);
                    MovieClip(_loc_2.content).gotoAndPlay("walk_f_l");
                }
                app.selectUnit.sortieNumber = _tacticsUnits.length;
            }
            else
            {
                _loc_4 = _unitIndex[_selectUnit.selectedUnit.loader.name];
                _selectUnit.selectedUnit.loader.x = getUnitStandByPositionX(_loc_4);
                _selectUnit.selectedUnit.loader.y = getUnitStandByPositionY(_loc_4);
                _loc_5 = _tacticsUnits.getOne("unitId", _selectUnit.selectedUnit.unitId);
                _loc_6 = _tacticsUnits.indexOf(_loc_5);
                _tacticsUnits.splice(_loc_6, 1);
                _loc_7 = app.selectUnit.selectUnits.indexOf(_loc_5.unitId);
                app.selectUnit.selectUnits.splice(_loc_7, 1);
                app.selectUnit.sortieNumber = _tacticsUnits.length;
                _removeIndexArray.push(_arrayStack[_selectUnit.selectedUnit.unitId]);
                _removeIndexArray.sort(Array.DESCENDING);
                var _loc_9:* = _removeCount + 1;
                _removeCount = _loc_9;
                _loc_2 = LoaderInfo(_selectUnit.selectedUnit.loader.contentLoaderInfo);
                MovieClip(_loc_2.content).gotoAndStop("item_f_l");
            }
            app.selectUnit.sakura.close();
            levelUpIconAdd();
            app.selectUnit.unitStatus.unit = new UnitVO();
            app.selectUnit.resetCurrentPage();
            return;
        }// end function

        private function levelUpIconAdd() : void
        {
            var _loc_1:* = SelectUnitProxy(facade.retrieveProxy(SelectUnitProxy.NAME));
            app.selectUnit.removeAllUnitIcon();
            var _loc_2:* = new Array();
            var _loc_3:int = 0;
            while (_loc_3 < _loc_1.units.length)
            {
                
                levelUpIconRenderer = new LevelUpIconRenderer();
                if (levelUpIconRenderer.unitStatusIcon(_loc_1.units[_loc_3]) && _loc_1.units[_loc_3].level < _loc_1.units[_loc_3].jobMasterVO.levelCap)
                {
                    app.selectUnit.addUnitIcon(levelUpIconRenderer);
                    _loc_2.push(levelUpIconRenderer);
                }
                _loc_3++;
            }
            app.selectUnit.levelUpIcons = _loc_2;
            return;
        }// end function

        private function handlePopupEvent(event:PopupEvent) : void
        {
            switch(event.type)
            {
                case Viking.LEVELUP_WITH_SELECTED_SKILL:
                {
                    sendNotification(LEVELUP, [_selectUnit.selectedUnit, "selectUnit", event.param]);
                    break;
                }
                default:
                {
                    break;
                }
            }
            return;
        }// end function

        override public function handleNotification(param1:INotification) : void
        {
            var _loc_3:UnitProxy = null;
            var _loc_5:AnimationProxy = null;
            var _loc_8:Object = null;
            var _loc_9:String = null;
            var _loc_10:Object = null;
            var _loc_11:AlertWindow = null;
            var _loc_12:String = null;
            var _loc_2:* = SelectUnitProxy(facade.retrieveProxy(SelectUnitProxy.NAME));
            _loc_3 = UnitProxy(facade.retrieveProxy(UnitProxy.NAME));
            var _loc_4:* = HomeProxy(facade.retrieveProxy(HomeProxy.NAME));
            _loc_5 = AnimationProxy(facade.retrieveProxy(AnimationProxy.NAME));
            var _loc_6:* = SakuraProxy(facade.retrieveProxy(SakuraProxy.NAME));
            var _loc_7:* = SkillProxy(facade.retrieveProxy(SkillProxy.NAME));
            switch(param1.getName())
            {
                case StartSelectUnitCompleteCommand.START_SELECT_UNIT:
                case StartSelectUnitForRaidCommand.START_SELECT_UNIT:
                {
                    start();
                    break;
                }
                case SelectUnitProxy.ARMY_UNIT_LOADED:
                {
                    start();
                    _loc_8 = param1.getBody();
                    setArmyUnit(_loc_8.unit_id);
                    break;
                }
                case SelectClickCommand.SHOW_SELECT_WINDOW:
                {
                    break;
                }
                case AnimationProxy.LEVELUP_ANIMATION_FINISH_BY_SELECTUNIT:
                {
                    app.selectUnit.removeAllUnitUic();
                    _loc_9 = _loc_3.unitLvCap(_loc_5.lvUpUnit);
                    if (_loc_9 != null)
                    {
                        _loc_11 = AlertWindow.show(_loc_9);
                        app.home.popupWindow(_loc_11, false);
                    }
                    sendNotification(RELOAD_UNITS);
                    break;
                }
                case UnitProxy.SELECT_UNITS_LOADED:
                {
                    _loc_2.units = _loc_3.selectUnits;
                    _tacticsNum = 0;
                    _removeCount = 0;
                    _tacticsUnits.length = 0;
                    app.selectUnit.sortieNumber = _tacticsUnits.length;
                    initialize();
                    break;
                }
                case UnitProxy.UNIT_LEVEL_UP:
                {
                    app.removeLoadingWindow();
                    _loc_2.units = _loc_3.selectUnits;
                    initialize(true);
                    break;
                }
                case UnitProxy.CHANGE_EQUIPMENT_AT_SELECT_UNIT:
                {
                    sendNotification(RELOAD_RESOURCE);
                    break;
                }
                case SelectUnitProxy.SEND_REINFORCEMENT:
                {
                    backHome();
                    break;
                }
                case SelectUnitProxy.SEND_REINFORCEMENT_ERROR:
                {
                    _loc_10 = param1.getBody() as Object;
                    _loc_11 = AlertWindow.show(_loc_10.head.error_message);
                    app.selectUnit.popupWindow(_loc_11, false);
                    break;
                }
                case UnitProxy.ALL_UNIT_RECOVERY_ERROR:
                {
                    app.removeLoadingWindow();
                    _loc_10 = param1.getBody() as Object;
                    _loc_11 = AlertWindow.show(_loc_10.head.error_message);
                    app.selectUnit.popupWindow(_loc_11, false);
                    break;
                }
                case LevelUpCommand.SELECT_UNIT_SELECT_SKILL:
                {
                    levelUpWindow.unit = _selectUnit.selectedUnit;
                    levelUpWindow.skills = new ArrayCollection(param1.getBody() as Array);
                    app.selectUnit.popupWindow(levelUpWindow);
                    break;
                }
                case ReloadUnitCommand.HOME_UNITS_LOADED_FOR_RAID:
                {
                    _loc_2.units = _loc_3.homeWaitingAdultUnits;
                    initialize(true);
                    app.removeLoadingWindow();
                    break;
                }
                case ReloadUnitCommand.HOME_UNITS_LOADED_FOR_SEND_ARMY:
                {
                    _loc_2.units = _loc_3.unitsForReinforcement;
                    initialize(true);
                    app.removeLoadingWindow();
                    break;
                }
                case UNIT_OUT:
                case UNIT_IN:
                {
                    entryUnit();
                    break;
                }
                case UnitProxy.LEARN_SKILL_COMPLETE_BY_SELECT_UNIT:
                {
                    app.removeLoadingWindow();
                    _loc_12 = "";
                    if (param1.getBody().old_skill_id)
                    {
                        _loc_12 = _loc_7.skills[param1.getBody().old_skill_id].nameLabel + Utils.i18n("localize270");
                    }
                    _loc_12 = _loc_12 + (_loc_7.skills[param1.getBody().new_skill_id].nameLabel + Utils.i18n("localize271"));
                    _loc_11 = AlertWindow.show(_loc_12);
                    app.selectUnit.popupWindow(_loc_11, false);
                }
                case AnimationProxy.LEVELUP_ANIMATION_FINISH_BY_SELECT_UNIT:
                case UnitProxy.UNIT_RECOVERY_COMPLETE_BY_SELECT_UNIT:
                {
                    app.showLoadingWindow();
                    _loc_3.loadHomeUnits(UnitProxy.HOME_UNITS_LOADED_BY_SELECT_UNITS);
                    _loc_4.loadHomeResource();
                    break;
                }
                case RELOAD_HOME_UNITS:
                {
                    app.showLoadingWindow();
                    _loc_3.loadHomeUnits(UnitProxy.HOME_UNITS_LOADED_BY_SELECT_UNITS);
                    break;
                }
                case UnitProxy.HOME_UNITS_LOADED_BY_SELECT_UNITS:
                {
                    resetUnits();
                    app.removeLoadingWindow();
                    break;
                }
                case ALL_UNIT_RECOVERY_COMPLETE:
                {
                    _loc_3.loadHomeUnits(UnitProxy.HOME_UNITS_LOADED_BY_SELECT_UNITS);
                    break;
                }
                case SHOW_LOADING_WINDOW:
                {
                    app.showLoadingWindow(param1.getBody());
                    break;
                }
                case UnitProxy.SELECT_LEVELUP_FINISH:
                case LevelUpCommand.SELECT_UNIT_LEVELUP_FINISHED:
                {
                    _loc_5.playLvUpAnimation(_loc_6.sakura.lvUpAnimeCanvas, _loc_6.sakura.unit, AnimationProxy.LEVELUP_ANIMATION_FINISH_BY_SELECT_UNIT);
                    break;
                }
                case TacticsProxy.START_COMPLETE:
                case TacticsProxy.START_CONTINUATION_TACTICS:
                {
                    _loc_6.removeSakuraSwf(app.selectUnit.sakura);
                    break;
                }
                default:
                {
                    break;
                }
            }
            return;
        }// end function

        private function handleMouseEvent(param1:int) : Function
        {
            var i:* = param1;
            return function (event:MouseEvent) : void
            {
                var _loc_4:* = undefined;
                var _loc_5:* = undefined;
                var _loc_2:* = SelectUnitProxy(facade.retrieveProxy(SelectUnitProxy.NAME));
                var _loc_3:* = AnimationProxy(facade.retrieveProxy(AnimationProxy.NAME));
                switch(event.type)
                {
                    case MouseEvent.CLICK:
                    {
                        if (!_loc_3.lvUpAnimeBool)
                        {
                            _selectUnit.selectedUnit = _loc_2.units[i];
                            if (!isSelected())
                            {
                                sendNotification(CLICK, _selectUnit.selectedUnit);
                            }
                            else
                            {
                                sendNotification(REMOVE, _selectUnit.selectedUnit);
                            }
                            _loc_2.closeCommandTimer.stop();
                            _loc_2.closeCommandTimer.reset();
                        }
                        break;
                    }
                    case MouseEvent.MOUSE_OVER:
                    {
                        if (!app.selectUnit.changeEquipmentWindow.visible)
                        {
                            _selectUnit.selectedUnit = _loc_2.units[i];
                            if (_loc_2.units[i] != _selectUnit.selectedUnit)
                            {
                                app.selectUnit.unitStatus.unit = new UnitVO();
                            }
                            app.selectUnit.unitStatus.unit = _loc_2.units[i];
                            _loc_2.closeCommandTimer.stop();
                            _loc_2.closeCommandTimer.reset();
                            app.selectUnit.sakura.open(app.selectUnit.unitStatus.unit);
                            _loc_4 = "wait";
                            _loc_5 = 0;
                            while (_loc_5 < _tacticsUnits.length)
                            {
                                
                                if (_tacticsUnits[_loc_5].unitId == _loc_2.units[i].unitId)
                                {
                                    _loc_4 = "select";
                                    break;
                                }
                                _loc_5 = _loc_5 + 1;
                            }
                            app.selectUnit.sakura.mode = _loc_4;
                        }
                        break;
                    }
                    case MouseEvent.MOUSE_OUT:
                    {
                        break;
                    }
                    default:
                    {
                        break;
                    }
                }
                return;
            }// end function
            ;
        }// end function

        private function changeEquipment(event:Event) : void
        {
            app.selectUnit.unitStatus.unit = _selectUnit.selectedUnit;
            app.selectUnit.changeEquipmentWindow.visible = true;
            app.selectUnit.changeEquipmentWindow.changeBool = false;
            buttonEnable(false);
            app.selectUnit.unitStatus.changeHiLigth(app.selectUnit.changeEquipmentWindow.changeType);
            return;
        }// end function

        private function setArmyUnit(param1:int) : void
        {
            var _loc_3:int = 0;
            var _loc_2:* = SelectUnitProxy(facade.retrieveProxy(SelectUnitProxy.NAME));
            _nowReinforcementUnit = new UnitVO();
            if (param1)
            {
                _loc_3 = 0;
                while (_loc_3 < _loc_2.units.length)
                {
                    
                    if (_loc_2.units[_loc_3].unitId == param1)
                    {
                        _loc_2.units[_loc_3].loader.x = _tacticsArray_X[_tacticsNum];
                        _loc_2.units[_loc_3].loader.y = _tacticsArray_Y[_tacticsNum];
                        _arrayStack[_loc_2.units[_loc_3].unitId] = _tacticsNum;
                        var _loc_5:* = _tacticsNum + 1;
                        _tacticsNum = _loc_5;
                        _tacticsUnits.push(_loc_2.units[_loc_3]);
                        app.selectUnit.sortieNumber = _tacticsUnits.length;
                        _nowReinforcementUnit = _loc_2.units[_loc_3];
                        break;
                    }
                    _loc_3++;
                }
            }
            return;
        }// end function

        private function commandWindowMouseOver(event:MouseEvent) : void
        {
            var _loc_2:* = SelectUnitProxy(facade.retrieveProxy(SelectUnitProxy.NAME));
            _loc_2.closeCommandTimer.stop();
            _loc_2.closeCommandTimer.reset();
            return;
        }// end function

        private function levelUp(event:Event) : void
        {
            var _loc_2:* = SelectUnitProxy(facade.retrieveProxy(SelectUnitProxy.NAME));
            var _loc_3:* = UnitProxy(facade.retrieveProxy(UnitProxy.NAME));
            _loc_2.unitStatusSaved(_tacticsNum, _removeCount);
            app.selectUnit.unitStatus.unit = new UnitVO();
            sendNotification(LEVELUP, [_selectUnit.selectedUnit, "selectUnit"]);
            return;
        }// end function

        private function handleConfirmRaid(event:Event) : void
        {
            app.showLoadingWindow();
            sendNotification(PREPARE_RAID, {units:_tacticsUnits});
            return;
        }// end function

        private function handleEvent(event:Event) : void
        {
            var _loc_7:AlertWindow = null;
            var _loc_8:TaskProxy = null;
            var _loc_9:int = 0;
            var _loc_2:* = SelectUnitProxy(facade.retrieveProxy(SelectUnitProxy.NAME));
            var _loc_3:* = PlayerProxy(facade.retrieveProxy(PlayerProxy.NAME));
            var _loc_4:* = SakuraProxy(facade.retrieveProxy(SakuraProxy.NAME));
            var _loc_5:* = UnitProxy(facade.retrieveProxy(UnitProxy.NAME));
            var _loc_6:String = null;
            switch(event.type)
            {
                case Viking.SELECT_UNIT_ACTION_START_TACTICS:
                {
                    if (_tacticsUnits.length == 0)
                    {
                        _loc_7 = AlertWindow.show(Utils.i18n("selectUnitMediatorNotSelectUnit"));
                        app.selectUnit.popupWindow(_loc_7, false);
                        app.selectUnit.canTactics = false;
                        return;
                    }
                    app.selectUnit.canTactics = true;
                    if (areAllWindowsHidden)
                    {
                        switch(_loc_2.selectUnitFor)
                        {
                            case SelectUnitProxy.FOR_RAID:
                            {
                                app.selectUnit.popupWindow(confirmRaidWindow);
                                break;
                            }
                            case SelectUnitProxy.FOR_ALL_MAP:
                            case SelectUnitProxy.FOR_EXPEDITION:
                            case SelectUnitProxy.FOR_EXPEDITION2:
                            case SelectUnitProxy.FOR_EXPEDITION3:
                            case SelectUnitProxy.FOR_CONTINUATION:
                            case SelectUnitProxy.FOR_EVIL_POINT:
                            case SelectUnitProxy.FOR_SHAM_BATTLE:
                            case SelectUnitProxy.FOR_MATCH_BATTLE:
                            case SelectUnitProxy.FOR_SPECIAL_MATCH_BATTLE:
                            {
                                app.showLoadingWindow();
                                _loc_2.tacticsUnitsIndexArray = new Array();
                                _loc_9 = 0;
                                while (_loc_9 < _tacticsUnits.length)
                                {
                                    
                                    _loc_2.tacticsUnitsIndexArray.push(_tacticsUnits[_loc_9].unitId);
                                    _loc_9++;
                                }
                                sendNotification(PREPARE_TACTICS, _tacticsUnits);
                                break;
                            }
                            case SelectUnitProxy.FOR_COLONY:
                            {
                                app.showLoadingWindow();
                                sendNotification(PREPARE_COLONY_BATTLE, {units:_tacticsUnits});
                                break;
                            }
                            default:
                            {
                                break;
                            }
                        }
                    }
                    if (_loc_2.selectUnitFor == SelectUnitProxy.FOR_SEND_ARMY)
                    {
                        if (_tacticsUnits[0])
                        {
                            if (!_tacticsUnits[0].weapon)
                            {
                                _loc_7 = AlertWindow.show(Utils.i18n("selectUnitMediatorUnitNoEquip"));
                                app.selectUnit.popupWindow(_loc_7, false);
                            }
                            else if (!_nowReinforcementUnit.unitId || _nowReinforcementUnit.unitId && _nowReinforcementUnit.unitId != _tacticsUnits[0].unitId)
                            {
                                _loc_2.sendArmyUnit("in", _tacticsUnits[0].unitId);
                            }
                            else
                            {
                                backHome();
                            }
                        }
                        else if (_nowReinforcementUnit.unitId)
                        {
                            _loc_2.sendArmyUnit("out");
                        }
                        else
                        {
                            backHome();
                        }
                    }
                    break;
                }
                case Viking.SELECT_UNIT_ACTION_BACK:
                {
                    _loc_8 = TaskProxy(facade.retrieveProxy(TaskProxy.NAME));
                    _loc_8.resumeTimer();
                    app.gameViewStack.selectedIndex = _previousViewIndex;
                    _loc_4.removeSakuraSwf(app.selectUnit.sakura);
                    break;
                }
                case SelectUnit.ALL_UNIT_RECOVERY:
                {
                    sendNotification(ALL_UNIT_RECOVERY, ALL_UNIT_RECOVERY_COMPLETE);
                    break;
                }
                default:
                {
                    break;
                }
            }
            return;
        }// end function

        private function buttonEnable(param1:Boolean) : void
        {
            return;
        }// end function

        private function resetUnits() : void
        {
            var _loc_6:int = 0;
            var _loc_1:* = UnitProxy(facade.retrieveProxy(UnitProxy.NAME));
            var _loc_2:* = SelectUnitProxy(facade.retrieveProxy(SelectUnitProxy.NAME));
            app.selectUnit.removeAllUnitUic();
            _loc_2.units = filteringSelectUnits(_loc_1.homeUnits);
            _tacticsUnits = new Array();
            _arrayStack = new Array();
            _tacticsNum = 0;
            var _loc_3:Boolean = false;
            var _loc_4:* = new Array();
            var _loc_5:int = 0;
            while (_loc_5 < _loc_2.units.length)
            {
                
                _loc_6 = 0;
                while (_loc_6 < app.selectUnit.selectUnits.length)
                {
                    
                    if (_loc_2.units[_loc_5].unitId == app.selectUnit.selectUnits[_loc_6])
                    {
                        _loc_3 = true;
                        addUnitSwf(_loc_2.units[_loc_5], _loc_5, _loc_6, true);
                        _loc_4[_loc_6] = _loc_2.units[_loc_5].unitId;
                    }
                    _loc_6++;
                }
                if (!_loc_3)
                {
                    addUnitSwf(_loc_2.units[_loc_5], _loc_5, _loc_6);
                }
                _loc_3 = false;
                _loc_5++;
            }
            _removeCount = 0;
            _removeIndexArray = new Array();
            app.selectUnit.removeAllUnitIcon();
            levelUpIconAdd();
            app.selectUnit.unitStatus.unit = new UnitVO();
            app.selectUnit.selectUnits = new Array();
            app.selectUnit.selectUnits = _loc_4;
            app.selectUnit.units = _loc_2.units;
            app.selectUnit.setPage(0);
            return;
        }// end function

        private function start() : void
        {
            var _loc_1:* = PlayerProxy(facade.retrieveProxy(PlayerProxy.NAME));
            var _loc_2:* = TacticsProxy(facade.retrieveProxy(TacticsProxy.NAME));
            var _loc_3:* = SkillProxy(facade.retrieveProxy(SkillProxy.NAME));
            var _loc_4:* = AllMapProxy(facade.retrieveProxy(AllMapProxy.NAME));
            var _loc_5:* = SelectUnitProxy(facade.retrieveProxy(SelectUnitProxy.NAME));
            app.selectUnit.init(_loc_5.maxNumberOfUnits);
            app.selectUnit.startMovie = _loc_5.showMatchMovie();
            app.selectUnit.removeAllUnitUic();
            app.selectUnit.sortieNumber = 0;
            app.selectUnit.unitStatus.unit = new UnitVO();
            _tacticsNum = 0;
            _removeCount = 0;
            _arrayStack = new Object();
            _removeIndexArray = new Array();
            _tacticsUnits = new Array();
            _nowReinforcementUnit = new UnitVO();
            initialize();
            _previousViewIndex = app.gameViewStack.selectedIndex;
            app.gameViewStack.selectedIndex = Viking.VIEW_INDEX_SELECT_UNIT;
            app.removeLoadingWindow();
            return;
        }// end function

        private function isSelected() : Boolean
        {
            var _loc_1:int = 0;
            while (_loc_1 < 5)
            {
                
                if (_selectUnit.selectedUnit.loader.x == _tacticsArray_X[_loc_1] && _selectUnit.selectedUnit.loader.y == _tacticsArray_Y[_loc_1])
                {
                    return true;
                }
                _loc_1++;
            }
            return false;
        }// end function

        private function backHome() : void
        {
            sendNotification(RELOAD_HOME_UNITS);
            app.gameViewStack.selectedIndex = Viking.VIEW_INDEX_HOME;
            return;
        }// end function

        override public function listNotificationInterests() : Array
        {
            return [StartSelectUnitCompleteCommand.START_SELECT_UNIT, SelectClickCommand.SHOW_SELECT_WINDOW, SelectUnitProxy.ARMY_UNIT_LOADED, SelectUnitProxy.SEND_REINFORCEMENT, SelectUnitProxy.SEND_REINFORCEMENT_ERROR, UnitProxy.UNIT_LEVEL_UP, UnitProxy.CHANGE_EQUIPMENT_AT_SELECT_UNIT, UnitProxy.SELECT_LEVELUP_FINISH, UnitProxy.SELECT_UNITS_LOADED, AnimationProxy.LEVELUP_ANIMATION_FINISH_BY_SELECTUNIT, LevelUpCommand.SELECT_UNIT_SELECT_SKILL, StartSelectUnitForRaidCommand.START_SELECT_UNIT, StartSelectUnitForSendArmyCommand.START_SELECT_UNIT, ReloadUnitCommand.HOME_UNITS_LOADED_FOR_RAID, ReloadUnitCommand.HOME_UNITS_LOADED_FOR_SEND_ARMY, UNIT_IN, UNIT_OUT, RELOAD_HOME_UNITS, UnitProxy.UNIT_RECOVERY_COMPLETE_BY_SELECT_UNIT, UnitProxy.LEARN_SKILL_COMPLETE_BY_SELECT_UNIT, UnitProxy.HOME_UNITS_LOADED_BY_SELECT_UNITS, ALL_UNIT_RECOVERY_COMPLETE, UnitProxy.ALL_UNIT_RECOVERY_ERROR, LevelUpCommand.SELECT_UNIT_LEVELUP_FINISHED, AnimationProxy.LEVELUP_ANIMATION_FINISH_BY_SELECT_UNIT, SHOW_LOADING_WINDOW, TacticsProxy.START_COMPLETE, TacticsProxy.START_CONTINUATION_TACTICS];
        }// end function

        private function changeEquipmentFinish(event:Event) : void
        {
            var _loc_2:* = SelectUnitProxy(facade.retrieveProxy(SelectUnitProxy.NAME));
            var _loc_3:* = UnitProxy(facade.retrieveProxy(UnitProxy.NAME));
            switch(event.type)
            {
                case CHANGE_EQUIPMENT_FINISH:
                {
                    buttonEnable(true);
                    if (app.selectUnit.changeEquipmentWindow.changeBool)
                    {
                        _loc_3.changeEquipment(_selectUnit.selectedUnit, CHANGE_EQUIPMENT_AT_SELECT_UNIT);
                        app.selectUnit.changeEquipmentWindow.changeBool = false;
                    }
                    app.selectUnit.init(_loc_2.maxNumberOfUnits);
                    app.selectUnit.unitStatus.unit = new UnitVO();
                    app.selectUnit.unitStatus.init();
                    break;
                }
                case CHANGE_EQUIPMENT_CANCEL:
                {
                    buttonEnable(true);
                    if (app.selectUnit.changeEquipmentWindow.changeBool)
                    {
                        app.showLoadingWindow();
                        _loc_2.unitStatusSaved(_tacticsNum, _removeCount);
                        app.selectUnit.removeAllUnitUic();
                        app.selectUnit.changeEquipmentWindow.changeBool = false;
                        sendNotification(RELOAD_UNITS);
                    }
                    app.selectUnit.unitStatus.unit = new UnitVO();
                    app.selectUnit.unitStatus.init();
                    break;
                }
                case CHANGE_HILIGHT:
                {
                    app.selectUnit.unitStatus.changeHiLigth(app.selectUnit.changeEquipmentWindow.changeType);
                    break;
                }
                default:
                {
                    break;
                }
            }
            return;
        }// end function

        private function handleCancelRaid(event:Event) : void
        {
            backHome();
            return;
        }// end function

        private function get areAllWindowsHidden() : Boolean
        {
            return !app.selectUnit.changeEquipmentWindow.visible && !app.selectUnit.selectItemListWindow.visible;
        }// end function

        private function addUnitSwf(param1:UnitVO, param2:int, param3:int, param4:Boolean = false) : void
        {
            var setUnit:* = param1;
            var i:* = param2;
            var index:* = param3;
            var select:* = param4;
            var selectUnitProxy:* = SelectUnitProxy(facade.retrieveProxy(SelectUnitProxy.NAME));
            var animationProxy:* = AnimationProxy(facade.retrieveProxy(AnimationProxy.NAME));
            var sakuraProxy:* = SakuraProxy(facade.retrieveProxy(SakuraProxy.NAME));
            setUnitInitPosition();
            var ui:* = new UIComponent();
            setUnit.loader.x = getUnitStandByPositionX(i);
            setUnit.loader.y = getUnitStandByPositionY(i);
            setUnit.loader.contentLoaderInfo.addEventListener(Event.COMPLETE, function (event:Event) : void
            {
                arguments = null;
                var _loc_4:LoaderInfo = null;
                setUnit.loader.contentLoaderInfo.removeEventListener(Event.COMPLETE, arguments.callee);
                if (select)
                {
                    setUnit.loader.x = _tacticsArray_X[index];
                    setUnit.loader.y = _tacticsArray_Y[index];
                    var _loc_6:* = _tacticsNum + 1;
                    _tacticsNum = _loc_6;
                    _arrayStack[setUnit.unitId] = index;
                    _tacticsUnits.push(setUnit);
                    arguments = LoaderInfo(event.target);
                    MovieClip(arguments.content).gotoAndPlay("walk_f_l");
                    _tacticsUnits.sort();
                }
                else
                {
                    _loc_4 = LoaderInfo(event.target);
                    MovieClip(_loc_4.content).gotoAndStop("item_f_l");
                }
                return;
            }// end function
            );
            setUnit.loader.loadBytes(animationProxy.getUnitAnimation(setUnit.jobMasterVO.code, setUnit.gender));
            setUnit.uic.addChild(setUnit.loader);
            ui.addChild(setUnit.uic);
            app.selectUnit.addUnitUic(ui);
            if (!setUnit.loader.hasEventListener(MouseEvent.CLICK))
            {
                setUnit.loader.addEventListener(MouseEvent.CLICK, handleMouseEvent(i));
                setUnit.loader.addEventListener(MouseEvent.MOUSE_OVER, handleMouseEvent(i));
                setUnit.loader.addEventListener(MouseEvent.MOUSE_OUT, handleMouseEvent(i));
            }
            setUnit.loader.name = "unit" + i;
            if (selectUnitProxy.selectUnitFor == SelectUnitProxy.FOR_SEND_ARMY)
            {
                setUnit.uic.toolTip = setUnit.downExpiredAtLabelForTooltip;
            }
            else
            {
                setUnit.uic.toolTip = "";
            }
            setUnit.canLevelUp = false;
            if (setUnit.level < setUnit.jobMasterVO.levelCap && setUnit.exp >= setUnit.nextExp)
            {
                setUnit.canLevelUp = true;
            }
            return;
        }// end function

        private function setUnitInitPosition() : void
        {
            var _loc_1:int = 0;
            while (_loc_1 < 15)
            {
                
                _standbyUnit_X[_loc_1] = 526 + 62 * Math.floor(_loc_1 % UNIT_PER_PAGE / COL_NUM) - _loc_1 % COL_NUM * 62;
                _standbyUnit_Y[_loc_1] = 225 - 35 * Math.floor(_loc_1 % UNIT_PER_PAGE / COL_NUM) - _loc_1 % COL_NUM * 35;
                _loc_1++;
            }
            _loc_1 = 0;
            while (_loc_1 < 5)
            {
                
                _tacticsArray_X[_loc_1] = 275 - 62 * _loc_1;
                _tacticsArray_Y[_loc_1] = 227 - 35 * _loc_1;
                _loc_1++;
            }
            return;
        }// end function

    }
}
