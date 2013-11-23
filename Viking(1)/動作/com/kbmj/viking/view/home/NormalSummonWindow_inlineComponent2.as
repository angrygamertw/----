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

    public class NormalSummonWindow_inlineComponent2 extends HBox implements IBindingClient
    {
        var _bindingsBeginWithWord:Object;
        var _bindingsByDestination:Object;
        var _watchers:Array;
        private var _88844982outerDocument:NormalSummonWindow;
        public var _NormalSummonWindow_inlineComponent2_Image1:Image;
        public var _NormalSummonWindow_inlineComponent2_Image2:Image;
        private var _embed_mxml__swf_common_arrow_right_swf_759350985:Class;
        var _bindings:Array;
        private var _documentDescriptor_:UIComponentDescriptor;
        private static var _watcherSetupUtil:IWatcherSetupUtil;

        public function NormalSummonWindow_inlineComponent2()
        {
            _documentDescriptor_ = new UIComponentDescriptor({type:HBox, propertiesFactory:function () : Object
            {
                return {width:78, childDescriptors:[new UIComponentDescriptor({type:Image, id:"_NormalSummonWindow_inlineComponent2_Image1", propertiesFactory:function () : Object
                {
                    return {source:_embed_mxml__swf_common_arrow_right_swf_759350985, width:18, height:20};
                }// end function
                }), new UIComponentDescriptor({type:Image, id:"_NormalSummonWindow_inlineComponent2_Image2", events:{click:"___NormalSummonWindow_inlineComponent2_Image2_click"}})]};
            }// end function
            });
            _embed_mxml__swf_common_arrow_right_swf_759350985 = NormalSummonWindow_inlineComponent2__embed_mxml__swf_common_arrow_right_swf_759350985;
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
            this.width = 78;
            return;
        }// end function

        public function set outerDocument(param1:NormalSummonWindow) : void
        {
            var _loc_2:* = this._88844982outerDocument;
            if (_loc_2 !== param1)
            {
                this._88844982outerDocument = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "outerDocument", _loc_2, param1));
            }
            return;
        }// end function

        public function ___NormalSummonWindow_inlineComponent2_Image2_click(event:MouseEvent) : void
        {
            outerDocument.addSelectIndex(data);
            return;
        }// end function

        override public function initialize() : void
        {
            var target:NormalSummonWindow_inlineComponent2;
            var watcherSetupUtilClass:Object;
            .mx_internal::setDocumentDescriptor(_documentDescriptor_);
            var bindings:* = _NormalSummonWindow_inlineComponent2_bindingsSetup();
            var watchers:Array;
            target;
            if (_watcherSetupUtil == null)
            {
                watcherSetupUtilClass = getDefinitionByName("_com_kbmj_viking_view_home_NormalSummonWindow_inlineComponent2WatcherSetupUtil");
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

        private function _NormalSummonWindow_inlineComponent2_bindingExprs() : void
        {
            var _loc_1:* = undefined;
            _loc_1 = outerDocument.showTutMark(data);
            _loc_1 = outerDocument.setSelectButton(data);
            return;
        }// end function

        private function _NormalSummonWindow_inlineComponent2_bindingsSetup() : Array
        {
            var binding:Binding;
            var result:Array;
            binding = new Binding(this, function () : Boolean
            {
                return outerDocument.showTutMark(data);
            }// end function
            , function (param1:Boolean) : void
            {
                _NormalSummonWindow_inlineComponent2_Image1.visible = param1;
                return;
            }// end function
            , "_NormalSummonWindow_inlineComponent2_Image1.visible");
            result[0] = binding;
            binding = new Binding(this, function () : Object
            {
                return outerDocument.setSelectButton(data);
            }// end function
            , function (param1:Object) : void
            {
                _NormalSummonWindow_inlineComponent2_Image2.source = param1;
                return;
            }// end function
            , "_NormalSummonWindow_inlineComponent2_Image2.source");
            result[1] = binding;
            return result;
        }// end function

        public function get outerDocument() : NormalSummonWindow
        {
            return this._88844982outerDocument;
        }// end function

        public static function set watcherSetupUtil(param1:IWatcherSetupUtil) : void
        {
            NormalSummonWindow_inlineComponent2._watcherSetupUtil = param1;
            return;
        }// end function

    }
}
