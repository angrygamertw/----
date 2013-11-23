package com.kbmj.viking.view.allMap
{
    import com.kbmj.viking.*;
    import com.kbmj.viking.lib.*;
    import com.kbmj.viking.view.*;
    import flash.display.*;
    import flash.events.*;
    import flash.utils.*;
    import mx.binding.*;
    import mx.containers.*;
    import mx.controls.*;
    import mx.core.*;
    import mx.events.*;

    public class FoundSelectWindow extends PopupWindow implements IBindingClient
    {
        public var _FoundSelectWindow_Image1:Image;
        public var _FoundSelectWindow_Image2:Image;
        public var _FoundSelectWindow_Image3:Image;
        public var _FoundSelectWindow_Image4:Image;
        private var _1075873300_swf_window:MovieClipLoaderAsset;
        var _watchers:Array;
        private const TYPE_TOWER:int = 2;
        private var _1209637261_swf_tower:MovieClipLoaderAsset;
        private const TYPE_FORT:int = 1;
        var _bindingsByDestination:Object;
        var _bindingsBeginWithWord:Object;
        public var _FoundSelectWindow_TextArea1:TextArea;
        public var _FoundSelectWindow_TextArea2:TextArea;
        private var _1193840764_swf_close:MovieClipLoaderAsset;
        private var _99943993_swf_fort:MovieClipLoaderAsset;
        var _bindings:Array;
        private var _documentDescriptor_:UIComponentDescriptor;
        public static const SELECT_STRUCTURE:String = NAME + "selectStructure";
        private static var _watcherSetupUtil:IWatcherSetupUtil;
        public static const NAME:String = "foundSelectWindow";

        public function FoundSelectWindow()
        {
            _documentDescriptor_ = new UIComponentDescriptor({type:PopupWindow, propertiesFactory:function () : Object
            {
                return {childDescriptors:[new UIComponentDescriptor({type:Canvas, propertiesFactory:function () : Object
                {
                    return {childDescriptors:[new UIComponentDescriptor({type:Image, id:"_FoundSelectWindow_Image1"}), new UIComponentDescriptor({type:Text, propertiesFactory:function () : Object
                    {
                        return {text:"建築", x:365, y:147, styleName:"PanelBaseTitle"};
                    }// end function
                    }), new UIComponentDescriptor({type:VBox, stylesFactory:function () : void
                    {
                        this.verticalGap = 10;
                        return;
                    }// end function
                    , propertiesFactory:function () : Object
                    {
                        return {x:190, y:192, height:300, childDescriptors:[new UIComponentDescriptor({type:Canvas, propertiesFactory:function () : Object
                        {
                            return {height:55, verticalScrollPolicy:"off", horizontalScrollPolicy:"off", childDescriptors:[new UIComponentDescriptor({type:Image, id:"_FoundSelectWindow_Image2", events:{click:"___FoundSelectWindow_Image2_click"}, propertiesFactory:function () : Object
                            {
                                return {x:60, y:15};
                            }// end function
                            }), new UIComponentDescriptor({type:TextArea, id:"_FoundSelectWindow_TextArea1", stylesFactory:function () : void
                            {
                                this.fontSize = 12;
                                this.backgroundAlpha = 0;
                                this.borderStyle = "none";
                                return;
                            }// end function
                            , propertiesFactory:function () : Object
                            {
                                return {x:165, y:10, width:200, height:70, editable:false};
                            }// end function
                            })]};
                        }// end function
                        }), new UIComponentDescriptor({type:Canvas, propertiesFactory:function () : Object
                        {
                            return {height:55, verticalScrollPolicy:"off", horizontalScrollPolicy:"off", childDescriptors:[new UIComponentDescriptor({type:Image, id:"_FoundSelectWindow_Image3", events:{click:"___FoundSelectWindow_Image3_click"}, propertiesFactory:function () : Object
                            {
                                return {x:60, y:15};
                            }// end function
                            }), new UIComponentDescriptor({type:TextArea, id:"_FoundSelectWindow_TextArea2", stylesFactory:function () : void
                            {
                                this.fontSize = 12;
                                this.backgroundAlpha = 0;
                                this.borderStyle = "none";
                                return;
                            }// end function
                            , propertiesFactory:function () : Object
                            {
                                return {x:165, y:10, width:200, height:70, editable:false};
                            }// end function
                            })]};
                        }// end function
                        })]};
                    }// end function
                    }), new UIComponentDescriptor({type:Image, id:"_FoundSelectWindow_Image4", events:{click:"___FoundSelectWindow_Image4_click"}, propertiesFactory:function () : Object
                    {
                        return {x:325, y:350};
                    }// end function
                    })]};
                }// end function
                })]};
            }// end function
            });
            _1075873300_swf_window = new Viking.EmbedSwfWindowCommon();
            _1193840764_swf_close = new Viking.EmbedSwfButtonCommon();
            _99943993_swf_fort = new AllMap.EmbedSwfButtonCommonMap();
            _1209637261_swf_tower = new AllMap.EmbedSwfButtonCommonMap();
            _bindings = [];
            _watchers = [];
            _bindingsByDestination = {};
            _bindingsBeginWithWord = {};
            mx_internal::_document = this;
            this.addEventListener("creationComplete", ___FoundSelectWindow_PopupWindow1_creationComplete);
            return;
        }// end function

        private function get _swf_tower() : MovieClipLoaderAsset
        {
            return this._1209637261_swf_tower;
        }// end function

        private function set _swf_tower(param1:MovieClipLoaderAsset) : void
        {
            var _loc_2:* = this._1209637261_swf_tower;
            if (_loc_2 !== param1)
            {
                this._1209637261_swf_tower = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "_swf_tower", _loc_2, param1));
            }
            return;
        }// end function

        private function set _swf_fort(param1:MovieClipLoaderAsset) : void
        {
            var _loc_2:* = this._99943993_swf_fort;
            if (_loc_2 !== param1)
            {
                this._99943993_swf_fort = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "_swf_fort", _loc_2, param1));
            }
            return;
        }// end function

        private function addSwf() : void
        {
            MovieClip(Loader(_swf_window.getChildAt(0)).content).gotoAndPlay("center_300x270");
            MovieClip(Loader(_swf_close.getChildAt(0)).content).gotoAndPlay("button_back");
            MovieClip(Loader(_swf_fort.getChildAt(0)).content).gotoAndPlay("button_build_fort");
            MovieClip(Loader(_swf_tower.getChildAt(0)).content).gotoAndPlay("button_build_turrent");
            return;
        }// end function

        override public function initialize() : void
        {
            var target:FoundSelectWindow;
            var watcherSetupUtilClass:Object;
            .mx_internal::setDocumentDescriptor(_documentDescriptor_);
            var bindings:* = _FoundSelectWindow_bindingsSetup();
            var watchers:Array;
            target;
            if (_watcherSetupUtil == null)
            {
                watcherSetupUtilClass = getDefinitionByName("_com_kbmj_viking_view_allMap_FoundSelectWindowWatcherSetupUtil");
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

        public function ___FoundSelectWindow_Image3_click(event:MouseEvent) : void
        {
            selectType(TYPE_TOWER);
            return;
        }// end function

        private function get _swf_fort() : MovieClipLoaderAsset
        {
            return this._99943993_swf_fort;
        }// end function

        private function _FoundSelectWindow_bindingExprs() : void
        {
            var _loc_1:* = undefined;
            _loc_1 = _swf_window;
            _loc_1 = _swf_fort;
            _loc_1 = Utils.i18n("allMapFortDescription");
            _loc_1 = _swf_tower;
            _loc_1 = Utils.i18n("allMapTowerDescription");
            _loc_1 = _swf_close;
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

        public function ___FoundSelectWindow_PopupWindow1_creationComplete(event:FlexEvent) : void
        {
            addSwf();
            return;
        }// end function

        private function selectType(param1:int) : void
        {
            sendPopupEvent(SELECT_STRUCTURE, param1);
            close();
            return;
        }// end function

        private function _FoundSelectWindow_bindingsSetup() : Array
        {
            var binding:Binding;
            var result:Array;
            binding = new Binding(this, function () : Object
            {
                return _swf_window;
            }// end function
            , function (param1:Object) : void
            {
                _FoundSelectWindow_Image1.source = param1;
                return;
            }// end function
            , "_FoundSelectWindow_Image1.source");
            result[0] = binding;
            binding = new Binding(this, function () : Object
            {
                return _swf_fort;
            }// end function
            , function (param1:Object) : void
            {
                _FoundSelectWindow_Image2.source = param1;
                return;
            }// end function
            , "_FoundSelectWindow_Image2.source");
            result[1] = binding;
            binding = new Binding(this, function () : String
            {
                var _loc_1:* = Utils.i18n("allMapFortDescription");
                var _loc_2:* = _loc_1 == undefined ? (null) : (String(_loc_1));
                return _loc_2;
            }// end function
            , function (param1:String) : void
            {
                _FoundSelectWindow_TextArea1.text = param1;
                return;
            }// end function
            , "_FoundSelectWindow_TextArea1.text");
            result[2] = binding;
            binding = new Binding(this, function () : Object
            {
                return _swf_tower;
            }// end function
            , function (param1:Object) : void
            {
                _FoundSelectWindow_Image3.source = param1;
                return;
            }// end function
            , "_FoundSelectWindow_Image3.source");
            result[3] = binding;
            binding = new Binding(this, function () : String
            {
                var _loc_1:* = Utils.i18n("allMapTowerDescription");
                var _loc_2:* = _loc_1 == undefined ? (null) : (String(_loc_1));
                return _loc_2;
            }// end function
            , function (param1:String) : void
            {
                _FoundSelectWindow_TextArea2.text = param1;
                return;
            }// end function
            , "_FoundSelectWindow_TextArea2.text");
            result[4] = binding;
            binding = new Binding(this, function () : Object
            {
                return _swf_close;
            }// end function
            , function (param1:Object) : void
            {
                _FoundSelectWindow_Image4.source = param1;
                return;
            }// end function
            , "_FoundSelectWindow_Image4.source");
            result[5] = binding;
            return result;
        }// end function

        private function get _swf_window() : MovieClipLoaderAsset
        {
            return this._1075873300_swf_window;
        }// end function

        public function ___FoundSelectWindow_Image2_click(event:MouseEvent) : void
        {
            selectType(TYPE_FORT);
            return;
        }// end function

        public function ___FoundSelectWindow_Image4_click(event:MouseEvent) : void
        {
            close();
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

        private function get _swf_close() : MovieClipLoaderAsset
        {
            return this._1193840764_swf_close;
        }// end function

        private function close() : void
        {
            onClose();
            return;
        }// end function

        public static function set watcherSetupUtil(param1:IWatcherSetupUtil) : void
        {
            FoundSelectWindow._watcherSetupUtil = param1;
            return;
        }// end function

    }
}
