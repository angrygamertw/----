package 
{
    import com.kbmj.viking.view.home.*;
    import flash.display.*;
    import mx.binding.*;
    import mx.core.*;

    public class _com_kbmj_viking_view_home_SelectSleepUnitWindowWatcherSetupUtil extends Sprite implements IWatcherSetupUtil
    {

        public function _com_kbmj_viking_view_home_SelectSleepUnitWindowWatcherSetupUtil()
        {
            return;
        }// end function

        public function setup(param1:Object, param2:Function, param3:Array, param4:Array) : void
        {
            param4[11] = new PropertyWatcher("_swf_close_window", {propertyChange:true}, [param3[11]], param2);
            param4[9] = new PropertyWatcher("_swf_ok", {propertyChange:true}, [param3[9]], param2);
            param4[0] = new PropertyWatcher("_swf_window", {propertyChange:true}, [param3[0]], param2);
            param4[6] = new PropertyWatcher("expLabelRenderer", {propertyChange:true}, [param3[6]], param2);
            param4[2] = new PropertyWatcher("_unitArray", {propertyChange:true}, [param3[2]], param2);
            param4[10] = new PropertyWatcher("_swf_back", {propertyChange:true}, [param3[10]], param2);
            param4[11].updateParent(param1);
            param4[9].updateParent(param1);
            param4[0].updateParent(param1);
            param4[6].updateParent(param1);
            param4[2].updateParent(param1);
            param4[10].updateParent(param1);
            return;
        }// end function

        public static function init(param1:IFlexModuleFactory) : void
        {
            SelectSleepUnitWindow.watcherSetupUtil = new _com_kbmj_viking_view_home_SelectSleepUnitWindowWatcherSetupUtil;
            return;
        }// end function

    }
}
