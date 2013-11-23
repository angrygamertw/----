package com.kbmj.viking.view.city
{
    import flash.utils.*;
    import mx.binding.*;
    import mx.containers.*;
    import mx.controls.*;
    import mx.core.*;
    import mx.events.*;

    public class SellExhibitWindow_inlineComponent4 extends Box implements IBindingClient
    {
        var _bindingsBeginWithWord:Object;
        public var _SellExhibitWindow_inlineComponent4_Label1:Label;
        var _bindings:Array;
        var _bindingsByDestination:Object;
        private var _documentDescriptor_:UIComponentDescriptor;
        private var _88844982outerDocument:SellExhibitWindow;
        var _watchers:Array;
        private static var _watcherSetupUtil:IWatcherSetupUtil;

        public function SellExhibitWindow_inlineComponent4()
        {
            _documentDescriptor_ = new UIComponentDescriptor({type:Box, propertiesFactory:function () : Object
            {
                return {width:110, childDescriptors:[new UIComponentDescriptor({type:Label, id:"_SellExhibitWindow_inlineComponent4_Label1", stylesFactory:function () : void
                {
                    this.textAlign = "center";
                    return;
                }// end function
                , propertiesFactory:function () : Object
                {
                    return {width:110};
                }// end function
                })]};
            }// end function
            });
            _bindings = [];
            _watchers = [];
            _bindingsByDestination = {};
            _bindingsBeginWithWord = {};
            mx_internal::_document = this;
            this.width = 110;
            return;
        }// end function

        private function _SellExhibitWindow_inlineComponent4_bindingExprs() : void
        {
            var _loc_1:* = undefined;
            _loc_1 = outerDocument.getPriceLabel(data);
            return;
        }// end function

        private function _SellExhibitWindow_inlineComponent4_bindingsSetup() : Array
        {
            var binding:Binding;
            var result:Array;
            binding = new Binding(this, function () : String
            {
                var _loc_1:* = outerDocument.getPriceLabel(data);
                var _loc_2:* = _loc_1 == undefined ? (null) : (String(_loc_1));
                return _loc_2;
            }// end function
            , function (param1:String) : void
            {
                _SellExhibitWindow_inlineComponent4_Label1.text = param1;
                return;
            }// end function
            , "_SellExhibitWindow_inlineComponent4_Label1.text");
            result[0] = binding;
            return result;
        }// end function

        public function get outerDocument() : SellExhibitWindow
        {
            return this._88844982outerDocument;
        }// end function

        override public function initialize() : void
        {
            var target:SellExhibitWindow_inlineComponent4;
            var watcherSetupUtilClass:Object;
            .mx_internal::setDocumentDescriptor(_documentDescriptor_);
            var bindings:* = _SellExhibitWindow_inlineComponent4_bindingsSetup();
            var watchers:Array;
            target;
            if (_watcherSetupUtil == null)
            {
                watcherSetupUtilClass = getDefinitionByName("_com_kbmj_viking_view_city_SellExhibitWindow_inlineComponent4WatcherSetupUtil");
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

        public function set outerDocument(param1:SellExhibitWindow) : void
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
            SellExhibitWindow_inlineComponent4._watcherSetupUtil = param1;
            return;
        }// end function

    }
}
