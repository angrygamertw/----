package 
{
    import com.kbmj.viking.view.city.*;
    import flash.display.*;
    import mx.binding.*;
    import mx.core.*;

    public class _com_kbmj_viking_view_city_RankUpCheckWindowWatcherSetupUtil extends Sprite implements IWatcherSetupUtil
    {

        public function _com_kbmj_viking_view_city_RankUpCheckWindowWatcherSetupUtil()
        {
            return;
        }// end function

        public function setup(param1:Object, param2:Function, param3:Array, param4:Array) : void
        {
            param4[4] = new PropertyWatcher("_swf_yes", {propertyChange:true}, [param3[5]], param2);
            param4[10] = new PropertyWatcher("_swf_close", {propertyChange:true}, [param3[12]], param2);
            param4[11] = new PropertyWatcher("_swf_close_window", {propertyChange:true}, [param3[13]], param2);
            param4[5] = new PropertyWatcher("_swf_no", {propertyChange:true}, [param3[7]], param2);
            param4[0] = new PropertyWatcher("_swf_window", {propertyChange:true}, [param3[0]], param2);
            param4[8] = new PropertyWatcher("_swf_icon_rank", {propertyChange:true}, [param3[10]], param2);
            param4[4].updateParent(param1);
            param4[10].updateParent(param1);
            param4[11].updateParent(param1);
            param4[5].updateParent(param1);
            param4[0].updateParent(param1);
            param4[8].updateParent(param1);
            return;
        }// end function

        public static function init(param1:IFlexModuleFactory) : void
        {
            RankUpCheckWindow.watcherSetupUtil = new _com_kbmj_viking_view_city_RankUpCheckWindowWatcherSetupUtil;
            return;
        }// end function

    }
}
