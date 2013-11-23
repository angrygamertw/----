package com.kbmj.viking.view
{
    import flash.display.*;
    import flash.events.*;
    import flash.utils.*;
    import mx.binding.*;
    import mx.collections.*;
    import mx.containers.*;
    import mx.controls.*;
    import mx.core.*;
    import mx.events.*;
    import mx.managers.*;

    public class AlertWindow extends Canvas implements IBindingClient
    {
        private var _embed_mxml__images_icon_power_png_227571469:Class;
        private var _1969872796movieButtonCancel:MovieClipLoaderAsset;
        var _watchers:Array;
        private var _1456775947imagePoint:Image;
        private var dummy:Array;
        private var _583967942imageButtonYes:Image;
        private var _1289969991imageButtonCancel:Image;
        private var closeHandler:Function;
        private var movies:Array;
        private var _1117461696movieWindow:MovieClipLoaderAsset;
        public var _AlertWindow_Image1:Image;
        var _bindingsByDestination:Object;
        var _bindingsBeginWithWord:Object;
        private var _131489794movieButtonOk:MovieClipLoaderAsset;
        public var _AlertWindow_Text1:Text;
        public var _AlertWindow_Text2:Text;
        private var _258256654imageButtonNo:Image;
        private var _258256681imageButtonOk:Image;
        private var _218793221movieButtonYes:MovieClipLoaderAsset;
        private var _3835xs:ArrayCollection;
        private var _3556653text:String;
        var _bindings:Array;
        private var _131489821movieButtonNo:MovieClipLoaderAsset;
        private var _110371416title:String;
        private var _documentDescriptor_:UIComponentDescriptor;
        public static var NO:uint = 2;
        public static var YES:uint = 1;
        private static var alertWindow:AlertWindow = new AlertWindow;
        public static var POINT:uint = 16;
        private static var _watcherSetupUtil:IWatcherSetupUtil;
        private static var keys:Array = ["button_yes", "button_no", "button_ok", "button_cancel"];
        public static var CANCEL:uint = 8;
        public static var OK:uint = 4;

        public function AlertWindow()
        {
            _documentDescriptor_ = new UIComponentDescriptor({type:Canvas, propertiesFactory:function () : Object
            {
                return {width:760, height:560, childDescriptors:[new UIComponentDescriptor({type:Image, id:"_AlertWindow_Image1"}), new UIComponentDescriptor({type:Text, id:"_AlertWindow_Text1", propertiesFactory:function () : Object
                {
                    return {x:250, y:181, width:260, styleName:"PanelBaseTitle"};
                }// end function
                }), new UIComponentDescriptor({type:Text, id:"_AlertWindow_Text2", propertiesFactory:function () : Object
                {
                    return {x:250, y:230, width:260, styleName:"CenterText"};
                }// end function
                }), new UIComponentDescriptor({type:Image, id:"imagePoint", propertiesFactory:function () : Object
                {
                    return {y:232, width:16, height:16, source:_embed_mxml__images_icon_power_png_227571469};
                }// end function
                }), new UIComponentDescriptor({type:Image, id:"imageButtonYes", events:{click:"__imageButtonYes_click"}, propertiesFactory:function () : Object
                {
                    return {y:312, width:110};
                }// end function
                }), new UIComponentDescriptor({type:Image, id:"imageButtonNo", events:{click:"__imageButtonNo_click"}, propertiesFactory:function () : Object
                {
                    return {y:312, width:110};
                }// end function
                }), new UIComponentDescriptor({type:Image, id:"imageButtonOk", events:{click:"__imageButtonOk_click"}, propertiesFactory:function () : Object
                {
                    return {y:312, width:110};
                }// end function
                }), new UIComponentDescriptor({type:Image, id:"imageButtonCancel", events:{click:"__imageButtonCancel_click"}, propertiesFactory:function () : Object
                {
                    return {y:312, width:110};
                }// end function
                })]};
            }// end function
            });
            dummy = [0, 0, 0, 0];
            _3835xs = new ArrayCollection(dummy);
            _1117461696movieWindow = new Viking.EmbedSwfWindowCommon();
            _218793221movieButtonYes = new Viking.EmbedSwfButtonCommon();
            _131489821movieButtonNo = new Viking.EmbedSwfButtonCommon();
            _131489794movieButtonOk = new Viking.EmbedSwfButtonCommon();
            _1969872796movieButtonCancel = new Viking.EmbedSwfButtonCommon();
            movies = [movieButtonYes, movieButtonNo, movieButtonOk, movieButtonCancel];
            _embed_mxml__images_icon_power_png_227571469 = AlertWindow__embed_mxml__images_icon_power_png_227571469;
            _bindings = [];
            _watchers = [];
            _bindingsByDestination = {};
            _bindingsBeginWithWord = {};
            mx_internal::_document = this;
            this.width = 760;
            this.height = 560;
            return;
        }// end function

        private function set movieWindow(param1:MovieClipLoaderAsset) : void
        {
            var _loc_2:* = this._1117461696movieWindow;
            if (_loc_2 !== param1)
            {
                this._1117461696movieWindow = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "movieWindow", _loc_2, param1));
            }
            return;
        }// end function

        private function set title(param1:String) : void
        {
            var _loc_2:* = this._110371416title;
            if (_loc_2 !== param1)
            {
                this._110371416title = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "title", _loc_2, param1));
            }
            return;
        }// end function

        private function set xs(param1:ArrayCollection) : void
        {
            var _loc_2:* = this._3835xs;
            if (_loc_2 !== param1)
            {
                this._3835xs = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "xs", _loc_2, param1));
            }
            return;
        }// end function

        private function get xs() : ArrayCollection
        {
            return this._3835xs;
        }// end function

        private function _AlertWindow_bindingExprs() : void
        {
            var _loc_1:* = undefined;
            _loc_1 = movieWindow;
            _loc_1 = title;
            _loc_1 = text;
            _loc_1 = int(xs.getItemAt(0));
            _loc_1 = movieButtonYes;
            _loc_1 = int(xs.getItemAt(1));
            _loc_1 = movieButtonNo;
            _loc_1 = int(xs.getItemAt(2));
            _loc_1 = movieButtonOk;
            _loc_1 = int(xs.getItemAt(3));
            _loc_1 = movieButtonCancel;
            return;
        }// end function

        private function get movieButtonYes() : MovieClipLoaderAsset
        {
            return this._218793221movieButtonYes;
        }// end function

        public function set imageButtonCancel(param1:Image) : void
        {
            var _loc_2:* = this._1289969991imageButtonCancel;
            if (_loc_2 !== param1)
            {
                this._1289969991imageButtonCancel = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "imageButtonCancel", _loc_2, param1));
            }
            return;
        }// end function

        public function __imageButtonOk_click(event:MouseEvent) : void
        {
            onClose(OK);
            return;
        }// end function

        public function get imageButtonNo() : Image
        {
            return this._258256654imageButtonNo;
        }// end function

        override public function initialize() : void
        {
            var target:AlertWindow;
            var watcherSetupUtilClass:Object;
            .mx_internal::setDocumentDescriptor(_documentDescriptor_);
            var bindings:* = _AlertWindow_bindingsSetup();
            var watchers:Array;
            target;
            if (_watcherSetupUtil == null)
            {
                watcherSetupUtilClass = getDefinitionByName("_com_kbmj_viking_view_AlertWindowWatcherSetupUtil");
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

        private function set movieButtonYes(param1:MovieClipLoaderAsset) : void
        {
            var _loc_2:* = this._218793221movieButtonYes;
            if (_loc_2 !== param1)
            {
                this._218793221movieButtonYes = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "movieButtonYes", _loc_2, param1));
            }
            return;
        }// end function

        public function set imageButtonNo(param1:Image) : void
        {
            var _loc_2:* = this._258256654imageButtonNo;
            if (_loc_2 !== param1)
            {
                this._258256654imageButtonNo = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "imageButtonNo", _loc_2, param1));
            }
            return;
        }// end function

        public function __imageButtonYes_click(event:MouseEvent) : void
        {
            onClose(YES);
            return;
        }// end function

        public function setUpButtons(param1:uint) : void
        {
            MovieClip(Loader(movieWindow.getChildAt(0)).content).gotoAndPlay("center_300x200");
            var _loc_2:* = new Array();
            var _loc_3:int = 0;
            while (_loc_3 < movies.length)
            {
                
                movies[_loc_3].visible = (param1 & 1 << _loc_3) != 0;
                if (movies[_loc_3].visible)
                {
                    MovieClip(Loader(movies[_loc_3].getChildAt(0)).content).gotoAndStop(0);
                    MovieClip(Loader(movies[_loc_3].getChildAt(0)).content).gotoAndPlay(keys[_loc_3]);
                    _loc_2.push(_loc_3);
                }
                _loc_3++;
            }
            var _loc_4:int = 110;
            var _loc_5:int = 10;
            _loc_3 = 0;
            while (_loc_3 < _loc_2.length)
            {
                
                xs.setItemAt(230 + (300 - (_loc_4 * _loc_2.length + _loc_5 * (_loc_2.length - 1))) / 2 + (_loc_4 + _loc_5) * _loc_3, _loc_2[_loc_3]);
                _loc_3++;
            }
            return;
        }// end function

        private function get text() : String
        {
            return this._3556653text;
        }// end function

        public function __imageButtonCancel_click(event:MouseEvent) : void
        {
            onClose(CANCEL);
            return;
        }// end function

        private function get movieButtonCancel() : MovieClipLoaderAsset
        {
            return this._1969872796movieButtonCancel;
        }// end function

        public function __imageButtonNo_click(event:MouseEvent) : void
        {
            onClose(NO);
            return;
        }// end function

        public function get imageButtonOk() : Image
        {
            return this._258256681imageButtonOk;
        }// end function

        public function get imageButtonYes() : Image
        {
            return this._583967942imageButtonYes;
        }// end function

        private function set movieButtonCancel(param1:MovieClipLoaderAsset) : void
        {
            var _loc_2:* = this._1969872796movieButtonCancel;
            if (_loc_2 !== param1)
            {
                this._1969872796movieButtonCancel = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "movieButtonCancel", _loc_2, param1));
            }
            return;
        }// end function

        private function get movieWindow() : MovieClipLoaderAsset
        {
            return this._1117461696movieWindow;
        }// end function

        public function get imageButtonCancel() : Image
        {
            return this._1289969991imageButtonCancel;
        }// end function

        private function setPoint() : void
        {
            var _loc_1:* = text.search("\n");
            if (_loc_1 == -1)
            {
                _loc_1 = text.length;
            }
            var _loc_2:int = 0;
            var _loc_3:int = 0;
            while (_loc_3 < _loc_1)
            {
                
                _loc_2 = _loc_2 + (text.charCodeAt(_loc_3) <= 127 ? (9) : (14));
                _loc_3++;
            }
            imagePoint.x = (760 - _loc_2) / 2 - imagePoint.width - 2;
            imagePoint.visible = true;
            return;
        }// end function

        private function set movieButtonNo(param1:MovieClipLoaderAsset) : void
        {
            var _loc_2:* = this._131489821movieButtonNo;
            if (_loc_2 !== param1)
            {
                this._131489821movieButtonNo = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "movieButtonNo", _loc_2, param1));
            }
            return;
        }// end function

        private function get title() : String
        {
            return this._110371416title;
        }// end function

        private function onClose(param1:int) : void
        {
            var _loc_2:CloseEvent = null;
            trace("AlertWindow", param1);
            if (closeHandler != null)
            {
                _loc_2 = new CloseEvent("click");
                _loc_2.detail = param1;
                closeHandler(_loc_2);
            }
            PopUpManager.removePopUp(this);
            return;
        }// end function

        private function _AlertWindow_bindingsSetup() : Array
        {
            var binding:Binding;
            var result:Array;
            binding = new Binding(this, function () : Object
            {
                return movieWindow;
            }// end function
            , function (param1:Object) : void
            {
                _AlertWindow_Image1.source = param1;
                return;
            }// end function
            , "_AlertWindow_Image1.source");
            result[0] = binding;
            binding = new Binding(this, function () : String
            {
                var _loc_1:* = title;
                var _loc_2:* = _loc_1 == undefined ? (null) : (String(_loc_1));
                return _loc_2;
            }// end function
            , function (param1:String) : void
            {
                _AlertWindow_Text1.text = param1;
                return;
            }// end function
            , "_AlertWindow_Text1.text");
            result[1] = binding;
            binding = new Binding(this, function () : String
            {
                var _loc_1:* = text;
                var _loc_2:* = _loc_1 == undefined ? (null) : (String(_loc_1));
                return _loc_2;
            }// end function
            , function (param1:String) : void
            {
                _AlertWindow_Text2.text = param1;
                return;
            }// end function
            , "_AlertWindow_Text2.text");
            result[2] = binding;
            binding = new Binding(this, function () : Number
            {
                return int(xs.getItemAt(0));
            }// end function
            , function (param1:Number) : void
            {
                imageButtonYes.x = param1;
                return;
            }// end function
            , "imageButtonYes.x");
            result[3] = binding;
            binding = new Binding(this, function () : Object
            {
                return movieButtonYes;
            }// end function
            , function (param1:Object) : void
            {
                imageButtonYes.source = param1;
                return;
            }// end function
            , "imageButtonYes.source");
            result[4] = binding;
            binding = new Binding(this, function () : Number
            {
                return int(xs.getItemAt(1));
            }// end function
            , function (param1:Number) : void
            {
                imageButtonNo.x = param1;
                return;
            }// end function
            , "imageButtonNo.x");
            result[5] = binding;
            binding = new Binding(this, function () : Object
            {
                return movieButtonNo;
            }// end function
            , function (param1:Object) : void
            {
                imageButtonNo.source = param1;
                return;
            }// end function
            , "imageButtonNo.source");
            result[6] = binding;
            binding = new Binding(this, function () : Number
            {
                return int(xs.getItemAt(2));
            }// end function
            , function (param1:Number) : void
            {
                imageButtonOk.x = param1;
                return;
            }// end function
            , "imageButtonOk.x");
            result[7] = binding;
            binding = new Binding(this, function () : Object
            {
                return movieButtonOk;
            }// end function
            , function (param1:Object) : void
            {
                imageButtonOk.source = param1;
                return;
            }// end function
            , "imageButtonOk.source");
            result[8] = binding;
            binding = new Binding(this, function () : Number
            {
                return int(xs.getItemAt(3));
            }// end function
            , function (param1:Number) : void
            {
                imageButtonCancel.x = param1;
                return;
            }// end function
            , "imageButtonCancel.x");
            result[9] = binding;
            binding = new Binding(this, function () : Object
            {
                return movieButtonCancel;
            }// end function
            , function (param1:Object) : void
            {
                imageButtonCancel.source = param1;
                return;
            }// end function
            , "imageButtonCancel.source");
            result[10] = binding;
            return result;
        }// end function

        private function get movieButtonNo() : MovieClipLoaderAsset
        {
            return this._131489821movieButtonNo;
        }// end function

        private function clrPoint() : void
        {
            imagePoint.visible = false;
            return;
        }// end function

        public function set imageButtonOk(param1:Image) : void
        {
            var _loc_2:* = this._258256681imageButtonOk;
            if (_loc_2 !== param1)
            {
                this._258256681imageButtonOk = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "imageButtonOk", _loc_2, param1));
            }
            return;
        }// end function

        private function set text(param1:String) : void
        {
            var _loc_2:* = this._3556653text;
            if (_loc_2 !== param1)
            {
                this._3556653text = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "text", _loc_2, param1));
            }
            return;
        }// end function

        public function set imageButtonYes(param1:Image) : void
        {
            var _loc_2:* = this._583967942imageButtonYes;
            if (_loc_2 !== param1)
            {
                this._583967942imageButtonYes = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "imageButtonYes", _loc_2, param1));
            }
            return;
        }// end function

        public function get imagePoint() : Image
        {
            return this._1456775947imagePoint;
        }// end function

        public function set imagePoint(param1:Image) : void
        {
            var _loc_2:* = this._1456775947imagePoint;
            if (_loc_2 !== param1)
            {
                this._1456775947imagePoint = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "imagePoint", _loc_2, param1));
            }
            return;
        }// end function

        private function set movieButtonOk(param1:MovieClipLoaderAsset) : void
        {
            var _loc_2:* = this._131489794movieButtonOk;
            if (_loc_2 !== param1)
            {
                this._131489794movieButtonOk = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "movieButtonOk", _loc_2, param1));
            }
            return;
        }// end function

        private function get movieButtonOk() : MovieClipLoaderAsset
        {
            return this._131489794movieButtonOk;
        }// end function

        public static function set watcherSetupUtil(param1:IWatcherSetupUtil) : void
        {
            AlertWindow._watcherSetupUtil = param1;
            return;
        }// end function

        public static function show(param1:String = "", param2:String = "", param3:uint = 4, param4:Sprite = null, param5:Function = null, param6:Class = null, param7:uint = 4) : AlertWindow
        {
            alertWindow.setUpButtons(param3);
            alertWindow.text = param1;
            alertWindow.title = param2;
            alertWindow.closeHandler = param5;
            if ((param3 & POINT) == POINT)
            {
                alertWindow.callLater(alertWindow.setPoint);
            }
            else
            {
                alertWindow.callLater(alertWindow.clrPoint);
            }
            if (param4 != null)
            {
                PopUpManager.addPopUp(alertWindow, param4, true);
            }
            return alertWindow;
        }// end function

    }
}
