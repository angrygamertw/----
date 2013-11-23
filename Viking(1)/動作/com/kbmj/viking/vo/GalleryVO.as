package com.kbmj.viking.vo
{
    import mx.events.*;

    public class GalleryVO extends BaseBelongingVO
    {
        private var _galleryId:int;
        private var _goldMaterialFlag:Boolean;
        private var _earthMaterialFlag:Boolean;
        private var _fireMaterialFlag:Boolean;
        private var _waterMaterialFlag:Boolean;
        private var _plantMaterialFlag:Boolean;
        public static const BELONGING_TYPE:String = "gallery";

        public function GalleryVO()
        {
            return;
        }// end function

        public function set plantMaterialFlag(param1:Boolean) : void
        {
            var _loc_2:* = this.plantMaterialFlag;
            if (_loc_2 !== param1)
            {
                this._743756606plantMaterialFlag = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "plantMaterialFlag", _loc_2, param1));
            }
            return;
        }// end function

        private function set _743756606plantMaterialFlag(param1:Boolean) : void
        {
            _plantMaterialFlag = param1;
            return;
        }// end function

        private function set _1926489110waterMaterialFlag(param1:Boolean) : void
        {
            _waterMaterialFlag = param1;
            return;
        }// end function

        public function get fireMaterialFlag() : Boolean
        {
            return _fireMaterialFlag;
        }// end function

        public function get galleryId() : int
        {
            return _galleryId;
        }// end function

        public function set waterMaterialFlag(param1:Boolean) : void
        {
            var _loc_2:* = this.waterMaterialFlag;
            if (_loc_2 !== param1)
            {
                this._1926489110waterMaterialFlag = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "waterMaterialFlag", _loc_2, param1));
            }
            return;
        }// end function

        private function set _180513143fireMaterialFlag(param1:Boolean) : void
        {
            _fireMaterialFlag = param1;
            return;
        }// end function

        public function set fireMaterialFlag(param1:Boolean) : void
        {
            var _loc_2:* = this.fireMaterialFlag;
            if (_loc_2 !== param1)
            {
                this._180513143fireMaterialFlag = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "fireMaterialFlag", _loc_2, param1));
            }
            return;
        }// end function

        private function set _319550477galleryId(param1:int) : void
        {
            _galleryId = param1;
            return;
        }// end function

        public function get earthMaterialFlag() : Boolean
        {
            return _earthMaterialFlag;
        }// end function

        public function get plantMaterialFlag() : Boolean
        {
            return _plantMaterialFlag;
        }// end function

        public function set galleryId(param1:int) : void
        {
            var _loc_2:* = this.galleryId;
            if (_loc_2 !== param1)
            {
                this._319550477galleryId = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "galleryId", _loc_2, param1));
            }
            return;
        }// end function

        public function get master() : Object
        {
            return _masterVO;
        }// end function

        public function set goldMaterialFlag(param1:Boolean) : void
        {
            var _loc_2:* = this.goldMaterialFlag;
            if (_loc_2 !== param1)
            {
                this._1203883597goldMaterialFlag = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "goldMaterialFlag", _loc_2, param1));
            }
            return;
        }// end function

        public function get waterMaterialFlag() : Boolean
        {
            return _waterMaterialFlag;
        }// end function

        private function set _1203883597goldMaterialFlag(param1:Boolean) : void
        {
            _goldMaterialFlag = param1;
            return;
        }// end function

        private function set _409221789earthMaterialFlag(param1:Boolean) : void
        {
            _earthMaterialFlag = param1;
            return;
        }// end function

        public function get goldMaterialFlag() : Boolean
        {
            return _goldMaterialFlag;
        }// end function

        override public function get belongingType() : String
        {
            return BELONGING_TYPE;
        }// end function

        public function set earthMaterialFlag(param1:Boolean) : void
        {
            var _loc_2:* = this.earthMaterialFlag;
            if (_loc_2 !== param1)
            {
                this._409221789earthMaterialFlag = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "earthMaterialFlag", _loc_2, param1));
            }
            return;
        }// end function

        override public function get belongingId() : int
        {
            return _galleryId;
        }// end function

    }
}
