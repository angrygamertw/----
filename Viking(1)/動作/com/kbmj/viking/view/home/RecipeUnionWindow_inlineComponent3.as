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

    public class RecipeUnionWindow_inlineComponent3 extends Box implements IBindingClient
    {
        var _bindingsByDestination:Object;
        private var _334477575normalButton:Image;
        var _bindingsBeginWithWord:Object;
        var _bindings:Array;
        private var _documentDescriptor_:UIComponentDescriptor;
        private var _88844982outerDocument:RecipeUnionWindow;
        var _watchers:Array;
        private static var _watcherSetupUtil:IWatcherSetupUtil;

        public function RecipeUnionWindow_inlineComponent3()
        {
            _documentDescriptor_ = new UIComponentDescriptor({type:Box, propertiesFactory:function () : Object
            {
                return {width:20, childDescriptors:[new UIComponentDescriptor({type:Image, id:"normalButton", events:{click:"__normalButton_click"}})]};
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
                this.horizontalAlign = "center";
                return;
            }// end function
            ;
            this.width = 20;
            return;
        }// end function

        public function set outerDocument(param1:RecipeUnionWindow) : void
        {
            var _loc_2:* = this._88844982outerDocument;
            if (_loc_2 !== param1)
            {
                this._88844982outerDocument = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "outerDocument", _loc_2, param1));
            }
            return;
        }// end function

        public function __normalButton_click(event:MouseEvent) : void
        {
            outerDocument.addSelectIndex(data);
            return;
        }// end function

        private function _RecipeUnionWindow_inlineComponent3_bindingExprs() : void
        {
            var _loc_1:* = undefined;
            _loc_1 = outerDocument.setSelectUnitButton(data);
            return;
        }// end function

        public function get outerDocument() : RecipeUnionWindow
        {
            return this._88844982outerDocument;
        }// end function

        private function _RecipeUnionWindow_inlineComponent3_bindingsSetup() : Array
        {
            var binding:Binding;
            var result:Array;
            binding = new Binding(this, function () : Object
            {
                return outerDocument.setSelectUnitButton(data);
            }// end function
            , function (param1:Object) : void
            {
                normalButton.source = param1;
                return;
            }// end function
            , "normalButton.source");
            result[0] = binding;
            return result;
        }// end function

        override public function initialize() : void
        {
            var target:RecipeUnionWindow_inlineComponent3;
            var watcherSetupUtilClass:Object;
            .mx_internal::setDocumentDescriptor(_documentDescriptor_);
            var bindings:* = _RecipeUnionWindow_inlineComponent3_bindingsSetup();
            var watchers:Array;
            target;
            if (_watcherSetupUtil == null)
            {
                watcherSetupUtilClass = getDefinitionByName("_com_kbmj_viking_view_home_RecipeUnionWindow_inlineComponent3WatcherSetupUtil");
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

        public function set normalButton(param1:Image) : void
        {
            var _loc_2:* = this._334477575normalButton;
            if (_loc_2 !== param1)
            {
                this._334477575normalButton = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "normalButton", _loc_2, param1));
            }
            return;
        }// end function

        public function get normalButton() : Image
        {
            return this._334477575normalButton;
        }// end function

        public static function set watcherSetupUtil(param1:IWatcherSetupUtil) : void
        {
            RecipeUnionWindow_inlineComponent3._watcherSetupUtil = param1;
            return;
        }// end function

    }
}
