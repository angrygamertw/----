package com.kbmj.viking.controller.home
{
    import com.kbmj.viking.lib.*;
    import com.kbmj.viking.proxy.*;
    import com.kbmj.viking.proxy.home.*;
    import com.kbmj.viking.proxy.tactics.*;
    import com.kbmj.viking.view.home.*;
    import com.kbmj.viking.vo.home.*;
    import flash.events.*;
    import org.puremvc.as3.interfaces.*;
    import org.puremvc.as3.patterns.command.*;

    public class PrepareBuildingWindowCommand extends SimpleCommand
    {
        public static const SHOW_EINHERJARIZE_WINDOW:String = NAME + "/notes/showEinherjarizeWindow";
        public static const NAME:String = "PrepareBuildingCommand";
        public static const UPDATE_LIVING_UNITS:String = NAME + "/notes/updateLivingUnits";
        public static const SHOW_RITUAL_WINDOW:String = NAME + "/notes/showRitualWindow";
        public static const CLOSE_RESERCH_WINDOW:String = NAME + "/notes/closeResearchWindow";
        public static const SHOW_LOADING_WINDOW:String = NAME + "/notes/showLoadingWindow";
        public static const SHOW_BUILDING_WINDOW:String = NAME + "notes/showBuildingWindow";
        public static const SHOW_RITUAL_BTN:String = NAME + "/notes/showRitualBtn";
        public static const UPPER_JOB_SELECT:String = NAME + "/notes/upperJobSelect";
        public static const UPDATE_DELAY_TIME:String = NAME + "/notes/updateDelayTime";

        public function PrepareBuildingWindowCommand()
        {
            return;
        }// end function

        private function buttonAddSwf(param1:String, param2:String, param3, param4:Function, param5, param6:int = 0, param7:int = 0) : void
        {
            var _loc_8:* = AnimationProxy(facade.retrieveProxy(AnimationProxy.NAME));
            AnimationProxy(facade.retrieveProxy(AnimationProxy.NAME)).generalAnimationLoaded(param1, param2, param5, param3, param6, param7);
            _loc_8.generalLoaders[param1][param2].contentLoaderInfo.addEventListener(Event.COMPLETE, param4);
            return;
        }// end function

        private function childWindowAddSwfCommon(param1, param2:Function, param3:String, param4:String = "purpose_window", param5:int = 0, param6:int = 0) : void
        {
            var _loc_7:* = AnimationProxy(facade.retrieveProxy(AnimationProxy.NAME));
            AnimationProxy(facade.retrieveProxy(AnimationProxy.NAME)).childAnimationLoaded("window", "common", param3, param4, param1, param5, param6);
            _loc_7.childLoaders["window"]["common"][param3].contentLoaderInfo.addEventListener(Event.COMPLETE, param2);
            return;
        }// end function

        override public function execute(param1:INotification) : void
        {
            var buildingProxy:BuildingProxy;
            var construction:ConstructionVO;
            var constructionArray:Array;
            var note:* = param1;
            var homeMapVO:* = note.getBody() as HomeMapVO;
            var buildingVO:* = homeMapVO.buildingVO;
            var playerProxy:* = PlayerProxy(facade.retrieveProxy(PlayerProxy.NAME));
            buildingProxy = BuildingProxy(facade.retrieveProxy(BuildingProxy.NAME));
            var unitProxy:* = UnitProxy(facade.retrieveProxy(UnitProxy.NAME));
            var constructionProxy:* = ConstructionProxy(facade.retrieveProxy(ConstructionProxy.NAME));
            var windowClass:* = UpgradableBuildingWindow;
            var buildingWindow:* = new windowClass;
            var units:* = unitProxy.homeWaitingUnits;
            construction = buildingProxy.getConstructionByNameAndLevel(buildingVO.buildingMasterVO.name, (buildingVO.level + 1));
            constructionArray = new Array();
            constructionArray = buildingProxy.getConstructionByName(buildingVO.buildingMasterVO.name);
            if (construction)
            {
                constructionProxy.checkForRequirement(construction);
            }
            buildingWindow.ownMaterials = constructionProxy.ownMaterials;
            buildingWindow.ownMoney = playerProxy.playerVO.gold;
            buildingWindow.init(buildingVO, homeMapVO.id, units, construction);
            buildingWindow.addEventListener(Viking.HOME_DESTROY_BUILDING, function (event:PopupEvent) : void
            {
                var _loc_2:* = event.param as BuildingVO;
                buildingProxy.destroyBuilding(_loc_2.buildingId);
                return;
            }// end function
            );
            addUpgradeListener(UpgradableBuildingWindow(buildingWindow), homeMapVO.id);
            sendNotification(SHOW_BUILDING_WINDOW, buildingWindow);
            return;
        }// end function

        private function commonButtonAddSwf(param1:String, param2:String, param3:String, param4, param5:Function, param6, param7:int = 0, param8:int = 0) : void
        {
            var _loc_9:* = AnimationProxy(facade.retrieveProxy(AnimationProxy.NAME));
            AnimationProxy(facade.retrieveProxy(AnimationProxy.NAME)).childAnimationLoaded(param1, param2, param3, param6, param4, param7, param8);
            _loc_9.childLoaders[param1][param2][param3].contentLoaderInfo.addEventListener(Event.COMPLETE, param5);
            return;
        }// end function

        private function addUpgradeListener(param1:UpgradableBuildingWindow, param2:int) : void
        {
            var window:* = param1;
            var areaId:* = param2;
            window.addEventListener(Viking.HOME_UPGRADE_BUILDING, function (event:PopupEvent) : void
            {
                window.removeEventListener(Viking.HOME_UPGRADE_BUILDING, arguments.callee);
                sendNotification(CLOSE_RESERCH_WINDOW);
                arguments = BuildingProxy(facade.retrieveProxy(BuildingProxy.NAME));
                arguments.upgrade(event.param.buildingName, event.param.unitId, areaId, event.param.count, event.param.buildingId);
                return;
            }// end function
            );
            window.addEventListener(UpgradableBuildingWindow.OPEN_UNIT_LIST, function () : void
            {
                arguments = new activation;
                var animationProxy:AnimationProxy;
                var arguments:* = arguments;
                animationProxy = AnimationProxy(facade.retrieveProxy(AnimationProxy.NAME));
                window.removeEventListener(UpgradableBuildingWindow.OPEN_UNIT_LIST, callee);
                window.buildUnitWindow.unitCanvas.visible = false;
                childWindowAddSwfCommon(window.buildUnitWindow.windowLayer, function (event:Event) : void
                {
                    var e:* = event;
                    var animationProxy:* = AnimationProxy(facade.retrieveProxy(AnimationProxy.NAME));
                    animationProxy.childLoaders["window"]["common"]["unitList"].content.addEventListener("ENLARGE_END", function (event:Event) : void
                    {
                        window.buildUnitWindow.unitCanvas.visible = true;
                        return;
                    }// end function
                    );
                    return;
                }// end function
                , "unitList", "center_720x460", 5);
                buttonAddSwf("buttons", "common", window.buildUnitWindow.buttonLayer, function () : void
                {
                    animationProxy.generalLoaders["buttons"]["common"].content.addEventListener(MouseEvent.CLICK, function () : void
                    {
                        window.buildUnitWindow.onClose();
                        return;
                    }// end function
                    );
                    return;
                }// end function
                , "button_cancel", 325, 490);
                return;
            }// end function
            );
            window.addEventListener(UpgradableBuildingWindow.OPEN_CONFIRM_BUILD_WINDOW, function () : void
            {
                arguments = new activation;
                var animationProxy:AnimationProxy;
                var arguments:* = arguments;
                animationProxy = AnimationProxy(facade.retrieveProxy(AnimationProxy.NAME));
                window.removeEventListener(UpgradableBuildingWindow.OPEN_CONFIRM_BUILD_WINDOW, callee);
                window.confirmBuildWindow.confirmCanvas.visible = false;
                childWindowAddSwfCommon(window.confirmBuildWindow.windowLayer, function (event:Event) : void
                {
                    var e:* = event;
                    var animationProxy:* = AnimationProxy(facade.retrieveProxy(AnimationProxy.NAME));
                    animationProxy.childLoaders["window"]["common"]["confirm"].content.addEventListener("ENLARGE_END", function (event:Event) : void
                    {
                        window.confirmBuildWindow.confirmCanvas.visible = true;
                        return;
                    }// end function
                    );
                    return;
                }// end function
                , "confirm", "center_300x200");
                commonButtonAddSwf("buttons", "common", "ok", window.confirmBuildWindow.buttonLayer, function () : void
                {
                    animationProxy.childLoaders["buttons"]["common"]["ok"].content.addEventListener(MouseEvent.CLICK, function () : void
                    {
                        window.confirmBuildWindow.onConfirm();
                        return;
                    }// end function
                    );
                    return;
                }// end function
                , "button_decide", 270, 330);
                commonButtonAddSwf("buttons", "common", "cancel", window.confirmBuildWindow.buttonLayer, function () : void
                {
                    animationProxy.childLoaders["buttons"]["common"]["cancel"].content.addEventListener(MouseEvent.CLICK, function () : void
                    {
                        window.confirmBuildWindow.onClose();
                        return;
                    }// end function
                    );
                    return;
                }// end function
                , "button_cancel", 380, 330);
                return;
            }// end function
            );
            return;
        }// end function

    }
}
