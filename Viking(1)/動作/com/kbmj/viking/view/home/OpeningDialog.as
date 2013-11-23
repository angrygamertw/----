package com.kbmj.viking.view.home
{
    import flash.display.*;
    import flash.events.*;
    import flash.utils.*;
    import mx.binding.*;
    import mx.containers.*;
    import mx.controls.*;
    import mx.core.*;
    import mx.events.*;

    public class OpeningDialog extends Canvas implements IBindingClient
    {
        var _bindingsByDestination:Object;
        var _bindingsBeginWithWord:Object;
        private var _1075873300_swf_window:MovieClipLoaderAsset;
        var _watchers:Array;
        var _bindings:Array;
        private var _1605011748_swf_opening:MovieClipLoaderAsset;
        public var _OpeningDialog_Image1:Image;
        public var _OpeningDialog_Image2:Image;
        private var _documentDescriptor_:UIComponentDescriptor;
        public static const CLOSE_WINDOW:String = "OpeningDialog/closeWindow";
        private static var _watcherSetupUtil:IWatcherSetupUtil;
        public static var EmbedSwfOpening:Class = OpeningDialog_EmbedSwfOpening;

        public function OpeningDialog()
        {
            _documentDescriptor_ = new UIComponentDescriptor({type:Canvas, propertiesFactory:function () : Object
            {
                return {width:651, height:506, childDescriptors:[new UIComponentDescriptor({type:Image, id:"_OpeningDialog_Image1"}), new UIComponentDescriptor({type:Image, id:"_OpeningDialog_Image2"})]};
            }// end function
            });
            _1605011748_swf_opening = new EmbedSwfOpening();
            _1075873300_swf_window = new Viking.EmbedSwfWindowCommon();
            _bindings = [];
            _watchers = [];
            _bindingsByDestination = {};
            _bindingsBeginWithWord = {};
            mx_internal::_document = this;
            this.width = 651;
            this.height = 506;
            this.addEventListener("creationComplete", ___OpeningDialog_Canvas1_creationComplete);
            return;
        }// end function

        override public function initialize() : void
        {
            var target:OpeningDialog;
            var watcherSetupUtilClass:Object;
            .mx_internal::setDocumentDescriptor(_documentDescriptor_);
            var bindings:* = _OpeningDialog_bindingsSetup();
            var watchers:Array;
            target;
            if (_watcherSetupUtil == null)
            {
                watcherSetupUtilClass = getDefinitionByName("_com_kbmj_viking_view_home_OpeningDialogWatcherSetupUtil");
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

        public function okClick(event:Event) : void
        {
            Loader(_swf_opening.getChildAt(0)).content.removeEventListener("BUTTON_CLOSE", okClick);
            dispatchEvent(new Event(CLOSE_WINDOW));
            return;
        }// end function

        public function init() : void
        {
            MovieClip(Loader(_swf_window.getChildAt(0)).content).gotoAndPlay("right_400x460");
            MovieClip(Loader(_swf_opening.getChildAt(0)).content).gotoAndPlay("guidance");
            Loader(_swf_opening.getChildAt(0)).content.addEventListener("BUTTON_CLOSE", okClick);
            return;
        }// end function

        private function get _swf_opening() : MovieClipLoaderAsset
        {
            return this._1605011748_swf_opening;
        }// end function

        private function set _swf_window(param1:MovieClipLoaderAsset) : void
        {
            var _loc_2:* = this._1075873300_swf_window;
            if (_loc_2 !== param1)
            {
                this._1075873300_swf_window = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "_swf_window", _loc_2, param1));
            }
            return;
        }// end function

        private function _OpeningDialog_bindingsSetup() : Array
        {
            var binding:Binding;
            var result:Array;
            binding = new Binding(this, function () : Object
            {
                return _swf_window;
            }// end function
            , function (param1:Object) : void
            {
                _OpeningDialog_Image1.source = param1;
                return;
            }// end function
            , "_OpeningDialog_Image1.source");
            result[0] = binding;
            binding = new Binding(this, function () : Object
            {
                return _swf_opening;
            }// end function
            , function (param1:Object) : void
            {
                _OpeningDialog_Image2.source = param1;
                return;
            }// end function
            , "_OpeningDialog_Image2.source");
            result[1] = binding;
            return result;
        }// end function

        private function _OpeningDialog_bindingExprs() : void
        {
            var _loc_1:* = undefined;
            _loc_1 = _swf_window;
            _loc_1 = _swf_opening;
            return;
        }// end function

        private function set _swf_opening(param1:MovieClipLoaderAsset) : void
        {
            var _loc_2:* = this._1605011748_swf_opening;
            if (_loc_2 !== param1)
            {
                this._1605011748_swf_opening = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "_swf_opening", _loc_2, param1));
            }
            return;
        }// end function

        private function get _swf_window() : MovieClipLoaderAsset
        {
            return this._1075873300_swf_window;
        }// end function

        public function ___OpeningDialog_Canvas1_creationComplete(event:FlexEvent) : void
        {
            init();
            return;
        }// end function

        public static function set watcherSetupUtil(param1:IWatcherSetupUtil) : void
        {
            _watcherSetupUtil = param1;
            return;
        }// end function

    }
}
