package com.kbmj.viking.view
{
    import com.kbmj.viking.lib.*;
    import com.kbmj.viking.vo.tactics.*;
    import flash.display.*;
    import flash.events.*;
    import flash.utils.*;
    import mx.binding.*;
    import mx.collections.*;
    import mx.containers.*;
    import mx.controls.*;
    import mx.core.*;
    import mx.events.*;

    public class UnitLevelUpWindow extends PopupWindow implements IBindingClient
    {
        public var _UnitLevelUpWindow_Label11:Label;
        public var _UnitLevelUpWindow_Label13:Label;
        public var _UnitLevelUpWindow_Label14:Label;
        public var _UnitLevelUpWindow_Label15:Label;
        public var _UnitLevelUpWindow_Label10:Label;
        private var _1618605034statusCanvas:Canvas;
        public var _UnitLevelUpWindow_Label16:Label;
        private var _1075873300_swf_window:MovieClipLoaderAsset;
        private var _469630975_afterUnit:UnitVO;
        var _watchers:Array;
        public var _UnitLevelUpWindow_Image1:Image;
        public var _UnitLevelUpWindow_Label1:Label;
        public var _UnitLevelUpWindow_Image2:Image;
        public var _UnitLevelUpWindow_Label3:Label;
        public var _UnitLevelUpWindow_Label5:Label;
        public var _UnitLevelUpWindow_Label6:Label;
        public var _UnitLevelUpWindow_Label7:Label;
        public var _UnitLevelUpWindow_Label8:Label;
        public var _UnitLevelUpWindow_Label2:Label;
        private var _1665809106_swf_button:MovieClipLoaderAsset;
        public var _UnitLevelUpWindow_Label9:Label;
        var _bindingsByDestination:Object;
        var _bindingsBeginWithWord:Object;
        private var _1809908821textCollection:ArrayCollection;
        public var _UnitLevelUpWindow_Text1:Text;
        public var _UnitLevelUpWindow_Text3:Text;
        public var _UnitLevelUpWindow_Text5:Text;
        public var _UnitLevelUpWindow_Text2:Text;
        private var _runLevelUp:Boolean = false;
        public var _UnitLevelUpWindow_Text4:Text;
        private var _2039061896_preUnit:UnitVO;
        var _bindings:Array;
        private var _documentDescriptor_:UIComponentDescriptor;
        public static const CLOSED_UNITLEVELUP_WINDOW:String = "closedUnitLevelUpWindow";
        private static var _watcherSetupUtil:IWatcherSetupUtil;
        public static const NAME:String = "unitLevelUpWindow";

        public function UnitLevelUpWindow()
        {
            _documentDescriptor_ = new UIComponentDescriptor({type:PopupWindow, propertiesFactory:function () : Object
            {
                return {childDescriptors:[new UIComponentDescriptor({type:Image, id:"_UnitLevelUpWindow_Image1"}), new UIComponentDescriptor({type:Canvas, id:"statusCanvas", propertiesFactory:function () : Object
                {
                    return {x:190, y:120, childDescriptors:[new UIComponentDescriptor({type:Text, id:"_UnitLevelUpWindow_Text1", stylesFactory:function () : void
                    {
                        this.color = 16777215;
                        return;
                    }// end function
                    , propertiesFactory:function () : Object
                    {
                        return {styleName:"BiginnerTitle", x:145, y:26};
                    }// end function
                    }), new UIComponentDescriptor({type:Text, id:"_UnitLevelUpWindow_Text2", stylesFactory:function () : void
                    {
                        this.textDecoration = "underline";
                        return;
                    }// end function
                    , propertiesFactory:function () : Object
                    {
                        return {styleName:"BiginnerTitle", x:80, y:62};
                    }// end function
                    }), new UIComponentDescriptor({type:Text, id:"_UnitLevelUpWindow_Text3", stylesFactory:function () : void
                    {
                        this.textDecoration = "underline";
                        return;
                    }// end function
                    , propertiesFactory:function () : Object
                    {
                        return {styleName:"BiginnerTitle", x:200, y:62};
                    }// end function
                    }), new UIComponentDescriptor({type:Text, id:"_UnitLevelUpWindow_Text4", stylesFactory:function () : void
                    {
                        this.textDecoration = "underline";
                        return;
                    }// end function
                    , propertiesFactory:function () : Object
                    {
                        return {styleName:"BiginnerTitle", x:80, y:82};
                    }// end function
                    }), new UIComponentDescriptor({type:Text, id:"_UnitLevelUpWindow_Text5", stylesFactory:function () : void
                    {
                        this.textDecoration = "underline";
                        return;
                    }// end function
                    , propertiesFactory:function () : Object
                    {
                        return {styleName:"BiginnerTitle", x:200, y:82};
                    }// end function
                    }), new UIComponentDescriptor({type:Canvas, propertiesFactory:function () : Object
                    {
                        return {x:70, y:110, childDescriptors:[new UIComponentDescriptor({type:Grid, stylesFactory:function () : void
                        {
                            this.horizontalGap = 30;
                            this.verticalGap = 0;
                            return;
                        }// end function
                        , propertiesFactory:function () : Object
                        {
                            return {width:40, childDescriptors:[new UIComponentDescriptor({type:GridRow, propertiesFactory:function () : Object
                            {
                                return {childDescriptors:[new UIComponentDescriptor({type:GridItem, stylesFactory:function () : void
                                {
                                    this.borderStyle = "outset";
                                    this.borderColor = 2829099;
                                    this.borderSides = "bottom right";
                                    this.backgroundColor = 2115121;
                                    return;
                                }// end function
                                , propertiesFactory:function () : Object
                                {
                                    return {childDescriptors:[new UIComponentDescriptor({type:Label, id:"_UnitLevelUpWindow_Label1", stylesFactory:function () : void
                                    {
                                        this.fontSize = 14;
                                        this.textAlign = "center";
                                        this.color = 15658734;
                                        return;
                                    }// end function
                                    , propertiesFactory:function () : Object
                                    {
                                        return {width:30};
                                    }// end function
                                    })]};
                                }// end function
                                })]};
                            }// end function
                            }), new UIComponentDescriptor({type:GridRow, propertiesFactory:function () : Object
                            {
                                return {childDescriptors:[new UIComponentDescriptor({type:GridItem, stylesFactory:function () : void
                                {
                                    this.borderStyle = "outset";
                                    this.borderColor = 2829099;
                                    this.borderSides = "bottom right";
                                    this.backgroundColor = 2115121;
                                    return;
                                }// end function
                                , propertiesFactory:function () : Object
                                {
                                    return {childDescriptors:[new UIComponentDescriptor({type:Label, id:"_UnitLevelUpWindow_Label2", stylesFactory:function () : void
                                    {
                                        this.fontSize = 14;
                                        this.textAlign = "center";
                                        this.color = 15658734;
                                        return;
                                    }// end function
                                    , propertiesFactory:function () : Object
                                    {
                                        return {width:30};
                                    }// end function
                                    })]};
                                }// end function
                                })]};
                            }// end function
                            }), new UIComponentDescriptor({type:GridRow, propertiesFactory:function () : Object
                            {
                                return {childDescriptors:[new UIComponentDescriptor({type:GridItem, stylesFactory:function () : void
                                {
                                    this.borderStyle = "outset";
                                    this.borderColor = 2829099;
                                    this.borderSides = "bottom right";
                                    this.backgroundColor = 2115121;
                                    return;
                                }// end function
                                , propertiesFactory:function () : Object
                                {
                                    return {childDescriptors:[new UIComponentDescriptor({type:Label, id:"_UnitLevelUpWindow_Label3", stylesFactory:function () : void
                                    {
                                        this.fontSize = 14;
                                        this.textAlign = "center";
                                        this.color = 15658734;
                                        return;
                                    }// end function
                                    , propertiesFactory:function () : Object
                                    {
                                        return {width:30};
                                    }// end function
                                    })]};
                                }// end function
                                })]};
                            }// end function
                            }), new UIComponentDescriptor({type:GridRow, propertiesFactory:function () : Object
                            {
                                return {childDescriptors:[new UIComponentDescriptor({type:GridItem, stylesFactory:function () : void
                                {
                                    this.borderStyle = "outset";
                                    this.borderColor = 2829099;
                                    this.borderSides = "bottom right";
                                    this.backgroundColor = 2115121;
                                    return;
                                }// end function
                                , propertiesFactory:function () : Object
                                {
                                    return {childDescriptors:[new UIComponentDescriptor({type:Label, stylesFactory:function () : void
                                    {
                                        this.fontSize = 14;
                                        this.textAlign = "center";
                                        this.color = 15658734;
                                        return;
                                    }// end function
                                    , propertiesFactory:function () : Object
                                    {
                                        return {text:"HP", width:30};
                                    }// end function
                                    })]};
                                }// end function
                                })]};
                            }// end function
                            })]};
                        }// end function
                        }), new UIComponentDescriptor({type:Grid, stylesFactory:function () : void
                        {
                            this.horizontalGap = 30;
                            this.verticalGap = 0;
                            return;
                        }// end function
                        , propertiesFactory:function () : Object
                        {
                            return {width:100, x:30, childDescriptors:[new UIComponentDescriptor({type:GridRow, propertiesFactory:function () : Object
                            {
                                return {childDescriptors:[new UIComponentDescriptor({type:GridItem, stylesFactory:function () : void
                                {
                                    this.borderStyle = "outset";
                                    this.borderColor = 2829099;
                                    this.borderSides = "bottom right";
                                    this.backgroundColor = 14803650;
                                    return;
                                }// end function
                                , propertiesFactory:function () : Object
                                {
                                    return {childDescriptors:[new UIComponentDescriptor({type:Label, id:"_UnitLevelUpWindow_Label5", stylesFactory:function () : void
                                    {
                                        this.fontSize = 14;
                                        this.textAlign = "center";
                                        this.color = 0;
                                        return;
                                    }// end function
                                    , propertiesFactory:function () : Object
                                    {
                                        return {width:90};
                                    }// end function
                                    })]};
                                }// end function
                                })]};
                            }// end function
                            }), new UIComponentDescriptor({type:GridRow, propertiesFactory:function () : Object
                            {
                                return {childDescriptors:[new UIComponentDescriptor({type:GridItem, stylesFactory:function () : void
                                {
                                    this.borderStyle = "outset";
                                    this.borderColor = 2829099;
                                    this.borderSides = "bottom right";
                                    this.backgroundColor = 16119005;
                                    return;
                                }// end function
                                , propertiesFactory:function () : Object
                                {
                                    return {childDescriptors:[new UIComponentDescriptor({type:Label, id:"_UnitLevelUpWindow_Label6", stylesFactory:function () : void
                                    {
                                        this.fontSize = 14;
                                        this.textAlign = "center";
                                        this.color = 0;
                                        return;
                                    }// end function
                                    , propertiesFactory:function () : Object
                                    {
                                        return {width:90};
                                    }// end function
                                    })]};
                                }// end function
                                })]};
                            }// end function
                            }), new UIComponentDescriptor({type:GridRow, propertiesFactory:function () : Object
                            {
                                return {childDescriptors:[new UIComponentDescriptor({type:GridItem, stylesFactory:function () : void
                                {
                                    this.borderStyle = "outset";
                                    this.borderColor = 2829099;
                                    this.borderSides = "bottom right";
                                    this.backgroundColor = 14803650;
                                    return;
                                }// end function
                                , propertiesFactory:function () : Object
                                {
                                    return {childDescriptors:[new UIComponentDescriptor({type:Label, id:"_UnitLevelUpWindow_Label7", stylesFactory:function () : void
                                    {
                                        this.fontSize = 14;
                                        this.textAlign = "center";
                                        this.color = 0;
                                        return;
                                    }// end function
                                    , propertiesFactory:function () : Object
                                    {
                                        return {width:90};
                                    }// end function
                                    })]};
                                }// end function
                                })]};
                            }// end function
                            }), new UIComponentDescriptor({type:GridRow, propertiesFactory:function () : Object
                            {
                                return {childDescriptors:[new UIComponentDescriptor({type:GridItem, stylesFactory:function () : void
                                {
                                    this.borderStyle = "outset";
                                    this.borderColor = 2829099;
                                    this.borderSides = "bottom right";
                                    this.backgroundColor = 16119005;
                                    return;
                                }// end function
                                , propertiesFactory:function () : Object
                                {
                                    return {childDescriptors:[new UIComponentDescriptor({type:Label, id:"_UnitLevelUpWindow_Label8", stylesFactory:function () : void
                                    {
                                        this.fontSize = 14;
                                        this.textAlign = "center";
                                        this.color = 0;
                                        return;
                                    }// end function
                                    , propertiesFactory:function () : Object
                                    {
                                        return {width:90};
                                    }// end function
                                    })]};
                                }// end function
                                })]};
                            }// end function
                            })]};
                        }// end function
                        }), new UIComponentDescriptor({type:Grid, stylesFactory:function () : void
                        {
                            this.horizontalGap = 30;
                            this.verticalGap = 0;
                            return;
                        }// end function
                        , propertiesFactory:function () : Object
                        {
                            return {width:40, x:120, childDescriptors:[new UIComponentDescriptor({type:GridRow, propertiesFactory:function () : Object
                            {
                                return {childDescriptors:[new UIComponentDescriptor({type:GridItem, stylesFactory:function () : void
                                {
                                    this.borderStyle = "outset";
                                    this.borderColor = 2829099;
                                    this.borderSides = "bottom right";
                                    this.backgroundColor = 2115121;
                                    return;
                                }// end function
                                , propertiesFactory:function () : Object
                                {
                                    return {childDescriptors:[new UIComponentDescriptor({type:Label, id:"_UnitLevelUpWindow_Label9", stylesFactory:function () : void
                                    {
                                        this.fontSize = 14;
                                        this.textAlign = "center";
                                        this.color = 15658734;
                                        return;
                                    }// end function
                                    , propertiesFactory:function () : Object
                                    {
                                        return {width:30};
                                    }// end function
                                    })]};
                                }// end function
                                })]};
                            }// end function
                            }), new UIComponentDescriptor({type:GridRow, propertiesFactory:function () : Object
                            {
                                return {childDescriptors:[new UIComponentDescriptor({type:GridItem, stylesFactory:function () : void
                                {
                                    this.borderStyle = "outset";
                                    this.borderColor = 2829099;
                                    this.borderSides = "bottom right";
                                    this.backgroundColor = 2115121;
                                    return;
                                }// end function
                                , propertiesFactory:function () : Object
                                {
                                    return {childDescriptors:[new UIComponentDescriptor({type:Label, id:"_UnitLevelUpWindow_Label10", stylesFactory:function () : void
                                    {
                                        this.fontSize = 14;
                                        this.textAlign = "center";
                                        this.color = 15658734;
                                        return;
                                    }// end function
                                    , propertiesFactory:function () : Object
                                    {
                                        return {width:30};
                                    }// end function
                                    })]};
                                }// end function
                                })]};
                            }// end function
                            }), new UIComponentDescriptor({type:GridRow, propertiesFactory:function () : Object
                            {
                                return {childDescriptors:[new UIComponentDescriptor({type:GridItem, stylesFactory:function () : void
                                {
                                    this.borderStyle = "outset";
                                    this.borderColor = 2829099;
                                    this.borderSides = "bottom right";
                                    this.backgroundColor = 2115121;
                                    return;
                                }// end function
                                , propertiesFactory:function () : Object
                                {
                                    return {childDescriptors:[new UIComponentDescriptor({type:Label, id:"_UnitLevelUpWindow_Label11", stylesFactory:function () : void
                                    {
                                        this.fontSize = 14;
                                        this.textAlign = "center";
                                        this.color = 15658734;
                                        return;
                                    }// end function
                                    , propertiesFactory:function () : Object
                                    {
                                        return {width:30};
                                    }// end function
                                    })]};
                                }// end function
                                })]};
                            }// end function
                            }), new UIComponentDescriptor({type:GridRow, propertiesFactory:function () : Object
                            {
                                return {childDescriptors:[new UIComponentDescriptor({type:GridItem, stylesFactory:function () : void
                                {
                                    this.borderStyle = "outset";
                                    this.borderColor = 2829099;
                                    this.borderSides = "bottom right";
                                    this.backgroundColor = 2115121;
                                    return;
                                }// end function
                                , propertiesFactory:function () : Object
                                {
                                    return {childDescriptors:[new UIComponentDescriptor({type:Label, stylesFactory:function () : void
                                    {
                                        this.fontSize = 14;
                                        this.textAlign = "center";
                                        this.color = 15658734;
                                        return;
                                    }// end function
                                    , propertiesFactory:function () : Object
                                    {
                                        return {text:"SP", width:30};
                                    }// end function
                                    })]};
                                }// end function
                                })]};
                            }// end function
                            })]};
                        }// end function
                        }), new UIComponentDescriptor({type:Grid, stylesFactory:function () : void
                        {
                            this.horizontalGap = 30;
                            this.verticalGap = 0;
                            return;
                        }// end function
                        , propertiesFactory:function () : Object
                        {
                            return {width:100, x:150, childDescriptors:[new UIComponentDescriptor({type:GridRow, propertiesFactory:function () : Object
                            {
                                return {childDescriptors:[new UIComponentDescriptor({type:GridItem, stylesFactory:function () : void
                                {
                                    this.borderStyle = "outset";
                                    this.borderColor = 2829099;
                                    this.borderSides = "bottom right";
                                    this.backgroundColor = 14803650;
                                    return;
                                }// end function
                                , propertiesFactory:function () : Object
                                {
                                    return {childDescriptors:[new UIComponentDescriptor({type:Label, id:"_UnitLevelUpWindow_Label13", stylesFactory:function () : void
                                    {
                                        this.fontSize = 14;
                                        this.textAlign = "center";
                                        this.color = 0;
                                        return;
                                    }// end function
                                    , propertiesFactory:function () : Object
                                    {
                                        return {width:90};
                                    }// end function
                                    })]};
                                }// end function
                                })]};
                            }// end function
                            }), new UIComponentDescriptor({type:GridRow, propertiesFactory:function () : Object
                            {
                                return {childDescriptors:[new UIComponentDescriptor({type:GridItem, stylesFactory:function () : void
                                {
                                    this.borderStyle = "outset";
                                    this.borderColor = 2829099;
                                    this.borderSides = "bottom right";
                                    this.backgroundColor = 16119005;
                                    return;
                                }// end function
                                , propertiesFactory:function () : Object
                                {
                                    return {childDescriptors:[new UIComponentDescriptor({type:Label, id:"_UnitLevelUpWindow_Label14", stylesFactory:function () : void
                                    {
                                        this.fontSize = 14;
                                        this.textAlign = "center";
                                        this.color = 0;
                                        return;
                                    }// end function
                                    , propertiesFactory:function () : Object
                                    {
                                        return {width:90};
                                    }// end function
                                    })]};
                                }// end function
                                })]};
                            }// end function
                            }), new UIComponentDescriptor({type:GridRow, propertiesFactory:function () : Object
                            {
                                return {childDescriptors:[new UIComponentDescriptor({type:GridItem, stylesFactory:function () : void
                                {
                                    this.borderStyle = "outset";
                                    this.borderColor = 2829099;
                                    this.borderSides = "bottom right";
                                    this.backgroundColor = 14803650;
                                    return;
                                }// end function
                                , propertiesFactory:function () : Object
                                {
                                    return {childDescriptors:[new UIComponentDescriptor({type:Label, id:"_UnitLevelUpWindow_Label15", stylesFactory:function () : void
                                    {
                                        this.fontSize = 14;
                                        this.textAlign = "center";
                                        this.color = 0;
                                        return;
                                    }// end function
                                    , propertiesFactory:function () : Object
                                    {
                                        return {width:90};
                                    }// end function
                                    })]};
                                }// end function
                                })]};
                            }// end function
                            }), new UIComponentDescriptor({type:GridRow, propertiesFactory:function () : Object
                            {
                                return {childDescriptors:[new UIComponentDescriptor({type:GridItem, stylesFactory:function () : void
                                {
                                    this.borderStyle = "outset";
                                    this.borderColor = 2829099;
                                    this.borderSides = "bottom right";
                                    this.backgroundColor = 16119005;
                                    return;
                                }// end function
                                , propertiesFactory:function () : Object
                                {
                                    return {childDescriptors:[new UIComponentDescriptor({type:Label, id:"_UnitLevelUpWindow_Label16", stylesFactory:function () : void
                                    {
                                        this.fontSize = 14;
                                        this.textAlign = "center";
                                        this.color = 0;
                                        return;
                                    }// end function
                                    , propertiesFactory:function () : Object
                                    {
                                        return {width:90};
                                    }// end function
                                    })]};
                                }// end function
                                })]};
                            }// end function
                            })]};
                        }// end function
                        })]};
                    }// end function
                    }), new UIComponentDescriptor({type:HBox, propertiesFactory:function () : Object
                    {
                        return {width:360, x:142, y:250, childDescriptors:[new UIComponentDescriptor({type:Image, id:"_UnitLevelUpWindow_Image2", events:{click:"___UnitLevelUpWindow_Image2_click"}})]};
                    }// end function
                    })]};
                }// end function
                })]};
            }// end function
            });
            _1075873300_swf_window = new Viking.EmbedSwfWindowCommon();
            _1665809106_swf_button = new Viking.EmbedSwfButtonCommon();
            _bindings = [];
            _watchers = [];
            _bindingsByDestination = {};
            _bindingsBeginWithWord = {};
            mx_internal::_document = this;
            return;
        }// end function

        private function set _afterUnit(param1:UnitVO) : void
        {
            var _loc_2:* = this._469630975_afterUnit;
            if (_loc_2 !== param1)
            {
                this._469630975_afterUnit = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "_afterUnit", _loc_2, param1));
            }
            return;
        }// end function

        public function set preUnit(param1:UnitVO) : void
        {
            _preUnit = param1;
            return;
        }// end function

        public function get afterUnit() : UnitVO
        {
            return _afterUnit;
        }// end function

        override public function initialize() : void
        {
            var target:UnitLevelUpWindow;
            var watcherSetupUtilClass:Object;
            .mx_internal::setDocumentDescriptor(_documentDescriptor_);
            var bindings:* = _UnitLevelUpWindow_bindingsSetup();
            var watchers:Array;
            target;
            if (_watcherSetupUtil == null)
            {
                watcherSetupUtilClass = getDefinitionByName("_com_kbmj_viking_view_UnitLevelUpWindowWatcherSetupUtil");
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

        public function set afterUnit(param1:UnitVO) : void
        {
            _afterUnit = param1;
            return;
        }// end function

        private function get _afterUnit() : UnitVO
        {
            return this._469630975_afterUnit;
        }// end function

        public function set statusCanvas(param1:Canvas) : void
        {
            var _loc_2:* = this._1618605034statusCanvas;
            if (_loc_2 !== param1)
            {
                this._1618605034statusCanvas = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "statusCanvas", _loc_2, param1));
            }
            return;
        }// end function

        public function init() : void
        {
            preUnit = new UnitVO();
            afterUnit = new UnitVO();
            MovieClip(Loader(_swf_window.getChildAt(0)).content).gotoAndPlay("center_300x270");
            MovieClip(Loader(_swf_button.getChildAt(0)).content).gotoAndPlay("button_ok");
            return;
        }// end function

        private function get textCollection() : ArrayCollection
        {
            return this._1809908821textCollection;
        }// end function

        private function _UnitLevelUpWindow_bindingExprs() : void
        {
            var _loc_1:* = undefined;
            _loc_1 = _swf_window;
            _loc_1 = Utils.i18n("generalLevelUp");
            _loc_1 = _preUnit.name;
            _loc_1 = Utils.i18n("generalJob") + ": " + _preUnit.jobName;
            _loc_1 = "Lv. " + _preUnit.level + " → " + _afterUnit.level;
            _loc_1 = "EXP: " + getExpLabel();
            _loc_1 = Utils.i18n("generalStrength");
            _loc_1 = Utils.i18n("generalTech");
            _loc_1 = Utils.i18n("generalAgility");
            _loc_1 = _preUnit.strength + " → " + _afterUnit.strength;
            _loc_1 = _preUnit.tech + " → " + _afterUnit.tech;
            _loc_1 = _preUnit.agility + " → " + _afterUnit.agility;
            _loc_1 = _preUnit.maxHp + " → " + _afterUnit.maxHp;
            _loc_1 = Utils.i18n("generalDefense");
            _loc_1 = Utils.i18n("generalIntelligence");
            _loc_1 = Utils.i18n("generalLuck");
            _loc_1 = _preUnit.defense + " → " + _afterUnit.defense;
            _loc_1 = _preUnit.intelligence + " → " + _afterUnit.intelligence;
            _loc_1 = _preUnit.luck + " → " + _afterUnit.luck;
            _loc_1 = _preUnit.skillPoint + " → " + _afterUnit.skillPoint;
            _loc_1 = _swf_button;
            return;
        }// end function

        private function get _swf_button() : MovieClipLoaderAsset
        {
            return this._1665809106_swf_button;
        }// end function

        public function get runLevelUp() : Boolean
        {
            return _runLevelUp;
        }// end function

        private function set _preUnit(param1:UnitVO) : void
        {
            var _loc_2:* = this._2039061896_preUnit;
            if (_loc_2 !== param1)
            {
                this._2039061896_preUnit = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "_preUnit", _loc_2, param1));
            }
            return;
        }// end function

        private function get _preUnit() : UnitVO
        {
            return this._2039061896_preUnit;
        }// end function

        private function getColor(param1:Number, param2:Number) : uint
        {
            if (param1 == param2)
            {
                return 0;
            }
            return 255;
        }// end function

        public function get preUnit() : UnitVO
        {
            return _preUnit;
        }// end function

        private function getExpLabel() : String
        {
            if (_afterUnit.level >= _afterUnit.jobMasterVO.levelCap)
            {
                return "--/--";
            }
            return _afterUnit.exp + "/" + _afterUnit.nextExp;
        }// end function

        private function set textCollection(param1:ArrayCollection) : void
        {
            var _loc_2:* = this._1809908821textCollection;
            if (_loc_2 !== param1)
            {
                this._1809908821textCollection = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "textCollection", _loc_2, param1));
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

        private function _UnitLevelUpWindow_bindingsSetup() : Array
        {
            var binding:Binding;
            var result:Array;
            binding = new Binding(this, function () : Object
            {
                return _swf_window;
            }// end function
            , function (param1:Object) : void
            {
                _UnitLevelUpWindow_Image1.source = param1;
                return;
            }// end function
            , "_UnitLevelUpWindow_Image1.source");
            result[0] = binding;
            binding = new Binding(this, function () : String
            {
                var _loc_1:* = Utils.i18n("generalLevelUp");
                var _loc_2:* = _loc_1 == undefined ? (null) : (String(_loc_1));
                return _loc_2;
            }// end function
            , function (param1:String) : void
            {
                _UnitLevelUpWindow_Text1.text = param1;
                return;
            }// end function
            , "_UnitLevelUpWindow_Text1.text");
            result[1] = binding;
            binding = new Binding(this, function () : String
            {
                var _loc_1:* = _preUnit.name;
                var _loc_2:* = _loc_1 == undefined ? (null) : (String(_loc_1));
                return _loc_2;
            }// end function
            , function (param1:String) : void
            {
                _UnitLevelUpWindow_Text2.text = param1;
                return;
            }// end function
            , "_UnitLevelUpWindow_Text2.text");
            result[2] = binding;
            binding = new Binding(this, function () : String
            {
                var _loc_1:* = Utils.i18n("generalJob") + ": " + _preUnit.jobName;
                var _loc_2:* = _loc_1 == undefined ? (null) : (String(_loc_1));
                return _loc_2;
            }// end function
            , function (param1:String) : void
            {
                _UnitLevelUpWindow_Text3.text = param1;
                return;
            }// end function
            , "_UnitLevelUpWindow_Text3.text");
            result[3] = binding;
            binding = new Binding(this, function () : String
            {
                var _loc_1:* = "Lv. " + _preUnit.level + " → " + _afterUnit.level;
                var _loc_2:* = _loc_1 == undefined ? (null) : (String(_loc_1));
                return _loc_2;
            }// end function
            , function (param1:String) : void
            {
                _UnitLevelUpWindow_Text4.text = param1;
                return;
            }// end function
            , "_UnitLevelUpWindow_Text4.text");
            result[4] = binding;
            binding = new Binding(this, function () : String
            {
                var _loc_1:* = "EXP: " + getExpLabel();
                var _loc_2:* = _loc_1 == undefined ? (null) : (String(_loc_1));
                return _loc_2;
            }// end function
            , function (param1:String) : void
            {
                _UnitLevelUpWindow_Text5.text = param1;
                return;
            }// end function
            , "_UnitLevelUpWindow_Text5.text");
            result[5] = binding;
            binding = new Binding(this, function () : String
            {
                var _loc_1:* = Utils.i18n("generalStrength");
                var _loc_2:* = _loc_1 == undefined ? (null) : (String(_loc_1));
                return _loc_2;
            }// end function
            , function (param1:String) : void
            {
                _UnitLevelUpWindow_Label1.text = param1;
                return;
            }// end function
            , "_UnitLevelUpWindow_Label1.text");
            result[6] = binding;
            binding = new Binding(this, function () : String
            {
                var _loc_1:* = Utils.i18n("generalTech");
                var _loc_2:* = _loc_1 == undefined ? (null) : (String(_loc_1));
                return _loc_2;
            }// end function
            , function (param1:String) : void
            {
                _UnitLevelUpWindow_Label2.text = param1;
                return;
            }// end function
            , "_UnitLevelUpWindow_Label2.text");
            result[7] = binding;
            binding = new Binding(this, function () : String
            {
                var _loc_1:* = Utils.i18n("generalAgility");
                var _loc_2:* = _loc_1 == undefined ? (null) : (String(_loc_1));
                return _loc_2;
            }// end function
            , function (param1:String) : void
            {
                _UnitLevelUpWindow_Label3.text = param1;
                return;
            }// end function
            , "_UnitLevelUpWindow_Label3.text");
            result[8] = binding;
            binding = new Binding(this, function () : String
            {
                var _loc_1:* = _preUnit.strength + " → " + _afterUnit.strength;
                var _loc_2:* = _loc_1 == undefined ? (null) : (String(_loc_1));
                return _loc_2;
            }// end function
            , function (param1:String) : void
            {
                _UnitLevelUpWindow_Label5.text = param1;
                return;
            }// end function
            , "_UnitLevelUpWindow_Label5.text");
            result[9] = binding;
            binding = new Binding(this, function () : String
            {
                var _loc_1:* = _preUnit.tech + " → " + _afterUnit.tech;
                var _loc_2:* = _loc_1 == undefined ? (null) : (String(_loc_1));
                return _loc_2;
            }// end function
            , function (param1:String) : void
            {
                _UnitLevelUpWindow_Label6.text = param1;
                return;
            }// end function
            , "_UnitLevelUpWindow_Label6.text");
            result[10] = binding;
            binding = new Binding(this, function () : String
            {
                var _loc_1:* = _preUnit.agility + " → " + _afterUnit.agility;
                var _loc_2:* = _loc_1 == undefined ? (null) : (String(_loc_1));
                return _loc_2;
            }// end function
            , function (param1:String) : void
            {
                _UnitLevelUpWindow_Label7.text = param1;
                return;
            }// end function
            , "_UnitLevelUpWindow_Label7.text");
            result[11] = binding;
            binding = new Binding(this, function () : String
            {
                var _loc_1:* = _preUnit.maxHp + " → " + _afterUnit.maxHp;
                var _loc_2:* = _loc_1 == undefined ? (null) : (String(_loc_1));
                return _loc_2;
            }// end function
            , function (param1:String) : void
            {
                _UnitLevelUpWindow_Label8.text = param1;
                return;
            }// end function
            , "_UnitLevelUpWindow_Label8.text");
            result[12] = binding;
            binding = new Binding(this, function () : String
            {
                var _loc_1:* = Utils.i18n("generalDefense");
                var _loc_2:* = _loc_1 == undefined ? (null) : (String(_loc_1));
                return _loc_2;
            }// end function
            , function (param1:String) : void
            {
                _UnitLevelUpWindow_Label9.text = param1;
                return;
            }// end function
            , "_UnitLevelUpWindow_Label9.text");
            result[13] = binding;
            binding = new Binding(this, function () : String
            {
                var _loc_1:* = Utils.i18n("generalIntelligence");
                var _loc_2:* = _loc_1 == undefined ? (null) : (String(_loc_1));
                return _loc_2;
            }// end function
            , function (param1:String) : void
            {
                _UnitLevelUpWindow_Label10.text = param1;
                return;
            }// end function
            , "_UnitLevelUpWindow_Label10.text");
            result[14] = binding;
            binding = new Binding(this, function () : String
            {
                var _loc_1:* = Utils.i18n("generalLuck");
                var _loc_2:* = _loc_1 == undefined ? (null) : (String(_loc_1));
                return _loc_2;
            }// end function
            , function (param1:String) : void
            {
                _UnitLevelUpWindow_Label11.text = param1;
                return;
            }// end function
            , "_UnitLevelUpWindow_Label11.text");
            result[15] = binding;
            binding = new Binding(this, function () : String
            {
                var _loc_1:* = _preUnit.defense + " → " + _afterUnit.defense;
                var _loc_2:* = _loc_1 == undefined ? (null) : (String(_loc_1));
                return _loc_2;
            }// end function
            , function (param1:String) : void
            {
                _UnitLevelUpWindow_Label13.text = param1;
                return;
            }// end function
            , "_UnitLevelUpWindow_Label13.text");
            result[16] = binding;
            binding = new Binding(this, function () : String
            {
                var _loc_1:* = _preUnit.intelligence + " → " + _afterUnit.intelligence;
                var _loc_2:* = _loc_1 == undefined ? (null) : (String(_loc_1));
                return _loc_2;
            }// end function
            , function (param1:String) : void
            {
                _UnitLevelUpWindow_Label14.text = param1;
                return;
            }// end function
            , "_UnitLevelUpWindow_Label14.text");
            result[17] = binding;
            binding = new Binding(this, function () : String
            {
                var _loc_1:* = _preUnit.luck + " → " + _afterUnit.luck;
                var _loc_2:* = _loc_1 == undefined ? (null) : (String(_loc_1));
                return _loc_2;
            }// end function
            , function (param1:String) : void
            {
                _UnitLevelUpWindow_Label15.text = param1;
                return;
            }// end function
            , "_UnitLevelUpWindow_Label15.text");
            result[18] = binding;
            binding = new Binding(this, function () : String
            {
                var _loc_1:* = _preUnit.skillPoint + " → " + _afterUnit.skillPoint;
                var _loc_2:* = _loc_1 == undefined ? (null) : (String(_loc_1));
                return _loc_2;
            }// end function
            , function (param1:String) : void
            {
                _UnitLevelUpWindow_Label16.text = param1;
                return;
            }// end function
            , "_UnitLevelUpWindow_Label16.text");
            result[19] = binding;
            binding = new Binding(this, function () : Object
            {
                return _swf_button;
            }// end function
            , function (param1:Object) : void
            {
                _UnitLevelUpWindow_Image2.source = param1;
                return;
            }// end function
            , "_UnitLevelUpWindow_Image2.source");
            result[20] = binding;
            return result;
        }// end function

        public function ___UnitLevelUpWindow_Image2_click(event:MouseEvent) : void
        {
            close();
            return;
        }// end function

        public function set runLevelUp(param1:Boolean) : void
        {
            _runLevelUp = param1;
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

        public function close() : void
        {
            onClose();
            return;
        }// end function

        public function get statusCanvas() : Canvas
        {
            return this._1618605034statusCanvas;
        }// end function

        private function get _swf_window() : MovieClipLoaderAsset
        {
            return this._1075873300_swf_window;
        }// end function

        public static function set watcherSetupUtil(param1:IWatcherSetupUtil) : void
        {
            _watcherSetupUtil = param1;
            return;
        }// end function

    }
}
