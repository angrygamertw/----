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

    public class MailDetailWindow extends PopupWindow implements IBindingClient
    {
        private var _1075873300_swf_window:MovieClipLoaderAsset;
        var _watchers:Array;
        public var _MailDetailWindow_Image1:Image;
        public var _MailDetailWindow_Image2:Image;
        public var _MailDetailWindow_Image3:Image;
        public var _MailDetailWindow_Label1:Label;
        public var _MailDetailWindow_Label2:Label;
        public var _MailDetailWindow_Label3:Label;
        public var _MailDetailWindow_Label4:Label;
        public var _MailDetailWindow_Label5:Label;
        public var _MailDetailWindow_Label6:Label;
        public var _MailDetailWindow_Label7:Label;
        public var _MailDetailWindow_TextArea1:TextArea;
        public var _MailDetailWindow_Text1:Text;
        var _bindingsByDestination:Object;
        var _bindingsBeginWithWord:Object;
        private var _1193840764_swf_close:MovieClipLoaderAsset;
        private var _91078294_mail:MailVO;
        var _bindings:Array;
        private var _99566460_swf_send:MovieClipLoaderAsset;
        private var _documentDescriptor_:UIComponentDescriptor;
        private static var _watcherSetupUtil:IWatcherSetupUtil;
        public static const REPLY_MAIL_BY_DETAIL:String = "replyMailByDetail";

        public function MailDetailWindow()
        {
            _documentDescriptor_ = new UIComponentDescriptor({type:PopupWindow, propertiesFactory:function () : Object
            {
                return {childDescriptors:[new UIComponentDescriptor({type:Image, id:"_MailDetailWindow_Image1"}), new UIComponentDescriptor({type:Text, id:"_MailDetailWindow_Text1", propertiesFactory:function () : Object
                {
                    return {styleName:"PanelBaseTitle", x:450, y:80};
                }// end function
                }), new UIComponentDescriptor({type:Canvas, propertiesFactory:function () : Object
                {
                    return {x:310, y:139, childDescriptors:[new UIComponentDescriptor({type:Grid, stylesFactory:function () : void
                    {
                        this.horizontalGap = 30;
                        this.verticalGap = 0;
                        return;
                    }// end function
                    , propertiesFactory:function () : Object
                    {
                        return {width:120, childDescriptors:[new UIComponentDescriptor({type:GridRow, propertiesFactory:function () : Object
                        {
                            return {childDescriptors:[new UIComponentDescriptor({type:GridItem, stylesFactory:function () : void
                            {
                                this.borderStyle = "outset";
                                this.borderColor = 2829099;
                                this.borderSides = "bottom right";
                                this.backgroundColor = 2115121;
                                return;
                            }// end function
                            , propertiesFactory:function () : Object
                            {
                                return {childDescriptors:[new UIComponentDescriptor({type:Label, id:"_MailDetailWindow_Label1", stylesFactory:function () : void
                                {
                                    this.fontSize = 14;
                                    this.textAlign = "left";
                                    this.color = 15658734;
                                    return;
                                }// end function
                                , propertiesFactory:function () : Object
                                {
                                    return {width:107, height:23};
                                }// end function
                                })]};
                            }// end function
                            })]};
                        }// end function
                        }), new UIComponentDescriptor({type:GridRow, propertiesFactory:function () : Object
                        {
                            return {childDescriptors:[new UIComponentDescriptor({type:GridItem, stylesFactory:function () : void
                            {
                                this.borderStyle = "outset";
                                this.borderColor = 2829099;
                                this.borderSides = "bottom right";
                                this.backgroundColor = 2115121;
                                return;
                            }// end function
                            , propertiesFactory:function () : Object
                            {
                                return {childDescriptors:[new UIComponentDescriptor({type:Label, id:"_MailDetailWindow_Label2", stylesFactory:function () : void
                                {
                                    this.fontSize = 14;
                                    this.textAlign = "left";
                                    this.color = 15658734;
                                    return;
                                }// end function
                                , propertiesFactory:function () : Object
                                {
                                    return {width:107, height:23};
                                }// end function
                                })]};
                            }// end function
                            })]};
                        }// end function
                        }), new UIComponentDescriptor({type:GridRow, propertiesFactory:function () : Object
                        {
                            return {childDescriptors:[new UIComponentDescriptor({type:GridItem, stylesFactory:function () : void
                            {
                                this.borderStyle = "outset";
                                this.borderColor = 2829099;
                                this.borderSides = "bottom right";
                                this.backgroundColor = 2115121;
                                return;
                            }// end function
                            , propertiesFactory:function () : Object
                            {
                                return {childDescriptors:[new UIComponentDescriptor({type:Label, id:"_MailDetailWindow_Label3", stylesFactory:function () : void
                                {
                                    this.fontSize = 14;
                                    this.textAlign = "left";
                                    this.color = 15658734;
                                    return;
                                }// end function
                                , propertiesFactory:function () : Object
                                {
                                    return {width:107, height:23};
                                }// end function
                                })]};
                            }// end function
                            })]};
                        }// end function
                        })]};
                    }// end function
                    }), new UIComponentDescriptor({type:Grid, stylesFactory:function () : void
                    {
                        this.horizontalGap = 30;
                        this.verticalGap = 0;
                        return;
                    }// end function
                    , propertiesFactory:function () : Object
                    {
                        return {x:110, width:260, childDescriptors:[new UIComponentDescriptor({type:GridRow, propertiesFactory:function () : Object
                        {
                            return {childDescriptors:[new UIComponentDescriptor({type:GridItem, stylesFactory:function () : void
                            {
                                this.borderStyle = "outset";
                                this.borderColor = 2829099;
                                this.borderSides = "bottom right";
                                this.backgroundColor = 14803650;
                                return;
                            }// end function
                            , propertiesFactory:function () : Object
                            {
                                return {childDescriptors:[new UIComponentDescriptor({type:Label, id:"_MailDetailWindow_Label4", stylesFactory:function () : void
                                {
                                    this.fontSize = 14;
                                    this.textAlign = "left";
                                    return;
                                }// end function
                                , propertiesFactory:function () : Object
                                {
                                    return {width:250, height:23};
                                }// end function
                                })]};
                            }// end function
                            })]};
                        }// end function
                        }), new UIComponentDescriptor({type:GridRow, propertiesFactory:function () : Object
                        {
                            return {childDescriptors:[new UIComponentDescriptor({type:GridItem, stylesFactory:function () : void
                            {
                                this.borderStyle = "outset";
                                this.borderColor = 2829099;
                                this.borderSides = "bottom right";
                                this.backgroundColor = 16119005;
                                return;
                            }// end function
                            , propertiesFactory:function () : Object
                            {
                                return {childDescriptors:[new UIComponentDescriptor({type:Label, id:"_MailDetailWindow_Label5", stylesFactory:function () : void
                                {
                                    this.fontSize = 14;
                                    this.textAlign = "left";
                                    return;
                                }// end function
                                , propertiesFactory:function () : Object
                                {
                                    return {width:250, height:23};
                                }// end function
                                })]};
                            }// end function
                            })]};
                        }// end function
                        }), new UIComponentDescriptor({type:GridRow, propertiesFactory:function () : Object
                        {
                            return {childDescriptors:[new UIComponentDescriptor({type:GridItem, stylesFactory:function () : void
                            {
                                this.borderStyle = "outset";
                                this.borderColor = 2829099;
                                this.borderSides = "bottom right";
                                this.backgroundColor = 14803650;
                                return;
                            }// end function
                            , propertiesFactory:function () : Object
                            {
                                return {childDescriptors:[new UIComponentDescriptor({type:Label, id:"_MailDetailWindow_Label6", stylesFactory:function () : void
                                {
                                    this.fontSize = 14;
                                    this.textAlign = "left";
                                    return;
                                }// end function
                                , propertiesFactory:function () : Object
                                {
                                    return {width:250, height:23};
                                }// end function
                                })]};
                            }// end function
                            })]};
                        }// end function
                        })]};
                    }// end function
                    }), new UIComponentDescriptor({type:Grid, stylesFactory:function () : void
                    {
                        this.horizontalGap = 30;
                        this.verticalGap = 0;
                        return;
                    }// end function
                    , propertiesFactory:function () : Object
                    {
                        return {y:80, width:380, childDescriptors:[new UIComponentDescriptor({type:GridRow, propertiesFactory:function () : Object
                        {
                            return {childDescriptors:[new UIComponentDescriptor({type:GridItem, stylesFactory:function () : void
                            {
                                this.borderStyle = "outset";
                                this.borderColor = 2829099;
                                this.borderSides = "bottom right";
                                this.backgroundColor = 2115121;
                                return;
                            }// end function
                            , propertiesFactory:function () : Object
                            {
                                return {childDescriptors:[new UIComponentDescriptor({type:Label, id:"_MailDetailWindow_Label7", stylesFactory:function () : void
                                {
                                    this.fontSize = 14;
                                    this.textAlign = "center";
                                    this.color = 15658734;
                                    return;
                                }// end function
                                , propertiesFactory:function () : Object
                                {
                                    return {width:360};
                                }// end function
                                })]};
                            }// end function
                            })]};
                        }// end function
                        })]};
                    }// end function
                    }), new UIComponentDescriptor({type:TextArea, id:"_MailDetailWindow_TextArea1", stylesFactory:function () : void
                    {
                        this.fontSize = 15;
                        this.borderStyle = "none";
                        return;
                    }// end function
                    , propertiesFactory:function () : Object
                    {
                        return {x:0, y:107, editable:false, width:364, height:196};
                    }// end function
                    }), new UIComponentDescriptor({type:Image, id:"_MailDetailWindow_Image2", events:{click:"___MailDetailWindow_Image2_click"}, propertiesFactory:function () : Object
                    {
                        return {x:65, y:330};
                    }// end function
                    }), new UIComponentDescriptor({type:Image, id:"_MailDetailWindow_Image3", events:{click:"___MailDetailWindow_Image3_click"}, propertiesFactory:function () : Object
                    {
                        return {x:185, y:330};
                    }// end function
                    })]};
                }// end function
                })]};
            }// end function
            });
            _1075873300_swf_window = new Viking.EmbedSwfWindowCommon();
            _99566460_swf_send = new Viking.EmbedSwfButtonCommon();
            _1193840764_swf_close = new Viking.EmbedSwfButtonCommon();
            _91078294_mail = new MailVO();
            _bindings = [];
            _watchers = [];
            _bindingsByDestination = {};
            _bindingsBeginWithWord = {};
            mx_internal::_document = this;
            this.addEventListener("creationComplete", ___MailDetailWindow_PopupWindow1_creationComplete);
            return;
        }// end function

        private function get _swf_send() : MovieClipLoaderAsset
        {
            return this._99566460_swf_send;
        }// end function

        private function set _swf_send(param1:MovieClipLoaderAsset) : void
        {
            var _loc_2:* = this._99566460_swf_send;
            if (_loc_2 !== param1)
            {
                this._99566460_swf_send = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "_swf_send", _loc_2, param1));
            }
            return;
        }// end function

        public function ___MailDetailWindow_Image3_click(event:MouseEvent) : void
        {
            onClose();
            return;
        }// end function

        override public function initialize() : void
        {
            var target:MailDetailWindow;
            var watcherSetupUtilClass:Object;
            .mx_internal::setDocumentDescriptor(_documentDescriptor_);
            var bindings:* = _MailDetailWindow_bindingsSetup();
            var watchers:Array;
            target;
            if (_watcherSetupUtil == null)
            {
                watcherSetupUtilClass = getDefinitionByName("_com_kbmj_viking_view_home_MailDetailWindowWatcherSetupUtil");
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

        private function get _mail() : MailVO
        {
            return this._91078294_mail;
        }// end function

        private function init() : void
        {
            MovieClip(Loader(_swf_window.getChildAt(0)).content).gotoAndPlay("right_400x460");
            MovieClip(Loader(_swf_send.getChildAt(0)).content).gotoAndPlay("button_reply");
            MovieClip(Loader(_swf_close.getChildAt(0)).content).gotoAndPlay("button_close");
            return;
        }// end function

        private function set _mail(param1:MailVO) : void
        {
            var _loc_2:* = this._91078294_mail;
            if (_loc_2 !== param1)
            {
                this._91078294_mail = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "_mail", _loc_2, param1));
            }
            return;
        }// end function

        private function _MailDetailWindow_bindingsSetup() : Array
        {
            var binding:Binding;
            var result:Array;
            binding = new Binding(this, function () : Object
            {
                return _swf_window;
            }// end function
            , function (param1:Object) : void
            {
                _MailDetailWindow_Image1.source = param1;
                return;
            }// end function
            , "_MailDetailWindow_Image1.source");
            result[0] = binding;
            binding = new Binding(this, function () : String
            {
                var _loc_1:* = Utils.i18n("mailDetailReception");
                var _loc_2:* = _loc_1 == undefined ? (null) : (String(_loc_1));
                return _loc_2;
            }// end function
            , function (param1:String) : void
            {
                _MailDetailWindow_Text1.text = param1;
                return;
            }// end function
            , "_MailDetailWindow_Text1.text");
            result[1] = binding;
            binding = new Binding(this, function () : String
            {
                var _loc_1:* = Utils.i18n("mailDetailSender");
                var _loc_2:* = _loc_1 == undefined ? (null) : (String(_loc_1));
                return _loc_2;
            }// end function
            , function (param1:String) : void
            {
                _MailDetailWindow_Label1.text = param1;
                return;
            }// end function
            , "_MailDetailWindow_Label1.text");
            result[2] = binding;
            binding = new Binding(this, function () : String
            {
                var _loc_1:* = Utils.i18n("mailDetailSubject");
                var _loc_2:* = _loc_1 == undefined ? (null) : (String(_loc_1));
                return _loc_2;
            }// end function
            , function (param1:String) : void
            {
                _MailDetailWindow_Label2.text = param1;
                return;
            }// end function
            , "_MailDetailWindow_Label2.text");
            result[3] = binding;
            binding = new Binding(this, function () : String
            {
                var _loc_1:* = Utils.i18n("mailDetailSendTime");
                var _loc_2:* = _loc_1 == undefined ? (null) : (String(_loc_1));
                return _loc_2;
            }// end function
            , function (param1:String) : void
            {
                _MailDetailWindow_Label3.text = param1;
                return;
            }// end function
            , "_MailDetailWindow_Label3.text");
            result[4] = binding;
            binding = new Binding(this, function () : String
            {
                var _loc_1:* = _mail.senderName;
                var _loc_2:* = _loc_1 == undefined ? (null) : (String(_loc_1));
                return _loc_2;
            }// end function
            , function (param1:String) : void
            {
                _MailDetailWindow_Label4.text = param1;
                return;
            }// end function
            , "_MailDetailWindow_Label4.text");
            result[5] = binding;
            binding = new Binding(this, function () : String
            {
                var _loc_1:* = _mail.subject;
                var _loc_2:* = _loc_1 == undefined ? (null) : (String(_loc_1));
                return _loc_2;
            }// end function
            , function (param1:String) : void
            {
                _MailDetailWindow_Label5.text = param1;
                return;
            }// end function
            , "_MailDetailWindow_Label5.text");
            result[6] = binding;
            binding = new Binding(this, function () : String
            {
                var _loc_1:* = _mail.sentAt;
                var _loc_2:* = _loc_1 == undefined ? (null) : (String(_loc_1));
                return _loc_2;
            }// end function
            , function (param1:String) : void
            {
                _MailDetailWindow_Label6.text = param1;
                return;
            }// end function
            , "_MailDetailWindow_Label6.text");
            result[7] = binding;
            binding = new Binding(this, function () : String
            {
                var _loc_1:* = Utils.i18n("mailDetailBody");
                var _loc_2:* = _loc_1 == undefined ? (null) : (String(_loc_1));
                return _loc_2;
            }// end function
            , function (param1:String) : void
            {
                _MailDetailWindow_Label7.text = param1;
                return;
            }// end function
            , "_MailDetailWindow_Label7.text");
            result[8] = binding;
            binding = new Binding(this, function () : String
            {
                var _loc_1:* = _mail.body;
                var _loc_2:* = _loc_1 == undefined ? (null) : (String(_loc_1));
                return _loc_2;
            }// end function
            , function (param1:String) : void
            {
                _MailDetailWindow_TextArea1.htmlText = param1;
                return;
            }// end function
            , "_MailDetailWindow_TextArea1.htmlText");
            result[9] = binding;
            binding = new Binding(this, function () : Object
            {
                return _swf_send;
            }// end function
            , function (param1:Object) : void
            {
                _MailDetailWindow_Image2.source = param1;
                return;
            }// end function
            , "_MailDetailWindow_Image2.source");
            result[10] = binding;
            binding = new Binding(this, function () : Object
            {
                return _swf_close;
            }// end function
            , function (param1:Object) : void
            {
                _MailDetailWindow_Image3.source = param1;
                return;
            }// end function
            , "_MailDetailWindow_Image3.source");
            result[11] = binding;
            return result;
        }// end function

        public function ___MailDetailWindow_Image2_click(event:MouseEvent) : void
        {
            onReplyButton();
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

        private function _MailDetailWindow_bindingExprs() : void
        {
            var _loc_1:* = undefined;
            _loc_1 = _swf_window;
            _loc_1 = Utils.i18n("mailDetailReception");
            _loc_1 = Utils.i18n("mailDetailSender");
            _loc_1 = Utils.i18n("mailDetailSubject");
            _loc_1 = Utils.i18n("mailDetailSendTime");
            _loc_1 = _mail.senderName;
            _loc_1 = _mail.subject;
            _loc_1 = _mail.sentAt;
            _loc_1 = Utils.i18n("mailDetailBody");
            _loc_1 = _mail.body;
            _loc_1 = _swf_send;
            _loc_1 = _swf_close;
            return;
        }// end function

        private function onReplyButton() : void
        {
            dispatchEvent(new PopupEvent(REPLY_MAIL_BY_DETAIL, _mail));
            return;
        }// end function

        public function set mail(param1:MailVO) : void
        {
            _mail = param1;
            return;
        }// end function

        public function ___MailDetailWindow_PopupWindow1_creationComplete(event:FlexEvent) : void
        {
            init();
            return;
        }// end function

        private function get _swf_window() : MovieClipLoaderAsset
        {
            return this._1075873300_swf_window;
        }// end function

        private function get _swf_close() : MovieClipLoaderAsset
        {
            return this._1193840764_swf_close;
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
            MailDetailWindow._watcherSetupUtil = param1;
            return;
        }// end function

    }
}
