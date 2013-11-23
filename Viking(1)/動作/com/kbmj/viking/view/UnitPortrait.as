package com.kbmj.viking.view
{
    import com.kbmj.viking.vo.tactics.*;
    import flash.display.*;
    import flash.utils.*;
    import mx.binding.*;
    import mx.containers.*;
    import mx.controls.*;
    import mx.core.*;
    import mx.events.*;

    public class UnitPortrait extends Canvas implements IBindingClient
    {
        private var _2081470783_portraitHeight:int = 158;
        var _bindingsByDestination:Object;
        var _bindingsBeginWithWord:Object;
        private var _91329123_unit:UnitVO;
        var _watchers:Array;
        var _bindings:Array;
        private var _documentDescriptor_:UIComponentDescriptor;
        public var _UnitPortrait_Image1:Image;
        private var _1609391340_portraitWidth:int = 120;
        private static var _watcherSetupUtil:IWatcherSetupUtil;

        public function UnitPortrait()
        {
            _documentDescriptor_ = new UIComponentDescriptor({type:Canvas, propertiesFactory:function () : Object
            {
                return {width:120, height:158, childDescriptors:[new UIComponentDescriptor({type:Image, id:"_UnitPortrait_Image1"})]};
            }// end function
            });
            _bindings = [];
            _watchers = [];
            _bindingsByDestination = {};
            _bindingsBeginWithWord = {};
            mx_internal::_document = this;
            this.width = 120;
            this.height = 158;
            this.addEventListener("creationComplete", ___UnitPortrait_Canvas1_creationComplete);
            return;
        }// end function

        private function set _portraitHeight(param1:int) : void
        {
            var _loc_2:* = this._2081470783_portraitHeight;
            if (_loc_2 !== param1)
            {
                this._2081470783_portraitHeight = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "_portraitHeight", _loc_2, param1));
            }
            return;
        }// end function

        public function set portraitHeight(param1:int) : void
        {
            _portraitHeight = param1;
            this.height = param1;
            return;
        }// end function

        public function set unit(param1:UnitVO) : void
        {
            _unit = param1;
            if (_unit.faceUic.contains(_unit.faceLoader))
            {
                MovieClip(_unit.faceLoader.content).gotoAndPlay("img_unit_status");
            }
            return;
        }// end function

        private function set _unit(param1:UnitVO) : void
        {
            var _loc_2:* = this._91329123_unit;
            if (_loc_2 !== param1)
            {
                this._91329123_unit = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "_unit", _loc_2, param1));
            }
            return;
        }// end function

        private function _UnitPortrait_bindingsSetup() : Array
        {
            var binding:Binding;
            var result:Array;
            binding = new Binding(this, function () : Object
            {
                return _unit.faceUic;
            }// end function
            , function (param1:Object) : void
            {
                _UnitPortrait_Image1.source = param1;
                return;
            }// end function
            , "_UnitPortrait_Image1.source");
            result[0] = binding;
            binding = new Binding(this, function () : Number
            {
                return _portraitWidth;
            }// end function
            , function (param1:Number) : void
            {
                _UnitPortrait_Image1.width = param1;
                return;
            }// end function
            , "_UnitPortrait_Image1.width");
            result[1] = binding;
            binding = new Binding(this, function () : Number
            {
                return _portraitHeight;
            }// end function
            , function (param1:Number) : void
            {
                _UnitPortrait_Image1.height = param1;
                return;
            }// end function
            , "_UnitPortrait_Image1.height");
            result[2] = binding;
            return result;
        }// end function

        override public function initialize() : void
        {
            var target:UnitPortrait;
            var watcherSetupUtilClass:Object;
            .mx_internal::setDocumentDescriptor(_documentDescriptor_);
            var bindings:* = _UnitPortrait_bindingsSetup();
            var watchers:Array;
            target;
            if (_watcherSetupUtil == null)
            {
                watcherSetupUtilClass = getDefinitionByName("_com_kbmj_viking_view_UnitPortraitWatcherSetupUtil");
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

        public function set portraitWidth(param1:int) : void
        {
            _portraitWidth = param1;
            this.width = param1;
            return;
        }// end function

        private function init() : void
        {
            return;
        }// end function

        private function get _portraitHeight() : int
        {
            return this._2081470783_portraitHeight;
        }// end function

        private function get _unit() : UnitVO
        {
            return this._91329123_unit;
        }// end function

        private function get _portraitWidth() : int
        {
            return this._1609391340_portraitWidth;
        }// end function

        private function set _portraitWidth(param1:int) : void
        {
            var _loc_2:* = this._1609391340_portraitWidth;
            if (_loc_2 !== param1)
            {
                this._1609391340_portraitWidth = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "_portraitWidth", _loc_2, param1));
            }
            return;
        }// end function

        private function _UnitPortrait_bindingExprs() : void
        {
            var _loc_1:* = undefined;
            _loc_1 = _unit.faceUic;
            _loc_1 = _portraitWidth;
            _loc_1 = _portraitHeight;
            return;
        }// end function

        public function ___UnitPortrait_Canvas1_creationComplete(event:FlexEvent) : void
        {
            init();
            return;
        }// end function

        public static function set watcherSetupUtil(param1:IWatcherSetupUtil) : void
        {
            _watcherSetupUtil = param1;
            return;
        }// end function

    }
}
