package 
{
    import com.kbmj.viking.view.home.*;
    import flash.display.*;
    import mx.binding.*;
    import mx.core.*;

    public class _com_kbmj_viking_view_home_ConfirmIncrementMaxTasksCountWindowWatcherSetupUtil extends Sprite implements IWatcherSetupUtil
    {

        public function _com_kbmj_viking_view_home_ConfirmIncrementMaxTasksCountWindowWatcherSetupUtil()
        {
            return;
        }// end function

        public function setup(param1:Object, param2:Function, param3:Array, param4:Array) : void
        {
            param4[3] = new PropertyWatcher("_swf_cancel_button", {propertyChange:true}, [param3[3]], param2);
            param4[0] = new PropertyWatcher("_swf_bg", {propertyChange:true}, [param3[0]], param2);
            param4[2] = new PropertyWatcher("_swf_ok_button", {propertyChange:true}, [param3[2]], param2);
            param4[3].updateParent(param1);
            param4[0].updateParent(param1);
            param4[2].updateParent(param1);
            return;
        }// end function

        public static function init(param1:IFlexModuleFactory) : void
        {
            ConfirmIncrementMaxTasksCountWindow.watcherSetupUtil = new _com_kbmj_viking_view_home_ConfirmIncrementMaxTasksCountWindowWatcherSetupUtil;
            return;
        }// end function

    }
}
