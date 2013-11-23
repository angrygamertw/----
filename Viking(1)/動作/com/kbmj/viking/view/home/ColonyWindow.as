package com.kbmj.viking.view.home
{
    import com.kbmj.viking.lib.*;
    import com.kbmj.viking.view.*;
    import com.kbmj.viking.vo.*;
    import flash.display.*;
    import flash.events.*;
    import flash.utils.*;
    import mx.binding.*;
    import mx.containers.*;
    import mx.controls.*;
    import mx.core.*;
    import mx.events.*;

    public class ColonyWindow extends PopupWindow implements IBindingClient
    {
        private var _colonyPointWindows:Array;
        var _watchers:Array;
        private var _3237038info:Image;
        private var _1847180437factionLayer:Canvas;
        private var _forcedFactionArea:Boolean = false;
        private var _playerVO:PlayerVO;
        private var _252712397playerStatus:PlayerStatus;
        private var _659794811rankLayer:Canvas;
        var _bindingsByDestination:Object;
        public var _ColonyWindow_Image1:Image;
        private var _1252748247productionInfoWindow:ProductionInfoWindow;
        var _bindingsBeginWithWord:Object;
        private var _embed_mxml__swf_window_info_products_swf_1304559433:Class;
        var _bindings:Array;
        private var _1003761308products:Image;
        private var _embed_mxml__swf_window_info_home_swf_1388347787:Class;
        private var _colonyDescriptionWindow:ColonyDescriptionWindow;
        private var _guild:Object;
        private var _documentDescriptor_:UIComponentDescriptor;
        private var _colonies:Array;
        private var _1642964234_swf_colony:MovieClipLoaderAsset;
        public static var EmbedSwfColony:Class = ColonyWindow_EmbedSwfColony;
        private static var _watcherSetupUtil:IWatcherSetupUtil;
        public static const COLONY_COUNT:int = 5;
        public static const NAME:String = "ColonyWindow";
        public static const CLOSE_COLONY_WINDOW:String = NAME + "closeColonyWindow";
        public static const SELECT_COLONY_COMPLETE:String = "selectColonyComplete";

        public function ColonyWindow()
        {
            _documentDescriptor_ = new UIComponentDescriptor({type:PopupWindow, propertiesFactory:function () : Object
            {
                return {width:760, height:560, childDescriptors:[new UIComponentDescriptor({type:Image, id:"_ColonyWindow_Image1"}), new UIComponentDescriptor({type:Image, id:"products", propertiesFactory:function () : Object
                {
                    return {source:_embed_mxml__swf_window_info_products_swf_1304559433, x:363, y:0};
                }// end function
                }), new UIComponentDescriptor({type:Image, id:"info", propertiesFactory:function () : Object
                {
                    return {source:_embed_mxml__swf_window_info_home_swf_1388347787, x:0, y:0};
                }// end function
                }), new UIComponentDescriptor({type:Canvas, id:"factionLayer", propertiesFactory:function () : Object
                {
                    return {x:37, y:17};
                }// end function
                }), new UIComponentDescriptor({type:Canvas, id:"rankLayer", propertiesFactory:function () : Object
                {
                    return {x:58, y:17};
                }// end function
                }), new UIComponentDescriptor({type:PlayerStatus, id:"playerStatus", propertiesFactory:function () : Object
                {
                    return {x:10};
                }// end function
                }), new UIComponentDescriptor({type:ProductionInfoWindow, id:"productionInfoWindow", propertiesFactory:function () : Object
                {
                    return {x:380, y:14};
                }// end function
                })]};
            }// end function
            });
            _1642964234_swf_colony = new EmbedSwfColony();
            _colonyDescriptionWindow = new ColonyDescriptionWindow();
            _colonies = new Array();
            _colonyPointWindows = new Array();
            _embed_mxml__swf_window_info_home_swf_1388347787 = ColonyWindow__embed_mxml__swf_window_info_home_swf_1388347787;
            _embed_mxml__swf_window_info_products_swf_1304559433 = ColonyWindow__embed_mxml__swf_window_info_products_swf_1304559433;
            _bindings = [];
            _watchers = [];
            _bindingsByDestination = {};
            _bindingsBeginWithWord = {};
            mx_internal::_document = this;
            this.width = 760;
            this.height = 560;
            this.horizontalScrollPolicy = "off";
            this.verticalScrollPolicy = "off";
            this.addEventListener("creationComplete", ___ColonyWindow_PopupWindow1_creationComplete);
            return;
        }// end function

        public function colonyConfirmed(event:PopupEvent) : void
        {
            dispatchEvent(new PopupEvent(SELECT_COLONY_COMPLETE, {colonyId:event.param.colonyId, type:event.param.type}));
            return;
        }// end function

        public function set info(param1:Image) : void
        {
            var _loc_2:* = this._3237038info;
            if (_loc_2 !== param1)
            {
                this._3237038info = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "info", _loc_2, param1));
            }
            return;
        }// end function

        public function set rankLayer(param1:Canvas) : void
        {
            var _loc_2:* = this._659794811rankLayer;
            if (_loc_2 !== param1)
            {
                this._659794811rankLayer = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "rankLayer", _loc_2, param1));
            }
            return;
        }// end function

        private function get _swf_colony() : MovieClipLoaderAsset
        {
            return this._1642964234_swf_colony;
        }// end function

        private function _ColonyWindow_bindingExprs() : void
        {
            var _loc_1:* = undefined;
            _loc_1 = _swf_colony;
            return;
        }// end function

        private function init() : void
        {
            var _loc_2:String = null;
            var _loc_3:Array = null;
            var _loc_4:Array = null;
            var _loc_5:int = 0;
            var _loc_6:ColonyPointWindow = null;
            var _loc_1:Array = ["BUTTON_BACK", "BUTTON_01", "BUTTON_02", "BUTTON_03", "BUTTON_04", "BUTTON_05"];
            for each (_loc_2 in _loc_1)
            {
                
                Loader(_swf_colony.getChildAt(0)).content.addEventListener(_loc_2, buttonsClicked);
            }
            _loc_3 = [465, 497, 411, 108, 113];
            _loc_4 = [216, 350, 466, 461, 268];
            _loc_5 = 0;
            while (_loc_5 < _loc_3.length)
            {
                
                _loc_6 = new ColonyPointWindow();
                _loc_6.x = _loc_3[_loc_5];
                _loc_6.y = _loc_4[_loc_5];
                addChild(_loc_6);
                _colonyPointWindows.push(_loc_6);
                _loc_5++;
            }
            setColonies();
            _colonyDescriptionWindow.addEventListener(ColonyDescriptionWindow.COLONY_CONFIRMED, colonyConfirmed);
            return;
        }// end function

        public function ___ColonyWindow_PopupWindow1_creationComplete(event:FlexEvent) : void
        {
            init();
            return;
        }// end function

        public function get factionLayer() : Canvas
        {
            return this._1847180437factionLayer;
        }// end function

        override public function initialize() : void
        {
            var target:ColonyWindow;
            var watcherSetupUtilClass:Object;
            .mx_internal::setDocumentDescriptor(_documentDescriptor_);
            var bindings:* = _ColonyWindow_bindingsSetup();
            var watchers:Array;
            target;
            if (_watcherSetupUtil == null)
            {
                watcherSetupUtilClass = getDefinitionByName("_com_kbmj_viking_view_home_ColonyWindowWatcherSetupUtil");
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

        private function setColonies() : void
        {
            var _loc_2:ColonyVO = null;
            var _loc_3:int = 0;
            var _loc_4:ColonyPointWindow = null;
            var _loc_1:* = _forcedFactionArea ? (6) : (1);
            for each (_loc_2 in _colonies)
            {
                
                if (_loc_2.colonyId < _loc_1)
                {
                    continue;
                }
                _loc_3 = _loc_2.colonyId - _loc_1;
                if (_colonyPointWindows.length > _loc_3)
                {
                    _loc_4 = _colonyPointWindows[_loc_3];
                    _loc_4.ownerName = _loc_2.ownerGuildName;
                    _loc_4.guildName = _guild ? (_guild.name) : ("自");
                    _loc_4.point = _guild ? (_loc_2.point.toString()) : ("ー　");
                    _loc_4.topPoint = _loc_2.topPoint.toString();
                }
            }
            return;
        }// end function

        public function get rankLayer() : Canvas
        {
            return this._659794811rankLayer;
        }// end function

        public function set factionLayer(param1:Canvas) : void
        {
            var _loc_2:* = this._1847180437factionLayer;
            if (_loc_2 !== param1)
            {
                this._1847180437factionLayer = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "factionLayer", _loc_2, param1));
            }
            return;
        }// end function

        public function get info() : Image
        {
            return this._3237038info;
        }// end function

        public function set colonies(param1:Array) : void
        {
            _colonies = param1;
            callLater(setColonies);
            return;
        }// end function

        public function set playerVO(param1:PlayerVO) : void
        {
            _playerVO = param1;
            return;
        }// end function

        public function set productionInfoWindow(param1:ProductionInfoWindow) : void
        {
            var _loc_2:* = this._1252748247productionInfoWindow;
            if (_loc_2 !== param1)
            {
                this._1252748247productionInfoWindow = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "productionInfoWindow", _loc_2, param1));
            }
            return;
        }// end function

        public function set products(param1:Image) : void
        {
            var _loc_2:* = this._1003761308products;
            if (_loc_2 !== param1)
            {
                this._1003761308products = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "products", _loc_2, param1));
            }
            return;
        }// end function

        public function set playerStatus(param1:PlayerStatus) : void
        {
            var _loc_2:* = this._252712397playerStatus;
            if (_loc_2 !== param1)
            {
                this._252712397playerStatus = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "playerStatus", _loc_2, param1));
            }
            return;
        }// end function

        public function get playerStatus() : PlayerStatus
        {
            return this._252712397playerStatus;
        }// end function

        public function get productionInfoWindow() : ProductionInfoWindow
        {
            return this._1252748247productionInfoWindow;
        }// end function

        private function createLabel() : Label
        {
            var _loc_1:Label = null;
            _loc_1 = new Label();
            _loc_1.width = 84;
            _loc_1.height = 22;
            _loc_1.setStyle("color", "0x2C2419");
            _loc_1.setStyle("fontSize", "14");
            _loc_1.setStyle("fontWeight", "bold");
            _loc_1.setStyle("textAlign", "center");
            return _loc_1;
        }// end function

        private function _ColonyWindow_bindingsSetup() : Array
        {
            var binding:Binding;
            var result:Array;
            binding = new Binding(this, function () : Object
            {
                return _swf_colony;
            }// end function
            , function (param1:Object) : void
            {
                _ColonyWindow_Image1.source = param1;
                return;
            }// end function
            , "_ColonyWindow_Image1.source");
            result[0] = binding;
            return result;
        }// end function

        public function set forcedFactionArea(param1:Boolean) : void
        {
            _forcedFactionArea = param1;
            return;
        }// end function

        private function getColonyIdFromLocationNum(param1:int) : int
        {
            return param1 + (_forcedFactionArea ? (COLONY_COUNT) : (0));
        }// end function

        public function get products() : Image
        {
            return this._1003761308products;
        }// end function

        public function set guild(param1:Object) : void
        {
            _guild = param1;
            return;
        }// end function

        private function set _swf_colony(param1:MovieClipLoaderAsset) : void
        {
            var _loc_2:* = this._1642964234_swf_colony;
            if (_loc_2 !== param1)
            {
                this._1642964234_swf_colony = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "_swf_colony", _loc_2, param1));
            }
            return;
        }// end function

        private function buttonsClicked(event:Event) : void
        {
            if (event.type == "BUTTON_BACK")
            {
                dispatchEvent(new Event(CLOSE_COLONY_WINDOW));
                return;
            }
            var _loc_2:Object = {BUTTON_01:1, BUTTON_02:2, BUTTON_03:3, BUTTON_04:4, BUTTON_05:5};
            var _loc_3:* = _colonies.getOne("colonyId", getColonyIdFromLocationNum(_loc_2[event.type]));
            _colonyDescriptionWindow.init(_loc_3, _guild, _playerVO);
            this.popupWindow(_colonyDescriptionWindow, false);
            return;
        }// end function

        public static function set watcherSetupUtil(param1:IWatcherSetupUtil) : void
        {
            _watcherSetupUtil = param1;
            return;
        }// end function

    }
}
