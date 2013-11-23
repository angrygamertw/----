package com.kbmj.viking.view
{
    import com.kbmj.viking.lib.*;
    import com.kbmj.viking.view.home.*;
    import com.kbmj.viking.vo.*;
    import com.kbmj.viking.vo.tactics.*;
    import flash.display.*;
    import flash.events.*;
    import flash.utils.*;
    import mx.binding.*;
    import mx.containers.*;
    import mx.controls.*;
    import mx.core.*;
    import mx.events.*;

    public class Sakura extends CanvasWithPopUp implements IBindingClient
    {
        private var _372472762tutMarkSakuraItem:Image;
        public var skillSelectWindow:SkillSelectWindow;
        private var _unitStatus:UnitStatus;
        public var skillLearnWindow:SkillLearnWindow;
        public var changeEquipmentWindow:ChangeEquipmentWindow;
        private var _1342014359tutMarkSakuraEquip:Image;
        private var _556887990unitcommandLayer:Image;
        private var _1461590009tutMarkSakura:Canvas;
        public var unitUtilityWindow:UnitUtilityWindow;
        var _bindingsByDestination:Object;
        private var _unit:UnitVO;
        private var _mode:String;
        private var _1152669721lvUpAnimeCanvas:Canvas;
        var _watchers:Array;
        private var _embed_mxml__swf_common_arrow_right_swf_759350985:Class;
        public var unitUseItemWindow:UnitUseItemWindow;
        private var _1197851037_swf_sakura:MovieClipLoaderAsset;
        private var _embed_mxml__swf_common_arrow_left_swf_534170583:Class;
        var _bindingsBeginWithWord:Object;
        private var _1329275254tutMarkSakuraSkill:Image;
        var _bindings:Array;
        public var unitDismissWindow:UnitDismissWindow;
        private var _homeResource:ResourceVO;
        private var _documentDescriptor_:UIComponentDescriptor;
        private var _133690383tutMarkSakuraLv:Image;
        public static const CHANGE_EQUIPMENT_WINDOW_TMARK_FINISH:String = NAME + "/changeEquipmentWindowTmarkFinish";
        public static const CHANGE_EQUIPMENT_WINDOW_TMARK_EQUIP:String = NAME + "/changeEquipmentWindowTmarkEquip";
        public static const SKILL_CHANGE:String = NAME + "/skillChange";
        public static const NAME:String = "Sakura";
        public static const RENAME:String = NAME + "/rename";
        private static var _watcherSetupUtil:IWatcherSetupUtil;
        public static const CHANGE_EQUIPMENT_WINDOW_TMARK_CLOSE:String = NAME + "/changeEquipmentWindowTmarkClose";
        public static const RECOVERY:String = NAME + "/recovery";
        public static const CHANGE_EQUIPMENT_CANCEL:String = NAME + "/changeEquipmentCancel";
        public static const SKILL_LEARN_WINDOW_TMARK:String = NAME + "/skillLearnWindowTmark";
        public static const UTILITY_WINDOW_CLOSE:String = NAME + "/utilityWindowClose";
        public static const USE_ITEM_WINDOW_CLOSE:String = NAME + "/useItemWindowClose";
        public static const CHANGE_EQUIPMENT:String = NAME + "/changeEquipment";
        public static const SKILL_LEARN_WINDOW_CLOSE:String = NAME + "/skillLearnWindowClose";
        public static var EmbedSwfCommandSakuraIcon:Class = Sakura_EmbedSwfCommandSakuraIcon;
        public static const REUNION:String = NAME + "/reunion";
        public static const USE_ITEM_WINDOW_TMARK:String = NAME + "/useItemWindowTmark";
        public static const CHANGE_EQUIPMENT_WINDOW_CLOSE:String = NAME + "/changeEquipmentWindowClose";
        public static const USE_ITEM:String = NAME + "/useItem";
        public static const CHANGE_EQUIPMENT_WINDOW_TMARK:String = NAME + "/changeEquipmentWindowTmark";
        public static const SKILL_LEARN:String = NAME + "/skillLearn";
        public static const IMAGE_CHANGE:String = NAME + "/imageChange";

        public function Sakura()
        {
            _documentDescriptor_ = new UIComponentDescriptor({type:CanvasWithPopUp, propertiesFactory:function () : Object
            {
                return {childDescriptors:[new UIComponentDescriptor({type:Canvas, id:"lvUpAnimeCanvas"}), new UIComponentDescriptor({type:Image, id:"unitcommandLayer"}), new UIComponentDescriptor({type:Canvas, id:"tutMarkSakura", propertiesFactory:function () : Object
                {
                    return {visible:false, childDescriptors:[new UIComponentDescriptor({type:Image, id:"tutMarkSakuraItem", propertiesFactory:function () : Object
                    {
                        return {source:_embed_mxml__swf_common_arrow_left_swf_534170583, visible:false, width:50, height:50, y:85, x:207};
                    }// end function
                    }), new UIComponentDescriptor({type:Image, id:"tutMarkSakuraSkill", propertiesFactory:function () : Object
                    {
                        return {source:_embed_mxml__swf_common_arrow_right_swf_759350985, visible:false, width:50, height:50, y:85, x:90};
                    }// end function
                    }), new UIComponentDescriptor({type:Image, id:"tutMarkSakuraLv", propertiesFactory:function () : Object
                    {
                        return {source:_embed_mxml__swf_common_arrow_right_swf_759350985, visible:false, width:50, height:50, y:12, x:110};
                    }// end function
                    }), new UIComponentDescriptor({type:Image, id:"tutMarkSakuraEquip", propertiesFactory:function () : Object
                    {
                        return {source:_embed_mxml__swf_common_arrow_left_swf_534170583, visible:false, width:50, height:50, y:40, x:220};
                    }// end function
                    })]};
                }// end function
                })]};
            }// end function
            });
            _1197851037_swf_sakura = new EmbedSwfCommandSakuraIcon();
            _unit = new UnitVO();
            changeEquipmentWindow = new ChangeEquipmentWindow();
            unitDismissWindow = new UnitDismissWindow();
            unitUtilityWindow = new UnitUtilityWindow();
            skillLearnWindow = new SkillLearnWindow();
            skillSelectWindow = new SkillSelectWindow();
            unitUseItemWindow = new UnitUseItemWindow();
            _embed_mxml__swf_common_arrow_left_swf_534170583 = Sakura__embed_mxml__swf_common_arrow_left_swf_534170583;
            _embed_mxml__swf_common_arrow_right_swf_759350985 = Sakura__embed_mxml__swf_common_arrow_right_swf_759350985;
            _bindings = [];
            _watchers = [];
            _bindingsByDestination = {};
            _bindingsBeginWithWord = {};
            mx_internal::_document = this;
            this.horizontalScrollPolicy = "off";
            this.verticalScrollPolicy = "off";
            this.addEventListener("creationComplete", ___Sakura_CanvasWithPopUp1_creationComplete);
            return;
        }// end function

        public function set unit(param1:UnitVO) : void
        {
            _unit = param1;
            return;
        }// end function

        private function skillLernHandler(event:PopupEvent) : void
        {
            dispatchEvent(new PopupEvent(SKILL_LEARN, {unitId:_unit.unitId, skill:event.param.skill}));
            return;
        }// end function

        public function get homeResource() : ResourceVO
        {
            return _homeResource;
        }// end function

        private function init() : void
        {
            changeEquipmentWindow.addEventListener(ChangeEquipmentWindow.CHANGE_EQUIPMENT_FINISH, handleEvent);
            changeEquipmentWindow.addEventListener(ChangeEquipmentWindow.CHANGE_EQUIPMENT_CANCEL, handleEvent);
            changeEquipmentWindow.addEventListener(ChangeEquipmentWindow.CHANGE_EQUIPMENT_WINDOW_CLOSE, handleEvent);
            changeEquipmentWindow.addEventListener(ChangeEquipmentWindow.CHANGE_EQUIPMENT_WINDOW_TMARK, handleEvent);
            changeEquipmentWindow.addEventListener(ChangeEquipmentWindow.CHANGE_EQUIPMENT_WINDOW_TMARK_EQUIP, handleEvent);
            changeEquipmentWindow.addEventListener(ChangeEquipmentWindow.CHANGE_EQUIPMENT_WINDOW_TMARK_FINISH_EQUIP, handleEvent);
            changeEquipmentWindow.addEventListener(ChangeEquipmentWindow.CHANGE_EQUIPMENT_WINDOW_TMARK_CLOSE, handleEvent);
            unitUseItemWindow.addEventListener(UnitUseItemWindow.USE_ITEM, useItemHandler);
            unitUseItemWindow.addEventListener(UnitUseItemWindow.USE_ITEM_WINDOW_CLOSE, handleEvent);
            unitUseItemWindow.addEventListener(UnitUseItemWindow.USE_ITEM_WINDOW_TMARK, handleEvent);
            skillLearnWindow.addEventListener(SkillLearnWindow.SKILL_LEARN, skillLernHandler);
            skillLearnWindow.addEventListener(SkillLearnWindow.SKILL_SELECT_WINDOW, skillSelectEvent);
            skillLearnWindow.addEventListener(SkillLearnWindow.SKILL_LEARN_WINDOW_CLOSE, handleEvent);
            skillLearnWindow.addEventListener(SkillLearnWindow.SKILL_LEARN_WINDOW_TMARK, handleEvent);
            skillSelectWindow.addEventListener(SkillSelectWindow.SKILL_SELECT, skillChangeEvent);
            unitUtilityWindow.addEventListener(Viking.REINCARNATE, usePowerHandler);
            unitUtilityWindow.addEventListener(Viking.REJUVENATE, usePowerHandler);
            unitUtilityWindow.addEventListener(Viking.RENAME, usePowerHandler);
            unitUtilityWindow.addEventListener(Viking.IMAGE_CHANGE, imageChageHandler);
            unitUtilityWindow.addEventListener(UnitUtilityWindow.UTILITY_WINDOW_CLOSE, handleEvent);
            unitUtilityWindow.addEventListener(UnitUtilityWindow.REUNION, reunionHandler);
            unitUtilityWindow.addEventListener(UnitUtilityWindow.RENAME, renameHandler);
            unitUtilityWindow.addEventListener(UnitUtilityWindow.RECOVERY, recoveryHandler);
            return;
        }// end function

        public function set tutMarkSakuraSkill(param1:Image) : void
        {
            var _loc_2:* = this._1329275254tutMarkSakuraSkill;
            if (_loc_2 !== param1)
            {
                this._1329275254tutMarkSakuraSkill = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "tutMarkSakuraSkill", _loc_2, param1));
            }
            return;
        }// end function

        public function iconEquipment() : void
        {
            if (unitStatus)
            {
                unitStatus.unit = _unit;
                unitStatus.changeHiLigth(changeEquipmentWindow.changeType);
            }
            dispatchEvent(new PopupEvent(Viking.HOME_GET_EQUIPABLE_RESOURCE, {unit:_unit, sakura:this}));
            return;
        }// end function

        public function get tutMarkSakura() : Canvas
        {
            return this._1461590009tutMarkSakura;
        }// end function

        public function set homeResource(param1:ResourceVO) : void
        {
            _homeResource = param1;
            return;
        }// end function

        public function set tutMarkSakura(param1:Canvas) : void
        {
            var _loc_2:* = this._1461590009tutMarkSakura;
            if (_loc_2 !== param1)
            {
                this._1461590009tutMarkSakura = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "tutMarkSakura", _loc_2, param1));
            }
            return;
        }// end function

        public function set unitStatus(param1:UnitStatus) : void
        {
            _unitStatus = param1;
            return;
        }// end function

        private function reunionHandler(event:PopupEvent) : void
        {
            dispatchEvent(new PopupEvent(REUNION, event.param));
            return;
        }// end function

        private function renameHandler(event:PopupEvent) : void
        {
            dispatchEvent(new PopupEvent(RENAME, {unitId:_unit.unitId}));
            return;
        }// end function

        public function removeSakuraTmarks() : void
        {
            tutMarkSakuraItem.visible = false;
            tutMarkSakuraSkill.visible = false;
            tutMarkSakuraLv.visible = false;
            tutMarkSakuraEquip.visible = false;
            return;
        }// end function

        public function set mode(param1:String) : void
        {
            _mode = param1;
            return;
        }// end function

        public function get unitcommandLayer() : Image
        {
            return this._556887990unitcommandLayer;
        }// end function

        public function clear() : void
        {
            if (unitStatus)
            {
                close();
                _unit = new UnitVO();
                unitStatus.init();
                unitStatus.unit = _unit;
            }
            return;
        }// end function

        public function open(param1:UnitVO) : void
        {
            _unit = param1;
            if (unitStatus)
            {
                unitStatus.unit = _unit;
            }
            MovieClip(Loader(_swf_sakura.getChildAt(0)).content).gotoAndPlay("animation_start");
            unitcommandLayer.y = _unit.loader.y;
            unitcommandLayer.x = _unit.loader.x;
            unitcommandLayer.visible = true;
            return;
        }// end function

        public function handleEvent(event:Event) : void
        {
            trace(event, changeEquipmentWindow.changeBool);
            switch(event.type)
            {
                case ChangeEquipmentWindow.CHANGE_EQUIPMENT_FINISH:
                {
                    sendEvent(CHANGE_EQUIPMENT);
                    break;
                }
                case ChangeEquipmentWindow.CHANGE_EQUIPMENT_CANCEL:
                {
                    sendEvent(CHANGE_EQUIPMENT_CANCEL);
                    break;
                }
                case ChangeEquipmentWindow.CHANGE_EQUIPMENT_WINDOW_CLOSE:
                {
                    sendEvent(CHANGE_EQUIPMENT_WINDOW_CLOSE);
                    break;
                }
                case ChangeEquipmentWindow.CHANGE_EQUIPMENT_WINDOW_TMARK:
                {
                    sendEvent(CHANGE_EQUIPMENT_WINDOW_TMARK);
                    break;
                }
                case ChangeEquipmentWindow.CHANGE_EQUIPMENT_WINDOW_TMARK_EQUIP:
                {
                    sendEvent(CHANGE_EQUIPMENT_WINDOW_TMARK_EQUIP);
                    break;
                }
                case ChangeEquipmentWindow.CHANGE_EQUIPMENT_WINDOW_TMARK_FINISH_EQUIP:
                {
                    sendEvent(CHANGE_EQUIPMENT_WINDOW_TMARK_FINISH);
                    break;
                }
                case ChangeEquipmentWindow.CHANGE_EQUIPMENT_WINDOW_TMARK_CLOSE:
                {
                    sendEvent(CHANGE_EQUIPMENT_WINDOW_TMARK_CLOSE);
                    break;
                }
                case UnitUseItemWindow.USE_ITEM_WINDOW_CLOSE:
                {
                    sendEvent(USE_ITEM_WINDOW_CLOSE);
                    break;
                }
                case UnitUseItemWindow.USE_ITEM_WINDOW_TMARK:
                {
                    sendEvent(USE_ITEM_WINDOW_TMARK);
                    break;
                }
                case SkillLearnWindow.SKILL_LEARN_WINDOW_CLOSE:
                {
                    sendEvent(SKILL_LEARN_WINDOW_CLOSE);
                    break;
                }
                case SkillLearnWindow.SKILL_LEARN_WINDOW_TMARK:
                {
                    sendEvent(SKILL_LEARN_WINDOW_TMARK);
                    break;
                }
                case UnitUtilityWindow.UTILITY_WINDOW_CLOSE:
                {
                    sendEvent(UTILITY_WINDOW_CLOSE);
                    break;
                }
                default:
                {
                    break;
                }
            }
            return;
        }// end function

        public function showChangeEquipmentWindow(param1:UnitVO, param2:ResourceVO) : void
        {
            changeEquipmentWindow.setEquipment(param2);
            changeEquipmentWindow.unit = _unit;
            if (unitStatus)
            {
                unitStatus.unit = _unit;
            }
            return;
        }// end function

        public function get tutMarkSakuraEquip() : Image
        {
            return this._1342014359tutMarkSakuraEquip;
        }// end function

        private function imageChageHandler(event:PopupEvent) : void
        {
            dispatchEvent(new PopupEvent(IMAGE_CHANGE, event.param));
            return;
        }// end function

        public function get _swf_sakura() : MovieClipLoaderAsset
        {
            return this._1197851037_swf_sakura;
        }// end function

        public function set tutMarkSakuraItem(param1:Image) : void
        {
            var _loc_2:* = this._372472762tutMarkSakuraItem;
            if (_loc_2 !== param1)
            {
                this._372472762tutMarkSakuraItem = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "tutMarkSakuraItem", _loc_2, param1));
            }
            return;
        }// end function

        public function selectedSkill(param1:Array) : void
        {
            skillLearnWindow.init(param1, _unit);
            return;
        }// end function

        public function showUtilityWindow() : void
        {
            var _loc_1:* = _unit;
            unitUtilityWindow.unit = _loc_1;
            this.popupWindow(unitUtilityWindow, false);
            return;
        }// end function

        public function get unit() : UnitVO
        {
            return _unit;
        }// end function

        override public function initialize() : void
        {
            var target:Sakura;
            var watcherSetupUtilClass:Object;
            .mx_internal::setDocumentDescriptor(_documentDescriptor_);
            var bindings:* = _Sakura_bindingsSetup();
            var watchers:Array;
            target;
            if (_watcherSetupUtil == null)
            {
                watcherSetupUtilClass = getDefinitionByName("_com_kbmj_viking_view_SakuraWatcherSetupUtil");
                var _loc_2:* = watcherSetupUtilClass;
                _loc_2.watcherSetupUtilClass["init"](null);
            }
            _watcherSetupUtil.setup(this, function (param1:String)
            {
                return target[param1];
            }// end function
            , bindings, watchers);
            var i:uint;
            while (i < bindings.length)
            {
                
                Binding(bindings[i]).execute();
                i = (i + 1);
            }
            mx_internal::_bindings = mx_internal::_bindings.concat(bindings);
            mx_internal::_watchers = mx_internal::_watchers.concat(watchers);
            super.initialize();
            return;
        }// end function

        public function get tutMarkSakuraSkill() : Image
        {
            return this._1329275254tutMarkSakuraSkill;
        }// end function

        private function _Sakura_bindingExprs() : void
        {
            var _loc_1:* = undefined;
            _loc_1 = _swf_sakura;
            return;
        }// end function

        public function resetChangeEquipmentUnit(param1:Array) : void
        {
            var _loc_2:* = param1.getOne("unitId", changeEquipmentWindow.unitId);
            _unit.exp = _loc_2.exp;
            _unit.hp = _loc_2.hp;
            if (unitStatus)
            {
                unitStatus.unit = _unit;
            }
            return;
        }// end function

        public function get unitStatus() : UnitStatus
        {
            return _unitStatus;
        }// end function

        public function set unitcommandLayer(param1:Image) : void
        {
            var _loc_2:* = this._556887990unitcommandLayer;
            if (_loc_2 !== param1)
            {
                this._556887990unitcommandLayer = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "unitcommandLayer", _loc_2, param1));
            }
            return;
        }// end function

        public function get mode() : String
        {
            return _mode;
        }// end function

        private function usePowerHandler(event:PopupEvent) : void
        {
            dispatchEvent(new PopupEvent(event.type, event.param));
            return;
        }// end function

        private function _Sakura_bindingsSetup() : Array
        {
            var binding:Binding;
            var result:Array;
            binding = new Binding(this, function () : Object
            {
                return _swf_sakura;
            }// end function
            , function (param1:Object) : void
            {
                unitcommandLayer.source = param1;
                return;
            }// end function
            , "unitcommandLayer.source");
            result[0] = binding;
            return result;
        }// end function

        private function useItemHandler(event:PopupEvent) : void
        {
            dispatchEvent(new PopupEvent(USE_ITEM, {unit:event.param.unit, item:event.param.item}));
            return;
        }// end function

        private function skillChangeEvent(event:PopupEvent) : void
        {
            sendEvent(SKILL_LEARN_WINDOW_CLOSE);
            skillLearnWindow.removeWindow();
            dispatchEvent(new PopupEvent(SKILL_CHANGE, {unitId:event.param.unit.unitId, newSkill:event.param.newSkill, oldSkill:event.param.oldSkill}));
            return;
        }// end function

        public function showItemWindow() : void
        {
            this.popupWindow(unitUseItemWindow, false, null, true);
            unitUseItemWindow.unit = _unit;
            return;
        }// end function

        public function get tutMarkSakuraItem() : Image
        {
            return this._372472762tutMarkSakuraItem;
        }// end function

        public function get changeEquipmentBool() : Boolean
        {
            return changeEquipmentWindow.visible;
        }// end function

        public function set _swf_sakura(param1:MovieClipLoaderAsset) : void
        {
            var _loc_2:* = this._1197851037_swf_sakura;
            if (_loc_2 !== param1)
            {
                this._1197851037_swf_sakura = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "_swf_sakura", _loc_2, param1));
            }
            return;
        }// end function

        public function set lvUpAnimeCanvas(param1:Canvas) : void
        {
            var _loc_2:* = this._1152669721lvUpAnimeCanvas;
            if (_loc_2 !== param1)
            {
                this._1152669721lvUpAnimeCanvas = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "lvUpAnimeCanvas", _loc_2, param1));
            }
            return;
        }// end function

        public function set tutMarkSakuraEquip(param1:Image) : void
        {
            var _loc_2:* = this._1342014359tutMarkSakuraEquip;
            if (_loc_2 !== param1)
            {
                this._1342014359tutMarkSakuraEquip = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "tutMarkSakuraEquip", _loc_2, param1));
            }
            return;
        }// end function

        public function ___Sakura_CanvasWithPopUp1_creationComplete(event:FlexEvent) : void
        {
            init();
            return;
        }// end function

        public function set tutMarkSakuraLv(param1:Image) : void
        {
            var _loc_2:* = this._133690383tutMarkSakuraLv;
            if (_loc_2 !== param1)
            {
                this._133690383tutMarkSakuraLv = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "tutMarkSakuraLv", _loc_2, param1));
            }
            return;
        }// end function

        public function get lvUpAnimeCanvas() : Canvas
        {
            return this._1152669721lvUpAnimeCanvas;
        }// end function

        private function skillSelectEvent(event:PopupEvent) : void
        {
            this.popupWindow(skillSelectWindow, false);
            skillSelectWindow.init(event.param.skill, event.param.unit);
            return;
        }// end function

        public function get tutMarkSakuraLv() : Image
        {
            return this._133690383tutMarkSakuraLv;
        }// end function

        private function recoveryHandler(event:Event) : void
        {
            dispatchEvent(new PopupEvent(RECOVERY, {unitId:_unit.unitId}));
            return;
        }// end function

        public function close() : void
        {
            tutMarkSakura.visible = false;
            unitcommandLayer.x = 0;
            unitcommandLayer.y = 0;
            unitcommandLayer.visible = false;
            return;
        }// end function

        public static function set watcherSetupUtil(param1:IWatcherSetupUtil) : void
        {
            Sakura._watcherSetupUtil = param1;
            return;
        }// end function

    }
}
