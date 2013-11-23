package mx.effects.effectClasses
{
    import flash.display.*;
    import flash.events.*;
    import flash.geom.*;
    import flash.utils.*;
    import mx.controls.*;
    import mx.core.*;
    import mx.effects.*;
    import mx.events.*;

    public class MaskEffectInstance extends EffectInstance
    {
        private var useSnapshotBounds:Boolean = true;
        public var scaleEasingFunction:Function;
        public var xTo:Number;
        private var _showTarget:Boolean = true;
        private var stoppedEarly:Boolean = false;
        public var scaleXFrom:Number;
        public var scaleYFrom:Number;
        protected var effectMask:Shape;
        private var _createMaskFunction:Function;
        private var moveTween:Tween;
        public var scaleYTo:Number;
        private var scaleTween:Tween;
        public var xFrom:Number;
        public var yFrom:Number;
        public var targetArea:Rectangle;
        protected var targetVisualBounds:Rectangle;
        private var invalidateBorder:Boolean = false;
        private var origMask:DisplayObject;
        private var currentMoveTweenValue:Object;
        private var dispatchedStartEvent:Boolean = false;
        var persistAfterEnd:Boolean = false;
        public var moveEasingFunction:Function;
        public var yTo:Number;
        private var _showExplicitlySet:Boolean = false;
        public var scaleXTo:Number;
        private var tweenCount:int = 0;
        private var origScrollRect:Rectangle;
        private var currentScaleTweenValue:Object;
        private var effectMaskRefCount:Number = 0;
        private var MASK_NAME:String = "_maskEffectMask";
        static const VERSION:String = "3.4.1.10084";

        public function MaskEffectInstance(param1:Object)
        {
            super(param1);
            return;
        }// end function

        override public function get playheadTime() : Number
        {
            var _loc_1:Number = NaN;
            if (moveTween)
            {
                _loc_1 = moveTween.playheadTime;
            }
            else if (scaleTween)
            {
                _loc_1 = scaleTween.playheadTime;
            }
            else
            {
                return 0;
            }
            return _loc_1 + super.playheadTime;
        }// end function

        public function set createMaskFunction(param1:Function) : void
        {
            _createMaskFunction = param1;
            return;
        }// end function

        override public function stop() : void
        {
            stoppedEarly = true;
            super.stop();
            if (moveTween)
            {
                moveTween.stop();
            }
            if (scaleTween)
            {
                scaleTween.stop();
            }
            return;
        }// end function

        override public function finishEffect() : void
        {
            target.removeEventListener(ResizeEvent.RESIZE, eventHandler);
            if (!persistAfterEnd && !stoppedEarly)
            {
                removeMask();
            }
            super.finishEffect();
            return;
        }// end function

        private function removeMask() : void
        {
            if (--effectMaskRefCount == 0)
            {
                if (origMask == null || origMask && origMask.name != MASK_NAME)
                {
                    target.mask = origMask;
                }
                if (origScrollRect)
                {
                    target.scrollRect = origScrollRect;
                }
                if (target is Container)
                {
                    target.rawChildren.removeChild(effectMask);
                }
                else
                {
                    target.removeChild(effectMask);
                }
                effectMask = null;
            }
            return;
        }// end function

        private function initMask() : void
        {
            if (!effectMask)
            {
                if (useSnapshotBounds)
                {
                    targetVisualBounds = getVisibleBounds(DisplayObject(target));
                }
                else
                {
                    targetVisualBounds = new Rectangle(0, 0, target.width, target.height);
                }
                effectMask = createMaskFunction(target, targetVisualBounds);
                if (target is Container)
                {
                    target.rawChildren.addChild(effectMask);
                }
                else
                {
                    target.addChild(effectMask);
                }
                effectMask.name = MASK_NAME;
                effectMaskRefCount = 0;
            }
            effectMask.x = 0;
            effectMask.y = 0;
            effectMask.alpha = 0.3;
            effectMask.visible = false;
            if (effectMaskRefCount++ == 0)
            {
                if (target.mask)
                {
                    origMask = target.mask;
                }
                target.mask = effectMask;
                if (target.scrollRect)
                {
                    origScrollRect = target.scrollRect;
                    target.scrollRect = null;
                }
            }
            invalidateBorder = target is Container && Container(target).border != null && Container(target).border is IInvalidating && DisplayObject(Container(target).border).filters != null;
            return;
        }// end function

        protected function onMoveTweenUpdate(param1:Object) : void
        {
            saveTweenValue(param1, null);
            if (effectMask)
            {
                effectMask.x = param1[0];
                effectMask.y = param1[1];
            }
            if (invalidateBorder)
            {
                IInvalidating(Container(target).border).invalidateDisplayList();
            }
            return;
        }// end function

        private function finishTween() : void
        {
            var _loc_1:Array = null;
            var _loc_2:Object = null;
            if (tweenCount == 0 || --tweenCount == 0)
            {
                EffectManager.endVectorEffect(IUIComponent(target));
                _loc_1 = [];
                if (moveTween)
                {
                    _loc_2 = moveTween.getCurrentValue(duration);
                    _loc_1.push(_loc_2[0]);
                    _loc_1.push(_loc_2[1]);
                }
                else
                {
                    _loc_1.push(null);
                    _loc_1.push(null);
                }
                if (scaleTween)
                {
                    _loc_2 = scaleTween.getCurrentValue(duration);
                    _loc_1.push(_loc_2[0]);
                    _loc_1.push(_loc_2[1]);
                }
                else
                {
                    _loc_1.push(null);
                    _loc_1.push(null);
                }
                dispatchEvent(new TweenEvent(TweenEvent.TWEEN_END, false, false, _loc_1));
                finishRepeat();
            }
            return;
        }// end function

        override public function startEffect() : void
        {
            initMask();
            target.addEventListener(ResizeEvent.RESIZE, eventHandler);
            super.startEffect();
            return;
        }// end function

        public function get createMaskFunction() : Function
        {
            return _createMaskFunction != null ? (_createMaskFunction) : (defaultCreateMask);
        }// end function

        protected function defaultCreateMask(param1:Object, param2:Rectangle) : Shape
        {
            var _loc_7:Number = NaN;
            var _loc_8:Number = NaN;
            var _loc_9:Number = NaN;
            var _loc_3:* = param2.width / Math.abs(param1.scaleX);
            var _loc_4:* = param2.height / Math.abs(param1.scaleY);
            if (param1 is SWFLoader)
            {
                param1.validateDisplayList();
                if (param1.content)
                {
                    _loc_3 = param1.contentWidth;
                    _loc_4 = param1.contentHeight;
                }
            }
            var _loc_5:* = new FlexShape();
            var _loc_6:* = new FlexShape().graphics;
            new FlexShape().graphics.beginFill(16776960);
            _loc_6.drawRect(0, 0, _loc_3, _loc_4);
            _loc_6.endFill();
            if (target.rotation == 0)
            {
                _loc_5.width = _loc_3;
                _loc_5.height = _loc_4;
            }
            else
            {
                _loc_7 = param1.rotation * Math.PI / 180;
                _loc_8 = Math.sin(_loc_7);
                _loc_9 = Math.cos(_loc_7);
                _loc_5.width = Math.abs(_loc_3 * _loc_9 - _loc_4 * _loc_8);
                _loc_5.height = Math.abs(_loc_3 * _loc_8 + _loc_4 * _loc_9);
            }
            return _loc_5;
        }// end function

        private function saveTweenValue(param1:Object, param2:Object) : void
        {
            var _loc_3:Array = null;
            if (param1 != null)
            {
                currentMoveTweenValue = param1;
            }
            else if (param2 != null)
            {
                currentScaleTweenValue = param2;
            }
            if ((moveTween == null || currentMoveTweenValue != null) && (scaleTween == null || currentScaleTweenValue != null))
            {
                _loc_3 = [];
                if (currentMoveTweenValue)
                {
                    _loc_3.push(currentMoveTweenValue[0]);
                    _loc_3.push(currentMoveTweenValue[1]);
                }
                else
                {
                    _loc_3.push(null);
                    _loc_3.push(null);
                }
                if (currentScaleTweenValue)
                {
                    _loc_3.push(currentScaleTweenValue[0]);
                    _loc_3.push(currentScaleTweenValue[1]);
                }
                else
                {
                    _loc_3.push(null);
                    _loc_3.push(null);
                }
                if (!dispatchedStartEvent)
                {
                    dispatchEvent(new TweenEvent(TweenEvent.TWEEN_START));
                    dispatchedStartEvent = true;
                }
                dispatchEvent(new TweenEvent(TweenEvent.TWEEN_UPDATE, false, false, _loc_3));
                currentMoveTweenValue = null;
                currentScaleTweenValue = null;
            }
            return;
        }// end function

        override function set playReversed(param1:Boolean) : void
        {
            if (moveTween)
            {
                moveTween.playReversed = param1;
            }
            if (scaleTween)
            {
                scaleTween.playReversed = param1;
            }
            super.playReversed = param1;
            return;
        }// end function

        override public function play() : void
        {
            super.play();
            initMaskEffect();
            EffectManager.startVectorEffect(IUIComponent(target));
            if (!isNaN(xFrom) && !isNaN(yFrom) && !isNaN(xTo) && !isNaN(yTo))
            {
                var _loc_2:* = tweenCount + 1;
                tweenCount = _loc_2;
                moveTween = new Tween(this, [xFrom, yFrom], [xTo, yTo], duration, -1, onMoveTweenUpdate, onMoveTweenEnd);
                moveTween.playReversed = playReversed;
                if (moveEasingFunction != null)
                {
                    moveTween.easingFunction = moveEasingFunction;
                }
            }
            if (!isNaN(scaleXFrom) && !isNaN(scaleYFrom) && !isNaN(scaleXTo) && !isNaN(scaleYTo))
            {
                var _loc_2:* = tweenCount + 1;
                tweenCount = _loc_2;
                scaleTween = new Tween(this, [scaleXFrom, scaleYFrom], [scaleXTo, scaleYTo], duration, -1, onScaleTweenUpdate, onScaleTweenEnd);
                scaleTween.playReversed = playReversed;
                if (scaleEasingFunction != null)
                {
                    scaleTween.easingFunction = scaleEasingFunction;
                }
            }
            dispatchedStartEvent = false;
            if (moveTween)
            {
                onMoveTweenUpdate(moveTween.getCurrentValue(0));
            }
            if (scaleTween)
            {
                onScaleTweenUpdate(scaleTween.getCurrentValue(0));
            }
            return;
        }// end function

        override public function resume() : void
        {
            super.resume();
            if (moveTween)
            {
                moveTween.resume();
            }
            if (scaleTween)
            {
                scaleTween.resume();
            }
            return;
        }// end function

        private function getVisibleBounds(param1:DisplayObject) : Rectangle
        {
            var _loc_2:* = new BitmapData(param1.width + 200, param1.height + 200, true, 0);
            var _loc_3:* = new Matrix();
            _loc_3.translate(100, 100);
            _loc_2.draw(param1, _loc_3);
            var _loc_4:* = _loc_2.getColorBoundsRect(4278190080, 0, false);
            _loc_2.getColorBoundsRect(4278190080, 0, false).x = _loc_2.getColorBoundsRect(4278190080, 0, false).x - 100;
            _loc_4.y = _loc_4.y - 100;
            _loc_2.dispose();
            if (_loc_4.width < param1.width)
            {
                _loc_4.width = param1.width;
                _loc_4.x = 0;
            }
            if (_loc_4.height < param1.height)
            {
                _loc_4.height = param1.height;
                _loc_4.y = 0;
            }
            return _loc_4;
        }// end function

        override public function initEffect(event:Event) : void
        {
            super.initEffect(event);
            switch(event.type)
            {
                case "childrenCreationComplete":
                case FlexEvent.CREATION_COMPLETE:
                case FlexEvent.SHOW:
                case Event.ADDED:
                case "resizeEnd":
                {
                    showTarget = true;
                    break;
                }
                case FlexEvent.HIDE:
                case Event.REMOVED:
                case "resizeStart":
                {
                    showTarget = false;
                    break;
                }
                case Event.RESIZE:
                {
                    useSnapshotBounds = false;
                    break;
                }
                default:
                {
                    break;
                }
            }
            return;
        }// end function

        public function set showTarget(param1:Boolean) : void
        {
            _showTarget = param1;
            _showExplicitlySet = true;
            return;
        }// end function

        protected function onScaleTweenEnd(param1:Object) : void
        {
            onScaleTweenUpdate(param1);
            finishTween();
            return;
        }// end function

        override function eventHandler(event:Event) : void
        {
            var _loc_2:Tween = null;
            var _loc_3:Number = NaN;
            super.eventHandler(event);
            if (event.type == ResizeEvent.RESIZE)
            {
                _loc_2 = moveTween;
                if (!_loc_2 && scaleTween)
                {
                    _loc_2 = scaleTween;
                }
                if (_loc_2)
                {
                    _loc_3 = getTimer() - _loc_2.startTime;
                    if (moveTween)
                    {
                        Tween.removeTween(moveTween);
                    }
                    if (scaleTween)
                    {
                        Tween.removeTween(scaleTween);
                    }
                    tweenCount = 0;
                    removeMask();
                    initMask();
                    play();
                    if (moveTween)
                    {
                        moveTween.startTime = moveTween.startTime - _loc_3;
                        moveTween.doInterval();
                    }
                    if (scaleTween)
                    {
                        scaleTween.startTime = scaleTween.startTime - _loc_3;
                        scaleTween.doInterval();
                    }
                }
            }
            return;
        }// end function

        protected function onMoveTweenEnd(param1:Object) : void
        {
            onMoveTweenUpdate(param1);
            finishTween();
            return;
        }// end function

        override public function reverse() : void
        {
            super.reverse();
            if (moveTween)
            {
                moveTween.reverse();
            }
            if (scaleTween)
            {
                scaleTween.reverse();
            }
            super.playReversed = !playReversed;
            return;
        }// end function

        override public function end() : void
        {
            stopRepeat = true;
            if (moveTween)
            {
                moveTween.endTween();
            }
            if (scaleTween)
            {
                scaleTween.endTween();
            }
            return;
        }// end function

        protected function initMaskEffect() : void
        {
            if (!_showExplicitlySet && propertyChanges && propertyChanges.start["visible"] !== undefined)
            {
                _showTarget = !propertyChanges.start["visible"];
            }
            return;
        }// end function

        protected function onScaleTweenUpdate(param1:Object) : void
        {
            saveTweenValue(null, param1);
            if (effectMask)
            {
                effectMask.scaleX = param1[0];
                effectMask.scaleY = param1[1];
            }
            return;
        }// end function

        public function get showTarget() : Boolean
        {
            return _showTarget;
        }// end function

        override public function pause() : void
        {
            super.pause();
            if (moveTween)
            {
                moveTween.pause();
            }
            if (scaleTween)
            {
                scaleTween.pause();
            }
            return;
        }// end function

    }
}
