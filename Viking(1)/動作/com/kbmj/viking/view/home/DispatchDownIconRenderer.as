package com.kbmj.viking.view.home
{
    import com.kbmj.viking.vo.tactics.*;
    import flash.display.*;
    import flash.events.*;
    import flash.utils.*;
    import mx.binding.*;
    import mx.containers.*;
    import mx.controls.*;
    import mx.core.*;
    import mx.events.*;

    public class DispatchDownIconRenderer extends Canvas implements IBindingClient
    {
        private var _99866251_swf_icon:MovieClipLoaderAsset;
        var _bindingsByDestination:Object;
        var _bindingsBeginWithWord:Object;
        var _watchers:Array;
        private var _1638753418iconImg:Class;
        private var iconUnit:UnitVO;
        var _bindings:Array;
        private var setArmy:Boolean = false;
        private var _922174165dispatchDownIcon:Image;
        private var _documentDescriptor_:UIComponentDescriptor;
        public static const SELECT_ARMY_UNIT:String = NAME + "selectArmyUnit";
        private static var _watcherSetupUtil:IWatcherSetupUtil;
        public static var EmbedSwfCommandIcon:Class = DispatchDownIconRenderer_EmbedSwfCommandIcon;
        public static const NAME:String = "dispatchDownIconRenderer";

        public function DispatchDownIconRenderer()
        {
            _documentDescriptor_ = new UIComponentDescriptor({type:Canvas, propertiesFactory:function () : Object
            {
                return {childDescriptors:[new UIComponentDescriptor({type:Image, id:"dispatchDownIcon"})]};
            }// end function
            });
            _99866251_swf_icon = new EmbedSwfCommandIcon();
            _bindings = [];
            _watchers = [];
            _bindingsByDestination = {};
            _bindingsBeginWithWord = {};
            mx_internal::_document = this;
            this.addEventListener("creationComplete", ___DispatchDownIconRenderer_Canvas1_creationComplete);
            return;
        }// end function

        private function set _swf_icon(param1:MovieClipLoaderAsset) : void
        {
            var _loc_2:* = this._99866251_swf_icon;
            if (_loc_2 !== param1)
            {
                this._99866251_swf_icon = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "_swf_icon", _loc_2, param1));
            }
            return;
        }// end function

        private function _DispatchDownIconRenderer_bindingsSetup() : Array
        {
            var binding:Binding;
            var result:Array;
            binding = new Binding(this, function () : Object
            {
                return _swf_icon;
            }// end function
            , function (param1:Object) : void
            {
                dispatchDownIcon.source = param1;
                return;
            }// end function
            , "dispatchDownIcon.source");
            result[0] = binding;
            return result;
        }// end function

        private function init() : void
        {
            dispatchDownIcon.x = iconUnit.loader.x + 20;
            dispatchDownIcon.y = iconUnit.loader.y + 50;
            return;
        }// end function

        private function get iconImg() : Class
        {
            return this._1638753418iconImg;
        }// end function

        public function get dispatchDownIcon() : Image
        {
            return this._922174165dispatchDownIcon;
        }// end function

        override public function initialize() : void
        {
            var target:DispatchDownIconRenderer;
            var watcherSetupUtilClass:Object;
            .mx_internal::setDocumentDescriptor(_documentDescriptor_);
            var bindings:* = _DispatchDownIconRenderer_bindingsSetup();
            var watchers:Array;
            target;
            if (_watcherSetupUtil == null)
            {
                watcherSetupUtilClass = getDefinitionByName("_com_kbmj_viking_view_home_DispatchDownIconRendererWatcherSetupUtil");
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

        private function _DispatchDownIconRenderer_bindingExprs() : void
        {
            var _loc_1:* = undefined;
            _loc_1 = _swf_icon;
            return;
        }// end function

        private function set iconImg(param1:Class) : void
        {
            var _loc_2:* = this._1638753418iconImg;
            if (_loc_2 !== param1)
            {
                this._1638753418iconImg = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "iconImg", _loc_2, param1));
            }
            return;
        }// end function

        public function ___DispatchDownIconRenderer_Canvas1_creationComplete(event:FlexEvent) : void
        {
            init();
            return;
        }// end function

        public function set dispatchDownIcon(param1:Image) : void
        {
            var _loc_2:* = this._922174165dispatchDownIcon;
            if (_loc_2 !== param1)
            {
                this._922174165dispatchDownIcon = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "dispatchDownIcon", _loc_2, param1));
            }
            return;
        }// end function

        public function unitStatusIcon(param1:UnitVO, param2:String = "others") : Boolean
        {
            var unit:* = param1;
            var state:* = param2;
            iconUnit = unit;
            setArmy = state == SELECT_ARMY_UNIT;
            Loader(_swf_icon.getChildAt(0)).contentLoaderInfo.addEventListener(Event.COMPLETE, function () : void
            {
                Loader(_swf_icon.getChildAt(0)).contentLoaderInfo.removeEventListener(Event.COMPLETE, arguments.callee);
                MovieClip(Loader(_swf_icon.getChildAt(0)).content).gotoAndPlay(0);
                return;
            }// end function
            );
            return unit.down;
        }// end function

        private function get _swf_icon() : MovieClipLoaderAsset
        {
            return this._99866251_swf_icon;
        }// end function

        public function positionChange() : void
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
