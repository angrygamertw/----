package com.kbmj.viking.view.home
{
    import com.kbmj.viking.vo.home.*;
    import flash.geom.*;
    import mx.containers.*;
    import mx.core.*;
    import mx.events.*;

    public class BuildLevelRenderer extends Canvas
    {
        private var _199197141levelIconCanvas:Canvas;
        private var buildingVO:BuildingVO;
        private var _documentDescriptor_:UIComponentDescriptor;
        private var _1638753418iconImg:Class;
        private var buildingPoint:Point;
        private static const MAX_BUILDING_LEVEL:int = 9;

        public function BuildLevelRenderer()
        {
            _documentDescriptor_ = new UIComponentDescriptor({type:Canvas, propertiesFactory:function () : Object
            {
                return {childDescriptors:[new UIComponentDescriptor({type:Canvas, id:"levelIconCanvas"})]};
            }// end function
            });
            buildingPoint = new Point();
            mx_internal::_document = this;
            this.addEventListener("creationComplete", ___BuildLevelRenderer_Canvas1_creationComplete);
            return;
        }// end function

        public function setIcon(param1:BuildingVO, param2:Point) : Boolean
        {
            buildingPoint = param2;
            buildingVO = param1;
            if (buildingVO.buildingMasterVO.masterId == 14 && !buildingVO.underConstruction)
            {
                buildingPoint.y = buildingPoint.y + 15;
                buildingPoint.x = buildingPoint.x + 5;
            }
            return false;
        }// end function

        public function ___BuildLevelRenderer_Canvas1_creationComplete(event:FlexEvent) : void
        {
            init();
            return;
        }// end function

        public function set levelIconCanvas(param1:Canvas) : void
        {
            var _loc_2:* = this._199197141levelIconCanvas;
            if (_loc_2 !== param1)
            {
                this._199197141levelIconCanvas = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "levelIconCanvas", _loc_2, param1));
            }
            return;
        }// end function

        override public function initialize() : void
        {
            .mx_internal::setDocumentDescriptor(_documentDescriptor_);
            super.initialize();
            return;
        }// end function

        private function get iconImg() : Class
        {
            return this._1638753418iconImg;
        }// end function

        private function set iconImg(param1:Class) : void
        {
            var _loc_2:* = this._1638753418iconImg;
            if (_loc_2 !== param1)
            {
                this._1638753418iconImg = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "iconImg", _loc_2, param1));
            }
            return;
        }// end function

        public function get levelIconCanvas() : Canvas
        {
            return this._199197141levelIconCanvas;
        }// end function

        private function init() : void
        {
            return;
        }// end function

    }
}
