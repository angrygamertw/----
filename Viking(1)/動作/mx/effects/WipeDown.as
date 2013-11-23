package mx.effects
{
    import mx.effects.effectClasses.*;

    public class WipeDown extends MaskEffect
    {
        static const VERSION:String = "3.4.1.10084";

        public function WipeDown(param1:Object = null)
        {
            super(param1);
            instanceClass = WipeDownInstance;
            return;
        }// end function

    }
}
