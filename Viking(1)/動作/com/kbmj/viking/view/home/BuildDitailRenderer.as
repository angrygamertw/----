package com.kbmj.viking.view.home
{
    import com.kbmj.viking.lib.*;
    import com.kbmj.viking.vo.home.*;
    import flash.events.*;
    import flash.utils.*;
    import mx.binding.*;
    import mx.containers.*;
    import mx.controls.*;
    import mx.core.*;
    import mx.events.*;
    import mx.styles.*;

    public class BuildDitailRenderer extends HBox implements IBindingClient
    {
        private var _656585379firstGridMaterial:GridRow;
        private var selectedConstruction:ConstructionVO;
        var _bindings:Array;
        private var _208209088firstGridQty:GridRow;
        public var selectBuildName:String;
        var _watchers:Array;
        private var buildUnitWindow:BuildUnitWindow;
        private var _978265641thirdGridQty:GridRow;
        private var _1842390420thirdGridMaterial:GridRow;
        public var _BuildDitailRenderer_Image1:Image;
        public var _BuildDitailRenderer_Text4:Text;
        public var _BuildDitailRenderer_Text5:Text;
        public var _BuildDitailRenderer_Text6:Text;
        public var _BuildDitailRenderer_Text7:Text;
        public var _BuildDitailRenderer_Text3:Text;
        public var _BuildDitailRenderer_Label2:Label;
        public var _BuildDitailRenderer_Label3:Label;
        public var _BuildDitailRenderer_Label4:Label;
        public var _BuildDitailRenderer_Label5:Label;
        private var _1811009148secondGridQty:GridRow;
        public var _BuildDitailRenderer_Label7:Label;
        public var _BuildDitailRenderer_Label1:Label;
        private var _758724897secondGridMaterial:GridRow;
        public var _BuildDitailRenderer_Label6:Label;
        public var _BuildDitailRenderer_Text8:Text;
        private var _1879661617neccesaryRank:String;
        var _bindingsByDestination:Object;
        private var canNotBuild:Class;
        var _bindingsBeginWithWord:Object;
        private var _3556653text:Text;
        private var _1724546052description:Text;
        private var _documentDescriptor_:UIComponentDescriptor;
        private var canBuild:Class;
        private static var _watcherSetupUtil:IWatcherSetupUtil;
        private static const RANK_LABELS:Object = {1:"見習", 2:"銅", 3:"銀", 4:"金", 5:"白金", 6:"金剛", 7:"天"};
        private static const ABILITY_LABELS:Object = {strength:"力", intelligence:"賢", tech:"技", agility:"速", defense:"防", luck:"運"};
        public static const ON_CLICK:String = "buildDitailRenderer/onClick";

        public function BuildDitailRenderer()
        {
            _documentDescriptor_ = new UIComponentDescriptor({type:HBox, propertiesFactory:function () : Object
            {
                return {childDescriptors:[new UIComponentDescriptor({type:Canvas, propertiesFactory:function () : Object
                {
                    return {height:180, width:350, childDescriptors:[new UIComponentDescriptor({type:Text, id:"text", propertiesFactory:function () : Object
                    {
                        return {styleName:"BuildingName", x:115, y:5};
                    }// end function
                    }), new UIComponentDescriptor({type:Text, id:"description", stylesFactory:function () : void
                    {
                        this.fontSize = 11;
                        this.textAlign = "left";
                        return;
                    }// end function
                    , propertiesFactory:function () : Object
                    {
                        return {x:115, y:25, width:230};
                    }// end function
                    }), new UIComponentDescriptor({type:Canvas}), new UIComponentDescriptor({type:Canvas, propertiesFactory:function () : Object
                    {
                        return {y:85, x:30, childDescriptors:[new UIComponentDescriptor({type:Grid, stylesFactory:function () : void
                        {
                            this.horizontalGap = 30;
                            this.verticalGap = 0;
                            return;
                        }// end function
                        , propertiesFactory:function () : Object
                        {
                            return {width:60, childDescriptors:[new UIComponentDescriptor({type:GridRow, propertiesFactory:function () : Object
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
                                    return {childDescriptors:[new UIComponentDescriptor({type:Label, id:"_BuildDitailRenderer_Label1", stylesFactory:function () : void
                                    {
                                        this.fontSize = 12;
                                        this.textAlign = "center";
                                        this.color = 15658734;
                                        return;
                                    }// end function
                                    , propertiesFactory:function () : Object
                                    {
                                        return {width:50, height:21};
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
                                    return {childDescriptors:[new UIComponentDescriptor({type:Label, id:"_BuildDitailRenderer_Label2", stylesFactory:function () : void
                                    {
                                        this.fontSize = 12;
                                        this.textAlign = "center";
                                        this.color = 15658734;
                                        return;
                                    }// end function
                                    , propertiesFactory:function () : Object
                                    {
                                        return {width:50, height:21};
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
                                    return {childDescriptors:[new UIComponentDescriptor({type:Label, id:"_BuildDitailRenderer_Label3", stylesFactory:function () : void
                                    {
                                        this.fontSize = 12;
                                        this.textAlign = "center";
                                        this.color = 15658734;
                                        return;
                                    }// end function
                                    , propertiesFactory:function () : Object
                                    {
                                        return {width:50, height:21};
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
                            return {x:50, width:70, childDescriptors:[new UIComponentDescriptor({type:GridRow, propertiesFactory:function () : Object
                            {
                                return {childDescriptors:[new UIComponentDescriptor({type:GridItem, stylesFactory:function () : void
                                {
                                    this.borderStyle = "outset";
                                    this.borderColor = 2829099;
                                    this.backgroundColor = 14803650;
                                    return;
                                }// end function
                                , propertiesFactory:function () : Object
                                {
                                    return {childDescriptors:[new UIComponentDescriptor({type:Text, id:"_BuildDitailRenderer_Text3", stylesFactory:function () : void
                                    {
                                        this.fontSize = 12;
                                        this.textAlign = "right";
                                        return;
                                    }// end function
                                    , propertiesFactory:function () : Object
                                    {
                                        return {width:60, height:21};
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
                                    this.backgroundColor = 16119005;
                                    return;
                                }// end function
                                , propertiesFactory:function () : Object
                                {
                                    return {childDescriptors:[new UIComponentDescriptor({type:Text, id:"_BuildDitailRenderer_Text4", stylesFactory:function () : void
                                    {
                                        this.fontSize = 12;
                                        this.textAlign = "right";
                                        return;
                                    }// end function
                                    , propertiesFactory:function () : Object
                                    {
                                        return {width:60, height:21};
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
                                    this.backgroundColor = 14803650;
                                    return;
                                }// end function
                                , propertiesFactory:function () : Object
                                {
                                    return {childDescriptors:[new UIComponentDescriptor({type:Text, id:"_BuildDitailRenderer_Text5", stylesFactory:function () : void
                                    {
                                        this.fontSize = 12;
                                        this.textAlign = "right";
                                        return;
                                    }// end function
                                    , propertiesFactory:function () : Object
                                    {
                                        return {width:60, height:21};
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
                            return {x:110, width:60, height:95, childDescriptors:[new UIComponentDescriptor({type:GridRow, propertiesFactory:function () : Object
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
                                    return {childDescriptors:[new UIComponentDescriptor({type:Label, id:"_BuildDitailRenderer_Label4", stylesFactory:function () : void
                                    {
                                        this.fontSize = 12;
                                        this.textAlign = "center";
                                        this.paddingTop = 27;
                                        this.color = 15658734;
                                        return;
                                    }// end function
                                    , propertiesFactory:function () : Object
                                    {
                                        return {height:71, width:40};
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
                            return {x:150, width:130, childDescriptors:[new UIComponentDescriptor({type:GridRow, id:"firstGridMaterial", propertiesFactory:function () : Object
                            {
                                return {visible:true, childDescriptors:[new UIComponentDescriptor({type:GridItem, stylesFactory:function () : void
                                {
                                    this.borderStyle = "outset";
                                    this.borderColor = 2829099;
                                    this.borderSides = "bottom right";
                                    this.backgroundColor = 14803650;
                                    return;
                                }// end function
                                , propertiesFactory:function () : Object
                                {
                                    return {childDescriptors:[new UIComponentDescriptor({type:Label, id:"_BuildDitailRenderer_Label5", stylesFactory:function () : void
                                    {
                                        this.fontSize = 12;
                                        this.textAlign = "left";
                                        return;
                                    }// end function
                                    , propertiesFactory:function () : Object
                                    {
                                        return {width:120, height:21};
                                    }// end function
                                    })]};
                                }// end function
                                })]};
                            }// end function
                            }), new UIComponentDescriptor({type:GridRow, id:"secondGridMaterial", propertiesFactory:function () : Object
                            {
                                return {visible:true, childDescriptors:[new UIComponentDescriptor({type:GridItem, stylesFactory:function () : void
                                {
                                    this.borderStyle = "outset";
                                    this.borderColor = 2829099;
                                    this.borderSides = "bottom right";
                                    this.backgroundColor = 16119005;
                                    return;
                                }// end function
                                , propertiesFactory:function () : Object
                                {
                                    return {childDescriptors:[new UIComponentDescriptor({type:Label, id:"_BuildDitailRenderer_Label6", stylesFactory:function () : void
                                    {
                                        this.fontSize = 12;
                                        this.textAlign = "left";
                                        return;
                                    }// end function
                                    , propertiesFactory:function () : Object
                                    {
                                        return {width:120, height:21};
                                    }// end function
                                    })]};
                                }// end function
                                })]};
                            }// end function
                            }), new UIComponentDescriptor({type:GridRow, id:"thirdGridMaterial", propertiesFactory:function () : Object
                            {
                                return {visible:true, childDescriptors:[new UIComponentDescriptor({type:GridItem, stylesFactory:function () : void
                                {
                                    this.borderStyle = "outset";
                                    this.borderColor = 2829099;
                                    this.borderSides = "bottom right";
                                    this.backgroundColor = 14803650;
                                    return;
                                }// end function
                                , propertiesFactory:function () : Object
                                {
                                    return {childDescriptors:[new UIComponentDescriptor({type:Label, id:"_BuildDitailRenderer_Label7", stylesFactory:function () : void
                                    {
                                        this.fontSize = 12;
                                        this.textAlign = "left";
                                        return;
                                    }// end function
                                    , propertiesFactory:function () : Object
                                    {
                                        return {width:120, height:21};
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
                            return {x:270, width:45, childDescriptors:[new UIComponentDescriptor({type:GridRow, id:"firstGridQty", propertiesFactory:function () : Object
                            {
                                return {visible:true, childDescriptors:[new UIComponentDescriptor({type:GridItem, stylesFactory:function () : void
                                {
                                    this.borderStyle = "outset";
                                    this.borderColor = 2829099;
                                    this.backgroundColor = 14803650;
                                    return;
                                }// end function
                                , propertiesFactory:function () : Object
                                {
                                    return {childDescriptors:[new UIComponentDescriptor({type:Text, id:"_BuildDitailRenderer_Text6", stylesFactory:function () : void
                                    {
                                        this.fontSize = 12;
                                        this.textAlign = "center";
                                        return;
                                    }// end function
                                    , propertiesFactory:function () : Object
                                    {
                                        return {width:40, height:21};
                                    }// end function
                                    })]};
                                }// end function
                                })]};
                            }// end function
                            }), new UIComponentDescriptor({type:GridRow, id:"secondGridQty", propertiesFactory:function () : Object
                            {
                                return {visible:true, childDescriptors:[new UIComponentDescriptor({type:GridItem, stylesFactory:function () : void
                                {
                                    this.borderStyle = "outset";
                                    this.borderColor = 2829099;
                                    this.backgroundColor = 16119005;
                                    return;
                                }// end function
                                , propertiesFactory:function () : Object
                                {
                                    return {childDescriptors:[new UIComponentDescriptor({type:Text, id:"_BuildDitailRenderer_Text7", stylesFactory:function () : void
                                    {
                                        this.fontSize = 12;
                                        this.textAlign = "center";
                                        return;
                                    }// end function
                                    , propertiesFactory:function () : Object
                                    {
                                        return {width:40, height:21};
                                    }// end function
                                    })]};
                                }// end function
                                })]};
                            }// end function
                            }), new UIComponentDescriptor({type:GridRow, id:"thirdGridQty", propertiesFactory:function () : Object
                            {
                                return {visible:true, childDescriptors:[new UIComponentDescriptor({type:GridItem, stylesFactory:function () : void
                                {
                                    this.borderStyle = "outset";
                                    this.borderColor = 2829099;
                                    this.backgroundColor = 14803650;
                                    return;
                                }// end function
                                , propertiesFactory:function () : Object
                                {
                                    return {childDescriptors:[new UIComponentDescriptor({type:Text, id:"_BuildDitailRenderer_Text8", stylesFactory:function () : void
                                    {
                                        this.fontSize = 12;
                                        this.textAlign = "center";
                                        return;
                                    }// end function
                                    , propertiesFactory:function () : Object
                                    {
                                        return {width:40, height:21};
                                    }// end function
                                    })]};
                                }// end function
                                })]};
                            }// end function
                            })]};
                        }// end function
                        })]};
                    }// end function
                    }), new UIComponentDescriptor({type:Image, id:"_BuildDitailRenderer_Image1", events:{click:"___BuildDitailRenderer_Image1_click"}, propertiesFactory:function () : Object
                    {
                        return {x:30};
                    }// end function
                    })]};
                }// end function
                })]};
            }// end function
            });
            buildUnitWindow = new BuildUnitWindow();
            canBuild = BuildDitailRenderer_canBuild;
            canNotBuild = BuildDitailRenderer_canNotBuild;
            _bindings = [];
            _watchers = [];
            _bindingsByDestination = {};
            _bindingsBeginWithWord = {};
            mx_internal::_document = this;
            if (!this.styleDeclaration)
            {
                this.styleDeclaration = new CSSStyleDeclaration();
            }
            this.styleDeclaration.defaultFactory = function () : void
            {
                this.verticalAlign = "middle";
                this.backgroundAlpha = 0;
                return;
            }// end function
            ;
            return;
        }// end function

        public function set firstGridQty(param1:GridRow) : void
        {
            var _loc_2:* = this._208209088firstGridQty;
            if (_loc_2 !== param1)
            {
                this._208209088firstGridQty = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "firstGridQty", _loc_2, param1));
            }
            return;
        }// end function

        private function getAbility(param1:Object) : String
        {
            return ABILITY_LABELS[param1.abilities];
        }// end function

        private function getMaterials(param1:Object, param2:int) : String
        {
            return param1.materials[param2].masterVO.nameLabel;
        }// end function

        public function set secondGridQty(param1:GridRow) : void
        {
            var _loc_2:* = this._1811009148secondGridQty;
            if (_loc_2 !== param1)
            {
                this._1811009148secondGridQty = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "secondGridQty", _loc_2, param1));
            }
            return;
        }// end function

        public function get description() : Text
        {
            return this._1724546052description;
        }// end function

        private function getButtonImage(param1:Object) : Class
        {
            if (param1.requirement.canBuild)
            {
                return canBuild;
            }
            return canNotBuild;
        }// end function

        public function get thirdGridMaterial() : GridRow
        {
            return this._1842390420thirdGridMaterial;
        }// end function

        private function getMaterialsSize(param1:Object, param2:int) : int
        {
            return param1.materials[param2].quantity;
        }// end function

        override public function initialize() : void
        {
            var target:BuildDitailRenderer;
            var watcherSetupUtilClass:Object;
            .mx_internal::setDocumentDescriptor(_documentDescriptor_);
            var bindings:* = _BuildDitailRenderer_bindingsSetup();
            var watchers:Array;
            target;
            if (_watcherSetupUtil == null)
            {
                watcherSetupUtilClass = getDefinitionByName("_com_kbmj_viking_view_home_BuildDitailRendererWatcherSetupUtil");
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

        private function getCanBuild(param1:Object) : Boolean
        {
            return param1.requirement.canBuild;
        }// end function

        private function set neccesaryRank(param1:String) : void
        {
            var _loc_2:* = this._1879661617neccesaryRank;
            if (_loc_2 !== param1)
            {
                this._1879661617neccesaryRank = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "neccesaryRank", _loc_2, param1));
            }
            return;
        }// end function

        private function getRank(param1:Object) : String
        {
            return RANK_LABELS[param1.playerRank];
        }// end function

        private function getColor(param1:Object, param2:int) : uint
        {
            return param1.requirement.materials[param2].isShort ? (15073298) : (0);
        }// end function

        public function get text() : Text
        {
            return this._3556653text;
        }// end function

        private function _BuildDitailRenderer_bindingsSetup() : Array
        {
            var binding:Binding;
            var result:Array;
            binding = new Binding(this, function () : String
            {
                var _loc_1:* = data.nameLabel;
                var _loc_2:* = _loc_1 == undefined ? (null) : (String(_loc_1));
                return _loc_2;
            }// end function
            , function (param1:String) : void
            {
                text.text = param1;
                return;
            }// end function
            , "text.text");
            result[0] = binding;
            binding = new Binding(this, function () : String
            {
                var _loc_1:* = parentDocument.getBuildingDescription(data);
                var _loc_2:* = _loc_1 == undefined ? (null) : (String(_loc_1));
                return _loc_2;
            }// end function
            , function (param1:String) : void
            {
                description.text = param1;
                return;
            }// end function
            , "description.text");
            result[1] = binding;
            binding = new Binding(this, function () : String
            {
                var _loc_1:* = Utils.i18n("localize74");
                var _loc_2:* = _loc_1 == undefined ? (null) : (String(_loc_1));
                return _loc_2;
            }// end function
            , function (param1:String) : void
            {
                _BuildDitailRenderer_Label1.text = param1;
                return;
            }// end function
            , "_BuildDitailRenderer_Label1.text");
            result[2] = binding;
            binding = new Binding(this, function () : String
            {
                var _loc_1:* = Utils.i18n("localize75");
                var _loc_2:* = _loc_1 == undefined ? (null) : (String(_loc_1));
                return _loc_2;
            }// end function
            , function (param1:String) : void
            {
                _BuildDitailRenderer_Label2.text = param1;
                return;
            }// end function
            , "_BuildDitailRenderer_Label2.text");
            result[3] = binding;
            binding = new Binding(this, function () : String
            {
                var _loc_1:* = Utils.i18n("localize76");
                var _loc_2:* = _loc_1 == undefined ? (null) : (String(_loc_1));
                return _loc_2;
            }// end function
            , function (param1:String) : void
            {
                _BuildDitailRenderer_Label3.text = param1;
                return;
            }// end function
            , "_BuildDitailRenderer_Label3.text");
            result[4] = binding;
            binding = new Binding(this, function () : String
            {
                var _loc_1:* = data.minutes + " 分";
                var _loc_2:* = _loc_1 == undefined ? (null) : (String(_loc_1));
                return _loc_2;
            }// end function
            , function (param1:String) : void
            {
                _BuildDitailRenderer_Text3.text = param1;
                return;
            }// end function
            , "_BuildDitailRenderer_Text3.text");
            result[5] = binding;
            binding = new Binding(this, function () : String
            {
                var _loc_1:* = data.gold + " 文";
                var _loc_2:* = _loc_1 == undefined ? (null) : (String(_loc_1));
                return _loc_2;
            }// end function
            , function (param1:String) : void
            {
                _BuildDitailRenderer_Text4.text = param1;
                return;
            }// end function
            , "_BuildDitailRenderer_Text4.text");
            result[6] = binding;
            binding = new Binding(this, function () : uint
            {
                return data.requirement.textGoldColor;
            }// end function
            , function (param1:uint) : void
            {
                _BuildDitailRenderer_Text4.setStyle("color", param1);
                return;
            }// end function
            , "_BuildDitailRenderer_Text4.color");
            result[7] = binding;
            binding = new Binding(this, function () : String
            {
                var _loc_1:* = getRank(data);
                var _loc_2:* = _loc_1 == undefined ? (null) : (String(_loc_1));
                return _loc_2;
            }// end function
            , function (param1:String) : void
            {
                _BuildDitailRenderer_Text5.text = param1;
                return;
            }// end function
            , "_BuildDitailRenderer_Text5.text");
            result[8] = binding;
            binding = new Binding(this, function () : String
            {
                var _loc_1:* = Utils.i18n("localize77");
                var _loc_2:* = _loc_1 == undefined ? (null) : (String(_loc_1));
                return _loc_2;
            }// end function
            , function (param1:String) : void
            {
                _BuildDitailRenderer_Label4.text = param1;
                return;
            }// end function
            , "_BuildDitailRenderer_Label4.text");
            result[9] = binding;
            binding = new Binding(this, function () : String
            {
                var _loc_1:* = getMaterials(data, 0);
                var _loc_2:* = _loc_1 == undefined ? (null) : (String(_loc_1));
                return _loc_2;
            }// end function
            , function (param1:String) : void
            {
                _BuildDitailRenderer_Label5.text = param1;
                return;
            }// end function
            , "_BuildDitailRenderer_Label5.text");
            result[10] = binding;
            binding = new Binding(this, function () : String
            {
                var _loc_1:* = getMaterials(data, 1);
                var _loc_2:* = _loc_1 == undefined ? (null) : (String(_loc_1));
                return _loc_2;
            }// end function
            , function (param1:String) : void
            {
                _BuildDitailRenderer_Label6.text = param1;
                return;
            }// end function
            , "_BuildDitailRenderer_Label6.text");
            result[11] = binding;
            binding = new Binding(this, function () : String
            {
                var _loc_1:* = getMaterials(data, 2);
                var _loc_2:* = _loc_1 == undefined ? (null) : (String(_loc_1));
                return _loc_2;
            }// end function
            , function (param1:String) : void
            {
                _BuildDitailRenderer_Label7.text = param1;
                return;
            }// end function
            , "_BuildDitailRenderer_Label7.text");
            result[12] = binding;
            binding = new Binding(this, function () : String
            {
                var _loc_1:* = getMaterialsSize(data, 0);
                var _loc_2:* = _loc_1 == undefined ? (null) : (String(_loc_1));
                return _loc_2;
            }// end function
            , function (param1:String) : void
            {
                _BuildDitailRenderer_Text6.text = param1;
                return;
            }// end function
            , "_BuildDitailRenderer_Text6.text");
            result[13] = binding;
            binding = new Binding(this, function () : uint
            {
                return parentDocument.getColor(data, 0);
            }// end function
            , function (param1:uint) : void
            {
                _BuildDitailRenderer_Text6.setStyle("color", param1);
                return;
            }// end function
            , "_BuildDitailRenderer_Text6.color");
            result[14] = binding;
            binding = new Binding(this, function () : String
            {
                var _loc_1:* = getMaterialsSize(data, 1);
                var _loc_2:* = _loc_1 == undefined ? (null) : (String(_loc_1));
                return _loc_2;
            }// end function
            , function (param1:String) : void
            {
                _BuildDitailRenderer_Text7.text = param1;
                return;
            }// end function
            , "_BuildDitailRenderer_Text7.text");
            result[15] = binding;
            binding = new Binding(this, function () : uint
            {
                return parentDocument.getColor(data, 1);
            }// end function
            , function (param1:uint) : void
            {
                _BuildDitailRenderer_Text7.setStyle("color", param1);
                return;
            }// end function
            , "_BuildDitailRenderer_Text7.color");
            result[16] = binding;
            binding = new Binding(this, function () : String
            {
                var _loc_1:* = getMaterialsSize(data, 2);
                var _loc_2:* = _loc_1 == undefined ? (null) : (String(_loc_1));
                return _loc_2;
            }// end function
            , function (param1:String) : void
            {
                _BuildDitailRenderer_Text8.text = param1;
                return;
            }// end function
            , "_BuildDitailRenderer_Text8.text");
            result[17] = binding;
            binding = new Binding(this, function () : uint
            {
                return parentDocument.getColor(data, 2);
            }// end function
            , function (param1:uint) : void
            {
                _BuildDitailRenderer_Text8.setStyle("color", param1);
                return;
            }// end function
            , "_BuildDitailRenderer_Text8.color");
            result[18] = binding;
            binding = new Binding(this, function () : Object
            {
                return getButtonImage(data);
            }// end function
            , function (param1:Object) : void
            {
                _BuildDitailRenderer_Image1.source = param1;
                return;
            }// end function
            , "_BuildDitailRenderer_Image1.source");
            result[19] = binding;
            return result;
        }// end function

        public function get firstGridQty() : GridRow
        {
            return this._208209088firstGridQty;
        }// end function

        public function set firstGridMaterial(param1:GridRow) : void
        {
            var _loc_2:* = this._656585379firstGridMaterial;
            if (_loc_2 !== param1)
            {
                this._656585379firstGridMaterial = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "firstGridMaterial", _loc_2, param1));
            }
            return;
        }// end function

        public function get secondGridMaterial() : GridRow
        {
            return this._758724897secondGridMaterial;
        }// end function

        private function get neccesaryRank() : String
        {
            return this._1879661617neccesaryRank;
        }// end function

        public function set secondGridMaterial(param1:GridRow) : void
        {
            var _loc_2:* = this._758724897secondGridMaterial;
            if (_loc_2 !== param1)
            {
                this._758724897secondGridMaterial = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "secondGridMaterial", _loc_2, param1));
            }
            return;
        }// end function

        public function set thirdGridQty(param1:GridRow) : void
        {
            var _loc_2:* = this._978265641thirdGridQty;
            if (_loc_2 !== param1)
            {
                this._978265641thirdGridQty = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "thirdGridQty", _loc_2, param1));
            }
            return;
        }// end function

        public function set thirdGridMaterial(param1:GridRow) : void
        {
            var _loc_2:* = this._1842390420thirdGridMaterial;
            if (_loc_2 !== param1)
            {
                this._1842390420thirdGridMaterial = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "thirdGridMaterial", _loc_2, param1));
            }
            return;
        }// end function

        public function get thirdGridQty() : GridRow
        {
            return this._978265641thirdGridQty;
        }// end function

        public function ___BuildDitailRenderer_Image1_click(event:MouseEvent) : void
        {
            parentDocument.onClick(data);
            return;
        }// end function

        public function get firstGridMaterial() : GridRow
        {
            return this._656585379firstGridMaterial;
        }// end function

        public function set text(param1:Text) : void
        {
            var _loc_2:* = this._3556653text;
            if (_loc_2 !== param1)
            {
                this._3556653text = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "text", _loc_2, param1));
            }
            return;
        }// end function

        public function get secondGridQty() : GridRow
        {
            return this._1811009148secondGridQty;
        }// end function

        private function _BuildDitailRenderer_bindingExprs() : void
        {
            var _loc_1:* = undefined;
            _loc_1 = data.nameLabel;
            _loc_1 = parentDocument.getBuildingDescription(data);
            _loc_1 = Utils.i18n("localize74");
            _loc_1 = Utils.i18n("localize75");
            _loc_1 = Utils.i18n("localize76");
            _loc_1 = data.minutes + " 分";
            _loc_1 = data.gold + " 文";
            _loc_1 = data.requirement.textGoldColor;
            _loc_1 = getRank(data);
            _loc_1 = Utils.i18n("localize77");
            _loc_1 = getMaterials(data, 0);
            _loc_1 = getMaterials(data, 1);
            _loc_1 = getMaterials(data, 2);
            _loc_1 = getMaterialsSize(data, 0);
            _loc_1 = parentDocument.getColor(data, 0);
            _loc_1 = getMaterialsSize(data, 1);
            _loc_1 = parentDocument.getColor(data, 1);
            _loc_1 = getMaterialsSize(data, 2);
            _loc_1 = parentDocument.getColor(data, 2);
            _loc_1 = getButtonImage(data);
            return;
        }// end function

        public function set description(param1:Text) : void
        {
            var _loc_2:* = this._1724546052description;
            if (_loc_2 !== param1)
            {
                this._1724546052description = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "description", _loc_2, param1));
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
