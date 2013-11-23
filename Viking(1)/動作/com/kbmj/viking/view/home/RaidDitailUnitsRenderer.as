package com.kbmj.viking.view.home
{
    import flash.utils.*;
    import mx.binding.*;
    import mx.containers.*;
    import mx.controls.*;
    import mx.core.*;
    import mx.events.*;

    public class RaidDitailUnitsRenderer extends Canvas implements IBindingClient
    {
        private var _embed_mxml__swf_home_icon_icon_dead_png_1126137997:Class;
        var _bindingsByDestination:Object;
        var _bindingsBeginWithWord:Object;
        private var _1463764368_units:Array;
        private var _490381779unitLayer:Canvas;
        var _watchers:Array;
        private var _1840341449nameList:TileList;
        private var _502586109deadIcon:Image;
        private var _871416638imageRenderer:ClassFactory;
        private var _312173269statusRenderer:ClassFactory;
        var _bindings:Array;
        private var _documentDescriptor_:UIComponentDescriptor;
        private static var _watcherSetupUtil:IWatcherSetupUtil;

        public function RaidDitailUnitsRenderer()
        {
            _documentDescriptor_ = new UIComponentDescriptor({type:Canvas, propertiesFactory:function () : Object
            {
                return {height:350, childDescriptors:[new UIComponentDescriptor({type:Image, id:"deadIcon", propertiesFactory:function () : Object
                {
                    return {source:_embed_mxml__swf_home_icon_icon_dead_png_1126137997, visible:false};
                }// end function
                }), new UIComponentDescriptor({type:Canvas, id:"unitLayer"}), new UIComponentDescriptor({type:TileList, id:"nameList", stylesFactory:function () : void
                {
                    this.backgroundAlpha = 0;
                    this.borderStyle = "none";
                    return;
                }// end function
                , propertiesFactory:function () : Object
                {
                    return {width:335, height:110, rowHeight:22, selectable:false, maxColumns:1, x:0, y:90};
                }// end function
                })]};
            }// end function
            });
            _1463764368_units = new Array();
            _embed_mxml__swf_home_icon_icon_dead_png_1126137997 = RaidDitailUnitsRenderer__embed_mxml__swf_home_icon_icon_dead_png_1126137997;
            _bindings = [];
            _watchers = [];
            _bindingsByDestination = {};
            _bindingsBeginWithWord = {};
            mx_internal::_document = this;
            this.height = 350;
            _RaidDitailUnitsRenderer_ClassFactory1_i();
            _RaidDitailUnitsRenderer_ClassFactory2_i();
            this.addEventListener("creationComplete", ___RaidDitailUnitsRenderer_Canvas1_creationComplete);
            return;
        }// end function

        private function _RaidDitailUnitsRenderer_bindingsSetup() : Array
        {
            var binding:Binding;
            var result:Array;
            binding = new Binding(this, function () : Object
            {
                return _units;
            }// end function
            , function (param1:Object) : void
            {
                nameList.dataProvider = param1;
                return;
            }// end function
            , "nameList.dataProvider");
            result[0] = binding;
            binding = new Binding(this, function () : IFactory
            {
                return statusRenderer;
            }// end function
            , function (param1:IFactory) : void
            {
                nameList.itemRenderer = param1;
                return;
            }// end function
            , "nameList.itemRenderer");
            result[1] = binding;
            return result;
        }// end function

        private function _RaidDitailUnitsRenderer_ClassFactory1_i() : ClassFactory
        {
            var _loc_1:* = new ClassFactory();
            imageRenderer = _loc_1;
            _loc_1.generator = RaidDitailUnitsRenderer_inlineComponent1;
            _loc_1.properties = {outerDocument:this};
            return _loc_1;
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

        public function ___RaidDitailUnitsRenderer_Canvas1_creationComplete(event:FlexEvent) : void
        {
            init();
            return;
        }// end function

        private function _RaidDitailUnitsRenderer_bindingExprs() : void
        {
            var _loc_1:* = undefined;
            _loc_1 = _units;
            _loc_1 = statusRenderer;
            return;
        }// end function

        public function get imageRenderer() : ClassFactory
        {
            return this._871416638imageRenderer;
        }// end function

        override public function initialize() : void
        {
            var target:RaidDitailUnitsRenderer;
            var watcherSetupUtilClass:Object;
            .mx_internal::setDocumentDescriptor(_documentDescriptor_);
            var bindings:* = _RaidDitailUnitsRenderer_bindingsSetup();
            var watchers:Array;
            target;
            if (_watcherSetupUtil == null)
            {
                watcherSetupUtilClass = getDefinitionByName("_com_kbmj_viking_view_home_RaidDitailUnitsRendererWatcherSetupUtil");
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

        public function get statusRenderer() : ClassFactory
        {
            return this._312173269statusRenderer;
        }// end function

        public function set nameList(param1:TileList) : void
        {
            var _loc_2:* = this._1840341449nameList;
            if (_loc_2 !== param1)
            {
                this._1840341449nameList = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "nameList", _loc_2, param1));
            }
            return;
        }// end function

        public function init() : void
        {
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

        public function get nameList() : TileList
        {
            return this._1840341449nameList;
        }// end function

        public function get unitLayer() : Canvas
        {
            return this._490381779unitLayer;
        }// end function

        public function getExp(param1:Object) : String
        {
            return param1.exp_gain ? ("+" + param1.exp_gain) : ("0");
        }// end function

        public function set statusRenderer(param1:ClassFactory) : void
        {
            var _loc_2:* = this._312173269statusRenderer;
            if (_loc_2 !== param1)
            {
                this._312173269statusRenderer = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "statusRenderer", _loc_2, param1));
            }
            return;
        }// end function

        public function setUnits(param1:Array, param2:Boolean) : void
        {
            var _loc_4:Image = null;
            deadIcon.visible = false;
            _units = param1;
            var _loc_3:int = 0;
            while (_loc_3 < param1.length)
            {
                
                param1[_loc_3].faceimage.x = param2 ? (265 - 45 * _loc_3) : (20 + 45 * _loc_3);
                unitLayer.addChild(param1[_loc_3].faceimage);
                if (param1[_loc_3].alive == false)
                {
                    if (!param2)
                    {
                        deadIcon.x = param1[_loc_3].faceimage.x + 15;
                        deadIcon.y = param1[_loc_3].faceimage.y + 47;
                    }
                    else
                    {
                        deadIcon.x = param1[_loc_3].faceimage.x + 32;
                        deadIcon.y = param1[_loc_3].faceimage.y + 47;
                    }
                    deadIcon.visible = true;
                    _loc_4 = new Image();
                    _loc_4.source = deadIcon.source;
                    _loc_4.x = deadIcon.x;
                    _loc_4.y = deadIcon.y;
                    unitLayer.addChild(_loc_4);
                }
                _loc_3++;
            }
            return;
        }// end function

        private function get _units() : Array
        {
            return this._1463764368_units;
        }// end function

        public function removeImage() : void
        {
            unitLayer.removeAllChildren();
            _units = new Array();
            return;
        }// end function

        public function set deadIcon(param1:Image) : void
        {
            var _loc_2:* = this._502586109deadIcon;
            if (_loc_2 !== param1)
            {
                this._502586109deadIcon = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "deadIcon", _loc_2, param1));
            }
            return;
        }// end function

        public function set imageRenderer(param1:ClassFactory) : void
        {
            var _loc_2:* = this._871416638imageRenderer;
            if (_loc_2 !== param1)
            {
                this._871416638imageRenderer = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "imageRenderer", _loc_2, param1));
            }
            return;
        }// end function

        public function get deadIcon() : Image
        {
            return this._502586109deadIcon;
        }// end function

        public function getLabel(param1:Object, param2:String) : String
        {
            return param1[param2] ? (param1[param2]) : ("");
        }// end function

        private function _RaidDitailUnitsRenderer_ClassFactory2_i() : ClassFactory
        {
            var _loc_1:* = new ClassFactory();
            statusRenderer = _loc_1;
            _loc_1.generator = RaidDitailUnitsRenderer_inlineComponent2;
            _loc_1.properties = {outerDocument:this};
            return _loc_1;
        }// end function

        public static function set watcherSetupUtil(param1:IWatcherSetupUtil) : void
        {
            RaidDitailUnitsRenderer._watcherSetupUtil = param1;
            return;
        }// end function

    }
}
