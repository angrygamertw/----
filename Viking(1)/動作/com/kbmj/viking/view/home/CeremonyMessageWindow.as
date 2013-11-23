package com.kbmj.viking.view.home
{
    import com.kbmj.viking.view.*;
    import flash.display.*;
    import flash.events.*;
    import flash.utils.*;
    import mx.binding.*;
    import mx.containers.*;
    import mx.controls.*;
    import mx.core.*;
    import mx.events.*;

    public class CeremonyMessageWindow extends PopupWindow implements IBindingClient
    {
        var _bindingsByDestination:Object;
        var _bindingsBeginWithWord:Object;
        private var _91501051_newUnit:Object;
        private var _1193840764_swf_close:MovieClipLoaderAsset;
        private var _1818888257_swf_bg:MovieClipLoaderAsset;
        public var _CeremonyMessageWindow_Text1:Text;
        var _watchers:Array;
        private var _1745840835massageCanvas:Canvas;
        private var _1495155691_messageText:String;
        public var _CeremonyMessageWindow_Image2:Image;
        public var _CeremonyMessageWindow_Image1:Image;
        var _bindings:Array;
        private var _documentDescriptor_:UIComponentDescriptor;
        public static const NORMAL_SUMMON_MESSAGE:String = NAME + "normalSummonMessage";
        private static var _watcherSetupUtil:IWatcherSetupUtil;
        public static const SUMMON_MESSAGE:String = NAME + "summonMessage";
        public static const NAME:String = "ceremonyMessageWindow";
        public static const MESSAGE_OK:String = NAME + "messageOk";
        public static const UNION_MESSAGE:String = NAME + "unionMessage";
        public static const AWAKE_UNION_MESSAGE:String = NAME + "awakeUnionMessage";

        public function CeremonyMessageWindow()
        {
            _documentDescriptor_ = new UIComponentDescriptor({type:PopupWindow, propertiesFactory:function () : Object
            {
                return {childDescriptors:[new UIComponentDescriptor({type:Image, id:"_CeremonyMessageWindow_Image1"}), new UIComponentDescriptor({type:Canvas, id:"massageCanvas", propertiesFactory:function () : Object
                {
                    return {visible:false, childDescriptors:[new UIComponentDescriptor({type:Box, propertiesFactory:function () : Object
                    {
                        return {x:260, y:96, width:200, childDescriptors:[new UIComponentDescriptor({type:Text, id:"_CeremonyMessageWindow_Text1", stylesFactory:function () : void
                        {
                            this.textAlign = "center";
                            return;
                        }// end function
                        })]};
                    }// end function
                    }), new UIComponentDescriptor({type:Image, id:"_CeremonyMessageWindow_Image2", propertiesFactory:function () : Object
                    {
                        return {x:324, y:126};
                    }// end function
                    })]};
                }// end function
                })]};
            }// end function
            });
            _1193840764_swf_close = new Viking.EmbedSwfButtonCommon();
            _1818888257_swf_bg = new Viking.EmbedSwfWindowCommon();
            _91501051_newUnit = new Object();
            _1495155691_messageText = new String();
            _bindings = [];
            _watchers = [];
            _bindingsByDestination = {};
            _bindingsBeginWithWord = {};
            mx_internal::_document = this;
            this.addEventListener("creationComplete", ___CeremonyMessageWindow_PopupWindow1_creationComplete);
            return;
        }// end function

        private function get _swf_bg() : MovieClipLoaderAsset
        {
            return this._1818888257_swf_bg;
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

        public function get massageCanvas() : Canvas
        {
            return this._1745840835massageCanvas;
        }// end function

        public function set massageCanvas(param1:Canvas) : void
        {
            var _loc_2:* = this._1745840835massageCanvas;
            if (_loc_2 !== param1)
            {
                this._1745840835massageCanvas = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "massageCanvas", _loc_2, param1));
            }
            return;
        }// end function

        public function set newUnit(param1:Object) : void
        {
            _newUnit = param1;
            return;
        }// end function

        private function get _newUnit() : Object
        {
            return this._91501051_newUnit;
        }// end function

        public function init(param1:String) : void
        {
            massageCanvas.visible = false;
            MovieClip(Loader(_swf_close.getChildAt(0)).content).gotoAndPlay(0);
            MovieClip(Loader(_swf_close.getChildAt(0)).content).gotoAndPlay("button_close");
            MovieClip(Loader(_swf_bg.getChildAt(0)).content).gotoAndPlay(0);
            MovieClip(Loader(_swf_bg.getChildAt(0)).content).gotoAndPlay(param1);
            return;
        }// end function

        private function set _newUnit(param1:Object) : void
        {
            var _loc_2:* = this._91501051_newUnit;
            if (_loc_2 !== param1)
            {
                this._91501051_newUnit = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "_newUnit", _loc_2, param1));
            }
            return;
        }// end function

        private function messageEnd() : void
        {
            sendEvent(MESSAGE_OK);
            return;
        }// end function

        private function get _messageText() : String
        {
            return this._1495155691_messageText;
        }// end function

        public function ___CeremonyMessageWindow_PopupWindow1_creationComplete(event:FlexEvent) : void
        {
            addSwf();
            return;
        }// end function

        private function addSwf() : void
        {
            Loader(_swf_close.getChildAt(0)).content.addEventListener("BUTTON_CLOSE", function (event:Event) : void
            {
                messageEnd();
                return;
            }// end function
            );
            MovieClip(Loader(_swf_close.getChildAt(0)).content).gotoAndPlay("button_close");
            Loader(_swf_bg.getChildAt(0)).content.addEventListener("ENLARGE_END", function (event:Event) : void
            {
                massageCanvas.visible = true;
                return;
            }// end function
            );
            MovieClip(Loader(_swf_bg.getChildAt(0)).content).gotoAndPlay("top_240x80");
            return;
        }// end function

        private function _CeremonyMessageWindow_bindingExprs() : void
        {
            var _loc_1:* = undefined;
            _loc_1 = _swf_bg;
            _loc_1 = _newUnit.name + "" + _messageText;
            _loc_1 = _swf_close;
            return;
        }// end function

        public function set messageText(param1:String) : void
        {
            _messageText = param1;
            return;
        }// end function

        private function set _messageText(param1:String) : void
        {
            var _loc_2:* = this._1495155691_messageText;
            if (_loc_2 !== param1)
            {
                this._1495155691_messageText = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "_messageText", _loc_2, param1));
            }
            return;
        }// end function

        private function _CeremonyMessageWindow_bindingsSetup() : Array
        {
            var binding:Binding;
            var result:Array;
            binding = new Binding(this, function () : Object
            {
                return _swf_bg;
            }// end function
            , function (param1:Object) : void
            {
                _CeremonyMessageWindow_Image1.source = param1;
                return;
            }// end function
            , "_CeremonyMessageWindow_Image1.source");
            result[0] = binding;
            binding = new Binding(this, function () : String
            {
                var _loc_1:* = _newUnit.name + "" + _messageText;
                var _loc_2:* = _loc_1 == undefined ? (null) : (String(_loc_1));
                return _loc_2;
            }// end function
            , function (param1:String) : void
            {
                _CeremonyMessageWindow_Text1.text = param1;
                return;
            }// end function
            , "_CeremonyMessageWindow_Text1.text");
            result[1] = binding;
            binding = new Binding(this, function () : Object
            {
                return _swf_close;
            }// end function
            , function (param1:Object) : void
            {
                _CeremonyMessageWindow_Image2.source = param1;
                return;
            }// end function
            , "_CeremonyMessageWindow_Image2.source");
            result[2] = binding;
            return result;
        }// end function

        override public function initialize() : void
        {
            var target:CeremonyMessageWindow;
            var watcherSetupUtilClass:Object;
            .mx_internal::setDocumentDescriptor(_documentDescriptor_);
            var bindings:* = _CeremonyMessageWindow_bindingsSetup();
            var watchers:Array;
            target;
            if (_watcherSetupUtil == null)
            {
                watcherSetupUtilClass = getDefinitionByName("_com_kbmj_viking_view_home_CeremonyMessageWindowWatcherSetupUtil");
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

        public function closed() : void
        {
            this.onClose();
            return;
        }// end function

        private function get _swf_close() : MovieClipLoaderAsset
        {
            return this._1193840764_swf_close;
        }// end function

        public static function set watcherSetupUtil(param1:IWatcherSetupUtil) : void
        {
            CeremonyMessageWindow._watcherSetupUtil = param1;
            return;
        }// end function

    }
}
