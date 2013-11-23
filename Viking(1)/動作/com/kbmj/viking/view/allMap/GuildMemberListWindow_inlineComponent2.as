package com.kbmj.viking.view.allMap
{
    import flash.utils.*;
    import mx.binding.*;
    import mx.containers.*;
    import mx.controls.*;
    import mx.core.*;
    import mx.events.*;
    import mx.styles.*;

    public class GuildMemberListWindow_inlineComponent2 extends HBox implements IBindingClient
    {
        var _bindingsBeginWithWord:Object;
        var _watchers:Array;
        var _bindingsByDestination:Object;
        public var _GuildMemberListWindow_inlineComponent2_Label1:Label;
        var _bindings:Array;
        private var _documentDescriptor_:UIComponentDescriptor;
        private var _88844982outerDocument:GuildMemberListWindow;
        private static var _watcherSetupUtil:IWatcherSetupUtil;

        public function GuildMemberListWindow_inlineComponent2()
        {
            _documentDescriptor_ = new UIComponentDescriptor({type:HBox, propertiesFactory:function () : Object
            {
                return {childDescriptors:[new UIComponentDescriptor({type:Label, id:"_GuildMemberListWindow_inlineComponent2_Label1"})]};
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
                this.horizontalGap = 0;
                return;
            }// end function
            ;
            return;
        }// end function

        private function _GuildMemberListWindow_inlineComponent2_bindingsSetup() : Array
        {
            var binding:Binding;
            var result:Array;
            binding = new Binding(this, function () : String
            {
                var _loc_1:* = data.playerName;
                var _loc_2:* = _loc_1 == undefined ? (null) : (String(_loc_1));
                return _loc_2;
            }// end function
            , function (param1:String) : void
            {
                _GuildMemberListWindow_inlineComponent2_Label1.text = param1;
                return;
            }// end function
            , "_GuildMemberListWindow_inlineComponent2_Label1.text");
            result[0] = binding;
            return result;
        }// end function

        private function _GuildMemberListWindow_inlineComponent2_bindingExprs() : void
        {
            var _loc_1:* = undefined;
            _loc_1 = data.playerName;
            return;
        }// end function

        public function get outerDocument() : GuildMemberListWindow
        {
            return this._88844982outerDocument;
        }// end function

        override public function initialize() : void
        {
            var target:GuildMemberListWindow_inlineComponent2;
            var watcherSetupUtilClass:Object;
            .mx_internal::setDocumentDescriptor(_documentDescriptor_);
            var bindings:* = _GuildMemberListWindow_inlineComponent2_bindingsSetup();
            var watchers:Array;
            target;
            if (_watcherSetupUtil == null)
            {
                watcherSetupUtilClass = getDefinitionByName("_com_kbmj_viking_view_allMap_GuildMemberListWindow_inlineComponent2WatcherSetupUtil");
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

        public function set outerDocument(param1:GuildMemberListWindow) : void
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
            GuildMemberListWindow_inlineComponent2._watcherSetupUtil = param1;
            return;
        }// end function

    }
}
