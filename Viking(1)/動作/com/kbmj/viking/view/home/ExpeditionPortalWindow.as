package com.kbmj.viking.view.home
{
    import com.kbmj.viking.view.*;
    import flash.display.*;
    import flash.events.*;
    import flash.utils.*;
    import mx.binding.*;
    import mx.controls.*;
    import mx.core.*;
    import mx.events.*;

    public class ExpeditionPortalWindow extends PopupWindow implements IBindingClient
    {
        private var _documentDescriptor_:UIComponentDescriptor;
        var _bindingsBeginWithWord:Object;
        var _bindingsByDestination:Object;
        var _watchers:Array;
        public var _ExpeditionPortalWindow_Image1:Image;
        var _bindings:Array;
        private var _1888771566_swf_expedition_portal:MovieClipLoaderAsset;
        public static const HOME_ACTION_GOTO_EVENT_MAP:String = NAME + "gotoEventMap";
        public static const HOME_ACTION_GOTO_EXPEDITION2:String = NAME + "gotoExpedition2";
        public static const HOME_ACTION_GOTO_EXPEDITION3NORMAL:String = NAME + "gotoExpedition3Normal";
        private static var _watcherSetupUtil:IWatcherSetupUtil;
        public static const HOME_ACTION_GOTO_EXPEDITION3HARD:String = NAME + "gotoExpedition3Hard";
        public static const NAME:String = "ExpeditionPortalWindow";
        public static const CLOSE_EXPEDITION_PORTAL_WINDOW:String = NAME + "closeExpeditionPortalWindow";
        public static const SELECT_EXPEDITION3:String = NAME + "selectExpedition3";
        public static const HOME_ACTION_GOTO_CONTINUATION:String = NAME + "gotoContinuation";
        public static const HOME_ACTION_GOTO_EXPEDITION:String = NAME + "gotoExpedition";
        public static var EmbedSwfExpeditionPortal:Class = ExpeditionPortalWindow_EmbedSwfExpeditionPortal;

        public function ExpeditionPortalWindow()
        {
            _documentDescriptor_ = new UIComponentDescriptor({type:PopupWindow, propertiesFactory:function () : Object
            {
                return {width:760, height:560, childDescriptors:[new UIComponentDescriptor({type:Image, id:"_ExpeditionPortalWindow_Image1"})]};
            }// end function
            });
            _1888771566_swf_expedition_portal = new EmbedSwfExpeditionPortal();
            _bindings = [];
            _watchers = [];
            _bindingsByDestination = {};
            _bindingsBeginWithWord = {};
            mx_internal::_document = this;
            this.width = 760;
            this.height = 560;
            this.horizontalScrollPolicy = "off";
            this.verticalScrollPolicy = "off";
            this.addEventListener("creationComplete", ___ExpeditionPortalWindow_PopupWindow1_creationComplete);
            return;
        }// end function

        private function expeditionButtonsClicked(event:Event) : void
        {
            dispatchEvent(new Event(HOME_ACTION_GOTO_EXPEDITION));
            return;
        }// end function

        private function init() : void
        {
            MovieClip(Loader(_swf_expedition_portal.getChildAt(0)).content).gotoAndPlay(0);
            return;
        }// end function

        private function expedition3HardClicked(event:Event) : void
        {
            dispatchEvent(new Event(HOME_ACTION_GOTO_EXPEDITION3HARD));
            return;
        }// end function

        private function expedition3NormalClicked(event:Event) : void
        {
            dispatchEvent(new Event(HOME_ACTION_GOTO_EXPEDITION3NORMAL));
            return;
        }// end function

        override public function initialize() : void
        {
            var target:ExpeditionPortalWindow;
            var watcherSetupUtilClass:Object;
            .mx_internal::setDocumentDescriptor(_documentDescriptor_);
            var bindings:* = _ExpeditionPortalWindow_bindingsSetup();
            var watchers:Array;
            target;
            if (_watcherSetupUtil == null)
            {
                watcherSetupUtilClass = getDefinitionByName("_com_kbmj_viking_view_home_ExpeditionPortalWindowWatcherSetupUtil");
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

        private function _ExpeditionPortalWindow_bindingExprs() : void
        {
            var _loc_1:* = undefined;
            _loc_1 = _swf_expedition_portal;
            return;
        }// end function

        private function expedition2ButtonsClicked(event:Event) : void
        {
            dispatchEvent(new Event(HOME_ACTION_GOTO_EXPEDITION2));
            return;
        }// end function

        public function ___ExpeditionPortalWindow_PopupWindow1_creationComplete(event:FlexEvent) : void
        {
            init();
            return;
        }// end function

        private function set _swf_expedition_portal(param1:MovieClipLoaderAsset) : void
        {
            var _loc_2:* = this._1888771566_swf_expedition_portal;
            if (_loc_2 !== param1)
            {
                this._1888771566_swf_expedition_portal = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "_swf_expedition_portal", _loc_2, param1));
            }
            return;
        }// end function

        private function eventMapButtonsClicked(event:Event) : void
        {
            dispatchEvent(new Event(HOME_ACTION_GOTO_EVENT_MAP));
            return;
        }// end function

        private function backButtonsClicked(event:Event) : void
        {
            removeEvent();
            dispatchEvent(new Event(CLOSE_EXPEDITION_PORTAL_WINDOW));
            return;
        }// end function

        private function get _swf_expedition_portal() : MovieClipLoaderAsset
        {
            return this._1888771566_swf_expedition_portal;
        }// end function

        private function removeEvent() : void
        {
            Loader(_swf_expedition_portal.getChildAt(0)).content.removeEventListener("BUTTON_BACK", backButtonsClicked);
            Loader(_swf_expedition_portal.getChildAt(0)).content.removeEventListener("BUTTON_EX_01", expeditionButtonsClicked);
            Loader(_swf_expedition_portal.getChildAt(0)).content.removeEventListener("BUTTON_EX_02", expedition2ButtonsClicked);
            Loader(_swf_expedition_portal.getChildAt(0)).content.removeEventListener("BUTTON_EX_03_NORMAL", expedition3NormalClicked);
            Loader(_swf_expedition_portal.getChildAt(0)).content.removeEventListener("BUTTON_EX_03_DIFFICULT", expedition3HardClicked);
            Loader(_swf_expedition_portal.getChildAt(0)).content.removeEventListener("BUTTON_EX_04", eventMapButtonsClicked);
            Loader(_swf_expedition_portal.getChildAt(0)).content.removeEventListener("BUTTON_BATTLEMAP", continuationButtonsClicked);
            return;
        }// end function

        public function addEvent() : void
        {
            Loader(_swf_expedition_portal.getChildAt(0)).content.addEventListener("BUTTON_BACK", backButtonsClicked);
            Loader(_swf_expedition_portal.getChildAt(0)).content.addEventListener("BUTTON_EX_01", expeditionButtonsClicked);
            Loader(_swf_expedition_portal.getChildAt(0)).content.addEventListener("BUTTON_EX_02", expedition2ButtonsClicked);
            Loader(_swf_expedition_portal.getChildAt(0)).content.addEventListener("BUTTON_EX_03_NORMAL", expedition3NormalClicked);
            Loader(_swf_expedition_portal.getChildAt(0)).content.addEventListener("BUTTON_EX_03_DIFFICULT", expedition3HardClicked);
            Loader(_swf_expedition_portal.getChildAt(0)).content.addEventListener("BUTTON_EX_04", eventMapButtonsClicked);
            Loader(_swf_expedition_portal.getChildAt(0)).content.addEventListener("BUTTON_BATTLEMAP", continuationButtonsClicked);
            init();
            return;
        }// end function

        private function _ExpeditionPortalWindow_bindingsSetup() : Array
        {
            var binding:Binding;
            var result:Array;
            binding = new Binding(this, function () : Object
            {
                return _swf_expedition_portal;
            }// end function
            , function (param1:Object) : void
            {
                _ExpeditionPortalWindow_Image1.source = param1;
                return;
            }// end function
            , "_ExpeditionPortalWindow_Image1.source");
            result[0] = binding;
            return result;
        }// end function

        private function continuationButtonsClicked(event:Event) : void
        {
            dispatchEvent(new Event(HOME_ACTION_GOTO_CONTINUATION));
            return;
        }// end function

        public static function set watcherSetupUtil(param1:IWatcherSetupUtil) : void
        {
            _watcherSetupUtil = param1;
            return;
        }// end function

    }
}
