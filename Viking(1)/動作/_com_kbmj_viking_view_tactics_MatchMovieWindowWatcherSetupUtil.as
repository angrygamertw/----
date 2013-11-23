package 
{
    import com.kbmj.viking.view.tactics.*;
    import flash.display.*;
    import mx.binding.*;
    import mx.core.*;

    public class _com_kbmj_viking_view_tactics_MatchMovieWindowWatcherSetupUtil extends Sprite implements IWatcherSetupUtil
    {

        public function _com_kbmj_viking_view_tactics_MatchMovieWindowWatcherSetupUtil()
        {
            return;
        }// end function

        public function setup(param1:Object, param2:Function, param3:Array, param4:Array) : void
        {
            param4[3] = new PropertyWatcher("_swf_name1", {propertyChange:true}, [param3[3]], param2);
            param4[4] = new PropertyWatcher("_swf_name2", {propertyChange:true}, [param3[4]], param2);
            param4[1] = new PropertyWatcher("playerUnitImage", {propertyChange:true}, [param3[1]], param2);
            param4[0] = new PropertyWatcher("_swf_bg", {propertyChange:true}, [param3[0]], param2);
            param4[5] = new PropertyWatcher("_tacticsParams", {propertyChange:true}, [param3[5], param3[6], param3[9], param3[10]], param2);
            param4[6] = new PropertyWatcher("playerName", null, [param3[5]], null);
            param4[7] = new PropertyWatcher("targetName", null, [param3[6]], null);
            param4[11] = new PropertyWatcher("targetComment", null, [param3[10]], null);
            param4[10] = new PropertyWatcher("comment", null, [param3[9]], null);
            param4[12] = new PropertyWatcher("_swf_vs", {propertyChange:true}, [param3[11]], param2);
            param4[8] = new PropertyWatcher("_swf_comment1", {propertyChange:true}, [param3[7]], param2);
            param4[2] = new PropertyWatcher("targetUnitImage", {propertyChange:true}, [param3[2]], param2);
            param4[9] = new PropertyWatcher("_swf_comment2", {propertyChange:true}, [param3[8]], param2);
            param4[3].updateParent(param1);
            param4[4].updateParent(param1);
            param4[1].updateParent(param1);
            param4[0].updateParent(param1);
            param4[5].updateParent(param1);
            param4[5].addChild(param4[6]);
            param4[5].addChild(param4[7]);
            param4[5].addChild(param4[11]);
            param4[5].addChild(param4[10]);
            param4[12].updateParent(param1);
            param4[8].updateParent(param1);
            param4[2].updateParent(param1);
            param4[9].updateParent(param1);
            return;
        }// end function

        public static function init(param1:IFlexModuleFactory) : void
        {
            MatchMovieWindow.watcherSetupUtil = new _com_kbmj_viking_view_tactics_MatchMovieWindowWatcherSetupUtil;
            return;
        }// end function

    }
}
