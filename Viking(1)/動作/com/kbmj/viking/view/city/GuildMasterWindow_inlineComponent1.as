package com.kbmj.viking.view.city
{
    import flash.utils.*;
    import mx.binding.*;
    import mx.containers.*;
    import mx.controls.*;
    import mx.core.*;
    import mx.events.*;

    public class GuildMasterWindow_inlineComponent1 extends HBox implements IBindingClient
    {
        private var _documentDescriptor_:UIComponentDescriptor;
        var _bindingsByDestination:Object;
        var _bindings:Array;
        var _watchers:Array;
        public var _GuildMasterWindow_inlineComponent1_Image1:Image;
        var _bindingsBeginWithWord:Object;
        private var _88844982outerDocument:GuildMasterWindow;
        public var _GuildMasterWindow_inlineComponent1_Label1:Label;
        private static var _watcherSetupUtil:IWatcherSetupUtil;

        public function GuildMasterWindow_inlineComponent1()
        {
            _documentDescriptor_ = new UIComponentDescriptor({type:HBox, propertiesFactory:function () : Object
            {
                return {childDescriptors:[new UIComponentDescriptor({type:Image, id:"_GuildMasterWindow_inlineComponent1_Image1", stylesFactory:function () : void
                {
                    this.horizontalAlign = "right";
                    return;
                }// end function
                , propertiesFactory:function () : Object
                {
                    return {width:24};
                }// end function
                }), new UIComponentDescriptor({type:Label, id:"_GuildMasterWindow_inlineComponent1_Label1"})]};
            }// end function
            });
            _bindings = [];
            _watchers = [];
            _bindingsByDestination = {};
            _bindingsBeginWithWord = {};
            mx_internal::_document = this;
            return;
        }// end function

        public function set outerDocument(param1:GuildMasterWindow) : void
        {
            var _loc_2:* = this._88844982outerDocument;
            if (_loc_2 !== param1)
            {
                this._88844982outerDocument = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "outerDocument", _loc_2, param1));
            }
            return;
        }// end function

        public function get outerDocument() : GuildMasterWindow
        {
            return this._88844982outerDocument;
        }// end function

        override public function initialize() : void
        {
            var target:GuildMasterWindow_inlineComponent1;
            var watcherSetupUtilClass:Object;
            .mx_internal::setDocumentDescriptor(_documentDescriptor_);
            var bindings:* = _GuildMasterWindow_inlineComponent1_bindingsSetup();
            var watchers:Array;
            target;
            if (_watcherSetupUtil == null)
            {
                watcherSetupUtilClass = getDefinitionByName("_com_kbmj_viking_view_city_GuildMasterWindow_inlineComponent1WatcherSetupUtil");
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

        private function _GuildMasterWindow_inlineComponent1_bindingExprs() : void
        {
            var _loc_1:* = undefined;
            _loc_1 = outerDocument.masterImg(data);
            _loc_1 = outerDocument.playerName(data);
            return;
        }// end function

        private function _GuildMasterWindow_inlineComponent1_bindingsSetup() : Array
        {
            var binding:Binding;
            var result:Array;
            binding = new Binding(this, function () : Object
            {
                return outerDocument.masterImg(data);
            }// end function
            , function (param1:Object) : void
            {
                _GuildMasterWindow_inlineComponent1_Image1.source = param1;
                return;
            }// end function
            , "_GuildMasterWindow_inlineComponent1_Image1.source");
            result[0] = binding;
            binding = new Binding(this, function () : String
            {
                var _loc_1:* = outerDocument.playerName(data);
                var _loc_2:* = _loc_1 == undefined ? (null) : (String(_loc_1));
                return _loc_2;
            }// end function
            , function (param1:String) : void
            {
                _GuildMasterWindow_inlineComponent1_Label1.text = param1;
                return;
            }// end function
            , "_GuildMasterWindow_inlineComponent1_Label1.text");
            result[1] = binding;
            return result;
        }// end function

        public static function set watcherSetupUtil(param1:IWatcherSetupUtil) : void
        {
            GuildMasterWindow_inlineComponent1._watcherSetupUtil = param1;
            return;
        }// end function

    }
}
