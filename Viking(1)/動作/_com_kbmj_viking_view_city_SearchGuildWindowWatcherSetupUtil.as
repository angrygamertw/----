package 
{
    import com.kbmj.viking.view.city.*;
    import flash.display.*;
    import mx.binding.*;
    import mx.core.*;

    public class _com_kbmj_viking_view_city_SearchGuildWindowWatcherSetupUtil extends Sprite implements IWatcherSetupUtil
    {

        public function _com_kbmj_viking_view_city_SearchGuildWindowWatcherSetupUtil()
        {
            return;
        }// end function

        public function setup(param1:Object, param2:Function, param3:Array, param4:Array) : void
        {
            param4[12] = new PropertyWatcher("_swf_close", {propertyChange:true}, [param3[12]], param2);
            param4[13] = new PropertyWatcher("_swf_close_window", {propertyChange:true}, [param3[13]], param2);
            param4[10] = new PropertyWatcher("viewData", {propertyChange:true}, [param3[10]], param2);
            param4[11] = new PropertyWatcher("listRenderer", {propertyChange:true}, [param3[11]], param2);
            param4[12].updateParent(param1);
            param4[13].updateParent(param1);
            param4[10].updateParent(param1);
            param4[11].updateParent(param1);
            return;
        }// end function

        public static function init(param1:IFlexModuleFactory) : void
        {
            SearchGuildWindow.watcherSetupUtil = new _com_kbmj_viking_view_city_SearchGuildWindowWatcherSetupUtil;
            return;
        }// end function

    }
}
