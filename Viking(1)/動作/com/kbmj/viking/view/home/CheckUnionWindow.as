package com.kbmj.viking.view.home
{
    import com.kbmj.viking.lib.*;
    import com.kbmj.viking.vo.tactics.*;
    import flash.display.*;
    import flash.events.*;
    import flash.utils.*;
    import mx.binding.*;
    import mx.containers.*;
    import mx.controls.*;
    import mx.core.*;
    import mx.events.*;
    import mx.managers.*;

    public class CheckUnionWindow extends Canvas implements IBindingClient
    {
        private var _1584105757viewStack:ViewStack;
        private var _1075873300_swf_window:MovieClipLoaderAsset;
        var _watchers:Array;
        public var _CheckUnionWindow_Image1:Image;
        public var _CheckUnionWindow_Image2:Image;
        public var _CheckUnionWindow_Image3:Image;
        public var _CheckUnionWindow_Image4:Image;
        public var _CheckUnionWindow_Label1:Label;
        public var _CheckUnionWindow_Label2:Label;
        var _bindingsBeginWithWord:Object;
        var _bindingsByDestination:Object;
        private var _1193840764_swf_close:MovieClipLoaderAsset;
        var _bindings:Array;
        private var _1210517843_swf_union:MovieClipLoaderAsset;
        private var _100077085_swf_back:MovieClipLoaderAsset;
        private var _342314684_yangUnit:UnitVO;
        private var _1187309763_yinUnit:UnitVO;
        public var _CheckUnionWindow_Text1:Text;
        private var _documentDescriptor_:UIComponentDescriptor;
        private static var _watcherSetupUtil:IWatcherSetupUtil;
        public static const START_UNION:String = "CheckUnionWindow/StartUnion";
        public static const START_INDEX:String = "CheckUnionWindow/StartIndex";

        public function CheckUnionWindow()
        {
            _documentDescriptor_ = new UIComponentDescriptor({type:Canvas, propertiesFactory:function () : Object
            {
                return {childDescriptors:[new UIComponentDescriptor({type:Image, id:"_CheckUnionWindow_Image1", propertiesFactory:function () : Object
                {
                    return {y:150};
                }// end function
                }), new UIComponentDescriptor({type:ViewStack, id:"viewStack", propertiesFactory:function () : Object
                {
                    return {x:247, y:380, childDescriptors:[new UIComponentDescriptor({type:VBox, propertiesFactory:function () : Object
                    {
                        return {childDescriptors:[new UIComponentDescriptor({type:HBox, propertiesFactory:function () : Object
                        {
                            return {childDescriptors:[new UIComponentDescriptor({type:Label, id:"_CheckUnionWindow_Label1", stylesFactory:function () : void
                            {
                                this.fontSize = 14;
                                this.textAlign = "center";
                                return;
                            }// end function
                            , propertiesFactory:function () : Object
                            {
                                return {width:260, height:30};
                            }// end function
                            })]};
                        }// end function
                        }), new UIComponentDescriptor({type:HBox, propertiesFactory:function () : Object
                        {
                            return {childDescriptors:[new UIComponentDescriptor({type:Label, id:"_CheckUnionWindow_Label2", stylesFactory:function () : void
                            {
                                this.fontSize = 14;
                                this.textAlign = "center";
                                return;
                            }// end function
                            , propertiesFactory:function () : Object
                            {
                                return {width:260, height:30};
                            }// end function
                            })]};
                        }// end function
                        }), new UIComponentDescriptor({type:Spacer, propertiesFactory:function () : Object
                        {
                            return {height:25};
                        }// end function
                        }), new UIComponentDescriptor({type:HBox, propertiesFactory:function () : Object
                        {
                            return {childDescriptors:[new UIComponentDescriptor({type:Spacer, propertiesFactory:function () : Object
                            {
                                return {height:20};
                            }// end function
                            }), new UIComponentDescriptor({type:Image, id:"_CheckUnionWindow_Image2", events:{click:"___CheckUnionWindow_Image2_click"}}), new UIComponentDescriptor({type:Spacer, propertiesFactory:function () : Object
                            {
                                return {width:120};
                            }// end function
                            }), new UIComponentDescriptor({type:Image, id:"_CheckUnionWindow_Image3", events:{click:"___CheckUnionWindow_Image3_click"}})]};
                        }// end function
                        })]};
                    }// end function
                    }), new UIComponentDescriptor({type:VBox, propertiesFactory:function () : Object
                    {
                        return {childDescriptors:[new UIComponentDescriptor({type:HBox, propertiesFactory:function () : Object
                        {
                            return {childDescriptors:[new UIComponentDescriptor({type:Spacer, propertiesFactory:function () : Object
                            {
                                return {width:80};
                            }// end function
                            }), new UIComponentDescriptor({type:Text, id:"_CheckUnionWindow_Text1"})]};
                        }// end function
                        }), new UIComponentDescriptor({type:Spacer, propertiesFactory:function () : Object
                        {
                            return {height:65};
                        }// end function
                        }), new UIComponentDescriptor({type:HBox, propertiesFactory:function () : Object
                        {
                            return {childDescriptors:[new UIComponentDescriptor({type:Spacer, propertiesFactory:function () : Object
                            {
                                return {width:70};
                            }// end function
                            }), new UIComponentDescriptor({type:Image, id:"_CheckUnionWindow_Image4", events:{click:"___CheckUnionWindow_Image4_click"}})]};
                        }// end function
                        })]};
                    }// end function
                    })]};
                }// end function
                })]};
            }// end function
            });
            _1075873300_swf_window = new Viking.EmbedSwfWindowCommon();
            _1210517843_swf_union = new Viking.EmbedSwfButtonCommon();
            _100077085_swf_back = new Viking.EmbedSwfButtonCommon();
            _1193840764_swf_close = new Viking.EmbedSwfButtonCommon();
            _342314684_yangUnit = new UnitVO();
            _1187309763_yinUnit = new UnitVO();
            _bindings = [];
            _watchers = [];
            _bindingsByDestination = {};
            _bindingsBeginWithWord = {};
            mx_internal::_document = this;
            return;
        }// end function

        private function _CheckUnionWindow_bindingsSetup() : Array
        {
            var binding:Binding;
            var result:Array;
            binding = new Binding(this, function () : Object
            {
                return _swf_window;
            }// end function
            , function (param1:Object) : void
            {
                _CheckUnionWindow_Image1.source = param1;
                return;
            }// end function
            , "_CheckUnionWindow_Image1.source");
            result[0] = binding;
            binding = new Binding(this, function () : String
            {
                var _loc_1:* = Utils.i18n("checkUnionConfirmation", _yangUnit.name, _yinUnit.name);
                var _loc_2:* = _loc_1 == undefined ? (null) : (String(_loc_1));
                return _loc_2;
            }// end function
            , function (param1:String) : void
            {
                _CheckUnionWindow_Label1.text = param1;
                return;
            }// end function
            , "_CheckUnionWindow_Label1.text");
            result[1] = binding;
            binding = new Binding(this, function () : String
            {
                var _loc_1:* = Utils.i18n("checkUnionConfirmation2");
                var _loc_2:* = _loc_1 == undefined ? (null) : (String(_loc_1));
                return _loc_2;
            }// end function
            , function (param1:String) : void
            {
                _CheckUnionWindow_Label2.text = param1;
                return;
            }// end function
            , "_CheckUnionWindow_Label2.text");
            result[2] = binding;
            binding = new Binding(this, function () : Object
            {
                return _swf_union;
            }// end function
            , function (param1:Object) : void
            {
                _CheckUnionWindow_Image2.source = param1;
                return;
            }// end function
            , "_CheckUnionWindow_Image2.source");
            result[3] = binding;
            binding = new Binding(this, function () : Object
            {
                return _swf_back;
            }// end function
            , function (param1:Object) : void
            {
                _CheckUnionWindow_Image3.source = param1;
                return;
            }// end function
            , "_CheckUnionWindow_Image3.source");
            result[4] = binding;
            binding = new Binding(this, function () : String
            {
                var _loc_1:* = Utils.i18n("checkUnionLackSoulCrystal");
                var _loc_2:* = _loc_1 == undefined ? (null) : (String(_loc_1));
                return _loc_2;
            }// end function
            , function (param1:String) : void
            {
                _CheckUnionWindow_Text1.text = param1;
                return;
            }// end function
            , "_CheckUnionWindow_Text1.text");
            result[5] = binding;
            binding = new Binding(this, function () : Object
            {
                return _swf_close;
            }// end function
            , function (param1:Object) : void
            {
                _CheckUnionWindow_Image4.source = param1;
                return;
            }// end function
            , "_CheckUnionWindow_Image4.source");
            result[6] = binding;
            return result;
        }// end function

        private function set _yangUnit(param1:UnitVO) : void
        {
            var _loc_2:* = this._342314684_yangUnit;
            if (_loc_2 !== param1)
            {
                this._342314684_yangUnit = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "_yangUnit", _loc_2, param1));
            }
            return;
        }// end function

        public function set yinUnit(param1:UnitVO) : void
        {
            _yinUnit = param1;
            return;
        }// end function

        private function set _yinUnit(param1:UnitVO) : void
        {
            var _loc_2:* = this._1187309763_yinUnit;
            if (_loc_2 !== param1)
            {
                this._1187309763_yinUnit = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "_yinUnit", _loc_2, param1));
            }
            return;
        }// end function

        override public function initialize() : void
        {
            var target:CheckUnionWindow;
            var watcherSetupUtilClass:Object;
            .mx_internal::setDocumentDescriptor(_documentDescriptor_);
            var bindings:* = _CheckUnionWindow_bindingsSetup();
            var watchers:Array;
            target;
            if (_watcherSetupUtil == null)
            {
                watcherSetupUtilClass = getDefinitionByName("_com_kbmj_viking_view_home_CheckUnionWindowWatcherSetupUtil");
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

        private function get _swf_window() : MovieClipLoaderAsset
        {
            return this._1075873300_swf_window;
        }// end function

        private function get _swf_back() : MovieClipLoaderAsset
        {
            return this._100077085_swf_back;
        }// end function

        public function init() : void
        {
            MovieClip(Loader(_swf_window.getChildAt(0)).content).gotoAndPlay(0);
            MovieClip(Loader(_swf_window.getChildAt(0)).content).gotoAndPlay("center_300x200");
            MovieClip(Loader(_swf_union.getChildAt(0)).content).gotoAndPlay(0);
            MovieClip(Loader(_swf_union.getChildAt(0)).content).gotoAndPlay("button_yes");
            MovieClip(Loader(_swf_back.getChildAt(0)).content).gotoAndPlay(0);
            MovieClip(Loader(_swf_back.getChildAt(0)).content).gotoAndPlay("button_no");
            MovieClip(Loader(_swf_close.getChildAt(0)).content).gotoAndPlay(0);
            MovieClip(Loader(_swf_close.getChildAt(0)).content).gotoAndPlay("button_close");
            return;
        }// end function

        private function set _swf_union(param1:MovieClipLoaderAsset) : void
        {
            var _loc_2:* = this._1210517843_swf_union;
            if (_loc_2 !== param1)
            {
                this._1210517843_swf_union = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "_swf_union", _loc_2, param1));
            }
            return;
        }// end function

        public function ___CheckUnionWindow_Image2_click(event:MouseEvent) : void
        {
            throwEvent(START_UNION);
            return;
        }// end function

        public function ___CheckUnionWindow_Image4_click(event:MouseEvent) : void
        {
            throwEvent(START_INDEX);
            return;
        }// end function

        private function get _yinUnit() : UnitVO
        {
            return this._1187309763_yinUnit;
        }// end function

        private function get _yangUnit() : UnitVO
        {
            return this._342314684_yangUnit;
        }// end function

        private function _CheckUnionWindow_bindingExprs() : void
        {
            var _loc_1:* = undefined;
            _loc_1 = _swf_window;
            _loc_1 = Utils.i18n("checkUnionConfirmation", _yangUnit.name, _yinUnit.name);
            _loc_1 = Utils.i18n("checkUnionConfirmation2");
            _loc_1 = _swf_union;
            _loc_1 = _swf_back;
            _loc_1 = Utils.i18n("checkUnionLackSoulCrystal");
            _loc_1 = _swf_close;
            return;
        }// end function

        public function set yangUnit(param1:UnitVO) : void
        {
            _yangUnit = param1;
            return;
        }// end function

        public function set viewStack(param1:ViewStack) : void
        {
            var _loc_2:* = this._1584105757viewStack;
            if (_loc_2 !== param1)
            {
                this._1584105757viewStack = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "viewStack", _loc_2, param1));
            }
            return;
        }// end function

        private function get _swf_union() : MovieClipLoaderAsset
        {
            return this._1210517843_swf_union;
        }// end function

        private function throwEvent(param1:String) : void
        {
            viewStack.selectedIndex = 0;
            dispatchEvent(new Event(param1));
            PopUpManager.removePopUp(this);
            return;
        }// end function

        private function set _swf_back(param1:MovieClipLoaderAsset) : void
        {
            var _loc_2:* = this._100077085_swf_back;
            if (_loc_2 !== param1)
            {
                this._100077085_swf_back = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "_swf_back", _loc_2, param1));
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

        public function get viewStack() : ViewStack
        {
            return this._1584105757viewStack;
        }// end function

        public function ___CheckUnionWindow_Image3_click(event:MouseEvent) : void
        {
            throwEvent(START_INDEX);
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

        public static function set watcherSetupUtil(param1:IWatcherSetupUtil) : void
        {
            CheckUnionWindow._watcherSetupUtil = param1;
            return;
        }// end function

    }
}
