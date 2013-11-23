package com.kbmj.viking.view.home
{
    import com.kbmj.viking.lib.*;
    import flash.utils.*;
    import mx.binding.*;
    import mx.containers.*;
    import mx.controls.*;
    import mx.controls.dataGridClasses.*;
    import mx.core.*;
    import mx.events.*;

    public class ButtonMouseOver extends Box implements IBindingClient, IToolTip
    {
        private var _1306120452constructionName:String;
        private var _250033241abilityColor:uint;
        private var _1961129322_abilitiesText:String;
        var _watchers:Array;
        private var _3178592gold:int;
        private var _2039338883_daysText:String;
        private var _363613165data_list:DataGrid;
        public var _ButtonMouseOver_Text3:Text;
        public var _ButtonMouseOver_Text4:Text;
        public var _ButtonMouseOver_Text5:Text;
        public var _ButtonMouseOver_Text2:Text;
        public var _ButtonMouseOver_DataGridColumn1:DataGridColumn;
        public var _ButtonMouseOver_Text1:Text;
        public var _ButtonMouseOver_DataGridColumn2:DataGridColumn;
        var _bindingsBeginWithWord:Object;
        var _bindingsByDestination:Object;
        public var _ButtonMouseOver_Label1:Label;
        private var _681132076materials:Array;
        var _bindings:Array;
        private var _documentDescriptor_:UIComponentDescriptor;
        private var _1311442205goldColor:uint;
        private static var _watcherSetupUtil:IWatcherSetupUtil;
        private static const ABILITY_LABELS:Object = {strength:Utils.i18n("generalStrength"), intelligence:Utils.i18n("generalIntelligence"), tech:Utils.i18n("generalTech"), agility:Utils.i18n("generalAgility"), defense:Utils.i18n("generalDefense"), luck:Utils.i18n("generalLuck")};

        public function ButtonMouseOver()
        {
            _documentDescriptor_ = new UIComponentDescriptor({type:Box, propertiesFactory:function () : Object
            {
                return {width:200, height:220, childDescriptors:[new UIComponentDescriptor({type:Canvas, propertiesFactory:function () : Object
                {
                    return {childDescriptors:[new UIComponentDescriptor({type:Label, id:"_ButtonMouseOver_Label1", propertiesFactory:function () : Object
                    {
                        return {styleName:"BuildingButtonMouseOverTitle"};
                    }// end function
                    }), new UIComponentDescriptor({type:Box, stylesFactory:function () : void
                    {
                        this.horizontalAlign = "right";
                        return;
                    }// end function
                    , propertiesFactory:function () : Object
                    {
                        return {x:20, y:35, width:175, childDescriptors:[new UIComponentDescriptor({type:Text, id:"_ButtonMouseOver_Text1", propertiesFactory:function () : Object
                        {
                            return {styleName:"BuildingPrice"};
                        }// end function
                        })]};
                    }// end function
                    }), new UIComponentDescriptor({type:DataGrid, id:"data_list", propertiesFactory:function () : Object
                    {
                        return {styleName:"BuildingDetail", x:5, y:63, width:190, height:100, rowCount:3, sortableColumns:false, columns:[_ButtonMouseOver_DataGridColumn1_i(), _ButtonMouseOver_DataGridColumn2_i()]};
                    }// end function
                    }), new UIComponentDescriptor({type:HBox, stylesFactory:function () : void
                    {
                        this.horizontalGap = 1;
                        return;
                    }// end function
                    , propertiesFactory:function () : Object
                    {
                        return {styleName:"SkillAndTime", x:5, y:170, childDescriptors:[new UIComponentDescriptor({type:Text, id:"_ButtonMouseOver_Text2"}), new UIComponentDescriptor({type:Text, id:"_ButtonMouseOver_Text3"})]};
                    }// end function
                    }), new UIComponentDescriptor({type:HBox, stylesFactory:function () : void
                    {
                        this.horizontalGap = 1;
                        return;
                    }// end function
                    , propertiesFactory:function () : Object
                    {
                        return {styleName:"SkillAndTime", x:5, y:190, childDescriptors:[new UIComponentDescriptor({type:Text, id:"_ButtonMouseOver_Text4"}), new UIComponentDescriptor({type:Text, id:"_ButtonMouseOver_Text5"})]};
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
            this.styleName = "BuildingButtonMouseOver";
            this.enabled = true;
            this.width = 200;
            this.height = 220;
            return;
        }// end function

        private function get _daysText() : String
        {
            return this._2039338883_daysText;
        }// end function

        private function set _daysText(param1:String) : void
        {
            var _loc_2:* = this._2039338883_daysText;
            if (_loc_2 !== param1)
            {
                this._2039338883_daysText = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "_daysText", _loc_2, param1));
            }
            return;
        }// end function

        override public function initialize() : void
        {
            var target:ButtonMouseOver;
            var watcherSetupUtilClass:Object;
            .mx_internal::setDocumentDescriptor(_documentDescriptor_);
            var bindings:* = _ButtonMouseOver_bindingsSetup();
            var watchers:Array;
            target;
            if (_watcherSetupUtil == null)
            {
                watcherSetupUtilClass = getDefinitionByName("_com_kbmj_viking_view_home_ButtonMouseOverWatcherSetupUtil");
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

        public function get data_list() : DataGrid
        {
            return this._363613165data_list;
        }// end function

        private function get _abilitiesText() : String
        {
            return this._1961129322_abilitiesText;
        }// end function

        private function _ButtonMouseOver_DataGridColumn1_i() : DataGridColumn
        {
            var _loc_1:* = new DataGridColumn();
            _ButtonMouseOver_DataGridColumn1 = _loc_1;
            _loc_1.dataField = "vo.nameLabel";
            _loc_1.width = 90;
            _loc_1.setStyle("textAlign", "left");
            BindingManager.executeBindings(this, "_ButtonMouseOver_DataGridColumn1", _ButtonMouseOver_DataGridColumn1);
            return _loc_1;
        }// end function

        public function set abilities(param1:Object) : void
        {
            var _loc_2:String = null;
            _abilitiesText = "";
            for (_loc_2 in param1)
            {
                
                _abilitiesText = _abilitiesText + (ABILITY_LABELS[_loc_2] + ":" + param1[_loc_2] + "\n");
            }
            return;
        }// end function

        public function getColor(param1:Object) : uint
        {
            return param1.isShort ? (15073298) : (0);
        }// end function

        public function set days(param1:int) : void
        {
            _daysText = param1 + Utils.i18n("generalMinuts");
            return;
        }// end function

        public function set abilityColor(param1:uint) : void
        {
            var _loc_2:* = this._250033241abilityColor;
            if (_loc_2 !== param1)
            {
                this._250033241abilityColor = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "abilityColor", _loc_2, param1));
            }
            return;
        }// end function

        private function _ButtonMouseOver_bindingsSetup() : Array
        {
            var binding:Binding;
            var result:Array;
            binding = new Binding(this, function () : String
            {
                var _loc_1:* = constructionName;
                var _loc_2:* = _loc_1 == undefined ? (null) : (String(_loc_1));
                return _loc_2;
            }// end function
            , function (param1:String) : void
            {
                _ButtonMouseOver_Label1.text = param1;
                return;
            }// end function
            , "_ButtonMouseOver_Label1.text");
            result[0] = binding;
            binding = new Binding(this, function () : uint
            {
                return goldColor;
            }// end function
            , function (param1:uint) : void
            {
                _ButtonMouseOver_Text1.setStyle("color", param1);
                return;
            }// end function
            , "_ButtonMouseOver_Text1.color");
            result[1] = binding;
            binding = new Binding(this, function () : String
            {
                var _loc_1:* = gold + " Gold";
                var _loc_2:* = _loc_1 == undefined ? (null) : (String(_loc_1));
                return _loc_2;
            }// end function
            , function (param1:String) : void
            {
                _ButtonMouseOver_Text1.text = param1;
                return;
            }// end function
            , "_ButtonMouseOver_Text1.text");
            result[2] = binding;
            binding = new Binding(this, function () : Object
            {
                return materials;
            }// end function
            , function (param1:Object) : void
            {
                data_list.dataProvider = param1;
                return;
            }// end function
            , "data_list.dataProvider");
            result[3] = binding;
            binding = new Binding(this, function () : String
            {
                var _loc_1:* = Utils.i18n("localize88");
                var _loc_2:* = _loc_1 == undefined ? (null) : (String(_loc_1));
                return _loc_2;
            }// end function
            , function (param1:String) : void
            {
                _ButtonMouseOver_DataGridColumn1.headerText = param1;
                return;
            }// end function
            , "_ButtonMouseOver_DataGridColumn1.headerText");
            result[4] = binding;
            binding = new Binding(this, function () : String
            {
                var _loc_1:* = Utils.i18n("generalQuantity");
                var _loc_2:* = _loc_1 == undefined ? (null) : (String(_loc_1));
                return _loc_2;
            }// end function
            , function (param1:String) : void
            {
                _ButtonMouseOver_DataGridColumn2.headerText = param1;
                return;
            }// end function
            , "_ButtonMouseOver_DataGridColumn2.headerText");
            result[5] = binding;
            binding = new Binding(this, function () : String
            {
                var _loc_1:* = Utils.i18n("localize89") + ":";
                var _loc_2:* = _loc_1 == undefined ? (null) : (String(_loc_1));
                return _loc_2;
            }// end function
            , function (param1:String) : void
            {
                _ButtonMouseOver_Text2.text = param1;
                return;
            }// end function
            , "_ButtonMouseOver_Text2.text");
            result[6] = binding;
            binding = new Binding(this, function () : uint
            {
                return abilityColor;
            }// end function
            , function (param1:uint) : void
            {
                _ButtonMouseOver_Text3.setStyle("color", param1);
                return;
            }// end function
            , "_ButtonMouseOver_Text3.color");
            result[7] = binding;
            binding = new Binding(this, function () : String
            {
                var _loc_1:* = _abilitiesText;
                var _loc_2:* = _loc_1 == undefined ? (null) : (String(_loc_1));
                return _loc_2;
            }// end function
            , function (param1:String) : void
            {
                _ButtonMouseOver_Text3.text = param1;
                return;
            }// end function
            , "_ButtonMouseOver_Text3.text");
            result[8] = binding;
            binding = new Binding(this, function () : String
            {
                var _loc_1:* = Utils.i18n("confirmBuildTime") + ":";
                var _loc_2:* = _loc_1 == undefined ? (null) : (String(_loc_1));
                return _loc_2;
            }// end function
            , function (param1:String) : void
            {
                _ButtonMouseOver_Text4.text = param1;
                return;
            }// end function
            , "_ButtonMouseOver_Text4.text");
            result[9] = binding;
            binding = new Binding(this, function () : String
            {
                var _loc_1:* = _daysText;
                var _loc_2:* = _loc_1 == undefined ? (null) : (String(_loc_1));
                return _loc_2;
            }// end function
            , function (param1:String) : void
            {
                _ButtonMouseOver_Text5.text = param1;
                return;
            }// end function
            , "_ButtonMouseOver_Text5.text");
            result[10] = binding;
            return result;
        }// end function

        public function set data_list(param1:DataGrid) : void
        {
            var _loc_2:* = this._363613165data_list;
            if (_loc_2 !== param1)
            {
                this._363613165data_list = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "data_list", _loc_2, param1));
            }
            return;
        }// end function

        public function set gold(param1:int) : void
        {
            var _loc_2:* = this._3178592gold;
            if (_loc_2 !== param1)
            {
                this._3178592gold = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "gold", _loc_2, param1));
            }
            return;
        }// end function

        public function get text() : String
        {
            return null;
        }// end function

        public function set goldColor(param1:uint) : void
        {
            var _loc_2:* = this._1311442205goldColor;
            if (_loc_2 !== param1)
            {
                this._1311442205goldColor = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "goldColor", _loc_2, param1));
            }
            return;
        }// end function

        private function set _abilitiesText(param1:String) : void
        {
            var _loc_2:* = this._1961129322_abilitiesText;
            if (_loc_2 !== param1)
            {
                this._1961129322_abilitiesText = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "_abilitiesText", _loc_2, param1));
            }
            return;
        }// end function

        private function _ButtonMouseOver_bindingExprs() : void
        {
            var _loc_1:* = undefined;
            _loc_1 = constructionName;
            _loc_1 = goldColor;
            _loc_1 = gold + " Gold";
            _loc_1 = materials;
            _loc_1 = Utils.i18n("localize88");
            _loc_1 = Utils.i18n("generalQuantity");
            _loc_1 = Utils.i18n("localize89") + ":";
            _loc_1 = abilityColor;
            _loc_1 = _abilitiesText;
            _loc_1 = Utils.i18n("confirmBuildTime") + ":";
            _loc_1 = _daysText;
            return;
        }// end function

        public function set materials(param1:Array) : void
        {
            var _loc_2:* = this._681132076materials;
            if (_loc_2 !== param1)
            {
                this._681132076materials = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "materials", _loc_2, param1));
            }
            return;
        }// end function

        public function get materials() : Array
        {
            return this._681132076materials;
        }// end function

        private function _ButtonMouseOver_DataGridColumn2_i() : DataGridColumn
        {
            var _loc_1:* = new DataGridColumn();
            _ButtonMouseOver_DataGridColumn2 = _loc_1;
            _loc_1.dataField = "required";
            _loc_1.width = 60;
            _loc_1.itemRenderer = _ButtonMouseOver_ClassFactory1_c();
            BindingManager.executeBindings(this, "_ButtonMouseOver_DataGridColumn2", _ButtonMouseOver_DataGridColumn2);
            return _loc_1;
        }// end function

        public function set text(param1:String) : void
        {
            return;
        }// end function

        public function get goldColor() : uint
        {
            return this._1311442205goldColor;
        }// end function

        public function get gold() : int
        {
            return this._3178592gold;
        }// end function

        private function _ButtonMouseOver_ClassFactory1_c() : ClassFactory
        {
            var _loc_1:* = new ClassFactory();
            _loc_1.generator = ButtonMouseOver_inlineComponent1;
            _loc_1.properties = {outerDocument:this};
            return _loc_1;
        }// end function

        public function get abilityColor() : uint
        {
            return this._250033241abilityColor;
        }// end function

        public function set constructionName(param1:String) : void
        {
            var _loc_2:* = this._1306120452constructionName;
            if (_loc_2 !== param1)
            {
                this._1306120452constructionName = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "constructionName", _loc_2, param1));
            }
            return;
        }// end function

        public function get constructionName() : String
        {
            return this._1306120452constructionName;
        }// end function

        public static function set watcherSetupUtil(param1:IWatcherSetupUtil) : void
        {
            ButtonMouseOver._watcherSetupUtil = param1;
            return;
        }// end function

    }
}
