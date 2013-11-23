package com.kbmj.viking.view.city
{
    import flash.events.*;
    import flash.utils.*;
    import mx.binding.*;
    import mx.containers.*;
    import mx.controls.*;
    import mx.core.*;
    import mx.events.*;
    import mx.managers.*;

    public class ItemDetail extends Canvas implements IBindingClient
    {
        public var _ItemDetail_Label1:Label;
        var _watchers:Array;
        private var _itemVO:Object;
        public var _ItemDetail_Text1:Text;
        public var _ItemDetail_Text2:Text;
        public var _ItemDetail_Text3:Text;
        public var _ItemDetail_Text4:Text;
        public var _ItemDetail_Text5:Text;
        public var _ItemDetail_Text6:Text;
        public var _ItemDetail_Text7:Text;
        public var _ItemDetail_Text8:Text;
        var _bindingsByDestination:Object;
        var _bindingsBeginWithWord:Object;
        private var _embed_mxml__images_base_st_icon_battle_png_722824843:Class;
        private var _1527245174menu_data:Array;
        public var _ItemDetail_TileList1:TileList;
        public var _ItemDetail_Text12:Text;
        public var _ItemDetail_Text13:Text;
        public var _ItemDetail_Text14:Text;
        public var _ItemDetail_Text15:Text;
        public var _ItemDetail_Text16:Text;
        public var _ItemDetail_Text17:Text;
        public var _ItemDetail_Text18:Text;
        public var _ItemDetail_Text19:Text;
        var _bindings:Array;
        private var _documentDescriptor_:UIComponentDescriptor;
        private static var _watcherSetupUtil:IWatcherSetupUtil;

        public function ItemDetail()
        {
            _documentDescriptor_ = new UIComponentDescriptor({type:Canvas, propertiesFactory:function () : Object
            {
                return {childDescriptors:[new UIComponentDescriptor({type:Box, propertiesFactory:function () : Object
                {
                    return {width:500, height:450, styleName:"ItemDetailBg", childDescriptors:[new UIComponentDescriptor({type:Canvas, propertiesFactory:function () : Object
                    {
                        return {childDescriptors:[new UIComponentDescriptor({type:Image, propertiesFactory:function () : Object
                        {
                            return {source:_embed_mxml__images_base_st_icon_battle_png_722824843, x:25, y:16};
                        }// end function
                        }), new UIComponentDescriptor({type:Label, id:"_ItemDetail_Label1", propertiesFactory:function () : Object
                        {
                            return {styleName:"ItemDetailLabel", x:50, y:20};
                        }// end function
                        }), new UIComponentDescriptor({type:Text, id:"_ItemDetail_Text1", propertiesFactory:function () : Object
                        {
                            return {styleName:"ItemDetail", width:450, x:30, y:50};
                        }// end function
                        }), new UIComponentDescriptor({type:Text, id:"_ItemDetail_Text2", stylesFactory:function () : void
                        {
                            this.textAlign = "left";
                            return;
                        }// end function
                        , propertiesFactory:function () : Object
                        {
                            return {styleName:"ItemDetailText", width:80, x:68, y:120};
                        }// end function
                        }), new UIComponentDescriptor({type:Text, id:"_ItemDetail_Text3", stylesFactory:function () : void
                        {
                            this.textAlign = "left";
                            return;
                        }// end function
                        , propertiesFactory:function () : Object
                        {
                            return {styleName:"ItemDetailText", width:30, x:205, y:120};
                        }// end function
                        }), new UIComponentDescriptor({type:Text, id:"_ItemDetail_Text4", stylesFactory:function () : void
                        {
                            this.textAlign = "left";
                            return;
                        }// end function
                        , propertiesFactory:function () : Object
                        {
                            return {styleName:"ItemDetailText", width:50, x:323, y:120};
                        }// end function
                        }), new UIComponentDescriptor({type:Text, id:"_ItemDetail_Text5", stylesFactory:function () : void
                        {
                            this.textAlign = "center";
                            return;
                        }// end function
                        , propertiesFactory:function () : Object
                        {
                            return {styleName:"ItemDetailText", x:87, y:146, width:50};
                        }// end function
                        }), new UIComponentDescriptor({type:Text, id:"_ItemDetail_Text6", stylesFactory:function () : void
                        {
                            this.textAlign = "center";
                            return;
                        }// end function
                        , propertiesFactory:function () : Object
                        {
                            return {styleName:"ItemDetailText", x:198, y:146, width:50};
                        }// end function
                        }), new UIComponentDescriptor({type:Text, id:"_ItemDetail_Text7", stylesFactory:function () : void
                        {
                            this.textAlign = "center";
                            return;
                        }// end function
                        , propertiesFactory:function () : Object
                        {
                            return {styleName:"ItemDetailText", x:310, y:146, width:50};
                        }// end function
                        }), new UIComponentDescriptor({type:Text, id:"_ItemDetail_Text8", stylesFactory:function () : void
                        {
                            this.textAlign = "center";
                            return;
                        }// end function
                        , propertiesFactory:function () : Object
                        {
                            return {styleName:"ItemDetailText", x:423, y:146, width:50};
                        }// end function
                        }), new UIComponentDescriptor({type:Text, stylesFactory:function () : void
                        {
                            this.textAlign = "center";
                            return;
                        }// end function
                        , propertiesFactory:function () : Object
                        {
                            return {text:" - ", styleName:"ItemDetailText", x:87, y:170, width:50};
                        }// end function
                        }), new UIComponentDescriptor({type:Text, stylesFactory:function () : void
                        {
                            this.textAlign = "center";
                            return;
                        }// end function
                        , propertiesFactory:function () : Object
                        {
                            return {text:" - ", styleName:"ItemDetailText", x:198, y:170, width:50};
                        }// end function
                        }), new UIComponentDescriptor({type:Text, stylesFactory:function () : void
                        {
                            this.textAlign = "center";
                            return;
                        }// end function
                        , propertiesFactory:function () : Object
                        {
                            return {text:" - ", styleName:"ItemDetailText", x:310, y:170, width:50};
                        }// end function
                        }), new UIComponentDescriptor({type:Text, id:"_ItemDetail_Text12", stylesFactory:function () : void
                        {
                            this.textAlign = "center";
                            return;
                        }// end function
                        , propertiesFactory:function () : Object
                        {
                            return {styleName:"ItemDetailText", x:67, y:204, width:50};
                        }// end function
                        }), new UIComponentDescriptor({type:Text, id:"_ItemDetail_Text13", stylesFactory:function () : void
                        {
                            this.textAlign = "center";
                            return;
                        }// end function
                        , propertiesFactory:function () : Object
                        {
                            return {styleName:"ItemDetailText", x:157, y:204, width:50};
                        }// end function
                        }), new UIComponentDescriptor({type:Text, id:"_ItemDetail_Text14", stylesFactory:function () : void
                        {
                            this.textAlign = "center";
                            return;
                        }// end function
                        , propertiesFactory:function () : Object
                        {
                            return {styleName:"ItemDetailText", x:246, y:204, width:50};
                        }// end function
                        }), new UIComponentDescriptor({type:Text, id:"_ItemDetail_Text15", stylesFactory:function () : void
                        {
                            this.textAlign = "center";
                            return;
                        }// end function
                        , propertiesFactory:function () : Object
                        {
                            return {styleName:"ItemDetailText", x:337, y:204, width:50};
                        }// end function
                        }), new UIComponentDescriptor({type:Text, id:"_ItemDetail_Text16", stylesFactory:function () : void
                        {
                            this.textAlign = "center";
                            return;
                        }// end function
                        , propertiesFactory:function () : Object
                        {
                            return {styleName:"ItemDetailText", x:426, y:204, width:50};
                        }// end function
                        }), new UIComponentDescriptor({type:Text, id:"_ItemDetail_Text17", stylesFactory:function () : void
                        {
                            this.textAlign = "center";
                            return;
                        }// end function
                        , propertiesFactory:function () : Object
                        {
                            return {styleName:"ItemDetailText", x:67, y:228, width:50};
                        }// end function
                        }), new UIComponentDescriptor({type:Text, id:"_ItemDetail_Text18", stylesFactory:function () : void
                        {
                            this.textAlign = "center";
                            return;
                        }// end function
                        , propertiesFactory:function () : Object
                        {
                            return {styleName:"ItemDetailText", x:157, y:228, width:50};
                        }// end function
                        }), new UIComponentDescriptor({type:Text, id:"_ItemDetail_Text19", stylesFactory:function () : void
                        {
                            this.textAlign = "left";
                            return;
                        }// end function
                        , propertiesFactory:function () : Object
                        {
                            return {styleName:"ItemDetailText", x:300, y:228, width:200};
                        }// end function
                        }), new UIComponentDescriptor({type:TileList, id:"_ItemDetail_TileList1", stylesFactory:function () : void
                        {
                            this.backgroundAlpha = 0;
                            this.useRollOver = false;
                            this.borderStyle = "none";
                            return;
                        }// end function
                        , propertiesFactory:function () : Object
                        {
                            return {styleName:"PossibleClass", x:28, y:290, width:450, direction:"horizontal", columnWidth:111, rowHeight:21, columnCount:2, selectable:false};
                        }// end function
                        }), new UIComponentDescriptor({type:Button, events:{click:"___ItemDetail_Button1_click"}, propertiesFactory:function () : Object
                        {
                            return {label:"", styleName:"OnlyOkButton", y:410, x:206, buttonMode:true};
                        }// end function
                        })]};
                    }// end function
                    })]};
                }// end function
                })]};
            }// end function
            });
            _1527245174menu_data = new Array();
            _embed_mxml__images_base_st_icon_battle_png_722824843 = ItemDetail__embed_mxml__images_base_st_icon_battle_png_722824843;
            _bindings = [];
            _watchers = [];
            _bindingsByDestination = {};
            _bindingsBeginWithWord = {};
            mx_internal::_document = this;
            return;
        }// end function

        public function get menu_data() : Array
        {
            return this._1527245174menu_data;
        }// end function

        public function get itemVO() : Object
        {
            return _itemVO;
        }// end function

        override public function initialize() : void
        {
            var target:ItemDetail;
            var watcherSetupUtilClass:Object;
            .mx_internal::setDocumentDescriptor(_documentDescriptor_);
            var bindings:* = _ItemDetail_bindingsSetup();
            var watchers:Array;
            target;
            if (_watcherSetupUtil == null)
            {
                watcherSetupUtilClass = getDefinitionByName("_com_kbmj_viking_view_city_ItemDetailWatcherSetupUtil");
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

        private function set _1178661620itemVO(param1:Object) : void
        {
            _itemVO = param1;
            return;
        }// end function

        public function set menu_data(param1:Array) : void
        {
            var _loc_2:* = this._1527245174menu_data;
            if (_loc_2 !== param1)
            {
                this._1527245174menu_data = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "menu_data", _loc_2, param1));
            }
            return;
        }// end function

        public function set itemVO(param1:Object) : void
        {
            var _loc_2:* = this.itemVO;
            if (_loc_2 !== param1)
            {
                this._1178661620itemVO = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "itemVO", _loc_2, param1));
            }
            return;
        }// end function

        public function ___ItemDetail_Button1_click(event:MouseEvent) : void
        {
            buttanClick();
            return;
        }// end function

        private function _ItemDetail_bindingExprs() : void
        {
            var _loc_1:* = undefined;
            _loc_1 = itemVO.masterVO.nameLabel;
            _loc_1 = itemVO.masterVO.description;
            _loc_1 = itemVO.buyingPrice + "Gold";
            _loc_1 = itemVO.masterVO.weaponRank;
            _loc_1 = itemVO.masterVO.endurance;
            _loc_1 = itemVO.masterVO.damage;
            _loc_1 = itemVO.masterVO.hit;
            _loc_1 = itemVO.masterVO.attackRangeMax;
            _loc_1 = itemVO.masterVO.attackRangeMin + " ～ " + itemVO.masterVO.attackRangeMax;
            _loc_1 = itemVO.masterVO.strength;
            _loc_1 = itemVO.masterVO.intelligence;
            _loc_1 = itemVO.masterVO.tech;
            _loc_1 = itemVO.masterVO.defense;
            _loc_1 = itemVO.masterVO.agility;
            _loc_1 = itemVO.masterVO.luck;
            _loc_1 = itemVO.masterVO.maxHp;
            _loc_1 = itemVO.masterVO.skillId;
            _loc_1 = menu_data;
            return;
        }// end function

        private function buttanClick() : void
        {
            PopUpManager.removePopUp(this);
            return;
        }// end function

        private function _ItemDetail_bindingsSetup() : Array
        {
            var binding:Binding;
            var result:Array;
            binding = new Binding(this, function () : String
            {
                var _loc_1:* = itemVO.masterVO.nameLabel;
                var _loc_2:* = _loc_1 == undefined ? (null) : (String(_loc_1));
                return _loc_2;
            }// end function
            , function (param1:String) : void
            {
                _ItemDetail_Label1.text = param1;
                return;
            }// end function
            , "_ItemDetail_Label1.text");
            result[0] = binding;
            binding = new Binding(this, function () : String
            {
                var _loc_1:* = itemVO.masterVO.description;
                var _loc_2:* = _loc_1 == undefined ? (null) : (String(_loc_1));
                return _loc_2;
            }// end function
            , function (param1:String) : void
            {
                _ItemDetail_Text1.text = param1;
                return;
            }// end function
            , "_ItemDetail_Text1.text");
            result[1] = binding;
            binding = new Binding(this, function () : String
            {
                var _loc_1:* = itemVO.buyingPrice + "Gold";
                var _loc_2:* = _loc_1 == undefined ? (null) : (String(_loc_1));
                return _loc_2;
            }// end function
            , function (param1:String) : void
            {
                _ItemDetail_Text2.text = param1;
                return;
            }// end function
            , "_ItemDetail_Text2.text");
            result[2] = binding;
            binding = new Binding(this, function () : String
            {
                var _loc_1:* = itemVO.masterVO.weaponRank;
                var _loc_2:* = _loc_1 == undefined ? (null) : (String(_loc_1));
                return _loc_2;
            }// end function
            , function (param1:String) : void
            {
                _ItemDetail_Text3.text = param1;
                return;
            }// end function
            , "_ItemDetail_Text3.text");
            result[3] = binding;
            binding = new Binding(this, function () : String
            {
                var _loc_1:* = itemVO.masterVO.endurance;
                var _loc_2:* = _loc_1 == undefined ? (null) : (String(_loc_1));
                return _loc_2;
            }// end function
            , function (param1:String) : void
            {
                _ItemDetail_Text4.text = param1;
                return;
            }// end function
            , "_ItemDetail_Text4.text");
            result[4] = binding;
            binding = new Binding(this, function () : String
            {
                var _loc_1:* = itemVO.masterVO.damage;
                var _loc_2:* = _loc_1 == undefined ? (null) : (String(_loc_1));
                return _loc_2;
            }// end function
            , function (param1:String) : void
            {
                _ItemDetail_Text5.text = param1;
                return;
            }// end function
            , "_ItemDetail_Text5.text");
            result[5] = binding;
            binding = new Binding(this, function () : String
            {
                var _loc_1:* = itemVO.masterVO.hit;
                var _loc_2:* = _loc_1 == undefined ? (null) : (String(_loc_1));
                return _loc_2;
            }// end function
            , function (param1:String) : void
            {
                _ItemDetail_Text6.text = param1;
                return;
            }// end function
            , "_ItemDetail_Text6.text");
            result[6] = binding;
            binding = new Binding(this, function () : String
            {
                var _loc_1:* = itemVO.masterVO.attackRangeMax;
                var _loc_2:* = _loc_1 == undefined ? (null) : (String(_loc_1));
                return _loc_2;
            }// end function
            , function (param1:String) : void
            {
                _ItemDetail_Text7.text = param1;
                return;
            }// end function
            , "_ItemDetail_Text7.text");
            result[7] = binding;
            binding = new Binding(this, function () : String
            {
                var _loc_1:* = itemVO.masterVO.attackRangeMin + " ～ " + itemVO.masterVO.attackRangeMax;
                var _loc_2:* = _loc_1 == undefined ? (null) : (String(_loc_1));
                return _loc_2;
            }// end function
            , function (param1:String) : void
            {
                _ItemDetail_Text8.text = param1;
                return;
            }// end function
            , "_ItemDetail_Text8.text");
            result[8] = binding;
            binding = new Binding(this, function () : String
            {
                var _loc_1:* = itemVO.masterVO.strength;
                var _loc_2:* = _loc_1 == undefined ? (null) : (String(_loc_1));
                return _loc_2;
            }// end function
            , function (param1:String) : void
            {
                _ItemDetail_Text12.text = param1;
                return;
            }// end function
            , "_ItemDetail_Text12.text");
            result[9] = binding;
            binding = new Binding(this, function () : String
            {
                var _loc_1:* = itemVO.masterVO.intelligence;
                var _loc_2:* = _loc_1 == undefined ? (null) : (String(_loc_1));
                return _loc_2;
            }// end function
            , function (param1:String) : void
            {
                _ItemDetail_Text13.text = param1;
                return;
            }// end function
            , "_ItemDetail_Text13.text");
            result[10] = binding;
            binding = new Binding(this, function () : String
            {
                var _loc_1:* = itemVO.masterVO.tech;
                var _loc_2:* = _loc_1 == undefined ? (null) : (String(_loc_1));
                return _loc_2;
            }// end function
            , function (param1:String) : void
            {
                _ItemDetail_Text14.text = param1;
                return;
            }// end function
            , "_ItemDetail_Text14.text");
            result[11] = binding;
            binding = new Binding(this, function () : String
            {
                var _loc_1:* = itemVO.masterVO.defense;
                var _loc_2:* = _loc_1 == undefined ? (null) : (String(_loc_1));
                return _loc_2;
            }// end function
            , function (param1:String) : void
            {
                _ItemDetail_Text15.text = param1;
                return;
            }// end function
            , "_ItemDetail_Text15.text");
            result[12] = binding;
            binding = new Binding(this, function () : String
            {
                var _loc_1:* = itemVO.masterVO.agility;
                var _loc_2:* = _loc_1 == undefined ? (null) : (String(_loc_1));
                return _loc_2;
            }// end function
            , function (param1:String) : void
            {
                _ItemDetail_Text16.text = param1;
                return;
            }// end function
            , "_ItemDetail_Text16.text");
            result[13] = binding;
            binding = new Binding(this, function () : String
            {
                var _loc_1:* = itemVO.masterVO.luck;
                var _loc_2:* = _loc_1 == undefined ? (null) : (String(_loc_1));
                return _loc_2;
            }// end function
            , function (param1:String) : void
            {
                _ItemDetail_Text17.text = param1;
                return;
            }// end function
            , "_ItemDetail_Text17.text");
            result[14] = binding;
            binding = new Binding(this, function () : String
            {
                var _loc_1:* = itemVO.masterVO.maxHp;
                var _loc_2:* = _loc_1 == undefined ? (null) : (String(_loc_1));
                return _loc_2;
            }// end function
            , function (param1:String) : void
            {
                _ItemDetail_Text18.text = param1;
                return;
            }// end function
            , "_ItemDetail_Text18.text");
            result[15] = binding;
            binding = new Binding(this, function () : String
            {
                var _loc_1:* = itemVO.masterVO.skillId;
                var _loc_2:* = _loc_1 == undefined ? (null) : (String(_loc_1));
                return _loc_2;
            }// end function
            , function (param1:String) : void
            {
                _ItemDetail_Text19.text = param1;
                return;
            }// end function
            , "_ItemDetail_Text19.text");
            result[16] = binding;
            binding = new Binding(this, function () : Object
            {
                return menu_data;
            }// end function
            , function (param1:Object) : void
            {
                _ItemDetail_TileList1.dataProvider = param1;
                return;
            }// end function
            , "_ItemDetail_TileList1.dataProvider");
            result[17] = binding;
            return result;
        }// end function

        public static function set watcherSetupUtil(param1:IWatcherSetupUtil) : void
        {
            _watcherSetupUtil = param1;
            return;
        }// end function

    }
}
