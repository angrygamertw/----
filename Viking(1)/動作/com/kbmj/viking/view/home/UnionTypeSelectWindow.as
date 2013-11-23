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

    public class UnionTypeSelectWindow extends PopupWindow implements IBindingClient
    {
        public var _UnionTypeSelectWindow_Image2:Image;
        public var _UnionTypeSelectWindow_Image3:Image;
        public var _UnionTypeSelectWindow_Image5:Image;
        var _watchers:Array;
        public var _UnionTypeSelectWindow_TextArea1:TextArea;
        public var _UnionTypeSelectWindow_TextArea2:TextArea;
        private var _embed_mxml__swf_home_ceremony_button_ceremony_be_united_off_50_swf_1082252581:Class;
        private var _embed_mxml__swf_common_arrow_top_swf_788233961:Class;
        public var _UnionTypeSelectWindow_TextArea3:TextArea;
        private var _1510524984canNormalUnion:Boolean = true;
        public var _UnionTypeSelectWindow_Text1:Text;
        public var _UnionTypeSelectWindow_Text2:Text;
        public var _UnionTypeSelectWindow_Text3:Text;
        public var _UnionTypeSelectWindow_Text4:Text;
        private var _embed_mxml__swf_home_ceremony_button_ceremony_recipe_50_swf_1575807643:Class;
        private var _1148953756tutMarkRecipeVisible:Boolean = false;
        var _bindingsByDestination:Object;
        private var _embed_mxml__swf_home_ceremony_button_ceremony_united_awake_50_swf_542548247:Class;
        var _bindingsBeginWithWord:Object;
        private var _158914113tutMarkRecipeUnion:Image;
        private var _1193840764_swf_close:MovieClipLoaderAsset;
        var _bindings:Array;
        private var _documentDescriptor_:UIComponentDescriptor;
        private var _embed_mxml__swf_home_ceremony_button_ceremony_be_united_50_swf_369708091:Class;
        private var _711325835normalUnionText:String = "";
        public static const UNION_TYPE_RECIPE:String = NAME + "unionTypeRecipe";
        private static var _watcherSetupUtil:IWatcherSetupUtil;
        public static const UNION_END:String = NAME + "unionEnd";
        public static const UNION_TYPE_AWAKE:String = NAME + "unionTypeAwake";
        public static const NAME:String = "unionTypeSelectWindow";
        public static const UNION_TYPE_NORMAL:String = NAME + "unionTypeNormal";

        public function UnionTypeSelectWindow()
        {
            _documentDescriptor_ = new UIComponentDescriptor({type:PopupWindow, propertiesFactory:function () : Object
            {
                return {childDescriptors:[new UIComponentDescriptor({type:Canvas, propertiesFactory:function () : Object
                {
                    return {childDescriptors:[new UIComponentDescriptor({type:Text, id:"_UnionTypeSelectWindow_Text1", propertiesFactory:function () : Object
                    {
                        return {x:340, y:302, styleName:"PanelBaseTitle"};
                    }// end function
                    }), new UIComponentDescriptor({type:Image, events:{click:"___UnionTypeSelectWindow_Image1_click"}, propertiesFactory:function () : Object
                    {
                        return {source:_embed_mxml__swf_home_ceremony_button_ceremony_recipe_50_swf_1575807643, x:185, y:360};
                    }// end function
                    }), new UIComponentDescriptor({type:Text, id:"_UnionTypeSelectWindow_Text2", propertiesFactory:function () : Object
                    {
                        return {x:170, y:415, styleName:"BuildingName"};
                    }// end function
                    }), new UIComponentDescriptor({type:TextArea, id:"_UnionTypeSelectWindow_TextArea1", stylesFactory:function () : void
                    {
                        this.fontSize = 12;
                        this.backgroundAlpha = 0;
                        this.borderStyle = "none";
                        return;
                    }// end function
                    , propertiesFactory:function () : Object
                    {
                        return {x:160, y:435, width:110, height:60, editable:false};
                    }// end function
                    }), new UIComponentDescriptor({type:Image, id:"_UnionTypeSelectWindow_Image2", events:{click:"___UnionTypeSelectWindow_Image2_click"}, propertiesFactory:function () : Object
                    {
                        return {source:_embed_mxml__swf_home_ceremony_button_ceremony_be_united_50_swf_369708091, x:350, y:360};
                    }// end function
                    }), new UIComponentDescriptor({type:Image, id:"_UnionTypeSelectWindow_Image3", propertiesFactory:function () : Object
                    {
                        return {source:_embed_mxml__swf_home_ceremony_button_ceremony_be_united_off_50_swf_1082252581, x:350, y:360};
                    }// end function
                    }), new UIComponentDescriptor({type:Text, id:"_UnionTypeSelectWindow_Text3", propertiesFactory:function () : Object
                    {
                        return {x:350, y:415, styleName:"BuildingName"};
                    }// end function
                    }), new UIComponentDescriptor({type:TextArea, id:"_UnionTypeSelectWindow_TextArea2", stylesFactory:function () : void
                    {
                        this.fontSize = 12;
                        this.backgroundAlpha = 0;
                        this.borderStyle = "none";
                        return;
                    }// end function
                    , propertiesFactory:function () : Object
                    {
                        return {x:330, y:435, width:110, height:60, editable:false};
                    }// end function
                    }), new UIComponentDescriptor({type:Image, events:{click:"___UnionTypeSelectWindow_Image4_click"}, propertiesFactory:function () : Object
                    {
                        return {source:_embed_mxml__swf_home_ceremony_button_ceremony_united_awake_50_swf_542548247, x:510, y:360};
                    }// end function
                    }), new UIComponentDescriptor({type:Text, id:"_UnionTypeSelectWindow_Text4", propertiesFactory:function () : Object
                    {
                        return {x:510, y:415, styleName:"BuildingName"};
                    }// end function
                    }), new UIComponentDescriptor({type:TextArea, id:"_UnionTypeSelectWindow_TextArea3", stylesFactory:function () : void
                    {
                        this.fontSize = 12;
                        this.backgroundAlpha = 0;
                        this.borderStyle = "none";
                        return;
                    }// end function
                    , propertiesFactory:function () : Object
                    {
                        return {x:490, y:435, width:110, height:60, editable:false};
                    }// end function
                    }), new UIComponentDescriptor({type:HBox, propertiesFactory:function () : Object
                    {
                        return {width:100, x:325, y:495, childDescriptors:[new UIComponentDescriptor({type:Image, id:"_UnionTypeSelectWindow_Image5", events:{click:"___UnionTypeSelectWindow_Image5_click"}})]};
                    }// end function
                    })]};
                }// end function
                }), new UIComponentDescriptor({type:Image, id:"tutMarkRecipeUnion", propertiesFactory:function () : Object
                {
                    return {source:_embed_mxml__swf_common_arrow_top_swf_788233961, width:75, height:75, y:460, x:250};
                }// end function
                })]};
            }// end function
            });
            _1193840764_swf_close = new Viking.EmbedSwfButtonCommon();
            _embed_mxml__swf_common_arrow_top_swf_788233961 = UnionTypeSelectWindow__embed_mxml__swf_common_arrow_top_swf_788233961;
            _embed_mxml__swf_home_ceremony_button_ceremony_be_united_50_swf_369708091 = UnionTypeSelectWindow__embed_mxml__swf_home_ceremony_button_ceremony_be_united_50_swf_369708091;
            _embed_mxml__swf_home_ceremony_button_ceremony_be_united_off_50_swf_1082252581 = UnionTypeSelectWindow__embed_mxml__swf_home_ceremony_button_ceremony_be_united_off_50_swf_1082252581;
            _embed_mxml__swf_home_ceremony_button_ceremony_recipe_50_swf_1575807643 = UnionTypeSelectWindow__embed_mxml__swf_home_ceremony_button_ceremony_recipe_50_swf_1575807643;
            _embed_mxml__swf_home_ceremony_button_ceremony_united_awake_50_swf_542548247 = UnionTypeSelectWindow__embed_mxml__swf_home_ceremony_button_ceremony_united_awake_50_swf_542548247;
            _bindings = [];
            _watchers = [];
            _bindingsByDestination = {};
            _bindingsBeginWithWord = {};
            mx_internal::_document = this;
            this.addEventListener("creationComplete", ___UnionTypeSelectWindow_PopupWindow1_creationComplete);
            return;
        }// end function

        private function set canNormalUnion(param1:Boolean) : void
        {
            var _loc_2:* = this._1510524984canNormalUnion;
            if (_loc_2 !== param1)
            {
                this._1510524984canNormalUnion = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "canNormalUnion", _loc_2, param1));
            }
            return;
        }// end function

        private function _UnionTypeSelectWindow_bindingExprs() : void
        {
            var _loc_1:* = undefined;
            _loc_1 = Utils.i18n("unionTypeSelectTitle");
            _loc_1 = Utils.i18n("recipeUnionTitle");
            _loc_1 = Utils.i18n("unionTypeSelectRecipeUnionConf");
            _loc_1 = canNormalUnion;
            _loc_1 = !canNormalUnion;
            _loc_1 = Utils.i18n("normalUnionTitle");
            _loc_1 = normalUnionText;
            _loc_1 = Utils.i18n("awakeUnionTitle");
            _loc_1 = Utils.i18n("awakeUnionInfo");
            _loc_1 = _swf_close;
            _loc_1 = tutMarkRecipeVisible;
            return;
        }// end function

        private function get _swf_close() : MovieClipLoaderAsset
        {
            return this._1193840764_swf_close;
        }// end function

        override public function initialize() : void
        {
            var target:UnionTypeSelectWindow;
            var watcherSetupUtilClass:Object;
            .mx_internal::setDocumentDescriptor(_documentDescriptor_);
            var bindings:* = _UnionTypeSelectWindow_bindingsSetup();
            var watchers:Array;
            target;
            if (_watcherSetupUtil == null)
            {
                watcherSetupUtilClass = getDefinitionByName("_com_kbmj_viking_view_home_UnionTypeSelectWindowWatcherSetupUtil");
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

        public function removeTutMarks() : void
        {
            tutMarkRecipeVisible = false;
            return;
        }// end function

        private function addSwf() : void
        {
            MovieClip(Loader(_swf_close.getChildAt(0)).content).gotoAndPlay("button_back");
            return;
        }// end function

        public function set tutMarkRecipeUnion(param1:Image) : void
        {
            var _loc_2:* = this._158914113tutMarkRecipeUnion;
            if (_loc_2 !== param1)
            {
                this._158914113tutMarkRecipeUnion = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "tutMarkRecipeUnion", _loc_2, param1));
            }
            return;
        }// end function

        public function showTutMarkUnionType() : void
        {
            tutMarkRecipeVisible = visible;
            return;
        }// end function

        public function init(param1:int) : void
        {
            normalUnionText = Utils.i18n("unionTypeSelectConf");
            canNormalUnion = true;
            if (param1 < 2)
            {
                canNormalUnion = false;
                normalUnionText = Utils.i18n("unionTypeSelectCanNotUse");
            }
            return;
        }// end function

        public function ___UnionTypeSelectWindow_Image2_click(event:MouseEvent) : void
        {
            sendEvent(UNION_TYPE_NORMAL);
            return;
        }// end function

        public function ___UnionTypeSelectWindow_Image4_click(event:MouseEvent) : void
        {
            sendEvent(UNION_TYPE_AWAKE);
            return;
        }// end function

        public function ___UnionTypeSelectWindow_PopupWindow1_creationComplete(event:FlexEvent) : void
        {
            addSwf();
            return;
        }// end function

        private function get canNormalUnion() : Boolean
        {
            return this._1510524984canNormalUnion;
        }// end function

        private function _UnionTypeSelectWindow_bindingsSetup() : Array
        {
            var binding:Binding;
            var result:Array;
            binding = new Binding(this, function () : String
            {
                var _loc_1:* = Utils.i18n("unionTypeSelectTitle");
                var _loc_2:* = _loc_1 == undefined ? (null) : (String(_loc_1));
                return _loc_2;
            }// end function
            , function (param1:String) : void
            {
                _UnionTypeSelectWindow_Text1.text = param1;
                return;
            }// end function
            , "_UnionTypeSelectWindow_Text1.text");
            result[0] = binding;
            binding = new Binding(this, function () : String
            {
                var _loc_1:* = Utils.i18n("recipeUnionTitle");
                var _loc_2:* = _loc_1 == undefined ? (null) : (String(_loc_1));
                return _loc_2;
            }// end function
            , function (param1:String) : void
            {
                _UnionTypeSelectWindow_Text2.text = param1;
                return;
            }// end function
            , "_UnionTypeSelectWindow_Text2.text");
            result[1] = binding;
            binding = new Binding(this, function () : String
            {
                var _loc_1:* = Utils.i18n("unionTypeSelectRecipeUnionConf");
                var _loc_2:* = _loc_1 == undefined ? (null) : (String(_loc_1));
                return _loc_2;
            }// end function
            , function (param1:String) : void
            {
                _UnionTypeSelectWindow_TextArea1.text = param1;
                return;
            }// end function
            , "_UnionTypeSelectWindow_TextArea1.text");
            result[2] = binding;
            binding = new Binding(this, function () : Boolean
            {
                return canNormalUnion;
            }// end function
            , function (param1:Boolean) : void
            {
                _UnionTypeSelectWindow_Image2.visible = param1;
                return;
            }// end function
            , "_UnionTypeSelectWindow_Image2.visible");
            result[3] = binding;
            binding = new Binding(this, function () : Boolean
            {
                return !canNormalUnion;
            }// end function
            , function (param1:Boolean) : void
            {
                _UnionTypeSelectWindow_Image3.visible = param1;
                return;
            }// end function
            , "_UnionTypeSelectWindow_Image3.visible");
            result[4] = binding;
            binding = new Binding(this, function () : String
            {
                var _loc_1:* = Utils.i18n("normalUnionTitle");
                var _loc_2:* = _loc_1 == undefined ? (null) : (String(_loc_1));
                return _loc_2;
            }// end function
            , function (param1:String) : void
            {
                _UnionTypeSelectWindow_Text3.text = param1;
                return;
            }// end function
            , "_UnionTypeSelectWindow_Text3.text");
            result[5] = binding;
            binding = new Binding(this, function () : String
            {
                var _loc_1:* = normalUnionText;
                var _loc_2:* = _loc_1 == undefined ? (null) : (String(_loc_1));
                return _loc_2;
            }// end function
            , function (param1:String) : void
            {
                _UnionTypeSelectWindow_TextArea2.text = param1;
                return;
            }// end function
            , "_UnionTypeSelectWindow_TextArea2.text");
            result[6] = binding;
            binding = new Binding(this, function () : String
            {
                var _loc_1:* = Utils.i18n("awakeUnionTitle");
                var _loc_2:* = _loc_1 == undefined ? (null) : (String(_loc_1));
                return _loc_2;
            }// end function
            , function (param1:String) : void
            {
                _UnionTypeSelectWindow_Text4.text = param1;
                return;
            }// end function
            , "_UnionTypeSelectWindow_Text4.text");
            result[7] = binding;
            binding = new Binding(this, function () : String
            {
                var _loc_1:* = Utils.i18n("awakeUnionInfo");
                var _loc_2:* = _loc_1 == undefined ? (null) : (String(_loc_1));
                return _loc_2;
            }// end function
            , function (param1:String) : void
            {
                _UnionTypeSelectWindow_TextArea3.text = param1;
                return;
            }// end function
            , "_UnionTypeSelectWindow_TextArea3.text");
            result[8] = binding;
            binding = new Binding(this, function () : Object
            {
                return _swf_close;
            }// end function
            , function (param1:Object) : void
            {
                _UnionTypeSelectWindow_Image5.source = param1;
                return;
            }// end function
            , "_UnionTypeSelectWindow_Image5.source");
            result[9] = binding;
            binding = new Binding(this, function () : Boolean
            {
                return tutMarkRecipeVisible;
            }// end function
            , function (param1:Boolean) : void
            {
                tutMarkRecipeUnion.visible = param1;
                return;
            }// end function
            , "tutMarkRecipeUnion.visible");
            result[10] = binding;
            return result;
        }// end function

        private function set tutMarkRecipeVisible(param1:Boolean) : void
        {
            var _loc_2:* = this._1148953756tutMarkRecipeVisible;
            if (_loc_2 !== param1)
            {
                this._1148953756tutMarkRecipeVisible = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "tutMarkRecipeVisible", _loc_2, param1));
            }
            return;
        }// end function

        public function get tutMarkRecipeUnion() : Image
        {
            return this._158914113tutMarkRecipeUnion;
        }// end function

        private function get tutMarkRecipeVisible() : Boolean
        {
            return this._1148953756tutMarkRecipeVisible;
        }// end function

        public function ___UnionTypeSelectWindow_Image1_click(event:MouseEvent) : void
        {
            sendEvent(UNION_TYPE_RECIPE);
            return;
        }// end function

        private function set normalUnionText(param1:String) : void
        {
            var _loc_2:* = this._711325835normalUnionText;
            if (_loc_2 !== param1)
            {
                this._711325835normalUnionText = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "normalUnionText", _loc_2, param1));
            }
            return;
        }// end function

        public function ___UnionTypeSelectWindow_Image5_click(event:MouseEvent) : void
        {
            sendEvent(UNION_END);
            return;
        }// end function

        private function get normalUnionText() : String
        {
            return this._711325835normalUnionText;
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
            UnionTypeSelectWindow._watcherSetupUtil = param1;
            return;
        }// end function

    }
}
