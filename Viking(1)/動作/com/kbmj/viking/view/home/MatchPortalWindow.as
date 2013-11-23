package com.kbmj.viking.view.home
{
    import com.kbmj.viking.*;
    import com.kbmj.viking.lib.*;
    import com.kbmj.viking.view.*;
    import flash.display.*;
    import flash.events.*;
    import flash.utils.*;
    import mx.binding.*;
    import mx.controls.*;
    import mx.core.*;
    import mx.events.*;

    public class MatchPortalWindow extends PopupWindow implements IBindingClient
    {
        private var descriptionWindow:ExpeditionDescriptionWindow;
        private var _909745771_specialMatch:Boolean = false;
        var _watchers:Array;
        private var _1613371357garrison:Image;
        var _bindingsByDestination:Object;
        var _bindingsBeginWithWord:Object;
        private var _1770190726_rankId:int = 0;
        private var _172330900_buttonGarrison:MovieClipLoaderAsset;
        var _bindings:Array;
        public var _MatchPortalWindow_Image1:Image;
        private var _1888771566_swf_expedition_portal:MovieClipLoaderAsset;
        private var _documentDescriptor_:UIComponentDescriptor;
        public static var EmbedSwfExpeditionPortal:Class = MatchPortalWindow_EmbedSwfExpeditionPortal;
        public static const CLOSE_MATCH_PORTAL_WINDOW:String = NAME + "closeExpeditionPortalWindow";
        public static const NAME:String = "MatchPortalWindow";
        public static const HOME_ACTION_GOTO_SPECIAL_MATCH:String = NAME + "gotoSpecialMatch";
        private static var _watcherSetupUtil:IWatcherSetupUtil;
        public static const HOME_ACTION_GOTO_MATCH:String = NAME + "gotoMatch";
        public static const HOME_ACTION_GOTO_SHAM:String = NAME + "gotoSham";
        public static const MATCH_GARRISON_WINDOW_OPEN:String = NAME + "matchGarrisonWindowOpen";
        public static const DESCRIPTION_COMPLETE:String = "descriptionComplete";
        public static const MINIMUM_RANK:int = 9;

        public function MatchPortalWindow()
        {
            _documentDescriptor_ = new UIComponentDescriptor({type:PopupWindow, propertiesFactory:function () : Object
            {
                return {width:760, height:560, childDescriptors:[new UIComponentDescriptor({type:Image, id:"_MatchPortalWindow_Image1"}), new UIComponentDescriptor({type:Image, id:"garrison", events:{click:"__garrison_click"}, propertiesFactory:function () : Object
                {
                    return {y:42, x:10};
                }// end function
                })]};
            }// end function
            });
            _1888771566_swf_expedition_portal = new EmbedSwfExpeditionPortal();
            _172330900_buttonGarrison = new AllMap.EmbedSwfButtonCommonMap();
            descriptionWindow = new ExpeditionDescriptionWindow();
            _bindings = [];
            _watchers = [];
            _bindingsByDestination = {};
            _bindingsBeginWithWord = {};
            mx_internal::_document = this;
            this.width = 760;
            this.height = 560;
            this.horizontalScrollPolicy = "off";
            this.verticalScrollPolicy = "off";
            this.addEventListener("creationComplete", ___MatchPortalWindow_PopupWindow1_creationComplete);
            return;
        }// end function

        private function removeEvent() : void
        {
            Loader(_swf_expedition_portal.getChildAt(0)).content.removeEventListener("BUTTON_BACK", backButtonsClicked);
            Loader(_swf_expedition_portal.getChildAt(0)).content.removeEventListener("BUTTON_RAID", shamButtonsClicked);
            Loader(_swf_expedition_portal.getChildAt(0)).content.removeEventListener("BUTTON_EXHIBITION", matchButtonsClicked);
            Loader(_swf_expedition_portal.getChildAt(0)).content.removeEventListener("BUTTON_EXHIBITION_SPECIAL", specialMatchButtonsClicked);
            return;
        }// end function

        private function get _rankId() : int
        {
            return this._1770190726_rankId;
        }// end function

        private function shamButtonsClicked(event:Event) : void
        {
            dispatchEvent(new Event(HOME_ACTION_GOTO_SHAM));
            return;
        }// end function

        private function matchButtonsClicked(event:Event) : void
        {
            dispatchEvent(new Event(HOME_ACTION_GOTO_MATCH));
            return;
        }// end function

        private function init() : void
        {
            MovieClip(Loader(_buttonGarrison.getChildAt(0)).content).gotoAndPlay(0);
            MovieClip(Loader(_buttonGarrison.getChildAt(0)).content).gotoAndPlay("button_post_units");
            MovieClip(Loader(_swf_expedition_portal.getChildAt(0)).content).gotoAndPlay(0);
            if (_specialMatch)
            {
                MovieClip(Loader(_swf_expedition_portal.getChildAt(0)).content).gotoAndPlay("window_special");
            }
            return;
        }// end function

        private function specialMatchButtonsClicked(event:Event) : void
        {
            dispatchEvent(new Event(HOME_ACTION_GOTO_SPECIAL_MATCH));
            return;
        }// end function

        private function set _rankId(param1:int) : void
        {
            var _loc_2:* = this._1770190726_rankId;
            if (_loc_2 !== param1)
            {
                this._1770190726_rankId = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "_rankId", _loc_2, param1));
            }
            return;
        }// end function

        private function get _buttonGarrison() : MovieClipLoaderAsset
        {
            return this._172330900_buttonGarrison;
        }// end function

        override public function initialize() : void
        {
            var target:MatchPortalWindow;
            var watcherSetupUtilClass:Object;
            .mx_internal::setDocumentDescriptor(_documentDescriptor_);
            var bindings:* = _MatchPortalWindow_bindingsSetup();
            var watchers:Array;
            target;
            if (_watcherSetupUtil == null)
            {
                watcherSetupUtilClass = getDefinitionByName("_com_kbmj_viking_view_home_MatchPortalWindowWatcherSetupUtil");
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

        public function set specialMatch(param1:Boolean) : void
        {
            _specialMatch = param1;
            return;
        }// end function

        public function get garrison() : Image
        {
            return this._1613371357garrison;
        }// end function

        private function backButtonsClicked(event:Event) : void
        {
            removeEvent();
            dispatchEvent(new Event(CLOSE_MATCH_PORTAL_WINDOW));
            return;
        }// end function

        public function set evilPoints(param1:Array) : void
        {
            descriptionWindow.evilPoints = param1;
            return;
        }// end function

        private function set _buttonGarrison(param1:MovieClipLoaderAsset) : void
        {
            var _loc_2:* = this._172330900_buttonGarrison;
            if (_loc_2 !== param1)
            {
                this._172330900_buttonGarrison = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "_buttonGarrison", _loc_2, param1));
            }
            return;
        }// end function

        public function ___MatchPortalWindow_PopupWindow1_creationComplete(event:FlexEvent) : void
        {
            init();
            return;
        }// end function

        public function set garrison(param1:Image) : void
        {
            var _loc_2:* = this._1613371357garrison;
            if (_loc_2 !== param1)
            {
                this._1613371357garrison = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "garrison", _loc_2, param1));
            }
            return;
        }// end function

        public function __garrison_click(event:MouseEvent) : void
        {
            startUnitSelectGarrison();
            return;
        }// end function

        public function setExpeditionRank(param1:int) : void
        {
            _rankId = param1;
            if (param1 < MINIMUM_RANK)
            {
                return;
            }
            return;
        }// end function

        private function _MatchPortalWindow_bindingsSetup() : Array
        {
            var binding:Binding;
            var result:Array;
            binding = new Binding(this, function () : Object
            {
                return _swf_expedition_portal;
            }// end function
            , function (param1:Object) : void
            {
                _MatchPortalWindow_Image1.source = param1;
                return;
            }// end function
            , "_MatchPortalWindow_Image1.source");
            result[0] = binding;
            binding = new Binding(this, function () : Object
            {
                return _buttonGarrison;
            }// end function
            , function (param1:Object) : void
            {
                garrison.source = param1;
                return;
            }// end function
            , "garrison.source");
            result[1] = binding;
            return result;
        }// end function

        private function set _specialMatch(param1:Boolean) : void
        {
            var _loc_2:* = this._909745771_specialMatch;
            if (_loc_2 !== param1)
            {
                this._909745771_specialMatch = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "_specialMatch", _loc_2, param1));
            }
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

        public function startUnitSelectGarrison() : void
        {
            sendEvent(MATCH_GARRISON_WINDOW_OPEN);
            return;
        }// end function

        private function get _specialMatch() : Boolean
        {
            return this._909745771_specialMatch;
        }// end function

        private function get _swf_expedition_portal() : MovieClipLoaderAsset
        {
            return this._1888771566_swf_expedition_portal;
        }// end function

        private function buttonsClicked(param1:int) : void
        {
            var level:* = param1;
            if (_rankId < descriptionWindow.evilPoints[(level - 1)].minimum_rank_id || descriptionWindow.evilPoints[(level - 1)].max_rank_id < _rankId)
            {
                return;
            }
            descriptionWindow.init(String(level));
            this.popupWindow(descriptionWindow, false);
            if (!descriptionWindow.hasEventListener(ExpeditionDescriptionWindow.DESCRIPTION_COMPLETE))
            {
                descriptionWindow.addEventListener(ExpeditionDescriptionWindow.DESCRIPTION_COMPLETE, function (event:PopupEvent) : void
            {
                dispatchEvent(new PopupEvent(DESCRIPTION_COMPLETE, {topographyId:event.param.topographyId, level:event.param.level, evilPointId:event.param.evilPointId, forbiddenJobIds:event.param.forbiddenJobIds}));
                return;
            }// end function
            );
            }
            return;
        }// end function

        private function _MatchPortalWindow_bindingExprs() : void
        {
            var _loc_1:* = undefined;
            _loc_1 = _swf_expedition_portal;
            _loc_1 = _buttonGarrison;
            return;
        }// end function

        public function addEvent() : void
        {
            Loader(_swf_expedition_portal.getChildAt(0)).content.addEventListener("BUTTON_BACK", backButtonsClicked);
            Loader(_swf_expedition_portal.getChildAt(0)).content.addEventListener("BUTTON_RAID", shamButtonsClicked);
            Loader(_swf_expedition_portal.getChildAt(0)).content.addEventListener("BUTTON_EXHIBITION", matchButtonsClicked);
            Loader(_swf_expedition_portal.getChildAt(0)).content.addEventListener("BUTTON_EXHIBITION_SPECIAL", specialMatchButtonsClicked);
            return;
        }// end function

        public static function set watcherSetupUtil(param1:IWatcherSetupUtil) : void
        {
            _watcherSetupUtil = param1;
            return;
        }// end function

    }
}
