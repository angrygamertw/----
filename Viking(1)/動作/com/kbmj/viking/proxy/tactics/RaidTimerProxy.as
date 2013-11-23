package com.kbmj.viking.proxy.tactics
{
    import com.kbmj.viking.proxy.*;
    import flash.events.*;
    import flash.utils.*;

    public class RaidTimerProxy extends LoaderProxy
    {
        private var remainingTime:int;
        private var raidTimer:Timer;
        public static const TIME_LIMIT_UPDATED:String = NAME + "/notes/timeLimitUpdated";
        public static const TIME_OVER:String = NAME + "/notes/timeOver";
        public static const NAME:String = "RaidTimerProxy";
        public static const RAID_TIMER_TICK:String = NAME + "/notes/RaidTimerTick";

        public function RaidTimerProxy()
        {
            raidTimer = new Timer(1000);
            super(NAME);
            return;
        }// end function

        public function start() : void
        {
            updateTimeLimit();
            return;
        }// end function

        override public function onRegister() : void
        {
            return;
        }// end function

        public function stop() : void
        {
            if (raidTimer && raidTimer.running)
            {
                raidTimer.stop();
            }
            return;
        }// end function

        private function updateTimeLimit() : void
        {
            var tacticsProxy:* = TacticsProxy(facade.retrieveProxy(TacticsProxy.NAME));
            var url:String;
            if (tacticsProxy.tacticsType == BaseTacticsProxy.TACTICS_TYPE_SHAM || tacticsProxy.tacticsType == BaseTacticsProxy.TACTICS_TYPE_MATCH)
            {
                url;
            }
            else
            {
                url;
            }
            load(url, TIME_LIMIT_UPDATED, function (param1:int) : void
            {
                var tacticsProxy:TacticsProxy;
                var time:* = param1;
                remainingTime = time;
                if (remainingTime <= 0)
                {
                    tacticsProxy = TacticsProxy(facade.retrieveProxy(TacticsProxy.NAME));
                    tacticsProxy.finishRaidByTimeOver();
                    return;
                }
                stop();
                raidTimer = new Timer(1000, remainingTime);
                raidTimer.addEventListener(TimerEvent.TIMER, tick);
                raidTimer.addEventListener(TimerEvent.TIMER_COMPLETE, function () : void
                {
                    updateTimeLimit();
                    return;
                }// end function
                );
                raidTimer.start();
                return;
            }// end function
            );
            return;
        }// end function

        private function tick(event:TimerEvent) : void
        {
            if (remainingTime > 0)
            {
                var _loc_3:* = remainingTime - 1;
                remainingTime = _loc_3;
                sendNotification(RAID_TIMER_TICK, remainingTime);
            }
            else
            {
                updateTimeLimit();
                return;
            }
            return;
        }// end function

    }
}
