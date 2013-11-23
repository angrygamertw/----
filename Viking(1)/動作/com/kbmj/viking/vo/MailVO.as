package com.kbmj.viking.vo
{
    import flash.events.*;
    import mx.events.*;

    public class MailVO extends Object implements IEventDispatcher
    {
        private var _body:String;
        private var _readAt:String;
        private var _sentAt:String;
        private var _mailId:int;
        private var _subject:String;
        private var _bindingEventDispatcher:EventDispatcher;
        private var _senderName:String;

        public function MailVO()
        {
            _bindingEventDispatcher = new EventDispatcher(IEventDispatcher(this));
            return;
        }// end function

        public function set senderName(param1:String) : void
        {
            var _loc_2:* = this.senderName;
            if (_loc_2 !== param1)
            {
                this._997385824senderName = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "senderName", _loc_2, param1));
            }
            return;
        }// end function

        private function set _1081574094mailId(param1:int) : void
        {
            _mailId = param1;
            return;
        }// end function

        public function willTrigger(param1:String) : Boolean
        {
            return _bindingEventDispatcher.willTrigger(param1);
        }// end function

        public function dispatchEvent(event:Event) : Boolean
        {
            return _bindingEventDispatcher.dispatchEvent(event);
        }// end function

        private function set _997385824senderName(param1:String) : void
        {
            _senderName = param1;
            return;
        }// end function

        private function set _1867885268subject(param1:String) : void
        {
            _subject = param1;
            return;
        }// end function

        public function addEventListener(param1:String, param2:Function, param3:Boolean = false, param4:int = 0, param5:Boolean = false) : void
        {
            _bindingEventDispatcher.addEventListener(param1, param2, param3, param4, param5);
            return;
        }// end function

        public function set readAt(param1:String) : void
        {
            var _loc_2:* = this.readAt;
            if (_loc_2 !== param1)
            {
                this._934980503readAt = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "readAt", _loc_2, param1));
            }
            return;
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

        private function set _934980503readAt(param1:String) : void
        {
            _readAt = param1;
            return;
        }// end function

        public function set subject(param1:String) : void
        {
            var _loc_2:* = this.subject;
            if (_loc_2 !== param1)
            {
                this._1867885268subject = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "subject", _loc_2, param1));
            }
            return;
        }// end function

        public function removeEventListener(param1:String, param2:Function, param3:Boolean = false) : void
        {
            _bindingEventDispatcher.removeEventListener(param1, param2, param3);
            return;
        }// end function

        public function set sentAt(param1:String) : void
        {
            var _loc_2:* = this.sentAt;
            if (_loc_2 !== param1)
            {
                this._905948693sentAt = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "sentAt", _loc_2, param1));
            }
            return;
        }// end function

        public function get senderName() : String
        {
            return _senderName;
        }// end function

        private function set _3029410body(param1:String) : void
        {
            _body = param1;
            return;
        }// end function

        public function get body() : String
        {
            return _body;
        }// end function

        public function get sentAt() : String
        {
            return _sentAt;
        }// end function

        public function get subject() : String
        {
            return _subject;
        }// end function

        public function get readAt() : String
        {
            return _readAt;
        }// end function

        public function get mailId() : int
        {
            return _mailId;
        }// end function

        public function set mailId(param1:int) : void
        {
            var _loc_2:* = this.mailId;
            if (_loc_2 !== param1)
            {
                this._1081574094mailId = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "mailId", _loc_2, param1));
            }
            return;
        }// end function

        public function hasEventListener(param1:String) : Boolean
        {
            return _bindingEventDispatcher.hasEventListener(param1);
        }// end function

        private function set _905948693sentAt(param1:String) : void
        {
            _sentAt = param1;
            return;
        }// end function

    }
}
