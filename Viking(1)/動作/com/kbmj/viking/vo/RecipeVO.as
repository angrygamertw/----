package com.kbmj.viking.vo
{
    import mx.events.*;

    public class RecipeVO extends BaseBelongingVO
    {
        private var _recipeId:int;
        private var _name:String;
        public static const BELONGING_TYPE:String = "recipe";

        public function RecipeVO()
        {
            return;
        }// end function

        private function set _804834487recipeId(param1:int) : void
        {
            _recipeId = param1;
            return;
        }// end function

        public function get yinUnit() : Object
        {
            return _masterVO.yinUnit;
        }// end function

        public function get yangUnit() : Object
        {
            return _masterVO.yangUnit;
        }// end function

        public function get recipeId() : int
        {
            return _recipeId;
        }// end function

        public function get rarity() : int
        {
            return _masterVO.rarity;
        }// end function

        public function get master() : Object
        {
            return _masterVO;
        }// end function

        public function get name() : String
        {
            return _masterVO.nameLabel;
        }// end function

        public function set recipeId(param1:int) : void
        {
            var _loc_2:* = this.recipeId;
            if (_loc_2 !== param1)
            {
                this._804834487recipeId = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "recipeId", _loc_2, param1));
            }
            return;
        }// end function

        public function get description() : String
        {
            return _masterVO.description;
        }// end function

        override public function get belongingType() : String
        {
            return BELONGING_TYPE;
        }// end function

        override public function get belongingId() : int
        {
            return _recipeId;
        }// end function

    }
}
