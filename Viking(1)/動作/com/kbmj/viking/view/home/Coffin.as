package com.kbmj.viking.view.home
{
    import com.kbmj.viking.lib.*;
    import com.kbmj.viking.vo.home.*;
    import com.kbmj.viking.vo.tactics.*;
    import flash.display.*;
    import flash.events.*;
    import flash.utils.*;
    import mx.binding.*;
    import mx.containers.*;
    import mx.controls.*;
    import mx.core.*;
    import mx.events.*;

    public class Coffin extends Canvas implements IBindingClient
    {
        private var _1218117284_toolTip:String = "";
        var _bindingsBeginWithWord:Object;
        private var _mouseEventHandler:Function;
        private var _unitDirection:int;
        var _watchers:Array;
        private var _1474884516_image:Class;
        private var _1720059900unitCanvas:Canvas;
        public var _Coffin_Image1:Image;
        private var _1353440624_coffin:CoffinVO;
        var _bindings:Array;
        public var _Coffin_Button1:Button;
        var _bindingsByDestination:Object;
        private var _documentDescriptor_:UIComponentDescriptor;
        private static var _inactiveCoffinImage:Class = Coffin__inactiveCoffinImage;
        private static var _watcherSetupUtil:IWatcherSetupUtil;
        private static var _coffinImage:Class = Coffin__coffinImage;
        private static var _vacantImage:Class = Coffin__vacantImage;

        public function Coffin()
        {
            _documentDescriptor_ = new UIComponentDescriptor({type:Canvas, propertiesFactory:function () : Object
            {
                return {childDescriptors:[new UIComponentDescriptor({type:Image, id:"_Coffin_Image1", propertiesFactory:function () : Object
                {
                    return {mouseEnabled:false, mouseChildren:false};
                }// end function
                }), new UIComponentDescriptor({type:Canvas, id:"unitCanvas", propertiesFactory:function () : Object
                {
                    return {mouseEnabled:false, mouseChildren:false};
                }// end function
                }), new UIComponentDescriptor({type:Button, id:"_Coffin_Button1", events:{click:"___Coffin_Button1_click", mouseOver:"___Coffin_Button1_mouseOver", mouseOut:"___Coffin_Button1_mouseOut"}, propertiesFactory:function () : Object
                {
                    return {y:40, x:10, width:55, height:40, styleName:"BaseVacantLot", alpha:0, buttonMode:true, mouseChildren:false};
                }// end function
                })]};
            }// end function
            });
            _bindings = [];
            _watchers = [];
            _bindingsByDestination = {};
            _bindingsBeginWithWord = {};
            mx_internal::_document = this;
            this.mouseEnabled = false;
            return;
        }// end function

        public function set unitCanvas(param1:Canvas) : void
        {
            var _loc_2:* = this._1720059900unitCanvas;
            if (_loc_2 !== param1)
            {
                this._1720059900unitCanvas = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "unitCanvas", _loc_2, param1));
            }
            return;
        }// end function

        private function set _toolTip(param1:String) : void
        {
            var _loc_2:* = this._1218117284_toolTip;
            if (_loc_2 !== param1)
            {
                this._1218117284_toolTip = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "_toolTip", _loc_2, param1));
            }
            return;
        }// end function

        public function get coffin() : CoffinVO
        {
            return _coffin;
        }// end function

        private function get _coffin() : CoffinVO
        {
            return this._1353440624_coffin;
        }// end function

        override public function initialize() : void
        {
            var target:Coffin;
            var watcherSetupUtilClass:Object;
            .mx_internal::setDocumentDescriptor(_documentDescriptor_);
            var bindings:* = _Coffin_bindingsSetup();
            var watchers:Array;
            target;
            if (_watcherSetupUtil == null)
            {
                watcherSetupUtilClass = getDefinitionByName("_com_kbmj_viking_view_home_CoffinWatcherSetupUtil");
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

        public function ___Coffin_Button1_click(event:MouseEvent) : void
        {
            mouseEvent(event);
            return;
        }// end function

        public function set coffin(param1:CoffinVO) : void
        {
            var v:* = param1;
            _coffin = v;
            _image = _coffin.isActive ? (_coffinImage) : (_coffin.unit ? (_inactiveCoffinImage) : (_vacantImage));
            _toolTip = _coffin.isActive ? (Utils.i18n("localize95") + ":" + _coffin.expiredAtLabel) : (_coffin.unit ? (Utils.i18n("localize96")) : (Utils.i18n("localize97")));
            unitCanvas.removeAllChildren();
            if (coffin.unit)
            {
                unitCanvas.addChild(coffin.unit.uic);
            }
            coffin.unit.loader.contentLoaderInfo.addEventListener(Event.COMPLETE, function (event:Event) : void
            {
                coffin.unit.loader.contentLoaderInfo.removeEventListener(Event.COMPLETE, arguments.callee);
                coffin.unit.direction = _unitDirection;
                chengeUnitMotion(coffin.unit);
                return;
            }// end function
            );
            return;
        }// end function

        private function get _image() : Class
        {
            return this._1474884516_image;
        }// end function

        private function chengeUnitMotion(param1:UnitVO) : void
        {
            var _loc_3:int = 0;
            var _loc_2:* = param1.direction;
            if (param1.direction == 1)
            {
                _loc_2 = 0;
                _loc_3 = -1;
            }
            else if (param1.direction == 2)
            {
                _loc_2 = 3;
                _loc_3 = -1;
            }
            else
            {
                _loc_3 = 1;
            }
            if (_loc_3 < 0 && param1.loader.content.scaleX != _loc_3)
            {
                param1.loader.content.x = param1.loader.content.x + param1.loader.content.width;
            }
            else if (_loc_3 > 0 && param1.loader.content.scaleX != _loc_3)
            {
                param1.loader.content.x = param1.loader.content.x - param1.loader.content.width;
            }
            param1.loader.content.scaleX = _loc_3;
            var _loc_4:Array = ["_b_l", "_b_r", "_f_r", "_f_l"];
            MovieClip(param1.loader.content).gotoAndStop("down" + _loc_4[_loc_2]);
            var _loc_5:* = MovieClip(param1.loader.content).currentFrame;
            MovieClip(param1.loader.content).gotoAndStop(_loc_5 + 30);
            if (_loc_3 > 0)
            {
                param1.loader.content.x = param1.loader.content.x + 10;
            }
            else
            {
                param1.loader.content.x = param1.loader.content.x - 10;
            }
            return;
        }// end function

        private function _Coffin_bindingsSetup() : Array
        {
            var binding:Binding;
            var result:Array;
            binding = new Binding(this, function () : Object
            {
                return _image;
            }// end function
            , function (param1:Object) : void
            {
                _Coffin_Image1.source = param1;
                return;
            }// end function
            , "_Coffin_Image1.source");
            result[0] = binding;
            binding = new Binding(this, function () : String
            {
                var _loc_1:* = _toolTip;
                var _loc_2:* = _loc_1 == undefined ? (null) : (String(_loc_1));
                return _loc_2;
            }// end function
            , function (param1:String) : void
            {
                _Coffin_Button1.toolTip = param1;
                return;
            }// end function
            , "_Coffin_Button1.toolTip");
            result[1] = binding;
            return result;
        }// end function

        private function _Coffin_bindingExprs() : void
        {
            var _loc_1:* = undefined;
            _loc_1 = _image;
            _loc_1 = _toolTip;
            return;
        }// end function

        public function set mouseEventHandler(param1:Function) : void
        {
            _mouseEventHandler = param1;
            return;
        }// end function

        private function get _toolTip() : String
        {
            return this._1218117284_toolTip;
        }// end function

        private function set _coffin(param1:CoffinVO) : void
        {
            var _loc_2:* = this._1353440624_coffin;
            if (_loc_2 !== param1)
            {
                this._1353440624_coffin = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "_coffin", _loc_2, param1));
            }
            return;
        }// end function

        public function ___Coffin_Button1_mouseOver(event:MouseEvent) : void
        {
            mouseEvent(event);
            return;
        }// end function

        private function mouseEvent(event:MouseEvent) : void
        {
            _mouseEventHandler(event, coffin);
            return;
        }// end function

        public function set unitDirection(param1:int) : void
        {
            _unitDirection = param1;
            return;
        }// end function

        public function get unitCanvas() : Canvas
        {
            return this._1720059900unitCanvas;
        }// end function

        private function set _image(param1:Class) : void
        {
            var _loc_2:* = this._1474884516_image;
            if (_loc_2 !== param1)
            {
                this._1474884516_image = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "_image", _loc_2, param1));
            }
            return;
        }// end function

        public function ___Coffin_Button1_mouseOut(event:MouseEvent) : void
        {
            mouseEvent(event);
            return;
        }// end function

        public static function set watcherSetupUtil(param1:IWatcherSetupUtil) : void
        {
            _watcherSetupUtil = param1;
            return;
        }// end function

    }
}
