package com.kbmj.viking.proxy.city
{
    import com.adobe.serialization.json.*;
    import com.kbmj.viking.lib.*;
    import com.kbmj.viking.proxy.*;
    import com.kbmj.viking.vo.*;

    public class BarProxy extends LoaderProxy
    {
        private var _questList:Array;
        private var _currentQuestVO:QuestVO;
        private var number:int = 1;
        private var _completeQuests:Array;
        private var npcLoadBool:Boolean;
        private var _questStatus:String;
        public static const COMPELE_QUEST_LOADED:String = NAME + "/completeQuestLoaded";
        public static const QUEST_LOADED:String = NAME + "/questLoaded";
        private static const QUEST_TYPES:Object = {1:Utils.i18n("generalSubjugation"), 2:Utils.i18n("generalDelivery"), 3:Utils.i18n("generalPurification"), 4:Utils.i18n("generalRequest")};
        public static const QUEST_ACCEPT:String = NAME + "/questAccept";
        public static const NAME:String = "BarProxy";
        public static const QUEST_ACCEPT_ERROR:String = NAME + "/questAcceptError";
        public static const SHOW_QUEST_DETAIL:String = NAME + "/showQuestDetail";
        public static const QUEST_ABORT:String = NAME + "/questAbort";
        public static const PROGRESS_QUEST_LOADED:String = "BarProxy/progressQuestLoad";
        public static const PROGRESS_QUEST:String = "BarProxy/progressQuest";
        public static const SHOW_QUEST_DETAIL_ERROR:String = NAME + "/showQuestDetailError";
        public static const QUEST_COMPLETE:String = NAME + "/questComplete";

        public function BarProxy()
        {
            super(NAME);
            npcLoadBool = false;
            return;
        }// end function

        public function get questList() : Array
        {
            return _questList;
        }// end function

        public function questAccept(param1:int) : void
        {
            var questId:* = param1;
            var json:* = JSON.encode({id:questId});
            loadWithJson("/api/quests/accept", QUEST_ACCEPT, QUEST_ACCEPT_ERROR, function (param1:Object) : Object
            {
                return param1;
            }// end function
            , json);
            return;
        }// end function

        public function get completeQuests() : Array
        {
            return _completeQuests;
        }// end function

        public function progressQuest(param1:String = "BarProxy/progressQuest") : void
        {
            var eventName:* = param1;
            loadWithJson("/api/player/current_quest", eventName, null, function (param1:Object) : Object
            {
                var _loc_2:Object = null;
                if (param1.quest == null)
                {
                    _questStatus = "Accept";
                }
                else
                {
                    _currentQuestVO = new QuestVO();
                    _loc_2 = param1.quest.quest;
                    _currentQuestVO.questName = _loc_2.name;
                    _currentQuestVO.reward = new Array();
                    if (_loc_2.reward)
                    {
                        _currentQuestVO.reward.push(_loc_2.reward);
                    }
                    _currentQuestVO.clientName = _loc_2.client_name;
                    _currentQuestVO.condition = _loc_2.condition;
                    _currentQuestVO.questType = QUEST_TYPES[_loc_2.quest_type];
                    if (_loc_2.subjugation_unit_name)
                    {
                        _currentQuestVO.kills = param1.kills;
                    }
                    else
                    {
                        _currentQuestVO.kills = -1;
                    }
                    _currentQuestVO.qualified = param1.clear;
                    _questStatus = "Excuting";
                    if (_currentQuestVO.qualified)
                    {
                        _questStatus = "Complete";
                    }
                }
                trace("return");
                return param1;
            }// end function
            , null);
            return;
        }// end function

        public function questAbort() : void
        {
            load("/api/quests/abort", QUEST_ABORT, function (param1:Object) : Object
            {
                return param1;
            }// end function
            );
            return;
        }// end function

        public function get currentQuestVO() : QuestVO
        {
            return _currentQuestVO;
        }// end function

        public function get questStatus() : String
        {
            return _questStatus;
        }// end function

        public function showQuestDetail(param1:int) : void
        {
            var questId:* = param1;
            var json:* = JSON.encode({id:questId});
            loadWithJson("/api/quests/show", SHOW_QUEST_DETAIL, SHOW_QUEST_DETAIL_ERROR, function (param1:Object) : Object
            {
                return param1;
            }// end function
            , json);
            return;
        }// end function

        private function questFactory(param1:Object) : void
        {
            var _loc_2:* = new QuestVO();
            _loc_2.questNumber = number;
            _loc_2.questName = param1.name;
            _loc_2.reward = new Array();
            _loc_2.reward.push(param1.reward);
            _loc_2.clientName = param1.client_name;
            _loc_2.questId = param1.id;
            _loc_2.parentId = param1.parent_id;
            _loc_2.condition = param1.condition;
            _loc_2.description = param1.quest_remarks[0].remark;
            _loc_2.clientType = param1.client_image;
            _loc_2.rank = param1.rank;
            _loc_2.upperLimitRank = param1.upper_limit_rank;
            _loc_2.repeatable = param1.repeatable;
            _loc_2.questType = param1.quest_type;
            _questList.push(_loc_2);
            var _loc_4:* = number + 1;
            number = _loc_4;
            return;
        }// end function

        public function completeQuest() : void
        {
            load("/api/players/complete_quest", COMPELE_QUEST_LOADED, function (param1:Array) : Array
            {
                _completeQuests = new Array();
                _completeQuests = param1;
                return param1;
            }// end function
            );
            return;
        }// end function

        public function questComplete() : void
        {
            load("/api/quests/complete", QUEST_COMPLETE, function (param1:Object) : Object
            {
                return param1;
            }// end function
            );
            return;
        }// end function

        public function loadQuest() : void
        {
            load("/api/quests/list", QUEST_LOADED, function (param1:Object) : Object
            {
                var _loc_2:Object = null;
                if (!param1)
                {
                    return null;
                }
                number = 1;
                _questList = new Array();
                for each (_loc_2 in param1)
                {
                    
                    questFactory(_loc_2.quest);
                }
                return param1;
            }// end function
            );
            return;
        }// end function

    }
}
