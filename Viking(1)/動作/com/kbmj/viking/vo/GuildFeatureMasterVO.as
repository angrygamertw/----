package com.kbmj.viking.vo
{

    public class GuildFeatureMasterVO extends Object
    {
        private var _name:String;
        private var _masterId:int;

        public function GuildFeatureMasterVO()
        {
            return;
        }// end function

        public function set masterId(param1:int) : void
        {
            _masterId = param1;
            return;
        }// end function

        public function set name(param1:String) : void
        {
            _name = param1;
            return;
        }// end function

        public function get name() : String
        {
            return _name;
        }// end function

        public function get masterId() : int
        {
            return _masterId;
        }// end function

    }
}
