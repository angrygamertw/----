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

    public class SubjugationSelectLevelWindow_inlineComponent2 extends VBox implements IBindingClient
    {
        var _bindingsByDestination:Object;
        var _bindingsBeginWithWord:Object;
        var _watchers:Array;
        private var _88844982outerDocument:SubjugationSelectLevelWindow;
        public var _SubjugationSelectLevelWindow_inlineComponent2_Image2:Image;
        var _bindings:Array;
        private var _embed_mxml__swf_common_arrow_top_swf_788233961:Class;
        private var _documentDescriptor_:UIComponentDescriptor;
        private var _embed_mxml__swf_home_buttons_button_list_decide_swf_1291455405:Class;
        private static var _watcherSetupUtil:IWatcherSetupUtil;

        public function SubjugationSelectLevelWindow_inlineComponent2()
        {
            _documentDescriptor_ = new UIComponentDescriptor({type:VBox, propertiesFactory:function () : Object
            {
                return {childDescriptors:[new UIComponentDescriptor({type:Image, events:{click:"___SubjugationSelectLevelWindow_inlineComponent2_Image1_click"}, propertiesFactory:function () : Object
                {
                    return {source:_embed_mxml__swf_home_buttons_button_list_decide_swf_1291455405};
                }// end function
                }), new UIComponentDescriptor({type:Image, id:"_SubjugationSelectLevelWindow_inlineComponent2_Image2", propertiesFactory:function () : Object
                {
                    return {source:_embed_mxml__swf_common_arrow_top_swf_788233961, width:20, height:22};
                }// end function
                })]};
            }// end function
            });
            _embed_mxml__swf_common_arrow_top_swf_788233961 = SubjugationSelectLevelWindow_inlineComponent2__embed_mxml__swf_common_arrow_top_swf_788233961;
            _embed_mxml__swf_home_buttons_button_list_decide_swf_1291455405 = SubjugationSelectLevelWindow_inlineComponent2__embed_mxml__swf_home_buttons_button_list_decide_swf_1291455405;
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
            return;
        }// end function

        public function set outerDocument(param1:SubjugationSelectLevelWindow) : void
        {
            var _loc_2:* = this._88844982outerDocument;
            if (_loc_2 !== param1)
            {
                this._88844982outerDocument = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "outerDocument", _loc_2, param1));
            }
            return;
        }// end function

        public function ___SubjugationSelectLevelWindow_inlineComponent2_Image1_click(event:MouseEvent) : void
        {
            outerDocument.clicked(data);
            return;
        }// end function

        override public function initialize() : void
        {
            var target:SubjugationSelectLevelWindow_inlineComponent2;
            var watcherSetupUtilClass:Object;
            .mx_internal::setDocumentDescriptor(_documentDescriptor_);
            var bindings:* = _SubjugationSelectLevelWindow_inlineComponent2_bindingsSetup();
            var watchers:Array;
            target;
            if (_watcherSetupUtil == null)
            {
                watcherSetupUtilClass = getDefinitionByName("_com_kbmj_viking_view_home_SubjugationSelectLevelWindow_inlineComponent2WatcherSetupUtil");
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

        private function _SubjugationSelectLevelWindow_inlineComponent2_bindingExprs() : void
        {
            var _loc_1:* = undefined;
            _loc_1 = outerDocument.showTutMark(data);
            return;
        }// end function

        public function get outerDocument() : SubjugationSelectLevelWindow
        {
            return this._88844982outerDocument;
        }// end function

        private function _SubjugationSelectLevelWindow_inlineComponent2_bindingsSetup() : Array
        {
            var binding:Binding;
            var result:Array;
            binding = new Binding(this, function () : Boolean
            {
                return outerDocument.showTutMark(data);
            }// end function
            , function (param1:Boolean) : void
            {
                _SubjugationSelectLevelWindow_inlineComponent2_Image2.visible = param1;
                return;
            }// end function
            , "_SubjugationSelectLevelWindow_inlineComponent2_Image2.visible");
            result[0] = binding;
            return result;
        }// end function

        public static function set watcherSetupUtil(param1:IWatcherSetupUtil) : void
        {
            SubjugationSelectLevelWindow_inlineComponent2._watcherSetupUtil = param1;
            return;
        }// end function

    }
}
