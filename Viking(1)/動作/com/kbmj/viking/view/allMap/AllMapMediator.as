package com.kbmj.viking.view.allMap
{
    import com.kbmj.viking.*;
    import com.kbmj.viking.controller.*;
    import com.kbmj.viking.controller.allMap.*;
    import com.kbmj.viking.controller.home.*;
    import com.kbmj.viking.lib.*;
    import com.kbmj.viking.proxy.*;
    import com.kbmj.viking.proxy.allMap.*;
    import com.kbmj.viking.proxy.home.*;
    import com.kbmj.viking.proxy.tactics.*;
    import com.kbmj.viking.view.*;
    import com.kbmj.viking.view.home.*;
    import com.kbmj.viking.vo.*;
    import com.kbmj.viking.vo.allMap.*;
    import com.kbmj.viking.vo.tactics.*;
    import flash.display.*;
    import flash.events.*;
    import flash.geom.*;
    import mx.controls.*;
    import mx.core.*;
    import org.puremvc.as3.interfaces.*;

    public class AllMapMediator extends BaseMediator
    {
        private var _mouseState:int;
        private var replyMailWindow:ReplyMailWindow;
        private var _initialized:Boolean = false;
        private var _cursorPos:Point;
        private var _topLeft:Point;
        private var mailListWindow:MailListWindow;
        private var allmapMailTransmitWindow:DesignateMail;
        private var unitLevelUpWindow:UnitLevelUpWindow;
        private var raidReportWindow:RaidReportWindow;
        private var _mouseDownX:int;
        private var _mouseDownY:int;
        public static const REMOVE:String = NAME + "/notes/remove";
        private static const H_ADD:int = 10;
        public static const NAME:String = "AllMapMediator";
        public static const REPAIR:String = NAME + "/notes/repair";
        private static const MOUSE_INIT:int = 0;
        private static const MOUSE_UP:int = 1;
        private static const V_ADD:int = 10;
        private static const MOUSE_DOWN:int = 2;
        public static const GET_COMMAND:String = NAME + "/notes/getCommand";
        public static const GARRISON:String = NAME + "/notes/garrison";
        public static const ALL_UNIT_RECOVERY_COMPLETE:String = NAME + "/notes/allUnitRecoveryComplete";
        public static const RELOAD_ALL_MAP_UNITS:String = NAME + "/notes/reloadAllMapUnits";
        public static const ALL_UNIT_RECOVERY:String = NAME + "/notes/allUnitRecovery";
        public static const BACK_HOME:String = NAME + "/notes/backHome";
        private static const POS_INIT:int = -1;
        public static const UNIT_IN:String = NAME + "/notes/unitInByAllMap";
        public static const PLUNDER:String = NAME + "/notes/plunder";
        public static const SURRENDER:String = NAME + "/notes/surrender";
        public static const ATTACK:String = NAME + "/notes/attack";
        public static const RECLAIM:String = NAME + "/notes/reclaim";
        public static const LOAD_ANIMATION:String = NAME + "/notes/load_animation";
        private static const MOUSE_MOVE:int = 3;
        public static const RELOAD_HOME_UNITS:String = NAME + "/notes/reloadHomeUnits";
        public static const DESTROY:String = NAME + "/notes/destroy";
        public static const FOUND:String = NAME + "/notes/found";
        public static const RELOAD_ALL_MAP_RESOURCES:String = NAME + "/notes/reloadAllMapResources";
        public static const CHARGE_REMOVE:String = NAME + "/notes/chargeRemove";
        public static const UNIT_OUT:String = NAME + "/notes/unitOutByAllMap";
        public static const SHOW_LOADING_WINDOW:String = NAME + "/notes/showLoadingWindow";
        public static const CHANGE_ALL_MAP:String = NAME + "/notes/changeAllMap";
        public static const LEVELUP:String = NAME + "/notes/levelUp";

        public function AllMapMediator(param1:Viking)
        {
            unitLevelUpWindow = new UnitLevelUpWindow();
            mailListWindow = new MailListWindow();
            replyMailWindow = new ReplyMailWindow();
            allmapMailTransmitWindow = new DesignateMail();
            raidReportWindow = new RaidReportWindow();
            super(NAME, param1);
            cursorPos = new Point(-1, -1);
            var _loc_2:* = POS_INIT;
            mouseDownY = POS_INIT;
            mouseDownX = _loc_2;
            mouseState = MOUSE_INIT;
            return;
        }// end function

        private function setCommandTower(param1:AllMapCommandVO, param2:Array) : void
        {
            var _loc_6:Image = null;
            var _loc_3:* = PlayerProxy(facade.retrieveProxy(PlayerProxy.NAME));
            var _loc_4:* = _loc_3.playerVO;
            var _loc_5:* = app.allMap.allMapCommandWindow;
            if (_loc_4.playerId == param1.playerId)
            {
                _loc_5.enableDestroy = param1.destroy;
                _loc_5.destroy.visible = true;
                param2.push(_loc_5.destroy);
            }
            else if (!_loc_4.guild || _loc_4.guild.id != param1.guildId)
            {
                _loc_5.enableAttack = param1.invade;
                _loc_6 = _loc_5.attack;
                _loc_6.visible = true;
                param2.push(_loc_6);
            }
            return;
        }// end function

        private function reclaim(event:PopupEvent) : void
        {
            app.showLoadingWindow(true);
            sendNotification(RECLAIM, event.param.unitId);
            app.allMap.allMapCommandWindow.visible = false;
            return;
        }// end function

        private function found(event:PopupEvent) : void
        {
            app.showLoadingWindow(true);
            sendNotification(FOUND, event.param);
            app.allMap.allMapCommandWindow.visible = false;
            return;
        }// end function

        private function windowAddSwfCommon(param1, param2:Function, param3:String = "purpose_window", param4:int = 0, param5:int = 0) : void
        {
            var _loc_6:* = AnimationProxy(facade.retrieveProxy(AnimationProxy.NAME));
            AnimationProxy(facade.retrieveProxy(AnimationProxy.NAME)).generalAnimationLoaded("window", "common", param3, param1, param4, param5);
            _loc_6.generalLoaders["window"]["common"].contentLoaderInfo.addEventListener(Event.COMPLETE, param2);
            return;
        }// end function

        private function remove(event:Event) : void
        {
            app.showLoadingWindow(true);
            sendNotification(REMOVE);
            app.allMap.allMapCommandWindow.visible = false;
            return;
        }// end function

        private function updateCursor() : void
        {
            var _loc_2:AllMapProxy = null;
            var _loc_3:Point = null;
            var _loc_1:* = getHexPos();
            var _loc_4:* = isHexPosInMap(_loc_1);
            app.allMap.cursor.visible = isHexPosInMap(_loc_1);
            if (_loc_4)
            {
                _loc_2 = AllMapProxy(facade.retrieveProxy(AllMapProxy.NAME));
                _loc_3 = hexPosToTopLeftPos(_loc_1);
                app.allMap.cursor.x = _loc_3.x - topLeft.x * AllMapProxy.BG_IMAGE_WIDTH;
                app.allMap.cursor.y = _loc_3.y - topLeft.y * AllMapProxy.BG_IMAGE_HEIGHT;
                cursorPos = _loc_1;
                var _loc_4:* = _loc_2.map[_loc_1.y][_loc_1.x].isFort();
                app.allMap.fort_range.visible = _loc_2.map[_loc_1.y][_loc_1.x].isFort();
                if (_loc_4)
                {
                    app.allMap.setFortRangeImage();
                    app.allMap.fort_range.x = app.allMap.cursor.x - AllMapProxy.CHIP_WIDTH_SUB * 4;
                    app.allMap.fort_range.y = app.allMap.cursor.y - AllMapProxy.CHIP_HEIGHT * 4;
                }
                else
                {
                    var _loc_4:* = _loc_2.map[_loc_1.y][_loc_1.x].isTower();
                    app.allMap.fort_range.visible = _loc_2.map[_loc_1.y][_loc_1.x].isTower();
                    if (_loc_4)
                    {
                        app.allMap.setTowerRangeImage();
                        app.allMap.fort_range.x = app.allMap.cursor.x - AllMapProxy.CHIP_WIDTH_SUB * 3;
                        app.allMap.fort_range.y = app.allMap.cursor.y - AllMapProxy.CHIP_HEIGHT * 3;
                    }
                }
            }
            else
            {
                app.allMap.fort_range.visible = false;
            }
            return;
        }// end function

        private function setCommandDefault(param1:AllMapCommandVO, param2:Array) : void
        {
            var _loc_3:* = app.allMap.allMapCommandWindow;
            var _loc_4:* = PlayerProxy(facade.retrieveProxy(PlayerProxy.NAME));
            if (param1.invade)
            {
                if (_loc_4.playerVO.tutorialId == 6 && _loc_4.playerVO.propertiesCount < 1 || _loc_4.playerVO.tutorialId == 14 && _loc_4.playerVO.propertiesCount < 2)
                {
                    _loc_3.tutMarkPurify.visible = true;
                }
                else
                {
                    _loc_3.tutMarkPurify.visible = false;
                }
            }
            else
            {
                _loc_3.tutMarkPurify.visible = false;
            }
            _loc_3.enablePurify = param1.invade;
            _loc_3.purify.visible = true;
            param2.push(_loc_3.purify);
            return;
        }// end function

        private function setCommandHome(param1:AllMapCommandVO, param2:Array) : void
        {
            var _loc_3:* = PlayerProxy(facade.retrieveProxy(PlayerProxy.NAME));
            var _loc_4:* = _loc_3.playerVO;
            var _loc_5:* = app.allMap.allMapCommandWindow;
            if (_loc_4.playerId == param1.playerId)
            {
                var _loc_6:* = param1.remove;
                _loc_5.enableRemove = param1.remove;
                if (_loc_6)
                {
                    _loc_5.propertiesCount = _loc_4.propertiesCount;
                }
                _loc_5.remove.visible = true;
                param2.push(_loc_5.remove);
                var _loc_6:* = param1.chargeRemove;
                _loc_5.enableChargeRemove = param1.chargeRemove;
                if (_loc_6)
                {
                    _loc_5.propertiesCount = _loc_4.propertiesCount;
                    _loc_5.homePos = _loc_3.playerVO.homeAllMapPos;
                    _loc_5.centerPos = getCenterPos();
                }
                _loc_5.chargeRemove.visible = param1.chargeRemove;
                param2.push(_loc_5.chargeRemove);
            }
            else
            {
                _loc_5.mail.visible = true;
                param2.push(_loc_5.mail);
            }
            return;
        }// end function

        private function getCenterPos() : Point
        {
            return new Point(topLeft.x * AllMapProxy.BG_IMAGE_WIDTH + AllMapProxy.SCR_WIDTH / 2 - app.allMap.bgCanvas.x, topLeft.y * AllMapProxy.BG_IMAGE_HEIGHT + AllMapProxy.SCR_HEIGHT / 2 - app.allMap.bgCanvas.y);
        }// end function

        private function repair(event:PopupEvent) : void
        {
            app.showLoadingWindow(true);
            sendNotification(REPAIR, event.param.unitId);
            app.allMap.allMapCommandWindow.visible = false;
            return;
        }// end function

        private function addSakuraSwf(event:Event) : void
        {
            var _loc_2:* = AnimationProxy(facade.retrieveProxy(AnimationProxy.NAME));
            var _loc_3:* = HomeAllUnitProxy(facade.retrieveProxy(HomeAllUnitProxy.NAME));
            var _loc_4:* = SakuraProxy(facade.retrieveProxy(SakuraProxy.NAME));
            var _loc_5:* = app.allMap.allMapCommandWindow.garrisonUnitWindow;
            _loc_4.addSakuraSwf(_loc_5.sakura, AllMapMediator, "allMap");
            return;
        }// end function

        private function updateHomePosition(param1:Point) : void
        {
            var _loc_2:* = app.allMap.hexInputWindow;
            _loc_2.posX.text = param1.x.toString();
            _loc_2.posY.text = param1.y.toString();
            return;
        }// end function

        private function createCommandChip(param1:AllMapCommandVO) : Bitmap
        {
            var _loc_2:* = AllMapProxy(facade.retrieveProxy(AllMapProxy.NAME));
            var _loc_3:* = new BitmapData(AllMapProxy.CHIP_WIDTH, AllMapProxy.CHIP_HEIGHT, true, 0);
            _loc_3.draw(_loc_2.createTopographyChip(_loc_2.topographyChipIndex(param1.pos.x, param1.pos.y)));
            if (param1.object >= 0)
            {
                _loc_3.draw(_loc_2.createObjectChip(param1.object));
            }
            return new Bitmap(_loc_3);
        }// end function

        private function handleInfoEndEvent(event:Event) : void
        {
            app.allMap.infoButtonCanvas.visible = true;
            switch(app.allMap.savedInfo)
            {
                case "b_report":
                {
                    app.allMap.infoBox.visible = true;
                    break;
                }
                case "b_moving":
                {
                    app.allMap.taskBox.visible = true;
                    break;
                }
                case "b_chat":
                {
                    app.allMap.chatBox.visible = true;
                    break;
                }
                case "b_chat_small_large":
                {
                    app.allMap.chatBox.visible = true;
                    break;
                }
                case "b_chat_large_small_l":
                {
                    app.allMap.chatBox.visible = true;
                    break;
                }
                default:
                {
                    break;
                }
            }
            return;
        }// end function

        private function handlePopupEvent(event:PopupEvent) : void
        {
            var _loc_2:TaskProxy = null;
            var _loc_3:Point = null;
            var _loc_4:HomeProxy = null;
            switch(event.type)
            {
                case Viking.FINISH_TASK_IMMEDIATELY:
                {
                    _loc_2 = TaskProxy(facade.retrieveProxy(TaskProxy.NAME));
                    app.showLoadingWindow();
                    _loc_2.finishTaskImmediately(int(event.param));
                    break;
                }
                case GuildMemberListWindow.CLICK_GUILD_MEMBER_POS:
                {
                    _loc_3 = hexPosToCenterPos(event.param as Point);
                    sendNotification(CHANGE_ALL_MAP, new AllMapUpdateVO(_loc_3, true));
                    break;
                }
                case AllMapCommandWindow.MAIL:
                {
                    app.allMap.popupWindow(allmapMailTransmitWindow, false);
                    allmapMailTransmitWindow.setPlayerName(event.param as String);
                    allmapMailTransmitWindow.addEventListener(MailTransmitWindow.SUBMIT_MAIL, submitMail);
                    break;
                }
                case RaidReportWindow.RAID_DITAIL_REPORT:
                {
                    app.showLoadingWindow();
                    _loc_4 = HomeProxy(facade.retrieveProxy(HomeProxy.NAME));
                    _loc_4.loadDitailReport(event.param as int);
                    break;
                }
                case RaidReportWindow.COLONY_DITAIL_REPORT:
                {
                    _loc_4 = HomeProxy(facade.retrieveProxy(HomeProxy.NAME));
                    app.showLoadingWindow();
                    _loc_4.loadColonyDitailReport(event.param as int);
                    break;
                }
                case RaidReportWindow.GUILD_MEMBER_RAID_DITAIL_REPORT:
                {
                    _loc_4 = HomeProxy(facade.retrieveProxy(HomeProxy.NAME));
                    app.showLoadingWindow();
                    _loc_4.loadDitailReport(event.param as int);
                    break;
                }
                default:
                {
                    break;
                }
            }
            return;
        }// end function

        public function get cursorPos() : Point
        {
            return _cursorPos;
        }// end function

        private function getInputPos() : Point
        {
            var _loc_1:* = app.allMap.hexInputWindow;
            var _loc_2:* = new Point(Number(_loc_1.xTextInput.text), Number(_loc_1.yTextInput.text));
            return hexPosToCenterPos(gamePosToHexPos(_loc_2));
        }// end function

        private function destroy(event:Event) : void
        {
            app.showLoadingWindow(true);
            sendNotification(DESTROY);
            app.allMap.allMapCommandWindow.visible = false;
            return;
        }// end function

        private function getClickPos() : Point
        {
            var _loc_1:* = app.allMap.miniMapWindow;
            var _loc_2:* = new Point(_loc_1.mouseX, _loc_1.mouseY);
            _loc_2.x = _loc_2.x - (_loc_1.width - MiniMapWindow.MINI_MAP_WIDTH) / 2;
            _loc_2.y = _loc_2.y - (_loc_1.height - MiniMapWindow.MINI_MAP_HEIGHT) / 2;
            _loc_2.x = _loc_2.x * this.int(AllMapProxy.BG_WIDTH / MiniMapWindow.MINI_MAP_WIDTH);
            _loc_2.y = _loc_2.y * this.int(AllMapProxy.BG_HEIGHT / MiniMapWindow.MINI_MAP_HEIGHT);
            return _loc_2;
        }// end function

        private function updateAllMap(param1:AllMapUpdateVO) : void
        {
            var _loc_5:Point = null;
            var _loc_6:Image = null;
            var _loc_7:int = 0;
            var _loc_8:int = 0;
            var _loc_2:* = AllMapProxy(facade.retrieveProxy(AllMapProxy.NAME));
            var _loc_3:int = 0;
            while (_loc_3 < AllMapProxy.BG_IMAGE_COLUMN * AllMapProxy.BG_IMAGE_ROW)
            {
                
                _loc_6 = app.allMap.bgCanvas.getChildAt(_loc_3) as Image;
                _loc_6.source = _loc_2.mapImages[_loc_3];
                _loc_3++;
            }
            var _loc_4:* = topLeft;
            if (mouseDownX != POS_INIT)
            {
                _loc_5 = getCenterPos();
            }
            topLeft = _loc_2.topLeft;
            if (mouseDownX != POS_INIT)
            {
                _loc_7 = (topLeft.x - _loc_4.x) * AllMapProxy.BG_IMAGE_WIDTH;
                _loc_8 = (topLeft.y - _loc_4.y) * AllMapProxy.BG_IMAGE_HEIGHT;
                app.allMap.bgCanvas.x = app.allMap.bgCanvas.x + _loc_7;
                app.allMap.bgCanvas.y = app.allMap.bgCanvas.y + _loc_8;
                mouseDownX = mouseDownX - _loc_7;
                mouseDownY = mouseDownY - _loc_8;
            }
            else
            {
                app.allMap.bgCanvas.x = topLeft.x * AllMapProxy.BG_IMAGE_WIDTH + AllMapProxy.SCR_WIDTH / 2 - _loc_2.center.x;
                app.allMap.bgCanvas.y = topLeft.y * AllMapProxy.BG_IMAGE_HEIGHT + AllMapProxy.SCR_HEIGHT / 2 - _loc_2.center.y;
                updateCursor();
                updateHexInfo();
                updateMiniMapFrame(getCenterPos());
                if (param1.setHomePos)
                {
                    updateHomePosition(hexPosToGamePos(pixPosToHexPos(param1.center)));
                }
                if (param1.setView)
                {
                    app.gameViewStack.selectedIndex = Viking.VIEW_INDEX_ALL_MAP;
                    if (!param1.updateInf)
                    {
                        app.removeLoadingWindow();
                    }
                }
            }
            if (param1.updateInf)
            {
                sendNotification(BuildingProxy.ACTIVITY_START);
            }
            return;
        }// end function

        public function getHexPos() : Point
        {
            return pixPosToHexPos(getMousePos());
        }// end function

        public function set mouseDownX(param1:int) : void
        {
            _mouseDownX = param1;
            return;
        }// end function

        public function set mouseDownY(param1:int) : void
        {
            _mouseDownY = param1;
            return;
        }// end function

        private function addInfoWindow() : void
        {
            var animationProxy:AnimationProxy;
            animationProxy = AnimationProxy(facade.retrieveProxy(AnimationProxy.NAME));
            animationProxy.generalAnimationLoaded("ui", "info", "w_minimization", app.allMap.infoCanbas);
            animationProxy.generalAnimationLoaded("ui", "infoButton", "b_moving", app.allMap.infoButtonCanvas);
            animationProxy.generalLoaders["ui"]["info"].contentLoaderInfo.addEventListener(Event.COMPLETE, function (event:Event) : void
            {
                animationProxy.generalLoaders["ui"]["info"].removeEventListener(Event.COMPLETE, arguments.callee);
                animationProxy.generalLoaders["ui"]["info"].content.addEventListener("b_report", handleInfoEvent);
                animationProxy.generalLoaders["ui"]["info"].content.addEventListener("b_moving", handleInfoEvent);
                animationProxy.generalLoaders["ui"]["info"].content.addEventListener("b_chat", handleInfoEvent);
                animationProxy.generalLoaders["ui"]["info"].content.addEventListener("enlargeEnd", handleInfoEndEvent);
                animationProxy.generalLoaders["ui"]["info"].content.addEventListener("w_small_minimization", handleInfoEvent);
                animationProxy.generalLoaders["ui"]["info"].content.addEventListener("w_large_minimization", handleInfoEvent);
                animationProxy.generalLoaders["ui"]["info"].content.addEventListener("w_minimization_small", handleInfoEvent);
                animationProxy.generalLoaders["ui"]["info"].content.addEventListener("w_minimization_small_chat", handleInfoEvent);
                animationProxy.generalLoaders["ui"]["info"].content.addEventListener("w_small_minimization_chat", handleInfoEvent);
                animationProxy.generalLoaders["ui"]["info"].content.addEventListener("w_small_large", handleInfoEvent);
                animationProxy.generalLoaders["ui"]["info"].content.addEventListener("w_large_small_chat", handleInfoEvent);
                animationProxy.generalLoaders["ui"]["info"].content.addEventListener("w_large_small", handleInfoEvent);
                animationProxy.generalLoaders["ui"]["info"].content.addEventListener("BUTTON_WORLD", handleChatEvent);
                animationProxy.generalLoaders["ui"]["info"].content.addEventListener("BUTTON_GUILD", handleChatEvent);
                animationProxy.generalLoaders["ui"]["info"].content.addEventListener("BUTTON_SYSTEM", handleChatEvent);
                animationProxy.generalLoaders["ui"]["info"].content.addEventListener("BUTTON_ALL", handleChatEvent);
                return;
            }// end function
            );
            return;
        }// end function

        override public function handleNotification(param1:INotification) : void
        {
            var unitProxy:UnitProxy;
            var animationProxy:AnimationProxy;
            var allMapProxy:AllMapProxy;
            var alertWindow:AlertWindow;
            var pos:Point;
            var error:Object;
            var pages:Object;
            var unread:Boolean;
            var labelName:String;
            var announcements:Array;
            var msg:String;
            var alertText:String;
            var units:Array;
            var tut:Object;
            var unit:UnitVO;
            var note:* = param1;
            var guildProxy:* = GuildProxy(facade.retrieveProxy(GuildProxy.NAME));
            var playerProxy:* = PlayerProxy(facade.retrieveProxy(PlayerProxy.NAME));
            unitProxy = UnitProxy(facade.retrieveProxy(UnitProxy.NAME));
            var sakuraProxy:* = SakuraProxy(facade.retrieveProxy(SakuraProxy.NAME));
            animationProxy = AnimationProxy(facade.retrieveProxy(AnimationProxy.NAME));
            allMapProxy = AllMapProxy(facade.retrieveProxy(AllMapProxy.NAME));
            var skillProxy:* = SkillProxy(facade.retrieveProxy(SkillProxy.NAME));
            switch(note.getName())
            {
                case SHOW_LOADING_WINDOW:
                case AllMapProxy.SHOW_LOADING_WINDOW:
                {
                    app.showLoadingWindow(note.getBody());
                    break;
                }
                case AllMapProxy.FINISH_CHARGE_REMOVE:
                {
                    app.allMap.allMapCommandWindow.closeChargeRemoveWindow();
                }
                case AllMapProxy.FINISH_REMOVE:
                {
                    pos = hexPosToGamePos(note.getBody() as Point);
                    alertWindow = AlertWindow.show(Utils.i18n("allMapMediatorMoveHomeComplate", pos.x.toString(), pos.y.toString()));
                    app.popupWindow(alertWindow, true, true);
                    break;
                }
                case AllMapProxy.UPDATE_ALL_MAP:
                {
                    updateAllMap(note.getBody() as AllMapUpdateVO);
                    if (!_initialized)
                    {
                        addInfoWindow();
                        _initialized = true;
                    }
                    break;
                }
                case AllMapProxy.START_COMMAND_ALL_MAP:
                {
                    startCommandAllMap(note.getBody() as AllMapCommandVO);
                    app.removeLoadingWindow();
                    break;
                }
                case AllMapProxy.ERROR_COMMAND_ALL_MAP:
                case AllMapProxy.MAIL_SEND_ERROR:
                {
                    app.removeLoadingWindow();
                    error = note.getBody() as Object;
                    alertWindow = AlertWindow.show(error.head.error_message);
                    app.allMap.popupWindow(alertWindow, false);
                    break;
                }
                case AllMapProxy.MAIL_LIST_LOADED:
                {
                    pages = note.getBody() as Object;
                    mailListWindow.setMails(allMapProxy.mails, pages);
                    app.popupWindow(mailListWindow, false);
                    animationProxy.generalAnimationLoaded("window", "common", "right_670x460", mailListWindow.windowLayer);
                    if (!mailListWindow.hasEventListener(MailListWindow.CLOSED_MAIL_LIST_WINDOW))
                    {
                        mailListWindow.addEventListener(MailListWindow.CLOSED_MAIL_LIST_WINDOW, function () : void
            {
                mailListWindow.closeForAllMap();
                return;
            }// end function
            );
                        mailListWindow.addEventListener(MailListWindow.MAIL_SEND, function (event:PopupEvent) : void
            {
                var _loc_2:* = Object(event.param);
                allMapProxy.sendMail(_loc_2, AllMapProxy.MAIL_SEND_COMPLETE);
                return;
            }// end function
            );
                        mailListWindow.addEventListener(MailListWindow.MAIL_DETAIL, function (event:PopupEvent) : void
            {
                var _loc_2:* = int(event.param);
                allMapProxy.loadMailDetail(_loc_2);
                return;
            }// end function
            );
                        mailListWindow.addEventListener(MailListWindow.LOAD_MAIL_LIST_WITH_PAGE, function (event:PopupEvent) : void
            {
                allMapProxy.loadMailList(int(event.param));
                return;
            }// end function
            );
                        mailListWindow.addEventListener(MailListWindow.REPLY_MAIL, function (event:PopupEvent) : void
            {
                var event:* = event;
                app.home.popupWindow(replyMailWindow, false);
                replyMailWindow.setLetter(Object(event.param));
                if (!replyMailWindow.hasEventListener(ReplyMailWindow.REPLY_MAIL_SEND))
                {
                    replyMailWindow.addEventListener(ReplyMailWindow.REPLY_MAIL_SEND, function (event:PopupEvent) : void
                {
                    var _loc_2:* = Object(event.param);
                    allMapProxy.sendMail(_loc_2, AllMapProxy.REPLY_MAIL_SEND_COMPLETE);
                    return;
                }// end function
                );
                }
                return;
            }// end function
            );
                    }
                    break;
                }
                case AllMapProxy.ALL_MAP_RAID_REPORT_LOADED:
                {
                    app.removeLoadingWindow();
                    raidReportWindow.init(note.getBody() as Array, playerProxy.playerVO, true);
                    app.popupWindow(raidReportWindow);
                    raidReportWindow.ReportViewStack.selectedIndex = 0;
                    windowAddSwfCommon(raidReportWindow.windowLayer, function (event:Event) : void
            {
                var animationProxy:AnimationProxy;
                var e:* = event;
                animationProxy = AnimationProxy(facade.retrieveProxy(AnimationProxy.NAME));
                animationProxy.generalLoaders["window"]["common"].content.addEventListener("ENLARGE_END", function (event:Event) : void
                {
                    var e:* = event;
                    buttonAddSwf("buttons", "common_tab", raidReportWindow.ReportList, function () : void
                    {
                        animationProxy.generalLoaders["buttons"]["common_tab"].content.addEventListener("TAB_REPORT_MAP", function () : void
                        {
                            raidReportWindow.ReportViewStack.selectedIndex = 0;
                            return;
                        }// end function
                        );
                        animationProxy.generalLoaders["buttons"]["common_tab"].content.addEventListener("TAB_REPORT_COLONY", function () : void
                        {
                            raidReportWindow.ReportViewStack.selectedIndex = 1;
                            return;
                        }// end function
                        );
                        animationProxy.generalLoaders["buttons"]["common_tab"].content.addEventListener("TAB_REPORT_GUILD_MEMBER", function () : void
                        {
                            raidReportWindow.ReportViewStack.selectedIndex = 2;
                            return;
                        }// end function
                        );
                        return;
                    }// end function
                    , "tab_report_map");
                    return;
                }// end function
                );
                return;
            }// end function
            , "right_670x460");
                    break;
                }
                case AllMapProxy.REPLY_MAIL_SEND_COMPLETE:
                {
                    replyMailWindow.closeWindow();
                    alertWindow = AlertWindow.show(Utils.i18n("homeMediatorSendComplete"));
                    app.home.popupWindow(alertWindow, false);
                    break;
                }
                case AllMapProxy.MAIL_SEND_COMPLETE:
                {
                    mailListWindow.closeTransmitWindow();
                    alertWindow = AlertWindow.show(Utils.i18n("homeMediatorSendComplete"));
                    app.home.popupWindow(alertWindow, false);
                    break;
                }
                case AllMapProxy.DESIGNATE_MAIL_SEND_COMPLETE:
                {
                    allmapMailTransmitWindow.removeEventListener(MailTransmitWindow.SUBMIT_MAIL, submitMail);
                    allmapMailTransmitWindow.closeWindow();
                    alertWindow = AlertWindow.show(Utils.i18n("homeMediatorSendComplete"));
                    app.home.popupWindow(alertWindow, false);
                    break;
                }
                case AllMapProxy.MAIL_DETAIL_LOADED:
                {
                    unread = (note.getBody() as Object).unread_mail;
                    app.home.unreadMail = unread;
                    app.allMap.unreadMail = unread;
                    mailListWindow.detailWindowPopup(allMapProxy.mailDetail);
                    break;
                }
                case PlayerProxy.PLAYER_LOADED_BY_HOME:
                {
                    app.allMap.productionInfoWindow.playerVO = playerProxy.playerVO;
                    app.allMap.playerStatus.playerVO = playerProxy.playerVO;
                    app.allMap.changeFaction("faction_0" + playerProxy.playerVO.factionId);
                }
                case PlayerProxy.CHANGE_PLAYER_RANK_VIEW:
                {
                    labelName;
                    if (playerProxy.playerVO.playerRankId < 10)
                    {
                        labelName;
                    }
                    app.allMap.changeRank("rank_" + labelName + playerProxy.playerVO.playerRankId);
                    break;
                }
                case PlayerProxy.ADMISSION_FACTION_COMPLETE:
                case PlayerProxy.ADMISSION_FACTION_WITHOUT_TUTORIAL_COMPLETE:
                {
                    app.allMap.changeFaction("faction_0" + note.getBody().factionId);
                    break;
                }
                case LoadAnimationAllMapCommand.LOAD_ANIMATION:
                {
                    app.allMap.allMapCommandWindow.startUnitSelectGarrison();
                    break;
                }
                case UNIT_IN:
                case UNIT_OUT:
                {
                    app.allMap.allMapCommandWindow.garrisonUnitWindow.unitInOut();
                    break;
                }
                case TaskUpdateCommand.TASK_UPDATED:
                {
                    app.allMap.tasks = note.getBody() as Array;
                    break;
                }
                case AnnouncementProxy.ANNOUNCEMENT_LOADED:
                {
                    announcements = note.getBody() as Array;
                    app.allMap.announcements = announcements;
                    if (app.gameViewStack.selectedIndex == Viking.VIEW_INDEX_ALL_MAP)
                    {
                        if (announcements.length > 0)
                        {
                            if (announcements[0].announcement.body.indexOf(Utils.i18n("generalDevelopment")) != -1)
                            {
                                sendNotification(CHANGE_ALL_MAP, new AllMapUpdateVO(getCenterPos(), true));
                            }
                        }
                    }
                    break;
                }
                case LevelUpCommand.ALL_MAP_LEVELUP_FINISHED:
                case UnitProxy.ALL_MAP_LEVELUP_FINISH:
                {
                    animationProxy.playLvUpAnimation(sakuraProxy.sakura.lvUpAnimeCanvas, sakuraProxy.sakura.unit, AnimationProxy.LEVELUP_ANIMATION_FINISH_BY_ALL_MAP);
                    unitLevelUpWindow.init();
                    unitLevelUpWindow.preUnit = sakuraProxy.sakura.unit;
                    unitLevelUpWindow.runLevelUp = true;
                    break;
                }
                case AnimationProxy.LEVELUP_ANIMATION_FINISH_BY_ALL_MAP:
                {
                    msg = unitProxy.unitLvCap(animationProxy.lvUpUnit);
                    if (msg != null)
                    {
                        alertWindow = AlertWindow.show(msg);
                        app.allMap.popupWindow(alertWindow, false);
                    }
                    sendNotification(RELOAD_ALL_MAP_UNITS);
                    break;
                }
                case UnitProxy.LEARN_SKILL_COMPLETE_BY_ALL_MAP:
                {
                    app.removeLoadingWindow();
                    alertText;
                    if (note.getBody().old_skill_id)
                    {
                        alertText = Utils.i18n("allMapMediatorSkillsForgetLearn", skillProxy.skills[note.getBody().old_skill_id].nameLabel, skillProxy.skills[note.getBody().new_skill_id].nameLabel);
                    }
                    else
                    {
                        alertText = Utils.i18n("allMapMediatorSkillsLearn", skillProxy.skills[note.getBody().new_skill_id].nameLabel);
                    }
                    alertWindow = AlertWindow.show(alertText);
                    app.allMap.popupWindow(alertWindow, false);
                }
                case UnitProxy.UNIT_RECOVERY_COMPLETE_BY_ALL_MAP:
                case RELOAD_HOME_UNITS:
                case ALL_UNIT_RECOVERY_COMPLETE:
                {
                    sendNotification(RELOAD_ALL_MAP_UNITS);
                    break;
                }
                case UnitProxy.HOME_UNITS_LOADED_BY_ALL_MAP:
                {
                    units = unitProxy.homeUnits;
                    var _loc_3:int = 0;
                    var _loc_4:* = units;
                    while (_loc_4 in _loc_3)
                    {
                        
                        unit = _loc_4[_loc_3];
                        unit.loader.loadBytes(animationProxy.getUnitAnimation(unit.jobMasterVO.code, 0));
                    }
                    app.allMap.allMapCommandWindow.garrisonUnitWindow.resetUnits(units);
                    if (unitLevelUpWindow.runLevelUp)
                    {
                        unitLevelUpWindow.afterUnit = unitProxy.getHomeUnitById(unitLevelUpWindow.preUnit.unitId);
                        app.allMap.popupWindow(unitLevelUpWindow, false);
                        unitLevelUpWindow.runLevelUp = false;
                    }
                    app.removeLoadingWindow();
                    break;
                }
                case HomeProxy.HOME_RESOURCES_LOADED_BY_ALL_MAP:
                {
                    app.removeLoadingWindow();
                    break;
                }
                case GuildProxy.RELOAD_GUILD_PLAYER:
                {
                    app.allMap.guildMemberListWindow.init(note.getBody() as Array);
                    break;
                }
                case PlayerProxy.GET_TUTORIAL_STATE_IN_ALLMAP:
                {
                    tut = note.getBody() as Object;
                    if (!tut.flg)
                    {
                        app.allMap.allMapCommandWindow.tutMarkPurify.visible = true;
                    }
                    else
                    {
                        app.allMap.allMapCommandWindow.tutMarkPurify.visible = false;
                    }
                    break;
                }
                default:
                {
                    break;
                }
            }
            return;
        }// end function

        public function set cursorPos(param1:Point) : void
        {
            _cursorPos = param1;
            return;
        }// end function

        private function handleInfoEvent(event:Event) : void
        {
            var _loc_2:* = AnimationProxy(facade.retrieveProxy(AnimationProxy.NAME));
            var _loc_3:Object = {b_moving:1, b_report:2, b_chat:3};
            var _loc_4:* = event.type;
            app.allMap.infoButtonCanvas.visible = true;
            app.allMap.nowInfoId = _loc_3[event.type];
            app.allMap.nowInfo = event.type;
            app.allMap.taskBox.visible = false;
            app.allMap.infoBox.visible = false;
            app.allMap.chatBox.visible = false;
            switch(event.type)
            {
                case "b_report":
                {
                    app.allMap.infoBox.visible = false;
                    app.allMap.infoChat.visible = false;
                    app.allMap.savedInfo = "b_report";
                    chatChangeSize();
                    break;
                }
                case "b_moving":
                {
                    app.allMap.taskBox.visible = false;
                    app.allMap.infoChat.visible = false;
                    app.allMap.savedInfo = "b_moving";
                    chatChangeSize();
                    break;
                }
                case "b_chat":
                {
                    app.allMap.chatBox.visible = true;
                    app.allMap.infoChat.visible = true;
                    app.allMap.savedInfo = "b_chat";
                    app.allMap.chatBox.x = 225;
                    app.allMap.chatBox.y = 382;
                    app.allMap.guildChatWindow.width = 495;
                    app.allMap.guildChatWindow.height = 178;
                    chatChangeSize();
                    break;
                }
                case "w_small_large":
                {
                    app.allMap.chatBox.visible = false;
                    app.allMap.savedInfo = "b_chat_small_large";
                    app.allMap.nowInfo = "b_chat";
                    app.allMap.chatBox.x = 7;
                    app.allMap.chatBox.y = 140;
                    app.allMap.guildChatWindow.width = 730;
                    app.allMap.guildChatWindow.height = 420;
                    app.allMap.guildChatWindow.changeSize();
                    break;
                }
                case "w_large_small_chat":
                {
                    app.allMap.savedInfo = "b_chat_large_small_l";
                }
                case "w_large_small":
                {
                    app.allMap.chatBox.visible = false;
                    app.allMap.nowInfo = "b_chat";
                    app.allMap.chatBox.x = 225;
                    app.allMap.chatBox.y = 382;
                    app.allMap.guildChatWindow.width = 495;
                    app.allMap.guildChatWindow.height = 178;
                    app.allMap.guildChatWindow.changeSize();
                    break;
                }
                case "w_small_minimization":
                {
                    app.allMap.infoButtonCanvas.visible = false;
                    app.allMap.infoChat.visible = false;
                    app.allMap.nowInfo = "b_null";
                    break;
                }
                case "w_large_minimization":
                {
                    app.allMap.infoButtonCanvas.visible = false;
                    app.allMap.infoChat.visible = false;
                    app.allMap.nowInfo = "b_null";
                    break;
                }
                case "w_minimization_small":
                case "w_minimization_small_chat":
                {
                    app.allMap.infoButtonCanvas.visible = false;
                    app.allMap.infoChat.visible = false;
                    app.allMap.nowInfo = app.allMap.savedInfo;
                    break;
                }
                case "w_small_minimization_chat":
                {
                    app.allMap.infoButtonCanvas.visible = false;
                    app.allMap.infoChat.visible = false;
                    app.allMap.nowInfo = "b_null";
                    break;
                }
                default:
                {
                    break;
                }
            }
            if (app.allMap.infoButtonCanvas.visible)
            {
                _loc_2.generalAnimationChange("ui", "infoButton", app.allMap.nowInfo);
            }
            return;
        }// end function

        private function garrisonOK(event:PopupEvent) : void
        {
            var _loc_2:* = SakuraProxy(facade.retrieveProxy(SakuraProxy.NAME));
            var _loc_3:* = app.allMap.allMapCommandWindow.garrisonUnitWindow;
            _loc_2.removeSakuraSwf(_loc_3.sakura);
            sendNotification(GARRISON, event.param.unitIds);
            app.allMap.allMapCommandWindow.visible = false;
            return;
        }// end function

        private function attack(event:Event) : void
        {
            sendNotification(ATTACK, true);
            app.allMap.allMapCommandWindow.visible = false;
            return;
        }// end function

        private function chatChangeSize() : void
        {
            app.allMap.guildChatWindow.guildChatViewStack.selectedIndex = 1;
            app.allMap.guildChatWindow.guildChatViewStackAll.selectedIndex = 1;
            app.allMap.guildChatWindow.guildChatViewStackSys.selectedIndex = 1;
            app.allMap.guildChatWindow.guildChatViewStackFct.selectedIndex = 1;
            app.allMap.guildChatWindow.changeSize();
            return;
        }// end function

        private function setCommandTerritory(param1:AllMapCommandVO, param2:Array) : void
        {
            var _loc_3:* = PlayerProxy(facade.retrieveProxy(PlayerProxy.NAME));
            var _loc_4:* = _loc_3.playerVO;
            var _loc_5:* = app.allMap.allMapCommandWindow;
            if (_loc_4.playerId == param1.playerId || _loc_4.guild != null && _loc_4.guild.id == param1.guildId)
            {
                _loc_5.enablePurify = param1.invade;
                _loc_5.purify.visible = true;
                param2.push(_loc_5.purify);
            }
            return;
        }// end function

        private function garrisonAllRecovery(event:Event) : void
        {
            var _loc_2:* = UnitProxy(facade.retrieveProxy(UnitProxy.NAME));
            sendNotification(ALL_UNIT_RECOVERY, ALL_UNIT_RECOVERY_COMPLETE);
            return;
        }// end function

        public function getGamePos() : Point
        {
            return hexPosToGamePos(getHexPos());
        }// end function

        private function load_animation(event:PopupEvent) : void
        {
            sendNotification(LOAD_ANIMATION, event.param);
            return;
        }// end function

        override public function onRegister() : void
        {
            addEventListeners([[app.allMap, Event.ENTER_FRAME, handleEvent], [app.allMap, Viking.FINISH_TASK_IMMEDIATELY, handlePopupEvent], [app.allMap, Viking.HOME_SHOW_TUTORIAL_WINDOW, handleEvent], [app.allMap, Viking.ALL_MAP_MAIL_LIST, handleEvent], [app.allMap, Viking.ALL_MAP_BATTLE_REPORT_LIST, handleEvent], [app.allMap, Viking.HOME_CLOSE_NOW_WINDOW, handleEvent], [app.allMap, AllMap.BACK_HOME, handleEvent], [app.allMap.hexInputWindow, HexInputWindow.CHANGE_ALL_MAP, handleEvent], [app.allMap.hexInputWindow, HexInputWindow.BACK_HOME, handleEvent], [app.allMap.bgCanvas, MouseEvent.MOUSE_DOWN, handleMouseEvent], [app.allMap.bgCanvas, MouseEvent.MOUSE_UP, handleMouseEvent], [app.allMap.bgCanvas, MouseEvent.MOUSE_MOVE, handleMouseEvent], [app.allMap.miniMapWindow, MouseEvent.CLICK, handleMiniMapEvent], [app.allMap.guildMemberListWindow, GuildMemberListWindow.CLICK_GUILD_MEMBER_POS, handlePopupEvent], [app.allMap.allMapCommandWindow, MouseEvent.ROLL_OUT, rollOut], [app.allMap.allMapCommandWindow, AllMapCommandWindow.ATTACK, attack], [app.allMap.allMapCommandWindow, AllMapCommandWindow.PLUNDER, plunder], [app.allMap.allMapCommandWindow, AllMapCommandWindow.MAIL, handlePopupEvent], [app.allMap.allMapCommandWindow, AllMapCommandWindow.SURRENDER, surrender], [app.allMap.allMapCommandWindow, AllMapCommandWindow.RECLAIM, reclaim], [app.allMap.allMapCommandWindow, AllMapCommandWindow.FOUND, found], [app.allMap.allMapCommandWindow, AllMapCommandWindow.REPAIR, repair], [app.allMap.allMapCommandWindow, AllMapCommandWindow.LOAD_ANIMATION, load_animation], [app.allMap.allMapCommandWindow, AllMapCommandWindow.GARRISON_UNIT_WINDOW_OPEN, addSakuraSwf], [app.allMap.allMapCommandWindow, AllMapCommandWindow.GARRISON_OK, garrisonOK], [app.allMap.allMapCommandWindow, AllMapCommandWindow.GARRISON_CANCEL, garrisonCancel], [app.allMap.allMapCommandWindow, AllMapCommandWindow.GARRISON_ALL_RECOVERY, garrisonAllRecovery], [app.allMap.allMapCommandWindow, AllMapCommandWindow.DESTROY, destroy], [app.allMap.allMapCommandWindow, AllMapCommandWindow.REMOVE, remove], [app.allMap.allMapCommandWindow, AllMapCommandWindow.CHARGE_REMOVE, chargeRemove], [app.allMap.allMapCommandWindow, AllMapCommandWindow.SHOW_LOADING_WINDOW, handleEvent], [raidReportWindow, RaidReportWindow.RAID_DITAIL_REPORT, handlePopupEvent], [raidReportWindow, RaidReportWindow.COLONY_DITAIL_REPORT, handlePopupEvent], [raidReportWindow, RaidReportWindow.GUILD_MEMBER_RAID_DITAIL_REPORT, handlePopupEvent], [raidReportWindow, RaidReportWindow.CLOSED_BATTLE_REPORT_LIST, handleEvent]]);
            return;
        }// end function

        public function get mouseDownX() : int
        {
            return _mouseDownX;
        }// end function

        public function get mouseDownY() : int
        {
            return _mouseDownY;
        }// end function

        private function setCommandEvilPoint(param1:AllMapCommandVO, param2:Array) : void
        {
            var _loc_3:* = app.allMap.allMapCommandWindow;
            _loc_3.enableSubdue = param1.plunder;
            _loc_3.subdue.visible = true;
            param2.push(_loc_3.subdue);
            return;
        }// end function

        private function handleMouseEvent(event:MouseEvent) : void
        {
            switch(event.type)
            {
                case MouseEvent.MOUSE_DOWN:
                {
                    mouseState = MOUSE_DOWN;
                    break;
                }
                case MouseEvent.MOUSE_UP:
                {
                    mouseState = MOUSE_UP;
                    break;
                }
                case MouseEvent.MOUSE_MOVE:
                {
                    if (mouseState == MOUSE_INIT)
                    {
                        mouseState = MOUSE_MOVE;
                    }
                    break;
                }
                default:
                {
                    break;
                }
            }
            return;
        }// end function

        private function rollOut(event:MouseEvent) : void
        {
            app.allMap.allMapCommandWindow.visible = false;
            return;
        }// end function

        public function set mouseState(param1:int) : void
        {
            _mouseState = param1;
            return;
        }// end function

        private function handleChatEvent(event:Event) : void
        {
            trace("チャット種類切り替え:" + event.type);
            app.allMap.infoChat.visible = true;
            switch(event.type)
            {
                case "BUTTON_WORLD":
                {
                    app.allMap.chatButtonsAnimation("b_world");
                    app.allMap.guildChatWindow.chatsViewStack.selectedIndex = 3;
                    app.allMap.guildChatWindow.inputBox.visible = true;
                    app.allMap.guildChatWindow.enterButton.visible = false;
                    break;
                }
                case "BUTTON_GUILD":
                {
                    app.allMap.chatButtonsAnimation("b_guild");
                    app.allMap.guildChatWindow.chatsViewStack.selectedIndex = 0;
                    app.allMap.guildChatWindow.inputBox.visible = true;
                    break;
                }
                case "BUTTON_SYSTEM":
                {
                    app.allMap.chatButtonsAnimation("b_system");
                    app.allMap.guildChatWindow.chatsViewStack.selectedIndex = 2;
                    app.allMap.guildChatWindow.inputBox.visible = false;
                    break;
                }
                case "BUTTON_ALL":
                {
                    app.allMap.chatButtonsAnimation("b_all");
                    app.allMap.guildChatWindow.chatsViewStack.selectedIndex = 1;
                    app.allMap.guildChatWindow.inputBox.visible = false;
                    break;
                }
                default:
                {
                    break;
                }
            }
            return;
        }// end function

        private function getNextCenterPos() : Point
        {
            return new Point(topLeft.x * AllMapProxy.BG_IMAGE_WIDTH + AllMapProxy.SCR_WIDTH / 2 + mouseDownX - app.allMap.mouseX, topLeft.y * AllMapProxy.BG_IMAGE_HEIGHT + AllMapProxy.SCR_HEIGHT / 2 + mouseDownY - app.allMap.mouseY);
        }// end function

        private function chargeRemove(event:PopupEvent) : void
        {
            app.showLoadingWindow(true);
            sendNotification(CHARGE_REMOVE, event.param.area);
            app.allMap.allMapCommandWindow.visible = false;
            return;
        }// end function

        private function updateHexInfo() : void
        {
            var _loc_4:AllMapVO = null;
            var _loc_1:* = AllMapProxy(facade.retrieveProxy(AllMapProxy.NAME));
            var _loc_2:* = app.allMap.hexInfoWindow;
            var _loc_3:* = getHexPos();
            var _loc_5:* = isHexPosInMap(_loc_3);
            _loc_2.posY.visible = isHexPosInMap(_loc_3);
            var _loc_5:* = _loc_5;
            _loc_2.posX.visible = _loc_5;
            var _loc_5:* = _loc_5;
            _loc_2.topography.visible = _loc_5;
            if (_loc_5)
            {
                _loc_4 = _loc_1.map[_loc_3.y][_loc_3.x];
                _loc_2.topography.text = _loc_4.getTopographyName();
                if (!_loc_4.isLayLineOrVein())
                {
                    _loc_2.topography.text = _loc_2.topography.text + (" Lv." + _loc_4.level.toString());
                }
                _loc_2.posX.text = hexPosToGamePos(_loc_3).x.toString();
                _loc_2.posY.text = hexPosToGamePos(_loc_3).y.toString();
            }
            return;
        }// end function

        private function handleEvent(event:Event) : void
        {
            var _loc_3:Point = null;
            var _loc_4:PlayerProxy = null;
            var _loc_5:AnimationProxy = null;
            var _loc_6:HexInfoWindow = null;
            var _loc_2:* = AllMapProxy(facade.retrieveProxy(AllMapProxy.NAME));
            switch(event.type)
            {
                case Event.ENTER_FRAME:
                {
                    switch(mouseState)
                    {
                        case MOUSE_DOWN:
                        {
                            mouseDownX = app.allMap.bgCanvas.mouseX;
                            mouseDownY = app.allMap.bgCanvas.mouseY;
                            app.allMap.stage.addEventListener(MouseEvent.MOUSE_UP, handleMouseEvent);
                            mouseState = MOUSE_INIT;
                            break;
                        }
                        case MOUSE_UP:
                        {
                            if (mouseDownX != POS_INIT)
                            {
                                var _loc_7:* = POS_INIT;
                                mouseDownY = POS_INIT;
                                mouseDownX = _loc_7;
                                app.allMap.bgCanvas.stage.removeEventListener(MouseEvent.MOUSE_UP, handleMouseEvent);
                                if (app.allMap.cursor.visible)
                                {
                                    app.showLoadingWindow(true);
                                    sendNotification(GET_COMMAND, getHexPos());
                                }
                                else
                                {
                                    _loc_3 = getCenterPos();
                                    sendNotification(CHANGE_ALL_MAP, new AllMapUpdateVO(_loc_3, false));
                                    updateCursor();
                                    updateHexInfo();
                                }
                            }
                            mouseState = MOUSE_INIT;
                            break;
                        }
                        case MOUSE_MOVE:
                        {
                            if (mouseDownX != POS_INIT)
                            {
                                _loc_3 = getNextCenterPos();
                                if (_loc_3.x >= 0 && _loc_3.x < AllMapProxy.BG_WIDTH)
                                {
                                    app.allMap.bgCanvas.x = app.allMap.mouseX - mouseDownX;
                                }
                                else
                                {
                                    mouseDownX = app.allMap.bgCanvas.mouseX;
                                }
                                if (_loc_3.y >= 0 && _loc_3.y < AllMapProxy.BG_HEIGHT)
                                {
                                    app.allMap.bgCanvas.y = app.allMap.mouseY - mouseDownY;
                                }
                                else
                                {
                                    mouseDownY = app.allMap.bgCanvas.mouseY;
                                }
                                app.allMap.allMapCommandWindow.visible = false;
                                app.allMap.cursor.visible = false;
                                app.allMap.fort_range.visible = false;
                                _loc_6 = app.allMap.hexInfoWindow;
                                var _loc_7:Boolean = false;
                                _loc_6.posY.visible = false;
                                var _loc_7:* = _loc_7;
                                _loc_6.posX.visible = _loc_7;
                                _loc_6.topography.visible = _loc_7;
                                updateMiniMapFrame(_loc_3);
                            }
                            else
                            {
                                updateCursor();
                                updateHexInfo();
                            }
                            mouseState = MOUSE_INIT;
                            break;
                        }
                        default:
                        {
                            break;
                        }
                    }
                    break;
                }
                case Viking.HOME_SHOW_TUTORIAL_WINDOW:
                {
                    break;
                }
                case Viking.ALL_MAP_MAIL_LIST:
                {
                    _loc_2.loadMailList();
                    break;
                }
                case Viking.ALL_MAP_BATTLE_REPORT_LIST:
                {
                    app.showLoadingWindow();
                    _loc_2.loadRaidReport();
                    break;
                }
                case Viking.HOME_CLOSE_NOW_WINDOW:
                {
                    break;
                }
                case AllMap.BACK_HOME:
                {
                    app.showLoadingWindow();
                    app.gameViewStack.selectedIndex = Viking.VIEW_INDEX_HOME;
                    sendNotification(BACK_HOME);
                    break;
                }
                case HexInputWindow.CHANGE_ALL_MAP:
                {
                    sendNotification(CHANGE_ALL_MAP, new AllMapUpdateVO(getInputPos(), false));
                    break;
                }
                case HexInputWindow.BACK_HOME:
                {
                    _loc_4 = PlayerProxy(facade.retrieveProxy(PlayerProxy.NAME));
                    sendNotification(CHANGE_ALL_MAP, new AllMapUpdateVO(hexPosToCenterPos(_loc_4.playerVO.homeAllMapPos), true));
                    break;
                }
                case AllMapCommandWindow.SHOW_LOADING_WINDOW:
                {
                    app.showLoadingWindow();
                    break;
                }
                case RaidReportWindow.CLOSED_BATTLE_REPORT_LIST:
                {
                    _loc_5 = AnimationProxy(facade.retrieveProxy(AnimationProxy.NAME));
                    _loc_5.generalRemoveAnimation("buttons", "common_tab", raidReportWindow.ReportList);
                    _loc_5.generalRemoveAnimation("window", "common", raidReportWindow.windowLayer);
                    raidReportWindow.closeForAllMap();
                    break;
                }
                default:
                {
                    break;
                }
            }
            return;
        }// end function

        private function plunder(event:Event) : void
        {
            sendNotification(ATTACK, false);
            app.allMap.allMapCommandWindow.visible = false;
            return;
        }// end function

        private function startCommandAllMap(param1:AllMapCommandVO) : void
        {
            if (!param1.pos.equals(cursorPos))
            {
                return;
            }
            initCommandWindow(param1);
            var _loc_2:* = app.allMap.allMapCommandWindow;
            _loc_2.hexImage.source = createCommandChip(param1);
            _loc_2.tutMarkPurify.visible = false;
            var _loc_3:* = new Array();
            switch(param1.objectId)
            {
                case AllMapCommandVO.OBJ_HOME:
                {
                    setCommandHome(param1, _loc_3);
                    break;
                }
                case AllMapCommandVO.OBJ_TOWER:
                {
                    setCommandTower(param1, _loc_3);
                    break;
                }
                case AllMapCommandVO.OBJ_FORT:
                {
                    setCommandFort(param1, _loc_3);
                    break;
                }
                case AllMapCommandVO.OBJ_PROPERTY:
                {
                    setCommandProperty(param1, _loc_3);
                    break;
                }
                case AllMapCommandVO.OBJ_TERRITORY:
                {
                    setCommandTerritory(param1, _loc_3);
                    break;
                }
                case AllMapCommandVO.OBJ_EVIL_POINT:
                {
                    setCommandEvilPoint(param1, _loc_3);
                    break;
                }
                case AllMapCommandVO.OBJ_SEIRYU:
                case AllMapCommandVO.OBJ_SUZAKU:
                case AllMapCommandVO.OBJ_BYAKKO:
                case AllMapCommandVO.OBJ_GENBU:
                {
                }
                default:
                {
                    setCommandDefault(param1, _loc_3);
                    break;
                    break;
                }
            }
            var _loc_4:int = 0;
            while (_loc_4 < _loc_3.length)
            {
                
                _loc_3[_loc_4].x = 74 + 93 * _loc_4;
                _loc_4++;
            }
            _loc_2.visible = true;
            return;
        }// end function

        public function getMousePos() : Point
        {
            return new Point(topLeft.x * AllMapProxy.BG_IMAGE_WIDTH + app.allMap.bgCanvas.mouseX, topLeft.y * AllMapProxy.BG_IMAGE_HEIGHT + app.allMap.bgCanvas.mouseY);
        }// end function

        private function surrender(event:Event) : void
        {
            app.showLoadingWindow(true);
            sendNotification(SURRENDER);
            app.allMap.allMapCommandWindow.visible = false;
            return;
        }// end function

        private function updateMiniMapFrame(param1:Point) : void
        {
            var _loc_2:* = app.allMap.miniMapWindow;
            var _loc_3:* = _loc_2.frame;
            _loc_3.x = param1.x / (AllMapProxy.BG_WIDTH / MiniMapWindow.MINI_MAP_WIDTH);
            _loc_3.y = param1.y / (AllMapProxy.BG_HEIGHT / MiniMapWindow.MINI_MAP_HEIGHT);
            _loc_3.x = _loc_3.x + (_loc_2.width - MiniMapWindow.MINI_MAP_WIDTH) / 2;
            _loc_3.y = _loc_3.y + (_loc_2.height - MiniMapWindow.MINI_MAP_HEIGHT) / 2;
            _loc_3.x = _loc_3.x - _loc_3.width / 2;
            _loc_3.y = _loc_3.y - _loc_3.height / 2;
            return;
        }// end function

        public function get mouseState() : int
        {
            return _mouseState;
        }// end function

        override public function listNotificationInterests() : Array
        {
            return [SHOW_LOADING_WINDOW, AllMapProxy.SHOW_LOADING_WINDOW, AllMapProxy.FINISH_CHARGE_REMOVE, AllMapProxy.FINISH_REMOVE, AllMapProxy.UPDATE_ALL_MAP, AllMapProxy.START_COMMAND_ALL_MAP, AllMapProxy.ERROR_COMMAND_ALL_MAP, PlayerProxy.PLAYER_LOADED_BY_HOME, PlayerProxy.CHANGE_PLAYER_RANK_VIEW, PlayerProxy.ADMISSION_FACTION_COMPLETE, PlayerProxy.ADMISSION_FACTION_WITHOUT_TUTORIAL_COMPLETE, LoadAnimationAllMapCommand.LOAD_ANIMATION, UNIT_IN, UNIT_OUT, TaskUpdateCommand.TASK_UPDATED, AnnouncementProxy.ANNOUNCEMENT_LOADED, LevelUpCommand.ALL_MAP_LEVELUP_FINISHED, UnitProxy.ALL_MAP_LEVELUP_FINISH, AnimationProxy.LEVELUP_ANIMATION_FINISH_BY_ALL_MAP, UnitProxy.HOME_UNITS_LOADED_BY_ALL_MAP, UnitProxy.LEARN_SKILL_COMPLETE_BY_ALL_MAP, UnitProxy.UNIT_RECOVERY_COMPLETE_BY_ALL_MAP, HomeProxy.HOME_RESOURCES_LOADED_BY_ALL_MAP, GuildProxy.RELOAD_GUILD_PLAYER, RELOAD_HOME_UNITS, ALL_UNIT_RECOVERY_COMPLETE, AllMapProxy.MAIL_LIST_LOADED, AllMapProxy.ALL_MAP_RAID_REPORT_LOADED, AllMapProxy.MAIL_SEND_COMPLETE, AllMapProxy.DESIGNATE_MAIL_SEND_COMPLETE, AllMapProxy.MAIL_SEND_ERROR, AllMapProxy.MAIL_DETAIL_LOADED, AllMapProxy.MAIL_DETAIL_LOADED_ERROR, AllMapProxy.REPLY_MAIL_SEND_COMPLETE, PlayerProxy.GET_TUTORIAL_STATE_IN_ALLMAP];
        }// end function

        private function initCommandWindow(param1:AllMapCommandVO) : void
        {
            var _loc_7:String = null;
            var _loc_2:* = AllMapProxy(facade.retrieveProxy(AllMapProxy.NAME));
            var _loc_3:* = PlayerProxy(facade.retrieveProxy(PlayerProxy.NAME));
            var _loc_4:* = UnitProxy(facade.retrieveProxy(UnitProxy.NAME));
            var _loc_5:* = app.allMap.allMapCommandWindow;
            app.allMap.allMapCommandWindow.x = Utils.clamp(app.allMap.mouseX - _loc_5.width / 2, 0, app.allMap.width - _loc_5.width);
            _loc_5.y = Utils.clamp(app.allMap.mouseY - _loc_5.height / 2, 0, app.allMap.height - _loc_5.height);
            var _loc_6:* = _loc_2.map[param1.pos.y][param1.pos.x];
            _loc_5.topography.text = _loc_6.getTopographyName();
            if (!_loc_6.isLayLineOrVein())
            {
                _loc_5.topography.text = _loc_5.topography.text + ("  Lv." + param1.level.toString());
            }
            var _loc_8:* = param1.factionId != 0;
            _loc_5.faction.visible = param1.factionId != 0;
            if (_loc_8)
            {
                _loc_5.changeFaction("faction_0" + param1.factionId);
            }
            _loc_5.guildName.text = param1.guildName;
            _loc_5.objectName.text = param1.objectName;
            _loc_5.objectState.text = param1.objectState;
            var _loc_8:* = param1.onmyouRankId != 0;
            _loc_5.rank.visible = param1.onmyouRankId != 0;
            if (_loc_8)
            {
                _loc_7 = "";
                if (param1.onmyouRankId < 10)
                {
                    _loc_7 = "0";
                }
                _loc_5.changeRank("rank_" + _loc_7 + param1.onmyouRankId);
            }
            _loc_5.posX.text = hexXtoGameX(param1.pos.x).toString();
            _loc_5.posY.text = hexYtoGameY(param1.pos.y).toString();
            _loc_5.waitingUnits = _loc_4.homeWaitingUnits;
            _loc_5.purify.visible = false;
            _loc_5.attack.visible = false;
            _loc_5.invade.visible = false;
            _loc_5.subdue.visible = false;
            _loc_5.plunder.visible = false;
            _loc_5.mail.visible = false;
            _loc_5.surrender.visible = false;
            _loc_5.reclaim.visible = false;
            _loc_5.found.visible = false;
            _loc_5.repair.visible = false;
            _loc_5.garrison.visible = false;
            _loc_5.destroy.visible = false;
            _loc_5.remove.visible = false;
            _loc_5.chargeRemove.visible = false;
            _loc_5.playerName = param1.playerName;
            _loc_5.descriptionDataGrid.visible = param1.description != null;
            _loc_5.descriptions = [param1.description];
            _loc_5.outputsDataGrid.columns[1].setStyle("color", param1.plundered ? (16711680) : (0));
            _loc_5.outputsDataGrid.visible = !_loc_5.descriptionDataGrid.visible;
            _loc_5.outputs = param1.outputs;
            _loc_5.lowOnmyouRankAttack = param1.lowOnmyouRank;
            _loc_5.lowOnmyouRankLevelUp = param1.levelUp && param1.levelUp.rank > _loc_3.playerVO.playerRankId;
            _loc_5.noPossessionTicket = param1.noPossessionTicket;
            _loc_5.propertiesCountFull = param1.propertiesCountFull;
            _loc_5.notConnected = param1.notConnected;
            _loc_5.noUnit = param1.noUnit;
            return;
        }// end function

        private function buttonAddSwf(param1:String, param2:String, param3, param4:Function, param5, param6:int = 0, param7:int = 0) : void
        {
            var _loc_8:* = AnimationProxy(facade.retrieveProxy(AnimationProxy.NAME));
            AnimationProxy(facade.retrieveProxy(AnimationProxy.NAME)).generalAnimationLoaded(param1, param2, param5, param3, param6, param7);
            _loc_8.generalLoaders[param1][param2].contentLoaderInfo.addEventListener(Event.COMPLETE, param4);
            return;
        }// end function

        private function setCommandFort(param1:AllMapCommandVO, param2:Array) : void
        {
            var _loc_6:UnitProxy = null;
            var _loc_7:int = 0;
            var _loc_8:Image = null;
            var _loc_3:* = PlayerProxy(facade.retrieveProxy(PlayerProxy.NAME));
            var _loc_4:* = _loc_3.playerVO;
            var _loc_5:* = app.allMap.allMapCommandWindow;
            if (_loc_4.playerId == param1.playerId)
            {
                var _loc_9:* = param1.garrison;
                _loc_5.enableGarrison = param1.garrison;
                if (_loc_9)
                {
                    _loc_6 = UnitProxy(facade.retrieveProxy(UnitProxy.NAME));
                    _loc_5.selectedUnits = new Array();
                    for each (_loc_7 in param1.unitIds)
                    {
                        
                        _loc_5.selectedUnits.push(_loc_6.homeUnits.getOne("unitId", _loc_7));
                    }
                }
                _loc_5.garrison.visible = true;
                param2.push(_loc_5.garrison);
                var _loc_9:* = param1.repair != null;
                _loc_5.enableRepair = param1.repair != null;
                if (_loc_9)
                {
                    _loc_5.repairActivity = param1.repair;
                }
                _loc_5.repair.visible = true;
                param2.push(_loc_5.repair);
                _loc_5.enableDestroy = param1.destroy;
                _loc_5.destroy.visible = true;
                param2.push(_loc_5.destroy);
            }
            else if (!_loc_4.guild || _loc_4.guild.id != param1.guildId)
            {
                _loc_5.enableAttack = param1.invade;
                _loc_8 = _loc_5.attack;
                _loc_8.visible = true;
                param2.push(_loc_8);
            }
            return;
        }// end function

        private function handleMiniMapEvent(event:MouseEvent) : void
        {
            var _loc_2:Point = null;
            switch(event.type)
            {
                case MouseEvent.CLICK:
                {
                    _loc_2 = getClickPos();
                    if (_loc_2.x < 0 || _loc_2.x >= AllMapProxy.BG_WIDTH || _loc_2.y < 0 || _loc_2.y >= AllMapProxy.BG_HEIGHT)
                    {
                        return;
                    }
                    sendNotification(CHANGE_ALL_MAP, new AllMapUpdateVO(_loc_2, true));
                    break;
                }
                default:
                {
                    break;
                }
            }
            return;
        }// end function

        public function submitMail(event:PopupEvent) : void
        {
            var _loc_2:* = Object(event.param);
            var _loc_3:* = AllMapProxy(facade.retrieveProxy(AllMapProxy.NAME));
            _loc_3.sendMail(_loc_2, AllMapProxy.DESIGNATE_MAIL_SEND_COMPLETE);
            return;
        }// end function

        public function get topLeft() : Point
        {
            return _topLeft;
        }// end function

        private function garrisonCancel(event:Event) : void
        {
            var _loc_2:* = SakuraProxy(facade.retrieveProxy(SakuraProxy.NAME));
            var _loc_3:* = app.allMap.allMapCommandWindow.garrisonUnitWindow;
            _loc_2.removeSakuraSwf(_loc_3.sakura);
            return;
        }// end function

        private function setCommandProperty(param1:AllMapCommandVO, param2:Array) : void
        {
            var _loc_3:* = AllMapProxy(facade.retrieveProxy(AllMapProxy.NAME));
            var _loc_4:* = PlayerProxy(facade.retrieveProxy(PlayerProxy.NAME));
            var _loc_5:* = PlayerProxy(facade.retrieveProxy(PlayerProxy.NAME)).playerVO;
            var _loc_6:* = app.allMap.allMapCommandWindow;
            if (_loc_5.playerId == param1.playerId)
            {
                var _loc_7:* = param1.invade;
                _loc_6.enablePurify = param1.invade;
                if (_loc_7)
                {
                    _loc_6.purify.visible = true;
                    param2.push(_loc_6.purify);
                }
                if (!_loc_3.map[param1.pos.y][param1.pos.x].isLayLineOrVein())
                {
                    var _loc_7:* = param1.levelUp != null;
                    _loc_6.enableReclaim = param1.levelUp != null;
                    if (_loc_7)
                    {
                        _loc_6.reclaimActivity = param1.levelUp;
                    }
                    _loc_6.reclaim.visible = true;
                    param2.push(_loc_6.reclaim);
                }
                var _loc_7:* = param1.found != null;
                _loc_6.enableFound = param1.found != null;
                if (_loc_7)
                {
                    _loc_6.foundActivity = param1.found;
                }
                _loc_6.found.visible = true;
                param2.push(_loc_6.found);
                _loc_6.enableSurrender = param1.surrender;
                _loc_6.surrender.visible = true;
                param2.push(_loc_6.surrender);
            }
            else if (_loc_5.guild && _loc_5.guild.id == param1.guildId)
            {
                var _loc_7:* = param1.invade;
                _loc_6.enablePurify = param1.invade;
                if (_loc_7)
                {
                    _loc_6.purify.visible = true;
                    param2.push(_loc_6.purify);
                }
            }
            else
            {
                _loc_6.enableInvade = param1.invade;
                _loc_6.invade.visible = true;
                param2.push(_loc_6.invade);
            }
            return;
        }// end function

        public function set topLeft(param1:Point) : void
        {
            _topLeft = param1;
            return;
        }// end function

        public static function hexYtoGameY(param1:int) : int
        {
            return param1 - (AllMapProxy.HEX_V_NUM - 1) / 2;
        }// end function

        public static function hexPosToCenterPos(param1:Point) : Point
        {
            var _loc_2:* = hexPosToTopLeftPos(param1);
            _loc_2.x = _loc_2.x + AllMapProxy.CHIP_WIDTH_HLF;
            _loc_2.y = _loc_2.y + AllMapProxy.CHIP_HEIGHT_HLF;
            return _loc_2;
        }// end function

        public static function hexXtoGameX(param1:int) : int
        {
            return param1 - (AllMapProxy.HEX_H_NUM - 1) / 2;
        }// end function

        public static function gamePosToHexPos(param1:Point) : Point
        {
            return new Point(param1.x + (AllMapProxy.HEX_H_NUM - 1) / 2, param1.y + (AllMapProxy.HEX_V_NUM - 1) / 2);
        }// end function

        public static function hexPosToGamePos(param1:Point) : Point
        {
            return new Point(hexXtoGameX(param1.x), hexYtoGameY(param1.y));
        }// end function

        public static function isHexPosInMap(param1:Point) : Boolean
        {
            return param1.x >= 0 && param1.x < AllMapProxy.HEX_H_NUM && param1.y >= 0 && param1.y < AllMapProxy.HEX_V_NUM;
        }// end function

        public static function isGamePosInMap(param1:Point) : Boolean
        {
            return param1.x >= (AllMapProxy.HEX_H_NUM - 1) / -2 && param1.x <= (AllMapProxy.HEX_H_NUM - 1) / 2 && param1.y >= (AllMapProxy.HEX_V_NUM - 1) / -2 && param1.y <= (AllMapProxy.HEX_V_NUM - 1) / 2;
        }// end function

        public static function pixPosToHexPos(param1:Point) : Point
        {
            var _loc_6:int = 0;
            var _loc_2:* = new Point(AllMapMediator.int(param1.x), AllMapMediator.int(param1.y));
            _loc_2.x = _loc_2.x + AllMapProxy.CHIP_WIDTH_SUB * H_ADD;
            _loc_2.y = _loc_2.y + AllMapProxy.CHIP_HEIGHT * V_ADD;
            var _loc_3:* = _loc_2.x / AllMapProxy.CHIP_WIDTH_SUB;
            _loc_2.y = _loc_2.y - _loc_3 % 2 * AllMapProxy.CHIP_HEIGHT_HLF;
            var _loc_4:* = _loc_2.y / AllMapProxy.CHIP_HEIGHT;
            var _loc_5:* = _loc_2.x % AllMapProxy.CHIP_WIDTH_SUB;
            if (_loc_2.x % AllMapProxy.CHIP_WIDTH_SUB < AllMapProxy.CHIP_WIDTH_ADD)
            {
                _loc_6 = _loc_2.y % AllMapProxy.CHIP_HEIGHT;
                if (_loc_6 < AllMapProxy.CHIP_HEIGHT_HLF)
                {
                    _loc_6 = AllMapProxy.CHIP_HEIGHT_HLF - _loc_6 - 1;
                    if (_loc_5 * (AllMapProxy.CHIP_HEIGHT_HLF / AllMapProxy.CHIP_WIDTH_ADD) < _loc_6)
                    {
                        if (_loc_3 % 2 == 0)
                        {
                            _loc_4 = _loc_4 - 1;
                        }
                        _loc_3 = _loc_3 - 1;
                    }
                }
                else
                {
                    _loc_6 = _loc_6 - AllMapProxy.CHIP_HEIGHT_HLF;
                    if (_loc_5 * (AllMapProxy.CHIP_HEIGHT_HLF / AllMapProxy.CHIP_WIDTH_ADD) < _loc_6)
                    {
                        if (_loc_3 % 2 == 1)
                        {
                            _loc_4++;
                        }
                        _loc_3 = _loc_3 - 1;
                    }
                }
            }
            _loc_2.x = _loc_3 - H_ADD;
            _loc_2.y = _loc_4 - V_ADD;
            return _loc_2;
        }// end function

        public static function hexPosToTopLeftPos(param1:Point) : Point
        {
            var _loc_2:* = new Point(AllMapMediator.int(param1.x), AllMapMediator.int(param1.y));
            _loc_2.y = _loc_2.y * AllMapProxy.CHIP_HEIGHT;
            if (_loc_2.x % 2)
            {
                _loc_2.y = _loc_2.y + AllMapProxy.CHIP_HEIGHT_HLF;
            }
            _loc_2.x = _loc_2.x * AllMapProxy.CHIP_WIDTH_SUB;
            return _loc_2;
        }// end function

    }
}
