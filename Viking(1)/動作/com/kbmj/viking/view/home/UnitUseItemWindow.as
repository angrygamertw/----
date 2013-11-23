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
    import mx.collections.*;
    import mx.containers.*;
    import mx.controls.*;
    import mx.controls.dataGridClasses.*;
    import mx.core.*;
    import mx.events.*;

    public class UnitUseItemWindow extends PopupWindow implements IBindingClient
    {
        public var _UnitUseItemWindow_VBox1:VBox;
        public var _UnitUseItemWindow_DataGridColumn1:DataGridColumn;
        public var _UnitUseItemWindow_DataGridColumn2:DataGridColumn;
        public var _UnitUseItemWindow_DataGridColumn3:DataGridColumn;
        public var _UnitUseItemWindow_DataGridColumn4:DataGridColumn;
        public var _UnitUseItemWindow_DataGridColumn5:DataGridColumn;
        public var _UnitUseItemWindow_DataGridColumn6:DataGridColumn;
        public var _UnitUseItemWindow_DataGridColumn7:DataGridColumn;
        public var _UnitUseItemWindow_DataGridColumn8:DataGridColumn;
        public var _UnitUseItemWindow_DataGridColumn9:DataGridColumn;
        var _bindingsByDestination:Object;
        public var _UnitUseItemWindow_Text1:Text;
        public var _UnitUseItemWindow_Text2:Text;
        private var _94427871tutVisible:Boolean = false;
        private var _1193840764_swf_close:MovieClipLoaderAsset;
        private var _100526016items:ArrayCollection;
        private var _1769958153skillCanvas:Canvas;
        private var _973309861skill_data_list:DataGrid;
        public var _UnitUseItemWindow_DataGridColumn10:DataGridColumn;
        public var _UnitUseItemWindow_Image2:Image;
        private var _522920908detailRenderer:ClassFactory;
        var _watchers:Array;
        private var _1896677185windowLayer:Canvas;
        private var _1740333384skill_data_list_tutorial:DataGrid;
        private var _1867944028_unitVO:UnitVO;
        private var _embed_mxml__swf_common_button_close_window_swf_1370265653:Class;
        var _bindingsBeginWithWord:Object;
        private var _914425934detailRendererTutorial:ClassFactory;
        private var _1225459084nonTutVisible:Boolean = true;
        private var _tutMarkItemVisible:Boolean = false;
        var _bindings:Array;
        private var _documentDescriptor_:UIComponentDescriptor;
        public static const NAME:String = "unitUseItemWindow";
        private static var _watcherSetupUtil:IWatcherSetupUtil;
        public static const USE_ITEM:String = NAME + "useItem";
        public static const USE_ITEM_WINDOW_CLOSE:String = NAME + "useItemWindowClose";
        public static const USE_ITEM_WINDOW_TMARK:String = NAME + "useItemWindowTmark";

        public function UnitUseItemWindow()
        {
            _documentDescriptor_ = new UIComponentDescriptor({type:PopupWindow, propertiesFactory:function () : Object
            {
                return {childDescriptors:[new UIComponentDescriptor({type:Canvas, id:"windowLayer"}), new UIComponentDescriptor({type:Text, id:"_UnitUseItemWindow_Text1", propertiesFactory:function () : Object
                {
                    return {x:338, styleName:"ProductionTitle", y:20};
                }// end function
                }), new UIComponentDescriptor({type:Image, events:{click:"___UnitUseItemWindow_Image1_click"}, propertiesFactory:function () : Object
                {
                    return {x:715, y:20, width:20, height:20, source:_embed_mxml__swf_common_button_close_window_swf_1370265653};
                }// end function
                }), new UIComponentDescriptor({type:Canvas, id:"skillCanvas", propertiesFactory:function () : Object
                {
                    return {y:30, childDescriptors:[new UIComponentDescriptor({type:Text, id:"_UnitUseItemWindow_Text2", stylesFactory:function () : void
                    {
                        this.fontSize = 11;
                        return;
                    }// end function
                    , propertiesFactory:function () : Object
                    {
                        return {x:40, y:20};
                    }// end function
                    }), new UIComponentDescriptor({type:VBox, id:"_UnitUseItemWindow_VBox1", propertiesFactory:function () : Object
                    {
                        return {x:40, y:40, childDescriptors:[new UIComponentDescriptor({type:DataGrid, id:"skill_data_list", propertiesFactory:function () : Object
                        {
                            return {styleName:"DataGridBase", rowCount:6, selectable:false, includeInLayout:false, columns:[_UnitUseItemWindow_DataGridColumn1_i(), _UnitUseItemWindow_DataGridColumn2_i(), _UnitUseItemWindow_DataGridColumn3_i(), _UnitUseItemWindow_DataGridColumn4_i(), _UnitUseItemWindow_DataGridColumn5_i()]};
                        }// end function
                        }), new UIComponentDescriptor({type:DataGrid, id:"skill_data_list_tutorial", propertiesFactory:function () : Object
                        {
                            return {styleName:"DataGridBase", rowCount:6, selectable:false, sortableColumns:false, columns:[_UnitUseItemWindow_DataGridColumn6_i(), _UnitUseItemWindow_DataGridColumn7_i(), _UnitUseItemWindow_DataGridColumn8_i(), _UnitUseItemWindow_DataGridColumn9_i(), _UnitUseItemWindow_DataGridColumn10_i()]};
                        }// end function
                        })]};
                    }// end function
                    }), new UIComponentDescriptor({type:Image, id:"_UnitUseItemWindow_Image2", events:{click:"___UnitUseItemWindow_Image2_click"}, propertiesFactory:function () : Object
                    {
                        return {x:325, y:230};
                    }// end function
                    })]};
                }// end function
                })]};
            }// end function
            });
            _1193840764_swf_close = new Viking.EmbedSwfButtonCommon();
            _1867944028_unitVO = new UnitVO();
            _embed_mxml__swf_common_button_close_window_swf_1370265653 = UnitUseItemWindow__embed_mxml__swf_common_button_close_window_swf_1370265653;
            _bindings = [];
            _watchers = [];
            _bindingsByDestination = {};
            _bindingsBeginWithWord = {};
            mx_internal::_document = this;
            _UnitUseItemWindow_ClassFactory1_i();
            _UnitUseItemWindow_ClassFactory2_i();
            this.addEventListener("creationComplete", ___UnitUseItemWindow_PopupWindow1_creationComplete);
            return;
        }// end function

        private function _UnitUseItemWindow_DataGridColumn6_i() : DataGridColumn
        {
            var _loc_1:* = new DataGridColumn();
            _UnitUseItemWindow_DataGridColumn6 = _loc_1;
            _loc_1.width = 78;
            BindingManager.executeBindings(this, "_UnitUseItemWindow_DataGridColumn6", _UnitUseItemWindow_DataGridColumn6);
            return _loc_1;
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

        public function get skillCanvas() : Canvas
        {
            return this._1769958153skillCanvas;
        }// end function

        public function set unit(param1:UnitVO) : void
        {
            _unitVO = param1;
            return;
        }// end function

        private function init() : void
        {
            MovieClip(Loader(_swf_close.getChildAt(0)).content).gotoAndPlay("button_close");
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

        private function _UnitUseItemWindow_DataGridColumn10_i() : DataGridColumn
        {
            var _loc_1:* = new DataGridColumn();
            _UnitUseItemWindow_DataGridColumn10 = _loc_1;
            _loc_1.dataField = "description";
            _loc_1.width = 260;
            _loc_1.setStyle("textAlign", "center");
            BindingManager.executeBindings(this, "_UnitUseItemWindow_DataGridColumn10", _UnitUseItemWindow_DataGridColumn10);
            return _loc_1;
        }// end function

        public function useItem(param1:Object) : void
        {
            if (param1.masterId == 12)
            {
                sendEvent(USE_ITEM_WINDOW_TMARK);
            }
            dispatchEvent(new PopupEvent(USE_ITEM, {unit:_unitVO, item:param1}));
            close();
            return;
        }// end function

        public function get detailRenderer() : ClassFactory
        {
            return this._522920908detailRenderer;
        }// end function

        private function _UnitUseItemWindow_DataGridColumn1_i() : DataGridColumn
        {
            var _loc_1:* = new DataGridColumn();
            _UnitUseItemWindow_DataGridColumn1 = _loc_1;
            _loc_1.width = 55;
            _loc_1.sortable = false;
            BindingManager.executeBindings(this, "_UnitUseItemWindow_DataGridColumn1", _UnitUseItemWindow_DataGridColumn1);
            return _loc_1;
        }// end function

        public function get tutMarkItemVisible() : Boolean
        {
            return _tutMarkItemVisible;
        }// end function

        public function setTutMarkItemVisible(param1:int, param2:int, param3:int) : void
        {
            if (param1 == 2 && param2 == 31 && param3 == 1 || param1 == 3 && param2 == 31 && param3 == 2)
            {
                _tutMarkItemVisible = true;
                tutVisible = true;
                nonTutVisible = false;
            }
            else
            {
                _tutMarkItemVisible = false;
                tutVisible = false;
                nonTutVisible = true;
            }
            return;
        }// end function

        private function _UnitUseItemWindow_DataGridColumn9_i() : DataGridColumn
        {
            var _loc_1:* = new DataGridColumn();
            _UnitUseItemWindow_DataGridColumn9 = _loc_1;
            _loc_1.dataField = "effect";
            _loc_1.width = 185;
            _loc_1.setStyle("textAlign", "center");
            BindingManager.executeBindings(this, "_UnitUseItemWindow_DataGridColumn9", _UnitUseItemWindow_DataGridColumn9);
            return _loc_1;
        }// end function

        private function _UnitUseItemWindow_DataGridColumn5_i() : DataGridColumn
        {
            var _loc_1:* = new DataGridColumn();
            _UnitUseItemWindow_DataGridColumn5 = _loc_1;
            _loc_1.dataField = "description";
            _loc_1.width = 260;
            _loc_1.sortable = false;
            _loc_1.setStyle("textAlign", "center");
            BindingManager.executeBindings(this, "_UnitUseItemWindow_DataGridColumn5", _UnitUseItemWindow_DataGridColumn5);
            return _loc_1;
        }// end function

        public function get windowLayer() : Canvas
        {
            return this._1896677185windowLayer;
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

        private function _UnitUseItemWindow_bindingsSetup() : Array
        {
            var binding:Binding;
            var result:Array;
            binding = new Binding(this, function () : String
            {
                var _loc_1:* = Utils.i18n("unitUseItemTitle");
                var _loc_2:* = _loc_1 == undefined ? (null) : (String(_loc_1));
                return _loc_2;
            }// end function
            , function (param1:String) : void
            {
                _UnitUseItemWindow_Text1.text = param1;
                return;
            }// end function
            , "_UnitUseItemWindow_Text1.text");
            result[0] = binding;
            binding = new Binding(this, function () : String
            {
                var _loc_1:* = Utils.i18n("unitUseItemTarget") + ":" + _unitVO.name;
                var _loc_2:* = _loc_1 == undefined ? (null) : (String(_loc_1));
                return _loc_2;
            }// end function
            , function (param1:String) : void
            {
                _UnitUseItemWindow_Text2.text = param1;
                return;
            }// end function
            , "_UnitUseItemWindow_Text2.text");
            result[1] = binding;
            binding = new Binding(this, function () : String
            {
                var _loc_1:* = Utils.i18n("generalMaterial");
                var _loc_2:* = _loc_1 == undefined ? (null) : (String(_loc_1));
                return _loc_2;
            }// end function
            , function (param1:String) : void
            {
                _UnitUseItemWindow_VBox1.label = param1;
                return;
            }// end function
            , "_UnitUseItemWindow_VBox1.label");
            result[2] = binding;
            binding = new Binding(this, function () : Object
            {
                return items;
            }// end function
            , function (param1:Object) : void
            {
                skill_data_list.dataProvider = param1;
                return;
            }// end function
            , "skill_data_list.dataProvider");
            result[3] = binding;
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
            result[4] = binding;
            binding = new Binding(this, function () : String
            {
                var _loc_1:* = Utils.i18n("generalUse");
                var _loc_2:* = _loc_1 == undefined ? (null) : (String(_loc_1));
                return _loc_2;
            }// end function
            , function (param1:String) : void
            {
                _UnitUseItemWindow_DataGridColumn1.headerText = param1;
                return;
            }// end function
            , "_UnitUseItemWindow_DataGridColumn1.headerText");
            result[5] = binding;
            binding = new Binding(this, function () : IFactory
            {
                return detailRenderer;
            }// end function
            , function (param1:IFactory) : void
            {
                _UnitUseItemWindow_DataGridColumn1.itemRenderer = param1;
                return;
            }// end function
            , "_UnitUseItemWindow_DataGridColumn1.itemRenderer");
            result[6] = binding;
            binding = new Binding(this, function () : String
            {
                var _loc_1:* = Utils.i18n("generalName");
                var _loc_2:* = _loc_1 == undefined ? (null) : (String(_loc_1));
                return _loc_2;
            }// end function
            , function (param1:String) : void
            {
                _UnitUseItemWindow_DataGridColumn2.headerText = param1;
                return;
            }// end function
            , "_UnitUseItemWindow_DataGridColumn2.headerText");
            result[7] = binding;
            binding = new Binding(this, function () : String
            {
                var _loc_1:* = Utils.i18n("changeEquipmentEndurance");
                var _loc_2:* = _loc_1 == undefined ? (null) : (String(_loc_1));
                return _loc_2;
            }// end function
            , function (param1:String) : void
            {
                _UnitUseItemWindow_DataGridColumn3.headerText = param1;
                return;
            }// end function
            , "_UnitUseItemWindow_DataGridColumn3.headerText");
            result[8] = binding;
            binding = new Binding(this, function () : String
            {
                var _loc_1:* = Utils.i18n("changeEquipmentEffect");
                var _loc_2:* = _loc_1 == undefined ? (null) : (String(_loc_1));
                return _loc_2;
            }// end function
            , function (param1:String) : void
            {
                _UnitUseItemWindow_DataGridColumn4.headerText = param1;
                return;
            }// end function
            , "_UnitUseItemWindow_DataGridColumn4.headerText");
            result[9] = binding;
            binding = new Binding(this, function () : String
            {
                var _loc_1:* = Utils.i18n("generalDescription");
                var _loc_2:* = _loc_1 == undefined ? (null) : (String(_loc_1));
                return _loc_2;
            }// end function
            , function (param1:String) : void
            {
                _UnitUseItemWindow_DataGridColumn5.headerText = param1;
                return;
            }// end function
            , "_UnitUseItemWindow_DataGridColumn5.headerText");
            result[10] = binding;
            binding = new Binding(this, function () : Object
            {
                return items;
            }// end function
            , function (param1:Object) : void
            {
                skill_data_list_tutorial.dataProvider = param1;
                return;
            }// end function
            , "skill_data_list_tutorial.dataProvider");
            result[11] = binding;
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
            result[12] = binding;
            binding = new Binding(this, function () : String
            {
                var _loc_1:* = Utils.i18n("generalUse");
                var _loc_2:* = _loc_1 == undefined ? (null) : (String(_loc_1));
                return _loc_2;
            }// end function
            , function (param1:String) : void
            {
                _UnitUseItemWindow_DataGridColumn6.headerText = param1;
                return;
            }// end function
            , "_UnitUseItemWindow_DataGridColumn6.headerText");
            result[13] = binding;
            binding = new Binding(this, function () : IFactory
            {
                return detailRendererTutorial;
            }// end function
            , function (param1:IFactory) : void
            {
                _UnitUseItemWindow_DataGridColumn6.itemRenderer = param1;
                return;
            }// end function
            , "_UnitUseItemWindow_DataGridColumn6.itemRenderer");
            result[14] = binding;
            binding = new Binding(this, function () : String
            {
                var _loc_1:* = Utils.i18n("generalName");
                var _loc_2:* = _loc_1 == undefined ? (null) : (String(_loc_1));
                return _loc_2;
            }// end function
            , function (param1:String) : void
            {
                _UnitUseItemWindow_DataGridColumn7.headerText = param1;
                return;
            }// end function
            , "_UnitUseItemWindow_DataGridColumn7.headerText");
            result[15] = binding;
            binding = new Binding(this, function () : String
            {
                var _loc_1:* = Utils.i18n("changeEquipmentEndurance");
                var _loc_2:* = _loc_1 == undefined ? (null) : (String(_loc_1));
                return _loc_2;
            }// end function
            , function (param1:String) : void
            {
                _UnitUseItemWindow_DataGridColumn8.headerText = param1;
                return;
            }// end function
            , "_UnitUseItemWindow_DataGridColumn8.headerText");
            result[16] = binding;
            binding = new Binding(this, function () : String
            {
                var _loc_1:* = Utils.i18n("changeEquipmentEffect");
                var _loc_2:* = _loc_1 == undefined ? (null) : (String(_loc_1));
                return _loc_2;
            }// end function
            , function (param1:String) : void
            {
                _UnitUseItemWindow_DataGridColumn9.headerText = param1;
                return;
            }// end function
            , "_UnitUseItemWindow_DataGridColumn9.headerText");
            result[17] = binding;
            binding = new Binding(this, function () : String
            {
                var _loc_1:* = Utils.i18n("generalDescription");
                var _loc_2:* = _loc_1 == undefined ? (null) : (String(_loc_1));
                return _loc_2;
            }// end function
            , function (param1:String) : void
            {
                _UnitUseItemWindow_DataGridColumn10.headerText = param1;
                return;
            }// end function
            , "_UnitUseItemWindow_DataGridColumn10.headerText");
            result[18] = binding;
            binding = new Binding(this, function () : Object
            {
                return _swf_close;
            }// end function
            , function (param1:Object) : void
            {
                _UnitUseItemWindow_Image2.source = param1;
                return;
            }// end function
            , "_UnitUseItemWindow_Image2.source");
            result[19] = binding;
            return result;
        }// end function

        private function idSort(param1:Object, param2:Object) : int
        {
            return Utils.sortItem(param1.masterVO.masterId, param2.masterVO.masterId);
        }// end function

        private function get _unitVO() : UnitVO
        {
            return this._1867944028_unitVO;
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

        public function setItems(param1:ResourceVO) : void
        {
            var homeResource:* = param1;
            items = new ArrayCollection(homeResource.items.filter(function (param1, param2:int, param3:Array) : Boolean
            {
                return param1.available == 0;
            }// end function
            ).sortOn("effect"));
            return;
        }// end function

        private function _UnitUseItemWindow_DataGridColumn4_i() : DataGridColumn
        {
            var _loc_1:* = new DataGridColumn();
            _UnitUseItemWindow_DataGridColumn4 = _loc_1;
            _loc_1.dataField = "effect";
            _loc_1.width = 200;
            _loc_1.setStyle("textAlign", "center");
            BindingManager.executeBindings(this, "_UnitUseItemWindow_DataGridColumn4", _UnitUseItemWindow_DataGridColumn4);
            return _loc_1;
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

        private function get _swf_close() : MovieClipLoaderAsset
        {
            return this._1193840764_swf_close;
        }// end function

        private function _UnitUseItemWindow_DataGridColumn8_i() : DataGridColumn
        {
            var _loc_1:* = new DataGridColumn();
            _UnitUseItemWindow_DataGridColumn8 = _loc_1;
            _loc_1.dataField = "endurance";
            _loc_1.width = 62;
            _loc_1.setStyle("textAlign", "center");
            BindingManager.executeBindings(this, "_UnitUseItemWindow_DataGridColumn8", _UnitUseItemWindow_DataGridColumn8);
            return _loc_1;
        }// end function

        public function set tutMarkItemVisible(param1:Boolean) : void
        {
            _tutMarkItemVisible = param1;
            return;
        }// end function

        private function set items(param1:ArrayCollection) : void
        {
            var _loc_2:* = this._100526016items;
            if (_loc_2 !== param1)
            {
                this._100526016items = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "items", _loc_2, param1));
            }
            return;
        }// end function

        private function get nonTutVisible() : Boolean
        {
            return this._1225459084nonTutVisible;
        }// end function

        private function _UnitUseItemWindow_ClassFactory2_i() : ClassFactory
        {
            var _loc_1:* = new ClassFactory();
            detailRendererTutorial = _loc_1;
            _loc_1.generator = UnitUseItemWindow_inlineComponent2;
            _loc_1.properties = {outerDocument:this};
            return _loc_1;
        }// end function

        override public function initialize() : void
        {
            var target:UnitUseItemWindow;
            var watcherSetupUtilClass:Object;
            .mx_internal::setDocumentDescriptor(_documentDescriptor_);
            var bindings:* = _UnitUseItemWindow_bindingsSetup();
            var watchers:Array;
            target;
            if (_watcherSetupUtil == null)
            {
                watcherSetupUtilClass = getDefinitionByName("_com_kbmj_viking_view_home_UnitUseItemWindowWatcherSetupUtil");
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
            sendEvent(USE_ITEM_WINDOW_CLOSE);
            close();
            return;
        }// end function

        public function get skill_data_list() : DataGrid
        {
            return this._973309861skill_data_list;
        }// end function

        public function get detailRendererTutorial() : ClassFactory
        {
            return this._914425934detailRendererTutorial;
        }// end function

        public function ___UnitUseItemWindow_Image1_click(event:MouseEvent) : void
        {
            close();
            return;
        }// end function

        private function _UnitUseItemWindow_DataGridColumn3_i() : DataGridColumn
        {
            var _loc_1:* = new DataGridColumn();
            _UnitUseItemWindow_DataGridColumn3 = _loc_1;
            _loc_1.dataField = "endurance";
            _loc_1.width = 65;
            _loc_1.sortable = false;
            _loc_1.setStyle("textAlign", "center");
            BindingManager.executeBindings(this, "_UnitUseItemWindow_DataGridColumn3", _UnitUseItemWindow_DataGridColumn3);
            return _loc_1;
        }// end function

        private function get items() : ArrayCollection
        {
            return this._100526016items;
        }// end function

        public function showTutMark(param1:Object) : Boolean
        {
            if (param1.masterId == 12 && _tutMarkItemVisible)
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

        public function get skill_data_list_tutorial() : DataGrid
        {
            return this._1740333384skill_data_list_tutorial;
        }// end function

        public function ___UnitUseItemWindow_PopupWindow1_creationComplete(event:FlexEvent) : void
        {
            init();
            return;
        }// end function

        private function set _unitVO(param1:UnitVO) : void
        {
            var _loc_2:* = this._1867944028_unitVO;
            if (_loc_2 !== param1)
            {
                this._1867944028_unitVO = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "_unitVO", _loc_2, param1));
            }
            return;
        }// end function

        private function _UnitUseItemWindow_ClassFactory1_i() : ClassFactory
        {
            var _loc_1:* = new ClassFactory();
            detailRenderer = _loc_1;
            _loc_1.generator = UnitUseItemWindow_inlineComponent1;
            _loc_1.properties = {outerDocument:this};
            return _loc_1;
        }// end function

        private function _UnitUseItemWindow_bindingExprs() : void
        {
            var _loc_1:* = undefined;
            _loc_1 = Utils.i18n("unitUseItemTitle");
            _loc_1 = Utils.i18n("unitUseItemTarget") + ":" + _unitVO.name;
            _loc_1 = Utils.i18n("generalMaterial");
            _loc_1 = items;
            _loc_1 = nonTutVisible;
            _loc_1 = Utils.i18n("generalUse");
            _loc_1 = detailRenderer;
            _loc_1 = Utils.i18n("generalName");
            _loc_1 = Utils.i18n("changeEquipmentEndurance");
            _loc_1 = Utils.i18n("changeEquipmentEffect");
            _loc_1 = Utils.i18n("generalDescription");
            _loc_1 = items;
            _loc_1 = tutVisible;
            _loc_1 = Utils.i18n("generalUse");
            _loc_1 = detailRendererTutorial;
            _loc_1 = Utils.i18n("generalName");
            _loc_1 = Utils.i18n("changeEquipmentEndurance");
            _loc_1 = Utils.i18n("changeEquipmentEffect");
            _loc_1 = Utils.i18n("generalDescription");
            _loc_1 = _swf_close;
            return;
        }// end function

        private function _UnitUseItemWindow_DataGridColumn7_i() : DataGridColumn
        {
            var _loc_1:* = new DataGridColumn();
            _UnitUseItemWindow_DataGridColumn7 = _loc_1;
            _loc_1.dataField = "nameLabel";
            _loc_1.width = 95;
            _loc_1.setStyle("textAlign", "center");
            BindingManager.executeBindings(this, "_UnitUseItemWindow_DataGridColumn7", _UnitUseItemWindow_DataGridColumn7);
            return _loc_1;
        }// end function

        private function get tutVisible() : Boolean
        {
            return this._94427871tutVisible;
        }// end function

        public function ___UnitUseItemWindow_Image2_click(event:MouseEvent) : void
        {
            removeWindow();
            return;
        }// end function

        private function _UnitUseItemWindow_DataGridColumn2_i() : DataGridColumn
        {
            var _loc_1:* = new DataGridColumn();
            _UnitUseItemWindow_DataGridColumn2 = _loc_1;
            _loc_1.dataField = "nameLabel";
            _loc_1.width = 100;
            _loc_1.sortCompareFunction = idSort;
            _loc_1.setStyle("textAlign", "center");
            BindingManager.executeBindings(this, "_UnitUseItemWindow_DataGridColumn2", _UnitUseItemWindow_DataGridColumn2);
            return _loc_1;
        }// end function

        public function close() : void
        {
            MovieClip(Loader(_swf_close.getChildAt(0)).content).gotoAndPlay(0);
            MovieClip(Loader(_swf_close.getChildAt(0)).content).gotoAndPlay("button_close");
            onClose();
            return;
        }// end function

        public static function set watcherSetupUtil(param1:IWatcherSetupUtil) : void
        {
            UnitUseItemWindow._watcherSetupUtil = param1;
            return;
        }// end function

    }
}
