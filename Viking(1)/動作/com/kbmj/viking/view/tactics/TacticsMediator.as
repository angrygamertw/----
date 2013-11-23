package com.kbmj.viking.view.tactics
{
    import com.kbmj.viking.controller.*;
    import com.kbmj.viking.controller.tactics.*;
    import com.kbmj.viking.lib.*;
    import com.kbmj.viking.lib.anime.*;
    import com.kbmj.viking.proxy.*;
    import com.kbmj.viking.proxy.home.*;
    import com.kbmj.viking.proxy.tactics.*;
    import com.kbmj.viking.view.*;
    import com.kbmj.viking.view.selectUnit.*;
    import com.kbmj.viking.vo.*;
    import com.kbmj.viking.vo.tactics.*;
    import flash.display.*;
    import flash.events.*;
    import flash.geom.*;
    import flash.text.*;
    import flash.utils.*;
    import mx.controls.*;
    import mx.core.*;
    import mx.events.*;
    import org.puremvc.as3.interfaces.*;

    public class TacticsMediator extends BaseMediator
    {
        private var _turnUnit:UnitVO;
        private var startAnimationLoader:Loader;
        private var busy:Boolean = true;
        private var fil:FilterManager;
        private var NAME_ATTACK_OFF:String = "command_battle_attack_off";
        private var GridSelected:Image;
        private var TYPE_COMMAND:String = "ui";
        private var victoryConditionAnimationUI:UIComponent;
        private var matchMovieWindow:MatchMovieWindow;
        private var startAnimation:StartTacticsAnimation;
        private var NAME_EQUIPMENT_OFF:String = "command_battle_equipment_off";
        private var victoryConditionAnimationLoader:Loader;
        private var directionPoint:Point;
        private var activeUnitCursorAnimationUI:UIComponent;
        private var victoryConditionAnimation:VictoryConditionAnimation;
        private var startAnimationUI:UIComponent;
        private var directionPointFlag:Boolean = false;
        private var gridImages:Array;
        private var NAME_ITEM_OFF:String = "command_battle_item_off";
        private var armsWindow:ArmsWindow;
        private var defensePlayerName:TextField;
        private var attackPlayerName:TextField;
        private var NAME_COMMAND:String = "command_battle";
        private var areaTarget:UIComponent;
        private var _isMouseOnUnit:Boolean = false;
        private var clearAnimationUI:UIComponent;
        private var state:int = 0;
        private var _map:MapVO;
        private var clearAnimationLoader:Loader;
        private var clearAnimation:ClearTacticsAnimation;
        private var activeUnitCursorAnimation:ActiveUnitCursorAnimation;
        private var _tacticsProxy:BaseTacticsProxy;
        private var directions:Array;
        private var itemWindow:ItemWindow;
        private var _finish_battle:Boolean = false;
        private var _add_window:Boolean = false;
        private var _isRaid:Boolean;
        private var activeUnitCursorAnimationLoader:Loader;
        private var _tactics:TacticsVO;
        public static const ORDER_EXECUTED:String = NAME + "/notes/orderExecuted";
        public static const TIME_OVER:String = NAME + "/notes/timeOver";
        public static const AI_MOVE:String = NAME + "/notes/AIMove";
        public static const NAME:String = "TacticsMediator";
        public static const STATE_SELECT_ACTION:int = 2;
        private static const INFINITE:int = 9999;
        public static const AnimationFinish:String = NAME + "/note/FinishStartAnimation";
        public static const ACTION_ANIMATION:String = NAME + "/notes/actionAnimation";
        public static const IMAGE_WIDTH:int = 760;
        public static const CHECK_ADD_CHILD:String = NAME + "/notes/checkAddChild";
        public static const IMAGE_HEIGHT:int = 560;
        public static const GOTO_ALL_MAP:String = NAME + "/note/gotoAllMap";
        public static const BACK_HOME:String = NAME + "/note/backHome";
        public static const ITEM_ANIMATION:String = NAME + "/notes/itemAnimation";
        public static const STATE_SELECT_DESTINATION:int = 1;
        public static const START_HOME:String = NAME + "/note/startHome";
        public static const DEQUEUE_ORDER:String = NAME + "/notes/dequeueOrder";
        public static const GRID_HEIGHT:int = 32;
        public static const RESTART_GAME:String = NAME + "/notes/restartGame";
        public static const ATTACK:String = NAME + "/notes/attack";
        public static const START_RAID_TIMER:String = NAME + "/notes/startRaidTimer";
        public static const ACTIVE_UNIT_CURSOR_OFFSET_X:int = 0;
        public static const TACTICS_UNIT_LIST:String = NAME + "/notes/tacticsUnitList";
        public static const ROWS:int = 11;
        public static const WALK_VIEW:String = NAME + "/notes/walkView";
        public static const STATE_IDLE:int = 0;
        public static const ACTIVE_UNIT_CURSOR_OFFSET_Y:int = 0;
        public static const CLICK:String = NAME + "/notes/click";
        public static const FIRST_BATTLE_FINISHED:String = NAME + "/notes/firstBattleFinished";
        public static const GRID_WIDTH:int = 64;
        public static const STATE_SELECT_DIRECTION:int = 4;
        public static const CONTINUATION_BATTLE_FINISH:String = NAME + "/notes/continuationBattleFinish";
        public static const COLS:int = 11;
        public static const STATE_SELECT_TARGET:int = 3;
        public static const TURN_LIMIT_OVER:String = NAME + "/notes/turnLimitOver";

        public function TacticsMediator(param1:Viking)
        {
            GridSelected = makeGridSelected();
            armsWindow = new ArmsWindow();
            itemWindow = new ItemWindow();
            fil = new FilterManager();
            victoryConditionAnimation = new VictoryConditionAnimation();
            victoryConditionAnimationLoader = new Loader();
            victoryConditionAnimationUI = new UIComponent();
            startAnimation = new StartTacticsAnimation();
            startAnimationLoader = new Loader();
            startAnimationUI = new UIComponent();
            clearAnimation = new ClearTacticsAnimation();
            clearAnimationLoader = new Loader();
            clearAnimationUI = new UIComponent();
            activeUnitCursorAnimation = new ActiveUnitCursorAnimation();
            activeUnitCursorAnimationLoader = new Loader();
            activeUnitCursorAnimationUI = new UIComponent();
            areaTarget = new UIComponent();
            defensePlayerName = new TextField();
            attackPlayerName = new TextField();
            matchMovieWindow = new MatchMovieWindow();
            super(NAME, param1);
            return;
        }// end function

        private function drawBlocks() : void
        {
            var _loc_2:MapStaticObjectVO = null;
            var _loc_1:* = MapProxy(facade.retrieveProxy(MapProxy.NAME));
            for each (_loc_2 in _loc_1.mapVO.blocks)
            {
                
                app.tactics.blockLayer.addChild(_loc_2.image);
            }
            return;
        }// end function

        private function selectDirection(param1:UnitVO) : void
        {
            state = STATE_SELECT_DIRECTION;
            selectDirectionArea(param1);
            app.tactics.commandWindow.visible = false;
            return;
        }// end function

        private function endFadeout(event:Event) : void
        {
            var _loc_2:* = SoundProxy(facade.retrieveProxy(SoundProxy.NAME));
            _loc_2.fadeoutBgm();
            finishBattle();
            app.tactics.stageClear.showResult();
            return;
        }// end function

        private function showForcelyFinishedResult(param1:FinishVO) : void
        {
            param1.won = false;
            var _loc_2:* = param1.tacticsType == BaseTacticsProxy.TACTICS_TYPE_RAID ? (Utils.i18n("generalRaid")) : (Utils.i18n("generalBattle"));
            var _loc_3:* = param1.finishedBy == FinishVO.FINISHED_BY_TIME_OVER ? (Utils.i18n("tacticsMediatorFailureTime", _loc_2)) : (Utils.i18n("tacticsMediatorFailureTurn", _loc_2));
            showForcelyFinishedAlert(_loc_3, param1);
            eraseArea();
            return;
        }// end function

        private function dequeueOrder() : OrderVO
        {
            var _loc_1:* = TacticsOrderProxy(facade.retrieveProxy(TacticsOrderProxy.NAME));
            var _loc_2:* = _loc_1.dequeueOrder();
            return _loc_2;
        }// end function

        private function makeGridSelected() : Image
        {
            var _loc_1:* = new Image();
            _loc_1.graphics.lineStyle(4, 16711680);
            _loc_1.graphics.moveTo(GRID_WIDTH / 2, 0);
            _loc_1.graphics.lineTo(GRID_WIDTH, GRID_HEIGHT / 2);
            _loc_1.graphics.lineTo(GRID_WIDTH / 2, GRID_HEIGHT);
            _loc_1.graphics.lineTo(0, GRID_HEIGHT / 2);
            _loc_1.graphics.lineTo(GRID_WIDTH / 2, 0);
            return _loc_1;
        }// end function

        private function selectDirectionArea(param1:UnitVO) : void
        {
            directions = new Array();
            if ((param1.mapx + 1) < COLS)
            {
                directions.push(new Point((param1.mapx + 1), param1.mapy));
            }
            if ((param1.mapx - 1) >= 0)
            {
                directions.push(new Point((param1.mapx - 1), param1.mapy));
            }
            if ((param1.mapy + 1) < ROWS)
            {
                directions.push(new Point(param1.mapx, (param1.mapy + 1)));
            }
            if ((param1.mapy - 1) >= 0)
            {
                directions.push(new Point(param1.mapx, (param1.mapy - 1)));
            }
            drawArea(directions, "select");
            return;
        }// end function

        private function setStageResult(param1:FinishVO, param2:Boolean = false) : void
        {
            app.tactics.stageClear.setResult(param1, param2);
            return;
        }// end function

        private function resetOrders() : void
        {
            var _loc_1:* = TacticsOrderProxy(facade.retrieveProxy(TacticsOrderProxy.NAME));
            _loc_1.resetQueue();
            return;
        }// end function

        private function handleGridMouseOut(param1:int, param2:int) : Function
        {
            var mapx:* = param1;
            var mapy:* = param2;
            return function (event:MouseEvent) : void
            {
                gridImages[mapx][mapy].source = null;
                return;
            }// end function
            ;
        }// end function

        private function removeCommandWindow() : void
        {
            arguments = AnimationProxy(facade.retrieveProxy(AnimationProxy.NAME));
            if (_add_window)
            {
                arguments.generalLoaders[TYPE_COMMAND][NAME_COMMAND].content.removeEventListener("ICON_EQUIPMENT", arguments.callee);
                arguments.generalLoaders[TYPE_COMMAND][NAME_COMMAND].content.removeEventListener("ICON_ITEM", arguments.callee);
                arguments.generalLoaders[TYPE_COMMAND][NAME_COMMAND].content.removeEventListener("ICON_ATTACK", arguments.callee);
                arguments.generalLoaders[TYPE_COMMAND][NAME_COMMAND].content.removeEventListener("ICON_BACK", arguments.callee);
                arguments.generalLoaders[TYPE_COMMAND][NAME_COMMAND].content.removeEventListener("ICON_WAIT", arguments.callee);
                arguments.generalRemoveAnimation(TYPE_COMMAND, NAME_COMMAND, app.tactics.commandWindow.commandBattleLayer);
                arguments.generalRemoveAnimation(TYPE_COMMAND, NAME_EQUIPMENT_OFF, app.tactics.commandWindow.commandBattleLayer);
                arguments.generalRemoveAnimation(TYPE_COMMAND, NAME_ITEM_OFF, app.tactics.commandWindow.commandBattleLayer);
                arguments.generalRemoveAnimation(TYPE_COMMAND, NAME_ATTACK_OFF, app.tactics.commandWindow.commandBattleLayer);
                _add_window = false;
            }
            return;
        }// end function

        private function itemConfirmAlertListener(param1:UnitVO) : Function
        {
            var unit:* = param1;
            return function (event:CloseEvent) : void
            {
                if (event.detail == AlertWindow.YES)
                {
                    _tacticsProxy.useItem(new UseItemVO(unit, unit.item));
                    app.tactics.commandWindow.visible = false;
                }
                if (event.detail == AlertWindow.CANCEL)
                {
                    app.tactics.commandWindow.visible = true;
                }
                return;
            }// end function
            ;
        }// end function

        private function showCommandWindow(param1:Point, param2:UnitVO) : void
        {
            var animationProxy:AnimationProxy;
            var mapPoint:* = param1;
            var unit:* = param2;
            var unitProxy:* = UnitProxy(facade.retrieveProxy(UnitProxy.NAME));
            animationProxy = AnimationProxy(facade.retrieveProxy(AnimationProxy.NAME));
            var p:* = Utils.indexToPoint(mapPoint.x, mapPoint.y);
            p = UnitProxy.unitRevisePoint(unit, p);
            p = Utils.commandPosition(p);
            app.tactics.commandWindow.x = p.x;
            app.tactics.commandWindow.y = p.y;
            app.tactics.commandWindow.unit = unit;
            armsWindow.unit = unit;
            app.tactics.commandWindow.visible = true;
            MovieClip(animationProxy.generalLoaders[TYPE_COMMAND][NAME_COMMAND].contentLoaderInfo.content).gotoAndPlay("battlecommand");
            MovieClip(animationProxy.generalLoaders[TYPE_COMMAND][NAME_EQUIPMENT_OFF].contentLoaderInfo.content).gotoAndPlay("icon_null");
            MovieClip(animationProxy.generalLoaders[TYPE_COMMAND][NAME_ITEM_OFF].contentLoaderInfo.content).gotoAndPlay("icon_null");
            MovieClip(animationProxy.generalLoaders[TYPE_COMMAND][NAME_ATTACK_OFF].contentLoaderInfo.content).gotoAndPlay("icon_null");
            animationProxy.generalLoaders[TYPE_COMMAND][NAME_COMMAND].content.addEventListener("ENLARGE_END", function (event:Event) : void
            {
                animationProxy.generalLoaders[TYPE_COMMAND][NAME_COMMAND].content.removeEventListener("ENLARGE_END", arguments.callee);
                if (unit.canEquip == false)
                {
                    MovieClip(animationProxy.generalLoaders[TYPE_COMMAND][NAME_EQUIPMENT_OFF].contentLoaderInfo.content).gotoAndPlay("icon_equipment_off");
                }
                if (unit.canUseItem == false)
                {
                    MovieClip(animationProxy.generalLoaders[TYPE_COMMAND][NAME_ITEM_OFF].contentLoaderInfo.content).gotoAndPlay("icon_item_off");
                }
                if (unit.canAttack == false)
                {
                    MovieClip(animationProxy.generalLoaders[TYPE_COMMAND][NAME_ATTACK_OFF].contentLoaderInfo.content).gotoAndPlay("icon_attack_off");
                }
                return;
            }// end function
            );
            return;
        }// end function

        private function showStatusWindow(param1:UnitVO, param2:UnitVO) : void
        {
            if (_finish_battle)
            {
                return;
            }
            app.tactics.statusWindow.visible = true;
            app.tactics.targetStatusWindow.visible = false;
            app.tactics.playerTargetWindow.visible = false;
            app.tactics.enemyStatusWindow.visible = false;
            if (param1.team == 0)
            {
                app.tactics.statusWindow.unit = param1;
                if (param2 && param1 != param2)
                {
                    if (param2.team == 1)
                    {
                        app.tactics.targetStatusWindow.visible = true;
                        app.tactics.targetStatusWindow.unit = param2;
                    }
                    else
                    {
                        app.tactics.playerTargetWindow.unit = param2;
                        app.tactics.playerTargetWindow.visible = true;
                        app.tactics.targetStatusWindow.visible = false;
                    }
                }
            }
            else if (param1.team == 1)
            {
                app.tactics.targetStatusWindow.visible = true;
                app.tactics.targetStatusWindow.unit = param1;
                if (param2)
                {
                    if (param2.team == 0)
                    {
                        app.tactics.statusWindow.unit = param2;
                    }
                    else
                    {
                        app.tactics.enemyStatusWindow.unit = param2;
                        app.tactics.enemyStatusWindow.visible = true;
                        app.tactics.statusWindow.visible = false;
                    }
                }
            }
            return;
        }// end function

        private function startNextContinuationBattle() : void
        {
            var _loc_1:* = TacticsProxy(facade.retrieveProxy(TacticsProxy.NAME));
            _loc_1.startContinuationBattle();
            return;
        }// end function

        private function showOpeningAnimation() : void
        {
            victoryConditionAnimation.addEventListener("LoadFinish", function (event:Event) : void
            {
                var e:* = event;
                victoryConditionAnimationLoader.contentLoaderInfo.addEventListener(Event.COMPLETE, function () : void
                {
                    MovieClip(victoryConditionAnimationLoader.content).gotoAndPlay(0);
                    victoryConditionAnimationLoader.content.addEventListener("AnimationFinish", finishConditionAnimation);
                    return;
                }// end function
                );
                victoryConditionAnimationLoader.loadBytes(victoryConditionAnimation.getAnimation("VictoryCondition"));
                victoryConditionAnimationUI.addChild(victoryConditionAnimationLoader);
                app.tactics.movieLayer.addChild(victoryConditionAnimationUI);
                return;
            }// end function
            );
            startAnimation.addEventListener("LoadFinish", function (event:Event) : void
            {
                startAnimationLoader.loadBytes(startAnimation.getAnimation("StartTactics"));
                return;
            }// end function
            );
            clearAnimation.addEventListener("LoadFinish", function (event:Event) : void
            {
                clearAnimationLoader.loadBytes(clearAnimation.getAnimation("ClearTactics"));
                return;
            }// end function
            );
            victoryConditionAnimation.load();
            startAnimationLoader.y = 150;
            startAnimation.load();
            clearAnimation.load();
            activeUnitCursorAnimation.addEventListener("LoadFinish", function (event:Event) : void
            {
                activeUnitCursorAnimationLoader.loadBytes(activeUnitCursorAnimation.getAnimation("ActiveUnitCursor"));
                return;
            }// end function
            );
            activeUnitCursorAnimation.load();
            playTacticsBgm();
            return;
        }// end function

        private function finishClearAnimation(event:Event) : void
        {
            clearAnimationUI.removeChild(clearAnimationLoader);
            app.tactics.movieLayer.removeChild(clearAnimationUI);
            return;
        }// end function

        private function finishBattle() : void
        {
            finishCursorAnimation();
            removeCommandWindow();
            clearBlocks();
            app.tactics.cursorLayer.visible = false;
            app.tactics.objectLayer.visible = false;
            app.tactics.controlLayer.removeAllChildren();
            app.tactics.objectLayer.removeAllChildren();
            app.tactics.cursorLayer.removeAllChildren();
            app.tactics.areaLayer.removeAllChildren();
            app.tactics.mapImageSource = null;
            _finish_battle = true;
            return;
        }// end function

        private function handleGridMouseOver(param1:int, param2:int) : Function
        {
            var mapx:* = param1;
            var mapy:* = param2;
            return function (event:MouseEvent) : void
            {
                var unit:*;
                var attackArea:*;
                var point:*;
                var e:* = event;
                var mapProxy:* = MapProxy(facade.retrieveProxy(MapProxy.NAME));
                if (mapProxy.grids[mapx][mapy].cost == MapProxy.COST_INTO)
                {
                    gridImages[mapx][mapy].source = GridSelected;
                }
                else
                {
                    for each (directionPoint in directions)
                    {
                        
                        if (directionPoint.x == mapx && directionPoint.y == mapy)
                        {
                            gridImages[mapx][mapy].source = GridSelected;
                            directionPointFlag = true;
                            break;
                        }
                    }
                }
                hideHitRate();
                unit = _tacticsProxy.getUnitAt(new Point(mapx, mapy));
                if (!_turnUnit.isAI)
                {
                    if (state != TacticsVO.STATE_ATTACK && state != TacticsVO.STATE_WAIT)
                    {
                    }
                    switch(state)
                    {
                        case STATE_IDLE:
                        {
                            break;
                        }
                        case STATE_SELECT_TARGET:
                        {
                            if (unit.team == 1 && attackArea.filter(function (param1:Point, param2:int, param3:Array) : Boolean
                {
                    return param1.equals(point);
                }// end function
                ).length > 0)
                            {
                            }
                            break;
                        }
                        default:
                        {
                            break;
                        }
                    }
                }
                if (_isMouseOnUnit && (state != TacticsVO.STATE_ATTACK && state != TacticsVO.STATE_WAIT))
                {
                }
                return;
            }// end function
            ;
        }// end function

        private function initializeUnit(param1:UnitVO, param2:Boolean = false) : void
        {
            var _loc_3:* = AnimationProxy(facade.retrieveProxy(AnimationProxy.NAME));
            param1.loader.contentLoaderInfo.addEventListener(Event.COMPLETE, handleUnitLoaded(param1, _loc_3, param2));
            param1.loader.loadBytes(_loc_3.getUnitAnimation(param1.jobMasterVO.code, param1.gender));
            var _loc_4:* = Utils.indexToPoint(param1.mapx, param1.mapy);
            _loc_4 = UnitProxy.unitRevisePoint(param1, _loc_4);
            param1.loader.x = _loc_4.x;
            param1.loader.y = _loc_4.y;
            param1.transitionalMapx = param1.mapx;
            param1.transitionalMapy = param1.mapy;
            param1.uic.addChild(param1.loader);
            param1.uic.cacheAsBitmap = true;
            return;
        }// end function

        private function initializeGrids(param1:Array) : void
        {
            var _loc_4:int = 0;
            var _loc_5:Image = null;
            var _loc_6:Point = null;
            var _loc_7:GridVO = null;
            gridImages = new Array();
            var _loc_2:int = 0;
            var _loc_3:int = 0;
            while (_loc_3 < COLS)
            {
                
                gridImages.push(new Array());
                _loc_4 = 0;
                while (_loc_4 < ROWS)
                {
                    
                    _loc_5 = new Image();
                    _loc_6 = Utils.indexToPoint(_loc_3, _loc_4);
                    _loc_5.x = _loc_6.x;
                    _loc_5.y = _loc_6.y;
                    gridImages[_loc_3].push(_loc_5);
                    app.tactics.cursorLayer.addChild(_loc_5);
                    makeGridEventArea(_loc_3, _loc_4);
                    _loc_7 = param1[_loc_3][_loc_4];
                    if (_loc_7.mapObject && _loc_7.mapObject is MapStaticObjectVO)
                    {
                        app.tactics.objectLayer.addChild(MapStaticObjectVO(_loc_7.mapObject).image);
                    }
                    _loc_4++;
                }
                _loc_3++;
            }
            return;
        }// end function

        override public function handleNotification(param1:INotification) : void
        {
            var unit:UnitVO;
            var msg:String;
            var params:Object;
            var btn:uint;
            var alertWindow:AlertWindow;
            var playerUnitImage:Object;
            var targetUnitImage:Object;
            var turn:int;
            var result:FinishVO;
            var homeProxy:HomeProxy;
            var finishVO:FinishVO;
            var unitRewards:Array;
            var attackVO:AttackVO;
            var unitReward:Object;
            var note:* = param1;
            var animationProxy:* = AnimationProxy(facade.retrieveProxy(AnimationProxy.NAME));
            var skillProxy:* = SkillProxy(facade.retrieveProxy(SkillProxy.NAME));
            var unitProxy:* = UnitProxy(facade.retrieveProxy(UnitProxy.NAME));
            var imageProxy:* = ImageProxy(facade.retrieveProxy(ImageProxy.NAME));
            switch(note.getName())
            {
                case PrepareContinuationTacticsCompleteCommand.START_CONTINUATION_TACTICS:
                {
                    params = note.getBody() as Object;
                    busy = true;
                    _tacticsProxy = params.tacticsProxy as BaseTacticsProxy;
                    initializeContinuationMap(params);
                    break;
                }
                case PrepareTacticsCompleteCommand.START_TACTICS:
                case PreparePvPBattleCompleteCommand.START_PVP_BATTLE:
                {
                    params = note.getBody() as Object;
                    busy = true;
                    _tacticsProxy = params.tacticsProxy as BaseTacticsProxy;
                    initialize(params.tacticsVO as TacticsVO);
                    fixUnitView();
                    break;
                }
                case TacticsProxy.START_ERROR:
                case TacticsProxy.START_RAID_ERROR:
                case TacticsProxy.FINISH_ERROR:
                {
                    app.removeLoadingWindow();
                    msg = this.Object(note.getBody()).head.error_message;
                    btn = note.getName() == TacticsProxy.FINISH_ERROR ? (0) : (AlertWindow.OK);
                    alertWindow = AlertWindow.show(msg, "", btn);
                    app.tactics.popupWindow(alertWindow, false);
                    break;
                }
                case TacticsProxy.START_MATCH_MOVIE:
                {
                    matchMovieWindow.init();
                    matchMovieWindow.tacticsParams = note.getBody() as Object;
                    playerUnitImage = new Object();
                    targetUnitImage = new Object();
                    imageProxy.loadImage(playerUnitImage, "image", "/images/unit/img_r_" + matchMovieWindow.tacticsParams.allyUnits[0].galleryCode + ".png");
                    imageProxy.loadImage(targetUnitImage, "image", "/images/unit/img_r_" + matchMovieWindow.tacticsParams.enemyUnits[0].galleryCode + ".png");
                    imageProxy.callAfterImageLoaded(function () : void
            {
                matchMovieWindow.playerUnitImage = playerUnitImage.image;
                matchMovieWindow.targetUnitImage = targetUnitImage.image;
                app.tactics.popupWindow(matchMovieWindow, false);
                app.removeLoadingWindow();
                return;
            }// end function
            );
                    break;
                }
                case WalkUnitCommand.PERMUTE_MAP_OBJECT:
                case WalkFinishCommand.PERMUTE_MAP_OBJECT:
                {
                    fixUnitView();
                    break;
                }
                case BaseBattleLogicProxy.TURN_END:
                {
                    turn = note.getBody() as int;
                    sendNotification(BaseBattleLogicProxy.ENQUEUE_ORDER, new OrderVO(new TurnEndVO(turn)));
                    break;
                }
                case AnimationProxy.UNIT_DIED:
                {
                    unit = note.getBody() as UnitVO;
                    if (unit.uicRemoved == false)
                    {
                        unit.uicRemoved = true;
                        app.tactics.objectLayer.removeChild(unit.uic);
                        app.tactics.objectLayer.removeChild(unit.effectUic);
                        app.tactics.objectLayer.removeChild(unit.damageUic);
                    }
                    break;
                }
                case TacticsProxy.DEFAULT_WIN:
                {
                    resetOrders();
                    result = note.getBody() as FinishVO;
                    hideStatusWindow();
                    hideHitRate();
                    app.removeLoadingWindow();
                    AlertWindow.show(Utils.i18n("tacticsMediatorUnitHaveNoArmor", result.targetName), "", AlertWindow.OK, app, function () : void
            {
                var _loc_1:Object = null;
                for each (_loc_1 in result.reward.unitExps)
                {
                    
                    unit = _loc_1.unitVO;
                    initializeUnit(unit, true);
                }
                setStageResult(result);
                app.tactics.stageClear.showResult();
                app.gameViewStack.selectedIndex = Viking.VIEW_INDEX_TACTICS;
                return;
            }// end function
            );
                }
                case TacticsProxy.STAGE_CLEARED:
                case TacticsProxy.STAGE_FAILED:
                {
                    sendNotification(BuildingProxy.ACTIVITY_START);
                    break;
                }
                case TacticsProxy.COLONY_CLEARED:
                case TacticsProxy.COLONY_FAILED:
                {
                    homeProxy = HomeProxy(facade.retrieveProxy(HomeProxy.NAME));
                    homeProxy.colony(HomeProxy.COLONY_RELOADED);
                    sendNotification(BuildingProxy.ACTIVITY_START);
                    break;
                }
                case InitializeFinishedCommand.SHOW_RESULT_FOR_RESET_BATTLE:
                {
                    app.gameViewStack.selectedIndex = Viking.VIEW_INDEX_TACTICS;
                    app.removeLoadingWindow();
                    finishVO = note.getBody() as FinishVO;
                    unitRewards = finishVO.reward.unitExps;
                    var _loc_3:int = 0;
                    var _loc_4:* = unitRewards;
                    while (_loc_4 in _loc_3)
                    {
                        
                        unitReward = _loc_4[_loc_3];
                        unit = unitReward.unitVO;
                        initializeUnit(unit);
                    }
                    showFailedResult(finishVO, true);
                    break;
                }
                case AttackFinishCommand.COUNTER:
                case ActionAnimationCommand.UPDATE_STATUS_WINDOW:
                {
                    attackVO = note.getBody() as AttackVO;
                    showStatusWindowV2(attackVO.attacker, attackVO.target, attackVO.counterAttack);
                    break;
                }
                case ActionAnimationCommand.MAP_VIBRATION:
                {
                    mapVibration();
                    break;
                }
                case RaidTimerProxy.RAID_TIMER_TICK:
                {
                    app.tactics.timerWindow.time = note.getBody() as int;
                    break;
                }
                case TacticsProxy.SHOW_LOADING_WINDOW:
                case TimeOverCommand.SHOW_LOADING_WINDOW:
                {
                    app.showLoadingWindow();
                    break;
                }
                case TacticsOrderProxy.ORDER_QUEUED:
                {
                    executeOrderIfPossible();
                    break;
                }
                case ORDER_EXECUTED:
                case ItemFinishCommand.ORDER_EXECUTED:
                {
                    busy = false;
                    executeOrderIfPossible();
                    break;
                }
                case BaseBattleLogicProxy.INVALID_DESTINATION:
                {
                    params = note.getBody() as Object;
                    selectDestination(params.unit as UnitVO, params.grids as Array);
                    break;
                }
                case BaseBattleLogicProxy.INVALID_ATTACK_TARGET:
                {
                    selectAction(note.getBody() as UnitVO);
                    break;
                }
                case BaseBattleLogicProxy.INVALID_DIRECTION:
                {
                    selectDirection(note.getBody() as UnitVO);
                    break;
                }
                default:
                {
                    break;
                }
            }
            return;
        }// end function

        private function moveUnitTo(param1:UnitVO, param2:Point) : void
        {
            var _loc_3:* = Utils.indexToPoint(param2.x, param2.y);
            param1.mapx = param2.x;
            param1.mapy = param2.y;
            param1.loader.x = _loc_3.x - 8;
            param1.loader.y = _loc_3.y - 45;
            return;
        }// end function

        private function handleEvent(event:Event) : void
        {
            var _loc_6:TacticsProxy = null;
            var _loc_2:* = AnimationProxy(facade.retrieveProxy(AnimationProxy.NAME));
            var _loc_3:* = SoundProxy(facade.retrieveProxy(SoundProxy.NAME));
            var _loc_4:* = ConfigProxy(facade.retrieveProxy(ConfigProxy.NAME));
            var _loc_5:* = _turnUnit;
            switch(event.type)
            {
                case Viking.ACTION_ATTACK:
                {
                    selectTarget(_loc_5);
                    break;
                }
                case Viking.ACTION_ITEM:
                {
                    itemWindow.useItem(_loc_5);
                    app.tactics.popupWindow(itemWindow);
                    break;
                }
                case Viking.CHANGE_ARMS:
                {
                    armsWindow.setArms();
                    app.tactics.popupWindow(armsWindow);
                    break;
                }
                case Viking.ACTION_WAIT:
                {
                    _tacticsProxy.wait(new WaitVO(_loc_5));
                    break;
                }
                case Viking.ACTION_BACK:
                {
                    _tacticsProxy.cancelWalk(new CancelWalkVO(_loc_5));
                    fixUnitView();
                    break;
                }
                case Viking.SHOW_DETAILS:
                {
                    break;
                }
                case SelectUnitMediator.RESULT_CHANGE_ARMS:
                {
                    break;
                }
                case Viking.ACTION_RETURN:
                {
                    app.showLoadingWindow();
                    _loc_6 = TacticsProxy(facade.retrieveProxy(TacticsProxy.NAME));
                    if (_loc_6.returnToMap)
                    {
                        sendNotification(GOTO_ALL_MAP);
                    }
                    else
                    {
                        app.gameViewStack.selectedIndex = Viking.VIEW_INDEX_HOME;
                        if (_loc_6.isRestarted)
                        {
                            sendNotification(START_HOME);
                        }
                        else if (_loc_6.isContinuationBattle)
                        {
                            app.showLoadingWindow();
                            sendNotification(CONTINUATION_BATTLE_FINISH, _loc_6.tacticsWon);
                        }
                        else
                        {
                            sendNotification(BACK_HOME);
                        }
                    }
                    break;
                }
                case Viking.ACTION_RESTART_GAME:
                {
                    app.showLoadingWindow();
                    sendNotification(RESTART_GAME);
                    break;
                }
                case Viking.TACTICS_UNIT_LIST:
                {
                    sendNotification(TACTICS_UNIT_LIST, _tacticsProxy.aliveUnits);
                    break;
                }
                case Viking.TACTICS_SOUND_ON:
                {
                    _loc_4.configVO.playSound = true;
                    _loc_4.setConfig();
                    _loc_3.stopBgm();
                    _loc_3.playTacticsBgm();
                    break;
                }
                case Viking.TACTICS_SOUND_OFF:
                {
                    _loc_4.configVO.playSound = false;
                    _loc_4.setConfig();
                    _loc_3.stopBgm();
                    break;
                }
                case Viking.TACTICS_FAST_ON:
                {
                    _loc_4.configVO.fast = true;
                    _loc_4.setConfig();
                    break;
                }
                case Viking.TACTICS_FAST_OFF:
                {
                    _loc_4.configVO.fast = false;
                    _loc_4.setConfig();
                    break;
                }
                default:
                {
                    break;
                }
            }
            return;
        }// end function

        private function makeGridEventArea(param1:int, param2:int) : void
        {
            var _loc_3:* = Utils.indexToPoint(param1, param2);
            var _loc_4:* = new Image();
            new Image().x = _loc_3.x;
            _loc_4.y = _loc_3.y;
            _loc_4.graphics.beginFill(16777215, 0);
            _loc_4.graphics.moveTo(GRID_WIDTH / 2, 0);
            _loc_4.graphics.lineTo(GRID_WIDTH, GRID_HEIGHT / 2);
            _loc_4.graphics.lineTo(GRID_WIDTH / 2, GRID_HEIGHT);
            _loc_4.graphics.lineTo(0, GRID_HEIGHT / 2);
            _loc_4.graphics.endFill();
            _loc_4.addEventListener(MouseEvent.MOUSE_DOWN, handleGridMouseDown(param1, param2));
            _loc_4.addEventListener(MouseEvent.MOUSE_OVER, handleGridMouseOver(param1, param2));
            _loc_4.addEventListener(MouseEvent.MOUSE_OUT, handleGridMouseOut(param1, param2));
            app.tactics.controlLayer.addChild(_loc_4);
            return;
        }// end function

        private function clearBlocks() : void
        {
            app.tactics.blockLayer.removeAllChildren();
            return;
        }// end function

        public function showHitRate(param1:UnitVO, param2:UnitVO) : void
        {
            var _loc_3:* = SkillProxy(facade.retrieveProxy(SkillProxy.NAME));
            var _loc_4:* = UnitProxy(facade.retrieveProxy(UnitProxy.NAME));
            if (param2 == null)
            {
                app.tactics.hitRateWindow.visible = false;
            }
            else
            {
                app.tactics.hitRateWindow.attackHitRate = param1 ? (_loc_4.hitRate(param1, param2, param2.direction)) : (0);
                app.tactics.hitRateWindow.attackDamage = UnitProxy.getDamage(param1, param2);
                if (param1.weaponType != WeaponVO.WEAPON_TYPE_MAGIC && param1.weaponType != WeaponVO.WEAPON_TYPE_HEAL && param1.weaponType != WeaponVO.WEAPON_TYPE_BOW && param2.canCounter && UnitProxy.canPhysicalAttack(param2, param1))
                {
                    app.tactics.hitRateWindow.counterNum.visible = true;
                    app.tactics.hitRateWindow.counterString.visible = false;
                    app.tactics.hitRateWindow.counterHitRate = _loc_4.hitRate(param2, param1, Utils.getDirectionV2(param1.position, param2.position));
                    app.tactics.hitRateWindow.counterDamage = UnitProxy.getDamage(param2, param1);
                }
                else
                {
                    app.tactics.hitRateWindow.counterNum.visible = false;
                    app.tactics.hitRateWindow.counterString.visible = true;
                }
                app.tactics.hitRateWindow.visible = true;
            }
            return;
        }// end function

        private function showFailedResult(param1:FinishVO, param2:Boolean = false) : void
        {
            app.removeLoadingWindow();
            setStageResult(param1, param2);
            hideStatusWindow();
            hideHitRate();
            if (clearAnimationLoader.content)
            {
                MovieClip(clearAnimationLoader.content).gotoAndPlay(0);
                clearAnimationLoader.content.addEventListener("EndFadeout", endFadeout);
                clearAnimationLoader.content.addEventListener("AnimationFinish", finishClearAnimation);
                clearAnimationUI.addChild(clearAnimationLoader);
                app.tactics.movieLayer.addChild(clearAnimationUI);
            }
            else
            {
                endFadeout(null);
            }
            return;
        }// end function

        private function selectAction(param1:UnitVO) : void
        {
            state = STATE_SELECT_ACTION;
            eraseArea();
            showCommandWindow(new Point(param1.mapx, param1.mapy), param1);
            return;
        }// end function

        private function eraseArea() : void
        {
            drawArea(null, null);
            return;
        }// end function

        private function useItem(param1:UnitVO) : void
        {
            if (param1.item)
            {
                AlertWindow.show(Utils.i18n("itemUseItemConf", param1.item.nameLabel, param1.item.effect, param1.item.endurance), "", AlertWindow.YES | AlertWindow.CANCEL, app.tactics, itemConfirmAlertListener(param1));
            }
            else
            {
                AlertWindow.show(Utils.i18n("itemHaveNoItem"), "", AlertWindow.OK, app.tactics, itemConfirmAlertListener(param1));
            }
            return;
        }// end function

        private function setCursor(param1:UnitVO) : void
        {
            activeUnitCursorAnimationLoader.name = CHECK_ADD_CHILD;
            activeUnitCursorAnimationLoader.x = param1.loader.x + ACTIVE_UNIT_CURSOR_OFFSET_X;
            activeUnitCursorAnimationLoader.y = param1.loader.y + ACTIVE_UNIT_CURSOR_OFFSET_Y;
            activeUnitCursorAnimationUI.addChild(activeUnitCursorAnimationLoader);
            app.tactics.map.addChild(activeUnitCursorAnimationUI);
            return;
        }// end function

        private function showMovie(param1:ByteArray, param2:Function) : void
        {
            var loader:Loader;
            var uiComponent:UIComponent;
            var movie:* = param1;
            var afterFinish:* = param2;
            loader = new Loader();
            uiComponent = new UIComponent();
            loader.contentLoaderInfo.addEventListener(Event.COMPLETE, function () : void
            {
                afterFinish(loader, uiComponent);
                MovieClip(loader.content).gotoAndPlay(0);
                return;
            }// end function
            );
            uiComponent.addChild(loader);
            app.tactics.movieLayer.addChild(uiComponent);
            loader.loadBytes(movie);
            return;
        }// end function

        private function start() : void
        {
            var _loc_1:* = TacticsProxy(facade.retrieveProxy(TacticsProxy.NAME));
            _turnUnit.activeFlag = true;
            if (_loc_1.limitBattle)
            {
                sendNotification(START_RAID_TIMER);
            }
            showStatusWindowV2(_turnUnit, null);
            busy = false;
            var _loc_2:* = UnitProxy(facade.retrieveProxy(UnitProxy.NAME));
            _loc_2.turnRecovery(_turnUnit);
            _tacticsProxy.startMoving();
            return;
        }// end function

        private function hideHitRate() : void
        {
            app.tactics.hitRateWindow.visible = false;
            return;
        }// end function

        private function selectDestination(param1:UnitVO, param2:Array) : void
        {
            state = STATE_SELECT_DESTINATION;
            app.tactics.commandWindow.visible = false;
            eraseArea();
            drawArea(Utils.findMoveArea(param1, param2), "move");
            hideHitRate();
            return;
        }// end function

        private function drawMap() : void
        {
            var _loc_1:* = MapProxy(facade.retrieveProxy(MapProxy.NAME));
            app.tactics.mapImageSource = _loc_1.mapVO.image;
            return;
        }// end function

        private function showResult(param1:FinishVO) : void
        {
            busy = true;
            if ((param1.tacticsType == TacticsVO.TACTICS_TYPE_RAID || param1.tacticsType == TacticsVO.TACTICS_TYPE_COLONY) && (param1.finishedBy == FinishVO.FINISHED_BY_TURN_LIMIT_OVER || param1.finishedBy == FinishVO.FINISHED_BY_TIME_OVER))
            {
                showForcelyFinishedResult(param1);
            }
            else if (param1.won && !param1.cheated)
            {
                showClearResult(param1);
            }
            else
            {
                showFailedResult(param1);
            }
            return;
        }// end function

        private function fixUnitView() : void
        {
            var _loc_1:UnitVO = null;
            var _loc_2:ITacticsMapObject = null;
            var _loc_3:MapStaticObjectVO = null;
            _tactics.mapObjects.sortOn("zIndex", Array.NUMERIC);
            for each (_loc_2 in _tactics.mapObjects)
            {
                
                if (_loc_2 is UnitVO)
                {
                    _loc_1 = _loc_2 as UnitVO;
                    if (_loc_1.displayHp)
                    {
                        app.tactics.objectLayer.addChild(_loc_1.uic);
                        app.tactics.objectLayer.addChild(_loc_1.effectUic);
                        app.tactics.objectLayer.addChild(_loc_1.damageUic);
                    }
                    continue;
                }
                _loc_3 = _loc_2 as MapStaticObjectVO;
                app.tactics.objectLayer.addChild(_loc_3.image);
            }
            return;
        }// end function

        private function executeOrderIfPossible() : void
        {
            var _loc_1:OrderVO = null;
            if (!busy)
            {
                _loc_1 = dequeueOrder();
                if (_loc_1)
                {
                    executeOrder(_loc_1);
                }
            }
            return;
        }// end function

        private function showClearResult(param1:FinishVO) : void
        {
            setStageResult(param1);
            hideStatusWindow();
            hideHitRate();
            MovieClip(clearAnimationLoader.content).gotoAndPlay(0);
            clearAnimationLoader.content.addEventListener("EndFadeout", endFadeout);
            clearAnimationLoader.content.addEventListener("AnimationFinish", finishClearAnimation);
            clearAnimationUI.addChild(clearAnimationLoader);
            app.tactics.movieLayer.addChild(clearAnimationUI);
            return;
        }// end function

        private function initializeListeners() : void
        {
            addEventListeners([[app.tactics, Viking.SELECT_ENEMY_LIST, handleEvent], [app.tactics, Viking.TACTICS_UNIT_LIST, handleEvent], [app.tactics, Viking.TACTICS_SOUND_ON, handleEvent], [app.tactics, Viking.TACTICS_SOUND_OFF, handleEvent], [app.tactics, Viking.TACTICS_FAST_ON, handleEvent], [app.tactics, Viking.TACTICS_FAST_OFF, handleEvent], [app.tactics.commandWindow, Viking.ACTION_ATTACK, handleEvent], [app.tactics.commandWindow, Viking.ACTION_ITEM, handleEvent], [app.tactics.commandWindow, Viking.ACTION_WAIT, handleEvent], [app.tactics.commandWindow, Viking.CHANGE_ARMS, handleEvent], [app.tactics.commandWindow, Viking.ACTION_BACK, handleEvent], [app.tactics.commandWindow, Viking.SHOW_DETAILS, handleEvent], [app.tactics.itemWindow, Viking.ACTION_ITEM_CLOSE, handleEvent], [app.tactics.itemWindow, Viking.ACTION_ITEM_SELECT, handleEvent], [app.tactics.stageClear, Viking.ACTION_RETURN, handleEvent], [app.tactics.stageClear, Viking.ACTION_RESTART_GAME, handleEvent], [matchMovieWindow, MatchMovieWindow.MOVIE_ENDED, handlePopupEvent], [armsWindow, Viking.ARM_EQUIPPED, handlePopupEvent], [itemWindow, Viking.ACTION_ITEM_SELECT, handlePopupEvent]]);
            return;
        }// end function

        private function initialize(param1:TacticsVO) : void
        {
            var _loc_2:* = ConfigProxy(facade.retrieveProxy(ConfigProxy.NAME));
            var _loc_3:* = TacticsProxy(facade.retrieveProxy(TacticsProxy.NAME));
            _tactics = param1;
            _turnUnit = _tactics.turnUnit;
            if (param1.isRaid)
            {
                _isRaid = param1.isRaid;
            }
            initializeUnits(_tactics.aliveUnits, _turnUnit);
            initializeGrids(_tactics.map.grids);
            app.tactics.stageClear.initResult();
            app.tactics.timerWindow.visible = _loc_3.limitBattle && !_loc_3.isColonyBattle;
            app.tactics.timerWindow.time = 900;
            app.tactics.missionWindow.turn = 1;
            app.tactics.missionWindow.stageName = _tactics.stageName;
            app.tactics.missionWindow.missionStatement = _tactics.missionStatement;
            app.tactics.raidTimer.visible = false;
            app.tactics.raidTimer.resetTimeString();
            app.tactics.missionWindow.turn = param1.turn;
            app.tactics.missionWindow.groupIcon.selectedIndex = _loc_3.vsPc() ? (0) : (1);
            app.tactics.areaLayer.addChild(areaTarget);
            var _loc_4:* = ItemProxy(facade.retrieveProxy(ItemProxy.NAME));
            ItemProxy(facade.retrieveProxy(ItemProxy.NAME)).layer = app.tactics.itemEffectLayer;
            drawMap();
            drawBlocks();
            hideStatusWindow();
            app.gameViewStack.selectedIndex = Viking.VIEW_INDEX_TACTICS;
            app.removeLoadingWindow();
            showOpeningAnimation();
            addCommandWindow();
            _finish_battle = false;
            app.tactics.cursorLayer.visible = false;
            app.tactics.objectLayer.visible = true;
            app.tactics.initSound(_loc_2.configVO.playSound, _loc_2.configVO.fast);
            return;
        }// end function

        private function handlePopupEvent(event:PopupEvent) : void
        {
            var _loc_2:* = UnitProxy(facade.retrieveProxy(UnitProxy.NAME));
            switch(event.type)
            {
                case Viking.ARM_EQUIPPED:
                {
                    _loc_2.resetRangeOffset(event.param[0]);
                    _tacticsProxy.equip(new EquipVO(event.param[0], event.param[1]));
                    _loc_2.tooyumiCheck(event.param[0]);
                    _loc_2.tooateCheck(event.param[0]);
                    showStatusWindowV2(_turnUnit, null);
                    break;
                }
                case Viking.ACTION_ITEM_SELECT:
                {
                    _tacticsProxy.useItem(new UseItemVO(event.param[0], event.param[1]));
                    app.tactics.commandWindow.visible = false;
                    break;
                }
                case MatchMovieWindow.MOVIE_ENDED:
                {
                    sendNotification(TacticsProxy.START_COMPLETE, event.param);
                    break;
                }
                default:
                {
                    break;
                }
            }
            return;
        }// end function

        public function finishConditionAnimation(event:Event) : void
        {
            victoryConditionAnimationUI.removeChild(victoryConditionAnimationLoader);
            app.tactics.movieLayer.removeChild(victoryConditionAnimationUI);
            MovieClip(startAnimationLoader.content).gotoAndPlay(0);
            startAnimationUI.addChild(startAnimationLoader);
            app.tactics.movieLayer.addChild(startAnimationUI);
            startAnimationLoader.content.addEventListener("AnimationFinish", finishStartAnimation);
            startAnimationLoader.content.addEventListener("Effect", showPlayerName);
            return;
        }// end function

        private function mapVibration() : void
        {
            var timer:Timer;
            timer = new Timer(33, 10);
            timer.addEventListener(TimerEvent.TIMER, function (event:TimerEvent) : void
            {
                if (timer.currentCount >= 10)
                {
                    app.tactics.map.x = 0;
                    app.tactics.map.y = 0;
                }
                else
                {
                    app.tactics.map.x = Utils.xRandomInt(-4, 4);
                    app.tactics.map.y = Utils.xRandomInt(-4, 4);
                }
                return;
            }// end function
            );
            timer.start();
            return;
        }// end function

        override public function onRegister() : void
        {
            initializeListeners();
            return;
        }// end function

        private function selectTarget(param1:UnitVO) : void
        {
            state = STATE_SELECT_TARGET;
            app.tactics.commandWindow.visible = false;
            drawArea(UnitProxy.findAttackArea(param1), param1.weaponType == WeaponVO.WEAPON_TYPE_HEAL ? ("heal") : ("attack"));
            return;
        }// end function

        private function peekOrder() : OrderVO
        {
            var _loc_1:* = TacticsOrderProxy(facade.retrieveProxy(TacticsOrderProxy.NAME));
            return _loc_1.peekOrder();
        }// end function

        public function finishStartAnimation(event:Event) : void
        {
            activeUnitCursorAnimation.viewAnimation();
            startAnimationUI.removeChild(startAnimationLoader);
            app.tactics.movieLayer.removeChild(startAnimationUI);
            start();
            app.tactics.raidPlayerName.visible = false;
            app.tactics.raidEnemyName.visible = false;
            app.tactics.cursorLayer.visible = true;
            return;
        }// end function

        public function finishCursorAnimation() : void
        {
            if (activeUnitCursorAnimationUI.numChildren > 0 && activeUnitCursorAnimationUI.getChildAt(0) == activeUnitCursorAnimationLoader && activeUnitCursorAnimationUI.getChildByName(CHECK_ADD_CHILD))
            {
                activeUnitCursorAnimationUI.removeChild(activeUnitCursorAnimationLoader);
                app.tactics.map.removeChild(activeUnitCursorAnimationUI);
            }
            return;
        }// end function

        private function initializeUnits(param1:Array, param2:UnitVO) : void
        {
            var _loc_4:UnitVO = null;
            app.tactics.objectLayer.removeAllChildren();
            var _loc_3:* = SkillProxy(facade.retrieveProxy(SkillProxy.NAME));
            for each (_loc_4 in param1)
            {
                
                initializeUnit(_loc_4);
                app.tactics.objectLayer.addChild(_loc_4.uic);
                app.tactics.objectLayer.addChild(_loc_4.effectUic);
                app.tactics.objectLayer.addChild(_loc_4.damageUic);
                app.tactics.objectLayer.addChild(_loc_4.alertUic);
            }
            return;
        }// end function

        private function isActionAlreadyQueued() : Boolean
        {
            var _loc_1:* = peekOrder();
            return _loc_1 != null && (_loc_1.detail is CancelWalkVO || _loc_1.detail is UseItemVO || _loc_1.detail is DirectionVO || _loc_1.detail is WalkVO || _loc_1.detail is AttackVO);
        }// end function

        override protected function addEventListeners(param1:Array) : void
        {
            var _loc_2:Array = null;
            for each (_loc_2 in param1)
            {
                
                _loc_2[0].addEventListener(_loc_2[1], _loc_2[2]);
            }
            return;
        }// end function

        private function showForcelyFinishedAlert(param1:String, param2:FinishVO) : void
        {
            var reason:* = param1;
            var finishVO:* = param2;
            app.removeLoadingWindow();
            AlertWindow.show(reason, "", AlertWindow.YES, app, function () : void
            {
                showFailedResult(finishVO);
                return;
            }// end function
            );
            return;
        }// end function

        private function startContinuationBattle(param1:Object) : void
        {
            initialize(param1.tacticsVO as TacticsVO);
            fixUnitView();
            return;
        }// end function

        private function executeOrder(param1:OrderVO) : void
        {
            var _loc_2:WalkVO = null;
            var _loc_3:CancelWalkVO = null;
            var _loc_4:UnitVO = null;
            var _loc_5:AnimationProxy = null;
            var _loc_6:AttackVO = null;
            var _loc_7:AttackVO = null;
            var _loc_8:DirectionVO = null;
            var _loc_9:TacticsProxy = null;
            var _loc_10:ActiveUnitVO = null;
            var _loc_11:ChangeStateVO = null;
            var _loc_12:Object = null;
            var _loc_13:DamagePopVO = null;
            var _loc_14:UnitProxy = null;
            var _loc_15:TurnEndVO = null;
            var _loc_16:DummyVO = null;
            busy = true;
            if (param1.detail is WalkVO)
            {
                _loc_2 = param1.detail as WalkVO;
                _turnUnit = _loc_2.unit;
                showStatusWindowV2(_turnUnit, null);
                eraseArea();
                finishCursorAnimation();
                sendNotification(WALK_VIEW, WalkVO(param1.detail));
            }
            else if (param1.detail is CancelWalkVO)
            {
                _loc_3 = param1.detail as CancelWalkVO;
                _loc_4 = _loc_3.unit;
                moveUnitTo(_loc_3.unit, new Point(_loc_3.x, _loc_3.y));
                _loc_5 = AnimationProxy(facade.retrieveProxy(AnimationProxy.NAME));
                _loc_5.changeAnime(_loc_4, "walk", null, null);
                setCursor(_loc_4);
                sendNotification(ORDER_EXECUTED);
            }
            else if (param1.detail is AttackVO)
            {
                _loc_6 = AttackVO(param1.detail);
                showStatusWindowV2(_loc_6.attacker, _loc_6.target, _loc_6.counterAttack);
                for each (_loc_7 in _loc_6.areaAttackVOs)
                {
                    
                    if (_loc_7)
                    {
                        sendNotification(ACTION_ANIMATION, _loc_7);
                    }
                }
                sendNotification(ACTION_ANIMATION, _loc_6);
            }
            else if (param1.detail is DirectionVO)
            {
                _loc_8 = param1.detail as DirectionVO;
                _loc_5 = AnimationProxy(facade.retrieveProxy(AnimationProxy.NAME));
                _loc_4 = _loc_8.unit;
                _loc_4.direction = _loc_8.newDirection;
                if (directionPointFlag)
                {
                    directionPointFlag = false;
                    directions = new Array();
                    gridImages[directionPoint.x][directionPoint.y].source = null;
                }
                _loc_5.changeAnime(_loc_4, "walk", null, null);
                eraseArea();
                sendNotification(ORDER_EXECUTED);
            }
            else if (param1.detail is EquipVO)
            {
                app.tactics.commandWindow.unit = param1.detail.unit;
                sendNotification(ORDER_EXECUTED);
            }
            else if (param1.detail is UseItemVO)
            {
                sendNotification(ITEM_ANIMATION, UseItemVO(param1.detail));
            }
            else if (param1.detail is FinishVO)
            {
                _loc_9 = TacticsProxy(facade.retrieveProxy(TacticsProxy.NAME));
                _loc_9.stopOrderFinishChecker();
                resetOrders();
                eraseArea();
                app.tactics.commandWindow.visible = false;
                if ((param1.detail as FinishVO).continueBattle)
                {
                    startNextContinuationBattle();
                }
                else
                {
                    showResult(param1.detail as FinishVO);
                }
            }
            else if (param1.detail is ActiveUnitVO)
            {
                app.tactics.commandWindow.visible = false;
                eraseArea();
                _loc_10 = ActiveUnitVO(param1.detail);
                setCursor(ActiveUnitVO(param1.detail).unit);
                sendNotification(ORDER_EXECUTED);
            }
            else
            {
                if (!isActionAlreadyQueued())
                {
                    switch(_loc_11.newState)
                    {
                        case STATE_SELECT_ACTION:
                        {
                            break;
                        }
                        case STATE_SELECT_DIRECTION:
                        {
                            break;
                        }
                        case STATE_SELECT_DESTINATION:
                        {
                            break;
                        }
                        default:
                        {
                            break;
                        }
                    }
                }
                if (param1.detail is DamagePopVO)
                {
                }
                else if (param1.detail is TurnEndVO)
                {
                }
                else if (param1.detail is DummyVO)
                {
                }
            }
            return;
        }// end function

        override public function listNotificationInterests() : Array
        {
            return [TacticsProxy.SELECT_DESTINATION, TacticsProxy.START_ERROR, TacticsProxy.START_RAID_ERROR, TacticsProxy.START_MATCH_MOVIE, TacticsProxy.FINISH_COMPLETE, TacticsProxy.FINISH_ERROR, TacticsProxy.STAGE_CLEARED, TacticsProxy.RAID_CLEARED, TacticsProxy.COLONY_CLEARED, TacticsProxy.STAGE_FAILED, TacticsProxy.RAID_FAILED, TacticsProxy.COLONY_FAILED, TacticsProxy.DEFAULT_WIN, ActionAnimationCommand.UPDATE_STATUS_WINDOW, ActionAnimationCommand.MAP_VIBRATION, TacticsProxy.SHOW_LOADING_WINDOW, BaseBattleLogicProxy.SET_ACTIVE_UNIT, BaseBattleLogicProxy.TURN_END, BaseBattleLogicProxy.INVALID_ATTACK_TARGET, BaseBattleLogicProxy.INVALID_DESTINATION, BaseBattleLogicProxy.INVALID_DIRECTION, TacticsOrderProxy.ORDER_QUEUED, TacticsProxy.RAID_FINISHED_BY_TIME_OVER, TacticsProxy.RAID_FINISHED_BY_TURN_LIMIT_OVER, AnimationProxy.WALK_ANIMATION_FINISHED, AnimationProxy.UNIT_DIED, RaidTimerProxy.RAID_TIMER_TICK, PrepareTacticsCompleteCommand.START_TACTICS, PrepareContinuationTacticsCompleteCommand.START_CONTINUATION_TACTICS, WalkUnitCommand.PERMUTE_MAP_OBJECT, WalkFinishCommand.PERMUTE_MAP_OBJECT, ItemFinishCommand.HUMAN_ITEM_ANIMATION_FINISHED, ItemFinishCommand.AI_ITEM_ANIMATION_FINISHED, InitializeFinishedCommand.SHOW_RESULT_FOR_RESET_BATTLE, PreparePvPBattleCompleteCommand.START_PVP_BATTLE, TimeOverCommand.SHOW_LOADING_WINDOW, ORDER_EXECUTED, ItemFinishCommand.ORDER_EXECUTED];
        }// end function

        private function playTacticsBgm() : void
        {
            var _loc_1:* = ConfigProxy(facade.retrieveProxy(ConfigProxy.NAME));
            var _loc_2:* = SoundProxy(facade.retrieveProxy(SoundProxy.NAME));
            _loc_2.stopBgm();
            if (_loc_1.configVO.playSound)
            {
                _loc_2.playTacticsBgm();
            }
            return;
        }// end function

        public function hideStatusWindow() : void
        {
            app.tactics.statusWindow.unit = new UnitVO();
            app.tactics.targetStatusWindow.unit = new UnitVO();
            app.tactics.playerTargetWindow.unit = new UnitVO();
            app.tactics.statusWindow.visible = false;
            app.tactics.targetStatusWindow.visible = false;
            app.tactics.playerTargetWindow.visible = false;
            return;
        }// end function

        private function showPlayerName(event:Event) : void
        {
            var _loc_2:* = PlayerProxy(facade.retrieveProxy(PlayerProxy.NAME));
            app.tactics.raidPlayerName.text = _loc_2.playerVO.playerName;
            app.tactics.raidPlayerName.visible = true;
            app.tactics.raidEnemyName.text = _tactics.raidTargetName;
            app.tactics.raidEnemyName.visible = true;
            return;
        }// end function

        private function handleUnitLoaded(param1:UnitVO, param2:AnimationProxy, param3:Boolean = false) : Function
        {
            var unit:* = param1;
            var animationProxy:* = param2;
            var align:* = param3;
            if (align)
            {
                unit.direction = UnitVO.DIRECTION_LEFT;
            }
            return function (event:Event) : void
            {
                animationProxy.changeAnime(unit, "walk", null, null);
                return;
            }// end function
            ;
        }// end function

        private function initializeContinuationMap(param1:Object) : void
        {
            var params:* = param1;
            var first:* = (_tacticsProxy as TacticsProxy).firstContinuation;
            if (!first && clearAnimationLoader.content)
            {
                MovieClip(clearAnimationLoader.content).gotoAndPlay(0);
                clearAnimationLoader.content.addEventListener("EndFadeout", function () : void
            {
                clearAnimationLoader.content.removeEventListener("EndFadeout", arguments.callee);
                hideHitRate();
                finishBattle();
                startContinuationBattle(params);
                finishClearAnimation(null);
                return;
            }// end function
            );
                clearAnimationUI.addChild(clearAnimationLoader);
                app.tactics.movieLayer.addChild(clearAnimationUI);
            }
            else
            {
                startContinuationBattle(params);
            }
            return;
        }// end function

        private function drawArea(param1:Array, param2:String) : void
        {
            var _loc_4:Point = null;
            var _loc_5:Point = null;
            var _loc_3:* = AnimationProxy(facade.retrieveProxy(AnimationProxy.NAME));
            if (param1)
            {
                for each (_loc_4 in param1)
                {
                    
                    _loc_5 = Utils.indexToPoint(_loc_4.x, _loc_4.y);
                    _loc_3.drawArea(_loc_5, areaTarget, param2);
                }
            }
            else
            {
                _loc_3.eraseArea(areaTarget);
            }
            return;
        }// end function

        private function handleGridMouseDown(param1:int, param2:int) : Function
        {
            var mapx:* = param1;
            var mapy:* = param2;
            return function (event:MouseEvent) : void
            {
                var _loc_4:* = undefined;
                if (busy)
                {
                    return;
                }
                var _loc_2:* = new Point(mapx, mapy);
                var _loc_3:* = _turnUnit;
                switch(state)
                {
                    case STATE_SELECT_DESTINATION:
                    {
                        _loc_4 = _tacticsProxy.getUnitAt(new Point(mapx, mapy));
                        if (_loc_4 == _turnUnit || _loc_4 == null)
                        {
                            _tacticsProxy.walk(new WalkVO(_loc_3, _loc_2));
                        }
                        break;
                    }
                    case STATE_SELECT_DIRECTION:
                    {
                        _tacticsProxy.selectDirection(new DirectionVO(_loc_3, _loc_2));
                        break;
                    }
                    case STATE_SELECT_TARGET:
                    {
                        eraseArea();
                        _tacticsProxy.action(new AttackVO(_loc_3, _loc_2));
                        break;
                    }
                    case STATE_IDLE:
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

        private function addCommandWindow() : void
        {
            var animationProxy:AnimationProxy;
            animationProxy = AnimationProxy(facade.retrieveProxy(AnimationProxy.NAME));
            animationProxy.generalAnimationLoaded(TYPE_COMMAND, NAME_COMMAND, "battlecommand", app.tactics.commandWindow.commandBattleLayer);
            animationProxy.generalAnimationLoaded(TYPE_COMMAND, NAME_EQUIPMENT_OFF, "icon_null", app.tactics.commandWindow.commandBattleLayer);
            animationProxy.generalAnimationLoaded(TYPE_COMMAND, NAME_ITEM_OFF, "icon_null", app.tactics.commandWindow.commandBattleLayer);
            animationProxy.generalAnimationLoaded(TYPE_COMMAND, NAME_ATTACK_OFF, "icon_null", app.tactics.commandWindow.commandBattleLayer);
            app.tactics.commandWindow.commandBattleLayer.visible = true;
            animationProxy.generalLoaders[TYPE_COMMAND][NAME_COMMAND].contentLoaderInfo.addEventListener(Event.COMPLETE, function () : void
            {
                animationProxy.generalLoaders[TYPE_COMMAND][NAME_COMMAND].contentLoaderInfo.removeEventListener(Event.COMPLETE, arguments.callee);
                animationProxy.generalLoaders[TYPE_COMMAND][NAME_COMMAND].content.addEventListener("ICON_EQUIPMENT", app.tactics.commandWindow.handleEvent);
                animationProxy.generalLoaders[TYPE_COMMAND][NAME_COMMAND].content.addEventListener("ICON_ITEM", app.tactics.commandWindow.handleEvent);
                animationProxy.generalLoaders[TYPE_COMMAND][NAME_COMMAND].content.addEventListener("ICON_ATTACK", app.tactics.commandWindow.handleEvent);
                animationProxy.generalLoaders[TYPE_COMMAND][NAME_COMMAND].content.addEventListener("ICON_BACK", app.tactics.commandWindow.handleEvent);
                animationProxy.generalLoaders[TYPE_COMMAND][NAME_COMMAND].content.addEventListener("ICON_WAIT", app.tactics.commandWindow.handleEvent);
                _add_window = true;
                return;
            }// end function
            );
            return;
        }// end function

        private function showStatusWindowV2(param1:UnitVO, param2:UnitVO, param3:Boolean = false) : void
        {
            var _loc_4:UnitVO = null;
            var _loc_5:UnitVO = null;
            app.tactics.statusWindow.visible = false;
            app.tactics.targetStatusWindow.visible = false;
            if (_finish_battle)
            {
                return;
            }
            if (param3)
            {
                _loc_4 = param2;
                _loc_5 = param1;
            }
            else
            {
                _loc_4 = param1;
                _loc_5 = param2;
            }
            app.tactics.statusWindow.visible = true;
            app.tactics.statusWindow.unit = _loc_4;
            if (_loc_5 != _loc_4)
            {
                app.tactics.targetStatusWindow.visible = true;
                app.tactics.targetStatusWindow.unit = _loc_5;
            }
            return;
        }// end function

    }
}
