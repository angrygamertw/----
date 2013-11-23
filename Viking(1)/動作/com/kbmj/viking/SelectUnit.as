package com.kbmj.viking
{
    import com.kbmj.viking.view.*;
    import com.kbmj.viking.view.home.*;
    import com.kbmj.viking.view.selectUnit.*;
    import com.kbmj.viking.vo.tactics.*;
    import flash.display.*;
    import flash.events.*;
    import flash.utils.*;
    import mx.binding.*;
    import mx.containers.*;
    import mx.controls.*;
    import mx.core.*;
    import mx.events.*;

    public class SelectUnit extends CanvasWithPopUp implements IBindingClient
    {
        private var fadeInTimer:Timer;
        private var _3141bg:MovieClipLoaderAsset;
        private var _selectUnits:Array;
        private var _embed_mxml__swf_common_button_shikihime_heal_50_swf_1327100791:Class;
        private var _1647214013selectItemListWindow:SelectItemListWindow;
        private var _782225382reverseBtn:Image;
        private var _embed_mxml__swf_all_map_button_battle_start_swf_144946677:Class;
        private var bg_normal:MovieClipLoaderAsset;
        private var bg_colony:MovieClipLoaderAsset;
        var _bindingsByDestination:Object;
        private var _490381779unitLayer:Canvas;
        private var _625267626allRecovery:Image;
        private var _607502679forwardBtn:Image;
        private var _99715089_swf_next:MovieClipLoaderAsset;
        private var _embed_mxml__swf_all_map_button_back_swf_2104410221:Class;
        private var _3015911back:Image;
        private var _2076479230_sortieNumber:int;
        private var _99643601_swf_prev:MovieClipLoaderAsset;
        private var _page:int;
        private var _1062626994changeEquipmentWindow:ChangeEquipmentWindow;
        private var _waitUnits:Array;
        private var _1686186119startTactics:Image;
        private var _293001187unitIcon:Canvas;
        private var _startMovie:Boolean;
        private var _1152669721lvUpAnimeCanvas:Canvas;
        private var _2099682666unitStatus:UnitStatus;
        private var _107868map:Canvas;
        var _watchers:Array;
        private var _909729689sakura:Sakura;
        public var _SelectUnit_Label1:Label;
        public var _SelectUnit_Label2:Label;
        var _bindingsBeginWithWord:Object;
        private var _1463764368_units:Array;
        private var _canTactics:Boolean = false;
        var _bindings:Array;
        private var _documentDescriptor_:UIComponentDescriptor;
        private var _levelUpIcons:Array;
        private var _158535007mapImage:Image;
        private var bg_invasion:MovieClipLoaderAsset;
        private static var _watcherSetupUtil:IWatcherSetupUtil;
        public static const ALL_UNIT_RECOVERY:String = "selectUnit/allUnitRecovery";
        private static const UNIT_PER_PAGE:int = 15;

        public function SelectUnit()
        {
            _documentDescriptor_ = new UIComponentDescriptor({type:CanvasWithPopUp, propertiesFactory:function () : Object
            {
                return {width:760, height:560, childDescriptors:[new UIComponentDescriptor({type:Canvas, id:"map", propertiesFactory:function () : Object
                {
                    return {horizontalScrollPolicy:"off", verticalScrollPolicy:"off", childDescriptors:[new UIComponentDescriptor({type:Image, id:"mapImage"}), new UIComponentDescriptor({type:Canvas, id:"unitLayer"}), new UIComponentDescriptor({type:Canvas, id:"unitIcon"}), new UIComponentDescriptor({type:Image, id:"reverseBtn", events:{click:"__reverseBtn_click"}, propertiesFactory:function () : Object
                    {
                        return {buttonMode:true, x:385, y:275};
                    }// end function
                    }), new UIComponentDescriptor({type:Image, id:"forwardBtn", events:{click:"__forwardBtn_click"}, propertiesFactory:function () : Object
                    {
                        return {buttonMode:true, x:460, y:275};
                    }// end function
                    }), new UIComponentDescriptor({type:Canvas, id:"lvUpAnimeCanvas"})]};
                }// end function
                }), new UIComponentDescriptor({type:Sakura, id:"sakura", propertiesFactory:function () : Object
                {
                    return {visible:false};
                }// end function
                }), new UIComponentDescriptor({type:Label, id:"_SelectUnit_Label1", stylesFactory:function () : void
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
                }), new UIComponentDescriptor({type:Label, id:"_SelectUnit_Label2", stylesFactory:function () : void
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
                }), new UIComponentDescriptor({type:Image, id:"startTactics", events:{click:"__startTactics_click"}, propertiesFactory:function () : Object
                {
                    return {x:7, y:242, source:_embed_mxml__swf_all_map_button_battle_start_swf_144946677};
                }// end function
                }), new UIComponentDescriptor({type:Image, id:"back", events:{click:"__back_click"}, propertiesFactory:function () : Object
                {
                    return {x:685, y:7, source:_embed_mxml__swf_all_map_button_back_swf_2104410221};
                }// end function
                }), new UIComponentDescriptor({type:UnitStatus, id:"unitStatus", propertiesFactory:function () : Object
                {
                    return {x:2, y:290};
                }// end function
                }), new UIComponentDescriptor({type:Image, id:"allRecovery", events:{click:"__allRecovery_click"}, propertiesFactory:function () : Object
                {
                    return {x:15, y:15, source:_embed_mxml__swf_common_button_shikihime_heal_50_swf_1327100791};
                }// end function
                }), new UIComponentDescriptor({type:ChangeEquipmentWindow, id:"changeEquipmentWindow", propertiesFactory:function () : Object
                {
                    return {visible:false};
                }// end function
                }), new UIComponentDescriptor({type:SelectItemListWindow, id:"selectItemListWindow", propertiesFactory:function () : Object
                {
                    return {visible:false};
                }// end function
                })]};
            }// end function
            });
            _99715089_swf_next = new Viking.EmbedSwfButtonPaginator();
            _99643601_swf_prev = new Viking.EmbedSwfButtonPaginator();
            bg_normal = new AllMap.EmbedSwfWindowUnitSelect();
            bg_colony = new AllMap.EmbedSwfWindowUnitSelectForColony();
            bg_invasion = new AllMap.EmbedSwfWindowUnitSelectForInvasion();
            _1463764368_units = new Array();
            fadeInTimer = new Timer(50);
            _selectUnits = new Array();
            _waitUnits = new Array();
            _levelUpIcons = new Array();
            _startMovie = new Boolean();
            _embed_mxml__swf_all_map_button_back_swf_2104410221 = SelectUnit__embed_mxml__swf_all_map_button_back_swf_2104410221;
            _embed_mxml__swf_all_map_button_battle_start_swf_144946677 = SelectUnit__embed_mxml__swf_all_map_button_battle_start_swf_144946677;
            _embed_mxml__swf_common_button_shikihime_heal_50_swf_1327100791 = SelectUnit__embed_mxml__swf_common_button_shikihime_heal_50_swf_1327100791;
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

        private function get _sortieNumber() : int
        {
            return this._2076479230_sortieNumber;
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

        public function get lvUpAnimeCanvas() : Canvas
        {
            return this._1152669721lvUpAnimeCanvas;
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

        private function closeWindow(param1:String) : void
        {
            reset();
            sendEvent(param1);
            return;
        }// end function

        public function init(param1:int) : void
        {
            var unitSize:* = param1;
            MovieClip(Loader(_swf_next.getChildAt(0)).content).gotoAndPlay("button_next");
            MovieClip(Loader(_swf_prev.getChildAt(0)).content).gotoAndPlay("button_prev");
            sortieNumber = 0;
            unitLayer.alpha = 0;
            unitIcon.alpha = 0;
            sakura.visible = false;
            _selectUnits = new Array();
            switch(unitSize)
            {
                case 3:
                {
                    bg = bg_colony;
                    break;
                }
                case 4:
                {
                    bg = bg_invasion;
                    break;
                }
                default:
                {
                    bg = bg_normal;
                    break;
                    break;
                }
            }
            MovieClip(Loader(bg.getChildAt(0)).content).gotoAndPlay(1);
            Loader(bg.getChildAt(0)).content.addEventListener("ENLARGE_END", function () : void
            {
                arguments = new activation;
                var arguments:* = arguments;
                Loader(bg.getChildAt(0)).content.removeEventListener("ENLARGE_END", callee);
                fadeInTimer.start();
                fadeInTimer.addEventListener(TimerEvent.TIMER, function () : void
                {
                    unitLayer.alpha = unitLayer.alpha + 0.1;
                    unitIcon.alpha = unitIcon.alpha + 0.1;
                    if (unitLayer.alpha >= 1)
                    {
                        fadeInTimer.removeEventListener(TimerEvent.TIMER, arguments.callee);
                        unitLayer.alpha = 1;
                        unitIcon.alpha = 1;
                        sakura.visible = true;
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

        public function setPage(param1:int) : void
        {
            var _loc_2:Boolean = false;
            var _loc_4:LevelUpIconRenderer = null;
            var _loc_3:int = 0;
            while (_loc_3 < _units.length)
            {
                
                _loc_2 = param1 == getPage(_loc_3) || isSelected(_units[_loc_3]);
                _units[_loc_3].uic.visible = _loc_2;
                for each (_loc_4 in levelUpIcons)
                {
                    
                    if (_loc_4.iconUnit.unitId == _units[_loc_3].unitId)
                    {
                        _loc_4.visible = _loc_2;
                    }
                }
                _loc_3++;
            }
            reverseBtn.visible = param1 != 0;
            forwardBtn.visible = _units.length > UNIT_PER_PAGE * (param1 + 1);
            _page = param1;
            return;
        }// end function

        public function __back_click(event:MouseEvent) : void
        {
            closeWindow(Viking.SELECT_UNIT_ACTION_BACK);
            return;
        }// end function

        public function get levelUpIcons() : Array
        {
            return _levelUpIcons;
        }// end function

        public function get unitIcon() : Canvas
        {
            return this._293001187unitIcon;
        }// end function

        public function __startTactics_click(event:MouseEvent) : void
        {
            endSelectUnit();
            return;
        }// end function

        public function get sortieNumber() : int
        {
            return _sortieNumber;
        }// end function

        public function __reverseBtn_click(event:MouseEvent) : void
        {
            onReverse();
            return;
        }// end function

        public function get reverseBtn() : Image
        {
            return this._782225382reverseBtn;
        }// end function

        public function get unitLayer() : Canvas
        {
            return this._490381779unitLayer;
        }// end function

        private function get _swf_prev() : MovieClipLoaderAsset
        {
            return this._99643601_swf_prev;
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

        public function set levelUpIcons(param1:Array) : void
        {
            _levelUpIcons = param1;
            return;
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

        private function get bg() : MovieClipLoaderAsset
        {
            return this._3141bg;
        }// end function

        public function addUnitUic(param1:DisplayObject) : void
        {
            unitLayer.addChild(param1);
            return;
        }// end function

        public function set sortieNumber(param1:int) : void
        {
            _sortieNumber = param1;
            return;
        }// end function

        public function get changeEquipmentWindow() : ChangeEquipmentWindow
        {
            return this._1062626994changeEquipmentWindow;
        }// end function

        public function reset() : void
        {
            var _loc_1:int = 0;
            while (_loc_1 < _units.length)
            {
                
                _units[_loc_1].uic.visible = true;
                _loc_1++;
            }
            return;
        }// end function

        public function get forwardBtn() : Image
        {
            return this._607502679forwardBtn;
        }// end function

        public function get map() : Canvas
        {
            return this._107868map;
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

        public function get mapImage() : Image
        {
            return this._158535007mapImage;
        }// end function

        public function set unitLayer(param1:Canvas) : void
        {
            var _loc_2:* = this._490381779unitLayer;
            if (_loc_2 !== param1)
            {
                this._490381779unitLayer = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "unitLayer", _loc_2, param1));
            }
            return;
        }// end function

        public function get sakura() : Sakura
        {
            return this._909729689sakura;
        }// end function

        public function get units() : Array
        {
            return _units;
        }// end function

        private function get _units() : Array
        {
            return this._1463764368_units;
        }// end function

        public function get allRecovery() : Image
        {
            return this._625267626allRecovery;
        }// end function

        private function _SelectUnit_bindingExprs() : void
        {
            var _loc_1:* = undefined;
            _loc_1 = bg;
            _loc_1 = _swf_prev;
            _loc_1 = _swf_next;
            _loc_1 = _sortieNumber;
            _loc_1 = _sortieNumber;
            return;
        }// end function

        public function __allRecovery_click(event:MouseEvent) : void
        {
            allUnitRecovery();
            return;
        }// end function

        public function __forwardBtn_click(event:MouseEvent) : void
        {
            onForward();
            return;
        }// end function

        private function allUnitRecovery() : void
        {
            sendEvent(ALL_UNIT_RECOVERY);
            return;
        }// end function

        public function get startTactics() : Image
        {
            return this._1686186119startTactics;
        }// end function

        private function set bg(param1:MovieClipLoaderAsset) : void
        {
            var _loc_2:* = this._3141bg;
            if (_loc_2 !== param1)
            {
                this._3141bg = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "bg", _loc_2, param1));
            }
            return;
        }// end function

        override public function initialize() : void
        {
            var target:SelectUnit;
            var watcherSetupUtilClass:Object;
            .mx_internal::setDocumentDescriptor(_documentDescriptor_);
            var bindings:* = _SelectUnit_bindingsSetup();
            var watchers:Array;
            target;
            if (_watcherSetupUtil == null)
            {
                watcherSetupUtilClass = getDefinitionByName("_com_kbmj_viking_SelectUnitWatcherSetupUtil");
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

        public function set canTactics(param1:Boolean) : void
        {
            _canTactics = param1;
            return;
        }// end function

        public function set changeEquipmentWindow(param1:ChangeEquipmentWindow) : void
        {
            var _loc_2:* = this._1062626994changeEquipmentWindow;
            if (_loc_2 !== param1)
            {
                this._1062626994changeEquipmentWindow = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "changeEquipmentWindow", _loc_2, param1));
            }
            return;
        }// end function

        public function get unitStatus() : UnitStatus
        {
            return this._2099682666unitStatus;
        }// end function

        public function set selectUnits(param1:Array) : void
        {
            _selectUnits = param1;
            return;
        }// end function

        public function set selectItemListWindow(param1:SelectItemListWindow) : void
        {
            var _loc_2:* = this._1647214013selectItemListWindow;
            if (_loc_2 !== param1)
            {
                this._1647214013selectItemListWindow = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "selectItemListWindow", _loc_2, param1));
            }
            return;
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

        private function _SelectUnit_bindingsSetup() : Array
        {
            var binding:Binding;
            var result:Array;
            binding = new Binding(this, function () : Object
            {
                return bg;
            }// end function
            , function (param1:Object) : void
            {
                mapImage.source = param1;
                return;
            }// end function
            , "mapImage.source");
            result[0] = binding;
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
            result[1] = binding;
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
            result[2] = binding;
            binding = new Binding(this, function () : String
            {
                var _loc_1:* = _sortieNumber;
                var _loc_2:* = _loc_1 == undefined ? (null) : (String(_loc_1));
                return _loc_2;
            }// end function
            , function (param1:String) : void
            {
                _SelectUnit_Label1.text = param1;
                return;
            }// end function
            , "_SelectUnit_Label1.text");
            result[3] = binding;
            binding = new Binding(this, function () : String
            {
                var _loc_1:* = _sortieNumber;
                var _loc_2:* = _loc_1 == undefined ? (null) : (String(_loc_1));
                return _loc_2;
            }// end function
            , function (param1:String) : void
            {
                _SelectUnit_Label2.text = param1;
                return;
            }// end function
            , "_SelectUnit_Label2.text");
            result[4] = binding;
            return result;
        }// end function

        public function set map(param1:Canvas) : void
        {
            var _loc_2:* = this._107868map;
            if (_loc_2 !== param1)
            {
                this._107868map = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "map", _loc_2, param1));
            }
            return;
        }// end function

        public function removeAllUnitIcon() : void
        {
            unitIcon.removeAllChildren();
            return;
        }// end function

        public function set allRecovery(param1:Image) : void
        {
            var _loc_2:* = this._625267626allRecovery;
            if (_loc_2 !== param1)
            {
                this._625267626allRecovery = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "allRecovery", _loc_2, param1));
            }
            return;
        }// end function

        public function get selectItemListWindow() : SelectItemListWindow
        {
            return this._1647214013selectItemListWindow;
        }// end function

        public function set mapImage(param1:Image) : void
        {
            var _loc_2:* = this._158535007mapImage;
            if (_loc_2 !== param1)
            {
                this._158535007mapImage = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "mapImage", _loc_2, param1));
            }
            return;
        }// end function

        public function set back(param1:Image) : void
        {
            var _loc_2:* = this._3015911back;
            if (_loc_2 !== param1)
            {
                this._3015911back = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "back", _loc_2, param1));
            }
            return;
        }// end function

        public function get selectUnits() : Array
        {
            return _selectUnits;
        }// end function

        public function set lvUpAnimeCanvas(param1:Canvas) : void
        {
            var _loc_2:* = this._1152669721lvUpAnimeCanvas;
            if (_loc_2 !== param1)
            {
                this._1152669721lvUpAnimeCanvas = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "lvUpAnimeCanvas", _loc_2, param1));
            }
            return;
        }// end function

        public function resetCurrentPage() : void
        {
            setPage(_page);
            return;
        }// end function

        private function endSelectUnit() : void
        {
            if (startMovie)
            {
                closeWindow(Viking.SELECT_UNIT_ACTION_START_TACTICS);
            }
            else
            {
                closeWindow(Viking.SELECT_UNIT_ACTION_START_TACTICS);
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

        public function addUnitIcon(param1:DisplayObject) : void
        {
            unitIcon.addChild(param1);
            return;
        }// end function

        private function set _units(param1:Array) : void
        {
            var _loc_2:* = this._1463764368_units;
            if (_loc_2 !== param1)
            {
                this._1463764368_units = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "_units", _loc_2, param1));
            }
            return;
        }// end function

        public function set units(param1:Array) : void
        {
            _units = param1;
            return;
        }// end function

        private function onForward() : void
        {
            setPage((_page + 1));
            return;
        }// end function

        public function get back() : Image
        {
            return this._3015911back;
        }// end function

        public function set startMovie(param1:Boolean) : void
        {
            _startMovie = param1;
            return;
        }// end function

        private function isSelected(param1:UnitVO) : Boolean
        {
            return selectUnits.indexOf(param1.unitId) != -1;
        }// end function

        public function get startMovie() : Boolean
        {
            return _startMovie;
        }// end function

        private function get _swf_next() : MovieClipLoaderAsset
        {
            return this._99715089_swf_next;
        }// end function

        public function set startTactics(param1:Image) : void
        {
            var _loc_2:* = this._1686186119startTactics;
            if (_loc_2 !== param1)
            {
                this._1686186119startTactics = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "startTactics", _loc_2, param1));
            }
            return;
        }// end function

        public function removeAllUnitUic() : void
        {
            unitLayer.removeAllChildren();
            return;
        }// end function

        public static function set watcherSetupUtil(param1:IWatcherSetupUtil) : void
        {
            SelectUnit._watcherSetupUtil = param1;
            return;
        }// end function

    }
}
