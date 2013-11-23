package com.kbmj.viking.proxy
{
    import com.kbmj.viking.lib.*;
    import com.kbmj.viking.proxy.home.*;
    import com.kbmj.viking.proxy.tactics.*;
    import com.kbmj.viking.view.*;
    import com.kbmj.viking.vo.*;
    import com.kbmj.viking.vo.tactics.*;
    import flash.display.*;
    import flash.events.*;
    import flash.utils.*;
    import org.puremvc.as3.patterns.proxy.*;

    public class SakuraProxy extends Proxy
    {
        private var _sakura:Sakura = null;
        private var currentMediator:Object;
        private var location:String = "";
        public static const UNIT_IN:String = NAME + "/unitIn";
        public static const UNIT_OUT:String = NAME + "/unitOut";
        public static const NAME:String = "SakuraProxy";

        public function SakuraProxy()
        {
            currentMediator = new Object();
            super(NAME);
            return;
        }// end function

        private function buttonAddSwf(param1:String, param2:String, param3, param4:Function, param5, param6:int = 0, param7:int = 0) : void
        {
            var _loc_8:* = AnimationProxy(facade.retrieveProxy(AnimationProxy.NAME));
            AnimationProxy(facade.retrieveProxy(AnimationProxy.NAME)).generalAnimationLoaded(param1, param2, param5, param3, param6, param7);
            _loc_8.generalLoaders[param1][param2].contentLoaderInfo.addEventListener(Event.COMPLETE, param4);
            return;
        }// end function

        private function iconUnitIn(event:Event) : void
        {
            sendNotification(currentMediator.UNIT_IN);
            return;
        }// end function

        private function iconIconItem(event:Event) : void
        {
            var animationProxy:AnimationProxy;
            var homeProxy:HomeProxy;
            var e:* = event;
            animationProxy = AnimationProxy(facade.retrieveProxy(AnimationProxy.NAME));
            homeProxy = HomeProxy(facade.retrieveProxy(HomeProxy.NAME));
            _sakura.showItemWindow();
            _sakura.unitUseItemWindow.setItems(homeProxy.homeVO.resourceVO);
            setSakuraTutorialMarks("USE_ITEM_TMARK");
            if (!_sakura.hasEventListener(Sakura.USE_ITEM))
            {
                _sakura.addEventListener(Sakura.USE_ITEM_WINDOW_TMARK, function (event:Event) : void
            {
                _sakura.removeEventListener(Sakura.USE_ITEM_WINDOW_TMARK, arguments.callee);
                setSakuraTutorialMarks("USE_ITEM_TMARK_FINISH");
                return;
            }// end function
            );
                _sakura.addEventListener(Sakura.USE_ITEM, function (event:PopupEvent) : void
            {
                _sakura.removeEventListener(Sakura.USE_ITEM, arguments.callee);
                arguments = UnitProxy(facade.retrieveProxy(UnitProxy.NAME));
                sendNotification(currentMediator.SHOW_LOADING_WINDOW, true);
                var _loc_4:* = UnitProxy.UNIT_RECOVERY_COMPLETE;
                if (location == "selectUnit")
                {
                    _loc_4 = UnitProxy.UNIT_RECOVERY_COMPLETE_BY_SELECT_UNIT;
                }
                else if (location == "allMap")
                {
                    _loc_4 = UnitProxy.UNIT_RECOVERY_COMPLETE_BY_ALL_MAP;
                }
                else if (location == "applicationMediator")
                {
                    _loc_4 = UnitProxy.UNIT_RECOVERY_COMPLETE_BY_APPLICATION_MEDIATOR;
                }
                arguments.unitRecovery(event.param.unit.unitId, event.param.item, _loc_4);
                homeProxy.decreaseItemEndurance(event.param.item.itemId);
                return;
            }// end function
            );
            }
            _sakura.unitUseItemWindow.skillCanvas.visible = false;
            childWindowAddSwfCommon(_sakura.unitUseItemWindow.windowLayer, function (event:Event) : void
            {
                var e:* = event;
                animationProxy.childLoaders["window"]["common"]["useItem"].content.addEventListener("ENLARGE_END", function (event:Event) : void
                {
                    arguments = new activation;
                    var e:* = event;
                    var arguments:* = arguments;
                    animationProxy.childLoaders["window"]["common"]["useItem"].content.removeEventListener("ENLARGE_END", callee);
                    _sakura.unitUseItemWindow.skillCanvas.visible = true;
                    _sakura.addEventListener(Sakura.USE_ITEM_WINDOW_CLOSE, function (event:Event) : void
                    {
                        _sakura.removeEventListener(Sakura.USE_ITEM_WINDOW_CLOSE, arguments.callee);
                        animationProxy.childRemoveAnimation("window", "common", "useItem", _sakura.unitUseItemWindow.windowLayer);
                        return;
                    }// end function
                    );
                    return;
                }// end function
                );
                return;
            }// end function
            , "useItem", "top_720x285", 0, 0);
            return;
        }// end function

        private function childWindowAddSwfCommon(param1, param2:Function, param3:String, param4:String = "purpose_window", param5:int = 0, param6:int = 0) : void
        {
            var _loc_7:* = AnimationProxy(facade.retrieveProxy(AnimationProxy.NAME));
            AnimationProxy(facade.retrieveProxy(AnimationProxy.NAME)).childAnimationLoaded("window", "common", param3, param4, param1, param5, param6);
            _loc_7.childLoaders["window"]["common"][param3].contentLoaderInfo.addEventListener(Event.COMPLETE, param2);
            return;
        }// end function

        public function set sakura(param1:Sakura) : void
        {
            _sakura = param1;
            return;
        }// end function

        private function equipmentTabSelected1(event:Event) : void
        {
            _sakura.changeEquipmentWindow.unitViewStack.selectedIndex = 1;
            _sakura.changeEquipmentWindow.myViewStack.selectedIndex = 1;
            return;
        }// end function

        private function equipmentTabSelected2(event:Event) : void
        {
            _sakura.changeEquipmentWindow.unitViewStack.selectedIndex = 2;
            _sakura.changeEquipmentWindow.myViewStack.selectedIndex = 2;
            return;
        }// end function

        private function equipmentTabSelected3(event:Event) : void
        {
            _sakura.changeEquipmentWindow.unitViewStack.selectedIndex = 3;
            _sakura.changeEquipmentWindow.myViewStack.selectedIndex = 3;
            return;
        }// end function

        private function equipmentTabSelected4(event:Event) : void
        {
            _sakura.changeEquipmentWindow.unitViewStack.selectedIndex = 4;
            _sakura.changeEquipmentWindow.myViewStack.selectedIndex = 4;
            return;
        }// end function

        private function iconIconPower(event:Event) : void
        {
            var animationProxy:AnimationProxy;
            var e:* = event;
            animationProxy = AnimationProxy(facade.retrieveProxy(AnimationProxy.NAME));
            _sakura.showUtilityWindow();
            _sakura.unitUtilityWindow.utilityCanvas.visible = false;
            _sakura.unitUtilityWindow.init();
            childWindowAddSwfCommon(_sakura.unitUtilityWindow.windowLayer, function (event:Event) : void
            {
                var e:* = event;
                animationProxy.childLoaders["window"]["common"]["utility"].content.addEventListener("ENLARGE_END", function (event:Event) : void
                {
                    arguments = new activation;
                    var e:* = event;
                    var arguments:* = arguments;
                    animationProxy.childLoaders["window"]["common"]["utility"].content.removeEventListener("ENLARGE_END", callee);
                    _sakura.unitUtilityWindow.utilityCanvas.visible = true;
                    _sakura.addEventListener(Sakura.UTILITY_WINDOW_CLOSE, function (event:Event) : void
                    {
                        _sakura.removeEventListener(Sakura.UTILITY_WINDOW_CLOSE, arguments.callee);
                        animationProxy.childRemoveAnimation("window", "common", "utility", _sakura.unitUtilityWindow.windowLayer);
                        return;
                    }// end function
                    );
                    return;
                }// end function
                );
                return;
            }// end function
            , "utility", "top_720x285");
            if (!_sakura.hasEventListener(Sakura.REUNION))
            {
                _sakura.addEventListener(Sakura.REUNION, function (event:PopupEvent) : void
            {
                _sakura.removeEventListener(Sakura.REUNION, arguments.callee);
                sendNotification(currentMediator.SHOW_LOADING_WINDOW, true);
                arguments = UnitProxy(facade.retrieveProxy(UnitProxy.NAME));
                var _loc_4:* = UnitProxy.REUNION_COMPLETE;
                arguments.reunion(event.param.unitId, _loc_4, event.param.blood_reunion);
                return;
            }// end function
            );
            }
            if (!_sakura.hasEventListener(Sakura.RENAME))
            {
                _sakura.addEventListener(Sakura.RENAME, function (event:PopupEvent) : void
            {
                _sakura.removeEventListener(Sakura.RENAME, arguments.callee);
                sendNotification(currentMediator.SHOW_LOADING_WINDOW, true);
                arguments = UnitProxy(facade.retrieveProxy(UnitProxy.NAME));
                var _loc_4:* = UnitProxy.RENAME_COMPLETE;
                arguments.rename(event.param.unitId, _loc_4);
                return;
            }// end function
            );
            }
            if (!_sakura.hasEventListener(Sakura.RECOVERY))
            {
                _sakura.addEventListener(Sakura.RECOVERY, function (event:PopupEvent) : void
            {
                _sakura.removeEventListener(Sakura.RECOVERY, arguments.callee);
                sendNotification(currentMediator.SHOW_LOADING_WINDOW, true);
                arguments = UnitProxy(facade.retrieveProxy(UnitProxy.NAME));
                arguments.chargeRecovery(event.param.unitId);
                return;
            }// end function
            );
            }
            return;
        }// end function

        private function iconEquipment(event:Event) : void
        {
            var animationProxy:AnimationProxy;
            var unitProxy:UnitProxy;
            var e:* = event;
            animationProxy = AnimationProxy(facade.retrieveProxy(AnimationProxy.NAME));
            unitProxy = UnitProxy(facade.retrieveProxy(UnitProxy.NAME));
            _sakura.iconEquipment();
            _sakura.popupWindow(_sakura.changeEquipmentWindow, false, null, true);
            _sakura.changeEquipmentWindow.equipBox.visible = false;
            setSakuraTutorialMarks("CHANGE_EQUIPMENT_TMARK");
            childWindowAddSwfCommon(_sakura.changeEquipmentWindow.windowLayer, function (event:Event) : void
            {
                var e:* = event;
                animationProxy.childLoaders["window"]["common"]["equipment"].content.addEventListener("ENLARGE_END", function (event:Event) : void
                {
                    arguments = new activation;
                    var e:* = event;
                    var arguments:* = arguments;
                    animationProxy.childLoaders["window"]["common"]["equipment"].content.removeEventListener("ENLARGE_END", callee);
                    _sakura.changeEquipmentWindow.equipBox.visible = true;
                    _sakura.addEventListener(Sakura.CHANGE_EQUIPMENT_WINDOW_CLOSE, function (event:Event) : void
                    {
                        _sakura.removeEventListener(Sakura.CHANGE_EQUIPMENT_WINDOW_CLOSE, arguments.callee);
                        animationProxy.generalLoaders["buttons"]["common_tab"].content.removeEventListener("TAB_EQUIPMENT_MAIN_ARMS", equipmentTabSelected0);
                        animationProxy.generalLoaders["buttons"]["common_tab"].content.removeEventListener("TAB_EQUIPMENT_SUB_ARMS", equipmentTabSelected1);
                        animationProxy.generalLoaders["buttons"]["common_tab"].content.removeEventListener("TAB_EQUIPMENT_GUARDS", equipmentTabSelected2);
                        animationProxy.generalLoaders["buttons"]["common_tab"].content.removeEventListener("TAB_EQUIPMENT_ACCESSORIES", equipmentTabSelected3);
                        animationProxy.generalLoaders["buttons"]["common_tab"].content.removeEventListener("TAB_EQUIPMENT_ITEMS", equipmentTabSelected4);
                        animationProxy.childRemoveAnimation("window", "common", "equipment", _sakura.changeEquipmentWindow.windowLayer);
                        return;
                    }// end function
                    );
                    return;
                }// end function
                );
                return;
            }// end function
            , "equipment", "top_720x285");
            buttonAddSwf("buttons", "common_tab", _sakura.changeEquipmentWindow.tabCanvas, function () : void
            {
                animationProxy.generalLoaders["buttons"]["common_tab"].content.addEventListener("TAB_EQUIPMENT_MAIN_ARMS", equipmentTabSelected0);
                animationProxy.generalLoaders["buttons"]["common_tab"].content.addEventListener("TAB_EQUIPMENT_SUB_ARMS", equipmentTabSelected1);
                animationProxy.generalLoaders["buttons"]["common_tab"].content.addEventListener("TAB_EQUIPMENT_GUARDS", equipmentTabSelected2);
                animationProxy.generalLoaders["buttons"]["common_tab"].content.addEventListener("TAB_EQUIPMENT_ACCESSORIES", equipmentTabSelected3);
                animationProxy.generalLoaders["buttons"]["common_tab"].content.addEventListener("TAB_EQUIPMENT_ITEMS", equipmentTabSelected4);
                return;
            }// end function
            , "tab_equipment_main_arms");
            _sakura.addEventListener(Sakura.CHANGE_EQUIPMENT, function (event:Event) : void
            {
                _sakura.removeEventListener(Sakura.CHANGE_EQUIPMENT, arguments.callee);
                if (_sakura.changeEquipmentWindow.changeBool)
                {
                    sendNotification(currentMediator.SHOW_LOADING_WINDOW, true);
                    unitProxy.changeEquipment(_sakura.unit);
                    _sakura.changeEquipmentWindow.changeBool = false;
                }
                return;
            }// end function
            );
            _sakura.addEventListener(Sakura.CHANGE_EQUIPMENT_WINDOW_TMARK_EQUIP, function (event:Event) : void
            {
                setSakuraTutorialMarks("CHANGE_EQUIPMENT_TMARK_EQUIPPED");
                return;
            }// end function
            );
            _sakura.addEventListener(Sakura.CHANGE_EQUIPMENT_WINDOW_TMARK_FINISH, function (event:Event) : void
            {
                _sakura.removeEventListener(Sakura.CHANGE_EQUIPMENT_WINDOW_TMARK_FINISH, arguments.callee);
                _sakura.removeEventListener(Sakura.CHANGE_EQUIPMENT_WINDOW_TMARK_EQUIP, arguments.callee);
                setSakuraTutorialMarks("CHANGE_EQUIPMENT_TMARK_FINISH");
                return;
            }// end function
            );
            _sakura.addEventListener(Sakura.CHANGE_EQUIPMENT_CANCEL, function (event:Event) : void
            {
                arguments = new activation;
                var e:* = event;
                var arguments:* = arguments;
                _sakura.removeEventListener(Sakura.CHANGE_EQUIPMENT_CANCEL, callee);
                _sakura.addEventListener(Sakura.CHANGE_EQUIPMENT_WINDOW_TMARK_CLOSE, function (event:Event) : void
                {
                    _sakura.removeEventListener(Sakura.CHANGE_EQUIPMENT_WINDOW_TMARK_CLOSE, arguments.callee);
                    _sakura.removeEventListener(Sakura.CHANGE_EQUIPMENT_WINDOW_TMARK_EQUIP, arguments.callee);
                    setSakuraTutorialMarks("CHANGE_EQUIPMENT_TMARK_CLOSE");
                    return;
                }// end function
                );
                if (_sakura.changeEquipmentWindow.changeBool)
                {
                    sendNotification(currentMediator.RELOAD_HOME_UNITS);
                    _sakura.changeEquipmentWindow.changeBool = false;
                }
                return;
            }// end function
            );
            return;
        }// end function

        private function iconIconLvup(event:Event) : void
        {
            var _loc_5:AlertWindow = null;
            var _loc_2:* = HomeProxy(facade.retrieveProxy(HomeProxy.NAME));
            var _loc_3:* = PlayerProxy(facade.retrieveProxy(PlayerProxy.NAME));
            var _loc_4:Object = {1:3, 2:6, 3:9, 4:12, 5:15, 6:18, 7:21, 8:23, 9:25, 10:27, 11:29, 12:30, 13:31, 14:32, 15:33, 16:99};
            if (_sakura.unit.level >= _loc_4[_loc_3.playerVO.playerRankId])
            {
                _loc_5 = AlertWindow.show(Utils.i18n("sakuraProxyLevelCap"));
                _sakura.popupWindow(_loc_5, false);
                return;
            }
            setSakuraTutorialMarks("LEVEL_UP_FINISH");
            sendNotification(currentMediator.SHOW_LOADING_WINDOW, true);
            sendNotification(currentMediator.LEVELUP, [_sakura.unit, location]);
            return;
        }// end function

        private function equipmentTabSelected0(event:Event) : void
        {
            _sakura.changeEquipmentWindow.unitViewStack.selectedIndex = 0;
            _sakura.changeEquipmentWindow.myViewStack.selectedIndex = 0;
            return;
        }// end function

        private function iconIconSkill(event:Event) : void
        {
            var animationProxy:AnimationProxy;
            var e:* = event;
            animationProxy = AnimationProxy(facade.retrieveProxy(AnimationProxy.NAME));
            var skillProxy:* = SkillProxy(facade.retrieveProxy(SkillProxy.NAME));
            _sakura.selectedSkill(skillProxy.skillArray);
            _sakura.popupWindow(_sakura.skillLearnWindow, false, null, true);
            _sakura.skillLearnWindow.skillCanvas.visible = false;
            setSakuraTutorialMarks("SKILL_LEARN_TMARK");
            childWindowAddSwfCommon(_sakura.skillLearnWindow.windowLayer, function (event:Event) : void
            {
                var e:* = event;
                animationProxy.childLoaders["window"]["common"]["skills"].content.addEventListener("ENLARGE_END", function (event:Event) : void
                {
                    arguments = new activation;
                    var e:* = event;
                    var arguments:* = arguments;
                    animationProxy.childLoaders["window"]["common"]["skills"].content.removeEventListener("ENLARGE_END", callee);
                    _sakura.skillLearnWindow.skillCanvas.visible = true;
                    _sakura.addEventListener(Sakura.SKILL_LEARN_WINDOW_CLOSE, function (event:Event) : void
                    {
                        _sakura.removeEventListener(Sakura.SKILL_LEARN_WINDOW_CLOSE, arguments.callee);
                        animationProxy.childRemoveAnimation("window", "common", "skills", _sakura.skillLearnWindow.windowLayer);
                        return;
                    }// end function
                    );
                    return;
                }// end function
                );
                return;
            }// end function
            , "skills", "top_720x285");
            if (!_sakura.hasEventListener(Sakura.SKILL_LEARN))
            {
                _sakura.addEventListener(Sakura.SKILL_LEARN_WINDOW_TMARK, function (event:Event) : void
            {
                _sakura.removeEventListener(Sakura.SKILL_LEARN_WINDOW_TMARK, arguments.callee);
                setSakuraTutorialMarks("SKILL_LEARN_TMARK_FINISH");
                return;
            }// end function
            );
                _sakura.addEventListener(Sakura.SKILL_LEARN, function (event:PopupEvent) : void
            {
                _sakura.removeEventListener(Sakura.SKILL_LEARN, arguments.callee);
                sendNotification(currentMediator.SHOW_LOADING_WINDOW, true);
                arguments = UnitProxy(facade.retrieveProxy(UnitProxy.NAME));
                var _loc_4:* = UnitProxy.LEARN_SKILL_COMPLETE;
                if (location == "selectUnit")
                {
                    _loc_4 = UnitProxy.LEARN_SKILL_COMPLETE_BY_SELECT_UNIT;
                }
                else if (location == "allMap")
                {
                    _loc_4 = UnitProxy.LEARN_SKILL_COMPLETE_BY_ALL_MAP;
                }
                else if (location == "applicationMediator")
                {
                    _loc_4 = UnitProxy.LEARN_SKILL_COMPLETE_BY_APPLICATION_MEDIATOR;
                }
                arguments.learnSkill(event.param.unitId, event.param.skill.skillId, _loc_4);
                return;
            }// end function
            );
            }
            if (!_sakura.hasEventListener(Sakura.SKILL_CHANGE))
            {
                _sakura.addEventListener(Sakura.SKILL_CHANGE, function (event:PopupEvent) : void
            {
                _sakura.removeEventListener(Sakura.SKILL_CHANGE, arguments.callee);
                sendNotification(currentMediator.SHOW_LOADING_WINDOW, true);
                arguments = UnitProxy(facade.retrieveProxy(UnitProxy.NAME));
                var _loc_4:* = UnitProxy.LEARN_SKILL_COMPLETE;
                if (location == "selectUnit")
                {
                    _loc_4 = UnitProxy.LEARN_SKILL_COMPLETE_BY_SELECT_UNIT;
                }
                else if (location == "allMap")
                {
                    _loc_4 = UnitProxy.LEARN_SKILL_COMPLETE_BY_ALL_MAP;
                }
                else if (location == "applicationMediator")
                {
                    _loc_4 = UnitProxy.LEARN_SKILL_COMPLETE_BY_APPLICATION_MEDIATOR;
                }
                arguments.learnSkill(event.param.unitId, event.param.newSkill.skillId, _loc_4, event.param.oldSkill.skillId);
                return;
            }// end function
            );
            }
            return;
        }// end function

        private function setSakuraTutorialMarks(param1:String) : void
        {
            var _loc_2:* = PlayerProxy(facade.retrieveProxy(PlayerProxy.NAME));
            var _loc_3:* = _loc_2.playerVO.tutorialId;
            var _loc_4:* = getQualifiedClassName(currentMediator);
            _loc_4 = getQualifiedClassName(currentMediator).slice(getQualifiedClassName(currentMediator).lastIndexOf("::") + 2);
            if (_loc_3 < 4 && _loc_4 == "HomeMediator")
            {
                trace(param1);
                switch(param1)
                {
                    case "CHANGE_EQUIPMENT_TMARK":
                    {
                        _sakura.changeEquipmentWindow.setTutMarkVisible(_loc_3, _sakura.unit.jobMasterId);
                        _sakura.changeEquipmentWindow.tutMarkFinishEquip.visible = false;
                        break;
                    }
                    case "CHANGE_EQUIPMENT_TMARK_EQUIPPED":
                    {
                        if (_loc_3 == 1)
                        {
                            if (_sakura.changeEquipmentWindow.tutMarkEquipFinishVisible)
                            {
                                _sakura.changeEquipmentWindow.tutMarkEquipVisible = false;
                                _sakura.changeEquipmentWindow.tutMarkFinishEquip.visible = true;
                            }
                            else
                            {
                                _sakura.changeEquipmentWindow.tutMarkEquipVisible = true;
                                _sakura.changeEquipmentWindow.tutMarkFinishEquip.visible = false;
                            }
                        }
                        break;
                    }
                    case "CHANGE_EQUIPMENT_TMARK_FINISH":
                    {
                        if (_loc_3 == 1)
                        {
                            _sakura.changeEquipmentWindow.tutMarkEquipVisible = false;
                            _sakura.changeEquipmentWindow.tutMarkFinishEquip.visible = false;
                        }
                        break;
                    }
                    case "CHANGE_EQUIPMENT_TMARK_CLOSE":
                    {
                        if (_loc_3 == 1)
                        {
                            _sakura.changeEquipmentWindow.tutMarkFinishEquip.visible = false;
                        }
                        break;
                    }
                    case "USE_ITEM_TMARK":
                    {
                        _sakura.unitUseItemWindow.setTutMarkItemVisible(_loc_3, _sakura.unit.jobMasterId, _sakura.unit.level);
                        break;
                    }
                    case "USE_ITEM_TMARK_FINISH":
                    {
                        _sakura.unitUseItemWindow.tutMarkItemVisible = false;
                        break;
                    }
                    case "LEVEL_UP_FINISH":
                    {
                        break;
                    }
                    case "SKILL_LEARN_TMARK":
                    {
                        _sakura.skillLearnWindow.setTutMarkSkillVisible(_loc_3, _sakura.unit.jobMasterId, _sakura.unit.level, _sakura.unit.hasSkill(18));
                    }
                    case "SKILL_LEARN_TMARK_FINISH":
                    {
                    }
                    default:
                    {
                        break;
                        break;
                    }
                }
            }
            return;
        }// end function

        public function get sakura() : Sakura
        {
            return _sakura;
        }// end function

        override public function onRegister() : void
        {
            return;
        }// end function

        private function iconEnlargeEnd(event:Event) : void
        {
            var _loc_2:* = _sakura.mode + "_lvup_" + (_sakura.unit.canLevelUp ? ("on") : ("off"));
            MovieClip(Loader(_sakura._swf_sakura.getChildAt(0)).content).gotoAndPlay(_loc_2);
            return;
        }// end function

        public function removeSakuraSwf(param1:Sakura) : Boolean
        {
            if (_sakura != param1)
            {
                trace(param1.mode, "can not close.");
                return false;
            }
            _sakura = null;
            return true;
        }// end function

        private function iconUnitOut(event:Event) : void
        {
            sendNotification(currentMediator.UNIT_OUT);
            return;
        }// end function

        public function addSakuraSwf(param1:Sakura, param2:Object, param3:String) : Boolean
        {
            var sakura:* = param1;
            var mediator:* = param2;
            var nowLocation:* = param3;
            if (_sakura != null)
            {
                trace(sakura.mode, "can not open.");
                return false;
            }
            _sakura = sakura;
            location = nowLocation;
            currentMediator = mediator;
            if (Loader(_sakura._swf_sakura.getChildAt(0)).content == null)
            {
                Loader(_sakura._swf_sakura.getChildAt(0)).contentLoaderInfo.addEventListener(Event.COMPLETE, function () : void
            {
                Loader(_sakura._swf_sakura.getChildAt(0)).contentLoaderInfo.removeEventListener(Event.COMPLETE, arguments.callee);
                if (!Loader(_sakura._swf_sakura.getChildAt(0)).content.hasEventListener("ENLARGE_END"))
                {
                    Loader(_sakura._swf_sakura.getChildAt(0)).content.addEventListener("ENLARGE_END", iconEnlargeEnd);
                    Loader(_sakura._swf_sakura.getChildAt(0)).content.addEventListener("CLOSE", iconClose);
                    Loader(_sakura._swf_sakura.getChildAt(0)).content.addEventListener("ICON_EQUIPMENT", iconEquipment);
                    trace("Loader(_sakura._swf_sakura.getChildAt(0)).content.addEventListener(); swf読み込み前");
                    Loader(_sakura._swf_sakura.getChildAt(0)).content.addEventListener("ICON_ITEM", iconIconItem);
                    Loader(_sakura._swf_sakura.getChildAt(0)).content.addEventListener("ICON_POWER", iconIconPower);
                    Loader(_sakura._swf_sakura.getChildAt(0)).content.addEventListener("ICON_SKILL", iconIconSkill);
                    Loader(_sakura._swf_sakura.getChildAt(0)).content.addEventListener("ICON_LVUP", iconIconLvup);
                    Loader(_sakura._swf_sakura.getChildAt(0)).content.addEventListener("ICON_UNIT_IN", iconUnitIn);
                    Loader(_sakura._swf_sakura.getChildAt(0)).content.addEventListener("ICON_UNIT_OUT", iconUnitOut);
                }
                return;
            }// end function
            );
            }
            else if (!Loader(_sakura._swf_sakura.getChildAt(0)).content.hasEventListener("ENLARGE_END"))
            {
                Loader(_sakura._swf_sakura.getChildAt(0)).content.addEventListener("ENLARGE_END", iconEnlargeEnd);
                Loader(_sakura._swf_sakura.getChildAt(0)).content.addEventListener("CLOSE", iconClose);
                Loader(_sakura._swf_sakura.getChildAt(0)).content.addEventListener("ICON_EQUIPMENT", iconEquipment);
                trace("Loader(_sakura._swf_sakura.getChildAt(0)).content.addEventListener(); swf読み込み後");
                Loader(_sakura._swf_sakura.getChildAt(0)).content.addEventListener("ICON_ITEM", iconIconItem);
                Loader(_sakura._swf_sakura.getChildAt(0)).content.addEventListener("ICON_POWER", iconIconPower);
                Loader(_sakura._swf_sakura.getChildAt(0)).content.addEventListener("ICON_SKILL", iconIconSkill);
                Loader(_sakura._swf_sakura.getChildAt(0)).content.addEventListener("ICON_LVUP", iconIconLvup);
                Loader(_sakura._swf_sakura.getChildAt(0)).content.addEventListener("ICON_UNIT_IN", iconUnitIn);
                Loader(_sakura._swf_sakura.getChildAt(0)).content.addEventListener("ICON_UNIT_OUT", iconUnitOut);
            }
            if (!_sakura.hasEventListener(Viking.HOME_GET_EQUIPABLE_RESOURCE))
            {
                _sakura.addEventListener(Viking.HOME_GET_EQUIPABLE_RESOURCE, function (event:PopupEvent) : void
            {
                var _loc_2:* = event.param.unit as UnitVO;
                var _loc_3:* = event.param.sakura as Sakura;
                var _loc_4:* = ResourceProxy(facade.retrieveProxy(ResourceProxy.NAME));
                var _loc_5:* = HomeProxy(facade.retrieveProxy(HomeProxy.NAME));
                var _loc_6:* = _loc_4.equipableResource(_loc_2.jobMasterVO, _loc_5.homeVO.resourceVO);
                _sakura.showChangeEquipmentWindow(_loc_2, _loc_6);
                return;
            }// end function
            );
            }
            return true;
        }// end function

        private function iconClose(event:Event) : void
        {
            if (_sakura == null)
            {
                trace("iconClose error!");
                return;
            }
            _sakura.close();
            return;
        }// end function

    }
}
