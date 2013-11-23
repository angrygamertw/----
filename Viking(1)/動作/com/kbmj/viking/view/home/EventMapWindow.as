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

    public class EventMapWindow extends PopupWindow implements IBindingClient
    {
        private var descriptionWindow:EventMapDescriptionWindow;
        private var _202177477_swf_lantern_0:MovieClipLoaderAsset;
        private var _1876243384lantern_1:Image;
        private var _202177473_swf_lantern_4:MovieClipLoaderAsset;
        public var _EventMapWindow_Image1:Image;
        private var _1876243385lantern_2:Image;
        private var _252712397playerStatus:PlayerStatus;
        var _bindingsByDestination:Object;
        private var _1252748247productionInfoWindow:ProductionInfoWindow;
        private var _202177474_swf_lantern_3:MovieClipLoaderAsset;
        private var _1876243386lantern_3:Image;
        private var _embed_mxml__swf_window_info_home_swf_1388347787:Class;
        private var _1876243387lantern_4:Image;
        private var _currentLevel:int = 0;
        private var _mapCount:int = 7;
        private var _202177471_swf_lantern_6:MovieClipLoaderAsset;
        private var _1876243388lantern_5:Image;
        var _watchers:Array;
        private var _202177475_swf_lantern_2:MovieClipLoaderAsset;
        private var _3237038info:Image;
        private var _1222547927_swf_resume:MovieClipLoaderAsset;
        private var _492470019_swf_expedition:MovieClipLoaderAsset;
        private var _1847180437factionLayer:Canvas;
        private var _1876243389lantern_6:Image;
        private var _659794811rankLayer:Canvas;
        var _bindingsBeginWithWord:Object;
        private var _202177476_swf_lantern_1:MovieClipLoaderAsset;
        private var _1770190726_rankId:int = 0;
        private var _embed_mxml__swf_window_info_products_swf_1304559433:Class;
        var _bindings:Array;
        private var _1003761308products:Image;
        private var _recordLevel:int = 0;
        private var _202177472_swf_lantern_5:MovieClipLoaderAsset;
        private var _documentDescriptor_:UIComponentDescriptor;
        private var _1876243383lantern_0:Image;
        public static const DESCRIPTION_COMPLETE:String = NAME + "descriptionComplete";
        public static var EmbedSwfLantern:Class = EventMapWindow_EmbedSwfLantern;
        public static const CLOSE_EXPEDITION_WINDOW:String = NAME + "closeExpeditionWindow";
        private static var _watcherSetupUtil:IWatcherSetupUtil;
        public static var EmbedSwfExpedition:Class = EventMapWindow_EmbedSwfExpedition;
        public static const NAME:String = "eventMapWindow";
        public static const MINIMUM_RANK:int = 1;
        public static const RESUME_POINT:String = NAME + "resumePoint";

        public function EventMapWindow()
        {
            _documentDescriptor_ = new UIComponentDescriptor({type:PopupWindow, propertiesFactory:function () : Object
            {
                return {width:760, height:560, childDescriptors:[new UIComponentDescriptor({type:Image, id:"_EventMapWindow_Image1"}), new UIComponentDescriptor({type:Image, id:"products", propertiesFactory:function () : Object
                {
                    return {source:_embed_mxml__swf_window_info_products_swf_1304559433, x:363, y:0};
                }// end function
                }), new UIComponentDescriptor({type:Image, id:"info", propertiesFactory:function () : Object
                {
                    return {source:_embed_mxml__swf_window_info_home_swf_1388347787, x:0, y:0};
                }// end function
                }), new UIComponentDescriptor({type:Image, id:"lantern_0", events:{click:"__lantern_0_click"}, propertiesFactory:function () : Object
                {
                    return {x:400, y:490};
                }// end function
                }), new UIComponentDescriptor({type:Image, id:"lantern_1", events:{click:"__lantern_1_click"}, propertiesFactory:function () : Object
                {
                    return {x:275, y:425};
                }// end function
                }), new UIComponentDescriptor({type:Image, id:"lantern_2", events:{click:"__lantern_2_click"}, propertiesFactory:function () : Object
                {
                    return {x:380, y:360};
                }// end function
                }), new UIComponentDescriptor({type:Image, id:"lantern_3", events:{click:"__lantern_3_click"}, propertiesFactory:function () : Object
                {
                    return {x:290, y:295};
                }// end function
                }), new UIComponentDescriptor({type:Image, id:"lantern_4", events:{click:"__lantern_4_click"}, propertiesFactory:function () : Object
                {
                    return {x:360, y:230};
                }// end function
                }), new UIComponentDescriptor({type:Image, id:"lantern_5", events:{click:"__lantern_5_click"}, propertiesFactory:function () : Object
                {
                    return {x:315, y:165};
                }// end function
                }), new UIComponentDescriptor({type:Image, id:"lantern_6", events:{click:"__lantern_6_click"}, propertiesFactory:function () : Object
                {
                    return {x:340, y:90};
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
            _492470019_swf_expedition = new EmbedSwfExpedition();
            _202177477_swf_lantern_0 = new EmbedSwfLantern();
            _202177476_swf_lantern_1 = new EmbedSwfLantern();
            _202177475_swf_lantern_2 = new EmbedSwfLantern();
            _202177474_swf_lantern_3 = new EmbedSwfLantern();
            _202177473_swf_lantern_4 = new EmbedSwfLantern();
            _202177472_swf_lantern_5 = new EmbedSwfLantern();
            _202177471_swf_lantern_6 = new EmbedSwfLantern();
            _1222547927_swf_resume = new Viking.EmbedSwfButtonCommon();
            descriptionWindow = new EventMapDescriptionWindow();
            _embed_mxml__swf_window_info_home_swf_1388347787 = EventMapWindow__embed_mxml__swf_window_info_home_swf_1388347787;
            _embed_mxml__swf_window_info_products_swf_1304559433 = EventMapWindow__embed_mxml__swf_window_info_products_swf_1304559433;
            _bindings = [];
            _watchers = [];
            _bindingsByDestination = {};
            _bindingsBeginWithWord = {};
            mx_internal::_document = this;
            this.width = 760;
            this.height = 560;
            this.horizontalScrollPolicy = "off";
            this.verticalScrollPolicy = "off";
            this.addEventListener("creationComplete", ___EventMapWindow_PopupWindow1_creationComplete);
            return;
        }// end function

        private function _EventMapWindow_bindingsSetup() : Array
        {
            var binding:Binding;
            var result:Array;
            binding = new Binding(this, function () : Object
            {
                return _swf_expedition;
            }// end function
            , function (param1:Object) : void
            {
                _EventMapWindow_Image1.source = param1;
                return;
            }// end function
            , "_EventMapWindow_Image1.source");
            result[0] = binding;
            binding = new Binding(this, function () : Object
            {
                return _swf_lantern_0;
            }// end function
            , function (param1:Object) : void
            {
                lantern_0.source = param1;
                return;
            }// end function
            , "lantern_0.source");
            result[1] = binding;
            binding = new Binding(this, function () : Object
            {
                return _swf_lantern_1;
            }// end function
            , function (param1:Object) : void
            {
                lantern_1.source = param1;
                return;
            }// end function
            , "lantern_1.source");
            result[2] = binding;
            binding = new Binding(this, function () : Object
            {
                return _swf_lantern_2;
            }// end function
            , function (param1:Object) : void
            {
                lantern_2.source = param1;
                return;
            }// end function
            , "lantern_2.source");
            result[3] = binding;
            binding = new Binding(this, function () : Object
            {
                return _swf_lantern_3;
            }// end function
            , function (param1:Object) : void
            {
                lantern_3.source = param1;
                return;
            }// end function
            , "lantern_3.source");
            result[4] = binding;
            binding = new Binding(this, function () : Object
            {
                return _swf_lantern_4;
            }// end function
            , function (param1:Object) : void
            {
                lantern_4.source = param1;
                return;
            }// end function
            , "lantern_4.source");
            result[5] = binding;
            binding = new Binding(this, function () : Object
            {
                return _swf_lantern_5;
            }// end function
            , function (param1:Object) : void
            {
                lantern_5.source = param1;
                return;
            }// end function
            , "lantern_5.source");
            result[6] = binding;
            binding = new Binding(this, function () : Object
            {
                return _swf_lantern_6;
            }// end function
            , function (param1:Object) : void
            {
                lantern_6.source = param1;
                return;
            }// end function
            , "lantern_6.source");
            result[7] = binding;
            return result;
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

        private function init() : void
        {
            Loader(_swf_expedition.getChildAt(0)).content.addEventListener("BUTTON_BACK", backButtonsClicked);
            MovieClip(Loader(_swf_resume.getChildAt(0)).content).gotoAndPlay("button_halfway");
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

        public function __lantern_0_click(event:MouseEvent) : void
        {
            buttonsClicked(0);
            return;
        }// end function

        private function get _swf_resume() : MovieClipLoaderAsset
        {
            return this._1222547927_swf_resume;
        }// end function

        public function __lantern_4_click(event:MouseEvent) : void
        {
            buttonsClicked(4);
            return;
        }// end function

        public function set evilPoints(param1:Array) : void
        {
            descriptionWindow.evilPoints = param1;
            return;
        }// end function

        private function backButtonsClicked(event:Event) : void
        {
            dispatchEvent(new Event(CLOSE_EXPEDITION_WINDOW));
            return;
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

        public function get playerStatus() : PlayerStatus
        {
            return this._252712397playerStatus;
        }// end function

        private function get _swf_lantern_0() : MovieClipLoaderAsset
        {
            return this._202177477_swf_lantern_0;
        }// end function

        private function get _swf_lantern_2() : MovieClipLoaderAsset
        {
            return this._202177475_swf_lantern_2;
        }// end function

        private function get _swf_lantern_4() : MovieClipLoaderAsset
        {
            return this._202177473_swf_lantern_4;
        }// end function

        private function get _swf_lantern_5() : MovieClipLoaderAsset
        {
            return this._202177472_swf_lantern_5;
        }// end function

        private function get _swf_lantern_6() : MovieClipLoaderAsset
        {
            return this._202177471_swf_lantern_6;
        }// end function

        private function get _swf_lantern_3() : MovieClipLoaderAsset
        {
            return this._202177474_swf_lantern_3;
        }// end function

        public function setLevel(param1:int, param2:int) : void
        {
            _currentLevel = param1;
            var _loc_3:String = "";
            var _loc_4:Boolean = false;
            var _loc_5:int = 0;
            while (_loc_5 < _mapCount)
            {
                
                _loc_3 = "_swf_lantern_" + _loc_5;
                MovieClip(Loader(this[_loc_3].getChildAt(0)).content).gotoAndPlay("off");
                if ((_currentLevel + 1) >= descriptionWindow.evilPoints[_loc_5].level)
                {
                    MovieClip(Loader(this[_loc_3].getChildAt(0)).content).gotoAndPlay("on");
                    _loc_4 = true;
                }
                _loc_5++;
            }
            if (!_loc_4)
            {
                MovieClip(Loader(_swf_lantern_0.getChildAt(0)).content).gotoAndPlay("on");
            }
            setResumePoint(param2);
            return;
        }// end function

        private function get _swf_lantern_1() : MovieClipLoaderAsset
        {
            return this._202177476_swf_lantern_1;
        }// end function

        private function set _swf_resume(param1:MovieClipLoaderAsset) : void
        {
            var _loc_2:* = this._1222547927_swf_resume;
            if (_loc_2 !== param1)
            {
                this._1222547927_swf_resume = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "_swf_resume", _loc_2, param1));
            }
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

        public function __lantern_1_click(event:MouseEvent) : void
        {
            buttonsClicked(1);
            return;
        }// end function

        public function get products() : Image
        {
            return this._1003761308products;
        }// end function

        public function __lantern_5_click(event:MouseEvent) : void
        {
            buttonsClicked(5);
            return;
        }// end function

        private function buttonsClicked(param1:int) : void
        {
            var index:* = param1;
            if ((_currentLevel + 1) != descriptionWindow.evilPoints[index].level)
            {
                return;
            }
            descriptionWindow.init(index);
            this.popupWindow(descriptionWindow, false);
            if (!descriptionWindow.hasEventListener(ExpeditionDescriptionWindow.DESCRIPTION_COMPLETE))
            {
                descriptionWindow.addEventListener(ExpeditionDescriptionWindow.DESCRIPTION_COMPLETE, function (event:PopupEvent) : void
            {
                dispatchEvent(new PopupEvent(DESCRIPTION_COMPLETE, {topographyId:event.param.topographyId, level:event.param.level, evilPointId:event.param.evilPointId, forbiddenJobIds:event.param.forbiddenJobIds, evilPointType:event.param.evilPointType}));
                return;
            }// end function
            );
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

        public function set lantern_0(param1:Image) : void
        {
            var _loc_2:* = this._1876243383lantern_0;
            if (_loc_2 !== param1)
            {
                this._1876243383lantern_0 = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "lantern_0", _loc_2, param1));
            }
            return;
        }// end function

        public function set lantern_1(param1:Image) : void
        {
            var _loc_2:* = this._1876243384lantern_1;
            if (_loc_2 !== param1)
            {
                this._1876243384lantern_1 = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "lantern_1", _loc_2, param1));
            }
            return;
        }// end function

        public function set lantern_2(param1:Image) : void
        {
            var _loc_2:* = this._1876243385lantern_2;
            if (_loc_2 !== param1)
            {
                this._1876243385lantern_2 = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "lantern_2", _loc_2, param1));
            }
            return;
        }// end function

        public function set lantern_3(param1:Image) : void
        {
            var _loc_2:* = this._1876243386lantern_3;
            if (_loc_2 !== param1)
            {
                this._1876243386lantern_3 = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "lantern_3", _loc_2, param1));
            }
            return;
        }// end function

        public function set lantern_4(param1:Image) : void
        {
            var _loc_2:* = this._1876243387lantern_4;
            if (_loc_2 !== param1)
            {
                this._1876243387lantern_4 = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "lantern_4", _loc_2, param1));
            }
            return;
        }// end function

        public function set lantern_6(param1:Image) : void
        {
            var _loc_2:* = this._1876243389lantern_6;
            if (_loc_2 !== param1)
            {
                this._1876243389lantern_6 = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "lantern_6", _loc_2, param1));
            }
            return;
        }// end function

        private function set _swf_lantern_3(param1:MovieClipLoaderAsset) : void
        {
            var _loc_2:* = this._202177474_swf_lantern_3;
            if (_loc_2 !== param1)
            {
                this._202177474_swf_lantern_3 = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "_swf_lantern_3", _loc_2, param1));
            }
            return;
        }// end function

        private function set _swf_lantern_0(param1:MovieClipLoaderAsset) : void
        {
            var _loc_2:* = this._202177477_swf_lantern_0;
            if (_loc_2 !== param1)
            {
                this._202177477_swf_lantern_0 = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "_swf_lantern_0", _loc_2, param1));
            }
            return;
        }// end function

        private function set _swf_lantern_4(param1:MovieClipLoaderAsset) : void
        {
            var _loc_2:* = this._202177473_swf_lantern_4;
            if (_loc_2 !== param1)
            {
                this._202177473_swf_lantern_4 = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "_swf_lantern_4", _loc_2, param1));
            }
            return;
        }// end function

        public function set lantern_5(param1:Image) : void
        {
            var _loc_2:* = this._1876243388lantern_5;
            if (_loc_2 !== param1)
            {
                this._1876243388lantern_5 = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "lantern_5", _loc_2, param1));
            }
            return;
        }// end function

        private function set _swf_lantern_5(param1:MovieClipLoaderAsset) : void
        {
            var _loc_2:* = this._202177472_swf_lantern_5;
            if (_loc_2 !== param1)
            {
                this._202177472_swf_lantern_5 = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "_swf_lantern_5", _loc_2, param1));
            }
            return;
        }// end function

        public function get rankLayer() : Canvas
        {
            return this._659794811rankLayer;
        }// end function

        private function get _rankId() : int
        {
            return this._1770190726_rankId;
        }// end function

        private function set _swf_lantern_1(param1:MovieClipLoaderAsset) : void
        {
            var _loc_2:* = this._202177476_swf_lantern_1;
            if (_loc_2 !== param1)
            {
                this._202177476_swf_lantern_1 = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "_swf_lantern_1", _loc_2, param1));
            }
            return;
        }// end function

        private function set _swf_lantern_2(param1:MovieClipLoaderAsset) : void
        {
            var _loc_2:* = this._202177475_swf_lantern_2;
            if (_loc_2 !== param1)
            {
                this._202177475_swf_lantern_2 = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "_swf_lantern_2", _loc_2, param1));
            }
            return;
        }// end function

        override public function initialize() : void
        {
            var target:EventMapWindow;
            var watcherSetupUtilClass:Object;
            .mx_internal::setDocumentDescriptor(_documentDescriptor_);
            var bindings:* = _EventMapWindow_bindingsSetup();
            var watchers:Array;
            target;
            if (_watcherSetupUtil == null)
            {
                watcherSetupUtilClass = getDefinitionByName("_com_kbmj_viking_view_home_EventMapWindowWatcherSetupUtil");
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

        private function set _swf_lantern_6(param1:MovieClipLoaderAsset) : void
        {
            var _loc_2:* = this._202177471_swf_lantern_6;
            if (_loc_2 !== param1)
            {
                this._202177471_swf_lantern_6 = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "_swf_lantern_6", _loc_2, param1));
            }
            return;
        }// end function

        public function __lantern_2_click(event:MouseEvent) : void
        {
            buttonsClicked(2);
            return;
        }// end function

        public function __lantern_6_click(event:MouseEvent) : void
        {
            buttonsClicked(6);
            return;
        }// end function

        private function setResumePoint(param1:int) : void
        {
            _recordLevel = param1;
            return;
        }// end function

        public function get info() : Image
        {
            return this._3237038info;
        }// end function

        public function ___EventMapWindow_PopupWindow1_creationComplete(event:FlexEvent) : void
        {
            init();
            return;
        }// end function

        public function get factionLayer() : Canvas
        {
            return this._1847180437factionLayer;
        }// end function

        public function get lantern_1() : Image
        {
            return this._1876243384lantern_1;
        }// end function

        public function get lantern_2() : Image
        {
            return this._1876243385lantern_2;
        }// end function

        public function get lantern_3() : Image
        {
            return this._1876243386lantern_3;
        }// end function

        public function get lantern_4() : Image
        {
            return this._1876243387lantern_4;
        }// end function

        public function setPlayerStatus(param1:PlayerVO) : void
        {
            playerStatus.playerVO = param1;
            productionInfoWindow.playerVO = param1;
            setExpeditionRank(param1.playerRankId);
            setLevel(param1.lastEventMapLevel, param1.eventMapBattleRecord);
            return;
        }// end function

        public function get lantern_6() : Image
        {
            return this._1876243389lantern_6;
        }// end function

        public function get lantern_5() : Image
        {
            return this._1876243388lantern_5;
        }// end function

        public function get lantern_0() : Image
        {
            return this._1876243383lantern_0;
        }// end function

        public function setExpeditionRank(param1:int) : void
        {
            _rankId = param1;
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

        public function get productionInfoWindow() : ProductionInfoWindow
        {
            return this._1252748247productionInfoWindow;
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

        public function __lantern_3_click(event:MouseEvent) : void
        {
            buttonsClicked(3);
            return;
        }// end function

        private function _EventMapWindow_bindingExprs() : void
        {
            var _loc_1:* = undefined;
            _loc_1 = _swf_expedition;
            _loc_1 = _swf_lantern_0;
            _loc_1 = _swf_lantern_1;
            _loc_1 = _swf_lantern_2;
            _loc_1 = _swf_lantern_3;
            _loc_1 = _swf_lantern_4;
            _loc_1 = _swf_lantern_5;
            _loc_1 = _swf_lantern_6;
            return;
        }// end function

        private function set _swf_expedition(param1:MovieClipLoaderAsset) : void
        {
            var _loc_2:* = this._492470019_swf_expedition;
            if (_loc_2 !== param1)
            {
                this._492470019_swf_expedition = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "_swf_expedition", _loc_2, param1));
            }
            return;
        }// end function

        private function get _swf_expedition() : MovieClipLoaderAsset
        {
            return this._492470019_swf_expedition;
        }// end function

        public static function set watcherSetupUtil(param1:IWatcherSetupUtil) : void
        {
            _watcherSetupUtil = param1;
            return;
        }// end function

    }
}
