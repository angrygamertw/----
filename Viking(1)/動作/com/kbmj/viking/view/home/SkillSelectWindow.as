package com.kbmj.viking.view.home
{
    import com.kbmj.viking.lib.*;
    import com.kbmj.viking.view.*;
    import com.kbmj.viking.vo.*;
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

    public class SkillSelectWindow extends PopupWindow implements IBindingClient
    {
        private var _1649757780_swf_change:MovieClipLoaderAsset;
        private var _1075873300_swf_window:MovieClipLoaderAsset;
        public var _SkillSelectWindow_VBox1:VBox;
        private var _1655845770_swf_cancel:MovieClipLoaderAsset;
        private var _900562878skills:Array;
        private var _292905088checkCanvas:Canvas;
        var _bindingsByDestination:Object;
        private var _1193840764_swf_close:MovieClipLoaderAsset;
        public var _SkillSelectWindow_Image1:Image;
        public var _SkillSelectWindow_Image2:Image;
        public var _SkillSelectWindow_Image3:Image;
        public var _SkillSelectWindow_Image4:Image;
        public var _SkillSelectWindow_Image5:Image;
        public var _SkillSelectWindow_Image6:Image;
        private var _343417063decideOff:Class;
        public var _SkillSelectWindow_Text1:Text;
        private var forgetSkill:Object;
        private var _1218643219_swf_close_window:MovieClipLoaderAsset;
        public var _SkillSelectWindow_DataGridColumn1:DataGridColumn;
        public var _SkillSelectWindow_Text2:Text;
        public var _SkillSelectWindow_DataGridColumn3:DataGridColumn;
        public var _SkillSelectWindow_DataGridColumn2:DataGridColumn;
        private var _1769958153skillCanvas:Canvas;
        private var _1791890429_swf_check_window:MovieClipLoaderAsset;
        private var _1335723160decide:Class;
        private var _1655921504selectUnit:UnitVO;
        private var _973309861skill_data_list:DataGrid;
        private var _522920908detailRenderer:ClassFactory;
        var _watchers:Array;
        var _bindingsBeginWithWord:Object;
        var _bindings:Array;
        public var new_skill:SkillVO;
        private var _documentDescriptor_:UIComponentDescriptor;
        private var _1794568764checkForgetSkill:Text;
        private static var _watcherSetupUtil:IWatcherSetupUtil;
        public static const SKILL_SELECT:String = NAME + "skillLearn";
        public static const NAME:String = "skillSelectWindow";
        public static const SKILL_SELECT_WINDOW_CLOSE:String = NAME + "skillLearnWindowClose";

        public function SkillSelectWindow()
        {
            _documentDescriptor_ = new UIComponentDescriptor({type:PopupWindow, propertiesFactory:function () : Object
            {
                return {width:750, height:506, childDescriptors:[new UIComponentDescriptor({type:Image, id:"_SkillSelectWindow_Image1"}), new UIComponentDescriptor({type:Canvas, id:"skillCanvas", propertiesFactory:function () : Object
                {
                    return {x:30, childDescriptors:[new UIComponentDescriptor({type:Image, id:"_SkillSelectWindow_Image2", events:{click:"___SkillSelectWindow_Image2_click"}, propertiesFactory:function () : Object
                    {
                        return {x:685, y:20};
                    }// end function
                    }), new UIComponentDescriptor({type:Text, id:"_SkillSelectWindow_Text1", stylesFactory:function () : void
                    {
                        this.color = 15658734;
                        return;
                    }// end function
                    , propertiesFactory:function () : Object
                    {
                        return {x:315, y:22, styleName:"PanelBaseTitle"};
                    }// end function
                    }), new UIComponentDescriptor({type:Text, id:"_SkillSelectWindow_Text2", stylesFactory:function () : void
                    {
                        this.fontSize = 13;
                        return;
                    }// end function
                    , propertiesFactory:function () : Object
                    {
                        return {x:40, y:60};
                    }// end function
                    }), new UIComponentDescriptor({type:VBox, id:"_SkillSelectWindow_VBox1", propertiesFactory:function () : Object
                    {
                        return {x:40, y:110, childDescriptors:[new UIComponentDescriptor({type:DataGrid, id:"skill_data_list", propertiesFactory:function () : Object
                        {
                            return {height:112, styleName:"DataGridBase", selectable:false, sortableColumns:false, rowHeight:28, headerHeight:25, columns:[_SkillSelectWindow_DataGridColumn1_i(), _SkillSelectWindow_DataGridColumn2_i(), _SkillSelectWindow_DataGridColumn3_i()]};
                        }// end function
                        })]};
                    }// end function
                    }), new UIComponentDescriptor({type:Image, id:"_SkillSelectWindow_Image3", propertiesFactory:function () : Object
                    {
                        return {x:295, y:247};
                    }// end function
                    })]};
                }// end function
                }), new UIComponentDescriptor({type:Canvas, id:"checkCanvas", propertiesFactory:function () : Object
                {
                    return {visible:false, childDescriptors:[new UIComponentDescriptor({type:Image, id:"_SkillSelectWindow_Image4"}), new UIComponentDescriptor({type:Text, id:"checkForgetSkill", stylesFactory:function () : void
                    {
                        this.fontSize = 13;
                        return;
                    }// end function
                    , propertiesFactory:function () : Object
                    {
                        return {x:280, y:210};
                    }// end function
                    }), new UIComponentDescriptor({type:Image, id:"_SkillSelectWindow_Image5", events:{click:"___SkillSelectWindow_Image5_click"}, propertiesFactory:function () : Object
                    {
                        return {x:265, y:350};
                    }// end function
                    }), new UIComponentDescriptor({type:Image, id:"_SkillSelectWindow_Image6", events:{click:"___SkillSelectWindow_Image6_click"}, propertiesFactory:function () : Object
                    {
                        return {x:390, y:350};
                    }// end function
                    })]};
                }// end function
                })]};
            }// end function
            });
            forgetSkill = new Object();
            _1335723160decide = SkillSelectWindow_decide;
            _343417063decideOff = SkillSelectWindow_decideOff;
            _1193840764_swf_close = new Viking.EmbedSwfButtonCommon();
            _1218643219_swf_close_window = new Viking.EmbedSwfButtonCloseWindow();
            _1075873300_swf_window = new Viking.EmbedSwfWindowCommon();
            _1791890429_swf_check_window = new Viking.EmbedSwfWindowCommon();
            _1649757780_swf_change = new Viking.EmbedSwfButtonCommon();
            _1655845770_swf_cancel = new Viking.EmbedSwfButtonCommon();
            _bindings = [];
            _watchers = [];
            _bindingsByDestination = {};
            _bindingsBeginWithWord = {};
            mx_internal::_document = this;
            this.width = 750;
            this.height = 506;
            _SkillSelectWindow_ClassFactory1_i();
            this.addEventListener("creationComplete", ___SkillSelectWindow_PopupWindow1_creationComplete);
            return;
        }// end function

        public function set checkCanvas(param1:Canvas) : void
        {
            var _loc_2:* = this._292905088checkCanvas;
            if (_loc_2 !== param1)
            {
                this._292905088checkCanvas = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "checkCanvas", _loc_2, param1));
            }
            return;
        }// end function

        public function ___SkillSelectWindow_Image2_click(event:MouseEvent) : void
        {
            close();
            return;
        }// end function

        private function get _swf_check_window() : MovieClipLoaderAsset
        {
            return this._1791890429_swf_check_window;
        }// end function

        private function set _swf_cancel(param1:MovieClipLoaderAsset) : void
        {
            var _loc_2:* = this._1655845770_swf_cancel;
            if (_loc_2 !== param1)
            {
                this._1655845770_swf_cancel = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "_swf_cancel", _loc_2, param1));
            }
            return;
        }// end function

        public function ___SkillSelectWindow_Image6_click(event:MouseEvent) : void
        {
            forgetCancel();
            return;
        }// end function

        private function set _swf_check_window(param1:MovieClipLoaderAsset) : void
        {
            var _loc_2:* = this._1791890429_swf_check_window;
            if (_loc_2 !== param1)
            {
                this._1791890429_swf_check_window = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "_swf_check_window", _loc_2, param1));
            }
            return;
        }// end function

        public function get skillCanvas() : Canvas
        {
            return this._1769958153skillCanvas;
        }// end function

        public function init(param1:SkillVO, param2:UnitVO) : void
        {
            var _loc_3:Object = null;
            selectUnit = new UnitVO();
            selectUnit = param2;
            skills = new Array();
            for each (_loc_3 in param2.ownSkills)
            {
                
                skills.push(_loc_3);
            }
            new_skill = param1;
            skill_data_list.height = 112;
            skill_data_list.rowHeight = 28;
            skill_data_list.headerHeight = 25;
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

        public function checkWindow(param1:Object) : void
        {
            forgetSkill = new Object();
            forgetSkill = param1;
            checkForgetSkill.text = Utils.i18n("skillSelectForgetConf", param1.nameLabel);
            checkCanvas.visible = true;
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
                close();
                return;
            }// end function
            );
            MovieClip(Loader(_swf_close.getChildAt(0)).content).gotoAndPlay("button_close");
            MovieClip(Loader(_swf_window.getChildAt(0)).content).gotoAndPlay("top_720x285");
            MovieClip(Loader(_swf_change.getChildAt(0)).content).gotoAndPlay("button_yes");
            MovieClip(Loader(_swf_cancel.getChildAt(0)).content).gotoAndPlay("button_no");
            MovieClip(Loader(_swf_check_window.getChildAt(0)).content).gotoAndPlay("center_400x270");
            return;
        }// end function

        private function _SkillSelectWindow_ClassFactory1_i() : ClassFactory
        {
            var _loc_1:* = new ClassFactory();
            detailRenderer = _loc_1;
            _loc_1.generator = SkillSelectWindow_inlineComponent1;
            _loc_1.properties = {outerDocument:this};
            return _loc_1;
        }// end function

        public function get detailRenderer() : ClassFactory
        {
            return this._522920908detailRenderer;
        }// end function

        public function get checkForgetSkill() : Text
        {
            return this._1794568764checkForgetSkill;
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

        public function get skills() : Array
        {
            return this._900562878skills;
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

        private function _SkillSelectWindow_DataGridColumn3_i() : DataGridColumn
        {
            var _loc_1:* = new DataGridColumn();
            _SkillSelectWindow_DataGridColumn3 = _loc_1;
            _loc_1.dataField = "description";
            _loc_1.width = 405;
            _loc_1.setStyle("textAlign", "center");
            _loc_1.setStyle("fontSize", 11);
            BindingManager.executeBindings(this, "_SkillSelectWindow_DataGridColumn3", _SkillSelectWindow_DataGridColumn3);
            return _loc_1;
        }// end function

        private function set _swf_change(param1:MovieClipLoaderAsset) : void
        {
            var _loc_2:* = this._1649757780_swf_change;
            if (_loc_2 !== param1)
            {
                this._1649757780_swf_change = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "_swf_change", _loc_2, param1));
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

        private function learnSkill() : void
        {
            dispatchEvent(new PopupEvent(SKILL_SELECT, {unit:selectUnit, oldSkill:forgetSkill, newSkill:new_skill}));
            close();
            return;
        }// end function

        private function _SkillSelectWindow_bindingsSetup() : Array
        {
            var binding:Binding;
            var result:Array;
            binding = new Binding(this, function () : Object
            {
                return _swf_window;
            }// end function
            , function (param1:Object) : void
            {
                _SkillSelectWindow_Image1.source = param1;
                return;
            }// end function
            , "_SkillSelectWindow_Image1.source");
            result[0] = binding;
            binding = new Binding(this, function () : Object
            {
                return _swf_close_window;
            }// end function
            , function (param1:Object) : void
            {
                _SkillSelectWindow_Image2.source = param1;
                return;
            }// end function
            , "_SkillSelectWindow_Image2.source");
            result[1] = binding;
            binding = new Binding(this, function () : String
            {
                var _loc_1:* = Utils.i18n("skillSelectTitle");
                var _loc_2:* = _loc_1 == undefined ? (null) : (String(_loc_1));
                return _loc_2;
            }// end function
            , function (param1:String) : void
            {
                _SkillSelectWindow_Text1.text = param1;
                return;
            }// end function
            , "_SkillSelectWindow_Text1.text");
            result[2] = binding;
            binding = new Binding(this, function () : String
            {
                var _loc_1:* = Utils.i18n("skillSelectDescription");
                var _loc_2:* = _loc_1 == undefined ? (null) : (String(_loc_1));
                return _loc_2;
            }// end function
            , function (param1:String) : void
            {
                _SkillSelectWindow_Text2.text = param1;
                return;
            }// end function
            , "_SkillSelectWindow_Text2.text");
            result[3] = binding;
            binding = new Binding(this, function () : String
            {
                var _loc_1:* = Utils.i18n("generalSkill");
                var _loc_2:* = _loc_1 == undefined ? (null) : (String(_loc_1));
                return _loc_2;
            }// end function
            , function (param1:String) : void
            {
                _SkillSelectWindow_VBox1.label = param1;
                return;
            }// end function
            , "_SkillSelectWindow_VBox1.label");
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
            binding = new Binding(this, function () : String
            {
                var _loc_1:* = Utils.i18n("generalForget");
                var _loc_2:* = _loc_1 == undefined ? (null) : (String(_loc_1));
                return _loc_2;
            }// end function
            , function (param1:String) : void
            {
                _SkillSelectWindow_DataGridColumn1.headerText = param1;
                return;
            }// end function
            , "_SkillSelectWindow_DataGridColumn1.headerText");
            result[6] = binding;
            binding = new Binding(this, function () : IFactory
            {
                return detailRenderer;
            }// end function
            , function (param1:IFactory) : void
            {
                _SkillSelectWindow_DataGridColumn1.itemRenderer = param1;
                return;
            }// end function
            , "_SkillSelectWindow_DataGridColumn1.itemRenderer");
            result[7] = binding;
            binding = new Binding(this, function () : String
            {
                var _loc_1:* = Utils.i18n("generalName");
                var _loc_2:* = _loc_1 == undefined ? (null) : (String(_loc_1));
                return _loc_2;
            }// end function
            , function (param1:String) : void
            {
                _SkillSelectWindow_DataGridColumn2.headerText = param1;
                return;
            }// end function
            , "_SkillSelectWindow_DataGridColumn2.headerText");
            result[8] = binding;
            binding = new Binding(this, function () : String
            {
                var _loc_1:* = Utils.i18n("generalDescription");
                var _loc_2:* = _loc_1 == undefined ? (null) : (String(_loc_1));
                return _loc_2;
            }// end function
            , function (param1:String) : void
            {
                _SkillSelectWindow_DataGridColumn3.headerText = param1;
                return;
            }// end function
            , "_SkillSelectWindow_DataGridColumn3.headerText");
            result[9] = binding;
            binding = new Binding(this, function () : Object
            {
                return _swf_close;
            }// end function
            , function (param1:Object) : void
            {
                _SkillSelectWindow_Image3.source = param1;
                return;
            }// end function
            , "_SkillSelectWindow_Image3.source");
            result[10] = binding;
            binding = new Binding(this, function () : Object
            {
                return _swf_check_window;
            }// end function
            , function (param1:Object) : void
            {
                _SkillSelectWindow_Image4.source = param1;
                return;
            }// end function
            , "_SkillSelectWindow_Image4.source");
            result[11] = binding;
            binding = new Binding(this, function () : Object
            {
                return _swf_change;
            }// end function
            , function (param1:Object) : void
            {
                _SkillSelectWindow_Image5.source = param1;
                return;
            }// end function
            , "_SkillSelectWindow_Image5.source");
            result[12] = binding;
            binding = new Binding(this, function () : Object
            {
                return _swf_cancel;
            }// end function
            , function (param1:Object) : void
            {
                _SkillSelectWindow_Image6.source = param1;
                return;
            }// end function
            , "_SkillSelectWindow_Image6.source");
            result[13] = binding;
            return result;
        }// end function

        public function get decide() : Class
        {
            return this._1335723160decide;
        }// end function

        public function set checkForgetSkill(param1:Text) : void
        {
            var _loc_2:* = this._1794568764checkForgetSkill;
            if (_loc_2 !== param1)
            {
                this._1794568764checkForgetSkill = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "checkForgetSkill", _loc_2, param1));
            }
            return;
        }// end function

        private function get _swf_close() : MovieClipLoaderAsset
        {
            return this._1193840764_swf_close;
        }// end function

        private function get _swf_cancel() : MovieClipLoaderAsset
        {
            return this._1655845770_swf_cancel;
        }// end function

        public function canLearnSkill(param1:Object) : Class
        {
            return decide;
        }// end function

        public function get checkCanvas() : Canvas
        {
            return this._292905088checkCanvas;
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

        private function _SkillSelectWindow_DataGridColumn2_i() : DataGridColumn
        {
            var _loc_1:* = new DataGridColumn();
            _SkillSelectWindow_DataGridColumn2 = _loc_1;
            _loc_1.dataField = "nameLabel";
            _loc_1.width = 150;
            _loc_1.setStyle("textAlign", "center");
            _loc_1.setStyle("fontSize", 11);
            BindingManager.executeBindings(this, "_SkillSelectWindow_DataGridColumn2", _SkillSelectWindow_DataGridColumn2);
            return _loc_1;
        }// end function

        override public function initialize() : void
        {
            var target:SkillSelectWindow;
            var watcherSetupUtilClass:Object;
            .mx_internal::setDocumentDescriptor(_documentDescriptor_);
            var bindings:* = _SkillSelectWindow_bindingsSetup();
            var watchers:Array;
            target;
            if (_watcherSetupUtil == null)
            {
                watcherSetupUtilClass = getDefinitionByName("_com_kbmj_viking_view_home_SkillSelectWindowWatcherSetupUtil");
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

        public function get selectUnit() : UnitVO
        {
            return this._1655921504selectUnit;
        }// end function

        public function get skill_data_list() : DataGrid
        {
            return this._973309861skill_data_list;
        }// end function

        private function get _swf_change() : MovieClipLoaderAsset
        {
            return this._1649757780_swf_change;
        }// end function

        public function ___SkillSelectWindow_Image5_click(event:MouseEvent) : void
        {
            learnSkill();
            return;
        }// end function

        private function forgetCancel() : void
        {
            forgetSkill = new Object();
            checkForgetSkill.text = "";
            checkCanvas.visible = false;
            return;
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

        private function _SkillSelectWindow_DataGridColumn1_i() : DataGridColumn
        {
            var _loc_1:* = new DataGridColumn();
            _SkillSelectWindow_DataGridColumn1 = _loc_1;
            _loc_1.width = 55;
            _loc_1.setStyle("fontSize", 11);
            BindingManager.executeBindings(this, "_SkillSelectWindow_DataGridColumn1", _SkillSelectWindow_DataGridColumn1);
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

        private function set _swf_window(param1:MovieClipLoaderAsset) : void
        {
            var _loc_2:* = this._1075873300_swf_window;
            if (_loc_2 !== param1)
            {
                this._1075873300_swf_window = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "_swf_window", _loc_2, param1));
            }
            return;
        }// end function

        public function ___SkillSelectWindow_PopupWindow1_creationComplete(event:FlexEvent) : void
        {
            createComp();
            return;
        }// end function

        public function get decideOff() : Class
        {
            return this._343417063decideOff;
        }// end function

        private function _SkillSelectWindow_bindingExprs() : void
        {
            var _loc_1:* = undefined;
            _loc_1 = _swf_window;
            _loc_1 = _swf_close_window;
            _loc_1 = Utils.i18n("skillSelectTitle");
            _loc_1 = Utils.i18n("skillSelectDescription");
            _loc_1 = Utils.i18n("generalSkill");
            _loc_1 = skills;
            _loc_1 = Utils.i18n("generalForget");
            _loc_1 = detailRenderer;
            _loc_1 = Utils.i18n("generalName");
            _loc_1 = Utils.i18n("generalDescription");
            _loc_1 = _swf_close;
            _loc_1 = _swf_check_window;
            _loc_1 = _swf_change;
            _loc_1 = _swf_cancel;
            return;
        }// end function

        private function get _swf_window() : MovieClipLoaderAsset
        {
            return this._1075873300_swf_window;
        }// end function

        public function close() : void
        {
            checkCanvas.visible = false;
            onClose();
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
            SkillSelectWindow._watcherSetupUtil = param1;
            return;
        }// end function

    }
}
