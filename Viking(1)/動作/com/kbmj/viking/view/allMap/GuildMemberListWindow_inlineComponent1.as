package com.kbmj.viking.view.allMap
{
    import flash.events.*;
    import flash.utils.*;
    import mx.binding.*;
    import mx.containers.*;
    import mx.controls.*;
    import mx.core.*;
    import mx.events.*;

    public class GuildMemberListWindow_inlineComponent1 extends Box implements IBindingClient
    {
        var _bindingsByDestination:Object;
        public var _GuildMemberListWindow_inlineComponent1_Label1:Label;
        var _bindings:Array;
        var _bindingsBeginWithWord:Object;
        private var _documentDescriptor_:UIComponentDescriptor;
        private var _88844982outerDocument:GuildMemberListWindow;
        var _watchers:Array;
        private static var _watcherSetupUtil:IWatcherSetupUtil;

        public function GuildMemberListWindow_inlineComponent1()
        {
            _documentDescriptor_ = new UIComponentDescriptor({type:Box, propertiesFactory:function () : Object
            {
                return {childDescriptors:[new UIComponentDescriptor({type:Label, id:"_GuildMemberListWindow_inlineComponent1_Label1", events:{click:"___GuildMemberListWindow_inlineComponent1_Label1_click"}, stylesFactory:function () : void
                {
                    this.color = 12337210;
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
            _bindings = [];
            _watchers = [];
            _bindingsByDestination = {};
            _bindingsBeginWithWord = {};
            mx_internal::_document = this;
            return;
        }// end function

        private function _GuildMemberListWindow_inlineComponent1_bindingsSetup() : Array
        {
            var binding:Binding;
            var result:Array;
            binding = new Binding(this, function () : String
            {
                var _loc_1:* = outerDocument.getPositionStr(data);
                var _loc_2:* = _loc_1 == undefined ? (null) : (String(_loc_1));
                return _loc_2;
            }// end function
            , function (param1:String) : void
            {
                _GuildMemberListWindow_inlineComponent1_Label1.text = param1;
                return;
            }// end function
            , "_GuildMemberListWindow_inlineComponent1_Label1.text");
            result[0] = binding;
            return result;
        }// end function

        public function get outerDocument() : GuildMemberListWindow
        {
            return this._88844982outerDocument;
        }// end function

        private function _GuildMemberListWindow_inlineComponent1_bindingExprs() : void
        {
            var _loc_1:* = undefined;
            _loc_1 = outerDocument.getPositionStr(data);
            return;
        }// end function

        override public function initialize() : void
        {
            var target:GuildMemberListWindow_inlineComponent1;
            var watcherSetupUtilClass:Object;
            .mx_internal::setDocumentDescriptor(_documentDescriptor_);
            var bindings:* = _GuildMemberListWindow_inlineComponent1_bindingsSetup();
            var watchers:Array;
            target;
            if (_watcherSetupUtil == null)
            {
                watcherSetupUtilClass = getDefinitionByName("_com_kbmj_viking_view_allMap_GuildMemberListWindow_inlineComponent1WatcherSetupUtil");
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

        public function ___GuildMemberListWindow_inlineComponent1_Label1_click(event:MouseEvent) : void
        {
            outerDocument.chengeViewPosition(data);
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
            GuildMemberListWindow_inlineComponent1._watcherSetupUtil = param1;
            return;
        }// end function

    }
}
