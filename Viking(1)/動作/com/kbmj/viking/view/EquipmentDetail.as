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

    public class EquipmentDetail extends Canvas implements IBindingClient
    {
        private var _1075873300_swf_window:MovieClipLoaderAsset;
        var _watchers:Array;
        public var _EquipmentDetail_Text1:Text;
        public var _EquipmentDetail_Text2:Text;
        private var _skill:String;
        var _bindingsBeginWithWord:Object;
        public var _EquipmentDetail_Image1:Image;
        private var _1193840764_swf_close:MovieClipLoaderAsset;
        public var _EquipmentDetail_Image3:Image;
        private var _384183038effectString:String;
        public var _EquipmentDetail_Label1:Label;
        public var _EquipmentDetail_Image2:Image;
        var _bindingsByDestination:Object;
        private var _1218643219_swf_close_window:MovieClipLoaderAsset;
        var _bindings:Array;
        private var _1285879118_viewData:Object;
        private var _documentDescriptor_:UIComponentDescriptor;
        private static var _watcherSetupUtil:IWatcherSetupUtil;

        public function EquipmentDetail()
        {
            _documentDescriptor_ = new UIComponentDescriptor({type:Canvas, propertiesFactory:function () : Object
            {
                return {width:760, height:560, childDescriptors:[new UIComponentDescriptor({type:Image, id:"_EquipmentDetail_Image1"}), new UIComponentDescriptor({type:Canvas, propertiesFactory:function () : Object
                {
                    return {childDescriptors:[new UIComponentDescriptor({type:Label, id:"_EquipmentDetail_Label1", stylesFactory:function () : void
                    {
                        this.textAlign = "center";
                        this.fontSize = 17;
                        this.color = 16777215;
                        return;
                    }// end function
                    , propertiesFactory:function () : Object
                    {
                        return {x:230, y:180, width:300};
                    }// end function
                    }), new UIComponentDescriptor({type:Text, id:"_EquipmentDetail_Text1", stylesFactory:function () : void
                    {
                        this.fontSize = 15;
                        this.color = 0;
                        return;
                    }// end function
                    , propertiesFactory:function () : Object
                    {
                        return {x:250, y:215};
                    }// end function
                    }), new UIComponentDescriptor({type:Text, id:"_EquipmentDetail_Text2", stylesFactory:function () : void
                    {
                        this.fontSize = 12;
                        this.color = 0;
                        return;
                    }// end function
                    , propertiesFactory:function () : Object
                    {
                        return {x:260, y:235, width:250, height:50};
                    }// end function
                    })]};
                }// end function
                }), new UIComponentDescriptor({type:Image, id:"_EquipmentDetail_Image2", events:{click:"___EquipmentDetail_Image2_click"}, propertiesFactory:function () : Object
                {
                    return {x:325, y:330};
                }// end function
                }), new UIComponentDescriptor({type:Image, id:"_EquipmentDetail_Image3", events:{click:"___EquipmentDetail_Image3_click"}, propertiesFactory:function () : Object
                {
                    return {x:505, y:180};
                }// end function
                })]};
            }// end function
            });
            _1075873300_swf_window = new Viking.EmbedSwfWindowCommon();
            _1193840764_swf_close = new Viking.EmbedSwfButtonCommon();
            _1218643219_swf_close_window = new Viking.EmbedSwfButtonCloseWindow();
            _1285879118_viewData = new Object();
            _384183038effectString = new String();
            _bindings = [];
            _watchers = [];
            _bindingsByDestination = {};
            _bindingsBeginWithWord = {};
            mx_internal::_document = this;
            this.width = 760;
            this.height = 560;
            this.addEventListener("creationComplete", ___EquipmentDetail_Canvas1_creationComplete);
            return;
        }// end function

        public function get effectString() : String
        {
            return this._384183038effectString;
        }// end function

        public function set effectString(param1:String) : void
        {
            var _loc_2:* = this._384183038effectString;
            if (_loc_2 !== param1)
            {
                this._384183038effectString = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "effectString", _loc_2, param1));
            }
            return;
        }// end function

        public function closeWindow() : void
        {
            onClose();
            MovieClip(Loader(_swf_close.getChildAt(0)).content).gotoAndPlay(0);
            MovieClip(Loader(_swf_close.getChildAt(0)).content).gotoAndPlay("button_close");
            MovieClip(Loader(_swf_close_window.getChildAt(0)).content).gotoAndPlay(1);
            return;
        }// end function

        override public function initialize() : void
        {
            var target:EquipmentDetail;
            var watcherSetupUtilClass:Object;
            .mx_internal::setDocumentDescriptor(_documentDescriptor_);
            var bindings:* = _EquipmentDetail_bindingsSetup();
            var watchers:Array;
            target;
            if (_watcherSetupUtil == null)
            {
                watcherSetupUtilClass = getDefinitionByName("_com_kbmj_viking_view_EquipmentDetailWatcherSetupUtil");
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

        private function get _swf_close_window() : MovieClipLoaderAsset
        {
            return this._1218643219_swf_close_window;
        }// end function

        private function set _viewData(param1:Object) : void
        {
            var _loc_2:* = this._1285879118_viewData;
            if (_loc_2 !== param1)
            {
                this._1285879118_viewData = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "_viewData", _loc_2, param1));
            }
            return;
        }// end function

        public function set skill(param1:String) : void
        {
            _skill = param1;
            return;
        }// end function

        private function set _swf_close_window(param1:MovieClipLoaderAsset) : void
        {
            var _loc_2:* = this._1218643219_swf_close_window;
            if (_loc_2 !== param1)
            {
                this._1218643219_swf_close_window = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "_swf_close_window", _loc_2, param1));
            }
            return;
        }// end function

        private function _EquipmentDetail_bindingsSetup() : Array
        {
            var binding:Binding;
            var result:Array;
            binding = new Binding(this, function () : Object
            {
                return _swf_window;
            }// end function
            , function (param1:Object) : void
            {
                _EquipmentDetail_Image1.source = param1;
                return;
            }// end function
            , "_EquipmentDetail_Image1.source");
            result[0] = binding;
            binding = new Binding(this, function () : String
            {
                var _loc_1:* = _viewData.nameLabel;
                var _loc_2:* = _loc_1 == undefined ? (null) : (String(_loc_1));
                return _loc_2;
            }// end function
            , function (param1:String) : void
            {
                _EquipmentDetail_Label1.text = param1;
                return;
            }// end function
            , "_EquipmentDetail_Label1.text");
            result[1] = binding;
            binding = new Binding(this, function () : String
            {
                var _loc_1:* = effectString;
                var _loc_2:* = _loc_1 == undefined ? (null) : (String(_loc_1));
                return _loc_2;
            }// end function
            , function (param1:String) : void
            {
                _EquipmentDetail_Text1.text = param1;
                return;
            }// end function
            , "_EquipmentDetail_Text1.text");
            result[2] = binding;
            binding = new Binding(this, function () : String
            {
                var _loc_1:* = getDescription();
                var _loc_2:* = _loc_1 == undefined ? (null) : (String(_loc_1));
                return _loc_2;
            }// end function
            , function (param1:String) : void
            {
                _EquipmentDetail_Text2.text = param1;
                return;
            }// end function
            , "_EquipmentDetail_Text2.text");
            result[3] = binding;
            binding = new Binding(this, function () : Object
            {
                return _swf_close;
            }// end function
            , function (param1:Object) : void
            {
                _EquipmentDetail_Image2.source = param1;
                return;
            }// end function
            , "_EquipmentDetail_Image2.source");
            result[4] = binding;
            binding = new Binding(this, function () : Object
            {
                return _swf_close_window;
            }// end function
            , function (param1:Object) : void
            {
                _EquipmentDetail_Image3.source = param1;
                return;
            }// end function
            , "_EquipmentDetail_Image3.source");
            result[5] = binding;
            return result;
        }// end function

        public function setInitialization(param1:Object) : void
        {
            effectString = new String();
            switch(param1.masterType)
            {
                case "ItemMaster":
                {
                    effectString = param1.effect;
                    break;
                }
                case "MaterialMaster":
                {
                    break;
                }
                default:
                {
                    break;
                }
            }
            return;
        }// end function

        public function ___EquipmentDetail_Image3_click(event:MouseEvent) : void
        {
            closeWindow();
            return;
        }// end function

        public function getDescription() : String
        {
            return _viewData.description;
        }// end function

        public function get skill() : String
        {
            return _skill;
        }// end function

        private function _EquipmentDetail_bindingExprs() : void
        {
            var _loc_1:* = undefined;
            _loc_1 = _swf_window;
            _loc_1 = _viewData.nameLabel;
            _loc_1 = effectString;
            _loc_1 = getDescription();
            _loc_1 = _swf_close;
            _loc_1 = _swf_close_window;
            return;
        }// end function

        private function onClose() : void
        {
            PopUpManager.removePopUp(this);
            return;
        }// end function

        public function set viewData(param1:Object) : void
        {
            _viewData = param1;
            if (_viewData)
            {
                setInitialization(_viewData);
            }
            return;
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

        public function ___EquipmentDetail_Canvas1_creationComplete(event:FlexEvent) : void
        {
            setup();
            return;
        }// end function

        public function get viewData() : Object
        {
            return _viewData;
        }// end function

        private function get _viewData() : Object
        {
            return this._1285879118_viewData;
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

        private function setup() : void
        {
            MovieClip(Loader(_swf_window.getChildAt(0)).content).gotoAndPlay("center_300x200");
            MovieClip(Loader(_swf_close.getChildAt(0)).content).gotoAndPlay("button_close");
            return;
        }// end function

        public function ___EquipmentDetail_Image2_click(event:MouseEvent) : void
        {
            closeWindow();
            return;
        }// end function

        public static function set watcherSetupUtil(param1:IWatcherSetupUtil) : void
        {
            EquipmentDetail._watcherSetupUtil = param1;
            return;
        }// end function

    }
}
