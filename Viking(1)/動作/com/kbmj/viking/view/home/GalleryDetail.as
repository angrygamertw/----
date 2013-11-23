package com.kbmj.viking.view.home
{
    import com.kbmj.viking.view.*;
    import flash.display.*;
    import flash.events.*;
    import flash.utils.*;
    import mx.binding.*;
    import mx.controls.*;
    import mx.core.*;
    import mx.events.*;

    public class GalleryDetail extends PopupWindow implements IBindingClient
    {
        private var _1740283303plantMaterialIconVisible:Boolean;
        private var _gallery:Object;
        var _watchers:Array;
        private var _985849673descriptionText:Text;
        private var _689144965waterMaterialIconVisible:Boolean;
        private var _2081751442goldMaterialIconVisible:Boolean;
        private var _743837771plantMaterialIcon:Image;
        private var EmbedSwfWindowGallery:Class;
        private var _1033306776earthMaterialIconVisible:Boolean;
        private var _1948377661_description:String;
        private var _180431978fireMaterialIcon:Image;
        private var _409302954earthMaterialIcon:Image;
        var _bindingsByDestination:Object;
        var _bindingsBeginWithWord:Object;
        private var _1926407945waterMaterialIcon:Image;
        public var _GalleryDetail_Image1:Image;
        private var _1203802432goldMaterialIcon:Image;
        private var _1338590270_prizeName:String;
        var _bindings:Array;
        private var _868932746prizeNameText:Text;
        private var _1039704060fireMaterialIconVisible:Boolean;
        private var _2944451_swf:MovieClipLoaderAsset;
        private var _documentDescriptor_:UIComponentDescriptor;
        public static const LOGIN_ANIMATION_END:String = "loginAnimationEnd";
        private static var _watcherSetupUtil:IWatcherSetupUtil;

        public function GalleryDetail()
        {
            _documentDescriptor_ = new UIComponentDescriptor({type:PopupWindow, propertiesFactory:function () : Object
            {
                return {childDescriptors:[new UIComponentDescriptor({type:Image, id:"_GalleryDetail_Image1"}), new UIComponentDescriptor({type:Image, id:"fireMaterialIcon", propertiesFactory:function () : Object
                {
                    return {x:142, y:283, source:"/images/wu_xing/icon_wu_xing_01.png"};
                }// end function
                }), new UIComponentDescriptor({type:Image, id:"earthMaterialIcon", propertiesFactory:function () : Object
                {
                    return {x:195, y:322, source:"/images/wu_xing/icon_wu_xing_02.png"};
                }// end function
                }), new UIComponentDescriptor({type:Image, id:"waterMaterialIcon", propertiesFactory:function () : Object
                {
                    return {x:174, y:382, source:"/images/wu_xing/icon_wu_xing_03.png"};
                }// end function
                }), new UIComponentDescriptor({type:Image, id:"goldMaterialIcon", propertiesFactory:function () : Object
                {
                    return {x:108, y:382, source:"/images/wu_xing/icon_wu_xing_04.png"};
                }// end function
                }), new UIComponentDescriptor({type:Image, id:"plantMaterialIcon", propertiesFactory:function () : Object
                {
                    return {x:89, y:322, source:"/images/wu_xing/icon_wu_xing_05.png"};
                }// end function
                }), new UIComponentDescriptor({type:Text, id:"descriptionText", stylesFactory:function () : void
                {
                    this.fontSize = 11;
                    return;
                }// end function
                , propertiesFactory:function () : Object
                {
                    return {x:36, y:110, width:260, height:90};
                }// end function
                }), new UIComponentDescriptor({type:Text, id:"prizeNameText", stylesFactory:function () : void
                {
                    this.fontSize = 18;
                    return;
                }// end function
                , propertiesFactory:function () : Object
                {
                    return {x:58, y:444, width:200, height:30};
                }// end function
                })]};
            }// end function
            });
            EmbedSwfWindowGallery = GalleryDetail_EmbedSwfWindowGallery;
            _2944451_swf = new EmbedSwfWindowGallery();
            _bindings = [];
            _watchers = [];
            _bindingsByDestination = {};
            _bindingsBeginWithWord = {};
            mx_internal::_document = this;
            this.addEventListener("creationComplete", ___GalleryDetail_PopupWindow1_creationComplete);
            return;
        }// end function

        public function set goldMaterialIcon(param1:Image) : void
        {
            var _loc_2:* = this._1203802432goldMaterialIcon;
            if (_loc_2 !== param1)
            {
                this._1203802432goldMaterialIcon = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "goldMaterialIcon", _loc_2, param1));
            }
            return;
        }// end function

        public function set earthMaterialIcon(param1:Image) : void
        {
            var _loc_2:* = this._409302954earthMaterialIcon;
            if (_loc_2 !== param1)
            {
                this._409302954earthMaterialIcon = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "earthMaterialIcon", _loc_2, param1));
            }
            return;
        }// end function

        public function get fireMaterialIconVisible() : Boolean
        {
            return this._1039704060fireMaterialIconVisible;
        }// end function

        public function closeWindow(event:Event) : void
        {
            onClose();
            return;
        }// end function

        public function get prizeNameText() : Text
        {
            return this._868932746prizeNameText;
        }// end function

        private function set _swf(param1:MovieClipLoaderAsset) : void
        {
            var _loc_2:* = this._2944451_swf;
            if (_loc_2 !== param1)
            {
                this._2944451_swf = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "_swf", _loc_2, param1));
            }
            return;
        }// end function

        public function set descriptionText(param1:Text) : void
        {
            var _loc_2:* = this._985849673descriptionText;
            if (_loc_2 !== param1)
            {
                this._985849673descriptionText = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "descriptionText", _loc_2, param1));
            }
            return;
        }// end function

        public function set prizeNameText(param1:Text) : void
        {
            var _loc_2:* = this._868932746prizeNameText;
            if (_loc_2 !== param1)
            {
                this._868932746prizeNameText = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "prizeNameText", _loc_2, param1));
            }
            return;
        }// end function

        override public function initialize() : void
        {
            var target:GalleryDetail;
            var watcherSetupUtilClass:Object;
            .mx_internal::setDocumentDescriptor(_documentDescriptor_);
            var bindings:* = _GalleryDetail_bindingsSetup();
            var watchers:Array;
            target;
            if (_watcherSetupUtil == null)
            {
                watcherSetupUtilClass = getDefinitionByName("_com_kbmj_viking_view_home_GalleryDetailWatcherSetupUtil");
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

        public function get fireMaterialIcon() : Image
        {
            return this._180431978fireMaterialIcon;
        }// end function

        public function ___GalleryDetail_PopupWindow1_creationComplete(event:FlexEvent) : void
        {
            init();
            return;
        }// end function

        public function init() : void
        {
            Loader(_swf.getChildAt(0)).content.addEventListener("BUTTON_BACK", closeWindow);
            MovieClip(Loader(_swf.getChildAt(0)).content).stop();
            return;
        }// end function

        public function get earthMaterialIcon() : Image
        {
            return this._409302954earthMaterialIcon;
        }// end function

        public function set gallery(param1:Object) : void
        {
            _gallery = param1;
            if (_gallery.description)
            {
                _description = _gallery.description;
            }
            if (_gallery.prizeName)
            {
                _prizeName = _gallery.prizeName;
            }
            return;
        }// end function

        public function set plantMaterialIcon(param1:Image) : void
        {
            var _loc_2:* = this._743837771plantMaterialIcon;
            if (_loc_2 !== param1)
            {
                this._743837771plantMaterialIcon = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "plantMaterialIcon", _loc_2, param1));
            }
            return;
        }// end function

        public function get plantMaterialIconVisible() : Boolean
        {
            return this._1740283303plantMaterialIconVisible;
        }// end function

        private function _GalleryDetail_bindingsSetup() : Array
        {
            var binding:Binding;
            var result:Array;
            binding = new Binding(this, function () : Object
            {
                return _swf;
            }// end function
            , function (param1:Object) : void
            {
                _GalleryDetail_Image1.source = param1;
                return;
            }// end function
            , "_GalleryDetail_Image1.source");
            result[0] = binding;
            binding = new Binding(this, function () : Boolean
            {
                return fireMaterialIconVisible;
            }// end function
            , function (param1:Boolean) : void
            {
                fireMaterialIcon.visible = param1;
                return;
            }// end function
            , "fireMaterialIcon.visible");
            result[1] = binding;
            binding = new Binding(this, function () : Boolean
            {
                return earthMaterialIconVisible;
            }// end function
            , function (param1:Boolean) : void
            {
                earthMaterialIcon.visible = param1;
                return;
            }// end function
            , "earthMaterialIcon.visible");
            result[2] = binding;
            binding = new Binding(this, function () : Boolean
            {
                return waterMaterialIconVisible;
            }// end function
            , function (param1:Boolean) : void
            {
                waterMaterialIcon.visible = param1;
                return;
            }// end function
            , "waterMaterialIcon.visible");
            result[3] = binding;
            binding = new Binding(this, function () : Boolean
            {
                return goldMaterialIconVisible;
            }// end function
            , function (param1:Boolean) : void
            {
                goldMaterialIcon.visible = param1;
                return;
            }// end function
            , "goldMaterialIcon.visible");
            result[4] = binding;
            binding = new Binding(this, function () : Boolean
            {
                return plantMaterialIconVisible;
            }// end function
            , function (param1:Boolean) : void
            {
                plantMaterialIcon.visible = param1;
                return;
            }// end function
            , "plantMaterialIcon.visible");
            result[5] = binding;
            binding = new Binding(this, function () : String
            {
                var _loc_1:* = _description;
                var _loc_2:* = _loc_1 == undefined ? (null) : (String(_loc_1));
                return _loc_2;
            }// end function
            , function (param1:String) : void
            {
                descriptionText.text = param1;
                return;
            }// end function
            , "descriptionText.text");
            result[6] = binding;
            binding = new Binding(this, function () : String
            {
                var _loc_1:* = _prizeName;
                var _loc_2:* = _loc_1 == undefined ? (null) : (String(_loc_1));
                return _loc_2;
            }// end function
            , function (param1:String) : void
            {
                prizeNameText.text = param1;
                return;
            }// end function
            , "prizeNameText.text");
            result[7] = binding;
            return result;
        }// end function

        public function set goldMaterialIconVisible(param1:Boolean) : void
        {
            var _loc_2:* = this._2081751442goldMaterialIconVisible;
            if (_loc_2 !== param1)
            {
                this._2081751442goldMaterialIconVisible = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "goldMaterialIconVisible", _loc_2, param1));
            }
            return;
        }// end function

        private function get _description() : String
        {
            return this._1948377661_description;
        }// end function

        public function get goldMaterialIconVisible() : Boolean
        {
            return this._2081751442goldMaterialIconVisible;
        }// end function

        public function get goldMaterialIcon() : Image
        {
            return this._1203802432goldMaterialIcon;
        }// end function

        public function set fireMaterialIcon(param1:Image) : void
        {
            var _loc_2:* = this._180431978fireMaterialIcon;
            if (_loc_2 !== param1)
            {
                this._180431978fireMaterialIcon = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "fireMaterialIcon", _loc_2, param1));
            }
            return;
        }// end function

        private function get _prizeName() : String
        {
            return this._1338590270_prizeName;
        }// end function

        public function get plantMaterialIcon() : Image
        {
            return this._743837771plantMaterialIcon;
        }// end function

        public function set plantMaterialIconVisible(param1:Boolean) : void
        {
            var _loc_2:* = this._1740283303plantMaterialIconVisible;
            if (_loc_2 !== param1)
            {
                this._1740283303plantMaterialIconVisible = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "plantMaterialIconVisible", _loc_2, param1));
            }
            return;
        }// end function

        public function get descriptionText() : Text
        {
            return this._985849673descriptionText;
        }// end function

        private function _GalleryDetail_bindingExprs() : void
        {
            var _loc_1:* = undefined;
            _loc_1 = _swf;
            _loc_1 = fireMaterialIconVisible;
            _loc_1 = earthMaterialIconVisible;
            _loc_1 = waterMaterialIconVisible;
            _loc_1 = goldMaterialIconVisible;
            _loc_1 = plantMaterialIconVisible;
            _loc_1 = _description;
            _loc_1 = _prizeName;
            return;
        }// end function

        public function set earthMaterialIconVisible(param1:Boolean) : void
        {
            var _loc_2:* = this._1033306776earthMaterialIconVisible;
            if (_loc_2 !== param1)
            {
                this._1033306776earthMaterialIconVisible = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "earthMaterialIconVisible", _loc_2, param1));
            }
            return;
        }// end function

        public function setDetailFrame(param1:String) : void
        {
            MovieClip(Loader(_swf.getChildAt(0)).content).gotoAndPlay("id_" + param1);
            return;
        }// end function

        private function showItemName(event:Event) : void
        {
            Loader(_swf.getChildAt(0)).content.removeEventListener("ANIMATION_END", showItemName);
            return;
        }// end function

        private function get _swf() : MovieClipLoaderAsset
        {
            return this._2944451_swf;
        }// end function

        public function get earthMaterialIconVisible() : Boolean
        {
            return this._1033306776earthMaterialIconVisible;
        }// end function

        public function set waterMaterialIcon(param1:Image) : void
        {
            var _loc_2:* = this._1926407945waterMaterialIcon;
            if (_loc_2 !== param1)
            {
                this._1926407945waterMaterialIcon = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "waterMaterialIcon", _loc_2, param1));
            }
            return;
        }// end function

        public function get waterMaterialIcon() : Image
        {
            return this._1926407945waterMaterialIcon;
        }// end function

        public function set fireMaterialIconVisible(param1:Boolean) : void
        {
            var _loc_2:* = this._1039704060fireMaterialIconVisible;
            if (_loc_2 !== param1)
            {
                this._1039704060fireMaterialIconVisible = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "fireMaterialIconVisible", _loc_2, param1));
            }
            return;
        }// end function

        private function set _description(param1:String) : void
        {
            var _loc_2:* = this._1948377661_description;
            if (_loc_2 !== param1)
            {
                this._1948377661_description = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "_description", _loc_2, param1));
            }
            return;
        }// end function

        public function get waterMaterialIconVisible() : Boolean
        {
            return this._689144965waterMaterialIconVisible;
        }// end function

        private function set _prizeName(param1:String) : void
        {
            var _loc_2:* = this._1338590270_prizeName;
            if (_loc_2 !== param1)
            {
                this._1338590270_prizeName = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "_prizeName", _loc_2, param1));
            }
            return;
        }// end function

        public function set waterMaterialIconVisible(param1:Boolean) : void
        {
            var _loc_2:* = this._689144965waterMaterialIconVisible;
            if (_loc_2 !== param1)
            {
                this._689144965waterMaterialIconVisible = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "waterMaterialIconVisible", _loc_2, param1));
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
