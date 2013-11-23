package com.kbmj.viking.view
{
    import flash.display.*;
    import mx.core.*;

    public class UIComponentSprite extends UIComponent
    {
        private var _sprite:Sprite;

        public function UIComponentSprite(param1:Sprite)
        {
            _sprite = new Sprite();
            _sprite = param1;
            return;
        }// end function

        public function set sprite(param1:Sprite) : void
        {
            _sprite = param1;
            return;
        }// end function

        override protected function createChildren() : void
        {
            super.createChildren();
            this.addChild(_sprite);
            return;
        }// end function

        public function get asSprite() : Sprite
        {
            return this._sprite;
        }// end function

    }
}
