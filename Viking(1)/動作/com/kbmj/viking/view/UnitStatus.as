package com.kbmj.viking.view
{
    import com.kbmj.viking.lib.*;
    import com.kbmj.viking.vo.tactics.*;
    import flash.display.*;
    import flash.utils.*;
    import mx.binding.*;
    import mx.containers.*;
    import mx.controls.*;
    import mx.core.*;
    import mx.events.*;

    public class UnitStatus extends Canvas implements IBindingClient
    {
        private const WHITE:String = "0x000000";
        public var _UnitStatus_Label16:Label;
        public var _UnitStatus_Label17:Label;
        public var _UnitStatus_Label18:Label;
        private var _2140725013subWeaponEndurance:Label;
        private var _919760715weaponEndurance:Label;
        public var _UnitStatus_Label20:Label;
        public var _UnitStatus_Label21:Label;
        public var _UnitStatus_Label22:Label;
        public var _UnitStatus_Label24:Label;
        public var _UnitStatus_Label25:Label;
        public var _UnitStatus_Label26:Label;
        public var _UnitStatus_Label27:Label;
        public var _UnitStatus_Label29:Label;
        public var _UnitStatus_Label30:Label;
        public var _UnitStatus_UnitPortrait1:UnitPortrait;
        public var _UnitStatus_Label32:Label;
        var _bindingsByDestination:Object;
        private const BLUE:String = "0x0000FF";
        private var _586800180itemEndurance:Label;
        private const RED:String = "0xFF0000";
        private const YELLOW:String = "0xFFCC00";
        private var _130029180visibleBool:Boolean = true;
        private var _292894891unitLuck:Label;
        private var _1532721565unitIntelligence:Label;
        public var _UnitStatus_TextArea1:TextArea;
        private var _1807908193_skills:String;
        private var _164638769sacrificeIconImage:Class;
        private var _14234295_moveIcon:Class;
        private var _840527444unitHp:Label;
        private var _246500774_unitExpLabel:String;
        private var _sword:Class;
        private var _1721924416nameBox:HBox;
        public var _UnitStatus_Label1:Label;
        public var _UnitStatus_Label3:Label;
        public var _UnitStatus_Label6:Label;
        public var _UnitStatus_Label7:Label;
        public var _UnitStatus_Label8:Label;
        public var _UnitStatus_Label9:Label;
        public var _UnitStatus_Label4:Label;
        private var _91329123_unit:UnitVO;
        private var _19564362sacrificeIcon:Image;
        public var _UnitStatus_Label2:Label;
        private var _954086800_magicDefIcon:Class;
        private var _199384131bgImgOn:Class;
        private var _292671942unitTech:Label;
        private var _199389162bgImage:Class;
        private var _290708560_accessoryEffectLabel:String;
        private var _1209198995bloodIcon:Image;
        private var _901579959_attackDefIcon:Class;
        private var _2065770376armorEndurance:Label;
        public var _UnitStatus_Image3:Image;
        public var _UnitStatus_Image4:Image;
        public var _UnitStatus_Image5:Image;
        public var _UnitStatus_Image6:Image;
        private var _174109217unitAgility:Label;
        var _watchers:Array;
        private var _1264886368baseDamage:int;
        private var _1312213477unitStrength:Label;
        private var _493681977unitHpBar:Canvas;
        private var _magicWand:Class;
        private var _1518579684unitDefense:Label;
        private var _1885940911bgImgOff:Class;
        var _bindingsBeginWithWord:Object;
        private var _1834460588_weaponIcon:Class;
        var _bindings:Array;
        private var _documentDescriptor_:UIComponentDescriptor;
        private static var _watcherSetupUtil:IWatcherSetupUtil;

        public function UnitStatus()
        {
            _documentDescriptor_ = new UIComponentDescriptor({type:Canvas, propertiesFactory:function () : Object
            {
                return {width:756, height:283, childDescriptors:[new UIComponentDescriptor({type:UnitPortrait, id:"_UnitStatus_UnitPortrait1", propertiesFactory:function () : Object
                {
                    return {x:0, y:20};
                }// end function
                }), new UIComponentDescriptor({type:Image, id:"sacrificeIcon", propertiesFactory:function () : Object
                {
                    return {x:25, y:210};
                }// end function
                }), new UIComponentDescriptor({type:Image, id:"bloodIcon", propertiesFactory:function () : Object
                {
                    return {x:25, y:210, visible:false};
                }// end function
                }), new UIComponentDescriptor({type:Canvas, propertiesFactory:function () : Object
                {
                    return {y:20, childDescriptors:[new UIComponentDescriptor({type:HBox, stylesFactory:function () : void
                    {
                        this.horizontalGap = 5;
                        return;
                    }// end function
                    , propertiesFactory:function () : Object
                    {
                        return {x:160, y:22, childDescriptors:[new UIComponentDescriptor({type:HBox, id:"nameBox", stylesFactory:function () : void
                        {
                            this.verticalAlign = "middle";
                            this.horizontalGap = 5;
                            return;
                        }// end function
                        , propertiesFactory:function () : Object
                        {
                            return {percentWidth:100};
                        }// end function
                        }), new UIComponentDescriptor({type:Canvas, propertiesFactory:function () : Object
                        {
                            return {childDescriptors:[new UIComponentDescriptor({type:Label, id:"_UnitStatus_Label1", stylesFactory:function () : void
                            {
                                this.fontSize = 17;
                                this.color = 0;
                                return;
                            }// end function
                            })]};
                        }// end function
                        })]};
                    }// end function
                    }), new UIComponentDescriptor({type:Label, id:"_UnitStatus_Label2", stylesFactory:function () : void
                    {
                        this.fontSize = 14;
                        this.color = 0;
                        return;
                    }// end function
                    , propertiesFactory:function () : Object
                    {
                        return {x:312, y:25};
                    }// end function
                    }), new UIComponentDescriptor({type:Label, id:"_UnitStatus_Label3", stylesFactory:function () : void
                    {
                        this.fontSize = 14;
                        this.color = 0;
                        return;
                    }// end function
                    , propertiesFactory:function () : Object
                    {
                        return {x:231, y:61};
                    }// end function
                    }), new UIComponentDescriptor({type:Label, id:"_UnitStatus_Label4", stylesFactory:function () : void
                    {
                        this.fontSize = 14;
                        this.color = 0;
                        return;
                    }// end function
                    , propertiesFactory:function () : Object
                    {
                        return {x:312, y:61};
                    }// end function
                    }), new UIComponentDescriptor({type:Label, id:"unitHp", stylesFactory:function () : void
                    {
                        this.fontSize = 14;
                        this.color = 0;
                        return;
                    }// end function
                    , propertiesFactory:function () : Object
                    {
                        return {x:231, y:87};
                    }// end function
                    }), new UIComponentDescriptor({type:Canvas, id:"unitHpBar", propertiesFactory:function () : Object
                    {
                        return {x:312, y:92};
                    }// end function
                    }), new UIComponentDescriptor({type:Image, id:"_UnitStatus_Image3", propertiesFactory:function () : Object
                    {
                        return {x:202, y:113};
                    }// end function
                    }), new UIComponentDescriptor({type:Label, id:"_UnitStatus_Label6", stylesFactory:function () : void
                    {
                        this.fontSize = 14;
                        this.color = 0;
                        this.textAlign = "right";
                        return;
                    }// end function
                    , propertiesFactory:function () : Object
                    {
                        return {x:220, y:110};
                    }// end function
                    }), new UIComponentDescriptor({type:Image, id:"_UnitStatus_Image4", propertiesFactory:function () : Object
                    {
                        return {x:253, y:113};
                    }// end function
                    }), new UIComponentDescriptor({type:Label, id:"_UnitStatus_Label7", stylesFactory:function () : void
                    {
                        this.fontSize = 14;
                        this.color = 0;
                        this.textAlign = "right";
                        return;
                    }// end function
                    , propertiesFactory:function () : Object
                    {
                        return {x:271, y:110};
                    }// end function
                    }), new UIComponentDescriptor({type:Image, id:"_UnitStatus_Image5", propertiesFactory:function () : Object
                    {
                        return {x:304, y:113};
                    }// end function
                    }), new UIComponentDescriptor({type:Label, id:"_UnitStatus_Label8", stylesFactory:function () : void
                    {
                        this.fontSize = 14;
                        this.color = 0;
                        this.textAlign = "right";
                        return;
                    }// end function
                    , propertiesFactory:function () : Object
                    {
                        return {x:322, y:110};
                    }// end function
                    }), new UIComponentDescriptor({type:Image, id:"_UnitStatus_Image6", propertiesFactory:function () : Object
                    {
                        return {x:355, y:113};
                    }// end function
                    }), new UIComponentDescriptor({type:Label, id:"_UnitStatus_Label9", stylesFactory:function () : void
                    {
                        this.fontSize = 14;
                        this.color = 0;
                        this.textAlign = "right";
                        return;
                    }// end function
                    , propertiesFactory:function () : Object
                    {
                        return {x:373, y:110};
                    }// end function
                    }), new UIComponentDescriptor({type:TextArea, id:"_UnitStatus_TextArea1", stylesFactory:function () : void
                    {
                        this.fontSize = 14;
                        this.backgroundAlpha = 0;
                        this.borderStyle = "none";
                        return;
                    }// end function
                    , propertiesFactory:function () : Object
                    {
                        return {x:275, y:190, width:130, height:40, editable:false};
                    }// end function
                    }), new UIComponentDescriptor({type:Label, id:"unitStrength", stylesFactory:function () : void
                    {
                        this.fontSize = 14;
                        this.color = 0;
                        this.textAlign = "right";
                        return;
                    }// end function
                    , propertiesFactory:function () : Object
                    {
                        return {x:232, y:139};
                    }// end function
                    }), new UIComponentDescriptor({type:Label, id:"unitTech", stylesFactory:function () : void
                    {
                        this.fontSize = 14;
                        this.color = 0;
                        this.textAlign = "right";
                        return;
                    }// end function
                    , propertiesFactory:function () : Object
                    {
                        return {x:304, y:139};
                    }// end function
                    }), new UIComponentDescriptor({type:Label, id:"unitAgility", stylesFactory:function () : void
                    {
                        this.fontSize = 14;
                        this.color = 0;
                        this.textAlign = "right";
                        return;
                    }// end function
                    , propertiesFactory:function () : Object
                    {
                        return {x:373, y:139};
                    }// end function
                    }), new UIComponentDescriptor({type:Label, id:"unitDefense", stylesFactory:function () : void
                    {
                        this.fontSize = 14;
                        this.color = 0;
                        this.textAlign = "right";
                        return;
                    }// end function
                    , propertiesFactory:function () : Object
                    {
                        return {x:232, y:161};
                    }// end function
                    }), new UIComponentDescriptor({type:Label, id:"unitIntelligence", stylesFactory:function () : void
                    {
                        this.fontSize = 14;
                        this.color = 0;
                        this.textAlign = "right";
                        return;
                    }// end function
                    , propertiesFactory:function () : Object
                    {
                        return {x:304, y:161};
                    }// end function
                    }), new UIComponentDescriptor({type:Label, id:"unitLuck", stylesFactory:function () : void
                    {
                        this.fontSize = 14;
                        this.color = 0;
                        this.textAlign = "right";
                        return;
                    }// end function
                    , propertiesFactory:function () : Object
                    {
                        return {x:373, y:161};
                    }// end function
                    }), new UIComponentDescriptor({type:Label, id:"_UnitStatus_Label16", stylesFactory:function () : void
                    {
                        this.fontSize = 12;
                        this.fontWeight = "bold";
                        this.color = 0;
                        return;
                    }// end function
                    , propertiesFactory:function () : Object
                    {
                        return {x:465, y:33};
                    }// end function
                    }), new UIComponentDescriptor({type:Label, id:"_UnitStatus_Label17", stylesFactory:function () : void
                    {
                        this.fontSize = 12;
                        this.color = 0;
                        this.textAlign = "center";
                        return;
                    }// end function
                    , propertiesFactory:function () : Object
                    {
                        return {x:626, y:33};
                    }// end function
                    }), new UIComponentDescriptor({type:Label, id:"_UnitStatus_Label18", stylesFactory:function () : void
                    {
                        this.fontSize = 12;
                        this.color = 0;
                        this.textAlign = "center";
                        return;
                    }// end function
                    , propertiesFactory:function () : Object
                    {
                        return {x:668, y:33};
                    }// end function
                    }), new UIComponentDescriptor({type:Label, id:"weaponEndurance", stylesFactory:function () : void
                    {
                        this.fontSize = 12;
                        this.color = 0;
                        this.textAlign = "left";
                        return;
                    }// end function
                    , propertiesFactory:function () : Object
                    {
                        return {x:707, y:33};
                    }// end function
                    }), new UIComponentDescriptor({type:Label, id:"_UnitStatus_Label20", stylesFactory:function () : void
                    {
                        this.fontSize = 12;
                        this.fontWeight = "bold";
                        this.color = 0;
                        return;
                    }// end function
                    , propertiesFactory:function () : Object
                    {
                        return {x:465, y:76};
                    }// end function
                    }), new UIComponentDescriptor({type:Label, id:"_UnitStatus_Label21", stylesFactory:function () : void
                    {
                        this.fontSize = 12;
                        this.color = 0;
                        this.textAlign = "center";
                        return;
                    }// end function
                    , propertiesFactory:function () : Object
                    {
                        return {x:626, y:76};
                    }// end function
                    }), new UIComponentDescriptor({type:Label, id:"_UnitStatus_Label22", stylesFactory:function () : void
                    {
                        this.fontSize = 12;
                        this.color = 0;
                        this.textAlign = "center";
                        return;
                    }// end function
                    , propertiesFactory:function () : Object
                    {
                        return {x:668, y:76};
                    }// end function
                    }), new UIComponentDescriptor({type:Label, id:"subWeaponEndurance", stylesFactory:function () : void
                    {
                        this.fontSize = 12;
                        this.color = 0;
                        this.textAlign = "left";
                        return;
                    }// end function
                    , propertiesFactory:function () : Object
                    {
                        return {x:707, y:76};
                    }// end function
                    }), new UIComponentDescriptor({type:Label, id:"_UnitStatus_Label24", stylesFactory:function () : void
                    {
                        this.fontSize = 12;
                        this.fontWeight = "bold";
                        this.color = 0;
                        return;
                    }// end function
                    , propertiesFactory:function () : Object
                    {
                        return {x:465, y:118};
                    }// end function
                    }), new UIComponentDescriptor({type:Label, id:"_UnitStatus_Label25", stylesFactory:function () : void
                    {
                        this.fontSize = 12;
                        this.color = 0;
                        this.textAlign = "center";
                        return;
                    }// end function
                    , propertiesFactory:function () : Object
                    {
                        return {x:668, y:118};
                    }// end function
                    }), new UIComponentDescriptor({type:Label, id:"_UnitStatus_Label26", stylesFactory:function () : void
                    {
                        this.fontSize = 12;
                        this.color = 0;
                        this.textAlign = "center";
                        return;
                    }// end function
                    , propertiesFactory:function () : Object
                    {
                        return {x:584, y:118};
                    }// end function
                    }), new UIComponentDescriptor({type:Label, id:"_UnitStatus_Label27", stylesFactory:function () : void
                    {
                        this.fontSize = 12;
                        this.color = 0;
                        this.textAlign = "center";
                        return;
                    }// end function
                    , propertiesFactory:function () : Object
                    {
                        return {x:626, y:118};
                    }// end function
                    }), new UIComponentDescriptor({type:Label, id:"armorEndurance", stylesFactory:function () : void
                    {
                        this.fontSize = 12;
                        this.color = 0;
                        this.textAlign = "left";
                        return;
                    }// end function
                    , propertiesFactory:function () : Object
                    {
                        return {x:707, y:118};
                    }// end function
                    }), new UIComponentDescriptor({type:Label, id:"_UnitStatus_Label29", stylesFactory:function () : void
                    {
                        this.fontSize = 12;
                        this.fontWeight = "bold";
                        this.color = 0;
                        return;
                    }// end function
                    , propertiesFactory:function () : Object
                    {
                        return {x:465, y:161};
                    }// end function
                    }), new UIComponentDescriptor({type:Label, id:"_UnitStatus_Label30", stylesFactory:function () : void
                    {
                        this.fontSize = 12;
                        this.color = 0;
                        return;
                    }// end function
                    , propertiesFactory:function () : Object
                    {
                        return {x:582, y:161};
                    }// end function
                    }), new UIComponentDescriptor({type:Label, id:"itemEndurance", stylesFactory:function () : void
                    {
                        this.fontSize = 12;
                        this.color = 0;
                        return;
                    }// end function
                    , propertiesFactory:function () : Object
                    {
                        return {x:465, y:204};
                    }// end function
                    }), new UIComponentDescriptor({type:Label, id:"_UnitStatus_Label32", stylesFactory:function () : void
                    {
                        this.fontSize = 12;
                        this.color = 0;
                        return;
                    }// end function
                    , propertiesFactory:function () : Object
                    {
                        return {x:582, y:204};
                    }// end function
                    })]};
                }// end function
                })]};
            }// end function
            });
            _1807908193_skills = new String();
            _246500774_unitExpLabel = new String();
            _290708560_accessoryEffectLabel = new String();
            _199384131bgImgOn = UnitStatus_bgImgOn;
            _1885940911bgImgOff = UnitStatus_bgImgOff;
            _magicWand = UnitStatus__magicWand;
            _sword = UnitStatus__sword;
            _901579959_attackDefIcon = UnitStatus__attackDefIcon;
            _954086800_magicDefIcon = UnitStatus__magicDefIcon;
            _14234295_moveIcon = UnitStatus__moveIcon;
            _164638769sacrificeIconImage = UnitStatus_sacrificeIconImage;
            _bindings = [];
            _watchers = [];
            _bindingsByDestination = {};
            _bindingsBeginWithWord = {};
            mx_internal::_document = this;
            this.horizontalScrollPolicy = "off";
            this.verticalScrollPolicy = "off";
            this.width = 756;
            this.height = 283;
            this.addEventListener("creationComplete", ___UnitStatus_Canvas1_creationComplete);
            return;
        }// end function

        private function get bgImage() : Class
        {
            return this._199389162bgImage;
        }// end function

        private function setColor() : void
        {
            if (_unit.weapon)
            {
                if (_unit.weapon.endurance <= 3)
                {
                    weaponEndurance.setStyle("color", RED);
                }
            }
            if (_unit.subWeapon)
            {
                if (_unit.subWeapon.endurance <= 3)
                {
                    subWeaponEndurance.setStyle("color", RED);
                }
            }
            if (_unit.armor)
            {
                if (_unit.armor.endurance <= 3)
                {
                    armorEndurance.setStyle("color", RED);
                }
                else
                {
                    armorEndurance.setStyle("color", WHITE);
                }
            }
            if (_unit.realStrength < _unit.strength)
            {
                unitStrength.setStyle("color", RED);
            }
            else if (_unit.realStrength > _unit.strength)
            {
                unitStrength.setStyle("color", BLUE);
            }
            if (_unit.realTech < _unit.tech)
            {
                unitTech.setStyle("color", RED);
            }
            else if (_unit.realTech > _unit.tech)
            {
                unitTech.setStyle("color", BLUE);
            }
            if (_unit.realAgility < _unit.agility)
            {
                unitAgility.setStyle("color", RED);
            }
            else if (_unit.realAgility > _unit.agility)
            {
                unitAgility.setStyle("color", BLUE);
            }
            if (_unit.realDefense < _unit.defense)
            {
                unitDefense.setStyle("color", RED);
            }
            else if (_unit.realDefense > _unit.defense)
            {
                unitDefense.setStyle("color", BLUE);
            }
            if (_unit.realIntelligence < _unit.intelligence)
            {
                unitIntelligence.setStyle("color", RED);
            }
            else if (_unit.realIntelligence > _unit.intelligence)
            {
                unitIntelligence.setStyle("color", BLUE);
            }
            if (_unit.realLuck < _unit.luck)
            {
                unitLuck.setStyle("color", RED);
            }
            else if (_unit.realLuck > _unit.luck)
            {
                unitLuck.setStyle("color", BLUE);
            }
            return;
        }// end function

        public function get unitDefense() : Label
        {
            return this._1518579684unitDefense;
        }// end function

        public function get unitAgility() : Label
        {
            return this._174109217unitAgility;
        }// end function

        public function get itemEndurance() : Label
        {
            return this._586800180itemEndurance;
        }// end function

        public function set unitDefense(param1:Label) : void
        {
            var _loc_2:* = this._1518579684unitDefense;
            if (_loc_2 !== param1)
            {
                this._1518579684unitDefense = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "unitDefense", _loc_2, param1));
            }
            return;
        }// end function

        private function set bgImage(param1:Class) : void
        {
            var _loc_2:* = this._199389162bgImage;
            if (_loc_2 !== param1)
            {
                this._199389162bgImage = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "bgImage", _loc_2, param1));
            }
            return;
        }// end function

        public function changeHiLigth(param1:String) : void
        {
            init();
            return;
        }// end function

        private function _UnitStatus_bindingsSetup() : Array
        {
            var binding:Binding;
            var result:Array;
            binding = new Binding(this, function () : Object
            {
                return bgImage;
            }// end function
            , function (param1:Object) : void
            {
                this.setStyle("backgroundImage", param1);
                return;
            }// end function
            , "this.backgroundImage");
            result[0] = binding;
            binding = new Binding(this, function () : UnitVO
            {
                return _unit;
            }// end function
            , function (param1:UnitVO) : void
            {
                _UnitStatus_UnitPortrait1.unit = param1;
                return;
            }// end function
            , "_UnitStatus_UnitPortrait1.unit");
            result[1] = binding;
            binding = new Binding(this, function () : Object
            {
                return sacrificeIconImage;
            }// end function
            , function (param1:Object) : void
            {
                sacrificeIcon.source = param1;
                return;
            }// end function
            , "sacrificeIcon.source");
            result[2] = binding;
            binding = new Binding(this, function () : Boolean
            {
                return _unit.sacrificible;
            }// end function
            , function (param1:Boolean) : void
            {
                sacrificeIcon.visible = param1;
                return;
            }// end function
            , "sacrificeIcon.visible");
            result[3] = binding;
            binding = new Binding(this, function () : Object
            {
                return _unit.bloodImageUrl;
            }// end function
            , function (param1:Object) : void
            {
                bloodIcon.source = param1;
                return;
            }// end function
            , "bloodIcon.source");
            result[4] = binding;
            binding = new Binding(this, function () : String
            {
                var _loc_1:* = _unit.name;
                var _loc_2:* = _loc_1 == undefined ? (null) : (String(_loc_1));
                return _loc_2;
            }// end function
            , function (param1:String) : void
            {
                _UnitStatus_Label1.text = param1;
                return;
            }// end function
            , "_UnitStatus_Label1.text");
            result[5] = binding;
            binding = new Binding(this, function () : String
            {
                var _loc_1:* = _unit.jobMasterVO.nameLabel;
                var _loc_2:* = _loc_1 == undefined ? (null) : (String(_loc_1));
                return _loc_2;
            }// end function
            , function (param1:String) : void
            {
                _UnitStatus_Label2.text = param1;
                return;
            }// end function
            , "_UnitStatus_Label2.text");
            result[6] = binding;
            binding = new Binding(this, function () : String
            {
                var _loc_1:* = _unit.level;
                var _loc_2:* = _loc_1 == undefined ? (null) : (String(_loc_1));
                return _loc_2;
            }// end function
            , function (param1:String) : void
            {
                _UnitStatus_Label3.text = param1;
                return;
            }// end function
            , "_UnitStatus_Label3.text");
            result[7] = binding;
            binding = new Binding(this, function () : Boolean
            {
                return visibleBool;
            }// end function
            , function (param1:Boolean) : void
            {
                _UnitStatus_Label3.visible = param1;
                return;
            }// end function
            , "_UnitStatus_Label3.visible");
            result[8] = binding;
            binding = new Binding(this, function () : String
            {
                var _loc_1:* = _unitExpLabel;
                var _loc_2:* = _loc_1 == undefined ? (null) : (String(_loc_1));
                return _loc_2;
            }// end function
            , function (param1:String) : void
            {
                _UnitStatus_Label4.text = param1;
                return;
            }// end function
            , "_UnitStatus_Label4.text");
            result[9] = binding;
            binding = new Binding(this, function () : Boolean
            {
                return visibleBool;
            }// end function
            , function (param1:Boolean) : void
            {
                _UnitStatus_Label4.visible = param1;
                return;
            }// end function
            , "_UnitStatus_Label4.visible");
            result[10] = binding;
            binding = new Binding(this, function () : String
            {
                var _loc_1:* = resetHp(_unit.hp);
                var _loc_2:* = _loc_1 == undefined ? (null) : (String(_loc_1));
                return _loc_2;
            }// end function
            , function (param1:String) : void
            {
                unitHp.text = param1;
                return;
            }// end function
            , "unitHp.text");
            result[11] = binding;
            binding = new Binding(this, function () : Boolean
            {
                return visibleBool;
            }// end function
            , function (param1:Boolean) : void
            {
                unitHp.visible = param1;
                return;
            }// end function
            , "unitHp.visible");
            result[12] = binding;
            binding = new Binding(this, function () : Boolean
            {
                return visibleBool;
            }// end function
            , function (param1:Boolean) : void
            {
                _UnitStatus_Image3.visible = param1;
                return;
            }// end function
            , "_UnitStatus_Image3.visible");
            result[13] = binding;
            binding = new Binding(this, function () : Object
            {
                return _weaponIcon;
            }// end function
            , function (param1:Object) : void
            {
                _UnitStatus_Image3.source = param1;
                return;
            }// end function
            , "_UnitStatus_Image3.source");
            result[14] = binding;
            binding = new Binding(this, function () : String
            {
                var _loc_1:* = baseDamage;
                var _loc_2:* = _loc_1 == undefined ? (null) : (String(_loc_1));
                return _loc_2;
            }// end function
            , function (param1:String) : void
            {
                _UnitStatus_Label6.text = param1;
                return;
            }// end function
            , "_UnitStatus_Label6.text");
            result[15] = binding;
            binding = new Binding(this, function () : Boolean
            {
                return visibleBool;
            }// end function
            , function (param1:Boolean) : void
            {
                _UnitStatus_Label6.visible = param1;
                return;
            }// end function
            , "_UnitStatus_Label6.visible");
            result[16] = binding;
            binding = new Binding(this, function () : Boolean
            {
                return visibleBool;
            }// end function
            , function (param1:Boolean) : void
            {
                _UnitStatus_Image4.visible = param1;
                return;
            }// end function
            , "_UnitStatus_Image4.visible");
            result[17] = binding;
            binding = new Binding(this, function () : Object
            {
                return _attackDefIcon;
            }// end function
            , function (param1:Object) : void
            {
                _UnitStatus_Image4.source = param1;
                return;
            }// end function
            , "_UnitStatus_Image4.source");
            result[18] = binding;
            binding = new Binding(this, function () : String
            {
                var _loc_1:* = _unit.baseDefense;
                var _loc_2:* = _loc_1 == undefined ? (null) : (String(_loc_1));
                return _loc_2;
            }// end function
            , function (param1:String) : void
            {
                _UnitStatus_Label7.text = param1;
                return;
            }// end function
            , "_UnitStatus_Label7.text");
            result[19] = binding;
            binding = new Binding(this, function () : Boolean
            {
                return visibleBool;
            }// end function
            , function (param1:Boolean) : void
            {
                _UnitStatus_Label7.visible = param1;
                return;
            }// end function
            , "_UnitStatus_Label7.visible");
            result[20] = binding;
            binding = new Binding(this, function () : Boolean
            {
                return visibleBool;
            }// end function
            , function (param1:Boolean) : void
            {
                _UnitStatus_Image5.visible = param1;
                return;
            }// end function
            , "_UnitStatus_Image5.visible");
            result[21] = binding;
            binding = new Binding(this, function () : Object
            {
                return _magicDefIcon;
            }// end function
            , function (param1:Object) : void
            {
                _UnitStatus_Image5.source = param1;
                return;
            }// end function
            , "_UnitStatus_Image5.source");
            result[22] = binding;
            binding = new Binding(this, function () : String
            {
                var _loc_1:* = _unit.baseMagicalDefense;
                var _loc_2:* = _loc_1 == undefined ? (null) : (String(_loc_1));
                return _loc_2;
            }// end function
            , function (param1:String) : void
            {
                _UnitStatus_Label8.text = param1;
                return;
            }// end function
            , "_UnitStatus_Label8.text");
            result[23] = binding;
            binding = new Binding(this, function () : Boolean
            {
                return visibleBool;
            }// end function
            , function (param1:Boolean) : void
            {
                _UnitStatus_Label8.visible = param1;
                return;
            }// end function
            , "_UnitStatus_Label8.visible");
            result[24] = binding;
            binding = new Binding(this, function () : Boolean
            {
                return visibleBool;
            }// end function
            , function (param1:Boolean) : void
            {
                _UnitStatus_Image6.visible = param1;
                return;
            }// end function
            , "_UnitStatus_Image6.visible");
            result[25] = binding;
            binding = new Binding(this, function () : Object
            {
                return _moveIcon;
            }// end function
            , function (param1:Object) : void
            {
                _UnitStatus_Image6.source = param1;
                return;
            }// end function
            , "_UnitStatus_Image6.source");
            result[26] = binding;
            binding = new Binding(this, function () : String
            {
                var _loc_1:* = _unit.moveRange;
                var _loc_2:* = _loc_1 == undefined ? (null) : (String(_loc_1));
                return _loc_2;
            }// end function
            , function (param1:String) : void
            {
                _UnitStatus_Label9.text = param1;
                return;
            }// end function
            , "_UnitStatus_Label9.text");
            result[27] = binding;
            binding = new Binding(this, function () : Boolean
            {
                return visibleBool;
            }// end function
            , function (param1:Boolean) : void
            {
                _UnitStatus_Label9.visible = param1;
                return;
            }// end function
            , "_UnitStatus_Label9.visible");
            result[28] = binding;
            binding = new Binding(this, function () : String
            {
                var _loc_1:* = _skills.length != 0 ? (_skills) : ("");
                var _loc_2:* = _loc_1 == undefined ? (null) : (String(_loc_1));
                return _loc_2;
            }// end function
            , function (param1:String) : void
            {
                _UnitStatus_TextArea1.text = param1;
                return;
            }// end function
            , "_UnitStatus_TextArea1.text");
            result[29] = binding;
            binding = new Binding(this, function () : String
            {
                var _loc_1:* = _unit.realStrength;
                var _loc_2:* = _loc_1 == undefined ? (null) : (String(_loc_1));
                return _loc_2;
            }// end function
            , function (param1:String) : void
            {
                unitStrength.text = param1;
                return;
            }// end function
            , "unitStrength.text");
            result[30] = binding;
            binding = new Binding(this, function () : Boolean
            {
                return visibleBool;
            }// end function
            , function (param1:Boolean) : void
            {
                unitStrength.visible = param1;
                return;
            }// end function
            , "unitStrength.visible");
            result[31] = binding;
            binding = new Binding(this, function () : String
            {
                var _loc_1:* = _unit.realTech;
                var _loc_2:* = _loc_1 == undefined ? (null) : (String(_loc_1));
                return _loc_2;
            }// end function
            , function (param1:String) : void
            {
                unitTech.text = param1;
                return;
            }// end function
            , "unitTech.text");
            result[32] = binding;
            binding = new Binding(this, function () : Boolean
            {
                return visibleBool;
            }// end function
            , function (param1:Boolean) : void
            {
                unitTech.visible = param1;
                return;
            }// end function
            , "unitTech.visible");
            result[33] = binding;
            binding = new Binding(this, function () : String
            {
                var _loc_1:* = _unit.realAgility;
                var _loc_2:* = _loc_1 == undefined ? (null) : (String(_loc_1));
                return _loc_2;
            }// end function
            , function (param1:String) : void
            {
                unitAgility.text = param1;
                return;
            }// end function
            , "unitAgility.text");
            result[34] = binding;
            binding = new Binding(this, function () : Boolean
            {
                return visibleBool;
            }// end function
            , function (param1:Boolean) : void
            {
                unitAgility.visible = param1;
                return;
            }// end function
            , "unitAgility.visible");
            result[35] = binding;
            binding = new Binding(this, function () : String
            {
                var _loc_1:* = _unit.realDefense;
                var _loc_2:* = _loc_1 == undefined ? (null) : (String(_loc_1));
                return _loc_2;
            }// end function
            , function (param1:String) : void
            {
                unitDefense.text = param1;
                return;
            }// end function
            , "unitDefense.text");
            result[36] = binding;
            binding = new Binding(this, function () : Boolean
            {
                return visibleBool;
            }// end function
            , function (param1:Boolean) : void
            {
                unitDefense.visible = param1;
                return;
            }// end function
            , "unitDefense.visible");
            result[37] = binding;
            binding = new Binding(this, function () : String
            {
                var _loc_1:* = _unit.realIntelligence;
                var _loc_2:* = _loc_1 == undefined ? (null) : (String(_loc_1));
                return _loc_2;
            }// end function
            , function (param1:String) : void
            {
                unitIntelligence.text = param1;
                return;
            }// end function
            , "unitIntelligence.text");
            result[38] = binding;
            binding = new Binding(this, function () : Boolean
            {
                return visibleBool;
            }// end function
            , function (param1:Boolean) : void
            {
                unitIntelligence.visible = param1;
                return;
            }// end function
            , "unitIntelligence.visible");
            result[39] = binding;
            binding = new Binding(this, function () : String
            {
                var _loc_1:* = _unit.realLuck;
                var _loc_2:* = _loc_1 == undefined ? (null) : (String(_loc_1));
                return _loc_2;
            }// end function
            , function (param1:String) : void
            {
                unitLuck.text = param1;
                return;
            }// end function
            , "unitLuck.text");
            result[40] = binding;
            binding = new Binding(this, function () : Boolean
            {
                return visibleBool;
            }// end function
            , function (param1:Boolean) : void
            {
                unitLuck.visible = param1;
                return;
            }// end function
            , "unitLuck.visible");
            result[41] = binding;
            binding = new Binding(this, function () : String
            {
                var _loc_1:* = _unit.weapon == null ? ("") : (_unit.weapon.nameLabel);
                var _loc_2:* = _loc_1 == undefined ? (null) : (String(_loc_1));
                return _loc_2;
            }// end function
            , function (param1:String) : void
            {
                _UnitStatus_Label16.text = param1;
                return;
            }// end function
            , "_UnitStatus_Label16.text");
            result[42] = binding;
            binding = new Binding(this, function () : String
            {
                var _loc_1:* = _unit.weapon.damage;
                var _loc_2:* = _loc_1 == undefined ? (null) : (String(_loc_1));
                return _loc_2;
            }// end function
            , function (param1:String) : void
            {
                _UnitStatus_Label17.text = param1;
                return;
            }// end function
            , "_UnitStatus_Label17.text");
            result[43] = binding;
            binding = new Binding(this, function () : String
            {
                var _loc_1:* = _unit.weapon.hit;
                var _loc_2:* = _loc_1 == undefined ? (null) : (String(_loc_1));
                return _loc_2;
            }// end function
            , function (param1:String) : void
            {
                _UnitStatus_Label18.text = param1;
                return;
            }// end function
            , "_UnitStatus_Label18.text");
            result[44] = binding;
            binding = new Binding(this, function () : String
            {
                var _loc_1:* = _unit.weapon.endurance;
                var _loc_2:* = _loc_1 == undefined ? (null) : (String(_loc_1));
                return _loc_2;
            }// end function
            , function (param1:String) : void
            {
                weaponEndurance.text = param1;
                return;
            }// end function
            , "weaponEndurance.text");
            result[45] = binding;
            binding = new Binding(this, function () : String
            {
                var _loc_1:* = _unit.subWeapon == null ? ("") : (_unit.subWeapon.nameLabel);
                var _loc_2:* = _loc_1 == undefined ? (null) : (String(_loc_1));
                return _loc_2;
            }// end function
            , function (param1:String) : void
            {
                _UnitStatus_Label20.text = param1;
                return;
            }// end function
            , "_UnitStatus_Label20.text");
            result[46] = binding;
            binding = new Binding(this, function () : String
            {
                var _loc_1:* = _unit.subWeapon.damage;
                var _loc_2:* = _loc_1 == undefined ? (null) : (String(_loc_1));
                return _loc_2;
            }// end function
            , function (param1:String) : void
            {
                _UnitStatus_Label21.text = param1;
                return;
            }// end function
            , "_UnitStatus_Label21.text");
            result[47] = binding;
            binding = new Binding(this, function () : String
            {
                var _loc_1:* = _unit.subWeapon.hit;
                var _loc_2:* = _loc_1 == undefined ? (null) : (String(_loc_1));
                return _loc_2;
            }// end function
            , function (param1:String) : void
            {
                _UnitStatus_Label22.text = param1;
                return;
            }// end function
            , "_UnitStatus_Label22.text");
            result[48] = binding;
            binding = new Binding(this, function () : String
            {
                var _loc_1:* = _unit.subWeapon.endurance;
                var _loc_2:* = _loc_1 == undefined ? (null) : (String(_loc_1));
                return _loc_2;
            }// end function
            , function (param1:String) : void
            {
                subWeaponEndurance.text = param1;
                return;
            }// end function
            , "subWeaponEndurance.text");
            result[49] = binding;
            binding = new Binding(this, function () : String
            {
                var _loc_1:* = _unit.armor == null ? ("") : (_unit.armor.nameLabel);
                var _loc_2:* = _loc_1 == undefined ? (null) : (String(_loc_1));
                return _loc_2;
            }// end function
            , function (param1:String) : void
            {
                _UnitStatus_Label24.text = param1;
                return;
            }// end function
            , "_UnitStatus_Label24.text");
            result[50] = binding;
            binding = new Binding(this, function () : String
            {
                var _loc_1:* = _unit.armor.avoidance;
                var _loc_2:* = _loc_1 == undefined ? (null) : (String(_loc_1));
                return _loc_2;
            }// end function
            , function (param1:String) : void
            {
                _UnitStatus_Label25.text = param1;
                return;
            }// end function
            , "_UnitStatus_Label25.text");
            result[51] = binding;
            binding = new Binding(this, function () : String
            {
                var _loc_1:* = _unit.armor.physicalDefense;
                var _loc_2:* = _loc_1 == undefined ? (null) : (String(_loc_1));
                return _loc_2;
            }// end function
            , function (param1:String) : void
            {
                _UnitStatus_Label26.text = param1;
                return;
            }// end function
            , "_UnitStatus_Label26.text");
            result[52] = binding;
            binding = new Binding(this, function () : String
            {
                var _loc_1:* = _unit.armor.magicalDefense;
                var _loc_2:* = _loc_1 == undefined ? (null) : (String(_loc_1));
                return _loc_2;
            }// end function
            , function (param1:String) : void
            {
                _UnitStatus_Label27.text = param1;
                return;
            }// end function
            , "_UnitStatus_Label27.text");
            result[53] = binding;
            binding = new Binding(this, function () : String
            {
                var _loc_1:* = _unit.armor.endurance;
                var _loc_2:* = _loc_1 == undefined ? (null) : (String(_loc_1));
                return _loc_2;
            }// end function
            , function (param1:String) : void
            {
                armorEndurance.text = param1;
                return;
            }// end function
            , "armorEndurance.text");
            result[54] = binding;
            binding = new Binding(this, function () : String
            {
                var _loc_1:* = _unit.accessory == null ? ("") : (_unit.accessory.nameLabel);
                var _loc_2:* = _loc_1 == undefined ? (null) : (String(_loc_1));
                return _loc_2;
            }// end function
            , function (param1:String) : void
            {
                _UnitStatus_Label29.text = param1;
                return;
            }// end function
            , "_UnitStatus_Label29.text");
            result[55] = binding;
            binding = new Binding(this, function () : String
            {
                var _loc_1:* = _unit.accessory.effectLabelAll;
                var _loc_2:* = _loc_1 == undefined ? (null) : (String(_loc_1));
                return _loc_2;
            }// end function
            , function (param1:String) : void
            {
                _UnitStatus_Label30.text = param1;
                return;
            }// end function
            , "_UnitStatus_Label30.text");
            result[56] = binding;
            binding = new Binding(this, function () : String
            {
                var _loc_1:* = _unit.item.nameLabel;
                var _loc_2:* = _loc_1 == undefined ? (null) : (String(_loc_1));
                return _loc_2;
            }// end function
            , function (param1:String) : void
            {
                itemEndurance.text = param1;
                return;
            }// end function
            , "itemEndurance.text");
            result[57] = binding;
            binding = new Binding(this, function () : String
            {
                var _loc_1:* = _unit.item.effect;
                var _loc_2:* = _loc_1 == undefined ? (null) : (String(_loc_1));
                return _loc_2;
            }// end function
            , function (param1:String) : void
            {
                _UnitStatus_Label32.text = param1;
                return;
            }// end function
            , "_UnitStatus_Label32.text");
            result[58] = binding;
            return result;
        }// end function

        private function get sacrificeIconImage() : Class
        {
            return this._164638769sacrificeIconImage;
        }// end function

        public function get unitTech() : Label
        {
            return this._292671942unitTech;
        }// end function

        public function set unitAgility(param1:Label) : void
        {
            var _loc_2:* = this._174109217unitAgility;
            if (_loc_2 !== param1)
            {
                this._174109217unitAgility = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "unitAgility", _loc_2, param1));
            }
            return;
        }// end function

        private function get _accessoryEffectLabel() : String
        {
            return this._290708560_accessoryEffectLabel;
        }// end function

        private function get _weaponIcon() : Class
        {
            return this._1834460588_weaponIcon;
        }// end function

        public function get unitIntelligence() : Label
        {
            return this._1532721565unitIntelligence;
        }// end function

        public function set itemEndurance(param1:Label) : void
        {
            var _loc_2:* = this._586800180itemEndurance;
            if (_loc_2 !== param1)
            {
                this._586800180itemEndurance = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "itemEndurance", _loc_2, param1));
            }
            return;
        }// end function

        private function get _unit() : UnitVO
        {
            return this._91329123_unit;
        }// end function

        private function get _unitExpLabel() : String
        {
            return this._246500774_unitExpLabel;
        }// end function

        private function set sacrificeIconImage(param1:Class) : void
        {
            var _loc_2:* = this._164638769sacrificeIconImage;
            if (_loc_2 !== param1)
            {
                this._164638769sacrificeIconImage = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "sacrificeIconImage", _loc_2, param1));
            }
            return;
        }// end function

        private function get visibleBool() : Boolean
        {
            return this._130029180visibleBool;
        }// end function

        public function set nameBox(param1:HBox) : void
        {
            var _loc_2:* = this._1721924416nameBox;
            if (_loc_2 !== param1)
            {
                this._1721924416nameBox = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "nameBox", _loc_2, param1));
            }
            return;
        }// end function

        public function set unitTech(param1:Label) : void
        {
            var _loc_2:* = this._292671942unitTech;
            if (_loc_2 !== param1)
            {
                this._292671942unitTech = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "unitTech", _loc_2, param1));
            }
            return;
        }// end function

        public function set weaponEndurance(param1:Label) : void
        {
            var _loc_2:* = this._919760715weaponEndurance;
            if (_loc_2 !== param1)
            {
                this._919760715weaponEndurance = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "weaponEndurance", _loc_2, param1));
            }
            return;
        }// end function

        private function set _moveIcon(param1:Class) : void
        {
            var _loc_2:* = this._14234295_moveIcon;
            if (_loc_2 !== param1)
            {
                this._14234295_moveIcon = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "_moveIcon", _loc_2, param1));
            }
            return;
        }// end function

        public function set sacrificeIcon(param1:Image) : void
        {
            var _loc_2:* = this._19564362sacrificeIcon;
            if (_loc_2 !== param1)
            {
                this._19564362sacrificeIcon = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "sacrificeIcon", _loc_2, param1));
            }
            return;
        }// end function

        private function set bgImgOff(param1:Class) : void
        {
            var _loc_2:* = this._1885940911bgImgOff;
            if (_loc_2 !== param1)
            {
                this._1885940911bgImgOff = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "bgImgOff", _loc_2, param1));
            }
            return;
        }// end function

        private function set _accessoryEffectLabel(param1:String) : void
        {
            var _loc_2:* = this._290708560_accessoryEffectLabel;
            if (_loc_2 !== param1)
            {
                this._290708560_accessoryEffectLabel = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "_accessoryEffectLabel", _loc_2, param1));
            }
            return;
        }// end function

        private function set _weaponIcon(param1:Class) : void
        {
            var _loc_2:* = this._1834460588_weaponIcon;
            if (_loc_2 !== param1)
            {
                this._1834460588_weaponIcon = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "_weaponIcon", _loc_2, param1));
            }
            return;
        }// end function

        public function set unitLuck(param1:Label) : void
        {
            var _loc_2:* = this._292894891unitLuck;
            if (_loc_2 !== param1)
            {
                this._292894891unitLuck = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "unitLuck", _loc_2, param1));
            }
            return;
        }// end function

        private function resetHp(param1:int) : String
        {
            while (unitHpBar.numChildren > 0)
            {
                
                unitHpBar.removeChildAt(0);
            }
            drawHpBar(_unit);
            return _unit.maskedHp + "/" + _unit.maskedMaxHp;
        }// end function

        private function set _unitExpLabel(param1:String) : void
        {
            var _loc_2:* = this._246500774_unitExpLabel;
            if (_loc_2 !== param1)
            {
                this._246500774_unitExpLabel = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "_unitExpLabel", _loc_2, param1));
            }
            return;
        }// end function

        private function get _attackDefIcon() : Class
        {
            return this._901579959_attackDefIcon;
        }// end function

        private function set _skills(param1:String) : void
        {
            var _loc_2:* = this._1807908193_skills;
            if (_loc_2 !== param1)
            {
                this._1807908193_skills = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "_skills", _loc_2, param1));
            }
            return;
        }// end function

        private function adjustBloodIcon() : void
        {
            if (_unit.sacrificible)
            {
                this["bloodIcon"].x = 60;
            }
            if (_unit.bloodImageUrl)
            {
                this["bloodIcon"].visible = true;
            }
            return;
        }// end function

        public function set unitIntelligence(param1:Label) : void
        {
            var _loc_2:* = this._1532721565unitIntelligence;
            if (_loc_2 !== param1)
            {
                this._1532721565unitIntelligence = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "unitIntelligence", _loc_2, param1));
            }
            return;
        }// end function

        public function get unitHpBar() : Canvas
        {
            return this._493681977unitHpBar;
        }// end function

        private function set _unit(param1:UnitVO) : void
        {
            var _loc_2:* = this._91329123_unit;
            if (_loc_2 !== param1)
            {
                this._91329123_unit = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "_unit", _loc_2, param1));
            }
            return;
        }// end function

        public function get subWeaponEndurance() : Label
        {
            return this._2140725013subWeaponEndurance;
        }// end function

        private function set visibleBool(param1:Boolean) : void
        {
            var _loc_2:* = this._130029180visibleBool;
            if (_loc_2 !== param1)
            {
                this._130029180visibleBool = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "visibleBool", _loc_2, param1));
            }
            return;
        }// end function

        public function init() : void
        {
            bgImage = bgImgOn;
            return;
        }// end function

        private function drawHpBar(param1:UnitVO) : void
        {
            var _loc_2:* = drawSquare(0, 0, 80, 10, 8519680);
            var _loc_3:* = new UIComponentSprite(_loc_2);
            unitHpBar.addChild(_loc_3);
            if (_unit.hp > _unit.realMaxHp)
            {
                _unit.hp = _unit.realMaxHp;
            }
            _loc_2 = drawSquare(0, 0, 80 * (_unit.hp / _unit.realMaxHp), 10, 5285376);
            _loc_3.sprite = _loc_2;
            unitHpBar.addChild(_loc_3);
            return;
        }// end function

        private function set _magicDefIcon(param1:Class) : void
        {
            var _loc_2:* = this._954086800_magicDefIcon;
            if (_loc_2 !== param1)
            {
                this._954086800_magicDefIcon = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "_magicDefIcon", _loc_2, param1));
            }
            return;
        }// end function

        public function set bloodIcon(param1:Image) : void
        {
            var _loc_2:* = this._1209198995bloodIcon;
            if (_loc_2 !== param1)
            {
                this._1209198995bloodIcon = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "bloodIcon", _loc_2, param1));
            }
            return;
        }// end function

        public function set unit(param1:UnitVO) : void
        {
            _unit = param1;
            dataReset();
            nameBox.removeAllChildren();
            if (param1.name == "")
            {
                visibleBool = false;
                bgImage = bgImgOn;
                return;
            }
            visibleBool = true;
            var _loc_2:int = 0;
            while (_loc_2 < param1.ownSkills.length)
            {
                
                _skills = _skills + (_unit.ownSkills[_loc_2].nameLabel + "\n");
                _loc_2++;
            }
            if (param1.team == 0)
            {
                setColor();
            }
            bgImage = bgImgOn;
            if (_unit.level >= _unit.jobMasterVO.levelCap)
            {
                _unitExpLabel = "--/--";
            }
            else
            {
                _unitExpLabel = _unit.exp + "/" + _unit.nextExp;
            }
            if (_unit.accessory)
            {
                if (_unit.accessory.skillId)
                {
                    _accessoryEffectLabel = "";
                }
                else
                {
                    _accessoryEffectLabel = _unit.accessory.effectLabelAll;
                }
            }
            else
            {
                _accessoryEffectLabel = "";
            }
            if (_unit.weapon)
            {
                if (_unit.weapon.weaponTypeLabel == Utils.i18n("localize275"))
                {
                    baseDamage = _unit.baseMagicalDamage;
                    _weaponIcon = _magicWand;
                }
                else if (_unit.weapon.weaponTypeLabel == Utils.i18n("localize276"))
                {
                    baseDamage = _unit.baseMagicalDamage;
                    _weaponIcon = _magicWand;
                }
                else
                {
                    baseDamage = _unit.baseDamage;
                    _weaponIcon = _sword;
                }
            }
            else
            {
                baseDamage = _unit.baseDamage;
                _weaponIcon = _sword;
            }
            drawHpBar(_unit);
            adjustBloodIcon();
            return;
        }// end function

        public function set armorEndurance(param1:Label) : void
        {
            var _loc_2:* = this._2065770376armorEndurance;
            if (_loc_2 !== param1)
            {
                this._2065770376armorEndurance = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "armorEndurance", _loc_2, param1));
            }
            return;
        }// end function

        private function _UnitStatus_bindingExprs() : void
        {
            var _loc_1:* = undefined;
            _loc_1 = bgImage;
            _loc_1 = _unit;
            _loc_1 = sacrificeIconImage;
            _loc_1 = _unit.sacrificible;
            _loc_1 = _unit.bloodImageUrl;
            _loc_1 = _unit.name;
            _loc_1 = _unit.jobMasterVO.nameLabel;
            _loc_1 = _unit.level;
            _loc_1 = visibleBool;
            _loc_1 = _unitExpLabel;
            _loc_1 = visibleBool;
            _loc_1 = resetHp(_unit.hp);
            _loc_1 = visibleBool;
            _loc_1 = visibleBool;
            _loc_1 = _weaponIcon;
            _loc_1 = baseDamage;
            _loc_1 = visibleBool;
            _loc_1 = visibleBool;
            _loc_1 = _attackDefIcon;
            _loc_1 = _unit.baseDefense;
            _loc_1 = visibleBool;
            _loc_1 = visibleBool;
            _loc_1 = _magicDefIcon;
            _loc_1 = _unit.baseMagicalDefense;
            _loc_1 = visibleBool;
            _loc_1 = visibleBool;
            _loc_1 = _moveIcon;
            _loc_1 = _unit.moveRange;
            _loc_1 = visibleBool;
            _loc_1 = _skills.length != 0 ? (_skills) : ("");
            _loc_1 = _unit.realStrength;
            _loc_1 = visibleBool;
            _loc_1 = _unit.realTech;
            _loc_1 = visibleBool;
            _loc_1 = _unit.realAgility;
            _loc_1 = visibleBool;
            _loc_1 = _unit.realDefense;
            _loc_1 = visibleBool;
            _loc_1 = _unit.realIntelligence;
            _loc_1 = visibleBool;
            _loc_1 = _unit.realLuck;
            _loc_1 = visibleBool;
            _loc_1 = _unit.weapon == null ? ("") : (_unit.weapon.nameLabel);
            _loc_1 = _unit.weapon.damage;
            _loc_1 = _unit.weapon.hit;
            _loc_1 = _unit.weapon.endurance;
            _loc_1 = _unit.subWeapon == null ? ("") : (_unit.subWeapon.nameLabel);
            _loc_1 = _unit.subWeapon.damage;
            _loc_1 = _unit.subWeapon.hit;
            _loc_1 = _unit.subWeapon.endurance;
            _loc_1 = _unit.armor == null ? ("") : (_unit.armor.nameLabel);
            _loc_1 = _unit.armor.avoidance;
            _loc_1 = _unit.armor.physicalDefense;
            _loc_1 = _unit.armor.magicalDefense;
            _loc_1 = _unit.armor.endurance;
            _loc_1 = _unit.accessory == null ? ("") : (_unit.accessory.nameLabel);
            _loc_1 = _unit.accessory.effectLabelAll;
            _loc_1 = _unit.item.nameLabel;
            _loc_1 = _unit.item.effect;
            return;
        }// end function

        public function get nameBox() : HBox
        {
            return this._1721924416nameBox;
        }// end function

        private function get _moveIcon() : Class
        {
            return this._14234295_moveIcon;
        }// end function

        public function get sacrificeIcon() : Image
        {
            return this._19564362sacrificeIcon;
        }// end function

        public function get weaponEndurance() : Label
        {
            return this._919760715weaponEndurance;
        }// end function

        private function set baseDamage(param1:int) : void
        {
            var _loc_2:* = this._1264886368baseDamage;
            if (_loc_2 !== param1)
            {
                this._1264886368baseDamage = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "baseDamage", _loc_2, param1));
            }
            return;
        }// end function

        private function get bgImgOff() : Class
        {
            return this._1885940911bgImgOff;
        }// end function

        public function get unitLuck() : Label
        {
            return this._292894891unitLuck;
        }// end function

        public function set unitHp(param1:Label) : void
        {
            var _loc_2:* = this._840527444unitHp;
            if (_loc_2 !== param1)
            {
                this._840527444unitHp = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "unitHp", _loc_2, param1));
            }
            return;
        }// end function

        private function get _skills() : String
        {
            return this._1807908193_skills;
        }// end function

        private function set _attackDefIcon(param1:Class) : void
        {
            var _loc_2:* = this._901579959_attackDefIcon;
            if (_loc_2 !== param1)
            {
                this._901579959_attackDefIcon = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "_attackDefIcon", _loc_2, param1));
            }
            return;
        }// end function

        private function set bgImgOn(param1:Class) : void
        {
            var _loc_2:* = this._199384131bgImgOn;
            if (_loc_2 !== param1)
            {
                this._199384131bgImgOn = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "bgImgOn", _loc_2, param1));
            }
            return;
        }// end function

        private function drawSquare(param1:int, param2:int, param3:int, param4:int, param5:uint) : Sprite
        {
            var _loc_6:* = new Sprite();
            new Sprite().graphics.beginFill(param5);
            _loc_6.graphics.drawRect(param1, param2, param3, param4);
            _loc_6.graphics.endFill();
            return _loc_6;
        }// end function

        public function ___UnitStatus_Canvas1_creationComplete(event:FlexEvent) : void
        {
            init();
            return;
        }// end function

        public function get unit() : UnitVO
        {
            return _unit;
        }// end function

        public function get armorEndurance() : Label
        {
            return this._2065770376armorEndurance;
        }// end function

        override public function initialize() : void
        {
            var target:UnitStatus;
            var watcherSetupUtilClass:Object;
            .mx_internal::setDocumentDescriptor(_documentDescriptor_);
            var bindings:* = _UnitStatus_bindingsSetup();
            var watchers:Array;
            target;
            if (_watcherSetupUtil == null)
            {
                watcherSetupUtilClass = getDefinitionByName("_com_kbmj_viking_view_UnitStatusWatcherSetupUtil");
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

        public function get bloodIcon() : Image
        {
            return this._1209198995bloodIcon;
        }// end function

        public function set unitHpBar(param1:Canvas) : void
        {
            var _loc_2:* = this._493681977unitHpBar;
            if (_loc_2 !== param1)
            {
                this._493681977unitHpBar = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "unitHpBar", _loc_2, param1));
            }
            return;
        }// end function

        private function get baseDamage() : int
        {
            return this._1264886368baseDamage;
        }// end function

        private function get _magicDefIcon() : Class
        {
            return this._954086800_magicDefIcon;
        }// end function

        public function get unitHp() : Label
        {
            return this._840527444unitHp;
        }// end function

        private function get bgImgOn() : Class
        {
            return this._199384131bgImgOn;
        }// end function

        private function dataReset() : void
        {
            _skills = "";
            weaponEndurance.setStyle("color", WHITE);
            subWeaponEndurance.setStyle("color", WHITE);
            unitHp.setStyle("color", WHITE);
            unitStrength.setStyle("color", WHITE);
            unitTech.setStyle("color", WHITE);
            unitAgility.setStyle("color", WHITE);
            unitDefense.setStyle("color", WHITE);
            unitIntelligence.setStyle("color", WHITE);
            unitLuck.setStyle("color", WHITE);
            while (unitHpBar.numChildren > 0)
            {
                
                unitHpBar.removeChildAt(0);
            }
            return;
        }// end function

        public function set unitStrength(param1:Label) : void
        {
            var _loc_2:* = this._1312213477unitStrength;
            if (_loc_2 !== param1)
            {
                this._1312213477unitStrength = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "unitStrength", _loc_2, param1));
            }
            return;
        }// end function

        public function set subWeaponEndurance(param1:Label) : void
        {
            var _loc_2:* = this._2140725013subWeaponEndurance;
            if (_loc_2 !== param1)
            {
                this._2140725013subWeaponEndurance = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "subWeaponEndurance", _loc_2, param1));
            }
            return;
        }// end function

        public function get unitStrength() : Label
        {
            return this._1312213477unitStrength;
        }// end function

        public static function set watcherSetupUtil(param1:IWatcherSetupUtil) : void
        {
            UnitStatus._watcherSetupUtil = param1;
            return;
        }// end function

    }
}
