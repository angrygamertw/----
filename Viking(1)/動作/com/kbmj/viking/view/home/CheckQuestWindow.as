package com.kbmj.viking.view.home
{
    import com.kbmj.viking.lib.*;
    import flash.display.*;
    import flash.events.*;
    import flash.utils.*;
    import mx.binding.*;
    import mx.containers.*;
    import mx.controls.*;
    import mx.core.*;
    import mx.events.*;

    public class CheckQuestWindow extends Canvas implements IBindingClient
    {
        private var _743506484orderQuest:Canvas;
        private var _107944162quest:Object;
        public var _CheckQuestWindow_Image2:Image;
        public var _CheckQuestWindow_Text1:Text;
        public var _CheckQuestWindow_Label3:Label;
        public var _CheckQuestWindow_Label4:Label;
        public var _CheckQuestWindow_Text3:Text;
        public var _CheckQuestWindow_Label6:Label;
        public var _CheckQuestWindow_Label7:Label;
        public var _CheckQuestWindow_Label8:Label;
        var _watchers:Array;
        public var _CheckQuestWindow_Label5:Label;
        private var _1896677185windowLayer:Canvas;
        private var _1545701470killsText:Text;
        private var _1655845770_swf_cancel:MovieClipLoaderAsset;
        private var _embed_mxml__swf_common_button_close_window_swf_1370265653:Class;
        var _bindingsByDestination:Object;
        private var _1234288805orderNot:Canvas;
        var _bindingsBeginWithWord:Object;
        private var _136525606questCanvas:Canvas;
        var _bindings:Array;
        private var _documentDescriptor_:UIComponentDescriptor;
        private static var _watcherSetupUtil:IWatcherSetupUtil;
        public static const CLOSE_CHECK_QUEST_WINDOW:String = "closeCheckQuestWindow";

        public function CheckQuestWindow()
        {
            _documentDescriptor_ = new UIComponentDescriptor({type:Canvas, propertiesFactory:function () : Object
            {
                return {childDescriptors:[new UIComponentDescriptor({type:Canvas, id:"windowLayer"}), new UIComponentDescriptor({type:Canvas, id:"questCanvas", propertiesFactory:function () : Object
                {
                    return {childDescriptors:[new UIComponentDescriptor({type:Canvas, id:"orderQuest", propertiesFactory:function () : Object
                    {
                        return {childDescriptors:[new UIComponentDescriptor({type:Text, id:"_CheckQuestWindow_Text1", stylesFactory:function () : void
                        {
                            this.fontSize = 14;
                            this.color = 15658734;
                            return;
                        }// end function
                        , propertiesFactory:function () : Object
                        {
                            return {x:350, y:150};
                        }// end function
                        }), new UIComponentDescriptor({type:Text, id:"killsText", stylesFactory:function () : void
                        {
                            this.fontSize = 14;
                            return;
                        }// end function
                        , propertiesFactory:function () : Object
                        {
                            return {x:230, y:330};
                        }// end function
                        }), new UIComponentDescriptor({type:Grid, stylesFactory:function () : void
                        {
                            this.horizontalGap = 30;
                            this.verticalGap = 0;
                            return;
                        }// end function
                        , propertiesFactory:function () : Object
                        {
                            return {width:300, x:230, y:210, childDescriptors:[new UIComponentDescriptor({type:GridRow, propertiesFactory:function () : Object
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
                                    return {childDescriptors:[new UIComponentDescriptor({type:Label, stylesFactory:function () : void
                                    {
                                        this.fontSize = 14;
                                        this.textAlign = "center";
                                        this.color = 15658734;
                                        return;
                                    }// end function
                                    , propertiesFactory:function () : Object
                                    {
                                        return {text:"Utils.i18n(\'generalQuest\')", width:70};
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
                                    return {childDescriptors:[new UIComponentDescriptor({type:Label, stylesFactory:function () : void
                                    {
                                        this.fontSize = 14;
                                        this.textAlign = "center";
                                        this.color = 15658734;
                                        return;
                                    }// end function
                                    , propertiesFactory:function () : Object
                                    {
                                        return {text:"Utils.i18n(\'checkQuestClient\')", width:70};
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
                                    return {childDescriptors:[new UIComponentDescriptor({type:Label, id:"_CheckQuestWindow_Label3", stylesFactory:function () : void
                                    {
                                        this.fontSize = 14;
                                        this.textAlign = "center";
                                        this.color = 15658734;
                                        return;
                                    }// end function
                                    , propertiesFactory:function () : Object
                                    {
                                        return {width:70};
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
                                    return {childDescriptors:[new UIComponentDescriptor({type:Label, id:"_CheckQuestWindow_Label4", stylesFactory:function () : void
                                    {
                                        this.fontSize = 14;
                                        this.textAlign = "center";
                                        this.color = 15658734;
                                        return;
                                    }// end function
                                    , propertiesFactory:function () : Object
                                    {
                                        return {width:70};
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
                            return {width:300, x:300, y:210, childDescriptors:[new UIComponentDescriptor({type:GridRow, propertiesFactory:function () : Object
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
                                    return {childDescriptors:[new UIComponentDescriptor({type:Label, id:"_CheckQuestWindow_Label5", stylesFactory:function () : void
                                    {
                                        this.fontSize = 14;
                                        this.textAlign = "center";
                                        return;
                                    }// end function
                                    , propertiesFactory:function () : Object
                                    {
                                        return {width:220};
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
                                    return {childDescriptors:[new UIComponentDescriptor({type:Label, id:"_CheckQuestWindow_Label6", stylesFactory:function () : void
                                    {
                                        this.fontSize = 14;
                                        this.textAlign = "center";
                                        return;
                                    }// end function
                                    , propertiesFactory:function () : Object
                                    {
                                        return {width:220};
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
                                    return {childDescriptors:[new UIComponentDescriptor({type:Label, id:"_CheckQuestWindow_Label7", stylesFactory:function () : void
                                    {
                                        this.fontSize = 14;
                                        this.textAlign = "center";
                                        return;
                                    }// end function
                                    , propertiesFactory:function () : Object
                                    {
                                        return {width:220};
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
                                    return {childDescriptors:[new UIComponentDescriptor({type:Label, id:"_CheckQuestWindow_Label8", stylesFactory:function () : void
                                    {
                                        this.fontSize = 14;
                                        this.textAlign = "center";
                                        return;
                                    }// end function
                                    , propertiesFactory:function () : Object
                                    {
                                        return {width:220};
                                    }// end function
                                    })]};
                                }// end function
                                })]};
                            }// end function
                            })]};
                        }// end function
                        })]};
                    }// end function
                    }), new UIComponentDescriptor({type:Canvas, id:"orderNot", propertiesFactory:function () : Object
                    {
                        return {childDescriptors:[new UIComponentDescriptor({type:Text, id:"_CheckQuestWindow_Text3", stylesFactory:function () : void
                        {
                            this.fontSize = 14;
                            return;
                        }// end function
                        , propertiesFactory:function () : Object
                        {
                            return {x:270, y:230};
                        }// end function
                        })]};
                    }// end function
                    }), new UIComponentDescriptor({type:Image, events:{click:"___CheckQuestWindow_Image1_click"}, propertiesFactory:function () : Object
                    {
                        return {source:_embed_mxml__swf_common_button_close_window_swf_1370265653, x:553, y:145};
                    }// end function
                    }), new UIComponentDescriptor({type:Image, id:"_CheckQuestWindow_Image2", propertiesFactory:function () : Object
                    {
                        return {x:325, y:365};
                    }// end function
                    })]};
                }// end function
                })]};
            }// end function
            });
            _1655845770_swf_cancel = new Viking.EmbedSwfButtonCommon();
            _embed_mxml__swf_common_button_close_window_swf_1370265653 = CheckQuestWindow__embed_mxml__swf_common_button_close_window_swf_1370265653;
            _bindings = [];
            _watchers = [];
            _bindingsByDestination = {};
            _bindingsBeginWithWord = {};
            mx_internal::_document = this;
            this.addEventListener("creationComplete", ___CheckQuestWindow_Canvas1_creationComplete);
            return;
        }// end function

        public function set windowLayer(param1:Canvas) : void
        {
            var _loc_2:* = this._1896677185windowLayer;
            if (_loc_2 !== param1)
            {
                this._1896677185windowLayer = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "windowLayer", _loc_2, param1));
            }
            return;
        }// end function

        private function get _swf_cancel() : MovieClipLoaderAsset
        {
            return this._1655845770_swf_cancel;
        }// end function

        private function init() : void
        {
            Loader(_swf_cancel.getChildAt(0)).content.addEventListener("BUTTON_CLOSE", function (event:Event) : void
            {
                onClose();
                return;
            }// end function
            );
            MovieClip(Loader(_swf_cancel.getChildAt(0)).content).gotoAndPlay("button_close");
            return;
        }// end function

        public function ___CheckQuestWindow_Canvas1_creationComplete(event:FlexEvent) : void
        {
            init();
            return;
        }// end function

        override public function initialize() : void
        {
            var target:CheckQuestWindow;
            var watcherSetupUtilClass:Object;
            .mx_internal::setDocumentDescriptor(_documentDescriptor_);
            var bindings:* = _CheckQuestWindow_bindingsSetup();
            var watchers:Array;
            target;
            if (_watcherSetupUtil == null)
            {
                watcherSetupUtilClass = getDefinitionByName("_com_kbmj_viking_view_home_CheckQuestWindowWatcherSetupUtil");
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

        public function get orderNot() : Canvas
        {
            return this._1234288805orderNot;
        }// end function

        public function setQuest(param1:Object) : void
        {
            quest = new Object();
            quest = param1;
            return;
        }// end function

        private function _CheckQuestWindow_bindingsSetup() : Array
        {
            var binding:Binding;
            var result:Array;
            binding = new Binding(this, function () : String
            {
                var _loc_1:* = Utils.i18n("generalQuest");
                var _loc_2:* = _loc_1 == undefined ? (null) : (String(_loc_1));
                return _loc_2;
            }// end function
            , function (param1:String) : void
            {
                _CheckQuestWindow_Text1.text = param1;
                return;
            }// end function
            , "_CheckQuestWindow_Text1.text");
            result[0] = binding;
            binding = new Binding(this, function () : String
            {
                var _loc_1:* = Utils.i18n("checkQuestKillsCount", quest.kills);
                var _loc_2:* = _loc_1 == undefined ? (null) : (String(_loc_1));
                return _loc_2;
            }// end function
            , function (param1:String) : void
            {
                killsText.text = param1;
                return;
            }// end function
            , "killsText.text");
            result[1] = binding;
            binding = new Binding(this, function () : String
            {
                var _loc_1:* = Utils.i18n("checkQuestConditions");
                var _loc_2:* = _loc_1 == undefined ? (null) : (String(_loc_1));
                return _loc_2;
            }// end function
            , function (param1:String) : void
            {
                _CheckQuestWindow_Label3.text = param1;
                return;
            }// end function
            , "_CheckQuestWindow_Label3.text");
            result[2] = binding;
            binding = new Binding(this, function () : String
            {
                var _loc_1:* = Utils.i18n("checkQuestCompensation");
                var _loc_2:* = _loc_1 == undefined ? (null) : (String(_loc_1));
                return _loc_2;
            }// end function
            , function (param1:String) : void
            {
                _CheckQuestWindow_Label4.text = param1;
                return;
            }// end function
            , "_CheckQuestWindow_Label4.text");
            result[3] = binding;
            binding = new Binding(this, function () : String
            {
                var _loc_1:* = quest.name;
                var _loc_2:* = _loc_1 == undefined ? (null) : (String(_loc_1));
                return _loc_2;
            }// end function
            , function (param1:String) : void
            {
                _CheckQuestWindow_Label5.text = param1;
                return;
            }// end function
            , "_CheckQuestWindow_Label5.text");
            result[4] = binding;
            binding = new Binding(this, function () : String
            {
                var _loc_1:* = quest.client_name;
                var _loc_2:* = _loc_1 == undefined ? (null) : (String(_loc_1));
                return _loc_2;
            }// end function
            , function (param1:String) : void
            {
                _CheckQuestWindow_Label6.text = param1;
                return;
            }// end function
            , "_CheckQuestWindow_Label6.text");
            result[5] = binding;
            binding = new Binding(this, function () : String
            {
                var _loc_1:* = quest.condition;
                var _loc_2:* = _loc_1 == undefined ? (null) : (String(_loc_1));
                return _loc_2;
            }// end function
            , function (param1:String) : void
            {
                _CheckQuestWindow_Label7.text = param1;
                return;
            }// end function
            , "_CheckQuestWindow_Label7.text");
            result[6] = binding;
            binding = new Binding(this, function () : String
            {
                var _loc_1:* = quest.reward;
                var _loc_2:* = _loc_1 == undefined ? (null) : (String(_loc_1));
                return _loc_2;
            }// end function
            , function (param1:String) : void
            {
                _CheckQuestWindow_Label8.text = param1;
                return;
            }// end function
            , "_CheckQuestWindow_Label8.text");
            result[7] = binding;
            binding = new Binding(this, function () : String
            {
                var _loc_1:* = Utils.i18n("checkQuestNothing");
                var _loc_2:* = _loc_1 == undefined ? (null) : (String(_loc_1));
                return _loc_2;
            }// end function
            , function (param1:String) : void
            {
                _CheckQuestWindow_Text3.text = param1;
                return;
            }// end function
            , "_CheckQuestWindow_Text3.text");
            result[8] = binding;
            binding = new Binding(this, function () : Object
            {
                return _swf_cancel;
            }// end function
            , function (param1:Object) : void
            {
                _CheckQuestWindow_Image2.source = param1;
                return;
            }// end function
            , "_CheckQuestWindow_Image2.source");
            result[9] = binding;
            return result;
        }// end function

        public function get windowLayer() : Canvas
        {
            return this._1896677185windowLayer;
        }// end function

        public function get orderQuest() : Canvas
        {
            return this._743506484orderQuest;
        }// end function

        public function get killsText() : Text
        {
            return this._1545701470killsText;
        }// end function

        public function set killsText(param1:Text) : void
        {
            var _loc_2:* = this._1545701470killsText;
            if (_loc_2 !== param1)
            {
                this._1545701470killsText = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "killsText", _loc_2, param1));
            }
            return;
        }// end function

        private function _CheckQuestWindow_bindingExprs() : void
        {
            var _loc_1:* = undefined;
            _loc_1 = Utils.i18n("generalQuest");
            _loc_1 = Utils.i18n("checkQuestKillsCount", quest.kills);
            _loc_1 = Utils.i18n("checkQuestConditions");
            _loc_1 = Utils.i18n("checkQuestCompensation");
            _loc_1 = quest.name;
            _loc_1 = quest.client_name;
            _loc_1 = quest.condition;
            _loc_1 = quest.reward;
            _loc_1 = Utils.i18n("checkQuestNothing");
            _loc_1 = _swf_cancel;
            return;
        }// end function

        public function set questCanvas(param1:Canvas) : void
        {
            var _loc_2:* = this._136525606questCanvas;
            if (_loc_2 !== param1)
            {
                this._136525606questCanvas = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "questCanvas", _loc_2, param1));
            }
            return;
        }// end function

        private function onClose() : void
        {
            dispatchEvent(new PopupEvent(CLOSE_CHECK_QUEST_WINDOW, {window:this}));
            return;
        }// end function

        private function set quest(param1:Object) : void
        {
            var _loc_2:* = this._107944162quest;
            if (_loc_2 !== param1)
            {
                this._107944162quest = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "quest", _loc_2, param1));
            }
            return;
        }// end function

        public function set orderNot(param1:Canvas) : void
        {
            var _loc_2:* = this._1234288805orderNot;
            if (_loc_2 !== param1)
            {
                this._1234288805orderNot = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "orderNot", _loc_2, param1));
            }
            return;
        }// end function

        public function set orderQuest(param1:Canvas) : void
        {
            var _loc_2:* = this._743506484orderQuest;
            if (_loc_2 !== param1)
            {
                this._743506484orderQuest = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "orderQuest", _loc_2, param1));
            }
            return;
        }// end function

        public function get questCanvas() : Canvas
        {
            return this._136525606questCanvas;
        }// end function

        private function get quest() : Object
        {
            return this._107944162quest;
        }// end function

        private function set _swf_cancel(param1:MovieClipLoaderAsset) : void
        {
            var _loc_2:* = this._1655845770_swf_cancel;
            if (_loc_2 !== param1)
            {
                this._1655845770_swf_cancel = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "_swf_cancel", _loc_2, param1));
            }
            return;
        }// end function

        public function ___CheckQuestWindow_Image1_click(event:MouseEvent) : void
        {
            onClose();
            return;
        }// end function

        public static function set watcherSetupUtil(param1:IWatcherSetupUtil) : void
        {
            _watcherSetupUtil = param1;
            return;
        }// end function

    }
}
