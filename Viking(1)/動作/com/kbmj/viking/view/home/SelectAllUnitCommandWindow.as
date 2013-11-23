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

    public class SelectAllUnitCommandWindow extends PopupWindow implements IBindingClient
    {
        private var _embed_mxml__images_icon_power_png_227571469:Class;
        private var EmbedSwfMaxUnitNormal:Class;
        private var _1075873300_swf_window:MovieClipLoaderAsset;
        var _watchers:Array;
        public var _SelectAllUnitCommandWindow_Image1:Image;
        public var _SelectAllUnitCommandWindow_Image2:Image;
        public var _SelectAllUnitCommandWindow_Image4:Image;
        public var _SelectAllUnitCommandWindow_Image6:Image;
        public var _SelectAllUnitCommandWindow_Image7:Image;
        private var _1370690414_swf_max_unit_2:MovieClipLoaderAsset;
        private var _1208607067_swf_sleep:MovieClipLoaderAsset;
        private var _1370690413_swf_max_unit_1:MovieClipLoaderAsset;
        var _bindingsBeginWithWord:Object;
        private var _1193840764_swf_close:MovieClipLoaderAsset;
        var _bindingsByDestination:Object;
        public var _SelectAllUnitCommandWindow_TextArea1:TextArea;
        public var _SelectAllUnitCommandWindow_TextArea2:TextArea;
        public var _SelectAllUnitCommandWindow_TextArea3:TextArea;
        var _bindings:Array;
        private var EmbedSwfSleepUnit:Class;
        private var _documentDescriptor_:UIComponentDescriptor;
        private var EmbedSwfMaxUnitSpecial:Class;
        public static const SELECT_MAX_UNIT_INCREASE_1:String = NAME + "selectMaxUnitIncrease1";
        private static var _watcherSetupUtil:IWatcherSetupUtil;
        public static const SELECT_MAX_UNIT_INCREASE_5:String = NAME + "selectMaxUnitIncrease5";
        public static const NAME:String = "paymentTypeSelectWindow";
        public static const SELECT_ALL_SLEEP_UNIT:String = NAME + "selectAllSleepUnit";

        public function SelectAllUnitCommandWindow()
        {
            _documentDescriptor_ = new UIComponentDescriptor({type:PopupWindow, propertiesFactory:function () : Object
            {
                return {childDescriptors:[new UIComponentDescriptor({type:Canvas, propertiesFactory:function () : Object
                {
                    return {childDescriptors:[new UIComponentDescriptor({type:Image, id:"_SelectAllUnitCommandWindow_Image1"}), new UIComponentDescriptor({type:Text, propertiesFactory:function () : Object
                    {
                        return {text:"式姫一覧", x:335, y:147, styleName:"PanelBaseTitle"};
                    }// end function
                    }), new UIComponentDescriptor({type:HBox, propertiesFactory:function () : Object
                    {
                        return {x:190, y:185, width:400, childDescriptors:[new UIComponentDescriptor({type:Canvas, propertiesFactory:function () : Object
                        {
                            return {height:240, verticalScrollPolicy:"off", horizontalScrollPolicy:"off", childDescriptors:[new UIComponentDescriptor({type:Image, id:"_SelectAllUnitCommandWindow_Image2", events:{click:"___SelectAllUnitCommandWindow_Image2_click"}, propertiesFactory:function () : Object
                            {
                                return {x:30, y:10};
                            }// end function
                            }), new UIComponentDescriptor({type:Text, propertiesFactory:function () : Object
                            {
                                return {text:"式姫枠追加", x:16, y:70, styleName:"BuildingName"};
                            }// end function
                            }), new UIComponentDescriptor({type:Image, propertiesFactory:function () : Object
                            {
                                return {source:_embed_mxml__images_icon_power_png_227571469, x:0, y:90};
                            }// end function
                            }), new UIComponentDescriptor({type:TextArea, id:"_SelectAllUnitCommandWindow_TextArea1", stylesFactory:function () : void
                            {
                                this.fontSize = 12;
                                this.backgroundAlpha = 0;
                                this.borderStyle = "none";
                                return;
                            }// end function
                            , propertiesFactory:function () : Object
                            {
                                return {x:15, y:90, width:110, height:100, editable:false};
                            }// end function
                            })]};
                        }// end function
                        }), new UIComponentDescriptor({type:Canvas, propertiesFactory:function () : Object
                        {
                            return {height:240, verticalScrollPolicy:"off", horizontalScrollPolicy:"off", childDescriptors:[new UIComponentDescriptor({type:Image, id:"_SelectAllUnitCommandWindow_Image4", events:{click:"___SelectAllUnitCommandWindow_Image4_click"}, propertiesFactory:function () : Object
                            {
                                return {x:30, y:10};
                            }// end function
                            }), new UIComponentDescriptor({type:Text, propertiesFactory:function () : Object
                            {
                                return {text:"式姫枠追加", x:16, y:70, styleName:"BuildingName"};
                            }// end function
                            }), new UIComponentDescriptor({type:Image, propertiesFactory:function () : Object
                            {
                                return {source:_embed_mxml__images_icon_power_png_227571469, x:0, y:90};
                            }// end function
                            }), new UIComponentDescriptor({type:TextArea, id:"_SelectAllUnitCommandWindow_TextArea2", stylesFactory:function () : void
                            {
                                this.fontSize = 12;
                                this.backgroundAlpha = 0;
                                this.borderStyle = "none";
                                return;
                            }// end function
                            , propertiesFactory:function () : Object
                            {
                                return {x:15, y:90, width:110, height:100, editable:false};
                            }// end function
                            })]};
                        }// end function
                        }), new UIComponentDescriptor({type:Canvas, propertiesFactory:function () : Object
                        {
                            return {height:240, verticalScrollPolicy:"off", horizontalScrollPolicy:"off", childDescriptors:[new UIComponentDescriptor({type:Image, id:"_SelectAllUnitCommandWindow_Image6", events:{click:"___SelectAllUnitCommandWindow_Image6_click"}, propertiesFactory:function () : Object
                            {
                                return {x:20, y:10};
                            }// end function
                            }), new UIComponentDescriptor({type:Text, propertiesFactory:function () : Object
                            {
                                return {text:"おやすみ部屋", x:6, y:70, styleName:"BuildingName"};
                            }// end function
                            }), new UIComponentDescriptor({type:TextArea, id:"_SelectAllUnitCommandWindow_TextArea3", stylesFactory:function () : void
                            {
                                this.fontSize = 12;
                                this.backgroundAlpha = 0;
                                this.borderStyle = "none";
                                return;
                            }// end function
                            , propertiesFactory:function () : Object
                            {
                                return {x:0, y:90, width:120, height:100, editable:false};
                            }// end function
                            })]};
                        }// end function
                        })]};
                    }// end function
                    }), new UIComponentDescriptor({type:Image, id:"_SelectAllUnitCommandWindow_Image7", events:{click:"___SelectAllUnitCommandWindow_Image7_click"}, propertiesFactory:function () : Object
                    {
                        return {x:325, y:370};
                    }// end function
                    })]};
                }// end function
                })]};
            }// end function
            });
            EmbedSwfSleepUnit = SelectAllUnitCommandWindow_EmbedSwfSleepUnit;
            EmbedSwfMaxUnitNormal = SelectAllUnitCommandWindow_EmbedSwfMaxUnitNormal;
            EmbedSwfMaxUnitSpecial = SelectAllUnitCommandWindow_EmbedSwfMaxUnitSpecial;
            _1075873300_swf_window = new Viking.EmbedSwfWindowCommon();
            _1193840764_swf_close = new Viking.EmbedSwfButtonCommon();
            _1208607067_swf_sleep = new EmbedSwfSleepUnit();
            _1370690413_swf_max_unit_1 = new EmbedSwfMaxUnitNormal();
            _1370690414_swf_max_unit_2 = new EmbedSwfMaxUnitSpecial();
            _embed_mxml__images_icon_power_png_227571469 = SelectAllUnitCommandWindow__embed_mxml__images_icon_power_png_227571469;
            _bindings = [];
            _watchers = [];
            _bindingsByDestination = {};
            _bindingsBeginWithWord = {};
            mx_internal::_document = this;
            this.addEventListener("creationComplete", ___SelectAllUnitCommandWindow_PopupWindow1_creationComplete);
            return;
        }// end function

        private function get _swf_max_unit_1() : MovieClipLoaderAsset
        {
            return this._1370690413_swf_max_unit_1;
        }// end function

        private function set _swf_max_unit_1(param1:MovieClipLoaderAsset) : void
        {
            var _loc_2:* = this._1370690413_swf_max_unit_1;
            if (_loc_2 !== param1)
            {
                this._1370690413_swf_max_unit_1 = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "_swf_max_unit_1", _loc_2, param1));
            }
            return;
        }// end function

        private function _SelectAllUnitCommandWindow_bindingsSetup() : Array
        {
            var binding:Binding;
            var result:Array;
            binding = new Binding(this, function () : Object
            {
                return _swf_window;
            }// end function
            , function (param1:Object) : void
            {
                _SelectAllUnitCommandWindow_Image1.source = param1;
                return;
            }// end function
            , "_SelectAllUnitCommandWindow_Image1.source");
            result[0] = binding;
            binding = new Binding(this, function () : Object
            {
                return _swf_max_unit_1;
            }// end function
            , function (param1:Object) : void
            {
                _SelectAllUnitCommandWindow_Image2.source = param1;
                return;
            }// end function
            , "_SelectAllUnitCommandWindow_Image2.source");
            result[1] = binding;
            binding = new Binding(this, function () : String
            {
                var _loc_1:* = "250神力を消費" + "\r" + "して式姫枠を１枠" + "\r" + "増やします。" + "\r" + "（上限150枠）";
                var _loc_2:* = _loc_1 == undefined ? (null) : (String(_loc_1));
                return _loc_2;
            }// end function
            , function (param1:String) : void
            {
                _SelectAllUnitCommandWindow_TextArea1.text = param1;
                return;
            }// end function
            , "_SelectAllUnitCommandWindow_TextArea1.text");
            result[2] = binding;
            binding = new Binding(this, function () : Object
            {
                return _swf_max_unit_2;
            }// end function
            , function (param1:Object) : void
            {
                _SelectAllUnitCommandWindow_Image4.source = param1;
                return;
            }// end function
            , "_SelectAllUnitCommandWindow_Image4.source");
            result[3] = binding;
            binding = new Binding(this, function () : String
            {
                var _loc_1:* = "1000神力を消費" + "\r" + "して式姫枠を５枠" + "\r" + "増やします。" + "\r" + "（上限150枠）";
                var _loc_2:* = _loc_1 == undefined ? (null) : (String(_loc_1));
                return _loc_2;
            }// end function
            , function (param1:String) : void
            {
                _SelectAllUnitCommandWindow_TextArea2.text = param1;
                return;
            }// end function
            , "_SelectAllUnitCommandWindow_TextArea2.text");
            result[4] = binding;
            binding = new Binding(this, function () : Object
            {
                return _swf_sleep;
            }// end function
            , function (param1:Object) : void
            {
                _SelectAllUnitCommandWindow_Image6.source = param1;
                return;
            }// end function
            , "_SelectAllUnitCommandWindow_Image6.source");
            result[5] = binding;
            binding = new Binding(this, function () : String
            {
                var _loc_1:* = "おやすみ部屋へ" + "\r" + "移動します。";
                var _loc_2:* = _loc_1 == undefined ? (null) : (String(_loc_1));
                return _loc_2;
            }// end function
            , function (param1:String) : void
            {
                _SelectAllUnitCommandWindow_TextArea3.text = param1;
                return;
            }// end function
            , "_SelectAllUnitCommandWindow_TextArea3.text");
            result[6] = binding;
            binding = new Binding(this, function () : Object
            {
                return _swf_close;
            }// end function
            , function (param1:Object) : void
            {
                _SelectAllUnitCommandWindow_Image7.source = param1;
                return;
            }// end function
            , "_SelectAllUnitCommandWindow_Image7.source");
            result[7] = binding;
            return result;
        }// end function

        override public function initialize() : void
        {
            var target:SelectAllUnitCommandWindow;
            var watcherSetupUtilClass:Object;
            .mx_internal::setDocumentDescriptor(_documentDescriptor_);
            var bindings:* = _SelectAllUnitCommandWindow_bindingsSetup();
            var watchers:Array;
            target;
            if (_watcherSetupUtil == null)
            {
                watcherSetupUtilClass = getDefinitionByName("_com_kbmj_viking_view_home_SelectAllUnitCommandWindowWatcherSetupUtil");
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

        public function ___SelectAllUnitCommandWindow_Image7_click(event:MouseEvent) : void
        {
            close();
            return;
        }// end function

        private function addSwf() : void
        {
            MovieClip(Loader(_swf_window.getChildAt(0)).content).gotoAndPlay("center_400x270");
            MovieClip(Loader(_swf_close.getChildAt(0)).content).gotoAndPlay("button_back");
            return;
        }// end function

        public function ___SelectAllUnitCommandWindow_PopupWindow1_creationComplete(event:FlexEvent) : void
        {
            addSwf();
            return;
        }// end function

        private function set _swf_sleep(param1:MovieClipLoaderAsset) : void
        {
            var _loc_2:* = this._1208607067_swf_sleep;
            if (_loc_2 !== param1)
            {
                this._1208607067_swf_sleep = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "_swf_sleep", _loc_2, param1));
            }
            return;
        }// end function

        public function ___SelectAllUnitCommandWindow_Image4_click(event:MouseEvent) : void
        {
            sendEvent(SELECT_MAX_UNIT_INCREASE_5);
            return;
        }// end function

        public function ___SelectAllUnitCommandWindow_Image2_click(event:MouseEvent) : void
        {
            sendEvent(SELECT_MAX_UNIT_INCREASE_1);
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

        private function set _swf_max_unit_2(param1:MovieClipLoaderAsset) : void
        {
            var _loc_2:* = this._1370690414_swf_max_unit_2;
            if (_loc_2 !== param1)
            {
                this._1370690414_swf_max_unit_2 = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "_swf_max_unit_2", _loc_2, param1));
            }
            return;
        }// end function

        public function ___SelectAllUnitCommandWindow_Image6_click(event:MouseEvent) : void
        {
            sendEvent(SELECT_ALL_SLEEP_UNIT);
            return;
        }// end function

        private function _SelectAllUnitCommandWindow_bindingExprs() : void
        {
            var _loc_1:* = undefined;
            _loc_1 = _swf_window;
            _loc_1 = _swf_max_unit_1;
            _loc_1 = "250神力を消費" + "\r" + "して式姫枠を１枠" + "\r" + "増やします。" + "\r" + "（上限150枠）";
            _loc_1 = _swf_max_unit_2;
            _loc_1 = "1000神力を消費" + "\r" + "して式姫枠を５枠" + "\r" + "増やします。" + "\r" + "（上限150枠）";
            _loc_1 = _swf_sleep;
            _loc_1 = "おやすみ部屋へ" + "\r" + "移動します。";
            _loc_1 = _swf_close;
            return;
        }// end function

        private function get _swf_window() : MovieClipLoaderAsset
        {
            return this._1075873300_swf_window;
        }// end function

        private function get _swf_max_unit_2() : MovieClipLoaderAsset
        {
            return this._1370690414_swf_max_unit_2;
        }// end function

        public function close() : void
        {
            onClose();
            return;
        }// end function

        private function get _swf_close() : MovieClipLoaderAsset
        {
            return this._1193840764_swf_close;
        }// end function

        private function get _swf_sleep() : MovieClipLoaderAsset
        {
            return this._1208607067_swf_sleep;
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

        public static function set watcherSetupUtil(param1:IWatcherSetupUtil) : void
        {
            SelectAllUnitCommandWindow._watcherSetupUtil = param1;
            return;
        }// end function

    }
}
