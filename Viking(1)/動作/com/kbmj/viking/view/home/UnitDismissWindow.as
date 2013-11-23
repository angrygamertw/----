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

    public class UnitDismissWindow extends Canvas implements IBindingClient
    {
        private var _91329123_unit:UnitVO;
        var _watchers:Array;
        public var _UnitDismissWindow_Text1:Text;
        public var _UnitDismissWindow_Text2:Text;
        public var _UnitDismissWindow_Text3:Text;
        public var _UnitDismissWindow_Text4:Text;
        public var _UnitDismissWindow_Text5:Text;
        public var unitId:int;
        public var _UnitDismissWindow_Image3:Image;
        public var _UnitDismissWindow_Image1:Image;
        public var _UnitDismissWindow_Image2:Image;
        var _bindingsByDestination:Object;
        var _bindingsBeginWithWord:Object;
        private var _haveGold:int;
        private var _1193840764_swf_close:MovieClipLoaderAsset;
        private var _1818888257_swf_bg:MovieClipLoaderAsset;
        private var _648466145dismissBox:Box;
        private var _1329845262_swf_dismiss:MovieClipLoaderAsset;
        var _bindings:Array;
        private var _2036402605goldText:Text;
        private var _documentDescriptor_:UIComponentDescriptor;
        private static var _watcherSetupUtil:IWatcherSetupUtil;
        public static const UNIT_DISMISS:String = "unitdismiss";

        public function UnitDismissWindow()
        {
            _documentDescriptor_ = new UIComponentDescriptor({type:Canvas, propertiesFactory:function () : Object
            {
                return {childDescriptors:[new UIComponentDescriptor({type:Canvas}), new UIComponentDescriptor({type:Image, id:"_UnitDismissWindow_Image1"}), new UIComponentDescriptor({type:Box, id:"dismissBox", propertiesFactory:function () : Object
                {
                    return {percentWidth:100, percentHeight:100, visible:false, childDescriptors:[new UIComponentDescriptor({type:Canvas, propertiesFactory:function () : Object
                    {
                        return {childDescriptors:[new UIComponentDescriptor({type:Text, id:"_UnitDismissWindow_Text1", stylesFactory:function () : void
                        {
                            this.fontSize = 16;
                            this.fontWeight = "bold";
                            this.color = 15658734;
                            return;
                        }// end function
                        , propertiesFactory:function () : Object
                        {
                            return {width:200, x:340, y:147};
                        }// end function
                        }), new UIComponentDescriptor({type:Text, id:"_UnitDismissWindow_Text2", stylesFactory:function () : void
                        {
                            this.fontSize = 14;
                            return;
                        }// end function
                        , propertiesFactory:function () : Object
                        {
                            return {width:200, x:280, y:220};
                        }// end function
                        }), new UIComponentDescriptor({type:Text, id:"_UnitDismissWindow_Text3", stylesFactory:function () : void
                        {
                            this.fontSize = 14;
                            return;
                        }// end function
                        , propertiesFactory:function () : Object
                        {
                            return {width:200, x:280, y:240};
                        }// end function
                        }), new UIComponentDescriptor({type:Text, id:"_UnitDismissWindow_Text4", stylesFactory:function () : void
                        {
                            this.fontSize = 14;
                            return;
                        }// end function
                        , propertiesFactory:function () : Object
                        {
                            return {width:100, x:400, y:240};
                        }// end function
                        }), new UIComponentDescriptor({type:Text, id:"_UnitDismissWindow_Text5", stylesFactory:function () : void
                        {
                            this.fontSize = 14;
                            return;
                        }// end function
                        , propertiesFactory:function () : Object
                        {
                            return {width:100, x:280, y:260};
                        }// end function
                        }), new UIComponentDescriptor({type:Text, id:"goldText", stylesFactory:function () : void
                        {
                            this.fontSize = 14;
                            return;
                        }// end function
                        , propertiesFactory:function () : Object
                        {
                            return {width:100, x:350, y:260};
                        }// end function
                        }), new UIComponentDescriptor({type:Image, id:"_UnitDismissWindow_Image2", propertiesFactory:function () : Object
                        {
                            return {x:380, y:365};
                        }// end function
                        }), new UIComponentDescriptor({type:Image, id:"_UnitDismissWindow_Image3", propertiesFactory:function () : Object
                        {
                            return {x:260, y:365};
                        }// end function
                        })]};
                    }// end function
                    })]};
                }// end function
                })]};
            }// end function
            });
            _1193840764_swf_close = new Viking.EmbedSwfButtonCommon();
            _1329845262_swf_dismiss = new Viking.EmbedSwfButtonCommon();
            _1818888257_swf_bg = new Viking.EmbedSwfWindowCommon();
            _bindings = [];
            _watchers = [];
            _bindingsByDestination = {};
            _bindingsBeginWithWord = {};
            mx_internal::_document = this;
            this.addEventListener("creationComplete", ___UnitDismissWindow_Canvas1_creationComplete);
            return;
        }// end function

        private function _UnitDismissWindow_bindingExprs() : void
        {
            var _loc_1:* = undefined;
            _loc_1 = _swf_bg;
            _loc_1 = Utils.i18n("unitDismissTitle");
            _loc_1 = Utils.i18n("unitDismissUnitName", _unit.name);
            _loc_1 = Utils.i18n("generalJob") + ":" + _unit.jobName;
            _loc_1 = "Lv." + _unit.level;
            _loc_1 = Utils.i18n("unitDismissDismissalMoney");
            _loc_1 = _unit.level * 50 + "" + Utils.i18n("generalMoneyUnit");
            _loc_1 = _swf_close;
            _loc_1 = _swf_dismiss;
            return;
        }// end function

        private function set _swf_bg(param1:MovieClipLoaderAsset) : void
        {
            var _loc_2:* = this._1818888257_swf_bg;
            if (_loc_2 !== param1)
            {
                this._1818888257_swf_bg = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "_swf_bg", _loc_2, param1));
            }
            return;
        }// end function

        private function get _swf_close() : MovieClipLoaderAsset
        {
            return this._1193840764_swf_close;
        }// end function

        public function get unit() : UnitVO
        {
            return _unit;
        }// end function

        public function ___UnitDismissWindow_Canvas1_creationComplete(event:FlexEvent) : void
        {
            addSwf();
            return;
        }// end function

        private function closeWindow() : void
        {
            PopUpManager.removePopUp(this);
            return;
        }// end function

        public function setdata(param1:UnitVO, param2:int) : void
        {
            _unit = param1;
            _haveGold = param2;
            unitId = param1.unitId;
            if (param1.level * 50 > param2)
            {
                goldText.setStyle("color", 16711680);
            }
            else
            {
                goldText.setStyle("color", 0);
            }
            return;
        }// end function

        override public function initialize() : void
        {
            var target:UnitDismissWindow;
            var watcherSetupUtilClass:Object;
            .mx_internal::setDocumentDescriptor(_documentDescriptor_);
            var bindings:* = _UnitDismissWindow_bindingsSetup();
            var watchers:Array;
            target;
            if (_watcherSetupUtil == null)
            {
                watcherSetupUtilClass = getDefinitionByName("_com_kbmj_viking_view_home_UnitDismissWindowWatcherSetupUtil");
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

        private function get _swf_dismiss() : MovieClipLoaderAsset
        {
            return this._1329845262_swf_dismiss;
        }// end function

        private function addSwf() : void
        {
            Loader(_swf_close.getChildAt(0)).content.addEventListener("BUTTON_CLOSE", function (event:Event) : void
            {
                closeWindow();
                return;
            }// end function
            );
            MovieClip(Loader(_swf_close.getChildAt(0)).content).gotoAndPlay("button_close");
            Loader(_swf_dismiss.getChildAt(0)).content.addEventListener("BUTTON_DISMISS", function (event:Event) : void
            {
                sendEvent(UNIT_DISMISS);
                return;
            }// end function
            );
            MovieClip(Loader(_swf_dismiss.getChildAt(0)).content).gotoAndPlay("button_dismiss");
            Loader(_swf_bg.getChildAt(0)).content.addEventListener("ENLARGE_END", function (event:Event) : void
            {
                dismissBox.visible = true;
                return;
            }// end function
            );
            MovieClip(Loader(_swf_bg.getChildAt(0)).content).gotoAndPlay("center_300x270");
            return;
        }// end function

        private function set _swf_dismiss(param1:MovieClipLoaderAsset) : void
        {
            var _loc_2:* = this._1329845262_swf_dismiss;
            if (_loc_2 !== param1)
            {
                this._1329845262_swf_dismiss = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "_swf_dismiss", _loc_2, param1));
            }
            return;
        }// end function

        private function _UnitDismissWindow_bindingsSetup() : Array
        {
            var binding:Binding;
            var result:Array;
            binding = new Binding(this, function () : Object
            {
                return _swf_bg;
            }// end function
            , function (param1:Object) : void
            {
                _UnitDismissWindow_Image1.source = param1;
                return;
            }// end function
            , "_UnitDismissWindow_Image1.source");
            result[0] = binding;
            binding = new Binding(this, function () : String
            {
                var _loc_1:* = Utils.i18n("unitDismissTitle");
                var _loc_2:* = _loc_1 == undefined ? (null) : (String(_loc_1));
                return _loc_2;
            }// end function
            , function (param1:String) : void
            {
                _UnitDismissWindow_Text1.text = param1;
                return;
            }// end function
            , "_UnitDismissWindow_Text1.text");
            result[1] = binding;
            binding = new Binding(this, function () : String
            {
                var _loc_1:* = Utils.i18n("unitDismissUnitName", _unit.name);
                var _loc_2:* = _loc_1 == undefined ? (null) : (String(_loc_1));
                return _loc_2;
            }// end function
            , function (param1:String) : void
            {
                _UnitDismissWindow_Text2.text = param1;
                return;
            }// end function
            , "_UnitDismissWindow_Text2.text");
            result[2] = binding;
            binding = new Binding(this, function () : String
            {
                var _loc_1:* = Utils.i18n("generalJob") + ":" + _unit.jobName;
                var _loc_2:* = _loc_1 == undefined ? (null) : (String(_loc_1));
                return _loc_2;
            }// end function
            , function (param1:String) : void
            {
                _UnitDismissWindow_Text3.text = param1;
                return;
            }// end function
            , "_UnitDismissWindow_Text3.text");
            result[3] = binding;
            binding = new Binding(this, function () : String
            {
                var _loc_1:* = "Lv." + _unit.level;
                var _loc_2:* = _loc_1 == undefined ? (null) : (String(_loc_1));
                return _loc_2;
            }// end function
            , function (param1:String) : void
            {
                _UnitDismissWindow_Text4.text = param1;
                return;
            }// end function
            , "_UnitDismissWindow_Text4.text");
            result[4] = binding;
            binding = new Binding(this, function () : String
            {
                var _loc_1:* = Utils.i18n("unitDismissDismissalMoney");
                var _loc_2:* = _loc_1 == undefined ? (null) : (String(_loc_1));
                return _loc_2;
            }// end function
            , function (param1:String) : void
            {
                _UnitDismissWindow_Text5.text = param1;
                return;
            }// end function
            , "_UnitDismissWindow_Text5.text");
            result[5] = binding;
            binding = new Binding(this, function () : String
            {
                var _loc_1:* = _unit.level * 50 + "" + Utils.i18n("generalMoneyUnit");
                var _loc_2:* = _loc_1 == undefined ? (null) : (String(_loc_1));
                return _loc_2;
            }// end function
            , function (param1:String) : void
            {
                goldText.text = param1;
                return;
            }// end function
            , "goldText.text");
            result[6] = binding;
            binding = new Binding(this, function () : Object
            {
                return _swf_close;
            }// end function
            , function (param1:Object) : void
            {
                _UnitDismissWindow_Image2.source = param1;
                return;
            }// end function
            , "_UnitDismissWindow_Image2.source");
            result[7] = binding;
            binding = new Binding(this, function () : Object
            {
                return _swf_dismiss;
            }// end function
            , function (param1:Object) : void
            {
                _UnitDismissWindow_Image3.source = param1;
                return;
            }// end function
            , "_UnitDismissWindow_Image3.source");
            result[8] = binding;
            return result;
        }// end function

        public function get goldText() : Text
        {
            return this._2036402605goldText;
        }// end function

        public function init() : void
        {
            MovieClip(Loader(_swf_close.getChildAt(0)).content).gotoAndPlay(0);
            MovieClip(Loader(_swf_close.getChildAt(0)).content).gotoAndPlay("button_close");
            MovieClip(Loader(_swf_dismiss.getChildAt(0)).content).gotoAndPlay(0);
            MovieClip(Loader(_swf_dismiss.getChildAt(0)).content).gotoAndPlay("button_dismiss");
            MovieClip(Loader(_swf_bg.getChildAt(0)).content).gotoAndPlay(0);
            MovieClip(Loader(_swf_bg.getChildAt(0)).content).gotoAndPlay("center_300x270");
            dismissBox.visible = false;
            return;
        }// end function

        private function get _swf_bg() : MovieClipLoaderAsset
        {
            return this._1818888257_swf_bg;
        }// end function

        public function set dismissBox(param1:Box) : void
        {
            var _loc_2:* = this._648466145dismissBox;
            if (_loc_2 !== param1)
            {
                this._648466145dismissBox = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "dismissBox", _loc_2, param1));
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

        private function get _unit() : UnitVO
        {
            return this._91329123_unit;
        }// end function

        public function get dismissBox() : Box
        {
            return this._648466145dismissBox;
        }// end function

        public function set goldText(param1:Text) : void
        {
            var _loc_2:* = this._2036402605goldText;
            if (_loc_2 !== param1)
            {
                this._2036402605goldText = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "goldText", _loc_2, param1));
            }
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

        private function sendEvent(param1:String) : void
        {
            closeWindow();
            this.dispatchEvent(new Event(param1));
            return;
        }// end function

        public static function set watcherSetupUtil(param1:IWatcherSetupUtil) : void
        {
            UnitDismissWindow._watcherSetupUtil = param1;
            return;
        }// end function

    }
}
