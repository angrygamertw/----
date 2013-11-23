package com.kbmj.viking.view.home
{
    import com.kbmj.viking.lib.*;
    import flash.utils.*;
    import mx.binding.*;
    import mx.containers.*;
    import mx.controls.*;
    import mx.core.*;
    import mx.events.*;

    public class UnitUtilityWindow_inlineComponent1 extends HBox implements IBindingClient
    {
        private var _embed_mxml__images_icon_power_png_227571469:Class;
        var _bindingsBeginWithWord:Object;
        public var _UnitUtilityWindow_inlineComponent1_Label1:Label;
        var _bindingsByDestination:Object;
        var _bindings:Array;
        private var _documentDescriptor_:UIComponentDescriptor;
        private var _88844982outerDocument:UnitUtilityWindow;
        var _watchers:Array;
        private static var _watcherSetupUtil:IWatcherSetupUtil;

        public function UnitUtilityWindow_inlineComponent1()
        {
            _documentDescriptor_ = new UIComponentDescriptor({type:HBox, propertiesFactory:function () : Object
            {
                return {childDescriptors:[new UIComponentDescriptor({type:Image, stylesFactory:function () : void
                {
                    this.left = "30";
                    return;
                }// end function
                , propertiesFactory:function () : Object
                {
                    return {source:_embed_mxml__images_icon_power_png_227571469};
                }// end function
                }), new UIComponentDescriptor({type:Label, id:"_UnitUtilityWindow_inlineComponent1_Label1"})]};
            }// end function
            });
            _embed_mxml__images_icon_power_png_227571469 = UnitUtilityWindow_inlineComponent1__embed_mxml__images_icon_power_png_227571469;
            _bindings = [];
            _watchers = [];
            _bindingsByDestination = {};
            _bindingsBeginWithWord = {};
            mx_internal::_document = this;
            return;
        }// end function

        private function _UnitUtilityWindow_inlineComponent1_bindingsSetup() : Array
        {
            var binding:Binding;
            var result:Array;
            binding = new Binding(this, function () : String
            {
                var _loc_1:* = data.price;
                var _loc_2:* = _loc_1 == undefined ? (null) : (String(_loc_1));
                return _loc_2;
            }// end function
            , function (param1:String) : void
            {
                _UnitUtilityWindow_inlineComponent1_Label1.text = param1;
                return;
            }// end function
            , "_UnitUtilityWindow_inlineComponent1_Label1.text");
            result[0] = binding;
            binding = new Binding(this, function () : String
            {
                var _loc_1:* = Utils.i18n("noneed112");
                var _loc_2:* = _loc_1 == undefined ? (null) : (String(_loc_1));
                return _loc_2;
            }// end function
            , function (param1:String) : void
            {
                _UnitUtilityWindow_inlineComponent1_Label1.toolTip = param1;
                return;
            }// end function
            , "_UnitUtilityWindow_inlineComponent1_Label1.toolTip");
            result[1] = binding;
            return result;
        }// end function

        private function _UnitUtilityWindow_inlineComponent1_bindingExprs() : void
        {
            var _loc_1:* = undefined;
            _loc_1 = data.price;
            _loc_1 = Utils.i18n("noneed112");
            return;
        }// end function

        public function get outerDocument() : UnitUtilityWindow
        {
            return this._88844982outerDocument;
        }// end function

        override public function initialize() : void
        {
            var target:UnitUtilityWindow_inlineComponent1;
            var watcherSetupUtilClass:Object;
            .mx_internal::setDocumentDescriptor(_documentDescriptor_);
            var bindings:* = _UnitUtilityWindow_inlineComponent1_bindingsSetup();
            var watchers:Array;
            target;
            if (_watcherSetupUtil == null)
            {
                watcherSetupUtilClass = getDefinitionByName("_com_kbmj_viking_view_home_UnitUtilityWindow_inlineComponent1WatcherSetupUtil");
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

        public function set outerDocument(param1:UnitUtilityWindow) : void
        {
            var _loc_2:* = this._88844982outerDocument;
            if (_loc_2 !== param1)
            {
                this._88844982outerDocument = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "outerDocument", _loc_2, param1));
            }
            return;
        }// end function

        public static function set watcherSetupUtil(param1:IWatcherSetupUtil) : void
        {
            UnitUtilityWindow_inlineComponent1._watcherSetupUtil = param1;
            return;
        }// end function

    }
}
