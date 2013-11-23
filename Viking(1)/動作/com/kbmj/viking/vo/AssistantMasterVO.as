package com.kbmj.viking.vo
{

    public class AssistantMasterVO extends Object
    {
        private var _masterId:int;
        private var _type:int = 0;
        private var _condition:int = 0;
        private var _remark:String = "";
        private var _face:String = "";
        private var _probability:int = 0;
        public static const CAN_QUEST_CLEAR:int = 7;
        public static const CAN_LEVEL_UP:int = 6;
        public static const BE_OCCUPIED:int = 9;
        public static const RESOURCE_DISTRIBUTION:int = 5;
        public static const NEW_GUILD_LAUNCH:int = 8;

        public function AssistantMasterVO()
        {
            return;
        }// end function

        public function get remark() : String
        {
            return _remark;
        }// end function

        public function set face(param1:String) : void
        {
            _face = param1;
            return;
        }// end function

        public function set remark(param1:String) : void
        {
            _remark = param1;
            return;
        }// end function

        public function get type() : int
        {
            return _type;
        }// end function

        public function get condition() : int
        {
            return _condition;
        }// end function

        public function get face() : String
        {
            return _face;
        }// end function

        public function get masterId() : int
        {
            return _masterId;
        }// end function

        public function set probability(param1:int) : void
        {
            _probability = param1;
            return;
        }// end function

        public function set type(param1:int) : void
        {
            _type = param1;
            return;
        }// end function

        public function get probability() : int
        {
            return _probability;
        }// end function

        public function set condition(param1:int) : void
        {
            _condition = param1;
            return;
        }// end function

        public function set masterId(param1:int) : void
        {
            _masterId = param1;
            return;
        }// end function

    }
}
