package com.kbmj.viking.lib
{
    import com.hurlant.crypto.*;
    import com.hurlant.crypto.hash.*;
    import com.hurlant.util.*;
    import com.kbmj.viking.proxy.*;
    import com.kbmj.viking.proxy.tactics.*;
    import com.kbmj.viking.view.allMap.*;
    import com.kbmj.viking.view.tactics.*;
    import com.kbmj.viking.vo.*;
    import com.kbmj.viking.vo.allMap.*;
    import com.kbmj.viking.vo.home.*;
    import com.kbmj.viking.vo.tactics.*;
    import flash.display.*;
    import flash.geom.*;
    import flash.utils.*;
    import mx.resources.*;
    import mx.utils.*;

    public class Utils extends Object
    {
        private static const TEMPLATE_FOR_FORT:String = "建築&nbsp;&gt;&gt;&nbsp;<font color=\"#bb6090\">{0}</font><br/>&nbsp;&nbsp;<font color=\"#2d44a7\">{1}</font>{2}{3}中<br/>";
        private static const TEMPLATE_FOR_GATHERING:String = "{0}&nbsp;&gt;&gt;&nbsp;<font color=\'#bb6090\'>{1}</font><br/>&nbsp;&nbsp;<font color=\'#2d44a7\'>{2}</font>{3}中({4}回)<br/>";
        private static const TEMPLATE_FOR_CONSTRUCTION:String = "研究&nbsp;&gt;&gt;&nbsp;<font color=\"#bb6090\">{0}</font><br/>&nbsp;&nbsp;<font color=\"#2d44a7\">{1}</font>{2}Lv{3}{4}<br/>";
        public static const GATHERING_LABELS_1:Object = {hunting:"採掘", logging:"採掘", mining:"採掘", quarrying:"採掘", training:"修行", collecting:"採掘"};
        public static const GATHERING_LABELS_2:Object = {hunting:"地採掘", logging:"火採掘", mining:"水採掘", quarrying:"銀採掘", training:"修行", collecting:"收菜"};
        private static const TEMPLATE_FOR_LEVEL_UP:String = "開拓&nbsp;&gt;&gt;&nbsp;<font color=\"#bb6090\">{0}</font><br/>&nbsp;&nbsp;<font color=\"#2d44a7\">{1}</font>{2}Lv{3}({4},{5}){6}<br/>";
        public static const FORT_LABELS:Object = {found:"建築", repair:"修補"};

        public function Utils()
        {
            return;
        }// end function

        public static function i18n(param1:String, ... args) : String
        {
            args = new Array();
            var _loc_4:String = "Application";
            var _loc_5:int = 0;
            while (_loc_5 < args.length)
            {
                
                if (typeof(args[_loc_5]) == "Object")
                {
                    if (args[_loc_5].file)
                    {
                        _loc_4 = args[_loc_5].file;
                    }
                }
                else
                {
                    args.push(args[_loc_5]);
                }
                _loc_5++;
            }
            return StringUtil.substitute(ResourceManager.getInstance().getString(_loc_4, param1), args);
        }// end function

        public static function xRandomInt(param1:int, param2:int) : int
        {
            if ("number" != "number")
            {
                param2 = 1;
            }
            var _loc_3:* = Math.max(param1, param2);
            var _loc_4:* = Math.min(param1, param2);
            var _loc_5:* = Math.floor(Math.random() * (_loc_3 - _loc_4 + 1)) + _loc_4;
            return Math.floor(Math.random() * (_loc_3 - _loc_4 + 1)) + _loc_4;
        }// end function

        private static function createFootPrint() : Array
        {
            var _loc_3:int = 0;
            var _loc_1:* = new Array(TacticsProxy.COLS);
            var _loc_2:int = 0;
            while (_loc_2 < TacticsProxy.COLS)
            {
                
                _loc_1[_loc_2] = new Array(TacticsProxy.ROWS);
                _loc_3 = 0;
                while (_loc_3 < TacticsProxy.ROWS)
                {
                    
                    _loc_1[_loc_2][_loc_3] = null;
                    _loc_3++;
                }
                _loc_2++;
            }
            return _loc_1;
        }// end function

        public static function secToMinutesString(param1:int) : String
        {
            var _loc_2:* = param1 % 3600 / 60;
            var _loc_3:* = param1 % 3600 % 60;
            return zeroFill(_loc_2) + ":" + zeroFill(_loc_3);
        }// end function

        public static function copyProperties(param1:Object, param2:Object, param3:Array = null) : void
        {
            var key:String;
            var dest:* = param1;
            var source:* = param2;
            var exclude:* = param3;
            var _loc_5:int = 0;
            var _loc_6:* = source;
            while (_loc_6 in _loc_5)
            {
                
                key = _loc_6[_loc_5];
                if (exclude && exclude.filter(function (param1:String, param2:int, param3:Array) : Boolean
            {
                return param1 == key;
            }// end function
            ).length > 0)
                {
                    continue;
                }
                if (dest.hasOwnProperty(key))
                {
                    dest[key] = source[key];
                }
            }
            return;
        }// end function

        public static function getDirection(param1:Point, param2:Point) : int
        {
            var _loc_3:* = new Point(param2.x - param1.x, param2.y - param1.y);
            if (_loc_3.x == 0 && _loc_3.y == 0)
            {
                return UnitVO.DIRECTION_LEFT;
            }
            if (_loc_3.x == 0)
            {
                return _loc_3.y > 0 ? (UnitVO.DIRECTION_DOWN) : (UnitVO.DIRECTION_UP);
            }
            if (_loc_3.y == 0)
            {
                return _loc_3.x > 0 ? (UnitVO.DIRECTION_RIGHT) : (UnitVO.DIRECTION_LEFT);
            }
            if (_loc_3.x > 0 && _loc_3.y > 0)
            {
                return UnitVO.DIRECTION_DOWN;
            }
            if (_loc_3.x > 0 && _loc_3.y <= 0)
            {
                return UnitVO.DIRECTION_RIGHT;
            }
            if (_loc_3.x <= 0 && _loc_3.y > 0)
            {
                return UnitVO.DIRECTION_LEFT;
            }
            if (_loc_3.x <= 0 && _loc_3.y <= 0)
            {
                return UnitVO.DIRECTION_UP;
            }
            return UnitVO.DIRECTION_LEFT;
        }// end function

        public static function secToTimeString(param1:int) : String
        {
            var _loc_2:* = param1 / 3600;
            var _loc_3:* = param1 % 3600 / 60;
            var _loc_4:* = param1 % 3600 % 60;
            return _loc_2.toString() + ":" + zeroFill(_loc_3) + ":" + zeroFill(_loc_4);
        }// end function

        public static function zeroFill(param1:int, param2:int = 2) : String
        {
            return ("0000000000" + param1.toString()).substr(-param2);
        }// end function

        public static function findAttackArea(param1:UnitVO, param2:Point, param3:int) : Array
        {
            var _loc_7:int = 0;
            var _loc_8:int = 0;
            var _loc_4:* = Utils.findAttackableGrid(param2.x, param2.y, param3, createFootPrint());
            var _loc_5:* = createFootPrint();
            var _loc_6:* = new Array();
            if (param1.weapon && param1.weapon.weaponType == WeaponVO.WEAPON_TYPE_SPEAR)
            {
                _loc_7 = 0;
                while (_loc_7 < TacticsProxy.COLS)
                {
                    
                    if (_loc_4[_loc_7][param2.y] != null && _loc_5[_loc_7][param2.y] == null)
                    {
                        _loc_6.push(new Point(_loc_7, param2.y));
                    }
                    _loc_7++;
                }
                _loc_8 = 0;
                while (_loc_8 < TacticsProxy.ROWS)
                {
                    
                    if (_loc_4[param2.x][_loc_8] != null && _loc_5[param2.x][_loc_8] == null)
                    {
                        _loc_6.push(new Point(param2.x, _loc_8));
                    }
                    _loc_8++;
                }
            }
            else
            {
                _loc_7 = 0;
                while (_loc_7 < TacticsProxy.COLS)
                {
                    
                    _loc_8 = 0;
                    while (_loc_8 < TacticsProxy.ROWS)
                    {
                        
                        if (_loc_4[_loc_7][_loc_8] != null && _loc_5[_loc_7][_loc_8] == null)
                        {
                            _loc_6.push(new Point(_loc_7, _loc_8));
                        }
                        _loc_8++;
                    }
                    _loc_7++;
                }
            }
            return _loc_6;
        }// end function

        public static function uniqueArray(param1:Array) : Array
        {
            var _loc_2:* = new Array();
            var _loc_3:int = 0;
            while (_loc_3 < param1.length)
            {
                
                if (_loc_2.indexOf(param1[_loc_3]) == -1)
                {
                    _loc_2.push(param1[_loc_3]);
                }
                _loc_3++;
            }
            return _loc_2;
        }// end function

        public static function findRoute(param1:UnitVO, param2:Array, param3:Point, param4:Point) : Array
        {
            var _loc_6:int = 0;
            var _loc_7:int = 0;
            var _loc_8:Array = null;
            var _loc_5:* = getMoveCostMap(param1, param2);
            if (getMoveCostMap(param1, param2)[param4.x][param4.y] != null && _loc_5[param3.x][param3.y] != null)
            {
                _loc_6 = param4.x;
                _loc_7 = param4.y;
                _loc_8 = new Array();
                while (_loc_6 != param3.x || _loc_7 != param3.y)
                {
                    
                    _loc_8.unshift(new Point(_loc_6, _loc_7));
                    if ((_loc_6 + 1) < TacticsProxy.COLS && _loc_5[(_loc_6 + 1)][_loc_7] != null && _loc_5[(_loc_6 + 1)][_loc_7] > _loc_5[_loc_6][_loc_7])
                    {
                        _loc_6 = _loc_6 + 1;
                        continue;
                    }
                    if ((_loc_6 - 1) >= 0 && _loc_5[(_loc_6 - 1)][_loc_7] != null && _loc_5[(_loc_6 - 1)][_loc_7] > _loc_5[_loc_6][_loc_7])
                    {
                        _loc_6 = _loc_6 - 1;
                        continue;
                    }
                    if ((_loc_7 + 1) < TacticsProxy.ROWS && _loc_5[_loc_6][(_loc_7 + 1)] != null && _loc_5[_loc_6][(_loc_7 + 1)] > _loc_5[_loc_6][_loc_7])
                    {
                        _loc_7 = _loc_7 + 1;
                        continue;
                    }
                    if ((_loc_7 - 1) >= 0 && _loc_5[_loc_6][(_loc_7 - 1)] != null && _loc_5[_loc_6][(_loc_7 - 1)] > _loc_5[_loc_6][_loc_7])
                    {
                        _loc_7 = _loc_7 - 1;
                        continue;
                    }
                    return null;
                }
                _loc_8.unshift(param3);
                return _loc_8;
            }
            else
            {
                return null;
            }
        }// end function

        public static function sortItem(param1:int, param2:int) : int
        {
            if (param1 - param2 > 0)
            {
                return 1;
            }
            if (param1 - param2 < 0)
            {
                return -1;
            }
            return 0;
        }// end function

        private static function getMoveCostMap(param1:UnitVO, param2:Array) : Array
        {
            if (param1.hasBuff("NotMove"))
            {
                return Utils.findMovableGrid(param1, param1.mapx, param1.mapy, 0, createFootPrint(), param2);
            }
            return Utils.findMovableGrid(param1, param1.mapx, param1.mapy, param1.moveRange, createFootPrint(), param2);
        }// end function

        public static function buildTaskTexts(param1:Array) : Array
        {
            var _loc_3:TaskVO = null;
            var _loc_2:* = new Array();
            for each (_loc_3 in param1)
            {
                
                _loc_2.push(buildTaskText(_loc_3));
            }
            return _loc_2;
        }// end function

        public static function findMovableGrid(param1:UnitVO, param2:int, param3:int, param4:int, param5:Array, param6:Array) : Array
        {
            if (param5[param2][param3] == null || param5[param2][param3] < param4)
            {
                param5[param2][param3] = param4;
            }
            if (param4 == 0)
            {
                return param5;
            }
            if ((param2 + 1) < TacticsProxy.COLS && param6[(param2 + 1)][param3].cost <= param4 && surinuke(param1, param6[(param2 + 1)][param3].unit))
            {
                param5 = Utils.findMovableGrid(param1, (param2 + 1), param3, param4 - param6[(param2 + 1)][param3].cost, param5, param6);
            }
            if ((param2 - 1) >= 0 && param6[(param2 - 1)][param3].cost <= param4 && surinuke(param1, param6[(param2 - 1)][param3].unit))
            {
                param5 = Utils.findMovableGrid(param1, (param2 - 1), param3, param4 - param6[(param2 - 1)][param3].cost, param5, param6);
            }
            if ((param3 + 1) < TacticsProxy.ROWS && param6[param2][(param3 + 1)].cost <= param4 && surinuke(param1, param6[param2][(param3 + 1)].unit))
            {
                param5 = Utils.findMovableGrid(param1, param2, (param3 + 1), param4 - param6[param2][(param3 + 1)].cost, param5, param6);
            }
            if ((param3 - 1) >= 0 && param6[param2][(param3 - 1)].cost <= param4 && surinuke(param1, param6[param2][(param3 - 1)].unit))
            {
                param5 = Utils.findMovableGrid(param1, param2, (param3 - 1), param4 - param6[param2][(param3 - 1)].cost, param5, param6);
            }
            return param5;
        }// end function

        public static function clone(param1:Object) : Object
        {
            var _loc_2:* = new ByteArray();
            _loc_2.writeObject(param1);
            _loc_2.position = 0;
            return _loc_2.readObject();
        }// end function

        public static function findMoveArea(param1:UnitVO, param2:Array) : Array
        {
            var _loc_6:int = 0;
            var _loc_3:* = getMoveCostMap(param1, param2);
            var _loc_4:* = new Array();
            var _loc_5:int = 0;
            while (_loc_5 < TacticsProxy.COLS)
            {
                
                _loc_6 = 0;
                while (_loc_6 < TacticsProxy.ROWS)
                {
                    
                    if (_loc_3[_loc_5][_loc_6] != null)
                    {
                        _loc_4.push(new Point(_loc_5, _loc_6));
                    }
                    _loc_6++;
                }
                _loc_5++;
            }
            return _loc_4;
        }// end function

        public static function findAttackableGrid(param1:int, param2:int, param3:int, param4:Array) : Array
        {
            var _loc_7:int = 0;
            var _loc_5:* = MapProxy.mapProxy;
            var _loc_6:* = -param3;
            while (_loc_6 < (param3 + 1))
            {
                
                if (param1 + _loc_6 < TacticsProxy.COLS && param1 + _loc_6 >= 0)
                {
                    _loc_7 = -param3;
                    while (_loc_7 < (param3 + 1))
                    {
                        
                        if (param2 + _loc_7 < TacticsProxy.ROWS && param2 + _loc_7 >= 0)
                        {
                            if (_loc_5.grids[param1 + _loc_6][param2 + _loc_7].cost == MapProxy.COST_INTO)
                            {
                                if (Math.abs(_loc_6) + Math.abs(_loc_7) <= param3 && !(_loc_6 == 0 && _loc_7 == 0))
                                {
                                    param4[param1 + _loc_6][param2 + _loc_7] = 1;
                                }
                            }
                        }
                        _loc_7++;
                    }
                }
                _loc_6++;
            }
            return param4;
        }// end function

        public static function indexToPoint(param1:int, param2:int) : Point
        {
            var _loc_3:* = (param1 + param2) * (TacticsMediator.GRID_WIDTH / 2) + 28;
            var _loc_4:* = (TacticsProxy.ROWS - param1 + param2) * (TacticsMediator.GRID_HEIGHT / 2);
            return new Point(_loc_3, _loc_4);
        }// end function

        public static function getDirectionV2(param1:Point, param2:Point) : int
        {
            var _loc_3:Array = [[0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0], [3, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1], [3, 3, 0, 0, 0, 0, 0, 0, 0, 1, 1], [3, 3, 3, 0, 0, 0, 0, 0, 1, 1, 1], [3, 3, 3, 3, 0, 0, 0, 1, 1, 1, 1], [3, 3, 3, 3, 3, 0, 1, 1, 1, 1, 1], [3, 3, 3, 3, 3, 2, 1, 1, 1, 1, 1], [3, 3, 3, 3, 2, 2, 2, 1, 1, 1, 1], [3, 3, 3, 2, 2, 2, 2, 2, 1, 1, 1], [3, 3, 2, 2, 2, 2, 2, 2, 2, 1, 1], [3, 2, 2, 2, 2, 2, 2, 2, 2, 2, 1]];
            if (Math.abs(param2.x - param1.x) > 5 || Math.abs(param2.y - param1.y) > 5)
            {
                return 2;
            }
            return _loc_3[5 + (param2.y - param1.y)][5 + (param2.x - param1.x)];
        }// end function

        public static function copyPropertiesFromRemoteObject(param1:Object, param2:Object) : void
        {
            var _loc_3:String = null;
            for (_loc_3 in param2)
            {
                
                var _loc_6:* = _loc_3;
                if (param1.hasOwnProperty(_loc_6._loc_3["lowerCamelize"]()) && param2[_loc_3])
                {
                    var _loc_6:* = _loc_3;
                    param1[_loc_6._loc_3["lowerCamelize"]()] = param2[_loc_3];
                }
            }
            return;
        }// end function

        public static function pointToIndex(param1:int, param2:int) : Point
        {
            param2 = (param2 - TacticsMediator.GRID_HEIGHT * TacticsMediator.ROWS / 2) * 2;
            var _loc_3:* = (param1 - param2) / TacticsMediator.GRID_WIDTH;
            var _loc_4:* = (param1 + param2) / TacticsMediator.GRID_WIDTH;
            if (_loc_3 >= 0 && _loc_3 < TacticsProxy.COLS && _loc_4 >= 0 && _loc_4 < TacticsProxy.ROWS)
            {
                return new Point(_loc_3, _loc_4);
            }
            return null;
        }// end function

        public static function isBackHit(param1:Point, param2:Point, param3:int) : Boolean
        {
            return param3 == 0 && param2.y < param1.y || param3 == 1 && param2.x > param1.x || param3 == 2 && param2.y > param1.y || param3 == 3 && param2.x < param1.x;
        }// end function

        public static function createHash(param1:Array) : String
        {
            param1 = param1.sort(Array.NUMERIC);
            var _loc_2:* = Hex.fromString(param1.toString());
            var _loc_3:* = Hex.toArray(_loc_2);
            var _loc_4:* = Crypto.getHash("sha1");
            _loc_3 = Crypto.getHash("sha1").hash(_loc_3);
            return Hex.fromArray(_loc_3);
        }// end function

        public static function getDirectionVector(param1:int) : Point
        {
            switch(param1)
            {
                case UnitVO.DIRECTION_UP:
                {
                    return new Point(-1, -1);
                }
                case UnitVO.DIRECTION_RIGHT:
                {
                    return new Point(1, -1);
                }
                case UnitVO.DIRECTION_DOWN:
                {
                    return new Point(1, 1);
                }
                case UnitVO.DIRECTION_LEFT:
                {
                    return new Point(-1, 1);
                }
                default:
                {
                    break;
                }
            }
            return null;
        }// end function

        public static function buildTaskText(param1:TaskVO) : String
        {
            var _loc_3:int = 0;
            var _loc_2:* = new Array();
            switch(param1.activityType)
            {
                case TaskVO.ACITIVITY_TYPE_GATHERING:
                {
                    return StringUtil.substitute(TEMPLATE_FOR_GATHERING, GATHERING_LABELS_1[param1.activityName], Utils.secToTimeString(param1.remainingTime), param1.unitName, GATHERING_LABELS_2[param1.activityName], param1.executionCount);
                }
                case TaskVO.ACITIVITY_TYPE_CONSTRUCTION:
                {
                    _loc_3 = param1.buildingVO.level;
                    return StringUtil.substitute(TEMPLATE_FOR_CONSTRUCTION, Utils.secToTimeString(param1.remainingTime), param1.unitName, param1.buildingVO.buildingMasterVO.nameLabel, _loc_3, Utils.i18n("localize4"));
                }
                case TaskVO.ACITIVITY_TYPE_LEVEL_UP:
                {
                    return StringUtil.substitute(TEMPLATE_FOR_LEVEL_UP, Utils.secToTimeString(param1.remainingTime), param1.unitName, AllMapVO.TOPOGRAPHY_NAMES[(param1.allMap.topography_id - 1)], param1.allMap.level, AllMapMediator.hexXtoGameX(param1.allMap.x), AllMapMediator.hexYtoGameY(param1.allMap.y), Utils.i18n("localize5"));
                }
                default:
                {
                    return StringUtil.substitute(TEMPLATE_FOR_FORT, Utils.secToTimeString(param1.remainingTime), param1.unitName, param1.allMap.found_type == 10 ? (Utils.i18n("generalTower")) : (Utils.i18n("localize6")), FORT_LABELS[param1.activityName]);
                    break;
                }
            }
        }// end function

        public static function isInContact(param1:Point, param2:Point) : Boolean
        {
            return Math.abs(param1.x - param2.x) + Math.abs(param1.y - param2.y) <= 1;
        }// end function

        public static function commandPosition(param1:Point) : Point
        {
            var _loc_2:* = new Point();
            _loc_2.x = param1.x;
            _loc_2.y = param1.y;
            if (param1.y < 25)
            {
                _loc_2.y = 25;
            }
            return _loc_2;
        }// end function

        public static function surinuke(param1:UnitVO, param2:UnitVO) : Boolean
        {
            var _loc_3:* = SkillProxy.surinuke(param1);
            switch(_loc_3)
            {
                case 1:
                {
                    if (param2)
                    {
                        return param1.team == param2.team;
                    }
                    return true;
                }
                case 2:
                {
                    return true;
                }
                default:
                {
                    return param2 == null;
                    break;
                }
            }
        }// end function

        public static function clamp(param1:Number, param2:Number, param3:Number) : Number
        {
            return Math.max(param2, Math.min(param3, param1));
        }// end function

        public static function pluralizeMasterName(param1:String) : String
        {
            var _loc_2:* = param1.toLowerCase().replace("master", "");
            return _loc_2.param1.toLowerCase().replace("master", "")["pluralize"]();
        }// end function

        public static function createImage(param1:DisplayObject) : Bitmap
        {
            var _loc_2:* = new BitmapData(param1.width, param1.height, true, 0);
            _loc_2.draw(param1);
            var _loc_3:* = new Bitmap(_loc_2);
            _loc_3.smoothing = true;
            return _loc_3;
        }// end function

    }
}
