package com.kbmj.viking.view.home
{
    import com.kbmj.viking.vo.*;
    import com.kbmj.viking.vo.home.*;
    import com.kbmj.viking.vo.tactics.*;
    import flash.events.*;
    import mx.controls.*;
    import mx.core.*;

    public class AlthingDescriptionWindow extends BaseBuildingWindow
    {
        private var _jobChangeUnits:Array;
        private var dataDeleteWindow:DataDeleteWindow;
        private var einherjarizebtn:Button;
        private var deletebtn:Button;
        private var deleteDelay:Boolean = false;
        private var ritualbtn:Button;
        public var jobChangeSelectUnitWindow:JobChangeSelectUnitWindow;
        private var departure:Departure;
        private var _documentDescriptor_:UIComponentDescriptor;
        private var _playerVO:PlayerVO;
        private var create:Boolean = false;
        private var _selectUnit:UnitVO;
        public static const SHOW_EINHERJARIZE_WINDOW:String = "showEinherjarizeWindow";
        public static const LOAD_DELAY_TIME:String = "loadDelayTime";
        public static const SET_UPPER_JOB:String = "setUpperJob";
        public static const SHOW_RITUAL_WINDOW:String = "showRitualWindow";
        public static const SHOW_RITUAL_BTN:String = "showRitualBtn";

        public function AlthingDescriptionWindow()
        {
            _documentDescriptor_ = new UIComponentDescriptor({type:BaseBuildingWindow});
            jobChangeSelectUnitWindow = new JobChangeSelectUnitWindow();
            dataDeleteWindow = new DataDeleteWindow();
            departure = new Departure();
            _jobChangeUnits = new Array();
            _playerVO = new PlayerVO();
            deletebtn = new Button();
            ritualbtn = new Button();
            einherjarizebtn = new Button();
            mx_internal::_document = this;
            return;
        }// end function

        public function set selectUnit(param1:UnitVO) : void
        {
            _selectUnit = param1;
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

        public function set jobChangeUnits(param1:Array) : void
        {
            _jobChangeUnits = param1;
            return;
        }// end function

        public function unitSelectedCloseWindow() : void
        {
            jobChangeSelectUnitWindow.removeEventListener(JobChangeSelectUnitWindow.SELECT_UNIT, setUpperJobHandler);
            jobChangeSelectUnitWindow.close();
            onClose();
            return;
        }// end function

        public function setJobChangePossibleUnits() : void
        {
            jobChangeUnits = units.find("jobChangePossibleFlag", true);
            jobChangeUnits = jobChangeUnits.filter(function (param1:UnitVO, param2:int, param3:Array) : Boolean
            {
                return !(param1.jobName == "ハイランダー" || param1.jobName == "バーサーカー");
            }// end function
            );
            if (jobChangeUnits.length)
            {
                jobChangeSelectUnitWindow.units = jobChangeUnits;
                jobChangeSelectUnitWindow.callLater(jobChangeSelectUnitWindow.init);
            }
            return;
        }// end function

        override public function popupComplete() : void
        {
            sendEvent(SHOW_RITUAL_BTN);
            return;
        }// end function

        private function setUpperJobHandler(event:Event) : void
        {
            selectUnit = jobChangeSelectUnitWindow.unit;
            sendEvent(SET_UPPER_JOB);
            return;
        }// end function

        override public function onRitual() : void
        {
            sendEvent(SHOW_RITUAL_WINDOW);
            onClose();
            return;
        }// end function

        override public function initialize() : void
        {
            .mx_internal::setDocumentDescriptor(_documentDescriptor_);
            super.initialize();
            return;
        }// end function

        public function get playerVO() : PlayerVO
        {
            return _playerVO;
        }// end function

        override public function init(param1:BuildingVO, param2:int, param3:Array, param4:ConstructionVO) : void
        {
            super.init(param1, param2, param3, param4);
            strImgPosY = 95;
            return;
        }// end function

        public function get selectUnit() : UnitVO
        {
            return _selectUnit;
        }// end function

        public function get jobChangeUnits() : Array
        {
            return _jobChangeUnits;
        }// end function

        private function onEinherjarize(event:Event) : void
        {
            sendEvent(SHOW_EINHERJARIZE_WINDOW);
            onClose();
            return;
        }// end function

        private function deleteHandler(event:Event) : void
        {
            dataDeleteWindow.removeEventListener(DataDeleteWindow.DELETE_CONFIRMATION, deleteHandler);
            sendEvent(Viking.HOME_PLAYERDATA_DELETE);
            onClose();
            return;
        }// end function

        override public function createComp() : void
        {
            super.createComp();
            create = true;
            return;
        }// end function

        private function onSelectUnit(event:Event) : void
        {
            setJobChangePossibleUnits();
            if (jobChangeUnits.length)
            {
                jobChangeSelectUnitWindow.addEventListener(JobChangeSelectUnitWindow.SELECT_UNIT, setUpperJobHandler);
                this.popupWindow(jobChangeSelectUnitWindow, false);
            }
            else
            {
                this.popupWindow(departure);
                departure.description.text = "種族チェンジ出来る式姫が\nいません";
            }
            return;
        }// end function

        public function setDeletionInProgress(param1:Boolean) : void
        {
            deleteDelay = param1;
            deletebtn.styleName = deleteDelay ? ("PlayerDeleteCancelBtn") : ("PlayerDeleteBtn");
            return;
        }// end function

        public function set playerVO(param1:PlayerVO) : void
        {
            _playerVO = param1;
            return;
        }// end function

    }
}
