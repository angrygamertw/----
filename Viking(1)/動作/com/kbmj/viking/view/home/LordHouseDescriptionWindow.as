package com.kbmj.viking.view.home
{
    import com.kbmj.viking.lib.*;
    import com.kbmj.viking.vo.home.*;
    import com.kbmj.viking.vo.tactics.*;
    import flash.events.*;
    import mx.controls.*;
    import mx.core.*;
    import mx.managers.*;

    public class LordHouseDescriptionWindow extends UpgradableBuildingWindow
    {
        private var dataDeleteWindow:DataDeleteWindow;
        private var deletebtn:Button;
        public var newLordUnitId:int;
        private var deleteDelay:Boolean = false;
        private var _documentDescriptor_:UIComponentDescriptor;
        private var crashWindow:Crash;
        private var departure:Departure;
        private var create:Boolean = false;
        private var lordUnitSerectWindow:LordUnitSerectWindow;
        public static const LOAD_DELAY_TIME:String = "loadDelayTime";

        public function LordHouseDescriptionWindow()
        {
            _documentDescriptor_ = new UIComponentDescriptor({type:UpgradableBuildingWindow});
            lordUnitSerectWindow = new LordUnitSerectWindow();
            dataDeleteWindow = new DataDeleteWindow();
            departure = new Departure();
            crashWindow = new Crash();
            deletebtn = new Button();
            mx_internal::_document = this;
            return;
        }// end function

        public function onSelectUnit(event:Event) : void
        {
            sendEvent(Viking.HOME_LOAD_LORDUNIT_CANDIDATE);
            return;
        }// end function

        override public function initialize() : void
        {
            .mx_internal::setDocumentDescriptor(_documentDescriptor_);
            super.initialize();
            return;
        }// end function

        private function lordUnitDecision() : void
        {
            PopUpManager.removePopUp(crashWindow);
            PopUpManager.removePopUp(lordUnitSerectWindow);
            sendPopupEvent(Viking.HOME_LORDUNIT_SELECT, newLordUnitId);
            onClose();
            return;
        }// end function

        override public function init(param1:BuildingVO, param2:int, param3:Array, param4:ConstructionVO) : void
        {
            super.init(param1, param2, param3, param4);
            createLordHouseButton();
            strImgPosY = 102;
            deletebtn.styleName = deleteDelay ? ("PlayerDeleteCancelBtn") : ("PlayerDeleteBtn");
            return;
        }// end function

        private function createLordHouseButton() : void
        {
            deletebtn.id = "dataDelete";
            deletebtn.styleName = "PlayerDeleteBtn";
            deletebtn.buttonMode = true;
            deletebtn.mouseChildren = false;
            deletebtn.x = 180;
            deletebtn.y = 80;
            deletebtn.addEventListener(MouseEvent.CLICK, onDataDelete);
            return;
        }// end function

        private function deleteHandler(event:Event) : void
        {
            dataDeleteWindow.removeEventListener(DataDeleteWindow.DELETE_CONFIRMATION, deleteHandler);
            sendEvent(Viking.HOME_PLAYERDATA_DELETE);
            onClose();
            return;
        }// end function

        public function selectLordUnitAlert(event:PopupEvent) : void
        {
            var _loc_2:UnitVO = null;
            var _loc_3:int = 0;
            while (_loc_3 < units.length)
            {
                
                if (units[_loc_3].lordFlag == true)
                {
                    _loc_2 = units[_loc_3] as UnitVO;
                }
                _loc_3++;
            }
            var _loc_4:* = event.param.unit.name;
            newLordUnitId = event.param.unit.unitId;
            this.popupWindow(crashWindow);
            crashWindow.addEventListener(Crash.CONFIRMED, lordUnitDecision.call);
            crashWindow.description.text = _loc_2.name + " から " + _loc_4 + " に首領を交代します\nよろしいですか？";
            return;
        }// end function

        public function lordUnitWindow(param1:Array) : void
        {
            var _loc_2:Array = null;
            var _loc_3:int = 0;
            var _loc_4:int = 0;
            if (param1.length == 0)
            {
                this.popupWindow(departure);
                departure.description.text = "交代出来る式姫がいません";
            }
            else
            {
                _loc_2 = new Array();
                _loc_3 = 0;
                while (_loc_3 < param1.length)
                {
                    
                    _loc_4 = 0;
                    while (_loc_4 < units.length)
                    {
                        
                        if (param1[_loc_3].unit.id == units[_loc_4].unitId)
                        {
                            _loc_2.push(units[_loc_4]);
                        }
                        _loc_4++;
                    }
                    _loc_3++;
                }
                lordUnitSerectWindow.units = _loc_2;
                lordUnitSerectWindow.addEventListener(LordUnitSerectWindow.UNIT_SELECTED, selectLordUnitAlert);
                lordUnitSerectWindow.addEventListener(LordUnitSerectWindow.CLOSE, closeHandler);
                lordUnitSerectWindow.y = 5;
                lordUnitSerectWindow.x = 7;
                this.popupWindow(lordUnitSerectWindow, false);
            }
            return;
        }// end function

        override public function createComp() : void
        {
            super.createComp();
            create = true;
            return;
        }// end function

        private function closeHandler(event:Event) : void
        {
            lordUnitSerectWindow.removeEventListener(LordUnitSerectWindow.UNIT_SELECTED, selectLordUnitAlert);
            lordUnitSerectWindow.removeEventListener(LordUnitSerectWindow.CLOSE, closeHandler);
            PopUpManager.removePopUp(lordUnitSerectWindow);
            return;
        }// end function

        private function onDataDelete(event:Event) : void
        {
            if (deleteDelay)
            {
                sendEvent(LOAD_DELAY_TIME);
                onClose();
            }
            else
            {
                this.popupWindow(dataDeleteWindow, false);
                dataDeleteWindow.addEventListener(DataDeleteWindow.DELETE_CONFIRMATION, deleteHandler);
            }
            return;
        }// end function

    }
}
