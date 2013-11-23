package com.kbmj.viking.vo
{
    import flash.events.*;
    import mx.events.*;

    public class GuildChatVO extends Object implements IEventDispatcher
    {
        private var _body:String;
        private var _chatType:int;
        private var _createdAtLabel:String;
        private var _playerName:String;
        private var _chatPlayerId:int;
        private var _id:int;
        private var _bindingEventDispatcher:EventDispatcher;
        private var _resourceVO:ResourceVO;
        private var _chatColor:int;
        public static const CHAT_TYPE_SYSTEM_FOR_FACTION:int = 2;
        public static const CHAT_TYPE_GUILD:int = 1;
        public static const CHAT_TYPE_SYSTEM_FOR_ALL:int = 4;
        public static const CHAT_TYPE_SYSTEM_FOR_GUILD:int = 3;
        public static const CHAT_TYPE_FACTION:int = 0;

        public function GuildChatVO()
        {
            _bindingEventDispatcher = new EventDispatcher(IEventDispatcher(this));
            return;
        }// end function

        public function hasEventListener(param1:String) : Boolean
        {
            return _bindingEventDispatcher.hasEventListener(param1);
        }// end function

        public function willTrigger(param1:String) : Boolean
        {
            return _bindingEventDispatcher.willTrigger(param1);
        }// end function

        public function get playerName() : String
        {
            return _playerName;
        }// end function

        public function set resourceVO(param1:ResourceVO) : void
        {
            var _loc_2:* = this.resourceVO;
            if (_loc_2 !== param1)
            {
                this._1345649849resourceVO = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "resourceVO", _loc_2, param1));
            }
            return;
        }// end function

        private function set _1594098411chatColor(param1:int) : void
        {
            _chatColor = param1;
            return;
        }// end function

        private function set _2347399createdAtLabel(param1:String) : void
        {
            _createdAtLabel = param1;
            return;
        }// end function

        private function set _3355id(param1:int) : void
        {
            _id = param1;
            return;
        }// end function

        public function get id() : int
        {
            return _id;
        }// end function

        public function set playerName(param1:String) : void
        {
            var _loc_2:* = this.playerName;
            if (_loc_2 !== param1)
            {
                this._2095657228playerName = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "playerName", _loc_2, param1));
            }
            return;
        }// end function

        private function set _3029410body(param1:String) : void
        {
            _body = param1;
            return;
        }// end function

        public function set chatPlayerId(param1:int) : void
        {
            var _loc_2:* = this.chatPlayerId;
            if (_loc_2 !== param1)
            {
                this._1454403756chatPlayerId = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "chatPlayerId", _loc_2, param1));
            }
            return;
        }// end function

        public function get body() : String
        {
            return _body;
        }// end function

        public function get chatType() : int
        {
            return _chatType;
        }// end function

        public function set id(param1:int) : void
        {
            var _loc_2:* = this.id;
            if (_loc_2 !== param1)
            {
                this._3355id = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "id", _loc_2, param1));
            }
            return;
        }// end function

        public function dispatchEvent(event:Event) : Boolean
        {
            return _bindingEventDispatcher.dispatchEvent(event);
        }// end function

        public function set body(param1:String) : void
        {
            var _loc_2:* = this.body;
            if (_loc_2 !== param1)
            {
                this._3029410body = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "body", _loc_2, param1));
            }
            return;
        }// end function

        public function get resourceVO() : ResourceVO
        {
            return _resourceVO;
        }// end function

        private function set _2095657228playerName(param1:String) : void
        {
            _playerName = param1;
            return;
        }// end function

        public function addEventListener(param1:String, param2:Function, param3:Boolean = false, param4:int = 0, param5:Boolean = false) : void
        {
            _bindingEventDispatcher.addEventListener(param1, param2, param3, param4, param5);
            return;
        }// end function

        public function removeEventListener(param1:String, param2:Function, param3:Boolean = false) : void
        {
            _bindingEventDispatcher.removeEventListener(param1, param2, param3);
            return;
        }// end function

        public function get chatPlayerId() : int
        {
            return _chatPlayerId;
        }// end function

        private function set _1345649849resourceVO(param1:ResourceVO) : void
        {
            _resourceVO = param1;
            return;
        }// end function

        public function set chatType(param1:int) : void
        {
            var _loc_2:* = this.chatType;
            if (_loc_2 !== param1)
            {
                this._1437412018chatType = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "chatType", _loc_2, param1));
            }
            return;
        }// end function

        public function set chatColor(param1:int) : void
        {
            var _loc_2:* = this.chatColor;
            if (_loc_2 !== param1)
            {
                this._1594098411chatColor = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "chatColor", _loc_2, param1));
            }
            return;
        }// end function

        public function get chatColor() : int
        {
            return _chatColor;
        }// end function

        private function set _1454403756chatPlayerId(param1:int) : void
        {
            _chatPlayerId = param1;
            return;
        }// end function

        public function set createdAtLabel(param1:String) : void
        {
            var _loc_2:* = this.createdAtLabel;
            if (_loc_2 !== param1)
            {
                this._2347399createdAtLabel = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "createdAtLabel", _loc_2, param1));
            }
            return;
        }// end function

        private function set _1437412018chatType(param1:int) : void
        {
            _chatType = param1;
            return;
        }// end function

        public function get createdAtLabel() : String
        {
            return _createdAtLabel;
        }// end function

    }
}
