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

    public class LevelUpIconRenderer extends Canvas implements IBindingClient
    {
        private var _99866251_swf_icon:MovieClipLoaderAsset;
        var _bindingsByDestination:Object;
        var _bindingsBeginWithWord:Object;
        private var _2044352946levelUpIconWidth:int;
        private var _616573343levelUpIconHeight:int;
        var _watchers:Array;
        var _bindings:Array;
        private var _1834012248levelUpIcon:Image;
        private var _documentDescriptor_:UIComponentDescriptor;
        private var _iconUnit:UnitVO;
        private static var _watcherSetupUtil:IWatcherSetupUtil;
        public static var EmbedSwfCommandIcon:Class = LevelUpIconRenderer_EmbedSwfCommandIcon;

        public function LevelUpIconRenderer()
        {
            _documentDescriptor_ = new UIComponentDescriptor({type:Canvas, propertiesFactory:function () : Object
            {
                return {childDescriptors:[new UIComponentDescriptor({type:Image, id:"levelUpIcon", propertiesFactory:function () : Object
                {
                    return {visible:false};
                }// end function
                })]};
            }// end function
            });
            _99866251_swf_icon = new EmbedSwfCommandIcon();
            _bindings = [];
            _watchers = [];
            _bindingsByDestination = {};
            _bindingsBeginWithWord = {};
            mx_internal::_document = this;
            this.addEventListener("creationComplete", ___LevelUpIconRenderer_Canvas1_creationComplete);
            return;
        }// end function

        public function set iconUnit(param1:UnitVO) : void
        {
            _iconUnit = param1;
            return;
        }// end function

        private function init() : void
        {
            levelUpIcon.x = _iconUnit.loader.x;
            levelUpIcon.y = _iconUnit.loader.y;
            levelUpIcon.visible = true;
            return;
        }// end function

        private function get levelUpIconWidth() : int
        {
            return this._2044352946levelUpIconWidth;
        }// end function

        override public function initialize() : void
        {
            var target:LevelUpIconRenderer;
            var watcherSetupUtilClass:Object;
            .mx_internal::setDocumentDescriptor(_documentDescriptor_);
            var bindings:* = _LevelUpIconRenderer_bindingsSetup();
            var watchers:Array;
            target;
            if (_watcherSetupUtil == null)
            {
                watcherSetupUtilClass = getDefinitionByName("_com_kbmj_viking_view_home_LevelUpIconRendererWatcherSetupUtil");
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

        private function _LevelUpIconRenderer_bindingExprs() : void
        {
            var _loc_1:* = undefined;
            _loc_1 = _swf_icon;
            return;
        }// end function

        public function get iconUnit() : UnitVO
        {
            return _iconUnit;
        }// end function

        public function ___LevelUpIconRenderer_Canvas1_creationComplete(event:FlexEvent) : void
        {
            init();
            return;
        }// end function

        private function set levelUpIconWidth(param1:int) : void
        {
            var _loc_2:* = this._2044352946levelUpIconWidth;
            if (_loc_2 !== param1)
            {
                this._2044352946levelUpIconWidth = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "levelUpIconWidth", _loc_2, param1));
            }
            return;
        }// end function

        private function get levelUpIconHeight() : int
        {
            return this._616573343levelUpIconHeight;
        }// end function

        public function set _swf_icon(param1:MovieClipLoaderAsset) : void
        {
            var _loc_2:* = this._99866251_swf_icon;
            if (_loc_2 !== param1)
            {
                this._99866251_swf_icon = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "_swf_icon", _loc_2, param1));
            }
            return;
        }// end function

        public function unitStatusIcon(param1:UnitVO) : Boolean
        {
            var unit:* = param1;
            _iconUnit = unit;
            var bool:Boolean;
            if (unit.levelUpped)
            {
                bool;
            }
            _swf_icon = new EmbedSwfCommandIcon();
            Loader(_swf_icon.getChildAt(0)).contentLoaderInfo.addEventListener(Event.COMPLETE, function () : void
            {
                Loader(_swf_icon.getChildAt(0)).contentLoaderInfo.removeEventListener(Event.COMPLETE, arguments.callee);
                MovieClip(Loader(_swf_icon.getChildAt(0)).content).gotoAndPlay(0);
                return;
            }// end function
            );
            return bool;
        }// end function

        public function get levelUpIcon() : Image
        {
            return this._1834012248levelUpIcon;
        }// end function

        public function get _swf_icon() : MovieClipLoaderAsset
        {
            return this._99866251_swf_icon;
        }// end function

        public function set levelUpIcon(param1:Image) : void
        {
            var _loc_2:* = this._1834012248levelUpIcon;
            if (_loc_2 !== param1)
            {
                this._1834012248levelUpIcon = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "levelUpIcon", _loc_2, param1));
            }
            return;
        }// end function

        public function positionChange() : void
        {
            levelUpIcon.x = _iconUnit.loader.x;
            levelUpIcon.y = _iconUnit.loader.y;
            return;
        }// end function

        private function _LevelUpIconRenderer_bindingsSetup() : Array
        {
            var binding:Binding;
            var result:Array;
            binding = new Binding(this, function () : Object
            {
                return _swf_icon;
            }// end function
            , function (param1:Object) : void
            {
                levelUpIcon.source = param1;
                return;
            }// end function
            , "levelUpIcon.source");
            result[0] = binding;
            return result;
        }// end function

        private function set levelUpIconHeight(param1:int) : void
        {
            var _loc_2:* = this._616573343levelUpIconHeight;
            if (_loc_2 !== param1)
            {
                this._616573343levelUpIconHeight = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "levelUpIconHeight", _loc_2, param1));
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
