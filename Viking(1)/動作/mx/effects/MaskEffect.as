package mx.effects
{
    import flash.events.*;
    import mx.core.*;
    import mx.effects.effectClasses.*;
    import mx.events.*;

    public class MaskEffect extends Effect
    {
        public var createMaskFunction:Function;
        public var xFrom:Number;
        public var yFrom:Number;
        public var scaleEasingFunction:Function;
        var persistAfterEnd:Boolean = false;
        public var moveEasingFunction:Function;
        public var scaleXFrom:Number;
        public var scaleYFrom:Number;
        public var xTo:Number;
        public var yTo:Number;
        private var _showExplicitlySet:Boolean = false;
        public var scaleXTo:Number;
        public var scaleYTo:Number;
        private var _showTarget:Boolean = true;
        static const VERSION:String = "3.4.1.10084";
        private static var AFFECTED_PROPERTIES:Array = ["visible"];

        public function MaskEffect(param1:Object = null)
        {
            super(param1);
            instanceClass = MaskEffectInstance;
            hideFocusRing = true;
            return;
        }// end function

        override protected function initInstance(param1:IEffectInstance) : void
        {
            var _loc_2:MaskEffectInstance = null;
            super.initInstance(param1);
            _loc_2 = MaskEffectInstance(param1);
            if (_showExplicitlySet)
            {
                _loc_2.showTarget = showTarget;
            }
            _loc_2.xFrom = xFrom;
            _loc_2.yFrom = yFrom;
            _loc_2.xTo = xTo;
            _loc_2.yTo = yTo;
            _loc_2.scaleXFrom = scaleXFrom;
            _loc_2.scaleXTo = scaleXTo;
            _loc_2.scaleYFrom = scaleYFrom;
            _loc_2.scaleYTo = scaleYTo;
            _loc_2.moveEasingFunction = moveEasingFunction;
            _loc_2.scaleEasingFunction = scaleEasingFunction;
            _loc_2.createMaskFunction = createMaskFunction;
            mx_internal::persistAfterEnd = mx_internal::persistAfterEnd;
            EventDispatcher(_loc_2).addEventListener(TweenEvent.TWEEN_START, tweenEventHandler);
            EventDispatcher(_loc_2).addEventListener(TweenEvent.TWEEN_UPDATE, tweenEventHandler);
            EventDispatcher(_loc_2).addEventListener(TweenEvent.TWEEN_END, tweenEventHandler);
            return;
        }// end function

        protected function tweenEventHandler(event:TweenEvent) : void
        {
            dispatchEvent(event);
            return;
        }// end function

        override public function set hideFocusRing(param1:Boolean) : void
        {
            super.hideFocusRing = param1;
            return;
        }// end function

        override public function get hideFocusRing() : Boolean
        {
            return super.hideFocusRing;
        }// end function

        public function set showTarget(param1:Boolean) : void
        {
            _showTarget = param1;
            _showExplicitlySet = true;
            return;
        }// end function

        public function get showTarget() : Boolean
        {
            return _showTarget;
        }// end function

        override public function getAffectedProperties() : Array
        {
            return AFFECTED_PROPERTIES;
        }// end function

    }
}
