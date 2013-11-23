package com.kbmj.viking.view.city
{
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

    public class RankUpCheckWindow extends PopupWindow implements IBindingClient
    {
        private var _1075873300_swf_window:MovieClipLoaderAsset;
        private var _91227403_rank:int = 1;
        var _watchers:Array;
        public var _RankUpCheckWindow_Text1:Text;
        public var _RankUpCheckWindow_Text2:Text;
        public var _RankUpCheckWindow_Text3:Text;
        public var _RankUpCheckWindow_Text4:Text;
        public var _RankUpCheckWindow_Text5:Text;
        public var _RankUpCheckWindow_Image1:Image;
        public var _RankUpCheckWindow_Image2:Image;
        public var _RankUpCheckWindow_Image3:Image;
        public var _RankUpCheckWindow_Image4:Image;
        public var _RankUpCheckWindow_Image5:Image;
        public var _RankUpCheckWindow_Image6:Image;
        private var _550983275_swf_yes:MovieClipLoaderAsset;
        private var _156781895announcement:Canvas;
        var _bindingsBeginWithWord:Object;
        private var _1818888637_swf_no:MovieClipLoaderAsset;
        private var _1193840764_swf_close:MovieClipLoaderAsset;
        var _bindingsByDestination:Object;
        private var _875124523indigoMessage:Text;
        private var _94627080check:Canvas;
        var _bindings:Array;
        private var _1218643219_swf_close_window:MovieClipLoaderAsset;
        private var _826047670_swf_icon_rank:MovieClipLoaderAsset;
        private var _documentDescriptor_:UIComponentDescriptor;
        private static var _watcherSetupUtil:IWatcherSetupUtil;
        public static const NAME:String = "rankUpCheckWindow";
        public static const RANK_UP:String = NAME + "rankUp";

        public function RankUpCheckWindow()
        {
            _documentDescriptor_ = new UIComponentDescriptor({type:PopupWindow, propertiesFactory:function () : Object
            {
                return {width:760, height:560, childDescriptors:[new UIComponentDescriptor({type:Image, id:"_RankUpCheckWindow_Image1"}), new UIComponentDescriptor({type:Text, id:"_RankUpCheckWindow_Text1", propertiesFactory:function () : Object
                {
                    return {styleName:"DealTitle", x:230, y:180, width:300};
                }// end function
                }), new UIComponentDescriptor({type:Canvas, propertiesFactory:function () : Object
                {
                    return {childDescriptors:[new UIComponentDescriptor({type:Canvas, id:"check", propertiesFactory:function () : Object
                    {
                        return {childDescriptors:[new UIComponentDescriptor({type:Text, id:"_RankUpCheckWindow_Text2", stylesFactory:function () : void
                        {
                            this.fontSize = 14;
                            return;
                        }// end function
                        , propertiesFactory:function () : Object
                        {
                            return {x:250, y:215};
                        }// end function
                        }), new UIComponentDescriptor({type:Text, id:"_RankUpCheckWindow_Text3", stylesFactory:function () : void
                        {
                            this.fontSize = 14;
                            return;
                        }// end function
                        , propertiesFactory:function () : Object
                        {
                            return {x:250, y:285};
                        }// end function
                        }), new UIComponentDescriptor({type:Image, id:"_RankUpCheckWindow_Image2", events:{click:"___RankUpCheckWindow_Image2_click"}, propertiesFactory:function () : Object
                        {
                            return {y:330};
                        }// end function
                        }), new UIComponentDescriptor({type:Image, id:"_RankUpCheckWindow_Image3", events:{click:"___RankUpCheckWindow_Image3_click"}, propertiesFactory:function () : Object
                        {
                            return {y:330};
                        }// end function
                        })]};
                    }// end function
                    }), new UIComponentDescriptor({type:Canvas, id:"announcement", propertiesFactory:function () : Object
                    {
                        return {childDescriptors:[new UIComponentDescriptor({type:Text, id:"_RankUpCheckWindow_Text4", stylesFactory:function () : void
                        {
                            this.fontSize = 14;
                            return;
                        }// end function
                        , propertiesFactory:function () : Object
                        {
                            return {x:250, y:215};
                        }// end function
                        }), new UIComponentDescriptor({type:Text, id:"_RankUpCheckWindow_Text5", stylesFactory:function () : void
                        {
                            this.fontSize = 14;
                            return;
                        }// end function
                        , propertiesFactory:function () : Object
                        {
                            return {x:250, y:245};
                        }// end function
                        }), new UIComponentDescriptor({type:Image, id:"_RankUpCheckWindow_Image4", propertiesFactory:function () : Object
                        {
                            return {x:370, y:275};
                        }// end function
                        }), new UIComponentDescriptor({type:Text, id:"indigoMessage", stylesFactory:function () : void
                        {
                            this.fontSize = 14;
                            return;
                        }// end function
                        , propertiesFactory:function () : Object
                        {
                            return {x:250, y:305, visible:false};
                        }// end function
                        }), new UIComponentDescriptor({type:Image, id:"_RankUpCheckWindow_Image5", events:{click:"___RankUpCheckWindow_Image5_click"}, propertiesFactory:function () : Object
                        {
                            return {x:325, y:330};
                        }// end function
                        })]};
                    }// end function
                    })]};
                }// end function
                }), new UIComponentDescriptor({type:Image, id:"_RankUpCheckWindow_Image6", events:{click:"___RankUpCheckWindow_Image6_click"}, propertiesFactory:function () : Object
                {
                    return {x:505, y:180};
                }// end function
                })]};
            }// end function
            });
            _1075873300_swf_window = new Viking.EmbedSwfWindowCommon();
            _550983275_swf_yes = new Viking.EmbedSwfButtonCommon();
            _1818888637_swf_no = new Viking.EmbedSwfButtonCommon();
            _1193840764_swf_close = new Viking.EmbedSwfButtonCommon();
            _1218643219_swf_close_window = new Viking.EmbedSwfButtonCloseWindow();
            _826047670_swf_icon_rank = new Viking.EmbedSwfIconRank();
            _bindings = [];
            _watchers = [];
            _bindingsByDestination = {};
            _bindingsBeginWithWord = {};
            mx_internal::_document = this;
            this.width = 760;
            this.height = 560;
            this.addEventListener("creationComplete", ___RankUpCheckWindow_PopupWindow1_creationComplete);
            return;
        }// end function

        private function get _swf_close() : MovieClipLoaderAsset
        {
            return this._1193840764_swf_close;
        }// end function

        private function set _swf_icon_rank(param1:MovieClipLoaderAsset) : void
        {
            var _loc_2:* = this._826047670_swf_icon_rank;
            if (_loc_2 !== param1)
            {
                this._826047670_swf_icon_rank = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "_swf_icon_rank", _loc_2, param1));
            }
            return;
        }// end function

        public function closeWindow() : void
        {
            onClose();
            MovieClip(Loader(_swf_no.getChildAt(0)).content).gotoAndPlay(0);
            MovieClip(Loader(_swf_no.getChildAt(0)).content).gotoAndPlay("button_no");
            MovieClip(Loader(_swf_close.getChildAt(0)).content).gotoAndPlay(0);
            MovieClip(Loader(_swf_close.getChildAt(0)).content).gotoAndPlay("button_close");
            MovieClip(Loader(_swf_close_window.getChildAt(0)).content).gotoAndPlay(1);
            return;
        }// end function

        private function get _rank() : int
        {
            return this._91227403_rank;
        }// end function

        public function ___RankUpCheckWindow_Image3_click(event:MouseEvent) : void
        {
            closeWindow();
            return;
        }// end function

        public function get check() : Canvas
        {
            return this._94627080check;
        }// end function

        private function get _swf_close_window() : MovieClipLoaderAsset
        {
            return this._1218643219_swf_close_window;
        }// end function

        public function ___RankUpCheckWindow_PopupWindow1_creationComplete(event:FlexEvent) : void
        {
            setup();
            return;
        }// end function

        public function set announcement(param1:Canvas) : void
        {
            var _loc_2:* = this._156781895announcement;
            if (_loc_2 !== param1)
            {
                this._156781895announcement = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "announcement", _loc_2, param1));
            }
            return;
        }// end function

        override public function initialize() : void
        {
            var target:RankUpCheckWindow;
            var watcherSetupUtilClass:Object;
            .mx_internal::setDocumentDescriptor(_documentDescriptor_);
            var bindings:* = _RankUpCheckWindow_bindingsSetup();
            var watchers:Array;
            target;
            if (_watcherSetupUtil == null)
            {
                watcherSetupUtilClass = getDefinitionByName("_com_kbmj_viking_view_city_RankUpCheckWindowWatcherSetupUtil");
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

        private function _RankUpCheckWindow_bindingsSetup() : Array
        {
            var binding:Binding;
            var result:Array;
            binding = new Binding(this, function () : Object
            {
                return _swf_window;
            }// end function
            , function (param1:Object) : void
            {
                _RankUpCheckWindow_Image1.source = param1;
                return;
            }// end function
            , "_RankUpCheckWindow_Image1.source");
            result[0] = binding;
            binding = new Binding(this, function () : String
            {
                var _loc_1:* = Utils.i18n("rankUpCheckTitle");
                var _loc_2:* = _loc_1 == undefined ? (null) : (String(_loc_1));
                return _loc_2;
            }// end function
            , function (param1:String) : void
            {
                _RankUpCheckWindow_Text1.text = param1;
                return;
            }// end function
            , "_RankUpCheckWindow_Text1.text");
            result[1] = binding;
            binding = new Binding(this, function () : String
            {
                var _loc_1:* = Utils.i18n("rankUpCheckCanRankUp");
                var _loc_2:* = _loc_1 == undefined ? (null) : (String(_loc_1));
                return _loc_2;
            }// end function
            , function (param1:String) : void
            {
                _RankUpCheckWindow_Text2.text = param1;
                return;
            }// end function
            , "_RankUpCheckWindow_Text2.text");
            result[2] = binding;
            binding = new Binding(this, function () : String
            {
                var _loc_1:* = Utils.i18n("rankUpCheckAskRankUp");
                var _loc_2:* = _loc_1 == undefined ? (null) : (String(_loc_1));
                return _loc_2;
            }// end function
            , function (param1:String) : void
            {
                _RankUpCheckWindow_Text3.text = param1;
                return;
            }// end function
            , "_RankUpCheckWindow_Text3.text");
            result[3] = binding;
            binding = new Binding(this, function () : Number
            {
                return 325 - 65;
            }// end function
            , function (param1:Number) : void
            {
                _RankUpCheckWindow_Image2.x = param1;
                return;
            }// end function
            , "_RankUpCheckWindow_Image2.x");
            result[4] = binding;
            binding = new Binding(this, function () : Object
            {
                return _swf_yes;
            }// end function
            , function (param1:Object) : void
            {
                _RankUpCheckWindow_Image2.source = param1;
                return;
            }// end function
            , "_RankUpCheckWindow_Image2.source");
            result[5] = binding;
            binding = new Binding(this, function () : Number
            {
                return 325 + 65;
            }// end function
            , function (param1:Number) : void
            {
                _RankUpCheckWindow_Image3.x = param1;
                return;
            }// end function
            , "_RankUpCheckWindow_Image3.x");
            result[6] = binding;
            binding = new Binding(this, function () : Object
            {
                return _swf_no;
            }// end function
            , function (param1:Object) : void
            {
                _RankUpCheckWindow_Image3.source = param1;
                return;
            }// end function
            , "_RankUpCheckWindow_Image3.source");
            result[7] = binding;
            binding = new Binding(this, function () : String
            {
                var _loc_1:* = Utils.i18n("localize41");
                var _loc_2:* = _loc_1 == undefined ? (null) : (String(_loc_1));
                return _loc_2;
            }// end function
            , function (param1:String) : void
            {
                _RankUpCheckWindow_Text4.text = param1;
                return;
            }// end function
            , "_RankUpCheckWindow_Text4.text");
            result[8] = binding;
            binding = new Binding(this, function () : String
            {
                var _loc_1:* = Utils.i18n("rankUpMessage");
                var _loc_2:* = _loc_1 == undefined ? (null) : (String(_loc_1));
                return _loc_2;
            }// end function
            , function (param1:String) : void
            {
                _RankUpCheckWindow_Text5.text = param1;
                return;
            }// end function
            , "_RankUpCheckWindow_Text5.text");
            result[9] = binding;
            binding = new Binding(this, function () : Object
            {
                return _swf_icon_rank;
            }// end function
            , function (param1:Object) : void
            {
                _RankUpCheckWindow_Image4.source = param1;
                return;
            }// end function
            , "_RankUpCheckWindow_Image4.source");
            result[10] = binding;
            binding = new Binding(this, function () : String
            {
                var _loc_1:* = Utils.i18n("indigoRankUp");
                var _loc_2:* = _loc_1 == undefined ? (null) : (String(_loc_1));
                return _loc_2;
            }// end function
            , function (param1:String) : void
            {
                indigoMessage.text = param1;
                return;
            }// end function
            , "indigoMessage.text");
            result[11] = binding;
            binding = new Binding(this, function () : Object
            {
                return _swf_close;
            }// end function
            , function (param1:Object) : void
            {
                _RankUpCheckWindow_Image5.source = param1;
                return;
            }// end function
            , "_RankUpCheckWindow_Image5.source");
            result[12] = binding;
            binding = new Binding(this, function () : Object
            {
                return _swf_close_window;
            }// end function
            , function (param1:Object) : void
            {
                _RankUpCheckWindow_Image6.source = param1;
                return;
            }// end function
            , "_RankUpCheckWindow_Image6.source");
            result[13] = binding;
            return result;
        }// end function

        public function set indigoMessage(param1:Text) : void
        {
            var _loc_2:* = this._875124523indigoMessage;
            if (_loc_2 !== param1)
            {
                this._875124523indigoMessage = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "indigoMessage", _loc_2, param1));
            }
            return;
        }// end function

        private function _RankUpCheckWindow_bindingExprs() : void
        {
            var _loc_1:* = undefined;
            _loc_1 = _swf_window;
            _loc_1 = Utils.i18n("rankUpCheckTitle");
            _loc_1 = Utils.i18n("rankUpCheckCanRankUp");
            _loc_1 = Utils.i18n("rankUpCheckAskRankUp");
            _loc_1 = 325 - 65;
            _loc_1 = _swf_yes;
            _loc_1 = 325 + 65;
            _loc_1 = _swf_no;
            _loc_1 = Utils.i18n("localize41");
            _loc_1 = Utils.i18n("rankUpMessage");
            _loc_1 = _swf_icon_rank;
            _loc_1 = Utils.i18n("indigoRankUp");
            _loc_1 = _swf_close;
            _loc_1 = _swf_close_window;
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

        private function set _rank(param1:int) : void
        {
            var _loc_2:* = this._91227403_rank;
            if (_loc_2 !== param1)
            {
                this._91227403_rank = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "_rank", _loc_2, param1));
            }
            return;
        }// end function

        private function get _swf_no() : MovieClipLoaderAsset
        {
            return this._1818888637_swf_no;
        }// end function

        public function get announcement() : Canvas
        {
            return this._156781895announcement;
        }// end function

        public function ___RankUpCheckWindow_Image5_click(event:MouseEvent) : void
        {
            closeWindow();
            return;
        }// end function

        public function ___RankUpCheckWindow_Image2_click(event:MouseEvent) : void
        {
            rankUp();
            return;
        }// end function

        public function ___RankUpCheckWindow_Image6_click(event:MouseEvent) : void
        {
            closeWindow();
            return;
        }// end function

        public function set rank(param1:int) : void
        {
            var _loc_2:String = null;
            _rank = param1;
            if (_rank >= 1 && _rank <= 15)
            {
                _loc_2 = "";
                if (_rank < 10)
                {
                    _loc_2 = "0";
                }
                if (_rank == 7)
                {
                    indigoMessage.visible = true;
                }
                else
                {
                    indigoMessage.visible = false;
                }
                MovieClip(Loader(_swf_icon_rank.getChildAt(0)).content).gotoAndStop("rank_" + _loc_2 + _rank);
            }
            return;
        }// end function

        public function get indigoMessage() : Text
        {
            return this._875124523indigoMessage;
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

        private function get _swf_icon_rank() : MovieClipLoaderAsset
        {
            return this._826047670_swf_icon_rank;
        }// end function

        public function set check(param1:Canvas) : void
        {
            var _loc_2:* = this._94627080check;
            if (_loc_2 !== param1)
            {
                this._94627080check = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "check", _loc_2, param1));
            }
            return;
        }// end function

        private function set _swf_yes(param1:MovieClipLoaderAsset) : void
        {
            var _loc_2:* = this._550983275_swf_yes;
            if (_loc_2 !== param1)
            {
                this._550983275_swf_yes = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "_swf_yes", _loc_2, param1));
            }
            return;
        }// end function

        private function rankUp() : void
        {
            sendEvent(RANK_UP);
            this.onClose();
            MovieClip(Loader(_swf_yes.getChildAt(0)).content).gotoAndPlay(0);
            MovieClip(Loader(_swf_yes.getChildAt(0)).content).gotoAndPlay("button_yes");
            return;
        }// end function

        private function get _swf_yes() : MovieClipLoaderAsset
        {
            return this._550983275_swf_yes;
        }// end function

        public function closed() : void
        {
            this.onClose();
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

        private function set _swf_no(param1:MovieClipLoaderAsset) : void
        {
            var _loc_2:* = this._1818888637_swf_no;
            if (_loc_2 !== param1)
            {
                this._1818888637_swf_no = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "_swf_no", _loc_2, param1));
            }
            return;
        }// end function

        private function get _swf_window() : MovieClipLoaderAsset
        {
            return this._1075873300_swf_window;
        }// end function

        private function setup() : void
        {
            MovieClip(Loader(_swf_window.getChildAt(0)).content).gotoAndPlay("center_300x200");
            MovieClip(Loader(_swf_yes.getChildAt(0)).content).gotoAndPlay("button_yes");
            MovieClip(Loader(_swf_no.getChildAt(0)).content).gotoAndPlay("button_no");
            MovieClip(Loader(_swf_close.getChildAt(0)).content).gotoAndPlay("button_close");
            return;
        }// end function

        public static function set watcherSetupUtil(param1:IWatcherSetupUtil) : void
        {
            RankUpCheckWindow._watcherSetupUtil = param1;
            return;
        }// end function

    }
}
