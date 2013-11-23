package com.kbmj.viking.view.home
{
    import com.kbmj.viking.vo.tactics.*;
    import mx.containers.*;
    import mx.controls.*;
    import mx.core.*;
    import mx.events.*;
    import mx.managers.*;

    public class ProhibitionPullUnitWindow extends Canvas
    {
        private var _haveGold:int;
        private var _91329123_unit:UnitVO;
        private var _documentDescriptor_:UIComponentDescriptor;
        public var unitId:int;
        public static const PULL_THIS_UNIT:String = "pullThisUnit";

        public function ProhibitionPullUnitWindow()
        {
            _documentDescriptor_ = new UIComponentDescriptor({type:Canvas, propertiesFactory:function () : Object
            {
                return {childDescriptors:[new UIComponentDescriptor({type:Canvas}), new UIComponentDescriptor({type:Box, propertiesFactory:function () : Object
                {
                    return {width:330, height:180, styleName:"DialogBg", childDescriptors:[new UIComponentDescriptor({type:Canvas, propertiesFactory:function () : Object
                    {
                        return {childDescriptors:[new UIComponentDescriptor({type:Text, stylesFactory:function () : void
                        {
                            this.fontSize = 14;
                            return;
                        }// end function
                        , propertiesFactory:function () : Object
                        {
                            return {width:200, x:75, y:50, text:"式姫が一杯のため出せません。"};
                        }// end function
                        })]};
                    }// end function
                    })]};
                }// end function
                })]};
            }// end function
            });
            mx_internal::_document = this;
            this.x = 250;
            this.y = 200;
            return;
        }// end function

        private function get _unit() : UnitVO
        {
            return this._91329123_unit;
        }// end function

        public function get unit() : UnitVO
        {
            return _unit;
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

        private function closeWindow() : void
        {
            PopUpManager.removePopUp(this);
            return;
        }// end function

        override public function initialize() : void
        {
            .mx_internal::setDocumentDescriptor(_documentDescriptor_);
            super.initialize();
            return;
        }// end function

        public function setdata(param1:UnitVO, param2:int) : void
        {
            _unit = param1;
            _haveGold = param2;
            unitId = param1.unitId;
            return;
        }// end function

    }
}
