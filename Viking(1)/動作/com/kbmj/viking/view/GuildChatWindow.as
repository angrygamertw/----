package com.kbmj.viking.view
{
    import com.kbmj.viking.lib.*;
    import com.kbmj.viking.vo.*;
    import flash.events.*;
    import flash.utils.*;
    import mx.binding.*;
    import mx.collections.*;
    import mx.containers.*;
    import mx.controls.*;
    import mx.controls.dataGridClasses.*;
    import mx.core.*;
    import mx.events.*;

    public class GuildChatWindow extends PopupWindow implements IBindingClient
    {
        private var _chatText:String;
        private var _1990356512scaleButtonStyleName:String = "chatWindowExpandBtn";
        private var _1897811083smallChatRendererSys:ClassFactory;
        private var _1897797909smallChatRendererFct:ClassFactory;
        var _bindingsByDestination:Object;
        private var _1854133870guildChatBoxLargeSys:Canvas;
        public var _GuildChatWindow_DataGridColumn1:DataGridColumn;
        public var _GuildChatWindow_DataGridColumn5:DataGridColumn;
        public var _GuildChatWindow_DataGridColumn9:DataGridColumn;
        private var _1536595705guildChatBoxSmall:Canvas;
        private var _1722718208_player:PlayerVO;
        private var _1573354808guildChatViewStack:ViewStack;
        private var _100358090input:TextInput;
        private var _120598255_chatTexts:ArrayCollection;
        private var _1437418733chatVBox:VBox;
        private var _1257153533guild_chat_grid_large:DataGrid;
        private var _1263959497guild_chat_grid_small:DataGrid;
        private var _721374091guild_chat_grid_large_sys:DataGrid;
        public var _GuildChatWindow_DataGridColumn13:DataGridColumn;
        private var _1543401669guildChatBoxLarge:Canvas;
        private var _1262525018guild_chat_grid_small_faction:DataGrid;
        private var _721356383guild_chat_grid_large_all:DataGrid;
        private var _1660068009guild_chat_grid_small_sys:DataGrid;
        private var _location:String;
        private var _835054335guildChatViewStackFct:ViewStack;
        private var _961123258guildChatBoxSmallSys:Canvas;
        private var _835067509guildChatViewStackSys:ViewStack;
        private var _chatWindowExpansion:Boolean = false;
        private var _1854147044guildChatBoxLargeFct:Canvas;
        private var _428894166enterButton:Image;
        private var _1660085717guild_chat_grid_small_all:DataGrid;
        private var _embed_mxml__swf_guild_chat_button_info_chatenter_swf_162954869:Class;
        private var _470688161inputBox:HBox;
        private var _491251750guild_chat_grid_large_faction:DataGrid;
        private var _835049801guildChatViewStackAll:ViewStack;
        var _watchers:Array;
        private var _1854151578guildChatBoxLargeAll:Canvas;
        private var _1978969352chatsViewStack:ViewStack;
        private var _961136432guildChatBoxSmallFct:Canvas;
        var _bindingsBeginWithWord:Object;
        private var _1644033762smallChatRenderer:ClassFactory;
        private var _1897793375smallChatRendererAll:ClassFactory;
        var _bindings:Array;
        private var _1118553555_oldChatText:ArrayCollection;
        private var _documentDescriptor_:UIComponentDescriptor;
        private var _961140966guildChatBoxSmallAll:Canvas;
        public static const GUILD_CHAT_UPDATE:String = "guildChatUpdate";
        public static const GUILD_CHAT_UPDATE_BY_WORLD:String = "guildChatUpdateByWorld";
        private static const CHAT_ERROR_MESSAGE:String = Utils.i18n("guildChatSendError");
        public static const CHAT_UPDATE:String = "chatUpdate";
        private static var _watcherSetupUtil:IWatcherSetupUtil;
        public static const CHANGE_SIZE:String = "changeSize";
        public static const CHAT_LOG:String = "chatLog";

        public function GuildChatWindow()
        {
            _documentDescriptor_ = new UIComponentDescriptor({type:PopupWindow, propertiesFactory:function () : Object
            {
                return {childDescriptors:[new UIComponentDescriptor({type:VBox, id:"chatVBox", propertiesFactory:function () : Object
                {
                    return {percentWidth:100, height:143, childDescriptors:[new UIComponentDescriptor({type:ViewStack, id:"chatsViewStack", events:{change:"__chatsViewStack_change"}, propertiesFactory:function () : Object
                    {
                        return {percentWidth:100, percentHeight:100, childDescriptors:[new UIComponentDescriptor({type:Canvas, propertiesFactory:function () : Object
                        {
                            return {childDescriptors:[new UIComponentDescriptor({type:ViewStack, id:"guildChatViewStack", propertiesFactory:function () : Object
                            {
                                return {percentWidth:100, percentHeight:100, x:-1, y:0, childDescriptors:[new UIComponentDescriptor({type:Canvas, id:"guildChatBoxSmall", propertiesFactory:function () : Object
                                {
                                    return {label:"Base", childDescriptors:[new UIComponentDescriptor({type:DataGrid, id:"guild_chat_grid_small", events:{updateComplete:"__guild_chat_grid_small_updateComplete"}, stylesFactory:function () : void
                                    {
                                        this.horizontalGridLines = false;
                                        this.backgroundAlpha = 0;
                                        this.borderThickness = 0;
                                        return;
                                    }// end function
                                    , propertiesFactory:function () : Object
                                    {
                                        return {percentHeight:100, percentWidth:100, styleName:"DataGridBase", sortableColumns:false, showHeaders:false, selectable:false, variableRowHeight:true, wordWrap:true, columns:[_GuildChatWindow_DataGridColumn1_i()]};
                                    }// end function
                                    })]};
                                }// end function
                                }), new UIComponentDescriptor({type:Canvas, id:"guildChatBoxLarge", stylesFactory:function () : void
                                {
                                    this.fontSize = 14;
                                    return;
                                }// end function
                                , propertiesFactory:function () : Object
                                {
                                    return {percentHeight:100, percentWidth:100, childDescriptors:[new UIComponentDescriptor({type:DataGrid, id:"guild_chat_grid_large", events:{updateComplete:"__guild_chat_grid_large_updateComplete"}, stylesFactory:function () : void
                                    {
                                        this.backgroundAlpha = 0;
                                        this.verticalGridLines = false;
                                        this.horizontalGridLines = false;
                                        this.borderThickness = 0;
                                        return;
                                    }// end function
                                    , propertiesFactory:function () : Object
                                    {
                                        return {editable:false, percentWidth:100, percentHeight:100, styleName:"InfoTxtBox", sortableColumns:false, showHeaders:false, wordWrap:true, variableRowHeight:true, selectable:false, columns:[_GuildChatWindow_DataGridColumn2_c(), _GuildChatWindow_DataGridColumn3_c(), _GuildChatWindow_DataGridColumn4_c()]};
                                    }// end function
                                    })]};
                                }// end function
                                })]};
                            }// end function
                            })]};
                        }// end function
                        }), new UIComponentDescriptor({type:Canvas, propertiesFactory:function () : Object
                        {
                            return {childDescriptors:[new UIComponentDescriptor({type:ViewStack, id:"guildChatViewStackAll", propertiesFactory:function () : Object
                            {
                                return {percentWidth:100, percentHeight:100, x:-1, y:0, childDescriptors:[new UIComponentDescriptor({type:Canvas, id:"guildChatBoxSmallAll", propertiesFactory:function () : Object
                                {
                                    return {label:"Base", childDescriptors:[new UIComponentDescriptor({type:DataGrid, id:"guild_chat_grid_small_all", events:{updateComplete:"__guild_chat_grid_small_all_updateComplete"}, stylesFactory:function () : void
                                    {
                                        this.horizontalGridLines = false;
                                        this.backgroundAlpha = 0;
                                        this.borderThickness = 0;
                                        return;
                                    }// end function
                                    , propertiesFactory:function () : Object
                                    {
                                        return {percentHeight:100, percentWidth:100, styleName:"DataGridBase", sortableColumns:false, showHeaders:false, selectable:false, variableRowHeight:true, wordWrap:true, columns:[_GuildChatWindow_DataGridColumn5_i()]};
                                    }// end function
                                    })]};
                                }// end function
                                }), new UIComponentDescriptor({type:Canvas, id:"guildChatBoxLargeAll", stylesFactory:function () : void
                                {
                                    this.fontSize = 14;
                                    return;
                                }// end function
                                , propertiesFactory:function () : Object
                                {
                                    return {percentHeight:100, percentWidth:100, childDescriptors:[new UIComponentDescriptor({type:DataGrid, id:"guild_chat_grid_large_all", events:{updateComplete:"__guild_chat_grid_large_all_updateComplete"}, stylesFactory:function () : void
                                    {
                                        this.backgroundAlpha = 0;
                                        this.verticalGridLines = false;
                                        this.horizontalGridLines = false;
                                        this.borderThickness = 0;
                                        return;
                                    }// end function
                                    , propertiesFactory:function () : Object
                                    {
                                        return {editable:false, percentWidth:100, percentHeight:100, styleName:"InfoTxtBox", sortableColumns:false, showHeaders:false, wordWrap:true, variableRowHeight:true, selectable:false, columns:[_GuildChatWindow_DataGridColumn6_c(), _GuildChatWindow_DataGridColumn7_c(), _GuildChatWindow_DataGridColumn8_c()]};
                                    }// end function
                                    })]};
                                }// end function
                                })]};
                            }// end function
                            })]};
                        }// end function
                        }), new UIComponentDescriptor({type:Canvas, propertiesFactory:function () : Object
                        {
                            return {childDescriptors:[new UIComponentDescriptor({type:ViewStack, id:"guildChatViewStackSys", propertiesFactory:function () : Object
                            {
                                return {percentWidth:100, percentHeight:100, x:-1, y:0, childDescriptors:[new UIComponentDescriptor({type:Canvas, id:"guildChatBoxSmallSys", propertiesFactory:function () : Object
                                {
                                    return {label:"Base", childDescriptors:[new UIComponentDescriptor({type:DataGrid, id:"guild_chat_grid_small_sys", events:{updateComplete:"__guild_chat_grid_small_sys_updateComplete"}, stylesFactory:function () : void
                                    {
                                        this.horizontalGridLines = false;
                                        this.backgroundAlpha = 0;
                                        this.borderThickness = 0;
                                        return;
                                    }// end function
                                    , propertiesFactory:function () : Object
                                    {
                                        return {percentHeight:100, percentWidth:100, styleName:"DataGridBase", sortableColumns:false, showHeaders:false, selectable:false, variableRowHeight:true, wordWrap:true, columns:[_GuildChatWindow_DataGridColumn9_i()]};
                                    }// end function
                                    })]};
                                }// end function
                                }), new UIComponentDescriptor({type:Canvas, id:"guildChatBoxLargeSys", stylesFactory:function () : void
                                {
                                    this.fontSize = 14;
                                    return;
                                }// end function
                                , propertiesFactory:function () : Object
                                {
                                    return {percentHeight:100, percentWidth:100, childDescriptors:[new UIComponentDescriptor({type:DataGrid, id:"guild_chat_grid_large_sys", events:{updateComplete:"__guild_chat_grid_large_sys_updateComplete"}, stylesFactory:function () : void
                                    {
                                        this.backgroundAlpha = 0;
                                        this.verticalGridLines = false;
                                        this.horizontalGridLines = false;
                                        this.borderThickness = 0;
                                        return;
                                    }// end function
                                    , propertiesFactory:function () : Object
                                    {
                                        return {editable:false, percentWidth:100, percentHeight:100, styleName:"InfoTxtBox", sortableColumns:false, showHeaders:false, wordWrap:true, variableRowHeight:true, selectable:false, columns:[_GuildChatWindow_DataGridColumn10_c(), _GuildChatWindow_DataGridColumn11_c(), _GuildChatWindow_DataGridColumn12_c()]};
                                    }// end function
                                    })]};
                                }// end function
                                })]};
                            }// end function
                            })]};
                        }// end function
                        }), new UIComponentDescriptor({type:Canvas, propertiesFactory:function () : Object
                        {
                            return {childDescriptors:[new UIComponentDescriptor({type:ViewStack, id:"guildChatViewStackFct", propertiesFactory:function () : Object
                            {
                                return {percentWidth:100, percentHeight:100, x:-1, y:0, childDescriptors:[new UIComponentDescriptor({type:Canvas, id:"guildChatBoxSmallFct", propertiesFactory:function () : Object
                                {
                                    return {label:"Base", childDescriptors:[new UIComponentDescriptor({type:DataGrid, id:"guild_chat_grid_small_faction", events:{updateComplete:"__guild_chat_grid_small_faction_updateComplete"}, stylesFactory:function () : void
                                    {
                                        this.horizontalGridLines = false;
                                        this.backgroundAlpha = 0;
                                        this.borderThickness = 0;
                                        return;
                                    }// end function
                                    , propertiesFactory:function () : Object
                                    {
                                        return {percentHeight:100, percentWidth:100, styleName:"DataGridBase", sortableColumns:false, showHeaders:false, selectable:false, variableRowHeight:true, wordWrap:true, columns:[_GuildChatWindow_DataGridColumn13_i()]};
                                    }// end function
                                    })]};
                                }// end function
                                }), new UIComponentDescriptor({type:Canvas, id:"guildChatBoxLargeFct", stylesFactory:function () : void
                                {
                                    this.fontSize = 14;
                                    return;
                                }// end function
                                , propertiesFactory:function () : Object
                                {
                                    return {percentHeight:100, percentWidth:100, childDescriptors:[new UIComponentDescriptor({type:DataGrid, id:"guild_chat_grid_large_faction", events:{updateComplete:"__guild_chat_grid_large_faction_updateComplete"}, stylesFactory:function () : void
                                    {
                                        this.backgroundAlpha = 0;
                                        this.verticalGridLines = false;
                                        this.horizontalGridLines = false;
                                        this.borderThickness = 0;
                                        return;
                                    }// end function
                                    , propertiesFactory:function () : Object
                                    {
                                        return {editable:false, percentWidth:100, percentHeight:100, styleName:"InfoTxtBox", sortableColumns:false, showHeaders:false, wordWrap:true, variableRowHeight:true, selectable:false, columns:[_GuildChatWindow_DataGridColumn14_c(), _GuildChatWindow_DataGridColumn15_c(), _GuildChatWindow_DataGridColumn16_c()]};
                                    }// end function
                                    })]};
                                }// end function
                                })]};
                            }// end function
                            })]};
                        }// end function
                        })]};
                    }// end function
                    })]};
                }// end function
                }), new UIComponentDescriptor({type:HBox, id:"inputBox", propertiesFactory:function () : Object
                {
                    return {y:148, childDescriptors:[new UIComponentDescriptor({type:Spacer}), new UIComponentDescriptor({type:TextInput, id:"input", events:{focusIn:"__input_focusIn", click:"__input_click"}, propertiesFactory:function () : Object
                    {
                        return {width:390, imeMode:"JAPANESE_HIRAGANA", maxChars:254};
                    }// end function
                    }), new UIComponentDescriptor({type:Image, id:"enterButton", propertiesFactory:function () : Object
                    {
                        return {source:_embed_mxml__swf_guild_chat_button_info_chatenter_swf_162954869};
                    }// end function
                    })]};
                }// end function
                })]};
            }// end function
            });
            _embed_mxml__swf_guild_chat_button_info_chatenter_swf_162954869 = GuildChatWindow__embed_mxml__swf_guild_chat_button_info_chatenter_swf_162954869;
            _bindings = [];
            _watchers = [];
            _bindingsByDestination = {};
            _bindingsBeginWithWord = {};
            mx_internal::_document = this;
            _GuildChatWindow_ClassFactory5_i();
            _GuildChatWindow_ClassFactory8_i();
            _GuildChatWindow_ClassFactory6_i();
            _GuildChatWindow_ClassFactory7_i();
            this.addEventListener("creationComplete", ___GuildChatWindow_PopupWindow1_creationComplete);
            return;
        }// end function

        private function get _player() : PlayerVO
        {
            return this._1722718208_player;
        }// end function

        public function __guild_chat_grid_large_faction_updateComplete(event:FlexEvent) : void
        {
            handleUpdateComplete(event);
            return;
        }// end function

        private function _GuildChatWindow_DataGridColumn2_c() : DataGridColumn
        {
            var _loc_1:* = new DataGridColumn();
            _loc_1.dataField = "playerName";
            _loc_1.width = 260;
            _loc_1.setStyle("color", 2966695);
            return _loc_1;
        }// end function

        public function set guildChatBoxSmall(param1:Canvas) : void
        {
            var _loc_2:* = this._1536595705guildChatBoxSmall;
            if (_loc_2 !== param1)
            {
                this._1536595705guildChatBoxSmall = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "guildChatBoxSmall", _loc_2, param1));
            }
            return;
        }// end function

        private function set _player(param1:PlayerVO) : void
        {
            var _loc_2:* = this._1722718208_player;
            if (_loc_2 !== param1)
            {
                this._1722718208_player = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "_player", _loc_2, param1));
            }
            return;
        }// end function

        public function set chatsViewStack(param1:ViewStack) : void
        {
            var _loc_2:* = this._1978969352chatsViewStack;
            if (_loc_2 !== param1)
            {
                this._1978969352chatsViewStack = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "chatsViewStack", _loc_2, param1));
            }
            return;
        }// end function

        public function get guildChatBoxLargeFct() : Canvas
        {
            return this._1854147044guildChatBoxLargeFct;
        }// end function

        private function get scaleButtonStyleName() : String
        {
            return this._1990356512scaleButtonStyleName;
        }// end function

        private function _GuildChatWindow_ClassFactory5_i() : ClassFactory
        {
            var _loc_1:* = new ClassFactory();
            smallChatRenderer = _loc_1;
            _loc_1.generator = GuildChatWindow_inlineComponent1;
            _loc_1.properties = {outerDocument:this};
            return _loc_1;
        }// end function

        public function get guild_chat_grid_small_all() : DataGrid
        {
            return this._1660085717guild_chat_grid_small_all;
        }// end function

        private function get _oldChatText() : ArrayCollection
        {
            return this._1118553555_oldChatText;
        }// end function

        private function _GuildChatWindow_DataGridColumn12_c() : DataGridColumn
        {
            var _loc_1:* = new DataGridColumn();
            _loc_1.dataField = "createdAtLabel";
            _loc_1.width = 190;
            _loc_1.setStyle("color", 12279952);
            return _loc_1;
        }// end function

        public function get enterButton() : Image
        {
            return this._428894166enterButton;
        }// end function

        public function set guildChatBoxSmallAll(param1:Canvas) : void
        {
            var _loc_2:* = this._961140966guildChatBoxSmallAll;
            if (_loc_2 !== param1)
            {
                this._961140966guildChatBoxSmallAll = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "guildChatBoxSmallAll", _loc_2, param1));
            }
            return;
        }// end function

        public function __guild_chat_grid_large_sys_updateComplete(event:FlexEvent) : void
        {
            handleUpdateComplete(event);
            return;
        }// end function

        public function get chatWindowExpansion() : Boolean
        {
            return _chatWindowExpansion;
        }// end function

        public function __guild_chat_grid_small_updateComplete(event:FlexEvent) : void
        {
            handleUpdateComplete(event);
            return;
        }// end function

        public function set smallChatRendererFct(param1:ClassFactory) : void
        {
            var _loc_2:* = this._1897797909smallChatRendererFct;
            if (_loc_2 !== param1)
            {
                this._1897797909smallChatRendererFct = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "smallChatRendererFct", _loc_2, param1));
            }
            return;
        }// end function

        public function set guildChatBoxLargeFct(param1:Canvas) : void
        {
            var _loc_2:* = this._1854147044guildChatBoxLargeFct;
            if (_loc_2 !== param1)
            {
                this._1854147044guildChatBoxLargeFct = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "guildChatBoxLargeFct", _loc_2, param1));
            }
            return;
        }// end function

        private function get eventName() : String
        {
            return GUILD_CHAT_UPDATE;
        }// end function

        private function set scaleButtonStyleName(param1:String) : void
        {
            var _loc_2:* = this._1990356512scaleButtonStyleName;
            if (_loc_2 !== param1)
            {
                this._1990356512scaleButtonStyleName = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "scaleButtonStyleName", _loc_2, param1));
            }
            return;
        }// end function

        public function get guildChatBoxSmallSys() : Canvas
        {
            return this._961123258guildChatBoxSmallSys;
        }// end function

        private function _GuildChatWindow_DataGridColumn1_i() : DataGridColumn
        {
            var _loc_1:* = new DataGridColumn();
            _GuildChatWindow_DataGridColumn1 = _loc_1;
            _loc_1.wordWrap = true;
            BindingManager.executeBindings(this, "_GuildChatWindow_DataGridColumn1", _GuildChatWindow_DataGridColumn1);
            return _loc_1;
        }// end function

        public function set enterButton(param1:Image) : void
        {
            var _loc_2:* = this._428894166enterButton;
            if (_loc_2 !== param1)
            {
                this._428894166enterButton = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "enterButton", _loc_2, param1));
            }
            return;
        }// end function

        public function set guild_chat_grid_small_all(param1:DataGrid) : void
        {
            var _loc_2:* = this._1660085717guild_chat_grid_small_all;
            if (_loc_2 !== param1)
            {
                this._1660085717guild_chat_grid_small_all = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "guild_chat_grid_small_all", _loc_2, param1));
            }
            return;
        }// end function

        private function _GuildChatWindow_DataGridColumn9_i() : DataGridColumn
        {
            var _loc_1:* = new DataGridColumn();
            _GuildChatWindow_DataGridColumn9 = _loc_1;
            _loc_1.wordWrap = true;
            BindingManager.executeBindings(this, "_GuildChatWindow_DataGridColumn9", _GuildChatWindow_DataGridColumn9);
            return _loc_1;
        }// end function

        public function ___GuildChatWindow_PopupWindow1_creationComplete(event:FlexEvent) : void
        {
            init();
            return;
        }// end function

        private function set _oldChatText(param1:ArrayCollection) : void
        {
            var _loc_2:* = this._1118553555_oldChatText;
            if (_loc_2 !== param1)
            {
                this._1118553555_oldChatText = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "_oldChatText", _loc_2, param1));
            }
            return;
        }// end function

        private function _GuildChatWindow_ClassFactory4_c() : ClassFactory
        {
            var _loc_1:* = new ClassFactory();
            _loc_1.generator = DataGridRowColor;
            return _loc_1;
        }// end function

        public function get guildChatBoxLargeAll() : Canvas
        {
            return this._1854151578guildChatBoxLargeAll;
        }// end function

        private function _GuildChatWindow_DataGridColumn11_c() : DataGridColumn
        {
            var _loc_1:* = new DataGridColumn();
            _loc_1.dataField = "body";
            _loc_1.width = 700;
            _loc_1.itemRenderer = _GuildChatWindow_ClassFactory3_c();
            return _loc_1;
        }// end function

        public function set chatWindowExpansion(param1:Boolean) : void
        {
            _chatWindowExpansion = param1;
            return;
        }// end function

        public function set guildChatViewStack(param1:ViewStack) : void
        {
            var _loc_2:* = this._1573354808guildChatViewStack;
            if (_loc_2 !== param1)
            {
                this._1573354808guildChatViewStack = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "guildChatViewStack", _loc_2, param1));
            }
            return;
        }// end function

        private function set _985752863player(param1:PlayerVO) : void
        {
            _player = param1;
            return;
        }// end function

        public function get guildChatViewStackSys() : ViewStack
        {
            return this._835067509guildChatViewStackSys;
        }// end function

        public function setGuildChatText(param1:Array) : void
        {
            var _loc_2:Object = null;
            if (param1[0])
            {
                _oldChatText = new ArrayCollection();
                for each (_loc_2 in param1)
                {
                    
                    if (_oldChatText.length == 0 || _oldChatText[(_oldChatText.length - 1)].id < _loc_2.id)
                    {
                        _oldChatText.addItem(_loc_2);
                    }
                }
                oldChatTextFilterRefresh();
            }
            scrollDown();
            return;
        }// end function

        private function setScaleButtonStyle() : void
        {
            scaleButtonStyleName = chatWindowExpansion ? ("chatWindowShrinkBtn") : ("chatWindowExpandBtn");
            return;
        }// end function

        public function get guild_chat_grid_large_all() : DataGrid
        {
            return this._721356383guild_chat_grid_large_all;
        }// end function

        public function get smallChatRendererSys() : ClassFactory
        {
            return this._1897811083smallChatRendererSys;
        }// end function

        public function set guildChatBoxLarge(param1:Canvas) : void
        {
            var _loc_2:* = this._1543401669guildChatBoxLarge;
            if (_loc_2 !== param1)
            {
                this._1543401669guildChatBoxLarge = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "guildChatBoxLarge", _loc_2, param1));
            }
            return;
        }// end function

        public function set guildChatViewStackAll(param1:ViewStack) : void
        {
            var _loc_2:* = this._835049801guildChatViewStackAll;
            if (_loc_2 !== param1)
            {
                this._835049801guildChatViewStackAll = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "guildChatViewStackAll", _loc_2, param1));
            }
            return;
        }// end function

        private function _GuildChatWindow_DataGridColumn8_c() : DataGridColumn
        {
            var _loc_1:* = new DataGridColumn();
            _loc_1.dataField = "createdAtLabel";
            _loc_1.width = 190;
            _loc_1.setStyle("color", 12279952);
            return _loc_1;
        }// end function

        public function set guildChatBoxSmallSys(param1:Canvas) : void
        {
            var _loc_2:* = this._961123258guildChatBoxSmallSys;
            if (_loc_2 !== param1)
            {
                this._961123258guildChatBoxSmallSys = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "guildChatBoxSmallSys", _loc_2, param1));
            }
            return;
        }// end function

        private function refreshChatText() : void
        {
            focusOnInputText();
            oldChatTextFilterRefresh();
            return;
        }// end function

        private function _GuildChatWindow_ClassFactory3_c() : ClassFactory
        {
            var _loc_1:* = new ClassFactory();
            _loc_1.generator = DataGridRowColor;
            return _loc_1;
        }// end function

        public function get chatText() : String
        {
            return _chatText;
        }// end function

        private function _GuildChatWindow_DataGridColumn10_c() : DataGridColumn
        {
            var _loc_1:* = new DataGridColumn();
            _loc_1.dataField = "playerName";
            _loc_1.width = 260;
            _loc_1.setStyle("color", 2966695);
            return _loc_1;
        }// end function

        public function __guild_chat_grid_small_faction_updateComplete(event:FlexEvent) : void
        {
            handleUpdateComplete(event);
            return;
        }// end function

        public function set guild_chat_grid_small_sys(param1:DataGrid) : void
        {
            var _loc_2:* = this._1660068009guild_chat_grid_small_sys;
            if (_loc_2 !== param1)
            {
                this._1660068009guild_chat_grid_small_sys = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "guild_chat_grid_small_sys", _loc_2, param1));
            }
            return;
        }// end function

        public function set guild_chat_grid_large_all(param1:DataGrid) : void
        {
            var _loc_2:* = this._721356383guild_chat_grid_large_all;
            if (_loc_2 !== param1)
            {
                this._721356383guild_chat_grid_large_all = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "guild_chat_grid_large_all", _loc_2, param1));
            }
            return;
        }// end function

        public function set smallChatRendererAll(param1:ClassFactory) : void
        {
            var _loc_2:* = this._1897793375smallChatRendererAll;
            if (_loc_2 !== param1)
            {
                this._1897793375smallChatRendererAll = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "smallChatRendererAll", _loc_2, param1));
            }
            return;
        }// end function

        public function __input_focusIn(event:FocusEvent) : void
        {
            focusOnInputText();
            return;
        }// end function

        public function set guildChatBoxLargeAll(param1:Canvas) : void
        {
            var _loc_2:* = this._1854151578guildChatBoxLargeAll;
            if (_loc_2 !== param1)
            {
                this._1854151578guildChatBoxLargeAll = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "guildChatBoxLargeAll", _loc_2, param1));
            }
            return;
        }// end function

        public function get guildChatBoxSmallFct() : Canvas
        {
            return this._961136432guildChatBoxSmallFct;
        }// end function

        private function _GuildChatWindow_DataGridColumn7_c() : DataGridColumn
        {
            var _loc_1:* = new DataGridColumn();
            _loc_1.dataField = "body";
            _loc_1.width = 700;
            _loc_1.itemRenderer = _GuildChatWindow_ClassFactory2_c();
            return _loc_1;
        }// end function

        public function get player() : PlayerVO
        {
            return _player;
        }// end function

        public function __guild_chat_grid_large_all_updateComplete(event:FlexEvent) : void
        {
            handleUpdateComplete(event);
            return;
        }// end function

        public function __chatsViewStack_change(event:IndexChangedEvent) : void
        {
            refreshChatText();
            return;
        }// end function

        private function _GuildChatWindow_ClassFactory2_c() : ClassFactory
        {
            var _loc_1:* = new ClassFactory();
            _loc_1.generator = DataGridRowColor;
            return _loc_1;
        }// end function

        public function get smallChatRenderer() : ClassFactory
        {
            return this._1644033762smallChatRenderer;
        }// end function

        public function set guildChatViewStackSys(param1:ViewStack) : void
        {
            var _loc_2:* = this._835067509guildChatViewStackSys;
            if (_loc_2 !== param1)
            {
                this._835067509guildChatViewStackSys = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "guildChatViewStackSys", _loc_2, param1));
            }
            return;
        }// end function

        private function _GuildChatWindow_bindingsSetup() : Array
        {
            var binding:Binding;
            var result:Array;
            binding = new Binding(this, function () : Object
            {
                return _oldChatText;
            }// end function
            , function (param1:Object) : void
            {
                guild_chat_grid_small.dataProvider = param1;
                return;
            }// end function
            , "guild_chat_grid_small.dataProvider");
            result[0] = binding;
            binding = new Binding(this, function () : IFactory
            {
                return smallChatRenderer;
            }// end function
            , function (param1:IFactory) : void
            {
                _GuildChatWindow_DataGridColumn1.itemRenderer = param1;
                return;
            }// end function
            , "_GuildChatWindow_DataGridColumn1.itemRenderer");
            result[1] = binding;
            binding = new Binding(this, function () : Object
            {
                return _oldChatText;
            }// end function
            , function (param1:Object) : void
            {
                guild_chat_grid_large.dataProvider = param1;
                return;
            }// end function
            , "guild_chat_grid_large.dataProvider");
            result[2] = binding;
            binding = new Binding(this, function () : Object
            {
                return _oldChatText;
            }// end function
            , function (param1:Object) : void
            {
                guild_chat_grid_small_all.dataProvider = param1;
                return;
            }// end function
            , "guild_chat_grid_small_all.dataProvider");
            result[3] = binding;
            binding = new Binding(this, function () : IFactory
            {
                return smallChatRendererAll;
            }// end function
            , function (param1:IFactory) : void
            {
                _GuildChatWindow_DataGridColumn5.itemRenderer = param1;
                return;
            }// end function
            , "_GuildChatWindow_DataGridColumn5.itemRenderer");
            result[4] = binding;
            binding = new Binding(this, function () : Object
            {
                return _oldChatText;
            }// end function
            , function (param1:Object) : void
            {
                guild_chat_grid_large_all.dataProvider = param1;
                return;
            }// end function
            , "guild_chat_grid_large_all.dataProvider");
            result[5] = binding;
            binding = new Binding(this, function () : Object
            {
                return _oldChatText;
            }// end function
            , function (param1:Object) : void
            {
                guild_chat_grid_small_sys.dataProvider = param1;
                return;
            }// end function
            , "guild_chat_grid_small_sys.dataProvider");
            result[6] = binding;
            binding = new Binding(this, function () : IFactory
            {
                return smallChatRendererSys;
            }// end function
            , function (param1:IFactory) : void
            {
                _GuildChatWindow_DataGridColumn9.itemRenderer = param1;
                return;
            }// end function
            , "_GuildChatWindow_DataGridColumn9.itemRenderer");
            result[7] = binding;
            binding = new Binding(this, function () : Object
            {
                return _oldChatText;
            }// end function
            , function (param1:Object) : void
            {
                guild_chat_grid_large_sys.dataProvider = param1;
                return;
            }// end function
            , "guild_chat_grid_large_sys.dataProvider");
            result[8] = binding;
            binding = new Binding(this, function () : Object
            {
                return _oldChatText;
            }// end function
            , function (param1:Object) : void
            {
                guild_chat_grid_small_faction.dataProvider = param1;
                return;
            }// end function
            , "guild_chat_grid_small_faction.dataProvider");
            result[9] = binding;
            binding = new Binding(this, function () : IFactory
            {
                return smallChatRendererFct;
            }// end function
            , function (param1:IFactory) : void
            {
                _GuildChatWindow_DataGridColumn13.itemRenderer = param1;
                return;
            }// end function
            , "_GuildChatWindow_DataGridColumn13.itemRenderer");
            result[10] = binding;
            binding = new Binding(this, function () : Object
            {
                return _oldChatText;
            }// end function
            , function (param1:Object) : void
            {
                guild_chat_grid_large_faction.dataProvider = param1;
                return;
            }// end function
            , "guild_chat_grid_large_faction.dataProvider");
            result[11] = binding;
            return result;
        }// end function

        public function get chatVBox() : VBox
        {
            return this._1437418733chatVBox;
        }// end function

        private function get _chatTexts() : ArrayCollection
        {
            return this._120598255_chatTexts;
        }// end function

        public function __guild_chat_grid_small_sys_updateComplete(event:FlexEvent) : void
        {
            handleUpdateComplete(event);
            return;
        }// end function

        public function __input_click(event:MouseEvent) : void
        {
            focusOnInputText();
            return;
        }// end function

        public function get guildChatViewStackFct() : ViewStack
        {
            return this._835054335guildChatViewStackFct;
        }// end function

        private function focusOnInputText() : void
        {
            input.imeMode = "JAPANESE_HIRAGANA";
            if (input.text == CHAT_ERROR_MESSAGE)
            {
                input.text = "";
            }
            input.setStyle("color", 734012);
            input.addEventListener(FlexEvent.ENTER, onChat);
            input.editable = true;
            enterButton.visible = true;
            enterButton.addEventListener(MouseEvent.CLICK, onChat);
            return;
        }// end function

        public function get guildChatBoxSmall() : Canvas
        {
            return this._1536595705guildChatBoxSmall;
        }// end function

        public function get chatsViewStack() : ViewStack
        {
            return this._1978969352chatsViewStack;
        }// end function

        private function scrollDown() : void
        {
            var _loc_1:Object = null;
            var _loc_2:Object = null;
            var _loc_3:int = 0;
            while (_loc_3 < 4)
            {
                
                switch(_loc_3)
                {
                    case 2:
                    {
                        _loc_1 = guild_chat_grid_large_faction;
                        _loc_2 = guild_chat_grid_small_faction;
                        break;
                    }
                    case 1:
                    {
                        _loc_1 = guild_chat_grid_large_all;
                        _loc_2 = guild_chat_grid_small_all;
                        break;
                    }
                    case 3:
                    {
                        _loc_1 = guild_chat_grid_large_sys;
                        _loc_2 = guild_chat_grid_small_sys;
                        break;
                    }
                    case 0:
                    default:
                    {
                        _loc_1 = guild_chat_grid_large;
                        _loc_2 = guild_chat_grid_small;
                        break;
                        break;
                    }
                }
                _loc_1.scrollToIndex(_loc_1.dataProvider.length);
                _loc_2.scrollToIndex(_loc_2.dataProvider.length);
                _loc_3++;
            }
            return;
        }// end function

        private function init() : void
        {
            return;
        }// end function

        private function _GuildChatWindow_DataGridColumn6_c() : DataGridColumn
        {
            var _loc_1:* = new DataGridColumn();
            _loc_1.dataField = "playerName";
            _loc_1.width = 260;
            _loc_1.setStyle("color", 2966695);
            return _loc_1;
        }// end function

        public function get smallChatRendererFct() : ClassFactory
        {
            return this._1897797909smallChatRendererFct;
        }// end function

        public function set guild_chat_grid_large_sys(param1:DataGrid) : void
        {
            var _loc_2:* = this._721374091guild_chat_grid_large_sys;
            if (_loc_2 !== param1)
            {
                this._721374091guild_chat_grid_large_sys = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "guild_chat_grid_large_sys", _loc_2, param1));
            }
            return;
        }// end function

        private function onChangeSize() : void
        {
            changeSize();
            sendEvent(CHANGE_SIZE);
            return;
        }// end function

        public function get guildChatBoxSmallAll() : Canvas
        {
            return this._961140966guildChatBoxSmallAll;
        }// end function

        public function set smallChatRendererSys(param1:ClassFactory) : void
        {
            var _loc_2:* = this._1897811083smallChatRendererSys;
            if (_loc_2 !== param1)
            {
                this._1897811083smallChatRendererSys = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "smallChatRendererSys", _loc_2, param1));
            }
            return;
        }// end function

        private function _GuildChatWindow_ClassFactory1_c() : ClassFactory
        {
            var _loc_1:* = new ClassFactory();
            _loc_1.generator = DataGridRowColor;
            return _loc_1;
        }// end function

        public function set guildChatBoxLargeSys(param1:Canvas) : void
        {
            var _loc_2:* = this._1854133870guildChatBoxLargeSys;
            if (_loc_2 !== param1)
            {
                this._1854133870guildChatBoxLargeSys = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "guildChatBoxLargeSys", _loc_2, param1));
            }
            return;
        }// end function

        private function _GuildChatWindow_DataGridColumn16_c() : DataGridColumn
        {
            var _loc_1:* = new DataGridColumn();
            _loc_1.dataField = "createdAtLabel";
            _loc_1.width = 190;
            _loc_1.setStyle("color", 12279952);
            return _loc_1;
        }// end function

        public function get guildChatViewStack() : ViewStack
        {
            return this._1573354808guildChatViewStack;
        }// end function

        public function get guildChatBoxLarge() : Canvas
        {
            return this._1543401669guildChatBoxLarge;
        }// end function

        private function oldChatTextFilterSet(param1:Object) : Boolean
        {
            var _loc_2:Boolean = false;
            switch(this.chatsViewStack.selectedIndex)
            {
                case 0:
                {
                    if (param1.chatType == GuildChatVO.CHAT_TYPE_GUILD || param1.chatType == GuildChatVO.CHAT_TYPE_SYSTEM_FOR_GUILD)
                    {
                        _loc_2 = true;
                    }
                    break;
                }
                case 1:
                {
                    _loc_2 = true;
                    break;
                }
                case 2:
                {
                    if (param1.chatType == GuildChatVO.CHAT_TYPE_SYSTEM_FOR_ALL)
                    {
                        _loc_2 = true;
                    }
                    break;
                }
                case 3:
                {
                    if (param1.chatType == GuildChatVO.CHAT_TYPE_FACTION || param1.chatType == GuildChatVO.CHAT_TYPE_SYSTEM_FOR_FACTION)
                    {
                        _loc_2 = true;
                    }
                    break;
                }
                default:
                {
                    break;
                    break;
                }
            }
            return _loc_2;
        }// end function

        public function get guildChatViewStackAll() : ViewStack
        {
            return this._835049801guildChatViewStackAll;
        }// end function

        public function set guild_chat_grid_small_faction(param1:DataGrid) : void
        {
            var _loc_2:* = this._1262525018guild_chat_grid_small_faction;
            if (_loc_2 !== param1)
            {
                this._1262525018guild_chat_grid_small_faction = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "guild_chat_grid_small_faction", _loc_2, param1));
            }
            return;
        }// end function

        public function set inputBox(param1:HBox) : void
        {
            var _loc_2:* = this._470688161inputBox;
            if (_loc_2 !== param1)
            {
                this._470688161inputBox = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "inputBox", _loc_2, param1));
            }
            return;
        }// end function

        private function _GuildChatWindow_DataGridColumn5_i() : DataGridColumn
        {
            var _loc_1:* = new DataGridColumn();
            _GuildChatWindow_DataGridColumn5 = _loc_1;
            _loc_1.wordWrap = true;
            BindingManager.executeBindings(this, "_GuildChatWindow_DataGridColumn5", _GuildChatWindow_DataGridColumn5);
            return _loc_1;
        }// end function

        public function get guild_chat_grid_small_sys() : DataGrid
        {
            return this._1660068009guild_chat_grid_small_sys;
        }// end function

        public function get smallChatRendererAll() : ClassFactory
        {
            return this._1897793375smallChatRendererAll;
        }// end function

        public function set location(param1:String) : void
        {
            _location = param1;
            return;
        }// end function

        private function handleUpdateComplete(event:Event) : void
        {
            scrollDown();
            return;
        }// end function

        private function _GuildChatWindow_ClassFactory8_i() : ClassFactory
        {
            var _loc_1:* = new ClassFactory();
            smallChatRendererAll = _loc_1;
            _loc_1.generator = GuildChatWindow_inlineComponent4;
            _loc_1.properties = {outerDocument:this};
            return _loc_1;
        }// end function

        private function _GuildChatWindow_DataGridColumn15_c() : DataGridColumn
        {
            var _loc_1:* = new DataGridColumn();
            _loc_1.dataField = "body";
            _loc_1.width = 700;
            _loc_1.itemRenderer = _GuildChatWindow_ClassFactory4_c();
            return _loc_1;
        }// end function

        public function __guild_chat_grid_large_updateComplete(event:FlexEvent) : void
        {
            handleUpdateComplete(event);
            return;
        }// end function

        public function get guild_chat_grid_large_sys() : DataGrid
        {
            return this._721374091guild_chat_grid_large_sys;
        }// end function

        override public function initialize() : void
        {
            var target:GuildChatWindow;
            var watcherSetupUtilClass:Object;
            .mx_internal::setDocumentDescriptor(_documentDescriptor_);
            var bindings:* = _GuildChatWindow_bindingsSetup();
            var watchers:Array;
            target;
            if (_watcherSetupUtil == null)
            {
                watcherSetupUtilClass = getDefinitionByName("_com_kbmj_viking_view_GuildChatWindowWatcherSetupUtil");
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

        public function get guildChatBoxLargeSys() : Canvas
        {
            return this._1854133870guildChatBoxLargeSys;
        }// end function

        public function set input(param1:TextInput) : void
        {
            var _loc_2:* = this._100358090input;
            if (_loc_2 !== param1)
            {
                this._100358090input = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "input", _loc_2, param1));
            }
            return;
        }// end function

        public function set guild_chat_grid_small(param1:DataGrid) : void
        {
            var _loc_2:* = this._1263959497guild_chat_grid_small;
            if (_loc_2 !== param1)
            {
                this._1263959497guild_chat_grid_small = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "guild_chat_grid_small", _loc_2, param1));
            }
            return;
        }// end function

        private function _GuildChatWindow_bindingExprs() : void
        {
            var _loc_1:* = undefined;
            _loc_1 = _oldChatText;
            _loc_1 = smallChatRenderer;
            _loc_1 = _oldChatText;
            _loc_1 = _oldChatText;
            _loc_1 = smallChatRendererAll;
            _loc_1 = _oldChatText;
            _loc_1 = _oldChatText;
            _loc_1 = smallChatRendererSys;
            _loc_1 = _oldChatText;
            _loc_1 = _oldChatText;
            _loc_1 = smallChatRendererFct;
            _loc_1 = _oldChatText;
            return;
        }// end function

        private function _GuildChatWindow_DataGridColumn4_c() : DataGridColumn
        {
            var _loc_1:* = new DataGridColumn();
            _loc_1.dataField = "createdAtLabel";
            _loc_1.width = 190;
            _loc_1.setStyle("color", 12279952);
            return _loc_1;
        }// end function

        public function set guildChatBoxSmallFct(param1:Canvas) : void
        {
            var _loc_2:* = this._961136432guildChatBoxSmallFct;
            if (_loc_2 !== param1)
            {
                this._961136432guildChatBoxSmallFct = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "guildChatBoxSmallFct", _loc_2, param1));
            }
            return;
        }// end function

        private function spaceCheck(param1:String) : Boolean
        {
            var _loc_2:* = param1.length;
            var _loc_3:Array = [];
            var _loc_4:int = 0;
            while (_loc_4 < _loc_2)
            {
                
                if (param1.charAt(_loc_4) != " " && param1.charAt(_loc_4) != "　")
                {
                    _loc_3.push(param1.charAt(_loc_4));
                }
                _loc_4++;
            }
            return _loc_3.length > 0;
        }// end function

        public function get guild_chat_grid_small_faction() : DataGrid
        {
            return this._1262525018guild_chat_grid_small_faction;
        }// end function

        public function get inputBox() : HBox
        {
            return this._470688161inputBox;
        }// end function

        private function _GuildChatWindow_ClassFactory7_i() : ClassFactory
        {
            var _loc_1:* = new ClassFactory();
            smallChatRendererSys = _loc_1;
            _loc_1.generator = GuildChatWindow_inlineComponent3;
            _loc_1.properties = {outerDocument:this};
            return _loc_1;
        }// end function

        public function __guild_chat_grid_small_all_updateComplete(event:FlexEvent) : void
        {
            handleUpdateComplete(event);
            return;
        }// end function

        private function _GuildChatWindow_DataGridColumn14_c() : DataGridColumn
        {
            var _loc_1:* = new DataGridColumn();
            _loc_1.dataField = "playerName";
            _loc_1.width = 260;
            _loc_1.setStyle("color", 2966695);
            return _loc_1;
        }// end function

        public function set guild_chat_grid_large_faction(param1:DataGrid) : void
        {
            var _loc_2:* = this._491251750guild_chat_grid_large_faction;
            if (_loc_2 !== param1)
            {
                this._491251750guild_chat_grid_large_faction = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "guild_chat_grid_large_faction", _loc_2, param1));
            }
            return;
        }// end function

        public function get location() : String
        {
            return _location;
        }// end function

        public function oldChatTextFilterRefresh() : void
        {
            if (_oldChatText)
            {
                _oldChatText.filterFunction = oldChatTextFilterSet;
                _oldChatText.refresh();
            }
            return;
        }// end function

        public function set player(param1:PlayerVO) : void
        {
            var _loc_2:* = this.player;
            if (_loc_2 !== param1)
            {
                this._985752863player = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "player", _loc_2, param1));
            }
            return;
        }// end function

        public function get guild_chat_grid_small() : DataGrid
        {
            return this._1263959497guild_chat_grid_small;
        }// end function

        public function get input() : TextInput
        {
            return this._100358090input;
        }// end function

        private function _GuildChatWindow_DataGridColumn3_c() : DataGridColumn
        {
            var _loc_1:* = new DataGridColumn();
            _loc_1.dataField = "body";
            _loc_1.width = 700;
            _loc_1.itemRenderer = _GuildChatWindow_ClassFactory1_c();
            return _loc_1;
        }// end function

        public function changeSize() : void
        {
            var _loc_1:Object = null;
            var _loc_2:Object = null;
            var _loc_3:Object = null;
            var _loc_4:int = 0;
            while (_loc_4 < 4)
            {
                
                switch(_loc_4)
                {
                    case 2:
                    {
                        _loc_1 = guildChatViewStackFct;
                        _loc_2 = guildChatBoxLargeFct;
                        _loc_3 = guildChatBoxSmallFct;
                        break;
                    }
                    case 1:
                    {
                        _loc_1 = guildChatViewStackAll;
                        _loc_2 = guildChatBoxLargeAll;
                        _loc_3 = guildChatBoxSmallAll;
                        break;
                    }
                    case 3:
                    {
                        _loc_1 = guildChatViewStackSys;
                        _loc_2 = guildChatBoxLargeSys;
                        _loc_3 = guildChatBoxSmallSys;
                        break;
                    }
                    case 0:
                    default:
                    {
                        _loc_1 = guildChatViewStack;
                        _loc_2 = guildChatBoxLarge;
                        _loc_3 = guildChatBoxSmall;
                        break;
                        break;
                    }
                }
                switch(_loc_1.selectedIndex)
                {
                    case 0:
                    {
                        var _loc_5:* = _loc_1;
                        var _loc_6:* = _loc_1.selectedIndex + 1;
                        _loc_5.selectedIndex = _loc_6;
                        _chatWindowExpansion = true;
                        input.width = 608;
                        inputBox.y = 391;
                        chatVBox.width = 613;
                        chatVBox.height = 390;
                        _loc_2.width = 613;
                        _loc_2.height = 380;
                        break;
                    }
                    case 1:
                    default:
                    {
                        _loc_1.selectedIndex = 0;
                        _chatWindowExpansion = false;
                        input.width = 390;
                        inputBox.y = 148;
                        chatVBox.width = 415;
                        chatVBox.height = 158;
                        _loc_3.width = 395;
                        _loc_3.height = 170;
                        break;
                        break;
                    }
                }
                _loc_1.width = chatVBox.width;
                _loc_1.height = chatVBox.height - 10;
                _loc_4++;
            }
            setScaleButtonStyle();
            scrollDown();
            return;
        }// end function

        public function set smallChatRenderer(param1:ClassFactory) : void
        {
            var _loc_2:* = this._1644033762smallChatRenderer;
            if (_loc_2 !== param1)
            {
                this._1644033762smallChatRenderer = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "smallChatRenderer", _loc_2, param1));
            }
            return;
        }// end function

        private function onChat(event:Event) : void
        {
            var _loc_2:* = new String();
            if (input.text && spaceCheck(input.text))
            {
                switch(this.chatsViewStack.selectedIndex)
                {
                    case 3:
                    {
                        _loc_2 = GuildChatVO.CHAT_TYPE_FACTION.toString() + input.text;
                        break;
                    }
                    case 0:
                    {
                        _loc_2 = GuildChatVO.CHAT_TYPE_GUILD.toString() + input.text;
                        break;
                    }
                    default:
                    {
                        break;
                    }
                }
                sendPopupEvent(eventName, _loc_2);
                _chatText = _loc_2;
            }
            input.text = null;
            scrollDown();
            return;
        }// end function

        public function set chatVBox(param1:VBox) : void
        {
            var _loc_2:* = this._1437418733chatVBox;
            if (_loc_2 !== param1)
            {
                this._1437418733chatVBox = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "chatVBox", _loc_2, param1));
            }
            return;
        }// end function

        private function set _chatTexts(param1:ArrayCollection) : void
        {
            var _loc_2:* = this._120598255_chatTexts;
            if (_loc_2 !== param1)
            {
                this._120598255_chatTexts = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "_chatTexts", _loc_2, param1));
            }
            return;
        }// end function

        public function setGuildChatError() : void
        {
            input.removeEventListener(FlexEvent.ENTER, onChat);
            enterButton.visible = false;
            enterButton.removeEventListener(MouseEvent.CLICK, onChat);
            input.editable = false;
            input.setStyle("color", 11141120);
            input.text = CHAT_ERROR_MESSAGE;
            return;
        }// end function

        public function get guild_chat_grid_large_faction() : DataGrid
        {
            return this._491251750guild_chat_grid_large_faction;
        }// end function

        private function _GuildChatWindow_ClassFactory6_i() : ClassFactory
        {
            var _loc_1:* = new ClassFactory();
            smallChatRendererFct = _loc_1;
            _loc_1.generator = GuildChatWindow_inlineComponent2;
            _loc_1.properties = {outerDocument:this};
            return _loc_1;
        }// end function

        public function get oldChatText() : ArrayCollection
        {
            return _oldChatText;
        }// end function

        public function set guild_chat_grid_large(param1:DataGrid) : void
        {
            var _loc_2:* = this._1257153533guild_chat_grid_large;
            if (_loc_2 !== param1)
            {
                this._1257153533guild_chat_grid_large = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "guild_chat_grid_large", _loc_2, param1));
            }
            return;
        }// end function

        private function _GuildChatWindow_DataGridColumn13_i() : DataGridColumn
        {
            var _loc_1:* = new DataGridColumn();
            _GuildChatWindow_DataGridColumn13 = _loc_1;
            _loc_1.wordWrap = true;
            BindingManager.executeBindings(this, "_GuildChatWindow_DataGridColumn13", _GuildChatWindow_DataGridColumn13);
            return _loc_1;
        }// end function

        public function get guild_chat_grid_large() : DataGrid
        {
            return this._1257153533guild_chat_grid_large;
        }// end function

        public function set guildChatViewStackFct(param1:ViewStack) : void
        {
            var _loc_2:* = this._835054335guildChatViewStackFct;
            if (_loc_2 !== param1)
            {
                this._835054335guildChatViewStackFct = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "guildChatViewStackFct", _loc_2, param1));
            }
            return;
        }// end function

        public static function set watcherSetupUtil(param1:IWatcherSetupUtil) : void
        {
            GuildChatWindow._watcherSetupUtil = param1;
            return;
        }// end function

    }
}
