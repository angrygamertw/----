package com.kbmj.viking.view.home
{
    import com.kbmj.viking.lib.*;
    import com.kbmj.viking.view.*;
    import com.kbmj.viking.vo.*;
    import flash.display.*;
    import flash.events.*;
    import flash.utils.*;
    import mx.binding.*;
    import mx.containers.*;
    import mx.controls.*;
    import mx.controls.dataGridClasses.*;
    import mx.core.*;
    import mx.events.*;

    public class NormalSummonWindow extends PopupWindow implements IBindingClient
    {
        private var _1584105757viewStack:ViewStack;
        private var _80492037summonUnit:Object;
        private var _15141429summon_data_list:DataGrid;
        public var _NormalSummonWindow_DataGridColumn10:DataGridColumn;
        public var _NormalSummonWindow_DataGridColumn11:DataGridColumn;
        public var _NormalSummonWindow_DataGridColumn12:DataGridColumn;
        public var _NormalSummonWindow_DataGridColumn13:DataGridColumn;
        public var _NormalSummonWindow_DataGridColumn14:DataGridColumn;
        private var _1786577368summon_data_list_tutorial:DataGrid;
        public var _NormalSummonWindow_Image2:Image;
        public var _NormalSummonWindow_Image1:Image;
        public var _NormalSummonWindow_Image3:Image;
        private var _153796101itemRenderer1:ClassFactory;
        private var _1655845770_swf_cancel:MovieClipLoaderAsset;
        private var leyLine:Boolean = false;
        private var _597037136sphereRenderer:ClassFactory;
        private var resourceVO:ResourceVO;
        var _bindingsByDestination:Object;
        private var _94427871tutVisible:Boolean = false;
        private var playerVO:PlayerVO;
        private var _153796100itemRenderer2:ClassFactory;
        public var _NormalSummonWindow_DataGridColumn1:DataGridColumn;
        public var _NormalSummonWindow_DataGridColumn2:DataGridColumn;
        public var _NormalSummonWindow_DataGridColumn3:DataGridColumn;
        public var _NormalSummonWindow_DataGridColumn4:DataGridColumn;
        public var _NormalSummonWindow_DataGridColumn5:DataGridColumn;
        public var _NormalSummonWindow_DataGridColumn6:DataGridColumn;
        public var _NormalSummonWindow_DataGridColumn7:DataGridColumn;
        public var _NormalSummonWindow_DataGridColumn8:DataGridColumn;
        public var _NormalSummonWindow_DataGridColumn9:DataGridColumn;
        private var _522920908detailRenderer:ClassFactory;
        var _watchers:Array;
        private var _80473019summonType:Array;
        private var _1768172722detailTutorialRenderer:ClassFactory;
        private var _tutMarkNormalSummonVisible:Boolean = false;
        private var _153796102itemRenderer0:ClassFactory;
        public var _NormalSummonWindow_Text1:Text;
        public var _NormalSummonWindow_Text2:Text;
        public var _NormalSummonWindow_Text3:Text;
        public var _NormalSummonWindow_Text4:Text;
        public var _NormalSummonWindow_Text5:Text;
        var _bindingsBeginWithWord:Object;
        private var _1225459084nonTutVisible:Boolean = true;
        var _bindings:Array;
        private var _100077085_swf_back:MovieClipLoaderAsset;
        private var _documentDescriptor_:UIComponentDescriptor;
        private var _1179328803_swf_summon:MovieClipLoaderAsset;
        public static var selectOffButton:Class = NormalSummonWindow_selectOffButton;
        private static var _watcherSetupUtil:IWatcherSetupUtil;
        public static const NAME:String = "normalSummonWindow";
        public static const NORMAL_SUMMON_RUN:String = NAME + "normalSummon";
        public static var selectButton:Class = NormalSummonWindow_selectButton;
        public static const NORMAL_SUMMON_END:String = NAME + "normalSummonEnd";

        public function NormalSummonWindow()
        {
            _documentDescriptor_ = new UIComponentDescriptor({type:PopupWindow, propertiesFactory:function () : Object
            {
                return {childDescriptors:[new UIComponentDescriptor({type:Text, id:"_NormalSummonWindow_Text1", propertiesFactory:function () : Object
                {
                    return {x:350, y:302, styleName:"PanelBaseTitle"};
                }// end function
                }), new UIComponentDescriptor({type:ViewStack, id:"viewStack", propertiesFactory:function () : Object
                {
                    return {width:570, x:100, y:335, childDescriptors:[new UIComponentDescriptor({type:VBox, propertiesFactory:function () : Object
                    {
                        return {childDescriptors:[new UIComponentDescriptor({type:Text, id:"_NormalSummonWindow_Text2", stylesFactory:function () : void
                        {
                            this.fontSize = 11;
                            return;
                        }// end function
                        }), new UIComponentDescriptor({type:DataGrid, id:"summon_data_list", propertiesFactory:function () : Object
                        {
                            return {rowCount:4, width:560, styleName:"DataGridBase", selectable:false, sortableColumns:false, includeInLayout:false, columns:[_NormalSummonWindow_DataGridColumn1_i(), _NormalSummonWindow_DataGridColumn2_i(), _NormalSummonWindow_DataGridColumn3_i(), _NormalSummonWindow_DataGridColumn4_i(), _NormalSummonWindow_DataGridColumn5_i(), _NormalSummonWindow_DataGridColumn6_i(), _NormalSummonWindow_DataGridColumn7_i()]};
                        }// end function
                        }), new UIComponentDescriptor({type:DataGrid, id:"summon_data_list_tutorial", propertiesFactory:function () : Object
                        {
                            return {rowCount:4, width:560, styleName:"DataGridBase", selectable:false, sortableColumns:false, columns:[_NormalSummonWindow_DataGridColumn8_i(), _NormalSummonWindow_DataGridColumn9_i(), _NormalSummonWindow_DataGridColumn10_i(), _NormalSummonWindow_DataGridColumn11_i(), _NormalSummonWindow_DataGridColumn12_i(), _NormalSummonWindow_DataGridColumn13_i(), _NormalSummonWindow_DataGridColumn14_i()]};
                        }// end function
                        }), new UIComponentDescriptor({type:HBox, propertiesFactory:function () : Object
                        {
                            return {childDescriptors:[new UIComponentDescriptor({type:Spacer, propertiesFactory:function () : Object
                            {
                                return {width:210};
                            }// end function
                            }), new UIComponentDescriptor({type:Image, id:"_NormalSummonWindow_Image1", events:{click:"___NormalSummonWindow_Image1_click"}})]};
                        }// end function
                        })]};
                    }// end function
                    }), new UIComponentDescriptor({type:VBox, propertiesFactory:function () : Object
                    {
                        return {childDescriptors:[new UIComponentDescriptor({type:Spacer, propertiesFactory:function () : Object
                        {
                            return {height:20};
                        }// end function
                        }), new UIComponentDescriptor({type:HBox, propertiesFactory:function () : Object
                        {
                            return {childDescriptors:[new UIComponentDescriptor({type:Spacer, propertiesFactory:function () : Object
                            {
                                return {width:160};
                            }// end function
                            }), new UIComponentDescriptor({type:Text, id:"_NormalSummonWindow_Text3", stylesFactory:function () : void
                            {
                                this.fontSize = 14;
                                return;
                            }// end function
                            })]};
                        }// end function
                        }), new UIComponentDescriptor({type:HBox, propertiesFactory:function () : Object
                        {
                            return {childDescriptors:[new UIComponentDescriptor({type:Spacer, propertiesFactory:function () : Object
                            {
                                return {width:110};
                            }// end function
                            }), new UIComponentDescriptor({type:Text, id:"_NormalSummonWindow_Text4", stylesFactory:function () : void
                            {
                                this.fontSize = 14;
                                return;
                            }// end function
                            })]};
                        }// end function
                        }), new UIComponentDescriptor({type:HBox, propertiesFactory:function () : Object
                        {
                            return {childDescriptors:[new UIComponentDescriptor({type:Spacer, propertiesFactory:function () : Object
                            {
                                return {width:205};
                            }// end function
                            }), new UIComponentDescriptor({type:Text, id:"_NormalSummonWindow_Text5", stylesFactory:function () : void
                            {
                                this.fontSize = 14;
                                return;
                            }// end function
                            })]};
                        }// end function
                        }), new UIComponentDescriptor({type:Spacer, propertiesFactory:function () : Object
                        {
                            return {height:20};
                        }// end function
                        }), new UIComponentDescriptor({type:HBox, stylesFactory:function () : void
                        {
                            this.horizontalGap = 120;
                            return;
                        }// end function
                        , propertiesFactory:function () : Object
                        {
                            return {childDescriptors:[new UIComponentDescriptor({type:Spacer, propertiesFactory:function () : Object
                            {
                                return {width:30};
                            }// end function
                            }), new UIComponentDescriptor({type:Image, id:"_NormalSummonWindow_Image2", events:{click:"___NormalSummonWindow_Image2_click"}}), new UIComponentDescriptor({type:Image, id:"_NormalSummonWindow_Image3", events:{click:"___NormalSummonWindow_Image3_click"}})]};
                        }// end function
                        })]};
                    }// end function
                    })]};
                }// end function
                })]};
            }// end function
            });
            _1655845770_swf_cancel = new Viking.EmbedSwfButtonCommon();
            _100077085_swf_back = new Viking.EmbedSwfButtonCommon();
            _1179328803_swf_summon = new Viking.EmbedSwfButtonCommon();
            playerVO = new PlayerVO();
            _bindings = [];
            _watchers = [];
            _bindingsByDestination = {};
            _bindingsBeginWithWord = {};
            mx_internal::_document = this;
            _NormalSummonWindow_ClassFactory1_i();
            _NormalSummonWindow_ClassFactory2_i();
            _NormalSummonWindow_ClassFactory4_i();
            _NormalSummonWindow_ClassFactory5_i();
            _NormalSummonWindow_ClassFactory6_i();
            _NormalSummonWindow_ClassFactory3_i();
            this.addEventListener("creationComplete", ___NormalSummonWindow_PopupWindow1_creationComplete);
            return;
        }// end function

        public function ___NormalSummonWindow_Image1_click(event:MouseEvent) : void
        {
            closeNormalSummon();
            return;
        }// end function

        private function _NormalSummonWindow_ClassFactory2_i() : ClassFactory
        {
            var _loc_1:* = new ClassFactory();
            detailTutorialRenderer = _loc_1;
            _loc_1.generator = NormalSummonWindow_inlineComponent2;
            _loc_1.properties = {outerDocument:this};
            return _loc_1;
        }// end function

        public function get itemRenderer1() : ClassFactory
        {
            return this._153796101itemRenderer1;
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

        private function createComp() : void
        {
            MovieClip(Loader(_swf_cancel.getChildAt(0)).content).gotoAndPlay("button_back");
            MovieClip(Loader(_swf_summon.getChildAt(0)).content).gotoAndPlay("button_yes");
            MovieClip(Loader(_swf_back.getChildAt(0)).content).gotoAndPlay("button_no");
            return;
        }// end function

        private function _NormalSummonWindow_DataGridColumn8_i() : DataGridColumn
        {
            var _loc_1:* = new DataGridColumn();
            _NormalSummonWindow_DataGridColumn8 = _loc_1;
            _loc_1.width = 78;
            _loc_1.setStyle("textAlign", "center");
            BindingManager.executeBindings(this, "_NormalSummonWindow_DataGridColumn8", _NormalSummonWindow_DataGridColumn8);
            return _loc_1;
        }// end function

        public function getSoulCrystalSize(param1:int) : int
        {
            if (leyLine)
            {
                return addLeyLineEffect(param1);
            }
            return param1;
        }// end function

        public function init(param1:PlayerVO, param2:ResourceVO, param3:Array, param4:Boolean) : void
        {
            var p:* = param1;
            var r:* = param2;
            var summonArray:* = param3;
            var flg:* = param4;
            leyLine = flg;
            playerVO = p;
            resourceVO = r;
            summonArray = summonArray.filter(function (param1:Object, param2:int, param3:Array) : Boolean
            {
                if (param1.leyLine)
                {
                    return playerVO.hasLeyLine(param1.leyLine);
                }
                return true;
            }// end function
            );
            summonArray = summonArray.filter(function (param1:Object, param2:int, param3:Array) : Boolean
            {
                if (param1.items.length > 1)
                {
                    return true;
                }
                if (isLack(param1.items.getItemAt(0)))
                {
                    return false;
                }
                return true;
            }// end function
            );
            summonType = summonArray.filter(function (param1:Object, param2:int, param3:Array) : Boolean
            {
                return param1.level <= playerVO.playerRankId ? (true) : (false);
            }// end function
            );
            return;
        }// end function

        public function get summon_data_list() : DataGrid
        {
            return this._15141429summon_data_list;
        }// end function

        private function _NormalSummonWindow_DataGridColumn3_i() : DataGridColumn
        {
            var _loc_1:* = new DataGridColumn();
            _NormalSummonWindow_DataGridColumn3 = _loc_1;
            _loc_1.dataField = "rank";
            _loc_1.width = 50;
            _loc_1.setStyle("textAlign", "center");
            BindingManager.executeBindings(this, "_NormalSummonWindow_DataGridColumn3", _NormalSummonWindow_DataGridColumn3);
            return _loc_1;
        }// end function

        public function get summon_data_list_tutorial() : DataGrid
        {
            return this._1786577368summon_data_list_tutorial;
        }// end function

        private function _NormalSummonWindow_DataGridColumn12_i() : DataGridColumn
        {
            var _loc_1:* = new DataGridColumn();
            _NormalSummonWindow_DataGridColumn12 = _loc_1;
            _loc_1.setStyle("textAlign", "center");
            BindingManager.executeBindings(this, "_NormalSummonWindow_DataGridColumn12", _NormalSummonWindow_DataGridColumn12);
            return _loc_1;
        }// end function

        private function _NormalSummonWindow_DataGridColumn7_i() : DataGridColumn
        {
            var _loc_1:* = new DataGridColumn();
            _NormalSummonWindow_DataGridColumn7 = _loc_1;
            _loc_1.setStyle("textAlign", "center");
            BindingManager.executeBindings(this, "_NormalSummonWindow_DataGridColumn7", _NormalSummonWindow_DataGridColumn7);
            return _loc_1;
        }// end function

        private function _NormalSummonWindow_ClassFactory1_i() : ClassFactory
        {
            var _loc_1:* = new ClassFactory();
            detailRenderer = _loc_1;
            _loc_1.generator = NormalSummonWindow_inlineComponent1;
            _loc_1.properties = {outerDocument:this};
            return _loc_1;
        }// end function

        private function _NormalSummonWindow_ClassFactory5_i() : ClassFactory
        {
            var _loc_1:* = new ClassFactory();
            itemRenderer1 = _loc_1;
            _loc_1.generator = NormalSummonWindow_inlineComponent5;
            _loc_1.properties = {outerDocument:this};
            return _loc_1;
        }// end function

        private function get summonUnit() : Object
        {
            return this._80492037summonUnit;
        }// end function

        private function _NormalSummonWindow_ClassFactory6_i() : ClassFactory
        {
            var _loc_1:* = new ClassFactory();
            itemRenderer2 = _loc_1;
            _loc_1.generator = NormalSummonWindow_inlineComponent6;
            _loc_1.properties = {outerDocument:this};
            return _loc_1;
        }// end function

        private function _NormalSummonWindow_DataGridColumn13_i() : DataGridColumn
        {
            var _loc_1:* = new DataGridColumn();
            _NormalSummonWindow_DataGridColumn13 = _loc_1;
            _loc_1.setStyle("textAlign", "center");
            BindingManager.executeBindings(this, "_NormalSummonWindow_DataGridColumn13", _NormalSummonWindow_DataGridColumn13);
            return _loc_1;
        }// end function

        public function ___NormalSummonWindow_Image2_click(event:MouseEvent) : void
        {
            summonCeremony();
            return;
        }// end function

        public function set summon_data_list_tutorial(param1:DataGrid) : void
        {
            var _loc_2:* = this._1786577368summon_data_list_tutorial;
            if (_loc_2 !== param1)
            {
                this._1786577368summon_data_list_tutorial = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "summon_data_list_tutorial", _loc_2, param1));
            }
            return;
        }// end function

        public function set itemRenderer0(param1:ClassFactory) : void
        {
            var _loc_2:* = this._153796102itemRenderer0;
            if (_loc_2 !== param1)
            {
                this._153796102itemRenderer0 = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "itemRenderer0", _loc_2, param1));
            }
            return;
        }// end function

        private function isLackSoulCrystal(param1:Object) : Boolean
        {
            return getSoulCrystalSize(param1.soulCrystal) > playerVO.soulCrystal;
        }// end function

        public function get itemRenderer0() : ClassFactory
        {
            return this._153796102itemRenderer0;
        }// end function

        private function set summonUnit(param1:Object) : void
        {
            var _loc_2:* = this._80492037summonUnit;
            if (_loc_2 !== param1)
            {
                this._80492037summonUnit = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "summonUnit", _loc_2, param1));
            }
            return;
        }// end function

        public function set sphereRenderer(param1:ClassFactory) : void
        {
            var _loc_2:* = this._597037136sphereRenderer;
            if (_loc_2 !== param1)
            {
                this._597037136sphereRenderer = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "sphereRenderer", _loc_2, param1));
            }
            return;
        }// end function

        public function getItemColor(param1:Object, param2:int) : uint
        {
            return isLack(param1.items.getItemAt(param2)) ? (15073298) : (0);
        }// end function

        public function set detailTutorialRenderer(param1:ClassFactory) : void
        {
            var _loc_2:* = this._1768172722detailTutorialRenderer;
            if (_loc_2 !== param1)
            {
                this._1768172722detailTutorialRenderer = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "detailTutorialRenderer", _loc_2, param1));
            }
            return;
        }// end function

        public function set summon_data_list(param1:DataGrid) : void
        {
            var _loc_2:* = this._15141429summon_data_list;
            if (_loc_2 !== param1)
            {
                this._15141429summon_data_list = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "summon_data_list", _loc_2, param1));
            }
            return;
        }// end function

        public function get detailRenderer() : ClassFactory
        {
            return this._522920908detailRenderer;
        }// end function

        public function getItemNamePlus(param1:Object) : String
        {
            var _loc_4:Object = null;
            var _loc_2:String = "";
            var _loc_3:String = "";
            for each (_loc_4 in param1.items)
            {
                
                _loc_2 = getItemName(_loc_4);
                if (_loc_2.length > 0)
                {
                    _loc_2 = "、" + _loc_2;
                }
                _loc_3 = _loc_3 + _loc_2;
            }
            return _loc_3;
        }// end function

        private function _NormalSummonWindow_bindingExprs() : void
        {
            var _loc_1:* = undefined;
            _loc_1 = Utils.i18n("normalSummonWindowNormalSummon");
            _loc_1 = Utils.i18n("normalSummonWindowTitle");
            _loc_1 = summonType;
            _loc_1 = nonTutVisible;
            _loc_1 = Utils.i18n("generalSummon");
            _loc_1 = detailRenderer;
            _loc_1 = Utils.i18n("generalJob");
            _loc_1 = Utils.i18n("generalRank");
            _loc_1 = Utils.i18n("generalSoulSphere");
            _loc_1 = sphereRenderer;
            _loc_1 = Utils.i18n("generalMaterial");
            _loc_1 = itemRenderer0;
            _loc_1 = Utils.i18n("generalMaterial");
            _loc_1 = itemRenderer1;
            _loc_1 = Utils.i18n("generalMaterial");
            _loc_1 = itemRenderer2;
            _loc_1 = summonType;
            _loc_1 = tutVisible;
            _loc_1 = Utils.i18n("generalSummon");
            _loc_1 = detailTutorialRenderer;
            _loc_1 = Utils.i18n("generalJob");
            _loc_1 = Utils.i18n("generalRank");
            _loc_1 = Utils.i18n("generalSoulSphere");
            _loc_1 = sphereRenderer;
            _loc_1 = Utils.i18n("generalMaterial");
            _loc_1 = itemRenderer0;
            _loc_1 = Utils.i18n("generalMaterial");
            _loc_1 = itemRenderer1;
            _loc_1 = Utils.i18n("generalMaterial");
            _loc_1 = itemRenderer2;
            _loc_1 = _swf_cancel;
            _loc_1 = Utils.i18n("normalSummonCreateConfirm1", summonUnit.name);
            _loc_1 = Utils.i18n("normalSummonCreateConfirm2", getSoulCrystalSize(summonUnit.soulCrystal), getItemNamePlus(summonUnit));
            _loc_1 = Utils.i18n("normalSummonCreateConfirm3");
            _loc_1 = _swf_summon;
            _loc_1 = _swf_back;
            return;
        }// end function

        private function _NormalSummonWindow_DataGridColumn6_i() : DataGridColumn
        {
            var _loc_1:* = new DataGridColumn();
            _NormalSummonWindow_DataGridColumn6 = _loc_1;
            _loc_1.setStyle("textAlign", "center");
            BindingManager.executeBindings(this, "_NormalSummonWindow_DataGridColumn6", _NormalSummonWindow_DataGridColumn6);
            return _loc_1;
        }// end function

        private function _NormalSummonWindow_DataGridColumn2_i() : DataGridColumn
        {
            var _loc_1:* = new DataGridColumn();
            _NormalSummonWindow_DataGridColumn2 = _loc_1;
            _loc_1.dataField = "name";
            _loc_1.width = 105;
            _loc_1.setStyle("textAlign", "center");
            BindingManager.executeBindings(this, "_NormalSummonWindow_DataGridColumn2", _NormalSummonWindow_DataGridColumn2);
            return _loc_1;
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

        private function set summonType(param1:Array) : void
        {
            var _loc_2:* = this._80473019summonType;
            if (_loc_2 !== param1)
            {
                this._80473019summonType = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "summonType", _loc_2, param1));
            }
            return;
        }// end function

        private function _NormalSummonWindow_DataGridColumn11_i() : DataGridColumn
        {
            var _loc_1:* = new DataGridColumn();
            _NormalSummonWindow_DataGridColumn11 = _loc_1;
            _loc_1.width = 35;
            _loc_1.setStyle("textAlign", "center");
            BindingManager.executeBindings(this, "_NormalSummonWindow_DataGridColumn11", _NormalSummonWindow_DataGridColumn11);
            return _loc_1;
        }// end function

        public function ___NormalSummonWindow_PopupWindow1_creationComplete(event:FlexEvent) : void
        {
            createComp();
            return;
        }// end function

        private function get nonTutVisible() : Boolean
        {
            return this._1225459084nonTutVisible;
        }// end function

        override public function initialize() : void
        {
            var target:NormalSummonWindow;
            var watcherSetupUtilClass:Object;
            .mx_internal::setDocumentDescriptor(_documentDescriptor_);
            var bindings:* = _NormalSummonWindow_bindingsSetup();
            var watchers:Array;
            target;
            if (_watcherSetupUtil == null)
            {
                watcherSetupUtilClass = getDefinitionByName("_com_kbmj_viking_view_home_NormalSummonWindowWatcherSetupUtil");
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

        private function summonCeremony() : void
        {
            viewStack.selectedIndex = 0;
            sendPopupEvent(NORMAL_SUMMON_RUN, {summon:summonUnit});
            return;
        }// end function

        private function _NormalSummonWindow_ClassFactory4_i() : ClassFactory
        {
            var _loc_1:* = new ClassFactory();
            itemRenderer0 = _loc_1;
            _loc_1.generator = NormalSummonWindow_inlineComponent4;
            _loc_1.properties = {outerDocument:this};
            return _loc_1;
        }// end function

        public function ___NormalSummonWindow_Image3_click(event:MouseEvent) : void
        {
            subSelectIndex();
            return;
        }// end function

        public function getMaterial(param1:int) : MaterialVO
        {
            var _loc_2:MaterialVO = null;
            for each (_loc_2 in resourceVO.materials)
            {
                
                if (_loc_2.masterVO.masterId == param1)
                {
                    break;
                }
            }
            return _loc_2;
        }// end function

        private function get _swf_cancel() : MovieClipLoaderAsset
        {
            return this._1655845770_swf_cancel;
        }// end function

        private function _NormalSummonWindow_DataGridColumn1_i() : DataGridColumn
        {
            var _loc_1:* = new DataGridColumn();
            _NormalSummonWindow_DataGridColumn1 = _loc_1;
            _loc_1.width = 52;
            _loc_1.setStyle("textAlign", "center");
            BindingManager.executeBindings(this, "_NormalSummonWindow_DataGridColumn1", _NormalSummonWindow_DataGridColumn1);
            return _loc_1;
        }// end function

        public function get sphereRenderer() : ClassFactory
        {
            return this._597037136sphereRenderer;
        }// end function

        private function _NormalSummonWindow_DataGridColumn5_i() : DataGridColumn
        {
            var _loc_1:* = new DataGridColumn();
            _NormalSummonWindow_DataGridColumn5 = _loc_1;
            _loc_1.setStyle("textAlign", "center");
            BindingManager.executeBindings(this, "_NormalSummonWindow_DataGridColumn5", _NormalSummonWindow_DataGridColumn5);
            return _loc_1;
        }// end function

        public function get detailTutorialRenderer() : ClassFactory
        {
            return this._1768172722detailTutorialRenderer;
        }// end function

        public function getItemName(param1:Object, param2:int = 99) : String
        {
            if (param2 == 99)
            {
                return param1 ? (param1.nameLabel + "×" + param1.quantity.toString()) : ("");
            }
            return param1.items.getItemAt(param2) ? (param1.items.getItemAt(param2).nameLabel + "×" + param1.items.getItemAt(param2).quantity.toString()) : ("");
        }// end function

        private function _NormalSummonWindow_DataGridColumn9_i() : DataGridColumn
        {
            var _loc_1:* = new DataGridColumn();
            _NormalSummonWindow_DataGridColumn9 = _loc_1;
            _loc_1.dataField = "name";
            _loc_1.width = 77;
            _loc_1.setStyle("textAlign", "center");
            BindingManager.executeBindings(this, "_NormalSummonWindow_DataGridColumn9", _NormalSummonWindow_DataGridColumn9);
            return _loc_1;
        }// end function

        private function _NormalSummonWindow_DataGridColumn10_i() : DataGridColumn
        {
            var _loc_1:* = new DataGridColumn();
            _NormalSummonWindow_DataGridColumn10 = _loc_1;
            _loc_1.dataField = "rank";
            _loc_1.width = 50;
            _loc_1.setStyle("textAlign", "center");
            BindingManager.executeBindings(this, "_NormalSummonWindow_DataGridColumn10", _NormalSummonWindow_DataGridColumn10);
            return _loc_1;
        }// end function

        private function set _swf_summon(param1:MovieClipLoaderAsset) : void
        {
            var _loc_2:* = this._1179328803_swf_summon;
            if (_loc_2 !== param1)
            {
                this._1179328803_swf_summon = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "_swf_summon", _loc_2, param1));
            }
            return;
        }// end function

        private function _NormalSummonWindow_DataGridColumn14_i() : DataGridColumn
        {
            var _loc_1:* = new DataGridColumn();
            _NormalSummonWindow_DataGridColumn14 = _loc_1;
            _loc_1.setStyle("textAlign", "center");
            BindingManager.executeBindings(this, "_NormalSummonWindow_DataGridColumn14", _NormalSummonWindow_DataGridColumn14);
            return _loc_1;
        }// end function

        public function showTutMark(param1:Object) : Boolean
        {
            var _loc_2:* = summon_data_list_tutorial.dataProvider.getItemIndex(param1);
            if (_loc_2 == 0 && _tutMarkNormalSummonVisible)
            {
                return visible;
            }
            return false;
        }// end function

        private function addLeyLineEffect(param1:int) : int
        {
            return param1 - Math.ceil(param1 * 0.1);
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

        public function set viewStack(param1:ViewStack) : void
        {
            var _loc_2:* = this._1584105757viewStack;
            if (_loc_2 !== param1)
            {
                this._1584105757viewStack = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "viewStack", _loc_2, param1));
            }
            return;
        }// end function

        private function closeNormalSummon() : void
        {
            viewStack.selectedIndex = 0;
            sendEvent(NORMAL_SUMMON_END);
            return;
        }// end function

        private function _NormalSummonWindow_ClassFactory3_i() : ClassFactory
        {
            var _loc_1:* = new ClassFactory();
            sphereRenderer = _loc_1;
            _loc_1.generator = NormalSummonWindow_inlineComponent3;
            _loc_1.properties = {outerDocument:this};
            return _loc_1;
        }// end function

        private function set _swf_back(param1:MovieClipLoaderAsset) : void
        {
            var _loc_2:* = this._100077085_swf_back;
            if (_loc_2 !== param1)
            {
                this._100077085_swf_back = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "_swf_back", _loc_2, param1));
            }
            return;
        }// end function

        private function _NormalSummonWindow_bindingsSetup() : Array
        {
            var binding:Binding;
            var result:Array;
            binding = new Binding(this, function () : String
            {
                var _loc_1:* = Utils.i18n("normalSummonWindowNormalSummon");
                var _loc_2:* = _loc_1 == undefined ? (null) : (String(_loc_1));
                return _loc_2;
            }// end function
            , function (param1:String) : void
            {
                _NormalSummonWindow_Text1.text = param1;
                return;
            }// end function
            , "_NormalSummonWindow_Text1.text");
            result[0] = binding;
            binding = new Binding(this, function () : String
            {
                var _loc_1:* = Utils.i18n("normalSummonWindowTitle");
                var _loc_2:* = _loc_1 == undefined ? (null) : (String(_loc_1));
                return _loc_2;
            }// end function
            , function (param1:String) : void
            {
                _NormalSummonWindow_Text2.text = param1;
                return;
            }// end function
            , "_NormalSummonWindow_Text2.text");
            result[1] = binding;
            binding = new Binding(this, function () : Object
            {
                return summonType;
            }// end function
            , function (param1:Object) : void
            {
                summon_data_list.dataProvider = param1;
                return;
            }// end function
            , "summon_data_list.dataProvider");
            result[2] = binding;
            binding = new Binding(this, function () : Boolean
            {
                return nonTutVisible;
            }// end function
            , function (param1:Boolean) : void
            {
                summon_data_list.visible = param1;
                return;
            }// end function
            , "summon_data_list.visible");
            result[3] = binding;
            binding = new Binding(this, function () : String
            {
                var _loc_1:* = Utils.i18n("generalSummon");
                var _loc_2:* = _loc_1 == undefined ? (null) : (String(_loc_1));
                return _loc_2;
            }// end function
            , function (param1:String) : void
            {
                _NormalSummonWindow_DataGridColumn1.headerText = param1;
                return;
            }// end function
            , "_NormalSummonWindow_DataGridColumn1.headerText");
            result[4] = binding;
            binding = new Binding(this, function () : IFactory
            {
                return detailRenderer;
            }// end function
            , function (param1:IFactory) : void
            {
                _NormalSummonWindow_DataGridColumn1.itemRenderer = param1;
                return;
            }// end function
            , "_NormalSummonWindow_DataGridColumn1.itemRenderer");
            result[5] = binding;
            binding = new Binding(this, function () : String
            {
                var _loc_1:* = Utils.i18n("generalJob");
                var _loc_2:* = _loc_1 == undefined ? (null) : (String(_loc_1));
                return _loc_2;
            }// end function
            , function (param1:String) : void
            {
                _NormalSummonWindow_DataGridColumn2.headerText = param1;
                return;
            }// end function
            , "_NormalSummonWindow_DataGridColumn2.headerText");
            result[6] = binding;
            binding = new Binding(this, function () : String
            {
                var _loc_1:* = Utils.i18n("generalRank");
                var _loc_2:* = _loc_1 == undefined ? (null) : (String(_loc_1));
                return _loc_2;
            }// end function
            , function (param1:String) : void
            {
                _NormalSummonWindow_DataGridColumn3.headerText = param1;
                return;
            }// end function
            , "_NormalSummonWindow_DataGridColumn3.headerText");
            result[7] = binding;
            binding = new Binding(this, function () : String
            {
                var _loc_1:* = Utils.i18n("generalSoulSphere");
                var _loc_2:* = _loc_1 == undefined ? (null) : (String(_loc_1));
                return _loc_2;
            }// end function
            , function (param1:String) : void
            {
                _NormalSummonWindow_DataGridColumn4.headerText = param1;
                return;
            }// end function
            , "_NormalSummonWindow_DataGridColumn4.headerText");
            result[8] = binding;
            binding = new Binding(this, function () : IFactory
            {
                return sphereRenderer;
            }// end function
            , function (param1:IFactory) : void
            {
                _NormalSummonWindow_DataGridColumn4.itemRenderer = param1;
                return;
            }// end function
            , "_NormalSummonWindow_DataGridColumn4.itemRenderer");
            result[9] = binding;
            binding = new Binding(this, function () : String
            {
                var _loc_1:* = Utils.i18n("generalMaterial");
                var _loc_2:* = _loc_1 == undefined ? (null) : (String(_loc_1));
                return _loc_2;
            }// end function
            , function (param1:String) : void
            {
                _NormalSummonWindow_DataGridColumn5.headerText = param1;
                return;
            }// end function
            , "_NormalSummonWindow_DataGridColumn5.headerText");
            result[10] = binding;
            binding = new Binding(this, function () : IFactory
            {
                return itemRenderer0;
            }// end function
            , function (param1:IFactory) : void
            {
                _NormalSummonWindow_DataGridColumn5.itemRenderer = param1;
                return;
            }// end function
            , "_NormalSummonWindow_DataGridColumn5.itemRenderer");
            result[11] = binding;
            binding = new Binding(this, function () : String
            {
                var _loc_1:* = Utils.i18n("generalMaterial");
                var _loc_2:* = _loc_1 == undefined ? (null) : (String(_loc_1));
                return _loc_2;
            }// end function
            , function (param1:String) : void
            {
                _NormalSummonWindow_DataGridColumn6.headerText = param1;
                return;
            }// end function
            , "_NormalSummonWindow_DataGridColumn6.headerText");
            result[12] = binding;
            binding = new Binding(this, function () : IFactory
            {
                return itemRenderer1;
            }// end function
            , function (param1:IFactory) : void
            {
                _NormalSummonWindow_DataGridColumn6.itemRenderer = param1;
                return;
            }// end function
            , "_NormalSummonWindow_DataGridColumn6.itemRenderer");
            result[13] = binding;
            binding = new Binding(this, function () : String
            {
                var _loc_1:* = Utils.i18n("generalMaterial");
                var _loc_2:* = _loc_1 == undefined ? (null) : (String(_loc_1));
                return _loc_2;
            }// end function
            , function (param1:String) : void
            {
                _NormalSummonWindow_DataGridColumn7.headerText = param1;
                return;
            }// end function
            , "_NormalSummonWindow_DataGridColumn7.headerText");
            result[14] = binding;
            binding = new Binding(this, function () : IFactory
            {
                return itemRenderer2;
            }// end function
            , function (param1:IFactory) : void
            {
                _NormalSummonWindow_DataGridColumn7.itemRenderer = param1;
                return;
            }// end function
            , "_NormalSummonWindow_DataGridColumn7.itemRenderer");
            result[15] = binding;
            binding = new Binding(this, function () : Object
            {
                return summonType;
            }// end function
            , function (param1:Object) : void
            {
                summon_data_list_tutorial.dataProvider = param1;
                return;
            }// end function
            , "summon_data_list_tutorial.dataProvider");
            result[16] = binding;
            binding = new Binding(this, function () : Boolean
            {
                return tutVisible;
            }// end function
            , function (param1:Boolean) : void
            {
                summon_data_list_tutorial.visible = param1;
                return;
            }// end function
            , "summon_data_list_tutorial.visible");
            result[17] = binding;
            binding = new Binding(this, function () : String
            {
                var _loc_1:* = Utils.i18n("generalSummon");
                var _loc_2:* = _loc_1 == undefined ? (null) : (String(_loc_1));
                return _loc_2;
            }// end function
            , function (param1:String) : void
            {
                _NormalSummonWindow_DataGridColumn8.headerText = param1;
                return;
            }// end function
            , "_NormalSummonWindow_DataGridColumn8.headerText");
            result[18] = binding;
            binding = new Binding(this, function () : IFactory
            {
                return detailTutorialRenderer;
            }// end function
            , function (param1:IFactory) : void
            {
                _NormalSummonWindow_DataGridColumn8.itemRenderer = param1;
                return;
            }// end function
            , "_NormalSummonWindow_DataGridColumn8.itemRenderer");
            result[19] = binding;
            binding = new Binding(this, function () : String
            {
                var _loc_1:* = Utils.i18n("generalJob");
                var _loc_2:* = _loc_1 == undefined ? (null) : (String(_loc_1));
                return _loc_2;
            }// end function
            , function (param1:String) : void
            {
                _NormalSummonWindow_DataGridColumn9.headerText = param1;
                return;
            }// end function
            , "_NormalSummonWindow_DataGridColumn9.headerText");
            result[20] = binding;
            binding = new Binding(this, function () : String
            {
                var _loc_1:* = Utils.i18n("generalRank");
                var _loc_2:* = _loc_1 == undefined ? (null) : (String(_loc_1));
                return _loc_2;
            }// end function
            , function (param1:String) : void
            {
                _NormalSummonWindow_DataGridColumn10.headerText = param1;
                return;
            }// end function
            , "_NormalSummonWindow_DataGridColumn10.headerText");
            result[21] = binding;
            binding = new Binding(this, function () : String
            {
                var _loc_1:* = Utils.i18n("generalSoulSphere");
                var _loc_2:* = _loc_1 == undefined ? (null) : (String(_loc_1));
                return _loc_2;
            }// end function
            , function (param1:String) : void
            {
                _NormalSummonWindow_DataGridColumn11.headerText = param1;
                return;
            }// end function
            , "_NormalSummonWindow_DataGridColumn11.headerText");
            result[22] = binding;
            binding = new Binding(this, function () : IFactory
            {
                return sphereRenderer;
            }// end function
            , function (param1:IFactory) : void
            {
                _NormalSummonWindow_DataGridColumn11.itemRenderer = param1;
                return;
            }// end function
            , "_NormalSummonWindow_DataGridColumn11.itemRenderer");
            result[23] = binding;
            binding = new Binding(this, function () : String
            {
                var _loc_1:* = Utils.i18n("generalMaterial");
                var _loc_2:* = _loc_1 == undefined ? (null) : (String(_loc_1));
                return _loc_2;
            }// end function
            , function (param1:String) : void
            {
                _NormalSummonWindow_DataGridColumn12.headerText = param1;
                return;
            }// end function
            , "_NormalSummonWindow_DataGridColumn12.headerText");
            result[24] = binding;
            binding = new Binding(this, function () : IFactory
            {
                return itemRenderer0;
            }// end function
            , function (param1:IFactory) : void
            {
                _NormalSummonWindow_DataGridColumn12.itemRenderer = param1;
                return;
            }// end function
            , "_NormalSummonWindow_DataGridColumn12.itemRenderer");
            result[25] = binding;
            binding = new Binding(this, function () : String
            {
                var _loc_1:* = Utils.i18n("generalMaterial");
                var _loc_2:* = _loc_1 == undefined ? (null) : (String(_loc_1));
                return _loc_2;
            }// end function
            , function (param1:String) : void
            {
                _NormalSummonWindow_DataGridColumn13.headerText = param1;
                return;
            }// end function
            , "_NormalSummonWindow_DataGridColumn13.headerText");
            result[26] = binding;
            binding = new Binding(this, function () : IFactory
            {
                return itemRenderer1;
            }// end function
            , function (param1:IFactory) : void
            {
                _NormalSummonWindow_DataGridColumn13.itemRenderer = param1;
                return;
            }// end function
            , "_NormalSummonWindow_DataGridColumn13.itemRenderer");
            result[27] = binding;
            binding = new Binding(this, function () : String
            {
                var _loc_1:* = Utils.i18n("generalMaterial");
                var _loc_2:* = _loc_1 == undefined ? (null) : (String(_loc_1));
                return _loc_2;
            }// end function
            , function (param1:String) : void
            {
                _NormalSummonWindow_DataGridColumn14.headerText = param1;
                return;
            }// end function
            , "_NormalSummonWindow_DataGridColumn14.headerText");
            result[28] = binding;
            binding = new Binding(this, function () : IFactory
            {
                return itemRenderer2;
            }// end function
            , function (param1:IFactory) : void
            {
                _NormalSummonWindow_DataGridColumn14.itemRenderer = param1;
                return;
            }// end function
            , "_NormalSummonWindow_DataGridColumn14.itemRenderer");
            result[29] = binding;
            binding = new Binding(this, function () : Object
            {
                return _swf_cancel;
            }// end function
            , function (param1:Object) : void
            {
                _NormalSummonWindow_Image1.source = param1;
                return;
            }// end function
            , "_NormalSummonWindow_Image1.source");
            result[30] = binding;
            binding = new Binding(this, function () : String
            {
                var _loc_1:* = Utils.i18n("normalSummonCreateConfirm1", summonUnit.name);
                var _loc_2:* = _loc_1 == undefined ? (null) : (String(_loc_1));
                return _loc_2;
            }// end function
            , function (param1:String) : void
            {
                _NormalSummonWindow_Text3.text = param1;
                return;
            }// end function
            , "_NormalSummonWindow_Text3.text");
            result[31] = binding;
            binding = new Binding(this, function () : String
            {
                var _loc_1:* = Utils.i18n("normalSummonCreateConfirm2", getSoulCrystalSize(summonUnit.soulCrystal), getItemNamePlus(summonUnit));
                var _loc_2:* = _loc_1 == undefined ? (null) : (String(_loc_1));
                return _loc_2;
            }// end function
            , function (param1:String) : void
            {
                _NormalSummonWindow_Text4.text = param1;
                return;
            }// end function
            , "_NormalSummonWindow_Text4.text");
            result[32] = binding;
            binding = new Binding(this, function () : String
            {
                var _loc_1:* = Utils.i18n("normalSummonCreateConfirm3");
                var _loc_2:* = _loc_1 == undefined ? (null) : (String(_loc_1));
                return _loc_2;
            }// end function
            , function (param1:String) : void
            {
                _NormalSummonWindow_Text5.text = param1;
                return;
            }// end function
            , "_NormalSummonWindow_Text5.text");
            result[33] = binding;
            binding = new Binding(this, function () : Object
            {
                return _swf_summon;
            }// end function
            , function (param1:Object) : void
            {
                _NormalSummonWindow_Image2.source = param1;
                return;
            }// end function
            , "_NormalSummonWindow_Image2.source");
            result[34] = binding;
            binding = new Binding(this, function () : Object
            {
                return _swf_back;
            }// end function
            , function (param1:Object) : void
            {
                _NormalSummonWindow_Image3.source = param1;
                return;
            }// end function
            , "_NormalSummonWindow_Image3.source");
            result[35] = binding;
            return result;
        }// end function

        public function setSelectButton(param1:Object) : Class
        {
            var _loc_2:int = 0;
            if (param1.items.length < 3)
            {
                _loc_2 = 0;
                while (_loc_2 < param1.items.length)
                {
                    
                    if (isLack(param1.items.getItemAt(_loc_2)))
                    {
                        return selectOffButton;
                    }
                    _loc_2++;
                }
                if (isLackSoulCrystal(param1))
                {
                    return selectOffButton;
                }
                return selectButton;
            }
            return isLackSoulCrystal(param1) || isLack(param1.items.getItemAt(0)) || isLack(param1.items.getItemAt(1)) || isLack(param1.items.getItemAt(2)) ? (selectOffButton) : (selectButton);
        }// end function

        private function get summonType() : Array
        {
            return this._80473019summonType;
        }// end function

        public function setTutMarkVisible(param1:Boolean) : void
        {
            if (!param1)
            {
                tutVisible = true;
                nonTutVisible = false;
                _tutMarkNormalSummonVisible = true;
            }
            else
            {
                _tutMarkNormalSummonVisible = false;
                tutVisible = false;
                nonTutVisible = true;
            }
            return;
        }// end function

        private function subSelectIndex() : void
        {
            viewStack.selectedIndex = 0;
            return;
        }// end function

        public function addSelectIndex(param1:Object) : void
        {
            var _loc_2:Object = null;
            if (isLackSoulCrystal(param1))
            {
                return;
            }
            for each (_loc_2 in param1.items)
            {
                
                if (isLack(_loc_2))
                {
                    return;
                }
            }
            viewStack.selectedIndex = 1;
            summonUnit = new Object();
            summonUnit = param1;
            return;
        }// end function

        public function getSoulCrystalColor(param1:Object) : uint
        {
            return isLackSoulCrystal(param1) ? (15073298) : (0);
        }// end function

        private function get tutVisible() : Boolean
        {
            return this._94427871tutVisible;
        }// end function

        public function get viewStack() : ViewStack
        {
            return this._1584105757viewStack;
        }// end function

        private function get _swf_summon() : MovieClipLoaderAsset
        {
            return this._1179328803_swf_summon;
        }// end function

        public function isLack(param1:Object) : Boolean
        {
            return param1 && param1.quantity > getMaterial(param1.itemId).quantity;
        }// end function

        private function get _swf_back() : MovieClipLoaderAsset
        {
            return this._100077085_swf_back;
        }// end function

        private function _NormalSummonWindow_DataGridColumn4_i() : DataGridColumn
        {
            var _loc_1:* = new DataGridColumn();
            _NormalSummonWindow_DataGridColumn4 = _loc_1;
            _loc_1.width = 35;
            _loc_1.setStyle("textAlign", "center");
            BindingManager.executeBindings(this, "_NormalSummonWindow_DataGridColumn4", _NormalSummonWindow_DataGridColumn4);
            return _loc_1;
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

        public function set itemRenderer2(param1:ClassFactory) : void
        {
            var _loc_2:* = this._153796100itemRenderer2;
            if (_loc_2 !== param1)
            {
                this._153796100itemRenderer2 = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "itemRenderer2", _loc_2, param1));
            }
            return;
        }// end function

        public function get itemRenderer2() : ClassFactory
        {
            return this._153796100itemRenderer2;
        }// end function

        public function set itemRenderer1(param1:ClassFactory) : void
        {
            var _loc_2:* = this._153796101itemRenderer1;
            if (_loc_2 !== param1)
            {
                this._153796101itemRenderer1 = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "itemRenderer1", _loc_2, param1));
            }
            return;
        }// end function

        public static function set watcherSetupUtil(param1:IWatcherSetupUtil) : void
        {
            NormalSummonWindow._watcherSetupUtil = param1;
            return;
        }// end function

    }
}
