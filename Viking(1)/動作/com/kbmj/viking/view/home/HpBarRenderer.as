package com.kbmj.viking.view.home
{
    import com.kbmj.viking.view.*;
    import com.kbmj.viking.vo.tactics.*;
    import flash.display.*;
    import mx.containers.*;
    import mx.core.*;
    import mx.events.*;

    public class HpBarRenderer extends Canvas
    {
        private const DAMAGE_RED:uint = 8519680;
        private const HP_GREEN:uint = 5285376;
        private var _documentDescriptor_:UIComponentDescriptor;
        private var _unitVO:UnitVO;
        private var _784565204miniHpBar:Canvas;
        private static const HP_BAR_HEIGHT:int = 5;
        private static const HP_BAR_WIDTH:int = 68;

        public function HpBarRenderer()
        {
            _documentDescriptor_ = new UIComponentDescriptor({type:Canvas, propertiesFactory:function () : Object
            {
                return {childDescriptors:[new UIComponentDescriptor({type:Canvas, id:"miniHpBar", propertiesFactory:function () : Object
                {
                    return {visible:false};
                }// end function
                })]};
            }// end function
            });
            mx_internal::_document = this;
            this.addEventListener("creationComplete", ___HpBarRenderer_Canvas1_creationComplete);
            return;
        }// end function

        public function get Unit() : UnitVO
        {
            return _unitVO;
        }// end function

        public function damageBar(param1:UnitVO) : UIComponentSprite
        {
            var _loc_2:* = new Sprite();
            _loc_2 = drawSprite(param1.loader.x + 4, param1.loader.y + 72, HP_BAR_WIDTH, HP_BAR_HEIGHT - 2, DAMAGE_RED);
            var _loc_3:* = new UIComponentSprite(_loc_2);
            return _loc_3;
        }// end function

        public function set Unit(param1:UnitVO) : void
        {
            _unitVO = param1;
            return;
        }// end function

        private function drawSprite(param1:int, param2:int, param3:int, param4:int, param5:uint) : Sprite
        {
            var _loc_6:* = new Sprite();
            new Sprite().graphics.beginFill(param5);
            _loc_6.graphics.drawRect(param1, param2, param3, param4);
            _loc_6.graphics.endFill();
            return _loc_6;
        }// end function

        public function HpBar(param1:UnitVO) : UIComponentSprite
        {
            var _loc_2:* = new Sprite();
            if (param1.hp > param1.realMaxHp)
            {
                param1.hp = param1.realMaxHp;
            }
            _loc_2 = drawSprite(param1.loader.x + 4, param1.loader.y + 72, HP_BAR_WIDTH * (param1.hp / param1.realMaxHp), HP_BAR_HEIGHT - 2, HP_GREEN);
            var _loc_3:* = new UIComponentSprite(_loc_2);
            return _loc_3;
        }// end function

        public function ___HpBarRenderer_Canvas1_creationComplete(event:FlexEvent) : void
        {
            init();
            return;
        }// end function

        public function set miniHpBar(param1:Canvas) : void
        {
            var _loc_2:* = this._784565204miniHpBar;
            if (_loc_2 !== param1)
            {
                this._784565204miniHpBar = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "miniHpBar", _loc_2, param1));
            }
            return;
        }// end function

        override public function initialize() : void
        {
            .mx_internal::setDocumentDescriptor(_documentDescriptor_);
            super.initialize();
            return;
        }// end function

        public function remove(param1:Canvas) : Canvas
        {
            if (param1)
            {
                while (param1.numChildren > 0)
                {
                    
                    param1.removeChildAt(0);
                }
            }
            return param1;
        }// end function

        private function init() : void
        {
            miniHpBar.x = _unitVO.loader.x;
            miniHpBar.y = _unitVO.loader.y;
            miniHpBar.width = HP_BAR_WIDTH;
            miniHpBar.height = HP_BAR_HEIGHT;
            miniHpBar.visible = false;
            return;
        }// end function

        public function get miniHpBar() : Canvas
        {
            return this._784565204miniHpBar;
        }// end function

    }
}
