package com.kbmj.viking.view.home
{
    import com.kbmj.viking.lib.*;
    import com.kbmj.viking.view.*;
    import com.kbmj.viking.vo.*;
    import flash.display.*;
    import flash.events.*;
    import flash.utils.*;
    import mx.binding.*;
    import mx.containers.*;
    import mx.controls.*;
    import mx.controls.dataGridClasses.*;
    import mx.core.*;
    import mx.events.*;

    public class ColonyDescriptionWindow extends PopupWindow implements IBindingClient
    {
        private var _1834510379_ticket:int;
        public var _ColonyDescriptionWindow_Text1:Text;
        private var _1629553109_buttonCancel:MovieClipLoaderAsset;
        private var _1561688567colony_loots_list:DataGrid;
        public var _ColonyDescriptionWindow_Image1:Image;
        public var _ColonyDescriptionWindow_Image3:Image;
        public var _ColonyDescriptionWindow_Image4:Image;
        public var _ColonyDescriptionWindow_Image5:Image;
        public var _ColonyDescriptionWindow_Image6:Image;
        public var _ColonyDescriptionWindow_Image7:Image;
        public var _ColonyDescriptionWindow_Image8:Image;
        var _bindingsByDestination:Object;
        public var _ColonyDescriptionWindow_Canvas1:Canvas;
        public var _ColonyDescriptionWindow_Canvas2:Canvas;
        private var _1948377661_description:String;
        private var _2146107557_viewSelectCondition:Boolean;
        private var _embed_mxml__swf_home_unit_status_icon_icon_money_swf_196506313:Class;
        private var _2938664_mvp:Object;
        private var _1472040500_loots:Array;
        private var _583214256_buttonOldColony:MovieClipLoaderAsset;
        private var _1024861772_windowBg:MovieClipLoaderAsset;
        private var _1536368279_buttonNewColony:MovieClipLoaderAsset;
        private var _748630530_enabled:Boolean;
        private var _1353628185_colony:ColonyVO;
        private var _589118710_conditionType:int;
        var _watchers:Array;
        private var _1424362799_buttonConfirm:MovieClipLoaderAsset;
        private var _1446317272_buttonBack:MovieClipLoaderAsset;
        private var _2938562_msg:String;
        public var _ColonyDescriptionWindow_Label1:Label;
        public var _ColonyDescriptionWindow_Label2:Label;
        public var _ColonyDescriptionWindow_Label3:Label;
        public var _ColonyDescriptionWindow_Label4:Label;
        public var _ColonyDescriptionWindow_Label5:Label;
        public var _ColonyDescriptionWindow_Label6:Label;
        public var _ColonyDescriptionWindow_Label7:Label;
        var _bindingsBeginWithWord:Object;
        public var _ColonyDescriptionWindow_DataGridColumn1:DataGridColumn;
        public var _ColonyDescriptionWindow_DataGridColumn2:DataGridColumn;
        private var _1695390169_buttonX:MovieClipLoaderAsset;
        var _bindings:Array;
        private var _documentDescriptor_:UIComponentDescriptor;
        private static var _watcherSetupUtil:IWatcherSetupUtil;
        public static const COLONY_CONFIRMED:String = NAME + "/selectColonyConfirmed";
        public static const NAME:String = "ColonyDescriptionWindow";
        public static const COLONY_CANCELED:String = NAME + "/selectColonyCanceled";

        public function ColonyDescriptionWindow()
        {
            _documentDescriptor_ = new UIComponentDescriptor({type:PopupWindow, propertiesFactory:function () : Object
            {
                return {childDescriptors:[new UIComponentDescriptor({type:Image, id:"_ColonyDescriptionWindow_Image1"}), new UIComponentDescriptor({type:Label, id:"_ColonyDescriptionWindow_Label1", stylesFactory:function () : void
                {
                    this.color = 16777215;
                    this.textAlign = "center";
                    return;
                }// end function
                , propertiesFactory:function () : Object
                {
                    return {x:180, y:82, width:400, styleName:"PanelBaseTitle"};
                }// end function
                }), new UIComponentDescriptor({type:Label, id:"_ColonyDescriptionWindow_Label2", stylesFactory:function () : void
                {
                    this.fontSize = 17;
                    this.textAlign = "center";
                    return;
                }// end function
                , propertiesFactory:function () : Object
                {
                    return {x:200, y:120, width:360};
                }// end function
                }), new UIComponentDescriptor({type:Label, id:"_ColonyDescriptionWindow_Label3", stylesFactory:function () : void
                {
                    this.fontSize = 16;
                    this.textAlign = "center";
                    return;
                }// end function
                , propertiesFactory:function () : Object
                {
                    return {x:200, y:145, width:360};
                }// end function
                }), new UIComponentDescriptor({type:Text, id:"_ColonyDescriptionWindow_Text1", stylesFactory:function () : void
                {
                    this.fontSize = 14;
                    return;
                }// end function
                , propertiesFactory:function () : Object
                {
                    return {x:205, y:176, width:170, height:200};
                }// end function
                }), new UIComponentDescriptor({type:Label, id:"_ColonyDescriptionWindow_Label4", stylesFactory:function () : void
                {
                    this.fontSize = 14;
                    return;
                }// end function
                , propertiesFactory:function () : Object
                {
                    return {x:390, y:176, width:165, height:30};
                }// end function
                }), new UIComponentDescriptor({type:Image, propertiesFactory:function () : Object
                {
                    return {source:_embed_mxml__swf_home_unit_status_icon_icon_money_swf_196506313, x:458, y:178};
                }// end function
                }), new UIComponentDescriptor({type:Label, id:"_ColonyDescriptionWindow_Label5", stylesFactory:function () : void
                {
                    this.fontSize = 14;
                    return;
                }// end function
                , propertiesFactory:function () : Object
                {
                    return {x:390, y:196, width:165, height:30};
                }// end function
                }), new UIComponentDescriptor({type:DataGrid, id:"colony_loots_list", propertiesFactory:function () : Object
                {
                    return {x:390, y:221, width:165, height:112, rowHeight:22, rowCount:5, styleName:"DataGridBase", selectable:false, sortableColumns:false, columns:[_ColonyDescriptionWindow_DataGridColumn1_i(), _ColonyDescriptionWindow_DataGridColumn2_i()]};
                }// end function
                }), new UIComponentDescriptor({type:Label, id:"_ColonyDescriptionWindow_Label6", stylesFactory:function () : void
                {
                    this.fontSize = 14;
                    return;
                }// end function
                , propertiesFactory:function () : Object
                {
                    return {x:200, y:345, width:360};
                }// end function
                }), new UIComponentDescriptor({type:Label, id:"_ColonyDescriptionWindow_Label7", stylesFactory:function () : void
                {
                    this.fontSize = 14;
                    this.textAlign = "right";
                    return;
                }// end function
                , propertiesFactory:function () : Object
                {
                    return {x:200, y:345, width:360};
                }// end function
                }), new UIComponentDescriptor({type:Canvas, id:"_ColonyDescriptionWindow_Canvas1", propertiesFactory:function () : Object
                {
                    return {childDescriptors:[new UIComponentDescriptor({type:Image, id:"_ColonyDescriptionWindow_Image3", events:{click:"___ColonyDescriptionWindow_Image3_click"}, propertiesFactory:function () : Object
                    {
                        return {x:260, y:380, width:110};
                    }// end function
                    }), new UIComponentDescriptor({type:Image, id:"_ColonyDescriptionWindow_Image4", events:{click:"___ColonyDescriptionWindow_Image4_click"}, propertiesFactory:function () : Object
                    {
                        return {x:390, y:380, width:110};
                    }// end function
                    }), new UIComponentDescriptor({type:Image, id:"_ColonyDescriptionWindow_Image5", events:{click:"___ColonyDescriptionWindow_Image5_click"}, propertiesFactory:function () : Object
                    {
                        return {x:325, y:380, width:110};
                    }// end function
                    })]};
                }// end function
                }), new UIComponentDescriptor({type:Canvas, id:"_ColonyDescriptionWindow_Canvas2", propertiesFactory:function () : Object
                {
                    return {childDescriptors:[new UIComponentDescriptor({type:Image, id:"_ColonyDescriptionWindow_Image6", events:{click:"___ColonyDescriptionWindow_Image6_click"}, propertiesFactory:function () : Object
                    {
                        return {x:260, y:380, width:110};
                    }// end function
                    }), new UIComponentDescriptor({type:Image, id:"_ColonyDescriptionWindow_Image7", events:{click:"___ColonyDescriptionWindow_Image7_click"}, propertiesFactory:function () : Object
                    {
                        return {x:390, y:380, width:110};
                    }// end function
                    })]};
                }// end function
                }), new UIComponentDescriptor({type:Image, id:"_ColonyDescriptionWindow_Image8", events:{click:"___ColonyDescriptionWindow_Image8_click"}, propertiesFactory:function () : Object
                {
                    return {x:555, y:80};
                }// end function
                })]};
            }// end function
            });
            _1024861772_windowBg = new Viking.EmbedSwfWindowCommon();
            _1424362799_buttonConfirm = new Viking.EmbedSwfButtonCommon();
            _1629553109_buttonCancel = new Viking.EmbedSwfButtonCommon();
            _1446317272_buttonBack = new Viking.EmbedSwfButtonCommon();
            _1536368279_buttonNewColony = new Viking.EmbedSwfButtonCommon();
            _583214256_buttonOldColony = new Viking.EmbedSwfButtonCommon();
            _1695390169_buttonX = new Viking.EmbedSwfButtonCloseWindow();
            _embed_mxml__swf_home_unit_status_icon_icon_money_swf_196506313 = ColonyDescriptionWindow__embed_mxml__swf_home_unit_status_icon_icon_money_swf_196506313;
            _bindings = [];
            _watchers = [];
            _bindingsByDestination = {};
            _bindingsBeginWithWord = {};
            mx_internal::_document = this;
            this.addEventListener("creationComplete", ___ColonyDescriptionWindow_PopupWindow1_creationComplete);
            return;
        }// end function

        private function get _enabled() : Boolean
        {
            return this._748630530_enabled;
        }// end function

        private function set _enabled(param1:Boolean) : void
        {
            var _loc_2:* = this._748630530_enabled;
            if (_loc_2 !== param1)
            {
                this._748630530_enabled = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "_enabled", _loc_2, param1));
            }
            return;
        }// end function

        private function _ColonyDescriptionWindow_DataGridColumn1_i() : DataGridColumn
        {
            var _loc_1:* = new DataGridColumn();
            _ColonyDescriptionWindow_DataGridColumn1 = _loc_1;
            _loc_1.dataField = "name";
            _loc_1.width = 100;
            BindingManager.executeBindings(this, "_ColonyDescriptionWindow_DataGridColumn1", _ColonyDescriptionWindow_DataGridColumn1);
            return _loc_1;
        }// end function

        private function comp() : void
        {
            MovieClip(Loader(_windowBg.getChildAt(0)).content).gotoAndPlay("center_400x360");
            var _loc_1:* = new UIComponent();
            _loc_1.addChild(createLine(200, 144, 560, 144));
            _loc_1.addChild(createLine(200, 343, 560, 343));
            this.addChild(_loc_1);
            return;
        }// end function

        public function init(param1:ColonyVO, param2:Object, param3:PlayerVO) : void
        {
            MovieClip(Loader(_buttonConfirm.getChildAt(0)).content).gotoAndStop(0);
            MovieClip(Loader(_buttonConfirm.getChildAt(0)).content).gotoAndPlay("button_decide");
            MovieClip(Loader(_buttonCancel.getChildAt(0)).content).gotoAndStop(0);
            MovieClip(Loader(_buttonCancel.getChildAt(0)).content).gotoAndPlay("button_back");
            MovieClip(Loader(_buttonBack.getChildAt(0)).content).gotoAndStop(0);
            MovieClip(Loader(_buttonBack.getChildAt(0)).content).gotoAndPlay("button_back");
            MovieClip(Loader(_buttonX.getChildAt(0)).content).gotoAndStop(0);
            MovieClip(Loader(_buttonX.getChildAt(0)).content).gotoAndPlay("button_close");
            MovieClip(Loader(_buttonNewColony.getChildAt(0)).content).gotoAndStop(0);
            MovieClip(Loader(_buttonNewColony.getChildAt(0)).content).gotoAndPlay("button_group");
            MovieClip(Loader(_buttonOldColony.getChildAt(0)).content).gotoAndStop(0);
            MovieClip(Loader(_buttonOldColony.getChildAt(0)).content).gotoAndPlay("button_individual");
            _colony = param1;
            _description = param1.masterVO.newDescription;
            _mvp = param1.masterVO.loots.getOne("mvp", true);
            _loots = param1.masterVO.loots.find("mvp", false);
            _enabled = false;
            _ticket = param3.colonyBattleTicket;
            _viewSelectCondition = false;
            if (!param1.isOpen)
            {
                _msg = Utils.i18n("localize98");
            }
            else if (param2 && param2.name == _colony.ownerGuildName)
            {
                _msg = Utils.i18n("localize99");
            }
            else
            {
                onSelectCondition();
            }
            return;
        }// end function

        private function createLine(param1:int, param2:int, param3:int, param4:int) : Shape
        {
            var _loc_5:* = new Shape();
            new Shape().graphics.lineStyle(1, 8816755);
            _loc_5.graphics.moveTo(param1, param2);
            _loc_5.graphics.lineTo(param3, param4);
            return _loc_5;
        }// end function

        private function get _colony() : ColonyVO
        {
            return this._1353628185_colony;
        }// end function

        private function _ColonyDescriptionWindow_bindingsSetup() : Array
        {
            var binding:Binding;
            var result:Array;
            binding = new Binding(this, function () : Object
            {
                return _windowBg;
            }// end function
            , function (param1:Object) : void
            {
                _ColonyDescriptionWindow_Image1.source = param1;
                return;
            }// end function
            , "_ColonyDescriptionWindow_Image1.source");
            result[0] = binding;
            binding = new Binding(this, function () : String
            {
                var _loc_1:* = Utils.i18n("localize102");
                var _loc_2:* = _loc_1 == undefined ? (null) : (String(_loc_1));
                return _loc_2;
            }// end function
            , function (param1:String) : void
            {
                _ColonyDescriptionWindow_Label1.text = param1;
                return;
            }// end function
            , "_ColonyDescriptionWindow_Label1.text");
            result[1] = binding;
            binding = new Binding(this, function () : String
            {
                var _loc_1:* = Utils.i18n("localize103") + " : " + _colony.masterVO.name;
                var _loc_2:* = _loc_1 == undefined ? (null) : (String(_loc_1));
                return _loc_2;
            }// end function
            , function (param1:String) : void
            {
                _ColonyDescriptionWindow_Label2.text = param1;
                return;
            }// end function
            , "_ColonyDescriptionWindow_Label2.text");
            result[2] = binding;
            binding = new Binding(this, function () : String
            {
                var _loc_1:* = Utils.i18n("localize104") + " : " + _colony.ownerGuildName;
                var _loc_2:* = _loc_1 == undefined ? (null) : (String(_loc_1));
                return _loc_2;
            }// end function
            , function (param1:String) : void
            {
                _ColonyDescriptionWindow_Label3.text = param1;
                return;
            }// end function
            , "_ColonyDescriptionWindow_Label3.text");
            result[3] = binding;
            binding = new Binding(this, function () : String
            {
                var _loc_1:* = _description;
                var _loc_2:* = _loc_1 == undefined ? (null) : (String(_loc_1));
                return _loc_2;
            }// end function
            , function (param1:String) : void
            {
                _ColonyDescriptionWindow_Text1.text = param1;
                return;
            }// end function
            , "_ColonyDescriptionWindow_Text1.text");
            result[4] = binding;
            binding = new Binding(this, function () : String
            {
                var _loc_1:* = Utils.i18n("generalGetMaterial") + "       " + _colony.masterVO.gold;
                var _loc_2:* = _loc_1 == undefined ? (null) : (String(_loc_1));
                return _loc_2;
            }// end function
            , function (param1:String) : void
            {
                _ColonyDescriptionWindow_Label4.text = param1;
                return;
            }// end function
            , "_ColonyDescriptionWindow_Label4.text");
            result[5] = binding;
            binding = new Binding(this, function () : String
            {
                var _loc_1:* = "MVP:" + _mvp.name + " (" + _mvp.quantity + ")";
                var _loc_2:* = _loc_1 == undefined ? (null) : (String(_loc_1));
                return _loc_2;
            }// end function
            , function (param1:String) : void
            {
                _ColonyDescriptionWindow_Label5.text = param1;
                return;
            }// end function
            , "_ColonyDescriptionWindow_Label5.text");
            result[6] = binding;
            binding = new Binding(this, function () : Object
            {
                return _loots;
            }// end function
            , function (param1:Object) : void
            {
                colony_loots_list.dataProvider = param1;
                return;
            }// end function
            , "colony_loots_list.dataProvider");
            result[7] = binding;
            binding = new Binding(this, function () : String
            {
                var _loc_1:* = Utils.i18n("localize105");
                var _loc_2:* = _loc_1 == undefined ? (null) : (String(_loc_1));
                return _loc_2;
            }// end function
            , function (param1:String) : void
            {
                _ColonyDescriptionWindow_DataGridColumn1.headerText = param1;
                return;
            }// end function
            , "_ColonyDescriptionWindow_DataGridColumn1.headerText");
            result[8] = binding;
            binding = new Binding(this, function () : String
            {
                var _loc_1:* = Utils.i18n("generalQuantity");
                var _loc_2:* = _loc_1 == undefined ? (null) : (String(_loc_1));
                return _loc_2;
            }// end function
            , function (param1:String) : void
            {
                _ColonyDescriptionWindow_DataGridColumn2.headerText = param1;
                return;
            }// end function
            , "_ColonyDescriptionWindow_DataGridColumn2.headerText");
            result[9] = binding;
            binding = new Binding(this, function () : String
            {
                var _loc_1:* = _msg;
                var _loc_2:* = _loc_1 == undefined ? (null) : (String(_loc_1));
                return _loc_2;
            }// end function
            , function (param1:String) : void
            {
                _ColonyDescriptionWindow_Label6.text = param1;
                return;
            }// end function
            , "_ColonyDescriptionWindow_Label6.text");
            result[10] = binding;
            binding = new Binding(this, function () : String
            {
                var _loc_1:* = Utils.i18n("matchBattleTicketLeft") + "：" + _ticket;
                var _loc_2:* = _loc_1 == undefined ? (null) : (String(_loc_1));
                return _loc_2;
            }// end function
            , function (param1:String) : void
            {
                _ColonyDescriptionWindow_Label7.text = param1;
                return;
            }// end function
            , "_ColonyDescriptionWindow_Label7.text");
            result[11] = binding;
            binding = new Binding(this, function () : Boolean
            {
                return !_viewSelectCondition;
            }// end function
            , function (param1:Boolean) : void
            {
                _ColonyDescriptionWindow_Canvas1.visible = param1;
                return;
            }// end function
            , "_ColonyDescriptionWindow_Canvas1.visible");
            result[12] = binding;
            binding = new Binding(this, function () : Boolean
            {
                return _enabled;
            }// end function
            , function (param1:Boolean) : void
            {
                _ColonyDescriptionWindow_Image3.visible = param1;
                return;
            }// end function
            , "_ColonyDescriptionWindow_Image3.visible");
            result[13] = binding;
            binding = new Binding(this, function () : Object
            {
                return _buttonConfirm;
            }// end function
            , function (param1:Object) : void
            {
                _ColonyDescriptionWindow_Image3.source = param1;
                return;
            }// end function
            , "_ColonyDescriptionWindow_Image3.source");
            result[14] = binding;
            binding = new Binding(this, function () : Boolean
            {
                return _enabled;
            }// end function
            , function (param1:Boolean) : void
            {
                _ColonyDescriptionWindow_Image4.visible = param1;
                return;
            }// end function
            , "_ColonyDescriptionWindow_Image4.visible");
            result[15] = binding;
            binding = new Binding(this, function () : Object
            {
                return _buttonBack;
            }// end function
            , function (param1:Object) : void
            {
                _ColonyDescriptionWindow_Image4.source = param1;
                return;
            }// end function
            , "_ColonyDescriptionWindow_Image4.source");
            result[16] = binding;
            binding = new Binding(this, function () : Boolean
            {
                return !_enabled;
            }// end function
            , function (param1:Boolean) : void
            {
                _ColonyDescriptionWindow_Image5.visible = param1;
                return;
            }// end function
            , "_ColonyDescriptionWindow_Image5.visible");
            result[17] = binding;
            binding = new Binding(this, function () : Object
            {
                return _buttonCancel;
            }// end function
            , function (param1:Object) : void
            {
                _ColonyDescriptionWindow_Image5.source = param1;
                return;
            }// end function
            , "_ColonyDescriptionWindow_Image5.source");
            result[18] = binding;
            binding = new Binding(this, function () : Boolean
            {
                return _viewSelectCondition;
            }// end function
            , function (param1:Boolean) : void
            {
                _ColonyDescriptionWindow_Canvas2.visible = param1;
                return;
            }// end function
            , "_ColonyDescriptionWindow_Canvas2.visible");
            result[19] = binding;
            binding = new Binding(this, function () : Object
            {
                return _buttonNewColony;
            }// end function
            , function (param1:Object) : void
            {
                _ColonyDescriptionWindow_Image6.source = param1;
                return;
            }// end function
            , "_ColonyDescriptionWindow_Image6.source");
            result[20] = binding;
            binding = new Binding(this, function () : Object
            {
                return _buttonOldColony;
            }// end function
            , function (param1:Object) : void
            {
                _ColonyDescriptionWindow_Image7.source = param1;
                return;
            }// end function
            , "_ColonyDescriptionWindow_Image7.source");
            result[21] = binding;
            binding = new Binding(this, function () : Object
            {
                return _buttonX;
            }// end function
            , function (param1:Object) : void
            {
                _ColonyDescriptionWindow_Image8.source = param1;
                return;
            }// end function
            , "_ColonyDescriptionWindow_Image8.source");
            result[22] = binding;
            return result;
        }// end function

        private function get _buttonX() : MovieClipLoaderAsset
        {
            return this._1695390169_buttonX;
        }// end function

        private function get _mvp() : Object
        {
            return this._2938664_mvp;
        }// end function

        private function get _buttonCancel() : MovieClipLoaderAsset
        {
            return this._1629553109_buttonCancel;
        }// end function

        public function ___ColonyDescriptionWindow_Image4_click(event:MouseEvent) : void
        {
            onSelectCondition();
            return;
        }// end function

        private function get _buttonConfirm() : MovieClipLoaderAsset
        {
            return this._1424362799_buttonConfirm;
        }// end function

        private function get _description() : String
        {
            return this._1948377661_description;
        }// end function

        public function onCancel() : void
        {
            this.onClose();
            return;
        }// end function

        public function ___ColonyDescriptionWindow_Image8_click(event:MouseEvent) : void
        {
            onClose();
            return;
        }// end function

        private function get _ticket() : int
        {
            return this._1834510379_ticket;
        }// end function

        private function set _colony(param1:ColonyVO) : void
        {
            var _loc_2:* = this._1353628185_colony;
            if (_loc_2 !== param1)
            {
                this._1353628185_colony = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "_colony", _loc_2, param1));
            }
            return;
        }// end function

        private function set _mvp(param1:Object) : void
        {
            var _loc_2:* = this._2938664_mvp;
            if (_loc_2 !== param1)
            {
                this._2938664_mvp = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "_mvp", _loc_2, param1));
            }
            return;
        }// end function

        private function get _viewSelectCondition() : Boolean
        {
            return this._2146107557_viewSelectCondition;
        }// end function

        private function set _buttonCancel(param1:MovieClipLoaderAsset) : void
        {
            var _loc_2:* = this._1629553109_buttonCancel;
            if (_loc_2 !== param1)
            {
                this._1629553109_buttonCancel = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "_buttonCancel", _loc_2, param1));
            }
            return;
        }// end function

        private function set _buttonOldColony(param1:MovieClipLoaderAsset) : void
        {
            var _loc_2:* = this._583214256_buttonOldColony;
            if (_loc_2 !== param1)
            {
                this._583214256_buttonOldColony = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "_buttonOldColony", _loc_2, param1));
            }
            return;
        }// end function

        private function set _buttonConfirm(param1:MovieClipLoaderAsset) : void
        {
            var _loc_2:* = this._1424362799_buttonConfirm;
            if (_loc_2 !== param1)
            {
                this._1424362799_buttonConfirm = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "_buttonConfirm", _loc_2, param1));
            }
            return;
        }// end function

        private function set _buttonX(param1:MovieClipLoaderAsset) : void
        {
            var _loc_2:* = this._1695390169_buttonX;
            if (_loc_2 !== param1)
            {
                this._1695390169_buttonX = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "_buttonX", _loc_2, param1));
            }
            return;
        }// end function

        private function set _windowBg(param1:MovieClipLoaderAsset) : void
        {
            var _loc_2:* = this._1024861772_windowBg;
            if (_loc_2 !== param1)
            {
                this._1024861772_windowBg = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "_windowBg", _loc_2, param1));
            }
            return;
        }// end function

        private function get _buttonNewColony() : MovieClipLoaderAsset
        {
            return this._1536368279_buttonNewColony;
        }// end function

        private function set _ticket(param1:int) : void
        {
            var _loc_2:* = this._1834510379_ticket;
            if (_loc_2 !== param1)
            {
                this._1834510379_ticket = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "_ticket", _loc_2, param1));
            }
            return;
        }// end function

        public function ___ColonyDescriptionWindow_Image5_click(event:MouseEvent) : void
        {
            onClose();
            return;
        }// end function

        private function set _description(param1:String) : void
        {
            var _loc_2:* = this._1948377661_description;
            if (_loc_2 !== param1)
            {
                this._1948377661_description = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "_description", _loc_2, param1));
            }
            return;
        }// end function

        private function _ColonyDescriptionWindow_bindingExprs() : void
        {
            var _loc_1:* = undefined;
            _loc_1 = _windowBg;
            _loc_1 = Utils.i18n("localize102");
            _loc_1 = Utils.i18n("localize103") + " : " + _colony.masterVO.name;
            _loc_1 = Utils.i18n("localize104") + " : " + _colony.ownerGuildName;
            _loc_1 = _description;
            _loc_1 = Utils.i18n("generalGetMaterial") + "       " + _colony.masterVO.gold;
            _loc_1 = "MVP:" + _mvp.name + " (" + _mvp.quantity + ")";
            _loc_1 = _loots;
            _loc_1 = Utils.i18n("localize105");
            _loc_1 = Utils.i18n("generalQuantity");
            _loc_1 = _msg;
            _loc_1 = Utils.i18n("matchBattleTicketLeft") + "：" + _ticket;
            _loc_1 = !_viewSelectCondition;
            _loc_1 = _enabled;
            _loc_1 = _buttonConfirm;
            _loc_1 = _enabled;
            _loc_1 = _buttonBack;
            _loc_1 = !_enabled;
            _loc_1 = _buttonCancel;
            _loc_1 = _viewSelectCondition;
            _loc_1 = _buttonNewColony;
            _loc_1 = _buttonOldColony;
            _loc_1 = _buttonX;
            return;
        }// end function

        private function set _msg(param1:String) : void
        {
            var _loc_2:* = this._2938562_msg;
            if (_loc_2 !== param1)
            {
                this._2938562_msg = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "_msg", _loc_2, param1));
            }
            return;
        }// end function

        override public function initialize() : void
        {
            var target:ColonyDescriptionWindow;
            var watcherSetupUtilClass:Object;
            .mx_internal::setDocumentDescriptor(_documentDescriptor_);
            var bindings:* = _ColonyDescriptionWindow_bindingsSetup();
            var watchers:Array;
            target;
            if (_watcherSetupUtil == null)
            {
                watcherSetupUtilClass = getDefinitionByName("_com_kbmj_viking_view_home_ColonyDescriptionWindowWatcherSetupUtil");
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

        private function onNewColony() : void
        {
            _conditionType = 1;
            _msg = Utils.i18n("selectGuildColonyRule");
            _description = _colony.masterVO.newDescription;
            _viewSelectCondition = false;
            _enabled = true;
            return;
        }// end function

        private function onSelectCondition() : void
        {
            _conditionType = 0;
            _msg = Utils.i18n("selectColonyRule");
            _enabled = true;
            _viewSelectCondition = true;
            return;
        }// end function

        public function ___ColonyDescriptionWindow_PopupWindow1_creationComplete(event:FlexEvent) : void
        {
            comp();
            return;
        }// end function

        public function ___ColonyDescriptionWindow_Image6_click(event:MouseEvent) : void
        {
            onNewColony();
            return;
        }// end function

        private function set _viewSelectCondition(param1:Boolean) : void
        {
            var _loc_2:* = this._2146107557_viewSelectCondition;
            if (_loc_2 !== param1)
            {
                this._2146107557_viewSelectCondition = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "_viewSelectCondition", _loc_2, param1));
            }
            return;
        }// end function

        private function set _buttonBack(param1:MovieClipLoaderAsset) : void
        {
            var _loc_2:* = this._1446317272_buttonBack;
            if (_loc_2 !== param1)
            {
                this._1446317272_buttonBack = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "_buttonBack", _loc_2, param1));
            }
            return;
        }// end function

        private function set _loots(param1:Array) : void
        {
            var _loc_2:* = this._1472040500_loots;
            if (_loc_2 !== param1)
            {
                this._1472040500_loots = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "_loots", _loc_2, param1));
            }
            return;
        }// end function

        private function get _buttonOldColony() : MovieClipLoaderAsset
        {
            return this._583214256_buttonOldColony;
        }// end function

        private function get _msg() : String
        {
            return this._2938562_msg;
        }// end function

        private function get _windowBg() : MovieClipLoaderAsset
        {
            return this._1024861772_windowBg;
        }// end function

        private function _ColonyDescriptionWindow_DataGridColumn2_i() : DataGridColumn
        {
            var _loc_1:* = new DataGridColumn();
            _ColonyDescriptionWindow_DataGridColumn2 = _loc_1;
            _loc_1.dataField = "quantity";
            _loc_1.setStyle("textAlign", "center");
            BindingManager.executeBindings(this, "_ColonyDescriptionWindow_DataGridColumn2", _ColonyDescriptionWindow_DataGridColumn2);
            return _loc_1;
        }// end function

        private function set _buttonNewColony(param1:MovieClipLoaderAsset) : void
        {
            var _loc_2:* = this._1536368279_buttonNewColony;
            if (_loc_2 !== param1)
            {
                this._1536368279_buttonNewColony = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "_buttonNewColony", _loc_2, param1));
            }
            return;
        }// end function

        private function get _buttonBack() : MovieClipLoaderAsset
        {
            return this._1446317272_buttonBack;
        }// end function

        private function get _loots() : Array
        {
            return this._1472040500_loots;
        }// end function

        public function onConfirm() : void
        {
            dispatchEvent(new PopupEvent(COLONY_CONFIRMED, {colonyId:_colony.colonyId, type:_conditionType}));
            this.onClose();
            return;
        }// end function

        public function ___ColonyDescriptionWindow_Image3_click(event:MouseEvent) : void
        {
            onConfirm();
            return;
        }// end function

        public function set colony_loots_list(param1:DataGrid) : void
        {
            var _loc_2:* = this._1561688567colony_loots_list;
            if (_loc_2 !== param1)
            {
                this._1561688567colony_loots_list = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "colony_loots_list", _loc_2, param1));
            }
            return;
        }// end function

        private function set _conditionType(param1:int) : void
        {
            var _loc_2:* = this._589118710_conditionType;
            if (_loc_2 !== param1)
            {
                this._589118710_conditionType = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "_conditionType", _loc_2, param1));
            }
            return;
        }// end function

        public function get colony_loots_list() : DataGrid
        {
            return this._1561688567colony_loots_list;
        }// end function

        public function ___ColonyDescriptionWindow_Image7_click(event:MouseEvent) : void
        {
            onOldColony();
            return;
        }// end function

        private function onOldColony() : void
        {
            _conditionType = 0;
            _msg = Utils.i18n("selectIndividualColonyRule");
            _description = _colony.masterVO.description;
            _viewSelectCondition = false;
            _enabled = true;
            return;
        }// end function

        private function get _conditionType() : int
        {
            return this._589118710_conditionType;
        }// end function

        public static function set watcherSetupUtil(param1:IWatcherSetupUtil) : void
        {
            ColonyDescriptionWindow._watcherSetupUtil = param1;
            return;
        }// end function

    }
}
