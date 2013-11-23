package com.kbmj.viking.view.city
{
    import com.kbmj.viking.lib.*;
    import flash.events.*;
    import flash.utils.*;
    import mx.binding.*;
    import mx.containers.*;
    import mx.controls.*;
    import mx.core.*;
    import mx.events.*;
    import mx.styles.*;

    public class SearchGuildWindow_inlineComponent2 extends HBox implements IBindingClient
    {
        public var _SearchGuildWindow_inlineComponent2_Image1:Image;
        var _watchers:Array;
        var _bindingsByDestination:Object;
        public var _SearchGuildWindow_inlineComponent2_Label1:Label;
        var _bindings:Array;
        var _bindingsBeginWithWord:Object;
        private var _88844982outerDocument:SearchGuildWindow;
        private var _documentDescriptor_:UIComponentDescriptor;
        private static var _watcherSetupUtil:IWatcherSetupUtil;

        public function SearchGuildWindow_inlineComponent2()
        {
            _documentDescriptor_ = new UIComponentDescriptor({type:HBox, propertiesFactory:function () : Object
            {
                return {childDescriptors:[new UIComponentDescriptor({type:Canvas, propertiesFactory:function () : Object
                {
                    return {childDescriptors:[new UIComponentDescriptor({type:Image, id:"_SearchGuildWindow_inlineComponent2_Image1"})]};
                }// end function
                }), new UIComponentDescriptor({type:Label, id:"_SearchGuildWindow_inlineComponent2_Label1", events:{click:"___SearchGuildWindow_inlineComponent2_Label1_click"}, stylesFactory:function () : void
                {
                    this.fontSize = 12;
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
            if (!this.styleDeclaration)
            {
                this.styleDeclaration = new CSSStyleDeclaration();
            }
            this.styleDeclaration.defaultFactory = function () : void
            {
                this.verticalGap = 0;
                this.horizontalGap = 0;
                this.verticalAlign = "middle";
                return;
            }// end function
            ;
            return;
        }// end function

        private function _SearchGuildWindow_inlineComponent2_bindingsSetup() : Array
        {
            var binding:Binding;
            var result:Array;
            binding = new Binding(this, function () : Object
            {
                return outerDocument.getIcon(data);
            }// end function
            , function (param1:Object) : void
            {
                _SearchGuildWindow_inlineComponent2_Image1.source = param1;
                return;
            }// end function
            , "_SearchGuildWindow_inlineComponent2_Image1.source");
            result[0] = binding;
            binding = new Binding(this, function () : String
            {
                var _loc_1:* = outerDocument.getGuildName(data);
                var _loc_2:* = _loc_1 == undefined ? (null) : (String(_loc_1));
                return _loc_2;
            }// end function
            , function (param1:String) : void
            {
                _SearchGuildWindow_inlineComponent2_Label1.text = param1;
                return;
            }// end function
            , "_SearchGuildWindow_inlineComponent2_Label1.text");
            result[1] = binding;
            binding = new Binding(this, function () : String
            {
                var _loc_1:* = Utils.i18n("generalShowDetail");
                var _loc_2:* = _loc_1 == undefined ? (null) : (String(_loc_1));
                return _loc_2;
            }// end function
            , function (param1:String) : void
            {
                _SearchGuildWindow_inlineComponent2_Label1.toolTip = param1;
                return;
            }// end function
            , "_SearchGuildWindow_inlineComponent2_Label1.toolTip");
            result[2] = binding;
            return result;
        }// end function

        private function _SearchGuildWindow_inlineComponent2_bindingExprs() : void
        {
            var _loc_1:* = undefined;
            _loc_1 = outerDocument.getIcon(data);
            _loc_1 = outerDocument.getGuildName(data);
            _loc_1 = Utils.i18n("generalShowDetail");
            return;
        }// end function

        public function get outerDocument() : SearchGuildWindow
        {
            return this._88844982outerDocument;
        }// end function

        override public function initialize() : void
        {
            var target:SearchGuildWindow_inlineComponent2;
            var watcherSetupUtilClass:Object;
            .mx_internal::setDocumentDescriptor(_documentDescriptor_);
            var bindings:* = _SearchGuildWindow_inlineComponent2_bindingsSetup();
            var watchers:Array;
            target;
            if (_watcherSetupUtil == null)
            {
                watcherSetupUtilClass = getDefinitionByName("_com_kbmj_viking_view_city_SearchGuildWindow_inlineComponent2WatcherSetupUtil");
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

        public function ___SearchGuildWindow_inlineComponent2_Label1_click(event:MouseEvent) : void
        {
            outerDocument.onGuildDetail(data);
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
            SearchGuildWindow_inlineComponent2._watcherSetupUtil = param1;
            return;
        }// end function

    }
}
