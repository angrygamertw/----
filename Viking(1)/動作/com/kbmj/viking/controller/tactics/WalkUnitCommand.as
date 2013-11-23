package com.kbmj.viking.controller.tactics
{
    import caurina.transitions.*;
    import com.kbmj.viking.lib.*;
    import com.kbmj.viking.proxy.*;
    import com.kbmj.viking.proxy.tactics.*;
    import com.kbmj.viking.vo.tactics.*;
    import flash.geom.*;
    import org.puremvc.as3.interfaces.*;
    import org.puremvc.as3.patterns.command.*;

    public class WalkUnitCommand extends SimpleCommand
    {
        private var lastDirection:int;
        private var route:Array;
        private static const WALK_SPEED:int = 8;
        private static const WALK_FAST:int = 2;
        public static const WALK_FINISHED:String = NAME + "/notes/walkFinished";
        public static const PERMUTE_MAP_OBJECT:String = NAME + "/notes/permuteMapObjects";
        public static const NAME:String = "WalkUnitCommand";

        public function WalkUnitCommand()
        {
            lastDirection = new int(0);
            return;
        }// end function

        private function motionTween(param1:UnitVO, param2:Array) : void
        {
            var animationProxy:AnimationProxy;
            var unit:* = param1;
            var rt:* = param2;
            var p:* = new Point();
            p = rt.shift();
            if (!p)
            {
                animationProxy = AnimationProxy(facade.retrieveProxy(AnimationProxy.NAME));
                animationProxy.changeAnime(unit, "walk", function () : void
            {
                sendNotification(WALK_FINISHED, unit);
                return;
            }// end function
            , null);
            }
            else
            {
                unit.transitionalMapx = p.x;
                unit.transitionalMapy = p.y;
                changeVecter(unit, UnitProxy.unitRevisePoint(unit, Utils.indexToPoint(p.x, p.y)));
            }
            sendNotification(PERMUTE_MAP_OBJECT);
            return;
        }// end function

        override public function execute(param1:INotification) : void
        {
            var _loc_2:* = param1.getBody() as WalkVO;
            var _loc_3:* = AnimationProxy(facade.retrieveProxy(AnimationProxy.NAME));
            if (_loc_2.unit.mapx == _loc_2.unit.oldmapx && _loc_2.unit.mapy == _loc_2.unit.oldmapy)
            {
                _loc_2.unit.destination = _loc_2.unit.position;
                sendNotification(WalkUnitCommand.WALK_FINISHED, _loc_2.unit);
                return;
            }
            _loc_2.route.shift();
            lastDirection = _loc_2.unit.direction;
            route = _loc_2.route;
            _loc_3.changeAnime(_loc_2.unit, "walk", null, null);
            motionTween(_loc_2.unit, _loc_2.route);
            return;
        }// end function

        private function changeVecter(param1:UnitVO, param2:Point) : void
        {
            var walk_speed:int;
            var unit:* = param1;
            var dest:* = param2;
            var configProxy:* = ConfigProxy(facade.retrieveProxy(ConfigProxy.NAME));
            walk_speed = WALK_SPEED;
            if (configProxy.configVO.fast)
            {
                walk_speed = WALK_FAST;
            }
            var srcPoint:* = new Point(unit.loader.x, unit.loader.y);
            var dir:* = Utils.getDirection(srcPoint, dest);
            unit.direction = dir;
            var animationProxy:* = AnimationProxy(facade.retrieveProxy(AnimationProxy.NAME));
            if (unit.direction == lastDirection)
            {
                lastDirection = unit.direction;
                Tweener.addTween(unit.loader, {x:dest.x, y:dest.y, useFrames:true, transition:"linear", time:walk_speed, onComplete:function () : void
            {
                motionTween(unit, route);
                return;
            }// end function
            });
            }
            else
            {
                lastDirection = unit.direction;
                animationProxy.changeAnime(unit, "walk", function () : void
            {
                Tweener.addTween(unit.loader, {x:dest.x, y:dest.y, useFrames:true, transition:"linear", time:walk_speed, onComplete:function () : void
                {
                    motionTween(unit, route);
                    return;
                }// end function
                });
                return;
            }// end function
            , null);
            }
            return;
        }// end function

    }
}
