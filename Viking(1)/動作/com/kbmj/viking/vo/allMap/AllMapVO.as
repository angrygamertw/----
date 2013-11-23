package com.kbmj.viking.vo.allMap
{
    import com.kbmj.viking.lib.*;

    public class AllMapVO extends Object
    {
        private var _topography:int;
        private var _level:int;
        private var _object:int;
        public static const OBJECT_TOWER_BLACK:int = 32;
        public static const EVIL_POINT_LEVEL_NUM:int = 10;
        public static const OBJECT_HOME_RED:int = 2;
        public static const OBJECT_OWN_PROPERTY_BLUE_LV1:int = 76;
        public static const OBJECT_OWN_PROPERTY_BLUE_LV2:int = 77;
        public static const OBJECT_OWN_PROPERTY_BLUE_LV3:int = 78;
        public static const OBJECT_OWN_PROPERTY_BLUE_LV4:int = 79;
        public static const OBJECT_OWN_PROPERTY_BLUE_LV5:int = 80;
        public static const OBJECT_OWN_PROPERTY_BLACK_LV3:int = 93;
        public static const OBJECT_OWN_PROPERTY_BLACK_LV4:int = 94;
        public static const OBJECT_OWN_PROPERTY_BLACK_LV5:int = 95;
        public static const OBJECT_OWN_PROPERTY_BLACK_LV1:int = 91;
        public static const OBJECT_OWN_PROPERTY_NEUTRAL_LV1:int = 71;
        public static const OBJECT_OWN_PROPERTY_NEUTRAL_LV2:int = 72;
        public static const OBJECT_OWN_PROPERTY_NEUTRAL_LV3:int = 73;
        public static const OBJECT_OWN_PROPERTY_NEUTRAL_LV4:int = 74;
        public static const EVIL_POINT_LEVEL_MIN:int = 1;
        public static const OBJECT_OWN_HOME_WHITE:int = 8;
        public static const OBJECT_OWN_PROPERTY_BLACK_LV2:int = 92;
        public static const OBJECT_OWN_PROPERTY_NEUTRAL_LV5:int = 75;
        public static const OBJECT_TOWER_WHITE:int = 31;
        public static const TOPOGRAPHY_WATERSIDE:int = 5;
        public static const OBJECT_OWN_TOWER_NEUTRAL:int = 33;
        public static const OBJECT_NONE:int = 116;
        public static const OBJECT_FORT_BLUE:int = 15;
        public static const OBJECT_GUILD_FORT_BLACK:int = 27;
        public static const OBJECT_FORT_BLACK:int = 18;
        public static const TOPOGRAPHY_FOREST:int = 2;
        public static const TOPOGRAPHY_IMAGES_NUM:int = 10;
        public static const OBJECT_GUILD_FORT_WHITE:int = 26;
        public static const OBJECT_RAID_BOSS_BLUE:int = 42;
        public static const OBJECT_GUILD_PROPERTY_BLACK_LV1:int = 111;
        public static const OBJECT_GUILD_PROPERTY_BLACK_LV3:int = 113;
        public static const OBJECT_GUILD_PROPERTY_BLACK_LV5:int = 115;
        public static const OBJECT_GUILD_PROPERTY_BLACK_LV2:int = 112;
        public static const OBJECT_GUILD_PROPERTY_RED_LV1:int = 101;
        public static const OBJECT_PROPERTY_BLACK_LV1:int = 66;
        public static const OBJECT_PROPERTY_BLACK_LV2:int = 67;
        public static const OBJECT_PROPERTY_BLACK_LV3:int = 68;
        public static const OBJECT_PROPERTY_BLACK_LV4:int = 69;
        public static const OBJECT_PROPERTY_BLACK_LV5:int = 70;
        public static const OBJECT_FORT_WHITE:int = 17;
        public static const OBJECT_GUILD_PROPERTY_RED_LV4:int = 104;
        public static const OBJECT_GUILD_PROPERTY_RED_LV2:int = 102;
        public static const OBJECT_PROPERTY_BLUE_LV1:int = 51;
        public static const TOPOGRAPHY_LEY_LINE:int = 6;
        public static const OBJECT_PROPERTY_BLUE_LV4:int = 54;
        public static const OBJECT_PROPERTY_BLUE_LV5:int = 55;
        public static const OBJECT_PROPERTY_BLUE_LV2:int = 52;
        public static const OBJECT_OWN_FORT_BLUE:int = 20;
        public static const OBJECT_OWN_FORT_RED:int = 21;
        public static const OBJECT_OWN_TOWER_BLACK:int = 37;
        public static const OBJECT_GUILD_PROPERTY_BLACK_LV4:int = 114;
        public static const OBJECT_HOME_BLUE:int = 1;
        public static const TOPOGRAPHY_TYPE_NUM:int = 31;
        public static const OBJECT_PROPERTY_BLUE_LV3:int = 53;
        public static const OBJECT_GUILD_PROPERTY_RED_LV3:int = 103;
        public static const OBJECT_GUILD_PROPERTY_RED_LV5:int = 105;
        public static const OBJECT_RAID_BOSS_RED:int = 43;
        public static const OBJECT_OWN_HOME_RED:int = 7;
        public static const TOPOGRAPHY_IMAGES:Array = [TOPOGRAPHY_LEVEL_GROUND, TOPOGRAPHY_GRASSLAND, TOPOGRAPHY_FOREST, TOPOGRAPHY_ROCKEY, TOPOGRAPHY_MINE, TOPOGRAPHY_WATERSIDE, TOPOGRAPHY_LEY_LINE, TOPOGRAPHY_LEY_LINE_S, TOPOGRAPHY_LEY_LINE_W, TOPOGRAPHY_LEY_LINE_X, TOPOGRAPHY_LEY_LINE_Y];
        public static const TOPOGRAPHY_LEY_LINE_NUM:int = 25;
        public static const LEVEL_MIN:int = 1;
        public static const OBJECT_OWN_TOWER_WHITE:int = 36;
        public static const OBJECT_GUILD_TOWER_BLUE:int = 38;
        public static const OBJECT_GUILD_FORT_BLUE:int = 24;
        public static const OBJECT_OWN_FORT_BLACK:int = 23;
        public static const OBJECT_PROPERTY_NEUTRAL_LV1:int = 46;
        public static const OBJECT_PROPERTY_NEUTRAL_LV2:int = 47;
        public static const OBJECT_PROPERTY_NEUTRAL_LV3:int = 48;
        public static const OBJECT_PROPERTY_NEUTRAL_LV4:int = 49;
        public static const OBJECT_GUILD_FORT_RED:int = 25;
        private static var object_chars:Array = ["0", "1", "2", "3", "4", "5", "6", "7", "8", "9", ":", ";", "<", "=", ">", "?", "@", "A", "B", "C", "D", "E", "F", "G", "H", "I", "J", "K", "L", "M", "N", "O", "P", "Q", "R", "S", "T", "U", "V", "W", "X", "Y", "Z", "[", "]", "^", "_", "`", "a", "b", "c", "d", "e", "f", "g", "h", "i", "j", "k", "l", "m", "n", "o", "p", "q", "r", "s", "t", "u", "v", "w", "x", "y", "z", "{", "|", "}", "~"];
        public static const OBJECT_PROPERTY_NEUTRAL_LV5:int = 50;
        public static const OBJECT_TOWER_BLUE:int = 29;
        public static const OBJECT_GUILD_HOME_RED:int = 11;
        public static const OBJECT_OWN_FORT_WHITE:int = 22;
        public static const OBJECT_TOWER_RED:int = 30;
        public static const OBJECT_OWN_HOME_BLUE:int = 6;
        public static const TOPOGRAPHY_MINE:int = 4;
        public static const TOPOGRAPHY_LEY_LINE_A:int = 6;
        public static const TOPOGRAPHY_LEY_LINE_B:int = 7;
        public static const TOPOGRAPHY_LEY_LINE_C:int = 8;
        public static const TOPOGRAPHY_LEY_LINE_D:int = 9;
        public static const TOPOGRAPHY_LEY_LINE_E:int = 10;
        public static const TOPOGRAPHY_LEY_LINE_F:int = 11;
        public static const TOPOGRAPHY_LEY_LINE_G:int = 12;
        public static const TOPOGRAPHY_LEY_LINE_H:int = 13;
        public static const TOPOGRAPHY_LEY_LINE_I:int = 14;
        public static const TOPOGRAPHY_LEY_LINE_K:int = 16;
        public static const TOPOGRAPHY_LEY_LINE_L:int = 17;
        public static const TOPOGRAPHY_LEY_LINE_M:int = 18;
        public static const TOPOGRAPHY_LEY_LINE_N:int = 19;
        public static const TOPOGRAPHY_LEY_LINE_O:int = 20;
        public static const TOPOGRAPHY_LEY_LINE_P:int = 21;
        public static const TOPOGRAPHY_LEY_LINE_Q:int = 22;
        public static const TOPOGRAPHY_LEY_LINE_R:int = 23;
        public static const TOPOGRAPHY_LEY_LINE_S:int = 24;
        public static const TOPOGRAPHY_ROCKEY:int = 3;
        public static const TOPOGRAPHY_LEY_LINE_U:int = 26;
        public static const TOPOGRAPHY_LEY_LINE_V:int = 27;
        public static const TOPOGRAPHY_LEY_LINE_W:int = 28;
        public static const TOPOGRAPHY_LEY_LINE_X:int = 29;
        public static const TOPOGRAPHY_LEY_LINE_J:int = 15;
        public static const OBJECT_OWN_PROPERTY_WHITE_LV2:int = 87;
        public static const TOPOGRAPHY_LEY_LINE_T:int = 25;
        public static const OBJECT_OWN_PROPERTY_WHITE_LV4:int = 89;
        public static const OBJECT_FORT_NEUTRAL:int = 14;
        public static const OBJECT_GUILD_HOME_BLUE:int = 10;
        public static const OBJECT_GUILD_PROPERTY_BLUE_LV2:int = 97;
        public static const OBJECT_TOWER_NEUTRAL:int = 28;
        public static const OBJECT_OWN_PROPERTY_WHITE_LV5:int = 90;
        public static const TOPOGRAPHY_LEY_LINE_Y:int = 30;
        public static const OBJECT_GUILD_PROPERTY_BLUE_LV4:int = 99;
        public static const OBJECT_HOME_NEUTRAL:int = 0;
        public static const OBJECT_OWN_TOWER_BLUE:int = 34;
        public static const OBJECT_GUILD_HOME_BLACK:int = 13;
        public static const OBJECT_OWN_FORT_NEUTRAL:int = 19;
        public static const OBJECT_OWN_PROPERTY_RED_LV2:int = 82;
        public static const OBJECT_RAID_BOSS_BLACK:int = 45;
        public static const OBJECT_OWN_PROPERTY_RED_LV4:int = 84;
        public static const OBJECT_OWN_PROPERTY_RED_LV1:int = 81;
        public static const OBJECT_OWN_PROPERTY_RED_LV3:int = 83;
        public static const OBJECT_GUILD_PROPERTY_BLUE_LV5:int = 100;
        public static const OBJECT_HOME_BLACK:int = 4;
        public static const OBJECT_OWN_HOME_NEUTRAL:int = 5;
        public static const OBJECT_OWN_TOWER_RED:int = 35;
        public static const EVIL_POINT_LEVEL_MAX:int = 10;
        public static const OBJECT_OWN_PROPERTY_RED_LV5:int = 85;
        public static const OBJECT_OWN_PROPERTY_WHITE_LV1:int = 86;
        public static const OBJECT_OWN_PROPERTY_WHITE_LV3:int = 88;
        public static const OBJECT_RAID_BOSS_WHITE:int = 44;
        public static const TOPOGRAPHY_NAMES:Array = [Utils.i18n("generalTypeOfLand1"), Utils.i18n("generalTypeOfLand2"), Utils.i18n("generalTypeOfLand3"), Utils.i18n("generalTypeOfLand4"), Utils.i18n("generalTypeOfLand5"), Utils.i18n("generalTypeOfLand6"), Utils.i18n("generalTypeOfLeyLine1"), Utils.i18n("generalTypeOfLeyLine2"), Utils.i18n("generalTypeOfLeyLine3"), Utils.i18n("generalTypeOfLeyLine4"), Utils.i18n("generalTypeOfLeyLine5"), Utils.i18n("generalTypeOfLeyLine6"), Utils.i18n("generalTypeOfLeyLine7"), Utils.i18n("generalTypeOfLeyLine8"), Utils.i18n("generalTypeOfLeyLine9"), Utils.i18n("generalTypeOfLeyLine10"), Utils.i18n("generalTypeOfLeyLine11"), Utils.i18n("generalTypeOfLeyLine12"), Utils.i18n("generalTypeOfLeyLine13"), Utils.i18n("generalTypeOfLeyLine14"), Utils.i18n("generalTypeOfLeyLine15"), Utils.i18n("generalTypeOfLeyLine16"), Utils.i18n("generalTypeOfLeyLine17"), Utils.i18n("generalTypeOfLeyLine18"), Utils.i18n("generalTypeOfLeyLine19"), Utils.i18n("generalTypeOfLeyLine20"), Utils.i18n("generalTypeOfLeyLine21"), Utils.i18n("generalTypeOfLeyLine22"), Utils.i18n("generalTypeOfLeyLine23"), Utils.i18n("generalTypeOfLeyLine24"), Utils.i18n("generalTypeOfLeyLine25")];
        public static const TOPOGRAPHY_LEVEL_GROUND:int = 0;
        public static const OBJECT_GUILD_TOWER_BLACK:int = 41;
        public static const OBJECT_GUILD_PROPERTY_BLUE_LV1:int = 96;
        public static const OBJECT_GUILD_PROPERTY_BLUE_LV3:int = 98;
        public static const OBJECT_HOME_WHITE:int = 3;
        public static const OBJECT_GUILD_HOME_WHITE:int = 12;
        public static const OBJECT_PROPERTY_RED_LV1:int = 56;
        public static const OBJECT_PROPERTY_RED_LV2:int = 57;
        public static const OBJECT_PROPERTY_RED_LV3:int = 58;
        public static const OBJECT_PROPERTY_RED_LV4:int = 59;
        public static const OBJECT_PROPERTY_RED_LV5:int = 60;
        public static const OBJECT_GUILD_PROPERTY_WHITE_LV3:int = 108;
        public static const OBJECT_GUILD_TOWER_RED:int = 39;
        public static const OBJECT_GUILD_PROPERTY_WHITE_LV5:int = 110;
        public static const OBJECT_GUILD_PROPERTY_WHITE_LV1:int = 106;
        public static const OBJECT_GUILD_PROPERTY_WHITE_LV2:int = 107;
        public static const OBJECT_GUILD_PROPERTY_WHITE_LV4:int = 109;
        public static const OBJECT_GUILD_TOWER_WHITE:int = 40;
        public static const OBJECT_PROPERTY_WHITE_LV3:int = 63;
        public static const OBJECT_PROPERTY_WHITE_LV5:int = 65;
        public static const OBJECT_PROPERTY_WHITE_LV2:int = 62;
        public static const OBJECT_PROPERTY_WHITE_LV4:int = 64;
        public static const OBJECT_PROPERTY_WHITE_LV1:int = 61;
        public static const PROPERTY_TOP:int = 46;
        public static const TOPOGRAPHY_GRASSLAND:int = 1;
        public static const OBJECT_TYPE_NUM:int = 116;
        public static const LEVEL_MAX:int = 5;
        public static const OBJECT_OWN_HOME_BLACK:int = 9;
        public static const OBJECT_FORT_RED:int = 16;
        public static const PROPERTY_LEVEL_MAX:int = 5;

        public function AllMapVO(param1:int, param2:int = 116) : void
        {
            this.topography = param1;
            this.level = LEVEL_MIN;
            this.object = param2;
            return;
        }// end function

        public function restoreObject() : String
        {
            var _loc_1:* = _object;
            if (_loc_1 >= PROPERTY_TOP)
            {
                _loc_1 = PROPERTY_TOP + this.int((_loc_1 - PROPERTY_TOP) / PROPERTY_LEVEL_MAX);
            }
            return _loc_1 < 0 ? (" ") : (object_chars[_loc_1]);
        }// end function

        public function get topography() : int
        {
            return _topography;
        }// end function

        public function isTower() : Boolean
        {
            return object >= OBJECT_TOWER_NEUTRAL && object <= OBJECT_GUILD_TOWER_BLACK;
        }// end function

        public function set topography(param1:int) : void
        {
            _topography = param1;
            return;
        }// end function

        public function get level() : int
        {
            return _level;
        }// end function

        public function set level(param1:int) : void
        {
            _level = param1;
            return;
        }// end function

        public function isTowerOrFort() : Boolean
        {
            return isFort() || isTower();
        }// end function

        public function isFort() : Boolean
        {
            return object >= OBJECT_FORT_NEUTRAL && object <= OBJECT_GUILD_FORT_BLACK;
        }// end function

        public function isVein() : Boolean
        {
            return TOPOGRAPHY_LEY_LINE_W <= topography && topography <= TOPOGRAPHY_LEY_LINE_Y;
        }// end function

        public function isLeyLine() : Boolean
        {
            return topography >= TOPOGRAPHY_LEY_LINE_A && topography <= TOPOGRAPHY_LEY_LINE_V;
        }// end function

        public function getTopographyName() : String
        {
            return TOPOGRAPHY_NAMES[topography];
        }// end function

        public function clearObject() : void
        {
            object = OBJECT_NONE;
            return;
        }// end function

        public function isLayLineOrVein() : Boolean
        {
            return isLeyLine() || isVein();
        }// end function

        public function set object(param1:int) : void
        {
            _object = param1;
            return;
        }// end function

        public function get object() : int
        {
            return _object;
        }// end function

        public static function parseObject(param1:int, param2:int) : int
        {
            if (param1 > 92)
            {
                param1 = param1 - 1;
            }
            var _loc_3:* = param1 - 48;
            if (_loc_3 >= PROPERTY_TOP)
            {
                _loc_3 = PROPERTY_TOP + (_loc_3 - PROPERTY_TOP) * PROPERTY_LEVEL_MAX - 1 + Math.min(param2, PROPERTY_LEVEL_MAX);
            }
            return _loc_3;
        }// end function

    }
}
