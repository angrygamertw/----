package com.kbmj.viking.view.home
{
    import com.kbmj.viking.lib.*;
    import com.kbmj.viking.view.*;
    import com.kbmj.viking.vo.*;
    import flash.display.*;
    import flash.events.*;
    import flash.utils.*;
    import mx.binding.*;
    import mx.containers.*;
    import mx.controls.*;
    import mx.core.*;
    import mx.events.*;

    public class SpecialSummonWindow extends PopupWindow implements IBindingClient
    {
        private var _1584105757viewStack:ViewStack;
        private var _1834510379_ticket:int = 0;
        public var _SpecialSummonWindow_Text5:Text;
        private var _1117121544_ticketText:String;
        private var _2145414259_swf_ticket_ok:MovieClipLoaderAsset;
        var _bindingsByDestination:Object;
        private var playerVO:PlayerVO;
        private var _1193840764_swf_close:MovieClipLoaderAsset;
        private var _91310105_type:String;
        public var _SpecialSummonWindow_Image1:Image;
        public var _SpecialSummonWindow_Image3:Image;
        public var _SpecialSummonWindow_Image4:Image;
        public var _SpecialSummonWindow_Image6:Image;
        public var _SpecialSummonWindow_Image7:Image;
        public var _SpecialSummonWindow_Image5:Image;
        private var _embed_mxml__images_icon_power_png_227571469:Class;
        var _watchers:Array;
        private var _297062466usePower:int = 0;
        private var _2135756891titleText:String;
        private var _616915969_swf_ticket_close:MovieClipLoaderAsset;
        var _bindingsBeginWithWord:Object;
        private var _1818888664_swf_ok:MovieClipLoaderAsset;
        private var _1267849629_itemName:String;
        var _bindings:Array;
        public var _SpecialSummonWindow_Text1:Text;
        public var _SpecialSummonWindow_Text2:Text;
        public var _SpecialSummonWindow_Text3:Text;
        private var _100077085_swf_back:MovieClipLoaderAsset;
        private var _documentDescriptor_:UIComponentDescriptor;
        public var _SpecialSummonWindow_Text8:Text;
        public var _SpecialSummonWindow_Text4:Text;
        public var _SpecialSummonWindow_Text6:Text;
        public var _SpecialSummonWindow_Text7:Text;
        public static const SPECIAL_SUMMON_RUN:String = "specialSummonRun";
        public static const CLOSE_WINDOW:String = "closeWindow";
        private static var _watcherSetupUtil:IWatcherSetupUtil;
        public static const NAME:String = "sprecialSummonWiondow";

        public function SpecialSummonWindow()
        {
            _documentDescriptor_ = new UIComponentDescriptor({type:PopupWindow, propertiesFactory:function () : Object
            {
                return {childDescriptors:[new UIComponentDescriptor({type:Text, id:"_SpecialSummonWindow_Text1", propertiesFactory:function () : Object
                {
                    return {x:350, y:302, styleName:"PanelBaseTitle"};
                }// end function
                }), new UIComponentDescriptor({type:ViewStack, id:"viewStack", propertiesFactory:function () : Object
                {
                    return {childDescriptors:[new UIComponentDescriptor({type:Canvas, propertiesFactory:function () : Object
                    {
                        return {childDescriptors:[new UIComponentDescriptor({type:Text, id:"_SpecialSummonWindow_Text2", stylesFactory:function () : void
                        {
                            this.fontSize = 14;
                            return;
                        }// end function
                        , propertiesFactory:function () : Object
                        {
                            return {x:150, y:360};
                        }// end function
                        }), new UIComponentDescriptor({type:HBox, stylesFactory:function () : void
                        {
                            this.horizontalGap = 150;
                            return;
                        }// end function
                        , propertiesFactory:function () : Object
                        {
                            return {x:325, y:495, childDescriptors:[new UIComponentDescriptor({type:Image, id:"_SpecialSummonWindow_Image1", events:{click:"___SpecialSummonWindow_Image1_click"}})]};
                        }// end function
                        })]};
                    }// end function
                    }), new UIComponentDescriptor({type:Canvas, propertiesFactory:function () : Object
                    {
                        return {childDescriptors:[new UIComponentDescriptor({type:Image, propertiesFactory:function () : Object
                        {
                            return {source:_embed_mxml__images_icon_power_png_227571469, x:135, y:362};
                        }// end function
                        }), new UIComponentDescriptor({type:Text, id:"_SpecialSummonWindow_Text3", stylesFactory:function () : void
                        {
                            this.fontSize = 14;
                            return;
                        }// end function
                        , propertiesFactory:function () : Object
                        {
                            return {x:150, y:360};
                        }// end function
                        }), new UIComponentDescriptor({type:Text, id:"_SpecialSummonWindow_Text4", stylesFactory:function () : void
                        {
                            this.fontSize = 14;
                            return;
                        }// end function
                        , propertiesFactory:function () : Object
                        {
                            return {x:150, y:380};
                        }// end function
                        }), new UIComponentDescriptor({type:HBox, stylesFactory:function () : void
                        {
                            this.horizontalGap = 150;
                            return;
                        }// end function
                        , propertiesFactory:function () : Object
                        {
                            return {x:250, y:495, childDescriptors:[new UIComponentDescriptor({type:Image, id:"_SpecialSummonWindow_Image3", events:{click:"___SpecialSummonWindow_Image3_click"}}), new UIComponentDescriptor({type:Image, id:"_SpecialSummonWindow_Image4", events:{click:"___SpecialSummonWindow_Image4_click"}})]};
                        }// end function
                        })]};
                    }// end function
                    }), new UIComponentDescriptor({type:Canvas, propertiesFactory:function () : Object
                    {
                        return {childDescriptors:[new UIComponentDescriptor({type:Text, id:"_SpecialSummonWindow_Text5", stylesFactory:function () : void
                        {
                            this.fontSize = 14;
                            return;
                        }// end function
                        , propertiesFactory:function () : Object
                        {
                            return {x:150, y:360};
                        }// end function
                        }), new UIComponentDescriptor({type:Text, id:"_SpecialSummonWindow_Text6", stylesFactory:function () : void
                        {
                            this.fontSize = 14;
                            return;
                        }// end function
                        , propertiesFactory:function () : Object
                        {
                            return {x:150, y:380};
                        }// end function
                        }), new UIComponentDescriptor({type:Text, id:"_SpecialSummonWindow_Text7", stylesFactory:function () : void
                        {
                            this.fontSize = 16;
                            return;
                        }// end function
                        , propertiesFactory:function () : Object
                        {
                            return {x:150, y:440};
                        }// end function
                        }), new UIComponentDescriptor({type:HBox, stylesFactory:function () : void
                        {
                            this.horizontalGap = 150;
                            return;
                        }// end function
                        , propertiesFactory:function () : Object
                        {
                            return {x:250, y:495, childDescriptors:[new UIComponentDescriptor({type:Image, id:"_SpecialSummonWindow_Image5", events:{click:"___SpecialSummonWindow_Image5_click"}}), new UIComponentDescriptor({type:Image, id:"_SpecialSummonWindow_Image6", events:{click:"___SpecialSummonWindow_Image6_click"}})]};
                        }// end function
                        })]};
                    }// end function
                    }), new UIComponentDescriptor({type:Canvas, propertiesFactory:function () : Object
                    {
                        return {childDescriptors:[new UIComponentDescriptor({type:Text, id:"_SpecialSummonWindow_Text8", stylesFactory:function () : void
                        {
                            this.fontSize = 14;
                            return;
                        }// end function
                        , propertiesFactory:function () : Object
                        {
                            return {x:150, y:360};
                        }// end function
                        }), new UIComponentDescriptor({type:Image, id:"_SpecialSummonWindow_Image7", events:{click:"___SpecialSummonWindow_Image7_click"}, propertiesFactory:function () : Object
                        {
                            return {x:325, y:495};
                        }// end function
                        })]};
                    }// end function
                    })]};
                }// end function
                })]};
            }// end function
            });
            _1193840764_swf_close = new Viking.EmbedSwfButtonCommon();
            _1818888664_swf_ok = new Viking.EmbedSwfButtonCommon();
            _100077085_swf_back = new Viking.EmbedSwfButtonCommon();
            _2145414259_swf_ticket_ok = new Viking.EmbedSwfButtonCommon();
            _616915969_swf_ticket_close = new Viking.EmbedSwfButtonCommon();
            playerVO = new PlayerVO();
            _91310105_type = new String();
            _2135756891titleText = new String();
            _1267849629_itemName = new String();
            _1117121544_ticketText = new String();
            _embed_mxml__images_icon_power_png_227571469 = SpecialSummonWindow__embed_mxml__images_icon_power_png_227571469;
            _bindings = [];
            _watchers = [];
            _bindingsByDestination = {};
            _bindingsBeginWithWord = {};
            mx_internal::_document = this;
            this.addEventListener("creationComplete", ___SpecialSummonWindow_PopupWindow1_creationComplete);
            return;
        }// end function

        private function closeWindow() : void
        {
            MovieClip(Loader(_swf_close.getChildAt(0)).content).gotoAndPlay(0);
            MovieClip(Loader(_swf_close.getChildAt(0)).content).gotoAndPlay("button_no");
            MovieClip(Loader(_swf_ok.getChildAt(0)).content).gotoAndPlay(0);
            MovieClip(Loader(_swf_ok.getChildAt(0)).content).gotoAndPlay("button_yes");
            MovieClip(Loader(_swf_ticket_close.getChildAt(0)).content).gotoAndPlay(0);
            MovieClip(Loader(_swf_ticket_close.getChildAt(0)).content).gotoAndPlay("button_no");
            MovieClip(Loader(_swf_ticket_ok.getChildAt(0)).content).gotoAndPlay(0);
            MovieClip(Loader(_swf_ticket_ok.getChildAt(0)).content).gotoAndPlay("button_yes");
            MovieClip(Loader(_swf_back.getChildAt(0)).content).gotoAndPlay(0);
            MovieClip(Loader(_swf_back.getChildAt(0)).content).gotoAndPlay("button_back");
            sendEvent(CLOSE_WINDOW);
            return;
        }// end function

        public function init(param1:PlayerVO, param2:String, param3:ResourceVO) : void
        {
            var _loc_4:String = null;
            var _loc_5:Object = null;
            playerVO = param1;
            _type = param2;
            switch(_type)
            {
                case "hero":
                {
                    usePower = 600;
                    titleText = Utils.i18n("specialSummonGold");
                    _loc_4 = "1353";
                    break;
                }
                case "rainbow":
                {
                    usePower = 900;
                    titleText = Utils.i18n("specialSummonRainbow");
                    _loc_4 = "1352";
                    break;
                }
                case "sky":
                {
                    usePower = 0;
                    titleText = Utils.i18n("specialSummonSky");
                    _loc_4 = "1418";
                    break;
                }
                case "campaign1":
                {
                    usePower = 500;
                    titleText = Utils.i18n("summonTypeSelectYamihimeSummon");
                    _loc_4 = "1528";
                    break;
                }
                case "campaign2":
                {
                    usePower = 200;
                    titleText = Utils.i18n("summonTypeSelectPumpkinSummon");
                    _loc_4 = "1526";
                    break;
                }
                case "campaign3":
                {
                    usePower = 500;
                    titleText = Utils.i18n("summonTypeSelectBarahimeSummon");
                    _loc_4 = "1528";
                    break;
                }
                case "racial1":
                {
                    usePower = 900;
                    titleText = "刀斧種族召喚";
                    _loc_4 = "";
                    break;
                }
                case "racial2":
                {
                    usePower = 900;
                    titleText = "槍弓種族召喚";
                    _loc_4 = "";
                    break;
                }
                case "racial3":
                {
                    usePower = 900;
                    titleText = "術種族召喚";
                    _loc_4 = "";
                    break;
                }
                default:
                {
                    usePower = 300;
                    titleText = Utils.i18n("specialSummonSilver");
                    _loc_4 = "1354";
                    break;
                    break;
                }
            }
            _ticket = 0;
            for each (_loc_5 in param3.materials)
            {
                
                if (_loc_5.masterVO.code == _loc_4)
                {
                    _ticket = _loc_5.quantity;
                    _itemName = _loc_5.nameLabel;
                }
            }
            _ticketText = _ticket + (_type == "campaign1" || _type == "campaign2" || _type == "campaign3" ? ("個") : ("枚"));
            if (usePower == 0 && _ticket <= 0)
            {
                viewStack.selectedIndex = 3;
            }
            else if (_ticket > 0)
            {
                viewStack.selectedIndex = 2;
            }
            else
            {
                viewStack.selectedIndex = 1;
            }
            return;
        }// end function

        private function set _swf_ticket_close(param1:MovieClipLoaderAsset) : void
        {
            var _loc_2:* = this._616915969_swf_ticket_close;
            if (_loc_2 !== param1)
            {
                this._616915969_swf_ticket_close = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "_swf_ticket_close", _loc_2, param1));
            }
            return;
        }// end function

        private function set _ticketText(param1:String) : void
        {
            var _loc_2:* = this._1117121544_ticketText;
            if (_loc_2 !== param1)
            {
                this._1117121544_ticketText = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "_ticketText", _loc_2, param1));
            }
            return;
        }// end function

        public function ___SpecialSummonWindow_Image3_click(event:MouseEvent) : void
        {
            summonSpecialUnit();
            return;
        }// end function

        public function ___SpecialSummonWindow_Image7_click(event:MouseEvent) : void
        {
            closeWindow();
            return;
        }// end function

        private function get _type() : String
        {
            return this._91310105_type;
        }// end function

        private function get _swf_ticket_close() : MovieClipLoaderAsset
        {
            return this._616915969_swf_ticket_close;
        }// end function

        private function createComp() : void
        {
            MovieClip(Loader(_swf_close.getChildAt(0)).content).gotoAndPlay("button_no");
            MovieClip(Loader(_swf_ok.getChildAt(0)).content).gotoAndPlay("button_yes");
            MovieClip(Loader(_swf_ticket_close.getChildAt(0)).content).gotoAndPlay("button_no");
            MovieClip(Loader(_swf_ticket_ok.getChildAt(0)).content).gotoAndPlay("button_yes");
            MovieClip(Loader(_swf_back.getChildAt(0)).content).gotoAndPlay("button_back");
            return;
        }// end function

        private function get _ticket() : int
        {
            return this._1834510379_ticket;
        }// end function

        private function set _type(param1:String) : void
        {
            var _loc_2:* = this._91310105_type;
            if (_loc_2 !== param1)
            {
                this._91310105_type = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "_type", _loc_2, param1));
            }
            return;
        }// end function

        private function set _itemName(param1:String) : void
        {
            var _loc_2:* = this._1267849629_itemName;
            if (_loc_2 !== param1)
            {
                this._1267849629_itemName = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "_itemName", _loc_2, param1));
            }
            return;
        }// end function

        private function summonSpecialUnit() : void
        {
            dispatchEvent(new PopupEvent(SPECIAL_SUMMON_RUN, _type));
            return;
        }// end function

        private function set titleText(param1:String) : void
        {
            var _loc_2:* = this._2135756891titleText;
            if (_loc_2 !== param1)
            {
                this._2135756891titleText = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "titleText", _loc_2, param1));
            }
            return;
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

        public function ___SpecialSummonWindow_Image4_click(event:MouseEvent) : void
        {
            closeWindow();
            return;
        }// end function

        public function ___SpecialSummonWindow_PopupWindow1_creationComplete(event:FlexEvent) : void
        {
            createComp();
            return;
        }// end function

        private function get _swf_ticket_ok() : MovieClipLoaderAsset
        {
            return this._2145414259_swf_ticket_ok;
        }// end function

        private function get _swf_close() : MovieClipLoaderAsset
        {
            return this._1193840764_swf_close;
        }// end function

        private function set usePower(param1:int) : void
        {
            var _loc_2:* = this._297062466usePower;
            if (_loc_2 !== param1)
            {
                this._297062466usePower = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "usePower", _loc_2, param1));
            }
            return;
        }// end function

        override public function initialize() : void
        {
            var target:SpecialSummonWindow;
            var watcherSetupUtilClass:Object;
            .mx_internal::setDocumentDescriptor(_documentDescriptor_);
            var bindings:* = _SpecialSummonWindow_bindingsSetup();
            var watchers:Array;
            target;
            if (_watcherSetupUtil == null)
            {
                watcherSetupUtilClass = getDefinitionByName("_com_kbmj_viking_view_home_SpecialSummonWindowWatcherSetupUtil");
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

        public function ___SpecialSummonWindow_Image1_click(event:MouseEvent) : void
        {
            closeWindow();
            return;
        }// end function

        private function get _itemName() : String
        {
            return this._1267849629_itemName;
        }// end function

        public function ___SpecialSummonWindow_Image5_click(event:MouseEvent) : void
        {
            summonSpecialUnit();
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

        private function get titleText() : String
        {
            return this._2135756891titleText;
        }// end function

        private function get usePower() : int
        {
            return this._297062466usePower;
        }// end function

        private function _SpecialSummonWindow_bindingExprs() : void
        {
            var _loc_1:* = undefined;
            _loc_1 = titleText;
            _loc_1 = Utils.i18n("specialSummonMaxUnitNum");
            _loc_1 = _swf_back;
            _loc_1 = Utils.i18n("specialSummonConf", usePower);
            _loc_1 = Utils.i18n("normalSummonCreateConfirm3");
            _loc_1 = _swf_ok;
            _loc_1 = _swf_close;
            _loc_1 = Utils.i18n("specialSummonWithItem", _itemName);
            _loc_1 = Utils.i18n("generalConfirm");
            _loc_1 = _itemName + "：" + _ticketText;
            _loc_1 = _swf_ticket_ok;
            _loc_1 = _swf_ticket_close;
            _loc_1 = Utils.i18n("specialSummonNoItem", _itemName);
            _loc_1 = _swf_back;
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

        private function get _swf_ok() : MovieClipLoaderAsset
        {
            return this._1818888664_swf_ok;
        }// end function

        public function get viewStack() : ViewStack
        {
            return this._1584105757viewStack;
        }// end function

        private function set _swf_ticket_ok(param1:MovieClipLoaderAsset) : void
        {
            var _loc_2:* = this._2145414259_swf_ticket_ok;
            if (_loc_2 !== param1)
            {
                this._2145414259_swf_ticket_ok = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "_swf_ticket_ok", _loc_2, param1));
            }
            return;
        }// end function

        public function ___SpecialSummonWindow_Image6_click(event:MouseEvent) : void
        {
            closeWindow();
            return;
        }// end function

        private function get _swf_back() : MovieClipLoaderAsset
        {
            return this._100077085_swf_back;
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

        private function _SpecialSummonWindow_bindingsSetup() : Array
        {
            var binding:Binding;
            var result:Array;
            binding = new Binding(this, function () : String
            {
                var _loc_1:* = titleText;
                var _loc_2:* = _loc_1 == undefined ? (null) : (String(_loc_1));
                return _loc_2;
            }// end function
            , function (param1:String) : void
            {
                _SpecialSummonWindow_Text1.text = param1;
                return;
            }// end function
            , "_SpecialSummonWindow_Text1.text");
            result[0] = binding;
            binding = new Binding(this, function () : String
            {
                var _loc_1:* = Utils.i18n("specialSummonMaxUnitNum");
                var _loc_2:* = _loc_1 == undefined ? (null) : (String(_loc_1));
                return _loc_2;
            }// end function
            , function (param1:String) : void
            {
                _SpecialSummonWindow_Text2.text = param1;
                return;
            }// end function
            , "_SpecialSummonWindow_Text2.text");
            result[1] = binding;
            binding = new Binding(this, function () : Object
            {
                return _swf_back;
            }// end function
            , function (param1:Object) : void
            {
                _SpecialSummonWindow_Image1.source = param1;
                return;
            }// end function
            , "_SpecialSummonWindow_Image1.source");
            result[2] = binding;
            binding = new Binding(this, function () : String
            {
                var _loc_1:* = Utils.i18n("specialSummonConf", usePower);
                var _loc_2:* = _loc_1 == undefined ? (null) : (String(_loc_1));
                return _loc_2;
            }// end function
            , function (param1:String) : void
            {
                _SpecialSummonWindow_Text3.text = param1;
                return;
            }// end function
            , "_SpecialSummonWindow_Text3.text");
            result[3] = binding;
            binding = new Binding(this, function () : String
            {
                var _loc_1:* = Utils.i18n("normalSummonCreateConfirm3");
                var _loc_2:* = _loc_1 == undefined ? (null) : (String(_loc_1));
                return _loc_2;
            }// end function
            , function (param1:String) : void
            {
                _SpecialSummonWindow_Text4.text = param1;
                return;
            }// end function
            , "_SpecialSummonWindow_Text4.text");
            result[4] = binding;
            binding = new Binding(this, function () : Object
            {
                return _swf_ok;
            }// end function
            , function (param1:Object) : void
            {
                _SpecialSummonWindow_Image3.source = param1;
                return;
            }// end function
            , "_SpecialSummonWindow_Image3.source");
            result[5] = binding;
            binding = new Binding(this, function () : Object
            {
                return _swf_close;
            }// end function
            , function (param1:Object) : void
            {
                _SpecialSummonWindow_Image4.source = param1;
                return;
            }// end function
            , "_SpecialSummonWindow_Image4.source");
            result[6] = binding;
            binding = new Binding(this, function () : String
            {
                var _loc_1:* = Utils.i18n("specialSummonWithItem", _itemName);
                var _loc_2:* = _loc_1 == undefined ? (null) : (String(_loc_1));
                return _loc_2;
            }// end function
            , function (param1:String) : void
            {
                _SpecialSummonWindow_Text5.text = param1;
                return;
            }// end function
            , "_SpecialSummonWindow_Text5.text");
            result[7] = binding;
            binding = new Binding(this, function () : String
            {
                var _loc_1:* = Utils.i18n("generalConfirm");
                var _loc_2:* = _loc_1 == undefined ? (null) : (String(_loc_1));
                return _loc_2;
            }// end function
            , function (param1:String) : void
            {
                _SpecialSummonWindow_Text6.text = param1;
                return;
            }// end function
            , "_SpecialSummonWindow_Text6.text");
            result[8] = binding;
            binding = new Binding(this, function () : String
            {
                var _loc_1:* = _itemName + "：" + _ticketText;
                var _loc_2:* = _loc_1 == undefined ? (null) : (String(_loc_1));
                return _loc_2;
            }// end function
            , function (param1:String) : void
            {
                _SpecialSummonWindow_Text7.text = param1;
                return;
            }// end function
            , "_SpecialSummonWindow_Text7.text");
            result[9] = binding;
            binding = new Binding(this, function () : Object
            {
                return _swf_ticket_ok;
            }// end function
            , function (param1:Object) : void
            {
                _SpecialSummonWindow_Image5.source = param1;
                return;
            }// end function
            , "_SpecialSummonWindow_Image5.source");
            result[10] = binding;
            binding = new Binding(this, function () : Object
            {
                return _swf_ticket_close;
            }// end function
            , function (param1:Object) : void
            {
                _SpecialSummonWindow_Image6.source = param1;
                return;
            }// end function
            , "_SpecialSummonWindow_Image6.source");
            result[11] = binding;
            binding = new Binding(this, function () : String
            {
                var _loc_1:* = Utils.i18n("specialSummonNoItem", _itemName);
                var _loc_2:* = _loc_1 == undefined ? (null) : (String(_loc_1));
                return _loc_2;
            }// end function
            , function (param1:String) : void
            {
                _SpecialSummonWindow_Text8.text = param1;
                return;
            }// end function
            , "_SpecialSummonWindow_Text8.text");
            result[12] = binding;
            binding = new Binding(this, function () : Object
            {
                return _swf_back;
            }// end function
            , function (param1:Object) : void
            {
                _SpecialSummonWindow_Image7.source = param1;
                return;
            }// end function
            , "_SpecialSummonWindow_Image7.source");
            result[13] = binding;
            return result;
        }// end function

        private function get _ticketText() : String
        {
            return this._1117121544_ticketText;
        }// end function

        public static function set watcherSetupUtil(param1:IWatcherSetupUtil) : void
        {
            SpecialSummonWindow._watcherSetupUtil = param1;
            return;
        }// end function

    }
}
