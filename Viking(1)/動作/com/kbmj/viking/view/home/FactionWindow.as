package com.kbmj.viking.view.home
{
    import com.kbmj.viking.lib.*;
    import com.kbmj.viking.view.*;
    import flash.display.*;
    import flash.events.*;
    import flash.utils.*;
    import mx.binding.*;
    import mx.containers.*;
    import mx.controls.*;
    import mx.core.*;
    import mx.events.*;

    public class FactionWindow extends PopupWindow implements IBindingClient
    {
        private var _1433715808_swf_faction:MovieClipLoaderAsset;
        public var _FactionWindow_Image2:Image;
        public var _FactionWindow_Image3:Image;
        var _bindingsBeginWithWord:Object;
        var _bindingsByDestination:Object;
        public var _FactionWindow_Text1:Text;
        var _watchers:Array;
        private var factionCheckWindow:FactionCheckWindow;
        private var factionId:int = 1;
        private var _1213970065_swf_faction_window:MovieClipLoaderAsset;
        private var _2063308040selectFactionCanvas:Canvas;
        private var _documentDescriptor_:UIComponentDescriptor;
        private var _870072542nonSelectFactionName:String = "";
        var _bindings:Array;
        private var _embed_mxml__images_black_jpg_491440297:Class;
        private static var EmbedSwfFaction:Class = FactionWindow_EmbedSwfFaction;
        public static const SELECT_FACTION:String = NAME + "/selectFaction";
        private static var _watcherSetupUtil:IWatcherSetupUtil;
        public static const NAME:String = "FactionWindow";

        public function FactionWindow()
        {
            _documentDescriptor_ = new UIComponentDescriptor({type:PopupWindow, propertiesFactory:function () : Object
            {
                return {childDescriptors:[new UIComponentDescriptor({type:Canvas, id:"selectFactionCanvas", propertiesFactory:function () : Object
                {
                    return {width:760, height:560, childDescriptors:[new UIComponentDescriptor({type:Image, propertiesFactory:function () : Object
                    {
                        return {source:_embed_mxml__images_black_jpg_491440297, alpha:0.2, percentWidth:100, percentHeight:100};
                    }// end function
                    }), new UIComponentDescriptor({type:Image, id:"_FactionWindow_Image2"}), new UIComponentDescriptor({type:Image, id:"_FactionWindow_Image3"}), new UIComponentDescriptor({type:Text, id:"_FactionWindow_Text1", stylesFactory:function () : void
                    {
                        this.color = 0;
                        this.fontSize = 13;
                        return;
                    }// end function
                    , propertiesFactory:function () : Object
                    {
                        return {x:40, y:112};
                    }// end function
                    })]};
                }// end function
                })]};
            }// end function
            });
            _1213970065_swf_faction_window = new Viking.EmbedSwfWindowCommon();
            _1433715808_swf_faction = new EmbedSwfFaction();
            factionCheckWindow = new FactionCheckWindow();
            _embed_mxml__images_black_jpg_491440297 = FactionWindow__embed_mxml__images_black_jpg_491440297;
            _bindings = [];
            _watchers = [];
            _bindingsByDestination = {};
            _bindingsBeginWithWord = {};
            mx_internal::_document = this;
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

        private function get _swf_faction() : MovieClipLoaderAsset
        {
            return this._1433715808_swf_faction;
        }// end function

        private function set nonSelectFactionName(param1:String) : void
        {
            var _loc_2:* = this._870072542nonSelectFactionName;
            if (_loc_2 !== param1)
            {
                this._870072542nonSelectFactionName = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "nonSelectFactionName", _loc_2, param1));
            }
            return;
        }// end function

        private function _FactionWindow_bindingExprs() : void
        {
            var _loc_1:* = undefined;
            _loc_1 = _swf_faction_window;
            _loc_1 = _swf_faction;
            _loc_1 = Utils.i18n("localize157");
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

        override public function initialize() : void
        {
            var target:FactionWindow;
            var watcherSetupUtilClass:Object;
            .mx_internal::setDocumentDescriptor(_documentDescriptor_);
            var bindings:* = _FactionWindow_bindingsSetup();
            var watchers:Array;
            target;
            if (_watcherSetupUtil == null)
            {
                watcherSetupUtilClass = getDefinitionByName("_com_kbmj_viking_view_home_FactionWindowWatcherSetupUtil");
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

        private function admissionFaction(event:Event) : void
        {
            var e:* = event;
            switch(e.type)
            {
                case "FACTION_02":
                {
                    factionId = 2;
                    break;
                }
                case "FACTION_03":
                {
                    factionId = 3;
                    break;
                }
                case "FACTION_04":
                {
                    factionId = 4;
                    break;
                }
                case "FACTION_05":
                {
                    factionId = 5;
                    break;
                }
                default:
                {
                    break;
                }
            }
            factionCheckWindow.init(factionId);
            this.popupWindow(factionCheckWindow, false);
            if (!factionCheckWindow.hasEventListener(FactionCheckWindow.SELECT_FACTION))
            {
                factionCheckWindow.addEventListener(FactionCheckWindow.SELECT_FACTION, function () : void
            {
                terminate();
                dispatchEvent(new PopupEvent(SELECT_FACTION, factionId));
                return;
            }// end function
            );
            }
            return;
        }// end function

        private function _FactionWindow_bindingsSetup() : Array
        {
            var binding:Binding;
            var result:Array;
            binding = new Binding(this, function () : Object
            {
                return _swf_faction_window;
            }// end function
            , function (param1:Object) : void
            {
                _FactionWindow_Image2.source = param1;
                return;
            }// end function
            , "_FactionWindow_Image2.source");
            result[0] = binding;
            binding = new Binding(this, function () : Object
            {
                return _swf_faction;
            }// end function
            , function (param1:Object) : void
            {
                _FactionWindow_Image3.source = param1;
                return;
            }// end function
            , "_FactionWindow_Image3.source");
            result[1] = binding;
            binding = new Binding(this, function () : String
            {
                var _loc_1:* = Utils.i18n("localize157");
                var _loc_2:* = _loc_1 == undefined ? (null) : (String(_loc_1));
                return _loc_2;
            }// end function
            , function (param1:String) : void
            {
                _FactionWindow_Text1.text = param1;
                return;
            }// end function
            , "_FactionWindow_Text1.text");
            result[2] = binding;
            return result;
        }// end function

        public function init(param1:Object) : void
        {
            MovieClip(Loader(_swf_faction_window.getChildAt(0)).content).gotoAndPlay(0);
            MovieClip(Loader(_swf_faction_window.getChildAt(0)).content).gotoAndPlay("center_720x460");
            MovieClip(Loader(_swf_faction.getChildAt(0)).content).gotoAndPlay(0);
            setNonSelectFactionName(param1.incapableAdmission);
            popupSelectFaction(param1.incapableAdmission);
            Loader(_swf_faction.getChildAt(0)).content.addEventListener("FACTION_02", admissionFaction);
            Loader(_swf_faction.getChildAt(0)).content.addEventListener("FACTION_03", admissionFaction);
            Loader(_swf_faction.getChildAt(0)).content.addEventListener("FACTION_04", admissionFaction);
            Loader(_swf_faction.getChildAt(0)).content.addEventListener("FACTION_05", admissionFaction);
            return;
        }// end function

        private function terminate() : void
        {
            Loader(_swf_faction.getChildAt(0)).content.removeEventListener("FACTION_02", admissionFaction);
            Loader(_swf_faction.getChildAt(0)).content.removeEventListener("FACTION_03", admissionFaction);
            Loader(_swf_faction.getChildAt(0)).content.removeEventListener("FACTION_04", admissionFaction);
            Loader(_swf_faction.getChildAt(0)).content.removeEventListener("FACTION_05", admissionFaction);
            return;
        }// end function

        public function get selectFactionCanvas() : Canvas
        {
            return this._2063308040selectFactionCanvas;
        }// end function

        private function setNonSelectFactionName(param1:int) : void
        {
            switch(param1)
            {
                case 2:
                {
                    nonSelectFactionName = "青龍";
                    break;
                }
                case 3:
                {
                    nonSelectFactionName = "朱雀";
                    break;
                }
                case 4:
                {
                    nonSelectFactionName = "白虎";
                    break;
                }
                case 5:
                {
                    nonSelectFactionName = "玄武";
                    break;
                }
                default:
                {
                    break;
                }
            }
            return;
        }// end function

        private function get _swf_faction_window() : MovieClipLoaderAsset
        {
            return this._1213970065_swf_faction_window;
        }// end function

        private function get nonSelectFactionName() : String
        {
            return this._870072542nonSelectFactionName;
        }// end function

        private function popupSelectFaction(param1:int) : void
        {
            if (param1 < 2)
            {
                param1 = 2;
            }
            MovieClip(Loader(_swf_faction.getChildAt(0)).content).gotoAndPlay("w_faction_0" + param1);
            return;
        }// end function

        public function set selectFactionCanvas(param1:Canvas) : void
        {
            var _loc_2:* = this._2063308040selectFactionCanvas;
            if (_loc_2 !== param1)
            {
                this._2063308040selectFactionCanvas = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "selectFactionCanvas", _loc_2, param1));
            }
            return;
        }// end function

        public static function set watcherSetupUtil(param1:IWatcherSetupUtil) : void
        {
            _watcherSetupUtil = param1;
            return;
        }// end function

    }
}
