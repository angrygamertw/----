package com.kbmj.viking.view.allMap
{
    import com.kbmj.viking.*;
    import com.kbmj.viking.lib.*;
    import com.kbmj.viking.view.*;
    import com.kbmj.viking.view.home.*;
    import com.kbmj.viking.vo.tactics.*;
    import flash.display.*;
    import flash.events.*;
    import flash.utils.*;
    import mx.binding.*;
    import mx.containers.*;
    import mx.controls.*;
    import mx.core.*;
    import mx.events.*;

    public class GarrisonUnitWindow extends Canvas implements IBindingClient
    {
        private var _waitingUnits:Array;
        private var _noUnit:UnitVO;
        private var _803567449pageLbl:Label;
        private var fadeInTimer:Timer;
        private var _embed_mxml__swf_common_button_shikihime_heal_50_swf_1327100791:Class;
        private var _782225382reverseBtn:Image;
        private var _94436_bg:MovieClipLoaderAsset;
        private var levelUpIconRenderer:LevelUpIconRenderer;
        var _bindingsByDestination:Object;
        private var _embed_mxml__swf_all_map_button_back_swf_2104410221:Class;
        private var _99715089_swf_next:MovieClipLoaderAsset;
        private var _indexUnits:Array;
        private var _607502679forwardBtn:Image;
        public var _GarrisonUnitWindow_Label1:Label;
        public var _GarrisonUnitWindow_Label2:Label;
        private var _2076479230_sortieNumber:int;
        private var _99643601_swf_prev:MovieClipLoaderAsset;
        private var _units:Array;
        private var _embed_mxml__swf_all_map_button_button_post_units_swf_166887349:Class;
        private var _page:int;
        private var _selectedUnits:Array;
        var _watchers:Array;
        private var _2099682666unitStatus:UnitStatus;
        private var _909729689sakura:Sakura;
        private var _972710095iconCanvas:Canvas;
        private var _index:int;
        var _bindingsBeginWithWord:Object;
        public var _GarrisonUnitWindow_Image1:Image;
        private var levelUpIconArray:Array;
        var _bindings:Array;
        private var _documentDescriptor_:UIComponentDescriptor;
        private var _3141bg:Panel;
        private static const ROW_NUM:int = 3;
        public static const UNIT_SELECT_CANCEL:String = "garrisonUnitWinodw/unitSelectCancel";
        private static const COL_NUM:int = 5;
        private static const UNIT_PER_PAGE:int = 15;
        public static const ALL_UNIT_RECOVERY:String = "garrisonUnitWinodw/allUnitRecovery";
        public static const UNIT_SELECT_OK:String = "garrisonUnitWinodw/unitSelectOK";
        private static var _watcherSetupUtil:IWatcherSetupUtil;
        private static const UNIT_SEL_MAX:int = 5;

        public function GarrisonUnitWindow()
        {
            _documentDescriptor_ = new UIComponentDescriptor({type:Canvas, propertiesFactory:function () : Object
            {
                return {width:760, height:560, childDescriptors:[new UIComponentDescriptor({type:Image, id:"_GarrisonUnitWindow_Image1"}), new UIComponentDescriptor({type:Panel, id:"bg", propertiesFactory:function () : Object
                {
                    return {x:-8, y:-30, alpha:0, layout:"absolute", styleName:"UnitListPanel", childDescriptors:[new UIComponentDescriptor({type:UnitStatus, id:"unitStatus", propertiesFactory:function () : Object
                    {
                        return {x:0, y:278};
                    }// end function
                    })]};
                }// end function
                }), new UIComponentDescriptor({type:Canvas, id:"iconCanvas", propertiesFactory:function () : Object
                {
                    return {visible:false};
                }// end function
                }), new UIComponentDescriptor({type:Sakura, id:"sakura", propertiesFactory:function () : Object
                {
                    return {y:15};
                }// end function
                }), new UIComponentDescriptor({type:Label, id:"_GarrisonUnitWindow_Label1", stylesFactory:function () : void
                {
                    this.fontSize = 26;
                    this.fontWeight = "bold";
                    this.textAlign = "right";
                    this.color = 6710886;
                    return;
                }// end function
                , propertiesFactory:function () : Object
                {
                    return {x:151, y:268, width:30};
                }// end function
                }), new UIComponentDescriptor({type:Label, id:"_GarrisonUnitWindow_Label2", stylesFactory:function () : void
                {
                    this.fontSize = 26;
                    this.fontWeight = "bold";
                    this.textAlign = "right";
                    this.color = 16740454;
                    return;
                }// end function
                , propertiesFactory:function () : Object
                {
                    return {x:150, y:267, width:30};
                }// end function
                }), new UIComponentDescriptor({type:Image, events:{click:"___GarrisonUnitWindow_Image2_click"}, propertiesFactory:function () : Object
                {
                    return {x:7, y:242, source:_embed_mxml__swf_all_map_button_button_post_units_swf_166887349};
                }// end function
                }), new UIComponentDescriptor({type:Image, events:{click:"___GarrisonUnitWindow_Image3_click"}, propertiesFactory:function () : Object
                {
                    return {x:685, y:7, source:_embed_mxml__swf_all_map_button_back_swf_2104410221};
                }// end function
                }), new UIComponentDescriptor({type:Image, events:{click:"___GarrisonUnitWindow_Image4_click"}, propertiesFactory:function () : Object
                {
                    return {x:15, y:15, source:_embed_mxml__swf_common_button_shikihime_heal_50_swf_1327100791};
                }// end function
                }), new UIComponentDescriptor({type:Label, id:"pageLbl", stylesFactory:function () : void
                {
                    this.fontSize = 32;
                    this.color = 0;
                    return;
                }// end function
                , propertiesFactory:function () : Object
                {
                    return {visible:false, x:330, y:50};
                }// end function
                }), new UIComponentDescriptor({type:Image, id:"reverseBtn", events:{click:"__reverseBtn_click"}, propertiesFactory:function () : Object
                {
                    return {buttonMode:true, x:385, y:275};
                }// end function
                }), new UIComponentDescriptor({type:Image, id:"forwardBtn", events:{click:"__forwardBtn_click"}, propertiesFactory:function () : Object
                {
                    return {buttonMode:true, x:460, y:275};
                }// end function
                })]};
            }// end function
            });
            _94436_bg = new AllMap.EmbedSwfWindowUnitSelect();
            _units = new Array();
            _indexUnits = new Array();
            _noUnit = new UnitVO();
            _99715089_swf_next = new Viking.EmbedSwfButtonPaginator();
            _99643601_swf_prev = new Viking.EmbedSwfButtonPaginator();
            levelUpIconRenderer = new LevelUpIconRenderer();
            levelUpIconArray = new Array();
            fadeInTimer = new Timer(50);
            _embed_mxml__swf_all_map_button_back_swf_2104410221 = GarrisonUnitWindow__embed_mxml__swf_all_map_button_back_swf_2104410221;
            _embed_mxml__swf_all_map_button_button_post_units_swf_166887349 = GarrisonUnitWindow__embed_mxml__swf_all_map_button_button_post_units_swf_166887349;
            _embed_mxml__swf_common_button_shikihime_heal_50_swf_1327100791 = GarrisonUnitWindow__embed_mxml__swf_common_button_shikihime_heal_50_swf_1327100791;
            _bindings = [];
            _watchers = [];
            _bindingsByDestination = {};
            _bindingsBeginWithWord = {};
            mx_internal::_document = this;
            this.width = 760;
            this.height = 560;
            this.horizontalScrollPolicy = "off";
            this.verticalScrollPolicy = "off";
            return;
        }// end function

        private function onReverse() : void
        {
            setPage((_page - 1));
            return;
        }// end function

        private function getPage(param1:int) : int
        {
            return Math.floor(param1 / UNIT_PER_PAGE);
        }// end function

        private function get _sortieNumber() : int
        {
            return this._2076479230_sortieNumber;
        }// end function

        public function __reverseBtn_click(event:MouseEvent) : void
        {
            onReverse();
            return;
        }// end function

        private function setPage(param1:int) : void
        {
            var _loc_2:Boolean = false;
            var _loc_4:LevelUpIconRenderer = null;
            var _loc_3:int = 0;
            while (_loc_3 < _units.length)
            {
                
                if (!units[_loc_3].name)
                {
                }
                else
                {
                    _loc_2 = param1 == getPage(_loc_3) || isSelected(_units[_loc_3]);
                    _units[_loc_3].uic.visible = _loc_2;
                    for each (_loc_4 in levelUpIconArray)
                    {
                        
                        if (_loc_4.iconUnit.unitId == _units[_loc_3].unitId)
                        {
                            _loc_4.visible = _loc_2;
                        }
                    }
                }
                _loc_3++;
            }
            pageLbl.text = new String((param1 + 1)) + "/" + new String(getMaxPage());
            reverseBtn.visible = param1 != 0;
            forwardBtn.visible = _units.length > UNIT_PER_PAGE * (param1 + 1);
            _page = param1;
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

        public function get reverseBtn() : Image
        {
            return this._782225382reverseBtn;
        }// end function

        public function init() : void
        {
            var index:int;
            reset();
            MovieClip(Loader(_swf_next.getChildAt(0)).content).gotoAndPlay("button_next");
            MovieClip(Loader(_swf_prev.getChildAt(0)).content).gotoAndPlay("button_prev");
            iconCanvas.removeAllChildren();
            levelUpIconArray = new Array();
            _sortieNumber = _selectedUnits.length;
            _index = -1;
            _units = _waitingUnits.concat(_selectedUnits);
            _units.sortOn(["sortId", "unitId"], Array.NUMERIC);
            _indexUnits.length = 0;
            var i:int;
            while (i < _units.length)
            {
                
                index = _selectedUnits.indexOf(_units[i]);
                if (index != -1)
                {
                    _units[i].loader.x = getSelectedPosX(index);
                    _units[i].loader.y = getSelectedPosY(index);
                }
                else
                {
                    _units[i].loader.x = getWaitingPosX(i);
                    _units[i].loader.y = getWaitingPosY(i);
                }
                bg.addChildAt(_units[i].uic, i);
                levelUpIconRenderer = new LevelUpIconRenderer();
                _units[i].canLevelUp = false;
                if (levelUpIconRenderer.unitStatusIcon(_units[i]) && _units[i].level < _units[i].jobMasterVO.levelCap && _units[i].exp >= _units[i].nextExp)
                {
                    iconCanvas.addChild(levelUpIconRenderer);
                    levelUpIconArray.push(levelUpIconRenderer);
                    _units[i].canLevelUp = true;
                }
                _units[i].loader.addEventListener(MouseEvent.CLICK, handleMouseEvent);
                _units[i].loader.addEventListener(MouseEvent.MOUSE_OVER, handleMouseEvent);
                _units[i].loader.addEventListener(MouseEvent.MOUSE_OUT, handleMouseEvent);
                _indexUnits.push(_units[i].loader);
                i = (i + 1);
            }
            while (_selectedUnits.length < UNIT_SEL_MAX)
            {
                
                _selectedUnits.push(_noUnit);
            }
            setPage(0);
            unitStatus.unit = _noUnit;
            sakura.unitStatus = unitStatus;
            MovieClip(Loader(_bg.getChildAt(0)).content).gotoAndPlay(1);
            Loader(_bg.getChildAt(0)).content.addEventListener("ENLARGE_END", function () : void
            {
                arguments = new activation;
                var loaderInfo:LoaderInfo;
                var arguments:* = arguments;
                Loader(_bg.getChildAt(0)).content.removeEventListener("ENLARGE_END", callee);
                if (Loader(sakura._swf_sakura.getChildAt(0)).content.hasEventListener("CLOSE"))
                {
                    Loader(sakura._swf_sakura.getChildAt(0)).content.addEventListener("CLOSE", function () : void
                {
                    return;
                }// end function
                );
                }
                fadeInTimer.start();
                var i:int;
                while ( < _units.length)
                {
                    
                    if (_selectedUnits.indexOf(_units[]) == -1)
                    {
                        loaderInfo = LoaderInfo(_units[].loader.contentLoaderInfo);
                        MovieClip(content).gotoAndStop("item_f_l");
                    }
                    i = ( + 1);
                }
                fadeInTimer.addEventListener(TimerEvent.TIMER, function () : void
                {
                    bg.alpha = bg.alpha + 0.1;
                    if (bg.alpha >= 1)
                    {
                        fadeInTimer.removeEventListener(TimerEvent.TIMER, arguments.callee);
                        bg.alpha = 1;
                        iconCanvas.visible = true;
                        fadeInTimer.reset();
                        fadeInTimer.stop();
                    }
                    return;
                }// end function
                );
                return;
            }// end function
            );
            return;
        }// end function

        public function get waitingUnits() : Array
        {
            return _waitingUnits;
        }// end function

        public function get sortieNumber() : int
        {
            return _sortieNumber;
        }// end function

        public function set selectedUnits(param1:Array) : void
        {
            _selectedUnits = param1;
            return;
        }// end function

        private function setUnits() : void
        {
            var index:int;
            _index = -1;
            _indexUnits.length = 0;
            var i:int;
            while (i < _units.length)
            {
                
                if (!units[i].name)
                {
                }
                else
                {
                    _units[i].uic.addChild(units[i].loader);
                    index = _selectedUnits.indexOf(_units[i]);
                    if (index != -1)
                    {
                        _units[i].loader.x = getSelectedPosX(index);
                        _units[i].loader.y = getSelectedPosY(index);
                        _units[i].loader.contentLoaderInfo.addEventListener(Event.COMPLETE, function (event:Event) : void
            {
                var _loc_2:* = LoaderInfo(event.target);
                MovieClip(_loc_2.content).gotoAndPlay("walk_f_l");
                return;
            }// end function
            );
                    }
                    else
                    {
                        _units[i].loader.x = getWaitingPosX(i);
                        _units[i].loader.y = getWaitingPosY(i);
                        _units[i].loader.contentLoaderInfo.addEventListener(Event.COMPLETE, function (event:Event) : void
            {
                var _loc_2:* = LoaderInfo(event.target);
                MovieClip(_loc_2.content).gotoAndStop("item_f_l");
                return;
            }// end function
            );
                    }
                    bg.addChildAt(_units[i].uic, i);
                    levelUpIconRenderer = new LevelUpIconRenderer();
                    _units[i].canLevelUp = false;
                    if (levelUpIconRenderer.unitStatusIcon(_units[i]) && _units[i].level < _units[i].jobMasterVO.levelCap)
                    {
                        iconCanvas.addChild(levelUpIconRenderer);
                        levelUpIconArray.push(levelUpIconRenderer);
                        _units[i].canLevelUp = true;
                    }
                    _units[i].loader.addEventListener(MouseEvent.CLICK, handleMouseEvent);
                    _units[i].loader.addEventListener(MouseEvent.MOUSE_OVER, handleMouseEvent);
                    _units[i].loader.addEventListener(MouseEvent.MOUSE_OUT, handleMouseEvent);
                    _indexUnits.push(_units[i].loader);
                }
                i = (i + 1);
            }
            while (_selectedUnits.length < UNIT_SEL_MAX)
            {
                
                _selectedUnits.push(_noUnit);
            }
            setPage(0);
            unitStatus.unit = _noUnit;
            sakura.unitStatus = unitStatus;
            return;
        }// end function

        private function get _swf_prev() : MovieClipLoaderAsset
        {
            return this._99643601_swf_prev;
        }// end function

        public function get iconCanvas() : Canvas
        {
            return this._972710095iconCanvas;
        }// end function

        public function set reverseBtn(param1:Image) : void
        {
            var _loc_2:* = this._782225382reverseBtn;
            if (_loc_2 !== param1)
            {
                this._782225382reverseBtn = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "reverseBtn", _loc_2, param1));
            }
            return;
        }// end function

        private function getSelectedPosX(param1:int) : int
        {
            return 273 - 62 * param1;
        }// end function

        private function getSelectedPosY(param1:int) : int
        {
            return 215 - 35 * param1;
        }// end function

        private function onCancel() : void
        {
            reset();
            dispatchEvent(new Event(UNIT_SELECT_CANCEL));
            return;
        }// end function

        private function sortOnUnitId(param1:UnitVO, param2:UnitVO) : Number
        {
            return param1.unitId - param2.unitId;
        }// end function

        private function getWaitingPosX(param1:int) : int
        {
            return 524 + 62 * Math.floor(param1 % UNIT_PER_PAGE / COL_NUM) - param1 % COL_NUM * 62;
        }// end function

        private function getWaitingPosY(param1:int) : int
        {
            return 215 - 35 * Math.floor(param1 % UNIT_PER_PAGE / COL_NUM) - param1 % COL_NUM * 35;
        }// end function

        public function set waitingUnits(param1:Array) : void
        {
            _waitingUnits = param1;
            return;
        }// end function

        public function get bg() : Panel
        {
            return this._3141bg;
        }// end function

        public function ___GarrisonUnitWindow_Image2_click(event:MouseEvent) : void
        {
            onOK();
            return;
        }// end function

        private function handleMouseEvent(event:MouseEvent) : void
        {
            var _loc_2:* = _indexUnits.indexOf(event.target);
            switch(event.type)
            {
                case MouseEvent.CLICK:
                {
                    break;
                }
                case MouseEvent.MOUSE_OVER:
                {
                    unitStatus.unit = _units[_loc_2];
                    sakura.mode = isSelected(_units[_loc_2]) ? ("select") : ("wait");
                    sakura.open(_units[_loc_2]);
                    _index = _loc_2;
                    break;
                }
                case MouseEvent.MOUSE_OUT:
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

        public function set sortieNumber(param1:int) : void
        {
            _sortieNumber = param1;
            return;
        }// end function

        public function reset() : void
        {
            var _loc_1:int = 0;
            while (_loc_1 < _units.length)
            {
                
                _units[_loc_1].loader.removeEventListener(MouseEvent.CLICK, handleMouseEvent);
                _units[_loc_1].loader.removeEventListener(MouseEvent.MOUSE_OVER, handleMouseEvent);
                _units[_loc_1].loader.removeEventListener(MouseEvent.MOUSE_OUT, handleMouseEvent);
                _units[_loc_1].uic.removeChild(_units[_loc_1].loader);
                bg.removeChild(_units[_loc_1].uic);
                bg.alpha = 0;
                unitStatus.alpha = 0;
                unitStatus.unit = _noUnit;
                iconCanvas.visible = false;
                _units[_loc_1].uic.visible = true;
                _loc_1++;
            }
            _units.length = 0;
            return;
        }// end function

        public function set pageLbl(param1:Label) : void
        {
            var _loc_2:* = this._803567449pageLbl;
            if (_loc_2 !== param1)
            {
                this._803567449pageLbl = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "pageLbl", _loc_2, param1));
            }
            return;
        }// end function

        public function get forwardBtn() : Image
        {
            return this._607502679forwardBtn;
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

        public function resetUnits(param1:Array) : void
        {
            var u:UnitVO;
            var saveIcon:Array;
            var arr:Array;
            var index:int;
            var w:UnitVO;
            var units:* = param1;
            var i:int;
            while (i < _units.length)
            {
                
                _units[i].loader.removeEventListener(MouseEvent.CLICK, handleMouseEvent);
                _units[i].loader.removeEventListener(MouseEvent.MOUSE_OVER, handleMouseEvent);
                _units[i].loader.removeEventListener(MouseEvent.MOUSE_OUT, handleMouseEvent);
                _units[i].uic.removeChild(_units[i].loader);
                bg.removeChild(_units[i].uic);
                i = (i + 1);
            }
            var select:* = new Array();
            var wait:* = new Array();
            var findUnit:Boolean;
            while (select.length < UNIT_SEL_MAX)
            {
                
                select.push(_noUnit);
            }
            var _loc_3:int = 0;
            var _loc_4:* = units;
            while (_loc_4 in _loc_3)
            {
                
                u = _loc_4[_loc_3];
                findUnit;
                index;
                while (index < _selectedUnits.length)
                {
                    
                    if (_selectedUnits[index].unitId == u.unitId)
                    {
                        select[index] = u;
                        findUnit;
                        break;
                    }
                    index = (index + 1);
                }
                if (!findUnit)
                {
                    var _loc_5:int = 0;
                    var _loc_6:* = _waitingUnits;
                    while (_loc_6 in _loc_5)
                    {
                        
                        w = _loc_6[_loc_5];
                        if (w.unitId == u.unitId)
                        {
                            wait.push(u);
                            break;
                        }
                    }
                }
            }
            saveIcon = new Array();
            iconCanvas.removeAllChildren();
            levelUpIconArray = new Array();
            levelUpIconArray = saveIcon;
            _selectedUnits = select;
            _waitingUnits = wait;
            arr = select.filter(function (param1, param2:int, param3:Array) : Boolean
            {
                return param1.name != "";
            }// end function
            );
            _units = new Array();
            _units = _waitingUnits.concat(arr);
            _units.sortOn(["sortId", "unitId"], Array.NUMERIC);
            setUnits();
            return;
        }// end function

        private function _GarrisonUnitWindow_bindingExprs() : void
        {
            var _loc_1:* = undefined;
            _loc_1 = _bg;
            _loc_1 = bg.alpha;
            _loc_1 = _sortieNumber;
            _loc_1 = _sortieNumber;
            _loc_1 = _swf_prev;
            _loc_1 = _swf_next;
            return;
        }// end function

        public function set iconCanvas(param1:Canvas) : void
        {
            var _loc_2:* = this._972710095iconCanvas;
            if (_loc_2 !== param1)
            {
                this._972710095iconCanvas = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "iconCanvas", _loc_2, param1));
            }
            return;
        }// end function

        public function get units() : Array
        {
            return _units;
        }// end function

        public function get sakura() : Sakura
        {
            return this._909729689sakura;
        }// end function

        public function __forwardBtn_click(event:MouseEvent) : void
        {
            onForward();
            return;
        }// end function

        public function ___GarrisonUnitWindow_Image3_click(event:MouseEvent) : void
        {
            onCancel();
            return;
        }// end function

        override public function initialize() : void
        {
            var target:GarrisonUnitWindow;
            var watcherSetupUtilClass:Object;
            .mx_internal::setDocumentDescriptor(_documentDescriptor_);
            var bindings:* = _GarrisonUnitWindow_bindingsSetup();
            var watchers:Array;
            target;
            if (_watcherSetupUtil == null)
            {
                watcherSetupUtilClass = getDefinitionByName("_com_kbmj_viking_view_allMap_GarrisonUnitWindowWatcherSetupUtil");
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

        public function set bg(param1:Panel) : void
        {
            var _loc_2:* = this._3141bg;
            if (_loc_2 !== param1)
            {
                this._3141bg = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "bg", _loc_2, param1));
            }
            return;
        }// end function

        public function get selectedUnits() : Array
        {
            return _selectedUnits;
        }// end function

        public function get unitStatus() : UnitStatus
        {
            return this._2099682666unitStatus;
        }// end function

        public function set units_(param1:Array) : void
        {
            _units = param1;
            return;
        }// end function

        public function setLevelUpUnit(param1:int) : void
        {
            var _loc_3:LevelUpIconRenderer = null;
            var _loc_2:int = 0;
            while (_indexUnits.length > _loc_2)
            {
                
                if (_indexUnits[_loc_2].x == units[param1].loader.x && _indexUnits[_loc_2].y == units[param1].loader.y)
                {
                    _units[param1].loader.addEventListener(MouseEvent.CLICK, handleMouseEvent);
                    _units[param1].loader.addEventListener(MouseEvent.MOUSE_OVER, handleMouseEvent);
                    _units[param1].loader.addEventListener(MouseEvent.MOUSE_OUT, handleMouseEvent);
                    _indexUnits[_loc_2] = units[param1].loader;
                    for each (_loc_3 in levelUpIconArray)
                    {
                        
                        if (_loc_3.iconUnit.unitId == _units[param1].unitId)
                        {
                            iconCanvas.removeChild(_loc_3);
                            if (levelUpIconRenderer.unitStatusIcon(_units[param1]) && _units[param1].level < _units[param1].jobMasterVO.levelCap && _units[param1].exp >= _units[param1].nextExp)
                            {
                                iconCanvas.addChild(levelUpIconRenderer);
                                _loc_3 = levelUpIconRenderer;
                                _units[param1].canLevelUp = true;
                            }
                            else
                            {
                                _loc_3 = null;
                            }
                            break;
                        }
                    }
                    break;
                }
                _loc_2++;
            }
            return;
        }// end function

        public function get pageLbl() : Label
        {
            return this._803567449pageLbl;
        }// end function

        public function set forwardBtn(param1:Image) : void
        {
            var _loc_2:* = this._607502679forwardBtn;
            if (_loc_2 !== param1)
            {
                this._607502679forwardBtn = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "forwardBtn", _loc_2, param1));
            }
            return;
        }// end function

        public function unitInOut() : void
        {
            var _loc_2:LoaderInfo = null;
            var _loc_3:LevelUpIconRenderer = null;
            var _loc_4:LevelUpIconRenderer = null;
            var _loc_5:LevelUpIconRenderer = null;
            if (_index == -1)
            {
                return;
            }
            var _loc_1:* = _selectedUnits.indexOf(_units[_index]);
            if (_loc_1 == -1)
            {
                _loc_1 = _selectedUnits.indexOf(_noUnit);
                if (_loc_1 != -1)
                {
                    _units[_index].loader.x = getSelectedPosX(_loc_1);
                    _units[_index].loader.y = getSelectedPosY(_loc_1);
                    _selectedUnits[_loc_1] = _units[_index];
                    _waitingUnits.splice(_index, 1);
                    var _loc_7:* = _sortieNumber + 1;
                    _sortieNumber = _loc_7;
                    _loc_2 = LoaderInfo(_units[_index].loader.contentLoaderInfo);
                    MovieClip(_loc_2.content).gotoAndPlay("walk_f_l");
                }
            }
            else
            {
                _units[_index].loader.x = getWaitingPosX(_index);
                _units[_index].loader.y = getWaitingPosY(_index);
                _selectedUnits[_loc_1] = _noUnit;
                _waitingUnits.splice(_index, 0, _units[_index]);
                _units[_index].uic.visible = _page == getPage(_index);
                for each (_loc_5 in levelUpIconArray)
                {
                    
                    if (_loc_5.iconUnit.unitId == _units[_index].unitId)
                    {
                        _loc_5.visible = _page == getPage(_index);
                    }
                }
                var _loc_7:* = _sortieNumber - 1;
                _sortieNumber = _loc_7;
                _loc_2 = LoaderInfo(_units[_index].loader.contentLoaderInfo);
                MovieClip(_loc_2.content).gotoAndStop("item_f_l");
            }
            for each (_loc_3 in levelUpIconArray)
            {
                
                if (_loc_3.iconUnit.unitId == _units[_index].unitId)
                {
                    _loc_3.iconUnit = _units[_index];
                    _loc_3.positionChange();
                }
            }
            _units[_index].canLevelUp = false;
            for each (_loc_4 in levelUpIconArray)
            {
                
                if (_loc_4.iconUnit.unitId == _units[_index].unitId)
                {
                    iconCanvas.removeChild(_loc_4);
                    if (_loc_4.unitStatusIcon(_units[_index]) && _units[_index].level < _units[_index].jobMasterVO.levelCap && _units[_index].exp >= _units[_index].nextExp)
                    {
                        iconCanvas.addChild(_loc_4);
                        _units[_index].canLevelUp = true;
                    }
                }
            }
            sakura.close();
            _index = -1;
            return;
        }// end function

        private function set _bg(param1:MovieClipLoaderAsset) : void
        {
            var _loc_2:* = this._94436_bg;
            if (_loc_2 !== param1)
            {
                this._94436_bg = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "_bg", _loc_2, param1));
            }
            return;
        }// end function

        public function ___GarrisonUnitWindow_Image4_click(event:MouseEvent) : void
        {
            onAllRecovery();
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

        private function getMaxPage() : int
        {
            return Math.ceil(_units.length / UNIT_PER_PAGE);
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

        private function get _bg() : MovieClipLoaderAsset
        {
            return this._94436_bg;
        }// end function

        private function isSelected(param1:UnitVO) : Boolean
        {
            return _selectedUnits.indexOf(param1) != -1;
        }// end function

        private function onForward() : void
        {
            setPage((_page + 1));
            return;
        }// end function

        private function _GarrisonUnitWindow_bindingsSetup() : Array
        {
            var binding:Binding;
            var result:Array;
            binding = new Binding(this, function () : Object
            {
                return _bg;
            }// end function
            , function (param1:Object) : void
            {
                _GarrisonUnitWindow_Image1.source = param1;
                return;
            }// end function
            , "_GarrisonUnitWindow_Image1.source");
            result[0] = binding;
            binding = new Binding(this, function () : Number
            {
                return bg.alpha;
            }// end function
            , function (param1:Number) : void
            {
                unitStatus.alpha = param1;
                return;
            }// end function
            , "unitStatus.alpha");
            result[1] = binding;
            binding = new Binding(this, function () : String
            {
                var _loc_1:* = _sortieNumber;
                var _loc_2:* = _loc_1 == undefined ? (null) : (String(_loc_1));
                return _loc_2;
            }// end function
            , function (param1:String) : void
            {
                _GarrisonUnitWindow_Label1.text = param1;
                return;
            }// end function
            , "_GarrisonUnitWindow_Label1.text");
            result[2] = binding;
            binding = new Binding(this, function () : String
            {
                var _loc_1:* = _sortieNumber;
                var _loc_2:* = _loc_1 == undefined ? (null) : (String(_loc_1));
                return _loc_2;
            }// end function
            , function (param1:String) : void
            {
                _GarrisonUnitWindow_Label2.text = param1;
                return;
            }// end function
            , "_GarrisonUnitWindow_Label2.text");
            result[3] = binding;
            binding = new Binding(this, function () : Object
            {
                return _swf_prev;
            }// end function
            , function (param1:Object) : void
            {
                reverseBtn.source = param1;
                return;
            }// end function
            , "reverseBtn.source");
            result[4] = binding;
            binding = new Binding(this, function () : Object
            {
                return _swf_next;
            }// end function
            , function (param1:Object) : void
            {
                forwardBtn.source = param1;
                return;
            }// end function
            , "forwardBtn.source");
            result[5] = binding;
            return result;
        }// end function

        private function get _swf_next() : MovieClipLoaderAsset
        {
            return this._99715089_swf_next;
        }// end function

        private function onAllRecovery() : void
        {
            dispatchEvent(new Event(ALL_UNIT_RECOVERY));
            return;
        }// end function

        private function onOK() : void
        {
            reset();
            dispatchEvent(new PopupEvent(UNIT_SELECT_OK, {units:_selectedUnits}));
            return;
        }// end function

        public static function set watcherSetupUtil(param1:IWatcherSetupUtil) : void
        {
            GarrisonUnitWindow._watcherSetupUtil = param1;
            return;
        }// end function

    }
}
