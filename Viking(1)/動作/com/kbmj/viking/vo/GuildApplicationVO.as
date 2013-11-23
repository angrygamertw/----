package com.kbmj.viking.vo
{

    public class GuildApplicationVO extends Object
    {
        private var _comment:String;
        private var _date:String;
        private var _guildId:int;
        private var _playerVO:PlayerVO;
        private var _id:int;

        public function GuildApplicationVO()
        {
            return;
        }// end function

        public function set guildId(param1:int) : void
        {
            _guildId = param1;
            return;
        }// end function

        public function set comment(param1:String) : void
        {
            _comment = param1;
            return;
        }// end function

        public function get playerVO() : PlayerVO
        {
            return _playerVO;
        }// end function

        public function set playerVO(param1:PlayerVO) : void
        {
            _playerVO = param1;
            return;
        }// end function

        public function get date() : String
        {
            return _date;
        }// end function

        public function get guildId() : int
        {
            return _guildId;
        }// end function

        public function set id(param1:int) : void
        {
            _id = param1;
            return;
        }// end function

        public function get id() : int
        {
            return _id;
        }// end function

        public function set date(param1:String) : void
        {
            _date = param1;
            return;
        }// end function

        public function get comment() : String
        {
            return _comment;
        }// end function

    }
}
