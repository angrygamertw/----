package com.kbmj.viking.view
{
    import flash.utils.*;
    import mx.binding.*;
    import mx.containers.*;
    import mx.controls.*;
    import mx.core.*;
    import mx.events.*;
    import mx.styles.*;

    public class GuildChatWindow_inlineComponent4 extends VBox implements IBindingClient
    {
        var _bindingsByDestination:Object;
        var _bindingsBeginWithWord:Object;
        var _watchers:Array;
        public var _GuildChatWindow_inlineComponent4_Text2:Text;
        private var _88844982outerDocument:GuildChatWindow;
        public var _GuildChatWindow_inlineComponent4_Text1:Text;
        public var _GuildChatWindow_inlineComponent4_Text3:Text;
        var _bindings:Array;
        private var _documentDescriptor_:UIComponentDescriptor;
        private static var _watcherSetupUtil:IWatcherSetupUtil;

        public function GuildChatWindow_inlineComponent4()
        {
            _documentDescriptor_ = new UIComponentDescriptor({type:VBox, propertiesFactory:function () : Object
            {
                return {childDescriptors:[new UIComponentDescriptor({type:HBox, stylesFactory:function () : void
                {
                    this.horizontalGap = 0;
                    return;
                }// end function
                , propertiesFactory:function () : Object
                {
                    return {childDescriptors:[new UIComponentDescriptor({type:Box, propertiesFactory:function () : Object
                    {
                        return {width:260, height:20, childDescriptors:[new UIComponentDescriptor({type:Text, id:"_GuildChatWindow_inlineComponent4_Text1", stylesFactory:function () : void
                        {
                            this.color = 2966695;
                            return;
                        }// end function
                        })]};
                    }// end function
                    }), new UIComponentDescriptor({type:Box, stylesFactory:function () : void
                    {
                        this.horizontalAlign = "right";
                        return;
                    }// end function
                    , propertiesFactory:function () : Object
                    {
                        return {width:100, height:20, childDescriptors:[new UIComponentDescriptor({type:Text, id:"_GuildChatWindow_inlineComponent4_Text2", stylesFactory:function () : void
                        {
                            this.color = 12279952;
                            return;
                        }// end function
                        })]};
                    }// end function
                    })]};
                }// end function
                }), new UIComponentDescriptor({type:HBox, propertiesFactory:function () : Object
                {
                    return {childDescriptors:[new UIComponentDescriptor({type:Text, id:"_GuildChatWindow_inlineComponent4_Text3", propertiesFactory:function () : Object
                    {
                        return {width:355};
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
            if (!this.styleDeclaration)
            {
                this.styleDeclaration = new CSSStyleDeclaration();
            }
            this.styleDeclaration.defaultFactory = function () : void
            {
                this.verticalGap = 0;
                return;
            }// end function
            ;
            return;
        }// end function

        private function _GuildChatWindow_inlineComponent4_bindingExprs() : void
        {
            var _loc_1:* = undefined;
            _loc_1 = data.playerName;
            _loc_1 = data.createdAtLabel;
            _loc_1 = data.body;
            _loc_1 = data.chatColor;
            return;
        }// end function

        override public function initialize() : void
        {
            var target:GuildChatWindow_inlineComponent4;
            var watcherSetupUtilClass:Object;
            .mx_internal::setDocumentDescriptor(_documentDescriptor_);
            var bindings:* = _GuildChatWindow_inlineComponent4_bindingsSetup();
            var watchers:Array;
            target;
            if (_watcherSetupUtil == null)
            {
                watcherSetupUtilClass = getDefinitionByName("_com_kbmj_viking_view_GuildChatWindow_inlineComponent4WatcherSetupUtil");
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

        private function _GuildChatWindow_inlineComponent4_bindingsSetup() : Array
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
                _GuildChatWindow_inlineComponent4_Text1.text = param1;
                return;
            }// end function
            , "_GuildChatWindow_inlineComponent4_Text1.text");
            result[0] = binding;
            binding = new Binding(this, function () : String
            {
                var _loc_1:* = data.createdAtLabel;
                var _loc_2:* = _loc_1 == undefined ? (null) : (String(_loc_1));
                return _loc_2;
            }// end function
            , function (param1:String) : void
            {
                _GuildChatWindow_inlineComponent4_Text2.text = param1;
                return;
            }// end function
            , "_GuildChatWindow_inlineComponent4_Text2.text");
            result[1] = binding;
            binding = new Binding(this, function () : String
            {
                var _loc_1:* = data.body;
                var _loc_2:* = _loc_1 == undefined ? (null) : (String(_loc_1));
                return _loc_2;
            }// end function
            , function (param1:String) : void
            {
                _GuildChatWindow_inlineComponent4_Text3.text = param1;
                return;
            }// end function
            , "_GuildChatWindow_inlineComponent4_Text3.text");
            result[2] = binding;
            binding = new Binding(this, function () : uint
            {
                return data.chatColor;
            }// end function
            , function (param1:uint) : void
            {
                _GuildChatWindow_inlineComponent4_Text3.setStyle("color", param1);
                return;
            }// end function
            , "_GuildChatWindow_inlineComponent4_Text3.color");
            result[3] = binding;
            return result;
        }// end function

        public function set outerDocument(param1:GuildChatWindow) : void
        {
            var _loc_2:* = this._88844982outerDocument;
            if (_loc_2 !== param1)
            {
                this._88844982outerDocument = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "outerDocument", _loc_2, param1));
            }
            return;
        }// end function

        public function get outerDocument() : GuildChatWindow
        {
            return this._88844982outerDocument;
        }// end function

        public static function set watcherSetupUtil(param1:IWatcherSetupUtil) : void
        {
            GuildChatWindow_inlineComponent4._watcherSetupUtil = param1;
            return;
        }// end function

    }
}
