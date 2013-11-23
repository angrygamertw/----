package mx.effects.effectClasses
{
    import mx.controls.*;

    public class WipeDownInstance extends MaskEffectInstance
    {
        static const VERSION:String = "3.4.1.10084";

        public function WipeDownInstance(param1:Object)
        {
            super(param1);
            return;
        }// end function

        override protected function initMaskEffect() : void
        {
            var _loc_2:Number = NaN;
            super.initMaskEffect();
            var _loc_1:* = target is SWFLoader && target.content ? (SWFLoader(target).contentHeight) : (targetVisualBounds.height / Math.abs(target.scaleY));
            if (target.rotation != 0)
            {
                _loc_2 = target.rotation * Math.PI / 180;
                _loc_1 = Math.abs(targetVisualBounds.width * Math.sin(_loc_2) + targetVisualBounds.height * Math.cos(_loc_2));
            }
            if (showTarget)
            {
                xFrom = targetVisualBounds.x;
                yFrom = -effectMask.height + targetVisualBounds.y;
                xTo = targetVisualBounds.x;
                yTo = effectMask.height <= _loc_1 ? (_loc_1 - effectMask.height + targetVisualBounds.y) : (targetVisualBounds.y);
            }
            else
            {
                xFrom = targetVisualBounds.x;
                yFrom = effectMask.height <= _loc_1 ? (targetVisualBounds.y) : (_loc_1 - effectMask.height + targetVisualBounds.y);
                xTo = targetVisualBounds.x;
                yTo = _loc_1 + targetVisualBounds.y;
            }
            return;
        }// end function

    }
}
