package com.kbmj.viking.view.city
{
    import flash.events.*;
    import flash.utils.*;
    import mx.binding.*;
    import mx.containers.*;
    import mx.controls.*;
    import mx.core.*;
    import mx.events.*;

    public class SearchGuildWindow_inlineComponent1 extends Box implements IBindingClient
    {
        var _bindingsBeginWithWord:Object;
        public var _SearchGuildWindow_inlineComponent1_Image1:Image;
        var _bindings:Array;
        var _bindingsByDestination:Object;
        private var _documentDescriptor_:UIComponentDescriptor;
        private var _88844982outerDocument:SearchGuildWindow;
        var _watchers:Array;
        private static var _watcherSetupUtil:IWatcherSetupUtil;

        public function SearchGuildWindow_inlineComponent1()
        {
            _documentDescriptor_ = new UIComponentDescriptor({type:Box, propertiesFactory:function () : Object
            {
                return {childDescriptors:[new UIComponentDescriptor({type:Image, id:"_SearchGuildWindow_inlineComponent1_Image1", events:{click:"___SearchGuildWindow_inlineComponent1_Image1_click"}})]};
            }// end function
            });
            _bindings = [];
            _watchers = [];
            _bindingsByDestination = {};
            _bindingsBeginWithWord = {};
            mx_internal::_document = this;
            return;
        }// end function

        private function _SearchGuildWindow_inlineComponent1_bindingsSetup() : Array
        {
            var binding:Binding;
            var result:Array;
            binding = new Binding(this, function () : Object
            {
                return outerDocument.getSelectButtonType(data);
            }// end function
            , function (param1:Object) : void
            {
                _SearchGuildWindow_inlineComponent1_Image1.source = param1;
                return;
            }// end function
            , "_SearchGuildWindow_inlineComponent1_Image1.source");
            result[0] = binding;
            return result;
        }// end function

        public function get outerDocument() : SearchGuildWindow
        {
            return this._88844982outerDocument;
        }// end function

        private function _SearchGuildWindow_inlineComponent1_bindingExprs() : void
        {
            var _loc_1:* = undefined;
            _loc_1 = outerDocument.getSelectButtonType(data);
            return;
        }// end function

        public function ___SearchGuildWindow_inlineComponent1_Image1_click(event:MouseEvent) : void
        {
            outerDocument.onAdmisstion(data);
            return;
        }// end function

        override public function initialize() : void
        {
            var target:SearchGuildWindow_inlineComponent1;
            var watcherSetupUtilClass:Object;
            .mx_internal::setDocumentDescriptor(_documentDescriptor_);
            var bindings:* = _SearchGuildWindow_inlineComponent1_bindingsSetup();
            var watchers:Array;
            target;
            if (_watcherSetupUtil == null)
            {
                watcherSetupUtilClass = getDefinitionByName("_com_kbmj_viking_view_city_SearchGuildWindow_inlineComponent1WatcherSetupUtil");
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

        public function set outerDocument(param1:SearchGuildWindow) : void
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
            SearchGuildWindow_inlineComponent1._watcherSetupUtil = param1;
            return;
        }// end function

    }
}
