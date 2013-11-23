package com.kbmj.viking.view
{
    import com.kbmj.viking.lib.*;
    import com.kbmj.viking.vo.*;
    import flash.utils.*;
    import mx.binding.*;
    import mx.containers.*;
    import mx.controls.*;
    import mx.core.*;
    import mx.events.*;

    public class PlayerStatus extends Canvas implements IBindingClient
    {
        private var _111433583units:Array;
        public var _PlayerStatus_Image1:Image;
        public var _PlayerStatus_Image2:Image;
        public var _PlayerStatus_Image3:Image;
        public var _PlayerStatus_Image5:Image;
        public var _PlayerStatus_Image7:Image;
        public var _PlayerStatus_Label2:Label;
        public var _PlayerStatus_Image4:Image;
        public var _PlayerStatus_Label6:Label;
        public var _PlayerStatus_Label1:Label;
        public var _PlayerStatus_Label3:Label;
        public var _PlayerStatus_Label5:Label;
        public var _PlayerStatus_Image6:Image;
        public var _PlayerStatus_Label4:Label;
        var _watchers:Array;
        public var _PlayerStatus_Label7:Label;
        private var bronze:Class;
        private var _1879273818playerVO:PlayerVO;
        private var silver:Class;
        private var _embed_mxml__swf_home_unit_status_icon_icon_occupationticket_swf_160765577:Class;
        private var _embed_mxml__swf_home_unit_status_icon_icon_battle_swf_561096717:Class;
        public var _PlayerStatus_Text1:Text;
        private var _659794811rankLayer:Canvas;
        private var _embed_mxml__swf_home_unit_status_icon_icon_treasure_swf_792817129:Class;
        private var _embed_mxml__swf_home_unit_status_icon_icon_money_swf_196506313:Class;
        private var zenith:Class;
        private var _embed_mxml__swf_home_unit_status_icon_icon_possession_swf_1427292425:Class;
        var _bindingsBeginWithWord:Object;
        private var platina:Class;
        var _bindingsByDestination:Object;
        private var diamond:Class;
        private var _embed_mxml__swf_home_unit_status_icon_icon_shikihime_swf_2065734565:Class;
        private var gold:Class;
        var _bindings:Array;
        private var apprentice:Class;
        private var _documentDescriptor_:UIComponentDescriptor;
        private var _embed_mxml__swf_home_unit_status_icon_icon_soul_swf_1153289065:Class;
        private static var _watcherSetupUtil:IWatcherSetupUtil;

        public function PlayerStatus()
        {
            _documentDescriptor_ = new UIComponentDescriptor({type:Canvas, propertiesFactory:function () : Object
            {
                return {childDescriptors:[new UIComponentDescriptor({type:Canvas, stylesFactory:function () : void
                {
                    this.fontSize = 12;
                    this.color = 4404528;
                    return;
                }// end function
                , propertiesFactory:function () : Object
                {
                    return {height:97, width:390, childDescriptors:[new UIComponentDescriptor({type:Text, id:"_PlayerStatus_Text1", propertiesFactory:function () : Object
                    {
                        return {x:66, y:14, styleName:"BaseTit"};
                    }// end function
                    }), new UIComponentDescriptor({type:Image, id:"_PlayerStatus_Image1", propertiesFactory:function () : Object
                    {
                        return {source:_embed_mxml__swf_home_unit_status_icon_icon_money_swf_196506313, x:176, y:17};
                    }// end function
                    }), new UIComponentDescriptor({type:Label, id:"_PlayerStatus_Label1", stylesFactory:function () : void
                    {
                        this.textAlign = "left";
                        return;
                    }// end function
                    , propertiesFactory:function () : Object
                    {
                        return {x:195, y:15};
                    }// end function
                    }), new UIComponentDescriptor({type:Image, id:"_PlayerStatus_Image2", propertiesFactory:function () : Object
                    {
                        return {source:_embed_mxml__swf_home_unit_status_icon_icon_soul_swf_1153289065, x:270, y:17};
                    }// end function
                    }), new UIComponentDescriptor({type:Label, id:"_PlayerStatus_Label2", stylesFactory:function () : void
                    {
                        this.textAlign = "left";
                        return;
                    }// end function
                    , propertiesFactory:function () : Object
                    {
                        return {x:289, y:15};
                    }// end function
                    }), new UIComponentDescriptor({type:Image, id:"_PlayerStatus_Image3", propertiesFactory:function () : Object
                    {
                        return {source:_embed_mxml__swf_home_unit_status_icon_icon_treasure_swf_792817129, x:27, y:40};
                    }// end function
                    }), new UIComponentDescriptor({type:Label, id:"_PlayerStatus_Label3", stylesFactory:function () : void
                    {
                        this.textAlign = "left";
                        return;
                    }// end function
                    , propertiesFactory:function () : Object
                    {
                        return {x:46, y:39};
                    }// end function
                    }), new UIComponentDescriptor({type:Image, id:"_PlayerStatus_Image4", propertiesFactory:function () : Object
                    {
                        return {source:_embed_mxml__swf_home_unit_status_icon_icon_battle_swf_561096717, x:82, y:40};
                    }// end function
                    }), new UIComponentDescriptor({type:Label, id:"_PlayerStatus_Label4", stylesFactory:function () : void
                    {
                        this.textAlign = "left";
                        return;
                    }// end function
                    , propertiesFactory:function () : Object
                    {
                        return {x:101, y:39};
                    }// end function
                    }), new UIComponentDescriptor({type:Image, id:"_PlayerStatus_Image5", propertiesFactory:function () : Object
                    {
                        return {source:_embed_mxml__swf_home_unit_status_icon_icon_occupationticket_swf_160765577, x:129, y:40};
                    }// end function
                    }), new UIComponentDescriptor({type:Label, id:"_PlayerStatus_Label5", stylesFactory:function () : void
                    {
                        this.textAlign = "left";
                        return;
                    }// end function
                    , propertiesFactory:function () : Object
                    {
                        return {x:148, y:39};
                    }// end function
                    }), new UIComponentDescriptor({type:Image, id:"_PlayerStatus_Image6", propertiesFactory:function () : Object
                    {
                        return {source:_embed_mxml__swf_home_unit_status_icon_icon_possession_swf_1427292425, x:176, y:40};
                    }// end function
                    }), new UIComponentDescriptor({type:Label, id:"_PlayerStatus_Label6", stylesFactory:function () : void
                    {
                        this.textAlign = "left";
                        return;
                    }// end function
                    , propertiesFactory:function () : Object
                    {
                        return {x:195, y:39};
                    }// end function
                    }), new UIComponentDescriptor({type:Image, id:"_PlayerStatus_Image7", propertiesFactory:function () : Object
                    {
                        return {source:_embed_mxml__swf_home_unit_status_icon_icon_shikihime_swf_2065734565, x:270, y:40};
                    }// end function
                    }), new UIComponentDescriptor({type:Label, id:"_PlayerStatus_Label7", propertiesFactory:function () : Object
                    {
                        return {x:289, y:39};
                    }// end function
                    }), new UIComponentDescriptor({type:Canvas, id:"rankLayer"})]};
                }// end function
                })]};
            }// end function
            });
            _111433583units = new Array();
            apprentice = PlayerStatus_apprentice;
            bronze = PlayerStatus_bronze;
            silver = PlayerStatus_silver;
            gold = PlayerStatus_gold;
            platina = PlayerStatus_platina;
            diamond = PlayerStatus_diamond;
            zenith = PlayerStatus_zenith;
            _embed_mxml__swf_home_unit_status_icon_icon_battle_swf_561096717 = PlayerStatus__embed_mxml__swf_home_unit_status_icon_icon_battle_swf_561096717;
            _embed_mxml__swf_home_unit_status_icon_icon_money_swf_196506313 = PlayerStatus__embed_mxml__swf_home_unit_status_icon_icon_money_swf_196506313;
            _embed_mxml__swf_home_unit_status_icon_icon_occupationticket_swf_160765577 = PlayerStatus__embed_mxml__swf_home_unit_status_icon_icon_occupationticket_swf_160765577;
            _embed_mxml__swf_home_unit_status_icon_icon_possession_swf_1427292425 = PlayerStatus__embed_mxml__swf_home_unit_status_icon_icon_possession_swf_1427292425;
            _embed_mxml__swf_home_unit_status_icon_icon_shikihime_swf_2065734565 = PlayerStatus__embed_mxml__swf_home_unit_status_icon_icon_shikihime_swf_2065734565;
            _embed_mxml__swf_home_unit_status_icon_icon_soul_swf_1153289065 = PlayerStatus__embed_mxml__swf_home_unit_status_icon_icon_soul_swf_1153289065;
            _embed_mxml__swf_home_unit_status_icon_icon_treasure_swf_792817129 = PlayerStatus__embed_mxml__swf_home_unit_status_icon_icon_treasure_swf_792817129;
            _bindings = [];
            _watchers = [];
            _bindingsByDestination = {};
            _bindingsBeginWithWord = {};
            mx_internal::_document = this;
            this.addEventListener("creationComplete", ___PlayerStatus_Canvas1_creationComplete);
            return;
        }// end function

        public function set rankLayer(param1:Canvas) : void
        {
            var _loc_2:* = this._659794811rankLayer;
            if (_loc_2 !== param1)
            {
                this._659794811rankLayer = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "rankLayer", _loc_2, param1));
            }
            return;
        }// end function

        override public function initialize() : void
        {
            var target:PlayerStatus;
            var watcherSetupUtilClass:Object;
            .mx_internal::setDocumentDescriptor(_documentDescriptor_);
            var bindings:* = _PlayerStatus_bindingsSetup();
            var watchers:Array;
            target;
            if (_watcherSetupUtil == null)
            {
                watcherSetupUtilClass = getDefinitionByName("_com_kbmj_viking_view_PlayerStatusWatcherSetupUtil");
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

        private function init() : void
        {
            return;
        }// end function

        public function get rankLayer() : Canvas
        {
            return this._659794811rankLayer;
        }// end function

        private function _PlayerStatus_bindingExprs() : void
        {
            var _loc_1:* = undefined;
            _loc_1 = playerVO.playerName;
            _loc_1 = Utils.i18n("generalMoney");
            _loc_1 = playerVO.gold;
            _loc_1 = Utils.i18n("generalSoulSphere");
            _loc_1 = playerVO.soulCrystal;
            _loc_1 = Utils.i18n("generalRarity");
            _loc_1 = playerVO.rarity;
            _loc_1 = Utils.i18n("generalBonusBattlesCount");
            _loc_1 = playerVO.bonusBattlesCount;
            _loc_1 = Utils.i18n("generalPossessionTicket");
            _loc_1 = playerVO.possessionTicket;
            _loc_1 = Utils.i18n("generalPropertiesCount");
            _loc_1 = playerVO.propertiesCount + "/" + playerVO.propertiesCountMax + "(" + playerVO.levelMaxPropertiesCount + ")";
            _loc_1 = Utils.i18n("generalUnitCount");
            _loc_1 = playerVO.unitCount + "/" + playerVO.maxUnitCount;
            return;
        }// end function

        private function _PlayerStatus_bindingsSetup() : Array
        {
            var binding:Binding;
            var result:Array;
            binding = new Binding(this, function () : String
            {
                var _loc_1:* = playerVO.playerName;
                var _loc_2:* = _loc_1 == undefined ? (null) : (String(_loc_1));
                return _loc_2;
            }// end function
            , function (param1:String) : void
            {
                _PlayerStatus_Text1.text = param1;
                return;
            }// end function
            , "_PlayerStatus_Text1.text");
            result[0] = binding;
            binding = new Binding(this, function () : String
            {
                var _loc_1:* = Utils.i18n("generalMoney");
                var _loc_2:* = _loc_1 == undefined ? (null) : (String(_loc_1));
                return _loc_2;
            }// end function
            , function (param1:String) : void
            {
                _PlayerStatus_Image1.toolTip = param1;
                return;
            }// end function
            , "_PlayerStatus_Image1.toolTip");
            result[1] = binding;
            binding = new Binding(this, function () : String
            {
                var _loc_1:* = playerVO.gold;
                var _loc_2:* = _loc_1 == undefined ? (null) : (String(_loc_1));
                return _loc_2;
            }// end function
            , function (param1:String) : void
            {
                _PlayerStatus_Label1.text = param1;
                return;
            }// end function
            , "_PlayerStatus_Label1.text");
            result[2] = binding;
            binding = new Binding(this, function () : String
            {
                var _loc_1:* = Utils.i18n("generalSoulSphere");
                var _loc_2:* = _loc_1 == undefined ? (null) : (String(_loc_1));
                return _loc_2;
            }// end function
            , function (param1:String) : void
            {
                _PlayerStatus_Image2.toolTip = param1;
                return;
            }// end function
            , "_PlayerStatus_Image2.toolTip");
            result[3] = binding;
            binding = new Binding(this, function () : String
            {
                var _loc_1:* = playerVO.soulCrystal;
                var _loc_2:* = _loc_1 == undefined ? (null) : (String(_loc_1));
                return _loc_2;
            }// end function
            , function (param1:String) : void
            {
                _PlayerStatus_Label2.text = param1;
                return;
            }// end function
            , "_PlayerStatus_Label2.text");
            result[4] = binding;
            binding = new Binding(this, function () : String
            {
                var _loc_1:* = Utils.i18n("generalRarity");
                var _loc_2:* = _loc_1 == undefined ? (null) : (String(_loc_1));
                return _loc_2;
            }// end function
            , function (param1:String) : void
            {
                _PlayerStatus_Image3.toolTip = param1;
                return;
            }// end function
            , "_PlayerStatus_Image3.toolTip");
            result[5] = binding;
            binding = new Binding(this, function () : String
            {
                var _loc_1:* = playerVO.rarity;
                var _loc_2:* = _loc_1 == undefined ? (null) : (String(_loc_1));
                return _loc_2;
            }// end function
            , function (param1:String) : void
            {
                _PlayerStatus_Label3.text = param1;
                return;
            }// end function
            , "_PlayerStatus_Label3.text");
            result[6] = binding;
            binding = new Binding(this, function () : String
            {
                var _loc_1:* = Utils.i18n("generalBonusBattlesCount");
                var _loc_2:* = _loc_1 == undefined ? (null) : (String(_loc_1));
                return _loc_2;
            }// end function
            , function (param1:String) : void
            {
                _PlayerStatus_Image4.toolTip = param1;
                return;
            }// end function
            , "_PlayerStatus_Image4.toolTip");
            result[7] = binding;
            binding = new Binding(this, function () : String
            {
                var _loc_1:* = playerVO.bonusBattlesCount;
                var _loc_2:* = _loc_1 == undefined ? (null) : (String(_loc_1));
                return _loc_2;
            }// end function
            , function (param1:String) : void
            {
                _PlayerStatus_Label4.text = param1;
                return;
            }// end function
            , "_PlayerStatus_Label4.text");
            result[8] = binding;
            binding = new Binding(this, function () : String
            {
                var _loc_1:* = Utils.i18n("generalPossessionTicket");
                var _loc_2:* = _loc_1 == undefined ? (null) : (String(_loc_1));
                return _loc_2;
            }// end function
            , function (param1:String) : void
            {
                _PlayerStatus_Image5.toolTip = param1;
                return;
            }// end function
            , "_PlayerStatus_Image5.toolTip");
            result[9] = binding;
            binding = new Binding(this, function () : String
            {
                var _loc_1:* = playerVO.possessionTicket;
                var _loc_2:* = _loc_1 == undefined ? (null) : (String(_loc_1));
                return _loc_2;
            }// end function
            , function (param1:String) : void
            {
                _PlayerStatus_Label5.text = param1;
                return;
            }// end function
            , "_PlayerStatus_Label5.text");
            result[10] = binding;
            binding = new Binding(this, function () : String
            {
                var _loc_1:* = Utils.i18n("generalPropertiesCount");
                var _loc_2:* = _loc_1 == undefined ? (null) : (String(_loc_1));
                return _loc_2;
            }// end function
            , function (param1:String) : void
            {
                _PlayerStatus_Image6.toolTip = param1;
                return;
            }// end function
            , "_PlayerStatus_Image6.toolTip");
            result[11] = binding;
            binding = new Binding(this, function () : String
            {
                var _loc_1:* = playerVO.propertiesCount + "/" + playerVO.propertiesCountMax + "(" + playerVO.levelMaxPropertiesCount + ")";
                var _loc_2:* = _loc_1 == undefined ? (null) : (String(_loc_1));
                return _loc_2;
            }// end function
            , function (param1:String) : void
            {
                _PlayerStatus_Label6.text = param1;
                return;
            }// end function
            , "_PlayerStatus_Label6.text");
            result[12] = binding;
            binding = new Binding(this, function () : String
            {
                var _loc_1:* = Utils.i18n("generalUnitCount");
                var _loc_2:* = _loc_1 == undefined ? (null) : (String(_loc_1));
                return _loc_2;
            }// end function
            , function (param1:String) : void
            {
                _PlayerStatus_Image7.toolTip = param1;
                return;
            }// end function
            , "_PlayerStatus_Image7.toolTip");
            result[13] = binding;
            binding = new Binding(this, function () : String
            {
                var _loc_1:* = playerVO.unitCount + "/" + playerVO.maxUnitCount;
                var _loc_2:* = _loc_1 == undefined ? (null) : (String(_loc_1));
                return _loc_2;
            }// end function
            , function (param1:String) : void
            {
                _PlayerStatus_Label7.text = param1;
                return;
            }// end function
            , "_PlayerStatus_Label7.text");
            result[14] = binding;
            return result;
        }// end function

        public function set playerVO(param1:PlayerVO) : void
        {
            var _loc_2:* = this._1879273818playerVO;
            if (_loc_2 !== param1)
            {
                this._1879273818playerVO = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "playerVO", _loc_2, param1));
            }
            return;
        }// end function

        public function ___PlayerStatus_Canvas1_creationComplete(event:FlexEvent) : void
        {
            init();
            return;
        }// end function

        public function set units(param1:Array) : void
        {
            var _loc_2:* = this._111433583units;
            if (_loc_2 !== param1)
            {
                this._111433583units = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "units", _loc_2, param1));
            }
            return;
        }// end function

        public function get playerVO() : PlayerVO
        {
            return this._1879273818playerVO;
        }// end function

        public function get units() : Array
        {
            return this._111433583units;
        }// end function

        public static function set watcherSetupUtil(param1:IWatcherSetupUtil) : void
        {
            PlayerStatus._watcherSetupUtil = param1;
            return;
        }// end function

    }
}
