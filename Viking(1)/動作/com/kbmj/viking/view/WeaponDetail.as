package com.kbmj.viking.view
{
    import flash.display.*;
    import flash.events.*;
    import flash.utils.*;
    import mx.binding.*;
    import mx.containers.*;
    import mx.controls.*;
    import mx.core.*;
    import mx.events.*;
    import mx.managers.*;

    public class WeaponDetail extends Canvas implements IBindingClient
    {
        public var _WeaponDetail_Text1:Text;
        public var _WeaponDetail_Text2:Text;
        public var _WeaponDetail_Text3:Text;
        public var _WeaponDetail_Text4:Text;
        public var _WeaponDetail_Text5:Text;
        public var _WeaponDetail_Text6:Text;
        public var _WeaponDetail_Text7:Text;
        public var _WeaponDetail_Text8:Text;
        public var _WeaponDetail_Text9:Text;
        private var _53491977detailCanvas:Canvas;
        private var _1075873300_swf_window:MovieClipLoaderAsset;
        var _watchers:Array;
        private var EmbedSwfWindowCommon:Class;
        private var _1896677185windowLayer:Canvas;
        public var _WeaponDetail_Text10:Text;
        public var _WeaponDetail_Text11:Text;
        public var _WeaponDetail_Text12:Text;
        public var _WeaponDetail_Text13:Text;
        public var _WeaponDetail_Text14:Text;
        public var _WeaponDetail_Text15:Text;
        public var _WeaponDetail_Text16:Text;
        public var _WeaponDetail_Text17:Text;
        public var _WeaponDetail_Text18:Text;
        public var _WeaponDetail_Text19:Text;
        var _bindingsByDestination:Object;
        private var _viewData:Object;
        private var _embed_mxml__images_base_st_icon_battle_png_722824843:Class;
        private var _1193840764_swf_close:MovieClipLoaderAsset;
        var _bindingsBeginWithWord:Object;
        private var EmbedSwfButtonCommon:Class;
        public var _WeaponDetail_Image1:Image;
        public var _WeaponDetail_Image2:Image;
        var _bindings:Array;
        public var _WeaponDetail_Label1:Label;
        private var _documentDescriptor_:UIComponentDescriptor;
        private var _1777504961buttonLayer:Canvas;
        private static var _watcherSetupUtil:IWatcherSetupUtil;

        public function WeaponDetail()
        {
            _documentDescriptor_ = new UIComponentDescriptor({type:Canvas, propertiesFactory:function () : Object
            {
                return {childDescriptors:[new UIComponentDescriptor({type:Canvas, id:"windowLayer"}), new UIComponentDescriptor({type:Image, id:"_WeaponDetail_Image1"}), new UIComponentDescriptor({type:Image, id:"_WeaponDetail_Image2", propertiesFactory:function () : Object
                {
                    return {x:325, y:490};
                }// end function
                }), new UIComponentDescriptor({type:Box, propertiesFactory:function () : Object
                {
                    return {width:500, height:450, x:150, y:150, childDescriptors:[new UIComponentDescriptor({type:Canvas, id:"detailCanvas", propertiesFactory:function () : Object
                    {
                        return {childDescriptors:[new UIComponentDescriptor({type:Image, propertiesFactory:function () : Object
                        {
                            return {source:_embed_mxml__images_base_st_icon_battle_png_722824843, x:35};
                        }// end function
                        }), new UIComponentDescriptor({type:Label, id:"_WeaponDetail_Label1", propertiesFactory:function () : Object
                        {
                            return {styleName:"ItemDetailLabel", x:60, y:4};
                        }// end function
                        }), new UIComponentDescriptor({type:Text, id:"_WeaponDetail_Text1", propertiesFactory:function () : Object
                        {
                            return {styleName:"ItemDetail", width:450, x:40, y:34};
                        }// end function
                        }), new UIComponentDescriptor({type:Text, id:"_WeaponDetail_Text2", stylesFactory:function () : void
                        {
                            this.textAlign = "left";
                            return;
                        }// end function
                        , propertiesFactory:function () : Object
                        {
                            return {styleName:"ItemDetailText", width:80, x:98, y:75};
                        }// end function
                        }), new UIComponentDescriptor({type:Text, id:"_WeaponDetail_Text3", stylesFactory:function () : void
                        {
                            this.textAlign = "center";
                            return;
                        }// end function
                        , propertiesFactory:function () : Object
                        {
                            return {styleName:"ItemDetailText", x:85, y:98, width:50};
                        }// end function
                        }), new UIComponentDescriptor({type:Text, id:"_WeaponDetail_Text4", stylesFactory:function () : void
                        {
                            this.textAlign = "center";
                            return;
                        }// end function
                        , propertiesFactory:function () : Object
                        {
                            return {styleName:"ItemDetailText", x:181, y:98, width:50};
                        }// end function
                        }), new UIComponentDescriptor({type:Text, id:"_WeaponDetail_Text5", stylesFactory:function () : void
                        {
                            this.textAlign = "center";
                            return;
                        }// end function
                        , propertiesFactory:function () : Object
                        {
                            return {styleName:"ItemDetailText", x:273, y:98, width:50};
                        }// end function
                        }), new UIComponentDescriptor({type:Text, id:"_WeaponDetail_Text6", stylesFactory:function () : void
                        {
                            this.textAlign = "center";
                            return;
                        }// end function
                        , propertiesFactory:function () : Object
                        {
                            return {styleName:"ItemDetailText", x:369, y:98, width:50};
                        }// end function
                        }), new UIComponentDescriptor({type:Text, id:"_WeaponDetail_Text7", stylesFactory:function () : void
                        {
                            this.textAlign = "center";
                            return;
                        }// end function
                        , propertiesFactory:function () : Object
                        {
                            return {styleName:"ItemDetailText", x:85, y:120, width:50};
                        }// end function
                        }), new UIComponentDescriptor({type:Text, id:"_WeaponDetail_Text8", stylesFactory:function () : void
                        {
                            this.textAlign = "center";
                            return;
                        }// end function
                        , propertiesFactory:function () : Object
                        {
                            return {styleName:"ItemDetailText", x:181, y:120, width:50};
                        }// end function
                        }), new UIComponentDescriptor({type:Text, id:"_WeaponDetail_Text9", stylesFactory:function () : void
                        {
                            this.textAlign = "center";
                            return;
                        }// end function
                        , propertiesFactory:function () : Object
                        {
                            return {styleName:"ItemDetailText", x:273, y:120, width:50};
                        }// end function
                        }), new UIComponentDescriptor({type:Text, id:"_WeaponDetail_Text10", stylesFactory:function () : void
                        {
                            this.textAlign = "center";
                            return;
                        }// end function
                        , propertiesFactory:function () : Object
                        {
                            return {styleName:"ItemDetailText", x:369, y:120, width:50};
                        }// end function
                        }), new UIComponentDescriptor({type:Text, id:"_WeaponDetail_Text11", stylesFactory:function () : void
                        {
                            this.textAlign = "center";
                            return;
                        }// end function
                        , propertiesFactory:function () : Object
                        {
                            return {styleName:"ItemDetailText", x:72, y:154, width:50};
                        }// end function
                        }), new UIComponentDescriptor({type:Text, id:"_WeaponDetail_Text12", stylesFactory:function () : void
                        {
                            this.textAlign = "center";
                            return;
                        }// end function
                        , propertiesFactory:function () : Object
                        {
                            return {styleName:"ItemDetailText", x:149, y:154, width:50};
                        }// end function
                        }), new UIComponentDescriptor({type:Text, id:"_WeaponDetail_Text13", stylesFactory:function () : void
                        {
                            this.textAlign = "center";
                            return;
                        }// end function
                        , propertiesFactory:function () : Object
                        {
                            return {styleName:"ItemDetailText", x:225, y:154, width:50};
                        }// end function
                        }), new UIComponentDescriptor({type:Text, id:"_WeaponDetail_Text14", stylesFactory:function () : void
                        {
                            this.textAlign = "center";
                            return;
                        }// end function
                        , propertiesFactory:function () : Object
                        {
                            return {styleName:"ItemDetailText", x:301, y:154, width:50};
                        }// end function
                        }), new UIComponentDescriptor({type:Text, id:"_WeaponDetail_Text15", stylesFactory:function () : void
                        {
                            this.textAlign = "center";
                            return;
                        }// end function
                        , propertiesFactory:function () : Object
                        {
                            return {styleName:"ItemDetailText", x:377, y:154, width:50};
                        }// end function
                        }), new UIComponentDescriptor({type:Text, id:"_WeaponDetail_Text16", stylesFactory:function () : void
                        {
                            this.textAlign = "center";
                            return;
                        }// end function
                        , propertiesFactory:function () : Object
                        {
                            return {styleName:"ItemDetailText", x:72, y:176, width:50};
                        }// end function
                        }), new UIComponentDescriptor({type:Text, id:"_WeaponDetail_Text17", stylesFactory:function () : void
                        {
                            this.textAlign = "center";
                            return;
                        }// end function
                        , propertiesFactory:function () : Object
                        {
                            return {styleName:"ItemDetailText", x:149, y:176, width:50};
                        }// end function
                        }), new UIComponentDescriptor({type:Text, id:"_WeaponDetail_Text18", stylesFactory:function () : void
                        {
                            this.textAlign = "left";
                            return;
                        }// end function
                        , propertiesFactory:function () : Object
                        {
                            return {styleName:"ItemDetailText", x:270, y:175, width:200};
                        }// end function
                        }), new UIComponentDescriptor({type:Text, id:"_WeaponDetail_Text19", stylesFactory:function () : void
                        {
                            this.textAlign = "left";
                            return;
                        }// end function
                        , propertiesFactory:function () : Object
                        {
                            return {styleName:"ItemDetailText", x:46, y:235, width:370};
                        }// end function
                        }), new UIComponentDescriptor({type:Canvas, id:"buttonLayer", propertiesFactory:function () : Object
                        {
                            return {y:335, x:185};
                        }// end function
                        })]};
                    }// end function
                    })]};
                }// end function
                })]};
            }// end function
            });
            EmbedSwfButtonCommon = WeaponDetail_EmbedSwfButtonCommon;
            EmbedSwfWindowCommon = WeaponDetail_EmbedSwfWindowCommon;
            _1193840764_swf_close = new EmbedSwfButtonCommon();
            _1075873300_swf_window = new EmbedSwfWindowCommon();
            _embed_mxml__images_base_st_icon_battle_png_722824843 = WeaponDetail__embed_mxml__images_base_st_icon_battle_png_722824843;
            _bindings = [];
            _watchers = [];
            _bindingsByDestination = {};
            _bindingsBeginWithWord = {};
            mx_internal::_document = this;
            this.addEventListener("creationComplete", ___WeaponDetail_Canvas1_creationComplete);
            return;
        }// end function

        public function get detailCanvas() : Canvas
        {
            return this._53491977detailCanvas;
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

        private function set _1195361263viewData(param1:Object) : void
        {
            _viewData = param1;
            return;
        }// end function

        override public function initialize() : void
        {
            var target:WeaponDetail;
            var watcherSetupUtilClass:Object;
            .mx_internal::setDocumentDescriptor(_documentDescriptor_);
            var bindings:* = _WeaponDetail_bindingsSetup();
            var watchers:Array;
            target;
            if (_watcherSetupUtil == null)
            {
                watcherSetupUtilClass = getDefinitionByName("_com_kbmj_viking_view_WeaponDetailWatcherSetupUtil");
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

        public function set detailCanvas(param1:Canvas) : void
        {
            var _loc_2:* = this._53491977detailCanvas;
            if (_loc_2 !== param1)
            {
                this._53491977detailCanvas = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "detailCanvas", _loc_2, param1));
            }
            return;
        }// end function

        private function _WeaponDetail_bindingsSetup() : Array
        {
            var binding:Binding;
            var result:Array;
            binding = new Binding(this, function () : Object
            {
                return _swf_window;
            }// end function
            , function (param1:Object) : void
            {
                _WeaponDetail_Image1.source = param1;
                return;
            }// end function
            , "_WeaponDetail_Image1.source");
            result[0] = binding;
            binding = new Binding(this, function () : Object
            {
                return _swf_close;
            }// end function
            , function (param1:Object) : void
            {
                _WeaponDetail_Image2.source = param1;
                return;
            }// end function
            , "_WeaponDetail_Image2.source");
            result[1] = binding;
            binding = new Binding(this, function () : String
            {
                var _loc_1:* = viewData.nameLabel;
                var _loc_2:* = _loc_1 == undefined ? (null) : (String(_loc_1));
                return _loc_2;
            }// end function
            , function (param1:String) : void
            {
                _WeaponDetail_Label1.text = param1;
                return;
            }// end function
            , "_WeaponDetail_Label1.text");
            result[2] = binding;
            binding = new Binding(this, function () : String
            {
                var _loc_1:* = viewData.description;
                var _loc_2:* = _loc_1 == undefined ? (null) : (String(_loc_1));
                return _loc_2;
            }// end function
            , function (param1:String) : void
            {
                _WeaponDetail_Text1.text = param1;
                return;
            }// end function
            , "_WeaponDetail_Text1.text");
            result[3] = binding;
            binding = new Binding(this, function () : String
            {
                var _loc_1:* = viewData.hasOwnProperty("endurance") ? (viewData.endurance) : (" - ");
                var _loc_2:* = _loc_1 == undefined ? (null) : (String(_loc_1));
                return _loc_2;
            }// end function
            , function (param1:String) : void
            {
                _WeaponDetail_Text2.text = param1;
                return;
            }// end function
            , "_WeaponDetail_Text2.text");
            result[4] = binding;
            binding = new Binding(this, function () : String
            {
                var _loc_1:* = viewData.hasOwnProperty("damage") ? (viewData.damage) : (" - ");
                var _loc_2:* = _loc_1 == undefined ? (null) : (String(_loc_1));
                return _loc_2;
            }// end function
            , function (param1:String) : void
            {
                _WeaponDetail_Text3.text = param1;
                return;
            }// end function
            , "_WeaponDetail_Text3.text");
            result[5] = binding;
            binding = new Binding(this, function () : String
            {
                var _loc_1:* = viewData.hasOwnProperty("hit") ? (viewData.hit) : (" - ");
                var _loc_2:* = _loc_1 == undefined ? (null) : (String(_loc_1));
                return _loc_2;
            }// end function
            , function (param1:String) : void
            {
                _WeaponDetail_Text4.text = param1;
                return;
            }// end function
            , "_WeaponDetail_Text4.text");
            result[6] = binding;
            binding = new Binding(this, function () : String
            {
                var _loc_1:* = viewData.hasOwnProperty("attackRange") ? (viewData.attackRange) : (" - ");
                var _loc_2:* = _loc_1 == undefined ? (null) : (String(_loc_1));
                return _loc_2;
            }// end function
            , function (param1:String) : void
            {
                _WeaponDetail_Text5.text = param1;
                return;
            }// end function
            , "_WeaponDetail_Text5.text");
            result[7] = binding;
            binding = new Binding(this, function () : String
            {
                var _loc_1:* = viewData.hasOwnProperty("attackRangeMin") ? (viewData.attackRangeMin + "～" + viewData.attackRangeMax) : (" - ");
                var _loc_2:* = _loc_1 == undefined ? (null) : (String(_loc_1));
                return _loc_2;
            }// end function
            , function (param1:String) : void
            {
                _WeaponDetail_Text6.text = param1;
                return;
            }// end function
            , "_WeaponDetail_Text6.text");
            result[8] = binding;
            binding = new Binding(this, function () : String
            {
                var _loc_1:* = viewData.hasOwnProperty("physicalDefense") ? (viewData.physicalDefense) : (" - ");
                var _loc_2:* = _loc_1 == undefined ? (null) : (String(_loc_1));
                return _loc_2;
            }// end function
            , function (param1:String) : void
            {
                _WeaponDetail_Text7.text = param1;
                return;
            }// end function
            , "_WeaponDetail_Text7.text");
            result[9] = binding;
            binding = new Binding(this, function () : String
            {
                var _loc_1:* = viewData.hasOwnProperty("magicalDefense") ? (viewData.magicalDefense) : (" - ");
                var _loc_2:* = _loc_1 == undefined ? (null) : (String(_loc_1));
                return _loc_2;
            }// end function
            , function (param1:String) : void
            {
                _WeaponDetail_Text8.text = param1;
                return;
            }// end function
            , "_WeaponDetail_Text8.text");
            result[10] = binding;
            binding = new Binding(this, function () : String
            {
                var _loc_1:* = viewData.hasOwnProperty("avoidance") ? (viewData.avoidance) : (" - ");
                var _loc_2:* = _loc_1 == undefined ? (null) : (String(_loc_1));
                return _loc_2;
            }// end function
            , function (param1:String) : void
            {
                _WeaponDetail_Text9.text = param1;
                return;
            }// end function
            , "_WeaponDetail_Text9.text");
            result[11] = binding;
            binding = new Binding(this, function () : String
            {
                var _loc_1:* = viewData.hasOwnProperty("rank") ? (viewData.rank) : (" - ");
                var _loc_2:* = _loc_1 == undefined ? (null) : (String(_loc_1));
                return _loc_2;
            }// end function
            , function (param1:String) : void
            {
                _WeaponDetail_Text10.text = param1;
                return;
            }// end function
            , "_WeaponDetail_Text10.text");
            result[12] = binding;
            binding = new Binding(this, function () : String
            {
                var _loc_1:* = viewData.strength;
                var _loc_2:* = _loc_1 == undefined ? (null) : (String(_loc_1));
                return _loc_2;
            }// end function
            , function (param1:String) : void
            {
                _WeaponDetail_Text11.text = param1;
                return;
            }// end function
            , "_WeaponDetail_Text11.text");
            result[13] = binding;
            binding = new Binding(this, function () : String
            {
                var _loc_1:* = viewData.intelligence;
                var _loc_2:* = _loc_1 == undefined ? (null) : (String(_loc_1));
                return _loc_2;
            }// end function
            , function (param1:String) : void
            {
                _WeaponDetail_Text12.text = param1;
                return;
            }// end function
            , "_WeaponDetail_Text12.text");
            result[14] = binding;
            binding = new Binding(this, function () : String
            {
                var _loc_1:* = viewData.tech;
                var _loc_2:* = _loc_1 == undefined ? (null) : (String(_loc_1));
                return _loc_2;
            }// end function
            , function (param1:String) : void
            {
                _WeaponDetail_Text13.text = param1;
                return;
            }// end function
            , "_WeaponDetail_Text13.text");
            result[15] = binding;
            binding = new Binding(this, function () : String
            {
                var _loc_1:* = viewData.defense;
                var _loc_2:* = _loc_1 == undefined ? (null) : (String(_loc_1));
                return _loc_2;
            }// end function
            , function (param1:String) : void
            {
                _WeaponDetail_Text14.text = param1;
                return;
            }// end function
            , "_WeaponDetail_Text14.text");
            result[16] = binding;
            binding = new Binding(this, function () : String
            {
                var _loc_1:* = viewData.agility;
                var _loc_2:* = _loc_1 == undefined ? (null) : (String(_loc_1));
                return _loc_2;
            }// end function
            , function (param1:String) : void
            {
                _WeaponDetail_Text15.text = param1;
                return;
            }// end function
            , "_WeaponDetail_Text15.text");
            result[17] = binding;
            binding = new Binding(this, function () : String
            {
                var _loc_1:* = viewData.luck;
                var _loc_2:* = _loc_1 == undefined ? (null) : (String(_loc_1));
                return _loc_2;
            }// end function
            , function (param1:String) : void
            {
                _WeaponDetail_Text16.text = param1;
                return;
            }// end function
            , "_WeaponDetail_Text16.text");
            result[18] = binding;
            binding = new Binding(this, function () : String
            {
                var _loc_1:* = viewData.maxHp;
                var _loc_2:* = _loc_1 == undefined ? (null) : (String(_loc_1));
                return _loc_2;
            }// end function
            , function (param1:String) : void
            {
                _WeaponDetail_Text17.text = param1;
                return;
            }// end function
            , "_WeaponDetail_Text17.text");
            result[19] = binding;
            binding = new Binding(this, function () : String
            {
                var _loc_1:* = viewData.skill ? (viewData.skill.nameLabel) : (" - ");
                var _loc_2:* = _loc_1 == undefined ? (null) : (String(_loc_1));
                return _loc_2;
            }// end function
            , function (param1:String) : void
            {
                _WeaponDetail_Text18.text = param1;
                return;
            }// end function
            , "_WeaponDetail_Text18.text");
            result[20] = binding;
            binding = new Binding(this, function () : String
            {
                var _loc_1:* = viewData.equipabilityJobNameLabel;
                var _loc_2:* = _loc_1 == undefined ? (null) : (String(_loc_1));
                return _loc_2;
            }// end function
            , function (param1:String) : void
            {
                _WeaponDetail_Text19.text = param1;
                return;
            }// end function
            , "_WeaponDetail_Text19.text");
            result[21] = binding;
            return result;
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

        public function ___WeaponDetail_Canvas1_creationComplete(event:FlexEvent) : void
        {
            init();
            return;
        }// end function

        private function init() : void
        {
            Loader(_swf_close.getChildAt(0)).content.addEventListener("BUTTON_CLOSE", function (event:Event) : void
            {
                buttonClick();
                return;
            }// end function
            );
            MovieClip(Loader(_swf_close.getChildAt(0)).content).gotoAndPlay("button_close");
            detailCanvas.visible = false;
            Loader(_swf_window.getChildAt(0)).content.addEventListener("ENLARGE_END", function (event:Event) : void
            {
                detailCanvas.visible = true;
                return;
            }// end function
            );
            MovieClip(Loader(_swf_window.getChildAt(0)).content).gotoAndPlay("center_400x460");
            return;
        }// end function

        public function get windowLayer() : Canvas
        {
            return this._1896677185windowLayer;
        }// end function

        public function get buttonLayer() : Canvas
        {
            return this._1777504961buttonLayer;
        }// end function

        private function set _swf_window(param1:MovieClipLoaderAsset) : void
        {
            var _loc_2:* = this._1075873300_swf_window;
            if (_loc_2 !== param1)
            {
                this._1075873300_swf_window = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "_swf_window", _loc_2, param1));
            }
            return;
        }// end function

        public function set viewData(param1:Object) : void
        {
            var _loc_2:* = this.viewData;
            if (_loc_2 !== param1)
            {
                this._1195361263viewData = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "viewData", _loc_2, param1));
            }
            return;
        }// end function

        public function get viewData() : Object
        {
            return _viewData;
        }// end function

        private function _WeaponDetail_bindingExprs() : void
        {
            var _loc_1:* = undefined;
            _loc_1 = _swf_window;
            _loc_1 = _swf_close;
            _loc_1 = viewData.nameLabel;
            _loc_1 = viewData.description;
            _loc_1 = viewData.hasOwnProperty("endurance") ? (viewData.endurance) : (" - ");
            _loc_1 = viewData.hasOwnProperty("damage") ? (viewData.damage) : (" - ");
            _loc_1 = viewData.hasOwnProperty("hit") ? (viewData.hit) : (" - ");
            _loc_1 = viewData.hasOwnProperty("attackRange") ? (viewData.attackRange) : (" - ");
            _loc_1 = viewData.hasOwnProperty("attackRangeMin") ? (viewData.attackRangeMin + "～" + viewData.attackRangeMax) : (" - ");
            _loc_1 = viewData.hasOwnProperty("physicalDefense") ? (viewData.physicalDefense) : (" - ");
            _loc_1 = viewData.hasOwnProperty("magicalDefense") ? (viewData.magicalDefense) : (" - ");
            _loc_1 = viewData.hasOwnProperty("avoidance") ? (viewData.avoidance) : (" - ");
            _loc_1 = viewData.hasOwnProperty("rank") ? (viewData.rank) : (" - ");
            _loc_1 = viewData.strength;
            _loc_1 = viewData.intelligence;
            _loc_1 = viewData.tech;
            _loc_1 = viewData.defense;
            _loc_1 = viewData.agility;
            _loc_1 = viewData.luck;
            _loc_1 = viewData.maxHp;
            _loc_1 = viewData.skill ? (viewData.skill.nameLabel) : (" - ");
            _loc_1 = viewData.equipabilityJobNameLabel;
            return;
        }// end function

        private function set _swf_close(param1:MovieClipLoaderAsset) : void
        {
            var _loc_2:* = this._1193840764_swf_close;
            if (_loc_2 !== param1)
            {
                this._1193840764_swf_close = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "_swf_close", _loc_2, param1));
            }
            return;
        }// end function

        private function get _swf_window() : MovieClipLoaderAsset
        {
            return this._1075873300_swf_window;
        }// end function

        private function get _swf_close() : MovieClipLoaderAsset
        {
            return this._1193840764_swf_close;
        }// end function

        public function buttonClick() : void
        {
            MovieClip(Loader(_swf_close.getChildAt(0)).content).gotoAndPlay(0);
            MovieClip(Loader(_swf_close.getChildAt(0)).content).gotoAndPlay("button_close");
            MovieClip(Loader(_swf_window.getChildAt(0)).content).gotoAndPlay(0);
            MovieClip(Loader(_swf_window.getChildAt(0)).content).gotoAndPlay("center_400x460");
            PopUpManager.removePopUp(this);
            return;
        }// end function

        public static function set watcherSetupUtil(param1:IWatcherSetupUtil) : void
        {
            WeaponDetail._watcherSetupUtil = param1;
            return;
        }// end function

    }
}
