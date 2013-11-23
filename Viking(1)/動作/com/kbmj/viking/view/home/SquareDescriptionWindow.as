package com.kbmj.viking.view.home
{
    import com.kbmj.viking.lib.*;
    import com.kbmj.viking.proxy.home.*;
    import com.kbmj.viking.view.*;
    import com.kbmj.viking.vo.home.*;
    import flash.events.*;
    import mx.collections.*;
    import mx.controls.*;
    import mx.core.*;
    import mx.managers.*;

    public class SquareDescriptionWindow extends UpgradableBuildingWindow
    {
        private var _unitCount:int = 0;
        private var squareUnitWindow:SquareUnitWindow;
        private var _mercenaries:Array;
        private var _documentDescriptor_:UIComponentDescriptor;

        public function SquareDescriptionWindow()
        {
            _documentDescriptor_ = new UIComponentDescriptor({type:UpgradableBuildingWindow});
            squareUnitWindow = new SquareUnitWindow();
            mx_internal::_document = this;
            return;
        }// end function

        public function onSelectUnit(event:Event) : void
        {
            var _loc_2:AlertWindow = null;
            if (unitCount >= HomeProxy.MAX_UNITS)
            {
                _loc_2 = AlertWindow.show(Utils.i18n("squareDescriptionMaxUnitNum"));
                this.popupWindow(_loc_2, false);
            }
            else
            {
                squareUnitWindow.mercenaries = new ArrayCollection(mercenaries);
                squareUnitWindow.callLater(squareUnitWindow.init);
                this.popupWindow(squareUnitWindow, false);
            }
            return;
        }// end function

        public function set mercenaries(param1:Array) : void
        {
            _mercenaries = param1;
            squareUnitWindow.mercenaries = new ArrayCollection(param1);
            return;
        }// end function

        public function get unitCount() : int
        {
            return _unitCount;
        }// end function

        private function createButton() : void
        {
            var _loc_1:* = new Button();
            _loc_1.id = "selectUnitBtnFort";
            _loc_1.buttonMode = true;
            _loc_1.mouseChildren = false;
            _loc_1.x = 155;
            _loc_1.y = 80;
            _loc_1.addEventListener(MouseEvent.CLICK, onSelectUnit);
            addChild(_loc_1);
            return;
        }// end function

        private function confirmRefreshHandler(event:Event) : void
        {
            sendEvent(event.type);
            PopUpManager.removePopUp(this);
            return;
        }// end function

        override public function initialize() : void
        {
            .mx_internal::setDocumentDescriptor(_documentDescriptor_);
            super.initialize();
            return;
        }// end function

        private function closeHandler(event:Event) : void
        {
            PopUpManager.removePopUp(this);
            return;
        }// end function

        public function get mercenaries() : Array
        {
            return _mercenaries;
        }// end function

        private function confirmHandler(event:PopupEvent) : void
        {
            sendPopupEvent(Viking.HOME_EMPLOY_MERCENARY, event.param);
            PopUpManager.removePopUp(this);
            return;
        }// end function

        public function set unitCount(param1:int) : void
        {
            _unitCount = param1;
            return;
        }// end function

        override public function init(param1:BuildingVO, param2:int, param3:Array, param4:ConstructionVO) : void
        {
            super.init(param1, param2, param3, param4);
            squareUnitWindow.addEventListener(Viking.HOME_EMPLOY_MERCENARY, confirmHandler);
            squareUnitWindow.addEventListener(Viking.HOME_REFRESH_MERCENARY, confirmRefreshHandler);
            squareUnitWindow.addEventListener(Viking.HOME_SUMMON_HERO, confirmRefreshHandler);
            squareUnitWindow.addEventListener(Viking.HOME_SUMMON_BRAVE, confirmRefreshHandler);
            if (param1.level != 0)
            {
                createButton();
            }
            return;
        }// end function

    }
}
