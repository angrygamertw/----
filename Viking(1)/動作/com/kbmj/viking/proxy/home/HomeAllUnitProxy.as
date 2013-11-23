package com.kbmj.viking.proxy.home
{
    import com.kbmj.viking.proxy.*;
    import com.kbmj.viking.proxy.tactics.*;
    import com.kbmj.viking.view.home.*;
    import flash.display.*;
    import flash.events.*;
    import flash.geom.*;
    import mx.containers.*;
    import org.puremvc.as3.patterns.proxy.*;

    public class HomeAllUnitProxy extends Proxy
    {
        private var unitIconRenderer:UnitIconRenderer;
        private var unitIndexArray:Array;
        private var hpBarRenderer:HpBarRenderer;
        private var statusIconArray:Array;
        private var downIconArray:Array;
        private var levelUpIconArray:Array;
        private var homeAllUnit:HomeAllUnit;
        private var unitIndex:int = -1;
        private var dispatchDownIconRenderer:DispatchDownIconRenderer;
        private var levelUpIconRenderer:LevelUpIconRenderer;
        public static const NAME:String = "HomeAllUnitProxy";

        public function HomeAllUnitProxy()
        {
            homeAllUnit = new HomeAllUnit();
            unitIconRenderer = new UnitIconRenderer();
            levelUpIconRenderer = new LevelUpIconRenderer();
            dispatchDownIconRenderer = new DispatchDownIconRenderer();
            hpBarRenderer = new HpBarRenderer();
            unitIndexArray = new Array();
            levelUpIconArray = new Array();
            statusIconArray = new Array();
            downIconArray = new Array();
            super(NAME);
            return;
        }// end function

        public function handleIconEvents(event:Event) : void
        {
            var _loc_2:* = UnitProxy(facade.retrieveProxy(UnitProxy.NAME));
            switch(event.type)
            {
                case "CLOSE":
                {
                    if (unitIndex == -1)
                    {
                        break;
                    }
                    MovieClip(_loc_2.homeUnits[unitIndex].loader.contentLoaderInfo.content).gotoAndStop("item_f_l");
                    unitIndex = -1;
                    break;
                }
                default:
                {
                    break;
                }
            }
            return;
        }// end function

        public function setAllUnit() : void
        {
            unitIndexArray = new Array();
            unitIndex = -1;
            var unitProxy:* = UnitProxy(facade.retrieveProxy(UnitProxy.NAME));
            var animationProxy:* = AnimationProxy(facade.retrieveProxy(AnimationProxy.NAME));
            var position:* = new Point();
            resetIcon();
            var i:int;
            while (i < unitProxy.homeUnits.length)
            {
                
                position = getPosition(i);
                unitProxy.homeUnits[i].loader.x = position.x;
                unitProxy.homeUnits[i].loader.y = position.y;
                unitProxy.homeUnits[i].loader.contentLoaderInfo.addEventListener(Event.COMPLETE, function (event:Event) : void
            {
                var _loc_2:* = LoaderInfo(event.target);
                MovieClip(_loc_2.content).gotoAndStop("item_f_l");
                return;
            }// end function
            );
                unitProxy.homeUnits[i].loader.loadBytes(animationProxy.getUnitAnimation(unitProxy.homeUnits[i].jobMasterVO.code, unitProxy.homeUnits[i].gender));
                unitProxy.homeUnits[i].loader.addEventListener(MouseEvent.CLICK, handleMouseEvent);
                unitProxy.homeUnits[i].loader.addEventListener(MouseEvent.MOUSE_OVER, handleMouseEvent);
                unitProxy.homeUnits[i].loader.addEventListener(MouseEvent.MOUSE_OUT, handleMouseEvent);
                unitProxy.homeUnits[i].uic.toolTip = unitProxy.homeUnits[i].downExpiredAtLabelForTooltip;
                if (unitProxy.homeUnits[i].uic.contains(unitProxy.homeUnits[i].loader))
                {
                    unitProxy.homeUnits[i].uic.addChild(unitProxy.homeUnits[i].loader);
                }
                setUnitIcon(i);
                addUnit(i, unitProxy.homeUnits[i].uic);
                unitIndexArray.push(unitProxy.homeUnits[i].loader);
                i = (i + 1);
            }
            homeAllUnit.setUnitCount(unitProxy.homeUnits.length);
            return;
        }// end function

        private function addUnit(param1:int, param2:DisplayObject) : void
        {
            var _loc_3:* = getUnitCanvas((int(param1 / 15) + 1));
            _loc_3.addChild(param2);
            return;
        }// end function

        private function removeAllUnitHpBar() : void
        {
            var _loc_2:Canvas = null;
            var _loc_1:int = 0;
            while (_loc_1 < 10)
            {
                
                _loc_2 = getUnitHpCanvas((_loc_1 + 1));
                _loc_2.removeAllChildren();
                _loc_1++;
            }
            return;
        }// end function

        public function setHomeAllUnits() : Array
        {
            unitIndexArray = new Array();
            unitIndex = -1;
            var unitUicArray:* = new Array();
            var unitProxy:* = UnitProxy(facade.retrieveProxy(UnitProxy.NAME));
            var animationProxy:* = AnimationProxy(facade.retrieveProxy(AnimationProxy.NAME));
            var position:* = new Point();
            resetIcon();
            var i:int;
            while (i < unitProxy.homeUnits.length)
            {
                
                position = getPosition(i);
                unitProxy.homeUnits[i].loader.x = position.x;
                unitProxy.homeUnits[i].loader.y = position.y;
                unitProxy.homeUnits[i].loader.contentLoaderInfo.addEventListener(Event.COMPLETE, function (event:Event) : void
            {
                var _loc_2:* = LoaderInfo(event.target);
                MovieClip(_loc_2.content).gotoAndStop("item_f_l");
                return;
            }// end function
            );
                unitProxy.homeUnits[i].loader.loadBytes(animationProxy.getUnitAnimation(unitProxy.homeUnits[i].jobMasterVO.code, unitProxy.homeUnits[i].gender));
                unitProxy.homeUnits[i].loader.addEventListener(MouseEvent.CLICK, handleMouseEvent);
                unitProxy.homeUnits[i].loader.addEventListener(MouseEvent.MOUSE_OVER, handleMouseEvent);
                unitProxy.homeUnits[i].loader.addEventListener(MouseEvent.MOUSE_OUT, handleMouseEvent);
                unitProxy.homeUnits[i].uic.toolTip = unitProxy.homeUnits[i].downExpiredAtLabelForTooltip;
                unitProxy.homeUnits[i].uic.addChild(unitProxy.homeUnits[i].loader);
                unitUicArray.push(unitProxy.homeUnits[i].uic);
                unitIndexArray.push(unitProxy.homeUnits[i].loader);
                i = (i + 1);
            }
            return unitUicArray;
        }// end function

        private function getUnitIconCanvas(param1:int) : Canvas
        {
            return homeAllUnit["iconCanvas" + param1.toString()] as Canvas;
        }// end function

        public function resetAllUnitView() : void
        {
            trace("reset all unit view");
            var _loc_1:* = UnitProxy(facade.retrieveProxy(UnitProxy.NAME));
            var _loc_2:int = 0;
            while (_loc_2 < _loc_1.homeUnits.length)
            {
                
                _loc_1.homeUnits[_loc_2].loader.removeEventListener(MouseEvent.CLICK, handleMouseEvent);
                _loc_1.homeUnits[_loc_2].loader.removeEventListener(MouseEvent.MOUSE_OVER, handleMouseEvent);
                _loc_1.homeUnits[_loc_2].loader.removeEventListener(MouseEvent.MOUSE_OUT, handleMouseEvent);
                _loc_1.homeUnits[_loc_2].uic.toolTip = "";
                _loc_2++;
            }
            removeAllUnit();
            unitIndexArray = new Array();
            unitIndex = -1;
            removeAllUnitHpBar();
            return;
        }// end function

        private function getUnitHpCanvas(param1:int) : Canvas
        {
            return homeAllUnit["hpBarCanvas" + param1.toString()] as Canvas;
        }// end function

        private function getPosition(param1:int) : Point
        {
            var _loc_2:* = new Point(0, 0);
            if (param1 % 15 < 5)
            {
                _loc_2.y = 30;
            }
            else if (param1 % 15 < 10)
            {
                _loc_2.y = 120;
            }
            else if (param1 % 15 < 15)
            {
                _loc_2.y = 210;
            }
            _loc_2.x = param1 % 5 * 110 + 125;
            return _loc_2;
        }// end function

        override public function onRegister() : void
        {
            return;
        }// end function

        private function addUnitIcon(param1:int, param2:DisplayObject) : void
        {
            var _loc_3:* = getUnitIconCanvas((int(param1 / 15) + 1));
            _loc_3.addChild(param2);
            return;
        }// end function

        private function removeAllUnit() : void
        {
            var _loc_2:Canvas = null;
            var _loc_1:int = 0;
            while (_loc_1 < 10)
            {
                
                _loc_2 = getUnitCanvas((_loc_1 + 1));
                _loc_2.removeAllChildren();
                _loc_1++;
            }
            return;
        }// end function

        private function addUnitHpBar(param1:int, param2:DisplayObject) : void
        {
            var _loc_3:* = getUnitHpCanvas((int(param1 / 15) + 1));
            _loc_3.addChild(param2);
            return;
        }// end function

        private function resetIcon() : void
        {
            removeAllUnitIcon();
            levelUpIconArray = new Array();
            statusIconArray = new Array();
            downIconArray = new Array();
            return;
        }// end function

        private function getUnitCanvas(param1:int) : Canvas
        {
            return homeAllUnit["unitsCanvas" + param1.toString()] as Canvas;
        }// end function

        public function resetHpBar() : void
        {
            var _loc_1:* = UnitProxy(facade.retrieveProxy(UnitProxy.NAME));
            hpBarRenderer = new HpBarRenderer();
            var _loc_2:int = 0;
            while (_loc_2 < 10)
            {
                
                hpBarRenderer.remove(getUnitHpCanvas((_loc_2 + 1)));
                _loc_2++;
            }
            if (getUnitHpCanvas(1))
            {
                _loc_2 = 0;
                while (_loc_2 < _loc_1.homeUnits.length)
                {
                    
                    addUnitHpBar(_loc_2, hpBarRenderer.damageBar(_loc_1.homeUnits[_loc_2]));
                    addUnitHpBar(_loc_2, hpBarRenderer.HpBar(_loc_1.homeUnits[_loc_2]));
                    _loc_2++;
                }
            }
            return;
        }// end function

        public function allUnitInitialize(param1:HomeAllUnit) : void
        {
            homeAllUnit = param1;
            return;
        }// end function

        private function setUnitIcon(param1:int) : void
        {
            var _loc_2:* = UnitProxy(facade.retrieveProxy(UnitProxy.NAME));
            unitIconRenderer = new UnitIconRenderer();
            if (unitIconRenderer.unitStatusIcon(_loc_2.homeUnits[param1]))
            {
                addUnitIcon(param1, unitIconRenderer);
                statusIconArray.push(unitIconRenderer);
            }
            levelUpIconRenderer = new LevelUpIconRenderer();
            _loc_2.homeUnits[param1].canLevelUp = false;
            if (levelUpIconRenderer.unitStatusIcon(_loc_2.homeUnits[param1]) && _loc_2.homeUnits[param1].level < _loc_2.homeUnits[param1].jobMasterVO.levelCap)
            {
                addUnitIcon(param1, levelUpIconRenderer);
                _loc_2.homeUnits[param1].canLevelUp = true;
                levelUpIconArray.push(levelUpIconRenderer);
            }
            dispatchDownIconRenderer = new DispatchDownIconRenderer();
            if (dispatchDownIconRenderer.unitStatusIcon(_loc_2.homeUnits[param1]))
            {
                addUnitIcon(param1, dispatchDownIconRenderer);
                downIconArray.push(dispatchDownIconRenderer);
            }
            hpBarRenderer = new HpBarRenderer();
            addUnitHpBar(param1, hpBarRenderer.damageBar(_loc_2.homeUnits[param1]));
            addUnitHpBar(param1, hpBarRenderer.HpBar(_loc_2.homeUnits[param1]));
            return;
        }// end function

        private function removeAllUnitIcon() : void
        {
            var _loc_2:Canvas = null;
            var _loc_1:int = 0;
            while (_loc_1 < 10)
            {
                
                _loc_2 = getUnitIconCanvas((_loc_1 + 1));
                _loc_2.removeAllChildren();
                _loc_1++;
            }
            return;
        }// end function

        private function handleMouseEvent(event:Event) : void
        {
            var _loc_2:* = unitIndexArray.indexOf(event.target);
            var _loc_3:* = UnitProxy(facade.retrieveProxy(UnitProxy.NAME));
            var _loc_4:* = SakuraProxy(facade.retrieveProxy(SakuraProxy.NAME));
            if (SakuraProxy(facade.retrieveProxy(SakuraProxy.NAME)).sakura != homeAllUnit.sakura)
            {
                return;
            }
            switch(event.type)
            {
                case MouseEvent.CLICK:
                {
                    break;
                }
                case MouseEvent.MOUSE_OVER:
                {
                    if (_loc_2 == unitIndex)
                    {
                        break;
                    }
                    if (unitIndex != -1)
                    {
                        MovieClip(_loc_3.homeUnits[unitIndex].loader.contentLoaderInfo.content).gotoAndStop("item_f_l");
                    }
                    MovieClip(_loc_3.homeUnits[_loc_2].loader.contentLoaderInfo.content).gotoAndPlay("walk_f_l");
                    homeAllUnit.commandWindowOpen(_loc_3.homeUnits[_loc_2]);
                    unitIndex = _loc_2;
                    break;
                }
                default:
                {
                    break;
                }
            }
            return;
        }// end function

    }
}
