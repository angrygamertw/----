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

    public class ItemSummonWindow extends PopupWindow implements IBindingClient
    {
        private var _1825959285itemNameText:Text;
        var _bindingsByDestination:Object;
        private var RouletteBronze:Class;
        var _bindingsBeginWithWord:Object;
        private var Roulette:Class;
        var _watchers:Array;
        private var _1168785754_summonType:String = "";
        private var _1267849629_itemName:String = "";
        private var _2944451_swf:MovieClipLoaderAsset;
        var _bindings:Array;
        private var _documentDescriptor_:UIComponentDescriptor;
        private var _1948940roulette:Image;
        private var _377536829_swfBronze:MovieClipLoaderAsset;
        public static const ITEM_SUMMON_START:String = "itemSummonStart";
        public static const ITEM_SUMMON_END:String = "itemSummonEnd";
        private static var _watcherSetupUtil:IWatcherSetupUtil;

        public function ItemSummonWindow()
        {
            _documentDescriptor_ = new UIComponentDescriptor({type:PopupWindow, propertiesFactory:function () : Object
            {
                return {childDescriptors:[new UIComponentDescriptor({type:Image, id:"roulette"}), new UIComponentDescriptor({type:Text, id:"itemNameText", stylesFactory:function () : void
                {
                    this.textAlign = "right";
                    this.fontSize = 18;
                    this.color = 16711680;
                    return;
                }// end function
                , propertiesFactory:function () : Object
                {
                    return {x:60, y:257, visible:false, width:300, height:30};
                }// end function
                })]};
            }// end function
            });
            Roulette = ItemSummonWindow_Roulette;
            RouletteBronze = ItemSummonWindow_RouletteBronze;
            _2944451_swf = new Roulette();
            _377536829_swfBronze = new RouletteBronze();
            _bindings = [];
            _watchers = [];
            _bindingsByDestination = {};
            _bindingsBeginWithWord = {};
            mx_internal::_document = this;
            this.addEventListener("creationComplete", ___ItemSummonWindow_PopupWindow1_creationComplete);
            return;
        }// end function

        private function set _swfBronze(param1:MovieClipLoaderAsset) : void
        {
            var _loc_2:* = this._377536829_swfBronze;
            if (_loc_2 !== param1)
            {
                this._377536829_swfBronze = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "_swfBronze", _loc_2, param1));
            }
            return;
        }// end function

        public function get roulette() : Image
        {
            return this._1948940roulette;
        }// end function

        private function closeWindow(event:Event = null) : void
        {
            Loader(_swf.getChildAt(0)).content.removeEventListener("BUTTON_AGAIN", drawItem);
            Loader(_swf.getChildAt(0)).content.removeEventListener("BUTTON_CLOSE", closeWindow);
            Loader(_swfBronze.getChildAt(0)).content.removeEventListener("BUTTON_AGAIN", drawItem);
            Loader(_swfBronze.getChildAt(0)).content.removeEventListener("BUTTON_CLOSE", closeWindow);
            dispatchEvent(new Event(ITEM_SUMMON_END));
            onClose();
            return;
        }// end function

        private function set _itemName(param1:String) : void
        {
            var _loc_2:* = this._1267849629_itemName;
            if (_loc_2 !== param1)
            {
                this._1267849629_itemName = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "_itemName", _loc_2, param1));
            }
            return;
        }// end function

        public function get itemNameText() : Text
        {
            return this._1825959285itemNameText;
        }// end function

        private function finishDrawAnimation(event:Event) : void
        {
            Loader(roulette.source.getChildAt(0)).content.removeEventListener("ANIMATION_END", finishDrawAnimation);
            itemNameText.visible = true;
            MovieClip(Loader(roulette.source.getChildAt(0)).content).gotoAndPlay("window_item_present");
            return;
        }// end function

        override public function initialize() : void
        {
            var target:ItemSummonWindow;
            var watcherSetupUtilClass:Object;
            .mx_internal::setDocumentDescriptor(_documentDescriptor_);
            var bindings:* = _ItemSummonWindow_bindingsSetup();
            var watchers:Array;
            target;
            if (_watcherSetupUtil == null)
            {
                watcherSetupUtilClass = getDefinitionByName("_com_kbmj_viking_view_home_ItemSummonWindowWatcherSetupUtil");
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

        private function initSwf() : void
        {
            itemNameText.visible = false;
            Loader(_swf.getChildAt(0)).content.addEventListener("BUTTON_AGAIN", drawItem);
            Loader(_swf.getChildAt(0)).content.addEventListener("BUTTON_CLOSE", closeWindow);
            Loader(_swfBronze.getChildAt(0)).content.addEventListener("BUTTON_AGAIN", drawItem);
            Loader(_swfBronze.getChildAt(0)).content.addEventListener("BUTTON_CLOSE", closeWindow);
            return;
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

        public function set itemNameText(param1:Text) : void
        {
            var _loc_2:* = this._1825959285itemNameText;
            if (_loc_2 !== param1)
            {
                this._1825959285itemNameText = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "itemNameText", _loc_2, param1));
            }
            return;
        }// end function

        private function startDrawAnimation() : void
        {
            if (_summonType == "gold")
            {
                roulette.source = _swfBronze;
            }
            else
            {
                roulette.source = _swf;
            }
            initSwf();
            MovieClip(Loader(roulette.source.getChildAt(0)).content).gotoAndPlay("window_start");
            Loader(roulette.source.getChildAt(0)).content.addEventListener("ANIMATION_END", finishDrawAnimation);
            return;
        }// end function

        private function get _itemName() : String
        {
            return this._1267849629_itemName;
        }// end function

        private function get _swf() : MovieClipLoaderAsset
        {
            return this._2944451_swf;
        }// end function

        public function ___ItemSummonWindow_PopupWindow1_creationComplete(event:FlexEvent) : void
        {
            initSwf();
            return;
        }// end function

        private function set _summonType(param1:String) : void
        {
            var _loc_2:* = this._1168785754_summonType;
            if (_loc_2 !== param1)
            {
                this._1168785754_summonType = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "_summonType", _loc_2, param1));
            }
            return;
        }// end function

        private function get _summonType() : String
        {
            return this._1168785754_summonType;
        }// end function

        public function set roulette(param1:Image) : void
        {
            var _loc_2:* = this._1948940roulette;
            if (_loc_2 !== param1)
            {
                this._1948940roulette = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "roulette", _loc_2, param1));
            }
            return;
        }// end function

        private function _ItemSummonWindow_bindingExprs() : void
        {
            var _loc_1:* = undefined;
            _loc_1 = _swf;
            _loc_1 = _itemName;
            return;
        }// end function

        private function drawItem(event:Event = null) : void
        {
            sendPopupEvent(ITEM_SUMMON_START, _summonType);
            return;
        }// end function

        public function setDrawItem(param1:Object) : void
        {
            _itemName = param1 ? (param1.item_name) : ("");
            _summonType = param1 ? (param1.summon_type) : ("ticket");
            startDrawAnimation();
            return;
        }// end function

        private function _ItemSummonWindow_bindingsSetup() : Array
        {
            var binding:Binding;
            var result:Array;
            binding = new Binding(this, function () : Object
            {
                return _swf;
            }// end function
            , function (param1:Object) : void
            {
                roulette.source = param1;
                return;
            }// end function
            , "roulette.source");
            result[0] = binding;
            binding = new Binding(this, function () : String
            {
                var _loc_1:* = _itemName;
                var _loc_2:* = _loc_1 == undefined ? (null) : (String(_loc_1));
                return _loc_2;
            }// end function
            , function (param1:String) : void
            {
                itemNameText.text = param1;
                return;
            }// end function
            , "itemNameText.text");
            result[1] = binding;
            return result;
        }// end function

        private function get _swfBronze() : MovieClipLoaderAsset
        {
            return this._377536829_swfBronze;
        }// end function

        public static function set watcherSetupUtil(param1:IWatcherSetupUtil) : void
        {
            _watcherSetupUtil = param1;
            return;
        }// end function

    }
}
