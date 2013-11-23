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

    public class SubjugationWindow extends PopupWindow implements IBindingClient
    {
        var _watchers:Array;
        private var _3237038info:Image;
        private var _99551450_swf_subj:MovieClipLoaderAsset;
        private var _1847180437factionLayer:Canvas;
        private var _embed_mxml__swf_common_arrow_top_swf_788233961:Class;
        private var _252712397playerStatus:PlayerStatus;
        private var _659794811rankLayer:Canvas;
        var _bindingsByDestination:Object;
        public var _SubjugationWindow_Image1:Image;
        var _bindingsBeginWithWord:Object;
        private var _1252748247productionInfoWindow:ProductionInfoWindow;
        private var tutSelectLevelVisible:Boolean = false;
        private var _embed_mxml__swf_window_info_products_swf_1304559433:Class;
        private var _1003761308products:Image;
        private var _1905649457tutShibitoVisible:Boolean = false;
        private var _embed_mxml__swf_window_info_home_swf_1388347787:Class;
        var _bindings:Array;
        private var _documentDescriptor_:UIComponentDescriptor;
        private var _2133333014tutMarkShibito:Image;
        private var selectLevelWindow:SubjugationSelectLevelWindow;
        public static const INIT_SUBJUGATION_WINDOW_TMARK:String = NAME + "initSubjugationWindowTmark";
        private static var _watcherSetupUtil:IWatcherSetupUtil;
        public static const NAME:String = "SubjugationWindow";
        public static var EmbedSwfSubjugation:Class = SubjugationWindow_EmbedSwfSubjugation;
        public static const SELECT_LEVEL_COMPLETE:String = "selectLevelComplete";
        public static const CLOSE_SUBJUGATION_WINDOW:String = NAME + "closeSubjugationWindow";

        public function SubjugationWindow()
        {
            _documentDescriptor_ = new UIComponentDescriptor({type:PopupWindow, propertiesFactory:function () : Object
            {
                return {width:760, height:560, childDescriptors:[new UIComponentDescriptor({type:Image, id:"_SubjugationWindow_Image1"}), new UIComponentDescriptor({type:Image, id:"products", propertiesFactory:function () : Object
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
                }), new UIComponentDescriptor({type:Image, id:"tutMarkShibito", propertiesFactory:function () : Object
                {
                    return {source:_embed_mxml__swf_common_arrow_top_swf_788233961, width:75, height:75, y:230, x:65};
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
            _99551450_swf_subj = new EmbedSwfSubjugation();
            selectLevelWindow = new SubjugationSelectLevelWindow();
            _embed_mxml__swf_common_arrow_top_swf_788233961 = SubjugationWindow__embed_mxml__swf_common_arrow_top_swf_788233961;
            _embed_mxml__swf_window_info_home_swf_1388347787 = SubjugationWindow__embed_mxml__swf_window_info_home_swf_1388347787;
            _embed_mxml__swf_window_info_products_swf_1304559433 = SubjugationWindow__embed_mxml__swf_window_info_products_swf_1304559433;
            _bindings = [];
            _watchers = [];
            _bindingsByDestination = {};
            _bindingsBeginWithWord = {};
            mx_internal::_document = this;
            this.width = 760;
            this.height = 560;
            this.horizontalScrollPolicy = "off";
            this.verticalScrollPolicy = "off";
            this.addEventListener("creationComplete", ___SubjugationWindow_PopupWindow1_creationComplete);
            return;
        }// end function

        public function initSubTmarks(param1:Boolean) : void
        {
            trace("init sub tmark" + param1);
            tutShibitoVisible = param1;
            tutSelectLevelVisible = param1;
            return;
        }// end function

        public function get rankLayer() : Canvas
        {
            return this._659794811rankLayer;
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

        override public function initialize() : void
        {
            var target:SubjugationWindow;
            var watcherSetupUtilClass:Object;
            .mx_internal::setDocumentDescriptor(_documentDescriptor_);
            var bindings:* = _SubjugationWindow_bindingsSetup();
            var watchers:Array;
            target;
            if (_watcherSetupUtil == null)
            {
                watcherSetupUtilClass = getDefinitionByName("_com_kbmj_viking_view_home_SubjugationWindowWatcherSetupUtil");
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

        public function get factionLayer() : Canvas
        {
            return this._1847180437factionLayer;
        }// end function

        private function set tutShibitoVisible(param1:Boolean) : void
        {
            var _loc_2:* = this._1905649457tutShibitoVisible;
            if (_loc_2 !== param1)
            {
                this._1905649457tutShibitoVisible = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "tutShibitoVisible", _loc_2, param1));
            }
            return;
        }// end function

        private function init() : void
        {
            var _loc_2:String = null;
            var _loc_1:Array = ["BUTTON_BACK", "BUTTON_GL", "BUTTON_RK", "BUTTON_WS", "BUTTON_LG", "BUTTON_MN", "BUTTON_FR"];
            for each (_loc_2 in _loc_1)
            {
                
                Loader(_swf_subj.getChildAt(0)).content.addEventListener(_loc_2, buttonsClicked);
            }
            return;
        }// end function

        public function get tutMarkShibito() : Image
        {
            return this._2133333014tutMarkShibito;
        }// end function

        private function get _swf_subj() : MovieClipLoaderAsset
        {
            return this._99551450_swf_subj;
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

        public function set evilPoints(param1:Array) : void
        {
            selectLevelWindow.evilPoints = param1;
            return;
        }// end function

        public function get info() : Image
        {
            return this._3237038info;
        }// end function

        public function set tutMarkShibito(param1:Image) : void
        {
            var _loc_2:* = this._2133333014tutMarkShibito;
            if (_loc_2 !== param1)
            {
                this._2133333014tutMarkShibito = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "tutMarkShibito", _loc_2, param1));
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

        private function get tutShibitoVisible() : Boolean
        {
            return this._1905649457tutShibitoVisible;
        }// end function

        private function set _swf_subj(param1:MovieClipLoaderAsset) : void
        {
            var _loc_2:* = this._99551450_swf_subj;
            if (_loc_2 !== param1)
            {
                this._99551450_swf_subj = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "_swf_subj", _loc_2, param1));
            }
            return;
        }// end function

        private function _SubjugationWindow_bindingExprs() : void
        {
            var _loc_1:* = undefined;
            _loc_1 = _swf_subj;
            _loc_1 = tutShibitoVisible;
            return;
        }// end function

        public function get productionInfoWindow() : ProductionInfoWindow
        {
            return this._1252748247productionInfoWindow;
        }// end function

        public function get playerStatus() : PlayerStatus
        {
            return this._252712397playerStatus;
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

        public function get products() : Image
        {
            return this._1003761308products;
        }// end function

        private function buttonsClicked(event:Event) : void
        {
            var e:* = event;
            if (e.type == "BUTTON_BACK")
            {
                dispatchEvent(new Event(CLOSE_SUBJUGATION_WINDOW));
                return;
            }
            selectLevelWindow.init(e.type);
            selectLevelWindow.setTutMarkVisible(tutSelectLevelVisible);
            this.popupWindow(selectLevelWindow, false);
            if (!selectLevelWindow.hasEventListener(SubjugationSelectLevelWindow.SELECT_LEVEL_COMPLETE))
            {
                selectLevelWindow.addEventListener(SubjugationSelectLevelWindow.SELECT_LEVEL_COMPLETE, function (event:PopupEvent) : void
            {
                dispatchEvent(new PopupEvent(SELECT_LEVEL_COMPLETE, {topographyId:event.param.topographyId, level:event.param.level}));
                return;
            }// end function
            );
            }
            return;
        }// end function

        public function ___SubjugationWindow_PopupWindow1_creationComplete(event:FlexEvent) : void
        {
            init();
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

        private function _SubjugationWindow_bindingsSetup() : Array
        {
            var binding:Binding;
            var result:Array;
            binding = new Binding(this, function () : Object
            {
                return _swf_subj;
            }// end function
            , function (param1:Object) : void
            {
                _SubjugationWindow_Image1.source = param1;
                return;
            }// end function
            , "_SubjugationWindow_Image1.source");
            result[0] = binding;
            binding = new Binding(this, function () : Boolean
            {
                return tutShibitoVisible;
            }// end function
            , function (param1:Boolean) : void
            {
                tutMarkShibito.visible = param1;
                return;
            }// end function
            , "tutMarkShibito.visible");
            result[1] = binding;
            return result;
        }// end function

        public static function set watcherSetupUtil(param1:IWatcherSetupUtil) : void
        {
            _watcherSetupUtil = param1;
            return;
        }// end function

    }
}
