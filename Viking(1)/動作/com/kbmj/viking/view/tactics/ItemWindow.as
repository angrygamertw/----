package com.kbmj.viking.view.tactics
{
    import com.kbmj.viking.lib.*;
    import com.kbmj.viking.view.*;
    import com.kbmj.viking.vo.tactics.*;
    import flash.display.*;
    import flash.events.*;
    import flash.utils.*;
    import mx.binding.*;
    import mx.controls.*;
    import mx.core.*;
    import mx.events.*;

    public class ItemWindow extends PopupWindow implements IBindingClient
    {
        private var _1075873300_swf_window:MovieClipLoaderAsset;
        public var _ItemWindow_Image1:Image;
        public var _ItemWindow_Image3:Image;
        var _watchers:Array;
        public var _ItemWindow_Image2:Image;
        public var _ItemWindow_Image4:Image;
        private var _550983275_swf_yes:MovieClipLoaderAsset;
        private var _91329123_unit:UnitVO;
        public var _ItemWindow_Text1:Text;
        public var _ItemWindow_Text2:Text;
        private var _1268367374_item_mes:String;
        var _bindingsByDestination:Object;
        var _bindingsBeginWithWord:Object;
        private var _1818888637_swf_no:MovieClipLoaderAsset;
        private var _1218643219_swf_close_window:MovieClipLoaderAsset;
        var _bindings:Array;
        private var _documentDescriptor_:UIComponentDescriptor;
        private static const WINDOW_X:int = 180;
        private static const WINDOW_Y:int = 145;
        private static const BUTTON_X:int = 325;
        private static const BUTTON_Y:int = 365;
        private static var _watcherSetupUtil:IWatcherSetupUtil;
        private static const WINDOW_HT:int = 270;
        private static const WINDOW_WD:int = 400;

        public function ItemWindow()
        {
            _documentDescriptor_ = new UIComponentDescriptor({type:PopupWindow, propertiesFactory:function () : Object
            {
                return {width:760, height:560, childDescriptors:[new UIComponentDescriptor({type:Image, id:"_ItemWindow_Image1"}), new UIComponentDescriptor({type:Text, id:"_ItemWindow_Text1", propertiesFactory:function () : Object
                {
                    return {styleName:"DealTitle"};
                }// end function
                }), new UIComponentDescriptor({type:Image, id:"_ItemWindow_Image2", events:{click:"___ItemWindow_Image2_click"}}), new UIComponentDescriptor({type:Text, id:"_ItemWindow_Text2", stylesFactory:function () : void
                {
                    this.fontSize = 14;
                    return;
                }// end function
                }), new UIComponentDescriptor({type:Image, id:"_ItemWindow_Image3", events:{click:"___ItemWindow_Image3_click"}}), new UIComponentDescriptor({type:Image, id:"_ItemWindow_Image4", events:{click:"___ItemWindow_Image4_click"}})]};
            }// end function
            });
            _1075873300_swf_window = new Viking.EmbedSwfWindowCommon();
            _1218643219_swf_close_window = new Viking.EmbedSwfButtonCloseWindow();
            _550983275_swf_yes = new Viking.EmbedSwfButtonCommon();
            _1818888637_swf_no = new Viking.EmbedSwfButtonCommon();
            _1268367374_item_mes = new String();
            _bindings = [];
            _watchers = [];
            _bindingsByDestination = {};
            _bindingsBeginWithWord = {};
            mx_internal::_document = this;
            this.width = 760;
            this.height = 560;
            this.addEventListener("creationComplete", ___ItemWindow_PopupWindow1_creationComplete);
            return;
        }// end function

        private function onNo() : void
        {
            onClose();
            MovieClip(Loader(_swf_no.getChildAt(0)).content).gotoAndPlay(0);
            MovieClip(Loader(_swf_no.getChildAt(0)).content).gotoAndPlay("button_no");
            return;
        }// end function

        private function setup() : void
        {
            MovieClip(Loader(_swf_window.getChildAt(0)).content).gotoAndPlay("center_400x270");
            MovieClip(Loader(_swf_yes.getChildAt(0)).content).gotoAndPlay("button_yes");
            MovieClip(Loader(_swf_no.getChildAt(0)).content).gotoAndPlay("button_no");
            return;
        }// end function

        public function closeWindow() : void
        {
            onClose();
            MovieClip(Loader(_swf_close_window.getChildAt(0)).content).gotoAndPlay(1);
            return;
        }// end function

        private function get _item_mes() : String
        {
            return this._1268367374_item_mes;
        }// end function

        private function onYes() : void
        {
            sendPopupEvent(Viking.ACTION_ITEM_SELECT, [_unit, _unit.item]);
            onClose();
            MovieClip(Loader(_swf_yes.getChildAt(0)).content).gotoAndPlay(0);
            MovieClip(Loader(_swf_yes.getChildAt(0)).content).gotoAndPlay("button_yes");
            return;
        }// end function

        override public function initialize() : void
        {
            var target:ItemWindow;
            var watcherSetupUtilClass:Object;
            .mx_internal::setDocumentDescriptor(_documentDescriptor_);
            var bindings:* = _ItemWindow_bindingsSetup();
            var watchers:Array;
            target;
            if (_watcherSetupUtil == null)
            {
                watcherSetupUtilClass = getDefinitionByName("_com_kbmj_viking_view_tactics_ItemWindowWatcherSetupUtil");
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

        private function get _swf_close_window() : MovieClipLoaderAsset
        {
            return this._1218643219_swf_close_window;
        }// end function

        private function _ItemWindow_bindingExprs() : void
        {
            var _loc_1:* = undefined;
            _loc_1 = _swf_window;
            _loc_1 = WINDOW_X;
            _loc_1 = WINDOW_Y;
            _loc_1 = WINDOW_WD;
            _loc_1 = Utils.i18n("generalMaterial");
            _loc_1 = WINDOW_X + WINDOW_WD - 25;
            _loc_1 = WINDOW_Y;
            _loc_1 = _swf_close_window;
            _loc_1 = WINDOW_X + 20;
            _loc_1 = WINDOW_Y + 35;
            _loc_1 = _item_mes;
            _loc_1 = BUTTON_X - 65;
            _loc_1 = BUTTON_Y;
            _loc_1 = _swf_yes;
            _loc_1 = BUTTON_X + 65;
            _loc_1 = BUTTON_Y;
            _loc_1 = _swf_no;
            return;
        }// end function

        private function set _item_mes(param1:String) : void
        {
            var _loc_2:* = this._1268367374_item_mes;
            if (_loc_2 !== param1)
            {
                this._1268367374_item_mes = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "_item_mes", _loc_2, param1));
            }
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

        private function _ItemWindow_bindingsSetup() : Array
        {
            var binding:Binding;
            var result:Array;
            binding = new Binding(this, function () : Object
            {
                return _swf_window;
            }// end function
            , function (param1:Object) : void
            {
                _ItemWindow_Image1.source = param1;
                return;
            }// end function
            , "_ItemWindow_Image1.source");
            result[0] = binding;
            binding = new Binding(this, function () : Number
            {
                return WINDOW_X;
            }// end function
            , function (param1:Number) : void
            {
                _ItemWindow_Text1.x = param1;
                return;
            }// end function
            , "_ItemWindow_Text1.x");
            result[1] = binding;
            binding = new Binding(this, function () : Number
            {
                return WINDOW_Y;
            }// end function
            , function (param1:Number) : void
            {
                _ItemWindow_Text1.y = param1;
                return;
            }// end function
            , "_ItemWindow_Text1.y");
            result[2] = binding;
            binding = new Binding(this, function () : Number
            {
                return WINDOW_WD;
            }// end function
            , function (param1:Number) : void
            {
                _ItemWindow_Text1.width = param1;
                return;
            }// end function
            , "_ItemWindow_Text1.width");
            result[3] = binding;
            binding = new Binding(this, function () : String
            {
                var _loc_1:* = Utils.i18n("generalMaterial");
                var _loc_2:* = _loc_1 == undefined ? (null) : (String(_loc_1));
                return _loc_2;
            }// end function
            , function (param1:String) : void
            {
                _ItemWindow_Text1.text = param1;
                return;
            }// end function
            , "_ItemWindow_Text1.text");
            result[4] = binding;
            binding = new Binding(this, function () : Number
            {
                return WINDOW_X + WINDOW_WD - 25;
            }// end function
            , function (param1:Number) : void
            {
                _ItemWindow_Image2.x = param1;
                return;
            }// end function
            , "_ItemWindow_Image2.x");
            result[5] = binding;
            binding = new Binding(this, function () : Number
            {
                return WINDOW_Y;
            }// end function
            , function (param1:Number) : void
            {
                _ItemWindow_Image2.y = param1;
                return;
            }// end function
            , "_ItemWindow_Image2.y");
            result[6] = binding;
            binding = new Binding(this, function () : Object
            {
                return _swf_close_window;
            }// end function
            , function (param1:Object) : void
            {
                _ItemWindow_Image2.source = param1;
                return;
            }// end function
            , "_ItemWindow_Image2.source");
            result[7] = binding;
            binding = new Binding(this, function () : Number
            {
                return WINDOW_X + 20;
            }// end function
            , function (param1:Number) : void
            {
                _ItemWindow_Text2.x = param1;
                return;
            }// end function
            , "_ItemWindow_Text2.x");
            result[8] = binding;
            binding = new Binding(this, function () : Number
            {
                return WINDOW_Y + 35;
            }// end function
            , function (param1:Number) : void
            {
                _ItemWindow_Text2.y = param1;
                return;
            }// end function
            , "_ItemWindow_Text2.y");
            result[9] = binding;
            binding = new Binding(this, function () : String
            {
                var _loc_1:* = _item_mes;
                var _loc_2:* = _loc_1 == undefined ? (null) : (String(_loc_1));
                return _loc_2;
            }// end function
            , function (param1:String) : void
            {
                _ItemWindow_Text2.text = param1;
                return;
            }// end function
            , "_ItemWindow_Text2.text");
            result[10] = binding;
            binding = new Binding(this, function () : Number
            {
                return BUTTON_X - 65;
            }// end function
            , function (param1:Number) : void
            {
                _ItemWindow_Image3.x = param1;
                return;
            }// end function
            , "_ItemWindow_Image3.x");
            result[11] = binding;
            binding = new Binding(this, function () : Number
            {
                return BUTTON_Y;
            }// end function
            , function (param1:Number) : void
            {
                _ItemWindow_Image3.y = param1;
                return;
            }// end function
            , "_ItemWindow_Image3.y");
            result[12] = binding;
            binding = new Binding(this, function () : Object
            {
                return _swf_yes;
            }// end function
            , function (param1:Object) : void
            {
                _ItemWindow_Image3.source = param1;
                return;
            }// end function
            , "_ItemWindow_Image3.source");
            result[13] = binding;
            binding = new Binding(this, function () : Number
            {
                return BUTTON_X + 65;
            }// end function
            , function (param1:Number) : void
            {
                _ItemWindow_Image4.x = param1;
                return;
            }// end function
            , "_ItemWindow_Image4.x");
            result[14] = binding;
            binding = new Binding(this, function () : Number
            {
                return BUTTON_Y;
            }// end function
            , function (param1:Number) : void
            {
                _ItemWindow_Image4.y = param1;
                return;
            }// end function
            , "_ItemWindow_Image4.y");
            result[15] = binding;
            binding = new Binding(this, function () : Object
            {
                return _swf_no;
            }// end function
            , function (param1:Object) : void
            {
                _ItemWindow_Image4.source = param1;
                return;
            }// end function
            , "_ItemWindow_Image4.source");
            result[16] = binding;
            return result;
        }// end function

        private function get _swf_no() : MovieClipLoaderAsset
        {
            return this._1818888637_swf_no;
        }// end function

        public function ___ItemWindow_Image3_click(event:MouseEvent) : void
        {
            onYes();
            return;
        }// end function

        public function useItem(param1:UnitVO) : void
        {
            _unit = param1;
            if (_unit.item)
            {
                _item_mes = Utils.i18n("itemUseItemConf", _unit.item.nameLabel, param1.item.effect, param1.item.endurance);
            }
            else
            {
                _item_mes = Utils.i18n("itemHaveNoItem");
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

        private function get _unit() : UnitVO
        {
            return this._91329123_unit;
        }// end function

        public function ___ItemWindow_PopupWindow1_creationComplete(event:FlexEvent) : void
        {
            setup();
            return;
        }// end function

        private function get _swf_yes() : MovieClipLoaderAsset
        {
            return this._550983275_swf_yes;
        }// end function

        private function get _swf_window() : MovieClipLoaderAsset
        {
            return this._1075873300_swf_window;
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

        public function ___ItemWindow_Image2_click(event:MouseEvent) : void
        {
            closeWindow();
            return;
        }// end function

        public function ___ItemWindow_Image4_click(event:MouseEvent) : void
        {
            onNo();
            return;
        }// end function

        public static function set watcherSetupUtil(param1:IWatcherSetupUtil) : void
        {
            ItemWindow._watcherSetupUtil = param1;
            return;
        }// end function

    }
}
