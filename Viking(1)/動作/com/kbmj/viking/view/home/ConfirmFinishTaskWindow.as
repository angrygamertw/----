package com.kbmj.viking.view.home
{
    import com.kbmj.viking.lib.*;
    import com.kbmj.viking.view.*;
    import com.kbmj.viking.vo.home.*;
    import flash.display.*;
    import flash.events.*;
    import flash.utils.*;
    import mx.binding.*;
    import mx.containers.*;
    import mx.controls.*;
    import mx.core.*;
    import mx.events.*;
    import mx.managers.*;

    public class ConfirmFinishTaskWindow extends PopupWindow implements IBindingClient
    {
        private var _embed_mxml__images_icon_power_png_227571469:Class;
        public var _ConfirmFinishTaskWindow_Image1:Image;
        public var _ConfirmFinishTaskWindow_Image3:Image;
        public var _ConfirmFinishTaskWindow_Image4:Image;
        private var _1075873300_swf_window:MovieClipLoaderAsset;
        public var _ConfirmFinishTaskWindow_Label1:Label;
        public var _ConfirmFinishTaskWindow_Label2:Label;
        var _watchers:Array;
        private var _106858757power:int;
        private var _91287140_task:TaskVO;
        var _bindingsByDestination:Object;
        var _bindingsBeginWithWord:Object;
        private var _1818888664_swf_ok:MovieClipLoaderAsset;
        private var _1193840764_swf_close:MovieClipLoaderAsset;
        var _bindings:Array;
        private var _documentDescriptor_:UIComponentDescriptor;
        private static var _watcherSetupUtil:IWatcherSetupUtil;
        private static var powers:Array = [50, 100, 200];
        public static const CONFIRMED:String = "ConfirmFinishTaskWindow/Confirmed";

        public function ConfirmFinishTaskWindow()
        {
            _documentDescriptor_ = new UIComponentDescriptor({type:PopupWindow, propertiesFactory:function () : Object
            {
                return {childDescriptors:[new UIComponentDescriptor({type:Image, id:"_ConfirmFinishTaskWindow_Image1"}), new UIComponentDescriptor({type:VBox, propertiesFactory:function () : Object
                {
                    return {x:205, y:225, childDescriptors:[new UIComponentDescriptor({type:Spacer, propertiesFactory:function () : Object
                    {
                        return {percentHeight:100};
                    }// end function
                    }), new UIComponentDescriptor({type:VBox, stylesFactory:function () : void
                    {
                        this.horizontalCenter = "20";
                        this.top = "100";
                        return;
                    }// end function
                    , propertiesFactory:function () : Object
                    {
                        return {childDescriptors:[new UIComponentDescriptor({type:HBox, stylesFactory:function () : void
                        {
                            this.horizontalGap = 2;
                            return;
                        }// end function
                        , propertiesFactory:function () : Object
                        {
                            return {childDescriptors:[new UIComponentDescriptor({type:Image, propertiesFactory:function () : Object
                            {
                                return {source:_embed_mxml__images_icon_power_png_227571469};
                            }// end function
                            }), new UIComponentDescriptor({type:Label, id:"_ConfirmFinishTaskWindow_Label1", propertiesFactory:function () : Object
                            {
                                return {styleName:"UnitSelectText"};
                            }// end function
                            })]};
                        }// end function
                        }), new UIComponentDescriptor({type:Label, id:"_ConfirmFinishTaskWindow_Label2", propertiesFactory:function () : Object
                        {
                            return {styleName:"UnitSelectText", text:""};
                        }// end function
                        }), new UIComponentDescriptor({type:HBox, stylesFactory:function () : void
                        {
                            this.horizontalCenter = "20";
                            this.horizontalGap = 10;
                            return;
                        }// end function
                        , propertiesFactory:function () : Object
                        {
                            return {percentWidth:100, childDescriptors:[new UIComponentDescriptor({type:Spacer, propertiesFactory:function () : Object
                            {
                                return {width:40};
                            }// end function
                            }), new UIComponentDescriptor({type:Image, id:"_ConfirmFinishTaskWindow_Image3", events:{click:"___ConfirmFinishTaskWindow_Image3_click"}}), new UIComponentDescriptor({type:Spacer, propertiesFactory:function () : Object
                            {
                                return {width:120};
                            }// end function
                            }), new UIComponentDescriptor({type:Image, id:"_ConfirmFinishTaskWindow_Image4", events:{click:"___ConfirmFinishTaskWindow_Image4_click"}})]};
                        }// end function
                        })]};
                    }// end function
                    }), new UIComponentDescriptor({type:Spacer, propertiesFactory:function () : Object
                    {
                        return {percentHeight:100};
                    }// end function
                    })]};
                }// end function
                })]};
            }// end function
            });
            _1075873300_swf_window = new Viking.EmbedSwfWindowCommon();
            _1818888664_swf_ok = new Viking.EmbedSwfButtonCommon();
            _1193840764_swf_close = new Viking.EmbedSwfButtonCommon();
            _embed_mxml__images_icon_power_png_227571469 = ConfirmFinishTaskWindow__embed_mxml__images_icon_power_png_227571469;
            _bindings = [];
            _watchers = [];
            _bindingsByDestination = {};
            _bindingsBeginWithWord = {};
            mx_internal::_document = this;
            this.percentHeight = 100;
            return;
        }// end function

        public function get task() : TaskVO
        {
            return _task;
        }// end function

        public function set task(param1:TaskVO) : void
        {
            _task = param1;
            power = powers[(_task.tier - 1)];
            return;
        }// end function

        override public function initialize() : void
        {
            var target:ConfirmFinishTaskWindow;
            var watcherSetupUtilClass:Object;
            .mx_internal::setDocumentDescriptor(_documentDescriptor_);
            var bindings:* = _ConfirmFinishTaskWindow_bindingsSetup();
            var watchers:Array;
            target;
            if (_watcherSetupUtil == null)
            {
                watcherSetupUtilClass = getDefinitionByName("_com_kbmj_viking_view_home_ConfirmFinishTaskWindowWatcherSetupUtil");
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

        private function _ConfirmFinishTaskWindow_bindingsSetup() : Array
        {
            var binding:Binding;
            var result:Array;
            binding = new Binding(this, function () : Object
            {
                return _swf_window;
            }// end function
            , function (param1:Object) : void
            {
                _ConfirmFinishTaskWindow_Image1.source = param1;
                return;
            }// end function
            , "_ConfirmFinishTaskWindow_Image1.source");
            result[0] = binding;
            binding = new Binding(this, function () : String
            {
                var _loc_1:* = Utils.i18n("confirmFinishTaskConf", power);
                var _loc_2:* = _loc_1 == undefined ? (null) : (String(_loc_1));
                return _loc_2;
            }// end function
            , function (param1:String) : void
            {
                _ConfirmFinishTaskWindow_Label1.text = param1;
                return;
            }// end function
            , "_ConfirmFinishTaskWindow_Label1.text");
            result[1] = binding;
            binding = new Binding(this, function () : uint
            {
                return 16711680;
            }// end function
            , function (param1:uint) : void
            {
                _ConfirmFinishTaskWindow_Label2.setStyle("color", param1);
                return;
            }// end function
            , "_ConfirmFinishTaskWindow_Label2.color");
            result[2] = binding;
            binding = new Binding(this, function () : Object
            {
                return _swf_ok;
            }// end function
            , function (param1:Object) : void
            {
                _ConfirmFinishTaskWindow_Image3.source = param1;
                return;
            }// end function
            , "_ConfirmFinishTaskWindow_Image3.source");
            result[3] = binding;
            binding = new Binding(this, function () : Object
            {
                return _swf_close;
            }// end function
            , function (param1:Object) : void
            {
                _ConfirmFinishTaskWindow_Image4.source = param1;
                return;
            }// end function
            , "_ConfirmFinishTaskWindow_Image4.source");
            result[4] = binding;
            return result;
        }// end function

        private function get power() : int
        {
            return this._106858757power;
        }// end function

        public function init() : void
        {
            MovieClip(Loader(_swf_window.getChildAt(0)).content).gotoAndPlay(0);
            MovieClip(Loader(_swf_window.getChildAt(0)).content).gotoAndPlay("center_400x180");
            MovieClip(Loader(_swf_ok.getChildAt(0)).content).gotoAndPlay(0);
            MovieClip(Loader(_swf_ok.getChildAt(0)).content).gotoAndPlay("button_yes");
            MovieClip(Loader(_swf_close.getChildAt(0)).content).gotoAndPlay(0);
            MovieClip(Loader(_swf_close.getChildAt(0)).content).gotoAndPlay("button_no");
            return;
        }// end function

        private function set _swf_ok(param1:MovieClipLoaderAsset) : void
        {
            var _loc_2:* = this._1818888664_swf_ok;
            if (_loc_2 !== param1)
            {
                this._1818888664_swf_ok = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "_swf_ok", _loc_2, param1));
            }
            return;
        }// end function

        public function ___ConfirmFinishTaskWindow_Image3_click(event:MouseEvent) : void
        {
            onConfirm();
            return;
        }// end function

        private function set power(param1:int) : void
        {
            var _loc_2:* = this._106858757power;
            if (_loc_2 !== param1)
            {
                this._106858757power = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "power", _loc_2, param1));
            }
            return;
        }// end function

        private function set _task(param1:TaskVO) : void
        {
            var _loc_2:* = this._91287140_task;
            if (_loc_2 !== param1)
            {
                this._91287140_task = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "_task", _loc_2, param1));
            }
            return;
        }// end function

        private function get _swf_ok() : MovieClipLoaderAsset
        {
            return this._1818888664_swf_ok;
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

        private function onConfirm() : void
        {
            sendPopupEvent(CONFIRMED, task.taskId);
            PopUpManager.removePopUp(this);
            return;
        }// end function

        private function get _task() : TaskVO
        {
            return this._91287140_task;
        }// end function

        private function _ConfirmFinishTaskWindow_bindingExprs() : void
        {
            var _loc_1:* = undefined;
            _loc_1 = _swf_window;
            _loc_1 = Utils.i18n("confirmFinishTaskConf", power);
            _loc_1 = 16711680;
            _loc_1 = _swf_ok;
            _loc_1 = _swf_close;
            return;
        }// end function

        private function get _swf_window() : MovieClipLoaderAsset
        {
            return this._1075873300_swf_window;
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

        public function ___ConfirmFinishTaskWindow_Image4_click(event:MouseEvent) : void
        {
            onClose();
            return;
        }// end function

        public static function set watcherSetupUtil(param1:IWatcherSetupUtil) : void
        {
            ConfirmFinishTaskWindow._watcherSetupUtil = param1;
            return;
        }// end function

    }
}
