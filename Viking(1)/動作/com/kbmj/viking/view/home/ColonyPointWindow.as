package com.kbmj.viking.view.home
{
    import com.kbmj.viking.lib.*;
    import flash.display.*;
    import flash.utils.*;
    import mx.binding.*;
    import mx.containers.*;
    import mx.controls.*;
    import mx.core.*;
    import mx.events.*;

    public class ColonyPointWindow extends Canvas implements IBindingClient
    {
        private var _889494886_topPoint:String;
        private var _1471460769_ownerName:String;
        public var _ColonyPointWindow_Label5:Label;
        var _bindingsBeginWithWord:Object;
        var _bindingsByDestination:Object;
        var _watchers:Array;
        var _bindings:Array;
        public var _ColonyPointWindow_Label1:Label;
        public var _ColonyPointWindow_Label2:Label;
        public var _ColonyPointWindow_Label3:Label;
        public var _ColonyPointWindow_Label4:Label;
        private var _1468352367_point:String;
        public var _ColonyPointWindow_Label6:Label;
        private var _documentDescriptor_:UIComponentDescriptor;
        private var _957543327_guildName:String;
        private static var _watcherSetupUtil:IWatcherSetupUtil;

        public function ColonyPointWindow()
        {
            _documentDescriptor_ = new UIComponentDescriptor({type:Canvas, propertiesFactory:function () : Object
            {
                return {width:108, height:35, childDescriptors:[new UIComponentDescriptor({type:Label, id:"_ColonyPointWindow_Label1", stylesFactory:function () : void
                {
                    this.fontSize = 9;
                    this.color = 16179356;
                    this.textAlign = "left";
                    return;
                }// end function
                , propertiesFactory:function () : Object
                {
                    return {x:1, y:1, width:25, height:19};
                }// end function
                }), new UIComponentDescriptor({type:Label, id:"_ColonyPointWindow_Label2", stylesFactory:function () : void
                {
                    this.fontSize = 11;
                    this.color = 16179356;
                    this.textAlign = "center";
                    return;
                }// end function
                , propertiesFactory:function () : Object
                {
                    return {x:18, y:0, width:92, height:19};
                }// end function
                }), new UIComponentDescriptor({type:Label, id:"_ColonyPointWindow_Label3", stylesFactory:function () : void
                {
                    this.fontSize = 9;
                    this.color = 16179356;
                    this.textAlign = "left";
                    return;
                }// end function
                , propertiesFactory:function () : Object
                {
                    return {x:1, y:19, width:25, height:16};
                }// end function
                }), new UIComponentDescriptor({type:Label, id:"_ColonyPointWindow_Label4", stylesFactory:function () : void
                {
                    this.fontSize = 9;
                    this.color = 16179356;
                    this.textAlign = "right";
                    return;
                }// end function
                , propertiesFactory:function () : Object
                {
                    return {x:24, y:19, width:30, height:16};
                }// end function
                }), new UIComponentDescriptor({type:Label, id:"_ColonyPointWindow_Label5", stylesFactory:function () : void
                {
                    this.fontSize = 9;
                    this.color = 16179356;
                    this.textAlign = "left";
                    return;
                }// end function
                , propertiesFactory:function () : Object
                {
                    return {x:55, y:19, width:25, height:16};
                }// end function
                }), new UIComponentDescriptor({type:Label, id:"_ColonyPointWindow_Label6", stylesFactory:function () : void
                {
                    this.fontSize = 9;
                    this.color = 16179356;
                    this.textAlign = "right";
                    return;
                }// end function
                , propertiesFactory:function () : Object
                {
                    return {x:78, y:19, width:30, height:16};
                }// end function
                })]};
            }// end function
            });
            _bindings = [];
            _watchers = [];
            _bindingsByDestination = {};
            _bindingsBeginWithWord = {};
            mx_internal::_document = this;
            this.width = 108;
            this.height = 35;
            this.horizontalScrollPolicy = "off";
            this.verticalScrollPolicy = "off";
            this.addEventListener("creationComplete", ___ColonyPointWindow_Canvas1_creationComplete);
            return;
        }// end function

        public function set guildName(param1:String) : void
        {
            _guildName = param1;
            return;
        }// end function

        public function set topPoint(param1:String) : void
        {
            _topPoint = param1;
            return;
        }// end function

        private function _ColonyPointWindow_bindingsSetup() : Array
        {
            var binding:Binding;
            var result:Array;
            binding = new Binding(this, function () : String
            {
                var _loc_1:* = Utils.i18n("localize106");
                var _loc_2:* = _loc_1 == undefined ? (null) : (String(_loc_1));
                return _loc_2;
            }// end function
            , function (param1:String) : void
            {
                _ColonyPointWindow_Label1.text = param1;
                return;
            }// end function
            , "_ColonyPointWindow_Label1.text");
            result[0] = binding;
            binding = new Binding(this, function () : String
            {
                var _loc_1:* = Utils.i18n("localize104");
                var _loc_2:* = _loc_1 == undefined ? (null) : (String(_loc_1));
                return _loc_2;
            }// end function
            , function (param1:String) : void
            {
                _ColonyPointWindow_Label1.toolTip = param1;
                return;
            }// end function
            , "_ColonyPointWindow_Label1.toolTip");
            result[1] = binding;
            binding = new Binding(this, function () : String
            {
                var _loc_1:* = _ownerName;
                var _loc_2:* = _loc_1 == undefined ? (null) : (String(_loc_1));
                return _loc_2;
            }// end function
            , function (param1:String) : void
            {
                _ColonyPointWindow_Label2.text = param1;
                return;
            }// end function
            , "_ColonyPointWindow_Label2.text");
            result[2] = binding;
            binding = new Binding(this, function () : String
            {
                var _loc_1:* = Utils.i18n("localize107");
                var _loc_2:* = _loc_1 == undefined ? (null) : (String(_loc_1));
                return _loc_2;
            }// end function
            , function (param1:String) : void
            {
                _ColonyPointWindow_Label3.text = param1;
                return;
            }// end function
            , "_ColonyPointWindow_Label3.text");
            result[3] = binding;
            binding = new Binding(this, function () : String
            {
                var _loc_1:* = _guildName + "" + Utils.i18n("localize108");
                var _loc_2:* = _loc_1 == undefined ? (null) : (String(_loc_1));
                return _loc_2;
            }// end function
            , function (param1:String) : void
            {
                _ColonyPointWindow_Label3.toolTip = param1;
                return;
            }// end function
            , "_ColonyPointWindow_Label3.toolTip");
            result[4] = binding;
            binding = new Binding(this, function () : String
            {
                var _loc_1:* = _point;
                var _loc_2:* = _loc_1 == undefined ? (null) : (String(_loc_1));
                return _loc_2;
            }// end function
            , function (param1:String) : void
            {
                _ColonyPointWindow_Label4.text = param1;
                return;
            }// end function
            , "_ColonyPointWindow_Label4.text");
            result[5] = binding;
            binding = new Binding(this, function () : String
            {
                var _loc_1:* = Utils.i18n("localize109");
                var _loc_2:* = _loc_1 == undefined ? (null) : (String(_loc_1));
                return _loc_2;
            }// end function
            , function (param1:String) : void
            {
                _ColonyPointWindow_Label5.text = param1;
                return;
            }// end function
            , "_ColonyPointWindow_Label5.text");
            result[6] = binding;
            binding = new Binding(this, function () : String
            {
                var _loc_1:* = Utils.i18n("localize110");
                var _loc_2:* = _loc_1 == undefined ? (null) : (String(_loc_1));
                return _loc_2;
            }// end function
            , function (param1:String) : void
            {
                _ColonyPointWindow_Label5.toolTip = param1;
                return;
            }// end function
            , "_ColonyPointWindow_Label5.toolTip");
            result[7] = binding;
            binding = new Binding(this, function () : String
            {
                var _loc_1:* = _topPoint;
                var _loc_2:* = _loc_1 == undefined ? (null) : (String(_loc_1));
                return _loc_2;
            }// end function
            , function (param1:String) : void
            {
                _ColonyPointWindow_Label6.text = param1;
                return;
            }// end function
            , "_ColonyPointWindow_Label6.text");
            result[8] = binding;
            return result;
        }// end function

        private function set _ownerName(param1:String) : void
        {
            var _loc_2:* = this._1471460769_ownerName;
            if (_loc_2 !== param1)
            {
                this._1471460769_ownerName = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "_ownerName", _loc_2, param1));
            }
            return;
        }// end function

        override public function initialize() : void
        {
            var target:ColonyPointWindow;
            var watcherSetupUtilClass:Object;
            .mx_internal::setDocumentDescriptor(_documentDescriptor_);
            var bindings:* = _ColonyPointWindow_bindingsSetup();
            var watchers:Array;
            target;
            if (_watcherSetupUtil == null)
            {
                watcherSetupUtilClass = getDefinitionByName("_com_kbmj_viking_view_home_ColonyPointWindowWatcherSetupUtil");
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

        public function ___ColonyPointWindow_Canvas1_creationComplete(event:FlexEvent) : void
        {
            init();
            return;
        }// end function

        private function set _topPoint(param1:String) : void
        {
            var _loc_2:* = this._889494886_topPoint;
            if (_loc_2 !== param1)
            {
                this._889494886_topPoint = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "_topPoint", _loc_2, param1));
            }
            return;
        }// end function

        public function init() : void
        {
            var _loc_1:* = new BitmapData(width, height, true, 2856596258);
            var _loc_2:* = new Bitmap(_loc_1);
            var _loc_3:* = new Image();
            _loc_3.source = _loc_2;
            addChildAt(_loc_3, 0);
            var _loc_4:* = new UIComponent();
            new UIComponent().addChild(createLine(0, 0, 0, 34));
            _loc_4.addChild(createLine(107, 0, 107, 34));
            _loc_4.addChild(createLine(0, 34, 107, 34));
            _loc_4.addChild(createLine(0, 18, 107, 18));
            _loc_4.addChild(createLine(53, 18, 53, 34));
            addChild(_loc_4);
            return;
        }// end function

        public function set point(param1:String) : void
        {
            _point = param1;
            return;
        }// end function

        private function get _topPoint() : String
        {
            return this._889494886_topPoint;
        }// end function

        private function set _point(param1:String) : void
        {
            var _loc_2:* = this._1468352367_point;
            if (_loc_2 !== param1)
            {
                this._1468352367_point = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "_point", _loc_2, param1));
            }
            return;
        }// end function

        private function get _guildName() : String
        {
            return this._957543327_guildName;
        }// end function

        private function get _ownerName() : String
        {
            return this._1471460769_ownerName;
        }// end function

        private function createLine(param1:int, param2:int, param3:int, param4:int) : Shape
        {
            var _loc_5:* = new Shape();
            new Shape().graphics.lineStyle(1, 4206624, 0.66);
            _loc_5.graphics.moveTo(param1, param2);
            _loc_5.graphics.lineTo(param3, param4);
            return _loc_5;
        }// end function

        private function get _point() : String
        {
            return this._1468352367_point;
        }// end function

        private function set _guildName(param1:String) : void
        {
            var _loc_2:* = this._957543327_guildName;
            if (_loc_2 !== param1)
            {
                this._957543327_guildName = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "_guildName", _loc_2, param1));
            }
            return;
        }// end function

        private function _ColonyPointWindow_bindingExprs() : void
        {
            var _loc_1:* = undefined;
            _loc_1 = Utils.i18n("localize106");
            _loc_1 = Utils.i18n("localize104");
            _loc_1 = _ownerName;
            _loc_1 = Utils.i18n("localize107");
            _loc_1 = _guildName + "" + Utils.i18n("localize108");
            _loc_1 = _point;
            _loc_1 = Utils.i18n("localize109");
            _loc_1 = Utils.i18n("localize110");
            _loc_1 = _topPoint;
            return;
        }// end function

        public function set ownerName(param1:String) : void
        {
            _ownerName = param1;
            return;
        }// end function

        public static function set watcherSetupUtil(param1:IWatcherSetupUtil) : void
        {
            _watcherSetupUtil = param1;
            return;
        }// end function

    }
}
