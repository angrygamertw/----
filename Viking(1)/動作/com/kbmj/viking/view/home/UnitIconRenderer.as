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

    public class UnitIconRenderer extends Canvas implements IBindingClient
    {
        private var _99866251_swf_icon:MovieClipLoaderAsset;
        private var _293001187unitIcon:Image;
        var _bindingsByDestination:Object;
        var _bindingsBeginWithWord:Object;
        var _watchers:Array;
        private var iconUnit:UnitVO;
        private var _1682089052unitIconHeight:int;
        private var _929537961unitIconWidth:int;
        var _bindings:Array;
        private var _documentDescriptor_:UIComponentDescriptor;
        public static var EmbedSwfCommandTaskIcon:Class = UnitIconRenderer_EmbedSwfCommandTaskIcon;
        public static var EmbedSwfCommandFortIcon:Class = UnitIconRenderer_EmbedSwfCommandFortIcon;
        private static var _watcherSetupUtil:IWatcherSetupUtil;
        public static var EmbedSwfCommandGuildIcon:Class = UnitIconRenderer_EmbedSwfCommandGuildIcon;

        public function UnitIconRenderer()
        {
            _documentDescriptor_ = new UIComponentDescriptor({type:Canvas, propertiesFactory:function () : Object
            {
                return {childDescriptors:[new UIComponentDescriptor({type:Image, id:"unitIcon"})]};
            }// end function
            });
            _bindings = [];
            _watchers = [];
            _bindingsByDestination = {};
            _bindingsBeginWithWord = {};
            mx_internal::_document = this;
            this.addEventListener("creationComplete", ___UnitIconRenderer_Canvas1_creationComplete);
            return;
        }// end function

        public function set unitIcon(param1:Image) : void
        {
            var _loc_2:* = this._293001187unitIcon;
            if (_loc_2 !== param1)
            {
                this._293001187unitIcon = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "unitIcon", _loc_2, param1));
            }
            return;
        }// end function

        private function get _swf_icon() : MovieClipLoaderAsset
        {
            return this._99866251_swf_icon;
        }// end function

        private function set unitIconHeight(param1:int) : void
        {
            var _loc_2:* = this._1682089052unitIconHeight;
            if (_loc_2 !== param1)
            {
                this._1682089052unitIconHeight = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "unitIconHeight", _loc_2, param1));
            }
            return;
        }// end function

        private function _UnitIconRenderer_bindingsSetup() : Array
        {
            var binding:Binding;
            var result:Array;
            binding = new Binding(this, function () : Object
            {
                return _swf_icon;
            }// end function
            , function (param1:Object) : void
            {
                unitIcon.source = param1;
                return;
            }// end function
            , "unitIcon.source");
            result[0] = binding;
            return result;
        }// end function

        override public function initialize() : void
        {
            var target:UnitIconRenderer;
            var watcherSetupUtilClass:Object;
            .mx_internal::setDocumentDescriptor(_documentDescriptor_);
            var bindings:* = _UnitIconRenderer_bindingsSetup();
            var watchers:Array;
            target;
            if (_watcherSetupUtil == null)
            {
                watcherSetupUtilClass = getDefinitionByName("_com_kbmj_viking_view_home_UnitIconRendererWatcherSetupUtil");
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

        public function get swf_icon() : MovieClipLoaderAsset
        {
            return _swf_icon;
        }// end function

        private function _UnitIconRenderer_bindingExprs() : void
        {
            var _loc_1:* = undefined;
            _loc_1 = _swf_icon;
            return;
        }// end function

        public function ___UnitIconRenderer_Canvas1_creationComplete(event:FlexEvent) : void
        {
            init();
            return;
        }// end function

        private function init() : void
        {
            unitIcon.x = iconUnit.loader.x;
            unitIcon.y = iconUnit.loader.y;
            return;
        }// end function

        private function get unitIconWidth() : int
        {
            return this._929537961unitIconWidth;
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

        private function get unitIconHeight() : int
        {
            return this._1682089052unitIconHeight;
        }// end function

        public function unitStatusIcon(param1:UnitVO) : Boolean
        {
            var unit:* = param1;
            iconUnit = unit;
            var bool:Boolean;
            switch(unit.status)
            {
                case 1:
                {
                    _swf_icon = new EmbedSwfCommandTaskIcon();
                    break;
                }
                case 5:
                {
                    _swf_icon = new EmbedSwfCommandFortIcon();
                    break;
                }
                case 6:
                {
                    _swf_icon = new EmbedSwfCommandGuildIcon();
                    break;
                }
                default:
                {
                    bool;
                    break;
                    break;
                }
            }
            if (_swf_icon)
            {
                Loader(_swf_icon.getChildAt(0)).contentLoaderInfo.addEventListener(Event.COMPLETE, function () : void
            {
                Loader(_swf_icon.getChildAt(0)).contentLoaderInfo.removeEventListener(Event.COMPLETE, arguments.callee);
                MovieClip(Loader(_swf_icon.getChildAt(0)).content).gotoAndPlay(0);
                return;
            }// end function
            );
            }
            return bool;
        }// end function

        public function get unitIcon() : Image
        {
            return this._293001187unitIcon;
        }// end function

        private function set unitIconWidth(param1:int) : void
        {
            var _loc_2:* = this._929537961unitIconWidth;
            if (_loc_2 !== param1)
            {
                this._929537961unitIconWidth = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "unitIconWidth", _loc_2, param1));
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
