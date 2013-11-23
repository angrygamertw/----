package 
{
    import com.kbmj.viking.view.*;
    import flash.display.*;
    import mx.binding.*;
    import mx.core.*;

    public class _com_kbmj_viking_view_GuildWindow_inlineComponent3WatcherSetupUtil extends Sprite implements IWatcherSetupUtil
    {

        public function _com_kbmj_viking_view_GuildWindow_inlineComponent3WatcherSetupUtil()
        {
            return;
        }// end function

        public function setup(param1:Object, param2:Function, param3:Array, param4:Array) : void
        {
            param4[0] = new PropertyWatcher("outerDocument", {propertyChange:true}, [param3[0]], param2);
            param4[2] = new PropertyWatcher("data", {dataChange:true}, [param3[0]], param2);
            param4[3] = new PropertyWatcher("playerVO", null, [param3[0]], null);
            param4[4] = new PropertyWatcher("playerRankId", null, [param3[0]], null);
            param4[0].updateParent(param1);
            param4[2].updateParent(param1);
            param4[2].addChild(param4[3]);
            param4[3].addChild(param4[4]);
            return;
        }// end function

        public static function init(param1:IFlexModuleFactory) : void
        {
            GuildWindow_inlineComponent3.watcherSetupUtil = new _com_kbmj_viking_view_GuildWindow_inlineComponent3WatcherSetupUtil;
            return;
        }// end function

    }
}
