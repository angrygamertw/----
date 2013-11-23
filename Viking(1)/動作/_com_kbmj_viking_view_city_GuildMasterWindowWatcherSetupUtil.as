package 
{
    import com.kbmj.viking.view.city.*;
    import flash.display.*;
    import mx.binding.*;
    import mx.core.*;

    public class _com_kbmj_viking_view_city_GuildMasterWindowWatcherSetupUtil extends Sprite implements IWatcherSetupUtil
    {

        public function _com_kbmj_viking_view_city_GuildMasterWindowWatcherSetupUtil()
        {
            return;
        }// end function

        public function setup(param1:Object, param2:Function, param3:Array, param4:Array) : void
        {
            param4[10] = new PropertyWatcher("master_renderer", {propertyChange:true}, [param3[19]], param2);
            param4[20] = new PropertyWatcher("_swf_close", {propertyChange:true}, [param3[29]], param2);
            param4[7] = new PropertyWatcher("viewDataPlayers", {propertyChange:true}, [param3[16]], param2);
            param4[5] = new PropertyWatcher("_swf_close_window", {propertyChange:true}, [param3[7]], param2);
            param4[0] = new PropertyWatcher("_swf_window", {propertyChange:true}, [param3[0]], param2);
            param4[4] = new PropertyWatcher("title", {changeMessage:true}, [param3[4]], param2);
            param4[6] = new PropertyWatcher("description", {changeMessage:true}, [param3[10]], param2);
            param4[12] = new PropertyWatcher("rank_renderer", {propertyChange:true}, [param3[21]], param2);
            param4[10].updateParent(param1);
            param4[20].updateParent(param1);
            param4[7].updateParent(param1);
            param4[5].updateParent(param1);
            param4[0].updateParent(param1);
            param4[4].updateParent(param1);
            param4[6].updateParent(param1);
            param4[12].updateParent(param1);
            return;
        }// end function

        public static function init(param1:IFlexModuleFactory) : void
        {
            GuildMasterWindow.watcherSetupUtil = new _com_kbmj_viking_view_city_GuildMasterWindowWatcherSetupUtil;
            return;
        }// end function

    }
}
