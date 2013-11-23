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

    public class CeremonyTypeSelectWindow extends PopupWindow implements IBindingClient
    {
        private var _embed_mxml__swf_home_ceremony_button_ceremony_be_united_50_swf_369708091:Class;
        public var _CeremonyTypeSelectWindow_Image4:Image;
        var _watchers:Array;
        private var _449066429tutMarkUnionVisible:Boolean = false;
        private var _embed_mxml__swf_common_arrow_top_swf_788233961:Class;
        private var _1555690774tutMarkSummonShikihime:Image;
        public var _CeremonyTypeSelectWindow_TextArea1:TextArea;
        public var _CeremonyTypeSelectWindow_TextArea2:TextArea;
        private var _639853391tutMarkSummonVisible:Boolean = false;
        var _bindingsByDestination:Object;
        public var _CeremonyTypeSelectWindow_Text1:Text;
        public var _CeremonyTypeSelectWindow_Text2:Text;
        public var _CeremonyTypeSelectWindow_Text3:Text;
        public var _CeremonyTypeSelectWindow_Text4:Text;
        public var _CeremonyTypeSelectWindow_Text5:Text;
        private var _embed_mxml__swf_home_ceremony_button_ceremony_ascension_50_swf_269534171:Class;
        private var _1193840764_swf_close:MovieClipLoaderAsset;
        var _bindingsBeginWithWord:Object;
        var _bindings:Array;
        private var _embed_mxml__swf_home_ceremony_button_ceremony_summon_nomal_50_swf_1080482551:Class;
        private var _documentDescriptor_:UIComponentDescriptor;
        private var _1401953276tutMarkUnionShikihime:Image;
        public static const SUMMON_CEREMONY:String = NAME + "summonCeremony";
        public static const CLOSE_CEREMONY:String = NAME + "closeCeremony";
        public static const NAME:String = "CeremonyTypeSelectWindow";
        public static const SACRIFICE_CEREMONY:String = NAME + "sacrificeCeremony";
        private static var _watcherSetupUtil:IWatcherSetupUtil;
        public static const UNION_CEREMONY:String = NAME + "unionCeremony";

        public function CeremonyTypeSelectWindow()
        {
            _documentDescriptor_ = new UIComponentDescriptor({type:PopupWindow, propertiesFactory:function () : Object
            {
                return {childDescriptors:[new UIComponentDescriptor({type:Canvas, propertiesFactory:function () : Object
                {
                    return {childDescriptors:[new UIComponentDescriptor({type:Text, id:"_CeremonyTypeSelectWindow_Text1", propertiesFactory:function () : Object
                    {
                        return {x:350, y:302, styleName:"PanelBaseTitle"};
                    }// end function
                    }), new UIComponentDescriptor({type:Image, events:{click:"___CeremonyTypeSelectWindow_Image1_click"}, propertiesFactory:function () : Object
                    {
                        return {source:_embed_mxml__swf_home_ceremony_button_ceremony_summon_nomal_50_swf_1080482551, x:180, y:360};
                    }// end function
                    }), new UIComponentDescriptor({type:Text, id:"_CeremonyTypeSelectWindow_Text2", propertiesFactory:function () : Object
                    {
                        return {x:175, y:410, styleName:"BuildingName"};
                    }// end function
                    }), new UIComponentDescriptor({type:TextArea, id:"_CeremonyTypeSelectWindow_TextArea1", stylesFactory:function () : void
                    {
                        this.fontSize = 12;
                        this.backgroundAlpha = 0;
                        this.borderStyle = "none";
                        return;
                    }// end function
                    , propertiesFactory:function () : Object
                    {
                        return {x:155, y:435, width:120, height:60, editable:false};
                    }// end function
                    }), new UIComponentDescriptor({type:Image, events:{click:"___CeremonyTypeSelectWindow_Image2_click"}, propertiesFactory:function () : Object
                    {
                        return {source:_embed_mxml__swf_home_ceremony_button_ceremony_be_united_50_swf_369708091, x:355, y:360};
                    }// end function
                    }), new UIComponentDescriptor({type:Text, id:"_CeremonyTypeSelectWindow_Text3", propertiesFactory:function () : Object
                    {
                        return {x:350, y:410, styleName:"BuildingName"};
                    }// end function
                    }), new UIComponentDescriptor({type:TextArea, id:"_CeremonyTypeSelectWindow_TextArea2", stylesFactory:function () : void
                    {
                        this.fontSize = 12;
                        this.backgroundAlpha = 0;
                        this.borderStyle = "none";
                        return;
                    }// end function
                    , propertiesFactory:function () : Object
                    {
                        return {x:325, y:435, width:120, height:60, editable:false};
                    }// end function
                    }), new UIComponentDescriptor({type:Image, events:{click:"___CeremonyTypeSelectWindow_Image3_click"}, propertiesFactory:function () : Object
                    {
                        return {source:_embed_mxml__swf_home_ceremony_button_ceremony_ascension_50_swf_269534171, x:530, y:360};
                    }// end function
                    }), new UIComponentDescriptor({type:Text, id:"_CeremonyTypeSelectWindow_Text4", propertiesFactory:function () : Object
                    {
                        return {x:525, y:410, styleName:"BuildingName"};
                    }// end function
                    }), new UIComponentDescriptor({type:Text, id:"_CeremonyTypeSelectWindow_Text5", stylesFactory:function () : void
                    {
                        this.fontSize = 12;
                        return;
                    }// end function
                    , propertiesFactory:function () : Object
                    {
                        return {x:495, y:430};
                    }// end function
                    }), new UIComponentDescriptor({type:HBox, propertiesFactory:function () : Object
                    {
                        return {x:325, y:495, childDescriptors:[new UIComponentDescriptor({type:Image, id:"_CeremonyTypeSelectWindow_Image4", events:{click:"___CeremonyTypeSelectWindow_Image4_click"}})]};
                    }// end function
                    }), new UIComponentDescriptor({type:Image, id:"tutMarkSummonShikihime", propertiesFactory:function () : Object
                    {
                        return {source:_embed_mxml__swf_common_arrow_top_swf_788233961, width:75, height:75, y:460, x:185};
                    }// end function
                    }), new UIComponentDescriptor({type:Image, id:"tutMarkUnionShikihime", propertiesFactory:function () : Object
                    {
                        return {source:_embed_mxml__swf_common_arrow_top_swf_788233961, width:75, height:75, y:460, x:360};
                    }// end function
                    })]};
                }// end function
                })]};
            }// end function
            });
            _1193840764_swf_close = new Viking.EmbedSwfButtonCommon();
            _embed_mxml__swf_common_arrow_top_swf_788233961 = CeremonyTypeSelectWindow__embed_mxml__swf_common_arrow_top_swf_788233961;
            _embed_mxml__swf_home_ceremony_button_ceremony_ascension_50_swf_269534171 = CeremonyTypeSelectWindow__embed_mxml__swf_home_ceremony_button_ceremony_ascension_50_swf_269534171;
            _embed_mxml__swf_home_ceremony_button_ceremony_be_united_50_swf_369708091 = CeremonyTypeSelectWindow__embed_mxml__swf_home_ceremony_button_ceremony_be_united_50_swf_369708091;
            _embed_mxml__swf_home_ceremony_button_ceremony_summon_nomal_50_swf_1080482551 = CeremonyTypeSelectWindow__embed_mxml__swf_home_ceremony_button_ceremony_summon_nomal_50_swf_1080482551;
            _bindings = [];
            _watchers = [];
            _bindingsByDestination = {};
            _bindingsBeginWithWord = {};
            mx_internal::_document = this;
            this.addEventListener("creationComplete", ___CeremonyTypeSelectWindow_PopupWindow1_creationComplete);
            return;
        }// end function

        private function summonCeremony() : void
        {
            sendEvent(SUMMON_CEREMONY);
            return;
        }// end function

        public function showTutMarkSummon() : void
        {
            tutMarkSummonVisible = visible;
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

        public function ___CeremonyTypeSelectWindow_PopupWindow1_creationComplete(event:FlexEvent) : void
        {
            addSwf();
            return;
        }// end function

        private function get _swf_close() : MovieClipLoaderAsset
        {
            return this._1193840764_swf_close;
        }// end function

        private function set tutMarkUnionVisible(param1:Boolean) : void
        {
            var _loc_2:* = this._449066429tutMarkUnionVisible;
            if (_loc_2 !== param1)
            {
                this._449066429tutMarkUnionVisible = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "tutMarkUnionVisible", _loc_2, param1));
            }
            return;
        }// end function

        override public function initialize() : void
        {
            var target:CeremonyTypeSelectWindow;
            var watcherSetupUtilClass:Object;
            .mx_internal::setDocumentDescriptor(_documentDescriptor_);
            var bindings:* = _CeremonyTypeSelectWindow_bindingsSetup();
            var watchers:Array;
            target;
            if (_watcherSetupUtil == null)
            {
                watcherSetupUtilClass = getDefinitionByName("_com_kbmj_viking_view_home_CeremonyTypeSelectWindowWatcherSetupUtil");
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

        private function addSwf() : void
        {
            MovieClip(Loader(_swf_close.getChildAt(0)).content).gotoAndPlay("button_close");
            return;
        }// end function

        public function removeTutMarks() : void
        {
            tutMarkSummonVisible = false;
            tutMarkUnionVisible = false;
            return;
        }// end function

        private function finishTutorial() : void
        {
            sendEvent(Viking.HOME_FINISH_TUTORIAL);
            onClose();
            return;
        }// end function

        private function get tutMarkSummonVisible() : Boolean
        {
            return this._639853391tutMarkSummonVisible;
        }// end function

        private function closeCeremony() : void
        {
            sendEvent(CLOSE_CEREMONY);
            return;
        }// end function

        public function ___CeremonyTypeSelectWindow_Image2_click(event:MouseEvent) : void
        {
            unionCeremony();
            return;
        }// end function

        public function ___CeremonyTypeSelectWindow_Image4_click(event:MouseEvent) : void
        {
            closeCeremony();
            return;
        }// end function

        private function _CeremonyTypeSelectWindow_bindingExprs() : void
        {
            var _loc_1:* = undefined;
            _loc_1 = Utils.i18n("ceremonyTypeSelectTitle");
            _loc_1 = Utils.i18n("ceremonyTypeSelectSummon");
            _loc_1 = Utils.i18n("ceremonyTypeSelectSummonDescription");
            _loc_1 = Utils.i18n("ceremonyTypeSelectUnion");
            _loc_1 = Utils.i18n("ceremonyTypeSelectUnionDescription");
            _loc_1 = Utils.i18n("ceremonyTypeSelectAscension");
            _loc_1 = Utils.i18n("ceremonyTypeSelectAscensionDescription");
            _loc_1 = _swf_close;
            _loc_1 = tutMarkSummonVisible;
            _loc_1 = tutMarkUnionVisible;
            return;
        }// end function

        private function sacrificeCeremony() : void
        {
            sendEvent(SACRIFICE_CEREMONY);
            return;
        }// end function

        public function set tutMarkSummonShikihime(param1:Image) : void
        {
            var _loc_2:* = this._1555690774tutMarkSummonShikihime;
            if (_loc_2 !== param1)
            {
                this._1555690774tutMarkSummonShikihime = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "tutMarkSummonShikihime", _loc_2, param1));
            }
            return;
        }// end function

        private function _CeremonyTypeSelectWindow_bindingsSetup() : Array
        {
            var binding:Binding;
            var result:Array;
            binding = new Binding(this, function () : String
            {
                var _loc_1:* = Utils.i18n("ceremonyTypeSelectTitle");
                var _loc_2:* = _loc_1 == undefined ? (null) : (String(_loc_1));
                return _loc_2;
            }// end function
            , function (param1:String) : void
            {
                _CeremonyTypeSelectWindow_Text1.text = param1;
                return;
            }// end function
            , "_CeremonyTypeSelectWindow_Text1.text");
            result[0] = binding;
            binding = new Binding(this, function () : String
            {
                var _loc_1:* = Utils.i18n("ceremonyTypeSelectSummon");
                var _loc_2:* = _loc_1 == undefined ? (null) : (String(_loc_1));
                return _loc_2;
            }// end function
            , function (param1:String) : void
            {
                _CeremonyTypeSelectWindow_Text2.text = param1;
                return;
            }// end function
            , "_CeremonyTypeSelectWindow_Text2.text");
            result[1] = binding;
            binding = new Binding(this, function () : String
            {
                var _loc_1:* = Utils.i18n("ceremonyTypeSelectSummonDescription");
                var _loc_2:* = _loc_1 == undefined ? (null) : (String(_loc_1));
                return _loc_2;
            }// end function
            , function (param1:String) : void
            {
                _CeremonyTypeSelectWindow_TextArea1.text = param1;
                return;
            }// end function
            , "_CeremonyTypeSelectWindow_TextArea1.text");
            result[2] = binding;
            binding = new Binding(this, function () : String
            {
                var _loc_1:* = Utils.i18n("ceremonyTypeSelectUnion");
                var _loc_2:* = _loc_1 == undefined ? (null) : (String(_loc_1));
                return _loc_2;
            }// end function
            , function (param1:String) : void
            {
                _CeremonyTypeSelectWindow_Text3.text = param1;
                return;
            }// end function
            , "_CeremonyTypeSelectWindow_Text3.text");
            result[3] = binding;
            binding = new Binding(this, function () : String
            {
                var _loc_1:* = Utils.i18n("ceremonyTypeSelectUnionDescription");
                var _loc_2:* = _loc_1 == undefined ? (null) : (String(_loc_1));
                return _loc_2;
            }// end function
            , function (param1:String) : void
            {
                _CeremonyTypeSelectWindow_TextArea2.text = param1;
                return;
            }// end function
            , "_CeremonyTypeSelectWindow_TextArea2.text");
            result[4] = binding;
            binding = new Binding(this, function () : String
            {
                var _loc_1:* = Utils.i18n("ceremonyTypeSelectAscension");
                var _loc_2:* = _loc_1 == undefined ? (null) : (String(_loc_1));
                return _loc_2;
            }// end function
            , function (param1:String) : void
            {
                _CeremonyTypeSelectWindow_Text4.text = param1;
                return;
            }// end function
            , "_CeremonyTypeSelectWindow_Text4.text");
            result[5] = binding;
            binding = new Binding(this, function () : String
            {
                var _loc_1:* = Utils.i18n("ceremonyTypeSelectAscensionDescription");
                var _loc_2:* = _loc_1 == undefined ? (null) : (String(_loc_1));
                return _loc_2;
            }// end function
            , function (param1:String) : void
            {
                _CeremonyTypeSelectWindow_Text5.text = param1;
                return;
            }// end function
            , "_CeremonyTypeSelectWindow_Text5.text");
            result[6] = binding;
            binding = new Binding(this, function () : Object
            {
                return _swf_close;
            }// end function
            , function (param1:Object) : void
            {
                _CeremonyTypeSelectWindow_Image4.source = param1;
                return;
            }// end function
            , "_CeremonyTypeSelectWindow_Image4.source");
            result[7] = binding;
            binding = new Binding(this, function () : Boolean
            {
                return tutMarkSummonVisible;
            }// end function
            , function (param1:Boolean) : void
            {
                tutMarkSummonShikihime.visible = param1;
                return;
            }// end function
            , "tutMarkSummonShikihime.visible");
            result[8] = binding;
            binding = new Binding(this, function () : Boolean
            {
                return tutMarkUnionVisible;
            }// end function
            , function (param1:Boolean) : void
            {
                tutMarkUnionShikihime.visible = param1;
                return;
            }// end function
            , "tutMarkUnionShikihime.visible");
            result[9] = binding;
            return result;
        }// end function

        public function showTutMarkUnion() : void
        {
            tutMarkUnionVisible = visible;
            return;
        }// end function

        private function set tutMarkSummonVisible(param1:Boolean) : void
        {
            var _loc_2:* = this._639853391tutMarkSummonVisible;
            if (_loc_2 !== param1)
            {
                this._639853391tutMarkSummonVisible = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "tutMarkSummonVisible", _loc_2, param1));
            }
            return;
        }// end function

        private function get tutMarkUnionVisible() : Boolean
        {
            return this._449066429tutMarkUnionVisible;
        }// end function

        public function get tutMarkSummonShikihime() : Image
        {
            return this._1555690774tutMarkSummonShikihime;
        }// end function

        private function unionCeremony() : void
        {
            sendEvent(UNION_CEREMONY);
            return;
        }// end function

        public function ___CeremonyTypeSelectWindow_Image1_click(event:MouseEvent) : void
        {
            summonCeremony();
            return;
        }// end function

        public function set tutMarkUnionShikihime(param1:Image) : void
        {
            var _loc_2:* = this._1401953276tutMarkUnionShikihime;
            if (_loc_2 !== param1)
            {
                this._1401953276tutMarkUnionShikihime = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "tutMarkUnionShikihime", _loc_2, param1));
            }
            return;
        }// end function

        public function ___CeremonyTypeSelectWindow_Image3_click(event:MouseEvent) : void
        {
            sacrificeCeremony();
            return;
        }// end function

        public function get tutMarkUnionShikihime() : Image
        {
            return this._1401953276tutMarkUnionShikihime;
        }// end function

        public static function set watcherSetupUtil(param1:IWatcherSetupUtil) : void
        {
            CeremonyTypeSelectWindow._watcherSetupUtil = param1;
            return;
        }// end function

    }
}
