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

    public class ExpeditionWindow extends PopupWindow implements IBindingClient
    {
        private var descriptionWindow:ExpeditionDescriptionWindow;
        private var _1965997192lantern_10:Image;
        private var _202177477_swf_lantern_0:MovieClipLoaderAsset;
        private var _1876243384lantern_1:Image;
        private var _202177473_swf_lantern_4:MovieClipLoaderAsset;
        private var _1876243385lantern_2:Image;
        private var _252712397playerStatus:PlayerStatus;
        private var _1252748247productionInfoWindow:ProductionInfoWindow;
        private var _1965997191lantern_11:Image;
        private var _202177470_swf_lantern_7:MovieClipLoaderAsset;
        private var _1876243386lantern_3:Image;
        var _bindingsByDestination:Object;
        private var _1876243390lantern_7:Image;
        private var _202177474_swf_lantern_3:MovieClipLoaderAsset;
        private var _embed_mxml__swf_window_info_home_swf_1388347787:Class;
        private var _1876243387lantern_4:Image;
        private var _202177468_swf_lantern_9:MovieClipLoaderAsset;
        private var _1876243391lantern_8:Image;
        private var _1965997190lantern_12:Image;
        private var _202177475_swf_lantern_2:MovieClipLoaderAsset;
        private var _1876243388lantern_5:Image;
        var _watchers:Array;
        private var _202177471_swf_lantern_6:MovieClipLoaderAsset;
        private var _1876243392lantern_9:Image;
        private var _3237038info:Image;
        private var _492470019_swf_expedition:MovieClipLoaderAsset;
        public var _ExpeditionWindow_Image1:Image;
        private var _1972534412_swf_lantern_10:MovieClipLoaderAsset;
        private var _1847180437factionLayer:Canvas;
        private var _1876243389lantern_6:Image;
        private var _659794811rankLayer:Canvas;
        private var _202177469_swf_lantern_8:MovieClipLoaderAsset;
        var _bindingsBeginWithWord:Object;
        private var _202177476_swf_lantern_1:MovieClipLoaderAsset;
        private var _1972534411_swf_lantern_11:MovieClipLoaderAsset;
        private var _202177472_swf_lantern_5:MovieClipLoaderAsset;
        private var _1770190726_rankId:int = 0;
        private var _embed_mxml__swf_window_info_products_swf_1304559433:Class;
        var _bindings:Array;
        private var _1003761308products:Image;
        private var _1876243383lantern_0:Image;
        private var _documentDescriptor_:UIComponentDescriptor;
        private var _1972534410_swf_lantern_12:MovieClipLoaderAsset;
        public static const MINIMUM_RANK:int = 9;
        public static const CLOSE_EXPEDITION_WINDOW:String = NAME + "closeExpeditionWindow";
        private static var _watcherSetupUtil:IWatcherSetupUtil;
        public static var EmbedSwfExpedition:Class = ExpeditionWindow_EmbedSwfExpedition;
        public static const NAME:String = "ExpeditionWindow";
        public static const DESCRIPTION_COMPLETE:String = "descriptionComplete";
        public static var EmbedSwfLantern:Class = ExpeditionWindow_EmbedSwfLantern;

        public function ExpeditionWindow()
        {
            _documentDescriptor_ = new UIComponentDescriptor({type:PopupWindow, propertiesFactory:function () : Object
            {
                return {width:760, height:560, childDescriptors:[new UIComponentDescriptor({type:Image, id:"_ExpeditionWindow_Image1"}), new UIComponentDescriptor({type:Image, id:"products", propertiesFactory:function () : Object
                {
                    return {source:_embed_mxml__swf_window_info_products_swf_1304559433, x:363, y:0};
                }// end function
                }), new UIComponentDescriptor({type:Image, id:"info", propertiesFactory:function () : Object
                {
                    return {source:_embed_mxml__swf_window_info_home_swf_1388347787, x:0, y:0};
                }// end function
                }), new UIComponentDescriptor({type:Image, id:"lantern_0", events:{click:"__lantern_0_click"}, propertiesFactory:function () : Object
                {
                    return {x:360, y:505};
                }// end function
                }), new UIComponentDescriptor({type:Image, id:"lantern_1", events:{click:"__lantern_1_click"}, propertiesFactory:function () : Object
                {
                    return {x:245, y:500};
                }// end function
                }), new UIComponentDescriptor({type:Image, id:"lantern_2", events:{click:"__lantern_2_click"}, propertiesFactory:function () : Object
                {
                    return {x:125, y:485};
                }// end function
                }), new UIComponentDescriptor({type:Image, id:"lantern_3", events:{click:"__lantern_3_click"}, propertiesFactory:function () : Object
                {
                    return {x:20, y:415};
                }// end function
                }), new UIComponentDescriptor({type:Image, id:"lantern_4", events:{click:"__lantern_4_click"}, propertiesFactory:function () : Object
                {
                    return {x:150, y:350};
                }// end function
                }), new UIComponentDescriptor({type:Image, id:"lantern_5", events:{click:"__lantern_5_click"}, propertiesFactory:function () : Object
                {
                    return {x:315, y:333};
                }// end function
                }), new UIComponentDescriptor({type:Image, id:"lantern_6", events:{click:"__lantern_6_click"}, propertiesFactory:function () : Object
                {
                    return {x:450, y:339};
                }// end function
                }), new UIComponentDescriptor({type:Image, id:"lantern_7", events:{click:"__lantern_7_click"}, propertiesFactory:function () : Object
                {
                    return {x:575, y:342};
                }// end function
                }), new UIComponentDescriptor({type:Image, id:"lantern_8", events:{click:"__lantern_8_click"}, propertiesFactory:function () : Object
                {
                    return {x:669, y:275};
                }// end function
                }), new UIComponentDescriptor({type:Image, id:"lantern_9", events:{click:"__lantern_9_click"}, propertiesFactory:function () : Object
                {
                    return {x:562, y:227};
                }// end function
                }), new UIComponentDescriptor({type:Image, id:"lantern_10", events:{click:"__lantern_10_click"}, propertiesFactory:function () : Object
                {
                    return {x:437, y:155};
                }// end function
                }), new UIComponentDescriptor({type:Image, id:"lantern_11", events:{click:"__lantern_11_click"}, propertiesFactory:function () : Object
                {
                    return {x:347, y:85};
                }// end function
                }), new UIComponentDescriptor({type:Image, id:"lantern_12", events:{click:"__lantern_12_click"}, propertiesFactory:function () : Object
                {
                    return {x:337, y:225};
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
            _202177470_swf_lantern_7 = new EmbedSwfLantern();
            _202177469_swf_lantern_8 = new EmbedSwfLantern();
            _202177468_swf_lantern_9 = new EmbedSwfLantern();
            _1972534412_swf_lantern_10 = new EmbedSwfLantern();
            _1972534411_swf_lantern_11 = new EmbedSwfLantern();
            _1972534410_swf_lantern_12 = new EmbedSwfLantern();
            descriptionWindow = new ExpeditionDescriptionWindow();
            _embed_mxml__swf_window_info_home_swf_1388347787 = ExpeditionWindow__embed_mxml__swf_window_info_home_swf_1388347787;
            _embed_mxml__swf_window_info_products_swf_1304559433 = ExpeditionWindow__embed_mxml__swf_window_info_products_swf_1304559433;
            _bindings = [];
            _watchers = [];
            _bindingsByDestination = {};
            _bindingsBeginWithWord = {};
            mx_internal::_document = this;
            this.width = 760;
            this.height = 560;
            this.horizontalScrollPolicy = "off";
            this.verticalScrollPolicy = "off";
            this.addEventListener("creationComplete", ___ExpeditionWindow_PopupWindow1_creationComplete);
            return;
        }// end function

        private function get _swf_expedition() : MovieClipLoaderAsset
        {
            return this._492470019_swf_expedition;
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
            var _loc_1:int = 1;
            while (_loc_1 <= descriptionWindow.evilPoints.length)
            {
                
                _loc_1++;
            }
            Loader(_swf_expedition.getChildAt(0)).content.addEventListener("BUTTON_BACK", backButtonsClicked);
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
            buttonsClicked(1);
            return;
        }// end function

        public function __lantern_11_click(event:MouseEvent) : void
        {
            buttonsClicked(12);
            return;
        }// end function

        public function __lantern_4_click(event:MouseEvent) : void
        {
            buttonsClicked(5);
            return;
        }// end function

        public function __lantern_8_click(event:MouseEvent) : void
        {
            buttonsClicked(9);
            return;
        }// end function

        public function ___ExpeditionWindow_PopupWindow1_creationComplete(event:FlexEvent) : void
        {
            init();
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

        private function get _swf_lantern_6() : MovieClipLoaderAsset
        {
            return this._202177471_swf_lantern_6;
        }// end function

        private function get _swf_lantern_1() : MovieClipLoaderAsset
        {
            return this._202177476_swf_lantern_1;
        }// end function

        private function get _swf_lantern_9() : MovieClipLoaderAsset
        {
            return this._202177468_swf_lantern_9;
        }// end function

        private function get _swf_lantern_3() : MovieClipLoaderAsset
        {
            return this._202177474_swf_lantern_3;
        }// end function

        private function get _swf_lantern_5() : MovieClipLoaderAsset
        {
            return this._202177472_swf_lantern_5;
        }// end function

        private function get _swf_lantern_7() : MovieClipLoaderAsset
        {
            return this._202177470_swf_lantern_7;
        }// end function

        public function get playerStatus() : PlayerStatus
        {
            return this._252712397playerStatus;
        }// end function

        private function get _swf_lantern_8() : MovieClipLoaderAsset
        {
            return this._202177469_swf_lantern_8;
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
            buttonsClicked(2);
            return;
        }// end function

        public function __lantern_12_click(event:MouseEvent) : void
        {
            buttonsClicked(13);
            return;
        }// end function

        public function get products() : Image
        {
            return this._1003761308products;
        }// end function

        public function __lantern_5_click(event:MouseEvent) : void
        {
            buttonsClicked(6);
            return;
        }// end function

        private function buttonsClicked(param1:int) : void
        {
            var level:* = param1;
            if (_rankId < descriptionWindow.evilPoints[(level - 1)].minimum_rank_id || descriptionWindow.evilPoints[(level - 1)].max_rank_id < _rankId)
            {
                return;
            }
            descriptionWindow.init(String(level));
            this.popupWindow(descriptionWindow, false);
            if (!descriptionWindow.hasEventListener(ExpeditionDescriptionWindow.DESCRIPTION_COMPLETE))
            {
                descriptionWindow.addEventListener(ExpeditionDescriptionWindow.DESCRIPTION_COMPLETE, function (event:PopupEvent) : void
            {
                dispatchEvent(new PopupEvent(DESCRIPTION_COMPLETE, {topographyId:event.param.topographyId, level:event.param.level, evilPointId:event.param.evilPointId, forbiddenJobIds:event.param.forbiddenJobIds}));
                return;
            }// end function
            );
            }
            return;
        }// end function

        private function _ExpeditionWindow_bindingsSetup() : Array
        {
            var binding:Binding;
            var result:Array;
            binding = new Binding(this, function () : Object
            {
                return _swf_expedition;
            }// end function
            , function (param1:Object) : void
            {
                _ExpeditionWindow_Image1.source = param1;
                return;
            }// end function
            , "_ExpeditionWindow_Image1.source");
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
            binding = new Binding(this, function () : Object
            {
                return _swf_lantern_7;
            }// end function
            , function (param1:Object) : void
            {
                lantern_7.source = param1;
                return;
            }// end function
            , "lantern_7.source");
            result[8] = binding;
            binding = new Binding(this, function () : Object
            {
                return _swf_lantern_8;
            }// end function
            , function (param1:Object) : void
            {
                lantern_8.source = param1;
                return;
            }// end function
            , "lantern_8.source");
            result[9] = binding;
            binding = new Binding(this, function () : Object
            {
                return _swf_lantern_9;
            }// end function
            , function (param1:Object) : void
            {
                lantern_9.source = param1;
                return;
            }// end function
            , "lantern_9.source");
            result[10] = binding;
            binding = new Binding(this, function () : Object
            {
                return _swf_lantern_10;
            }// end function
            , function (param1:Object) : void
            {
                lantern_10.source = param1;
                return;
            }// end function
            , "lantern_10.source");
            result[11] = binding;
            binding = new Binding(this, function () : Object
            {
                return _swf_lantern_11;
            }// end function
            , function (param1:Object) : void
            {
                lantern_11.source = param1;
                return;
            }// end function
            , "lantern_11.source");
            result[12] = binding;
            binding = new Binding(this, function () : Object
            {
                return _swf_lantern_12;
            }// end function
            , function (param1:Object) : void
            {
                lantern_12.source = param1;
                return;
            }// end function
            , "lantern_12.source");
            result[13] = binding;
            return result;
        }// end function

        public function __lantern_9_click(event:MouseEvent) : void
        {
            buttonsClicked(10);
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

        public function get lantern_12() : Image
        {
            return this._1965997190lantern_12;
        }// end function

        private function get _swf_lantern_10() : MovieClipLoaderAsset
        {
            return this._1972534412_swf_lantern_10;
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

        public function get lantern_10() : Image
        {
            return this._1965997192lantern_10;
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

        public function set lantern_7(param1:Image) : void
        {
            var _loc_2:* = this._1876243390lantern_7;
            if (_loc_2 !== param1)
            {
                this._1876243390lantern_7 = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "lantern_7", _loc_2, param1));
            }
            return;
        }// end function

        private function set _swf_lantern_7(param1:MovieClipLoaderAsset) : void
        {
            var _loc_2:* = this._202177470_swf_lantern_7;
            if (_loc_2 !== param1)
            {
                this._202177470_swf_lantern_7 = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "_swf_lantern_7", _loc_2, param1));
            }
            return;
        }// end function

        public function set lantern_8(param1:Image) : void
        {
            var _loc_2:* = this._1876243391lantern_8;
            if (_loc_2 !== param1)
            {
                this._1876243391lantern_8 = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "lantern_8", _loc_2, param1));
            }
            return;
        }// end function

        private function set _swf_lantern_8(param1:MovieClipLoaderAsset) : void
        {
            var _loc_2:* = this._202177469_swf_lantern_8;
            if (_loc_2 !== param1)
            {
                this._202177469_swf_lantern_8 = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "_swf_lantern_8", _loc_2, param1));
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

        public function get rankLayer() : Canvas
        {
            return this._659794811rankLayer;
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

        private function get _swf_lantern_12() : MovieClipLoaderAsset
        {
            return this._1972534410_swf_lantern_12;
        }// end function

        public function set lantern_9(param1:Image) : void
        {
            var _loc_2:* = this._1876243392lantern_9;
            if (_loc_2 !== param1)
            {
                this._1876243392lantern_9 = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "lantern_9", _loc_2, param1));
            }
            return;
        }// end function

        override public function initialize() : void
        {
            var target:ExpeditionWindow;
            var watcherSetupUtilClass:Object;
            .mx_internal::setDocumentDescriptor(_documentDescriptor_);
            var bindings:* = _ExpeditionWindow_bindingsSetup();
            var watchers:Array;
            target;
            if (_watcherSetupUtil == null)
            {
                watcherSetupUtilClass = getDefinitionByName("_com_kbmj_viking_view_home_ExpeditionWindowWatcherSetupUtil");
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

        public function get lantern_11() : Image
        {
            return this._1965997191lantern_11;
        }// end function

        private function get _rankId() : int
        {
            return this._1770190726_rankId;
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

        public function __lantern_6_click(event:MouseEvent) : void
        {
            buttonsClicked(7);
            return;
        }// end function

        private function _ExpeditionWindow_bindingExprs() : void
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
            _loc_1 = _swf_lantern_7;
            _loc_1 = _swf_lantern_8;
            _loc_1 = _swf_lantern_9;
            _loc_1 = _swf_lantern_10;
            _loc_1 = _swf_lantern_11;
            _loc_1 = _swf_lantern_12;
            return;
        }// end function

        public function __lantern_2_click(event:MouseEvent) : void
        {
            buttonsClicked(3);
            return;
        }// end function

        public function get info() : Image
        {
            return this._3237038info;
        }// end function

        public function get factionLayer() : Canvas
        {
            return this._1847180437factionLayer;
        }// end function

        public function get lantern_1() : Image
        {
            return this._1876243384lantern_1;
        }// end function

        public function get lantern_3() : Image
        {
            return this._1876243386lantern_3;
        }// end function

        public function get lantern_4() : Image
        {
            return this._1876243387lantern_4;
        }// end function

        public function get lantern_5() : Image
        {
            return this._1876243388lantern_5;
        }// end function

        public function get lantern_6() : Image
        {
            return this._1876243389lantern_6;
        }// end function

        public function get lantern_8() : Image
        {
            return this._1876243391lantern_8;
        }// end function

        private function set _swf_lantern_9(param1:MovieClipLoaderAsset) : void
        {
            var _loc_2:* = this._202177468_swf_lantern_9;
            if (_loc_2 !== param1)
            {
                this._202177468_swf_lantern_9 = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "_swf_lantern_9", _loc_2, param1));
            }
            return;
        }// end function

        public function get lantern_0() : Image
        {
            return this._1876243383lantern_0;
        }// end function

        public function get lantern_9() : Image
        {
            return this._1876243392lantern_9;
        }// end function

        private function get _swf_lantern_11() : MovieClipLoaderAsset
        {
            return this._1972534411_swf_lantern_11;
        }// end function

        public function get lantern_7() : Image
        {
            return this._1876243390lantern_7;
        }// end function

        public function setExpeditionRank(param1:int) : void
        {
            _rankId = param1;
            if (param1 < MINIMUM_RANK)
            {
                return;
            }
            if (param1 < descriptionWindow.evilPoints[0].minimum_rank_id || descriptionWindow.evilPoints[0].max_rank_id < param1)
            {
                MovieClip(Loader(_swf_lantern_0.getChildAt(0)).content).gotoAndPlay("off");
            }
            if (param1 < descriptionWindow.evilPoints[1].minimum_rank_id || descriptionWindow.evilPoints[1].max_rank_id < param1)
            {
                MovieClip(Loader(_swf_lantern_1.getChildAt(0)).content).gotoAndPlay("off");
            }
            if (param1 < descriptionWindow.evilPoints[2].minimum_rank_id || descriptionWindow.evilPoints[2].max_rank_id < param1)
            {
                MovieClip(Loader(_swf_lantern_2.getChildAt(0)).content).gotoAndPlay("off");
            }
            if (param1 < descriptionWindow.evilPoints[3].minimum_rank_id || descriptionWindow.evilPoints[3].max_rank_id < param1)
            {
                MovieClip(Loader(_swf_lantern_3.getChildAt(0)).content).gotoAndPlay("off");
            }
            if (param1 < descriptionWindow.evilPoints[4].minimum_rank_id || descriptionWindow.evilPoints[4].max_rank_id < param1)
            {
                MovieClip(Loader(_swf_lantern_4.getChildAt(0)).content).gotoAndPlay("off");
            }
            if (param1 < descriptionWindow.evilPoints[5].minimum_rank_id || descriptionWindow.evilPoints[5].max_rank_id < param1)
            {
                MovieClip(Loader(_swf_lantern_5.getChildAt(0)).content).gotoAndPlay("off");
            }
            if (param1 < descriptionWindow.evilPoints[6].minimum_rank_id || descriptionWindow.evilPoints[6].max_rank_id < param1)
            {
                MovieClip(Loader(_swf_lantern_6.getChildAt(0)).content).gotoAndPlay("off");
            }
            if (param1 < descriptionWindow.evilPoints[7].minimum_rank_id || descriptionWindow.evilPoints[7].max_rank_id < param1)
            {
                MovieClip(Loader(_swf_lantern_7.getChildAt(0)).content).gotoAndPlay("off");
            }
            if (param1 < descriptionWindow.evilPoints[8].minimum_rank_id || descriptionWindow.evilPoints[8].max_rank_id < param1)
            {
                MovieClip(Loader(_swf_lantern_8.getChildAt(0)).content).gotoAndPlay("off");
            }
            if (param1 < descriptionWindow.evilPoints[9].minimum_rank_id || descriptionWindow.evilPoints[9].max_rank_id < param1)
            {
                MovieClip(Loader(_swf_lantern_9.getChildAt(0)).content).gotoAndPlay("off");
            }
            if (param1 < descriptionWindow.evilPoints[10].minimum_rank_id || descriptionWindow.evilPoints[10].max_rank_id < param1)
            {
                MovieClip(Loader(_swf_lantern_10.getChildAt(0)).content).gotoAndPlay("off");
            }
            if (param1 < descriptionWindow.evilPoints[11].minimum_rank_id || descriptionWindow.evilPoints[11].max_rank_id < param1)
            {
                MovieClip(Loader(_swf_lantern_11.getChildAt(0)).content).gotoAndPlay("off");
            }
            if (param1 < descriptionWindow.evilPoints[12].minimum_rank_id || descriptionWindow.evilPoints[12].max_rank_id < param1)
            {
                MovieClip(Loader(_swf_lantern_12.getChildAt(0)).content).gotoAndPlay("off");
            }
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

        public function get lantern_2() : Image
        {
            return this._1876243385lantern_2;
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

        public function get productionInfoWindow() : ProductionInfoWindow
        {
            return this._1252748247productionInfoWindow;
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

        public function __lantern_10_click(event:MouseEvent) : void
        {
            buttonsClicked(11);
            return;
        }// end function

        public function __lantern_3_click(event:MouseEvent) : void
        {
            buttonsClicked(4);
            return;
        }// end function

        public function __lantern_7_click(event:MouseEvent) : void
        {
            buttonsClicked(8);
            return;
        }// end function

        private function set _swf_lantern_10(param1:MovieClipLoaderAsset) : void
        {
            var _loc_2:* = this._1972534412_swf_lantern_10;
            if (_loc_2 !== param1)
            {
                this._1972534412_swf_lantern_10 = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "_swf_lantern_10", _loc_2, param1));
            }
            return;
        }// end function

        public function set lantern_10(param1:Image) : void
        {
            var _loc_2:* = this._1965997192lantern_10;
            if (_loc_2 !== param1)
            {
                this._1965997192lantern_10 = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "lantern_10", _loc_2, param1));
            }
            return;
        }// end function

        public function set lantern_11(param1:Image) : void
        {
            var _loc_2:* = this._1965997191lantern_11;
            if (_loc_2 !== param1)
            {
                this._1965997191lantern_11 = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "lantern_11", _loc_2, param1));
            }
            return;
        }// end function

        private function set _swf_lantern_12(param1:MovieClipLoaderAsset) : void
        {
            var _loc_2:* = this._1972534410_swf_lantern_12;
            if (_loc_2 !== param1)
            {
                this._1972534410_swf_lantern_12 = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "_swf_lantern_12", _loc_2, param1));
            }
            return;
        }// end function

        public function set lantern_12(param1:Image) : void
        {
            var _loc_2:* = this._1965997190lantern_12;
            if (_loc_2 !== param1)
            {
                this._1965997190lantern_12 = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "lantern_12", _loc_2, param1));
            }
            return;
        }// end function

        private function set _swf_lantern_11(param1:MovieClipLoaderAsset) : void
        {
            var _loc_2:* = this._1972534411_swf_lantern_11;
            if (_loc_2 !== param1)
            {
                this._1972534411_swf_lantern_11 = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "_swf_lantern_11", _loc_2, param1));
            }
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

        public static function set watcherSetupUtil(param1:IWatcherSetupUtil) : void
        {
            _watcherSetupUtil = param1;
            return;
        }// end function

    }
}
