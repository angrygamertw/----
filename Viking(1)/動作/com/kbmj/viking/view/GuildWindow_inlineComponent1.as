package com.kbmj.viking.view
{
    import flash.utils.*;
    import mx.binding.*;
    import mx.containers.*;
    import mx.controls.*;
    import mx.core.*;
    import mx.events.*;
    import mx.styles.*;

    public class GuildWindow_inlineComponent1 extends HBox implements IBindingClient
    {
        var _bindingsByDestination:Object;
        var _bindingsBeginWithWord:Object;
        var _watchers:Array;
        private var _88844982outerDocument:GuildWindow;
        public var _GuildWindow_inlineComponent1_Button1:Button;
        var _bindings:Array;
        public var _GuildWindow_inlineComponent1_Label1:Label;
        private var _embed_mxml__images_st_btn_delete_png_1860925897:Class;
        private var _documentDescriptor_:UIComponentDescriptor;
        private static var _watcherSetupUtil:IWatcherSetupUtil;

        public function GuildWindow_inlineComponent1()
        {
            _documentDescriptor_ = new UIComponentDescriptor({type:HBox, propertiesFactory:function () : Object
            {
                return {childDescriptors:[new UIComponentDescriptor({type:Box, stylesFactory:function () : void
                {
                    this.horizontalAlign = "center";
                    return;
                }// end function
                , propertiesFactory:function () : Object
                {
                    return {width:30, childDescriptors:[new UIComponentDescriptor({type:Button, id:"_GuildWindow_inlineComponent1_Button1", stylesFactory:function () : void
                    {
                        this.upSkin = _embed_mxml__images_st_btn_delete_png_1860925897;
                        this.overSkin = _embed_mxml__images_st_btn_delete_png_1860925897;
                        this.downSkin = _embed_mxml__images_st_btn_delete_png_1860925897;
                        return;
                    }// end function
                    , propertiesFactory:function () : Object
                    {
                        return {buttonMode:true};
                    }// end function
                    })]};
                }// end function
                }), new UIComponentDescriptor({type:Label, id:"_GuildWindow_inlineComponent1_Label1"})]};
            }// end function
            });
            _embed_mxml__images_st_btn_delete_png_1860925897 = GuildWindow_inlineComponent1__embed_mxml__images_st_btn_delete_png_1860925897;
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

        override public function initialize() : void
        {
            var target:GuildWindow_inlineComponent1;
            var watcherSetupUtilClass:Object;
            .mx_internal::setDocumentDescriptor(_documentDescriptor_);
            var bindings:* = _GuildWindow_inlineComponent1_bindingsSetup();
            var watchers:Array;
            target;
            if (_watcherSetupUtil == null)
            {
                watcherSetupUtilClass = getDefinitionByName("_com_kbmj_viking_view_GuildWindow_inlineComponent1WatcherSetupUtil");
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

        private function _GuildWindow_inlineComponent1_bindingsSetup() : Array
        {
            var binding:Binding;
            var result:Array;
            binding = new Binding(this, function () : String
            {
                var _loc_1:* = outerDocument.componentStr(0);
                var _loc_2:* = _loc_1 == undefined ? (null) : (String(_loc_1));
                return _loc_2;
            }// end function
            , function (param1:String) : void
            {
                _GuildWindow_inlineComponent1_Button1.toolTip = param1;
                return;
            }// end function
            , "_GuildWindow_inlineComponent1_Button1.toolTip");
            result[0] = binding;
            binding = new Binding(this, function () : String
            {
                var _loc_1:* = data.name;
                var _loc_2:* = _loc_1 == undefined ? (null) : (String(_loc_1));
                return _loc_2;
            }// end function
            , function (param1:String) : void
            {
                _GuildWindow_inlineComponent1_Label1.text = param1;
                return;
            }// end function
            , "_GuildWindow_inlineComponent1_Label1.text");
            result[1] = binding;
            return result;
        }// end function

        private function _GuildWindow_inlineComponent1_bindingExprs() : void
        {
            var _loc_1:* = undefined;
            _loc_1 = outerDocument.componentStr(0);
            _loc_1 = data.name;
            return;
        }// end function

        public function get outerDocument() : GuildWindow
        {
            return this._88844982outerDocument;
        }// end function

        public function set outerDocument(param1:GuildWindow) : void
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
            GuildWindow_inlineComponent1._watcherSetupUtil = param1;
            return;
        }// end function

    }
}
