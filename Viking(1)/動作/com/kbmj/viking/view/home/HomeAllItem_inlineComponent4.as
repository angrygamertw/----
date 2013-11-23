package com.kbmj.viking.view.home
{
    import flash.events.*;
    import flash.utils.*;
    import mx.binding.*;
    import mx.containers.*;
    import mx.controls.*;
    import mx.core.*;
    import mx.events.*;
    import mx.styles.*;

    public class HomeAllItem_inlineComponent4 extends HBox implements IBindingClient
    {
        var _bindingsBeginWithWord:Object;
        public var _HomeAllItem_inlineComponent4_CheckBox1:CheckBox;
        var _bindingsByDestination:Object;
        var _bindings:Array;
        private var _documentDescriptor_:UIComponentDescriptor;
        private var _88844982outerDocument:HomeAllItem;
        var _watchers:Array;
        private static var _watcherSetupUtil:IWatcherSetupUtil;

        public function HomeAllItem_inlineComponent4()
        {
            _documentDescriptor_ = new UIComponentDescriptor({type:HBox, propertiesFactory:function () : Object
            {
                return {childDescriptors:[new UIComponentDescriptor({type:CheckBox, id:"_HomeAllItem_inlineComponent4_CheckBox1", events:{click:"___HomeAllItem_inlineComponent4_CheckBox1_click"}})]};
            }// end function
            });
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
                this.paddingBottom = 5;
                this.paddingLeft = 5;
                this.paddingTop = 5;
                this.paddingRight = 5;
                this.horizontalAlign = "center";
                this.verticalAlign = "middle";
                return;
            }// end function
            ;
            return;
        }// end function

        public function get outerDocument() : HomeAllItem
        {
            return this._88844982outerDocument;
        }// end function

        private function _HomeAllItem_inlineComponent4_bindingExprs() : void
        {
            var _loc_1:* = undefined;
            _loc_1 = data.selected;
            return;
        }// end function

        private function _HomeAllItem_inlineComponent4_bindingsSetup() : Array
        {
            var binding:Binding;
            var result:Array;
            binding = new Binding(this, function () : Boolean
            {
                return data.selected;
            }// end function
            , function (param1:Boolean) : void
            {
                _HomeAllItem_inlineComponent4_CheckBox1.selected = param1;
                return;
            }// end function
            , "_HomeAllItem_inlineComponent4_CheckBox1.selected");
            result[0] = binding;
            return result;
        }// end function

        public function set outerDocument(param1:HomeAllItem) : void
        {
            var _loc_2:* = this._88844982outerDocument;
            if (_loc_2 !== param1)
            {
                this._88844982outerDocument = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "outerDocument", _loc_2, param1));
            }
            return;
        }// end function

        public function ___HomeAllItem_inlineComponent4_CheckBox1_click(event:MouseEvent) : void
        {
            data.selected = !data.selected;
            return;
        }// end function

        override public function initialize() : void
        {
            var target:HomeAllItem_inlineComponent4;
            var watcherSetupUtilClass:Object;
            .mx_internal::setDocumentDescriptor(_documentDescriptor_);
            var bindings:* = _HomeAllItem_inlineComponent4_bindingsSetup();
            var watchers:Array;
            target;
            if (_watcherSetupUtil == null)
            {
                watcherSetupUtilClass = getDefinitionByName("_com_kbmj_viking_view_home_HomeAllItem_inlineComponent4WatcherSetupUtil");
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

        public static function set watcherSetupUtil(param1:IWatcherSetupUtil) : void
        {
            HomeAllItem_inlineComponent4._watcherSetupUtil = param1;
            return;
        }// end function

    }
}
