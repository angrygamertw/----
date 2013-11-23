package mx.effects
{
    import mx.effects.effectClasses.*;

    public class WipeUp extends MaskEffect
    {
        static const VERSION:String = "3.4.1.10084";

        public function WipeUp(param1:Object = null)
        {
            super(param1);
            instanceClass = WipeUpInstance;
            return;
        }// end function

    }
}
