package com.kbmj.viking.vo.home
{
    import com.kbmj.viking.lib.*;
    import com.kbmj.viking.vo.*;
    import flash.utils.*;

    public class AssistantVO extends Object
    {
        private var _copyPlayerVO:PlayerVO;
        private var _firstRemark:Boolean = true;
        private var _masters:Array;
        private var _remark:String;
        public var periodicTimer:Timer;
        private var _face:String = "";
        private static const LOG_IN:int = 1;
        private static const ADD_PROPERTY:int = 3;
        private static const RANK_UP:int = 2;

        public function AssistantVO()
        {
            _remark = new String();
            _copyPlayerVO = new PlayerVO();
            _masters = new Array();
            periodicTimer = new Timer(900000);
            return;
        }// end function

        public function get remark() : String
        {
            return _remark;
        }// end function

        public function decisionRemark(param1:PlayerVO) : void
        {
            _remark = "";
            _remark = firstTimeRemark();
            _copyPlayerVO = clone(param1);
            return;
        }// end function

        public function set remark(param1:String) : void
        {
            _remark = param1;
            return;
        }// end function

        private function checkPlayerState(param1:PlayerVO) : String
        {
            var _loc_2:* = Math.random() * 100;
            var _loc_3:int = 0;
            if (param1.playerRankId > _copyPlayerVO.playerRankId)
            {
                return selectRemark(_loc_2, RANK_UP);
            }
            if (param1.propertiesCount > _copyPlayerVO.propertiesCount)
            {
                return selectRemark(_loc_2, ADD_PROPERTY);
            }
            return "";
        }// end function

        public function get firstRemark() : Boolean
        {
            return _firstRemark;
        }// end function

        private function selectRemark(param1:int, param2:int) : String
        {
            var _loc_4:Object = null;
            var _loc_3:int = 0;
            for each (_loc_4 in _masters)
            {
                
                if (_loc_4.condition == param2)
                {
                    _loc_3 = _loc_3 + _loc_4.probability;
                    if (_loc_3 > param1)
                    {
                        _face = _loc_4.face;
                        return _loc_4.remark;
                    }
                }
            }
            return "";
        }// end function

        private function clone(param1:PlayerVO) : PlayerVO
        {
            var _loc_2:* = new PlayerVO();
            _loc_2.playerRankId = param1.playerRankId;
            _loc_2.propertiesCount = param1.propertiesCount;
            return _loc_2;
        }// end function

        public function set firstRemark(param1:Boolean) : void
        {
            _firstRemark = param1;
            return;
        }// end function

        public function set masters(param1:Array) : void
        {
            _masters = param1;
            return;
        }// end function

        public function get face() : String
        {
            return _face;
        }// end function

        public function assistantPeriodicRemark(param1:Array) : String
        {
            var _loc_2:Object = null;
            for each (_loc_2 in param1)
            {
                
                if (_loc_2.exp >= _loc_2.nextExp)
                {
                    return _loc_2.name + Utils.i18n("localize279");
                }
            }
            return Utils.i18n("localize280");
        }// end function

        public function set face(param1:String) : void
        {
            _face = param1;
            return;
        }// end function

        private function firstTimeRemark() : String
        {
            var _loc_3:Object = null;
            var _loc_1:* = Math.floor(Math.random() * _masters.length);
            var _loc_2:int = 0;
            for each (_loc_3 in _masters)
            {
                
                _loc_2 = _loc_2 + _loc_3.probability;
                if (_loc_2 > _loc_1)
                {
                    _face = _loc_3.face;
                    return _loc_3.remark;
                }
            }
            return "";
        }// end function

    }
}
