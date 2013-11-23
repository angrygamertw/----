package com.kbmj.viking.view.home
{
    import com.kbmj.viking.lib.*;
    import com.kbmj.viking.view.*;
    import com.kbmj.viking.vo.tactics.*;
    import flash.display.*;
    import flash.events.*;
    import flash.utils.*;
    import mx.binding.*;
    import mx.containers.*;
    import mx.controls.*;
    import mx.core.*;
    import mx.events.*;
    import mx.managers.*;

    public class HomeAllGallery extends UnitNumber implements IBindingClient
    {
        private var EmbedSwfPaginator:Class;
        private var _561654183unitsCanvas:Canvas;
        private var EmbedSwfWindowGalleryList:Class;
        private var _843983379maxPage:int = 0;
        private var _231410538unitsCanvas1:Canvas;
        private var _3433103page:int = 1;
        private var _741092404unitsViewStack:ViewStack;
        private var _585312802allGalleryNumText:Text;
        private var _896282514rightButton:Image;
        private var _878125909allGalleryNum:int = 0;
        private var _132895071firstPage:VBox;
        private var _1138437599galleryNumText:Text;
        private var _679335871perUnit:int = 36;
        private var _unitAlphaTimer:Timer;
        private var _89241823iconCanvas2:Canvas;
        var _bindingsByDestination:Object;
        private var _2076479230_sortieNumber:int = 0;
        private var _unitDismissWindow:UnitDismissWindow;
        private var _585477994thirdPage:VBox;
        private var createFlag:Boolean = false;
        private var _293001187unitIcon:Canvas;
        private var _423739683secondPage:VBox;
        private var _1632457241leftButton:Image;
        private var _embed_mxml__swf_home_buttons_button_close_swf_1270316553:Class;
        private var herePage:int = 1;
        private var _createBool:Boolean = false;
        public var _HomeAllGallery_Image1:Image;
        private var _231410539unitsCanvas2:Canvas;
        private var _allUnits:Array;
        private var _89241824iconCanvas1:Canvas;
        var _watchers:Array;
        private var _231410540unitsCanvas3:Canvas;
        private var _collectWindow:CollectWindow;
        var _bindingsBeginWithWord:Object;
        private var _2273433Icon:Canvas;
        private var _1316135636galleryNum:int = 0;
        private var _1584993935_swf_paginator_left:MovieClipLoaderAsset;
        private var _2944451_swf:MovieClipLoaderAsset;
        var _bindings:Array;
        private var _1884510734_swf_paginator_right:MovieClipLoaderAsset;
        private var _89241822iconCanvas3:Canvas;
        private var _documentDescriptor_:UIComponentDescriptor;
        private var _312699062closeButton:Image;
        public static const PREVIOS_PAGE:String = NAME + "/previosPage";
        public static const OPEN_UNIT_LIST:String = NAME + "/openUnitList";
        public static const CLOSED_HOME_ALL_GALLERY:String = NAME + "/closedHomeAllGallery";
        private static var _watcherSetupUtil:IWatcherSetupUtil;
        public static const DISMISS:String = NAME + "/dismiss";
        public static const NAME:String = "HomeAllUnit";
        public static const MOVE_PREVIEW_PAGE:String = "HomeAllGallery/MovePreviewPage";
        public static const MOVE_NEXT_PAGE:String = "HomeAllGallery/MoveNextPage";
        public static const NEXT_PAGE:String = NAME + "/nextPage";
        public static const HAVE_GOLD:String = NAME + "/havegold";
        public static const IMAGE_CHANGE:String = NAME + "/imageChange";

        public function HomeAllGallery()
        {
            _documentDescriptor_ = new UIComponentDescriptor({type:UnitNumber, propertiesFactory:function () : Object
            {
                return {width:760, height:560, childDescriptors:[new UIComponentDescriptor({type:Image, id:"_HomeAllGallery_Image1"}), new UIComponentDescriptor({type:Canvas, id:"unitsCanvas", propertiesFactory:function () : Object
                {
                    return {visible:true, childDescriptors:[new UIComponentDescriptor({type:ViewStack, id:"unitsViewStack", stylesFactory:function () : void
                    {
                        this.borderStyle = "none";
                        return;
                    }// end function
                    , propertiesFactory:function () : Object
                    {
                        return {childDescriptors:[new UIComponentDescriptor({type:VBox, id:"firstPage", propertiesFactory:function () : Object
                        {
                            return {childDescriptors:[new UIComponentDescriptor({type:Canvas, id:"unitsCanvas1"})]};
                        }// end function
                        }), new UIComponentDescriptor({type:VBox, id:"secondPage", propertiesFactory:function () : Object
                        {
                            return {childDescriptors:[new UIComponentDescriptor({type:Canvas, id:"unitsCanvas2"})]};
                        }// end function
                        }), new UIComponentDescriptor({type:VBox, id:"thirdPage", propertiesFactory:function () : Object
                        {
                            return {childDescriptors:[new UIComponentDescriptor({type:Canvas, id:"unitsCanvas3"})]};
                        }// end function
                        })]};
                    }// end function
                    })]};
                }// end function
                }), new UIComponentDescriptor({type:Canvas, id:"Icon"}), new UIComponentDescriptor({type:Canvas, id:"unitIcon", propertiesFactory:function () : Object
                {
                    return {childDescriptors:[new UIComponentDescriptor({type:Canvas, id:"iconCanvas1"}), new UIComponentDescriptor({type:Canvas, id:"iconCanvas2"}), new UIComponentDescriptor({type:Canvas, id:"iconCanvas3"})]};
                }// end function
                }), new UIComponentDescriptor({type:Image, id:"closeButton", events:{click:"__closeButton_click"}, propertiesFactory:function () : Object
                {
                    return {x:677, y:14, width:45, height:45, source:_embed_mxml__swf_home_buttons_button_close_swf_1270316553};
                }// end function
                }), new UIComponentDescriptor({type:Image, id:"leftButton", events:{click:"__leftButton_click"}, propertiesFactory:function () : Object
                {
                    return {x:40, y:248, width:45, height:105, visible:false};
                }// end function
                }), new UIComponentDescriptor({type:Image, id:"rightButton", events:{click:"__rightButton_click"}, propertiesFactory:function () : Object
                {
                    return {x:655, y:248, width:45, height:105, visible:false};
                }// end function
                }), new UIComponentDescriptor({type:Text, id:"galleryNumText", stylesFactory:function () : void
                {
                    this.textAlign = "right";
                    this.fontSize = 15;
                    return;
                }// end function
                , propertiesFactory:function () : Object
                {
                    return {x:22, y:470, width:45, height:30};
                }// end function
                }), new UIComponentDescriptor({type:Text, id:"allGalleryNumText", stylesFactory:function () : void
                {
                    this.textAlign = "right";
                    this.fontSize = 15;
                    return;
                }// end function
                , propertiesFactory:function () : Object
                {
                    return {x:42, y:490, width:45, height:30};
                }// end function
                })]};
            }// end function
            });
            EmbedSwfWindowGalleryList = HomeAllGallery_EmbedSwfWindowGalleryList;
            EmbedSwfPaginator = HomeAllGallery_EmbedSwfPaginator;
            _1584993935_swf_paginator_left = new EmbedSwfPaginator();
            _1884510734_swf_paginator_right = new EmbedSwfPaginator();
            _2944451_swf = new EmbedSwfWindowGalleryList();
            _unitAlphaTimer = new Timer(20);
            _unitDismissWindow = new UnitDismissWindow();
            _collectWindow = new CollectWindow();
            _embed_mxml__swf_home_buttons_button_close_swf_1270316553 = HomeAllGallery__embed_mxml__swf_home_buttons_button_close_swf_1270316553;
            _bindings = [];
            _watchers = [];
            _bindingsByDestination = {};
            _bindingsBeginWithWord = {};
            mx_internal::_document = this;
            this.horizontalScrollPolicy = "off";
            this.verticalScrollPolicy = "off";
            this.width = 760;
            this.height = 560;
            this.addEventListener("creationComplete", ___HomeAllGallery_UnitNumber1_creationComplete);
            return;
        }// end function

        private function get _swf_paginator_right() : MovieClipLoaderAsset
        {
            return this._1884510734_swf_paginator_right;
        }// end function

        private function get _sortieNumber() : int
        {
            return this._2076479230_sortieNumber;
        }// end function

        private function set _sortieNumber(param1:int) : void
        {
            var _loc_2:* = this._2076479230_sortieNumber;
            if (_loc_2 !== param1)
            {
                this._2076479230_sortieNumber = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "_sortieNumber", _loc_2, param1));
            }
            return;
        }// end function

        public function commandWindowOpen(param1:UnitVO) : void
        {
            unitIcon.alpha = 1;
            return;
        }// end function

        private function close() : void
        {
            dispatchEvent(new PopupEvent(CLOSED_HOME_ALL_GALLERY, {window:this}));
            return;
        }// end function

        public function set createBool(param1:Boolean) : void
        {
            _createBool = param1;
            return;
        }// end function

        public function get createBool() : Boolean
        {
            return _createBool;
        }// end function

        public function get maxPage() : int
        {
            return this._843983379maxPage;
        }// end function

        public function adjustPaginatorButton() : void
        {
            leftButton.visible = false;
            rightButton.visible = false;
            if (page > 1)
            {
                leftButton.visible = true;
            }
            if (maxPage > page)
            {
                rightButton.visible = true;
            }
            return;
        }// end function

        public function get leftButton() : Image
        {
            return this._1632457241leftButton;
        }// end function

        public function showDismissWindow(param1:int) : void
        {
            PopUpManager.addPopUp(_unitDismissWindow, this, true);
            PopUpManager.centerPopUp(_unitDismissWindow);
            return;
        }// end function

        public function set page(param1:int) : void
        {
            var _loc_2:* = this._3433103page;
            if (_loc_2 !== param1)
            {
                this._3433103page = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "page", _loc_2, param1));
            }
            return;
        }// end function

        private function init() : void
        {
            createFlag = true;
            MovieClip(Loader(_swf_paginator_right.getChildAt(0)).content).gotoAndPlay("button_next");
            MovieClip(Loader(_swf_paginator_left.getChildAt(0)).content).gotoAndPlay("button_prev");
            return;
        }// end function

        public function get iconCanvas1() : Canvas
        {
            return this._89241824iconCanvas1;
        }// end function

        public function get unitIcon() : Canvas
        {
            return this._293001187unitIcon;
        }// end function

        public function set maxPage(param1:int) : void
        {
            var _loc_2:* = this._843983379maxPage;
            if (_loc_2 !== param1)
            {
                this._843983379maxPage = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "maxPage", _loc_2, param1));
            }
            return;
        }// end function

        public function get unitAlphaTimer() : Timer
        {
            return _unitAlphaTimer;
        }// end function

        public function get galleryNumText() : Text
        {
            return this._1138437599galleryNumText;
        }// end function

        public function get allGalleryNumText() : Text
        {
            return this._585312802allGalleryNumText;
        }// end function

        public function set Icon(param1:Canvas) : void
        {
            var _loc_2:* = this._2273433Icon;
            if (_loc_2 !== param1)
            {
                this._2273433Icon = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "Icon", _loc_2, param1));
            }
            return;
        }// end function

        public function get iconCanvas2() : Canvas
        {
            return this._89241823iconCanvas2;
        }// end function

        public function get iconCanvas3() : Canvas
        {
            return this._89241822iconCanvas3;
        }// end function

        private function _HomeAllGallery_bindingsSetup() : Array
        {
            var binding:Binding;
            var result:Array;
            binding = new Binding(this, function () : Object
            {
                return _swf;
            }// end function
            , function (param1:Object) : void
            {
                _HomeAllGallery_Image1.source = param1;
                return;
            }// end function
            , "_HomeAllGallery_Image1.source");
            result[0] = binding;
            binding = new Binding(this, function () : Object
            {
                return _swf_paginator_left;
            }// end function
            , function (param1:Object) : void
            {
                leftButton.source = param1;
                return;
            }// end function
            , "leftButton.source");
            result[1] = binding;
            binding = new Binding(this, function () : Object
            {
                return _swf_paginator_right;
            }// end function
            , function (param1:Object) : void
            {
                rightButton.source = param1;
                return;
            }// end function
            , "rightButton.source");
            result[2] = binding;
            binding = new Binding(this, function () : String
            {
                var _loc_1:* = galleryNum;
                var _loc_2:* = _loc_1 == undefined ? (null) : (String(_loc_1));
                return _loc_2;
            }// end function
            , function (param1:String) : void
            {
                galleryNumText.text = param1;
                return;
            }// end function
            , "galleryNumText.text");
            result[3] = binding;
            binding = new Binding(this, function () : String
            {
                var _loc_1:* = allGalleryNum;
                var _loc_2:* = _loc_1 == undefined ? (null) : (String(_loc_1));
                return _loc_2;
            }// end function
            , function (param1:String) : void
            {
                allGalleryNumText.text = param1;
                return;
            }// end function
            , "allGalleryNumText.text");
            result[4] = binding;
            return result;
        }// end function

        public function set iconCanvas1(param1:Canvas) : void
        {
            var _loc_2:* = this._89241824iconCanvas1;
            if (_loc_2 !== param1)
            {
                this._89241824iconCanvas1 = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "iconCanvas1", _loc_2, param1));
            }
            return;
        }// end function

        public function set leftButton(param1:Image) : void
        {
            var _loc_2:* = this._1632457241leftButton;
            if (_loc_2 !== param1)
            {
                this._1632457241leftButton = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "leftButton", _loc_2, param1));
            }
            return;
        }// end function

        public function get unitsViewStack() : ViewStack
        {
            return this._741092404unitsViewStack;
        }// end function

        public function resetUnitStatus() : void
        {
            return;
        }// end function

        public function set galleryNumText(param1:Text) : void
        {
            var _loc_2:* = this._1138437599galleryNumText;
            if (_loc_2 !== param1)
            {
                this._1138437599galleryNumText = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "galleryNumText", _loc_2, param1));
            }
            return;
        }// end function

        public function set secondPage(param1:VBox) : void
        {
            var _loc_2:* = this._423739683secondPage;
            if (_loc_2 !== param1)
            {
                this._423739683secondPage = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "secondPage", _loc_2, param1));
            }
            return;
        }// end function

        public function get allUnits() : Array
        {
            return _allUnits;
        }// end function

        public function get secondPage() : VBox
        {
            return this._423739683secondPage;
        }// end function

        public function set allGalleryNumText(param1:Text) : void
        {
            var _loc_2:* = this._585312802allGalleryNumText;
            if (_loc_2 !== param1)
            {
                this._585312802allGalleryNumText = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "allGalleryNumText", _loc_2, param1));
            }
            return;
        }// end function

        public function set unitsCanvas(param1:Canvas) : void
        {
            var _loc_2:* = this._561654183unitsCanvas;
            if (_loc_2 !== param1)
            {
                this._561654183unitsCanvas = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "unitsCanvas", _loc_2, param1));
            }
            return;
        }// end function

        public function handleEvent(event:Event) : void
        {
            switch(event.type)
            {
                case UnitDismissWindow.UNIT_DISMISS:
                {
                    break;
                }
                default:
                {
                    break;
                }
            }
            return;
        }// end function

        public function set iconCanvas3(param1:Canvas) : void
        {
            var _loc_2:* = this._89241822iconCanvas3;
            if (_loc_2 !== param1)
            {
                this._89241822iconCanvas3 = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "iconCanvas3", _loc_2, param1));
            }
            return;
        }// end function

        public function get firstPage() : VBox
        {
            return this._132895071firstPage;
        }// end function

        public function get perUnit() : int
        {
            return this._679335871perUnit;
        }// end function

        public function set iconCanvas2(param1:Canvas) : void
        {
            var _loc_2:* = this._89241823iconCanvas2;
            if (_loc_2 !== param1)
            {
                this._89241823iconCanvas2 = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "iconCanvas2", _loc_2, param1));
            }
            return;
        }// end function

        public function set thirdPage(param1:VBox) : void
        {
            var _loc_2:* = this._585477994thirdPage;
            if (_loc_2 !== param1)
            {
                this._585477994thirdPage = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "thirdPage", _loc_2, param1));
            }
            return;
        }// end function

        public function set unitIcon(param1:Canvas) : void
        {
            var _loc_2:* = this._293001187unitIcon;
            if (_loc_2 !== param1)
            {
                this._293001187unitIcon = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "unitIcon", _loc_2, param1));
            }
            return;
        }// end function

        public function set unitsViewStack(param1:ViewStack) : void
        {
            var _loc_2:* = this._741092404unitsViewStack;
            if (_loc_2 !== param1)
            {
                this._741092404unitsViewStack = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "unitsViewStack", _loc_2, param1));
            }
            return;
        }// end function

        public function get unitsCanvas2() : Canvas
        {
            return this._231410539unitsCanvas2;
        }// end function

        public function get closeButton() : Image
        {
            return this._312699062closeButton;
        }// end function

        public function get rightButton() : Image
        {
            return this._896282514rightButton;
        }// end function

        public function get unitsCanvas1() : Canvas
        {
            return this._231410538unitsCanvas1;
        }// end function

        public function __closeButton_click(event:MouseEvent) : void
        {
            close();
            return;
        }// end function

        private function get _swf_paginator_left() : MovieClipLoaderAsset
        {
            return this._1584993935_swf_paginator_left;
        }// end function

        public function get unitsCanvas3() : Canvas
        {
            return this._231410540unitsCanvas3;
        }// end function

        private function onRight() : void
        {
            switch(herePage)
            {
                case 1:
                {
                    dispatchEvent(new PopupEvent(NEXT_PAGE, {frame:"start2"}));
                    var _loc_2:* = herePage + 1;
                    herePage = _loc_2;
                    var _loc_1:* = unitsViewStack;
                    var _loc_2:* = unitsViewStack.selectedIndex + 1;
                    _loc_1.selectedIndex = _loc_2;
                    break;
                }
                case 2:
                {
                    dispatchEvent(new PopupEvent(NEXT_PAGE, {frame:"start3"}));
                    var _loc_2:* = herePage + 1;
                    herePage = _loc_2;
                    var _loc_1:* = unitsViewStack;
                    var _loc_2:* = unitsViewStack.selectedIndex + 1;
                    _loc_1.selectedIndex = _loc_2;
                    break;
                }
                default:
                {
                    break;
                }
            }
            return;
        }// end function

        public function set perUnit(param1:int) : void
        {
            var _loc_2:* = this._679335871perUnit;
            if (_loc_2 !== param1)
            {
                this._679335871perUnit = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "perUnit", _loc_2, param1));
            }
            return;
        }// end function

        private function onLeft() : void
        {
            switch(herePage)
            {
                case 2:
                {
                    dispatchEvent(new PopupEvent(PREVIOS_PAGE, {frame:"start2"}));
                    var _loc_2:* = herePage - 1;
                    herePage = _loc_2;
                    var _loc_1:* = unitsViewStack;
                    var _loc_2:* = unitsViewStack.selectedIndex - 1;
                    _loc_1.selectedIndex = _loc_2;
                    break;
                }
                case 3:
                {
                    dispatchEvent(new PopupEvent(PREVIOS_PAGE, {frame:"start3"}));
                    var _loc_2:* = herePage - 1;
                    herePage = _loc_2;
                    var _loc_1:* = unitsViewStack;
                    var _loc_2:* = unitsViewStack.selectedIndex - 1;
                    _loc_1.selectedIndex = _loc_2;
                    break;
                }
                default:
                {
                    break;
                }
            }
            return;
        }// end function

        public function ___HomeAllGallery_UnitNumber1_creationComplete(event:FlexEvent) : void
        {
            init();
            return;
        }// end function

        public function get allGalleryNum() : int
        {
            return this._878125909allGalleryNum;
        }// end function

        public function get page() : int
        {
            return this._3433103page;
        }// end function

        override public function initialize() : void
        {
            var target:HomeAllGallery;
            var watcherSetupUtilClass:Object;
            .mx_internal::setDocumentDescriptor(_documentDescriptor_);
            var bindings:* = _HomeAllGallery_bindingsSetup();
            var watchers:Array;
            target;
            if (_watcherSetupUtil == null)
            {
                watcherSetupUtilClass = getDefinitionByName("_com_kbmj_viking_view_home_HomeAllGalleryWatcherSetupUtil");
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

        public function setUnitStatus(param1:UnitVO) : void
        {
            return;
        }// end function

        public function get Icon() : Canvas
        {
            return this._2273433Icon;
        }// end function

        public function set allUnits(param1:Array) : void
        {
            _allUnits = param1;
            return;
        }// end function

        public function commandWindowClose() : void
        {
            return;
        }// end function

        public function __rightButton_click(event:MouseEvent) : void
        {
            sendEvent(MOVE_NEXT_PAGE);
            return;
        }// end function

        private function set _swf(param1:MovieClipLoaderAsset) : void
        {
            var _loc_2:* = this._2944451_swf;
            if (_loc_2 !== param1)
            {
                this._2944451_swf = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "_swf", _loc_2, param1));
            }
            return;
        }// end function

        public function set allGalleryNum(param1:int) : void
        {
            var _loc_2:* = this._878125909allGalleryNum;
            if (_loc_2 !== param1)
            {
                this._878125909allGalleryNum = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "allGalleryNum", _loc_2, param1));
            }
            return;
        }// end function

        public function set closeButton(param1:Image) : void
        {
            var _loc_2:* = this._312699062closeButton;
            if (_loc_2 !== param1)
            {
                this._312699062closeButton = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "closeButton", _loc_2, param1));
            }
            return;
        }// end function

        public function set galleryNum(param1:int) : void
        {
            var _loc_2:* = this._1316135636galleryNum;
            if (_loc_2 !== param1)
            {
                this._1316135636galleryNum = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "galleryNum", _loc_2, param1));
            }
            return;
        }// end function

        public function get unitsCanvas() : Canvas
        {
            return this._561654183unitsCanvas;
        }// end function

        public function get collectWindow() : CollectWindow
        {
            return _collectWindow;
        }// end function

        public function set firstPage(param1:VBox) : void
        {
            var _loc_2:* = this._132895071firstPage;
            if (_loc_2 !== param1)
            {
                this._132895071firstPage = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "firstPage", _loc_2, param1));
            }
            return;
        }// end function

        public function get thirdPage() : VBox
        {
            return this._585477994thirdPage;
        }// end function

        public function __leftButton_click(event:MouseEvent) : void
        {
            sendEvent(MOVE_PREVIEW_PAGE);
            return;
        }// end function

        private function get _swf() : MovieClipLoaderAsset
        {
            return this._2944451_swf;
        }// end function

        public function set unitsCanvas2(param1:Canvas) : void
        {
            var _loc_2:* = this._231410539unitsCanvas2;
            if (_loc_2 !== param1)
            {
                this._231410539unitsCanvas2 = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "unitsCanvas2", _loc_2, param1));
            }
            return;
        }// end function

        public function set unitsCanvas3(param1:Canvas) : void
        {
            var _loc_2:* = this._231410540unitsCanvas3;
            if (_loc_2 !== param1)
            {
                this._231410540unitsCanvas3 = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "unitsCanvas3", _loc_2, param1));
            }
            return;
        }// end function

        public function set unitsCanvas1(param1:Canvas) : void
        {
            var _loc_2:* = this._231410538unitsCanvas1;
            if (_loc_2 !== param1)
            {
                this._231410538unitsCanvas1 = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "unitsCanvas1", _loc_2, param1));
            }
            return;
        }// end function

        public function set rightButton(param1:Image) : void
        {
            var _loc_2:* = this._896282514rightButton;
            if (_loc_2 !== param1)
            {
                this._896282514rightButton = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "rightButton", _loc_2, param1));
            }
            return;
        }// end function

        private function set _swf_paginator_left(param1:MovieClipLoaderAsset) : void
        {
            var _loc_2:* = this._1584993935_swf_paginator_left;
            if (_loc_2 !== param1)
            {
                this._1584993935_swf_paginator_left = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "_swf_paginator_left", _loc_2, param1));
            }
            return;
        }// end function

        public function get galleryNum() : int
        {
            return this._1316135636galleryNum;
        }// end function

        private function set _swf_paginator_right(param1:MovieClipLoaderAsset) : void
        {
            var _loc_2:* = this._1884510734_swf_paginator_right;
            if (_loc_2 !== param1)
            {
                this._1884510734_swf_paginator_right = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "_swf_paginator_right", _loc_2, param1));
            }
            return;
        }// end function

        private function _HomeAllGallery_bindingExprs() : void
        {
            var _loc_1:* = undefined;
            _loc_1 = _swf;
            _loc_1 = _swf_paginator_left;
            _loc_1 = _swf_paginator_right;
            _loc_1 = galleryNum;
            _loc_1 = allGalleryNum;
            return;
        }// end function

        public function get unitDismissWindow() : UnitDismissWindow
        {
            return _unitDismissWindow;
        }// end function

        public static function set watcherSetupUtil(param1:IWatcherSetupUtil) : void
        {
            _watcherSetupUtil = param1;
            return;
        }// end function

    }
}
