package com.kbmj.viking.view.tactics
{
    import com.kbmj.viking.lib.*;
    import com.kbmj.viking.vo.tactics.*;
    import flash.display.*;
    import flash.events.*;
    import flash.utils.*;
    import mx.binding.*;
    import mx.containers.*;
    import mx.controls.*;
    import mx.core.*;
    import mx.events.*;

    public class ResultItemRenderer extends Canvas implements IBindingClient
    {
        private var _1965110602square3:UIComponent;
        var _watchers:Array;
        private var _1249363225getExp:int = 0;
        private var _1965110604square1:UIComponent;
        private var _1039634585nowExp:int = 0;
        public var _ResultItemRenderer_Label1:Label;
        public var _ResultItemRenderer_Label2:Label;
        public var _ResultItemRenderer_Label3:Label;
        public var _ResultItemRenderer_Label4:Label;
        private var _493681977unitHpBar:Canvas;
        var _bindingsByDestination:Object;
        private var _490381779unitLayer:Canvas;
        var _bindingsBeginWithWord:Object;
        private var _1965110603square2:UIComponent;
        var _bindings:Array;
        private var _1031412269nxtExp:int = 0;
        private var _documentDescriptor_:UIComponentDescriptor;
        private static var HP_BAR_HT:int = 16;
        private static var HP_BAR_WD:int = 138;
        private static var _74759336HP_BAR_BOLD:int = 2;
        private static var _staticBindingEventDispatcher:EventDispatcher = new EventDispatcher();
        private static var _watcherSetupUtil:IWatcherSetupUtil;

        public function ResultItemRenderer()
        {
            _documentDescriptor_ = new UIComponentDescriptor({type:Canvas, propertiesFactory:function () : Object
            {
                return {width:263, height:128, childDescriptors:[new UIComponentDescriptor({type:Canvas, id:"unitLayer", propertiesFactory:function () : Object
                {
                    return {width:240, height:100};
                }// end function
                }), new UIComponentDescriptor({type:Label, id:"_ResultItemRenderer_Label1", stylesFactory:function () : void
                {
                    this.fontSize = 14;
                    this.fontWeight = "bold";
                    return;
                }// end function
                , propertiesFactory:function () : Object
                {
                    return {x:100, y:12};
                }// end function
                }), new UIComponentDescriptor({type:Label, id:"_ResultItemRenderer_Label2", stylesFactory:function () : void
                {
                    this.fontSize = 14;
                    return;
                }// end function
                , propertiesFactory:function () : Object
                {
                    return {x:100, y:32};
                }// end function
                }), new UIComponentDescriptor({type:Canvas, id:"unitHpBar", propertiesFactory:function () : Object
                {
                    return {x:102, y:50, childDescriptors:[new UIComponentDescriptor({type:UIComponent, id:"square1"}), new UIComponentDescriptor({type:UIComponent, id:"square2"}), new UIComponentDescriptor({type:UIComponent, id:"square3"})]};
                }// end function
                }), new UIComponentDescriptor({type:Label, id:"_ResultItemRenderer_Label3", stylesFactory:function () : void
                {
                    this.fontSize = 14;
                    this.color = 15425792;
                    return;
                }// end function
                , propertiesFactory:function () : Object
                {
                    return {x:100, y:68};
                }// end function
                }), new UIComponentDescriptor({type:Label, id:"_ResultItemRenderer_Label4", stylesFactory:function () : void
                {
                    this.fontSize = 14;
                    return;
                }// end function
                , propertiesFactory:function () : Object
                {
                    return {x:100, y:86};
                }// end function
                })]};
            }// end function
            });
            _bindings = [];
            _watchers = [];
            _bindingsByDestination = {};
            _bindingsBeginWithWord = {};
            mx_internal::_document = this;
            this.width = 263;
            this.height = 128;
            return;
        }// end function

        private function _ResultItemRenderer_bindingsSetup() : Array
        {
            var binding:Binding;
            var result:Array;
            binding = new Binding(this, function () : String
            {
                var _loc_1:* = UnitExpVO(data).unitVO.name;
                var _loc_2:* = _loc_1 == undefined ? (null) : (String(_loc_1));
                return _loc_2;
            }// end function
            , function (param1:String) : void
            {
                _ResultItemRenderer_Label1.text = param1;
                return;
            }// end function
            , "_ResultItemRenderer_Label1.text");
            result[0] = binding;
            binding = new Binding(this, function () : String
            {
                var _loc_1:* = "HP " + UnitExpVO(data).unitVO.hp + "/" + UnitExpVO(data).unitVO.realMaxHp;
                var _loc_2:* = _loc_1 == undefined ? (null) : (String(_loc_1));
                return _loc_2;
            }// end function
            , function (param1:String) : void
            {
                _ResultItemRenderer_Label2.text = param1;
                return;
            }// end function
            , "_ResultItemRenderer_Label2.text");
            result[1] = binding;
            binding = new Binding(this, function () : Number
            {
                return HP_BAR_BOLD;
            }// end function
            , function (param1:Number) : void
            {
                square3.x = param1;
                return;
            }// end function
            , "square3.x");
            result[2] = binding;
            binding = new Binding(this, function () : Number
            {
                return UnitExpVO(data).unitVO.hp / UnitExpVO(data).unitVO.realMaxHp;
            }// end function
            , function (param1:Number) : void
            {
                square3.scaleX = param1;
                return;
            }// end function
            , "square3.scaleX");
            result[3] = binding;
            binding = new Binding(this, function () : String
            {
                var _loc_1:* = Utils.i18n("localize201") + "Exp " + getExp;
                var _loc_2:* = _loc_1 == undefined ? (null) : (String(_loc_1));
                return _loc_2;
            }// end function
            , function (param1:String) : void
            {
                _ResultItemRenderer_Label3.text = param1;
                return;
            }// end function
            , "_ResultItemRenderer_Label3.text");
            result[4] = binding;
            binding = new Binding(this, function () : String
            {
                var _loc_1:* = "Exp " + nowExp + "/" + nxtExp;
                var _loc_2:* = _loc_1 == undefined ? (null) : (String(_loc_1));
                return _loc_2;
            }// end function
            , function (param1:String) : void
            {
                _ResultItemRenderer_Label4.text = param1;
                return;
            }// end function
            , "_ResultItemRenderer_Label4.text");
            result[5] = binding;
            return result;
        }// end function

        private function drawHpBar() : void
        {
            square1.graphics.beginFill(0);
            square1.graphics.drawRect(0, 0, HP_BAR_WD, HP_BAR_HT);
            square1.graphics.endFill();
            square2.graphics.beginFill(8519680);
            square2.graphics.drawRect(0 + HP_BAR_BOLD, 0 + HP_BAR_BOLD, HP_BAR_WD - HP_BAR_BOLD * 2, HP_BAR_HT - HP_BAR_BOLD * 2);
            square2.graphics.endFill();
            square3.graphics.beginFill(5285376);
            square3.graphics.drawRect(0, 0 + HP_BAR_BOLD, HP_BAR_WD - HP_BAR_BOLD * 2, HP_BAR_HT - HP_BAR_BOLD * 2);
            square3.graphics.endFill();
            return;
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

        override public function initialize() : void
        {
            var target:ResultItemRenderer;
            var watcherSetupUtilClass:Object;
            .mx_internal::setDocumentDescriptor(_documentDescriptor_);
            var bindings:* = _ResultItemRenderer_bindingsSetup();
            var watchers:Array;
            target;
            if (_watcherSetupUtil == null)
            {
                watcherSetupUtilClass = getDefinitionByName("_com_kbmj_viking_view_tactics_ResultItemRendererWatcherSetupUtil");
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

        private function set nxtExp(param1:int) : void
        {
            var _loc_2:* = this._1031412269nxtExp;
            if (_loc_2 !== param1)
            {
                this._1031412269nxtExp = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "nxtExp", _loc_2, param1));
            }
            return;
        }// end function

        public function get unitLayer() : Canvas
        {
            return this._490381779unitLayer;
        }// end function

        public function get square1() : UIComponent
        {
            return this._1965110604square1;
        }// end function

        public function get square2() : UIComponent
        {
            return this._1965110603square2;
        }// end function

        public function get square3() : UIComponent
        {
            return this._1965110602square3;
        }// end function

        public function get unitHpBar() : Canvas
        {
            return this._493681977unitHpBar;
        }// end function

        private function _ResultItemRenderer_bindingExprs() : void
        {
            var _loc_1:* = undefined;
            _loc_1 = UnitExpVO(data).unitVO.name;
            _loc_1 = "HP " + UnitExpVO(data).unitVO.hp + "/" + UnitExpVO(data).unitVO.realMaxHp;
            _loc_1 = HP_BAR_BOLD;
            _loc_1 = UnitExpVO(data).unitVO.hp / UnitExpVO(data).unitVO.realMaxHp;
            _loc_1 = Utils.i18n("localize201") + "Exp " + getExp;
            _loc_1 = "Exp " + nowExp + "/" + nxtExp;
            return;
        }// end function

        private function set getExp(param1:int) : void
        {
            var _loc_2:* = this._1249363225getExp;
            if (_loc_2 !== param1)
            {
                this._1249363225getExp = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "getExp", _loc_2, param1));
            }
            return;
        }// end function

        public function set unitLayer(param1:Canvas) : void
        {
            var _loc_2:* = this._490381779unitLayer;
            if (_loc_2 !== param1)
            {
                this._490381779unitLayer = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "unitLayer", _loc_2, param1));
            }
            return;
        }// end function

        override public function set data(param1:Object) : void
        {
            var value:* = param1;
            super.data = value;
            getExp = Number(UnitExpVO(data).exp);
            nxtExp = Number(UnitExpVO(data).unitVO.nextExp);
            nowExp = Number(UnitExpVO(data).unitVO.exp) + getExp;
            if (nowExp > nxtExp)
            {
                nowExp = nxtExp;
            }
            callLater(function () : void
            {
                unitLayer.removeAllChildren();
                if (value.unitVO)
                {
                    if (!value.unitVO.loader.content)
                    {
                        trace("*****No content!!");
                        value.unitVO.loader.contentLoaderInfo.addEventListener(Event.COMPLETE, function () : void
                {
                    MovieClip(value.unitVO.loader.content).gotoAndPlay("walk_f_l");
                    unitLayer.addChild(value.unitVO.uic);
                    return;
                }// end function
                );
                    }
                    else
                    {
                        value.unitVO.loader.content.scaleX = 1;
                        value.unitVO.loader.content.x = 0;
                        value.unitVO.loader.content.y = 0;
                        MovieClip(value.unitVO.loader.content).gotoAndPlay("walk_f_l");
                        unitLayer.addChild(value.unitVO.uic);
                    }
                    value.unitVO.loader.x = 12;
                    value.unitVO.loader.y = 22;
                }
                drawHpBar();
                return;
            }// end function
            );
            return;
        }// end function

        private function get getExp() : int
        {
            return this._1249363225getExp;
        }// end function

        public function set square1(param1:UIComponent) : void
        {
            var _loc_2:* = this._1965110604square1;
            if (_loc_2 !== param1)
            {
                this._1965110604square1 = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "square1", _loc_2, param1));
            }
            return;
        }// end function

        public function set square2(param1:UIComponent) : void
        {
            var _loc_2:* = this._1965110603square2;
            if (_loc_2 !== param1)
            {
                this._1965110603square2 = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "square2", _loc_2, param1));
            }
            return;
        }// end function

        private function get nxtExp() : int
        {
            return this._1031412269nxtExp;
        }// end function

        public function set square3(param1:UIComponent) : void
        {
            var _loc_2:* = this._1965110602square3;
            if (_loc_2 !== param1)
            {
                this._1965110602square3 = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "square3", _loc_2, param1));
            }
            return;
        }// end function

        private function get nowExp() : int
        {
            return this._1039634585nowExp;
        }// end function

        private function set nowExp(param1:int) : void
        {
            var _loc_2:* = this._1039634585nowExp;
            if (_loc_2 !== param1)
            {
                this._1039634585nowExp = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "nowExp", _loc_2, param1));
            }
            return;
        }// end function

        public static function set watcherSetupUtil(param1:IWatcherSetupUtil) : void
        {
            _watcherSetupUtil = param1;
            return;
        }// end function

        private static function get HP_BAR_BOLD() : int
        {
            return _74759336HP_BAR_BOLD;
        }// end function

        public static function get staticEventDispatcher() : IEventDispatcher
        {
            return _staticBindingEventDispatcher;
        }// end function

        private static function set HP_BAR_BOLD(param1:int) : void
        {
            var _loc_3:IEventDispatcher = null;
            var _loc_2:* = _74759336HP_BAR_BOLD;
            if (_loc_2 !== param1)
            {
                _74759336HP_BAR_BOLD = param1;
                _loc_3 = staticEventDispatcher;
                if (_loc_3 != null)
                {
                    _loc_3.dispatchEvent(PropertyChangeEvent.createUpdateEvent(, "HP_BAR_BOLD", _loc_2, param1));
                }
            }
            return;
        }// end function

    }
}
