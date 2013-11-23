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

    public class ChangeEquipmentWindow_inlineComponent3 extends HBox implements IBindingClient
    {
        private var _embed_mxml__swf_home_buttons_button_list_remove_swf_1090389493:Class;
        public var _ChangeEquipmentWindow_inlineComponent3_Image1:Image;
        var _bindingsByDestination:Object;
        var _bindingsBeginWithWord:Object;
        var _watchers:Array;
        private var _88844982outerDocument:ChangeEquipmentWindow;
        var _bindings:Array;
        private var _documentDescriptor_:UIComponentDescriptor;
        public var _ChangeEquipmentWindow_inlineComponent3_Label1:Label;
        private static var _watcherSetupUtil:IWatcherSetupUtil;

        public function ChangeEquipmentWindow_inlineComponent3()
        {
            _documentDescriptor_ = new UIComponentDescriptor({type:HBox, propertiesFactory:function () : Object
            {
                return {childDescriptors:[new UIComponentDescriptor({type:Box, stylesFactory:function () : void
                {
                    this.horizontalAlign = "right";
                    return;
                }// end function
                , propertiesFactory:function () : Object
                {
                    return {width:50, childDescriptors:[new UIComponentDescriptor({type:Image, id:"_ChangeEquipmentWindow_inlineComponent3_Image1", events:{click:"___ChangeEquipmentWindow_inlineComponent3_Image1_click"}, propertiesFactory:function () : Object
                    {
                        return {source:_embed_mxml__swf_home_buttons_button_list_remove_swf_1090389493};
                    }// end function
                    })]};
                }// end function
                }), new UIComponentDescriptor({type:Label, id:"_ChangeEquipmentWindow_inlineComponent3_Label1", events:{click:"___ChangeEquipmentWindow_inlineComponent3_Label1_click"}, stylesFactory:function () : void
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
            _embed_mxml__swf_home_buttons_button_list_remove_swf_1090389493 = ChangeEquipmentWindow_inlineComponent3__embed_mxml__swf_home_buttons_button_list_remove_swf_1090389493;
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

        public function get outerDocument() : ChangeEquipmentWindow
        {
            return this._88844982outerDocument;
        }// end function

        override public function initialize() : void
        {
            var target:ChangeEquipmentWindow_inlineComponent3;
            var watcherSetupUtilClass:Object;
            .mx_internal::setDocumentDescriptor(_documentDescriptor_);
            var bindings:* = _ChangeEquipmentWindow_inlineComponent3_bindingsSetup();
            var watchers:Array;
            target;
            if (_watcherSetupUtil == null)
            {
                watcherSetupUtilClass = getDefinitionByName("_com_kbmj_viking_view_ChangeEquipmentWindow_inlineComponent3WatcherSetupUtil");
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

        public function ___ChangeEquipmentWindow_inlineComponent3_Image1_click(event:MouseEvent) : void
        {
            outerDocument.onRemove();
            return;
        }// end function

        public function ___ChangeEquipmentWindow_inlineComponent3_Label1_click(event:MouseEvent) : void
        {
            outerDocument.onDetail(data);
            return;
        }// end function

        private function _ChangeEquipmentWindow_inlineComponent3_bindingsSetup() : Array
        {
            var binding:Binding;
            var result:Array;
            binding = new Binding(this, function () : String
            {
                var _loc_1:* = outerDocument.componentTooltip(2);
                var _loc_2:* = _loc_1 == undefined ? (null) : (String(_loc_1));
                return _loc_2;
            }// end function
            , function (param1:String) : void
            {
                _ChangeEquipmentWindow_inlineComponent3_Image1.toolTip = param1;
                return;
            }// end function
            , "_ChangeEquipmentWindow_inlineComponent3_Image1.toolTip");
            result[0] = binding;
            binding = new Binding(this, function () : String
            {
                var _loc_1:* = data.nameLabel;
                var _loc_2:* = _loc_1 == undefined ? (null) : (String(_loc_1));
                return _loc_2;
            }// end function
            , function (param1:String) : void
            {
                _ChangeEquipmentWindow_inlineComponent3_Label1.text = param1;
                return;
            }// end function
            , "_ChangeEquipmentWindow_inlineComponent3_Label1.text");
            result[1] = binding;
            binding = new Binding(this, function () : String
            {
                var _loc_1:* = outerDocument.componentTooltip(3);
                var _loc_2:* = _loc_1 == undefined ? (null) : (String(_loc_1));
                return _loc_2;
            }// end function
            , function (param1:String) : void
            {
                _ChangeEquipmentWindow_inlineComponent3_Label1.toolTip = param1;
                return;
            }// end function
            , "_ChangeEquipmentWindow_inlineComponent3_Label1.toolTip");
            result[2] = binding;
            return result;
        }// end function

        private function _ChangeEquipmentWindow_inlineComponent3_bindingExprs() : void
        {
            var _loc_1:* = undefined;
            _loc_1 = outerDocument.componentTooltip(2);
            _loc_1 = data.nameLabel;
            _loc_1 = outerDocument.componentTooltip(3);
            return;
        }// end function

        public static function set watcherSetupUtil(param1:IWatcherSetupUtil) : void
        {
            ChangeEquipmentWindow_inlineComponent3._watcherSetupUtil = param1;
            return;
        }// end function

    }
}
