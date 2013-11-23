package com.kbmj.viking.view
{
    import com.kbmj.viking.lib.*;
    import com.kbmj.viking.vo.*;
    import com.kbmj.viking.vo.tactics.*;
    import flash.events.*;
    import flash.utils.*;
    import mx.binding.*;
    import mx.collections.*;
    import mx.containers.*;
    import mx.controls.*;
    import mx.controls.dataGridClasses.*;
    import mx.core.*;
    import mx.events.*;

    public class LevelUpWindow extends PopupWindow implements IBindingClient
    {
        var _bindingsByDestination:Object;
        var _bindingsBeginWithWord:Object;
        var _watchers:Array;
        private var _skills:ArrayCollection;
        private var _1420050444skillSelected:Boolean;
        private var _1641788370okButton:Button;
        private var _unit:UnitVO;
        var _bindings:Array;
        private var _2017154945skillDataGrid:DataGrid;
        private var _documentDescriptor_:UIComponentDescriptor;
        private var selectedSkill:SkillVO;
        private static var _watcherSetupUtil:IWatcherSetupUtil;

        public function LevelUpWindow()
        {
            _documentDescriptor_ = new UIComponentDescriptor({type:PopupWindow, propertiesFactory:function () : Object
            {
                return {width:439, height:244, childDescriptors:[new UIComponentDescriptor({type:Label, propertiesFactory:function () : Object
                {
                    return {styleName:"DialogText", text:"習得するスキルを選択して下さい", x:15, y:5};
                }// end function
                }), new UIComponentDescriptor({type:DataGrid, id:"skillDataGrid", propertiesFactory:function () : Object
                {
                    return {styleName:"UnitBuilding", width:400, rowCount:3, x:20, y:30, height:97, sortableColumns:false, columns:[_LevelUpWindow_DataGridColumn1_c(), _LevelUpWindow_DataGridColumn2_c()]};
                }// end function
                }), new UIComponentDescriptor({type:HBox, stylesFactory:function () : void
                {
                    this.horizontalGap = 20;
                    return;
                }// end function
                , propertiesFactory:function () : Object
                {
                    return {y:150, x:128, childDescriptors:[new UIComponentDescriptor({type:Button, events:{click:"___LevelUpWindow_Button1_click"}, propertiesFactory:function () : Object
                    {
                        return {label:"", styleName:"CancelCanaButton", buttonMode:true};
                    }// end function
                    }), new UIComponentDescriptor({type:Button, id:"okButton", events:{click:"__okButton_click"}, propertiesFactory:function () : Object
                    {
                        return {label:"", styleName:"OkButton", buttonMode:true};
                    }// end function
                    })]};
                }// end function
                })]};
            }// end function
            });
            _bindings = [];
            _watchers = [];
            _bindingsByDestination = {};
            _bindingsBeginWithWord = {};
            mx_internal::_document = this;
            this.width = 439;
            this.height = 244;
            this.styleName = "LargeDialogBg";
            return;
        }// end function

        private function _LevelUpWindow_bindingsSetup() : Array
        {
            var binding:Binding;
            var result:Array;
            binding = new Binding(this, function () : Object
            {
                return skills;
            }// end function
            , function (param1:Object) : void
            {
                skillDataGrid.dataProvider = param1;
                return;
            }// end function
            , "skillDataGrid.dataProvider");
            result[0] = binding;
            binding = new Binding(this, function () : Boolean
            {
                return skillDataGrid.selectedItem;
            }// end function
            , function (param1:Boolean) : void
            {
                okButton.enabled = param1;
                return;
            }// end function
            , "okButton.enabled");
            result[1] = binding;
            return result;
        }// end function

        public function get skillDataGrid() : DataGrid
        {
            return this._2017154945skillDataGrid;
        }// end function

        public function get unit() : UnitVO
        {
            return _unit;
        }// end function

        private function set _900562878skills(param1:ArrayCollection) : void
        {
            _skills = param1;
            return;
        }// end function

        public function get skills() : ArrayCollection
        {
            return _skills;
        }// end function

        public function set skills(param1:ArrayCollection) : void
        {
            var _loc_2:* = this.skills;
            if (_loc_2 !== param1)
            {
                this._900562878skills = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "skills", _loc_2, param1));
            }
            return;
        }// end function

        override public function initialize() : void
        {
            var target:LevelUpWindow;
            var watcherSetupUtilClass:Object;
            .mx_internal::setDocumentDescriptor(_documentDescriptor_);
            var bindings:* = _LevelUpWindow_bindingsSetup();
            var watchers:Array;
            target;
            if (_watcherSetupUtil == null)
            {
                watcherSetupUtilClass = getDefinitionByName("_com_kbmj_viking_view_LevelUpWindowWatcherSetupUtil");
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

        public function set skillDataGrid(param1:DataGrid) : void
        {
            var _loc_2:* = this._2017154945skillDataGrid;
            if (_loc_2 !== param1)
            {
                this._2017154945skillDataGrid = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "skillDataGrid", _loc_2, param1));
            }
            return;
        }// end function

        private function get skillSelected() : Boolean
        {
            return this._1420050444skillSelected;
        }// end function

        public function set unit(param1:UnitVO) : void
        {
            _unit = param1;
            return;
        }// end function

        private function levelUpWithDiscardedSkill(event:PopupEvent) : void
        {
            levelUp(SkillVO(event.param));
            return;
        }// end function

        public function set okButton(param1:Button) : void
        {
            var _loc_2:* = this._1641788370okButton;
            if (_loc_2 !== param1)
            {
                this._1641788370okButton = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "okButton", _loc_2, param1));
            }
            return;
        }// end function

        public function __okButton_click(event:MouseEvent) : void
        {
            checkSkillCount();
            return;
        }// end function

        private function _LevelUpWindow_DataGridColumn1_c() : DataGridColumn
        {
            var _loc_1:* = new DataGridColumn();
            _loc_1.dataField = "nameLabel";
            _loc_1.headerText = "名前";
            _loc_1.width = 100;
            return _loc_1;
        }// end function

        private function checkSkillCount() : void
        {
            var _loc_1:Boolean = false;
            var _loc_2:SkillVO = null;
            if (unit.skills.length > 1)
            {
                _loc_1 = false;
                for each (_loc_2 in unit.ownSkills)
                {
                    
                    selectedSkill = SkillVO(skillDataGrid.selectedItem);
                    if (_loc_2.code.slice(0, -2) == selectedSkill.code.slice(0, -2))
                    {
                        _loc_1 = true;
                    }
                }
                if (!_loc_1)
                {
                    showDiscardWindow();
                }
                else
                {
                    levelUp();
                }
            }
            else
            {
                levelUp();
            }
            return;
        }// end function

        private function set skillSelected(param1:Boolean) : void
        {
            var _loc_2:* = this._1420050444skillSelected;
            if (_loc_2 !== param1)
            {
                this._1420050444skillSelected = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "skillSelected", _loc_2, param1));
            }
            return;
        }// end function

        public function get okButton() : Button
        {
            return this._1641788370okButton;
        }// end function

        private function _LevelUpWindow_DataGridColumn2_c() : DataGridColumn
        {
            var _loc_1:* = new DataGridColumn();
            _loc_1.dataField = "description";
            _loc_1.headerText = "効果";
            return _loc_1;
        }// end function

        private function showDiscardWindow() : void
        {
            var _loc_1:* = new SkillDiscardWindow();
            var _loc_2:* = unit.ownSkills.concat([selectedSkill]);
            _loc_1.skills = new ArrayCollection(_loc_2);
            _loc_1.addEventListener(Viking.DISCARD_SKILL, levelUpWithDiscardedSkill);
            this.popupWindow(_loc_1);
            return;
        }// end function

        private function _LevelUpWindow_bindingExprs() : void
        {
            var _loc_1:* = undefined;
            _loc_1 = skills;
            _loc_1 = skillDataGrid.selectedItem;
            return;
        }// end function

        public function ___LevelUpWindow_Button1_click(event:MouseEvent) : void
        {
            onClose();
            return;
        }// end function

        private function levelUp(param1:SkillVO = null) : void
        {
            var _loc_2:Object = {newSkill:SkillVO(skillDataGrid.selectedItem)};
            if (param1)
            {
                _loc_2.oldSkill = param1;
            }
            sendPopupEvent(Viking.LEVELUP_WITH_SELECTED_SKILL, _loc_2);
            onClose();
            return;
        }// end function

        public static function set watcherSetupUtil(param1:IWatcherSetupUtil) : void
        {
            _watcherSetupUtil = param1;
            return;
        }// end function

    }
}
