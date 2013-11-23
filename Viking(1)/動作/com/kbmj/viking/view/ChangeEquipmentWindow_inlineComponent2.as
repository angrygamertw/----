package com.kbmj.viking.view
{
    import flash.events.*;
    import flash.utils.*;
    import mx.binding.*;
    import mx.containers.*;
    import mx.controls.*;
    import mx.core.*;
    import mx.events.*;
    import mx.styles.*;

    public class ChangeEquipmentWindow_inlineComponent2 extends HBox implements IBindingClient
    {
        var _bindingsByDestination:Object;
        var _bindingsBeginWithWord:Object;
        var _watchers:Array;
        public var _ChangeEquipmentWindow_inlineComponent2_Image2:Image;
        private var _88844982outerDocument:ChangeEquipmentWindow;
        public var _ChangeEquipmentWindow_inlineComponent2_Label1:Label;
        public var _ChangeEquipmentWindow_inlineComponent2_Image1:Image;
        var _bindings:Array;
        private var _documentDescriptor_:UIComponentDescriptor;
        private var _embed_mxml__swf_home_buttons_button_list_wear_swf_1484374793:Class;
        private static var _watcherSetupUtil:IWatcherSetupUtil;

        public function ChangeEquipmentWindow_inlineComponent2()
        {
            _documentDescriptor_ = new UIComponentDescriptor({type:HBox, propertiesFactory:function () : Object
            {
                return {childDescriptors:[new UIComponentDescriptor({type:HBox, stylesFactory:function () : void
                {
                    this.horizontalAlign = "right";
                    return;
                }// end function
                , propertiesFactory:function () : Object
                {
                    return {width:78, childDescriptors:[new UIComponentDescriptor({type:Image, id:"_ChangeEquipmentWindow_inlineComponent2_Image1", propertiesFactory:function () : Object
                    {
                        return {height:20, width:20};
                    }// end function
                    }), new UIComponentDescriptor({type:Image, id:"_ChangeEquipmentWindow_inlineComponent2_Image2", events:{click:"___ChangeEquipmentWindow_inlineComponent2_Image2_click"}, propertiesFactory:function () : Object
                    {
                        return {source:_embed_mxml__swf_home_buttons_button_list_wear_swf_1484374793};
                    }// end function
                    })]};
                }// end function
                }), new UIComponentDescriptor({type:Label, id:"_ChangeEquipmentWindow_inlineComponent2_Label1", events:{click:"___ChangeEquipmentWindow_inlineComponent2_Label1_click"}, stylesFactory:function () : void
                {
                    this.textDecoration = "underline";
                    return;
                }// end function
                , propertiesFactory:function () : Object
                {
                    return {buttonMode:true, mouseChildren:false};
                }// end function
                })]};
            }// end function
            });
            _embed_mxml__swf_home_buttons_button_list_wear_swf_1484374793 = ChangeEquipmentWindow_inlineComponent2__embed_mxml__swf_home_buttons_button_list_wear_swf_1484374793;
            _bindings = [];
            _watchers = [];
            _bindingsByDestination = {};
            _bindingsBeginWithWord = {};
            mx_internal::_document = this;
            if (!this.styleDeclaration)
            {
                this.styleDeclaration = new CSSStyleDeclaration();
            }
            this.styleDeclaration.defaultFactory = function () : void
            {
                this.verticalAlign = "middle";
                return;
            }// end function
            ;
            return;
        }// end function

        public function ___ChangeEquipmentWindow_inlineComponent2_Image2_click(event:MouseEvent) : void
        {
            outerDocument.onClickEquipment(data);
            return;
        }// end function

        public function set outerDocument(param1:ChangeEquipmentWindow) : void
        {
            var _loc_2:* = this._88844982outerDocument;
            if (_loc_2 !== param1)
            {
                this._88844982outerDocument = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "outerDocument", _loc_2, param1));
            }
            return;
        }// end function

        public function get outerDocument() : ChangeEquipmentWindow
        {
            return this._88844982outerDocument;
        }// end function

        public function ___ChangeEquipmentWindow_inlineComponent2_Label1_click(event:MouseEvent) : void
        {
            outerDocument.onDetail(data);
            return;
        }// end function

        override public function initialize() : void
        {
            var target:ChangeEquipmentWindow_inlineComponent2;
            var watcherSetupUtilClass:Object;
            .mx_internal::setDocumentDescriptor(_documentDescriptor_);
            var bindings:* = _ChangeEquipmentWindow_inlineComponent2_bindingsSetup();
            var watchers:Array;
            target;
            if (_watcherSetupUtil == null)
            {
                watcherSetupUtilClass = getDefinitionByName("_com_kbmj_viking_view_ChangeEquipmentWindow_inlineComponent2WatcherSetupUtil");
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

        private function _ChangeEquipmentWindow_inlineComponent2_bindingExprs() : void
        {
            var _loc_1:* = undefined;
            _loc_1 = outerDocument._arrow_right;
            _loc_1 = outerDocument.showTutMark(data);
            _loc_1 = outerDocument.componentTooltip(0);
            _loc_1 = data.nameLabel;
            _loc_1 = outerDocument.componentTooltip(1);
            return;
        }// end function

        private function _ChangeEquipmentWindow_inlineComponent2_bindingsSetup() : Array
        {
            var binding:Binding;
            var result:Array;
            binding = new Binding(this, function () : Object
            {
                return outerDocument._arrow_right;
            }// end function
            , function (param1:Object) : void
            {
                _ChangeEquipmentWindow_inlineComponent2_Image1.source = param1;
                return;
            }// end function
            , "_ChangeEquipmentWindow_inlineComponent2_Image1.source");
            result[0] = binding;
            binding = new Binding(this, function () : Boolean
            {
                return outerDocument.showTutMark(data);
            }// end function
            , function (param1:Boolean) : void
            {
                _ChangeEquipmentWindow_inlineComponent2_Image1.visible = param1;
                return;
            }// end function
            , "_ChangeEquipmentWindow_inlineComponent2_Image1.visible");
            result[1] = binding;
            binding = new Binding(this, function () : String
            {
                var _loc_1:* = outerDocument.componentTooltip(0);
                var _loc_2:* = _loc_1 == undefined ? (null) : (String(_loc_1));
                return _loc_2;
            }// end function
            , function (param1:String) : void
            {
                _ChangeEquipmentWindow_inlineComponent2_Image2.toolTip = param1;
                return;
            }// end function
            , "_ChangeEquipmentWindow_inlineComponent2_Image2.toolTip");
            result[2] = binding;
            binding = new Binding(this, function () : String
            {
                var _loc_1:* = data.nameLabel;
                var _loc_2:* = _loc_1 == undefined ? (null) : (String(_loc_1));
                return _loc_2;
            }// end function
            , function (param1:String) : void
            {
                _ChangeEquipmentWindow_inlineComponent2_Label1.text = param1;
                return;
            }// end function
            , "_ChangeEquipmentWindow_inlineComponent2_Label1.text");
            result[3] = binding;
            binding = new Binding(this, function () : String
            {
                var _loc_1:* = outerDocument.componentTooltip(1);
                var _loc_2:* = _loc_1 == undefined ? (null) : (String(_loc_1));
                return _loc_2;
            }// end function
            , function (param1:String) : void
            {
                _ChangeEquipmentWindow_inlineComponent2_Label1.toolTip = param1;
                return;
            }// end function
            , "_ChangeEquipmentWindow_inlineComponent2_Label1.toolTip");
            result[4] = binding;
            return result;
        }// end function

        public static function set watcherSetupUtil(param1:IWatcherSetupUtil) : void
        {
            ChangeEquipmentWindow_inlineComponent2._watcherSetupUtil = param1;
            return;
        }// end function

    }
}
