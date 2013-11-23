package com.kbmj.viking.view.home
{
    import com.kbmj.viking.lib.*;
    import com.kbmj.viking.view.*;
    import com.kbmj.viking.vo.*;
    import com.kbmj.viking.vo.home.*;
    import flash.display.*;
    import flash.events.*;
    import flash.utils.*;
    import mx.binding.*;
    import mx.containers.*;
    import mx.controls.*;
    import mx.core.*;
    import mx.events.*;

    public class ChengeIceCheckWindow extends PopupWindow implements IBindingClient
    {
        private var _1584105757viewStack:ViewStack;
        private var _1834510379_ticket:int = 0;
        public var _ChengeIceCheckWindow_Spacer9:Spacer;
        private var _1075873300_swf_window:MovieClipLoaderAsset;
        var _watchers:Array;
        private var _embed_mxml__images_icon_power_png_227571469:Class;
        public var _ChengeIceCheckWindow_Image1:Image;
        public var _ChengeIceCheckWindow_Image3:Image;
        public var _ChengeIceCheckWindow_Image4:Image;
        public var _ChengeIceCheckWindow_Image5:Image;
        public var _ChengeIceCheckWindow_Label1:Label;
        public var _ChengeIceCheckWindow_Label2:Label;
        public var _ChengeIceCheckWindow_Label4:Label;
        public var _ChengeIceCheckWindow_Label5:Label;
        public var _ChengeIceCheckWindow_Label6:Label;
        private var _1192307721_swf_awake:MovieClipLoaderAsset;
        public var _ChengeIceCheckWindow_Label3:Label;
        private var _1818888664_swf_ok:MovieClipLoaderAsset;
        public var _ChengeIceCheckWindow_Canvas2:Canvas;
        private var _850174775_withUnit:Boolean;
        var _bindingsBeginWithWord:Object;
        var _bindingsByDestination:Object;
        var _bindings:Array;
        private var _coffin:CoffinVO;
        private var _100077085_swf_back:MovieClipLoaderAsset;
        private var _documentDescriptor_:UIComponentDescriptor;
        private static var _watcherSetupUtil:IWatcherSetupUtil;
        public static const CHANGE_ICE_OK:String = "changeIceOk";

        public function ChengeIceCheckWindow()
        {
            _documentDescriptor_ = new UIComponentDescriptor({type:PopupWindow, propertiesFactory:function () : Object
            {
                return {childDescriptors:[new UIComponentDescriptor({type:Canvas}), new UIComponentDescriptor({type:Image, id:"_ChengeIceCheckWindow_Image1"}), new UIComponentDescriptor({type:Canvas, id:"_ChengeIceCheckWindow_Canvas2", propertiesFactory:function () : Object
                {
                    return {childDescriptors:[new UIComponentDescriptor({type:VBox, stylesFactory:function () : void
                    {
                        this.horizontalCenter = "0";
                        this.verticalCenter = "0";
                        this.bottom = "30";
                        this.verticalGap = 5;
                        return;
                    }// end function
                    , propertiesFactory:function () : Object
                    {
                        return {childDescriptors:[new UIComponentDescriptor({type:Spacer, propertiesFactory:function () : Object
                        {
                            return {percentHeight:100};
                        }// end function
                        }), new UIComponentDescriptor({type:Label, id:"_ChengeIceCheckWindow_Label1", propertiesFactory:function () : Object
                        {
                            return {styleName:"UnitSelectText"};
                        }// end function
                        }), new UIComponentDescriptor({type:Spacer, propertiesFactory:function () : Object
                        {
                            return {percentHeight:100};
                        }// end function
                        }), new UIComponentDescriptor({type:ViewStack, id:"viewStack", propertiesFactory:function () : Object
                        {
                            return {childDescriptors:[new UIComponentDescriptor({type:Canvas, propertiesFactory:function () : Object
                            {
                                return {width:240, minHeight:30, childDescriptors:[new UIComponentDescriptor({type:HBox, stylesFactory:function () : void
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
                                    }), new UIComponentDescriptor({type:Label, id:"_ChengeIceCheckWindow_Label2", propertiesFactory:function () : Object
                                    {
                                        return {styleName:"UnitSelectText"};
                                    }// end function
                                    })]};
                                }// end function
                                })]};
                            }// end function
                            }), new UIComponentDescriptor({type:Canvas, propertiesFactory:function () : Object
                            {
                                return {width:240, minHeight:30, childDescriptors:[new UIComponentDescriptor({type:Label, id:"_ChengeIceCheckWindow_Label3", propertiesFactory:function () : Object
                                {
                                    return {styleName:"UnitSelectText", y:0};
                                }// end function
                                }), new UIComponentDescriptor({type:Label, id:"_ChengeIceCheckWindow_Label4", propertiesFactory:function () : Object
                                {
                                    return {styleName:"UnitSelectText", y:15};
                                }// end function
                                })]};
                            }// end function
                            })]};
                        }// end function
                        }), new UIComponentDescriptor({type:Spacer, propertiesFactory:function () : Object
                        {
                            return {percentHeight:100};
                        }// end function
                        }), new UIComponentDescriptor({type:Label, id:"_ChengeIceCheckWindow_Label5", propertiesFactory:function () : Object
                        {
                            return {styleName:"UnitSelectText"};
                        }// end function
                        }), new UIComponentDescriptor({type:Spacer, propertiesFactory:function () : Object
                        {
                            return {percentHeight:100};
                        }// end function
                        }), new UIComponentDescriptor({type:Label, id:"_ChengeIceCheckWindow_Label6", propertiesFactory:function () : Object
                        {
                            return {styleName:"UnitSelectText"};
                        }// end function
                        }), new UIComponentDescriptor({type:Spacer, propertiesFactory:function () : Object
                        {
                            return {percentHeight:100};
                        }// end function
                        }), new UIComponentDescriptor({type:Spacer, propertiesFactory:function () : Object
                        {
                            return {height:10};
                        }// end function
                        }), new UIComponentDescriptor({type:HBox, propertiesFactory:function () : Object
                        {
                            return {childDescriptors:[new UIComponentDescriptor({type:Spacer, propertiesFactory:function () : Object
                            {
                                return {percentWidth:100};
                            }// end function
                            }), new UIComponentDescriptor({type:Image, id:"_ChengeIceCheckWindow_Image3", events:{click:"___ChengeIceCheckWindow_Image3_click"}}), new UIComponentDescriptor({type:Spacer, propertiesFactory:function () : Object
                            {
                                return {width:120};
                            }// end function
                            }), new UIComponentDescriptor({type:Image, id:"_ChengeIceCheckWindow_Image4", events:{click:"___ChengeIceCheckWindow_Image4_click"}}), new UIComponentDescriptor({type:Spacer, id:"_ChengeIceCheckWindow_Spacer9", propertiesFactory:function () : Object
                            {
                                return {width:120};
                            }// end function
                            }), new UIComponentDescriptor({type:Image, id:"_ChengeIceCheckWindow_Image5", events:{click:"___ChengeIceCheckWindow_Image5_click"}}), new UIComponentDescriptor({type:Spacer, propertiesFactory:function () : Object
                            {
                                return {percentWidth:100};
                            }// end function
                            })]};
                        }// end function
                        })]};
                    }// end function
                    })]};
                }// end function
                })]};
            }// end function
            });
            _1075873300_swf_window = new Viking.EmbedSwfWindowCommon();
            _1818888664_swf_ok = new Viking.EmbedSwfButtonCommon();
            _100077085_swf_back = new Viking.EmbedSwfButtonCommon();
            _1192307721_swf_awake = new Viking.EmbedSwfButtonCommon();
            _embed_mxml__images_icon_power_png_227571469 = ChengeIceCheckWindow__embed_mxml__images_icon_power_png_227571469;
            _bindings = [];
            _watchers = [];
            _bindingsByDestination = {};
            _bindingsBeginWithWord = {};
            mx_internal::_document = this;
            return;
        }// end function

        private function closeWindow() : void
        {
            onClose();
            return;
        }// end function

        public function ___ChengeIceCheckWindow_Image4_click(event:MouseEvent) : void
        {
            closeWindow();
            return;
        }// end function

        override public function initialize() : void
        {
            var target:ChengeIceCheckWindow;
            var watcherSetupUtilClass:Object;
            .mx_internal::setDocumentDescriptor(_documentDescriptor_);
            var bindings:* = _ChengeIceCheckWindow_bindingsSetup();
            var watchers:Array;
            target;
            if (_watcherSetupUtil == null)
            {
                watcherSetupUtilClass = getDefinitionByName("_com_kbmj_viking_view_home_ChengeIceCheckWindowWatcherSetupUtil");
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

        private function set _withUnit(param1:Boolean) : void
        {
            var _loc_2:* = this._850174775_withUnit;
            if (_loc_2 !== param1)
            {
                this._850174775_withUnit = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "_withUnit", _loc_2, param1));
            }
            return;
        }// end function

        private function set _swf_awake(param1:MovieClipLoaderAsset) : void
        {
            var _loc_2:* = this._1192307721_swf_awake;
            if (_loc_2 !== param1)
            {
                this._1192307721_swf_awake = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "_swf_awake", _loc_2, param1));
            }
            return;
        }// end function

        private function activateCoffin() : void
        {
            closeWindow();
            sendPopupEvent(CHANGE_ICE_OK, _coffin.coffinId);
            return;
        }// end function

        private function _ChengeIceCheckWindow_bindingExprs() : void
        {
            var _loc_1:* = undefined;
            _loc_1 = _swf_window;
            _loc_1 = _withUnit ? (130) : (220);
            _loc_1 = _withUnit ? (125) : (175);
            _loc_1 = _withUnit ? (400) : (300);
            _loc_1 = _withUnit ? (270) : (200);
            _loc_1 = Utils.i18n("localize91");
            _loc_1 = _withUnit;
            _loc_1 = _withUnit;
            _loc_1 = Utils.i18n("localize92");
            _loc_1 = Utils.i18n("sleepUnitTicketAmount", _ticket);
            _loc_1 = Utils.i18n("sleepUnitWithTicket");
            _loc_1 = Utils.i18n("localize93");
            _loc_1 = Utils.i18n("localize94");
            _loc_1 = _swf_ok;
            _loc_1 = _swf_back;
            _loc_1 = _withUnit;
            _loc_1 = _swf_awake;
            _loc_1 = _withUnit;
            _loc_1 = _withUnit;
            return;
        }// end function

        private function awakeUnit() : void
        {
            closeWindow();
            sendPopupEvent(HomeAllSleepUnit.AWAKE_UNIT, {coffin:_coffin});
            return;
        }// end function

        public function set coffin(param1:CoffinVO) : void
        {
            _coffin = param1;
            _withUnit = _coffin.unit;
            return;
        }// end function

        public function init(param1:ResourceVO) : void
        {
            var _loc_2:String = null;
            var _loc_3:Object = null;
            if (_withUnit)
            {
                MovieClip(Loader(_swf_window.getChildAt(0)).content).gotoAndPlay("center_400x270");
            }
            else
            {
                MovieClip(Loader(_swf_window.getChildAt(0)).content).gotoAndPlay("center_300x200");
                _loc_2 = "1900";
                for each (_loc_3 in param1.materials)
                {
                    
                    if (_loc_3.masterVO.code == _loc_2)
                    {
                        _ticket = _loc_3.quantity;
                    }
                }
                if (_ticket > 0)
                {
                    viewStack.selectedIndex = 1;
                }
                else
                {
                    viewStack.selectedIndex = 0;
                }
            }
            MovieClip(Loader(_swf_ok.getChildAt(0)).content).gotoAndPlay("button_yes");
            MovieClip(Loader(_swf_back.getChildAt(0)).content).gotoAndPlay("button_no");
            MovieClip(Loader(_swf_awake.getChildAt(0)).content).gotoAndPlay("button_take_out ");
            return;
        }// end function

        private function get _swf_awake() : MovieClipLoaderAsset
        {
            return this._1192307721_swf_awake;
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

        private function get _ticket() : int
        {
            return this._1834510379_ticket;
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

        private function get _withUnit() : Boolean
        {
            return this._850174775_withUnit;
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

        public function get coffin() : CoffinVO
        {
            return _coffin;
        }// end function

        private function set _ticket(param1:int) : void
        {
            var _loc_2:* = this._1834510379_ticket;
            if (_loc_2 !== param1)
            {
                this._1834510379_ticket = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "_ticket", _loc_2, param1));
            }
            return;
        }// end function

        public function ___ChengeIceCheckWindow_Image3_click(event:MouseEvent) : void
        {
            activateCoffin();
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

        public function ___ChengeIceCheckWindow_Image5_click(event:MouseEvent) : void
        {
            awakeUnit();
            return;
        }// end function

        private function get _swf_ok() : MovieClipLoaderAsset
        {
            return this._1818888664_swf_ok;
        }// end function

        public function get viewStack() : ViewStack
        {
            return this._1584105757viewStack;
        }// end function

        private function get _swf_back() : MovieClipLoaderAsset
        {
            return this._100077085_swf_back;
        }// end function

        private function _ChengeIceCheckWindow_bindingsSetup() : Array
        {
            var binding:Binding;
            var result:Array;
            binding = new Binding(this, function () : Object
            {
                return _swf_window;
            }// end function
            , function (param1:Object) : void
            {
                _ChengeIceCheckWindow_Image1.source = param1;
                return;
            }// end function
            , "_ChengeIceCheckWindow_Image1.source");
            result[0] = binding;
            binding = new Binding(this, function () : Number
            {
                return _withUnit ? (130) : (220);
            }// end function
            , function (param1:Number) : void
            {
                _ChengeIceCheckWindow_Canvas2.x = param1;
                return;
            }// end function
            , "_ChengeIceCheckWindow_Canvas2.x");
            result[1] = binding;
            binding = new Binding(this, function () : Number
            {
                return _withUnit ? (125) : (175);
            }// end function
            , function (param1:Number) : void
            {
                _ChengeIceCheckWindow_Canvas2.y = param1;
                return;
            }// end function
            , "_ChengeIceCheckWindow_Canvas2.y");
            result[2] = binding;
            binding = new Binding(this, function () : Number
            {
                return _withUnit ? (400) : (300);
            }// end function
            , function (param1:Number) : void
            {
                _ChengeIceCheckWindow_Canvas2.width = param1;
                return;
            }// end function
            , "_ChengeIceCheckWindow_Canvas2.width");
            result[3] = binding;
            binding = new Binding(this, function () : Number
            {
                return _withUnit ? (270) : (200);
            }// end function
            , function (param1:Number) : void
            {
                _ChengeIceCheckWindow_Canvas2.height = param1;
                return;
            }// end function
            , "_ChengeIceCheckWindow_Canvas2.height");
            result[4] = binding;
            binding = new Binding(this, function () : String
            {
                var _loc_1:* = Utils.i18n("localize91");
                var _loc_2:* = _loc_1 == undefined ? (null) : (String(_loc_1));
                return _loc_2;
            }// end function
            , function (param1:String) : void
            {
                _ChengeIceCheckWindow_Label1.text = param1;
                return;
            }// end function
            , "_ChengeIceCheckWindow_Label1.text");
            result[5] = binding;
            binding = new Binding(this, function () : Boolean
            {
                return _withUnit;
            }// end function
            , function (param1:Boolean) : void
            {
                _ChengeIceCheckWindow_Label1.visible = param1;
                return;
            }// end function
            , "_ChengeIceCheckWindow_Label1.visible");
            result[6] = binding;
            binding = new Binding(this, function () : Boolean
            {
                return _withUnit;
            }// end function
            , function (param1:Boolean) : void
            {
                _ChengeIceCheckWindow_Label1.includeInLayout = param1;
                return;
            }// end function
            , "_ChengeIceCheckWindow_Label1.includeInLayout");
            result[7] = binding;
            binding = new Binding(this, function () : String
            {
                var _loc_1:* = Utils.i18n("localize92");
                var _loc_2:* = _loc_1 == undefined ? (null) : (String(_loc_1));
                return _loc_2;
            }// end function
            , function (param1:String) : void
            {
                _ChengeIceCheckWindow_Label2.text = param1;
                return;
            }// end function
            , "_ChengeIceCheckWindow_Label2.text");
            result[8] = binding;
            binding = new Binding(this, function () : String
            {
                var _loc_1:* = Utils.i18n("sleepUnitTicketAmount", _ticket);
                var _loc_2:* = _loc_1 == undefined ? (null) : (String(_loc_1));
                return _loc_2;
            }// end function
            , function (param1:String) : void
            {
                _ChengeIceCheckWindow_Label3.text = param1;
                return;
            }// end function
            , "_ChengeIceCheckWindow_Label3.text");
            result[9] = binding;
            binding = new Binding(this, function () : String
            {
                var _loc_1:* = Utils.i18n("sleepUnitWithTicket");
                var _loc_2:* = _loc_1 == undefined ? (null) : (String(_loc_1));
                return _loc_2;
            }// end function
            , function (param1:String) : void
            {
                _ChengeIceCheckWindow_Label4.text = param1;
                return;
            }// end function
            , "_ChengeIceCheckWindow_Label4.text");
            result[10] = binding;
            binding = new Binding(this, function () : String
            {
                var _loc_1:* = Utils.i18n("localize93");
                var _loc_2:* = _loc_1 == undefined ? (null) : (String(_loc_1));
                return _loc_2;
            }// end function
            , function (param1:String) : void
            {
                _ChengeIceCheckWindow_Label5.text = param1;
                return;
            }// end function
            , "_ChengeIceCheckWindow_Label5.text");
            result[11] = binding;
            binding = new Binding(this, function () : String
            {
                var _loc_1:* = Utils.i18n("localize94");
                var _loc_2:* = _loc_1 == undefined ? (null) : (String(_loc_1));
                return _loc_2;
            }// end function
            , function (param1:String) : void
            {
                _ChengeIceCheckWindow_Label6.text = param1;
                return;
            }// end function
            , "_ChengeIceCheckWindow_Label6.text");
            result[12] = binding;
            binding = new Binding(this, function () : Object
            {
                return _swf_ok;
            }// end function
            , function (param1:Object) : void
            {
                _ChengeIceCheckWindow_Image3.source = param1;
                return;
            }// end function
            , "_ChengeIceCheckWindow_Image3.source");
            result[13] = binding;
            binding = new Binding(this, function () : Object
            {
                return _swf_back;
            }// end function
            , function (param1:Object) : void
            {
                _ChengeIceCheckWindow_Image4.source = param1;
                return;
            }// end function
            , "_ChengeIceCheckWindow_Image4.source");
            result[14] = binding;
            binding = new Binding(this, function () : Boolean
            {
                return _withUnit;
            }// end function
            , function (param1:Boolean) : void
            {
                _ChengeIceCheckWindow_Spacer9.includeInLayout = param1;
                return;
            }// end function
            , "_ChengeIceCheckWindow_Spacer9.includeInLayout");
            result[15] = binding;
            binding = new Binding(this, function () : Object
            {
                return _swf_awake;
            }// end function
            , function (param1:Object) : void
            {
                _ChengeIceCheckWindow_Image5.source = param1;
                return;
            }// end function
            , "_ChengeIceCheckWindow_Image5.source");
            result[16] = binding;
            binding = new Binding(this, function () : Boolean
            {
                return _withUnit;
            }// end function
            , function (param1:Boolean) : void
            {
                _ChengeIceCheckWindow_Image5.visible = param1;
                return;
            }// end function
            , "_ChengeIceCheckWindow_Image5.visible");
            result[17] = binding;
            binding = new Binding(this, function () : Boolean
            {
                return _withUnit;
            }// end function
            , function (param1:Boolean) : void
            {
                _ChengeIceCheckWindow_Image5.includeInLayout = param1;
                return;
            }// end function
            , "_ChengeIceCheckWindow_Image5.includeInLayout");
            result[18] = binding;
            return result;
        }// end function

        private function get _swf_window() : MovieClipLoaderAsset
        {
            return this._1075873300_swf_window;
        }// end function

        public static function set watcherSetupUtil(param1:IWatcherSetupUtil) : void
        {
            _watcherSetupUtil = param1;
            return;
        }// end function

    }
}
