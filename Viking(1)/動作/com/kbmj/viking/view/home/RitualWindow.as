package com.kbmj.viking.view.home
{
    import com.kbmj.viking.lib.*;
    import com.kbmj.viking.view.*;
    import com.kbmj.viking.vo.*;
    import com.kbmj.viking.vo.tactics.*;
    import flash.events.*;
    import mx.collections.*;
    import mx.core.*;
    import mx.events.*;

    public class RitualWindow extends JobChangeSelectUnitWindow
    {
        private var _unit:UnitVO;
        private var ritualCheckWindow:RitualCheckWindow;
        private var _documentDescriptor_:UIComponentDescriptor;
        private var skillDiscardWindow:SkillDiscardWindow;
        public static const RITUAL_WITH_UNLEARN_SKILL:String = NAME + "/notes/ritualWithUnlearnSkill";
        public static const NAME:String = "RitualWindow";
        public static const RITUAL_CHECK:String = NAME + "/notes/ritualCheck";

        public function RitualWindow()
        {
            _documentDescriptor_ = new UIComponentDescriptor({type:JobChangeSelectUnitWindow, propertiesFactory:function () : Object
            {
                return {height:560, width:760};
            }// end function
            });
            skillDiscardWindow = new SkillDiscardWindow();
            ritualCheckWindow = new RitualCheckWindow();
            mx_internal::_document = this;
            this.height = 560;
            this.width = 760;
            this.addEventListener("creationComplete", ___RitualWindow_JobChangeSelectUnitWindow1_creationComplete);
            return;
        }// end function

        override protected function handleMouseEvent(event:MouseEvent) : void
        {
            var _loc_2:* = _units[_unitIndex[event.target.name]];
            switch(event.type)
            {
                case MouseEvent.CLICK:
                {
                    onUnitClick(_loc_2);
                    break;
                }
                default:
                {
                    super.handleMouseEvent(event);
                    break;
                    break;
                }
            }
            return;
        }// end function

        private function onUnitClick(param1:UnitVO) : void
        {
            if (!param1.item)
            {
                return;
            }
            sendPopupEvent(RITUAL_CHECK, {unit:param1});
            return;
        }// end function

        public function ___RitualWindow_JobChangeSelectUnitWindow1_creationComplete(event:FlexEvent) : void
        {
            onCreationComplete();
            return;
        }// end function

        override public function initialize() : void
        {
            .mx_internal::setDocumentDescriptor(_documentDescriptor_);
            super.initialize();
            return;
        }// end function

        private function skillSelected(event:PopupEvent) : void
        {
            var _loc_2:* = event.param as SkillVO;
            sendPopupEvent(RITUAL_WITH_UNLEARN_SKILL, {unitId:_unit.unitId, unlearnSkillId:_loc_2.skillId});
            _unit = null;
            return;
        }// end function

        public function selectSkill(param1:UnitVO) : void
        {
            _unit = param1;
            skillDiscardWindow.skills = new ArrayCollection(param1.ownSkills);
            skillDiscardWindow.addEventListener(Viking.DISCARD_SKILL, skillSelected);
            popupWindow(skillDiscardWindow);
            return;
        }// end function

        private function onCreationComplete() : void
        {
            bg.title = "儀式";
            return;
        }// end function

    }
}
