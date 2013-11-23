package com.kbmj.viking.view.home
{
    import com.kbmj.viking.view.*;
    import flash.display.*;
    import flash.events.*;
    import flash.utils.*;
    import mx.binding.*;
    import mx.containers.*;
    import mx.controls.*;
    import mx.core.*;
    import mx.events.*;

    public class AdmissionFactionWindow extends PopupWindow implements IBindingClient
    {
        private var _1433715808_swf_faction:MovieClipLoaderAsset;
        private var _1213970065_swf_faction_window:MovieClipLoaderAsset;
        var _bindingsByDestination:Object;
        var _bindingsBeginWithWord:Object;
        public var _AdmissionFactionWindow_Image2:Image;
        public var _AdmissionFactionWindow_Image3:Image;
        private var _factionId:int = 2;
        private var _1170044564factionCanvas:Canvas;
        var _watchers:Array;
        var _bindings:Array;
        private var _embed_mxml__images_black_jpg_491440297:Class;
        private var _documentDescriptor_:UIComponentDescriptor;
        private static var EmbedSwfFaction:Class = AdmissionFactionWindow_EmbedSwfFaction;
        public static const CLOSE_WINDOW:String = "CloseAdmissionFactionWindow";
        private static var _watcherSetupUtil:IWatcherSetupUtil;
        public static const NAME:String = "AdmissionFactionWindow";

        public function AdmissionFactionWindow()
        {
            _documentDescriptor_ = new UIComponentDescriptor({type:PopupWindow, propertiesFactory:function () : Object
            {
                return {childDescriptors:[new UIComponentDescriptor({type:Canvas, id:"factionCanvas", propertiesFactory:function () : Object
                {
                    return {width:760, height:560, childDescriptors:[new UIComponentDescriptor({type:Image, propertiesFactory:function () : Object
                    {
                        return {source:_embed_mxml__images_black_jpg_491440297, alpha:0.2, percentWidth:100, percentHeight:100};
                    }// end function
                    }), new UIComponentDescriptor({type:Image, id:"_AdmissionFactionWindow_Image2"}), new UIComponentDescriptor({type:Image, id:"_AdmissionFactionWindow_Image3"})]};
                }// end function
                })]};
            }// end function
            });
            _1213970065_swf_faction_window = new Viking.EmbedSwfWindowCommon();
            _1433715808_swf_faction = new EmbedSwfFaction();
            _embed_mxml__images_black_jpg_491440297 = AdmissionFactionWindow__embed_mxml__images_black_jpg_491440297;
            _bindings = [];
            _watchers = [];
            _bindingsByDestination = {};
            _bindingsBeginWithWord = {};
            mx_internal::_document = this;
            this.addEventListener("creationComplete", ___AdmissionFactionWindow_PopupWindow1_creationComplete);
            return;
        }// end function

        private function set _swf_faction(param1:MovieClipLoaderAsset) : void
        {
            var _loc_2:* = this._1433715808_swf_faction;
            if (_loc_2 !== param1)
            {
                this._1433715808_swf_faction = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "_swf_faction", _loc_2, param1));
            }
            return;
        }// end function

        public function init() : void
        {
            MovieClip(Loader(_swf_faction_window.getChildAt(0)).content).gotoAndPlay("center_400x460_2");
            MovieClip(Loader(_swf_faction.getChildAt(0)).content).gotoAndPlay(getFactionLabel());
            Loader(_swf_faction.getChildAt(0)).content.addEventListener("BUTTON_CLOSE", onOkClick);
            return;
        }// end function

        private function _AdmissionFactionWindow_bindingExprs() : void
        {
            var _loc_1:* = undefined;
            _loc_1 = _swf_faction_window;
            _loc_1 = _swf_faction;
            return;
        }// end function

        override public function initialize() : void
        {
            var target:AdmissionFactionWindow;
            var watcherSetupUtilClass:Object;
            .mx_internal::setDocumentDescriptor(_documentDescriptor_);
            var bindings:* = _AdmissionFactionWindow_bindingsSetup();
            var watchers:Array;
            target;
            if (_watcherSetupUtil == null)
            {
                watcherSetupUtilClass = getDefinitionByName("_com_kbmj_viking_view_home_AdmissionFactionWindowWatcherSetupUtil");
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

        private function set _swf_faction_window(param1:MovieClipLoaderAsset) : void
        {
            var _loc_2:* = this._1213970065_swf_faction_window;
            if (_loc_2 !== param1)
            {
                this._1213970065_swf_faction_window = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "_swf_faction_window", _loc_2, param1));
            }
            return;
        }// end function

        public function get factionCanvas() : Canvas
        {
            return this._1170044564factionCanvas;
        }// end function

        public function ___AdmissionFactionWindow_PopupWindow1_creationComplete(event:FlexEvent) : void
        {
            init();
            return;
        }// end function

        private function onOkClick(event:Event) : void
        {
            Loader(_swf_faction.getChildAt(0)).content.removeEventListener("BUTTON_CLOSE", onOkClick);
            sendEvent(CLOSE_WINDOW);
            onClose();
            return;
        }// end function

        public function set factionId(param1:int) : void
        {
            _factionId = param1;
            init();
            return;
        }// end function

        public function set factionCanvas(param1:Canvas) : void
        {
            var _loc_2:* = this._1170044564factionCanvas;
            if (_loc_2 !== param1)
            {
                this._1170044564factionCanvas = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "factionCanvas", _loc_2, param1));
            }
            return;
        }// end function

        private function _AdmissionFactionWindow_bindingsSetup() : Array
        {
            var binding:Binding;
            var result:Array;
            binding = new Binding(this, function () : Object
            {
                return _swf_faction_window;
            }// end function
            , function (param1:Object) : void
            {
                _AdmissionFactionWindow_Image2.source = param1;
                return;
            }// end function
            , "_AdmissionFactionWindow_Image2.source");
            result[0] = binding;
            binding = new Binding(this, function () : Object
            {
                return _swf_faction;
            }// end function
            , function (param1:Object) : void
            {
                _AdmissionFactionWindow_Image3.source = param1;
                return;
            }// end function
            , "_AdmissionFactionWindow_Image3.source");
            result[1] = binding;
            return result;
        }// end function

        private function getFactionLabel() : String
        {
            return "w_faction_0" + _factionId.toString();
        }// end function

        private function get _swf_faction() : MovieClipLoaderAsset
        {
            return this._1433715808_swf_faction;
        }// end function

        private function get _swf_faction_window() : MovieClipLoaderAsset
        {
            return this._1213970065_swf_faction_window;
        }// end function

        public static function set watcherSetupUtil(param1:IWatcherSetupUtil) : void
        {
            _watcherSetupUtil = param1;
            return;
        }// end function

    }
}
