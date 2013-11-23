package com.kbmj.viking.view.home
{
    import com.kbmj.viking.lib.*;
    import com.kbmj.viking.view.*;
    import com.kbmj.viking.vo.tactics.*;
    import flash.display.*;
    import flash.events.*;
    import flash.utils.*;
    import mx.binding.*;
    import mx.containers.*;
    import mx.controls.*;
    import mx.controls.dataGridClasses.*;
    import mx.core.*;
    import mx.events.*;

    public class SkillLearnWindow extends PopupWindow implements IBindingClient
    {
        private var _viewUnit:UnitVO;
        private var _900562878skills:Array;
        var _bindingsByDestination:Object;
        private var _94427871tutVisible:Boolean = false;
        private var _1193840764_swf_close:MovieClipLoaderAsset;
        private var _343417063decideOff:Class;
        private var _1218643219_swf_close_window:MovieClipLoaderAsset;
        private var _1769958153skillCanvas:Canvas;
        public var _SkillLearnWindow_Image1:Image;
        public var _SkillLearnWindow_Image2:Image;
        private var _973309861skill_data_list:DataGrid;
        private var _1335723160decide:Class;
        private var _1655921504selectUnit:UnitVO;
        public var _SkillLearnWindow_VBox1:VBox;
        private var _522920908detailRenderer:ClassFactory;
        var _watchers:Array;
        private var _1896677185windowLayer:Canvas;
        private var _tutMarkSkillFinishVisible:Boolean = false;
        private var _1740333384skill_data_list_tutorial:DataGrid;
        public var _SkillLearnWindow_Text1:Text;
        public var _SkillLearnWindow_Text2:Text;
        public var _SkillLearnWindow_Text3:Text;
        var _bindingsBeginWithWord:Object;
        public var _SkillLearnWindow_DataGridColumn1:DataGridColumn;
        public var _SkillLearnWindow_DataGridColumn2:DataGridColumn;
        public var _SkillLearnWindow_DataGridColumn3:DataGridColumn;
        public var _SkillLearnWindow_DataGridColumn4:DataGridColumn;
        public var _SkillLearnWindow_DataGridColumn6:DataGridColumn;
        public var _SkillLearnWindow_DataGridColumn7:DataGridColumn;
        public var _SkillLearnWindow_DataGridColumn8:DataGridColumn;
        public var _SkillLearnWindow_DataGridColumn5:DataGridColumn;
        private var _tutMarkSkillVisible:Boolean = false;
        private var _914425934detailRendererTutorial:ClassFactory;
        private var _1225459084nonTutVisible:Boolean = true;
        var _bindings:Array;
        private var _documentDescriptor_:UIComponentDescriptor;
        public static const SKILL_SELECT_WINDOW:String = NAME + "skillSelectWindow";
        private static var _watcherSetupUtil:IWatcherSetupUtil;
        public static const NAME:String = "skillLearnWindow";
        public static const SKILL_LEARN_WINDOW_CLOSE:String = NAME + "skillLearnWindowClose";
        public static const SKILL_LEARN:String = NAME + "skillLearn";
        public static const SKILL_LEARN_WINDOW_TMARK:String = NAME + "skillLearnWindowTmark";

        public function SkillLearnWindow()
        {
            _documentDescriptor_ = new UIComponentDescriptor({type:PopupWindow, propertiesFactory:function () : Object
            {
                return {width:750, height:506, childDescriptors:[new UIComponentDescriptor({type:Canvas, id:"windowLayer"}), new UIComponentDescriptor({type:Canvas, id:"skillCanvas", propertiesFactory:function () : Object
                {
                    return {x:30, childDescriptors:[new UIComponentDescriptor({type:Image, id:"_SkillLearnWindow_Image1", events:{click:"___SkillLearnWindow_Image1_click"}, propertiesFactory:function () : Object
                    {
                        return {x:685, y:20};
                    }// end function
                    }), new UIComponentDescriptor({type:Text, id:"_SkillLearnWindow_Text1", stylesFactory:function () : void
                    {
                        this.color = 15658734;
                        return;
                    }// end function
                    , propertiesFactory:function () : Object
                    {
                        return {x:315, y:22, styleName:"PanelBaseTitle"};
                    }// end function
                    }), new UIComponentDescriptor({type:Text, id:"_SkillLearnWindow_Text2", stylesFactory:function () : void
                    {
                        this.fontSize = 11;
                        return;
                    }// end function
                    , propertiesFactory:function () : Object
                    {
                        return {x:10, y:50};
                    }// end function
                    }), new UIComponentDescriptor({type:Text, id:"_SkillLearnWindow_Text3", stylesFactory:function () : void
                    {
                        this.fontSize = 11;
                        return;
                    }// end function
                    , propertiesFactory:function () : Object
                    {
                        return {x:160, y:50};
                    }// end function
                    }), new UIComponentDescriptor({type:VBox, id:"_SkillLearnWindow_VBox1", propertiesFactory:function () : Object
                    {
                        return {x:10, y:70, childDescriptors:[new UIComponentDescriptor({type:DataGrid, id:"skill_data_list", propertiesFactory:function () : Object
                        {
                            return {rowCount:5, styleName:"DataGridBase", selectable:false, sortableColumns:false, includeInLayout:false, columns:[_SkillLearnWindow_DataGridColumn1_i(), _SkillLearnWindow_DataGridColumn2_i(), _SkillLearnWindow_DataGridColumn3_i(), _SkillLearnWindow_DataGridColumn4_i()]};
                        }// end function
                        }), new UIComponentDescriptor({type:DataGrid, id:"skill_data_list_tutorial", propertiesFactory:function () : Object
                        {
                            return {rowCount:5, styleName:"DataGridBase", selectable:false, sortableColumns:false, columns:[_SkillLearnWindow_DataGridColumn5_i(), _SkillLearnWindow_DataGridColumn6_i(), _SkillLearnWindow_DataGridColumn7_i(), _SkillLearnWindow_DataGridColumn8_i()]};
                        }// end function
                        })]};
                    }// end function
                    }), new UIComponentDescriptor({type:Image, id:"_SkillLearnWindow_Image2", propertiesFactory:function () : Object
                    {
                        return {x:295, y:247};
                    }// end function
                    })]};
                }// end function
                })]};
            }// end function
            });
            _viewUnit = new UnitVO();
            _1335723160decide = SkillLearnWindow_decide;
            _343417063decideOff = SkillLearnWindow_decideOff;
            _1193840764_swf_close = new Viking.EmbedSwfButtonCommon();
            _1218643219_swf_close_window = new Viking.EmbedSwfButtonCloseWindow();
            _bindings = [];
            _watchers = [];
            _bindingsByDestination = {};
            _bindingsBeginWithWord = {};
            mx_internal::_document = this;
            this.width = 750;
            this.height = 506;
            _SkillLearnWindow_ClassFactory1_i();
            _SkillLearnWindow_ClassFactory2_i();
            this.addEventListener("creationComplete", ___SkillLearnWindow_PopupWindow1_creationComplete);
            return;
        }// end function

        public function set tutMarkSkillVisible(param1:Boolean) : void
        {
            _tutMarkSkillVisible = param1;
            return;
        }// end function

        private function _SkillLearnWindow_DataGridColumn6_i() : DataGridColumn
        {
            var _loc_1:* = new DataGridColumn();
            _SkillLearnWindow_DataGridColumn6 = _loc_1;
            _loc_1.dataField = "nameLabel";
            _loc_1.width = 140;
            _loc_1.setStyle("textAlign", "center");
            BindingManager.executeBindings(this, "_SkillLearnWindow_DataGridColumn6", _SkillLearnWindow_DataGridColumn6);
            return _loc_1;
        }// end function

        public function get skillCanvas() : Canvas
        {
            return this._1769958153skillCanvas;
        }// end function

        public function init(param1:Array, param2:UnitVO) : void
        {
            var s:* = param1;
            var unit:* = param2;
            selectUnit = new UnitVO();
            selectUnit = unit;
            skills = new Array();
            if (selectUnit.ownSkills.length <= 0)
            {
                skills = s.filter(function (param1, param2:int, param3:Array) : Boolean
            {
                var _loc_4:* = undefined;
                for each (_loc_4 in selectUnit.jobMasterVO.skills)
                {
                    
                    if (_loc_4 == param1.code)
                    {
                        return true;
                    }
                }
                return false;
            }// end function
            );
            }
            else
            {
                skills = s.filter(function (param1, param2:int, param3:Array) : Boolean
            {
                var _loc_4:* = undefined;
                var _loc_5:* = undefined;
                for each (_loc_4 in selectUnit.jobMasterVO.skills)
                {
                    
                    if (int(_loc_4 * 0.1) == int(int(param1.code) * 0.1))
                    {
                        return true;
                    }
                }
                for each (_loc_5 in selectUnit.ownSkills)
                {
                    
                    if (int(int(_loc_5.code) * 0.1) == int(int(param1.code) * 0.1))
                    {
                        return true;
                    }
                }
                return false;
            }// end function
            );
                skills = skills.filter(function (param1, param2:int, param3:Array) : Boolean
            {
                var _loc_4:* = undefined;
                var _loc_5:* = undefined;
                for each (_loc_4 in selectUnit.ownSkills)
                {
                    
                    if (int(param1.code) <= int(_loc_4.code) && int(int(_loc_4.code) * 0.1) == int(int(param1.code) * 0.1))
                    {
                        return false;
                    }
                    if ((int(_loc_4.code) + 1) == param1.code)
                    {
                        return true;
                    }
                }
                for each (_loc_5 in selectUnit.jobMasterVO.skills)
                {
                    
                    if (_loc_5 == param1.code)
                    {
                        return true;
                    }
                }
                return false;
            }// end function
            );
            }
            return;
        }// end function

        public function set skillCanvas(param1:Canvas) : void
        {
            var _loc_2:* = this._1769958153skillCanvas;
            if (_loc_2 !== param1)
            {
                this._1769958153skillCanvas = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "skillCanvas", _loc_2, param1));
            }
            return;
        }// end function

        private function get _swf_close_window() : MovieClipLoaderAsset
        {
            return this._1218643219_swf_close_window;
        }// end function

        private function set nonTutVisible(param1:Boolean) : void
        {
            var _loc_2:* = this._1225459084nonTutVisible;
            if (_loc_2 !== param1)
            {
                this._1225459084nonTutVisible = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "nonTutVisible", _loc_2, param1));
            }
            return;
        }// end function

        private function set _swf_close_window(param1:MovieClipLoaderAsset) : void
        {
            var _loc_2:* = this._1218643219_swf_close_window;
            if (_loc_2 !== param1)
            {
                this._1218643219_swf_close_window = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "_swf_close_window", _loc_2, param1));
            }
            return;
        }// end function

        private function createComp() : void
        {
            Loader(_swf_close.getChildAt(0)).content.addEventListener("BUTTON_CLOSE", function (event:Event) : void
            {
                removeWindow();
                return;
            }// end function
            );
            MovieClip(Loader(_swf_close.getChildAt(0)).content).gotoAndPlay("button_close");
            return;
        }// end function

        public function get tutMarkSkillFinishVisible() : Boolean
        {
            return _tutMarkSkillFinishVisible;
        }// end function

        public function get detailRenderer() : ClassFactory
        {
            return this._522920908detailRenderer;
        }// end function

        private function _SkillLearnWindow_DataGridColumn1_i() : DataGridColumn
        {
            var _loc_1:* = new DataGridColumn();
            _SkillLearnWindow_DataGridColumn1 = _loc_1;
            _loc_1.width = 55;
            BindingManager.executeBindings(this, "_SkillLearnWindow_DataGridColumn1", _SkillLearnWindow_DataGridColumn1);
            return _loc_1;
        }// end function

        private function _SkillLearnWindow_DataGridColumn5_i() : DataGridColumn
        {
            var _loc_1:* = new DataGridColumn();
            _SkillLearnWindow_DataGridColumn5 = _loc_1;
            _loc_1.width = 78;
            BindingManager.executeBindings(this, "_SkillLearnWindow_DataGridColumn5", _SkillLearnWindow_DataGridColumn5);
            return _loc_1;
        }// end function

        public function set selectUnit(param1:UnitVO) : void
        {
            var _loc_2:* = this._1655921504selectUnit;
            if (_loc_2 !== param1)
            {
                this._1655921504selectUnit = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "selectUnit", _loc_2, param1));
            }
            return;
        }// end function

        public function get windowLayer() : Canvas
        {
            return this._1896677185windowLayer;
        }// end function

        public function get skills() : Array
        {
            return this._900562878skills;
        }// end function

        private function _SkillLearnWindow_ClassFactory2_i() : ClassFactory
        {
            var _loc_1:* = new ClassFactory();
            detailRendererTutorial = _loc_1;
            _loc_1.generator = SkillLearnWindow_inlineComponent2;
            _loc_1.properties = {outerDocument:this};
            return _loc_1;
        }// end function

        public function set skill_data_list(param1:DataGrid) : void
        {
            var _loc_2:* = this._973309861skill_data_list;
            if (_loc_2 !== param1)
            {
                this._973309861skill_data_list = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "skill_data_list", _loc_2, param1));
            }
            return;
        }// end function

        public function canLearnSkill(param1:Object) : Class
        {
            if (param1.point > selectUnit.skillPoint)
            {
                return decideOff;
            }
            return decide;
        }// end function

        public function set detailRendererTutorial(param1:ClassFactory) : void
        {
            var _loc_2:* = this._914425934detailRendererTutorial;
            if (_loc_2 !== param1)
            {
                this._914425934detailRendererTutorial = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "detailRendererTutorial", _loc_2, param1));
            }
            return;
        }// end function

        public function set detailRenderer(param1:ClassFactory) : void
        {
            var _loc_2:* = this._522920908detailRenderer;
            if (_loc_2 !== param1)
            {
                this._522920908detailRenderer = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "detailRenderer", _loc_2, param1));
            }
            return;
        }// end function

        public function learnSkill(param1:Object) : void
        {
            var _loc_2:Boolean = false;
            var _loc_3:Object = null;
            if (param1.point > selectUnit.skillPoint)
            {
                return;
            }
            if (selectUnit.ownSkills.length >= 2)
            {
                _loc_2 = false;
                for each (_loc_3 in selectUnit.ownSkills)
                {
                    
                    if (int((int(_loc_3.code) + 1)) == int(param1.code))
                    {
                        _loc_2 = true;
                    }
                }
                if (!_loc_2)
                {
                    dispatchEvent(new PopupEvent(SKILL_SELECT_WINDOW, {skill:param1, unit:selectUnit}));
                    return;
                }
            }
            if (param1.code == 1801)
            {
                _tutMarkSkillFinishVisible = true;
                sendEvent(SKILL_LEARN_WINDOW_TMARK);
            }
            else
            {
                _tutMarkSkillFinishVisible = false;
            }
            dispatchEvent(new PopupEvent(SKILL_LEARN, {skill:param1}));
            removeWindow();
            viewUnit = new UnitVO();
            return;
        }// end function

        public function get decide() : Class
        {
            return this._1335723160decide;
        }// end function

        public function set skill_data_list_tutorial(param1:DataGrid) : void
        {
            var _loc_2:* = this._1740333384skill_data_list_tutorial;
            if (_loc_2 !== param1)
            {
                this._1740333384skill_data_list_tutorial = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "skill_data_list_tutorial", _loc_2, param1));
            }
            return;
        }// end function

        private function _SkillLearnWindow_DataGridColumn4_i() : DataGridColumn
        {
            var _loc_1:* = new DataGridColumn();
            _SkillLearnWindow_DataGridColumn4 = _loc_1;
            _loc_1.dataField = "description";
            _loc_1.width = 405;
            _loc_1.setStyle("textAlign", "center");
            BindingManager.executeBindings(this, "_SkillLearnWindow_DataGridColumn4", _SkillLearnWindow_DataGridColumn4);
            return _loc_1;
        }// end function

        private function get _swf_close() : MovieClipLoaderAsset
        {
            return this._1193840764_swf_close;
        }// end function

        private function _SkillLearnWindow_DataGridColumn8_i() : DataGridColumn
        {
            var _loc_1:* = new DataGridColumn();
            _SkillLearnWindow_DataGridColumn8 = _loc_1;
            _loc_1.dataField = "description";
            _loc_1.width = 402;
            _loc_1.setStyle("textAlign", "center");
            BindingManager.executeBindings(this, "_SkillLearnWindow_DataGridColumn8", _SkillLearnWindow_DataGridColumn8);
            return _loc_1;
        }// end function

        public function get tutMarkSkillVisible() : Boolean
        {
            return _tutMarkSkillVisible;
        }// end function

        public function set windowLayer(param1:Canvas) : void
        {
            var _loc_2:* = this._1896677185windowLayer;
            if (_loc_2 !== param1)
            {
                this._1896677185windowLayer = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "windowLayer", _loc_2, param1));
            }
            return;
        }// end function

        public function set skills(param1:Array) : void
        {
            var _loc_2:* = this._900562878skills;
            if (_loc_2 !== param1)
            {
                this._900562878skills = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "skills", _loc_2, param1));
            }
            return;
        }// end function

        private function _SkillLearnWindow_ClassFactory1_i() : ClassFactory
        {
            var _loc_1:* = new ClassFactory();
            detailRenderer = _loc_1;
            _loc_1.generator = SkillLearnWindow_inlineComponent1;
            _loc_1.properties = {outerDocument:this};
            return _loc_1;
        }// end function

        public function set viewUnit(param1:UnitVO) : void
        {
            _viewUnit = param1;
            return;
        }// end function

        private function get nonTutVisible() : Boolean
        {
            return this._1225459084nonTutVisible;
        }// end function

        override public function initialize() : void
        {
            var target:SkillLearnWindow;
            var watcherSetupUtilClass:Object;
            .mx_internal::setDocumentDescriptor(_documentDescriptor_);
            var bindings:* = _SkillLearnWindow_bindingsSetup();
            var watchers:Array;
            target;
            if (_watcherSetupUtil == null)
            {
                watcherSetupUtilClass = getDefinitionByName("_com_kbmj_viking_view_home_SkillLearnWindowWatcherSetupUtil");
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

        public function removeWindow() : void
        {
            sendEvent(SKILL_LEARN_WINDOW_CLOSE);
            close();
            return;
        }// end function

        public function ___SkillLearnWindow_PopupWindow1_creationComplete(event:FlexEvent) : void
        {
            createComp();
            return;
        }// end function

        public function ___SkillLearnWindow_Image1_click(event:MouseEvent) : void
        {
            removeWindow();
            return;
        }// end function

        public function get skill_data_list() : DataGrid
        {
            return this._973309861skill_data_list;
        }// end function

        public function get selectUnit() : UnitVO
        {
            return this._1655921504selectUnit;
        }// end function

        public function get detailRendererTutorial() : ClassFactory
        {
            return this._914425934detailRendererTutorial;
        }// end function

        public function get skill_data_list_tutorial() : DataGrid
        {
            return this._1740333384skill_data_list_tutorial;
        }// end function

        private function _SkillLearnWindow_DataGridColumn3_i() : DataGridColumn
        {
            var _loc_1:* = new DataGridColumn();
            _SkillLearnWindow_DataGridColumn3 = _loc_1;
            _loc_1.dataField = "point";
            _loc_1.width = 70;
            _loc_1.setStyle("textAlign", "center");
            BindingManager.executeBindings(this, "_SkillLearnWindow_DataGridColumn3", _SkillLearnWindow_DataGridColumn3);
            return _loc_1;
        }// end function

        private function _SkillLearnWindow_DataGridColumn7_i() : DataGridColumn
        {
            var _loc_1:* = new DataGridColumn();
            _SkillLearnWindow_DataGridColumn7 = _loc_1;
            _loc_1.dataField = "point";
            _loc_1.width = 60;
            _loc_1.setStyle("textAlign", "center");
            BindingManager.executeBindings(this, "_SkillLearnWindow_DataGridColumn7", _SkillLearnWindow_DataGridColumn7);
            return _loc_1;
        }// end function

        public function setTutMarkSkillVisible(param1:int, param2:int, param3:int, param4:Boolean) : void
        {
            if (param1 == 3 && param2 == 31 && param3 == 3 && !param4)
            {
                _tutMarkSkillVisible = true;
                tutVisible = true;
                nonTutVisible = false;
            }
            else
            {
                _tutMarkSkillVisible = false;
                tutVisible = false;
                nonTutVisible = true;
            }
            return;
        }// end function

        public function showTutMark(param1:Object) : Boolean
        {
            if (param1.code == 1801 && _tutMarkSkillVisible && param1.point <= selectUnit.skillPoint)
            {
                return visible;
            }
            return false;
        }// end function

        private function set tutVisible(param1:Boolean) : void
        {
            var _loc_2:* = this._94427871tutVisible;
            if (_loc_2 !== param1)
            {
                this._94427871tutVisible = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "tutVisible", _loc_2, param1));
            }
            return;
        }// end function

        private function _SkillLearnWindow_bindingsSetup() : Array
        {
            var binding:Binding;
            var result:Array;
            binding = new Binding(this, function () : Object
            {
                return _swf_close_window;
            }// end function
            , function (param1:Object) : void
            {
                _SkillLearnWindow_Image1.source = param1;
                return;
            }// end function
            , "_SkillLearnWindow_Image1.source");
            result[0] = binding;
            binding = new Binding(this, function () : String
            {
                var _loc_1:* = Utils.i18n("skillLearnTitle");
                var _loc_2:* = _loc_1 == undefined ? (null) : (String(_loc_1));
                return _loc_2;
            }// end function
            , function (param1:String) : void
            {
                _SkillLearnWindow_Text1.text = param1;
                return;
            }// end function
            , "_SkillLearnWindow_Text1.text");
            result[1] = binding;
            binding = new Binding(this, function () : String
            {
                var _loc_1:* = Utils.i18n("skillLearnUnitName") + ":" + selectUnit.name;
                var _loc_2:* = _loc_1 == undefined ? (null) : (String(_loc_1));
                return _loc_2;
            }// end function
            , function (param1:String) : void
            {
                _SkillLearnWindow_Text2.text = param1;
                return;
            }// end function
            , "_SkillLearnWindow_Text2.text");
            result[2] = binding;
            binding = new Binding(this, function () : String
            {
                var _loc_1:* = Utils.i18n("skillLearnHaveSP") + ":" + selectUnit.skillPoint;
                var _loc_2:* = _loc_1 == undefined ? (null) : (String(_loc_1));
                return _loc_2;
            }// end function
            , function (param1:String) : void
            {
                _SkillLearnWindow_Text3.text = param1;
                return;
            }// end function
            , "_SkillLearnWindow_Text3.text");
            result[3] = binding;
            binding = new Binding(this, function () : String
            {
                var _loc_1:* = Utils.i18n("generalSkill");
                var _loc_2:* = _loc_1 == undefined ? (null) : (String(_loc_1));
                return _loc_2;
            }// end function
            , function (param1:String) : void
            {
                _SkillLearnWindow_VBox1.label = param1;
                return;
            }// end function
            , "_SkillLearnWindow_VBox1.label");
            result[4] = binding;
            binding = new Binding(this, function () : Object
            {
                return skills;
            }// end function
            , function (param1:Object) : void
            {
                skill_data_list.dataProvider = param1;
                return;
            }// end function
            , "skill_data_list.dataProvider");
            result[5] = binding;
            binding = new Binding(this, function () : Boolean
            {
                return nonTutVisible;
            }// end function
            , function (param1:Boolean) : void
            {
                skill_data_list.visible = param1;
                return;
            }// end function
            , "skill_data_list.visible");
            result[6] = binding;
            binding = new Binding(this, function () : String
            {
                var _loc_1:* = Utils.i18n("generalLearn");
                var _loc_2:* = _loc_1 == undefined ? (null) : (String(_loc_1));
                return _loc_2;
            }// end function
            , function (param1:String) : void
            {
                _SkillLearnWindow_DataGridColumn1.headerText = param1;
                return;
            }// end function
            , "_SkillLearnWindow_DataGridColumn1.headerText");
            result[7] = binding;
            binding = new Binding(this, function () : IFactory
            {
                return detailRenderer;
            }// end function
            , function (param1:IFactory) : void
            {
                _SkillLearnWindow_DataGridColumn1.itemRenderer = param1;
                return;
            }// end function
            , "_SkillLearnWindow_DataGridColumn1.itemRenderer");
            result[8] = binding;
            binding = new Binding(this, function () : String
            {
                var _loc_1:* = Utils.i18n("generalName");
                var _loc_2:* = _loc_1 == undefined ? (null) : (String(_loc_1));
                return _loc_2;
            }// end function
            , function (param1:String) : void
            {
                _SkillLearnWindow_DataGridColumn2.headerText = param1;
                return;
            }// end function
            , "_SkillLearnWindow_DataGridColumn2.headerText");
            result[9] = binding;
            binding = new Binding(this, function () : String
            {
                var _loc_1:* = Utils.i18n("skillLearnNecessorySP");
                var _loc_2:* = _loc_1 == undefined ? (null) : (String(_loc_1));
                return _loc_2;
            }// end function
            , function (param1:String) : void
            {
                _SkillLearnWindow_DataGridColumn3.headerText = param1;
                return;
            }// end function
            , "_SkillLearnWindow_DataGridColumn3.headerText");
            result[10] = binding;
            binding = new Binding(this, function () : String
            {
                var _loc_1:* = Utils.i18n("generalDescription");
                var _loc_2:* = _loc_1 == undefined ? (null) : (String(_loc_1));
                return _loc_2;
            }// end function
            , function (param1:String) : void
            {
                _SkillLearnWindow_DataGridColumn4.headerText = param1;
                return;
            }// end function
            , "_SkillLearnWindow_DataGridColumn4.headerText");
            result[11] = binding;
            binding = new Binding(this, function () : Object
            {
                return skills;
            }// end function
            , function (param1:Object) : void
            {
                skill_data_list_tutorial.dataProvider = param1;
                return;
            }// end function
            , "skill_data_list_tutorial.dataProvider");
            result[12] = binding;
            binding = new Binding(this, function () : Boolean
            {
                return tutVisible;
            }// end function
            , function (param1:Boolean) : void
            {
                skill_data_list_tutorial.visible = param1;
                return;
            }// end function
            , "skill_data_list_tutorial.visible");
            result[13] = binding;
            binding = new Binding(this, function () : String
            {
                var _loc_1:* = Utils.i18n("generalLearn");
                var _loc_2:* = _loc_1 == undefined ? (null) : (String(_loc_1));
                return _loc_2;
            }// end function
            , function (param1:String) : void
            {
                _SkillLearnWindow_DataGridColumn5.headerText = param1;
                return;
            }// end function
            , "_SkillLearnWindow_DataGridColumn5.headerText");
            result[14] = binding;
            binding = new Binding(this, function () : IFactory
            {
                return detailRendererTutorial;
            }// end function
            , function (param1:IFactory) : void
            {
                _SkillLearnWindow_DataGridColumn5.itemRenderer = param1;
                return;
            }// end function
            , "_SkillLearnWindow_DataGridColumn5.itemRenderer");
            result[15] = binding;
            binding = new Binding(this, function () : String
            {
                var _loc_1:* = Utils.i18n("generalName");
                var _loc_2:* = _loc_1 == undefined ? (null) : (String(_loc_1));
                return _loc_2;
            }// end function
            , function (param1:String) : void
            {
                _SkillLearnWindow_DataGridColumn6.headerText = param1;
                return;
            }// end function
            , "_SkillLearnWindow_DataGridColumn6.headerText");
            result[16] = binding;
            binding = new Binding(this, function () : String
            {
                var _loc_1:* = Utils.i18n("skillLearnNecessorySP");
                var _loc_2:* = _loc_1 == undefined ? (null) : (String(_loc_1));
                return _loc_2;
            }// end function
            , function (param1:String) : void
            {
                _SkillLearnWindow_DataGridColumn7.headerText = param1;
                return;
            }// end function
            , "_SkillLearnWindow_DataGridColumn7.headerText");
            result[17] = binding;
            binding = new Binding(this, function () : String
            {
                var _loc_1:* = Utils.i18n("generalDescription");
                var _loc_2:* = _loc_1 == undefined ? (null) : (String(_loc_1));
                return _loc_2;
            }// end function
            , function (param1:String) : void
            {
                _SkillLearnWindow_DataGridColumn8.headerText = param1;
                return;
            }// end function
            , "_SkillLearnWindow_DataGridColumn8.headerText");
            result[18] = binding;
            binding = new Binding(this, function () : Object
            {
                return _swf_close;
            }// end function
            , function (param1:Object) : void
            {
                _SkillLearnWindow_Image2.source = param1;
                return;
            }// end function
            , "_SkillLearnWindow_Image2.source");
            result[19] = binding;
            return result;
        }// end function

        public function set decide(param1:Class) : void
        {
            var _loc_2:* = this._1335723160decide;
            if (_loc_2 !== param1)
            {
                this._1335723160decide = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "decide", _loc_2, param1));
            }
            return;
        }// end function

        public function get viewUnit() : UnitVO
        {
            return _viewUnit;
        }// end function

        private function get tutVisible() : Boolean
        {
            return this._94427871tutVisible;
        }// end function

        public function get decideOff() : Class
        {
            return this._343417063decideOff;
        }// end function

        private function _SkillLearnWindow_bindingExprs() : void
        {
            var _loc_1:* = undefined;
            _loc_1 = _swf_close_window;
            _loc_1 = Utils.i18n("skillLearnTitle");
            _loc_1 = Utils.i18n("skillLearnUnitName") + ":" + selectUnit.name;
            _loc_1 = Utils.i18n("skillLearnHaveSP") + ":" + selectUnit.skillPoint;
            _loc_1 = Utils.i18n("generalSkill");
            _loc_1 = skills;
            _loc_1 = nonTutVisible;
            _loc_1 = Utils.i18n("generalLearn");
            _loc_1 = detailRenderer;
            _loc_1 = Utils.i18n("generalName");
            _loc_1 = Utils.i18n("skillLearnNecessorySP");
            _loc_1 = Utils.i18n("generalDescription");
            _loc_1 = skills;
            _loc_1 = tutVisible;
            _loc_1 = Utils.i18n("generalLearn");
            _loc_1 = detailRendererTutorial;
            _loc_1 = Utils.i18n("generalName");
            _loc_1 = Utils.i18n("skillLearnNecessorySP");
            _loc_1 = Utils.i18n("generalDescription");
            _loc_1 = _swf_close;
            return;
        }// end function

        public function close() : void
        {
            onClose();
            return;
        }// end function

        private function _SkillLearnWindow_DataGridColumn2_i() : DataGridColumn
        {
            var _loc_1:* = new DataGridColumn();
            _SkillLearnWindow_DataGridColumn2 = _loc_1;
            _loc_1.dataField = "nameLabel";
            _loc_1.width = 150;
            _loc_1.setStyle("textAlign", "center");
            BindingManager.executeBindings(this, "_SkillLearnWindow_DataGridColumn2", _SkillLearnWindow_DataGridColumn2);
            return _loc_1;
        }// end function

        public function set decideOff(param1:Class) : void
        {
            var _loc_2:* = this._343417063decideOff;
            if (_loc_2 !== param1)
            {
                this._343417063decideOff = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "decideOff", _loc_2, param1));
            }
            return;
        }// end function

        private function set _swf_close(param1:MovieClipLoaderAsset) : void
        {
            var _loc_2:* = this._1193840764_swf_close;
            if (_loc_2 !== param1)
            {
                this._1193840764_swf_close = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "_swf_close", _loc_2, param1));
            }
            return;
        }// end function

        public static function set watcherSetupUtil(param1:IWatcherSetupUtil) : void
        {
            SkillLearnWindow._watcherSetupUtil = param1;
            return;
        }// end function

    }
}
