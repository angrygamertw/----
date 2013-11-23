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

    public class SkillLearnWindow_inlineComponent2 extends HBox implements IBindingClient
    {
        var _bindingsBeginWithWord:Object;
        var _bindingsByDestination:Object;
        var _watchers:Array;
        private var _88844982outerDocument:SkillLearnWindow;
        private var _embed_mxml__swf_common_arrow_right_swf_759350985:Class;
        public var _SkillLearnWindow_inlineComponent2_Image1:Image;
        public var _SkillLearnWindow_inlineComponent2_Image2:Image;
        var _bindings:Array;
        private var _documentDescriptor_:UIComponentDescriptor;
        private static var _watcherSetupUtil:IWatcherSetupUtil;

        public function SkillLearnWindow_inlineComponent2()
        {
            _documentDescriptor_ = new UIComponentDescriptor({type:HBox, propertiesFactory:function () : Object
            {
                return {width:20, childDescriptors:[new UIComponentDescriptor({type:Image, id:"_SkillLearnWindow_inlineComponent2_Image1", propertiesFactory:function () : Object
                {
                    return {source:_embed_mxml__swf_common_arrow_right_swf_759350985, width:18, height:20};
                }// end function
                }), new UIComponentDescriptor({type:Image, id:"_SkillLearnWindow_inlineComponent2_Image2", events:{click:"___SkillLearnWindow_inlineComponent2_Image2_click"}})]};
            }// end function
            });
            _embed_mxml__swf_common_arrow_right_swf_759350985 = SkillLearnWindow_inlineComponent2__embed_mxml__swf_common_arrow_right_swf_759350985;
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

        public function set outerDocument(param1:SkillLearnWindow) : void
        {
            var _loc_2:* = this._88844982outerDocument;
            if (_loc_2 !== param1)
            {
                this._88844982outerDocument = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "outerDocument", _loc_2, param1));
            }
            return;
        }// end function

        override public function initialize() : void
        {
            var target:SkillLearnWindow_inlineComponent2;
            var watcherSetupUtilClass:Object;
            .mx_internal::setDocumentDescriptor(_documentDescriptor_);
            var bindings:* = _SkillLearnWindow_inlineComponent2_bindingsSetup();
            var watchers:Array;
            target;
            if (_watcherSetupUtil == null)
            {
                watcherSetupUtilClass = getDefinitionByName("_com_kbmj_viking_view_home_SkillLearnWindow_inlineComponent2WatcherSetupUtil");
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

        public function ___SkillLearnWindow_inlineComponent2_Image2_click(event:MouseEvent) : void
        {
            outerDocument.learnSkill(data);
            return;
        }// end function

        private function _SkillLearnWindow_inlineComponent2_bindingExprs() : void
        {
            var _loc_1:* = undefined;
            _loc_1 = outerDocument.showTutMark(data);
            _loc_1 = outerDocument.canLearnSkill(data);
            return;
        }// end function

        public function get outerDocument() : SkillLearnWindow
        {
            return this._88844982outerDocument;
        }// end function

        private function _SkillLearnWindow_inlineComponent2_bindingsSetup() : Array
        {
            var binding:Binding;
            var result:Array;
            binding = new Binding(this, function () : Boolean
            {
                return outerDocument.showTutMark(data);
            }// end function
            , function (param1:Boolean) : void
            {
                _SkillLearnWindow_inlineComponent2_Image1.visible = param1;
                return;
            }// end function
            , "_SkillLearnWindow_inlineComponent2_Image1.visible");
            result[0] = binding;
            binding = new Binding(this, function () : Object
            {
                return outerDocument.canLearnSkill(data);
            }// end function
            , function (param1:Object) : void
            {
                _SkillLearnWindow_inlineComponent2_Image2.source = param1;
                return;
            }// end function
            , "_SkillLearnWindow_inlineComponent2_Image2.source");
            result[1] = binding;
            return result;
        }// end function

        public static function set watcherSetupUtil(param1:IWatcherSetupUtil) : void
        {
            SkillLearnWindow_inlineComponent2._watcherSetupUtil = param1;
            return;
        }// end function

    }
}
