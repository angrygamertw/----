package com.kbmj.viking.view.home
{
    import com.kbmj.viking.view.*;
    import com.kbmj.viking.vo.tactics.*;
    import flash.events.*;
    import flash.geom.*;
    import mx.containers.*;
    import mx.controls.*;
    import mx.core.*;
    import mx.events.*;

    public class JobChangeSelectUnitWindow extends PopupWindow
    {
        private var _3127582exit:Button;
        protected var _1463764368_units:Array;
        private var _2099682666unitStatus:UnitStatus;
        private var _unit:UnitVO;
        private var _standbyUnit_X:Array;
        protected var _unitIndex:Object;
        private var _standbyUnit_Y:Array;
        private var _documentDescriptor_:UIComponentDescriptor;
        private var _3141bg:Panel;
        public static const SELECT_UNIT:String = "selectUnit";

        public function JobChangeSelectUnitWindow()
        {
            _documentDescriptor_ = new UIComponentDescriptor({type:PopupWindow, propertiesFactory:function () : Object
            {
                return {height:560, width:760, childDescriptors:[new UIComponentDescriptor({type:Panel, id:"bg", propertiesFactory:function () : Object
                {
                    return {layout:"absolute", title:"種族チェンジ", styleName:"UnitListPanel", width:760, height:560, childDescriptors:[new UIComponentDescriptor({type:UnitStatus, id:"unitStatus", propertiesFactory:function () : Object
                    {
                        return {x:15, y:290};
                    }// end function
                    })]};
                }// end function
                }), new UIComponentDescriptor({type:Button, id:"exit", events:{click:"__exit_click"}, stylesFactory:function () : void
                {
                    this.fontSize = 30;
                    return;
                }// end function
                , propertiesFactory:function () : Object
                {
                    return {width:26, height:26, y:15, x:728, styleName:"closeBtn", buttonMode:true};
                }// end function
                })]};
            }// end function
            });
            _unit = new UnitVO();
            _standbyUnit_X = new Array();
            _standbyUnit_Y = new Array();
            mx_internal::_document = this;
            this.height = 560;
            this.width = 760;
            return;
        }// end function

        public function get exit() : Button
        {
            return this._3127582exit;
        }// end function

        private function getUnitPosition(param1:int) : Point
        {
            var _loc_2:* = param1 % 5;
            var _loc_3:* = param1 / 5;
            var _loc_4:* = 500 - _loc_3 * 65 - _loc_2 * 47;
            var _loc_5:* = 140 + _loc_3 * 25 - _loc_2 * 25;
            return new Point(_loc_4, _loc_5);
        }// end function

        public function get unit() : UnitVO
        {
            return _unit;
        }// end function

        public function get bg() : Panel
        {
            return this._3141bg;
        }// end function

        public function __exit_click(event:MouseEvent) : void
        {
            onClose();
            return;
        }// end function

        public function set bg(param1:Panel) : void
        {
            var _loc_2:* = this._3141bg;
            if (_loc_2 !== param1)
            {
                this._3141bg = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "bg", _loc_2, param1));
            }
            return;
        }// end function

        protected function handleMouseEvent(event:MouseEvent) : void
        {
            var _loc_2:* = _unitIndex[event.target.name];
            switch(event.type)
            {
                case MouseEvent.CLICK:
                {
                    if (_unit != _units[_loc_2])
                    {
                        _unit = _units[_loc_2];
                        dispatchEvent(new Event(SELECT_UNIT));
                    }
                    break;
                }
                case MouseEvent.MOUSE_OVER:
                {
                    unitStatus.unit = _units[_loc_2];
                    break;
                }
                case MouseEvent.MOUSE_OUT:
                {
                    unitStatus.unit = new UnitVO();
                    break;
                }
                default:
                {
                    break;
                }
            }
            return;
        }// end function

        public function set unitStatus(param1:UnitStatus) : void
        {
            var _loc_2:* = this._2099682666unitStatus;
            if (_loc_2 !== param1)
            {
                this._2099682666unitStatus = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "unitStatus", _loc_2, param1));
            }
            return;
        }// end function

        public function init() : void
        {
            var _loc_2:Point = null;
            _unitIndex = new Object();
            _unit = new UnitVO();
            var _loc_1:int = 0;
            while (_loc_1 < _units.length)
            {
                
                _loc_2 = getUnitPosition(_loc_1);
                _units[_loc_1].loader.x = _loc_2.x;
                _units[_loc_1].loader.y = _loc_2.y;
                _units[_loc_1].loader.addEventListener(MouseEvent.CLICK, handleMouseEvent);
                _units[_loc_1].loader.addEventListener(MouseEvent.MOUSE_OVER, handleMouseEvent);
                _units[_loc_1].loader.addEventListener(MouseEvent.MOUSE_OUT, handleMouseEvent);
                _units[_loc_1].loader.name = "unit" + _loc_1;
                _unitIndex[_units[_loc_1].loader.name] = _loc_1;
                bg.addChildAt(_units[_loc_1].uic, (_loc_1 + 1));
                _loc_1++;
            }
            return;
        }// end function

        private function removeUnits() : void
        {
            var _loc_1:int = 0;
            while (_loc_1 < _units.length)
            {
                
                _units[_loc_1].loader.removeEventListener(MouseEvent.CLICK, handleMouseEvent);
                _units[_loc_1].loader.removeEventListener(MouseEvent.MOUSE_OVER, handleMouseEvent);
                _units[_loc_1].loader.removeEventListener(MouseEvent.MOUSE_OUT, handleMouseEvent);
                if (bg.contains(_units[_loc_1].uic))
                {
                    bg.removeChild(_units[_loc_1].uic);
                }
                _loc_1++;
            }
            return;
        }// end function

        override public function initialize() : void
        {
            .mx_internal::setDocumentDescriptor(_documentDescriptor_);
            super.initialize();
            return;
        }// end function

        public function set units(param1:Array) : void
        {
            _units = param1;
            return;
        }// end function

        override protected function onClose() : void
        {
            removeUnits();
            super.onClose();
            return;
        }// end function

        protected function set _units(param1:Array) : void
        {
            var _loc_2:* = this._1463764368_units;
            if (_loc_2 !== param1)
            {
                this._1463764368_units = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "_units", _loc_2, param1));
            }
            return;
        }// end function

        public function get unitStatus() : UnitStatus
        {
            return this._2099682666unitStatus;
        }// end function

        protected function get _units() : Array
        {
            return this._1463764368_units;
        }// end function

        public function get units() : Array
        {
            return _units;
        }// end function

        public function close() : void
        {
            onClose();
            return;
        }// end function

        public function set exit(param1:Button) : void
        {
            var _loc_2:* = this._3127582exit;
            if (_loc_2 !== param1)
            {
                this._3127582exit = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "exit", _loc_2, param1));
            }
            return;
        }// end function

    }
}
