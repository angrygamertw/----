package com.kbmj.viking.view.home
{
    import com.kbmj.viking.lib.*;
    import com.kbmj.viking.view.*;
    import com.kbmj.viking.vo.*;
    import flash.display.*;
    import flash.events.*;
    import flash.utils.*;
    import mx.binding.*;
    import mx.collections.*;
    import mx.containers.*;
    import mx.controls.*;
    import mx.core.*;
    import mx.events.*;

    public class TutorialWindow extends PopupWindow implements IBindingClient
    {
        private var _194595781_swf_entry_ok:MovieClipLoaderAsset;
        public var _TutorialWindow_Text3:Text;
        private var _1433715808_swf_faction:MovieClipLoaderAsset;
        private var flg_swfArray:Array;
        private var _1218557618entryFormCanvas:Canvas;
        private var _608779017tutorialName:String;
        private var forcedFactionArea:Boolean = true;
        private var _795738791_swf_entry_window:MovieClipLoaderAsset;
        private var _embed_mxml__images_black_jpg_491440297:Class;
        private var _embed_mxml__swf_common_arrow_top_swf_788233961:Class;
        private var _870072542nonSelectFactionName:String = "";
        private var clearFourthTutorial:Boolean = false;
        private var _1010273579tutMarkClearTutorial:Image;
        private var factionId:int = 0;
        var _bindingsByDestination:Object;
        private var _283794621_tutorial:TutorialVO;
        private var incapableAdmission:int = 0;
        private var factionCheckWindow:FactionCheckWindow;
        private var _2073289518selectFactionButton:Image;
        private var _791680100inputButton:Image;
        private var _1193830609_swf_clear:MovieClipLoaderAsset;
        private var nowPage:int = 1;
        private var _100358090input:TextInput;
        public var _TutorialWindow_Image10:Image;
        public var _TutorialWindow_Image11:Image;
        var _watchers:Array;
        private var max_pageNum:int = 0;
        private var _606211670tutorialCanvas:Canvas;
        private var _1813431718_swf_tutorial:MovieClipLoaderAsset;
        private var _1195752182_swf_entry:MovieClipLoaderAsset;
        public var _TutorialWindow_Image6:Image;
        public var _TutorialWindow_Image7:Image;
        public var _TutorialWindow_Image1:Image;
        private var _2071192609clearButton:Image;
        private var _1896677185windowLayer:Canvas;
        public var _TutorialWindow_Image8:Image;
        private var _playerVO:PlayerVO;
        private var _676914219_swf_select_faction:MovieClipLoaderAsset;
        var _bindingsBeginWithWord:Object;
        private var _1809908821textCollection:ArrayCollection;
        private var _1213970065_swf_faction_window:MovieClipLoaderAsset;
        private var _2063308040selectFactionCanvas:Canvas;
        private var _1375711261_swf_entry_cancel:MovieClipLoaderAsset;
        private var _1554659640_pageNum:int = 0;
        public var _TutorialWindow_Text2:Text;
        private var _329533269errorText:Text;
        private var currentLabel:String = "";
        var _bindings:Array;
        private var _documentDescriptor_:UIComponentDescriptor;
        public static const REMOVE_SWF:String = NAME + "/RemoveSwf";
        private static var _watcherSetupUtil:IWatcherSetupUtil;
        public static const NAME:String = "TutorialWindow";
        public static const CHANGE_SWF:String = NAME + "/ChangeSwf";
        public static const SELECT_FACTION:String = NAME + "selectFaction";
        private static var EmbedSwfFaction:Class = TutorialWindow_EmbedSwfFaction;
        public static const CLOSED_TUTORIAL_WINDOW:String = "closedTutorialWindow";
        private static var EmbedSwfTutorial:Class = TutorialWindow_EmbedSwfTutorial;

        public function TutorialWindow()
        {
            _documentDescriptor_ = new UIComponentDescriptor({type:PopupWindow, propertiesFactory:function () : Object
            {
                return {childDescriptors:[new UIComponentDescriptor({type:Canvas, id:"windowLayer"}), new UIComponentDescriptor({type:Canvas, id:"tutorialCanvas", propertiesFactory:function () : Object
                {
                    return {childDescriptors:[new UIComponentDescriptor({type:Image, id:"_TutorialWindow_Image1"}), new UIComponentDescriptor({type:Image, id:"clearButton", events:{click:"__clearButton_click"}, propertiesFactory:function () : Object
                    {
                        return {x:435, y:452};
                    }// end function
                    }), new UIComponentDescriptor({type:Image, id:"inputButton", events:{click:"__inputButton_click"}, propertiesFactory:function () : Object
                    {
                        return {x:435, y:452};
                    }// end function
                    }), new UIComponentDescriptor({type:Image, id:"selectFactionButton", events:{click:"__selectFactionButton_click"}, propertiesFactory:function () : Object
                    {
                        return {x:435, y:452};
                    }// end function
                    }), new UIComponentDescriptor({type:Canvas, id:"entryFormCanvas", propertiesFactory:function () : Object
                    {
                        return {visible:false, width:760, height:560, childDescriptors:[new UIComponentDescriptor({type:Image, propertiesFactory:function () : Object
                        {
                            return {source:_embed_mxml__images_black_jpg_491440297, alpha:0.2, percentWidth:100, percentHeight:100};
                        }// end function
                        }), new UIComponentDescriptor({type:Image, id:"_TutorialWindow_Image6"}), new UIComponentDescriptor({type:TextInput, id:"input", events:{enter:"__input_enter"}, propertiesFactory:function () : Object
                        {
                            return {width:100, restrict:"[0-9]", maxChars:7, x:260, y:290};
                        }// end function
                        }), new UIComponentDescriptor({type:Text, id:"errorText", stylesFactory:function () : void
                        {
                            this.color = 14483456;
                            this.fontSize = 12;
                            return;
                        }// end function
                        , propertiesFactory:function () : Object
                        {
                            return {text:"", x:260, y:270, visible:false};
                        }// end function
                        }), new UIComponentDescriptor({type:Text, id:"_TutorialWindow_Text2", stylesFactory:function () : void
                        {
                            this.fontSize = 12;
                            return;
                        }// end function
                        , propertiesFactory:function () : Object
                        {
                            return {x:260, y:230};
                        }// end function
                        }), new UIComponentDescriptor({type:Image, id:"_TutorialWindow_Image7", events:{click:"___TutorialWindow_Image7_click"}, propertiesFactory:function () : Object
                        {
                            return {x:260, y:330};
                        }// end function
                        }), new UIComponentDescriptor({type:Image, id:"_TutorialWindow_Image8", events:{click:"___TutorialWindow_Image8_click"}, propertiesFactory:function () : Object
                        {
                            return {x:390, y:330};
                        }// end function
                        })]};
                    }// end function
                    }), new UIComponentDescriptor({type:Canvas, id:"selectFactionCanvas", propertiesFactory:function () : Object
                    {
                        return {visible:false, width:760, height:560, childDescriptors:[new UIComponentDescriptor({type:Image, propertiesFactory:function () : Object
                        {
                            return {source:_embed_mxml__images_black_jpg_491440297, alpha:0.2, percentWidth:100, percentHeight:100};
                        }// end function
                        }), new UIComponentDescriptor({type:Image, id:"_TutorialWindow_Image10"}), new UIComponentDescriptor({type:Image, id:"_TutorialWindow_Image11"}), new UIComponentDescriptor({type:Text, id:"_TutorialWindow_Text3", stylesFactory:function () : void
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
                    }), new UIComponentDescriptor({type:Image, id:"tutMarkClearTutorial", propertiesFactory:function () : Object
                    {
                        return {source:_embed_mxml__swf_common_arrow_top_swf_788233961, visible:false, y:480, x:470, width:75, height:75};
                    }// end function
                    })]};
                }// end function
                })]};
            }// end function
            });
            _1813431718_swf_tutorial = new EmbedSwfTutorial();
            _1193830609_swf_clear = new Viking.EmbedSwfButtonCommon();
            _1195752182_swf_entry = new Viking.EmbedSwfButtonCommon();
            _795738791_swf_entry_window = new Viking.EmbedSwfWindowCommon();
            _194595781_swf_entry_ok = new Viking.EmbedSwfButtonCommon();
            _1375711261_swf_entry_cancel = new Viking.EmbedSwfButtonCommon();
            _676914219_swf_select_faction = new Viking.EmbedSwfButtonCommon();
            _1213970065_swf_faction_window = new Viking.EmbedSwfWindowCommon();
            _1433715808_swf_faction = new EmbedSwfFaction();
            _playerVO = new PlayerVO();
            flg_swfArray = new Array(true, false, true, false);
            factionCheckWindow = new FactionCheckWindow();
            _embed_mxml__images_black_jpg_491440297 = TutorialWindow__embed_mxml__images_black_jpg_491440297;
            _embed_mxml__swf_common_arrow_top_swf_788233961 = TutorialWindow__embed_mxml__swf_common_arrow_top_swf_788233961;
            _bindings = [];
            _watchers = [];
            _bindingsByDestination = {};
            _bindingsBeginWithWord = {};
            mx_internal::_document = this;
            return;
        }// end function

        public function __selectFactionButton_click(event:MouseEvent) : void
        {
            popupSelectFaction();
            return;
        }// end function

        private function _TutorialWindow_bindingsSetup() : Array
        {
            var binding:Binding;
            var result:Array;
            binding = new Binding(this, function () : Object
            {
                return _swf_tutorial;
            }// end function
            , function (param1:Object) : void
            {
                _TutorialWindow_Image1.source = param1;
                return;
            }// end function
            , "_TutorialWindow_Image1.source");
            result[0] = binding;
            binding = new Binding(this, function () : Object
            {
                return _swf_clear;
            }// end function
            , function (param1:Object) : void
            {
                clearButton.source = param1;
                return;
            }// end function
            , "clearButton.source");
            result[1] = binding;
            binding = new Binding(this, function () : Object
            {
                return _swf_entry;
            }// end function
            , function (param1:Object) : void
            {
                inputButton.source = param1;
                return;
            }// end function
            , "inputButton.source");
            result[2] = binding;
            binding = new Binding(this, function () : Object
            {
                return _swf_select_faction;
            }// end function
            , function (param1:Object) : void
            {
                selectFactionButton.source = param1;
                return;
            }// end function
            , "selectFactionButton.source");
            result[3] = binding;
            binding = new Binding(this, function () : Object
            {
                return _swf_entry_window;
            }// end function
            , function (param1:Object) : void
            {
                _TutorialWindow_Image6.source = param1;
                return;
            }// end function
            , "_TutorialWindow_Image6.source");
            result[4] = binding;
            binding = new Binding(this, function () : String
            {
                var _loc_1:* = Utils.i18n("tutorialInputSpiritOfFireNum");
                var _loc_2:* = _loc_1 == undefined ? (null) : (String(_loc_1));
                return _loc_2;
            }// end function
            , function (param1:String) : void
            {
                _TutorialWindow_Text2.text = param1;
                return;
            }// end function
            , "_TutorialWindow_Text2.text");
            result[5] = binding;
            binding = new Binding(this, function () : Object
            {
                return _swf_entry_ok;
            }// end function
            , function (param1:Object) : void
            {
                _TutorialWindow_Image7.source = param1;
                return;
            }// end function
            , "_TutorialWindow_Image7.source");
            result[6] = binding;
            binding = new Binding(this, function () : Object
            {
                return _swf_entry_cancel;
            }// end function
            , function (param1:Object) : void
            {
                _TutorialWindow_Image8.source = param1;
                return;
            }// end function
            , "_TutorialWindow_Image8.source");
            result[7] = binding;
            binding = new Binding(this, function () : Object
            {
                return _swf_faction_window;
            }// end function
            , function (param1:Object) : void
            {
                _TutorialWindow_Image10.source = param1;
                return;
            }// end function
            , "_TutorialWindow_Image10.source");
            result[8] = binding;
            binding = new Binding(this, function () : Object
            {
                return _swf_faction;
            }// end function
            , function (param1:Object) : void
            {
                _TutorialWindow_Image11.source = param1;
                return;
            }// end function
            , "_TutorialWindow_Image11.source");
            result[9] = binding;
            binding = new Binding(this, function () : String
            {
                var _loc_1:* = Utils.i18n("localize157");
                var _loc_2:* = _loc_1 == undefined ? (null) : (String(_loc_1));
                return _loc_2;
            }// end function
            , function (param1:String) : void
            {
                _TutorialWindow_Text3.text = param1;
                return;
            }// end function
            , "_TutorialWindow_Text3.text");
            result[10] = binding;
            return result;
        }// end function

        private function get _swf_entry() : MovieClipLoaderAsset
        {
            return this._1195752182_swf_entry;
        }// end function

        private function get tutorialName() : String
        {
            return this._608779017tutorialName;
        }// end function

        public function destructSWF() : void
        {
            sendEvent(REMOVE_SWF);
            return;
        }// end function

        private function popupEntryForm() : void
        {
            MovieClip(Loader(_swf_entry_window.getChildAt(0)).content).gotoAndPlay(0);
            MovieClip(Loader(_swf_entry_window.getChildAt(0)).content).gotoAndPlay("center_300x200");
            MovieClip(Loader(_swf_entry_ok.getChildAt(0)).content).gotoAndPlay(0);
            MovieClip(Loader(_swf_entry_ok.getChildAt(0)).content).gotoAndPlay("button_ok");
            MovieClip(Loader(_swf_entry_cancel.getChildAt(0)).content).gotoAndPlay(0);
            MovieClip(Loader(_swf_entry_cancel.getChildAt(0)).content).gotoAndPlay("button_cancel");
            entryFormCanvas.visible = true;
            errorText.visible = false;
            return;
        }// end function

        public function init(param1:Object) : void
        {
            if (currentLabel == "")
            {
                currentLabel = "tutorial" + param1.id + "_1";
            }
            Loader(_swf_tutorial.getChildAt(0)).content.addEventListener("BUTTON_CLOSE", close);
            MovieClip(Loader(_swf_tutorial.getChildAt(0)).content).gotoAndPlay(0);
            MovieClip(Loader(_swf_tutorial.getChildAt(0)).content).gotoAndPlay(currentLabel);
            MovieClip(Loader(_swf_clear.getChildAt(0)).content).gotoAndPlay(0);
            MovieClip(Loader(_swf_clear.getChildAt(0)).content).gotoAndPlay("button_tutorial_clear");
            MovieClip(Loader(_swf_entry.getChildAt(0)).content).gotoAndPlay(0);
            MovieClip(Loader(_swf_entry.getChildAt(0)).content).gotoAndPlay("button_tutorial_input");
            MovieClip(Loader(_swf_select_faction.getChildAt(0)).content).gotoAndPlay(0);
            MovieClip(Loader(_swf_select_faction.getChildAt(0)).content).gotoAndPlay("button_tutorial_select_faction");
            if (param1.id <= 16)
            {
                tutMarkClearTutorial.visible = param1.flg;
            }
            clearButton.visible = param1.flg;
            inputButton.visible = false;
            selectFactionButton.visible = false;
            this.visible = true;
            if (param1.id == 7 && !clearFourthTutorial)
            {
                clearButton.visible = false;
                inputButton.visible = true;
            }
            if (param1.id == 15)
            {
                setNonSelectFactionName(param1.incapableAdmission);
                incapableAdmission = param1.incapableAdmission;
                forcedFactionArea = param1.forcedFactionArea;
                selectFactionButton.visible = true;
            }
            return;
        }// end function

        public function finishTutorial() : void
        {
            sendEvent(Viking.HOME_FINISH_TUTORIAL);
            return;
        }// end function

        private function set _swf_entry(param1:MovieClipLoaderAsset) : void
        {
            var _loc_2:* = this._1195752182_swf_entry;
            if (_loc_2 !== param1)
            {
                this._1195752182_swf_entry = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "_swf_entry", _loc_2, param1));
            }
            return;
        }// end function

        public function initClear() : void
        {
            clearButton.visible = false;
            var _loc_1:* = new String();
            var _loc_2:int = 0;
            while (_loc_2 < (currentLabel.length - 1))
            {
                
                _loc_1 = _loc_1 + currentLabel.charAt(_loc_2);
                _loc_2++;
            }
            _loc_1 = _loc_1 + "clear";
            MovieClip(Loader(_swf_tutorial.getChildAt(0)).content).gotoAndPlay(0);
            MovieClip(Loader(_swf_tutorial.getChildAt(0)).content).gotoAndPlay(_loc_1);
            Loader(_swf_tutorial.getChildAt(0)).content.addEventListener("BUTTON_NEXT_TUTORIAL", nextTutorial);
            Loader(_swf_tutorial.getChildAt(0)).content.addEventListener("BUTTON_CLOSE", onCloseByClear);
            currentLabel = "";
            return;
        }// end function

        public function get tutMarkClearTutorial() : Image
        {
            return this._1010273579tutMarkClearTutorial;
        }// end function

        private function popupSelectFaction() : void
        {
            if (forcedFactionArea)
            {
                dispatchEvent(new PopupEvent(SELECT_FACTION, 0));
                return;
            }
            MovieClip(Loader(_swf_faction_window.getChildAt(0)).content).gotoAndPlay(0);
            MovieClip(Loader(_swf_faction_window.getChildAt(0)).content).gotoAndPlay("center_720x460");
            MovieClip(Loader(_swf_faction.getChildAt(0)).content).gotoAndPlay(0);
            if (incapableAdmission < 2)
            {
                incapableAdmission = 2;
            }
            MovieClip(Loader(_swf_faction.getChildAt(0)).content).gotoAndPlay("w_faction_0" + incapableAdmission);
            Loader(_swf_faction.getChildAt(0)).content.addEventListener("BUTTON_CLOSE", factionClose);
            Loader(_swf_faction.getChildAt(0)).content.addEventListener("FACTION_02", admissionFaction);
            Loader(_swf_faction.getChildAt(0)).content.addEventListener("FACTION_03", admissionFaction);
            Loader(_swf_faction.getChildAt(0)).content.addEventListener("FACTION_04", admissionFaction);
            Loader(_swf_faction.getChildAt(0)).content.addEventListener("FACTION_05", admissionFaction);
            selectFactionCanvas.visible = true;
            return;
        }// end function

        private function factionClose(event:Event) : void
        {
            Loader(_swf_faction.getChildAt(0)).content.removeEventListener("BUTTON_CLOSE", factionClose);
            Loader(_swf_faction.getChildAt(0)).content.removeEventListener("FACTION_02", admissionFaction);
            Loader(_swf_faction.getChildAt(0)).content.removeEventListener("FACTION_03", admissionFaction);
            Loader(_swf_faction.getChildAt(0)).content.removeEventListener("FACTION_04", admissionFaction);
            Loader(_swf_faction.getChildAt(0)).content.removeEventListener("FACTION_05", admissionFaction);
            selectFactionCanvas.visible = false;
            return;
        }// end function

        private function closeEntryForm() : void
        {
            entryFormCanvas.visible = false;
            if (clearFourthTutorial)
            {
                clearButton.visible = true;
                inputButton.visible = false;
            }
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

        public function get windowLayer() : Canvas
        {
            return this._1896677185windowLayer;
        }// end function

        public function __input_enter(event:FlexEvent) : void
        {
            sizeCheck();
            return;
        }// end function

        public function set inputButton(param1:Image) : void
        {
            var _loc_2:* = this._791680100inputButton;
            if (_loc_2 !== param1)
            {
                this._791680100inputButton = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "inputButton", _loc_2, param1));
            }
            return;
        }// end function

        public function __clearButton_click(event:MouseEvent) : void
        {
            finishTutorial();
            return;
        }// end function

        private function set tutorialName(param1:String) : void
        {
            var _loc_2:* = this._608779017tutorialName;
            if (_loc_2 !== param1)
            {
                this._608779017tutorialName = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "tutorialName", _loc_2, param1));
            }
            return;
        }// end function

        public function get entryFormCanvas() : Canvas
        {
            return this._1218557618entryFormCanvas;
        }// end function

        public function __inputButton_click(event:MouseEvent) : void
        {
            popupEntryForm();
            return;
        }// end function

        public function get errorText() : Text
        {
            return this._329533269errorText;
        }// end function

        public function set tutMarkClearTutorial(param1:Image) : void
        {
            var _loc_2:* = this._1010273579tutMarkClearTutorial;
            if (_loc_2 !== param1)
            {
                this._1010273579tutMarkClearTutorial = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "tutMarkClearTutorial", _loc_2, param1));
            }
            return;
        }// end function

        public function get tutorialCanvas() : Canvas
        {
            return this._606211670tutorialCanvas;
        }// end function

        private function get _swf_tutorial() : MovieClipLoaderAsset
        {
            return this._1813431718_swf_tutorial;
        }// end function

        public function get tutorial() : TutorialVO
        {
            return _tutorial;
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

        private function _TutorialWindow_bindingExprs() : void
        {
            var _loc_1:* = undefined;
            _loc_1 = _swf_tutorial;
            _loc_1 = _swf_clear;
            _loc_1 = _swf_entry;
            _loc_1 = _swf_select_faction;
            _loc_1 = _swf_entry_window;
            _loc_1 = Utils.i18n("tutorialInputSpiritOfFireNum");
            _loc_1 = _swf_entry_ok;
            _loc_1 = _swf_entry_cancel;
            _loc_1 = _swf_faction_window;
            _loc_1 = _swf_faction;
            _loc_1 = Utils.i18n("localize157");
            return;
        }// end function

        private function set textCollection(param1:ArrayCollection) : void
        {
            var _loc_2:* = this._1809908821textCollection;
            if (_loc_2 !== param1)
            {
                this._1809908821textCollection = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "textCollection", _loc_2, param1));
            }
            return;
        }// end function

        private function nextTutorial(event:Event) : void
        {
            Loader(_swf_tutorial.getChildAt(0)).content.removeEventListener("BUTTON_NEXT_TUTORIAL", nextTutorial);
            Loader(_swf_tutorial.getChildAt(0)).content.removeEventListener("BUTTON_CLOSE", onCloseByClear);
            this.visible = false;
            dispatchEvent(new Event(Viking.HOME_SHOW_NEXT_TUTORIAL));
            currentLabel = "";
            return;
        }// end function

        private function get _swf_faction_window() : MovieClipLoaderAsset
        {
            return this._1213970065_swf_faction_window;
        }// end function

        private function set _pageNum(param1:int) : void
        {
            var _loc_2:* = this._1554659640_pageNum;
            if (_loc_2 !== param1)
            {
                this._1554659640_pageNum = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "_pageNum", _loc_2, param1));
            }
            return;
        }// end function

        private function set _tutorial(param1:TutorialVO) : void
        {
            var _loc_2:* = this._283794621_tutorial;
            if (_loc_2 !== param1)
            {
                this._283794621_tutorial = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "_tutorial", _loc_2, param1));
            }
            return;
        }// end function

        private function get _swf_entry_window() : MovieClipLoaderAsset
        {
            return this._795738791_swf_entry_window;
        }// end function

        private function get _pageNum() : int
        {
            return this._1554659640_pageNum;
        }// end function

        private function sizeCheck() : void
        {
            var _loc_1:String = "";
            if (_playerVO.spiritOfFireOutput == int(input.text) && input.text.length > 0)
            {
                clearFourthTutorial = true;
            }
            else if (input.text.length < 1)
            {
                _loc_1 = Utils.i18n("tutorialInputNum");
            }
            else
            {
                _loc_1 = Utils.i18n("tutorialInputNumDiffer");
            }
            if (_loc_1.length > 0)
            {
                errorText.visible = true;
                errorText.text = _loc_1;
            }
            else
            {
                closeEntryForm();
            }
            return;
        }// end function

        override public function initialize() : void
        {
            var target:TutorialWindow;
            var watcherSetupUtilClass:Object;
            .mx_internal::setDocumentDescriptor(_documentDescriptor_);
            var bindings:* = _TutorialWindow_bindingsSetup();
            var watchers:Array;
            target;
            if (_watcherSetupUtil == null)
            {
                watcherSetupUtilClass = getDefinitionByName("_com_kbmj_viking_view_home_TutorialWindowWatcherSetupUtil");
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

        public function set windowLayer(param1:Canvas) : void
        {
            var _loc_2:* = this._1896677185windowLayer;
            if (_loc_2 !== param1)
            {
                this._1896677185windowLayer = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "windowLayer", _loc_2, param1));
            }
            return;
        }// end function

        private function set _swf_entry_ok(param1:MovieClipLoaderAsset) : void
        {
            var _loc_2:* = this._194595781_swf_entry_ok;
            if (_loc_2 !== param1)
            {
                this._194595781_swf_entry_ok = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "_swf_entry_ok", _loc_2, param1));
            }
            return;
        }// end function

        public function set input(param1:TextInput) : void
        {
            var _loc_2:* = this._100358090input;
            if (_loc_2 !== param1)
            {
                this._100358090input = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "input", _loc_2, param1));
            }
            return;
        }// end function

        private function onCloseByClear(event:Event) : void
        {
            Loader(_swf_tutorial.getChildAt(0)).content.removeEventListener("BUTTON_NEXT_TUTORIAL", nextTutorial);
            Loader(_swf_tutorial.getChildAt(0)).content.removeEventListener("BUTTON_CLOSE", onCloseByClear);
            currentLabel = "";
            destructSWF();
            return;
        }// end function

        public function ___TutorialWindow_Image7_click(event:MouseEvent) : void
        {
            sizeCheck();
            return;
        }// end function

        public function set entryFormCanvas(param1:Canvas) : void
        {
            var _loc_2:* = this._1218557618entryFormCanvas;
            if (_loc_2 !== param1)
            {
                this._1218557618entryFormCanvas = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "entryFormCanvas", _loc_2, param1));
            }
            return;
        }// end function

        public function set selectFactionButton(param1:Image) : void
        {
            var _loc_2:* = this._2073289518selectFactionButton;
            if (_loc_2 !== param1)
            {
                this._2073289518selectFactionButton = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "selectFactionButton", _loc_2, param1));
            }
            return;
        }// end function

        private function set _swf_clear(param1:MovieClipLoaderAsset) : void
        {
            var _loc_2:* = this._1193830609_swf_clear;
            if (_loc_2 !== param1)
            {
                this._1193830609_swf_clear = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "_swf_clear", _loc_2, param1));
            }
            return;
        }// end function

        public function set errorText(param1:Text) : void
        {
            var _loc_2:* = this._329533269errorText;
            if (_loc_2 !== param1)
            {
                this._329533269errorText = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "errorText", _loc_2, param1));
            }
            return;
        }// end function

        public function get inputButton() : Image
        {
            return this._791680100inputButton;
        }// end function

        public function set tutorialCanvas(param1:Canvas) : void
        {
            var _loc_2:* = this._606211670tutorialCanvas;
            if (_loc_2 !== param1)
            {
                this._606211670tutorialCanvas = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "tutorialCanvas", _loc_2, param1));
            }
            return;
        }// end function

        private function set _swf_select_faction(param1:MovieClipLoaderAsset) : void
        {
            var _loc_2:* = this._676914219_swf_select_faction;
            if (_loc_2 !== param1)
            {
                this._676914219_swf_select_faction = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "_swf_select_faction", _loc_2, param1));
            }
            return;
        }// end function

        private function set _swf_entry_window(param1:MovieClipLoaderAsset) : void
        {
            var _loc_2:* = this._795738791_swf_entry_window;
            if (_loc_2 !== param1)
            {
                this._795738791_swf_entry_window = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "_swf_entry_window", _loc_2, param1));
            }
            return;
        }// end function

        public function set playerVO(param1:PlayerVO) : void
        {
            _playerVO = param1;
            return;
        }// end function

        private function get textCollection() : ArrayCollection
        {
            return this._1809908821textCollection;
        }// end function

        private function set _swf_tutorial(param1:MovieClipLoaderAsset) : void
        {
            var _loc_2:* = this._1813431718_swf_tutorial;
            if (_loc_2 !== param1)
            {
                this._1813431718_swf_tutorial = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "_swf_tutorial", _loc_2, param1));
            }
            return;
        }// end function

        public function set tutorial(param1:TutorialVO) : void
        {
            _tutorial = param1;
            return;
        }// end function

        public function set clearButton(param1:Image) : void
        {
            var _loc_2:* = this._2071192609clearButton;
            if (_loc_2 !== param1)
            {
                this._2071192609clearButton = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "clearButton", _loc_2, param1));
            }
            return;
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

        private function get _swf_entry_ok() : MovieClipLoaderAsset
        {
            return this._194595781_swf_entry_ok;
        }// end function

        private function set _swf_entry_cancel(param1:MovieClipLoaderAsset) : void
        {
            var _loc_2:* = this._1375711261_swf_entry_cancel;
            if (_loc_2 !== param1)
            {
                this._1375711261_swf_entry_cancel = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "_swf_entry_cancel", _loc_2, param1));
            }
            return;
        }// end function

        public function get input() : TextInput
        {
            return this._100358090input;
        }// end function

        private function get _swf_faction() : MovieClipLoaderAsset
        {
            return this._1433715808_swf_faction;
        }// end function

        private function get _swf_clear() : MovieClipLoaderAsset
        {
            return this._1193830609_swf_clear;
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
                dispatchEvent(new PopupEvent(SELECT_FACTION, factionId));
                factionClose(e);
                return;
            }// end function
            );
            }
            return;
        }// end function

        private function get _swf_select_faction() : MovieClipLoaderAsset
        {
            return this._676914219_swf_select_faction;
        }// end function

        public function ___TutorialWindow_Image8_click(event:MouseEvent) : void
        {
            closeEntryForm();
            return;
        }// end function

        public function get selectFactionButton() : Image
        {
            return this._2073289518selectFactionButton;
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

        public function get clearButton() : Image
        {
            return this._2071192609clearButton;
        }// end function

        private function get _swf_entry_cancel() : MovieClipLoaderAsset
        {
            return this._1375711261_swf_entry_cancel;
        }// end function

        private function get nonSelectFactionName() : String
        {
            return this._870072542nonSelectFactionName;
        }// end function

        private function get _tutorial() : TutorialVO
        {
            return this._283794621_tutorial;
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

        private function close(event:Event) : void
        {
            Loader(_swf_tutorial.getChildAt(0)).content.removeEventListener("BUTTON_CLOSE", close);
            destructSWF();
            currentLabel = MovieClip(Loader(_swf_tutorial.getChildAt(0)).content).currentLabel;
            dispatchEvent(new PopupEvent(CLOSED_TUTORIAL_WINDOW, {window:this}));
            return;
        }// end function

        public function get selectFactionCanvas() : Canvas
        {
            return this._2063308040selectFactionCanvas;
        }// end function

        public static function set watcherSetupUtil(param1:IWatcherSetupUtil) : void
        {
            _watcherSetupUtil = param1;
            return;
        }// end function

    }
}
