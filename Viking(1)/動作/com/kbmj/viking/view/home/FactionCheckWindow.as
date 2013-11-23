package com.kbmj.viking.view.home
{
    import com.kbmj.viking.lib.*;
    import flash.display.*;
    import flash.events.*;
    import flash.utils.*;
    import mx.binding.*;
    import mx.containers.*;
    import mx.controls.*;
    import mx.core.*;
    import mx.events.*;
    import mx.managers.*;

    public class FactionCheckWindow extends Canvas implements IBindingClient
    {
        public var _FactionCheckWindow_Image3:Image;
        private var _1743861666FACTION_LABELS:Object;
        var _watchers:Array;
        var _bindingsByDestination:Object;
        var _bindingsBeginWithWord:Object;
        private var _1193840764_swf_close:MovieClipLoaderAsset;
        private var factionId:int = 0;
        private var _1818888257_swf_bg:MovieClipLoaderAsset;
        private var _648466145dismissBox:Box;
        public var _FactionCheckWindow_Text1:Text;
        public var _FactionCheckWindow_Text2:Text;
        var _bindings:Array;
        private var _1329845262_swf_dismiss:MovieClipLoaderAsset;
        public var _FactionCheckWindow_Image1:Image;
        public var _FactionCheckWindow_Image2:Image;
        private var _documentDescriptor_:UIComponentDescriptor;
        public static const SELECT_FACTION:String = "factionCheckWindow/selectFaction";
        private static var _watcherSetupUtil:IWatcherSetupUtil;

        public function FactionCheckWindow()
        {
            _documentDescriptor_ = new UIComponentDescriptor({type:Canvas, propertiesFactory:function () : Object
            {
                return {childDescriptors:[new UIComponentDescriptor({type:Canvas}), new UIComponentDescriptor({type:Image, id:"_FactionCheckWindow_Image1"}), new UIComponentDescriptor({type:Box, id:"dismissBox", propertiesFactory:function () : Object
                {
                    return {percentWidth:100, percentHeight:100, visible:true, childDescriptors:[new UIComponentDescriptor({type:Canvas, propertiesFactory:function () : Object
                    {
                        return {childDescriptors:[new UIComponentDescriptor({type:Text, id:"_FactionCheckWindow_Text1", stylesFactory:function () : void
                        {
                            this.fontSize = 16;
                            this.fontWeight = "bold";
                            this.color = 15658734;
                            return;
                        }// end function
                        , propertiesFactory:function () : Object
                        {
                            return {width:200, x:340, y:180};
                        }// end function
                        }), new UIComponentDescriptor({type:Text, id:"_FactionCheckWindow_Text2", stylesFactory:function () : void
                        {
                            this.fontSize = 14;
                            return;
                        }// end function
                        , propertiesFactory:function () : Object
                        {
                            return {width:200, x:280, y:220};
                        }// end function
                        }), new UIComponentDescriptor({type:Image, id:"_FactionCheckWindow_Image2", events:{click:"___FactionCheckWindow_Image2_click"}, propertiesFactory:function () : Object
                        {
                            return {x:380, y:315};
                        }// end function
                        }), new UIComponentDescriptor({type:Image, id:"_FactionCheckWindow_Image3", events:{click:"___FactionCheckWindow_Image3_click"}, propertiesFactory:function () : Object
                        {
                            return {x:260, y:315};
                        }// end function
                        })]};
                    }// end function
                    })]};
                }// end function
                })]};
            }// end function
            });
            _1193840764_swf_close = new Viking.EmbedSwfButtonCommon();
            _1329845262_swf_dismiss = new Viking.EmbedSwfButtonCommon();
            _1818888257_swf_bg = new Viking.EmbedSwfWindowCommon();
            _1743861666FACTION_LABELS = {2:Utils.i18n("generalFactionNameBlueDragon"), 3:Utils.i18n("generalFactionNameSuzaku"), 4:Utils.i18n("generalFactionNameWhiteTiger"), 5:Utils.i18n("generalFactionNameTortoise")};
            _bindings = [];
            _watchers = [];
            _bindingsByDestination = {};
            _bindingsBeginWithWord = {};
            mx_internal::_document = this;
            return;
        }// end function

        private function set _swf_bg(param1:MovieClipLoaderAsset) : void
        {
            var _loc_2:* = this._1818888257_swf_bg;
            if (_loc_2 !== param1)
            {
                this._1818888257_swf_bg = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "_swf_bg", _loc_2, param1));
            }
            return;
        }// end function

        private function closeWindow() : void
        {
            PopUpManager.removePopUp(this);
            return;
        }// end function

        public function setdata() : void
        {
            return;
        }// end function

        private function get _swf_dismiss() : MovieClipLoaderAsset
        {
            return this._1329845262_swf_dismiss;
        }// end function

        override public function initialize() : void
        {
            var target:FactionCheckWindow;
            var watcherSetupUtilClass:Object;
            .mx_internal::setDocumentDescriptor(_documentDescriptor_);
            var bindings:* = _FactionCheckWindow_bindingsSetup();
            var watchers:Array;
            target;
            if (_watcherSetupUtil == null)
            {
                watcherSetupUtilClass = getDefinitionByName("_com_kbmj_viking_view_home_FactionCheckWindowWatcherSetupUtil");
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

        private function getFactionName() : String
        {
            return FACTION_LABELS[factionId];
        }// end function

        private function set _swf_dismiss(param1:MovieClipLoaderAsset) : void
        {
            var _loc_2:* = this._1329845262_swf_dismiss;
            if (_loc_2 !== param1)
            {
                this._1329845262_swf_dismiss = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "_swf_dismiss", _loc_2, param1));
            }
            return;
        }// end function

        public function init(param1:int) : void
        {
            MovieClip(Loader(_swf_close.getChildAt(0)).content).gotoAndPlay(0);
            MovieClip(Loader(_swf_close.getChildAt(0)).content).gotoAndPlay("button_no");
            MovieClip(Loader(_swf_dismiss.getChildAt(0)).content).gotoAndPlay(0);
            MovieClip(Loader(_swf_dismiss.getChildAt(0)).content).gotoAndPlay("button_yes");
            MovieClip(Loader(_swf_bg.getChildAt(0)).content).gotoAndPlay(0);
            MovieClip(Loader(_swf_bg.getChildAt(0)).content).gotoAndPlay("center_300x200");
            factionId = param1;
            return;
        }// end function

        private function get FACTION_LABELS() : Object
        {
            return this._1743861666FACTION_LABELS;
        }// end function

        public function ___FactionCheckWindow_Image2_click(event:MouseEvent) : void
        {
            closeWindow();
            return;
        }// end function

        private function _FactionCheckWindow_bindingExprs() : void
        {
            var _loc_1:* = undefined;
            _loc_1 = _swf_bg;
            _loc_1 = Utils.i18n("factionCheckTitle");
            _loc_1 = Utils.i18n("factionCheckConfirmation", getFactionName());
            _loc_1 = _swf_close;
            _loc_1 = _swf_dismiss;
            return;
        }// end function

        private function get _swf_bg() : MovieClipLoaderAsset
        {
            return this._1818888257_swf_bg;
        }// end function

        private function set FACTION_LABELS(param1:Object) : void
        {
            var _loc_2:* = this._1743861666FACTION_LABELS;
            if (_loc_2 !== param1)
            {
                this._1743861666FACTION_LABELS = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "FACTION_LABELS", _loc_2, param1));
            }
            return;
        }// end function

        public function set dismissBox(param1:Box) : void
        {
            var _loc_2:* = this._648466145dismissBox;
            if (_loc_2 !== param1)
            {
                this._648466145dismissBox = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "dismissBox", _loc_2, param1));
            }
            return;
        }// end function

        public function ___FactionCheckWindow_Image3_click(event:MouseEvent) : void
        {
            sendEvent(SELECT_FACTION);
            return;
        }// end function

        public function get dismissBox() : Box
        {
            return this._648466145dismissBox;
        }// end function

        private function _FactionCheckWindow_bindingsSetup() : Array
        {
            var binding:Binding;
            var result:Array;
            binding = new Binding(this, function () : Object
            {
                return _swf_bg;
            }// end function
            , function (param1:Object) : void
            {
                _FactionCheckWindow_Image1.source = param1;
                return;
            }// end function
            , "_FactionCheckWindow_Image1.source");
            result[0] = binding;
            binding = new Binding(this, function () : String
            {
                var _loc_1:* = Utils.i18n("factionCheckTitle");
                var _loc_2:* = _loc_1 == undefined ? (null) : (String(_loc_1));
                return _loc_2;
            }// end function
            , function (param1:String) : void
            {
                _FactionCheckWindow_Text1.text = param1;
                return;
            }// end function
            , "_FactionCheckWindow_Text1.text");
            result[1] = binding;
            binding = new Binding(this, function () : String
            {
                var _loc_1:* = Utils.i18n("factionCheckConfirmation", getFactionName());
                var _loc_2:* = _loc_1 == undefined ? (null) : (String(_loc_1));
                return _loc_2;
            }// end function
            , function (param1:String) : void
            {
                _FactionCheckWindow_Text2.text = param1;
                return;
            }// end function
            , "_FactionCheckWindow_Text2.text");
            result[2] = binding;
            binding = new Binding(this, function () : Object
            {
                return _swf_close;
            }// end function
            , function (param1:Object) : void
            {
                _FactionCheckWindow_Image2.source = param1;
                return;
            }// end function
            , "_FactionCheckWindow_Image2.source");
            result[3] = binding;
            binding = new Binding(this, function () : Object
            {
                return _swf_dismiss;
            }// end function
            , function (param1:Object) : void
            {
                _FactionCheckWindow_Image3.source = param1;
                return;
            }// end function
            , "_FactionCheckWindow_Image3.source");
            result[4] = binding;
            return result;
        }// end function

        private function sendEvent(param1:String) : void
        {
            closeWindow();
            this.dispatchEvent(new Event(param1));
            return;
        }// end function

        private function get _swf_close() : MovieClipLoaderAsset
        {
            return this._1193840764_swf_close;
        }// end function

        private function set _swf_close(param1:MovieClipLoaderAsset) : void
        {
            var _loc_2:* = this._1193840764_swf_close;
            if (_loc_2 !== param1)
            {
                this._1193840764_swf_close = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "_swf_close", _loc_2, param1));
            }
            return;
        }// end function

        public static function set watcherSetupUtil(param1:IWatcherSetupUtil) : void
        {
            FactionCheckWindow._watcherSetupUtil = param1;
            return;
        }// end function

    }
}
