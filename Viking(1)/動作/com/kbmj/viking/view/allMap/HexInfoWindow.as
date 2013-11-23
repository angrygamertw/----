package com.kbmj.viking.view.allMap
{
    import flash.utils.*;
    import mx.binding.*;
    import mx.containers.*;
    import mx.controls.*;
    import mx.core.*;
    import mx.events.*;

    public class HexInfoWindow extends Canvas implements IBindingClient
    {
        private var _327294757topography:Label;
        var _bindingsBeginWithWord:Object;
        var _watchers:Array;
        var _bindingsByDestination:Object;
        public var _HexInfoWindow_Image1:Image;
        private var _1496785861_fourByFourAreaFlag:Boolean = false;
        private var _3446916posX:Label;
        private var _3446917posY:Label;
        private var _1591054587swfFourByFour:MovieClipLoaderAsset;
        var _bindings:Array;
        private var _557984683swfThreeByThree:MovieClipLoaderAsset;
        private var _documentDescriptor_:UIComponentDescriptor;
        private var _114306swf:MovieClipLoaderAsset;
        private static var _watcherSetupUtil:IWatcherSetupUtil;
        public static var EmbedSwfFourByFourWindowInfoMap:Class = HexInfoWindow_EmbedSwfFourByFourWindowInfoMap;
        public static var EmbedSwfThreeByThreeWindowInfoMap:Class = HexInfoWindow_EmbedSwfThreeByThreeWindowInfoMap;

        public function HexInfoWindow()
        {
            _documentDescriptor_ = new UIComponentDescriptor({type:Canvas, propertiesFactory:function () : Object
            {
                return {childDescriptors:[new UIComponentDescriptor({type:Image, id:"_HexInfoWindow_Image1"}), new UIComponentDescriptor({type:Label, id:"topography", stylesFactory:function () : void
                {
                    this.fontSize = 14;
                    this.textAlign = "center";
                    return;
                }// end function
                , propertiesFactory:function () : Object
                {
                    return {x:21, y:10, width:74};
                }// end function
                }), new UIComponentDescriptor({type:Label, stylesFactory:function () : void
                {
                    this.fontSize = 12;
                    this.textAlign = "left";
                    return;
                }// end function
                , propertiesFactory:function () : Object
                {
                    return {text:"[", x:96, y:11, width:12};
                }// end function
                }), new UIComponentDescriptor({type:Label, id:"posX", stylesFactory:function () : void
                {
                    this.fontSize = 12;
                    this.textAlign = "right";
                    return;
                }// end function
                , propertiesFactory:function () : Object
                {
                    return {x:106, y:11, width:36};
                }// end function
                }), new UIComponentDescriptor({type:Label, stylesFactory:function () : void
                {
                    this.fontSize = 12;
                    this.textAlign = "center";
                    return;
                }// end function
                , propertiesFactory:function () : Object
                {
                    return {text:"][", x:142, y:11, width:24};
                }// end function
                }), new UIComponentDescriptor({type:Label, id:"posY", stylesFactory:function () : void
                {
                    this.fontSize = 12;
                    this.textAlign = "right";
                    return;
                }// end function
                , propertiesFactory:function () : Object
                {
                    return {x:161, y:11, width:36};
                }// end function
                }), new UIComponentDescriptor({type:Label, stylesFactory:function () : void
                {
                    this.fontSize = 12;
                    this.textAlign = "left";
                    return;
                }// end function
                , propertiesFactory:function () : Object
                {
                    return {text:"]", x:200, y:11, width:12};
                }// end function
                })]};
            }// end function
            });
            _557984683swfThreeByThree = new EmbedSwfThreeByThreeWindowInfoMap();
            _1591054587swfFourByFour = new EmbedSwfFourByFourWindowInfoMap();
            _bindings = [];
            _watchers = [];
            _bindingsByDestination = {};
            _bindingsBeginWithWord = {};
            mx_internal::_document = this;
            this.x = 0;
            this.y = 256;
            this.addEventListener("creationComplete", ___HexInfoWindow_Canvas1_creationComplete);
            return;
        }// end function

        private function get swf() : MovieClipLoaderAsset
        {
            return this._114306swf;
        }// end function

        public function set posY(param1:Label) : void
        {
            var _loc_2:* = this._3446917posY;
            if (_loc_2 !== param1)
            {
                this._3446917posY = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "posY", _loc_2, param1));
            }
            return;
        }// end function

        public function get posY() : Label
        {
            return this._3446917posY;
        }// end function

        private function setSwf() : void
        {
            if (fourByFourAreaFlag)
            {
                swf = swfFourByFour;
                return;
            }
            swf = swfThreeByThree;
            return;
        }// end function

        public function set posX(param1:Label) : void
        {
            var _loc_2:* = this._3446916posX;
            if (_loc_2 !== param1)
            {
                this._3446916posX = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "posX", _loc_2, param1));
            }
            return;
        }// end function

        public function get posX() : Label
        {
            return this._3446916posX;
        }// end function

        public function set topography(param1:Label) : void
        {
            var _loc_2:* = this._327294757topography;
            if (_loc_2 !== param1)
            {
                this._327294757topography = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "topography", _loc_2, param1));
            }
            return;
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

        override public function initialize() : void
        {
            var target:HexInfoWindow;
            var watcherSetupUtilClass:Object;
            .mx_internal::setDocumentDescriptor(_documentDescriptor_);
            var bindings:* = _HexInfoWindow_bindingsSetup();
            var watchers:Array;
            target;
            if (_watcherSetupUtil == null)
            {
                watcherSetupUtilClass = getDefinitionByName("_com_kbmj_viking_view_allMap_HexInfoWindowWatcherSetupUtil");
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

        private function set swf(param1:MovieClipLoaderAsset) : void
        {
            var _loc_2:* = this._114306swf;
            if (_loc_2 !== param1)
            {
                this._114306swf = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "swf", _loc_2, param1));
            }
            return;
        }// end function

        public function get fourByFourAreaFlag() : Boolean
        {
            return _fourByFourAreaFlag;
        }// end function

        private function _HexInfoWindow_bindingExprs() : void
        {
            var _loc_1:* = undefined;
            _loc_1 = swf;
            return;
        }// end function

        public function init() : void
        {
            return;
        }// end function

        public function ___HexInfoWindow_Canvas1_creationComplete(event:FlexEvent) : void
        {
            init();
            return;
        }// end function

        private function get swfFourByFour() : MovieClipLoaderAsset
        {
            return this._1591054587swfFourByFour;
        }// end function

        private function get _fourByFourAreaFlag() : Boolean
        {
            return this._1496785861_fourByFourAreaFlag;
        }// end function

        private function _HexInfoWindow_bindingsSetup() : Array
        {
            var binding:Binding;
            var result:Array;
            binding = new Binding(this, function () : Object
            {
                return swf;
            }// end function
            , function (param1:Object) : void
            {
                _HexInfoWindow_Image1.source = param1;
                return;
            }// end function
            , "_HexInfoWindow_Image1.source");
            result[0] = binding;
            return result;
        }// end function

        private function get swfThreeByThree() : MovieClipLoaderAsset
        {
            return this._557984683swfThreeByThree;
        }// end function

        private function set _fourByFourAreaFlag(param1:Boolean) : void
        {
            var _loc_2:* = this._1496785861_fourByFourAreaFlag;
            if (_loc_2 !== param1)
            {
                this._1496785861_fourByFourAreaFlag = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "_fourByFourAreaFlag", _loc_2, param1));
            }
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

        public function get topography() : Label
        {
            return this._327294757topography;
        }// end function

        public function set fourByFourAreaFlag(param1:Boolean) : void
        {
            _fourByFourAreaFlag = param1;
            setSwf();
            return;
        }// end function

        public static function set watcherSetupUtil(param1:IWatcherSetupUtil) : void
        {
            _watcherSetupUtil = param1;
            return;
        }// end function

    }
}
