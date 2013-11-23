package com.kbmj.viking.view
{
    import com.kbmj.viking.lib.*;
    import com.kbmj.viking.vo.*;
    import flash.utils.*;
    import mx.binding.*;
    import mx.containers.*;
    import mx.controls.*;
    import mx.core.*;
    import mx.events.*;

    public class ProductionInfoWindow extends Canvas implements IBindingClient
    {
        private var _embed_mxml__swf_home_icon_icon_spirit_of_fire_swf_2016936201:Class;
        private var _1879273818playerVO:PlayerVO;
        private var _embed_mxml__swf_home_icon_icon_spirit_of_earth_swf_844085:Class;
        var _watchers:Array;
        private var _embed_mxml__swf_home_unit_status_icon_icon_silver_swf_879798309:Class;
        private var _embed_mxml__swf_home_icon_icon_spirit_of_water_swf_2094276307:Class;
        var _bindingsByDestination:Object;
        var _bindingsBeginWithWord:Object;
        public var _ProductionInfoWindow_Image1:Image;
        public var _ProductionInfoWindow_Image2:Image;
        public var _ProductionInfoWindow_Image4:Image;
        public var _ProductionInfoWindow_Label2:Label;
        public var _ProductionInfoWindow_Image3:Image;
        public var _ProductionInfoWindow_Label4:Label;
        public var _ProductionInfoWindow_Label5:Label;
        public var _ProductionInfoWindow_Label6:Label;
        public var _ProductionInfoWindow_Label7:Label;
        public var _ProductionInfoWindow_Label1:Label;
        public var _ProductionInfoWindow_Label3:Label;
        public var _ProductionInfoWindow_Label8:Label;
        private var _documentDescriptor_:UIComponentDescriptor;
        var _bindings:Array;
        private static var _watcherSetupUtil:IWatcherSetupUtil;

        public function ProductionInfoWindow()
        {
            _documentDescriptor_ = new UIComponentDescriptor({type:Canvas, propertiesFactory:function () : Object
            {
                return {childDescriptors:[new UIComponentDescriptor({type:Canvas, stylesFactory:function () : void
                {
                    this.fontSize = 12;
                    this.color = 4404528;
                    return;
                }// end function
                , propertiesFactory:function () : Object
                {
                    return {x:0, y:0, height:96, width:300, childDescriptors:[new UIComponentDescriptor({type:Canvas, propertiesFactory:function () : Object
                    {
                        return {x:5, y:1, childDescriptors:[new UIComponentDescriptor({type:Image, id:"_ProductionInfoWindow_Image1", propertiesFactory:function () : Object
                        {
                            return {source:_embed_mxml__swf_home_unit_status_icon_icon_silver_swf_879798309, x:0, y:1};
                        }// end function
                        }), new UIComponentDescriptor({type:Label, id:"_ProductionInfoWindow_Label1", stylesFactory:function () : void
                        {
                            this.textAlign = "left";
                            return;
                        }// end function
                        , propertiesFactory:function () : Object
                        {
                            return {x:19, y:0};
                        }// end function
                        }), new UIComponentDescriptor({type:Label, id:"_ProductionInfoWindow_Label2", stylesFactory:function () : void
                        {
                            this.color = 15425792;
                            this.textAlign = "left";
                            return;
                        }// end function
                        , propertiesFactory:function () : Object
                        {
                            return {x:56, y:0};
                        }// end function
                        })]};
                    }// end function
                    }), new UIComponentDescriptor({type:Canvas, propertiesFactory:function () : Object
                    {
                        return {x:110, y:1, childDescriptors:[new UIComponentDescriptor({type:Image, id:"_ProductionInfoWindow_Image2", propertiesFactory:function () : Object
                        {
                            return {source:_embed_mxml__swf_home_icon_icon_spirit_of_fire_swf_2016936201, x:0, y:1};
                        }// end function
                        }), new UIComponentDescriptor({type:Label, id:"_ProductionInfoWindow_Label3", stylesFactory:function () : void
                        {
                            this.textAlign = "left";
                            return;
                        }// end function
                        , propertiesFactory:function () : Object
                        {
                            return {x:19, y:0};
                        }// end function
                        }), new UIComponentDescriptor({type:Label, id:"_ProductionInfoWindow_Label4", stylesFactory:function () : void
                        {
                            this.color = 15425792;
                            this.textAlign = "left";
                            return;
                        }// end function
                        , propertiesFactory:function () : Object
                        {
                            return {x:56, y:0};
                        }// end function
                        })]};
                    }// end function
                    }), new UIComponentDescriptor({type:Canvas, propertiesFactory:function () : Object
                    {
                        return {x:5, y:25, childDescriptors:[new UIComponentDescriptor({type:Image, id:"_ProductionInfoWindow_Image3", propertiesFactory:function () : Object
                        {
                            return {source:_embed_mxml__swf_home_icon_icon_spirit_of_earth_swf_844085, x:0, y:1};
                        }// end function
                        }), new UIComponentDescriptor({type:Label, id:"_ProductionInfoWindow_Label5", stylesFactory:function () : void
                        {
                            this.textAlign = "left";
                            return;
                        }// end function
                        , propertiesFactory:function () : Object
                        {
                            return {x:19, y:0};
                        }// end function
                        }), new UIComponentDescriptor({type:Label, id:"_ProductionInfoWindow_Label6", stylesFactory:function () : void
                        {
                            this.color = 15425792;
                            this.textAlign = "left";
                            return;
                        }// end function
                        , propertiesFactory:function () : Object
                        {
                            return {x:56, y:0};
                        }// end function
                        })]};
                    }// end function
                    }), new UIComponentDescriptor({type:Canvas, propertiesFactory:function () : Object
                    {
                        return {x:110, y:25, childDescriptors:[new UIComponentDescriptor({type:Image, id:"_ProductionInfoWindow_Image4", propertiesFactory:function () : Object
                        {
                            return {source:_embed_mxml__swf_home_icon_icon_spirit_of_water_swf_2094276307, x:0, y:1};
                        }// end function
                        }), new UIComponentDescriptor({type:Label, id:"_ProductionInfoWindow_Label7", stylesFactory:function () : void
                        {
                            this.textAlign = "left";
                            return;
                        }// end function
                        , propertiesFactory:function () : Object
                        {
                            return {x:19, y:0};
                        }// end function
                        }), new UIComponentDescriptor({type:Label, id:"_ProductionInfoWindow_Label8", stylesFactory:function () : void
                        {
                            this.color = 15425792;
                            this.textAlign = "left";
                            return;
                        }// end function
                        , propertiesFactory:function () : Object
                        {
                            return {x:56, y:0};
                        }// end function
                        })]};
                    }// end function
                    })]};
                }// end function
                })]};
            }// end function
            });
            _embed_mxml__swf_home_icon_icon_spirit_of_earth_swf_844085 = ProductionInfoWindow__embed_mxml__swf_home_icon_icon_spirit_of_earth_swf_844085;
            _embed_mxml__swf_home_icon_icon_spirit_of_fire_swf_2016936201 = ProductionInfoWindow__embed_mxml__swf_home_icon_icon_spirit_of_fire_swf_2016936201;
            _embed_mxml__swf_home_icon_icon_spirit_of_water_swf_2094276307 = ProductionInfoWindow__embed_mxml__swf_home_icon_icon_spirit_of_water_swf_2094276307;
            _embed_mxml__swf_home_unit_status_icon_icon_silver_swf_879798309 = ProductionInfoWindow__embed_mxml__swf_home_unit_status_icon_icon_silver_swf_879798309;
            _bindings = [];
            _watchers = [];
            _bindingsByDestination = {};
            _bindingsBeginWithWord = {};
            mx_internal::_document = this;
            return;
        }// end function

        override public function initialize() : void
        {
            var target:ProductionInfoWindow;
            var watcherSetupUtilClass:Object;
            .mx_internal::setDocumentDescriptor(_documentDescriptor_);
            var bindings:* = _ProductionInfoWindow_bindingsSetup();
            var watchers:Array;
            target;
            if (_watcherSetupUtil == null)
            {
                watcherSetupUtilClass = getDefinitionByName("_com_kbmj_viking_view_ProductionInfoWindowWatcherSetupUtil");
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

        public function set playerVO(param1:PlayerVO) : void
        {
            var _loc_2:* = this._1879273818playerVO;
            if (_loc_2 !== param1)
            {
                this._1879273818playerVO = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "playerVO", _loc_2, param1));
            }
            return;
        }// end function

        public function get playerVO() : PlayerVO
        {
            return this._1879273818playerVO;
        }// end function

        private function _ProductionInfoWindow_bindingsSetup() : Array
        {
            var binding:Binding;
            var result:Array;
            binding = new Binding(this, function () : String
            {
                var _loc_1:* = Utils.i18n("generalSilver");
                var _loc_2:* = _loc_1 == undefined ? (null) : (String(_loc_1));
                return _loc_2;
            }// end function
            , function (param1:String) : void
            {
                _ProductionInfoWindow_Image1.toolTip = param1;
                return;
            }// end function
            , "_ProductionInfoWindow_Image1.toolTip");
            result[0] = binding;
            binding = new Binding(this, function () : String
            {
                var _loc_1:* = playerVO.silver;
                var _loc_2:* = _loc_1 == undefined ? (null) : (String(_loc_1));
                return _loc_2;
            }// end function
            , function (param1:String) : void
            {
                _ProductionInfoWindow_Label1.text = param1;
                return;
            }// end function
            , "_ProductionInfoWindow_Label1.text");
            result[1] = binding;
            binding = new Binding(this, function () : String
            {
                var _loc_1:* = "+" + playerVO.silverOutput;
                var _loc_2:* = _loc_1 == undefined ? (null) : (String(_loc_1));
                return _loc_2;
            }// end function
            , function (param1:String) : void
            {
                _ProductionInfoWindow_Label2.text = param1;
                return;
            }// end function
            , "_ProductionInfoWindow_Label2.text");
            result[2] = binding;
            binding = new Binding(this, function () : String
            {
                var _loc_1:* = Utils.i18n("generalSpiritOfFire");
                var _loc_2:* = _loc_1 == undefined ? (null) : (String(_loc_1));
                return _loc_2;
            }// end function
            , function (param1:String) : void
            {
                _ProductionInfoWindow_Image2.toolTip = param1;
                return;
            }// end function
            , "_ProductionInfoWindow_Image2.toolTip");
            result[3] = binding;
            binding = new Binding(this, function () : String
            {
                var _loc_1:* = playerVO.spiritOfFire;
                var _loc_2:* = _loc_1 == undefined ? (null) : (String(_loc_1));
                return _loc_2;
            }// end function
            , function (param1:String) : void
            {
                _ProductionInfoWindow_Label3.text = param1;
                return;
            }// end function
            , "_ProductionInfoWindow_Label3.text");
            result[4] = binding;
            binding = new Binding(this, function () : String
            {
                var _loc_1:* = "+" + playerVO.spiritOfFireOutput;
                var _loc_2:* = _loc_1 == undefined ? (null) : (String(_loc_1));
                return _loc_2;
            }// end function
            , function (param1:String) : void
            {
                _ProductionInfoWindow_Label4.text = param1;
                return;
            }// end function
            , "_ProductionInfoWindow_Label4.text");
            result[5] = binding;
            binding = new Binding(this, function () : String
            {
                var _loc_1:* = Utils.i18n("generalSpiritOfEarth");
                var _loc_2:* = _loc_1 == undefined ? (null) : (String(_loc_1));
                return _loc_2;
            }// end function
            , function (param1:String) : void
            {
                _ProductionInfoWindow_Image3.toolTip = param1;
                return;
            }// end function
            , "_ProductionInfoWindow_Image3.toolTip");
            result[6] = binding;
            binding = new Binding(this, function () : String
            {
                var _loc_1:* = playerVO.spiritOfEarth;
                var _loc_2:* = _loc_1 == undefined ? (null) : (String(_loc_1));
                return _loc_2;
            }// end function
            , function (param1:String) : void
            {
                _ProductionInfoWindow_Label5.text = param1;
                return;
            }// end function
            , "_ProductionInfoWindow_Label5.text");
            result[7] = binding;
            binding = new Binding(this, function () : String
            {
                var _loc_1:* = "+" + playerVO.spiritOfEarthOutput;
                var _loc_2:* = _loc_1 == undefined ? (null) : (String(_loc_1));
                return _loc_2;
            }// end function
            , function (param1:String) : void
            {
                _ProductionInfoWindow_Label6.text = param1;
                return;
            }// end function
            , "_ProductionInfoWindow_Label6.text");
            result[8] = binding;
            binding = new Binding(this, function () : String
            {
                var _loc_1:* = Utils.i18n("generalSpiritOfWater");
                var _loc_2:* = _loc_1 == undefined ? (null) : (String(_loc_1));
                return _loc_2;
            }// end function
            , function (param1:String) : void
            {
                _ProductionInfoWindow_Image4.toolTip = param1;
                return;
            }// end function
            , "_ProductionInfoWindow_Image4.toolTip");
            result[9] = binding;
            binding = new Binding(this, function () : String
            {
                var _loc_1:* = playerVO.spiritOfWater;
                var _loc_2:* = _loc_1 == undefined ? (null) : (String(_loc_1));
                return _loc_2;
            }// end function
            , function (param1:String) : void
            {
                _ProductionInfoWindow_Label7.text = param1;
                return;
            }// end function
            , "_ProductionInfoWindow_Label7.text");
            result[10] = binding;
            binding = new Binding(this, function () : String
            {
                var _loc_1:* = "+" + playerVO.spiritOfWaterOutput;
                var _loc_2:* = _loc_1 == undefined ? (null) : (String(_loc_1));
                return _loc_2;
            }// end function
            , function (param1:String) : void
            {
                _ProductionInfoWindow_Label8.text = param1;
                return;
            }// end function
            , "_ProductionInfoWindow_Label8.text");
            result[11] = binding;
            return result;
        }// end function

        private function _ProductionInfoWindow_bindingExprs() : void
        {
            var _loc_1:* = undefined;
            _loc_1 = Utils.i18n("generalSilver");
            _loc_1 = playerVO.silver;
            _loc_1 = "+" + playerVO.silverOutput;
            _loc_1 = Utils.i18n("generalSpiritOfFire");
            _loc_1 = playerVO.spiritOfFire;
            _loc_1 = "+" + playerVO.spiritOfFireOutput;
            _loc_1 = Utils.i18n("generalSpiritOfEarth");
            _loc_1 = playerVO.spiritOfEarth;
            _loc_1 = "+" + playerVO.spiritOfEarthOutput;
            _loc_1 = Utils.i18n("generalSpiritOfWater");
            _loc_1 = playerVO.spiritOfWater;
            _loc_1 = "+" + playerVO.spiritOfWaterOutput;
            return;
        }// end function

        public static function set watcherSetupUtil(param1:IWatcherSetupUtil) : void
        {
            ProductionInfoWindow._watcherSetupUtil = param1;
            return;
        }// end function

    }
}
