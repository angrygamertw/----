package com.kbmj.viking.view.allMap
{
    import com.kbmj.viking.lib.*;
    import com.kbmj.viking.view.*;
    import flash.display.*;
    import flash.geom.*;
    import flash.utils.*;
    import mx.binding.*;
    import mx.containers.*;
    import mx.controls.*;
    import mx.core.*;
    import mx.events.*;

    public class InitHomeWindow extends Canvas implements IBindingClient
    {
        var _bindings:Array;
        public var overpopulatedImage:Class;
        public var forcedFactionImage:Class;
        public var underpopulatedImage:Class;
        public var fourByFourAreaFlag:Boolean = false;
        var _watchers:Array;
        public var _InitHomeWindow_Image1:Image;
        public var _InitHomeWindow_Text1:Text;
        public var _InitHomeWindow_Text2:Text;
        private var _1410965406iconImage:Canvas;
        private var _557984683swfThreeByThree:MovieClipLoaderAsset;
        public var populatedImage:Class;
        public var seiryuImage:Class;
        public var notSelectableThreeByThreeImage:Class;
        var _bindingsByDestination:Object;
        var _bindingsBeginWithWord:Object;
        private var _1591054587swfFourByFour:MovieClipLoaderAsset;
        public var suzakuImage:Class;
        public var nonActiveAreaFlag:Boolean = false;
        public var frame:UIComponent;
        public var activeAreaImage:Class;
        public var byakkoImage:Class;
        public var genbuImage:Class;
        public var areaFlags:Array;
        private var _documentDescriptor_:UIComponentDescriptor;
        public var notSelectableFourByFourImage:Class;
        public static const NAME:String = "InitHomeWindow";
        public static var EmbedSwfFourByFourWindowInitHome:Class = InitHomeWindow_EmbedSwfFourByFourWindowInitHome;
        public static const INIT_HOME_OK:String = NAME + "/oK";
        private static var _watcherSetupUtil:IWatcherSetupUtil;
        public static var EmbedSwfThreeByThreeWindowInitHome:Class = InitHomeWindow_EmbedSwfThreeByThreeWindowInitHome;
        public static const MINI_MAP_HEIGHT:int = 303;
        public static const MINI_MAP_WIDTH:int = 303;

        public function InitHomeWindow()
        {
            _documentDescriptor_ = new UIComponentDescriptor({type:Canvas, propertiesFactory:function () : Object
            {
                return {width:760, height:560, childDescriptors:[new UIComponentDescriptor({type:Image, id:"_InitHomeWindow_Image1", propertiesFactory:function () : Object
                {
                    return {x:160, y:0};
                }// end function
                }), new UIComponentDescriptor({type:Canvas, id:"iconImage", stylesFactory:function () : void
                {
                    this.textAlign = "right";
                    return;
                }// end function
                , propertiesFactory:function () : Object
                {
                    return {x:391, y:174};
                }// end function
                }), new UIComponentDescriptor({type:Text, id:"_InitHomeWindow_Text1", stylesFactory:function () : void
                {
                    this.fontSize = 12;
                    this.textAlign = "left";
                    return;
                }// end function
                , propertiesFactory:function () : Object
                {
                    return {x:365, y:114, width:360};
                }// end function
                }), new UIComponentDescriptor({type:Text, id:"_InitHomeWindow_Text2", stylesFactory:function () : void
                {
                    this.fontSize = 12;
                    this.textAlign = "left";
                    return;
                }// end function
                , propertiesFactory:function () : Object
                {
                    return {x:365, y:135, width:360};
                }// end function
                })]};
            }// end function
            });
            activeAreaImage = InitHomeWindow_activeAreaImage;
            forcedFactionImage = InitHomeWindow_forcedFactionImage;
            notSelectableThreeByThreeImage = InitHomeWindow_notSelectableThreeByThreeImage;
            notSelectableFourByFourImage = InitHomeWindow_notSelectableFourByFourImage;
            underpopulatedImage = InitHomeWindow_underpopulatedImage;
            populatedImage = InitHomeWindow_populatedImage;
            overpopulatedImage = InitHomeWindow_overpopulatedImage;
            seiryuImage = InitHomeWindow_seiryuImage;
            suzakuImage = InitHomeWindow_suzakuImage;
            byakkoImage = InitHomeWindow_byakkoImage;
            genbuImage = InitHomeWindow_genbuImage;
            _1591054587swfFourByFour = new EmbedSwfFourByFourWindowInitHome();
            _557984683swfThreeByThree = new EmbedSwfThreeByThreeWindowInitHome();
            frame = new UIComponent();
            areaFlags = new Array();
            _bindings = [];
            _watchers = [];
            _bindingsByDestination = {};
            _bindingsBeginWithWord = {};
            mx_internal::_document = this;
            this.width = 760;
            this.height = 560;
            this.horizontalScrollPolicy = "off";
            this.verticalScrollPolicy = "off";
            this.addEventListener("creationComplete", ___InitHomeWindow_Canvas1_creationComplete);
            return;
        }// end function

        private function onOK(param1:int) : void
        {
            var area:* = param1;
            var point:* = convertPosition(area);
            var msg:* = point.y.toString() + "." + point.x.toString() + Utils.i18n("initHomeNotice") + Utils.i18n("initHomeRuleNotice", areaRuleLabel(area));
            AlertWindow.show(msg, "", AlertWindow.YES | AlertWindow.NO, this, function (event:CloseEvent) : void
            {
                if (event.detail == AlertWindow.YES)
                {
                    dispatchEvent(new PopupEvent(INIT_HOME_OK, {area:area}));
                }
                return;
            }// end function
            );
            return;
        }// end function

        private function get swfFourByFour() : MovieClipLoaderAsset
        {
            return this._1591054587swfFourByFour;
        }// end function

        override public function initialize() : void
        {
            var target:InitHomeWindow;
            var watcherSetupUtilClass:Object;
            .mx_internal::setDocumentDescriptor(_documentDescriptor_);
            var bindings:* = _InitHomeWindow_bindingsSetup();
            var watchers:Array;
            target;
            if (_watcherSetupUtil == null)
            {
                watcherSetupUtilClass = getDefinitionByName("_com_kbmj_viking_view_allMap_InitHomeWindowWatcherSetupUtil");
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

        private function set swfFourByFour(param1:MovieClipLoaderAsset) : void
        {
            var _loc_2:* = this._1591054587swfFourByFour;
            if (_loc_2 !== param1)
            {
                this._1591054587swfFourByFour = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "swfFourByFour", _loc_2, param1));
            }
            return;
        }// end function

        private function addDistributionImage(param1:Object, param2:DisplayObject) : void
        {
            var _loc_7:DisplayObject = null;
            var _loc_8:DisplayObject = null;
            var _loc_3:* = param1.area_id;
            var _loc_4:* = convertPosition(_loc_3);
            var _loc_5:* = new UIComponent();
            var _loc_6:Array = [0, 101, 201];
            if (fourByFourAreaFlag)
            {
                _loc_6 = [0, 76, 151, 227];
            }
            param2.x = _loc_6[(_loc_4.x - 1)];
            param2.y = _loc_6[(_loc_4.y - 1)];
            if (param1.forced_faction)
            {
                _loc_7 = new forcedFactionImage();
                _loc_7.x = _loc_6[(_loc_4.x - 1)] + 25;
                _loc_7.y = _loc_6[(_loc_4.y - 1)] + 4;
                _loc_5.addChild(_loc_7);
            }
            else if (param1.active && nonActiveAreaFlag)
            {
                _loc_8 = new activeAreaImage();
                _loc_8.x = _loc_6[(_loc_4.x - 1)] + 25;
                _loc_8.y = _loc_6[(_loc_4.y - 1)] + 4;
                _loc_5.addChild(_loc_8);
            }
            iconImage.addChild(_loc_5);
            _loc_5.addChild(param2);
            return;
        }// end function

        public function init() : void
        {
            if (fourByFourAreaFlag)
            {
                Loader(swfFourByFour.getChildAt(0)).content.addEventListener("BUTTON_1", function () : void
            {
                onOK(1);
                return;
            }// end function
            );
                Loader(swfFourByFour.getChildAt(0)).content.addEventListener("BUTTON_2", function () : void
            {
                onOK(2);
                return;
            }// end function
            );
                Loader(swfFourByFour.getChildAt(0)).content.addEventListener("BUTTON_3", function () : void
            {
                onOK(3);
                return;
            }// end function
            );
                Loader(swfFourByFour.getChildAt(0)).content.addEventListener("BUTTON_4", function () : void
            {
                onOK(4);
                return;
            }// end function
            );
                Loader(swfFourByFour.getChildAt(0)).content.addEventListener("BUTTON_5", function () : void
            {
                onOK(5);
                return;
            }// end function
            );
                Loader(swfFourByFour.getChildAt(0)).content.addEventListener("BUTTON_6", function () : void
            {
                onOK(6);
                return;
            }// end function
            );
                Loader(swfFourByFour.getChildAt(0)).content.addEventListener("BUTTON_7", function () : void
            {
                onOK(7);
                return;
            }// end function
            );
                Loader(swfFourByFour.getChildAt(0)).content.addEventListener("BUTTON_8", function () : void
            {
                onOK(8);
                return;
            }// end function
            );
                Loader(swfFourByFour.getChildAt(0)).content.addEventListener("BUTTON_9", function () : void
            {
                onOK(9);
                return;
            }// end function
            );
                Loader(swfFourByFour.getChildAt(0)).content.addEventListener("BUTTON_10", function () : void
            {
                onOK(10);
                return;
            }// end function
            );
                Loader(swfFourByFour.getChildAt(0)).content.addEventListener("BUTTON_11", function () : void
            {
                onOK(11);
                return;
            }// end function
            );
                Loader(swfFourByFour.getChildAt(0)).content.addEventListener("BUTTON_12", function () : void
            {
                onOK(12);
                return;
            }// end function
            );
                Loader(swfFourByFour.getChildAt(0)).content.addEventListener("BUTTON_13", function () : void
            {
                onOK(13);
                return;
            }// end function
            );
                Loader(swfFourByFour.getChildAt(0)).content.addEventListener("BUTTON_14", function () : void
            {
                onOK(14);
                return;
            }// end function
            );
                Loader(swfFourByFour.getChildAt(0)).content.addEventListener("BUTTON_15", function () : void
            {
                onOK(15);
                return;
            }// end function
            );
                Loader(swfFourByFour.getChildAt(0)).content.addEventListener("BUTTON_16", function () : void
            {
                onOK(16);
                return;
            }// end function
            );
            }
            else
            {
                Loader(swfThreeByThree.getChildAt(0)).content.addEventListener("BUTTON_1", function () : void
            {
                onOK(1);
                return;
            }// end function
            );
                Loader(swfThreeByThree.getChildAt(0)).content.addEventListener("BUTTON_2", function () : void
            {
                onOK(2);
                return;
            }// end function
            );
                Loader(swfThreeByThree.getChildAt(0)).content.addEventListener("BUTTON_3", function () : void
            {
                onOK(3);
                return;
            }// end function
            );
                Loader(swfThreeByThree.getChildAt(0)).content.addEventListener("BUTTON_4", function () : void
            {
                onOK(4);
                return;
            }// end function
            );
                Loader(swfThreeByThree.getChildAt(0)).content.addEventListener("BUTTON_5", function () : void
            {
                onOK(5);
                return;
            }// end function
            );
                Loader(swfThreeByThree.getChildAt(0)).content.addEventListener("BUTTON_6", function () : void
            {
                onOK(6);
                return;
            }// end function
            );
                Loader(swfThreeByThree.getChildAt(0)).content.addEventListener("BUTTON_7", function () : void
            {
                onOK(7);
                return;
            }// end function
            );
                Loader(swfThreeByThree.getChildAt(0)).content.addEventListener("BUTTON_8", function () : void
            {
                onOK(8);
                return;
            }// end function
            );
                Loader(swfThreeByThree.getChildAt(0)).content.addEventListener("BUTTON_9", function () : void
            {
                onOK(9);
                return;
            }// end function
            );
            }
            return;
        }// end function

        private function _InitHomeWindow_bindingExprs() : void
        {
            var _loc_1:* = undefined;
            _loc_1 = getSwf();
            _loc_1 = Utils.i18n("localize27");
            _loc_1 = Utils.i18n("localize28");
            return;
        }// end function

        private function get swfThreeByThree() : MovieClipLoaderAsset
        {
            return this._557984683swfThreeByThree;
        }// end function

        private function getFactionImage(param1:int) : DisplayObject
        {
            switch(param1)
            {
                case 0:
                {
                    return new seiryuImage();
                }
                case 1:
                {
                    return new suzakuImage();
                }
                case 2:
                {
                    return new byakkoImage();
                }
                case 3:
                {
                    return new genbuImage();
                }
                default:
                {
                    return null;
                    break;
                }
            }
        }// end function

        private function _InitHomeWindow_bindingsSetup() : Array
        {
            var binding:Binding;
            var result:Array;
            binding = new Binding(this, function () : Object
            {
                return getSwf();
            }// end function
            , function (param1:Object) : void
            {
                _InitHomeWindow_Image1.source = param1;
                return;
            }// end function
            , "_InitHomeWindow_Image1.source");
            result[0] = binding;
            binding = new Binding(this, function () : String
            {
                var _loc_1:* = Utils.i18n("localize27");
                var _loc_2:* = _loc_1 == undefined ? (null) : (String(_loc_1));
                return _loc_2;
            }// end function
            , function (param1:String) : void
            {
                _InitHomeWindow_Text1.text = param1;
                return;
            }// end function
            , "_InitHomeWindow_Text1.text");
            result[1] = binding;
            binding = new Binding(this, function () : String
            {
                var _loc_1:* = Utils.i18n("localize28");
                var _loc_2:* = _loc_1 == undefined ? (null) : (String(_loc_1));
                return _loc_2;
            }// end function
            , function (param1:String) : void
            {
                _InitHomeWindow_Text2.text = param1;
                return;
            }// end function
            , "_InitHomeWindow_Text2.text");
            result[2] = binding;
            return result;
        }// end function

        private function areaRuleLabel(param1:int) : String
        {
            var _loc_2:* = areaFlags[(param1 - 1)];
            if (_loc_2.forced_faction)
            {
                return Utils.i18n("initHomeRuleAuto");
            }
            if (_loc_2.active)
            {
                return Utils.i18n("initHomeRuleSelect");
            }
            return Utils.i18n("initHomeNonActive");
        }// end function

        private function getSwf() : MovieClipLoaderAsset
        {
            if (fourByFourAreaFlag)
            {
                return swfFourByFour;
            }
            return swfThreeByThree;
        }// end function

        private function set swfThreeByThree(param1:MovieClipLoaderAsset) : void
        {
            var _loc_2:* = this._557984683swfThreeByThree;
            if (_loc_2 !== param1)
            {
                this._557984683swfThreeByThree = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "swfThreeByThree", _loc_2, param1));
            }
            return;
        }// end function

        public function set iconImage(param1:Canvas) : void
        {
            var _loc_2:* = this._1410965406iconImage;
            if (_loc_2 !== param1)
            {
                this._1410965406iconImage = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "iconImage", _loc_2, param1));
            }
            return;
        }// end function

        public function ___InitHomeWindow_Canvas1_creationComplete(event:FlexEvent) : void
        {
            init();
            return;
        }// end function

        public function get iconImage() : Canvas
        {
            return this._1410965406iconImage;
        }// end function

        private function convertPosition(param1:int) : Point
        {
            var _loc_2:int = 8;
            if (fourByFourAreaFlag)
            {
                _loc_2 = 15;
            }
            var _loc_3:int = 3;
            if (fourByFourAreaFlag)
            {
                _loc_3 = 4;
            }
            param1 = param1 - 1;
            if (param1 < 0)
            {
                param1 = 0;
            }
            else if (param1 > _loc_2)
            {
                param1 = _loc_2;
            }
            return new Point((this.int(param1 % _loc_3) + 1), (this.int(param1 / _loc_3) + 1));
        }// end function

        public function setPlayersCount(param1:Array) : void
        {
            var _loc_3:Object = null;
            var _loc_4:DisplayObject = null;
            var _loc_5:int = 0;
            var _loc_6:int = 0;
            areaFlags = param1;
            iconImage.removeAllChildren();
            var _loc_2:* = new Array();
            for each (_loc_3 in param1)
            {
                
                if (_loc_3.selectable)
                {
                    _loc_2.push(_loc_3);
                    continue;
                }
                if (fourByFourAreaFlag)
                {
                    _loc_4 = new notSelectableFourByFourImage();
                }
                else
                {
                    _loc_4 = new notSelectableThreeByThreeImage();
                }
                addDistributionImage(_loc_3, _loc_4);
            }
            if (_loc_2.length)
            {
                _loc_5 = _loc_2.length >= 6 ? (3) : (_loc_2.length / 2);
                MovieClip(Loader(swfFourByFour.getChildAt(0)).content).gotoAndPlay("w_" + _loc_2[0].area_id.toString());
                MovieClip(Loader(swfThreeByThree.getChildAt(0)).content).gotoAndPlay("w_" + _loc_2[0].area_id.toString());
                _loc_2.sortOn(["players_count", "area_id"], Array.NUMERIC);
                _loc_6 = 0;
                while (_loc_6 < _loc_2.length)
                {
                    
                    if (_loc_6 < _loc_5)
                    {
                        addDistributionImage(_loc_2[_loc_6], new underpopulatedImage());
                    }
                    else if (_loc_6 >= _loc_2.length - _loc_5)
                    {
                        addDistributionImage(_loc_2[_loc_6], new overpopulatedImage());
                    }
                    else
                    {
                        addDistributionImage(_loc_2[_loc_6], new populatedImage());
                    }
                    _loc_6++;
                }
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
