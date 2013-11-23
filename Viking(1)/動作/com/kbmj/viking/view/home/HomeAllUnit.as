package com.kbmj.viking.view.home
{
    import com.kbmj.viking.lib.*;
    import com.kbmj.viking.view.*;
    import com.kbmj.viking.vo.*;
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

    public class HomeAllUnit extends UnitNumber implements IBindingClient
    {
        private var _1416207866unitsCanvas10:Canvas;
        private var _862545263hpBarCanvas2:Canvas;
        private var _862545267hpBarCanvas6:Canvas;
        private var _1728244683allUnitCommandImage:Image;
        private var _896282514rightButton:Image;
        private var _862545270hpBarCanvas9:Canvas;
        private var _231410543unitsCanvas6:Canvas;
        var _bindingsByDestination:Object;
        private var _1426067052gatheringImage:Image;
        private var _89241817iconCanvas8:Canvas;
        private var _99715089_swf_next:MovieClipLoaderAsset;
        private var _769044508unitNumber1:Image;
        private var _unitCount:int = 15;
        private var _99643601_swf_prev:MovieClipLoaderAsset;
        private var createFlag:Boolean = false;
        private var _2039624653trainImage:Image;
        private var _862545264hpBarCanvas3:Canvas;
        private var _89241821iconCanvas4:Canvas;
        private var _909729689sakura:Sakura;
        private var herePage:int = 1;
        private var _862545268hpBarCanvas7:Canvas;
        private var _538942674tutMarkVisible:Boolean = false;
        private var _89241824iconCanvas1:Canvas;
        private var _231410540unitsCanvas3:Canvas;
        private var _231410544unitsCanvas7:Canvas;
        private var _1589610788tutMarkUnit:Image;
        private var _969099394hpBarCanvas10:Canvas;
        private var _741092404unitsViewStack:ViewStack;
        private var _89241816iconCanvas9:Canvas;
        private var _561654183unitsCanvas:Canvas;
        private var _selectAllUnitCommandWindow:SelectAllUnitCommandWindow;
        private var _89241819iconCanvas6:Canvas;
        private var _confirmIncrementMaxUnitsCount:ConfirmIncrementMaxUnitsCount;
        private var _862545265hpBarCanvas4:Canvas;
        private var _231410538unitsCanvas1:Canvas;
        private var _862545269hpBarCanvas8:Canvas;
        private var _embed_mxml__swf_home_buttons_button_action_train_swf_1951263799:Class;
        private var _embed_mxml__swf_home_buttons_button_action_mine_swf_1132131721:Class;
        private var _embed_mxml__swf_common_arrow_top_swf_788233961:Class;
        private var _89241820iconCanvas5:Canvas;
        private var _231410541unitsCanvas4:Canvas;
        private var _231410545unitsCanvas8:Canvas;
        private var _unitAlphaTimer:Timer;
        private var _89241823iconCanvas2:Canvas;
        public var playerVO:PlayerVO;
        private var _110713962listCanvas:Canvas;
        private var _2076479230_sortieNumber:int = 0;
        private var _unitDismissWindow:UnitDismissWindow;
        private var _1632457241leftButton:Image;
        var _watchers:Array;
        private var _2099682666unitStatus:UnitStatus;
        private var _862545262hpBarCanvas1:Canvas;
        private var _862545266hpBarCanvas5:Canvas;
        private var _1528470800iconCanvas10:Canvas;
        private var _createBool:Boolean = false;
        private var _231410539unitsCanvas2:Canvas;
        private var _embed_mxml__swf_home_buttons_button_close_swf_1270316553:Class;
        private var _allUnits:Array;
        private var _embed_mxml__swf_home_buttons_button_rest_swf_404362039:Class;
        private var _89241818iconCanvas7:Canvas;
        private var _769044509unitNumber0:Image;
        private var _collectWindow:CollectWindow;
        private var _231410542unitsCanvas5:Canvas;
        private var _231410546unitsCanvas9:Canvas;
        var _bindingsBeginWithWord:Object;
        private var hpBarRenderer:HpBarRenderer;
        var _bindings:Array;
        private var _2016617048tutMarkClose:Image;
        private var _documentDescriptor_:UIComponentDescriptor;
        private var _89241822iconCanvas3:Canvas;
        private var _312699062closeButton:Image;
        public static const OPEN_UNIT_LIST:String = NAME + "/openUnitList";
        public static const NAME:String = "HomeAllUnit";
        public static const CLOSED_HOME_ALL_UNIT:String = NAME + "/closedHomeAllUnit";
        public static const PREVIOS_PAGE:String = NAME + "/previosPage";
        public static const HAVE_GOLD:String = NAME + "/havegold";
        public static const INIT_SAKURA_TMARK:String = NAME + "/initSakuraTmark";
        public static const NEXT_PAGE:String = NAME + "/nextPage";
        public static const OPEN_ALL_SLEEPING_UNIT:String = NAME + "/openAllSleepingUnit";
        private static var _watcherSetupUtil:IWatcherSetupUtil;
        public static const DISMISS:String = NAME + "/dismiss";
        public static const LOCK_UNIT_LIST:String = NAME + "/unitLockList";
        public static const IMAGE_CHANGE:String = NAME + "/imageChange";

        public function HomeAllUnit()
        {
            _documentDescriptor_ = new UIComponentDescriptor({type:UnitNumber, propertiesFactory:function () : Object
            {
                return {width:760, height:560, childDescriptors:[new UIComponentDescriptor({type:Image, id:"unitNumber0", propertiesFactory:function () : Object
                {
                    return {x:46, y:242};
                }// end function
                }), new UIComponentDescriptor({type:Image, id:"unitNumber1", propertiesFactory:function () : Object
                {
                    return {x:28, y:242};
                }// end function
                }), new UIComponentDescriptor({type:Canvas, id:"listCanvas", propertiesFactory:function () : Object
                {
                    return {y:9};
                }// end function
                }), new UIComponentDescriptor({type:Canvas, id:"unitsCanvas", propertiesFactory:function () : Object
                {
                    return {visible:false, childDescriptors:[new UIComponentDescriptor({type:ViewStack, id:"unitsViewStack", stylesFactory:function () : void
                    {
                        this.borderStyle = "none";
                        return;
                    }// end function
                    , propertiesFactory:function () : Object
                    {
                        return {width:700, height:500, childDescriptors:[new UIComponentDescriptor({type:Canvas, propertiesFactory:function () : Object
                        {
                            return {childDescriptors:[new UIComponentDescriptor({type:Canvas, id:"unitsCanvas1"}), new UIComponentDescriptor({type:Canvas, id:"iconCanvas1"}), new UIComponentDescriptor({type:Canvas, id:"hpBarCanvas1"})]};
                        }// end function
                        }), new UIComponentDescriptor({type:Canvas, propertiesFactory:function () : Object
                        {
                            return {childDescriptors:[new UIComponentDescriptor({type:Canvas, id:"unitsCanvas2"}), new UIComponentDescriptor({type:Canvas, id:"iconCanvas2"}), new UIComponentDescriptor({type:Canvas, id:"hpBarCanvas2"})]};
                        }// end function
                        }), new UIComponentDescriptor({type:Canvas, propertiesFactory:function () : Object
                        {
                            return {childDescriptors:[new UIComponentDescriptor({type:Canvas, id:"unitsCanvas3"}), new UIComponentDescriptor({type:Canvas, id:"iconCanvas3"}), new UIComponentDescriptor({type:Canvas, id:"hpBarCanvas3"})]};
                        }// end function
                        }), new UIComponentDescriptor({type:Canvas, propertiesFactory:function () : Object
                        {
                            return {childDescriptors:[new UIComponentDescriptor({type:Canvas, id:"unitsCanvas4"}), new UIComponentDescriptor({type:Canvas, id:"iconCanvas4"}), new UIComponentDescriptor({type:Canvas, id:"hpBarCanvas4"})]};
                        }// end function
                        }), new UIComponentDescriptor({type:Canvas, propertiesFactory:function () : Object
                        {
                            return {childDescriptors:[new UIComponentDescriptor({type:Canvas, id:"unitsCanvas5"}), new UIComponentDescriptor({type:Canvas, id:"iconCanvas5"}), new UIComponentDescriptor({type:Canvas, id:"hpBarCanvas5"})]};
                        }// end function
                        }), new UIComponentDescriptor({type:Canvas, propertiesFactory:function () : Object
                        {
                            return {childDescriptors:[new UIComponentDescriptor({type:Canvas, id:"unitsCanvas6"}), new UIComponentDescriptor({type:Canvas, id:"iconCanvas6"}), new UIComponentDescriptor({type:Canvas, id:"hpBarCanvas6"})]};
                        }// end function
                        }), new UIComponentDescriptor({type:Canvas, propertiesFactory:function () : Object
                        {
                            return {childDescriptors:[new UIComponentDescriptor({type:Canvas, id:"unitsCanvas7"}), new UIComponentDescriptor({type:Canvas, id:"iconCanvas7"}), new UIComponentDescriptor({type:Canvas, id:"hpBarCanvas7"})]};
                        }// end function
                        }), new UIComponentDescriptor({type:Canvas, propertiesFactory:function () : Object
                        {
                            return {childDescriptors:[new UIComponentDescriptor({type:Canvas, id:"unitsCanvas8"}), new UIComponentDescriptor({type:Canvas, id:"iconCanvas8"}), new UIComponentDescriptor({type:Canvas, id:"hpBarCanvas8"})]};
                        }// end function
                        }), new UIComponentDescriptor({type:Canvas, propertiesFactory:function () : Object
                        {
                            return {childDescriptors:[new UIComponentDescriptor({type:Canvas, id:"unitsCanvas9"}), new UIComponentDescriptor({type:Canvas, id:"iconCanvas9"}), new UIComponentDescriptor({type:Canvas, id:"hpBarCanvas9"})]};
                        }// end function
                        }), new UIComponentDescriptor({type:Canvas, propertiesFactory:function () : Object
                        {
                            return {childDescriptors:[new UIComponentDescriptor({type:Canvas, id:"unitsCanvas10"}), new UIComponentDescriptor({type:Canvas, id:"iconCanvas10"}), new UIComponentDescriptor({type:Canvas, id:"hpBarCanvas10"})]};
                        }// end function
                        })]};
                    }// end function
                    })]};
                }// end function
                }), new UIComponentDescriptor({type:Image, id:"rightButton", events:{click:"__rightButton_click"}, propertiesFactory:function () : Object
                {
                    return {x:635, y:150, visible:false};
                }// end function
                }), new UIComponentDescriptor({type:Image, id:"leftButton", events:{click:"__leftButton_click"}, propertiesFactory:function () : Object
                {
                    return {x:90, y:150, visible:false};
                }// end function
                }), new UIComponentDescriptor({type:Sakura, id:"sakura"}), new UIComponentDescriptor({type:UnitStatus, id:"unitStatus", propertiesFactory:function () : Object
                {
                    return {x:2, y:290};
                }// end function
                }), new UIComponentDescriptor({type:Image, id:"allUnitCommandImage", events:{click:"__allUnitCommandImage_click"}, propertiesFactory:function () : Object
                {
                    return {x:670, y:35, source:_embed_mxml__swf_home_buttons_button_rest_swf_404362039};
                }// end function
                }), new UIComponentDescriptor({type:Image, id:"closeButton", events:{click:"__closeButton_click"}, propertiesFactory:function () : Object
                {
                    return {x:670, y:100, width:50, height:50, source:_embed_mxml__swf_home_buttons_button_close_swf_1270316553};
                }// end function
                }), new UIComponentDescriptor({type:Image, id:"gatheringImage", events:{click:"__gatheringImage_click"}, propertiesFactory:function () : Object
                {
                    return {x:670, y:165, source:_embed_mxml__swf_home_buttons_button_action_mine_swf_1132131721};
                }// end function
                }), new UIComponentDescriptor({type:Image, id:"trainImage", events:{click:"__trainImage_click"}, propertiesFactory:function () : Object
                {
                    return {x:670, y:235, source:_embed_mxml__swf_home_buttons_button_action_train_swf_1951263799};
                }// end function
                }), new UIComponentDescriptor({type:Image, id:"tutMarkUnit", propertiesFactory:function () : Object
                {
                    return {source:_embed_mxml__swf_common_arrow_top_swf_788233961, visible:false, y:115, x:145, width:75, height:75};
                }// end function
                }), new UIComponentDescriptor({type:Image, id:"tutMarkClose", propertiesFactory:function () : Object
                {
                    return {source:_embed_mxml__swf_common_arrow_top_swf_788233961, visible:false, y:155, x:685, width:75, height:75};
                }// end function
                })]};
            }// end function
            });
            _99715089_swf_next = new Viking.EmbedSwfButtonPaginator();
            _99643601_swf_prev = new Viking.EmbedSwfButtonPaginator();
            _unitAlphaTimer = new Timer(20);
            _selectAllUnitCommandWindow = new SelectAllUnitCommandWindow();
            _confirmIncrementMaxUnitsCount = new ConfirmIncrementMaxUnitsCount();
            _unitDismissWindow = new UnitDismissWindow();
            _collectWindow = new CollectWindow();
            hpBarRenderer = new HpBarRenderer();
            _embed_mxml__swf_common_arrow_top_swf_788233961 = HomeAllUnit__embed_mxml__swf_common_arrow_top_swf_788233961;
            _embed_mxml__swf_home_buttons_button_action_mine_swf_1132131721 = HomeAllUnit__embed_mxml__swf_home_buttons_button_action_mine_swf_1132131721;
            _embed_mxml__swf_home_buttons_button_action_train_swf_1951263799 = HomeAllUnit__embed_mxml__swf_home_buttons_button_action_train_swf_1951263799;
            _embed_mxml__swf_home_buttons_button_close_swf_1270316553 = HomeAllUnit__embed_mxml__swf_home_buttons_button_close_swf_1270316553;
            _embed_mxml__swf_home_buttons_button_rest_swf_404362039 = HomeAllUnit__embed_mxml__swf_home_buttons_button_rest_swf_404362039;
            _bindings = [];
            _watchers = [];
            _bindingsByDestination = {};
            _bindingsBeginWithWord = {};
            mx_internal::_document = this;
            this.horizontalScrollPolicy = "off";
            this.verticalScrollPolicy = "off";
            this.width = 760;
            this.height = 560;
            this.addEventListener("creationComplete", ___HomeAllUnit_UnitNumber1_creationComplete);
            return;
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
            sakura.open(param1);
            dispatchEvent(new PopupEvent(INIT_SAKURA_TMARK, {unit:param1, sakura:sakura}));
            unitsCanvas.alpha = 1;
            return;
        }// end function

        public function get createBool() : Boolean
        {
            return _createBool;
        }// end function

        public function set createBool(param1:Boolean) : void
        {
            _createBool = param1;
            return;
        }// end function

        private function get _swf_next() : MovieClipLoaderAsset
        {
            return this._99715089_swf_next;
        }// end function

        public function set unitsCanvas10(param1:Canvas) : void
        {
            var _loc_2:* = this._1416207866unitsCanvas10;
            if (_loc_2 !== param1)
            {
                this._1416207866unitsCanvas10 = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "unitsCanvas10", _loc_2, param1));
            }
            return;
        }// end function

        public function get unitsCanvas10() : Canvas
        {
            return this._1416207866unitsCanvas10;
        }// end function

        public function get leftButton() : Image
        {
            return this._1632457241leftButton;
        }// end function

        public function set iconCanvas10(param1:Canvas) : void
        {
            var _loc_2:* = this._1528470800iconCanvas10;
            if (_loc_2 !== param1)
            {
                this._1528470800iconCanvas10 = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "iconCanvas10", _loc_2, param1));
            }
            return;
        }// end function

        private function calcuNumber() : void
        {
            var _loc_1:* = _allUnits.length;
            if (_loc_1 < 10)
            {
                unitNumber0.source = _numberArray[_loc_1];
                unitNumber1.source = null;
            }
            else
            {
                unitNumber1.source = _numberArray[int(_loc_1 / 10)];
                unitNumber0.source = _numberArray[_loc_1 % 10];
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

        public function get allUnitCommandImage() : Image
        {
            return this._1728244683allUnitCommandImage;
        }// end function

        public function set iconCanvas4(param1:Canvas) : void
        {
            var _loc_2:* = this._89241821iconCanvas4;
            if (_loc_2 !== param1)
            {
                this._89241821iconCanvas4 = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "iconCanvas4", _loc_2, param1));
            }
            return;
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

        public function set iconCanvas5(param1:Canvas) : void
        {
            var _loc_2:* = this._89241820iconCanvas5;
            if (_loc_2 !== param1)
            {
                this._89241820iconCanvas5 = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "iconCanvas5", _loc_2, param1));
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

        public function set iconCanvas7(param1:Canvas) : void
        {
            var _loc_2:* = this._89241818iconCanvas7;
            if (_loc_2 !== param1)
            {
                this._89241818iconCanvas7 = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "iconCanvas7", _loc_2, param1));
            }
            return;
        }// end function

        public function get allUnits() : Array
        {
            return _allUnits;
        }// end function

        public function set tutMarkUnit(param1:Image) : void
        {
            var _loc_2:* = this._1589610788tutMarkUnit;
            if (_loc_2 !== param1)
            {
                this._1589610788tutMarkUnit = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "tutMarkUnit", _loc_2, param1));
            }
            return;
        }// end function

        public function set iconCanvas9(param1:Canvas) : void
        {
            var _loc_2:* = this._89241816iconCanvas9;
            if (_loc_2 !== param1)
            {
                this._89241816iconCanvas9 = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "iconCanvas9", _loc_2, param1));
            }
            return;
        }// end function

        public function set iconCanvas8(param1:Canvas) : void
        {
            var _loc_2:* = this._89241817iconCanvas8;
            if (_loc_2 !== param1)
            {
                this._89241817iconCanvas8 = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "iconCanvas8", _loc_2, param1));
            }
            return;
        }// end function

        public function set iconCanvas6(param1:Canvas) : void
        {
            var _loc_2:* = this._89241819iconCanvas6;
            if (_loc_2 !== param1)
            {
                this._89241819iconCanvas6 = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "iconCanvas6", _loc_2, param1));
            }
            return;
        }// end function

        private function set _swf_prev(param1:MovieClipLoaderAsset) : void
        {
            var _loc_2:* = this._99643601_swf_prev;
            if (_loc_2 !== param1)
            {
                this._99643601_swf_prev = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "_swf_prev", _loc_2, param1));
            }
            return;
        }// end function

        public function get trainImage() : Image
        {
            return this._2039624653trainImage;
        }// end function

        public function __trainImage_click(event:MouseEvent) : void
        {
            dispatchEvent(new Event(OPEN_UNIT_LIST));
            return;
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

        private function increaseMaxUnit(event:Event) : void
        {
            if (event.type == SelectAllUnitCommandWindow.SELECT_MAX_UNIT_INCREASE_5)
            {
                _confirmIncrementMaxUnitsCount.setViewData(5, 1000);
            }
            else
            {
                _confirmIncrementMaxUnitsCount.setViewData(1, 250);
            }
            popupWindow(_confirmIncrementMaxUnitsCount, false);
            _confirmIncrementMaxUnitsCount.addEventListener(ConfirmIncrementMaxUnitsCount.CONFIRMED, confirmedIncrementMaxTasks);
            return;
        }// end function

        public function get sakura() : Sakura
        {
            return this._909729689sakura;
        }// end function

        public function set allUnitCommandImage(param1:Image) : void
        {
            var _loc_2:* = this._1728244683allUnitCommandImage;
            if (_loc_2 !== param1)
            {
                this._1728244683allUnitCommandImage = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "allUnitCommandImage", _loc_2, param1));
            }
            return;
        }// end function

        public function set trainImage(param1:Image) : void
        {
            var _loc_2:* = this._2039624653trainImage;
            if (_loc_2 !== param1)
            {
                this._2039624653trainImage = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "trainImage", _loc_2, param1));
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

        public function get tutMarkClose() : Image
        {
            return this._2016617048tutMarkClose;
        }// end function

        public function __closeButton_click(event:MouseEvent) : void
        {
            close();
            return;
        }// end function

        public function get rightButton() : Image
        {
            return this._896282514rightButton;
        }// end function

        private function onLeft() : void
        {
            var _loc_1:* = unitsViewStack;
            var _loc_2:* = unitsViewStack.selectedIndex - 1;
            _loc_1.selectedIndex = _loc_2;
            setPaginate();
            return;
        }// end function

        public function get hpBarCanvas10() : Canvas
        {
            return this._969099394hpBarCanvas10;
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

        public function get unitStatus() : UnitStatus
        {
            return this._2099682666unitStatus;
        }// end function

        public function __rightButton_click(event:MouseEvent) : void
        {
            onRight();
            return;
        }// end function

        public function setUnitStatus(param1:UnitVO) : void
        {
            unitStatus.unit = param1;
            return;
        }// end function

        public function set allUnits(param1:Array) : void
        {
            _allUnits = param1;
            return;
        }// end function

        public function ___HomeAllUnit_UnitNumber1_creationComplete(event:FlexEvent) : void
        {
            init();
            return;
        }// end function

        public function set tutMarkClose(param1:Image) : void
        {
            var _loc_2:* = this._2016617048tutMarkClose;
            if (_loc_2 !== param1)
            {
                this._2016617048tutMarkClose = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "tutMarkClose", _loc_2, param1));
            }
            return;
        }// end function

        public function set sakura(param1:Sakura) : void
        {
            var _loc_2:* = this._909729689sakura;
            if (_loc_2 !== param1)
            {
                this._909729689sakura = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "sakura", _loc_2, param1));
            }
            return;
        }// end function

        private function get tutMarkVisible() : Boolean
        {
            return this._538942674tutMarkVisible;
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

        public function set hpBarCanvas3(param1:Canvas) : void
        {
            var _loc_2:* = this._862545264hpBarCanvas3;
            if (_loc_2 !== param1)
            {
                this._862545264hpBarCanvas3 = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "hpBarCanvas3", _loc_2, param1));
            }
            return;
        }// end function

        public function set unitsCanvas4(param1:Canvas) : void
        {
            var _loc_2:* = this._231410541unitsCanvas4;
            if (_loc_2 !== param1)
            {
                this._231410541unitsCanvas4 = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "unitsCanvas4", _loc_2, param1));
            }
            return;
        }// end function

        public function set hpBarCanvas4(param1:Canvas) : void
        {
            var _loc_2:* = this._862545265hpBarCanvas4;
            if (_loc_2 !== param1)
            {
                this._862545265hpBarCanvas4 = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "hpBarCanvas4", _loc_2, param1));
            }
            return;
        }// end function

        public function set hpBarCanvas1(param1:Canvas) : void
        {
            var _loc_2:* = this._862545262hpBarCanvas1;
            if (_loc_2 !== param1)
            {
                this._862545262hpBarCanvas1 = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "hpBarCanvas1", _loc_2, param1));
            }
            return;
        }// end function

        public function set hpBarCanvas5(param1:Canvas) : void
        {
            var _loc_2:* = this._862545266hpBarCanvas5;
            if (_loc_2 !== param1)
            {
                this._862545266hpBarCanvas5 = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "hpBarCanvas5", _loc_2, param1));
            }
            return;
        }// end function

        public function set hpBarCanvas2(param1:Canvas) : void
        {
            var _loc_2:* = this._862545263hpBarCanvas2;
            if (_loc_2 !== param1)
            {
                this._862545263hpBarCanvas2 = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "hpBarCanvas2", _loc_2, param1));
            }
            return;
        }// end function

        public function set hpBarCanvas6(param1:Canvas) : void
        {
            var _loc_2:* = this._862545267hpBarCanvas6;
            if (_loc_2 !== param1)
            {
                this._862545267hpBarCanvas6 = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "hpBarCanvas6", _loc_2, param1));
            }
            return;
        }// end function

        public function set hpBarCanvas7(param1:Canvas) : void
        {
            var _loc_2:* = this._862545268hpBarCanvas7;
            if (_loc_2 !== param1)
            {
                this._862545268hpBarCanvas7 = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "hpBarCanvas7", _loc_2, param1));
            }
            return;
        }// end function

        public function set unitsCanvas8(param1:Canvas) : void
        {
            var _loc_2:* = this._231410545unitsCanvas8;
            if (_loc_2 !== param1)
            {
                this._231410545unitsCanvas8 = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "unitsCanvas8", _loc_2, param1));
            }
            return;
        }// end function

        public function set hpBarCanvas8(param1:Canvas) : void
        {
            var _loc_2:* = this._862545269hpBarCanvas8;
            if (_loc_2 !== param1)
            {
                this._862545269hpBarCanvas8 = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "hpBarCanvas8", _loc_2, param1));
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

        public function set hpBarCanvas9(param1:Canvas) : void
        {
            var _loc_2:* = this._862545270hpBarCanvas9;
            if (_loc_2 !== param1)
            {
                this._862545270hpBarCanvas9 = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "hpBarCanvas9", _loc_2, param1));
            }
            return;
        }// end function

        public function set unitsCanvas6(param1:Canvas) : void
        {
            var _loc_2:* = this._231410543unitsCanvas6;
            if (_loc_2 !== param1)
            {
                this._231410543unitsCanvas6 = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "unitsCanvas6", _loc_2, param1));
            }
            return;
        }// end function

        public function set unitsCanvas7(param1:Canvas) : void
        {
            var _loc_2:* = this._231410544unitsCanvas7;
            if (_loc_2 !== param1)
            {
                this._231410544unitsCanvas7 = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "unitsCanvas7", _loc_2, param1));
            }
            return;
        }// end function

        public function showAllUnitCommandWindow() : void
        {
            dispatchEvent(new Event(Viking.HOME_ALL_SLEEP_UNIT_VIEW));
            return;
        }// end function

        public function set unitsCanvas5(param1:Canvas) : void
        {
            var _loc_2:* = this._231410542unitsCanvas5;
            if (_loc_2 !== param1)
            {
                this._231410542unitsCanvas5 = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "unitsCanvas5", _loc_2, param1));
            }
            return;
        }// end function

        private function setPaginate() : void
        {
            leftButton.visible = unitsViewStack.selectedIndex == 0 ? (false) : (true);
            rightButton.visible = unitsViewStack.selectedIndex == totalPage ? (false) : (true);
            return;
        }// end function

        public function set unitsCanvas9(param1:Canvas) : void
        {
            var _loc_2:* = this._231410546unitsCanvas9;
            if (_loc_2 !== param1)
            {
                this._231410546unitsCanvas9 = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "unitsCanvas9", _loc_2, param1));
            }
            return;
        }// end function

        public function __gatheringImage_click(event:MouseEvent) : void
        {
            dispatchEvent(new Event(Viking.HOME_SHOW_GATHERING_WINDOW));
            return;
        }// end function

        private function get _sortieNumber() : int
        {
            return this._2076479230_sortieNumber;
        }// end function

        public function set hpBarCanvas10(param1:Canvas) : void
        {
            var _loc_2:* = this._969099394hpBarCanvas10;
            if (_loc_2 !== param1)
            {
                this._969099394hpBarCanvas10 = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "hpBarCanvas10", _loc_2, param1));
            }
            return;
        }// end function

        private function init() : void
        {
            unitStatus.unit = new UnitVO();
            sakura.mode = "list";
            sakura.unitStatus = unitStatus;
            sakura.addEventListener(Viking.HOME_GET_EQUIPABLE_RESOURCE, function (event:PopupEvent) : void
            {
                dispatchEvent(new PopupEvent(Viking.HOME_GET_EQUIPABLE_RESOURCE, event.param));
                return;
            }// end function
            );
            _selectAllUnitCommandWindow.addEventListener(SelectAllUnitCommandWindow.SELECT_ALL_SLEEP_UNIT, showAllSleepUnit);
            _selectAllUnitCommandWindow.addEventListener(SelectAllUnitCommandWindow.SELECT_ALL_SLEEP_UNIT, showAllSleepUnit);
            _selectAllUnitCommandWindow.addEventListener(SelectAllUnitCommandWindow.SELECT_MAX_UNIT_INCREASE_1, increaseMaxUnit);
            _selectAllUnitCommandWindow.addEventListener(SelectAllUnitCommandWindow.SELECT_MAX_UNIT_INCREASE_5, increaseMaxUnit);
            MovieClip(Loader(_swf_next.getChildAt(0)).content).gotoAndPlay("button_next");
            MovieClip(Loader(_swf_prev.getChildAt(0)).content).gotoAndPlay("button_prev");
            createFlag = true;
            setPaginate();
            return;
        }// end function

        public function showDismissWindow(param1:int) : void
        {
            PopUpManager.addPopUp(_unitDismissWindow, this, true);
            PopUpManager.centerPopUp(_unitDismissWindow);
            _unitDismissWindow.setdata(viewUnit, param1);
            return;
        }// end function

        public function __allUnitCommandImage_click(event:MouseEvent) : void
        {
            showAllUnitCommandWindow();
            return;
        }// end function

        public function get iconCanvas10() : Canvas
        {
            return this._1528470800iconCanvas10;
        }// end function

        public function get iconCanvas1() : Canvas
        {
            return this._89241824iconCanvas1;
        }// end function

        public function get iconCanvas4() : Canvas
        {
            return this._89241821iconCanvas4;
        }// end function

        public function get iconCanvas6() : Canvas
        {
            return this._89241819iconCanvas6;
        }// end function

        public function get iconCanvas7() : Canvas
        {
            return this._89241818iconCanvas7;
        }// end function

        public function get iconCanvas8() : Canvas
        {
            return this._89241817iconCanvas8;
        }// end function

        public function get unitAlphaTimer() : Timer
        {
            return _unitAlphaTimer;
        }// end function

        public function set gatheringImage(param1:Image) : void
        {
            var _loc_2:* = this._1426067052gatheringImage;
            if (_loc_2 !== param1)
            {
                this._1426067052gatheringImage = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "gatheringImage", _loc_2, param1));
            }
            return;
        }// end function

        public function get iconCanvas3() : Canvas
        {
            return this._89241822iconCanvas3;
        }// end function

        public function get iconCanvas5() : Canvas
        {
            return this._89241820iconCanvas5;
        }// end function

        public function get iconCanvas9() : Canvas
        {
            return this._89241816iconCanvas9;
        }// end function

        public function get iconCanvas2() : Canvas
        {
            return this._89241823iconCanvas2;
        }// end function

        public function set listCanvas(param1:Canvas) : void
        {
            var _loc_2:* = this._110713962listCanvas;
            if (_loc_2 !== param1)
            {
                this._110713962listCanvas = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "listCanvas", _loc_2, param1));
            }
            return;
        }// end function

        public function get tutMarkUnit() : Image
        {
            return this._1589610788tutMarkUnit;
        }// end function

        private function get _swf_prev() : MovieClipLoaderAsset
        {
            return this._99643601_swf_prev;
        }// end function

        public function resetUnitStatus() : void
        {
            unitStatus.unit = new UnitVO();
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
            var _loc_2:String = null;
            var _loc_3:AlertWindow = null;
            switch(event.type)
            {
                case UnitDismissWindow.UNIT_DISMISS:
                {
                    if (viewUnit.status != UnitVO.STATUS_WAITING || viewUnit.lordFlag == true)
                    {
                        _loc_2 = Utils.i18n("homeAllUnitCanNotExpulsionActive");
                        if (viewUnit.status == UnitVO.STATUS_ACTIVITY)
                        {
                            _loc_2 = Utils.i18n("homeAllUnitCanNotExpulsionActive");
                        }
                        else if (viewUnit.status == UnitVO.STATUS_HOUSE)
                        {
                            _loc_2 = Utils.i18n("localize159");
                        }
                        else if (viewUnit.status == UnitVO.STATUS_FORT)
                        {
                            _loc_2 = Utils.i18n("homeAllUnitCanNotExpulsionProtect");
                        }
                        else if (viewUnit.lordFlag == true)
                        {
                            _loc_2 = Utils.i18n("localize160");
                        }
                        _loc_3 = AlertWindow.show(_loc_2);
                        popupWindow(_loc_3, false);
                    }
                    else
                    {
                        sendEvent(DISMISS);
                    }
                    break;
                }
                default:
                {
                    break;
                }
            }
            return;
        }// end function

        private function _HomeAllUnit_bindingsSetup() : Array
        {
            var binding:Binding;
            var result:Array;
            binding = new Binding(this, function () : Object
            {
                return _swf_next;
            }// end function
            , function (param1:Object) : void
            {
                rightButton.source = param1;
                return;
            }// end function
            , "rightButton.source");
            result[0] = binding;
            binding = new Binding(this, function () : Object
            {
                return _swf_prev;
            }// end function
            , function (param1:Object) : void
            {
                leftButton.source = param1;
                return;
            }// end function
            , "leftButton.source");
            result[1] = binding;
            return result;
        }// end function

        public function get closeButton() : Image
        {
            return this._312699062closeButton;
        }// end function

        public function set unitStatus(param1:UnitStatus) : void
        {
            var _loc_2:* = this._2099682666unitStatus;
            if (_loc_2 !== param1)
            {
                this._2099682666unitStatus = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "unitStatus", _loc_2, param1));
            }
            return;
        }// end function

        public function get unitsCanvas2() : Canvas
        {
            return this._231410539unitsCanvas2;
        }// end function

        public function get hpBarCanvas1() : Canvas
        {
            return this._862545262hpBarCanvas1;
        }// end function

        public function get hpBarCanvas2() : Canvas
        {
            return this._862545263hpBarCanvas2;
        }// end function

        public function get hpBarCanvas3() : Canvas
        {
            return this._862545264hpBarCanvas3;
        }// end function

        public function get hpBarCanvas4() : Canvas
        {
            return this._862545265hpBarCanvas4;
        }// end function

        public function get hpBarCanvas5() : Canvas
        {
            return this._862545266hpBarCanvas5;
        }// end function

        public function get hpBarCanvas6() : Canvas
        {
            return this._862545267hpBarCanvas6;
        }// end function

        public function get hpBarCanvas8() : Canvas
        {
            return this._862545269hpBarCanvas8;
        }// end function

        public function get unitsCanvas8() : Canvas
        {
            return this._231410545unitsCanvas8;
        }// end function

        public function get unitsCanvas1() : Canvas
        {
            return this._231410538unitsCanvas1;
        }// end function

        private function confirmedIncrementMaxTasks(event:PopupEvent) : void
        {
            _confirmIncrementMaxUnitsCount.removeEventListener(ConfirmIncrementMaxUnitsCount.CONFIRMED, arguments.callee);
            dispatchEvent(new PopupEvent(Viking.HOME_INCREASE_MAX_UNIT, event.param));
            _selectAllUnitCommandWindow.close();
            return;
        }// end function

        public function get hpBarCanvas7() : Canvas
        {
            return this._862545268hpBarCanvas7;
        }// end function

        public function get unitsCanvas4() : Canvas
        {
            return this._231410541unitsCanvas4;
        }// end function

        public function get unitsCanvas7() : Canvas
        {
            return this._231410544unitsCanvas7;
        }// end function

        public function get unitsCanvas9() : Canvas
        {
            return this._231410546unitsCanvas9;
        }// end function

        private function onRight() : void
        {
            var _loc_1:* = unitsViewStack;
            var _loc_2:* = unitsViewStack.selectedIndex + 1;
            _loc_1.selectedIndex = _loc_2;
            setPaginate();
            return;
        }// end function

        public function get hpBarCanvas9() : Canvas
        {
            return this._862545270hpBarCanvas9;
        }// end function

        public function get unitsCanvas6() : Canvas
        {
            return this._231410543unitsCanvas6;
        }// end function

        override public function initialize() : void
        {
            var target:HomeAllUnit;
            var watcherSetupUtilClass:Object;
            .mx_internal::setDocumentDescriptor(_documentDescriptor_);
            var bindings:* = _HomeAllUnit_bindingsSetup();
            var watchers:Array;
            target;
            if (_watcherSetupUtil == null)
            {
                watcherSetupUtilClass = getDefinitionByName("_com_kbmj_viking_view_home_HomeAllUnitWatcherSetupUtil");
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

        public function set viewUnit(param1:UnitVO) : void
        {
            sakura.unit = param1;
            return;
        }// end function

        public function get gatheringImage() : Image
        {
            return this._1426067052gatheringImage;
        }// end function

        public function commandWindowClose() : void
        {
            sakura.clear();
            return;
        }// end function

        private function removeTutMarks() : void
        {
            tutMarkClose.visible = false;
            return;
        }// end function

        public function get unitsCanvas() : Canvas
        {
            return this._561654183unitsCanvas;
        }// end function

        public function setUnitCount(param1:int) : void
        {
            _unitCount = param1;
            setPaginate();
            return;
        }// end function

        public function get listCanvas() : Canvas
        {
            return this._110713962listCanvas;
        }// end function

        private function set tutMarkVisible(param1:Boolean) : void
        {
            var _loc_2:* = this._538942674tutMarkVisible;
            if (_loc_2 !== param1)
            {
                this._538942674tutMarkVisible = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "tutMarkVisible", _loc_2, param1));
            }
            return;
        }// end function

        public function get unitsCanvas5() : Canvas
        {
            return this._231410542unitsCanvas5;
        }// end function

        public function get unitsCanvas3() : Canvas
        {
            return this._231410540unitsCanvas3;
        }// end function

        public function get collectWindow() : CollectWindow
        {
            return _collectWindow;
        }// end function

        public function __leftButton_click(event:MouseEvent) : void
        {
            onLeft();
            return;
        }// end function

        public function set unitNumber0(param1:Image) : void
        {
            var _loc_2:* = this._769044509unitNumber0;
            if (_loc_2 !== param1)
            {
                this._769044509unitNumber0 = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "unitNumber0", _loc_2, param1));
            }
            return;
        }// end function

        public function set unitNumber1(param1:Image) : void
        {
            var _loc_2:* = this._769044508unitNumber1;
            if (_loc_2 !== param1)
            {
                this._769044508unitNumber1 = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "unitNumber1", _loc_2, param1));
            }
            return;
        }// end function

        public function get viewUnit() : UnitVO
        {
            return sakura.unit;
        }// end function

        private function _HomeAllUnit_bindingExprs() : void
        {
            var _loc_1:* = undefined;
            _loc_1 = _swf_next;
            _loc_1 = _swf_prev;
            return;
        }// end function

        private function set _swf_next(param1:MovieClipLoaderAsset) : void
        {
            var _loc_2:* = this._99715089_swf_next;
            if (_loc_2 !== param1)
            {
                this._99715089_swf_next = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "_swf_next", _loc_2, param1));
            }
            return;
        }// end function

        public function get unitNumber0() : Image
        {
            return this._769044509unitNumber0;
        }// end function

        public function get unitNumber1() : Image
        {
            return this._769044508unitNumber1;
        }// end function

        public function setUnitNumber() : void
        {
            if (createFlag)
            {
                calcuNumber();
            }
            return;
        }// end function

        private function get totalPage() : int
        {
            return _unitCount / 15;
        }// end function

        private function showAllSleepUnit(event:Event) : void
        {
            dispatchEvent(new Event(Viking.HOME_ALL_SLEEP_UNIT_VIEW));
            _selectAllUnitCommandWindow.close();
            return;
        }// end function

        private function close() : void
        {
            removeTutMarks();
            dispatchEvent(new PopupEvent(CLOSED_HOME_ALL_UNIT, {window:this}));
            var _loc_1:* = new UnitVO();
            viewUnit = new UnitVO();
            unitStatus.unit = _loc_1;
            return;
        }// end function

        public function showUnitLockWindow() : void
        {
            dispatchEvent(new Event(LOCK_UNIT_LIST));
            return;
        }// end function

        public function get unitDismissWindow() : UnitDismissWindow
        {
            return _unitDismissWindow;
        }// end function

        public static function set watcherSetupUtil(param1:IWatcherSetupUtil) : void
        {
            HomeAllUnit._watcherSetupUtil = param1;
            return;
        }// end function

    }
}
