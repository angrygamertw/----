package com.kbmj.viking.view.city
{
    import com.kbmj.viking.lib.*;
    import com.kbmj.viking.view.*;
    import flash.display.*;
    import flash.events.*;
    import flash.utils.*;
    import mx.binding.*;
    import mx.collections.*;
    import mx.containers.*;
    import mx.controls.*;
    import mx.core.*;
    import mx.events.*;
    import mx.utils.*;

    public class CreateGuildWindow extends PopupWindow implements IBindingClient
    {
        private var _1618067916errorLabel:TextArea;
        public var _CreateGuildWindow_Text3:Text;
        public var _CreateGuildWindow_Text4:Text;
        private var _1075873300_swf_window:MovieClipLoaderAsset;
        public var _CreateGuildWindow_Text6:Text;
        public var _CreateGuildWindow_Text7:Text;
        private var _2140302479createGuildCanvas:Canvas;
        private var _67848998DecideButton:Image;
        private var _134483093guildNameText:Text;
        private var _1640415496_swf_create:MovieClipLoaderAsset;
        public var _CreateGuildWindow_TileList1:TileList;
        private var _createGuildName:String;
        var _bindingsByDestination:Object;
        private var _2110909071changeGuildInfo:Text;
        private var _1193840764_swf_close:MovieClipLoaderAsset;
        private var _1069383630_myGuildData:Object = null;
        private var _1218643219_swf_close_window:MovieClipLoaderAsset;
        private var _900245826_errorMessage:String;
        private var _1060066676createCanvas:Canvas;
        private var _1848510178guildName:TextInput;
        private var _1623844508_swf_decide:MovieClipLoaderAsset;
        private var _391131953dataArray:Array;
        var _watchers:Array;
        private var _1896677185windowLayer:Canvas;
        private var _createGuildComment:String;
        private var guildBtn_selected:Boolean;
        private var _1904299080windowTitle:Text;
        private var closeChange:int = 0;
        private var _2077922126viewDataCheckBox:ArrayCollection;
        var _bindingsBeginWithWord:Object;
        private var _332497644guildComment:TextArea;
        private var checkCount:int = 0;
        public var _CreateGuildWindow_Image1:Image;
        public var _CreateGuildWindow_Image3:Image;
        public var _CreateGuildWindow_Image4:Image;
        var _bindings:Array;
        private var _createGuildFeatures:Array;
        private var _documentDescriptor_:UIComponentDescriptor;
        private var _588961665listRenderer:ClassFactory;
        public static const CHANGE_GUILD_INFO:String = "changeGuildInfo";
        private static const WINDOW_X:int = 20;
        private static const WINDOW_Y:int = 80;
        private static const BUTTON_X:int = 245;
        private static const BUTTON_Y:int = 490;
        public static const CREATE_GUILD:String = NAME + "/createGuild";
        private static var _watcherSetupUtil:IWatcherSetupUtil;
        public static const CLOSE_CREATE_GUILD:String = "closeCreateGuild";
        public static const NAME:String = "CreateGuildWindow";
        private static const WINDOW_HT:int = 460;
        private static const WINDOW_WD:int = 560;

        public function CreateGuildWindow()
        {
            _documentDescriptor_ = new UIComponentDescriptor({type:PopupWindow, propertiesFactory:function () : Object
            {
                return {width:760, height:560, childDescriptors:[new UIComponentDescriptor({type:Canvas, id:"windowLayer"}), new UIComponentDescriptor({type:Canvas, id:"createGuildCanvas", propertiesFactory:function () : Object
                {
                    return {childDescriptors:[new UIComponentDescriptor({type:Image, id:"_CreateGuildWindow_Image1"}), new UIComponentDescriptor({type:Text, id:"windowTitle", propertiesFactory:function () : Object
                    {
                        return {styleName:"DealTitle"};
                    }// end function
                    }), new UIComponentDescriptor({type:Text, id:"guildNameText", propertiesFactory:function () : Object
                    {
                        return {styleName:"GulidEstablishmentText", x:40, y:115};
                    }// end function
                    }), new UIComponentDescriptor({type:Canvas, id:"createCanvas", propertiesFactory:function () : Object
                    {
                        return {visible:true, childDescriptors:[new UIComponentDescriptor({type:TextInput, id:"guildName", stylesFactory:function () : void
                        {
                            this.fontSize = 16;
                            return;
                        }// end function
                        , propertiesFactory:function () : Object
                        {
                            return {styleName:"NameTextArea", width:200, height:34, x:60, y:145};
                        }// end function
                        }), new UIComponentDescriptor({type:Text, id:"_CreateGuildWindow_Text3", propertiesFactory:function () : Object
                        {
                            return {styleName:"GulidEstablishmentText", x:270, y:145};
                        }// end function
                        }), new UIComponentDescriptor({type:Text, id:"_CreateGuildWindow_Text4", propertiesFactory:function () : Object
                        {
                            return {styleName:"GulidEstablishmentText", x:270, y:160};
                        }// end function
                        }), new UIComponentDescriptor({type:TextArea, id:"errorLabel", stylesFactory:function () : void
                        {
                            this.color = 16711680;
                            this.backgroundAlpha = 0;
                            this.borderStyle = "none";
                            return;
                        }// end function
                        , propertiesFactory:function () : Object
                        {
                            return {editable:false, x:60, y:185, width:400, height:18};
                        }// end function
                        })]};
                    }// end function
                    }), new UIComponentDescriptor({type:Text, id:"changeGuildInfo", propertiesFactory:function () : Object
                    {
                        return {styleName:"GulidEstablishmentText", width:200, x:40, y:145, visible:false};
                    }// end function
                    }), new UIComponentDescriptor({type:Text, id:"_CreateGuildWindow_Text6", propertiesFactory:function () : Object
                    {
                        return {styleName:"GulidEstablishmentText", x:40, y:215};
                    }// end function
                    }), new UIComponentDescriptor({type:TileList, id:"_CreateGuildWindow_TileList1", stylesFactory:function () : void
                    {
                        this.backgroundAlpha = 0;
                        this.useRollOver = false;
                        this.textAlign = "left";
                        this.borderStyle = "none";
                        return;
                    }// end function
                    , propertiesFactory:function () : Object
                    {
                        return {styleName:"PossibleClass", x:60, y:245, width:450, direction:"horizontal", columnWidth:140, rowHeight:25, columnCount:2, selectable:false};
                    }// end function
                    }), new UIComponentDescriptor({type:Text, id:"_CreateGuildWindow_Text7", propertiesFactory:function () : Object
                    {
                        return {styleName:"GulidEstablishmentText", x:40, y:340};
                    }// end function
                    }), new UIComponentDescriptor({type:TextArea, id:"guildComment", propertiesFactory:function () : Object
                    {
                        return {width:480, height:90, x:60, y:370, maxChars:100};
                    }// end function
                    }), new UIComponentDescriptor({type:Image, id:"DecideButton", events:{click:"__DecideButton_click"}}), new UIComponentDescriptor({type:Image, id:"_CreateGuildWindow_Image3", events:{click:"___CreateGuildWindow_Image3_click"}}), new UIComponentDescriptor({type:Image, id:"_CreateGuildWindow_Image4", events:{click:"___CreateGuildWindow_Image4_click"}})]};
                }// end function
                })]};
            }// end function
            });
            _1075873300_swf_window = new Viking.EmbedSwfWindowCommon();
            _1640415496_swf_create = new Viking.EmbedSwfButtonCommon();
            _1623844508_swf_decide = new Viking.EmbedSwfButtonCommon();
            _1193840764_swf_close = new Viking.EmbedSwfButtonCommon();
            _1218643219_swf_close_window = new Viking.EmbedSwfButtonCloseWindow();
            _bindings = [];
            _watchers = [];
            _bindingsByDestination = {};
            _bindingsBeginWithWord = {};
            mx_internal::_document = this;
            this.width = 760;
            this.height = 560;
            _CreateGuildWindow_ClassFactory1_i();
            this.addEventListener("creationComplete", ___CreateGuildWindow_PopupWindow1_creationComplete);
            return;
        }// end function

        public function set listRenderer(param1:ClassFactory) : void
        {
            var _loc_2:* = this._588961665listRenderer;
            if (_loc_2 !== param1)
            {
                this._588961665listRenderer = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "listRenderer", _loc_2, param1));
            }
            return;
        }// end function

        public function close() : void
        {
            dispatchEvent(new Event(CLOSE_CREATE_GUILD));
            onClose();
            guildName.text = "";
            guildComment.text = "";
            errorMessage = "";
            MovieClip(Loader(_swf_create.getChildAt(0)).content).gotoAndPlay(0);
            MovieClip(Loader(_swf_create.getChildAt(0)).content).gotoAndPlay("button_make");
            MovieClip(Loader(_swf_decide.getChildAt(0)).content).gotoAndPlay(0);
            MovieClip(Loader(_swf_decide.getChildAt(0)).content).gotoAndPlay("button_decide");
            MovieClip(Loader(_swf_close.getChildAt(0)).content).gotoAndPlay(0);
            MovieClip(Loader(_swf_close.getChildAt(0)).content).gotoAndPlay("button_close");
            MovieClip(Loader(_swf_close_window.getChildAt(0)).content).gotoAndPlay(1);
            return;
        }// end function

        public function get createGuildComment() : String
        {
            return _createGuildComment;
        }// end function

        private function _CreateGuildWindow_bindingsSetup() : Array
        {
            var binding:Binding;
            var result:Array;
            binding = new Binding(this, function () : Object
            {
                return _swf_window;
            }// end function
            , function (param1:Object) : void
            {
                _CreateGuildWindow_Image1.source = param1;
                return;
            }// end function
            , "_CreateGuildWindow_Image1.source");
            result[0] = binding;
            binding = new Binding(this, function () : Number
            {
                return WINDOW_X;
            }// end function
            , function (param1:Number) : void
            {
                windowTitle.x = param1;
                return;
            }// end function
            , "windowTitle.x");
            result[1] = binding;
            binding = new Binding(this, function () : Number
            {
                return WINDOW_Y;
            }// end function
            , function (param1:Number) : void
            {
                windowTitle.y = param1;
                return;
            }// end function
            , "windowTitle.y");
            result[2] = binding;
            binding = new Binding(this, function () : Number
            {
                return WINDOW_WD;
            }// end function
            , function (param1:Number) : void
            {
                windowTitle.width = param1;
                return;
            }// end function
            , "windowTitle.width");
            result[3] = binding;
            binding = new Binding(this, function () : String
            {
                var _loc_1:* = Utils.i18n("createGuildCharacterLimit");
                var _loc_2:* = _loc_1 == undefined ? (null) : (String(_loc_1));
                return _loc_2;
            }// end function
            , function (param1:String) : void
            {
                _CreateGuildWindow_Text3.text = param1;
                return;
            }// end function
            , "_CreateGuildWindow_Text3.text");
            result[4] = binding;
            binding = new Binding(this, function () : String
            {
                var _loc_1:* = Utils.i18n("createGuildCanNotUseSpase");
                var _loc_2:* = _loc_1 == undefined ? (null) : (String(_loc_1));
                return _loc_2;
            }// end function
            , function (param1:String) : void
            {
                _CreateGuildWindow_Text4.text = param1;
                return;
            }// end function
            , "_CreateGuildWindow_Text4.text");
            result[5] = binding;
            binding = new Binding(this, function () : String
            {
                var _loc_1:* = _errorMessage;
                var _loc_2:* = _loc_1 == undefined ? (null) : (String(_loc_1));
                return _loc_2;
            }// end function
            , function (param1:String) : void
            {
                errorLabel.text = param1;
                return;
            }// end function
            , "errorLabel.text");
            result[6] = binding;
            binding = new Binding(this, function () : String
            {
                var _loc_1:* = Utils.i18n("createGuildName") + ": " + guildName.text;
                var _loc_2:* = _loc_1 == undefined ? (null) : (String(_loc_1));
                return _loc_2;
            }// end function
            , function (param1:String) : void
            {
                changeGuildInfo.text = param1;
                return;
            }// end function
            , "changeGuildInfo.text");
            result[7] = binding;
            binding = new Binding(this, function () : String
            {
                var _loc_1:* = Utils.i18n("createGuildSelectConditions");
                var _loc_2:* = _loc_1 == undefined ? (null) : (String(_loc_1));
                return _loc_2;
            }// end function
            , function (param1:String) : void
            {
                _CreateGuildWindow_Text6.text = param1;
                return;
            }// end function
            , "_CreateGuildWindow_Text6.text");
            result[8] = binding;
            binding = new Binding(this, function () : Object
            {
                return viewDataCheckBox;
            }// end function
            , function (param1:Object) : void
            {
                _CreateGuildWindow_TileList1.dataProvider = param1;
                return;
            }// end function
            , "_CreateGuildWindow_TileList1.dataProvider");
            result[9] = binding;
            binding = new Binding(this, function () : IFactory
            {
                return listRenderer;
            }// end function
            , function (param1:IFactory) : void
            {
                _CreateGuildWindow_TileList1.itemRenderer = param1;
                return;
            }// end function
            , "_CreateGuildWindow_TileList1.itemRenderer");
            result[10] = binding;
            binding = new Binding(this, function () : String
            {
                var _loc_1:* = Utils.i18n("createGuildComment");
                var _loc_2:* = _loc_1 == undefined ? (null) : (String(_loc_1));
                return _loc_2;
            }// end function
            , function (param1:String) : void
            {
                _CreateGuildWindow_Text7.text = param1;
                return;
            }// end function
            , "_CreateGuildWindow_Text7.text");
            result[11] = binding;
            binding = new Binding(this, function () : Number
            {
                return BUTTON_X - 65;
            }// end function
            , function (param1:Number) : void
            {
                DecideButton.x = param1;
                return;
            }// end function
            , "DecideButton.x");
            result[12] = binding;
            binding = new Binding(this, function () : Number
            {
                return BUTTON_Y;
            }// end function
            , function (param1:Number) : void
            {
                DecideButton.y = param1;
                return;
            }// end function
            , "DecideButton.y");
            result[13] = binding;
            binding = new Binding(this, function () : Number
            {
                return BUTTON_X + 65;
            }// end function
            , function (param1:Number) : void
            {
                _CreateGuildWindow_Image3.x = param1;
                return;
            }// end function
            , "_CreateGuildWindow_Image3.x");
            result[14] = binding;
            binding = new Binding(this, function () : Number
            {
                return BUTTON_Y;
            }// end function
            , function (param1:Number) : void
            {
                _CreateGuildWindow_Image3.y = param1;
                return;
            }// end function
            , "_CreateGuildWindow_Image3.y");
            result[15] = binding;
            binding = new Binding(this, function () : Object
            {
                return _swf_close;
            }// end function
            , function (param1:Object) : void
            {
                _CreateGuildWindow_Image3.source = param1;
                return;
            }// end function
            , "_CreateGuildWindow_Image3.source");
            result[16] = binding;
            binding = new Binding(this, function () : Number
            {
                return WINDOW_X + WINDOW_WD - 25;
            }// end function
            , function (param1:Number) : void
            {
                _CreateGuildWindow_Image4.x = param1;
                return;
            }// end function
            , "_CreateGuildWindow_Image4.x");
            result[17] = binding;
            binding = new Binding(this, function () : Number
            {
                return WINDOW_Y;
            }// end function
            , function (param1:Number) : void
            {
                _CreateGuildWindow_Image4.y = param1;
                return;
            }// end function
            , "_CreateGuildWindow_Image4.y");
            result[18] = binding;
            binding = new Binding(this, function () : Object
            {
                return _swf_close_window;
            }// end function
            , function (param1:Object) : void
            {
                _CreateGuildWindow_Image4.source = param1;
                return;
            }// end function
            , "_CreateGuildWindow_Image4.source");
            result[19] = binding;
            return result;
        }// end function

        private function get _swf_create() : MovieClipLoaderAsset
        {
            return this._1640415496_swf_create;
        }// end function

        public function set createGuildCanvas(param1:Canvas) : void
        {
            var _loc_2:* = this._2140302479createGuildCanvas;
            if (_loc_2 !== param1)
            {
                this._2140302479createGuildCanvas = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "createGuildCanvas", _loc_2, param1));
            }
            return;
        }// end function

        public function initWindow() : void
        {
            var _loc_1:int = 0;
            var _loc_2:int = 0;
            if (!_myGuildData)
            {
                guildName.text = "";
                guildComment.text = "";
                guildNameText.text = Utils.i18n("createGuildInputName");
                createCanvas.visible = true;
                changeGuildInfo.visible = false;
                windowTitle.text = Utils.i18n("createGuildCreateGuild");
                DecideButton.source = _swf_create;
                guildBtn_selected = false;
            }
            else
            {
                guildName.text = _myGuildData.name;
                guildBtn_selected = true;
                guildNameText.text = Utils.i18n("createGuildUpdateInfo");
                createCanvas.visible = false;
                changeGuildInfo.visible = true;
                windowTitle.text = Utils.i18n("createGuildChangeInfo");
                DecideButton.source = _swf_decide;
                _loc_1 = 0;
                while (_loc_1 < _myGuildData.guild_features.length)
                {
                    
                    _loc_2 = 0;
                    while (_loc_2 < viewDataCheckBox.length)
                    {
                        
                        if (viewDataCheckBox[_loc_2].id == _myGuildData.guild_features[_loc_1].guild_feature_master_id)
                        {
                            onCheck(viewDataCheckBox[_loc_2]);
                        }
                        _loc_2++;
                    }
                    _loc_1++;
                }
                guildComment.text = _myGuildData.comment;
            }
            return;
        }// end function

        private function get _swf_close_window() : MovieClipLoaderAsset
        {
            return this._1218643219_swf_close_window;
        }// end function

        public function get guildName() : TextInput
        {
            return this._1848510178guildName;
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

        private function get _myGuildData() : Object
        {
            return this._1069383630_myGuildData;
        }// end function

        private function set _swf_close_window(param1:MovieClipLoaderAsset) : void
        {
            var _loc_2:* = this._1218643219_swf_close_window;
            if (_loc_2 !== param1)
            {
                this._1218643219_swf_close_window = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "_swf_close_window", _loc_2, param1));
            }
            return;
        }// end function

        public function set guildName(param1:TextInput) : void
        {
            var _loc_2:* = this._1848510178guildName;
            if (_loc_2 !== param1)
            {
                this._1848510178guildName = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "guildName", _loc_2, param1));
            }
            return;
        }// end function

        public function get windowLayer() : Canvas
        {
            return this._1896677185windowLayer;
        }// end function

        public function setData(param1:Array) : void
        {
            viewDataCheckBox = new ArrayCollection();
            dataArray = new Array();
            var _loc_2:int = 0;
            while (_loc_2 < param1.length)
            {
                
                dataArray.push(new ObjectProxy({label:param1[_loc_2].name, enabled:true, clicked:false, id:param1[_loc_2].masterId}));
                _loc_2++;
            }
            viewDataCheckBox = new ArrayCollection(dataArray);
            checkCount = 0;
            closeChange = 0;
            return;
        }// end function

        public function get windowTitle() : Text
        {
            return this._1904299080windowTitle;
        }// end function

        private function _CreateGuildWindow_ClassFactory1_i() : ClassFactory
        {
            var _loc_1:* = new ClassFactory();
            listRenderer = _loc_1;
            _loc_1.generator = CreateGuildWindow_inlineComponent1;
            _loc_1.properties = {outerDocument:this};
            return _loc_1;
        }// end function

        public function ___CreateGuildWindow_Image3_click(event:MouseEvent) : void
        {
            close();
            return;
        }// end function

        private function set _swf_create(param1:MovieClipLoaderAsset) : void
        {
            var _loc_2:* = this._1640415496_swf_create;
            if (_loc_2 !== param1)
            {
                this._1640415496_swf_create = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "_swf_create", _loc_2, param1));
            }
            return;
        }// end function

        private function get _swf_decide() : MovieClipLoaderAsset
        {
            return this._1623844508_swf_decide;
        }// end function

        public function onCheck(param1:Object) : void
        {
            var _loc_2:int = 0;
            var _loc_3:int = 0;
            if (param1.clicked)
            {
                var _loc_5:* = checkCount - 1;
                checkCount = _loc_5;
                param1.clicked = false;
                if (closeChange == 1)
                {
                    closeChange = -1;
                }
            }
            else
            {
                var _loc_5:* = checkCount + 1;
                checkCount = _loc_5;
                param1.clicked = true;
                if (checkCount >= 3)
                {
                    closeChange = 1;
                }
                else
                {
                    closeChange = 0;
                }
            }
            viewDataCheckBox.itemUpdated(viewDataCheckBox);
            if (closeChange == 1)
            {
                _loc_2 = 0;
                while (_loc_2 < viewDataCheckBox.length)
                {
                    
                    if (checkCount > 2)
                    {
                        if (!viewDataCheckBox[_loc_2].clicked)
                        {
                            viewDataCheckBox[_loc_2].enabled = false;
                        }
                    }
                    _loc_2++;
                }
            }
            if (closeChange == -1)
            {
                _loc_3 = 0;
                while (_loc_3 < viewDataCheckBox.length)
                {
                    
                    viewDataCheckBox[_loc_3].enabled = true;
                    _loc_3++;
                }
            }
            return;
        }// end function

        public function get guildNameText() : Text
        {
            return this._134483093guildNameText;
        }// end function

        public function get changeGuildInfo() : Text
        {
            return this._2110909071changeGuildInfo;
        }// end function

        private function set viewDataCheckBox(param1:ArrayCollection) : void
        {
            var _loc_2:* = this._2077922126viewDataCheckBox;
            if (_loc_2 !== param1)
            {
                this._2077922126viewDataCheckBox = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "viewDataCheckBox", _loc_2, param1));
            }
            return;
        }// end function

        public function get createCanvas() : Canvas
        {
            return this._1060066676createCanvas;
        }// end function

        private function get _swf_close() : MovieClipLoaderAsset
        {
            return this._1193840764_swf_close;
        }// end function

        private function setup() : void
        {
            MovieClip(Loader(_swf_window.getChildAt(0)).content).gotoAndPlay("left_560x460");
            MovieClip(Loader(_swf_create.getChildAt(0)).content).gotoAndPlay("button_make");
            MovieClip(Loader(_swf_decide.getChildAt(0)).content).gotoAndPlay("button_decide");
            MovieClip(Loader(_swf_close.getChildAt(0)).content).gotoAndPlay("button_close");
            return;
        }// end function

        public function get listRenderer() : ClassFactory
        {
            return this._588961665listRenderer;
        }// end function

        public function get createGuildName() : String
        {
            return _createGuildName;
        }// end function

        private function set _errorMessage(param1:String) : void
        {
            var _loc_2:* = this._900245826_errorMessage;
            if (_loc_2 !== param1)
            {
                this._900245826_errorMessage = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "_errorMessage", _loc_2, param1));
            }
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

        public function ___CreateGuildWindow_PopupWindow1_creationComplete(event:FlexEvent) : void
        {
            setup();
            return;
        }// end function

        public function get createGuildCanvas() : Canvas
        {
            return this._2140302479createGuildCanvas;
        }// end function

        override public function initialize() : void
        {
            var target:CreateGuildWindow;
            var watcherSetupUtilClass:Object;
            .mx_internal::setDocumentDescriptor(_documentDescriptor_);
            var bindings:* = _CreateGuildWindow_bindingsSetup();
            var watchers:Array;
            target;
            if (_watcherSetupUtil == null)
            {
                watcherSetupUtilClass = getDefinitionByName("_com_kbmj_viking_view_city_CreateGuildWindowWatcherSetupUtil");
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

        public function ___CreateGuildWindow_Image4_click(event:MouseEvent) : void
        {
            close();
            return;
        }// end function

        private function set dataArray(param1:Array) : void
        {
            var _loc_2:* = this._391131953dataArray;
            if (_loc_2 !== param1)
            {
                this._391131953dataArray = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "dataArray", _loc_2, param1));
            }
            return;
        }// end function

        public function isValidName() : Boolean
        {
            if (guildName.text == "")
            {
                _errorMessage = Utils.i18n("createGuildWarningNameNon");
                return false;
            }
            var _loc_1:int = 0;
            while (_loc_1 < guildName.text.length)
            {
                
                if (guildName.text.charAt(_loc_1) == " " || guildName.text.charAt(_loc_1) == "　")
                {
                    _errorMessage = Utils.i18n("createGuildWarningSpase");
                    return false;
                }
                if (guildName.text.charAt(_loc_1) == "\n" || guildName.text.charAt(_loc_1) == "\r")
                {
                    _errorMessage = Utils.i18n("createGuildWarningBreak");
                    return false;
                }
                if (guildName.text.charAt(_loc_1) == "\t")
                {
                    _errorMessage = Utils.i18n("createGuildWarningTab");
                    return false;
                }
                _loc_1++;
            }
            return true;
        }// end function

        private function set _myGuildData(param1:Object) : void
        {
            var _loc_2:* = this._1069383630_myGuildData;
            if (_loc_2 !== param1)
            {
                this._1069383630_myGuildData = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "_myGuildData", _loc_2, param1));
            }
            return;
        }// end function

        public function set windowTitle(param1:Text) : void
        {
            var _loc_2:* = this._1904299080windowTitle;
            if (_loc_2 !== param1)
            {
                this._1904299080windowTitle = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "windowTitle", _loc_2, param1));
            }
            return;
        }// end function

        public function get createGuildFeatures() : Array
        {
            return _createGuildFeatures;
        }// end function

        private function get viewDataCheckBox() : ArrayCollection
        {
            return this._2077922126viewDataCheckBox;
        }// end function

        public function set errorLabel(param1:TextArea) : void
        {
            var _loc_2:* = this._1618067916errorLabel;
            if (_loc_2 !== param1)
            {
                this._1618067916errorLabel = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "errorLabel", _loc_2, param1));
            }
            return;
        }// end function

        private function onCreate() : void
        {
            var _loc_1:int = 0;
            if (isValidName())
            {
                _createGuildName = guildName.text;
                _createGuildComment = guildComment.text;
                _createGuildFeatures = new Array();
                _loc_1 = 0;
                while (_loc_1 < viewDataCheckBox.length)
                {
                    
                    if (viewDataCheckBox[_loc_1].clicked)
                    {
                        _createGuildFeatures.push(viewDataCheckBox[_loc_1].id);
                    }
                    _loc_1++;
                }
                if (guildBtn_selected == false)
                {
                    dispatchEvent(new Event(CREATE_GUILD));
                }
                else
                {
                    dispatchEvent(new Event(CHANGE_GUILD_INFO));
                }
            }
            return;
        }// end function

        public function set errorMessage(param1:String) : void
        {
            _errorMessage = param1;
            return;
        }// end function

        public function __DecideButton_click(event:MouseEvent) : void
        {
            onCreate();
            return;
        }// end function

        private function get _errorMessage() : String
        {
            return this._900245826_errorMessage;
        }// end function

        private function set _swf_decide(param1:MovieClipLoaderAsset) : void
        {
            var _loc_2:* = this._1623844508_swf_decide;
            if (_loc_2 !== param1)
            {
                this._1623844508_swf_decide = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "_swf_decide", _loc_2, param1));
            }
            return;
        }// end function

        public function get errorLabel() : TextArea
        {
            return this._1618067916errorLabel;
        }// end function

        public function set DecideButton(param1:Image) : void
        {
            var _loc_2:* = this._67848998DecideButton;
            if (_loc_2 !== param1)
            {
                this._67848998DecideButton = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "DecideButton", _loc_2, param1));
            }
            return;
        }// end function

        public function set guildComment(param1:TextArea) : void
        {
            var _loc_2:* = this._332497644guildComment;
            if (_loc_2 !== param1)
            {
                this._332497644guildComment = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "guildComment", _loc_2, param1));
            }
            return;
        }// end function

        public function get DecideButton() : Image
        {
            return this._67848998DecideButton;
        }// end function

        public function set guildNameText(param1:Text) : void
        {
            var _loc_2:* = this._134483093guildNameText;
            if (_loc_2 !== param1)
            {
                this._134483093guildNameText = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "guildNameText", _loc_2, param1));
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

        public function set myGuildData(param1:Object) : void
        {
            _myGuildData = param1;
            return;
        }// end function

        public function set createCanvas(param1:Canvas) : void
        {
            var _loc_2:* = this._1060066676createCanvas;
            if (_loc_2 !== param1)
            {
                this._1060066676createCanvas = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "createCanvas", _loc_2, param1));
            }
            return;
        }// end function

        public function set changeGuildInfo(param1:Text) : void
        {
            var _loc_2:* = this._2110909071changeGuildInfo;
            if (_loc_2 !== param1)
            {
                this._2110909071changeGuildInfo = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "changeGuildInfo", _loc_2, param1));
            }
            return;
        }// end function

        public function get guildComment() : TextArea
        {
            return this._332497644guildComment;
        }// end function

        private function _CreateGuildWindow_bindingExprs() : void
        {
            var _loc_1:* = undefined;
            _loc_1 = _swf_window;
            _loc_1 = WINDOW_X;
            _loc_1 = WINDOW_Y;
            _loc_1 = WINDOW_WD;
            _loc_1 = Utils.i18n("createGuildCharacterLimit");
            _loc_1 = Utils.i18n("createGuildCanNotUseSpase");
            _loc_1 = _errorMessage;
            _loc_1 = Utils.i18n("createGuildName") + ": " + guildName.text;
            _loc_1 = Utils.i18n("createGuildSelectConditions");
            _loc_1 = viewDataCheckBox;
            _loc_1 = listRenderer;
            _loc_1 = Utils.i18n("createGuildComment");
            _loc_1 = BUTTON_X - 65;
            _loc_1 = BUTTON_Y;
            _loc_1 = BUTTON_X + 65;
            _loc_1 = BUTTON_Y;
            _loc_1 = _swf_close;
            _loc_1 = WINDOW_X + WINDOW_WD - 25;
            _loc_1 = WINDOW_Y;
            _loc_1 = _swf_close_window;
            return;
        }// end function

        private function get _swf_window() : MovieClipLoaderAsset
        {
            return this._1075873300_swf_window;
        }// end function

        private function get dataArray() : Array
        {
            return this._391131953dataArray;
        }// end function

        public static function set watcherSetupUtil(param1:IWatcherSetupUtil) : void
        {
            CreateGuildWindow._watcherSetupUtil = param1;
            return;
        }// end function

    }
}
