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

    public class ReplyMailWindow extends PopupWindow implements IBindingClient
    {
        public var _ReplyMailWindow_Image1:Image;
        public var _ReplyMailWindow_Image2:Image;
        public var _ReplyMailWindow_Image3:Image;
        private var _1867885268subject:TextInput;
        private var _1075873300_swf_window:MovieClipLoaderAsset;
        var _watchers:Array;
        public var _ReplyMailWindow_Text1:Text;
        public var _ReplyMailWindow_Text2:Text;
        public var _ReplyMailWindow_Text3:Text;
        public var _ReplyMailWindow_Text5:Text;
        public var _ReplyMailWindow_Text4:Text;
        private var _10286204mailText:TextArea;
        var _bindingsBeginWithWord:Object;
        var _bindingsByDestination:Object;
        private var _1193840764_swf_close:MovieClipLoaderAsset;
        private var _2095657228playerName:TextInput;
        private var _99566460_swf_send:MovieClipLoaderAsset;
        var _bindings:Array;
        private var _documentDescriptor_:UIComponentDescriptor;
        private static var _watcherSetupUtil:IWatcherSetupUtil;
        public static const REPLY_MAIL_SEND:String = "replyMailSend";

        public function ReplyMailWindow()
        {
            _documentDescriptor_ = new UIComponentDescriptor({type:PopupWindow, propertiesFactory:function () : Object
            {
                return {childDescriptors:[new UIComponentDescriptor({type:Image, id:"_ReplyMailWindow_Image1"}), new UIComponentDescriptor({type:Text, id:"_ReplyMailWindow_Text1", propertiesFactory:function () : Object
                {
                    return {styleName:"PanelBaseTitle", x:450, y:80};
                }// end function
                }), new UIComponentDescriptor({type:Canvas, propertiesFactory:function () : Object
                {
                    return {x:280, y:80, childDescriptors:[new UIComponentDescriptor({type:Text, id:"_ReplyMailWindow_Text2", propertiesFactory:function () : Object
                    {
                        return {styleName:"mailText", x:30, y:50};
                    }// end function
                    }), new UIComponentDescriptor({type:Text, id:"_ReplyMailWindow_Text3", propertiesFactory:function () : Object
                    {
                        return {styleName:"mailText", x:80, y:50};
                    }// end function
                    }), new UIComponentDescriptor({type:TextInput, id:"playerName", propertiesFactory:function () : Object
                    {
                        return {maxChars:12, width:120, x:120, y:50};
                    }// end function
                    }), new UIComponentDescriptor({type:Text, id:"_ReplyMailWindow_Text4", propertiesFactory:function () : Object
                    {
                        return {styleName:"mailText", x:30, y:80};
                    }// end function
                    }), new UIComponentDescriptor({type:TextInput, id:"subject", propertiesFactory:function () : Object
                    {
                        return {maxChars:12, width:310, x:80, y:80};
                    }// end function
                    }), new UIComponentDescriptor({type:Text, id:"_ReplyMailWindow_Text5", propertiesFactory:function () : Object
                    {
                        return {styleName:"mailText", x:30, y:110};
                    }// end function
                    }), new UIComponentDescriptor({type:TextArea, id:"mailText", propertiesFactory:function () : Object
                    {
                        return {width:360, height:250, x:30, y:140, text:""};
                    }// end function
                    }), new UIComponentDescriptor({type:Image, id:"_ReplyMailWindow_Image2", events:{click:"___ReplyMailWindow_Image2_click"}, propertiesFactory:function () : Object
                    {
                        return {x:100, y:400};
                    }// end function
                    }), new UIComponentDescriptor({type:Image, id:"_ReplyMailWindow_Image3", events:{click:"___ReplyMailWindow_Image3_click"}, propertiesFactory:function () : Object
                    {
                        return {x:220, y:400};
                    }// end function
                    })]};
                }// end function
                })]};
            }// end function
            });
            _1075873300_swf_window = new Viking.EmbedSwfWindowCommon();
            _99566460_swf_send = new Viking.EmbedSwfButtonCommon();
            _1193840764_swf_close = new Viking.EmbedSwfButtonCommon();
            _bindings = [];
            _watchers = [];
            _bindingsByDestination = {};
            _bindingsBeginWithWord = {};
            mx_internal::_document = this;
            this.addEventListener("creationComplete", ___ReplyMailWindow_PopupWindow1_creationComplete);
            return;
        }// end function

        public function onSend() : void
        {
            var _loc_1:Object = {player_name:playerName.text, subject:subject.text, body:mailText.text};
            dispatchEvent(new PopupEvent(REPLY_MAIL_SEND, _loc_1));
            return;
        }// end function

        public function get mailText() : TextArea
        {
            return this._10286204mailText;
        }// end function

        public function closeWindow() : void
        {
            init();
            onClose();
            return;
        }// end function

        public function get playerName() : TextInput
        {
            return this._2095657228playerName;
        }// end function

        private function _ReplyMailWindow_bindingExprs() : void
        {
            var _loc_1:* = undefined;
            _loc_1 = _swf_window;
            _loc_1 = Utils.i18n("replyMailCreateMail");
            _loc_1 = Utils.i18n("mailTransmitDestination");
            _loc_1 = Utils.i18n("generalName");
            _loc_1 = Utils.i18n("mailDetailSubject");
            _loc_1 = Utils.i18n("mailTransmitBody");
            _loc_1 = _swf_send;
            _loc_1 = _swf_close;
            return;
        }// end function

        override public function initialize() : void
        {
            var target:ReplyMailWindow;
            var watcherSetupUtilClass:Object;
            .mx_internal::setDocumentDescriptor(_documentDescriptor_);
            var bindings:* = _ReplyMailWindow_bindingsSetup();
            var watchers:Array;
            target;
            if (_watcherSetupUtil == null)
            {
                watcherSetupUtilClass = getDefinitionByName("_com_kbmj_viking_view_home_ReplyMailWindowWatcherSetupUtil");
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

        private function get _swf_send() : MovieClipLoaderAsset
        {
            return this._99566460_swf_send;
        }// end function

        public function set mailText(param1:TextArea) : void
        {
            var _loc_2:* = this._10286204mailText;
            if (_loc_2 !== param1)
            {
                this._10286204mailText = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "mailText", _loc_2, param1));
            }
            return;
        }// end function

        public function set playerName(param1:TextInput) : void
        {
            var _loc_2:* = this._2095657228playerName;
            if (_loc_2 !== param1)
            {
                this._2095657228playerName = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "playerName", _loc_2, param1));
            }
            return;
        }// end function

        private function init() : void
        {
            MovieClip(Loader(_swf_window.getChildAt(0)).content).gotoAndPlay("right_400x460");
            MovieClip(Loader(_swf_send.getChildAt(0)).content).gotoAndPlay("button_send");
            MovieClip(Loader(_swf_close.getChildAt(0)).content).gotoAndPlay("button_close");
            return;
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

        public function ___ReplyMailWindow_Image2_click(event:MouseEvent) : void
        {
            onSend();
            return;
        }// end function

        public function setLetter(param1:Object) : void
        {
            var _loc_5:Object = null;
            var _loc_2:Boolean = true;
            var _loc_3:int = 0;
            playerName.text = param1.senderName;
            subject.text = "Re:" + param1.subject;
            mailText.htmlText = "";
            var _loc_4:* = param1.body.split("<br />");
            for each (_loc_5 in _loc_4)
            {
                
                mailText.htmlText = mailText.htmlText + ("&gt; " + _loc_5 + "\n");
            }
            return;
        }// end function

        public function ___ReplyMailWindow_PopupWindow1_creationComplete(event:FlexEvent) : void
        {
            init();
            return;
        }// end function

        private function _ReplyMailWindow_bindingsSetup() : Array
        {
            var binding:Binding;
            var result:Array;
            binding = new Binding(this, function () : Object
            {
                return _swf_window;
            }// end function
            , function (param1:Object) : void
            {
                _ReplyMailWindow_Image1.source = param1;
                return;
            }// end function
            , "_ReplyMailWindow_Image1.source");
            result[0] = binding;
            binding = new Binding(this, function () : String
            {
                var _loc_1:* = Utils.i18n("replyMailCreateMail");
                var _loc_2:* = _loc_1 == undefined ? (null) : (String(_loc_1));
                return _loc_2;
            }// end function
            , function (param1:String) : void
            {
                _ReplyMailWindow_Text1.text = param1;
                return;
            }// end function
            , "_ReplyMailWindow_Text1.text");
            result[1] = binding;
            binding = new Binding(this, function () : String
            {
                var _loc_1:* = Utils.i18n("mailTransmitDestination");
                var _loc_2:* = _loc_1 == undefined ? (null) : (String(_loc_1));
                return _loc_2;
            }// end function
            , function (param1:String) : void
            {
                _ReplyMailWindow_Text2.text = param1;
                return;
            }// end function
            , "_ReplyMailWindow_Text2.text");
            result[2] = binding;
            binding = new Binding(this, function () : String
            {
                var _loc_1:* = Utils.i18n("generalName");
                var _loc_2:* = _loc_1 == undefined ? (null) : (String(_loc_1));
                return _loc_2;
            }// end function
            , function (param1:String) : void
            {
                _ReplyMailWindow_Text3.text = param1;
                return;
            }// end function
            , "_ReplyMailWindow_Text3.text");
            result[3] = binding;
            binding = new Binding(this, function () : String
            {
                var _loc_1:* = Utils.i18n("mailDetailSubject");
                var _loc_2:* = _loc_1 == undefined ? (null) : (String(_loc_1));
                return _loc_2;
            }// end function
            , function (param1:String) : void
            {
                _ReplyMailWindow_Text4.text = param1;
                return;
            }// end function
            , "_ReplyMailWindow_Text4.text");
            result[4] = binding;
            binding = new Binding(this, function () : String
            {
                var _loc_1:* = Utils.i18n("mailTransmitBody");
                var _loc_2:* = _loc_1 == undefined ? (null) : (String(_loc_1));
                return _loc_2;
            }// end function
            , function (param1:String) : void
            {
                _ReplyMailWindow_Text5.text = param1;
                return;
            }// end function
            , "_ReplyMailWindow_Text5.text");
            result[5] = binding;
            binding = new Binding(this, function () : Object
            {
                return _swf_send;
            }// end function
            , function (param1:Object) : void
            {
                _ReplyMailWindow_Image2.source = param1;
                return;
            }// end function
            , "_ReplyMailWindow_Image2.source");
            result[6] = binding;
            binding = new Binding(this, function () : Object
            {
                return _swf_close;
            }// end function
            , function (param1:Object) : void
            {
                _ReplyMailWindow_Image3.source = param1;
                return;
            }// end function
            , "_ReplyMailWindow_Image3.source");
            result[7] = binding;
            return result;
        }// end function

        public function get subject() : TextInput
        {
            return this._1867885268subject;
        }// end function

        public function set subject(param1:TextInput) : void
        {
            var _loc_2:* = this._1867885268subject;
            if (_loc_2 !== param1)
            {
                this._1867885268subject = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "subject", _loc_2, param1));
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

        public function ___ReplyMailWindow_Image3_click(event:MouseEvent) : void
        {
            closeWindow();
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

        private function get _swf_window() : MovieClipLoaderAsset
        {
            return this._1075873300_swf_window;
        }// end function

        private function get _swf_close() : MovieClipLoaderAsset
        {
            return this._1193840764_swf_close;
        }// end function

        public static function set watcherSetupUtil(param1:IWatcherSetupUtil) : void
        {
            _watcherSetupUtil = param1;
            return;
        }// end function

    }
}
