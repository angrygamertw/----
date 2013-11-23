package com.kbmj.viking.view.home
{
    import com.kbmj.viking.lib.*;
    import com.kbmj.viking.view.*;
    import flash.events.*;
    import flash.utils.*;
    import mx.binding.*;
    import mx.containers.*;
    import mx.controls.*;
    import mx.core.*;
    import mx.effects.*;
    import mx.events.*;
    import mx.managers.*;

    public class CollectWindow extends CanvasWithPopUp implements IBindingClient
    {
        private var _3175821glow:Glow;
        private var _99600088_swf_rank:MovieClipLoaderAsset;
        var _watchers:Array;
        private var _1896677185windowLayer:Canvas;
        private var _embed_mxml__swf_common_button_close_window_swf_1370265653:Class;
        private var selectedActivity:String;
        private var _121712834glowoff:Glow;
        var _bindingsByDestination:Object;
        var _bindingsBeginWithWord:Object;
        public var collectUnitWindow:CollectUnitWindow;
        public var _CollectWindow_Text1:Text;
        var _bindings:Array;
        private var _304784253commandCanvas:Canvas;
        private var _units:Array;
        private var _documentDescriptor_:UIComponentDescriptor;
        private var _1777504961buttonLayer:Canvas;
        public static const NO_UNIT:String = NAME + "noUnit";
        public static const GATHERING_ACTIVITIES:Array = ["logging", "mining", "hunting", "quarrying", "training", "collecting"];
        public static const OPEN_UNIT_LIST:String = NAME + "openUnitList";
        public static var EmbedSwfRankIcon:Class = CollectWindow_EmbedSwfRankIcon;
        private static var _watcherSetupUtil:IWatcherSetupUtil;
        public static const CLOSE_UNIT_LIST:String = NAME + "closeUnitList";
        public static const CLOSED_COLLECT_WINDOW:String = NAME + "closedCollectWindow";
        public static const NAME:String = "collectWindow";

        public function CollectWindow()
        {
            _documentDescriptor_ = new UIComponentDescriptor({type:CanvasWithPopUp, propertiesFactory:function () : Object
            {
                return {childDescriptors:[new UIComponentDescriptor({type:Canvas, id:"windowLayer"}), new UIComponentDescriptor({type:Canvas, id:"buttonLayer"}), new UIComponentDescriptor({type:Canvas, id:"commandCanvas", propertiesFactory:function () : Object
                {
                    return {x:330, childDescriptors:[new UIComponentDescriptor({type:Text, id:"_CollectWindow_Text1", stylesFactory:function () : void
                    {
                        this.fontSize = 15;
                        this.fontWeight = "bold";
                        this.color = 16777215;
                        return;
                    }// end function
                    , propertiesFactory:function () : Object
                    {
                        return {x:195, y:38};
                    }// end function
                    }), new UIComponentDescriptor({type:Image, events:{click:"___CollectWindow_Image1_click"}, propertiesFactory:function () : Object
                    {
                        return {x:285, y:36, source:_embed_mxml__swf_common_button_close_window_swf_1370265653};
                    }// end function
                    })]};
                }// end function
                })]};
            }// end function
            });
            _99600088_swf_rank = new EmbedSwfRankIcon();
            collectUnitWindow = new CollectUnitWindow();
            _embed_mxml__swf_common_button_close_window_swf_1370265653 = CollectWindow__embed_mxml__swf_common_button_close_window_swf_1370265653;
            _bindings = [];
            _watchers = [];
            _bindingsByDestination = {};
            _bindingsBeginWithWord = {};
            mx_internal::_document = this;
            _CollectWindow_Glow1_i();
            _CollectWindow_Glow2_i();
            this.addEventListener("creationComplete", ___CollectWindow_CanvasWithPopUp1_creationComplete);
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

        public function get commandCanvas() : Canvas
        {
            return this._304784253commandCanvas;
        }// end function

        public function set glowoff(param1:Glow) : void
        {
            var _loc_2:* = this._121712834glowoff;
            if (_loc_2 !== param1)
            {
                this._121712834glowoff = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "glowoff", _loc_2, param1));
            }
            return;
        }// end function

        public function set commandCanvas(param1:Canvas) : void
        {
            var _loc_2:* = this._304784253commandCanvas;
            if (_loc_2 !== param1)
            {
                this._304784253commandCanvas = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "commandCanvas", _loc_2, param1));
            }
            return;
        }// end function

        private function closeWindow() : void
        {
            PopUpManager.removePopUp(this);
            return;
        }// end function

        private function unitSelectedHandler(event:PopupEvent) : void
        {
            sendEvent(CLOSE_UNIT_LIST);
            PopUpManager.removePopUp(collectUnitWindow);
            this.dispatchEvent(new PopupEvent(Viking.HOME_GATHER, {unitId:event.param.unitId, activity:selectedActivity, quantity:event.param.quantity}));
            onClose();
            return;
        }// end function

        public function get glow() : Glow
        {
            return this._3175821glow;
        }// end function

        override public function initialize() : void
        {
            var target:CollectWindow;
            var watcherSetupUtilClass:Object;
            .mx_internal::setDocumentDescriptor(_documentDescriptor_);
            var bindings:* = _CollectWindow_bindingsSetup();
            var watchers:Array;
            target;
            if (_watcherSetupUtil == null)
            {
                watcherSetupUtilClass = getDefinitionByName("_com_kbmj_viking_view_home_CollectWindowWatcherSetupUtil");
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

        public function set glow(param1:Glow) : void
        {
            var _loc_2:* = this._3175821glow;
            if (_loc_2 !== param1)
            {
                this._3175821glow = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "glow", _loc_2, param1));
            }
            return;
        }// end function

        private function init() : void
        {
            collectUnitWindow.addEventListener(CollectUnitWindow.SELECTED, unitSelectedHandler);
            return;
        }// end function

        public function ___CollectWindow_Image1_click(event:MouseEvent) : void
        {
            onClose();
            return;
        }// end function

        private function get _swf_rank() : MovieClipLoaderAsset
        {
            return this._99600088_swf_rank;
        }// end function

        private function _CollectWindow_Glow2_i() : Glow
        {
            var _loc_1:* = new Glow();
            glowoff = _loc_1;
            _loc_1.alphaFrom = 0.9;
            _loc_1.alphaTo = 0;
            _loc_1.blurXFrom = 10;
            _loc_1.blurXTo = 2;
            _loc_1.blurYFrom = 10;
            _loc_1.blurYTo = 2;
            _loc_1.color = 16766976;
            _loc_1.inner = false;
            _loc_1.knockout = false;
            _loc_1.strength = 1;
            return _loc_1;
        }// end function

        private function _CollectWindow_bindingExprs() : void
        {
            var _loc_1:* = undefined;
            _loc_1 = Utils.i18n("generalAction");
            return;
        }// end function

        public function get buttonLayer() : Canvas
        {
            return this._1777504961buttonLayer;
        }// end function

        public function get windowLayer() : Canvas
        {
            return this._1896677185windowLayer;
        }// end function

        public function get glowoff() : Glow
        {
            return this._121712834glowoff;
        }// end function

        public function ___CollectWindow_CanvasWithPopUp1_creationComplete(event:FlexEvent) : void
        {
            init();
            return;
        }// end function

        public function onClose() : void
        {
            PopUpManager.removePopUp(this);
            return;
        }// end function

        private function set _swf_rank(param1:MovieClipLoaderAsset) : void
        {
            var _loc_2:* = this._99600088_swf_rank;
            if (_loc_2 !== param1)
            {
                this._99600088_swf_rank = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "_swf_rank", _loc_2, param1));
            }
            return;
        }// end function

        public function set units(param1:Array) : void
        {
            _units = param1;
            return;
        }// end function

        private function _CollectWindow_Glow1_i() : Glow
        {
            var _loc_1:* = new Glow();
            glow = _loc_1;
            _loc_1.alphaFrom = 0.1;
            _loc_1.alphaTo = 0.9;
            _loc_1.blurXFrom = 2;
            _loc_1.blurXTo = 10;
            _loc_1.blurYFrom = 2;
            _loc_1.blurYTo = 10;
            _loc_1.color = 16766976;
            _loc_1.inner = false;
            _loc_1.knockout = false;
            _loc_1.strength = 1;
            return _loc_1;
        }// end function

        private function _CollectWindow_bindingsSetup() : Array
        {
            var binding:Binding;
            var result:Array;
            binding = new Binding(this, function () : String
            {
                var _loc_1:* = Utils.i18n("generalAction");
                var _loc_2:* = _loc_1 == undefined ? (null) : (String(_loc_1));
                return _loc_2;
            }// end function
            , function (param1:String) : void
            {
                _CollectWindow_Text1.text = param1;
                return;
            }// end function
            , "_CollectWindow_Text1.text");
            result[0] = binding;
            return result;
        }// end function

        public function get units() : Array
        {
            return _units;
        }// end function

        public function showUnits(param1:int) : void
        {
            var activityIndex:* = param1;
            selectedActivity = GATHERING_ACTIVITIES[activityIndex];
            var selectUnits:* = new Array();
            selectUnits = units;
            collectUnitWindow.units = selectUnits;
            collectUnitWindow.init();
            this.popupWindow(collectUnitWindow, false);
            collectUnitWindow.training(false);
            switch(activityIndex)
            {
                case 0:
                {
                    collectUnitWindow.listText.text = Utils.i18n("collectActionFires");
                    collectUnitWindow.listTitle.text = Utils.i18n("generalMiningFires");
                    break;
                }
                case 1:
                {
                    collectUnitWindow.listText.text = Utils.i18n("collectActionWater");
                    collectUnitWindow.listTitle.text = Utils.i18n("generalMiningWater");
                    break;
                }
                case 2:
                {
                    collectUnitWindow.listText.text = Utils.i18n("collectActionLands");
                    collectUnitWindow.listTitle.text = Utils.i18n("generalMiningLands");
                    break;
                }
                case 3:
                {
                    collectUnitWindow.listText.text = Utils.i18n("collectActionSilver");
                    collectUnitWindow.listTitle.text = Utils.i18n("generalMiningSilvers");
                    break;
                }
                case 4:
                {
                    collectUnitWindow.listText.text = Utils.i18n("collectActionTraining");
                    collectUnitWindow.listTitle.text = Utils.i18n("generalTraining");
                    collectUnitWindow.training(true);
                    break;
                }
                case 5:
                {
                    collectUnitWindow.listText.text = Utils.i18n("collectActionGreens");
                    collectUnitWindow.listTitle.text = Utils.i18n("generalCollectGreens");
                    break;
                }
                default:
                {
                    break;
                }
            }
            collectUnitWindow.addEventListener(CollectUnitWindow.CLOSE_UNIT_LIST, function () : void
            {
                collectUnitWindow.removeEventListener(CollectUnitWindow.CLOSE_UNIT_LIST, arguments.callee);
                sendEvent(CLOSE_UNIT_LIST);
                return;
            }// end function
            );
            sendEvent(OPEN_UNIT_LIST);
            return;
        }// end function

        private function noUnitAlert() : void
        {
            sendEvent(NO_UNIT);
            return;
        }// end function

        public function set buttonLayer(param1:Canvas) : void
        {
            var _loc_2:* = this._1777504961buttonLayer;
            if (_loc_2 !== param1)
            {
                this._1777504961buttonLayer = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "buttonLayer", _loc_2, param1));
            }
            return;
        }// end function

        public static function set watcherSetupUtil(param1:IWatcherSetupUtil) : void
        {
            CollectWindow._watcherSetupUtil = param1;
            return;
        }// end function

    }
}
