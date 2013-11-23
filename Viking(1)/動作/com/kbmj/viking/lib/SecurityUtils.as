package com.kbmj.viking.lib
{

    public class SecurityUtils extends Object
    {
        public static var _salt:int = 137;

        public function SecurityUtils()
        {
            return;
        }// end function

        public static function encrypt(param1:int, param2:int = 7) : int
        {
            var _loc_3:int = 0;
            _loc_3 = dec2bin(param1) + param2;
            _loc_3 = _loc_3 + dec2bin(_salt);
            return _loc_3;
        }// end function

        public static function dec2bin(param1:int) : int
        {
            return int(param1.toString(2));
        }// end function

        public static function decrypt(param1:int, param2:int = 7) : int
        {
            var _loc_3:int = 0;
            _loc_3 = param1 - dec2bin(_salt);
            _loc_3 = _loc_3 - param2;
            _loc_3 = bin2dec(_loc_3);
            return _loc_3;
        }// end function

        public static function bin2dec(param1:int) : int
        {
            var _loc_2:* = param1.toString();
            return parseInt(param1.toString(), 2);
        }// end function

    }
}
