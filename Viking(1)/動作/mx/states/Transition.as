package mx.states
{
    import mx.effects.*;

    public class Transition extends Object
    {
        public var effect:IEffect;
        public var toState:String = "*";
        public var fromState:String = "*";
        static const VERSION:String = "3.4.1.10084";

        public function Transition()
        {
            return;
        }// end function

    }
}
