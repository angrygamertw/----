package com.kbmj.viking.view.home
{
    import com.kbmj.viking.lib.*;
    import com.kbmj.viking.view.*;
    import flash.display.*;
    import flash.events.*;
    import flash.utils.*;
    import mx.binding.*;
    import mx.collections.*;
    import mx.controls.*;
    import mx.core.*;
    import mx.events.*;

    public class ResearchWindow extends PopupWindow implements IBindingClient
    {
        private var _1075873300_swf_window:MovieClipLoaderAsset;
        private var _1194005668_swf_craft:MovieClipLoaderAsset;
        private var _embed_mxml__swf_common_arrow_top_swf_788233961:Class;
        private var _559229767_swf_black_smith:MovieClipLoaderAsset;
        var _bindingsByDestination:Object;
        private var _1193840764_swf_close:MovieClipLoaderAsset;
        private var alertWindow:AlertWindow;
        private var _homeMaps:Array;
        private var _1784922884tutMarkBlacksmith:Image;
        private var _1151931891_homeMapsCollection:ArrayCollection;
        public var _ResearchWindow_Image1:Image;
        public var _ResearchWindow_Image2:Image;
        public var _ResearchWindow_Image3:Image;
        public var _ResearchWindow_Image4:Image;
        public var _ResearchWindow_Image5:Image;
        public var _ResearchWindow_Image6:Image;
        public var _ResearchWindow_Image7:Image;
        var _watchers:Array;
        private var _1193840798_swf_cloth:MovieClipLoaderAsset;
        private var _290992723_swf_leather:MovieClipLoaderAsset;
        public var _ResearchWindow_Text1:Text;
        public var _ResearchWindow_Text2:Text;
        public var _ResearchWindow_Text3:Text;
        public var _ResearchWindow_Text4:Text;
        public var _ResearchWindow_Text5:Text;
        public var _ResearchWindow_Text6:Text;
        private var _embed_mxml__swf_common_button_close_window_swf_1370265653:Class;
        var _bindingsBeginWithWord:Object;
        private var _2046091593tutMarkResearchVisible:Boolean = false;
        var _bindings:Array;
        private var _1202740273_swf_magic:MovieClipLoaderAsset;
        private var _documentDescriptor_:UIComponentDescriptor;
        public static const CLICK_CLOSE_BUTTON:String = "clickCloseButton";
        private static var _watcherSetupUtil:IWatcherSetupUtil;
        public static var EmbedSwfButton:Class = ResearchWindow_EmbedSwfButton;
        public static const CLOSE_RESEARCH_WINDOW:String = "closeResearchWindow";

        public function ResearchWindow()
        {
            _documentDescriptor_ = new UIComponentDescriptor({type:PopupWindow, propertiesFactory:function () : Object
            {
                return {childDescriptors:[new UIComponentDescriptor({type:Image, id:"_ResearchWindow_Image1"}), new UIComponentDescriptor({type:Image, id:"_ResearchWindow_Image2", events:{click:"___ResearchWindow_Image2_click"}, propertiesFactory:function () : Object
                {
                    return {x:150, y:245};
                }// end function
                }), new UIComponentDescriptor({type:Text, id:"_ResearchWindow_Text1", propertiesFactory:function () : Object
                {
                    return {styleName:"PanelBaseTitle", x:365, y:193};
                }// end function
                }), new UIComponentDescriptor({type:Text, id:"_ResearchWindow_Text2", stylesFactory:function () : void
                {
                    this.fontSize = 15;
                    return;
                }// end function
                , propertiesFactory:function () : Object
                {
                    return {x:260, y:250};
                }// end function
                }), new UIComponentDescriptor({type:Image, id:"_ResearchWindow_Image3", events:{click:"___ResearchWindow_Image3_click"}, propertiesFactory:function () : Object
                {
                    return {x:310, y:245};
                }// end function
                }), new UIComponentDescriptor({type:Text, id:"_ResearchWindow_Text3", stylesFactory:function () : void
                {
                    this.fontSize = 15;
                    return;
                }// end function
                , propertiesFactory:function () : Object
                {
                    return {x:420, y:250};
                }// end function
                }), new UIComponentDescriptor({type:Image, id:"_ResearchWindow_Image4", events:{click:"___ResearchWindow_Image4_click"}, propertiesFactory:function () : Object
                {
                    return {x:470, y:245};
                }// end function
                }), new UIComponentDescriptor({type:Text, id:"_ResearchWindow_Text4", stylesFactory:function () : void
                {
                    this.fontSize = 15;
                    return;
                }// end function
                , propertiesFactory:function () : Object
                {
                    return {x:580, y:250};
                }// end function
                }), new UIComponentDescriptor({type:Image, id:"_ResearchWindow_Image5", events:{click:"___ResearchWindow_Image5_click"}, propertiesFactory:function () : Object
                {
                    return {x:150, y:300};
                }// end function
                }), new UIComponentDescriptor({type:Text, id:"_ResearchWindow_Text5", stylesFactory:function () : void
                {
                    this.fontSize = 15;
                    return;
                }// end function
                , propertiesFactory:function () : Object
                {
                    return {x:260, y:305};
                }// end function
                }), new UIComponentDescriptor({type:Image, id:"_ResearchWindow_Image6", events:{click:"___ResearchWindow_Image6_click"}, propertiesFactory:function () : Object
                {
                    return {x:310, y:300};
                }// end function
                }), new UIComponentDescriptor({type:Text, id:"_ResearchWindow_Text6", stylesFactory:function () : void
                {
                    this.fontSize = 15;
                    return;
                }// end function
                , propertiesFactory:function () : Object
                {
                    return {x:420, y:305};
                }// end function
                }), new UIComponentDescriptor({type:Image, id:"_ResearchWindow_Image7", events:{click:"___ResearchWindow_Image7_click"}, propertiesFactory:function () : Object
                {
                    return {x:485, y:300};
                }// end function
                }), new UIComponentDescriptor({type:Image, events:{click:"___ResearchWindow_Image8_click"}, propertiesFactory:function () : Object
                {
                    return {x:605, y:190, width:20, height:20, source:_embed_mxml__swf_common_button_close_window_swf_1370265653};
                }// end function
                }), new UIComponentDescriptor({type:Image, id:"tutMarkBlacksmith", propertiesFactory:function () : Object
                {
                    return {source:_embed_mxml__swf_common_arrow_top_swf_788233961, width:75, height:75, y:275, x:200};
                }// end function
                })]};
            }// end function
            });
            _1075873300_swf_window = new Viking.EmbedSwfWindowCommon();
            _1193840764_swf_close = new Viking.EmbedSwfButtonCommon();
            _559229767_swf_black_smith = new EmbedSwfButton();
            _290992723_swf_leather = new EmbedSwfButton();
            _1193840798_swf_cloth = new EmbedSwfButton();
            _1202740273_swf_magic = new EmbedSwfButton();
            _1194005668_swf_craft = new EmbedSwfButton();
            _1151931891_homeMapsCollection = new ArrayCollection(new Array(6));
            _homeMaps = new Array();
            _embed_mxml__swf_common_arrow_top_swf_788233961 = ResearchWindow__embed_mxml__swf_common_arrow_top_swf_788233961;
            _embed_mxml__swf_common_button_close_window_swf_1370265653 = ResearchWindow__embed_mxml__swf_common_button_close_window_swf_1370265653;
            _bindings = [];
            _watchers = [];
            _bindingsByDestination = {};
            _bindingsBeginWithWord = {};
            mx_internal::_document = this;
            this.addEventListener("creationComplete", ___ResearchWindow_PopupWindow1_creationComplete);
            return;
        }// end function

        public function get tutMarkBlacksmith() : Image
        {
            return this._1784922884tutMarkBlacksmith;
        }// end function

        public function set tutMarkBlacksmith(param1:Image) : void
        {
            var _loc_2:* = this._1784922884tutMarkBlacksmith;
            if (_loc_2 !== param1)
            {
                this._1784922884tutMarkBlacksmith = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "tutMarkBlacksmith", _loc_2, param1));
            }
            return;
        }// end function

        private function _ResearchWindow_bindingExprs() : void
        {
            var _loc_1:* = undefined;
            _loc_1 = _swf_window;
            _loc_1 = _swf_black_smith;
            _loc_1 = Utils.i18n("generalResearch");
            _loc_1 = _homeMapsCollection.getItemAt(0);
            _loc_1 = _swf_leather;
            _loc_1 = _homeMapsCollection.getItemAt(1);
            _loc_1 = _swf_cloth;
            _loc_1 = _homeMapsCollection.getItemAt(2);
            _loc_1 = _swf_magic;
            _loc_1 = _homeMapsCollection.getItemAt(3);
            _loc_1 = _swf_craft;
            _loc_1 = _homeMapsCollection.getItemAt(4);
            _loc_1 = _swf_close;
            _loc_1 = tutMarkResearchVisible;
            return;
        }// end function

        private function init() : void
        {
            MovieClip(Loader(_swf_window.getChildAt(0)).content).gotoAndPlay("center_500x180");
            MovieClip(Loader(_swf_close.getChildAt(0)).content).gotoAndPlay("button_close");
            MovieClip(Loader(_swf_black_smith.getChildAt(0)).content).gotoAndPlay("button_blacksmith");
            MovieClip(Loader(_swf_leather.getChildAt(0)).content).gotoAndPlay("button_leather");
            MovieClip(Loader(_swf_cloth.getChildAt(0)).content).gotoAndPlay("button_cloth");
            MovieClip(Loader(_swf_magic.getChildAt(0)).content).gotoAndPlay("button_magic");
            MovieClip(Loader(_swf_craft.getChildAt(0)).content).gotoAndPlay("button_accessory");
            return;
        }// end function

        public function set homeMaps(param1:Array) : void
        {
            _homeMaps = param1;
            _homeMapsCollection.setItemAt(param1[1].buildingVO.level, 0);
            _homeMapsCollection.setItemAt(param1[3].buildingVO.level, 1);
            _homeMapsCollection.setItemAt(param1[4].buildingVO.level, 2);
            _homeMapsCollection.setItemAt(param1[6].buildingVO.level, 3);
            _homeMapsCollection.setItemAt(param1[8].buildingVO.level, 4);
            return;
        }// end function

        private function get _swf_magic() : MovieClipLoaderAsset
        {
            return this._1202740273_swf_magic;
        }// end function

        public function ___ResearchWindow_Image3_click(event:MouseEvent) : void
        {
            onClick(4);
            return;
        }// end function

        private function set _swf_cloth(param1:MovieClipLoaderAsset) : void
        {
            var _loc_2:* = this._1193840798_swf_cloth;
            if (_loc_2 !== param1)
            {
                this._1193840798_swf_cloth = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "_swf_cloth", _loc_2, param1));
            }
            return;
        }// end function

        public function ___ResearchWindow_Image7_click(event:MouseEvent) : void
        {
            clickCloseButton();
            return;
        }// end function

        private function get _swf_black_smith() : MovieClipLoaderAsset
        {
            return this._559229767_swf_black_smith;
        }// end function

        private function set _swf_craft(param1:MovieClipLoaderAsset) : void
        {
            var _loc_2:* = this._1194005668_swf_craft;
            if (_loc_2 !== param1)
            {
                this._1194005668_swf_craft = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "_swf_craft", _loc_2, param1));
            }
            return;
        }// end function

        private function set _swf_leather(param1:MovieClipLoaderAsset) : void
        {
            var _loc_2:* = this._290992723_swf_leather;
            if (_loc_2 !== param1)
            {
                this._290992723_swf_leather = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "_swf_leather", _loc_2, param1));
            }
            return;
        }// end function

        private function set _swf_magic(param1:MovieClipLoaderAsset) : void
        {
            var _loc_2:* = this._1202740273_swf_magic;
            if (_loc_2 !== param1)
            {
                this._1202740273_swf_magic = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "_swf_magic", _loc_2, param1));
            }
            return;
        }// end function

        public function ___ResearchWindow_PopupWindow1_creationComplete(event:FlexEvent) : void
        {
            init();
            return;
        }// end function

        private function set tutMarkResearchVisible(param1:Boolean) : void
        {
            var _loc_2:* = this._2046091593tutMarkResearchVisible;
            if (_loc_2 !== param1)
            {
                this._2046091593tutMarkResearchVisible = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "tutMarkResearchVisible", _loc_2, param1));
            }
            return;
        }// end function

        public function ___ResearchWindow_Image8_click(event:MouseEvent) : void
        {
            clickCloseButton();
            return;
        }// end function

        public function ___ResearchWindow_Image4_click(event:MouseEvent) : void
        {
            onClick(5);
            return;
        }// end function

        private function get _swf_close() : MovieClipLoaderAsset
        {
            return this._1193840764_swf_close;
        }// end function

        private function set _swf_black_smith(param1:MovieClipLoaderAsset) : void
        {
            var _loc_2:* = this._559229767_swf_black_smith;
            if (_loc_2 !== param1)
            {
                this._559229767_swf_black_smith = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "_swf_black_smith", _loc_2, param1));
            }
            return;
        }// end function

        override public function initialize() : void
        {
            var target:ResearchWindow;
            var watcherSetupUtilClass:Object;
            .mx_internal::setDocumentDescriptor(_documentDescriptor_);
            var bindings:* = _ResearchWindow_bindingsSetup();
            var watchers:Array;
            target;
            if (_watcherSetupUtil == null)
            {
                watcherSetupUtilClass = getDefinitionByName("_com_kbmj_viking_view_home_ResearchWindowWatcherSetupUtil");
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

        private function get _swf_cloth() : MovieClipLoaderAsset
        {
            return this._1193840798_swf_cloth;
        }// end function

        public function clickCloseButton() : void
        {
            dispatchEvent(new Event(CLICK_CLOSE_BUTTON));
            return;
        }// end function

        private function get _swf_craft() : MovieClipLoaderAsset
        {
            return this._1194005668_swf_craft;
        }// end function

        private function get _swf_leather() : MovieClipLoaderAsset
        {
            return this._290992723_swf_leather;
        }// end function

        private function get tutMarkResearchVisible() : Boolean
        {
            return this._2046091593tutMarkResearchVisible;
        }// end function

        public function ___ResearchWindow_Image5_click(event:MouseEvent) : void
        {
            onClick(7);
            return;
        }// end function

        private function _ResearchWindow_bindingsSetup() : Array
        {
            var binding:Binding;
            var result:Array;
            binding = new Binding(this, function () : Object
            {
                return _swf_window;
            }// end function
            , function (param1:Object) : void
            {
                _ResearchWindow_Image1.source = param1;
                return;
            }// end function
            , "_ResearchWindow_Image1.source");
            result[0] = binding;
            binding = new Binding(this, function () : Object
            {
                return _swf_black_smith;
            }// end function
            , function (param1:Object) : void
            {
                _ResearchWindow_Image2.source = param1;
                return;
            }// end function
            , "_ResearchWindow_Image2.source");
            result[1] = binding;
            binding = new Binding(this, function () : String
            {
                var _loc_1:* = Utils.i18n("generalResearch");
                var _loc_2:* = _loc_1 == undefined ? (null) : (String(_loc_1));
                return _loc_2;
            }// end function
            , function (param1:String) : void
            {
                _ResearchWindow_Text1.text = param1;
                return;
            }// end function
            , "_ResearchWindow_Text1.text");
            result[2] = binding;
            binding = new Binding(this, function () : String
            {
                var _loc_1:* = _homeMapsCollection.getItemAt(0);
                var _loc_2:* = _loc_1 == undefined ? (null) : (String(_loc_1));
                return _loc_2;
            }// end function
            , function (param1:String) : void
            {
                _ResearchWindow_Text2.text = param1;
                return;
            }// end function
            , "_ResearchWindow_Text2.text");
            result[3] = binding;
            binding = new Binding(this, function () : Object
            {
                return _swf_leather;
            }// end function
            , function (param1:Object) : void
            {
                _ResearchWindow_Image3.source = param1;
                return;
            }// end function
            , "_ResearchWindow_Image3.source");
            result[4] = binding;
            binding = new Binding(this, function () : String
            {
                var _loc_1:* = _homeMapsCollection.getItemAt(1);
                var _loc_2:* = _loc_1 == undefined ? (null) : (String(_loc_1));
                return _loc_2;
            }// end function
            , function (param1:String) : void
            {
                _ResearchWindow_Text3.text = param1;
                return;
            }// end function
            , "_ResearchWindow_Text3.text");
            result[5] = binding;
            binding = new Binding(this, function () : Object
            {
                return _swf_cloth;
            }// end function
            , function (param1:Object) : void
            {
                _ResearchWindow_Image4.source = param1;
                return;
            }// end function
            , "_ResearchWindow_Image4.source");
            result[6] = binding;
            binding = new Binding(this, function () : String
            {
                var _loc_1:* = _homeMapsCollection.getItemAt(2);
                var _loc_2:* = _loc_1 == undefined ? (null) : (String(_loc_1));
                return _loc_2;
            }// end function
            , function (param1:String) : void
            {
                _ResearchWindow_Text4.text = param1;
                return;
            }// end function
            , "_ResearchWindow_Text4.text");
            result[7] = binding;
            binding = new Binding(this, function () : Object
            {
                return _swf_magic;
            }// end function
            , function (param1:Object) : void
            {
                _ResearchWindow_Image5.source = param1;
                return;
            }// end function
            , "_ResearchWindow_Image5.source");
            result[8] = binding;
            binding = new Binding(this, function () : String
            {
                var _loc_1:* = _homeMapsCollection.getItemAt(3);
                var _loc_2:* = _loc_1 == undefined ? (null) : (String(_loc_1));
                return _loc_2;
            }// end function
            , function (param1:String) : void
            {
                _ResearchWindow_Text5.text = param1;
                return;
            }// end function
            , "_ResearchWindow_Text5.text");
            result[9] = binding;
            binding = new Binding(this, function () : Object
            {
                return _swf_craft;
            }// end function
            , function (param1:Object) : void
            {
                _ResearchWindow_Image6.source = param1;
                return;
            }// end function
            , "_ResearchWindow_Image6.source");
            result[10] = binding;
            binding = new Binding(this, function () : String
            {
                var _loc_1:* = _homeMapsCollection.getItemAt(4);
                var _loc_2:* = _loc_1 == undefined ? (null) : (String(_loc_1));
                return _loc_2;
            }// end function
            , function (param1:String) : void
            {
                _ResearchWindow_Text6.text = param1;
                return;
            }// end function
            , "_ResearchWindow_Text6.text");
            result[11] = binding;
            binding = new Binding(this, function () : Object
            {
                return _swf_close;
            }// end function
            , function (param1:Object) : void
            {
                _ResearchWindow_Image7.source = param1;
                return;
            }// end function
            , "_ResearchWindow_Image7.source");
            result[12] = binding;
            binding = new Binding(this, function () : Boolean
            {
                return tutMarkResearchVisible;
            }// end function
            , function (param1:Boolean) : void
            {
                tutMarkBlacksmith.visible = param1;
                return;
            }// end function
            , "tutMarkBlacksmith.visible");
            result[13] = binding;
            return result;
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

        private function set _homeMapsCollection(param1:ArrayCollection) : void
        {
            var _loc_2:* = this._1151931891_homeMapsCollection;
            if (_loc_2 !== param1)
            {
                this._1151931891_homeMapsCollection = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "_homeMapsCollection", _loc_2, param1));
            }
            return;
        }// end function

        private function onClick(param1:int) : void
        {
            if (_homeMaps[(param1 - 1)].buildingVO.level >= 7)
            {
                alertWindow = AlertWindow.show(Utils.i18n("researchNoMoreResearch", _homeMaps[(param1 - 1)].buildingVO.nameLabel));
                popupWindow(alertWindow, false);
                return;
            }
            MovieClip(Loader(_swf_close.getChildAt(0)).content).gotoAndPlay(0);
            MovieClip(Loader(_swf_close.getChildAt(0)).content).gotoAndPlay("button_close");
            dispatchEvent(new PopupEvent(Viking.HOME_ACTION_RESEARCH, {researchId:param1}));
            return;
        }// end function

        private function get _swf_window() : MovieClipLoaderAsset
        {
            return this._1075873300_swf_window;
        }// end function

        public function ___ResearchWindow_Image2_click(event:MouseEvent) : void
        {
            onClick(2);
            return;
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

        public function ___ResearchWindow_Image6_click(event:MouseEvent) : void
        {
            onClick(9);
            return;
        }// end function

        private function get _homeMapsCollection() : ArrayCollection
        {
            return this._1151931891_homeMapsCollection;
        }// end function

        public function initResearchTmarks(param1:Boolean = false) : void
        {
            if (!param1)
            {
                tutMarkResearchVisible = false;
            }
            else
            {
                tutMarkResearchVisible = true;
            }
            return;
        }// end function

        public function close() : void
        {
            MovieClip(Loader(_swf_close.getChildAt(0)).content).gotoAndPlay(0);
            MovieClip(Loader(_swf_close.getChildAt(0)).content).gotoAndPlay("button_close");
            dispatchEvent(new Event(CLOSE_RESEARCH_WINDOW));
            return;
        }// end function

        public static function set watcherSetupUtil(param1:IWatcherSetupUtil) : void
        {
            _watcherSetupUtil = param1;
            return;
        }// end function

    }
}
