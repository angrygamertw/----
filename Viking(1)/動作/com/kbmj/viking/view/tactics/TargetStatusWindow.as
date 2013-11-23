package com.kbmj.viking.view.tactics
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

    public class TargetStatusWindow extends Canvas implements IBindingClient
    {
        private var _1289266043hpbar_base:Sprite;
        private var _954086800_magicDefIcon:Class;
        private var _91329123_unit:UnitVO;
        private var _1787621428strange0:Image;
        private var _1211084919hpbar4:Sprite;
        private var _1787621429strange1:Image;
        private var _1211084915hpbar8:Sprite;
        private var _163195551_swf_strange_effect_0:MovieClipLoaderAsset;
        private var _1787621430strange2:Image;
        private var _1787621431strange3:Image;
        private var _1211084922hpbar1:Sprite;
        private var _1787621432strange4:Image;
        public var _TargetStatusWindow_Label1:Label;
        public var _TargetStatusWindow_Label2:Label;
        public var _TargetStatusWindow_Label3:Label;
        public var _TargetStatusWindow_Label4:Label;
        public var _TargetStatusWindow_Label5:Label;
        public var _TargetStatusWindow_Label6:Label;
        public var _TargetStatusWindow_Label7:Label;
        var _bindingsByDestination:Object;
        private var _1139963573magDefIcon:Class;
        private var _163195548_swf_strange_effect_3:MovieClipLoaderAsset;
        private var _1211084916hpbar7:Sprite;
        private var _901579959_attackDefIcon:Class;
        private var _382391194atkDefIcon:Class;
        private var _1372193973weaponIcon:Class;
        private var _1704146640hpbar_max:Sprite;
        private var _163195550_swf_strange_effect_1:MovieClipLoaderAsset;
        private var EmbedSwfStrangeEffect:Class;
        private var _1264886368baseDamage:Object;
        private var _1211084917hpbar6:Sprite;
        private var _163195547_swf_strange_effect_4:MovieClipLoaderAsset;
        private var _1211084920hpbar3:Sprite;
        private var _1111073130hpbar10:Sprite;
        public var _TargetStatusWindow_Image1:Image;
        public var _TargetStatusWindow_Image2:Image;
        public var _TargetStatusWindow_Image3:Image;
        public var _TargetStatusWindow_Image4:Image;
        public var _TargetStatusWindow_Image5:Image;
        public var _TargetStatusWindow_Image6:Image;
        public var _TargetStatusWindow_Image7:Image;
        public var _TargetStatusWindow_Image8:Image;
        public var _TargetStatusWindow_Image9:Image;
        var _bindingsBeginWithWord:Object;
        public var _TargetStatusWindow_Image10:Image;
        public var _TargetStatusWindow_Image11:Image;
        public var _TargetStatusWindow_Image12:Image;
        public var _TargetStatusWindow_Image13:Image;
        public var _TargetStatusWindow_Image14:Image;
        public var _TargetStatusWindow_Image15:Image;
        public var _TargetStatusWindow_Image16:Image;
        private var _130145022visibleFlag:Boolean = false;
        private var _magicWand:Class;
        private var _1211084918hpbar5:Sprite;
        private var _1211084914hpbar9:Sprite;
        private var _163195549_swf_strange_effect_2:MovieClipLoaderAsset;
        public var _TargetStatusWindow_Canvas2:Canvas;
        public var _TargetStatusWindow_Canvas3:Canvas;
        private var _1211084921hpbar2:Sprite;
        var _bindings:Array;
        private var _documentDescriptor_:UIComponentDescriptor;
        var _watchers:Array;
        private var _sword:Class;
        private static var HP_BAR_WD:int = 62;
        private static var HP_BAR_BOLD:int = 1;
        private static var _watcherSetupUtil:IWatcherSetupUtil;
        private static var HP_BAR_HT:int = 10;

        public function TargetStatusWindow()
        {
            _documentDescriptor_ = new UIComponentDescriptor({type:Canvas, propertiesFactory:function () : Object
            {
                return {width:760, height:560, childDescriptors:[new UIComponentDescriptor({type:Canvas, id:"_TargetStatusWindow_Canvas2", propertiesFactory:function () : Object
                {
                    return {x:410, y:435, width:200, height:108, childDescriptors:[new UIComponentDescriptor({type:Label, id:"_TargetStatusWindow_Label1", stylesFactory:function () : void
                    {
                        this.fontSize = 18;
                        this.color = 16777215;
                        return;
                    }// end function
                    , propertiesFactory:function () : Object
                    {
                        return {x:0, y:0};
                    }// end function
                    }), new UIComponentDescriptor({type:Label, id:"_TargetStatusWindow_Label2", stylesFactory:function () : void
                    {
                        this.fontSize = 14;
                        this.color = 16777215;
                        return;
                    }// end function
                    , propertiesFactory:function () : Object
                    {
                        return {x:0, y:24};
                    }// end function
                    }), new UIComponentDescriptor({type:Label, id:"_TargetStatusWindow_Label3", stylesFactory:function () : void
                    {
                        this.fontSize = 14;
                        this.color = 16777215;
                        return;
                    }// end function
                    , propertiesFactory:function () : Object
                    {
                        return {x:0, y:42};
                    }// end function
                    }), new UIComponentDescriptor({type:Label, id:"_TargetStatusWindow_Label4", stylesFactory:function () : void
                    {
                        this.fontSize = 14;
                        this.color = 16777215;
                        return;
                    }// end function
                    , propertiesFactory:function () : Object
                    {
                        return {x:0, y:60};
                    }// end function
                    }), new UIComponentDescriptor({type:Image, id:"_TargetStatusWindow_Image1", propertiesFactory:function () : Object
                    {
                        return {x:108, y:66};
                    }// end function
                    }), new UIComponentDescriptor({type:Image, id:"_TargetStatusWindow_Image2", propertiesFactory:function () : Object
                    {
                        return {x:108, y:66};
                    }// end function
                    }), new UIComponentDescriptor({type:Image, id:"_TargetStatusWindow_Image3", propertiesFactory:function () : Object
                    {
                        return {x:108, y:66};
                    }// end function
                    }), new UIComponentDescriptor({type:Image, id:"_TargetStatusWindow_Image4", propertiesFactory:function () : Object
                    {
                        return {x:108, y:66};
                    }// end function
                    }), new UIComponentDescriptor({type:Image, id:"_TargetStatusWindow_Image5", propertiesFactory:function () : Object
                    {
                        return {x:108, y:66};
                    }// end function
                    }), new UIComponentDescriptor({type:Image, id:"_TargetStatusWindow_Image6", propertiesFactory:function () : Object
                    {
                        return {x:108, y:66};
                    }// end function
                    }), new UIComponentDescriptor({type:Image, id:"_TargetStatusWindow_Image7", propertiesFactory:function () : Object
                    {
                        return {x:108, y:66};
                    }// end function
                    }), new UIComponentDescriptor({type:Image, id:"_TargetStatusWindow_Image8", propertiesFactory:function () : Object
                    {
                        return {x:108, y:66};
                    }// end function
                    }), new UIComponentDescriptor({type:Image, id:"_TargetStatusWindow_Image9", propertiesFactory:function () : Object
                    {
                        return {x:108, y:66};
                    }// end function
                    }), new UIComponentDescriptor({type:Image, id:"_TargetStatusWindow_Image10", propertiesFactory:function () : Object
                    {
                        return {x:108, y:66};
                    }// end function
                    }), new UIComponentDescriptor({type:Image, id:"_TargetStatusWindow_Image11", propertiesFactory:function () : Object
                    {
                        return {x:108, y:66};
                    }// end function
                    }), new UIComponentDescriptor({type:Image, id:"_TargetStatusWindow_Image12", propertiesFactory:function () : Object
                    {
                        return {x:108, y:66};
                    }// end function
                    }), new UIComponentDescriptor({type:Image, id:"_TargetStatusWindow_Image13", propertiesFactory:function () : Object
                    {
                        return {x:0, y:79};
                    }// end function
                    }), new UIComponentDescriptor({type:Label, id:"_TargetStatusWindow_Label5", stylesFactory:function () : void
                    {
                        this.fontSize = 14;
                        this.color = 16777215;
                        this.textAlign = "right";
                        return;
                    }// end function
                    , propertiesFactory:function () : Object
                    {
                        return {x:15, y:78};
                    }// end function
                    }), new UIComponentDescriptor({type:Image, id:"_TargetStatusWindow_Image14", propertiesFactory:function () : Object
                    {
                        return {x:50, y:79};
                    }// end function
                    }), new UIComponentDescriptor({type:Label, id:"_TargetStatusWindow_Label6", stylesFactory:function () : void
                    {
                        this.fontSize = 14;
                        this.color = 16777215;
                        this.textAlign = "right";
                        return;
                    }// end function
                    , propertiesFactory:function () : Object
                    {
                        return {x:65, y:78};
                    }// end function
                    }), new UIComponentDescriptor({type:Image, id:"_TargetStatusWindow_Image15", propertiesFactory:function () : Object
                    {
                        return {x:100, y:79};
                    }// end function
                    }), new UIComponentDescriptor({type:Label, id:"_TargetStatusWindow_Label7", stylesFactory:function () : void
                    {
                        this.fontSize = 14;
                        this.color = 16777215;
                        this.textAlign = "right";
                        return;
                    }// end function
                    , propertiesFactory:function () : Object
                    {
                        return {x:115, y:78};
                    }// end function
                    })]};
                }// end function
                }), new UIComponentDescriptor({type:Canvas, id:"_TargetStatusWindow_Canvas3", propertiesFactory:function () : Object
                {
                    return {childDescriptors:[new UIComponentDescriptor({type:Image, id:"_TargetStatusWindow_Image16", propertiesFactory:function () : Object
                    {
                        return {x:610, y:320};
                    }// end function
                    }), new UIComponentDescriptor({type:Image, id:"strange0", propertiesFactory:function () : Object
                    {
                        return {x:586, y:510};
                    }// end function
                    }), new UIComponentDescriptor({type:Image, id:"strange1", propertiesFactory:function () : Object
                    {
                        return {x:616, y:510};
                    }// end function
                    }), new UIComponentDescriptor({type:Image, id:"strange2", propertiesFactory:function () : Object
                    {
                        return {x:646, y:510};
                    }// end function
                    }), new UIComponentDescriptor({type:Image, id:"strange3", propertiesFactory:function () : Object
                    {
                        return {x:676, y:510};
                    }// end function
                    }), new UIComponentDescriptor({type:Image, id:"strange4", propertiesFactory:function () : Object
                    {
                        return {x:706, y:510};
                    }// end function
                    })]};
                }// end function
                })]};
            }// end function
            });
            EmbedSwfStrangeEffect = TargetStatusWindow_EmbedSwfStrangeEffect;
            _163195551_swf_strange_effect_0 = new EmbedSwfStrangeEffect();
            _163195550_swf_strange_effect_1 = new EmbedSwfStrangeEffect();
            _163195549_swf_strange_effect_2 = new EmbedSwfStrangeEffect();
            _163195548_swf_strange_effect_3 = new EmbedSwfStrangeEffect();
            _163195547_swf_strange_effect_4 = new EmbedSwfStrangeEffect();
            _sword = TargetStatusWindow__sword;
            _magicWand = TargetStatusWindow__magicWand;
            _901579959_attackDefIcon = TargetStatusWindow__attackDefIcon;
            _954086800_magicDefIcon = TargetStatusWindow__magicDefIcon;
            _1289266043hpbar_base = drawSquare(0, 0, HP_BAR_WD, HP_BAR_HT, 0);
            _1704146640hpbar_max = drawSquare(0 + HP_BAR_BOLD, 0 + HP_BAR_BOLD, HP_BAR_WD - HP_BAR_BOLD * 2, HP_BAR_HT - HP_BAR_BOLD * 2, 8519680);
            _1211084922hpbar1 = drawSquare(0 + HP_BAR_BOLD, 0 + HP_BAR_BOLD, HP_BAR_WD - HP_BAR_BOLD * 2, HP_BAR_HT - HP_BAR_BOLD * 2, 5285376);
            _1211084921hpbar2 = drawSquare(0 + HP_BAR_BOLD, 0 + HP_BAR_BOLD, HP_BAR_WD - HP_BAR_BOLD * 2, HP_BAR_HT - HP_BAR_BOLD * 2, 1642493);
            _1211084920hpbar3 = drawSquare(0 + HP_BAR_BOLD, 0 + HP_BAR_BOLD, HP_BAR_WD - HP_BAR_BOLD * 2, HP_BAR_HT - HP_BAR_BOLD * 2, 16681228);
            _1211084919hpbar4 = drawSquare(0 + HP_BAR_BOLD, 0 + HP_BAR_BOLD, HP_BAR_WD - HP_BAR_BOLD * 2, HP_BAR_HT - HP_BAR_BOLD * 2, 13370748);
            _1211084918hpbar5 = drawSquare(0 + HP_BAR_BOLD, 0 + HP_BAR_BOLD, HP_BAR_WD - HP_BAR_BOLD * 2, HP_BAR_HT - HP_BAR_BOLD * 2, 184546);
            _1211084917hpbar6 = drawSquare(0 + HP_BAR_BOLD, 0 + HP_BAR_BOLD, HP_BAR_WD - HP_BAR_BOLD * 2, HP_BAR_HT - HP_BAR_BOLD * 2, 7146457);
            _1211084916hpbar7 = drawSquare(0 + HP_BAR_BOLD, 0 + HP_BAR_BOLD, HP_BAR_WD - HP_BAR_BOLD * 2, HP_BAR_HT - HP_BAR_BOLD * 2, 16691986);
            _1211084915hpbar8 = drawSquare(0 + HP_BAR_BOLD, 0 + HP_BAR_BOLD, HP_BAR_WD - HP_BAR_BOLD * 2, HP_BAR_HT - HP_BAR_BOLD * 2, 43641);
            _1211084914hpbar9 = drawSquare(0 + HP_BAR_BOLD, 0 + HP_BAR_BOLD, HP_BAR_WD - HP_BAR_BOLD * 2, HP_BAR_HT - HP_BAR_BOLD * 2, 8519680);
            _1111073130hpbar10 = drawSquare(0 + HP_BAR_BOLD, 0 + HP_BAR_BOLD, HP_BAR_WD - HP_BAR_BOLD * 2, HP_BAR_HT - HP_BAR_BOLD * 2, 5285376);
            _bindings = [];
            _watchers = [];
            _bindingsByDestination = {};
            _bindingsBeginWithWord = {};
            mx_internal::_document = this;
            this.width = 760;
            this.height = 560;
            return;
        }// end function

        private function get visibleFlag() : Boolean
        {
            return this._130145022visibleFlag;
        }// end function

        public function set unit(param1:UnitVO) : void
        {
            var _loc_2:int = 0;
            _unit = param1;
            if (param1 == null)
            {
                baseDamage = null;
                hpbar_base = null;
                hpbar_max = null;
                hpbar1 = null;
                hpbar2 = null;
                hpbar3 = null;
                hpbar4 = null;
                hpbar5 = null;
                weaponIcon = null;
                atkDefIcon = null;
                magDefIcon = null;
                visibleFlag = false;
                return;
            }
            if (_unit.face2Uic.contains(_unit.face2Loader))
            {
                MovieClip(_unit.face2Loader.content).gotoAndPlay(_unit.team ? ("img_battle_right_blue") : ("img_battle_right_red"));
            }
            if (_unit.weapon)
            {
                if (_unit.weapon.weaponTypeLabel == Utils.i18n("localize275"))
                {
                    baseDamage = _unit.baseMagicalDamage;
                    weaponIcon = _magicWand;
                }
                else if (_unit.weapon.weaponTypeLabel == Utils.i18n("localize276"))
                {
                    baseDamage = _unit.baseMagicalDamage;
                    weaponIcon = _magicWand;
                }
                else
                {
                    baseDamage = _unit.baseDamage;
                    weaponIcon = _sword;
                }
            }
            else
            {
                baseDamage = _unit.baseDamage;
                weaponIcon = _sword;
            }
            _loc_2 = 0;
            while (_loc_2 < 5)
            {
                
                this["strange" + _loc_2].visible = false;
                _loc_2++;
            }
            _loc_2 = 0;
            if (_unit.displayAbnormal[UnitVO.ABNORMAL_MOUDOKU])
            {
                MovieClip(Loader(this["_swf_strange_effect_" + _loc_2].getChildAt(0)).content).gotoAndPlay("icon_deadly_poison");
                this["strange" + _loc_2].visible = true;
                _loc_2++;
            }
            else if (_unit.displayAbnormal[UnitVO.ABNORMAL_DOKU])
            {
                MovieClip(Loader(this["_swf_strange_effect_" + _loc_2].getChildAt(0)).content).gotoAndPlay("icon_poison");
                this["strange" + _loc_2].visible = true;
                _loc_2++;
            }
            if (_unit.displayAbnormal[UnitVO.ABNORMAL_KURAYAMI])
            {
                MovieClip(Loader(this["_swf_strange_effect_" + _loc_2].getChildAt(0)).content).gotoAndPlay("icon_bind");
                this["strange" + _loc_2].visible = true;
                _loc_2++;
            }
            if (_unit.displayAbnormal[UnitVO.ABNORMAL_KAGENUI])
            {
                MovieClip(Loader(this["_swf_strange_effect_" + _loc_2].getChildAt(0)).content).gotoAndPlay("icon_shadow_bind");
                this["strange" + _loc_2].visible = true;
                _loc_2++;
            }
            if (_unit.displayAbnormal[UnitVO.ABNORMAL_JUBAKU])
            {
                MovieClip(Loader(this["_swf_strange_effect_" + _loc_2].getChildAt(0)).content).gotoAndPlay("icon_spell_bind");
                this["strange" + _loc_2].visible = true;
                _loc_2++;
            }
            if (_unit.displayAbnormal[UnitVO.ABNORMAL_MAHI])
            {
                MovieClip(Loader(this["_swf_strange_effect_" + _loc_2].getChildAt(0)).content).gotoAndPlay("icon_paralysis");
                this["strange" + _loc_2].visible = true;
                _loc_2++;
            }
            if (_unit.displayAbnormal[UnitVO.ABNORMAL_KONRAN])
            {
                MovieClip(Loader(this["_swf_strange_effect_" + _loc_2].getChildAt(0)).content).gotoAndPlay("icon_confuse");
                this["strange" + _loc_2].visible = true;
                _loc_2++;
            }
            if (_unit.displayAbnormal[UnitVO.ABNORMAL_DATURYOKU])
            {
                MovieClip(Loader(this["_swf_strange_effect_" + _loc_2].getChildAt(0)).content).gotoAndPlay("icon_degradation");
                this["strange" + _loc_2].visible = true;
                _loc_2++;
            }
            hpbar_base = drawSquare(0, 0, HP_BAR_WD, HP_BAR_HT, 0);
            hpbar_max = drawSquare(0 + HP_BAR_BOLD, 0 + HP_BAR_BOLD, HP_BAR_WD - HP_BAR_BOLD * 2, HP_BAR_HT - HP_BAR_BOLD * 2, 8519680);
            hpbar1 = drawSquare(0 + HP_BAR_BOLD, 0 + HP_BAR_BOLD, HP_BAR_WD - HP_BAR_BOLD * 2, HP_BAR_HT - HP_BAR_BOLD * 2, 5285376);
            hpbar2 = drawSquare(0 + HP_BAR_BOLD, 0 + HP_BAR_BOLD, HP_BAR_WD - HP_BAR_BOLD * 2, HP_BAR_HT - HP_BAR_BOLD * 2, 1642493);
            hpbar3 = drawSquare(0 + HP_BAR_BOLD, 0 + HP_BAR_BOLD, HP_BAR_WD - HP_BAR_BOLD * 2, HP_BAR_HT - HP_BAR_BOLD * 2, 16681228);
            hpbar4 = drawSquare(0 + HP_BAR_BOLD, 0 + HP_BAR_BOLD, HP_BAR_WD - HP_BAR_BOLD * 2, HP_BAR_HT - HP_BAR_BOLD * 2, 13370748);
            hpbar5 = drawSquare(0 + HP_BAR_BOLD, 0 + HP_BAR_BOLD, HP_BAR_WD - HP_BAR_BOLD * 2, HP_BAR_HT - HP_BAR_BOLD * 2, 184546);
            hpbar6 = drawSquare(0 + HP_BAR_BOLD, 0 + HP_BAR_BOLD, HP_BAR_WD - HP_BAR_BOLD * 2, HP_BAR_HT - HP_BAR_BOLD * 2, 7146457);
            hpbar7 = drawSquare(0 + HP_BAR_BOLD, 0 + HP_BAR_BOLD, HP_BAR_WD - HP_BAR_BOLD * 2, HP_BAR_HT - HP_BAR_BOLD * 2, 16691986);
            hpbar8 = drawSquare(0 + HP_BAR_BOLD, 0 + HP_BAR_BOLD, HP_BAR_WD - HP_BAR_BOLD * 2, HP_BAR_HT - HP_BAR_BOLD * 2, 43641);
            hpbar9 = drawSquare(0 + HP_BAR_BOLD, 0 + HP_BAR_BOLD, HP_BAR_WD - HP_BAR_BOLD * 2, HP_BAR_HT - HP_BAR_BOLD * 2, 8519680);
            hpbar10 = drawSquare(0 + HP_BAR_BOLD, 0 + HP_BAR_BOLD, HP_BAR_WD - HP_BAR_BOLD * 2, HP_BAR_HT - HP_BAR_BOLD * 2, 5285376);
            atkDefIcon = _attackDefIcon;
            magDefIcon = _magicDefIcon;
            visibleFlag = true;
            return;
        }// end function

        private function set magDefIcon(param1:Class) : void
        {
            var _loc_2:* = this._1139963573magDefIcon;
            if (_loc_2 !== param1)
            {
                this._1139963573magDefIcon = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "magDefIcon", _loc_2, param1));
            }
            return;
        }// end function

        private function set hpbar_base(param1:Sprite) : void
        {
            var _loc_2:* = this._1289266043hpbar_base;
            if (_loc_2 !== param1)
            {
                this._1289266043hpbar_base = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "hpbar_base", _loc_2, param1));
            }
            return;
        }// end function

        private function set visibleFlag(param1:Boolean) : void
        {
            var _loc_2:* = this._130145022visibleFlag;
            if (_loc_2 !== param1)
            {
                this._130145022visibleFlag = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "visibleFlag", _loc_2, param1));
            }
            return;
        }// end function

        private function set hpbar1(param1:Sprite) : void
        {
            var _loc_2:* = this._1211084922hpbar1;
            if (_loc_2 !== param1)
            {
                this._1211084922hpbar1 = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "hpbar1", _loc_2, param1));
            }
            return;
        }// end function

        private function set hpbar2(param1:Sprite) : void
        {
            var _loc_2:* = this._1211084921hpbar2;
            if (_loc_2 !== param1)
            {
                this._1211084921hpbar2 = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "hpbar2", _loc_2, param1));
            }
            return;
        }// end function

        private function set hpbar4(param1:Sprite) : void
        {
            var _loc_2:* = this._1211084919hpbar4;
            if (_loc_2 !== param1)
            {
                this._1211084919hpbar4 = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "hpbar4", _loc_2, param1));
            }
            return;
        }// end function

        private function set hpbar6(param1:Sprite) : void
        {
            var _loc_2:* = this._1211084917hpbar6;
            if (_loc_2 !== param1)
            {
                this._1211084917hpbar6 = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "hpbar6", _loc_2, param1));
            }
            return;
        }// end function

        private function set hpbar3(param1:Sprite) : void
        {
            var _loc_2:* = this._1211084920hpbar3;
            if (_loc_2 !== param1)
            {
                this._1211084920hpbar3 = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "hpbar3", _loc_2, param1));
            }
            return;
        }// end function

        private function set hpbar7(param1:Sprite) : void
        {
            var _loc_2:* = this._1211084916hpbar7;
            if (_loc_2 !== param1)
            {
                this._1211084916hpbar7 = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "hpbar7", _loc_2, param1));
            }
            return;
        }// end function

        private function set hpbar5(param1:Sprite) : void
        {
            var _loc_2:* = this._1211084918hpbar5;
            if (_loc_2 !== param1)
            {
                this._1211084918hpbar5 = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "hpbar5", _loc_2, param1));
            }
            return;
        }// end function

        private function set hpbar9(param1:Sprite) : void
        {
            var _loc_2:* = this._1211084914hpbar9;
            if (_loc_2 !== param1)
            {
                this._1211084914hpbar9 = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "hpbar9", _loc_2, param1));
            }
            return;
        }// end function

        private function set hpbar8(param1:Sprite) : void
        {
            var _loc_2:* = this._1211084915hpbar8;
            if (_loc_2 !== param1)
            {
                this._1211084915hpbar8 = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "hpbar8", _loc_2, param1));
            }
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

        private function get hpbar_max() : Sprite
        {
            return this._1704146640hpbar_max;
        }// end function

        public function get strange0() : Image
        {
            return this._1787621428strange0;
        }// end function

        public function get strange1() : Image
        {
            return this._1787621429strange1;
        }// end function

        public function get strange3() : Image
        {
            return this._1787621431strange3;
        }// end function

        public function get strange2() : Image
        {
            return this._1787621430strange2;
        }// end function

        public function get strange4() : Image
        {
            return this._1787621432strange4;
        }// end function

        private function set baseDamage(param1:Object) : void
        {
            var _loc_2:* = this._1264886368baseDamage;
            if (_loc_2 !== param1)
            {
                this._1264886368baseDamage = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "baseDamage", _loc_2, param1));
            }
            return;
        }// end function

        private function _TargetStatusWindow_bindingExprs() : void
        {
            var _loc_1:* = undefined;
            _loc_1 = visibleFlag;
            _loc_1 = _unit.name;
            _loc_1 = Utils.i18n("generalJob") + ":" + _unit.jobName + "  Lv." + _unit.level;
            _loc_1 = Utils.i18n("generalWeapon") + "：" + (_unit.weapon == null ? (Utils.i18n("generalNothing")) : (_unit.weapon.nameLabel)) + "  " + (_unit.weapon == null ? ("") : (_unit.weapon.displayEndurance == 999 ? ("") : ("(" + _unit.weapon.displayEndurance + ")")));
            _loc_1 = "HP：" + (_unit.factionBossFlag == true ? ("???") : (_unit.displayHp.toString())) + "/" + _unit.maskedMaxHp;
            _loc_1 = hpbar_base;
            _loc_1 = hpbar_max;
            _loc_1 = hpbar1;
            _loc_1 = factionBossHpBar(_unit.displayHp, _unit.realMaxHp, 1);
            _loc_1 = hpbar2;
            _loc_1 = factionBossHpBar(_unit.displayHp, _unit.realMaxHp, 2);
            _loc_1 = hpbar3;
            _loc_1 = factionBossHpBar(_unit.displayHp, _unit.realMaxHp, 3);
            _loc_1 = hpbar4;
            _loc_1 = factionBossHpBar(_unit.displayHp, _unit.realMaxHp, 4);
            _loc_1 = hpbar5;
            _loc_1 = factionBossHpBar(_unit.displayHp, _unit.realMaxHp, 5);
            _loc_1 = hpbar6;
            _loc_1 = factionBossHpBar(_unit.displayHp, _unit.realMaxHp, 6);
            _loc_1 = hpbar7;
            _loc_1 = factionBossHpBar(_unit.displayHp, _unit.realMaxHp, 7);
            _loc_1 = hpbar8;
            _loc_1 = factionBossHpBar(_unit.displayHp, _unit.realMaxHp, 8);
            _loc_1 = hpbar9;
            _loc_1 = factionBossHpBar(_unit.displayHp, _unit.realMaxHp, 9);
            _loc_1 = hpbar10;
            _loc_1 = factionBossHpBar(_unit.displayHp, _unit.realMaxHp, 10);
            _loc_1 = weaponIcon;
            _loc_1 = baseDamage;
            _loc_1 = atkDefIcon;
            _loc_1 = _unit.baseDefense;
            _loc_1 = magDefIcon;
            _loc_1 = _unit.baseMagicalDefense;
            _loc_1 = _unit.face2OffsetX;
            _loc_1 = _unit.face2OffsetY;
            _loc_1 = visibleFlag;
            _loc_1 = _unit.face2Uic;
            _loc_1 = _swf_strange_effect_0;
            _loc_1 = _swf_strange_effect_1;
            _loc_1 = _swf_strange_effect_2;
            _loc_1 = _swf_strange_effect_3;
            _loc_1 = _swf_strange_effect_4;
            return;
        }// end function

        private function get magDefIcon() : Class
        {
            return this._1139963573magDefIcon;
        }// end function

        private function set hpbar_max(param1:Sprite) : void
        {
            var _loc_2:* = this._1704146640hpbar_max;
            if (_loc_2 !== param1)
            {
                this._1704146640hpbar_max = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "hpbar_max", _loc_2, param1));
            }
            return;
        }// end function

        private function get _swf_strange_effect_0() : MovieClipLoaderAsset
        {
            return this._163195551_swf_strange_effect_0;
        }// end function

        private function get _swf_strange_effect_1() : MovieClipLoaderAsset
        {
            return this._163195550_swf_strange_effect_1;
        }// end function

        private function get _swf_strange_effect_2() : MovieClipLoaderAsset
        {
            return this._163195549_swf_strange_effect_2;
        }// end function

        private function get _swf_strange_effect_3() : MovieClipLoaderAsset
        {
            return this._163195548_swf_strange_effect_3;
        }// end function

        private function get _swf_strange_effect_4() : MovieClipLoaderAsset
        {
            return this._163195547_swf_strange_effect_4;
        }// end function

        public function set strange0(param1:Image) : void
        {
            var _loc_2:* = this._1787621428strange0;
            if (_loc_2 !== param1)
            {
                this._1787621428strange0 = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "strange0", _loc_2, param1));
            }
            return;
        }// end function

        public function set strange1(param1:Image) : void
        {
            var _loc_2:* = this._1787621429strange1;
            if (_loc_2 !== param1)
            {
                this._1787621429strange1 = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "strange1", _loc_2, param1));
            }
            return;
        }// end function

        public function set strange3(param1:Image) : void
        {
            var _loc_2:* = this._1787621431strange3;
            if (_loc_2 !== param1)
            {
                this._1787621431strange3 = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "strange3", _loc_2, param1));
            }
            return;
        }// end function

        private function set weaponIcon(param1:Class) : void
        {
            var _loc_2:* = this._1372193973weaponIcon;
            if (_loc_2 !== param1)
            {
                this._1372193973weaponIcon = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "weaponIcon", _loc_2, param1));
            }
            return;
        }// end function

        private function get _unit() : UnitVO
        {
            return this._91329123_unit;
        }// end function

        public function set strange2(param1:Image) : void
        {
            var _loc_2:* = this._1787621430strange2;
            if (_loc_2 !== param1)
            {
                this._1787621430strange2 = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "strange2", _loc_2, param1));
            }
            return;
        }// end function

        public function set strange4(param1:Image) : void
        {
            var _loc_2:* = this._1787621432strange4;
            if (_loc_2 !== param1)
            {
                this._1787621432strange4 = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "strange4", _loc_2, param1));
            }
            return;
        }// end function

        private function get hpbar10() : Sprite
        {
            return this._1111073130hpbar10;
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

        private function get atkDefIcon() : Class
        {
            return this._382391194atkDefIcon;
        }// end function

        private function drawSquare(param1:int, param2:int, param3:int, param4:int, param5:uint) : Sprite
        {
            var _loc_6:* = new Sprite();
            new Sprite().graphics.beginFill(param5);
            _loc_6.graphics.drawRect(param1, param2, param3, param4);
            _loc_6.graphics.endFill();
            return _loc_6;
        }// end function

        private function _TargetStatusWindow_bindingsSetup() : Array
        {
            var binding:Binding;
            var result:Array;
            binding = new Binding(this, function () : Boolean
            {
                return visibleFlag;
            }// end function
            , function (param1:Boolean) : void
            {
                _TargetStatusWindow_Canvas2.visible = param1;
                return;
            }// end function
            , "_TargetStatusWindow_Canvas2.visible");
            result[0] = binding;
            binding = new Binding(this, function () : String
            {
                var _loc_1:* = _unit.name;
                var _loc_2:* = _loc_1 == undefined ? (null) : (String(_loc_1));
                return _loc_2;
            }// end function
            , function (param1:String) : void
            {
                _TargetStatusWindow_Label1.text = param1;
                return;
            }// end function
            , "_TargetStatusWindow_Label1.text");
            result[1] = binding;
            binding = new Binding(this, function () : String
            {
                var _loc_1:* = Utils.i18n("generalJob") + ":" + _unit.jobName + "  Lv." + _unit.level;
                var _loc_2:* = _loc_1 == undefined ? (null) : (String(_loc_1));
                return _loc_2;
            }// end function
            , function (param1:String) : void
            {
                _TargetStatusWindow_Label2.text = param1;
                return;
            }// end function
            , "_TargetStatusWindow_Label2.text");
            result[2] = binding;
            binding = new Binding(this, function () : String
            {
                var _loc_1:* = Utils.i18n("generalWeapon") + "：" + (_unit.weapon == null ? (Utils.i18n("generalNothing")) : (_unit.weapon.nameLabel)) + "  " + (_unit.weapon == null ? ("") : (_unit.weapon.displayEndurance == 999 ? ("") : ("(" + _unit.weapon.displayEndurance + ")")));
                var _loc_2:* = _loc_1 == undefined ? (null) : (String(_loc_1));
                return _loc_2;
            }// end function
            , function (param1:String) : void
            {
                _TargetStatusWindow_Label3.text = param1;
                return;
            }// end function
            , "_TargetStatusWindow_Label3.text");
            result[3] = binding;
            binding = new Binding(this, function () : String
            {
                var _loc_1:* = "HP：" + (_unit.factionBossFlag == true ? ("???") : (_unit.displayHp.toString())) + "/" + _unit.maskedMaxHp;
                var _loc_2:* = _loc_1 == undefined ? (null) : (String(_loc_1));
                return _loc_2;
            }// end function
            , function (param1:String) : void
            {
                _TargetStatusWindow_Label4.text = param1;
                return;
            }// end function
            , "_TargetStatusWindow_Label4.text");
            result[4] = binding;
            binding = new Binding(this, function () : Object
            {
                return hpbar_base;
            }// end function
            , function (param1:Object) : void
            {
                _TargetStatusWindow_Image1.source = param1;
                return;
            }// end function
            , "_TargetStatusWindow_Image1.source");
            result[5] = binding;
            binding = new Binding(this, function () : Object
            {
                return hpbar_max;
            }// end function
            , function (param1:Object) : void
            {
                _TargetStatusWindow_Image2.source = param1;
                return;
            }// end function
            , "_TargetStatusWindow_Image2.source");
            result[6] = binding;
            binding = new Binding(this, function () : Object
            {
                return hpbar1;
            }// end function
            , function (param1:Object) : void
            {
                _TargetStatusWindow_Image3.source = param1;
                return;
            }// end function
            , "_TargetStatusWindow_Image3.source");
            result[7] = binding;
            binding = new Binding(this, function () : Number
            {
                return factionBossHpBar(_unit.displayHp, _unit.realMaxHp, 1);
            }// end function
            , function (param1:Number) : void
            {
                _TargetStatusWindow_Image3.scaleX = param1;
                return;
            }// end function
            , "_TargetStatusWindow_Image3.scaleX");
            result[8] = binding;
            binding = new Binding(this, function () : Object
            {
                return hpbar2;
            }// end function
            , function (param1:Object) : void
            {
                _TargetStatusWindow_Image4.source = param1;
                return;
            }// end function
            , "_TargetStatusWindow_Image4.source");
            result[9] = binding;
            binding = new Binding(this, function () : Number
            {
                return factionBossHpBar(_unit.displayHp, _unit.realMaxHp, 2);
            }// end function
            , function (param1:Number) : void
            {
                _TargetStatusWindow_Image4.scaleX = param1;
                return;
            }// end function
            , "_TargetStatusWindow_Image4.scaleX");
            result[10] = binding;
            binding = new Binding(this, function () : Object
            {
                return hpbar3;
            }// end function
            , function (param1:Object) : void
            {
                _TargetStatusWindow_Image5.source = param1;
                return;
            }// end function
            , "_TargetStatusWindow_Image5.source");
            result[11] = binding;
            binding = new Binding(this, function () : Number
            {
                return factionBossHpBar(_unit.displayHp, _unit.realMaxHp, 3);
            }// end function
            , function (param1:Number) : void
            {
                _TargetStatusWindow_Image5.scaleX = param1;
                return;
            }// end function
            , "_TargetStatusWindow_Image5.scaleX");
            result[12] = binding;
            binding = new Binding(this, function () : Object
            {
                return hpbar4;
            }// end function
            , function (param1:Object) : void
            {
                _TargetStatusWindow_Image6.source = param1;
                return;
            }// end function
            , "_TargetStatusWindow_Image6.source");
            result[13] = binding;
            binding = new Binding(this, function () : Number
            {
                return factionBossHpBar(_unit.displayHp, _unit.realMaxHp, 4);
            }// end function
            , function (param1:Number) : void
            {
                _TargetStatusWindow_Image6.scaleX = param1;
                return;
            }// end function
            , "_TargetStatusWindow_Image6.scaleX");
            result[14] = binding;
            binding = new Binding(this, function () : Object
            {
                return hpbar5;
            }// end function
            , function (param1:Object) : void
            {
                _TargetStatusWindow_Image7.source = param1;
                return;
            }// end function
            , "_TargetStatusWindow_Image7.source");
            result[15] = binding;
            binding = new Binding(this, function () : Number
            {
                return factionBossHpBar(_unit.displayHp, _unit.realMaxHp, 5);
            }// end function
            , function (param1:Number) : void
            {
                _TargetStatusWindow_Image7.scaleX = param1;
                return;
            }// end function
            , "_TargetStatusWindow_Image7.scaleX");
            result[16] = binding;
            binding = new Binding(this, function () : Object
            {
                return hpbar6;
            }// end function
            , function (param1:Object) : void
            {
                _TargetStatusWindow_Image8.source = param1;
                return;
            }// end function
            , "_TargetStatusWindow_Image8.source");
            result[17] = binding;
            binding = new Binding(this, function () : Number
            {
                return factionBossHpBar(_unit.displayHp, _unit.realMaxHp, 6);
            }// end function
            , function (param1:Number) : void
            {
                _TargetStatusWindow_Image8.scaleX = param1;
                return;
            }// end function
            , "_TargetStatusWindow_Image8.scaleX");
            result[18] = binding;
            binding = new Binding(this, function () : Object
            {
                return hpbar7;
            }// end function
            , function (param1:Object) : void
            {
                _TargetStatusWindow_Image9.source = param1;
                return;
            }// end function
            , "_TargetStatusWindow_Image9.source");
            result[19] = binding;
            binding = new Binding(this, function () : Number
            {
                return factionBossHpBar(_unit.displayHp, _unit.realMaxHp, 7);
            }// end function
            , function (param1:Number) : void
            {
                _TargetStatusWindow_Image9.scaleX = param1;
                return;
            }// end function
            , "_TargetStatusWindow_Image9.scaleX");
            result[20] = binding;
            binding = new Binding(this, function () : Object
            {
                return hpbar8;
            }// end function
            , function (param1:Object) : void
            {
                _TargetStatusWindow_Image10.source = param1;
                return;
            }// end function
            , "_TargetStatusWindow_Image10.source");
            result[21] = binding;
            binding = new Binding(this, function () : Number
            {
                return factionBossHpBar(_unit.displayHp, _unit.realMaxHp, 8);
            }// end function
            , function (param1:Number) : void
            {
                _TargetStatusWindow_Image10.scaleX = param1;
                return;
            }// end function
            , "_TargetStatusWindow_Image10.scaleX");
            result[22] = binding;
            binding = new Binding(this, function () : Object
            {
                return hpbar9;
            }// end function
            , function (param1:Object) : void
            {
                _TargetStatusWindow_Image11.source = param1;
                return;
            }// end function
            , "_TargetStatusWindow_Image11.source");
            result[23] = binding;
            binding = new Binding(this, function () : Number
            {
                return factionBossHpBar(_unit.displayHp, _unit.realMaxHp, 9);
            }// end function
            , function (param1:Number) : void
            {
                _TargetStatusWindow_Image11.scaleX = param1;
                return;
            }// end function
            , "_TargetStatusWindow_Image11.scaleX");
            result[24] = binding;
            binding = new Binding(this, function () : Object
            {
                return hpbar10;
            }// end function
            , function (param1:Object) : void
            {
                _TargetStatusWindow_Image12.source = param1;
                return;
            }// end function
            , "_TargetStatusWindow_Image12.source");
            result[25] = binding;
            binding = new Binding(this, function () : Number
            {
                return factionBossHpBar(_unit.displayHp, _unit.realMaxHp, 10);
            }// end function
            , function (param1:Number) : void
            {
                _TargetStatusWindow_Image12.scaleX = param1;
                return;
            }// end function
            , "_TargetStatusWindow_Image12.scaleX");
            result[26] = binding;
            binding = new Binding(this, function () : Object
            {
                return weaponIcon;
            }// end function
            , function (param1:Object) : void
            {
                _TargetStatusWindow_Image13.source = param1;
                return;
            }// end function
            , "_TargetStatusWindow_Image13.source");
            result[27] = binding;
            binding = new Binding(this, function () : String
            {
                var _loc_1:* = baseDamage;
                var _loc_2:* = _loc_1 == undefined ? (null) : (String(_loc_1));
                return _loc_2;
            }// end function
            , function (param1:String) : void
            {
                _TargetStatusWindow_Label5.text = param1;
                return;
            }// end function
            , "_TargetStatusWindow_Label5.text");
            result[28] = binding;
            binding = new Binding(this, function () : Object
            {
                return atkDefIcon;
            }// end function
            , function (param1:Object) : void
            {
                _TargetStatusWindow_Image14.source = param1;
                return;
            }// end function
            , "_TargetStatusWindow_Image14.source");
            result[29] = binding;
            binding = new Binding(this, function () : String
            {
                var _loc_1:* = _unit.baseDefense;
                var _loc_2:* = _loc_1 == undefined ? (null) : (String(_loc_1));
                return _loc_2;
            }// end function
            , function (param1:String) : void
            {
                _TargetStatusWindow_Label6.text = param1;
                return;
            }// end function
            , "_TargetStatusWindow_Label6.text");
            result[30] = binding;
            binding = new Binding(this, function () : Object
            {
                return magDefIcon;
            }// end function
            , function (param1:Object) : void
            {
                _TargetStatusWindow_Image15.source = param1;
                return;
            }// end function
            , "_TargetStatusWindow_Image15.source");
            result[31] = binding;
            binding = new Binding(this, function () : String
            {
                var _loc_1:* = _unit.baseMagicalDefense;
                var _loc_2:* = _loc_1 == undefined ? (null) : (String(_loc_1));
                return _loc_2;
            }// end function
            , function (param1:String) : void
            {
                _TargetStatusWindow_Label7.text = param1;
                return;
            }// end function
            , "_TargetStatusWindow_Label7.text");
            result[32] = binding;
            binding = new Binding(this, function () : Number
            {
                return _unit.face2OffsetX;
            }// end function
            , function (param1:Number) : void
            {
                _TargetStatusWindow_Canvas3.x = param1;
                return;
            }// end function
            , "_TargetStatusWindow_Canvas3.x");
            result[33] = binding;
            binding = new Binding(this, function () : Number
            {
                return _unit.face2OffsetY;
            }// end function
            , function (param1:Number) : void
            {
                _TargetStatusWindow_Canvas3.y = param1;
                return;
            }// end function
            , "_TargetStatusWindow_Canvas3.y");
            result[34] = binding;
            binding = new Binding(this, function () : Boolean
            {
                return visibleFlag;
            }// end function
            , function (param1:Boolean) : void
            {
                _TargetStatusWindow_Canvas3.visible = param1;
                return;
            }// end function
            , "_TargetStatusWindow_Canvas3.visible");
            result[35] = binding;
            binding = new Binding(this, function () : Object
            {
                return _unit.face2Uic;
            }// end function
            , function (param1:Object) : void
            {
                _TargetStatusWindow_Image16.source = param1;
                return;
            }// end function
            , "_TargetStatusWindow_Image16.source");
            result[36] = binding;
            binding = new Binding(this, function () : Object
            {
                return _swf_strange_effect_0;
            }// end function
            , function (param1:Object) : void
            {
                strange0.source = param1;
                return;
            }// end function
            , "strange0.source");
            result[37] = binding;
            binding = new Binding(this, function () : Object
            {
                return _swf_strange_effect_1;
            }// end function
            , function (param1:Object) : void
            {
                strange1.source = param1;
                return;
            }// end function
            , "strange1.source");
            result[38] = binding;
            binding = new Binding(this, function () : Object
            {
                return _swf_strange_effect_2;
            }// end function
            , function (param1:Object) : void
            {
                strange2.source = param1;
                return;
            }// end function
            , "strange2.source");
            result[39] = binding;
            binding = new Binding(this, function () : Object
            {
                return _swf_strange_effect_3;
            }// end function
            , function (param1:Object) : void
            {
                strange3.source = param1;
                return;
            }// end function
            , "strange3.source");
            result[40] = binding;
            binding = new Binding(this, function () : Object
            {
                return _swf_strange_effect_4;
            }// end function
            , function (param1:Object) : void
            {
                strange4.source = param1;
                return;
            }// end function
            , "strange4.source");
            result[41] = binding;
            return result;
        }// end function

        private function get hpbar_base() : Sprite
        {
            return this._1289266043hpbar_base;
        }// end function

        private function get hpbar2() : Sprite
        {
            return this._1211084921hpbar2;
        }// end function

        private function get hpbar4() : Sprite
        {
            return this._1211084919hpbar4;
        }// end function

        private function get hpbar6() : Sprite
        {
            return this._1211084917hpbar6;
        }// end function

        private function get hpbar1() : Sprite
        {
            return this._1211084922hpbar1;
        }// end function

        private function get hpbar5() : Sprite
        {
            return this._1211084918hpbar5;
        }// end function

        private function get hpbar7() : Sprite
        {
            return this._1211084916hpbar7;
        }// end function

        private function get hpbar9() : Sprite
        {
            return this._1211084914hpbar9;
        }// end function

        override public function initialize() : void
        {
            var target:TargetStatusWindow;
            var watcherSetupUtilClass:Object;
            .mx_internal::setDocumentDescriptor(_documentDescriptor_);
            var bindings:* = _TargetStatusWindow_bindingsSetup();
            var watchers:Array;
            target;
            if (_watcherSetupUtil == null)
            {
                watcherSetupUtilClass = getDefinitionByName("_com_kbmj_viking_view_tactics_TargetStatusWindowWatcherSetupUtil");
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

        private function get hpbar3() : Sprite
        {
            return this._1211084920hpbar3;
        }// end function

        private function get baseDamage() : Object
        {
            return this._1264886368baseDamage;
        }// end function

        private function get weaponIcon() : Class
        {
            return this._1372193973weaponIcon;
        }// end function

        private function get _attackDefIcon() : Class
        {
            return this._901579959_attackDefIcon;
        }// end function

        private function get _magicDefIcon() : Class
        {
            return this._954086800_magicDefIcon;
        }// end function

        private function factionBossHpBar(param1:int, param2:int, param3:int) : Number
        {
            if (_unit.factionBossFlag == false && param3 == 1)
            {
                return param1 / param2;
            }
            if (_unit.factionBossFlag == false)
            {
                return 0;
            }
            if (param1 >= param2 * param3 / 10)
            {
                return 1;
            }
            if (param1 <= param2 * (param3 - 1) / 10)
            {
                return 0;
            }
            return (param1 - param2 * (param3 - 1) / 10) / (param2 / 10);
        }// end function

        private function set _swf_strange_effect_3(param1:MovieClipLoaderAsset) : void
        {
            var _loc_2:* = this._163195548_swf_strange_effect_3;
            if (_loc_2 !== param1)
            {
                this._163195548_swf_strange_effect_3 = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "_swf_strange_effect_3", _loc_2, param1));
            }
            return;
        }// end function

        private function set _swf_strange_effect_4(param1:MovieClipLoaderAsset) : void
        {
            var _loc_2:* = this._163195547_swf_strange_effect_4;
            if (_loc_2 !== param1)
            {
                this._163195547_swf_strange_effect_4 = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "_swf_strange_effect_4", _loc_2, param1));
            }
            return;
        }// end function

        private function set atkDefIcon(param1:Class) : void
        {
            var _loc_2:* = this._382391194atkDefIcon;
            if (_loc_2 !== param1)
            {
                this._382391194atkDefIcon = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "atkDefIcon", _loc_2, param1));
            }
            return;
        }// end function

        private function set hpbar10(param1:Sprite) : void
        {
            var _loc_2:* = this._1111073130hpbar10;
            if (_loc_2 !== param1)
            {
                this._1111073130hpbar10 = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "hpbar10", _loc_2, param1));
            }
            return;
        }// end function

        private function set _swf_strange_effect_0(param1:MovieClipLoaderAsset) : void
        {
            var _loc_2:* = this._163195551_swf_strange_effect_0;
            if (_loc_2 !== param1)
            {
                this._163195551_swf_strange_effect_0 = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "_swf_strange_effect_0", _loc_2, param1));
            }
            return;
        }// end function

        private function set _swf_strange_effect_2(param1:MovieClipLoaderAsset) : void
        {
            var _loc_2:* = this._163195549_swf_strange_effect_2;
            if (_loc_2 !== param1)
            {
                this._163195549_swf_strange_effect_2 = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "_swf_strange_effect_2", _loc_2, param1));
            }
            return;
        }// end function

        private function get hpbar8() : Sprite
        {
            return this._1211084915hpbar8;
        }// end function

        private function set _swf_strange_effect_1(param1:MovieClipLoaderAsset) : void
        {
            var _loc_2:* = this._163195550_swf_strange_effect_1;
            if (_loc_2 !== param1)
            {
                this._163195550_swf_strange_effect_1 = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "_swf_strange_effect_1", _loc_2, param1));
            }
            return;
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

        public static function set watcherSetupUtil(param1:IWatcherSetupUtil) : void
        {
            _watcherSetupUtil = param1;
            return;
        }// end function

    }
}
