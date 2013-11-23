package com.kbmj.viking.view.home
{
    import com.kbmj.viking.lib.*;
    import com.kbmj.viking.view.*;
    import flash.display.*;
    import flash.events.*;
    import flash.utils.*;
    import mx.binding.*;
    import mx.controls.*;
    import mx.core.*;
    import mx.events.*;

    public class ExpeditionDescriptionWindow extends PopupWindow implements IBindingClient
    {
        private var _985849673descriptionText:String;
        private var _313957967titleTextLabel:Label;
        private var _1416088598descriptionTextText:Text;
        private var _evilPoints:Array;
        private var _available:Boolean = false;
        private var _1195361263viewData:Array;
        private var _1818888637_swf_no:MovieClipLoaderAsset;
        var _bindingsByDestination:Object;
        private var _1818888257_swf_bg:MovieClipLoaderAsset;
        private var _1193840764_swf_close:MovieClipLoaderAsset;
        private var _894004786expeditionText:Text;
        private var _1688086067okButtonImage:Image;
        private var _997651232topographyId:String;
        private var _878352184noButtonImage:Image;
        private var _344408077confirmText:String;
        private var _979902513closeButtonImage:Image;
        private var locationNum:Object;
        var _watchers:Array;
        private var _2135756891titleText:String;
        private var _102865796level:String;
        private var _1988200684forbiddenJobIds:String;
        public var _ExpeditionDescriptionWindow_Image1:Image;
        private var _1818888664_swf_ok:MovieClipLoaderAsset;
        var _bindingsBeginWithWord:Object;
        private var _evilPoint:Object;
        private var locationName:Object;
        var _bindings:Array;
        private var _documentDescriptor_:UIComponentDescriptor;
        private static var _watcherSetupUtil:IWatcherSetupUtil;
        public static var EmbedSwfExpeditionDetail:Class = ExpeditionDescriptionWindow_EmbedSwfExpeditionDetail;
        public static const NAME:String = "ExpeditionDescriptionWindow";
        public static const DESCRIPTION_COMPLETE:String = NAME + "/descriptionComplete";

        public function ExpeditionDescriptionWindow()
        {
            _documentDescriptor_ = new UIComponentDescriptor({type:PopupWindow, propertiesFactory:function () : Object
            {
                return {childDescriptors:[new UIComponentDescriptor({type:Image, id:"_ExpeditionDescriptionWindow_Image1"}), new UIComponentDescriptor({type:Label, id:"titleTextLabel", stylesFactory:function () : void
                {
                    this.color = 16777215;
                    this.textAlign = "center";
                    return;
                }// end function
                , propertiesFactory:function () : Object
                {
                    return {x:210, y:103, width:340, styleName:"PanelBaseTitle"};
                }// end function
                }), new UIComponentDescriptor({type:Text, id:"descriptionTextText", stylesFactory:function () : void
                {
                    this.fontSize = 14;
                    this.textAlign = "left";
                    this.color = 16777215;
                    return;
                }// end function
                , propertiesFactory:function () : Object
                {
                    return {x:210, y:150, width:340};
                }// end function
                }), new UIComponentDescriptor({type:Text, id:"expeditionText", stylesFactory:function () : void
                {
                    this.fontSize = 14;
                    this.textAlign = "center";
                    this.color = 16777215;
                    return;
                }// end function
                , propertiesFactory:function () : Object
                {
                    return {x:210, y:415, width:340};
                }// end function
                }), new UIComponentDescriptor({type:Image, id:"okButtonImage", events:{click:"__okButtonImage_click"}, propertiesFactory:function () : Object
                {
                    return {x:255, y:450};
                }// end function
                }), new UIComponentDescriptor({type:Image, id:"noButtonImage", events:{click:"__noButtonImage_click"}, propertiesFactory:function () : Object
                {
                    return {x:395, y:450};
                }// end function
                }), new UIComponentDescriptor({type:Image, id:"closeButtonImage", events:{click:"__closeButtonImage_click"}, propertiesFactory:function () : Object
                {
                    return {x:325, y:450};
                }// end function
                })]};
            }// end function
            });
            _1818888257_swf_bg = new EmbedSwfExpeditionDetail();
            _1818888664_swf_ok = new Viking.EmbedSwfButtonCommon();
            _1818888637_swf_no = new Viking.EmbedSwfButtonCommon();
            _1193840764_swf_close = new Viking.EmbedSwfButtonCommon();
            _evilPoints = new Array();
            _evilPoint = new Object();
            _1195361263viewData = new Array();
            _2135756891titleText = new String();
            _344408077confirmText = new String();
            _985849673descriptionText = new String();
            _102865796level = new String();
            _997651232topographyId = new String();
            _1988200684forbiddenJobIds = new String();
            locationNum = {BUTTON_GL:2, BUTTON_RK:4, BUTTON_WS:1, BUTTON_LG:6, BUTTON_MN:5, BUTTON_FR:3};
            locationName = {BUTTON_GL:Utils.i18n("generalLocationGL"), BUTTON_RK:Utils.i18n("generalLocationRK"), BUTTON_WS:Utils.i18n("generalLocationWS"), BUTTON_LG:Utils.i18n("generalLocationLG"), BUTTON_MN:Utils.i18n("generalLocationMN"), BUTTON_FR:Utils.i18n("generalLocationFR")};
            _bindings = [];
            _watchers = [];
            _bindingsByDestination = {};
            _bindingsBeginWithWord = {};
            mx_internal::_document = this;
            this.addEventListener("creationComplete", ___ExpeditionDescriptionWindow_PopupWindow1_creationComplete);
            return;
        }// end function

        private function set level(param1:String) : void
        {
            var _loc_2:* = this._102865796level;
            if (_loc_2 !== param1)
            {
                this._102865796level = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "level", _loc_2, param1));
            }
            return;
        }// end function

        private function get confirmText() : String
        {
            return this._344408077confirmText;
        }// end function

        private function comp() : void
        {
            descriptionTextText.visible = false;
            expeditionText.visible = false;
            okButtonImage.visible = false;
            noButtonImage.visible = false;
            closeButtonImage.visible = false;
            MovieClip(Loader(_swf_ok.getChildAt(0)).content).gotoAndPlay("button_yes");
            MovieClip(Loader(_swf_no.getChildAt(0)).content).gotoAndPlay("button_no");
            MovieClip(Loader(_swf_close.getChildAt(0)).content).gotoAndPlay("button_close");
            return;
        }// end function

        public function init(param1:String) : void
        {
            var expeditionLevel:* = param1;
            MovieClip(Loader(_swf_bg.getChildAt(0)).content).gotoAndPlay("w_start");
            level = expeditionLevel;
            evilPoint = _evilPoints.filter(function (param1, param2:int, param3:Array) : Boolean
            {
                return param1.level == level;
            }// end function
            )[0];
            descriptionText = evilPoint.description;
            topographyId = evilPoint.topography_id;
            forbiddenJobIds = evilPoint.forbidden_job_ids;
            titleText = Utils.i18n("localize154") + level + Utils.i18n("localize155");
            confirmText = Utils.i18n("localize156");
            _available = evilPoint.available;
            if (!_available)
            {
                confirmText = "遠征できません。";
            }
            Loader(_swf_bg.getChildAt(0)).content.addEventListener("ENLARGE_END", visibleText);
            return;
        }// end function

        private function get forbiddenJobIds() : String
        {
            return this._1988200684forbiddenJobIds;
        }// end function

        public function get descriptionTextText() : Text
        {
            return this._1416088598descriptionTextText;
        }// end function

        private function set confirmText(param1:String) : void
        {
            var _loc_2:* = this._344408077confirmText;
            if (_loc_2 !== param1)
            {
                this._344408077confirmText = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "confirmText", _loc_2, param1));
            }
            return;
        }// end function

        private function get topographyId() : String
        {
            return this._997651232topographyId;
        }// end function

        public function clicked() : void
        {
            trace("topography_id:" + topographyId);
            trace("level:" + level);
            dispatchEvent(new PopupEvent(DESCRIPTION_COMPLETE, {topographyId:topographyId, level:level, evilPointId:evilPoint.id, forbiddenJobIds:forbiddenJobIds}));
            descriptionTextText.visible = false;
            expeditionText.visible = false;
            okButtonImage.visible = false;
            noButtonImage.visible = false;
            closeButtonImage.visible = false;
            this.onClose();
            return;
        }// end function

        private function set forbiddenJobIds(param1:String) : void
        {
            var _loc_2:* = this._1988200684forbiddenJobIds;
            if (_loc_2 !== param1)
            {
                this._1988200684forbiddenJobIds = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "forbiddenJobIds", _loc_2, param1));
            }
            return;
        }// end function

        public function set evilPoints(param1:Array) : void
        {
            _evilPoints = param1;
            return;
        }// end function

        public function ___ExpeditionDescriptionWindow_PopupWindow1_creationComplete(event:FlexEvent) : void
        {
            comp();
            return;
        }// end function

        public function get closeButtonImage() : Image
        {
            return this._979902513closeButtonImage;
        }// end function

        public function set descriptionTextText(param1:Text) : void
        {
            var _loc_2:* = this._1416088598descriptionTextText;
            if (_loc_2 !== param1)
            {
                this._1416088598descriptionTextText = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "descriptionTextText", _loc_2, param1));
            }
            return;
        }// end function

        private function set topographyId(param1:String) : void
        {
            var _loc_2:* = this._997651232topographyId;
            if (_loc_2 !== param1)
            {
                this._997651232topographyId = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "topographyId", _loc_2, param1));
            }
            return;
        }// end function

        private function get _swf_bg() : MovieClipLoaderAsset
        {
            return this._1818888257_swf_bg;
        }// end function

        private function get descriptionText() : String
        {
            return this._985849673descriptionText;
        }// end function

        public function get titleTextLabel() : Label
        {
            return this._313957967titleTextLabel;
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

        public function get evilPoint() : Object
        {
            return _evilPoint;
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

        public function __noButtonImage_click(event:MouseEvent) : void
        {
            close();
            return;
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

        private function get level() : String
        {
            return this._102865796level;
        }// end function

        override public function initialize() : void
        {
            var target:ExpeditionDescriptionWindow;
            var watcherSetupUtilClass:Object;
            .mx_internal::setDocumentDescriptor(_documentDescriptor_);
            var bindings:* = _ExpeditionDescriptionWindow_bindingsSetup();
            var watchers:Array;
            target;
            if (_watcherSetupUtil == null)
            {
                watcherSetupUtilClass = getDefinitionByName("_com_kbmj_viking_view_home_ExpeditionDescriptionWindowWatcherSetupUtil");
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

        public function set okButtonImage(param1:Image) : void
        {
            var _loc_2:* = this._1688086067okButtonImage;
            if (_loc_2 !== param1)
            {
                this._1688086067okButtonImage = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "okButtonImage", _loc_2, param1));
            }
            return;
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

        public function set noButtonImage(param1:Image) : void
        {
            var _loc_2:* = this._878352184noButtonImage;
            if (_loc_2 !== param1)
            {
                this._878352184noButtonImage = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "noButtonImage", _loc_2, param1));
            }
            return;
        }// end function

        public function set expeditionText(param1:Text) : void
        {
            var _loc_2:* = this._894004786expeditionText;
            if (_loc_2 !== param1)
            {
                this._894004786expeditionText = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "expeditionText", _loc_2, param1));
            }
            return;
        }// end function

        public function get evilPoints() : Array
        {
            return _evilPoints;
        }// end function

        public function __okButtonImage_click(event:MouseEvent) : void
        {
            clicked();
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

        public function set evilPoint(param1:Object) : void
        {
            _evilPoint = param1;
            return;
        }// end function

        private function _ExpeditionDescriptionWindow_bindingsSetup() : Array
        {
            var binding:Binding;
            var result:Array;
            binding = new Binding(this, function () : Object
            {
                return _swf_bg;
            }// end function
            , function (param1:Object) : void
            {
                _ExpeditionDescriptionWindow_Image1.source = param1;
                return;
            }// end function
            , "_ExpeditionDescriptionWindow_Image1.source");
            result[0] = binding;
            binding = new Binding(this, function () : String
            {
                var _loc_1:* = titleText;
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
            binding = new Binding(this, function () : String
            {
                var _loc_1:* = descriptionText;
                var _loc_2:* = _loc_1 == undefined ? (null) : (String(_loc_1));
                return _loc_2;
            }// end function
            , function (param1:String) : void
            {
                descriptionTextText.text = param1;
                return;
            }// end function
            , "descriptionTextText.text");
            result[2] = binding;
            binding = new Binding(this, function () : String
            {
                var _loc_1:* = confirmText;
                var _loc_2:* = _loc_1 == undefined ? (null) : (String(_loc_1));
                return _loc_2;
            }// end function
            , function (param1:String) : void
            {
                expeditionText.text = param1;
                return;
            }// end function
            , "expeditionText.text");
            result[3] = binding;
            binding = new Binding(this, function () : Object
            {
                return _swf_ok;
            }// end function
            , function (param1:Object) : void
            {
                okButtonImage.source = param1;
                return;
            }// end function
            , "okButtonImage.source");
            result[4] = binding;
            binding = new Binding(this, function () : Object
            {
                return _swf_no;
            }// end function
            , function (param1:Object) : void
            {
                noButtonImage.source = param1;
                return;
            }// end function
            , "noButtonImage.source");
            result[5] = binding;
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
            result[6] = binding;
            return result;
        }// end function

        private function get titleText() : String
        {
            return this._2135756891titleText;
        }// end function

        public function visibleText(event:Event) : void
        {
            descriptionTextText.visible = true;
            expeditionText.visible = true;
            okButtonImage.visible = _available;
            noButtonImage.visible = _available;
            closeButtonImage.visible = !_available;
            return;
        }// end function

        private function get _swf_no() : MovieClipLoaderAsset
        {
            return this._1818888637_swf_no;
        }// end function

        public function get noButtonImage() : Image
        {
            return this._878352184noButtonImage;
        }// end function

        public function get okButtonImage() : Image
        {
            return this._1688086067okButtonImage;
        }// end function

        public function get expeditionText() : Text
        {
            return this._894004786expeditionText;
        }// end function

        private function _ExpeditionDescriptionWindow_bindingExprs() : void
        {
            var _loc_1:* = undefined;
            _loc_1 = _swf_bg;
            _loc_1 = titleText;
            _loc_1 = descriptionText;
            _loc_1 = confirmText;
            _loc_1 = _swf_ok;
            _loc_1 = _swf_no;
            _loc_1 = _swf_close;
            return;
        }// end function

        private function get _swf_ok() : MovieClipLoaderAsset
        {
            return this._1818888664_swf_ok;
        }// end function

        public function __closeButtonImage_click(event:MouseEvent) : void
        {
            close();
            return;
        }// end function

        private function set viewData(param1:Array) : void
        {
            var _loc_2:* = this._1195361263viewData;
            if (_loc_2 !== param1)
            {
                this._1195361263viewData = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "viewData", _loc_2, param1));
            }
            return;
        }// end function

        private function get viewData() : Array
        {
            return this._1195361263viewData;
        }// end function

        public function notVisibleText() : void
        {
            descriptionTextText.visible = false;
            expeditionText.visible = false;
            okButtonImage.visible = false;
            noButtonImage.visible = false;
            closeButtonImage.visible = false;
            return;
        }// end function

        public function close() : void
        {
            notVisibleText();
            this.onClose();
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

        public static function set watcherSetupUtil(param1:IWatcherSetupUtil) : void
        {
            ExpeditionDescriptionWindow._watcherSetupUtil = param1;
            return;
        }// end function

    }
}
