package com.kbmj.viking.view.allMap
{
    import com.kbmj.viking.proxy.allMap.*;
    import flash.display.*;
    import flash.utils.*;
    import mx.binding.*;
    import mx.containers.*;
    import mx.controls.*;
    import mx.core.*;
    import mx.events.*;

    public class MiniMapWindow extends Canvas implements IBindingClient
    {
        var _bindingsByDestination:Object;
        private var _1064506757miniMap:Bitmap;
        var _bindingsBeginWithWord:Object;
        var _watchers:Array;
        public var frame:UIComponent;
        var _bindings:Array;
        private var _documentDescriptor_:UIComponentDescriptor;
        public var _MiniMapWindow_Image1:Image;
        private static var _watcherSetupUtil:IWatcherSetupUtil;
        public static const MINI_MAP_HEIGHT:int = 190;
        public static const MINI_MAP_WIDTH:int = 190;

        public function MiniMapWindow()
        {
            _documentDescriptor_ = new UIComponentDescriptor({type:Canvas, propertiesFactory:function () : Object
            {
                return {width:222, height:222, childDescriptors:[new UIComponentDescriptor({type:Image, id:"_MiniMapWindow_Image1", propertiesFactory:function () : Object
                {
                    return {x:16, y:16};
                }// end function
                })]};
            }// end function
            });
            frame = new UIComponent();
            _bindings = [];
            _watchers = [];
            _bindingsByDestination = {};
            _bindingsBeginWithWord = {};
            mx_internal::_document = this;
            this.x = 0;
            this.y = 283;
            this.width = 222;
            this.height = 222;
            this.horizontalScrollPolicy = "off";
            this.verticalScrollPolicy = "off";
            this.addEventListener("creationComplete", ___MiniMapWindow_Canvas1_creationComplete);
            return;
        }// end function

        private function _MiniMapWindow_bindingExprs() : void
        {
            var _loc_1:* = undefined;
            _loc_1 = miniMap;
            return;
        }// end function

        private function get miniMap() : Bitmap
        {
            return this._1064506757miniMap;
        }// end function

        private function _MiniMapWindow_bindingsSetup() : Array
        {
            var binding:Binding;
            var result:Array;
            binding = new Binding(this, function () : Object
            {
                return miniMap;
            }// end function
            , function (param1:Object) : void
            {
                _MiniMapWindow_Image1.source = param1;
                return;
            }// end function
            , "_MiniMapWindow_Image1.source");
            result[0] = binding;
            return result;
        }// end function

        public function ___MiniMapWindow_Canvas1_creationComplete(event:FlexEvent) : void
        {
            init();
            return;
        }// end function

        override public function initialize() : void
        {
            var target:MiniMapWindow;
            var watcherSetupUtilClass:Object;
            .mx_internal::setDocumentDescriptor(_documentDescriptor_);
            var bindings:* = _MiniMapWindow_bindingsSetup();
            var watchers:Array;
            target;
            if (_watcherSetupUtil == null)
            {
                watcherSetupUtilClass = getDefinitionByName("_com_kbmj_viking_view_allMap_MiniMapWindowWatcherSetupUtil");
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

        private function set miniMap(param1:Bitmap) : void
        {
            var _loc_2:* = this._1064506757miniMap;
            if (_loc_2 !== param1)
            {
                this._1064506757miniMap = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "miniMap", _loc_2, param1));
            }
            return;
        }// end function

        public function init() : void
        {
            var _loc_1:* = new BitmapData(MINI_MAP_WIDTH, MINI_MAP_HEIGHT, true, 0);
            miniMap = new Bitmap(_loc_1);
            frame.width = this.int(MINI_MAP_WIDTH / (AllMapProxy.BG_WIDTH / AllMapProxy.SCR_WIDTH));
            frame.height = this.int(MINI_MAP_HEIGHT / (AllMapProxy.BG_HEIGHT / AllMapProxy.SCR_HEIGHT));
            frame.graphics.lineStyle(1, 16729088);
            frame.graphics.drawRect(0, 0, frame.width, frame.height);
            addChild(frame);
            return;
        }// end function

        public static function set watcherSetupUtil(param1:IWatcherSetupUtil) : void
        {
            _watcherSetupUtil = param1;
            return;
        }// end function

    }
}
