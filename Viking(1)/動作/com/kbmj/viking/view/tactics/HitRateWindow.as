package com.kbmj.viking.view.tactics
{
    import com.kbmj.viking.lib.*;
    import flash.utils.*;
    import mx.binding.*;
    import mx.containers.*;
    import mx.controls.*;
    import mx.core.*;
    import mx.events.*;
    import mx.styles.*;

    public class HitRateWindow extends Canvas implements IBindingClient
    {
        private var _1694027124_counterDamage:int;
        private var _3735208zero:Class;
        private var _109330445seven:Class;
        private var _110182one:Class;
        private var _1485140074_counterHitRate:int;
        private var _embed_mxml__swf_battle_info_window_damerge_swf_1512720311:Class;
        private var numbers:Array;
        var _bindingsByDestination:Object;
        private var _284339628_attackHitRate:int;
        private var _3143346five:Class;
        private var _3149094four:Class;
        public var _HitRateWindow_Label10:Label;
        private var _113890six:Class;
        private var _110339486three:Class;
        private var _463456979counterString:Canvas;
        var _watchers:Array;
        private var _2052589130_attackDamage:int;
        public var _HitRateWindow_Label1:Label;
        public var _HitRateWindow_Label2:Label;
        public var _HitRateWindow_Label3:Label;
        public var _HitRateWindow_Label4:Label;
        public var _HitRateWindow_Label5:Label;
        public var _HitRateWindow_Label6:Label;
        public var _HitRateWindow_Label7:Label;
        public var _HitRateWindow_Label8:Label;
        public var _HitRateWindow_Label9:Label;
        var _bindingsBeginWithWord:Object;
        private var _1029682198counterNum:Canvas;
        private var _96505999eight:Class;
        var _bindings:Array;
        private var _115276two:Class;
        private var _3381426nine:Class;
        private var _documentDescriptor_:UIComponentDescriptor;
        private static var _watcherSetupUtil:IWatcherSetupUtil;

        public function HitRateWindow()
        {
            _documentDescriptor_ = new UIComponentDescriptor({type:Canvas, propertiesFactory:function () : Object
            {
                return {height:60, width:262, childDescriptors:[new UIComponentDescriptor({type:Canvas, propertiesFactory:function () : Object
                {
                    return {x:30, y:6, childDescriptors:[new UIComponentDescriptor({type:Label, id:"_HitRateWindow_Label1", stylesFactory:function () : void
                    {
                        this.fontSize = 22;
                        this.color = 0;
                        return;
                    }// end function
                    , propertiesFactory:function () : Object
                    {
                        return {x:1, y:1};
                    }// end function
                    }), new UIComponentDescriptor({type:Label, id:"_HitRateWindow_Label2", stylesFactory:function () : void
                    {
                        this.fontSize = 22;
                        this.color = 16728128;
                        return;
                    }// end function
                    }), new UIComponentDescriptor({type:Label, id:"_HitRateWindow_Label3", stylesFactory:function () : void
                    {
                        this.fontSize = 22;
                        this.color = 0;
                        return;
                    }// end function
                    , propertiesFactory:function () : Object
                    {
                        return {x:21, y:21};
                    }// end function
                    }), new UIComponentDescriptor({type:Label, id:"_HitRateWindow_Label4", stylesFactory:function () : void
                    {
                        this.fontSize = 22;
                        this.color = 16777215;
                        return;
                    }// end function
                    , propertiesFactory:function () : Object
                    {
                        return {x:20, y:20};
                    }// end function
                    })]};
                }// end function
                }), new UIComponentDescriptor({type:Canvas, id:"counterNum", propertiesFactory:function () : Object
                {
                    return {visible:true, childDescriptors:[new UIComponentDescriptor({type:Canvas, propertiesFactory:function () : Object
                    {
                        return {x:140, y:6, childDescriptors:[new UIComponentDescriptor({type:Label, id:"_HitRateWindow_Label5", stylesFactory:function () : void
                        {
                            this.fontSize = 22;
                            this.color = 0;
                            return;
                        }// end function
                        , propertiesFactory:function () : Object
                        {
                            return {x:1, y:1};
                        }// end function
                        }), new UIComponentDescriptor({type:Label, id:"_HitRateWindow_Label6", stylesFactory:function () : void
                        {
                            this.fontSize = 22;
                            this.color = 4210943;
                            return;
                        }// end function
                        }), new UIComponentDescriptor({type:Label, id:"_HitRateWindow_Label7", stylesFactory:function () : void
                        {
                            this.fontSize = 22;
                            this.color = 0;
                            return;
                        }// end function
                        , propertiesFactory:function () : Object
                        {
                            return {x:21, y:21};
                        }// end function
                        }), new UIComponentDescriptor({type:Label, id:"_HitRateWindow_Label8", stylesFactory:function () : void
                        {
                            this.fontSize = 22;
                            this.color = 16777215;
                            return;
                        }// end function
                        , propertiesFactory:function () : Object
                        {
                            return {x:20, y:20};
                        }// end function
                        })]};
                    }// end function
                    })]};
                }// end function
                }), new UIComponentDescriptor({type:Canvas, id:"counterString", propertiesFactory:function () : Object
                {
                    return {visible:false, childDescriptors:[new UIComponentDescriptor({type:Canvas, propertiesFactory:function () : Object
                    {
                        return {x:140, y:6, childDescriptors:[new UIComponentDescriptor({type:Label, id:"_HitRateWindow_Label9", stylesFactory:function () : void
                        {
                            this.fontSize = 22;
                            this.color = 0;
                            return;
                        }// end function
                        , propertiesFactory:function () : Object
                        {
                            return {x:1, y:1};
                        }// end function
                        }), new UIComponentDescriptor({type:Label, id:"_HitRateWindow_Label10", stylesFactory:function () : void
                        {
                            this.fontSize = 22;
                            this.color = 4210943;
                            return;
                        }// end function
                        }), new UIComponentDescriptor({type:Label, stylesFactory:function () : void
                        {
                            this.fontSize = 22;
                            this.color = 0;
                            return;
                        }// end function
                        , propertiesFactory:function () : Object
                        {
                            return {text:"---", x:21, y:21};
                        }// end function
                        }), new UIComponentDescriptor({type:Label, stylesFactory:function () : void
                        {
                            this.fontSize = 22;
                            this.color = 16777215;
                            return;
                        }// end function
                        , propertiesFactory:function () : Object
                        {
                            return {text:"---", x:20, y:20};
                        }// end function
                        })]};
                    }// end function
                    })]};
                }// end function
                })]};
            }// end function
            });
            _3735208zero = HitRateWindow_zero;
            _110182one = HitRateWindow_one;
            _115276two = HitRateWindow_two;
            _110339486three = HitRateWindow_three;
            _3149094four = HitRateWindow_four;
            _3143346five = HitRateWindow_five;
            _113890six = HitRateWindow_six;
            _109330445seven = HitRateWindow_seven;
            _96505999eight = HitRateWindow_eight;
            _3381426nine = HitRateWindow_nine;
            numbers = [zero, one, two, three, four, five, six, seven, eight, nine];
            _embed_mxml__swf_battle_info_window_damerge_swf_1512720311 = HitRateWindow__embed_mxml__swf_battle_info_window_damerge_swf_1512720311;
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
                this.backgroundImage = _embed_mxml__swf_battle_info_window_damerge_swf_1512720311;
                return;
            }// end function
            ;
            this.x = 249;
            this.y = 349;
            this.height = 60;
            this.width = 262;
            return;
        }// end function

        private function get seven() : Class
        {
            return this._109330445seven;
        }// end function

        public function set counterDamage(param1:int) : void
        {
            _counterDamage = param1;
            return;
        }// end function

        private function set _counterDamage(param1:int) : void
        {
            var _loc_2:* = this._1694027124_counterDamage;
            if (_loc_2 !== param1)
            {
                this._1694027124_counterDamage = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "_counterDamage", _loc_2, param1));
            }
            return;
        }// end function

        private function set seven(param1:Class) : void
        {
            var _loc_2:* = this._109330445seven;
            if (_loc_2 !== param1)
            {
                this._109330445seven = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "seven", _loc_2, param1));
            }
            return;
        }// end function

        private function set eight(param1:Class) : void
        {
            var _loc_2:* = this._96505999eight;
            if (_loc_2 !== param1)
            {
                this._96505999eight = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "eight", _loc_2, param1));
            }
            return;
        }// end function

        private function get four() : Class
        {
            return this._3149094four;
        }// end function

        private function set _counterHitRate(param1:int) : void
        {
            var _loc_2:* = this._1485140074_counterHitRate;
            if (_loc_2 !== param1)
            {
                this._1485140074_counterHitRate = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "_counterHitRate", _loc_2, param1));
            }
            return;
        }// end function

        private function _HitRateWindow_bindingExprs() : void
        {
            var _loc_1:* = undefined;
            _loc_1 = Utils.i18n("generalAtack") + ":" + _attackDamage;
            _loc_1 = Utils.i18n("generalAtack") + ":" + _attackDamage;
            _loc_1 = _attackHitRate + "%";
            _loc_1 = _attackHitRate + "%";
            _loc_1 = Utils.i18n("generalCounterAttack") + ":" + _counterDamage;
            _loc_1 = Utils.i18n("generalCounterAttack") + ":" + _counterDamage;
            _loc_1 = _counterHitRate + "%";
            _loc_1 = _counterHitRate + "%";
            _loc_1 = Utils.i18n("generalCounterAttack") + ":---";
            _loc_1 = Utils.i18n("generalCounterAttack") + ":---";
            return;
        }// end function

        private function set three(param1:Class) : void
        {
            var _loc_2:* = this._110339486three;
            if (_loc_2 !== param1)
            {
                this._110339486three = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "three", _loc_2, param1));
            }
            return;
        }// end function

        public function get counterString() : Canvas
        {
            return this._463456979counterString;
        }// end function

        private function get two() : Class
        {
            return this._115276two;
        }// end function

        private function set zero(param1:Class) : void
        {
            var _loc_2:* = this._3735208zero;
            if (_loc_2 !== param1)
            {
                this._3735208zero = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "zero", _loc_2, param1));
            }
            return;
        }// end function

        private function set four(param1:Class) : void
        {
            var _loc_2:* = this._3149094four;
            if (_loc_2 !== param1)
            {
                this._3149094four = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "four", _loc_2, param1));
            }
            return;
        }// end function

        private function _HitRateWindow_bindingsSetup() : Array
        {
            var binding:Binding;
            var result:Array;
            binding = new Binding(this, function () : String
            {
                var _loc_1:* = Utils.i18n("generalAtack") + ":" + _attackDamage;
                var _loc_2:* = _loc_1 == undefined ? (null) : (String(_loc_1));
                return _loc_2;
            }// end function
            , function (param1:String) : void
            {
                _HitRateWindow_Label1.text = param1;
                return;
            }// end function
            , "_HitRateWindow_Label1.text");
            result[0] = binding;
            binding = new Binding(this, function () : String
            {
                var _loc_1:* = Utils.i18n("generalAtack") + ":" + _attackDamage;
                var _loc_2:* = _loc_1 == undefined ? (null) : (String(_loc_1));
                return _loc_2;
            }// end function
            , function (param1:String) : void
            {
                _HitRateWindow_Label2.text = param1;
                return;
            }// end function
            , "_HitRateWindow_Label2.text");
            result[1] = binding;
            binding = new Binding(this, function () : String
            {
                var _loc_1:* = _attackHitRate + "%";
                var _loc_2:* = _loc_1 == undefined ? (null) : (String(_loc_1));
                return _loc_2;
            }// end function
            , function (param1:String) : void
            {
                _HitRateWindow_Label3.text = param1;
                return;
            }// end function
            , "_HitRateWindow_Label3.text");
            result[2] = binding;
            binding = new Binding(this, function () : String
            {
                var _loc_1:* = _attackHitRate + "%";
                var _loc_2:* = _loc_1 == undefined ? (null) : (String(_loc_1));
                return _loc_2;
            }// end function
            , function (param1:String) : void
            {
                _HitRateWindow_Label4.text = param1;
                return;
            }// end function
            , "_HitRateWindow_Label4.text");
            result[3] = binding;
            binding = new Binding(this, function () : String
            {
                var _loc_1:* = Utils.i18n("generalCounterAttack") + ":" + _counterDamage;
                var _loc_2:* = _loc_1 == undefined ? (null) : (String(_loc_1));
                return _loc_2;
            }// end function
            , function (param1:String) : void
            {
                _HitRateWindow_Label5.text = param1;
                return;
            }// end function
            , "_HitRateWindow_Label5.text");
            result[4] = binding;
            binding = new Binding(this, function () : String
            {
                var _loc_1:* = Utils.i18n("generalCounterAttack") + ":" + _counterDamage;
                var _loc_2:* = _loc_1 == undefined ? (null) : (String(_loc_1));
                return _loc_2;
            }// end function
            , function (param1:String) : void
            {
                _HitRateWindow_Label6.text = param1;
                return;
            }// end function
            , "_HitRateWindow_Label6.text");
            result[5] = binding;
            binding = new Binding(this, function () : String
            {
                var _loc_1:* = _counterHitRate + "%";
                var _loc_2:* = _loc_1 == undefined ? (null) : (String(_loc_1));
                return _loc_2;
            }// end function
            , function (param1:String) : void
            {
                _HitRateWindow_Label7.text = param1;
                return;
            }// end function
            , "_HitRateWindow_Label7.text");
            result[6] = binding;
            binding = new Binding(this, function () : String
            {
                var _loc_1:* = _counterHitRate + "%";
                var _loc_2:* = _loc_1 == undefined ? (null) : (String(_loc_1));
                return _loc_2;
            }// end function
            , function (param1:String) : void
            {
                _HitRateWindow_Label8.text = param1;
                return;
            }// end function
            , "_HitRateWindow_Label8.text");
            result[7] = binding;
            binding = new Binding(this, function () : String
            {
                var _loc_1:* = Utils.i18n("generalCounterAttack") + ":---";
                var _loc_2:* = _loc_1 == undefined ? (null) : (String(_loc_1));
                return _loc_2;
            }// end function
            , function (param1:String) : void
            {
                _HitRateWindow_Label9.text = param1;
                return;
            }// end function
            , "_HitRateWindow_Label9.text");
            result[8] = binding;
            binding = new Binding(this, function () : String
            {
                var _loc_1:* = Utils.i18n("generalCounterAttack") + ":---";
                var _loc_2:* = _loc_1 == undefined ? (null) : (String(_loc_1));
                return _loc_2;
            }// end function
            , function (param1:String) : void
            {
                _HitRateWindow_Label10.text = param1;
                return;
            }// end function
            , "_HitRateWindow_Label10.text");
            result[9] = binding;
            return result;
        }// end function

        public function set attackHitRate(param1:int) : void
        {
            if (param1 > 100)
            {
                param1 = 100;
            }
            _attackHitRate = param1;
            return;
        }// end function

        private function set _attackHitRate(param1:int) : void
        {
            var _loc_2:* = this._284339628_attackHitRate;
            if (_loc_2 !== param1)
            {
                this._284339628_attackHitRate = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "_attackHitRate", _loc_2, param1));
            }
            return;
        }// end function

        public function set counterString(param1:Canvas) : void
        {
            var _loc_2:* = this._463456979counterString;
            if (_loc_2 !== param1)
            {
                this._463456979counterString = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "counterString", _loc_2, param1));
            }
            return;
        }// end function

        private function set five(param1:Class) : void
        {
            var _loc_2:* = this._3143346five;
            if (_loc_2 !== param1)
            {
                this._3143346five = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "five", _loc_2, param1));
            }
            return;
        }// end function

        private function get one() : Class
        {
            return this._110182one;
        }// end function

        private function set _attackDamage(param1:int) : void
        {
            var _loc_2:* = this._2052589130_attackDamage;
            if (_loc_2 !== param1)
            {
                this._2052589130_attackDamage = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "_attackDamage", _loc_2, param1));
            }
            return;
        }// end function

        private function set nine(param1:Class) : void
        {
            var _loc_2:* = this._3381426nine;
            if (_loc_2 !== param1)
            {
                this._3381426nine = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "nine", _loc_2, param1));
            }
            return;
        }// end function

        public function get counterHitRate() : int
        {
            return _counterHitRate;
        }// end function

        public function get counterDamage() : int
        {
            return _counterDamage;
        }// end function

        private function get _counterDamage() : int
        {
            return this._1694027124_counterDamage;
        }// end function

        private function get eight() : Class
        {
            return this._96505999eight;
        }// end function

        override public function initialize() : void
        {
            var target:HitRateWindow;
            var watcherSetupUtilClass:Object;
            .mx_internal::setDocumentDescriptor(_documentDescriptor_);
            var bindings:* = _HitRateWindow_bindingsSetup();
            var watchers:Array;
            target;
            if (_watcherSetupUtil == null)
            {
                watcherSetupUtilClass = getDefinitionByName("_com_kbmj_viking_view_tactics_HitRateWindowWatcherSetupUtil");
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

        private function get _counterHitRate() : int
        {
            return this._1485140074_counterHitRate;
        }// end function

        private function set two(param1:Class) : void
        {
            var _loc_2:* = this._115276two;
            if (_loc_2 !== param1)
            {
                this._115276two = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "two", _loc_2, param1));
            }
            return;
        }// end function

        private function get three() : Class
        {
            return this._110339486three;
        }// end function

        public function get attackHitRate() : int
        {
            return _attackHitRate;
        }// end function

        private function get _attackHitRate() : int
        {
            return this._284339628_attackHitRate;
        }// end function

        public function set attackDamage(param1:int) : void
        {
            _attackDamage = param1;
            return;
        }// end function

        private function get zero() : Class
        {
            return this._3735208zero;
        }// end function

        private function get five() : Class
        {
            return this._3143346five;
        }// end function

        private function get _attackDamage() : int
        {
            return this._2052589130_attackDamage;
        }// end function

        private function get nine() : Class
        {
            return this._3381426nine;
        }// end function

        private function set six(param1:Class) : void
        {
            var _loc_2:* = this._113890six;
            if (_loc_2 !== param1)
            {
                this._113890six = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "six", _loc_2, param1));
            }
            return;
        }// end function

        private function set one(param1:Class) : void
        {
            var _loc_2:* = this._110182one;
            if (_loc_2 !== param1)
            {
                this._110182one = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "one", _loc_2, param1));
            }
            return;
        }// end function

        public function get attackDamage() : int
        {
            return _attackDamage;
        }// end function

        public function set counterNum(param1:Canvas) : void
        {
            var _loc_2:* = this._1029682198counterNum;
            if (_loc_2 !== param1)
            {
                this._1029682198counterNum = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "counterNum", _loc_2, param1));
            }
            return;
        }// end function

        private function get six() : Class
        {
            return this._113890six;
        }// end function

        public function get counterNum() : Canvas
        {
            return this._1029682198counterNum;
        }// end function

        public function set counterHitRate(param1:int) : void
        {
            if (param1 > 100)
            {
                param1 = 100;
            }
            _counterHitRate = param1;
            return;
        }// end function

        public static function set watcherSetupUtil(param1:IWatcherSetupUtil) : void
        {
            _watcherSetupUtil = param1;
            return;
        }// end function

    }
}
