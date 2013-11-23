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

    public class ContinuationResumeWindow extends PopupWindow implements IBindingClient
    {
        private var _1411480366resumePoint1:Image;
        private var _1952484251_swf_resume_1:MovieClipLoaderAsset;
        private var _1411480368resumePoint3:Image;
        private var _985849673descriptionText:String;
        private var _480638431_maxLevel:int = 0;
        private var _313957967titleTextLabel:Label;
        private var _1411480373resumePoint8:Image;
        private var _1411480371resumePoint6:Image;
        private var _1952484256_swf_resume_6:MovieClipLoaderAsset;
        public var _ContinuationResumeWindow_Image1:Image;
        var _bindingsByDestination:Object;
        private var _719039080_resumeLevel:int = 0;
        private var _1193840764_swf_close:MovieClipLoaderAsset;
        private var _1818888257_swf_bg:MovieClipLoaderAsset;
        private var _1952484253_swf_resume_3:MovieClipLoaderAsset;
        private var _1952484258_swf_resume_8:MovieClipLoaderAsset;
        private var _1952484250_swf_resume_0:MovieClipLoaderAsset;
        private var _979902513closeButtonImage:Image;
        private var _652551318_currentLevel:int = 0;
        private var _1411480367resumePoint2:Image;
        private var _1411480369resumePoint4:Image;
        var _watchers:Array;
        private var _1952484255_swf_resume_5:MovieClipLoaderAsset;
        private var _1411480370resumePoint5:Image;
        private var _1411480372resumePoint7:Image;
        private var _1952484252_swf_resume_2:MovieClipLoaderAsset;
        public var _ContinuationResumeWindow_Label2:Label;
        public var _ContinuationResumeWindow_Label3:Label;
        public var _ContinuationResumeWindow_Label4:Label;
        public var _ContinuationResumeWindow_Label5:Label;
        public var _ContinuationResumeWindow_Label6:Label;
        public var _ContinuationResumeWindow_Label7:Label;
        public var _ContinuationResumeWindow_Label8:Label;
        public var _ContinuationResumeWindow_Label9:Label;
        var _bindingsBeginWithWord:Object;
        private var _1952484257_swf_resume_7:MovieClipLoaderAsset;
        var _bindings:Array;
        private var confirmResumeContinuationWindow:ConfirmResumeContinuationWindow;
        private var _documentDescriptor_:UIComponentDescriptor;
        private var _1952484254_swf_resume_4:MovieClipLoaderAsset;
        private var resumeLevels:Array;
        public static const NAME:String = "ExpeditionResumeWindow";
        public static var EmbedSwfLantern:Class = ContinuationResumeWindow_EmbedSwfLantern;
        public static const SELECT_RESUME_LEVEL:String = NAME + "/selectResumeLevel";
        private static var _watcherSetupUtil:IWatcherSetupUtil;
        public static var EmbedSwfExpeditionDetail:Class = ContinuationResumeWindow_EmbedSwfExpeditionDetail;

        public function ContinuationResumeWindow()
        {
            _documentDescriptor_ = new UIComponentDescriptor({type:PopupWindow, propertiesFactory:function () : Object
            {
                return {childDescriptors:[new UIComponentDescriptor({type:Image, id:"_ContinuationResumeWindow_Image1"}), new UIComponentDescriptor({type:Label, id:"titleTextLabel", stylesFactory:function () : void
                {
                    this.color = 16777215;
                    this.textAlign = "center";
                    return;
                }// end function
                , propertiesFactory:function () : Object
                {
                    return {x:210, y:103, width:340, styleName:"PanelBaseTitle"};
                }// end function
                }), new UIComponentDescriptor({type:Canvas, propertiesFactory:function () : Object
                {
                    return {x:240, y:140, childDescriptors:[new UIComponentDescriptor({type:Image, id:"resumePoint1", events:{click:"__resumePoint1_click"}}), new UIComponentDescriptor({type:Label, id:"_ContinuationResumeWindow_Label2", stylesFactory:function () : void
                    {
                        this.fontSize = 14;
                        this.color = 16777215;
                        return;
                    }// end function
                    , propertiesFactory:function () : Object
                    {
                        return {x:60, y:15};
                    }// end function
                    })]};
                }// end function
                }), new UIComponentDescriptor({type:Canvas, propertiesFactory:function () : Object
                {
                    return {x:420, y:140, childDescriptors:[new UIComponentDescriptor({type:Image, id:"resumePoint2", events:{click:"__resumePoint2_click"}}), new UIComponentDescriptor({type:Label, id:"_ContinuationResumeWindow_Label3", stylesFactory:function () : void
                    {
                        this.fontSize = 14;
                        this.color = 16777215;
                        return;
                    }// end function
                    , propertiesFactory:function () : Object
                    {
                        return {x:60, y:15};
                    }// end function
                    })]};
                }// end function
                }), new UIComponentDescriptor({type:Canvas, propertiesFactory:function () : Object
                {
                    return {x:240, y:200, childDescriptors:[new UIComponentDescriptor({type:Image, id:"resumePoint3", events:{click:"__resumePoint3_click"}}), new UIComponentDescriptor({type:Label, id:"_ContinuationResumeWindow_Label4", stylesFactory:function () : void
                    {
                        this.fontSize = 14;
                        this.color = 16777215;
                        return;
                    }// end function
                    , propertiesFactory:function () : Object
                    {
                        return {x:60, y:15};
                    }// end function
                    })]};
                }// end function
                }), new UIComponentDescriptor({type:Canvas, propertiesFactory:function () : Object
                {
                    return {x:420, y:200, childDescriptors:[new UIComponentDescriptor({type:Image, id:"resumePoint4", events:{click:"__resumePoint4_click"}}), new UIComponentDescriptor({type:Label, id:"_ContinuationResumeWindow_Label5", stylesFactory:function () : void
                    {
                        this.fontSize = 14;
                        this.color = 16777215;
                        return;
                    }// end function
                    , propertiesFactory:function () : Object
                    {
                        return {x:60, y:15};
                    }// end function
                    })]};
                }// end function
                }), new UIComponentDescriptor({type:Canvas, propertiesFactory:function () : Object
                {
                    return {x:240, y:260, childDescriptors:[new UIComponentDescriptor({type:Image, id:"resumePoint5", events:{click:"__resumePoint5_click"}}), new UIComponentDescriptor({type:Label, id:"_ContinuationResumeWindow_Label6", stylesFactory:function () : void
                    {
                        this.fontSize = 14;
                        this.color = 16777215;
                        return;
                    }// end function
                    , propertiesFactory:function () : Object
                    {
                        return {x:60, y:15};
                    }// end function
                    })]};
                }// end function
                }), new UIComponentDescriptor({type:Canvas, propertiesFactory:function () : Object
                {
                    return {x:420, y:260, childDescriptors:[new UIComponentDescriptor({type:Image, id:"resumePoint6", events:{click:"__resumePoint6_click"}}), new UIComponentDescriptor({type:Label, id:"_ContinuationResumeWindow_Label7", stylesFactory:function () : void
                    {
                        this.fontSize = 14;
                        this.color = 16777215;
                        return;
                    }// end function
                    , propertiesFactory:function () : Object
                    {
                        return {x:60, y:15};
                    }// end function
                    })]};
                }// end function
                }), new UIComponentDescriptor({type:Canvas, propertiesFactory:function () : Object
                {
                    return {x:240, y:320, childDescriptors:[new UIComponentDescriptor({type:Image, id:"resumePoint7", events:{click:"__resumePoint7_click"}}), new UIComponentDescriptor({type:Label, id:"_ContinuationResumeWindow_Label8", stylesFactory:function () : void
                    {
                        this.fontSize = 14;
                        this.color = 16777215;
                        return;
                    }// end function
                    , propertiesFactory:function () : Object
                    {
                        return {x:60, y:15};
                    }// end function
                    })]};
                }// end function
                }), new UIComponentDescriptor({type:Canvas, propertiesFactory:function () : Object
                {
                    return {x:420, y:320, childDescriptors:[new UIComponentDescriptor({type:Image, id:"resumePoint8", events:{click:"__resumePoint8_click"}}), new UIComponentDescriptor({type:Label, id:"_ContinuationResumeWindow_Label9", stylesFactory:function () : void
                    {
                        this.fontSize = 14;
                        this.color = 16777215;
                        return;
                    }// end function
                    , propertiesFactory:function () : Object
                    {
                        return {x:60, y:15};
                    }// end function
                    })]};
                }// end function
                }), new UIComponentDescriptor({type:Image, id:"closeButtonImage", events:{click:"__closeButtonImage_click"}, propertiesFactory:function () : Object
                {
                    return {x:325, y:450};
                }// end function
                })]};
            }// end function
            });
            _1818888257_swf_bg = new EmbedSwfExpeditionDetail();
            _1193840764_swf_close = new Viking.EmbedSwfButtonCommon();
            _1952484250_swf_resume_0 = new EmbedSwfLantern();
            _1952484251_swf_resume_1 = new EmbedSwfLantern();
            _1952484252_swf_resume_2 = new EmbedSwfLantern();
            _1952484253_swf_resume_3 = new EmbedSwfLantern();
            _1952484254_swf_resume_4 = new EmbedSwfLantern();
            _1952484255_swf_resume_5 = new EmbedSwfLantern();
            _1952484256_swf_resume_6 = new EmbedSwfLantern();
            _1952484257_swf_resume_7 = new EmbedSwfLantern();
            _1952484258_swf_resume_8 = new EmbedSwfLantern();
            confirmResumeContinuationWindow = new ConfirmResumeContinuationWindow();
            _985849673descriptionText = new String();
            resumeLevels = [10, 20, 30, 40, 50, 60, 70, 80.9];
            _bindings = [];
            _watchers = [];
            _bindingsByDestination = {};
            _bindingsBeginWithWord = {};
            mx_internal::_document = this;
            this.addEventListener("creationComplete", ___ContinuationResumeWindow_PopupWindow1_creationComplete);
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

        private function comp() : void
        {
            closeButtonImage.visible = false;
            MovieClip(Loader(_swf_close.getChildAt(0)).content).gotoAndPlay("button_close");
            return;
        }// end function

        public function init(param1:int, param2:int) : void
        {
            MovieClip(Loader(_swf_bg.getChildAt(0)).content).gotoAndPlay("w_start");
            _maxLevel = param1;
            _currentLevel = param2;
            var _loc_3:String = "";
            var _loc_4:int = 0;
            while (_loc_4 < 9)
            {
                
                _loc_3 = "_swf_resume_" + _loc_4;
                MovieClip(Loader(this[_loc_3].getChildAt(0)).content).gotoAndPlay("on");
                if (!canResume(getresumeLevel(_loc_4)))
                {
                    MovieClip(Loader(this[_loc_3].getChildAt(0)).content).gotoAndPlay("off");
                }
                _loc_4++;
            }
            Loader(_swf_bg.getChildAt(0)).content.addEventListener("ENLARGE_END", visibleText);
            return;
        }// end function

        public function __resumePoint1_click(event:MouseEvent) : void
        {
            resumeLevel(0);
            return;
        }// end function

        private function _ContinuationResumeWindow_bindingsSetup() : Array
        {
            var binding:Binding;
            var result:Array;
            binding = new Binding(this, function () : Object
            {
                return _swf_bg;
            }// end function
            , function (param1:Object) : void
            {
                _ContinuationResumeWindow_Image1.source = param1;
                return;
            }// end function
            , "_ContinuationResumeWindow_Image1.source");
            result[0] = binding;
            binding = new Binding(this, function () : String
            {
                var _loc_1:* = Utils.i18n("continuationSelect");
                var _loc_2:* = _loc_1 == undefined ? (null) : (String(_loc_1));
                return _loc_2;
            }// end function
            , function (param1:String) : void
            {
                titleTextLabel.text = param1;
                return;
            }// end function
            , "titleTextLabel.text");
            result[1] = binding;
            binding = new Binding(this, function () : Object
            {
                return _swf_resume_0;
            }// end function
            , function (param1:Object) : void
            {
                resumePoint1.source = param1;
                return;
            }// end function
            , "resumePoint1.source");
            result[2] = binding;
            binding = new Binding(this, function () : String
            {
                var _loc_1:* = (getresumeLevel(0) + 1) + "" + Utils.i18n("continuationBattleSelected");
                var _loc_2:* = _loc_1 == undefined ? (null) : (String(_loc_1));
                return _loc_2;
            }// end function
            , function (param1:String) : void
            {
                _ContinuationResumeWindow_Label2.text = param1;
                return;
            }// end function
            , "_ContinuationResumeWindow_Label2.text");
            result[3] = binding;
            binding = new Binding(this, function () : Object
            {
                return _swf_resume_1;
            }// end function
            , function (param1:Object) : void
            {
                resumePoint2.source = param1;
                return;
            }// end function
            , "resumePoint2.source");
            result[4] = binding;
            binding = new Binding(this, function () : String
            {
                var _loc_1:* = (getresumeLevel(1) + 1) + "" + Utils.i18n("continuationBattleSelected");
                var _loc_2:* = _loc_1 == undefined ? (null) : (String(_loc_1));
                return _loc_2;
            }// end function
            , function (param1:String) : void
            {
                _ContinuationResumeWindow_Label3.text = param1;
                return;
            }// end function
            , "_ContinuationResumeWindow_Label3.text");
            result[5] = binding;
            binding = new Binding(this, function () : Object
            {
                return _swf_resume_2;
            }// end function
            , function (param1:Object) : void
            {
                resumePoint3.source = param1;
                return;
            }// end function
            , "resumePoint3.source");
            result[6] = binding;
            binding = new Binding(this, function () : String
            {
                var _loc_1:* = (getresumeLevel(2) + 1) + "" + Utils.i18n("continuationBattleSelected");
                var _loc_2:* = _loc_1 == undefined ? (null) : (String(_loc_1));
                return _loc_2;
            }// end function
            , function (param1:String) : void
            {
                _ContinuationResumeWindow_Label4.text = param1;
                return;
            }// end function
            , "_ContinuationResumeWindow_Label4.text");
            result[7] = binding;
            binding = new Binding(this, function () : Object
            {
                return _swf_resume_3;
            }// end function
            , function (param1:Object) : void
            {
                resumePoint4.source = param1;
                return;
            }// end function
            , "resumePoint4.source");
            result[8] = binding;
            binding = new Binding(this, function () : String
            {
                var _loc_1:* = (getresumeLevel(3) + 1) + "" + Utils.i18n("continuationBattleSelected");
                var _loc_2:* = _loc_1 == undefined ? (null) : (String(_loc_1));
                return _loc_2;
            }// end function
            , function (param1:String) : void
            {
                _ContinuationResumeWindow_Label5.text = param1;
                return;
            }// end function
            , "_ContinuationResumeWindow_Label5.text");
            result[9] = binding;
            binding = new Binding(this, function () : Object
            {
                return _swf_resume_4;
            }// end function
            , function (param1:Object) : void
            {
                resumePoint5.source = param1;
                return;
            }// end function
            , "resumePoint5.source");
            result[10] = binding;
            binding = new Binding(this, function () : String
            {
                var _loc_1:* = (getresumeLevel(4) + 1) + "" + Utils.i18n("continuationBattleSelected");
                var _loc_2:* = _loc_1 == undefined ? (null) : (String(_loc_1));
                return _loc_2;
            }// end function
            , function (param1:String) : void
            {
                _ContinuationResumeWindow_Label6.text = param1;
                return;
            }// end function
            , "_ContinuationResumeWindow_Label6.text");
            result[11] = binding;
            binding = new Binding(this, function () : Object
            {
                return _swf_resume_5;
            }// end function
            , function (param1:Object) : void
            {
                resumePoint6.source = param1;
                return;
            }// end function
            , "resumePoint6.source");
            result[12] = binding;
            binding = new Binding(this, function () : String
            {
                var _loc_1:* = (getresumeLevel(5) + 1) + "" + Utils.i18n("continuationBattleSelected");
                var _loc_2:* = _loc_1 == undefined ? (null) : (String(_loc_1));
                return _loc_2;
            }// end function
            , function (param1:String) : void
            {
                _ContinuationResumeWindow_Label7.text = param1;
                return;
            }// end function
            , "_ContinuationResumeWindow_Label7.text");
            result[13] = binding;
            binding = new Binding(this, function () : Object
            {
                return _swf_resume_6;
            }// end function
            , function (param1:Object) : void
            {
                resumePoint7.source = param1;
                return;
            }// end function
            , "resumePoint7.source");
            result[14] = binding;
            binding = new Binding(this, function () : String
            {
                var _loc_1:* = (getresumeLevel(6) + 1) + "" + Utils.i18n("continuationBattleSelected");
                var _loc_2:* = _loc_1 == undefined ? (null) : (String(_loc_1));
                return _loc_2;
            }// end function
            , function (param1:String) : void
            {
                _ContinuationResumeWindow_Label8.text = param1;
                return;
            }// end function
            , "_ContinuationResumeWindow_Label8.text");
            result[15] = binding;
            binding = new Binding(this, function () : Object
            {
                return _swf_resume_7;
            }// end function
            , function (param1:Object) : void
            {
                resumePoint8.source = param1;
                return;
            }// end function
            , "resumePoint8.source");
            result[16] = binding;
            binding = new Binding(this, function () : String
            {
                var _loc_1:* = (getresumeLevel(7) + 1) + "" + Utils.i18n("continuationBattleSelected");
                var _loc_2:* = _loc_1 == undefined ? (null) : (String(_loc_1));
                return _loc_2;
            }// end function
            , function (param1:String) : void
            {
                _ContinuationResumeWindow_Label9.text = param1;
                return;
            }// end function
            , "_ContinuationResumeWindow_Label9.text");
            result[17] = binding;
            binding = new Binding(this, function () : Object
            {
                return _swf_close;
            }// end function
            , function (param1:Object) : void
            {
                closeButtonImage.source = param1;
                return;
            }// end function
            , "closeButtonImage.source");
            result[18] = binding;
            return result;
        }// end function

        public function __resumePoint5_click(event:MouseEvent) : void
        {
            resumeLevel(4);
            return;
        }// end function

        public function get resumePoint2() : Image
        {
            return this._1411480367resumePoint2;
        }// end function

        public function get resumePoint3() : Image
        {
            return this._1411480368resumePoint3;
        }// end function

        public function get closeButtonImage() : Image
        {
            return this._979902513closeButtonImage;
        }// end function

        public function get resumePoint7() : Image
        {
            return this._1411480372resumePoint7;
        }// end function

        public function canResume(param1:int) : Boolean
        {
            return _maxLevel >= param1 && param1 > _currentLevel;
        }// end function

        private function set _resumeLevel(param1:int) : void
        {
            var _loc_2:* = this._719039080_resumeLevel;
            if (_loc_2 !== param1)
            {
                this._719039080_resumeLevel = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "_resumeLevel", _loc_2, param1));
            }
            return;
        }// end function

        public function get resumePoint4() : Image
        {
            return this._1411480369resumePoint4;
        }// end function

        private function set _swf_resume_0(param1:MovieClipLoaderAsset) : void
        {
            var _loc_2:* = this._1952484250_swf_resume_0;
            if (_loc_2 !== param1)
            {
                this._1952484250_swf_resume_0 = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "_swf_resume_0", _loc_2, param1));
            }
            return;
        }// end function

        public function get resumePoint8() : Image
        {
            return this._1411480373resumePoint8;
        }// end function

        private function set _swf_resume_5(param1:MovieClipLoaderAsset) : void
        {
            var _loc_2:* = this._1952484255_swf_resume_5;
            if (_loc_2 !== param1)
            {
                this._1952484255_swf_resume_5 = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "_swf_resume_5", _loc_2, param1));
            }
            return;
        }// end function

        private function set _swf_resume_2(param1:MovieClipLoaderAsset) : void
        {
            var _loc_2:* = this._1952484252_swf_resume_2;
            if (_loc_2 !== param1)
            {
                this._1952484252_swf_resume_2 = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "_swf_resume_2", _loc_2, param1));
            }
            return;
        }// end function

        private function set _swf_resume_4(param1:MovieClipLoaderAsset) : void
        {
            var _loc_2:* = this._1952484254_swf_resume_4;
            if (_loc_2 !== param1)
            {
                this._1952484254_swf_resume_4 = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "_swf_resume_4", _loc_2, param1));
            }
            return;
        }// end function

        private function set _swf_resume_8(param1:MovieClipLoaderAsset) : void
        {
            var _loc_2:* = this._1952484258_swf_resume_8;
            if (_loc_2 !== param1)
            {
                this._1952484258_swf_resume_8 = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "_swf_resume_8", _loc_2, param1));
            }
            return;
        }// end function

        public function get resumePoint1() : Image
        {
            return this._1411480366resumePoint1;
        }// end function

        private function set _swf_resume_6(param1:MovieClipLoaderAsset) : void
        {
            var _loc_2:* = this._1952484256_swf_resume_6;
            if (_loc_2 !== param1)
            {
                this._1952484256_swf_resume_6 = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "_swf_resume_6", _loc_2, param1));
            }
            return;
        }// end function

        public function get resumePoint6() : Image
        {
            return this._1411480371resumePoint6;
        }// end function

        private function set _swf_resume_1(param1:MovieClipLoaderAsset) : void
        {
            var _loc_2:* = this._1952484251_swf_resume_1;
            if (_loc_2 !== param1)
            {
                this._1952484251_swf_resume_1 = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "_swf_resume_1", _loc_2, param1));
            }
            return;
        }// end function

        public function get titleTextLabel() : Label
        {
            return this._313957967titleTextLabel;
        }// end function

        public function getresumeLevel(param1:int) : int
        {
            return resumeLevels[param1];
        }// end function

        private function set _swf_resume_3(param1:MovieClipLoaderAsset) : void
        {
            var _loc_2:* = this._1952484253_swf_resume_3;
            if (_loc_2 !== param1)
            {
                this._1952484253_swf_resume_3 = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "_swf_resume_3", _loc_2, param1));
            }
            return;
        }// end function

        private function resumeLevel(param1:int) : void
        {
            var index:* = param1;
            if (!canResume(getresumeLevel(index)))
            {
                return;
            }
            _resumeLevel = getresumeLevel(index);
            confirmResumeContinuationWindow.level = _resumeLevel + 1;
            this.popupWindow(confirmResumeContinuationWindow, false);
            if (!confirmResumeContinuationWindow.hasEventListener(ConfirmResumeContinuationWindow.CONFIRMED))
            {
                confirmResumeContinuationWindow.addEventListener(ConfirmResumeContinuationWindow.CONFIRMED, function (event:Event) : void
            {
                dispatchEvent(new PopupEvent(SELECT_RESUME_LEVEL, _resumeLevel));
                close();
                return;
            }// end function
            );
            }
            return;
        }// end function

        private function set _swf_resume_7(param1:MovieClipLoaderAsset) : void
        {
            var _loc_2:* = this._1952484257_swf_resume_7;
            if (_loc_2 !== param1)
            {
                this._1952484257_swf_resume_7 = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "_swf_resume_7", _loc_2, param1));
            }
            return;
        }// end function

        public function __resumePoint6_click(event:MouseEvent) : void
        {
            resumeLevel(5);
            return;
        }// end function

        public function set resumePoint2(param1:Image) : void
        {
            var _loc_2:* = this._1411480367resumePoint2;
            if (_loc_2 !== param1)
            {
                this._1411480367resumePoint2 = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "resumePoint2", _loc_2, param1));
            }
            return;
        }// end function

        public function __resumePoint2_click(event:MouseEvent) : void
        {
            resumeLevel(1);
            return;
        }// end function

        public function set resumePoint3(param1:Image) : void
        {
            var _loc_2:* = this._1411480368resumePoint3;
            if (_loc_2 !== param1)
            {
                this._1411480368resumePoint3 = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "resumePoint3", _loc_2, param1));
            }
            return;
        }// end function

        private function get descriptionText() : String
        {
            return this._985849673descriptionText;
        }// end function

        public function set closeButtonImage(param1:Image) : void
        {
            var _loc_2:* = this._979902513closeButtonImage;
            if (_loc_2 !== param1)
            {
                this._979902513closeButtonImage = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "closeButtonImage", _loc_2, param1));
            }
            return;
        }// end function

        public function set resumePoint1(param1:Image) : void
        {
            var _loc_2:* = this._1411480366resumePoint1;
            if (_loc_2 !== param1)
            {
                this._1411480366resumePoint1 = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "resumePoint1", _loc_2, param1));
            }
            return;
        }// end function

        public function set resumePoint5(param1:Image) : void
        {
            var _loc_2:* = this._1411480370resumePoint5;
            if (_loc_2 !== param1)
            {
                this._1411480370resumePoint5 = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "resumePoint5", _loc_2, param1));
            }
            return;
        }// end function

        public function set resumePoint6(param1:Image) : void
        {
            var _loc_2:* = this._1411480371resumePoint6;
            if (_loc_2 !== param1)
            {
                this._1411480371resumePoint6 = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "resumePoint6", _loc_2, param1));
            }
            return;
        }// end function

        public function set resumePoint4(param1:Image) : void
        {
            var _loc_2:* = this._1411480369resumePoint4;
            if (_loc_2 !== param1)
            {
                this._1411480369resumePoint4 = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "resumePoint4", _loc_2, param1));
            }
            return;
        }// end function

        public function set resumePoint8(param1:Image) : void
        {
            var _loc_2:* = this._1411480373resumePoint8;
            if (_loc_2 !== param1)
            {
                this._1411480373resumePoint8 = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "resumePoint8", _loc_2, param1));
            }
            return;
        }// end function

        public function get resumePoint5() : Image
        {
            return this._1411480370resumePoint5;
        }// end function

        private function get _swf_bg() : MovieClipLoaderAsset
        {
            return this._1818888257_swf_bg;
        }// end function

        public function set resumePoint7(param1:Image) : void
        {
            var _loc_2:* = this._1411480372resumePoint7;
            if (_loc_2 !== param1)
            {
                this._1411480372resumePoint7 = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "resumePoint7", _loc_2, param1));
            }
            return;
        }// end function

        private function get _currentLevel() : int
        {
            return this._652551318_currentLevel;
        }// end function

        private function get _swf_close() : MovieClipLoaderAsset
        {
            return this._1193840764_swf_close;
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

        private function _ContinuationResumeWindow_bindingExprs() : void
        {
            var _loc_1:* = undefined;
            _loc_1 = _swf_bg;
            _loc_1 = Utils.i18n("continuationSelect");
            _loc_1 = _swf_resume_0;
            _loc_1 = (getresumeLevel(0) + 1) + "" + Utils.i18n("continuationBattleSelected");
            _loc_1 = _swf_resume_1;
            _loc_1 = (getresumeLevel(1) + 1) + "" + Utils.i18n("continuationBattleSelected");
            _loc_1 = _swf_resume_2;
            _loc_1 = (getresumeLevel(2) + 1) + "" + Utils.i18n("continuationBattleSelected");
            _loc_1 = _swf_resume_3;
            _loc_1 = (getresumeLevel(3) + 1) + "" + Utils.i18n("continuationBattleSelected");
            _loc_1 = _swf_resume_4;
            _loc_1 = (getresumeLevel(4) + 1) + "" + Utils.i18n("continuationBattleSelected");
            _loc_1 = _swf_resume_5;
            _loc_1 = (getresumeLevel(5) + 1) + "" + Utils.i18n("continuationBattleSelected");
            _loc_1 = _swf_resume_6;
            _loc_1 = (getresumeLevel(6) + 1) + "" + Utils.i18n("continuationBattleSelected");
            _loc_1 = _swf_resume_7;
            _loc_1 = (getresumeLevel(7) + 1) + "" + Utils.i18n("continuationBattleSelected");
            _loc_1 = _swf_close;
            return;
        }// end function

        private function set descriptionText(param1:String) : void
        {
            var _loc_2:* = this._985849673descriptionText;
            if (_loc_2 !== param1)
            {
                this._985849673descriptionText = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "descriptionText", _loc_2, param1));
            }
            return;
        }// end function

        override public function initialize() : void
        {
            var target:ContinuationResumeWindow;
            var watcherSetupUtilClass:Object;
            .mx_internal::setDocumentDescriptor(_documentDescriptor_);
            var bindings:* = _ContinuationResumeWindow_bindingsSetup();
            var watchers:Array;
            target;
            if (_watcherSetupUtil == null)
            {
                watcherSetupUtilClass = getDefinitionByName("_com_kbmj_viking_view_home_ContinuationResumeWindowWatcherSetupUtil");
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

        private function get _swf_resume_0() : MovieClipLoaderAsset
        {
            return this._1952484250_swf_resume_0;
        }// end function

        public function __resumePoint7_click(event:MouseEvent) : void
        {
            resumeLevel(6);
            return;
        }// end function

        private function get _swf_resume_5() : MovieClipLoaderAsset
        {
            return this._1952484255_swf_resume_5;
        }// end function

        private function get _swf_resume_6() : MovieClipLoaderAsset
        {
            return this._1952484256_swf_resume_6;
        }// end function

        private function get _swf_resume_8() : MovieClipLoaderAsset
        {
            return this._1952484258_swf_resume_8;
        }// end function

        private function get _swf_resume_1() : MovieClipLoaderAsset
        {
            return this._1952484251_swf_resume_1;
        }// end function

        private function get _swf_resume_2() : MovieClipLoaderAsset
        {
            return this._1952484252_swf_resume_2;
        }// end function

        public function set titleTextLabel(param1:Label) : void
        {
            var _loc_2:* = this._313957967titleTextLabel;
            if (_loc_2 !== param1)
            {
                this._313957967titleTextLabel = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "titleTextLabel", _loc_2, param1));
            }
            return;
        }// end function

        public function __resumePoint3_click(event:MouseEvent) : void
        {
            resumeLevel(2);
            return;
        }// end function

        private function get _swf_resume_3() : MovieClipLoaderAsset
        {
            return this._1952484253_swf_resume_3;
        }// end function

        private function get _swf_resume_4() : MovieClipLoaderAsset
        {
            return this._1952484254_swf_resume_4;
        }// end function

        private function get _resumeLevel() : int
        {
            return this._719039080_resumeLevel;
        }// end function

        private function set _maxLevel(param1:int) : void
        {
            var _loc_2:* = this._480638431_maxLevel;
            if (_loc_2 !== param1)
            {
                this._480638431_maxLevel = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "_maxLevel", _loc_2, param1));
            }
            return;
        }// end function

        public function visibleText(event:Event) : void
        {
            closeButtonImage.visible = true;
            return;
        }// end function

        private function get _swf_resume_7() : MovieClipLoaderAsset
        {
            return this._1952484257_swf_resume_7;
        }// end function

        private function set _currentLevel(param1:int) : void
        {
            var _loc_2:* = this._652551318_currentLevel;
            if (_loc_2 !== param1)
            {
                this._652551318_currentLevel = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "_currentLevel", _loc_2, param1));
            }
            return;
        }// end function

        public function ___ContinuationResumeWindow_PopupWindow1_creationComplete(event:FlexEvent) : void
        {
            comp();
            return;
        }// end function

        public function __resumePoint8_click(event:MouseEvent) : void
        {
            resumeLevel(7);
            return;
        }// end function

        private function get _maxLevel() : int
        {
            return this._480638431_maxLevel;
        }// end function

        public function __resumePoint4_click(event:MouseEvent) : void
        {
            resumeLevel(3);
            return;
        }// end function

        public function __closeButtonImage_click(event:MouseEvent) : void
        {
            close();
            return;
        }// end function

        public function notVisibleText() : void
        {
            closeButtonImage.visible = false;
            return;
        }// end function

        public function close() : void
        {
            notVisibleText();
            this.onClose();
            return;
        }// end function

        public static function set watcherSetupUtil(param1:IWatcherSetupUtil) : void
        {
            ContinuationResumeWindow._watcherSetupUtil = param1;
            return;
        }// end function

    }
}
