package com.kbmj.viking.view.home
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
    import mx.managers.*;

    public class ConfirmStartMatchWindow extends PopupWindow implements IBindingClient
    {
        public var _ConfirmStartMatchWindow_HBox1:HBox;
        public var _ConfirmStartMatchWindow_HBox2:HBox;
        private var _909745771_specialMatch:Boolean = false;
        var _watchers:Array;
        private var _487487717_swf_cancel_button:MovieClipLoaderAsset;
        public var _ConfirmStartMatchWindow_Image1:Image;
        public var _ConfirmStartMatchWindow_Image2:Image;
        public var _ConfirmStartMatchWindow_Image3:Image;
        public var _ConfirmStartMatchWindow_Image4:Image;
        public var _ConfirmStartMatchWindow_Label1:Label;
        public var _ConfirmStartMatchWindow_Label2:Label;
        private var _46995503_canStart:Boolean = false;
        private var _1041000306_matchTicket:int = 0;
        var _bindingsByDestination:Object;
        var _bindingsBeginWithWord:Object;
        private var _2009475207_swf_ok_button:MovieClipLoaderAsset;
        private var _2067750007_swf_cancel_button2:MovieClipLoaderAsset;
        private var _1818888257_swf_bg:MovieClipLoaderAsset;
        public var _ConfirmStartMatchWindow_Text1:Text;
        var _bindings:Array;
        private var _documentDescriptor_:UIComponentDescriptor;
        public static const SELECT_MATCH_BATTLE:String = "ConfirmStartMatchWindow/SelectMatchBattlw";
        private static var _watcherSetupUtil:IWatcherSetupUtil;
        public static const SELECT_SPECIAL_MATCH_BATTLE:String = "ConfirmStartMatchWindow/SelectSpecialMatchBattlw";
        public static const CONFIRMED:String = "ConfirmStartContinuationWindow/Confirmed";

        public function ConfirmStartMatchWindow()
        {
            _documentDescriptor_ = new UIComponentDescriptor({type:PopupWindow, propertiesFactory:function () : Object
            {
                return {childDescriptors:[new UIComponentDescriptor({type:Image, id:"_ConfirmStartMatchWindow_Image1"}), new UIComponentDescriptor({type:VBox, propertiesFactory:function () : Object
                {
                    return {x:240, y:225, childDescriptors:[new UIComponentDescriptor({type:VBox, stylesFactory:function () : void
                    {
                        this.horizontalCenter = "20";
                        this.top = "100";
                        return;
                    }// end function
                    , propertiesFactory:function () : Object
                    {
                        return {childDescriptors:[new UIComponentDescriptor({type:Label, id:"_ConfirmStartMatchWindow_Label1", stylesFactory:function () : void
                        {
                            this.fontSize = 14;
                            return;
                        }// end function
                        }), new UIComponentDescriptor({type:VBox, propertiesFactory:function () : Object
                        {
                            return {x:300, y:245, childDescriptors:[new UIComponentDescriptor({type:Label, id:"_ConfirmStartMatchWindow_Label2", stylesFactory:function () : void
                            {
                                this.fontSize = 14;
                                return;
                            }// end function
                            }), new UIComponentDescriptor({type:Text, id:"_ConfirmStartMatchWindow_Text1", stylesFactory:function () : void
                            {
                                this.fontSize = 14;
                                return;
                            }// end function
                            })]};
                        }// end function
                        })]};
                    }// end function
                    }), new UIComponentDescriptor({type:Spacer, propertiesFactory:function () : Object
                    {
                        return {percentHeight:100};
                    }// end function
                    })]};
                }// end function
                }), new UIComponentDescriptor({type:HBox, id:"_ConfirmStartMatchWindow_HBox1", stylesFactory:function () : void
                {
                    this.horizontalGap = 130;
                    return;
                }// end function
                , propertiesFactory:function () : Object
                {
                    return {y:337, x:265, childDescriptors:[new UIComponentDescriptor({type:Image, id:"_ConfirmStartMatchWindow_Image2", events:{click:"___ConfirmStartMatchWindow_Image2_click"}}), new UIComponentDescriptor({type:Image, id:"_ConfirmStartMatchWindow_Image3", events:{click:"___ConfirmStartMatchWindow_Image3_click"}})]};
                }// end function
                }), new UIComponentDescriptor({type:HBox, id:"_ConfirmStartMatchWindow_HBox2", stylesFactory:function () : void
                {
                    this.horizontalGap = 130;
                    return;
                }// end function
                , propertiesFactory:function () : Object
                {
                    return {y:337, x:330, childDescriptors:[new UIComponentDescriptor({type:Image, id:"_ConfirmStartMatchWindow_Image4", events:{click:"___ConfirmStartMatchWindow_Image4_click"}})]};
                }// end function
                })]};
            }// end function
            });
            _1818888257_swf_bg = new Viking.EmbedSwfWindowCommon();
            _2009475207_swf_ok_button = new Viking.EmbedSwfButtonCommon();
            _487487717_swf_cancel_button = new Viking.EmbedSwfButtonCommon();
            _2067750007_swf_cancel_button2 = new Viking.EmbedSwfButtonCommon();
            _bindings = [];
            _watchers = [];
            _bindingsByDestination = {};
            _bindingsBeginWithWord = {};
            mx_internal::_document = this;
            this.addEventListener("creationComplete", ___ConfirmStartMatchWindow_PopupWindow1_creationComplete);
            return;
        }// end function

        private function get _matchTicket() : int
        {
            return this._1041000306_matchTicket;
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

        public function init() : void
        {
            MovieClip(Loader(_swf_bg.getChildAt(0)).content).gotoAndPlay("center_300x200");
            MovieClip(Loader(_swf_ok_button.getChildAt(0)).content).gotoAndPlay("button_yes");
            MovieClip(Loader(_swf_cancel_button.getChildAt(0)).content).gotoAndPlay("button_no");
            MovieClip(Loader(_swf_cancel_button2.getChildAt(0)).content).gotoAndPlay("button_ok");
            return;
        }// end function

        public function ___ConfirmStartMatchWindow_Image3_click(event:MouseEvent) : void
        {
            onClose();
            return;
        }// end function

        private function get _swf_cancel_button() : MovieClipLoaderAsset
        {
            return this._487487717_swf_cancel_button;
        }// end function

        override public function initialize() : void
        {
            var target:ConfirmStartMatchWindow;
            var watcherSetupUtilClass:Object;
            .mx_internal::setDocumentDescriptor(_documentDescriptor_);
            var bindings:* = _ConfirmStartMatchWindow_bindingsSetup();
            var watchers:Array;
            target;
            if (_watcherSetupUtil == null)
            {
                watcherSetupUtilClass = getDefinitionByName("_com_kbmj_viking_view_home_ConfirmStartMatchWindowWatcherSetupUtil");
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

        private function _ConfirmStartMatchWindow_bindingExprs() : void
        {
            var _loc_1:* = undefined;
            _loc_1 = _swf_bg;
            _loc_1 = _canStart ? (getStartBattleTypeLabel()) : (Utils.i18n("matchBattleNeedTicket"));
            _loc_1 = Utils.i18n("matchBattleTicketLeft") + ":" + _matchTicket;
            _loc_1 = Utils.i18n("generalConfirm");
            _loc_1 = _canStart;
            _loc_1 = _canStart;
            _loc_1 = _canStart;
            _loc_1 = _canStart;
            _loc_1 = _swf_ok_button;
            _loc_1 = _swf_cancel_button;
            _loc_1 = !_canStart;
            _loc_1 = !_canStart;
            _loc_1 = _swf_cancel_button2;
            return;
        }// end function

        private function set _canStart(param1:Boolean) : void
        {
            var _loc_2:* = this._46995503_canStart;
            if (_loc_2 !== param1)
            {
                this._46995503_canStart = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "_canStart", _loc_2, param1));
            }
            return;
        }// end function

        private function getStartBattleTypeLabel() : String
        {
            return _specialMatch ? (Utils.i18n("specialMatchBattle")) : (Utils.i18n("matchBattle"));
        }// end function

        public function setSpecialMatchTicket(param1:int) : void
        {
            _specialMatch = true;
            _matchTicket = param1;
            _canStart = _matchTicket > 0;
            return;
        }// end function

        private function get _swf_bg() : MovieClipLoaderAsset
        {
            return this._1818888257_swf_bg;
        }// end function

        private function set _swf_cancel_button(param1:MovieClipLoaderAsset) : void
        {
            var _loc_2:* = this._487487717_swf_cancel_button;
            if (_loc_2 !== param1)
            {
                this._487487717_swf_cancel_button = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "_swf_cancel_button", _loc_2, param1));
            }
            return;
        }// end function

        public function ___ConfirmStartMatchWindow_Image2_click(event:MouseEvent) : void
        {
            onConfirm();
            return;
        }// end function

        private function get _canStart() : Boolean
        {
            return this._46995503_canStart;
        }// end function

        private function set _specialMatch(param1:Boolean) : void
        {
            var _loc_2:* = this._909745771_specialMatch;
            if (_loc_2 !== param1)
            {
                this._909745771_specialMatch = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "_specialMatch", _loc_2, param1));
            }
            return;
        }// end function

        public function ___ConfirmStartMatchWindow_PopupWindow1_creationComplete(event:FlexEvent) : void
        {
            init();
            return;
        }// end function

        public function ___ConfirmStartMatchWindow_Image4_click(event:MouseEvent) : void
        {
            onClose();
            return;
        }// end function

        private function onConfirm() : void
        {
            var _loc_1:* = _specialMatch ? (SELECT_SPECIAL_MATCH_BATTLE) : (SELECT_MATCH_BATTLE);
            sendPopupEvent(_loc_1, new Object());
            PopUpManager.removePopUp(this);
            return;
        }// end function

        public function set matchTicket(param1:int) : void
        {
            _specialMatch = false;
            _matchTicket = param1;
            _canStart = _matchTicket > 0;
            return;
        }// end function

        private function _ConfirmStartMatchWindow_bindingsSetup() : Array
        {
            var binding:Binding;
            var result:Array;
            binding = new Binding(this, function () : Object
            {
                return _swf_bg;
            }// end function
            , function (param1:Object) : void
            {
                _ConfirmStartMatchWindow_Image1.source = param1;
                return;
            }// end function
            , "_ConfirmStartMatchWindow_Image1.source");
            result[0] = binding;
            binding = new Binding(this, function () : String
            {
                var _loc_1:* = _canStart ? (getStartBattleTypeLabel()) : (Utils.i18n("matchBattleNeedTicket"));
                var _loc_2:* = _loc_1 == undefined ? (null) : (String(_loc_1));
                return _loc_2;
            }// end function
            , function (param1:String) : void
            {
                _ConfirmStartMatchWindow_Label1.text = param1;
                return;
            }// end function
            , "_ConfirmStartMatchWindow_Label1.text");
            result[1] = binding;
            binding = new Binding(this, function () : String
            {
                var _loc_1:* = Utils.i18n("matchBattleTicketLeft") + ":" + _matchTicket;
                var _loc_2:* = _loc_1 == undefined ? (null) : (String(_loc_1));
                return _loc_2;
            }// end function
            , function (param1:String) : void
            {
                _ConfirmStartMatchWindow_Label2.text = param1;
                return;
            }// end function
            , "_ConfirmStartMatchWindow_Label2.text");
            result[2] = binding;
            binding = new Binding(this, function () : String
            {
                var _loc_1:* = Utils.i18n("generalConfirm");
                var _loc_2:* = _loc_1 == undefined ? (null) : (String(_loc_1));
                return _loc_2;
            }// end function
            , function (param1:String) : void
            {
                _ConfirmStartMatchWindow_Text1.text = param1;
                return;
            }// end function
            , "_ConfirmStartMatchWindow_Text1.text");
            result[3] = binding;
            binding = new Binding(this, function () : Boolean
            {
                return _canStart;
            }// end function
            , function (param1:Boolean) : void
            {
                _ConfirmStartMatchWindow_Text1.visible = param1;
                return;
            }// end function
            , "_ConfirmStartMatchWindow_Text1.visible");
            result[4] = binding;
            binding = new Binding(this, function () : Boolean
            {
                return _canStart;
            }// end function
            , function (param1:Boolean) : void
            {
                _ConfirmStartMatchWindow_Text1.includeInLayout = param1;
                return;
            }// end function
            , "_ConfirmStartMatchWindow_Text1.includeInLayout");
            result[5] = binding;
            binding = new Binding(this, function () : Boolean
            {
                return _canStart;
            }// end function
            , function (param1:Boolean) : void
            {
                _ConfirmStartMatchWindow_HBox1.visible = param1;
                return;
            }// end function
            , "_ConfirmStartMatchWindow_HBox1.visible");
            result[6] = binding;
            binding = new Binding(this, function () : Boolean
            {
                return _canStart;
            }// end function
            , function (param1:Boolean) : void
            {
                _ConfirmStartMatchWindow_HBox1.includeInLayout = param1;
                return;
            }// end function
            , "_ConfirmStartMatchWindow_HBox1.includeInLayout");
            result[7] = binding;
            binding = new Binding(this, function () : Object
            {
                return _swf_ok_button;
            }// end function
            , function (param1:Object) : void
            {
                _ConfirmStartMatchWindow_Image2.source = param1;
                return;
            }// end function
            , "_ConfirmStartMatchWindow_Image2.source");
            result[8] = binding;
            binding = new Binding(this, function () : Object
            {
                return _swf_cancel_button;
            }// end function
            , function (param1:Object) : void
            {
                _ConfirmStartMatchWindow_Image3.source = param1;
                return;
            }// end function
            , "_ConfirmStartMatchWindow_Image3.source");
            result[9] = binding;
            binding = new Binding(this, function () : Boolean
            {
                return !_canStart;
            }// end function
            , function (param1:Boolean) : void
            {
                _ConfirmStartMatchWindow_HBox2.visible = param1;
                return;
            }// end function
            , "_ConfirmStartMatchWindow_HBox2.visible");
            result[10] = binding;
            binding = new Binding(this, function () : Boolean
            {
                return !_canStart;
            }// end function
            , function (param1:Boolean) : void
            {
                _ConfirmStartMatchWindow_HBox2.includeInLayout = param1;
                return;
            }// end function
            , "_ConfirmStartMatchWindow_HBox2.includeInLayout");
            result[11] = binding;
            binding = new Binding(this, function () : Object
            {
                return _swf_cancel_button2;
            }// end function
            , function (param1:Object) : void
            {
                _ConfirmStartMatchWindow_Image4.source = param1;
                return;
            }// end function
            , "_ConfirmStartMatchWindow_Image4.source");
            result[12] = binding;
            return result;
        }// end function

        private function get _specialMatch() : Boolean
        {
            return this._909745771_specialMatch;
        }// end function

        private function set _swf_cancel_button2(param1:MovieClipLoaderAsset) : void
        {
            var _loc_2:* = this._2067750007_swf_cancel_button2;
            if (_loc_2 !== param1)
            {
                this._2067750007_swf_cancel_button2 = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "_swf_cancel_button2", _loc_2, param1));
            }
            return;
        }// end function

        private function set _swf_ok_button(param1:MovieClipLoaderAsset) : void
        {
            var _loc_2:* = this._2009475207_swf_ok_button;
            if (_loc_2 !== param1)
            {
                this._2009475207_swf_ok_button = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "_swf_ok_button", _loc_2, param1));
            }
            return;
        }// end function

        private function get _swf_cancel_button2() : MovieClipLoaderAsset
        {
            return this._2067750007_swf_cancel_button2;
        }// end function

        private function get _swf_ok_button() : MovieClipLoaderAsset
        {
            return this._2009475207_swf_ok_button;
        }// end function

        private function set _matchTicket(param1:int) : void
        {
            var _loc_2:* = this._1041000306_matchTicket;
            if (_loc_2 !== param1)
            {
                this._1041000306_matchTicket = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "_matchTicket", _loc_2, param1));
            }
            return;
        }// end function

        public static function set watcherSetupUtil(param1:IWatcherSetupUtil) : void
        {
            _watcherSetupUtil = param1;
            return;
        }// end function

    }
}
