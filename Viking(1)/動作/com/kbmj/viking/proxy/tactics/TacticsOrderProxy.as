package com.kbmj.viking.proxy.tactics
{
    import com.kbmj.viking.vo.tactics.*;
    import org.puremvc.as3.patterns.proxy.*;

    public class TacticsOrderProxy extends Proxy
    {
        private var _orderQueue:Array;
        public static const NAME:String = "TacticsOrderProxy";
        public static const ORDER_QUEUED:String = NAME + "/notes/orderQueued";

        public function TacticsOrderProxy()
        {
            _orderQueue = new Array();
            super(NAME);
            return;
        }// end function

        public function peekOrder() : OrderVO
        {
            if (_orderQueue.length > 0)
            {
                return _orderQueue[(_orderQueue.length - 1)];
            }
            return null;
        }// end function

        public function enqueueOrder(param1:OrderVO) : void
        {
            _orderQueue.push(param1);
            sendNotification(ORDER_QUEUED);
            return;
        }// end function

        public function resetQueue() : void
        {
            _orderQueue = [];
            return;
        }// end function

        public function dequeueOrder() : OrderVO
        {
            return _orderQueue.shift();
        }// end function

    }
}
