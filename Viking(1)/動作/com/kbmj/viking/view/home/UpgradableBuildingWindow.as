﻿package com.kbmj.viking.view.home
{
    import com.kbmj.viking.lib.*;
    import com.kbmj.viking.vo.*;
    import com.kbmj.viking.vo.home.*;
    import flash.events.*;
    import mx.core.*;
    import mx.events.*;
    import mx.managers.*;

    public class UpgradableBuildingWindow extends BaseBuildingWindow
    {
        public var buildUnitWindow:BuildUnitWindow;
        private var _documentDescriptor_:UIComponentDescriptor;
        private var selectUnitId:int;
        public var confirmBuildWindow:ConfirmBuildWindow;
        public static const OPEN_UNIT_LIST:String = "UpgradableBuildingWindow/openUnitList";
        public static const OPEN_CONFIRM_BUILD_WINDOW:String = "UpgradableBuildingWindow/openConfirmBuildWindow";

        public function UpgradableBuildingWindow()
        {
            _documentDescriptor_ = new UIComponentDescriptor({type:BaseBuildingWindow});
            buildUnitWindow = new BuildUnitWindow();
            confirmBuildWindow = new ConfirmBuildWindow();
            mx_internal::_document = this;
            return;
        }// end function

        private function upgrade(param1:int, param2:int, param3:int) : void
        {
            this.dispatchEvent(new PopupEvent(Viking.HOME_UPGRADE_BUILDING, {unitId:param1, buildingName:buildingVO.buildingMasterVO.name, count:param2, buildingId:param3}));
            return;
        }// end function

        private function onRestoration(event:Event) : void
        {
            this.dispatchEvent(new Event(Viking.HOME_RESTORE_BUILDING));
            PopUpManager.removePopUp(this);
            return;
        }// end function

        override public function initMoreQuantity(param1:BuildingVO, param2:int, param3:Array, param4:ConstructionVO, param5:Array) : void
        {
            super.initMoreQuantity(param1, param2, param3, param4, param5);
            if (param1.level < param1.buildingMasterVO.maxLevel)
            {
                createUpgradeButton();
            }
            return;
        }// end function

        private function toolTipBuildingButton(event:ToolTipEvent) : void
        {
            var _loc_2:ButtonMouseOver = null;
            if (construction)
            {
                _loc_2 = new ButtonMouseOver();
                _loc_2.abilityColor = construction.requirement.textAbilityColor;
                _loc_2.goldColor = construction.requirement.textGoldColor;
                _loc_2.abilities = construction.abilities;
                _loc_2.materials = construction.requirement.materials;
                _loc_2.days = construction.minutes;
                _loc_2.gold = construction.gold;
                _loc_2.constructionName = construction.nameLabel;
                event.toolTip = _loc_2;
            }
            return;
        }// end function

        private function unitSelectedHandler(event:PopupEvent) : void
        {
            var materialVO:MaterialVO;
            var e:* = event;
            PopUpManager.removePopUp(buildUnitWindow);
            var materialText:* = construction.gold + "文\n";
            var _loc_3:int = 0;
            var _loc_4:* = construction.materials;
            while (_loc_4 in _loc_3)
            {
                
                materialVO = _loc_4[_loc_3];
                materialText = materialText + (materialVO.nameLabel + ":" + materialVO.quantity + "\n");
            }
            selectUnitId = e.param.unit.unitId;
            confirmBuildWindow.buildDetail = {constructionName:construction.nameLabel, days:construction.minutes, materials:materialText, unitName:e.param.unit.name, unit:e.param.unit, isUpgrade:construction.level > 1};
            if (!confirmBuildWindow.hasEventListener(ConfirmBuildWindow.CONFIRMED))
            {
                confirmBuildWindow.addEventListener(ConfirmBuildWindow.CONFIRMED, function (event:Event) : void
            {
                confirmBuildWindow.removeEventListener(ConfirmBuildWindow.CONFIRMED, arguments.callee);
                upgrade(selectUnitId, 1, buildingId);
                onClose();
                return;
            }// end function
            );
            }
            this.popupWindow(confirmBuildWindow, false);
            this.dispatchEvent(new Event(OPEN_CONFIRM_BUILD_WINDOW));
            return;
        }// end function

        override public function initialize() : void
        {
            .mx_internal::setDocumentDescriptor(_documentDescriptor_);
            super.initialize();
            return;
        }// end function

        private function createUpgradeButton() : void
        {
            if (!buildingVO.underConstruction)
            {
                buttonEnabled = construction && construction.requirement.canBuild;
            }
            else
            {
                buttonEnabled = false;
            }
            return;
        }// end function

        override public function onUpgrade() : void
        {
            buildUnitWindow.init(units, construction);
            if (!buildUnitWindow.hasEventListener(BuildUnitWindow.UNIT_SELECTED))
            {
                buildUnitWindow.addEventListener(BuildUnitWindow.UNIT_SELECTED, unitSelectedHandler);
            }
            this.popupWindow(buildUnitWindow, false);
            this.dispatchEvent(new Event(OPEN_UNIT_LIST));
            return;
        }// end function

        override public function init(param1:BuildingVO, param2:int, param3:Array, param4:ConstructionVO) : void
        {
            super.init(param1, param2, param3, param4);
            if (param1.level < 10)
            {
                createUpgradeButton();
            }
            return;
        }// end function

    }
}
