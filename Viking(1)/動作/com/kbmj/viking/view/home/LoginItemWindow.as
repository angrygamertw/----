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

    public class LoginItemWindow extends PopupWindow implements IBindingClient
    {
        public var _LoginItemWindow_Image1:Image;
        private var _953110138remainingCountText:Text;
        var _watchers:Array;
        private var _1331461665consecutiveLoginItemText:Text;
        private var _1641788370okButton:Image;
        private var _1665809106_swf_button:MovieClipLoaderAsset;
        private var EmbedSwfWindowCommon:Class;
        private var _653941256consecutiveOkButton:Image;
        var _bindingsBeginWithWord:Object;
        private var _1825959285itemNameText:Text;
        var _bindingsByDestination:Object;
        private var _327232252_remainingCountLabel:String = "";
        private var _1267849629_itemName:String = "";
        private var _1098036580_consecutiveLoginItemName:String = "";
        private var _529836701_swf_consecutive_button:MovieClipLoaderAsset;
        private var _2944451_swf:MovieClipLoaderAsset;
        var _bindings:Array;
        private var _documentDescriptor_:UIComponentDescriptor;
        public static const LOGIN_ANIMATION_END:String = "loginAnimationEnd";
        private static var _watcherSetupUtil:IWatcherSetupUtil;

        public function LoginItemWindow()
        {
            _documentDescriptor_ = new UIComponentDescriptor({type:PopupWindow, propertiesFactory:function () : Object
            {
                return {childDescriptors:[new UIComponentDescriptor({type:Image, id:"_LoginItemWindow_Image1"}), new UIComponentDescriptor({type:Text, id:"itemNameText", stylesFactory:function () : void
                {
                    this.textAlign = "center";
                    this.fontSize = 18;
                    this.color = 16711680;
                    return;
                }// end function
                , propertiesFactory:function () : Object
                {
                    return {x:225, y:185, visible:false, width:300, height:30};
                }// end function
                }), new UIComponentDescriptor({type:Image, id:"okButton", events:{click:"__okButton_click"}, propertiesFactory:function () : Object
                {
                    return {x:320, y:305, visible:false};
                }// end function
                }), new UIComponentDescriptor({type:Text, id:"consecutiveLoginItemText", stylesFactory:function () : void
                {
                    this.textAlign = "center";
                    this.fontSize = 18;
                    this.color = 16711680;
                    return;
                }// end function
                , propertiesFactory:function () : Object
                {
                    return {x:108, y:265, visible:false, width:300, height:30};
                }// end function
                }), new UIComponentDescriptor({type:Text, id:"remainingCountText", stylesFactory:function () : void
                {
                    this.textAlign = "center";
                    this.fontSize = 18;
                    this.color = 16711680;
                    return;
                }// end function
                , propertiesFactory:function () : Object
                {
                    return {x:245, y:240, visible:false, width:300, height:30};
                }// end function
                }), new UIComponentDescriptor({type:Image, id:"consecutiveOkButton", events:{click:"__consecutiveOkButton_click"}, propertiesFactory:function () : Object
                {
                    return {x:320, y:305, visible:false};
                }// end function
                })]};
            }// end function
            });
            EmbedSwfWindowCommon = LoginItemWindow_EmbedSwfWindowCommon;
            _2944451_swf = new EmbedSwfWindowCommon();
            _1665809106_swf_button = new Viking.EmbedSwfButtonCommon();
            _529836701_swf_consecutive_button = new Viking.EmbedSwfButtonCommon();
            _bindings = [];
            _watchers = [];
            _bindingsByDestination = {};
            _bindingsBeginWithWord = {};
            mx_internal::_document = this;
            this.addEventListener("creationComplete", ___LoginItemWindow_PopupWindow1_creationComplete);
            return;
        }// end function

        public function setDrawItem(param1:Object) : void
        {
            if (param1.name)
            {
                _itemName = param1.name;
            }
            return;
        }// end function

        private function get _remainingCountLabel() : String
        {
            return this._327232252_remainingCountLabel;
        }// end function

        public function get remainingCountText() : Text
        {
            return this._953110138remainingCountText;
        }// end function

        public function closeWindow() : void
        {
            dispatchEvent(new Event(LOGIN_ANIMATION_END));
            onClose();
            return;
        }// end function

        public function get itemNameText() : Text
        {
            return this._1825959285itemNameText;
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

        public function setConsecutiveLoginItem(param1:Object) : void
        {
            if (param1.name)
            {
                _consecutiveLoginItemName = param1.name;
            }
            return;
        }// end function

        private function showRemainingCount() : void
        {
            consecutiveOkButton.visible = true;
            remainingCountText.visible = true;
            MovieClip(Loader(_swf.getChildAt(0)).content).gotoAndPlay("window_limited_continue");
            return;
        }// end function

        public function __okButton_click(event:MouseEvent) : void
        {
            showConsecutiveLogin();
            return;
        }// end function

        private function get _consecutiveLoginItemName() : String
        {
            return this._1098036580_consecutiveLoginItemName;
        }// end function

        private function _LoginItemWindow_bindingsSetup() : Array
        {
            var binding:Binding;
            var result:Array;
            binding = new Binding(this, function () : Object
            {
                return _swf;
            }// end function
            , function (param1:Object) : void
            {
                _LoginItemWindow_Image1.source = param1;
                return;
            }// end function
            , "_LoginItemWindow_Image1.source");
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
            binding = new Binding(this, function () : Object
            {
                return _swf_button;
            }// end function
            , function (param1:Object) : void
            {
                okButton.source = param1;
                return;
            }// end function
            , "okButton.source");
            result[2] = binding;
            binding = new Binding(this, function () : String
            {
                var _loc_1:* = _consecutiveLoginItemName;
                var _loc_2:* = _loc_1 == undefined ? (null) : (String(_loc_1));
                return _loc_2;
            }// end function
            , function (param1:String) : void
            {
                consecutiveLoginItemText.text = param1;
                return;
            }// end function
            , "consecutiveLoginItemText.text");
            result[3] = binding;
            binding = new Binding(this, function () : String
            {
                var _loc_1:* = _remainingCountLabel;
                var _loc_2:* = _loc_1 == undefined ? (null) : (String(_loc_1));
                return _loc_2;
            }// end function
            , function (param1:String) : void
            {
                remainingCountText.text = param1;
                return;
            }// end function
            , "remainingCountText.text");
            result[4] = binding;
            binding = new Binding(this, function () : Object
            {
                return _swf_consecutive_button;
            }// end function
            , function (param1:Object) : void
            {
                consecutiveOkButton.source = param1;
                return;
            }// end function
            , "consecutiveOkButton.source");
            result[5] = binding;
            return result;
        }// end function

        public function __consecutiveOkButton_click(event:MouseEvent) : void
        {
            closeWindow();
            return;
        }// end function

        override public function initialize() : void
        {
            var target:LoginItemWindow;
            var watcherSetupUtilClass:Object;
            .mx_internal::setDocumentDescriptor(_documentDescriptor_);
            var bindings:* = _LoginItemWindow_bindingsSetup();
            var watchers:Array;
            target;
            if (_watcherSetupUtil == null)
            {
                watcherSetupUtilClass = getDefinitionByName("_com_kbmj_viking_view_home_LoginItemWindowWatcherSetupUtil");
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

        private function showConsecutiveLoginItem() : void
        {
            consecutiveOkButton.visible = true;
            consecutiveLoginItemText.visible = true;
            MovieClip(Loader(_swf.getChildAt(0)).content).gotoAndPlay("window_limited_present");
            return;
        }// end function

        public function init() : void
        {
            if (_itemName)
            {
                startDrawAnimation();
            }
            else
            {
                showConsecutiveLogin();
            }
            return;
        }// end function

        public function set remainingCountText(param1:Text) : void
        {
            var _loc_2:* = this._953110138remainingCountText;
            if (_loc_2 !== param1)
            {
                this._953110138remainingCountText = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "remainingCountText", _loc_2, param1));
            }
            return;
        }// end function

        public function ___LoginItemWindow_PopupWindow1_creationComplete(event:FlexEvent) : void
        {
            init();
            return;
        }// end function

        public function set consecutiveLoginItemText(param1:Text) : void
        {
            var _loc_2:* = this._1331461665consecutiveLoginItemText;
            if (_loc_2 !== param1)
            {
                this._1331461665consecutiveLoginItemText = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "consecutiveLoginItemText", _loc_2, param1));
            }
            return;
        }// end function

        private function get _itemName() : String
        {
            return this._1267849629_itemName;
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

        private function get _swf() : MovieClipLoaderAsset
        {
            return this._2944451_swf;
        }// end function

        private function set _consecutiveLoginItemName(param1:String) : void
        {
            var _loc_2:* = this._1098036580_consecutiveLoginItemName;
            if (_loc_2 !== param1)
            {
                this._1098036580_consecutiveLoginItemName = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "_consecutiveLoginItemName", _loc_2, param1));
            }
            return;
        }// end function

        private function _LoginItemWindow_bindingExprs() : void
        {
            var _loc_1:* = undefined;
            _loc_1 = _swf;
            _loc_1 = _itemName;
            _loc_1 = _swf_button;
            _loc_1 = _consecutiveLoginItemName;
            _loc_1 = _remainingCountLabel;
            _loc_1 = _swf_consecutive_button;
            return;
        }// end function

        public function get okButton() : Image
        {
            return this._1641788370okButton;
        }// end function

        public function initView() : void
        {
            itemNameText.visible = false;
            consecutiveLoginItemText.visible = false;
            remainingCountText.visible = false;
            okButton.visible = false;
            consecutiveOkButton.visible = false;
            MovieClip(Loader(_swf_button.getChildAt(0)).content).gotoAndPlay("button_ok");
            MovieClip(Loader(_swf_consecutive_button.getChildAt(0)).content).gotoAndPlay("button_ok");
            return;
        }// end function

        private function showItemName(event:Event) : void
        {
            Loader(_swf.getChildAt(0)).content.removeEventListener("ANIMATION_END", showItemName);
            itemNameText.visible = true;
            okButton.visible = true;
            MovieClip(Loader(_swf.getChildAt(0)).content).gotoAndPlay("window_rank_01");
            return;
        }// end function

        private function startDrawAnimation() : void
        {
            initView();
            MovieClip(Loader(_swf.getChildAt(0)).content).gotoAndPlay(0);
            Loader(_swf.getChildAt(0)).content.addEventListener("ANIMATION_END", showItemName);
            return;
        }// end function

        public function get consecutiveLoginItemText() : Text
        {
            return this._1331461665consecutiveLoginItemText;
        }// end function

        public function set okButton(param1:Image) : void
        {
            var _loc_2:* = this._1641788370okButton;
            if (_loc_2 !== param1)
            {
                this._1641788370okButton = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "okButton", _loc_2, param1));
            }
            return;
        }// end function

        private function get _swf_button() : MovieClipLoaderAsset
        {
            return this._1665809106_swf_button;
        }// end function

        private function set _swf_consecutive_button(param1:MovieClipLoaderAsset) : void
        {
            var _loc_2:* = this._529836701_swf_consecutive_button;
            if (_loc_2 !== param1)
            {
                this._529836701_swf_consecutive_button = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "_swf_consecutive_button", _loc_2, param1));
            }
            return;
        }// end function

        private function set _swf_button(param1:MovieClipLoaderAsset) : void
        {
            var _loc_2:* = this._1665809106_swf_button;
            if (_loc_2 !== param1)
            {
                this._1665809106_swf_button = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "_swf_button", _loc_2, param1));
            }
            return;
        }// end function

        public function set consecutiveOkButton(param1:Image) : void
        {
            var _loc_2:* = this._653941256consecutiveOkButton;
            if (_loc_2 !== param1)
            {
                this._653941256consecutiveOkButton = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "consecutiveOkButton", _loc_2, param1));
            }
            return;
        }// end function

        private function get _swf_consecutive_button() : MovieClipLoaderAsset
        {
            return this._529836701_swf_consecutive_button;
        }// end function

        public function get consecutiveOkButton() : Image
        {
            return this._653941256consecutiveOkButton;
        }// end function

        public function setRemainingCountLabel(param1:int) : void
        {
            if (param1 == 0)
            {
                return;
            }
            _remainingCountLabel = param1.toString();
            return;
        }// end function

        private function showConsecutiveLogin() : void
        {
            initView();
            if (_consecutiveLoginItemName)
            {
                showConsecutiveLoginItem();
            }
            else if (_remainingCountLabel)
            {
                showRemainingCount();
            }
            else
            {
                closeWindow();
            }
            return;
        }// end function

        private function set _remainingCountLabel(param1:String) : void
        {
            var _loc_2:* = this._327232252_remainingCountLabel;
            if (_loc_2 !== param1)
            {
                this._327232252_remainingCountLabel = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "_remainingCountLabel", _loc_2, param1));
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
